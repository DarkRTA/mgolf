INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05b", ROMX[$4000], BANK[$5b]

    inc e
    ld b, b
    jp nz, $0844

    ld c, c
    ld [hl], c
    ld c, l
    db $dd
    ld d, c
    ld h, d
    ld d, [hl]
    and l
    ld e, d
    ld a, h
    ld e, [hl]
    dec bc
    ld h, e
    nop
    ld l, b
    ld h, d
    ld l, h
    call $8370
    ld [hl], l
    ei
    ld a, c
    inc h
    ld b, b
    ld d, h
    ld b, b
    cp c
    ld b, d
    adc [hl]
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
    ei
    inc l
    dec bc
    rst $38
    ld [c], a
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    dec hl
    rst $38
    ld c, e
    ld c, e
    ld c, e
    dec bc
    dec hl
    dec bc
    ld c, e
    dec bc
    rla
    inc c
    inc c
    ld c, h
    rst $38
    ldh [$0c], a
    ld sp, hl
    ldh [$fd], a
    ld [c], a
    ld hl, sp-$1d
    ld h, h
    rst $30
    ld [c], a
    db $fc
    rst $28
    inc l
    cp a
    ld [c], a
    pop bc
    pop hl
    ld l, e
    dec hl

Jump_05b_4080:
    cp a
    pop hl
    cpl
    dec hl
    ld c, e
    dec bc
    ld c, e
    call Call_05b_4ce2
    db $fd
    and $b5
    db $e3
    or c
    ld c, h
    push de
    ldh [$bf], a

Call_05b_4093:
    push af
    add d
    pop hl
    ld c, e
    ld l, e
    cp a
    pop hl
    dec bc
    ld hl, $7f4b
    ldh [$c0], a
    jp hl


    cp c
    ldh [$b2], a
    db $e4
    inc l
    ret nz

    di
    ld a, [hl]
    pop hl
    inc c
    pop bc
    pop hl
    cp a
    db $e3
    dec bc
    dec bc
    ld a, a

Call_05b_40b2:
    ldh [rWX], a
    db $e4
    ld a, [hl]
    ld [c], a
    db $fc
    db $e3
    nop
    ld l, $e1
    pop bc
    db $f4
    add hl, de
    ldh [$fd], a
    pop bc
    ld b, l
    pop hl
    inc b
    pop hl
    cp a
    ldh [rP1], a
    ldh [rP1], a
    ld b, $e0

jr_05b_40cd:
    add d
    db $e4
    ld b, b
    add sp, $11
    db $e3
    dec c
    ldh [rTMA], a
    db $e4
    ret nz

    ld [$e0bf], a
    inc b
    ret nz

    pop hl
    cp a
    ldh [$2b], a
    nop
    db $e3
    pop de
    jp nz, $c6cb

    jr c, jr_05b_40cd

    inc a
    di
    dec bc
    ld l, e
    ld l, e
    ld a, [hl]
    ld [c], a
    ld l, e
    ld hl, sp-$20
    ld a, a
    ld [c], a
    sub [hl]
    add $7c
    call nz, Call_05b_7f00
    rst $00
    cp l
    pop de
    ld b, e

Jump_05b_40ff:
    ret nz

    ld a, a
    db $e4
    cp a
    pop hl
    ret nz

    ld [c], a
    ld d, b
    jp $c5c0


jr_05b_410a:
    nop
    ccf
    ld [$f0c2], a
    add d
    pop hl
    cp a
    jp nz, $e5bf

    ld [bc], a
    pop hl
    ld a, $c4
    add c
    pop bc
    ld [$c435], sp
    jr nc, jr_05b_410a

    ld b, h
    add sp, $6b
    ret z

    and c
    ret nz

    push hl
    or d
    and d
    ld b, a
    db $e4
    nop
    rst $38
    push hl
    ld [hl], l
    add $c0
    ld a, [c]
    add h
    push hl
    pop bc
    rst $20
    add b
    pop bc
    adc $c6
    adc c
    and h
    nop
    ld a, [c]
    add sp, -$46
    and d
    or l
    and [hl]
    ld b, l
    db $e4
    ccf
    jp nz, $e4c1

    ret nz

    ld [c], a
    ld b, $c7
    nop
    ld a, [hl-]
    and h
    nop
    push af
    push bc
    ld [c], a
    ld a, [bc]
    pop bc
    rst $38
    rst $20
    ld [de], a
    and h
    ld b, h
    and $40
    rst $00
    nop
    db $fc
    adc a
    db $10
    and b
    jp z, Jump_05b_47a2

    and c
    cp l
    push hl
    add c
    and a
    ld a, l
    add $ad
    push hl
    inc a
    cp l
    and l
    inc sp
    and [hl]
    dec hl
    dec hl
    dec hl
    ld l, e
    adc d
    and c
    ld a, $e1
    nop
    ld a, h
    push hl
    adc l
    add [hl]
    ld b, c
    and l
    ld a, a
    and [hl]
    ld a, e
    add l
    ret nz

    rst $20
    rrca
    and b
    ld b, l
    pop hl
    nop
    add $a0
    cp [hl]
    rst $20
    ld b, b
    rst $20
    ret nz

    add sp, $70
    and [hl]
    add c
    ld [$e859], a
    ld d, c
    and $00
    ld c, h
    add a
    ld bc, $7c8d
    and e
    ret nz

    ld [$77d5], a
    ld bc, $bb90
    ld [hl], e
    push de
    ld [hl], h
    inc b
    ld bc, $c297
    pop bc
    inc l
    add b
    add a
    push de
    ld [hl], e
    ld bc, $7a91
    add a
    ret nz

    and $00
    push de
    db $76
    ld bc, $f992
    ld h, a
    rst $38
    ret z

    push de
    ld [hl], h
    ld bc, $be90
    add $bf
    ret


    nop
    push de
    ld [hl], h
    ld bc, $7a91
    add h
    cp b
    ld d, c
    push de
    ld l, [hl]
    ld bc, $3a92
    ld b, l
    add b
    and a
    nop
    push de
    db $76
    ld bc, $fa92
    add l
    ret nz

    jp hl


    push de
    ld [hl], l
    ld bc, $b990
    ld b, a
    ld b, a
    db $ec
    nop

Call_05b_41f3:
    push de
    ld [hl], d
    ld bc, $8090
    and $bf
    xor [hl]
    push de
    ld l, [hl]
    ld bc, $3993
    ld sp, $74d5
    nop
    ld bc, $f992
    rrca
    push de
    ld [hl], l
    ld bc, $7f91
    inc [hl]
    push de
    ld [hl], d
    ld bc, $7891
    ld [hl], e
    nop
    push de
    ld [hl], e
    ld bc, $3791
    rlca
    ld b, b
    adc c
    push de
    ld [hl], h
    or $a8
    ld hl, sp+$4e
    ld [hl], h
    dec bc
    nop
    ld d, l
    ld d, e
    ld sp, hl
    ld l, c
    ld hl, sp+$4d
    pop bc
    db $eb
    ld d, l
    ld e, c
    ld hl, sp+$53
    jp nz, Jump_05b_5589

    ld e, c
    nop
    ld hl, sp+$55
    add b
    rst $18
    and l
    sbc c
    ld b, d
    adc d
    add b
    sub $7a
    rla
    ld [bc], a
    adc e
    ld e, l
    or $00
    ld a, d
    ld d, $ff
    rst $38
    and l
    sbc e
    rst $38
    rst $38
    ld e, h
    add [hl]
    and l
    sub e
    rst $38
    rst $38
    dec h
    rst $18
    nop
    add b
    rst $38
    ld a, d
    rra
    ld b, b
    rst $38
    dec h
    call c, $ff40
    ld a, c
    sub e
    rst $38
    rst $38
    add d
    cp a

Call_05b_4269:
    nop
    rst $38
    rst $38
    ld [hl], e
    ret


    adc [hl]
    adc e
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], e
    inc [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    cp $dc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_42a7:
    rst $38
    rst $38
    nop
    cp a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    ld [hl], e
    nop
    nop
    nop
    ei
    add hl, hl
    ld sp, $e2ff
    ld c, l
    ld a, [hl-]
    ld d, h
    ld l, [hl]
    ld a, c
    ld a, l
    add b
    rst $38
    ldh [$81], a
    ld sp, $5b5e
    nop
    rst $38
    rst $38
    ld a, [$e6e7]
    daa
    cp a

Jump_05b_42d3:
    ld [c], a
    ld c, l
    ld [hl-], a
    ld l, l
    ld l, h
    ld l, l
    dec a

jr_05b_42da:
    ld [hl], c
    cp a
    pop hl
    xor c
    xor h
    ld sp, $ca5f
    rst $38
    add sp, -$19
    add hl, sp
    jr nz, jr_05b_42a7

    pop hl
    pop bc
    ldh [rOCPS], a
    ld l, b
    ld l, d
    cp a
    db $e3
    ld a, a

jr_05b_42f1:
    ldh [$fc], a
    jp z, $c0ff

    add sp, $20
    ld d, $29
    ld sp, $6d39
    rrca
    ld l, d
    ld l, h
    ld l, h
    ld l, h
    cp a
    db $e3
    ld a, a
    ldh [$ca], a
    rst $38
    ret nz

    jp hl


    rst $28
    jr nz, jr_05b_430d

jr_05b_430d:
    ld sp, $c053
    ld [c], a
    ld l, c
    ld l, e
    jr nc, @+$33

    add e
    cp $c2
    jp z, $c0ff

    db $ec
    ld d, d
    ld l, l
    ld a, a
    pop hl
    ret nz

    ldh [$e3], a
    ld c, b
    add h
    cp $c1
    jp z, Jump_05b_40ff

    jp hl


    ld a, [bc]
    dec bc
    ld c, c
    dec sp
    ld c, b
    jr nc, jr_05b_42f1

    pop hl
    ld l, d
    ld l, l
    ld l, l
    ld a, a
    db $e3
    jp z, $feff

    add sp, -$19
    ld a, [bc]
    dec bc
    ld sp, $3931
    jr nc, jr_05b_4374

    ld d, a
    jr nc, jr_05b_43b2

    ld l, c
    rst $38
    pop bc
    ld l, l
    ccf
    pop hl
    xor c
    jp z, Jump_05b_7eff

    add sp, -$19
    ld sp, $4731
    ld b, [hl]
    ld b, d
    jr nc, jr_05b_42da

    ld [c], a
    db $e4
    cp [hl]
    ret nz

    dec a
    jp nz, $ca80

    rst $38
    add sp, -$19
    ld c, l
    ld b, [hl]
    ld [hl], $2f
    jr nc, jr_05b_43d8

    ld l, h
    ld l, h
    ld a, a
    jp nz, $c16c

    db $e3
    ret nz

    rst $38

jr_05b_4374:
    adc b
    jp hl


    add sp, $44
    ldh [rDIV], a
    ret nz

    ld l, b
    pop bc
    jp hl


    ret nz

    rst $38
    jp hl


    add sp, $53
    ld a, h
    pop bc
    ldh [rDIV], a
    ret nz

    ld [hl], $6e
    ld a, h
    ld a, l
    ld a, h
    pop bc
    db $e4
    db $f4
    ret nz

    rst $38
    jp hl


    add sp, $52
    add $c2
    ld [hl-], a
    ld b, a
    ld [hl], b
    xor d
    ldh a, [$c3]
    db $e4
    ret nz

    rst $38
    ld b, b
    db $ec
    add [hl]
    ret nz

    ld c, b
    ld c, c
    ld sp, $e331
    xor e
    ld e, b
    cp [hl]
    and $ca
    rst $38
    ret nz

    swap b

jr_05b_43b2:
    add hl, sp
    ld sp, $31e3
    ld h, d
    cp [hl]
    add sp, -$36
    rst $38
    ld b, b
    bit 0, [hl]
    ld c, l
    ld sp, $600f
    ld e, e
    ld e, h
    ld e, l
    ld a, h
    and $ca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_43d8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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

Call_05b_44a6:
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05b_44ed

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
    jp z, $fa44

    ld b, h
    inc a
    ld b, a
    call nc, $c048
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
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05b_44ed:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    sub a
    dec hl
    dec hl
    dec bc
    rst $38

Jump_05b_44ff:
    ld [c], a
    ld c, e
    cp $e5
    rst $30
    ldh [$0c], a
    add $ff
    ld [c], a
    ld c, h
    ld c, h
    db $fd
    and $f5
    ldh [$f0], a
    ld [c], a
    inc l
    inc l
    daa
    inc c
    inc c
    inc l
    cp $e0
    rst $38
    add sp, $4b
    cp a
    db $e3
    cp d
    db $e3
    rrca
    dec hl
    dec hl
    dec hl
    ld c, e
    or l
    ldh [$d2], a
    pop hl
    ret nz

    rst $20
    cp c
    ldh [$a2], a
    or d
    db $e4
    inc l
    ret nz

    ld [c], a
    cp e
    pop hl
    cp [hl]
    rst $20
    dec bc
    cp a
    pop hl
    dec hl
    inc bc
    dec bc
    ld l, e
    ld a, h
    ld [c], a
    or $e0
    ret nz

    pop hl
    add e
    db $e3
    db $fc
    db $eb
    ld [hl], b
    pop hl
    nop
    add $e2
    ret nz

    db $ed
    jp z, $c2e1

    ld [c], a
    cp [hl]
    db $e3
    ld a, a
    ldh [rLCDC], a
    db $e4
    ld e, d
    jp hl


    ld [hl], b
    ld b, b
    db $e4
    pop bc
    db $e3
    ret nz

    db $ec
    ld b, h
    ld [c], a
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ldh [rP1], a
    ld hl, sp-$3e
    nop
    db $e4
    add d
    db $ec
    pop af
    jp nz, $eaa7

    ld sp, hl
    jp $e1c4


    pop bc
    pop hl
    nop
    dec sp
    pop hl
    cp a
    pop hl
    add b
    db $e4
    ld b, b
    db $ed
    ccf
    db $e3
    add b
    di
    cp [hl]
    pop hl
    ld a, d
    pop bc
    add b
    jp nz, Jump_000_00c4

    db $e4
    cp $ec
    ccf
    push hl
    ret nz

    pop af
    add d
    ldh [$7b], a
    jp Jump_000_002b


    ld b, d
    ret nz

    db $fc
    ldh [rIF], a
    db $e4
    ld c, l
    push hl
    pop bc
    jp nz, $ee41

    add hl, sp
    and $03
    ldh [$08], a
    ld c, b
    ret nz

    ld b, b
    call nz, $c1fd
    dec bc
    call z, $fbe5
    and [hl]
    ld hl, sp-$19
    cp l
    ldh a, [rNR10]
    ld [bc], a
    pop bc

jr_05b_45bf:
    pop bc
    call nz, $c1f9
    ret nz

    push bc
    inc l
    rst $08
    add $0e
    jp $f67f


    nop
    ret nz

    db $f4
    ret z

    and d
    add c
    db $e4
    rst $38
    and l
    add e
    call $a4fe
    add c
    ldh [rSTAT], a
    jp nz, Jump_05b_4b83

    ld l, e
    cp c
    and e
    nop
    push hl
    inc bc
    push bc
    di
    ret


    ld bc, $6cee
    ld de, $4a4c
    and b
    ld bc, $c1c3
    ld [c], a
    ld l, e
    nop
    and b
    adc c
    and $05
    and d
    jr @-$02

    db $e3
    add b
    db $eb
    ld a, [$2ca7]
    inc l
    ld a, [bc]
    and c
    pop bc
    and c
    ld a, d
    ldh [$80], a
    or l
    add e
    sub e
    and l
    rst $00
    add e
    db $fd
    and a
    ret nz

    and a
    ld a, d
    and a
    db $ec
    add b
    ld c, h
    ld [bc], a
    rst $00
    add c
    ld l, e
    cp l
    ldh [$f5], a
    and e
    ret nz

    rst $20
    jp $8582


    ld a, [c]
    ret nz

    ld [$3e00], a
    ret nz

    add [hl]
    add b
    ld a, l
    add h
    ret nz

    and d
    sbc h
    adc e
    dec c
    xor l
    ei
    adc d
    jr nz, jr_05b_45bf

    nop
    ld d, l
    push hl
    inc de
    add h
    db $fd
    ei
    cp e
    adc l
    push de
    ld a, a
    xor l
    ei
    push de
    ld a, a
    ld [bc], a
    xor $00
    ld a, c
    ld h, a
    push de
    ld a, a
    ret nz

    ei
    push de
    ld a, a
    rst $38
    db $dd
    push de
    ld a, [hl]
    cp a
    jp c, Jump_05b_7ad5

    nop
    ld bc, $d59d
    ld a, a
    ld bc, $7b8f
    ld b, e
    add b
    rst $20
    push de
    ld a, c
    ld bc, $c091
    rst $28
    nop
    push de
    ld a, d
    ld bc, $7090
    xor h
    push de
    ld a, c
    ld bc, $3092
    xor h
    push de
    ld a, e
    ld bc, $0090
    ld b, e
    xor e
    push de
    ld a, c
    ld bc, $0493
    set 2, l
    ld a, e
    ld bc, $0391
    xor l
    push de
    ld a, c
    nop
    ld bc, $c092
    xor $d5
    ld [hl], a
    add hl, sp
    or c
    inc a
    nop
    dec sp
    dec b
    push de
    ld a, l
    ld bc, $00bf
    rst $38
    rst $38
    bit 2, c
    db $db
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    db $fc
    nop
    ld [hl], l
    rst $38
    ld b, b
    rst $38
    push hl
    ld e, h
    inc a
    ld e, $ae
    or c
    ld h, a
    sbc a
    ld [hl], c
    ld d, a
    ld a, [c]
    inc hl
    nop
    inc a
    rra
    ret nz

    or $aa
    ld l, c
    inc a
    ld d, $3f
    db $fd
    inc a
    rra
    inc de
    add sp, -$50
    cpl
    nop
    inc a
    rra

Call_05b_46d6:
    di
    ld b, e
    ld d, h
    jr nz, jr_05b_4733

    rrca
    ld c, e
    ld [$153c], sp
    add d
    ld b, [hl]
    ld e, b
    ld c, $00
    di
    db $eb
    ld h, a
    sub [hl]
    add d
    ld l, l
    xor c
    xor h
    ld h, a
    sbc a
    ld [$ff86], sp
    rst $38
    add l
    jr jr_05b_46f6

jr_05b_46f6:
    cp a

Jump_05b_46f7:
    rst $38
    ld d, l
    rst $18
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05b_4702:
    sbc e
    ld l, e
    call c, Call_000_00ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld [hl], h
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_4733:
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], l
    dec b
    nop
    nop
    nop
    sub a
    ld [hl], b
    xor [hl]
    add b
    rst $38
    xor $00
    rst $38
    rst $38
    rst $20
    and $60
    sub [hl]
    cp a
    db $e3
    xor d
    and l
    rst $38
    ldh [$aa], a
    ret nz

    rst $38
    rst $28
    xor $5b
    sbc $bf
    pop hl
    xor d
    ld e, b
    xor e
    ld sp, $e0ff
    xor e
    ld e, b
    nop
    cp [hl]
    db $e3
    jp z, $c0ff

    add sp, -$41
    ldh [$c2], a
    db $e3
    cp [hl]
    db $e3
    ld sp, $cae1
    rst $38
    or $c0
    jp hl


    ld e, e
    ld e, [hl]
    add h
    ldh [rBGP], a
    ld b, [hl]
    ld d, l
    ld d, h
    bit 0, [hl]
    ld b, a
    ld a, e
    ldh [$81], a
    ret nz

    rst $38
    ret nz

    ldh a, [$3c]
    ld [hl], $fd
    jr nc, @+$01

    ldh [$36], a
    inc a
    ld sp, $ac31
    xor c
    ld hl, sp-$40
    rst $38
    ld b, b
    db $ec
    pop bc
    ldh [rSCY], a
    ld l, d
    ld l, b
    ld l, b
    ld l, d
    add a
    jr nc, jr_05b_47d1

    ld b, d

Jump_05b_47a2:
    cp a
    ldh [$7f], a
    ldh [$ca], a
    rst $38
    ret nz

    ret


    ld sp, $31ff
    ld c, c
    ld c, b
    ld l, d
    ld l, l
    ld l, h
    ld l, h
    ld l, l
    add $bf
    ldh [rOBP0], a
    ld c, c
    ld a, a
    pop hl
    jp z, $e8ff

    rst $20
    inc d
    add hl, hl

Jump_05b_47c1:
    sbc a
    ld sp, $3931
    ld l, d
    ld l, l
    ret nz

    pop hl
    cp a
    pop hl
    add hl, sp
    rst $20
    ld sp, $a031
    ret nz

jr_05b_47d1:
    rst $38
    jp hl


    add sp, $24
    nop
    ld sp, $31ff
    ld d, d
    ld l, c
    ld l, e
    ld l, e
    jr nc, jr_05b_480f

    ld l, e
    sbc a

Jump_05b_47e1:
    ld l, e
    ld l, c
    jr nc, jr_05b_4815

    ld d, d
    ret nz

    rst $38
    db $ec
    db $eb
    jr nz, jr_05b_481c

    ret nz

    rst $38
    ret nz

    cp $40
    rst $38
    add b
    ld hl, sp+$28
    dec d
    ret nz

    rst $18
    ret nz

    ld a, [$1739]
    ld b, b
    rst $18
    nop
    ld sp, hl
    jr nz, jr_05b_4818

    dec d
    ret nz

    cp a
    ret nz

    ld sp, hl
    inc c
    ld a, a
    pop hl
    ld b, b
    and b
    ld d, h
    ld d, l
    ld b, b

jr_05b_480f:
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_4815:
    rst $38
    nop
    rst $38

jr_05b_4818:
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_481c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_05b_4933

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
    db $10
    ld c, c
    ld b, b
    ld c, c
    adc h
    ld c, e
    dec a
    ld c, l
    ret nz

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
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05b_4933:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld e, a
    ld c, d
    ld c, d
    ld c, d
    ld l, d
    dec bc
    rst $38
    push hl
    inc c
    rst $38
    and $63
    ld c, h
    ld c, h
    db $fd
    and $f5
    ldh [$f0], a
    ld [c], a
    inc l
    inc l
    pop hl
    rst $20
    add h
    rst $10
    rst $20
    pop bc
    jp hl


    dec bc
    db $d3
    db $e4
    ret nz

    add sp, -$47
    ldh [$b2], a
    db $e4
    inc l
    db $fc
    ret nz

    db $f4
    add d
    ldh [rWX], a
    dec bc
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    add c
    dec hl
    cp [hl]
    db $e4
    add d
    pop hl
    ld a, a
    ld [c], a
    db $fc
    rst $20
    ld [hl], b
    pop hl
    add c
    di
    inc c
    ld a, a
    ld l, d
    dec bc
    ld l, e
    dec bc
    dec hl
    ld l, e
    ld l, e
    cp e
    ldh [$83], a
    ld c, e
    ld c, e
    inc a
    db $ec
    inc [hl]
    and $30
    db $e3
    inc hl
    ldh [$3e], a
    ldh a, [$0b]
    ld [hl], $c0
    ldh [$0b], a
    ld l, e
    add h
    ldh [$2b], a
    dec hl
    cp a
    db $e3
    ld bc, $00e5
    add d
    jp hl


    pop af
    jp nz, $c6e3

    ld hl, sp-$3c
    pop af
    jp $e0c7


    cp l
    ldh [$bf], a
    pop hl
    inc bc
    ld l, e
    dec hl
    ret nz

    and $40
    db $ec
    jr nc, @-$19

    add b
    ldh [$b8], a
    adc $c0
    ld [c], a
    ld b, b
    ccf
    ldh [$7e], a
    pop hl
    ld a, $e2
    add d
    jp $ebfe


    ccf
    push hl
    inc l
    cp b
    rst $08
    ld c, $c0
    db $e3
    dec hl
    ld l, e
    dec hl
    cp a
    ld [c], a
    inc a
    ret z

    add l
    push bc
    or d
    pop bc
    nop
    ld b, c
    rst $20
    cp b
    adc $c0
    db $e4
    ld [bc], a
    pop hl
    ld a, [$fce0]
    and [hl]
    add hl, sp
    jp nz, $a3fb

    jr nz, @-$06

    rst $20
    cp b
    pop de
    ret nz

    and $ba
    ld [c], a
    cp h
    and l
    inc l
    rst $08
    add $09
    jp $c000


    push bc
    cp b
    jp z, $ee00

    add b
    rst $20
    ret z

    and d
    add c
    db $e4
    rst $38
    and l
    ld a, a
    add sp, $01
    inc l
    ld [hl], $c7
    add b
    pop bc
    ld b, c
    ldh [$bf], a
    db $e4
    nop
    rst $08
    ld l, a
    and e
    rst $38
    ret


    ld [bc], a
    ld hl, sp-$55
    ld a, [hl+]
    ret nz

    db $e3
    ld a, [hl]
    jp nz, $e200

    ld c, h
    and d
    jp z, Jump_000_3dc4

    and l
    inc c
    add b
    and $41
    xor $0c
    ld a, [hl+]
    cp a
    add sp, $3e
    and d
    dec b
    push hl
    rst $00
    add e
    ldh [$fd], a
    and a
    rst $20
    add e
    ldh [$84], a
    di
    add b
    or d
    add h
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc b
    rlca
    and c
    add e
    ret nz

    ld l, e
    ld a, c
    and d
    cp e
    add c
    add d
    push bc
    cp l
    xor c
    dec hl
    jp z, $c006

    db $eb
    ld a, [hl+]
    ld c, e
    jp nz, $ba84

    add b
    ld a, a
    ld [c], a
    ld b, c
    sbc c
    rst $30
    add h
    nop
    inc sp

jr_05b_4a74:
    add [hl]
    dec e
    add l
    ld d, d
    push hl
    ld c, c
    and $41
    sub d
    add b
    add sp, -$2b
    ld a, a
    ld b, c
    sub d
    nop
    inc sp
    add sp, -$6b
    ld l, h
    push de
    ld [hl], l
    ld b, c
    adc e
    ld b, b
    rst $20
    jr nc, jr_05b_4a74

    push de
    ld [hl], l
    ld b, c
    sub [hl]
    nop
    ret nz

    db $eb
    push de
    ld a, b
    ld b, c
    sub b
    ret nz

    add sp, -$41
    ret z

    push de
    ld [hl], d
    ld b, c
    sub c
    ret nz

    ldh a, [rP1]
    push de
    db $76
    ld b, c
    sub d
    inc hl
    ld [hl], b
    push de
    ld [hl], l
    ld b, c
    sub d
    ld b, b
    ldh a, [$d5]
    ld [hl], l
    ld b, c
    sub c
    nop
    ret nz

    ld a, [c]
    push de
    ld [hl], h
    pop bc
    ld sp, $67eb
    ld [hl], l

Jump_05b_4ac0:
    ret z

    push de
    ld a, b
    add b
    or c
    ret nz

    db $ed
    nop
    push de
    ld a, e
    db $ec
    xor [hl]
    ld hl, sp+$35
    push de
    ld [hl], b
    db $ec
    or l
    cp b
    ld a, [hl+]
    push de
    ld [hl], a
    db $ec
    or d
    nop
    ret nz

    ld l, [hl]
    push de
    ld [hl], a
    add b
    or d
    add b
    rst $28
    push de
    ld [hl], a
    db $ec
    or h
    ret nz

    ld b, e
    inc sp
    stop
    db $eb
    xor h
    add b
    cp b
    pop bc
    xor e
    ld h, l
    or a
    add b
    or l
    pop bc
    rst $38
    add b
    cp e
    ret nz

    rst $38
    nop
    ld l, l
    and a
    db $ec
    xor e
    rst $38
    rst $38
    db $ec
    cp a
    ld bc, $d56a
    ld [hl], $ec
    ld a, [c]
    ret nz

    ldh a, [rP1]
    push de
    dec [hl]
    db $ec
    ld a, [c]
    ld hl, sp+$6f
    nop
    reti


    pop bc
    ld l, $f9
    db $db
    ld a, [hl+]
    pop de
    rst $10
    ld [hl], d
    nop
    rst $38
    rst $38
    or b
    call c, $ffff
    xor [hl]
    or a
    jp c, $80ff

    rst $38
    rst $38
    rst $38

Jump_05b_4b2b:
    ret nz

    rst $38
    nop
    sbc c
    res 0, b
    adc d
    di
    db $eb
    ld a, b
    pop de
    add hl, de
    xor l
    ld l, e
    ld c, a
    sbc l
    adc h
    adc [hl]
    sub [hl]
    nop
    dec c
    ld b, e
    rst $38
    rst $38
    ret nz

    add hl, sp
    jp c, $efff

    rst $18
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld e, e
    adc c
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
    ld [hl], h
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

Jump_05b_4b83:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld b, a
    nop
    nop
    nop
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    adc h
    ld e, e
    ld e, e
    ld e, h
    ld e, l
    ld e, l
    ld sp, $e1ff
    dec hl
    inc l
    jr nz, @+$01

    pop hl
    nop
    rst $38
    rst $38
    ld hl, sp-$19
    and $c1
    pop hl
    jp nz, Jump_000_31e4

    ld sp, $1211
    ld hl, $22f9

jr_05b_4baf:
    ret nz

    rst $38
    ret nz

    db $eb
    adc h
    ld e, e
    ld h, b
    ld sp, $8f31
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    cp [hl]
    push hl
    ret nz

    rst $38
    ld [$8ce9], a
    rst $38
    ld e, e
    ld e, a
    ld sp, $463e
    ld [hl], $6a
    jr nc, jr_05b_4baf

    ld [hl], $be
    db $e4
    inc a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld e, e
    ld e, e
    ld e, [hl]
    rst $38
    ld sp, $6d52
    jr nc, jr_05b_4c4d

    ld l, d

jr_05b_4be1:
    jr nc, jr_05b_4c13

    di
    ld [hl], $37
    ret nz

    rst $38
    ret nz

    ldh a, [$61]
    ld sp, $6a53
    jp nc, $e3bf

    add hl, sp
    ret nz

    rst $38
    ret nz

    di
    jr nc, @-$3f

    db $e3
    ld c, b
    ld c, c
    db $fc
    ret nz

    rst $38

jr_05b_4bfe:
    add b
    pop af
    ld d, d
    jr nc, jr_05b_4c69

    ld l, c
    jr nc, jr_05b_4c36

    ld b, e
    ld l, e
    ld l, c
    ld a, a
    ld [c], a
    ret nz

    rst $38
    ret nz

    ldh a, [$3f]
    db $e4
    ld d, d
    ret nz

jr_05b_4c13:
    rst $38
    ld a, [$f200]
    ld l, c
    add c
    ldh [rBCPD], a
    ld h, [hl]
    jr nc, jr_05b_4c4e

    ld d, e
    jr nc, jr_05b_4be1

    rst $38
    add b
    ld_long a, $ffc0
    ld b, b
    jp nc, $3039

    cp a
    call nz, $ff40
    sbc d
    rst $28
    xor $8e
    ret nz

    and b
    ld c, l
    ld [hl-], a

jr_05b_4c36:
    cp a
    db $e3
    add b
    ld [c], a
    rla
    add hl, de
    jr z, jr_05b_4bfe

    rst $38
    jp hl


    add sp, $4f
    adc [hl]
    cp a
    and b
    cp a
    db $e4
    rst $38
    and d
    di
    dec d
    ld d, $c0

jr_05b_4c4d:
    rst $38

jr_05b_4c4e:
    ret nz

    jp hl


    ld c, a
    adc [hl]
    ld e, a
    ld sp, $3177
    xor a
    ld [hl], c
    dec a
    ldh [$30], a
    ld [hl], c
    xor a
    ld a, d
    add c
    di
    rla
    jr z, @-$34

    rst $38
    ret nz

    jp hl


    ld c, a
    adc [hl]
    ld h, b

jr_05b_4c69:
    ld [hl], b
    rst $38
    xor d
    ld a, c
    ld l, [hl]
    ld d, h
    ld d, l
    ld l, [hl]
    ld a, c
    xor d
    ld bc, $7f70
    ld [c], a
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

Call_05b_4ce2:
    rst $38

Jump_05b_4ce3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    jr nc, jr_05b_4d9c

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
    ld a, c
    ld c, l
    xor c
    ld c, l
    db $e4
    ld c, a
    xor c
    ld d, c
    ret nz

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
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05b_4d9c:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $dd
    dec bc
    rst $38
    ld [c], a
    ld l, e
    ld c, d
    ld a, [bc]
    rst $38
    db $e4
    ld l, d
    ld l, d
    rst $30
    ld l, d
    ld a, [bc]
    inc c
    rst $38
    ld [c], a
    ld c, h
    ld c, h
    inc c
    ld c, h
    rlca
    inc c
    inc c
    inc l
    di
    db $e3
    ldh a, [$f0]
    jp c, $c1e3

    db $e4
    ret nz

    add sp, $01
    ld a, [bc]
    ret nz

    pop hl
    jp $c4e3


    rst $20
    push bc
    pop af
    ret nz

    and $c1
    ldh [$80], a
    rst $20
    nop
    ld [hl], a
    ldh [$d0], a
    pop hl
    add c
    pop hl
    ld a, b
    pop hl
    set 6, d
    add b
    db $eb
    pop bc
    pop hl
    ld b, b
    and $14
    jr c, @-$1d

    ld b, e
    push hl
    inc l
    ld b, e
    ldh [$2c], a
    ld a, [$b5e2]
    jp hl


    ldh a, [$e6]
    db $f4
    ld b, b
    db $e4
    pop bc
    ld [c], a
    ld l, d
    ei
    pop bc
    dec bc
    dec bc
    ld c, e
    dec hl
    ld [bc], a
    ret nz

    add sp, $2c
    ret nz

    ld [c], a
    ld a, [$b5e2]
    add sp, -$10
    db $e3
    ld h, [hl]
    and $c1
    and $7f
    ld l, e
    ld l, e
    dec hl
    dec hl
    dec hl
    ld c, e
    ld c, e
    add b
    db $e3
    and b
    ld b, b
    ld [c], a
    rst $00
    db $e4
    ld a, [$b5e6]
    db $e3
    add c
    db $eb
    inc c
    add d
    db $e3
    ld a, [bc]
    ld [hl], a
    dec bc
    ld c, e
    dec bc
    pop bc
    ldh [$2b], a
    dec hl
    dec bc
    ld b, b
    jp hl


    nop
    pop bc
    db $e3
    add c
    push hl
    or l
    and $7e
    jp z, $e443

    pop bc
    db $e4
    ret nz

    push hl
    ret nz

    pop bc
    jr nc, jr_05b_4ece

    jp z, $e7b5

    ld b, b
    call z, $e404
    ld c, e
    dec hl
    ld b, c
    pop hl
    add b
    db $eb
    add b
    ccf
    pop bc
    ld bc, $34e4
    ret z

    add b
    xor $04
    pop hl
    pop bc
    ldh [rP1], a
    ld [c], a
    dec bc
    nop
    ret nz

    ld hl, sp+$35
    jp hl


    ld b, b
    add sp, -$7e
    db $e4
    rst $38
    pop hl
    ld [hl], h
    and c
    ret nz

    ret z

    ret nz

jr_05b_4e7c:
    xor d
    or b
    ld b, b
    db $ec
    ld l, c
    and [hl]
    push bc
    ret nz

    add l

jr_05b_4e85:
    ret nz

    ld c, e
    ld c, e
    add b
    ldh [rWX], a
    ld a, b

jr_05b_4e8c:
    add c
    ldh [$c0], a
    call $feff
    ld a, [hl+]
    dec bc
    dec hl
    dec bc
    ld c, c
    ret nz

    inc e
    cp a
    ldh [rSCY], a
    pop hl
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ret nz

    and [hl]
    cp a
    rst $38
    ret nz

    ld [c], a
    dec h
    ld a, [hl+]
    ret nz

    db $e4
    ld c, e
    add c
    ldh [$c1], a
    ldh [$2a], a
    cp a
    ldh [rLCDC], a
    and h
    ld [$88ff], sp
    or l
    rst $30
    rst $08
    ldh [rWX], a
    ret z

    and c
    pop bc
    and $bf
    ldh [$80], a
    rst $28
    ld [$ee75], sp
    dec hl
    and [hl]
    adc $e1
    ld c, e
    ccf
    pop hl

jr_05b_4ece:
    ld b, e
    ld [c], a
    rst $38
    db $e3
    add e
    ld [c], a
    nop
    add b
    ld a, [$a7f5]
    rla
    jp nz, $e3fb

    ld a, [de]
    sbc b

Call_05b_4edf:
    ret nz

    rst $28
    pop hl
    db $eb
    jr nz, jr_05b_4e7c

    nop
    ret nz

    rst $38
    ld d, l
    pop de
    ld a, [bc]
    sbc l
    push hl
    xor e
    push de
    ld l, e
    ld a, [bc]
    adc h
    ret nz

    ld [hl], d
    add b
    xor $00
    jr nz, jr_05b_4e85

    call nc, Call_05b_4093
    rst $30
    jr nz, jr_05b_4e8c

    jp z, $bf85

    ld c, b
    scf
    ld [hl], l
    push de
    ld l, l
    nop
    ld d, l
    sub a
    and h
    push de
    push de
    ld l, e
    dec d
    adc $80
    rst $38
    ld d, h
    ld c, d
    sub l
    adc c
    cp a
    ld c, c
    nop
    xor l
    sub $15
    sbc c
    or l
    ret z

    ld h, c
    db $f4
    sub l
    ld l, [hl]
    dec de
    xor l
    sub b
    ld b, l
    ld [hl], a
    ld h, h
    nop
    ld l, e
    adc [hl]
    push de
    ld l, l
    ld d, $af
    add c
    ld [$f380], a
    ld d, l
    or e
    rst $38
    ld a, a
    ret c

    inc b
    nop
    ld d, l
    sub h
    or l
    set 0, c
    push de
    push de
    ld [hl], a
    ret nz

    rst $38
    add b
    ei
    rst $38
    rst $38
    rrca
    add d
    nop
    push de
    ld a, e
    add c
    sbc a
    ld a, a
    sub $b5
    rst $38
    add b
    db $e4
    jp z, Jump_05b_767f

    sub a
    ld h, h
    db $fd
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld c, d
    rst $38
    push bc
    ld a, [de]
    inc l
    rst $30
    call Call_05b_4702
    inc bc
    db $db
    ei
    and a
    ld e, e
    ld b, c
    ld b, b
    db $10
    add h
    ld e, c
    nop
    adc a
    sbc d
    rst $18
    jp nc, Jump_000_2cf9

    inc bc
    ld b, c
    ld a, l
    or a
    sub d
    cp $00
    call nz, $c082
    db $fc
    dec e
    add h
    ld d, $b2
    add a
    db $fc
    ld l, e
    dec b
    pop bc
    ld [hl], a
    add l
    cp $00
    add c
    sbc a
    ret nz

    rst $38
    rst $28
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
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
    db $dd
    ld sp, $e2ff
    ld h, b
    ld c, [hl]
    adc b
    rst $38
    db $e4
    ld c, [hl]
    ld c, [hl]
    add a
    ld c, [hl]
    cpl
    nop
    rst $38
    rst $38
    rst $20
    and $c1
    db $e4
    ret nz

    add sp, $2f
    ld h, c
    adc d
    jp z, $c0ff

    db $eb
    pop bc
    ldh [$80], a
    rst $20
    cpl
    adc d
    ret nz

    rst $38
    add b
    add b
    db $eb
    pop bc
    pop hl
    ld b, b
    and $c1
    ldh [$c0], a
    rst $38
    ld b, b
    ld [$e2c1], a
    adc h
    rst $38
    ld e, e
    ld e, h
    ld e, l
    sub a
    ld d, [hl]
    ld d, a
    ld b, a
    ld h, b
    ldh a, [$c1]
    ldh [$c0], a
    rst $38
    nop
    jp hl


    pop bc
    db $e4
    ld h, b
    sub a
    sub [hl]
    sub h
    adc a
    ld l, e
    ld l, c
    ld [hl], $37
    ret nz

    rst $38
    db $ec
    db $eb
    add d
    db $e3
    ld e, d
    rst $38
    ld h, b
    sub l
    add [hl]
    sub h
    ld l, e
    ld l, e
    ld l, e
    ld l, c
    pop de
    ld d, b
    ret nz

    rst $38
    db $ec
    db $eb
    add d
    db $e4
    sub d
    pop bc
    ld [c], a
    ld l, e
    ld l, c
    pop af
    ld d, c
    ret nz

    rst $38
    ret nz

    xor $43
    ldh [$31], a
    sub b
    sub h
    ld h, a
    ldh a, [$c0]
    ld [c], a
    add b
    rst $38
    add b
    xor $c1
    pop hl
    sub l
    sub h
    ld l, l
    ld l, l
    or b
    cp a
    pop hl
    nop
    rst $38
    ld b, b
    xor $c1
    db $e3
    ld h, a
    ld l, l
    cp a
    ldh [rLY], a
    rst $00
    ld b, l
    ld b, a
    ld e, [hl]
    ret nz

    rst $38
    db $ec
    db $eb
    push bc
    ret nz

    ld sp, $f737
    ld [hl], $6c
    ld l, h
    cp a
    ldh [$94], a
    sub d
    ld sp, $f931
    ld e, a
    ret nz

    rst $38
    db $ec
    db $eb
    adc [hl]
    ld e, e
    ld e, [hl]
    ld sp, $dd51
    ld l, h
    rst $38
    ldh [$67], a
    sub e
    sub b
    ld hl, sp-$80
    adc [hl]
    adc a
    rst $20
    ld c, a
    ld c, a
    ld c, a
    jp z, $e8ff

    rst $20
    adc c
    adc [hl]
    ld e, a
    or a
    ld sp, $6850
    cp a
    pop hl
    sub c
    sub d
    pop bc
    ldh [$89], a
    pop af
    adc c
    cp a
    ldh [$ca], a
    rst $38
    ret nz

    add sp, -$77
    adc [hl]
    ld h, b
    scf
    ccf
    ld [hl], $68
    ld l, b
    ld l, b
    sub h
    sub l
    pop bc
    ld [c], a
    cp a
    pop hl
    ld hl, sp-$36
    rst $38
    ret nz

    jp hl


    cp a
    ldh [rBGP], a
    ld d, [hl]
    ld d, [hl]
    ld d, a
    sub a
    nop
    pop bc
    db $e4
    ld a, [hl]
    ldh [$ca], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    jr nc, jr_05b_5208

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
    push hl
    ld d, c
    dec d
    ld d, d
    ld a, l
    ld d, h
    ld l, $56
    ret nz

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
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05b_5208:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $fd
    ld a, [bc]
    rst $38
    ldh [rWY], a
    ld c, d
    ld c, d
    ld l, d
    ld c, e
    ld c, e
    rst $38
    dec bc
    dec bc
    dec bc

Jump_05b_5223:
    dec hl
    dec hl
    ld c, e
    ld c, d
    ld l, d
    rst $30
    ld l, d
    ld l, d
    inc c
    rst $38
    ld [c], a
    ld c, h
    ld c, h
    inc c
    ld c, h
    ld [$e3f6], sp
    ld a, [$c0f9]
    db $e3
    ld l, d
    jp nz, $fde1

    pop hl
    cp a
    ld [c], a
    pop bc
    db $e3
    ld b, h
    cp [hl]
    ld [c], a
    or l
    pop hl
    inc l
    cp d
    and $f6
    rst $20
    ret nz

    db $eb
    ld l, d
    jp nz, Jump_05b_47e1

    ld l, e
    ld l, e
    ld c, e
    ld a, e
    ldh [$7e], a
    pop hl
    add b
    add sp, $2c
    jp $c1e0


    inc l
    cp $e3
    or $e4
    cp b
    db $ec
    ld b, b
    pop hl
    pop bc
    pop hl
    ld l, e
    ld l, e
    ld l, a
    ld l, e
    dec hl
    dec bc
    dec bc
    cp a
    pop hl
    dec bc
    ld c, d
    ld b, b
    rst $20
    ld bc, $c02c
    ld [c], a
    rst $38
    db $e4
    or $e2
    cp b
    ld [$e017], a
    add a
    pop hl
    add e
    ld [c], a
    add hl, de
    dec hl
    add $e0
    cp a
    ld [c], a
    ld c, e
    dec bc
    ld b, b
    rst $20
    add c
    pop hl
    ret nz

    push hl
    nop
    or $e6
    cp b
    db $e3
    add hl, hl
    db $e4
    ld c, b
    db $e4
    pop bc
    ret nz

    add b
    pop hl
    ld a, [hl]
    ldh [$c0], a
    push hl
    nop
    ret nz

    add $c2
    and $f6
    rst $20
    ldh a, [$e4]
    add b
    ld [c], a
    pop bc
    rst $20
    ret nz

    ld [c], a
    cp b
    pop bc
    and b
    ret nz

    add $7f
    ret z

    ld [hl], l
    ret


    or b
    push hl
    ld b, b
    ld [c], a
    dec hl
    add d
    ld [c], a
    ld c, e
    nop
    ld bc, $c0e2
    jp hl


    ld b, b
    jp nz, $c13f

    ld bc, $f6e3
    push hl
    dec l
    call $e3c0
    add h
    nop
    ld [c], a
    add c
    push hl
    ld a, [bc]
    ret nz

    db $fd
    add b
    ld [$e17f], a
    pop bc
    jp hl


    ld l, e
    ld hl, $800a
    jp $c700


    cp e
    xor d
    ret nz

    ldh a, [$2b]
    dec b
    ldh [$c1], a
    jp hl


    nop
    add b
    add sp, -$80
    cp a
    ld c, h
    jp nz, $e5fe

    cp h
    and b
    pop bc
    ldh [rLCDC], a
    rst $20
    ret nz

    call nc, Call_05b_6b08
    xor c
    nop
    and c
    db $fc
    jp hl


    ld a, [hl+]
    rst $28
    add b
    ld b, b
    and a
    add b
    rst $08
    ld l, l
    push hl
    ld [bc], a
    dec hl
    and l
    ld a, [hl+]
    rst $38
    db $ec
    cp a
    pop hl
    rlca
    and e
    add b
    di
    ret nz

    and $ea
    add h
    ret nz

    ret nz

    xor $7e
    ldh [$87], a
    ld [c], a
    add e
    ldh [$80], a
    ld a, [$f6c0]
    ld a, [bc]
    ld a, [hl+]
    nop
    ret nc

    and [hl]
    ld b, b
    ld hl, sp-$58
    and [hl]
    sub [hl]
    db $e3
    inc d
    db $e3
    di
    jp hl


    add d
    ld [$cb40], a
    nop
    dec [hl]
    adc [hl]
    ld d, l
    ret


    ld c, c
    call nc, $d580
    push de
    ld [hl], b
    ret


    ld l, h
    pop bc
    ld h, e
    or l
    ld l, l
    nop
    or e
    ld l, d
    push de
    ld l, c
    ret


    ld l, e
    pop bc
    ld h, e
    nop
    and d
    rlca
    adc h
    ret nz

    db $ed
    push de
    ld h, l
    nop
    ret


    ld l, h
    ret nz

    add [hl]
    ldh [$e6], a
    add c
    ldh a, [$d5]
    ld l, c
    ret


    ld l, e
    inc de
    add [hl]
    or l
    ld h, [hl]
    nop
    cp a
    pop de
    push de
    ld l, c
    ret


    ld l, c
    pop bc
    ld h, a
    ld c, b
    add e
    ccf
    adc c
    add b
    db $ec
    push de
    ld l, d
    ld [bc], a
    db $d3
    xor a
    inc l
    ccf
    or [hl]
    push de
    ld l, l
    db $f4
    ld [$6793], a
    db $ec
    ld [$8e2b], a
    nop
    ret nz

    rst $38
    ld [hl], l
    ld h, [hl]
    ld b, c
    pop de
    push de
    ld l, e
    adc b
    cp d
    cp a
    or e
    add b
    cp a
    or l
    ld a, d
    nop
    push de
    ld l, c
    db $f4
    ld [$b007], a
    inc l
    ld [hl], e
    push de
    ld l, d
    ld [$2b66], sp
    ld a, [c]
    dec hl
    ld l, e
    nop
    push de
    ld l, [hl]
    add b
    cp $c0
    db $ed
    push de
    ld l, h
    db $f4
    ld_long $ff80, a
    push de
    ld [hl], b
    ld c, b
    ld b, a
    nop
    db $ec
    ld a, [c]
    add b
    di
    ld [bc], a
    ldh a, [$94]
    rst $10
    inc [hl]
    inc [hl]
    ld [de], a
    ld d, [hl]
    call c, $ffff
    rst $38
    nop
    rst $38
    rst $38
    add hl, hl
    cp d
    jp nc, $90ff

    inc b
    dec [hl]
    rrc c
    xor [hl]
    or b
    rst $30
    sla [hl]
    nop
    jp hl


    sub h
    add b
    rst $38
    ld b, [hl]
    ld b, [hl]
    rst $00
    inc b
    cp [hl]
    dec c
    xor [hl]
    dec de
    rst $38
    inc h
    ld c, d
    and $00
    cp [hl]
    dec c
    ldh a, [$ef]
    ret nz

    db $fc
    cp [hl]
    inc c
    ldh a, [$ee]
    ld d, $d4
    ld c, d
    ld b, d
    jp hl


    adc a
    nop
    add b
    push af
    sub c
    or e
    jp hl


    sub b
    xor [hl]
    dec c
    jr c, jr_05b_5421

    add $20
    dec d
    ld [hl-], a
    cp [hl]

jr_05b_5421:
    ld [de], a
    nop
    db $ec
    ld c, $c8
    inc b
    jp hl


    pop af
    jp hl


    adc h
    xor [hl]
    inc de
    rra
    call nc, $ae8d
    ld a, l
    or l
    nop
    xor [hl]
    sbc $ca
    cp a
    cp a
    ld sp, hl
    and e
    cp $81
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, h
    inc sp
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
    nop
    inc e
    sub c
    nop
    nop
    nop
    db $fd
    adc b
    rst $38
    ldh [$4e], a
    ld c, [hl]
    ld c, [hl]
    adc h
    ld e, e
    ld e, e
    ld a, a
    ld e, h
    ld e, l
    ld sp, $5c5d
    ld e, e
    adc h
    di
    ldh [$91], a
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    db $e3
    adc h
    jp nz, $ffe1

    pop hl
    ld h, b
    add sp, -$41
    pop hl
    jp z, $c0ff

    db $ec
    adc h
    jp nz, Jump_05b_47e1

    ld b, [hl]
    ld d, h
    ld h, e
    ld b, [hl]
    ld c, l
    cp a
    ld [c], a
    jp z, $80ff

    db $eb
    adc h
    ld h, b
    jp nz, Jump_000_1fe1

    ld [hl], $30
    ld l, b
    ld l, b
    ld [hl-], a
    cp a
    ld [c], a
    jp z, $e8ff

    rst $20
    ld a, a
    ld h, d
    ld h, d
    ld h, d
    ld c, l
    ld d, [hl]
    ld d, a
    ld d, [hl]
    jp nz, $dfe0

    jr nc, jr_05b_553c

    ld l, b
    ld l, b
    ld l, d
    cp a
    ldh [$5f], a
    ld e, e
    db $fc
    jp z, $e8ff

    rst $20
    ld sp, $4d31
    ld [hl-], a
    ld h, l
    ld h, l
    rst $38
    ld l, b
    ld l, b
    ld l, b
    jr nc, jr_05b_5553

    ld l, d
    ld h, l
    ld h, l
    rra
    ld l, d
    jr nc, jr_05b_5541

    ld sp, $c05e
    rst $38
    ret nz

    jp hl


    pop bc
    and $ff
    ld l, c
    ld h, [hl]
    jr nc, jr_05b_5564

    ld l, c
    ld l, c
    ld d, b
    ld sp, $6149
    ret nz

    rst $38
    add b
    jp hl


    ld d, b
    pop bc
    rst $20
    ret nz

    pop hl
    ld d, c
    add b
    rst $38
    ld h, $40
    db $eb
    scf
    ld b, d
    pop bc
    jp hl


    nop
    pop hl
    adc [hl]
    jp z, Jump_000_00ff

    jp hl


jr_05b_551e:
    sbc l
    add hl, sp
    pop bc
    db $eb
    ld h, b
    adc [hl]
    adc d
    jp z, $c0ff

    ret


    scf
    adc a
    ld b, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    pop bc
    jp hl


    ret nz

    rst $38
    add b
    jp z, $f931

    inc [hl]
    ld b, b
    ret nz

    db $fd
    pop hl

jr_05b_553c:
    ld d, [hl]
    ld d, [hl]
    ld c, l
    ld e, l
    ld e, h

jr_05b_5541:
    add sp, -$3f
    ldh [$c0], a
    rst $38
    jp hl


    add sp, $09
    rst $38
    db $ec
    adc a
    ld c, a
    ld c, a
    add hl, hl
    ld c, a
    jp z, $e8ff

jr_05b_5553:
    rst $20
    adc c

Jump_05b_5555:
    rst $38
    db $ec
    ld c, a
    cp a
    ldh [$ca], a
    rst $38
    jr nc, jr_05b_551e

    ld hl, sp-$41
    ldh [$ca], a
    rst $38
    ret nz

jr_05b_5564:
    ld sp, hl
    ld c, a
    adc a
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

Jump_05b_5589:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_05b_568d

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
    ld d, [hl]
    sbc d
    ld d, [hl]
    db $ed
    ld e, b
    ld [hl], c
    ld e, d
    ret nz

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
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05b_568d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    push af
    inc c
    rst $38
    ldh [$0b], a
    rst $38
    ldh [rWX], a
    dec hl
    dec hl
    dec bc
    sbc a
    dec hl
    dec bc
    dec bc
    ld l, e
    dec bc
    ld a, [$ece0]
    ldh [$4c], a
    add b
    rst $38
    ldh [$f9], a
    pop hl
    db $fd
    ld [c], a
    ld hl, sp-$1d
    rst $30
    db $eb
    db $fc
    jp hl


    pop bc
    db $e3
    dec hl
    add h
    call nz, $bfe0
    ld [c], a
    ld c, e
    ldh [$e2], a
    ret nz

    ldh [$fd], a
    push hl
    or l
    db $e3
    ld c, h
    rlca
    inc c
    inc l
    inc l
    rst $30
    and $c0
    db $ec
    pop bc
    pop hl
    ld a, h
    ldh [$bf], a
    db $e3
    adc b
    ret nz

    db $eb
    cp c
    ldh [$b2], a
    db $e4
    inc l
    ret


    pop hl
    rst $30
    and $80
    jp hl


    dec hl
    nop
    add c
    pop hl
    jp nz, Jump_05b_7ee0

    pop hl
    ld a, $e0
    ld d, e
    db $e3
    db $fc
    ld [$e12e], a
    pop bc
    ld [c], a
    db $ec
    rst $30

jr_05b_56ff:
    push hl
    inc a
    add sp, $2c
    ld c, h
    dec b
    ldh [rOCPD], a
    dec hl
    ld c, e
    nop
    add c
    ldh [$fc], a
    ldh [$fb], a
    ret nz

    jr nz, jr_05b_56ff

    ld a, [hl]
    push hl
    rst $30
    add sp, -$37
    pop hl
    ret nz

    and $1d
    inc l
    push bc
    pop bc
    ld l, e
    ld c, e
    ld c, e
    inc b
    pop hl
    ret nz

    push hl
    add d
    db $ec
    ldh [$f1], a
    jp nz, $c6e8

    cp a
    set 5, c
    ret nz

    add a
    ret nz

    ld l, e
    ld c, e
    ld l, e
    ld h, c
    ld l, e
    inc b
    ldh [$80], a
    db $e3
    ld b, b
    db $ed
    ld a, a
    db $db
    inc l
    inc l
    ld c, d
    ret nz

    ld b, b
    add b
    ldh [$7e], a
    ret nz

    ret nz

    and $fe
    db $ec
    ld l, [hl]
    add sp, $3f
    ret nc

    inc c
    ld bc, $80c0
    ret nz

    db $eb
    ld d, [hl]
    add sp, -$04
    and d
    db $f4
    and $41
    rst $28
    cp [hl]
    and c
    jp nz, Jump_05b_6ba0

    add c
    dec bc
    cp $a1
    ret nz

    rst $20
    cp l
    and $41
    push bc
    rst $28
    ld [$ee81], a
    ld c, e
    ld a, [bc]
    ld a, h
    pop bc
    ld c, e
    ret nz

    rst $00
    inc l
    rst $08
    add $12
    jp $ccc0


    cp a
    xor l
    add b
    ld bc, $ffc0
    db $e3
    add b
    ret z

    ld a, a
    and l
    ld a, [hl-]
    and h
    ccf
    or a
    nop
    and b
    dec hl
    nop
    add b
    ret nz

    ccf
    ret nz

    nop
    push bc
    dec e
    xor c
    ld b, a
    rst $20
    ld b, b
    call nc, $e2c0
    add b
    pop bc
    nop
    pop bc
    pop hl
    ret nz

    and d
    adc c
    push hl
    cp d
    add d
    db $fc
    db $e3
    add h
    ret z

    and [hl]
    add c
    dec a
    xor d
    nop
    add b
    add c
    cp a
    ld [c], a
    pop bc
    db $e3
    ld b, b

jr_05b_57bb:
    and h
    ld a, h
    add h
    push bc
    xor $c0
    di
    cp $c1
    nop
    ld b, e
    add d
    ld [hl], a
    and b
    ld c, h
    rst $20
    cp l
    xor c
    inc [hl]
    rst $20
    ld c, h
    and d
    jr nz, jr_05b_57bb

    dec d
    sub e
    nop
    ld hl, $51a7
    add a
    inc c
    xor b
    sbc $cb
    dec d
    sub h
    xor h
    push af
    and c
    adc h
    dec d
    sub c
    nop
    pop bc
    ld [hl], c
    call z, $8089
    add l
    dec d
    sub l
    pop bc
    ld [hl], c
    rst $38
    ld h, l
    ret nz

    jp hl


    dec d
    sub [hl]
    nop
    pop bc
    ld [hl], b
    ld l, e
    and c
    ld b, b
    rst $08
    dec d
    sub [hl]
    pop bc
    ld l, [hl]
    or a
    add a
    dec a
    ld h, a
    dec d
    sbc b
    nop
    pop bc
    ld [hl], b
    ret nz

    adc a
    dec d
    sbc c
    pop bc
    ld l, a
    ret nz

    add [hl]
    add b
    rst $20
    dec d
    sub l
    pop bc
    ld [hl], b
    nop
    or $27
    ret nz

    ld [$9715], a
    pop bc
    ld l, h
    nop
    ld [hl], h
    dec d
    sub l
    pop bc
    ld l, a
    ld [hl-], a
    xor e
    nop
    xor [hl]
    jp hl


    dec d
    adc [hl]
    pop bc
    ld [hl], d
    nop
    ld [hl], b
    dec d
    sub [hl]
    pop bc
    ld [hl], c
    inc b
    cpl
    dec d
    sub a
    nop
    pop bc
    ld [hl], c
    adc h
    or b
    dec d
    sub l
    xor h
    ld sp, hl
    ret nz

    xor $15
    sub b
    xor h
    ld a, [c]
    ret nz

    adc c
    nop
    scf
    sub b
    dec d
    adc c
    xor h
    db $f4
    add b
    ld h, [hl]
    ld sp, $2297
    dec l
    push de
    adc h
    jp Jump_000_000b


    rst $38
    rst $38
    ld d, l
    ld a, [bc]
    ld [hl], a
    ld l, [hl]
    ld d, l
    ld [hl], $ff
    rst $38

jr_05b_5868:
    ld b, b
    cp h
    ld [hl], a
    rst $38
    ld b, b
    cp h
    nop
    ld a, e
    dec d
    sbc c
    call z, Call_000_3955
    ld h, $ff
    ld d, l
    jr c, jr_05b_58a0

    rst $38
    ld b, b
    cp l
    ld h, [hl]
    sub a
    nop
    ld b, b
    cp a
    ld a, e
    add hl, de
    ld b, b
    cp a
    ld h, $fb
    scf
    or c
    ld d, l
    dec l
    xor a
    add $ba
    sbc a
    nop
    ld l, c
    scf
    cp d
    sbc h
    ret nz

    rst $38
    ld h, $f3
    ld b, c
    db $d3
    add d
    adc d
    call c, $cdac

jr_05b_58a0:
    xor h
    nop
    ld e, e
    adc h
    rst $38
    rst $38
    add h
    jr jr_05b_5868

    rst $38
    dec de
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    and $b6
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_58e2:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    ld c, b
    nop
    nop
    nop
    rst $18
    jr nz, jr_05b_5910

    jr nz, jr_05b_58f2

jr_05b_58f2:
    ld sp, $e0ff
    sub l
    add [hl]
    rst $38
    add [hl]
    sbc b
    sbc b
    add [hl]
    add [hl]
    sub l
    ld sp, $8731

jr_05b_5901:
    ld h, b
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    db $e4
    pop bc
    ldh [$94], a
    sub a
    jr nc, jr_05b_597d

jr_05b_5910:
    sub h
    cp a
    ld [c], a
    ld e, a
    jp z, $c0ff

    db $ed
    sub d
    db $76
    pop bc
    ldh [$6c], a
    ld h, a
    cp a
    ld [c], a
    sub d
    ld sp, $ca5e
    rst $38
    ld a, [hl]

jr_05b_5926:
    add b
    db $ed
    sub b
    add [hl]
    sub h
    ld l, l
    jr nc, jr_05b_599b

    cp a
    ld [c], a
    rst $20
    sub b
    ld sp, $ca31
    rst $38
    ld b, b
    ld [$1528], a
    ld sp, $90df
    sbc l
    jr nc, jr_05b_59ab

    jr nc, jr_05b_5901

    pop hl
    jr nc, jr_05b_58e2

    jp hl


    sbc l
    ret nz

    rst $38
    ret nz

    db $ed
    rla
    ld b, b
    ldh [$93], a
    ld l, l
    ld l, h
    rst $08
    ld l, h
    jr nc, jr_05b_59c2

    ld h, [hl]
    ret nz

    rst $38
    ret nz

    rst $08
    jr nz, jr_05b_5972

    ld a, [hl]
    ld a, a
    ldh [$91], a
    jr nc, jr_05b_59ca

    ld l, d
    ld l, l
    jr nc, jr_05b_5926

    rst $38
    ld a, h
    ret nz

    pop af
    ld a, a
    pop hl
    sbc l
    jr nc, jr_05b_599f

    jr nc, jr_05b_59da

    ret nz

jr_05b_5972:
    rst $38
    sbc [hl]
    add b
    ld a, [c]
    jr nz, jr_05b_5984

    ld sp, $c095
    rst $38
    ret nz

jr_05b_597d:
    ld hl, sp+$0d
    inc de
    sub d
    add [hl]
    ld b, b
    rst $38

jr_05b_5984:
    nop
    rst $30
    ld [$c040], sp
    ret nz

    ret nz

    ld a, $c0
    inc a
    ret nz

    rst $38
    ret nz

    pop de
    dec d
    ld sp, $9d9d
    ld b, c
    ret nz

    ld b, b
    rst $18
    nop

jr_05b_599b:
    ret nz

    cp a
    ret nz

    cp a

jr_05b_599f:
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    sbc a
    rst $38
    rst $38
    ret nz

    db $eb
    ld b, b
    sbc a

jr_05b_59ab:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_59c2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_59ca:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_59da:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, jr_05b_5ad0

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
    xor l
    ld e, d
    db $dd
    ld e, d
    or l
    ld e, h
    ld d, b
    ld e, [hl]
    ret nz

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

jr_05b_5ad0:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    xor l
    inc c
    rst $38
    di
    ld c, h
    ld c, h
    rst $20
    and $2c
    cp $e0
    inc c
    rst $00
    inc l
    inc l
    ld c, h
    db $ec
    ldh [$eb], a
    rst $20
    db $d3
    db $eb
    ld l, h
    ld l, h
    rrca
    ld l, h
    ld c, h
    ld l, h
    inc c
    ld [c], a
    db $f4
    ret nz

    db $e4
    sub a
    db $f4
    pop bc
    ld [c], a
    ld l, a
    inc c
    ld l, h
    ld l, h
    dec bc
    rst $38
    ldh [$4c], a
    ld c, h
    sbc d
    ldh [rNR14], a
    ret nz

    db $f4
    pop bc
    rst $30
    inc c
    jp nz, $4be2

    rst $38
    ldh [$be], a
    ld [c], a
    pop af
    ldh [$f0], a
    dec [hl]
    db $ec
    ld h, a
    pop hl
    ld b, [hl]
    db $f4
    jp nz, Jump_05b_6be4

    ld l, e
    ld c, e
    dec hl
    ret nz

    ld a, a
    ldh [$bd], a
    pop hl
    rlca
    db $e3
    sub c
    ld a, [$c6e8]
    call nz, Call_05b_6bc5
    ld l, e
    ld bc, $416b
    pop hl
    cp [hl]
    ld [c], a
    ld a, a
    pop hl
    ld d, c
    ld [$e127], a
    ei
    ldh [$b8], a
    ret nz

    ld b, b
    db $fc
    pop hl
    ld b, d
    pop af
    add c
    ldh [$bf], a
    ldh [rSCY], a
    ldh [$7d], a
    pop hl
    dec bc
    add a
    pop bc
    add b
    pop bc
    db $ec
    cp l
    ld [c], a
    ret nz

    rst $30
    pop bc
    pop hl
    ld a, $e0
    ld a, a
    db $e4
    ld d, e
    ret nz

    dec bc
    ld de, $742c
    rst $00
    ret nz

    add sp, $38
    push af
    dec hl
    rst $38
    ld [c], a
    add b
    db $e3
    ld d, a
    pop hl
    ld bc, $fc0c
    pop hl
    ld b, c
    add sp, -$11
    push hl
    db $fd
    and d
    ret nz

    rst $30
    cp a
    db $e4
    adc $a5
    ld e, b
    cp $aa
    jp $fda2


    or h
    ld c, h
    ld c, h
    ld a, a
    pop hl
    ld l, e
    ld b, b
    jp nz, Jump_000_0b07

    dec bc
    ld l, h
    ld b, d
    ret nz

    ret nz

    jp hl


    dec b
    ld [c], a
    adc b
    xor a
    or c
    xor b
    ld bc, $3f2c
    ldh [$7f], a
    jp $a1fe


    adc l
    jp nz, $ed40

jr_05b_5baf:
    rst $00
    di
    inc d
    and [hl]
    inc de
    inc l
    inc l
    sbc d
    rst $00
    jp $0ba1


    jr jr_05b_5baf

    or $b8
    cp [hl]
    db $e4
    nop
    add l
    and l
    inc d
    xor c
    ret nz

    jp $d801


    cp e
    rst $20
    ld sp, $c0a6
    di
    ld b, c
    push af
    nop
    sub b
    adc [hl]
    sub h
    adc d
    nop
    rst $20
    ld a, $82
    ld a, c
    sub b
    ld c, a
    and h
    sbc e
    add e

jr_05b_5be1:
    ld b, d
    xor l
    nop
    ld b, c
    and e
    ld b, c
    reti


    and l
    sbc c
    or l
    ld l, l
    di
    db $ec
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld a, a
    ldh [rIE], a
    xor c
    add c
    add c
    push de
    ret nz

    rst $38
    ret nz

    push af
    nop
    pop bc
    rst $38
    inc bc
    cp e
    push de
    ld l, b
    ld b, d
    ld d, h
    dec bc
    ld c, b
    db $d3
    db $fd
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    rst $38
    ret nz

    rst $38
    ld e, c
    ld d, e
    ld e, l
    jr nz, jr_05b_5be1

    sbc a
    or l
    rst $38
    ld hl, $01b9
    cp a
    nop
    sbc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$bb], a
    nop
    ld [c], a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, h
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_05b_5ca5:
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
    nop
    rst $38
    pop af
    nop
    nop
    nop
    pop af
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    ldh [rNR31], a
    add hl, de
    inc e
    add hl, de
    cp h
    jp c, $f5ff

    db $f4
    ld bc, $1819
    ld hl, $e0ff
    jr jr_05b_5ce1

    add hl, de
    ld bc, $ffd4
    jp nz, $8ef4

    rst $38
    ldh [$be], a
    rst $38
    di
    ld a, [c]
    rst $38
    rla
    ld hl, $363d
    ld b, h

jr_05b_5ce1:
    adc b
    adc h
    adc h
    ccf
    adc b
    ld b, l
    ld [hl], $3d
    ld hl, $d009
    rst $38
    ld b, e
    db $ed
    rst $38
    ld a, [bc]
    dec a
    ld [hl+], a
    ld e, d
    jr nz, jr_05b_5d16

    ld e, d
    ld e, l
    ld l, $ff
    ldh [rNR43], a
    dec a
    ld [$ed7f], sp
    sub b
    rst $38
    ldh [$fb], a
    ldh [$7c], a
    or $e1
    or h
    di
    add hl, bc
    ld hl, $5d29
    ld e, l
    cp a
    push hl
    rst $00
    add hl, hl
    ld hl, $c117

jr_05b_5d16:
    rst $28
    cp l
    ld [c], a
    ret nz

    or $08
    add hl, sp
    ld sp, hl
    jr c, jr_05b_5ca5

    ldh [$7e], a
    ldh [$59], a
    ld e, e
    ld e, e
    ld e, e
    jr c, jr_05b_5d8c

    add hl, sp
    ld a, [bc]
    sub a
    db $eb
    ret nz

    add sp, $35
    db $f4
    ld [$c841], sp
    ldh [$3b], a
    ld e, e
    ld e, c
    ret nz

    db $e3
    ld e, e
    ld b, c
    ld [$eec0], sp
    ld b, [hl]
    or $36
    ld b, b
    db $e4
    add hl, sp
    jr c, @-$3e

    rst $20
    jr c, jr_05b_5d83

    cp a
    rst $18
    ret nz

    adc $bd
    add hl, hl
    ld b, a
    ldh [$89], a
    adc d
    adc d
    adc c
    ld b, b
    ldh [$29], a
    ld [hl], c
    ld a, [bc]
    ccf
    call z, $fa45
    ld b, b
    call nz, Call_000_353d
    adc d
    ld b, c
    ret nz

    ld c, $3f
    ret nz

    adc d
    dec [hl]
    dec a
    pop bc
    pop bc
    ld b, b
    xor $c0
    cp [hl]
    call nz, Call_000_00a1
    cp h
    and c
    ret nz

    and e
    adc [hl]
    cp $40
    cp a
    ret nz

    call z, $d801
    ret nz

    sbc h

jr_05b_5d83:
    ret nz

    rst $20
    nop
    rst $38
    rst $38
    ret nz

    or $ff
    rst $38

jr_05b_5d8c:
    ret nz

    ld sp, hl
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], l
    call nc, $ffdd
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    jr nc, jr_05b_5ea7

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
    add h
    ld e, [hl]
    or h
    ld e, [hl]
    ld e, $61
    rst $10
    ld h, d
    ret nz

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
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05b_5ea7:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    sbc a
    ld c, h
    ld c, h
    ld c, h
    inc c
    dec bc
    rst $38
    db $e4
    db $f4
    ldh [$4c], a
    ld b, c
    inc c
    rst $38
    push hl
    add sp, -$20
    db $fd
    ld [c], a
    ld sp, hl
    ldh [$f2], a
    db $e4
    inc l
    ei
    ld [c], a
    nop
    rst $18
    and $d9
    and $c1
    push hl
    cp [hl]
    db $e4
    cp h
    pop hl
    db $fc
    xor $b0
    pop hl
    push bc
    ldh [$78], a
    ei
    ld [c], a
    ret nz

    db $eb
    add d
    ld [c], a
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    cp c
    rst $20
    ret nz

    sbc l
    db $ec
    pop bc
    ld [c], a
    xor l
    ld [c], a
    ld l, e
    pop hl
    ld a, a
    db $ed
    jp nz, Jump_05b_6be2

    dec hl
    inc bc
    dec bc
    ld c, e
    cp [hl]
    rst $20
    ld b, c
    db $e4
    add d
    jp hl


    ld sp, $3ae2
    db $e3
    pop bc
    pop af
    daa
    ld l, e
    dec hl
    dec hl
    ret nz

    ldh [$7d], a
    pop hl
    dec hl
    add b
    ld [c], a
    inc a
    db $ed
    ld b, b
    ccf
    db $e3
    daa
    db $e4
    db $fd
    call nz, $c3f6
    ret nz

    db $e4
    jp nz, Jump_000_2be1

    call nz, Call_000_01e1
    dec hl
    rst $38
    ldh [$d4], a
    ld [c], a
    db $fd
    db $eb
    ccf
    rst $20
    sbc [hl]
    rst $00
    ld b, c
    db $e4
    add c
    pop hl
    nop
    ret nz

    pop hl
    push bc
    ldh [rPCM34], a
    pop bc
    ret nz

    db $e3
    ld a, [hl]
    push bc
    add l
    db $e4
    ld b, c
    rst $20
    push hl
    db $e3
    ld b, $c0
    db $eb
    dec hl
    dec hl
    dec a
    db $e3
    cp a
    push hl
    call z, Call_000_3be4
    add $33
    add $60
    xor l
    push hl
    pop bc
    jp z, $e14e

    push bc
    pop hl
    ret nz

    push hl
    ld l, e
    ld l, e
    ld [hl+], a
    ld [c], a
    ld h, $d5
    and $2c
    inc l
    inc c
    pop bc
    pop bc
    db $f4
    inc c
    ret z

    db $e3
    ld b, $e2
    nop
    ld a, [$74c3]
    ret nz

    ld b, e
    and $81
    db $e4
    rst $38
    and l
    rst $20
    and e
    cp [hl]
    xor e
    sub b
    ret nz

    ld [bc], a
    ld b, a
    push hl
    dec bc
    cp d
    pop bc
    ld [hl], l
    pop bc
    nop
    db $e4
    ld [hl], a
    and a
    or b
    ld [$a27e], a
    ld [de], a
    ld a, c
    and [hl]
    ld c, e
    ld b, a
    rst $20
    db $fd
    and c
    ld c, e
    db $76
    pop bc
    ld d, $c3
    db $10
    jp nz, Jump_000_3d00

    and l
    ld b, b
    rst $00
    add b
    call $e97f
    add b
    and [hl]
    ld d, h
    push bc
    db $fd
    xor d
    db $ec
    rst $20
    ld [bc], a
    add c
    xor c
    ld a, [bc]
    ld b, a
    and b
    ret nz

    di
    adc $a7
    dec bc
    ret


    ld hl, sp-$7e
    xor h
    ret nz

    nop
    or a
    add h
    ld c, c
    pop hl
    jp z, Jump_000_08a1

    xor d
    db $e3
    push hl
    add b
    push bc
    adc e
    adc c
    ret nz

    db $ec
    ld bc, $bf0a
    db $e4
    ret z

    adc l
    ld b, c
    sub b
    xor l
    ld hl, sp-$2c
    ldh a, [rSTAT]
    sub c

jr_05b_5fe4:
    ld l, l
    pop af
    nop
    dec d
    sub l
    ld b, c
    sub c
    inc sp
    add [hl]
    db $fd
    rst $30
    ld d, d
    and a
    ld b, c
    adc a
    adc $65
    jp nz, Jump_000_01c1

    inc l
    rst $30
    ld h, a
    call nc, Call_05b_41f3
    adc a
    xor h
    add [hl]
    ret nz

    ld [$9415], a
    ld b, c
    sub b
    ld [bc], a
    cp c
    and a
    ld c, h
    ld l, h
    ret z

    dec d
    sbc b
    ld b, c
    adc h
    ld [hl], l
    adc b
    ret nz

    jp hl


    dec d
    sub d
    nop
    ld b, c
    sub c
    cp c
    and [hl]
    cp h
    ld l, d
    dec d
    sub e
    ld b, c
    sub c
    adc l
    and l
    ccf
    db $e4
    sub d
    and a
    nop
    dec d
    sub b
    ld b, c
    sub c
    inc a
    xor d
    ld e, l
    xor b
    call nc, $80f2
    cp d
    ldh a, [$8a]
    dec d
    sub e
    nop
    pop bc
    jr nc, jr_05b_5fe4

    inc h
    inc a
    ld l, e
    dec d
    sub h
    xor h
    or d
    inc l
    add l
    ret nz

    rl l
    sub d
    nop
    pop bc
    ld sp, $a67f
    ld a, a
    db $eb
    dec d
    sub h
    add b
    or e
    db $f4
    db $ec
    dec d
    sub [hl]
    pop bc
    inc [hl]
    nop
    add b
    ldh a, [$b6]
    sub a
    add b
    xor [hl]
    ld d, b
    adc b
    sbc [hl]
    ld l, d
    ld a, b
    sub l
    add b
    or c
    ld a, c
    inc b
    nop
    ld e, [hl]
    ld l, c
    sub h
    or d
    pop bc
    inc [hl]
    push af
    ld b, l
    add c
    ld l, l
    push de
    ld l, $80
    or d
    ret


    ld b, a
    nop
    add d
    xor b
    ret nz

    or h
    db $ec
    ld sp, hl
    pop bc
    adc d
    push de
    ld [hl], $ac
    cp c
    ld [bc], a
    xor d
    push de
    add hl, sp
    nop
    xor h
    xor c
    jp nc, $2ea5

    ld c, d
    push de
    scf
    pop bc
    ld l, $07
    pop de
    push de
    add hl, sp
    xor h
    xor [hl]
    nop
    rst $20
    adc l
    rst $38
    rst $38
    xor l
    or d
    rst $38
    rst $38
    inc h
    ld d, [hl]
    ld a, a
    rst $38
    ld hl, sp+$68
    ld h, $dc
    nop
    di
    ld d, b
    cpl
    add hl, hl
    and $7f
    scf
    jp Jump_05b_42d3


    ld b, d
    call Call_05b_74f5
    ld b, b
    rst $28
    nop
    sub $64
    ld [bc], a
    adc d
    di
    db $eb
    ld h, $d0
    sbc b
    adc l
    ld l, d
    db $10
    ld e, l
    inc c
    ld h, $d1
    nop
    db $db
    and a
    rst $38
    rst $38
    jp c, $bf78

    rst $38
    ld d, l
    rst $18
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    and $96
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    or [hl]
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    pop af
    nop
    nop
    nop
    rst $18
    jr nz, @+$22

    jr nz, jr_05b_6132

    ld sp, $e4ff
    ld de, $9b12
    ld hl, $f022
    ldh [rNR41], a
    nop
    rst $38
    rst $38
    rst $20

jr_05b_6132:
    and $20
    di
    jr nz, jr_05b_6145

    pop bc
    push hl
    cp [hl]

jr_05b_613a:
    ld [c], a
    daa
    dec b
    dec b
    dec b
    ld a, b
    jp z, $c0ff

    add sp, -$7e

jr_05b_6145:
    ld [c], a
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    cp c
    rst $20
    ld hl, sp-$36
    rst $38
    add sp, -$19
    add d
    pop hl
    ld c, l
    ld b, [hl]
    ld [hl], $30
    jr nc, jr_05b_613a

    ld [hl], $be
    rst $20
    jp z, $e8ff

    rst $20
    pop bc
    pop hl
    ld [hl-], a
    ld l, d
    ld l, l
    rst $38
    jr nc, @+$32

    ld l, l
    ld l, d
    ld [hl], $46
    ld d, a
    ld d, a
    sbc a
    ld d, a
    or b
    and h
    and h
    and h
    jp z, $c0ff

    ld_long $ff39, a
    ld l, c
    ld l, d
    ld l, d
    ld l, b
    ld l, b
    ld l, d
    ld l, d
    jr nc, @+$01

    jr nc, jr_05b_61ed

    ld l, b
    ld l, l
    ld [hl], c
    ld a, c
    add b
    add b
    inc c
    jp z, $80ff

    jp hl


    ld c, c
    ld c, b
    ret nz

    db $e3
    ld a, [hl]
    ldh [$ba], a
    ldh [$bf], a
    pop hl
    ld a, h
    jp z, Jump_05b_40ff

    jp hl


    add hl, sp
    ld l, c
    ld l, c
    ld l, c
    jr nc, @+$01

    ldh [$7d], a
    ld l, e
    ld sp, hl
    pop hl
    ld l, c
    ld l, c
    ld l, e
    ld [hl], c
    ld a, c
    jp z, $28ff

    ret nz

jr_05b_61b3:
    rst $38
    rst $38
    rst $38
    db $e4
    db $e3
    ld e, [hl]
    ld b, b
    pop hl
    ld l, c
    ld b, b
    rst $38
    or $f5
    ld h, l
    ld e, a
    ret nz

    ret z

    ld l, l
    ret nz

    rst $18
    rst $28
    xor $5b
    ld e, [hl]
    ld b, b
    jp nz, Jump_05b_6cff

    ld l, h
    ld l, l
    ld l, d
    ld [hl-], a
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld b, b
    rst $18
    ret nz

    db $ec
    ld a, a
    ldh [rKEY1], a
    ld [hl-], a
    ld l, e
    ld bc, $b3e0
    ld [hl-], a
    ld c, l
    ret nz

    cp a
    add b
    ldh a, [$5a]
    ld h, b
    cp [hl]

jr_05b_61ed:
    and c
    jr nc, jr_05b_6221

    jr nc, jr_05b_61b3

    rst $20
    ret nz

    rst $38
    ld b, b
    jp hl


    ld e, e
    ld e, e
    cp a
    ld [c], a
    add d
    pop hl
    inc hl
    add hl, hl
    inc d

Call_05b_6200:
    rst $38
    db $e3
    jp z, $e8ff

    rst $20
    ld e, d
    cp a
    db $e4
    ld b, e
    pop hl
    rlca
    dec hl
    inc l
    inc h
    rst $38
    ld [c], a
    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_6221:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_05b_6336

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
    inc de
    ld h, e
    ld b, e
    ld h, e
    cp e
    ld h, l
    call nc, $c067
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

jr_05b_6336:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    push af

jr_05b_6344:
    ld c, e
    rst $38
    pop hl
    dec bc
    rst $38
    rst $20
    ld c, h
    ld c, h
    inc c
    inc c
    rst $20
    inc c
    ld c, e
    ld c, h
    rst $38
    ldh [$f8], a
    ldh [$0c], a
    inc c
    dec bc
    rst $30
    dec bc
    inc c
    inc l
    cp $e0
    inc c
    inc l
    inc l
    ld c, h
    pop af
    inc c
    db $ec
    push hl
    ei
    ld [$e4c2], a
    ld l, e
    dec bc
    dec bc
    dec hl
    rlca
    dec hl
    ld c, e
    dec hl
    rst $38
    pop hl
    cp [hl]
    ldh [$ab], a
    ldh [$d6], a
    rst $20
    ret nz

    db $e4
    jr z, jr_05b_6344

    rst $28
    ret nz

    db $e4
    jp nz, Jump_05b_6be1

    ret nz

    ldh [$0b], a
    ld [hl], l
    pop hl
    cp [hl]
    ldh [rNR21], a
    adc l
    ldh [$0b], a
    ld c, e
    db $fc
    ldh [$0b], a
    push bc
    pop hl
    ld [hl], d
    ldh [$80], a
    db $e3
    ld [hl-], a
    pop bc
    db $f4
    inc c
    ld b, h
    ldh [$c2], a
    ldh [rOCPD], a
    ld l, e
    ret


    ldh [$bd], a
    db $e3
    nop
    cp a
    ldh [rOBP0], a
    pop hl
    sub b
    db $e3
    adc d
    pop hl
    ld b, a
    ldh [$fb], a
    pop hl
    add b
    db $f4
    ld b, a
    ldh [$09], a
    ld l, e
    add b
    pop hl
    adc b
    pop hl
    dec bc
    add h
    ldh [$c0], a
    db $e4
    ld b, h
    and $ff
    rst $30
    inc a
    ld l, $e3
    jp Jump_000_2be1


    dec hl
    ld l, e
    ld l, e
    ld b, e
    db $e3
    dec sp
    pop hl
    inc b
    add b
    ldh [$c1], a
    ret nz

    ld c, e
    cp h
    push bc
    and h
    pop bc
    inc sp
    db $e3
    cpl
    ld [c], a
    cp [hl]
    call $0300
    pop hl
    ret


    ret nz

    ret nz

    pop hl
    inc b
    ld [c], a
    ld a, a
    ldh [$80], a
    ld [c], a
    ld bc, $7ee1
    call nz, Call_05b_6200
    jp nz, $f6c0

    ld [bc], a
    pop hl
    cp a
    ret nz

    push bc
    jp nz, $c233

    ld [hl-], a
    ret nz

    ld a, [bc]
    pop hl
    nop
    ret nz

    pop bc
    db $fc
    db $e3
    ret nz

    push hl
    ld a, [hl]
    jp nc, $e184

    adc l
    ret nz

    ld a, e
    ld [c], a
    db $f4
    and l
    nop
    ld d, h
    add $4b
    pop bc
    cp b
    ld [c], a
    scf
    jp $a1fd


    ret nz

    xor $08
    ret nz

    add h
    pop bc
    ld c, $c0
    rst $20
    dec hl
    dec bc
    inc l
    ld bc, $fee8
    and e
    jp $fda2


    or d
    db $10
    call z, Call_000_02a2
    pop bc
    db $fc
    and b
    ld [hl], l
    and h
    dec hl
    sub b
    and b
    ld bc, $f8e6
    and d
    ret nc

    adc b
    xor a
    or c
    and [hl]
    sub c

jr_05b_644d:
    ret nz

    ret nz

    db $e4
    ld c, e
    ret nz

    db $e3
    dec hl
    dec bc
    ld bc, $502a
    and b
    ld bc, $b6e6
    add sp, $2e
    jp nc, $c688

    add d
    push hl
    ld [hl], h
    and b
    inc c
    ld a, [bc]
    reti


    cp $8d
    ld a, [bc]
    ld a, [bc]
    dec c
    pop hl
    ld c, d
    and b
    cp $a0
    cp [hl]
    and c
    add b
    ld [hl], l
    and c
    inc d
    xor d
    ld a, b
    push bc
    ld bc, $15d3
    and b
    set 0, e
    ld a, b
    add b
    ld l, e
    add [hl]
    jp nz, Jump_05b_6be2

    dec hl
    ld b, b
    pop hl
    ret nz

    ldh a, [$6f]
    or e
    ld b, l
    add b
    ld a, [bc]
    ld [$81c5], sp
    ld a, e
    add d
    ld a, [hl-]
    and b
    ld a, [hl+]
    ld a, h
    add b
    add b
    xor $41
    rst $00
    ld a, a
    or b
    nop
    ld e, h
    add d
    sbc e
    add l
    ld e, c
    add d
    ld b, b
    db $ec
    jr nc, jr_05b_644d

    ld b, c
    sub $d5
    ld h, a
    call z, Call_000_006a
    sbc [hl]
    rst $28
    add $64
    cp l
    ld l, [hl]
    push de
    ld h, [hl]
    call z, $bf6a
    rst $30
    ret nz

    rst $08
    and d
    add l
    nop
    call z, Call_05b_7768
    jp hl


    dec l
    ld h, b
    ld l, a
    db $ed
    ld a, [hl]
    adc h
    ld h, l
    ld h, l
    call z, Call_05b_7f68
    rst $38
    ld [$7be8], sp
    ld b, e
    ld h, [hl]
    add [hl]
    ld h, d
    ld c, h
    nop
    sbc b
    push de
    ld h, [hl]
    call z, Call_000_1469
    call Call_000_3300
    add d
    cp a
    or h
    push de
    ld l, d
    dec d
    or l
    pop bc
    ld sp, hl
    push de
    ld h, h
    call z, Call_05b_4269
    adc d
    nop
    ld sp, $2de5
    rst $20
    ld a, [c]
    ld d, a
    call z, $fc68
    adc l
    rst $38
    inc [hl]
    sub $46
    call z, Call_000_0069
    ld b, d
    add a
    res 4, e
    cp a
    sbc c
    ld bc, $c0ff
    call c, Call_05b_46d6
    call z, Call_000_0167
    db $ec
    nop
    ccf
    ld a, [$bf4f]
    rst $30
    ld b, $c0
    ld d, c
    ret nz

    di
    ld bc, $c0ea
    ld e, d
    rst $38
    rst $38
    nop
    add hl, sp
    inc a
    rst $38
    rst $38
    ret nz

    rst $38
    db $fc
    ei
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or c
    call c, $e100
    rst $38
    ld d, e
    rst $30
    ld bc, $94fc
    jr z, jr_05b_6561

    or e
    ld e, [hl]
    rst $38
    sbc l
    ret z

    ld d, b
    ld a, [hl+]
    nop
    ld b, [hl]
    db $fc
    ret nz

    adc c
    ld d, e
    ld a, [c]
    or a
    adc h
    ld bc, $53ff
    rst $38
    db $db
    xor $9c
    rst $38
    nop
    rst $38
    rst $38
    ld c, $ff

jr_05b_6561:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    push hl
    nop
    nop
    nop
    db $dd
    ld c, e
    rst $38
    pop hl
    ld c, h
    ld c, l
    ld hl, $e5ff
    jr @+$1b

jr_05b_65c6:
    ld c, a
    nop
    nop
    nop
    sub b
    db $fc
    ldh [$fd], a
    db $e3
    sub b
    push af
    rst $20
    db $fc
    rst $30
    di
    jp nz, Jump_000_37e4

    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, [hl]
    scf
    jp nc, $e5be

    sub b
    ret


    cp $c0
    add sp, $50
    jp nz, Jump_000_36e0

    ld h, $3f

jr_05b_65eb:
    ld e, d
    ld e, l
    ld e, l
    jr nz, jr_05b_6616

    ld [hl], $be
    db $e3
    ret nz

    ld [c], a
    call c, $ffbd
    add b
    db $e3
    ld d, b
    ld hl, $c23d
    ldh [rNR41], a
    jr nz, jr_05b_65c6

    cp a
    pop hl
    cp [hl]
    ldh [$3d], a
    ret nz

    pop hl
    ld a, $e9
    ld b, b
    db $fc
    ld c, a
    ld hl, $21df
    add hl, hl
    jr nz, jr_05b_6671

    ld e, l
    cp a

jr_05b_6616:
    ldh [$59], a
    ld e, e
    rra
    ld e, e
    ld e, l
    ld e, h
    ld e, h
    add hl, hl
    ret nz

    db $e3
    rst $38
    rst $38
    db $dd
    call nz, Call_05b_4edf
    ld hl, $3839
    jr nz, jr_05b_65eb

    ldh [$58], a
    ld e, b
    dec a
    ld e, l
    rst $38
    ldh [$58], a
    ld e, b
    jr c, jr_05b_6670

    ret nz

    db $e3
    rst $00
    add $00
    db $f4
    ret nz

    inc sp
    db $e4
    or l

jr_05b_6641:
    jp nc, $e181

    rst $38
    ldh [$86], a
    ldh [$c0], a
    ldh [$7a], a
    pop hl
    jr nz, jr_05b_66cd

    ldh [$c0], a
    xor $b0
    jp $f3c0


    add c
    pop hl
    ld e, h
    db $fd
    ldh [$c0], a
    ldh [rP1], a
    ld a, [$7fc2]
    ldh [rSTAT], a
    jp nz, $c146

    db $fc
    db $e3
    ret nz

    push hl
    ld b, b
    di
    ld b, c
    ldh [$bb], a
    ld e, l
    ld e, h

jr_05b_6670:
    push bc

jr_05b_6671:
    ret nz

    ld e, e
    ld e, e
    ld e, c
    cp e
    jp nz, Jump_000_2338

    add hl, sp
    ld c, [hl]
    dec c
    jp z, $e2b8

    ret nz

    reti


    add hl, hl
    inc bc
    ldh [rSCX], a
    ret nz

    inc e
    ret nz

    pop hl
    dec sp
    pop bc
    add hl, hl
    ld hl, $c84f
    cp a
    ret nz

    xor b
    ld a, a
    ldh [rNR42], a
    ld e, c
    add h
    pop bc
    cp h
    pop bc
    db $fc
    and b
    add c
    ldh [rWX], a
    ret nz

    ld [$bc7e], a
    ld hl, $7f4b
    ldh [$c0], a
    db $e3
    add hl, sp
    db $e3
    add c
    ldh [rWY], a
    ld bc, $c0e9
    cp $c3
    ld c, e
    ld d, b
    ret nz

    and b
    ret nz

    ld [c], a
    cp c
    ret nz

    ret nz

    and b
    ld d, b
    ld c, e
    jr jr_05b_6641

    pop hl

Call_05b_66c2:
    rst $38
    rst $38
    db $dd
    add h
    ld c, d
    ld c, d
    ccf
    and b
    ld b, b
    and b
    ret nz

jr_05b_66cd:
    pop hl
    ret nz

    ld b, b
    and c
    pop bc
    ldh [$c0], a
    db $eb
    ld [hl], a
    rst $20
    ret nz

    sub l
    add c
    add c
    scf
    ld b, [hl]
    ld e, $bf
    add b
    scf
    ld hl, $4c4d
    ld [hl], b
    add b
    ld b, b
    ld [c], a
    ret nz

    rst $28
    ld [bc], a
    add b
    sub [hl]
    ld c, d
    ccf
    add l
    jp nz, $f3e1

    ldh [$80], a
    rst $28
    inc a
    sbc c
    rra
    sbc l
    nop
    inc [hl]
    sbc h
    ld e, b
    rst $00
    adc [hl]
    or $c0
    ei
    sbc [hl]
    ld h, l
    call z, Call_05b_7c78
    ld a, c
    and d
    add a
    nop
    call z, Call_000_006f
    push bc
    ld a, $ff
    ld e, b
    db $fc
    inc sp
    cp a
    set 1, [hl]
    ldh a, [$f0]
    or l
    ld d, l
    nop
    push de
    ld l, b
    or b
    ld_long a, $ffc0
    cp [hl]
    jp c, $f821

    dec e
    add l
    call z, $8167
    rst $38
    nop
    ld bc, $7cff
    cp a
    ld b, c
    or $0b
    xor l
    nop
    ld sp, hl
    ld bc, $c0ff
    rst $18
    push de
    ld h, a
    nop
    ld d, [hl]
    ld d, e
    ld sp, $d07f
    cp a
    rst $38
    rst $38
    inc c
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, d
    rst $18
    sub [hl]
    rst $18
    nop
    and b
    rst $38
    db $dd
    sbc a
    rst $38
    rst $38
    ld [hl], d
    pop af
    ld h, l
    rst $38
    and e
    sbc a
    ld bc, $9cff
    rst $38
    nop
    ld bc, $bbff
    rst $38
    rst $38
    rst $38
    ld [hl], d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05b_6781:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
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
    jr nc, jr_05b_682b

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
    ld [$3868], sp
    ld l, b
    ld b, l
    ld l, d
    ld l, $6c
    ret nz

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
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05b_682b:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    cp l
    ld a, [bc]
    rst $38
    add sp, $4a
    dec bc
    ld c, e
    dec bc
    rst $38
    pop hl
    inc c
    cp $ff
    db $e3
    ld c, h
    ld c, h
    inc c
    ld c, h
    inc c
    inc c
    inc l
    ld [$e4f2], sp
    ld sp, hl
    db $f4
    ret nz

    jp hl


    ld l, d
    cp a
    db $e4
    jp $ffe7


    rst $38
    ret nz

    ld [$bf00], a
    pop hl
    rst $38
    ldh [$84], a
    pop hl
    add c
    ld [c], a
    ld [hl], a
    pop hl
    add b
    rst $38
    ret nz

    add sp, $7e
    ldh [$0a], a
    add b
    jp hl


    inc l
    jp Jump_000_2ce0


    ld a, [$b7e2]
    pop hl
    or [hl]
    ld a, [c]
    rrca
    ld [c], a
    ld e, $0a
    pop hl
    dec hl
    dec bc
    dec hl
    ld c, d
    cp a
    ldh [$f0], a
    pop bc
    inc bc
    push hl
    pop bc
    inc l
    ret nz

    ld [c], a
    ld a, [$c0e2]
    ldh a, [$67]
    db $e3
    rst $00
    ldh [rOCPD], a
    ld l, e
    nop
    jp z, Jump_05b_47c1

    ldh [$bf], a
    pop hl
    ret nz

    db $e4
    ld b, b
    ld [c], a
    add a
    ld [c], a
    pop bc
    push hl
    scf
    db $f4
    ld e, a
    dec bc
    ld l, e
    dec bc
    dec hl
    dec hl
    ld a, e
    db $e4
    ld l, e
    ld a, [hl]
    ldh [$a8], a
    add b
    jp hl


    ld c, d
    db $e3
    ret nz

    db $fd
    dec hl
    ret nz

    push hl
    ld l, e
    jp Jump_05b_4ac0


    jr z, @-$7e

    add sp, $7f
    rst $18
    rla
    ret nz

    ld l, e
    ret nz

    rst $20
    ld c, e
    ld a, b
    ldh [$fc], a
    pop hl
    ld b, b
    ld b, b
    add $c0
    pop hl
    add b
    db $fd
    add d
    ldh [$c0], a
    and $ff
    db $e3
    dec hl
    ret nz

    rst $38
    nop
    ret nz

    di
    cp a
    push hl
    nop
    set 7, l
    db $fc
    ret nz

    db $f4
    add b
    cp a
    add b
    pop af
    dec a
    db $e3
    ld bc, $032b
    and h
    cp a
    ld sp, hl
    or e
    and [hl]
    ld b, d
    ret nz

    cp a
    rst $00
    db $fd
    jp $81c0


    nop
    ld b, b
    and d
    ld a, a
    rst $30
    db $eb
    and [hl]
    ret nz

    db $e3
    inc bc
    jp nz, $e502

    ret nz

    add [hl]
    ccf
    ld hl, sp+$00
    inc [hl]
    and a
    ld b, a
    and b
    pop bc
    and l
    or a
    and [hl]
    dec b
    pop bc
    rst $38
    ld [c], a
    ret nz

    rst $38
    ld e, b
    jp $9500


    add d
    ld de, $fb83
    and $88
    sbc h
    ld l, d
    adc e
    call nz, $c1e5
    rst $20
    ld c, d
    sbc e
    nop
    ld [hl], h
    adc d
    ld d, l
    call nz, $f780
    db $fd
    ld l, a
    inc [hl]
    adc c
    push de
    ld h, l
    ld b, b
    xor $0f
    sub e
    nop
    ld b, e
    ld hl, sp-$51
    rst $20
    inc bc
    ld h, b
    add a
    add a
    ld a, l
    ld a, l
    push de
    ld h, d
    db $76
    db $e3
    cp $e3
    nop
    ld b, b
    ld h, d
    dec e
    rst $00
    ld a, l
    ld h, a
    xor h
    or d
    push de
    ld h, e
    add b
    pop af
    jp nc, $faa8

    ld b, h
    ld b, b
    xor h
    or d
    dec d
    xor l
    ld a, a
    db $e4
    sub d
    or b
    add b
    or $90
    ld b, d
    ld [$e9ff], sp
    nop
    ld bc, $81e9
    jp hl


    add b
    db $f4
    sub h
    adc [hl]
    pop bc
    ret z

    rst $10
    xor h
    ret nz

    rst $38
    or l
    or $00
    db $ed
    ld [hl], d
    push de
    ld a, [hl]
    ld [hl], l
    db $f4
    ret nz

    sub $ff
    rst $38
    inc l
    rst $28
    cp a
    rst $38
    sub $f6
    nop
    push de
    ld a, h
    sub a
    adc l
    cp a
    or b
    add b
    rst $38
    sub $f7
    push de
    ld a, [hl]
    add d
    db $ec
    sub $ee
    nop
    jp nc, $c083

    rst $38
    rst $38
    or h
    add c
    ld h, [hl]
    rst $38
    rst $38
    xor l
    ld d, d
    dec de
    sbc a
    rst $38
    rst $38
    nop
    ld e, [hl]
    ld a, [hl]
    nop
    sbc a
    sbc b
    cp a
    sub e
    push bc
    db $e4
    adc [hl]
    rst $08
    ld d, h
    ld a, a
    cpl
    rla
    or l
    nop
    sub l
    rrca
    xor d
    or h
    rla
    or h
    ret nz

    ld a, [c]
    call nc, Call_05b_40b2
    ld [hl], a
    push de
    or e
    ld b, b
    ldh a, [rP1]
    ld b, b
    ld a, a
    call nc, Call_05b_6cb8
    inc de
    xor d
    sub e
    ld d, [hl]
    or b
    db $ec
    inc de
    add b
    sbc a
    ld b, b
    ld a, a
    nop
    add b
    sbc a
    jp nz, Jump_05b_5555

    inc e
    xor b
    db $e3
    ldh [rNR41], a
    inc a
    db $76
    add b
    sbc e
    ld l, b
    cp $00
    add b
    sbc h

jr_05b_6a03:
    jr z, jr_05b_6a03

    ret c

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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    sub e
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
    nop
    sub c
    nop
    nop
    nop
    cp l
    adc b
    rst $38
    add sp, -$74
    ld e, e
    ld h, b
    ld sp, $e1ff
    nop
    ld [$ffff], sp
    rst $20
    and $c0
    jp hl


    ld c, [hl]
    cp a
    db $e4
    jp z, $c0ff

    db $f4
    cp a
    pop hl
    rlca
    ld h, d
    ld h, d
    ld h, d
    jp z, $c0ff

    push af
    ld a, [hl]
    ldh [rIE], a
    ldh [$ca], a
    rst $38
    db $fc
    add sp, -$19
    sub c
    ldh [$62], a
    inc [hl]
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, [hl]
    rrca
    inc [hl]
    ld sp, $8c60
    cp a
    ldh [$f0], a
    pop bc
    jp z, $e8ff

    rst $20
    rst $38
    ld sp, $3e31
    ld a, [hl-]
    ld b, h
    ld l, h
    ld l, h
    ld l, h
    adc a
    ld l, l
    ld b, h
    ld a, [hl-]
    sub a
    cp a
    pop hl
    ret nz

    rst $38
    ret nz

    db $ec
    ld c, c
    rst $38
    ld c, h
    ld l, l
    ld l, l
    ld l, h
    ld l, b
    ld l, h
    ld l, l
    ld l, l
    ld b, a
    ld l, l
    sub c
    sub l
    ld a, [hl]
    ldh [$c0], a
    rst $38
    add b
    db $ec
    add hl, sp
    add $e0
    rst $30
    ld l, b
    ld h, l
    ld l, b
    ret nz

    ldh [$93], a
    add [hl]
    sub [hl]
    sub a
    ld sp, hl
    adc h
    ret nz

    rst $38
    db $ec
    db $eb
    ld c, c
    ld c, b
    ld l, l
    ld l, l
    ld l, d
    rst $38
    ld h, l
    ld l, h
    ld h, l
    ld l, d
    ld l, d
    ld l, l
    ld l, h
    sbc c
    ld c, a
    sbc d
    sbc d
    ld a, [hl-]
    inc [hl]
    add b
    rst $18
    db $eb
    ld [$c150], a
    ldh [$fd], a
    ld h, a
    nop
    ldh [$67], a

Jump_05b_6ae0:
    ld h, a
    ld l, d
    ld l, h
    ld l, h
    ld l, b
    sbc a
    ld h, l
    ld h, l
    ld b, h
    ld b, l
    inc [hl]
    nop
    rst $18
    jp hl


    add sp, $51
    ld [$e0c1], a
    ld l, l
    ret nz

    pop bc
    ld l, l
    cp a
    db $e4
    ld h, l
    ld b, h
    scf
    ret z

    jp z, $c0ff

    add sp, -$3f
    ldh [$6d], a
    jp z, $c0e0

    ret nz

Call_05b_6b08:
    ld h, [hl]
    ld l, c
    sub d
    cp a
    db $e3
    add hl, sp
    jp z, Jump_000_00ff

    db $eb
    ld h, a
    adc d
    ldh [$ba], a
    ldh [$66], a
    dec sp
    ld l, c
    ld l, e
    dec a
    ldh [rBCPS], a
    ld h, l
    ld d, e
    jp z, $80ff

    jp z, Jump_05b_6781

    ccf
    ldh [$fb], a
    pop hl
    ret nz

Jump_05b_6b2b:
    ld [c], a
    ei
    ret nz

    add b
    rst $38
    ret nz

    xor c
    scf
    ld a, a
    ld [hl], $67
    ld l, l
    jr nc, jr_05b_6b69

    jr nc, jr_05b_6ba8

    add e
    ret nz

    sbc l
    sbc c
    rst $30
    pop bc
    ld l, h
    ld [hl-], a
    ld c, l
    jp z, $80ff

    xor c
    ld b, a
    rst $38
    ld b, [hl]
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    ld b, [hl]
    sub a
    sbc [hl]
    dec de
    sbc [hl]
    sub a
    or $e1
    ld b, [hl]
    ld c, l
    add b
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_6b69:
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
    or e
    or h
    rst $38
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    rlca
    cp l
    cp [hl]
    cp a
    pop de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05b_6ba0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_05b_6ba8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05b_6bc5:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05b_6be1:
    rst $38

Jump_05b_6be2:
    rst $38
    rst $38

Jump_05b_6be4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
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
    jr nc, jr_05b_6c8d

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
    ld l, h
    sbc d
    ld l, h
    add $6e
    sbc c
    ld [hl], b
    ret nz

    rra

Jump_05b_6c6c:
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
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05b_6c8d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $fd
    inc c
    rst $38
    db $e4
    dec bc
    dec bc
    dec hl
    dec bc
    dec bc
    ld a, [bc]
    adc l
    dec bc
    rst $38
    ldh [$0a], a
    dec bc
    db $ec
    push hl
    rst $38
    rst $38
    jp nz, Jump_05b_4ce3

    add e
    ld c, h
    ld c, h
    ret nz

    ldh [$bf], a
    pop hl

Call_05b_6cb8:
    cp $e3
    add sp, -$19
    db $fd
    pop hl
    inc c
    add b
    db $fd
    db $e3
    cp c
    ld hl, sp-$38
    push hl
    cp a
    push hl
    ret nz

    add sp, -$05
    db $e4
    or l
    ld sp, hl
    dec hl
    ld c, $88
    and $0b
    dec hl
    ld a, [bc]
    ld a, h
    ld [c], a
    ld l, b
    add sp, $7e
    pop hl
    db $fc
    ld [c], a
    call c, $e7b5
    add h
    rst $28
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ld [c], a
    dec hl
    dec bc
    ld h, b
    or h
    pop hl
    nop
    rst $20
    ld b, e
    ld [c], a
    db $fc
    db $e3
    or l
    add sp, $0c
    inc l
    call z, $bcc3
    ld sp, hl
    db $e3
    pop bc
    ld [c], a
    dec hl
    ld l, e

Jump_05b_6cff:
    ld l, e
    ld l, e
    push bc
    ret nz

    ld c, e
    ld h, c
    ld c, e
    ld b, b
    rst $28
    ret nz

    and $b1
    rst $20
    inc b
    db $ed
    ld l, e
    ld c, e
    cp a
    db $ec
    sbc d
    adc [hl]
    jp z, $ff2c

    ldh [$0c], a
    inc l
    ret nz

    ld hl, sp-$7c
    ldh [rWX], a
    ld b, c
    ld l, e
    ld a, [$3de2]
    ld [c], a
    ret nz

    db $ed
    or l
    xor $c0
    rst $28
    ld c, e
    cp a

jr_05b_6d2d:
    db $e3
    jr nz, jr_05b_6d2d

    jp nz, $c13b

    inc h
    ldh [$cf], a
    jp $ffff


    inc c
    jp Jump_000_3fc0


    pop hl
    nop
    ld a, [hl]
    ldh [$bc], a
    call nz, $a0b9
    db $ed
    and h
    rst $38
    rst $38
    ret nz

    db $e4
    cp a
    ld [c], a

jr_05b_6d4d:
    jp nz, $82a1

    ld a, a
    ld [c], a
    dec hl
    add b
    cp h
    add c
    jp nz, $e63a

    add [hl]
    ret nz

    cp a
    ld [c], a
    dec hl
    ret nz

    ld a, a
    ret nz

    ld b, b
    ld [c], a
    dec a
    ldh [$8a], a
    rst $38
    jp nz, $44a9

    jp nz, Jump_05b_6b2b

    dec e
    dec hl
    ccf
    pop hl
    dec bc
    dec hl
    ld c, e
    or h
    ret nz

    jp z, Jump_05b_44ff

    xor b
    inc b
    cp a
    ld [c], a
    rlca
    jp $b82b


    and c
    or $a0
    ld bc, $edbb
    adc e
    adc b
    add b
    add b
    ld b, l
    pop hl
    nop
    and e
    ld b, d
    ldh [$b7], a
    and c
    ld bc, $90af
    adc l
    call nz, $2b8a
    nop
    adc c
    and h
    cp a
    ld [c], a
    ld a, b
    and c
    ld bc, $75af
    adc c
    jr c, jr_05b_6d4d

    ld e, h
    add a
    reti


    add h
    nop
    rla
    and [hl]
    ld bc, $74ae
    ld [$b238], a
    push hl
    db $76
    cp c
    add l
    ld [hl], h
    ld [$fec0], a
    nop
    ret z

    ld h, [hl]
    ld c, h
    or c
    db $ed
    add e
    scf
    xor h
    db $db
    reti


    ld [hl], l
    ld [hl], d
    ret nz

    ld a, [$cbdb]
    nop
    ld [hl], h
    ret c

    rlca
    db $fd
    ld [hl], h
    ret nc

    rst $38
    rst $38
    cp b
    reti


    call nc, $9bff
    xor c
    add c
    ld b, l
    nop
    ret nz

    rst $38
    sbc e
    or h
    call z, $c049
    ld [hl], c
    push de
    ld [hl], e
    add a
    xor c
    inc c
    db $fd
    push de
    ld [hl], e
    nop
    ret z

    ld c, h
    rst $38
    rst $38
    db $d3
    db $d3
    ret nz

    rst $38
    db $d3
    ld e, h
    inc c
    ld a, [c]
    rst $10
    xor d
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    rst $38
    inc d
    rst $38
    dec c
    rst $38
    inc d
    push af
    ld a, e
    rlca
    ld [hl], d
    ld hl, $6c00
    inc hl
    rst $38
    rst $38
    jp c, $b2cc

    ld [bc], a
    ld c, c
    add d
    pop bc
    jp hl


    sub l
    ccf
    sbc d
    add $00
    ld a, b
    ld bc, $06ed
    ret nz

    cp h
    swap b
    rst $30
    add e
    call nc, $9bff
    reti


    rst $30
    jp nz, Boot

    db $fd
    rra
    ld b, b
    ld [$4097], a
    db $ec
    ld [hl], b
    push af
    ld a, [hl+]
    ldh a, [rNR42]
    rst $18
    ld b, $71
    nop
    ld l, d
    adc h
    cp l
    cp a
    jp c, Jump_05b_46f7

    inc h
    ret nz

    rst $38
    ld e, c
    di
    ld sp, hl
    inc hl
    ld a, l
    cp a
    add b
    dec h
    ld d, d
    db $f4
    dec b
    ld [$edcf], a
    db $db
    ld c, l
    dec h
    jr jr_05b_6e86

    cp a
    adc $2c
    nop
    sbc h
    ld hl, $bdbd
    db $76
    inc bc
    and h
    jp nc, Jump_000_04c8

    ld e, $7b
    rlca
    db $e3
    add d
    ldh a, [rP1]
    ret nz

    ld a, [hl]
    adc [hl]
    dec b
    adc [hl]
    sub [hl]
    add l
    rst $38
    db $d3
    cp l
    xor h
    cp d
    ret nz

    rst $38
    ld l, [hl]

jr_05b_6e86:
    cp a
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
    and [hl]
    dec [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    ld c, [hl]
    nop
    nop
    nop
    db $fd
    jr nz, @+$01

    db $e3
    nop
    ld sp, $6031
    ld e, e
    ld e, e
    dec sp
    ld e, d
    ld e, e
    rst $38
    ldh [$5a], a
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $3e
    ret nz

    pop hl
    dec b
    dec b
    dec b
    rrca
    ld sp, $e2bf
    cp $e3
    inc c
    jp z, $c0ff

    jp hl


    ld a, [bc]
    dec bc
    call nz, $fde0
    ld [c], a
    cp a
    push hl
    jp z, $80ff

    add sp, -$19
    jp nz, Jump_05b_7ee7

    pop hl
    ccf
    ld [c], a
    ret nz

    rst $38
    jp hl


    add sp, -$7c
    pop hl
    ld b, a
    rst $38
    ld b, l
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld b, l
    inc [hl]
    rst $20
    ld sp, $5c5d
    nop
    rst $38
    ret nz

    xor $49
    ld [hl], $30
    rst $38
    ld h, a
    ld l, d
    ld l, d
    jr nc, jr_05b_6f51

    jr nc, jr_05b_6f55

jr_05b_6f23:
    ld c, l
    rst $00
    ld sp, $6231
    rst $38
    ldh [$ca], a
    rst $38
    add b
    ld [$6539], a
    pop hl
    ld l, l
    cp a
    add sp, -$49
    ret nz

    jp z, Jump_05b_40ff

    jp hl


    ld c, c
    ld c, b
    ld l, d
    ld a, [hl]
    cp a
    db $e3
    ld l, b
    ld l, b
    ld l, b
    ld [hl-], a
    or b
    and h
    rst $38
    ldh [$9c], a
    jp z, Jump_000_00ff

    jp hl


    add hl, sp
    ld l, d
    ld h, l
    cp a

jr_05b_6f51:
    db $e3
    ret nz

    ldh [rBCPS], a

jr_05b_6f55:
    sbc a
    ld [hl], c
    ld a, c
    add b
    add b
    add b
    jp z, $c0ff

    ret z

    ld c, c
    dec bc
    ld c, b
    jr nc, jr_05b_6f23

    db $e3
    ld h, l
    rst $38
    ld [c], a
    cp a
    pop hl
    jp z, $80ff

    ret z

    jp hl


    add hl, sp
    add $c0
    ld a, [hl]
    pop hl
    ld l, c
    cp a
    ret nz

    ld l, l
    ld l, d
    ld h, a
    pop bc
    jr nc, jr_05b_6ffb

    ldh [$ca], a
    rst $38
    add sp, -$19
    ld [bc], a
    ldh [$bf], a
    ld [c], a
    ld l, c
    ld h, a
    sbc [hl]
    pop bc
    db $e3
    jr nc, jr_05b_6ff7

    ld [hl], c
    ld a, c
    jp z, $e8ff

    rst $20
    ld c, l
    cp e
    ld [hl-], a
    ld l, d
    ld b, h
    pop bc
    ld l, c
    ld h, a
    ld l, c
    pop bc
    db $e4
    ld l, d
    and e
    ld b, d
    db $76
    jp z, $c0ff

    xor b
    cp a
    db $e3
    ld [hl], $be
    and c
    ld [hl], $8e
    jp nz, Jump_05b_6ae0

    ld b, d
    ld [hl], d
    ld b, b
    rst $38
    add b
    xor d
    ld a, [hl]
    ldh [$36], a
    dec de
    ld b, [hl]
    ld b, a
    ld a, b
    and d
    ld b, [hl]
    ld [hl], $c1
    pop hl
    ret nz

    rst $38
    ld b, b
    xor e
    ld [hl], e
    ld c, l
    ld d, [hl]
    jp nz, Jump_05b_7ee2

    add b
    and a
    ld l, a
    ld l, [hl]
    pop bc
    ldh [rP1], a
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

jr_05b_6ff7:
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_6ffb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_05b_70f8

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
    push de
    ld [hl], b
    dec b
    ld [hl], c
    ld a, c
    ld [hl], e
    ld c, a
    ld [hl], l
    ret nz

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
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05b_70f8:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ccf
    dec bc
    dec bc
    dec bc
    ld l, e
    dec bc
    ld c, e
    ld a, [$f7e0]
    ldh [$b7], a
    ld c, h
    ld c, h
    inc c
    rst $38
    ldh [$0b], a
    dec bc
    ld a, [$0ce1]
    ld bc, $f20c
    ldh [$fd], a
    push hl
    rst $20
    ld [c], a
    or $e3
    rst $20
    db $e3
    rst $38
    rst $20
    pop bc
    ldh [$2f], a
    ld l, e
    dec hl
    ld c, e
    ld c, e
    cp [hl]
    ld [c], a
    inc l
    ret nz

    ld a, [c]
    cp c
    ldh [$e0], a
    or d
    db $e4
    ldh [$e2], a
    rst $30
    ld [c], a
    ret nz

    add sp, -$3f
    ldh [$2b], a
    dec bc
    dec bc
    nop
    cp [hl]
    db $e3
    ld a, a
    pop hl
    ld l, a
    ldh [$9c], a
    db $e4
    db $fc
    ld [$e170], a
    and b
    pop hl
    rst $30
    db $e3
    db $10
    ld a, a
    rst $20
    pop bc
    db $e3
    ret nz

    pop hl
    ld a, h
    ldh [$2c], a
    ld a, $e0
    ret nz

    db $e3
    db $fd
    db $ec
    ld h, h
    ld c, c
    and $40
    xor $2b
    pop bc
    push hl
    ld a, l
    db $e4
    dec bc
    ld l, h
    call $20e5
    add d
    db $eb
    pop af
    jp nz, $e7f7

    rst $10
    ret nz

    dec sp
    db $e3
    dec bc
    ld b, d
    and $be
    ldh [rNR41], a
    db $76
    pop hl
    jp nz, $87f0

    db $e4
    cp c
    call nz, $cbbf
    dec bc
    cp a
    ldh [$c1], a
    call nz, $fb00
    ret nz

    add c
    and $8c
    pop bc
    db $fc
    ld [$e6ec], a
    ld a, a
    call z, $c040
    cp a
    ldh [rP1], a
    ld b, b
    jp $c138


    rrca
    add sp, $56
    push hl
    pop bc
    jp nz, $e6f4

    ld b, c
    push hl
    and $c5
    nop
    inc b
    pop bc
    ld [bc], a
    ld [c], a
    or $c0
    ld [hl], a
    ret nz

    inc hl
    call nz, $e40b
    ei
    and h
    ld hl, sp-$19
    nop
    rst $30
    rst $20
    ret nz

    ld [$a1fd], a
    dec sp
    ret nz

    scf
    ret nz

    db $fc
    and e
    pop hl

Jump_05b_71d5:
    pop bc
    sub a
    and $43
    inc l
    inc l
    db $10
    pop bc
    rst $38
    and d
    rst $30
    and $66
    rst $00
    ld c, h
    add h
    and c
    nop
    inc a
    call nz, $c136
    and d
    and l
    sub b
    jp $e381


    rst $38
    and l
    rst $30
    and $ae
    ld [c], a
    ld [$e5c0], sp
    ret nz

    and b
    cp l
    and e
    dec bc
    or $a1
    db $fc
    and c
    nop
    db $e4
    ld [hl], $c8
    inc b
    ld a, $ec
    sbc $a9
    dec bc
    ld b, c
    and b
    ld a, l
    and b
    dec a
    and d
    rst $30
    add e
    adc c
    rst $20
    jr nz, @+$07

    and d
    db $fc
    db $e3
    ld l, h
    jp $e5f7


    ret nz

    db $ec
    ld c, e
    nop
    ld [c], a
    ld a, $c3
    nop
    ld b, b
    and [hl]
    rst $00
    add h
    db $fd
    and a
    rst $30
    rst $20
    or $c0
    db $fc
    add [hl]
    ld c, d
    ldh [rSCX], a
    and d
    nop
    ld a, [hl-]
    and h
    ret nz

    add sp, -$70
    add e
    cp l
    and [hl]
    inc [hl]
    rst $20
    or [hl]
    pop bc
    ret nz

    jp hl


    push bc
    call nz, $fa02
    add h
    dec bc
    adc [hl]
    call nz, $855a
    add b
    ret nz

    adc a
    add h
    adc d
    rst $20
    cp a
    add $00
    jr nz, @-$79

    ld d, l
    push hl
    inc de
    add h
    nop
    sub e
    xor h
    jp hl


    and c
    adc d
    push de
    ldh a, [$c1]
    ld [hl], b
    nop
    ld a, [bc]
    ret z

    ld h, c
    adc h
    push de
    ld l, a
    pop bc
    ld [hl], c
    jp z, $ada8

    and b
    ld a, $e8
    push de
    ld [hl], b
    nop
    db $ec
    di
    ret nz

    pop af
    push de
    ld [hl], l
    pop bc
    ld l, a
    rst $38
    xor b
    sbc [hl]
    jp z, Jump_05b_71d5

    db $ec
    ld sp, hl
    nop
    ret nz

    db $eb
    push de
    ld [hl], e
    pop bc
    ld [hl], d
    call nz, $d56c
    ld a, c
    ld b, c
    jp nc, $b1f6

    push de
    ld [hl], l
    nop
    ld l, h
    pop de
    xor h
    xor d
    and h
    ld c, b
    push de
    ld [hl], d
    ld b, c
    ld d, d
    adc h
    jp nc, Jump_05b_71d5

    add b
    jp nc, $c000

    db $f4
    push de
    ld [hl], c
    ld l, h
    jp nc, $d60f

    push de
    ld l, a
    add b
    jp c, Jump_000_08fe

    push de
    ld [hl], a
    nop
    ld b, c
    ld d, c
    ld b, b
    db $d3
    push de
    ld [hl], e
    ld b, c
    ld d, b
    ld [hl], $87
    ld hl, $d570
    ld l, h
    ld b, c
    ld d, e
    nop
    ld b, b
    adc [hl]
    push de
    db $76
    ld l, h
    db $db
    ld a, b
    ldh a, [$6c]
    rst $18
    ld l, h
    ld l, c
    pop bc
    db $fc
    ld l, h
    call nc, $c000
    rst $38
    ld l, d
    xor d
    ld b, c
    ld c, h
    cp h
    cp c
    dec a
    ld a, [c]
    ld b, c
    ld c, h
    ld b, b
    ld b, l
    ld a, c
    ret


    nop
    push de
    dec [hl]
    ld b, c
    ld d, e
    ret nz

    rst $28
    nop
    ret c

    ld b, c
    ld c, [hl]
    db $fd
    sub e
    sub h
    or $25
    ld [hl], b
    nop
    jp nz, $d56f

    dec [hl]
    dec hl
    rst $10
    rst $38
    rst $38
    ld l, h
    reti


    ret nz

    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    ld e, h
    inc bc
    ld h, a
    sub $ff
    rst $38
    ld c, a
    and [hl]
    ld h, a
    ret c

    sbc b
    and $58
    dec c
    di
    db $eb
    nop
    ld h, a
    db $db
    rla
    jp nc, $cf76

    ld h, a
    sub $51
    ld b, $ff
    rst $38
    dec de
    cp b
    rst $38
    rst $38
    nop
    ld h, d
    sbc e
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    ld [hl], d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    cp d
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
    jp c, Jump_000_0091

    nop
    nop
    ccf
    ld sp, $3131
    ld c, l
    ld d, [hl]
    ld b, a
    ld a, [$f7e0]
    ldh [rIE], a
    rla
    jr z, jr_05b_73a8

    jr nz, @+$22

    ld [$3131], sp
    pop af
    nop
    rst $38
    rst $38
    rst $20
    and $c1
    ldh [$32], a
    ld l, l
    ld [hl], $46
    ld d, $be
    ld [c], a
    dec d
    ld d, $c0
    ldh [$0d], a
    ret nz

    rst $38
    ret nz

    ld [$e0c1], a
    daa

jr_05b_73a8:
    ld l, l
    jr nc, @+$32

    cp [hl]
    db $e3
    ld a, a
    ldh [$0c], a
    ld l, a
    ldh [$ca], a
    rst $38
    db $fc
    add sp, -$19
    pop bc
    db $e3
    jr nc, jr_05b_7425

    ld l, d
    ld [hl], $46
    ld c, l
    rra
    ld sp, $2715
    dec b
    dec d
    ret nz

    rst $38
    ret nz

    db $ed
    pop bc
    ld [c], a
    rst $18
    ld l, l
    jr nc, @+$6d

    ld [hl-], a
    ld c, l
    dec sp
    ld [c], a
    inc d
    inc d
    ld a, b
    jp z, Jump_05b_40ff

    ld [$e3c1], a
    jr nc, @+$6d

    jr nc, jr_05b_7419

    cp e
    jp nz, Jump_000_24c3

    inc h
    jp z, $c0ff

    set 0, c
    ld [c], a
    ret nz

    ldh [rOBP0], a
    ld c, c
    cp b
    cp h
    jp $ffca


    add b
    ret


    ld sp, $4849
    cp $c1
    jr nc, jr_05b_7404

    ld l, l
    ld l, h
    ld l, h
    ld a, a
    ldh [$3c], a
    pop bc

jr_05b_7404:
    jp z, $e8ff

    rst $20
    ret nc

    pop bc
    rst $30
    ld d, d
    ld l, b
    ld l, b
    cp a
    ret nz

    ld l, b
    ld l, b
    ld l, b
    ld d, d
    ld hl, sp-$40
    rst $38
    xor $ed

jr_05b_7419:
    ld d, b
    pop bc
    ld d, d
    ld l, h
    ld l, l
    ld l, c
    ld l, d
    ld [c], a
    ld a, e
    pop bc
    ld d, e
    ld b, b

jr_05b_7425:
    rst $38
    xor $ed
    ret nc

    and c
    ld d, e
    jr nc, jr_05b_7498

    add l
    ld l, c
    inc a
    pop bc
    ld l, l
    add b
    ldh [$7b], a
    and c
    jp z, $c0ff

    add sp, $08
    rlca
    ld sp, $83a7
    ret nz

    ld [c], a
    dec a
    ret nz

    add b
    ldh [$fc], a
    and c
    jp z, Jump_000_3eff

    add b
    add sp, $00
    ld sp, $79a1
    ld [hl], c
    add b
    ldh [$3d], a
    pop bc
    db $e3
    add e
    ld [hl], b
    rst $30
    add d
    jp z, $c0ff

    db $eb
    add b
    ld a, c
    ld [hl], c
    dec e
    ld l, c
    cp $a1
    ld c, b
    db $76
    xor [hl]
    cp a
    ld [c], a
    jp z, $c0ff

    db $ec
    inc e
    cp a
    ldh [$3b], a
    and c
    add e
    add b
    add b
    cp a
    ld [c], a
    jp z, $c0ff

    db $ed
    ld a, a
    add b
    ld a, c
    ld l, [hl]
    ld d, h
    ld d, h
    ld d, l
    db $76
    rst $30
    ldh [rP1], a
    ld a, [hl]
    pop hl
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

jr_05b_7498:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05b_74f5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, jr_05b_75ae

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
    adc e
    ld [hl], l
    cp e
    ld [hl], l
    ldh a, [rPCM34]
    rst $00
    ld a, c
    ret nz

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
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05b_75ae:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $fd
    inc c
    rst $38
    db $e4
    dec bc
    dec bc
    dec bc
    ld l, e
    dec bc
    dec bc
    ccf
    ld c, e
    dec bc
    ld c, e
    ld c, e
    dec bc
    dec bc
    db $ec
    push hl
    rst $38
    rst $38
    or h
    rst $20
    and $c1
    pop hl
    ld l, e
    jp nz, $4be2

    ld a, [bc]
    ret nz

    db $e3
    ld c, h
    dec b
    ld c, h
    db $fd
    pop hl
    inc c
    db $fd
    push hl
    db $f4
    db $e4
    pop bc
    rst $30
    add c
    pop hl
    ld sp, hl
    pop hl
    nop
    add b
    push hl
    jp $bee1


    add sp, -$11
    db $e4
    db $76
    di
    ld c, h
    ldh [$81], a
    ldh [rLY], a
    ldh [rSC], a
    rst $30
    pop hl
    dec hl
    add b
    push hl
    ld a, [hl]
    ld [c], a
    ld a, d
    ld [c], a
    ld [hl], h
    pop hl
    db $f4
    ld [c], a
    add d
    rst $30
    jr nz, jr_05b_7611

    ld [c], a
    cp b

jr_05b_7611:
    pop hl
    rst $30
    ret nz

    add b
    and $3f
    di

jr_05b_7618:
    inc l
    call z, $f9c3
    db $e4
    add h
    ld b, d
    push hl
    ret nz

    rst $20
    dec hl
    ret nz

    db $fc
    ld [bc], a
    di
    add h
    db $e4
    add d
    sra h
    ret nz

    rst $38
    and $f4
    db $e3
    add e

jr_05b_7632:
    reti


    ld b, e
    db $e3
    ld d, l
    rst $18
    rst $28
    xor $2c
    ld c, h
    rlca
    dec hl
    dec hl
    dec hl
    ld [bc], a
    pop hl
    cp c
    pop bc
    add hl, bc
    db $e3
    ld d, [hl]
    rst $10
    cp a
    ld a, [c]
    ld h, b
    ret nz

    ldh [$c5], a
    jp nz, $e4bf

    ret nz

    rst $38
    ld a, a
    db $ed
    dec bc
    dec hl
    ld b, l
    jp $8230


    and c
    jp $81fd


    jp nz, $caf6

    inc l
    inc l
    ret nz

    pop hl
    ld [bc], a
    jp nz, $bf30

    ld [c], a
    adc [hl]
    xor $34
    ret z

    ld b, c
    or h
    dec hl
    dec hl
    cp [hl]
    pop bc
    cp a
    pop hl
    nop
    ld a, [hl]
    add $3f
    and a
    ld [hl], h
    rst $00
    jr c, jr_05b_7632

Jump_05b_767f:
    ld c, b
    and e
    cp a
    db $e3
    rst $30
    pop bc
    adc e
    rst $20
    and b
    ld c, e
    xor l
    inc l
    and l
    inc [hl]
    set 1, e
    and d
    ccf
    ld [c], a
    ld l, e
    ld hl, sp-$60
    ld c, e
    jr nc, jr_05b_7618

    and $b5
    rst $08
    inc l
    and l
    ret nz

    ldh a, [$0b]
    ld c, e
    inc a
    ret nz

    cp a
    add d
    ld bc, $0b4b
    rst $30
    inc l
    and l
    or l
    or l
    jp c, $c091

    rst $38
    ld h, l
    sub c
    ld bc, $0086
    ld b, l
    and c
    add b
    jp z, $b038

    dec h
    add l
    adc l
    ret z

    jp nz, $40ca

    adc $ef
    add c
    nop
    di
    adc b
    dec h
    add l
    adc l
    ret z

    jp nz, $c0cf

    adc e
    ret nz

    db $ec
    adc l
    adc $cd
    or h
    nop
    add hl, hl
    ld [$f140], a
    inc c
    add [hl]
    ret nz

    or $fe
    and l
    add c
    pop de
    ld e, b
    xor h
    dec c
    adc a
    nop
    db $eb
    or c
    ld sp, $d88d
    db $76
    ld a, [hl+]
    ld l, c
    or h
    ld h, l
    ld d, h
    sbc a
    rst $38
    xor e
    ret nz

    push af
    nop
    cp b
    ld hl, sp+$64
    call nz, $fb5e
    ret nz

    cp $ff
    rst $38
    ret nz

    db $fc
    ld e, [hl]
    ld sp, hl
    ld d, h
    dec h
    nop
    adc h
    ld [hl+], a
    ld c, l
    ld b, l
    add a
    daa
    ld [hl], h
    inc h
    ret nz

    ld sp, hl
    adc b
    and a
    ld d, l
    daa
    xor c
    xor b
    nop
    ld e, [hl]
    db $fc
    ld d, h
    ld h, $5a
    inc hl
    ld c, c
    ld h, $ce
    inc d
    ret nz

    sub c
    ccf
    db $e4
    ld b, c
    ld b, l
    nop
    ld a, l
    xor b
    ld l, h
    adc d
    ld [hl], b
    add d
    jp Jump_05b_4080


    adc [hl]
    ret nz

    rst $38
    dec l
    ld [bc], a
    ld [hl], l
    scf
    nop
    ld d, h
    jr z, jr_05b_7796

    inc h
    ld b, a
    inc h
    ld [hl], a
    ld c, d
    rst $20
    push hl
    ld c, c
    rst $18
    ld b, a
    adc a
    add hl, sp
    ld [bc], a
    nop
    cp [hl]
    ld l, h
    ld b, b
    cp a
    inc bc
    ld l, d
    db $fd
    ld l, $c0
    rst $38
    inc l
    ld l, [hl]
    sbc [hl]
    sbc e
    ret nz

    rst $38
    nop
    ld [hl], $14
    ret nc

    ld sp, $ee40
    pop hl
    ld sp, hl

Call_05b_7768:
    cp e
    and [hl]
    ld e, c
    db $e4
    ld [$c02e], sp
    push bc
    nop
    push hl
    ld a, h
    pop bc
    and $c8
    ld c, l
    cp l
    ld a, [de]
    ret nz

    or $bc
    ld h, $65
    and l
    inc d
    sbc $80
    call $0723
    inc l
    add b
    push af
    db $f4
    ld d, h
    jr z, @-$33

    or h
    dec b
    ld [de], a
    rst $08
    inc l
    nop
    ld e, l
    ld hl, $9f5f

jr_05b_7796:
    inc a
    and $c0
    or d
    cp e
    cp h
    ld l, $86
    ret c

    ld de, $ff87
    nop
    ret


    add e
    ld c, [hl]
    dec d
    add l
    cp $85
    ld a, a
    ret nz

    rst $38
    jp z, $ffbb

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], h
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, l
    ld b, d
    nop
    nop
    nop
    db $fd
    jr nz, @+$01

    db $e3
    ld c, $31
    ld sp, $4d31
    ld d, [hl]
    rst $38
    ld d, [hl]
    ld b, a
    ld sp, $5b5e
    ld e, e
    ld e, e
    nop
    ld hl, sp-$01
    rst $38
    rst $20
    and $c1
    add sp, $32
    jr nc, jr_05b_787a

    ld [hl], $37
    and a
    ld sp, $5a5f
    ret nz

    rst $38
    ret nz

    db $ed
    rrca
    add d
    ldh [$31], a
    ccf
    add hl, sp
    ld l, e
    jr nc, jr_05b_788d

    ld l, l
    ld d, b
    ld a, a
    pop hl
    jp z, $fcff

    add b
    db $eb
    ld b, e
    pop hl
    ld sp, $4849
    ld l, e
    jr nc, @+$32

    sbc a
    jr nc, @+$52

    ld sp, $6031
    ret nz

    rst $38
    ld b, b
    db $eb
    nop
    ld e, b
    add d
    pop hl
    add c
    ldh [$c0], a
    ldh [rOBP0], a
    ld c, c
    ld hl, sp-$40
    ld h, d
    jp z, $feff

    ret nz

    rst $28
    ld c, c
    ld c, b
    ld l, d
    ld l, l
    jr nc, jr_05b_7883

    add hl, sp
    ld hl, sp-$4b
    ld [c], a
    jp z, $80ff

    rst $28
    add hl, sp
    jr nc, jr_05b_78c8

    ld l, l
    ld l, h
    and $81
    ld [c], a
    ld de, $ca12
    rst $38
    ld b, b
    xor $49
    ld c, b
    jr nc, @-$07

    jr nc, jr_05b_78d9

    ld l, b
    add c
    ldh [rNR11], a
    ld [de], a
    ld hl, $7c22
    jp z, Jump_05b_40ff

jr_05b_787a:
    jp z, $1528

    ld sp, $5031
    ld b, d
    pop hl
    ccf

jr_05b_7883:
    jr nc, jr_05b_78d6

    ld sp, $2931
    daa
    rst $28
    ret nz

    rst $38
    rst $38

jr_05b_788d:
    cp $00
    jp z, Jump_000_3117

    ld sp, $3051
    ld l, d
    ld l, h
    jp Jump_05b_6c6c


    ld bc, $bfe1
    ldh [$ca], a
    rst $38
    ret nz

    xor e
    ld d, $15
    cp $c0
    ldh [$30], a
    ld l, b
    ld l, b
    ld l, b
    ld b, d
    ld b, [hl]
    ld b, a
    sbc b
    ld a, [hl]
    pop hl
    jp z, $80ff

    xor e
    jr z, jr_05b_78ce

    ret nz

    pop hl
    cp $e1
    ld l, c
    ld h, l
    ld [hl], $3f
    ret nz

    add hl, hl
    jp z, Jump_05b_40ff

    xor e
    ld b, $07
    ld b, e

jr_05b_78c8:
    and b
    adc e
    ld l, l
    ld l, d
    ret nz

    pop hl

jr_05b_78ce:
    ld l, e
    ld a, $c1
    jp z, $c0ff

    xor a
    xor a

jr_05b_78d6:
    rst $38
    ld [hl], c
    ld l, l

jr_05b_78d9:
    ld l, d
    ld l, b
    ld l, b
    ld l, d
    ld l, e
    ld d, e
    cp c
    ld [hl], b
    ret nz

    rst $38
    add b
    or c
    and c
    ld a, c
    ld [hl], c
    cp a
    ret nz

    ld l, h
    rst $08
    ld [hl], $72
    xor [hl]
    ld [hl], b
    ret nz

    rst $38
    ret nz

    pop af
    add b
    ld a, c
    rst $38
    ld l, [hl]
    ld d, h
    ld d, l
    ld l, [hl]
    ld l, a
    add b
    add b
    xor [hl]
    ld bc, $ca70
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, jr_05b_7a26

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
    inc bc
    ld a, d
    inc sp
    ld a, d
    db $76
    ld a, h
    ld c, d
    ld a, [hl]
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

jr_05b_7a26:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $dd
    dec bc
    rst $38
    db $e3
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ldh [$0b], a
    dec hl
    ccf
    dec bc
    ld c, d
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc c
    rst $38
    rst $38
    rst $20
    and $a0
    pop bc
    push hl
    cp b
    pop hl
    cp a
    push hl
    jp z, $c0ff

    db $ec
    ld l, e
    ret nz

    pop hl
    dec hl
    inc c
    cp a
    and $ca
    rst $28
    inc l
    inc l
    add b
    ld sp, hl
    add d
    ldh [rLCDC], a
    ldh [$7d], a
    pop hl
    ret nz

    dec a
    db $e3
    adc $e2
    ei
    db $e3
    cp $e1
    ei
    db $e3
    ld [hl], l
    push af
    inc l
    inc l
    rla
    dec bc
    dec hl
    dec hl
    cp a
    ldh [rWX], a
    cp a
    db $e3
    ldh a, [$c1]
    jp nz, Jump_000_08e4

    add b
    jp hl


    di
    ldh a, [$f9]
    push hl

jr_05b_7a8a:
    inc l
    ld b, l
    ldh [$bf], a
    ldh [$c0], a
    ldh [$bc], a
    db $e4
    pop de
    ld a, [bc]
    ld d, b
    pop hl
    adc [hl]
    ld hl, sp+$24
    db $ed
    ld c, h
    cp a
    pop hl
    ld c, e
    ld c, e
    add hl, bc
    dec hl
    ld a, h
    pop hl
    ei
    ret nz

    ld a, [bc]
    add b
    pop hl
    ld b, c
    db $e3
    rst $38
    rst $20
    ret nz

    ld sp, hl
    ld [$e07f], sp
    dec a
    ldh [$c0], a
    pop bc
    dec bc
    ld a, c
    ldh [$3d], a
    ldh [$c0], a
    rst $38
    and h
    rlc [hl]
    ld a, a
    ldh [$0b], a
    dec hl
    add l
    pop hl
    jr c, jr_05b_7a8a

    ret nz

    pop hl
    adc d
    push bc
    pop bc
    rst $38
    ld bc, $7f4c
    push hl
    ret nz

    pop bc
    cp d

Jump_05b_7ad5:
    and b
    ret nz

    jp nz, $e401

    ret nz

    rst $38
    cp $cb
    ld h, b
    pop bc
    db $e4
    ret nz

    and $4f
    call nc, $cf6f
    ld a, l
    jp nz, Jump_05b_4b2b

    add d
    pop hl
    adc b
    ld a, [$40c1]
    ld sp, hl
    or a
    or c
    ld c, h
    ld a, [hl-]
    and b
    ret nz

    ldh [$f5], a
    add d
    dec hl
    nop
    cp a
    ret nz

    nop
    pop af
    ld l, $c1
    inc d
    ldh [rNR52], a
    call nc, $e7c0
    add hl, sp
    ret nz

    ret nz

    db $f4
    nop
    call nc, Call_05b_66c2
    ret z

    ret nz

    di
    ld [hl], a
    pop bc
    ret nz

    rst $38
    ret nz

    ld hl, sp+$32
    and b
    ld c, h
    xor a
    inc h
    jr nc, @-$50

jr_05b_7b21:
    xor a
    add [hl]
    ld c, h
    dec hl
    pop hl
    ld hl, sp-$1d
    ld c, h
    rst $38
    ldh [$fb], a
    db $e3
    nop
    nop
    adc $7d
    and l

jr_05b_7b32:
    ld hl, sp-$18
    or e
    ld [$d419], a
    ret nz

    or $da
    db $f4
    rst $00
    add h
    nop
    ld [de], a
    add [hl]
    ld hl, sp-$1a
    ld b, b
    pop af
    db $ed
    ld h, a
    ret nz

    rst $38
    ld h, a
    ldh a, [$ec]
    ld h, a
    add b
    rst $38
    nop
    add b
    pop af
    add c
    add sp, $65
    or [hl]
    ret nz

    rst $38
    sbc b
    ret nc

    ld de, $0a88
    ld h, e
    ld a, $62
    nop
    ld [hl], d
    db $76
    ret nz

    rst $38
    ld b, b
    cp $99
    bit 0, b
    pop af
    daa
    pop de
    ret nz

    ldh a, [rHDMA5]
    sub d
    nop
    ld b, b
    jp nc, Jump_05b_5223

    add b
    rst $30
    or b
    ld c, l
    ret nz

    rst $38
    ret nc

    ld l, l
    cp [hl]
    ld e, d
    sbc c
    jp z, Jump_000_0400

    ld e, d
    ret nz

    ld hl, sp-$80
    ld_long a, $ffc0
    sub $f6
    ret nz

    ei
    rst $20
    ld bc, $f980
    nop
    rst $00
    inc d
    xor a
    dec bc
    xor l
    ld c, d
    inc b
    jr nc, jr_05b_7b21

    ld h, h
    ret nz

    ld [hl], c
    sbc d
    ld l, d
    ld l, d
    add c
    db $10
    ei
    or c
    sbc l
    jr nz, @-$26

    jr nz, @-$01

    pop hl
    ld c, h
    sub d
    jr nz, jr_05b_7b32

    rst $28
    or l
    ld b, $00
    ld d, h
    ld sp, $e1ac
    ret nz

    ldh [$57], a
    ld h, d
    cp c
    db $e4
    ld b, c
    ld a, [c]
    db $ed
    ld h, d
    ld a, [hl]
    ld [c], a
    nop
    jp nc, Jump_000_138d

    ld l, c
    jr c, @-$13

    ret nz

    pop af
    sub d
    ld [hl], c
    ld bc, $3fe3
    ld [c], a
    ld b, d
    ld d, b
    nop
    db $ed
    ld c, a
    ret c

    db $10
    ccf
    rst $20
    ld a, [$5556]
    jp hl


    ld d, e
    ld c, h
    ld h, d
    ld b, c
    ld b, c
    push af
    nop
    ld [hl], $68
    ret nz

    rst $30
    ld b, h
    db $e3
    inc h
    ld b, a
    ld b, b
    rst $38
    dec sp
    ld a, [c]
    ret nz

    db $db
    or b
    ld b, $00
    ld d, d
    ld [hl], b
    rst $38
    and l
    scf
    or [hl]
    ld a, [$d4a6]
    xor l
    ld e, c
    daa
    rst $38
    push de
    ldh [$9a], a
    nop
    add hl, hl
    dec h
    db $fc
    push bc
    dec de
    cp $12
    call nz, Call_05b_44a6
    ldh a, [rSC]
    push bc
    and $c0
    rst $38
    ld bc, $3f4c
    db $e3
    add [hl]
    ret z

    ret nz

    jp hl


    add d
    rst $38
    call nc, $d9a3
    adc l
    rst $00
    ld [de], a
    nop
    cp d
    ld a, [$8f99]
    rst $38
    rst $38
    push hl
    daa
    ld d, h
    rst $38
    sbc a
    ld a, d
    add hl, de
    or a
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    ld b, c
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, c
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_7c6e:
    nop
    rst $38
    rst $38
    inc a
    ld sp, hl
    nop
    nop
    nop
    db $fd
    ld e, e

Call_05b_7c78:
    rst $38
    ldh [$5c], a
    ld e, l
    ld sp, $3b4d
    ld d, l
    rst $38
    ld d, h
    dec sp
    ld c, l
    ld sp, $5b60
    dec e
    adc c
    rst $00
    adc c
    adc c
    nop
    rst $38
    rst $38
    rst $20
    and $c2
    ld [c], a
    ld sp, $8b4d
    ld [hl-], a
    ld l, b
    rst $38
    ldh [$32], a
    cp a
    db $e4
    jp z, $e8ff

    rst $20
    ld h, d
    ei
    ld h, d
    ld sp, $e1c1
    ld l, d
    jr nc, jr_05b_7cc9

    rra
    jr nc, jr_05b_7c6e

    jr nc, jr_05b_7c6e

    db $e4
    jp z, $e8ff

    rst $20
    jp nz, $82e0

    ldh [$30], a
    ld l, l
    pop hl
    ld l, d
    ret nz

    pop hl
    cp a
    db $e4
    jp z, $e8ff

    rst $20
    ld de, $1b11
    sbc $81

jr_05b_7cc9:
    ld [c], a
    ld l, l
    ld l, b
    ld l, b
    ld l, d
    cp a
    ldh [$39], a
    ld sp, $61e7
    ld e, e
    ld e, e
    jp z, $e8ff

    rst $20
    ld hl, $1722
    cp $40
    db $e3
    ld l, h
    ld l, h
    ld l, l
    ld l, d
    ld l, b
    ld l, b
    ld d, e
    ld a, [c]
    ret nz

    ldh [$5a], a
    jp z, $e8ff

    rst $20
    inc l
    jr nz, jr_05b_7d08

    dec d
    cp $c0
    jp $3030


    ld l, l
    ld l, h
    ld l, h
    ld d, d
    ld sp, $6193
    ld e, d
    add b
    rst $38
    ret nz

    ld [$7f28], a
    ldh [$fd], a

jr_05b_7d08:
    pop bc
    ld l, c
    ld a, $00
    ldh [$6d], a
    add e
    scf
    ld sp, $c05f
    rst $38
    jp hl


    add sp, $77
    jr z, jr_05b_7d39

    jr z, jr_05b_7d9a

    pop hl
    ld sp, $7150
    ret nz

    pop hl
    sbc a
    ld [hl], c
    ld a, c
    ld d, c
    ld sp, $c05e
    rst $38
    jp hl


    add sp, $20
    cp l
    jr nz, jr_05b_7dae

    db $e3
    ld d, c
    ld a, c
    ld [hl], c
    ld l, d
    pop bc
    ldh [$80], a
    pop hl
    ld d, b

jr_05b_7d39:
    cp a
    ret nz

    jp z, $c0ff

    ld [$c2fe], a
    ld d, b
    add b
    ld a, c
    adc l
    ld [hl], c
    pop bc
    ldh [$80], a
    ld d, c
    ret nz

    rst $38
    ret nz

    xor $fe
    pop bc
    ld d, c
    scf
    add b
    add b
    ld a, c
    pop bc
    ldh [$80], a
    add c
    ret nz

    rst $38
    add b
    xor $e5
    jr nz, @-$44

    and b
    ld d, b
    call nz, $fde0
    pop hl
    add h
    ld c, l
    ld sp, $5fe1
    jp z, $c0ff

    rst $28
    add b
    ldh [$be], a
    db $e3
    add c
    ld sp, $005e
    jp z, $80ff

    rst $30
    ld a, a
    pop hl
    jp z, $80ff

    ld hl, sp-$02
    ret nz

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

jr_05b_7d9a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_7dae:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_05b_7ea9

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_7ea9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05b_7ee0:
    rst $38
    rst $38

Jump_05b_7ee2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05b_7ee7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05b_7eff:
    rst $38

Call_05b_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05b_7f68:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
