; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05c", ROMX[$4000], BANK[$5c]

    inc e
    ld b, b
    ld b, l
    ld b, h
    xor h
    ld c, b
    scf
    ld c, l
    sub [hl]
    ld d, c
    ld l, $56
    call nz, $e05a
    ld e, [hl]
    ld a, [c]
    ld h, d
    ld [hl+], a
    ld l, b
    ld sp, hl
    ld l, h
    and l
    ld [hl], c
    ld a, $75
    cp l
    ld a, b
    inc h
    ld b, b
    ld d, h
    ld b, b
    ld c, l
    ld b, d
    add hl, de
    ld b, h
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
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $ed
    dec bc
    rst $38
    db $ec
    ld c, h
    inc c
    rst $38
    push hl
    ld c, h
    dec bc
    dec bc
    rst $20
    inc c
    inc c
    inc l
    db $fc
    pop hl
    db $ed
    ldh [$2c], a
    inc l
    ld c, h
    ld b, a
    inc c
    ld c, h
    ld c, h
    db $e3

Call_05c_406f:
    rst $20
    jp c, $c0e6

    rst $30
    inc c
    pop bc
    add sp, $38
    ret nz

    ldh [$c5], a
    rst $28
    ret nz

    rst $20
    ld l, e
    ld l, e
    ld c, e
    rst $38
    pop hl
    ld a, a

Jump_05c_4084:
    and $e0
    ld a, e
    ld [c], a
    add c
    rst $20
    ld l, h
    ldh [$c1], a
    push af
    add b
    ld [c], a
    ld l, e
    ld l, e
    dec hl
    rlca
    dec hl
    dec hl
    dec bc
    cp [hl]
    push hl
    ld e, d
    push hl
    ld b, c
    ld [c], a
    inc sp
    and $c0
    ld hl, sp+$07
    ld l, e
    ld l, e
    dec bc
    ret nz

    push hl
    ld a, l
    db $e3
    add hl, bc
    ldh [rNR12], a
    ldh [$7f], a
    add sp, $18
    ld b, h
    ld a, [c]
    ld l, $e3
    ld b, h
    ldh [rOCPD], a
    dec bc
    ret nz

    push hl
    ld a, h
    ldh [$c0], a
    db $e4
    nop
    ret nz

    call $f6b5
    ld b, [hl]
    pop hl
    add c
    ld [c], a
    ld b, b
    db $e3
    ei
    jp nz, $e452

    ccf
    jp hl


    ld [bc], a
    ret nz

    rst $30
    dec bc
    ret nz

    db $e4
    cp [hl]
    jp nz, $e5bf

    ld e, d
    add sp, $48
    pop bc
    ld [hl], h
    jp $809a


    db $d3
    ld c, e
    ld a, a
    pop hl
    dec bc

Jump_05c_40e6:
    dec hl
    pop bc
    db $e3
    ld a, c
    jp Jump_000_002c


    push bc
    jp $c20e


    ld c, b
    ret z

    or l
    db $e4
    nop
    jp nc, $c07f

    cp [hl]
    rst $20
    inc d
    jp $0e00


Jump_05c_40ff:
    res 6, l
    db $eb
    ret nz

    or b
    dec a
    and $c0
    di
    add e
    jp nc, $aa80

    dec a
    add $47
    dec hl
    inc l
    ld c, e
    ld d, l
    and b
    ld c, $d4
    ld a, b
    or c
    inc l
    rrca
    ldh [rP1], a
    ld a, [hl]
    and $ef
    add b
    dec bc
    and c
    rst $38

jr_05c_4123:
    rst $38
    inc hl
    jp hl


    cp [hl]
    db $e3
    ld a, e
    and c
    inc sp

Jump_05c_412b:
    and c
    nop
    ret nz

    jp nz, $ca7a

    cp [hl]
    add c
    or [hl]
    or a
    cp [hl]
    and $f4
    and c
    ld [hl], d
    and b
    adc $83
    db $10
    sub c
    or d
    cp [hl]
    db $fc
    ld sp, hl
    add b
    ld [hl], d
    and b
    inc l
    ld bc, $3ef2
    add d
    ld a, c
    adc a
    nop
    db $d3
    and d
    ld h, c
    add b
    ld a, [de]
    add b
    db $fd
    db $e3
    sub e
    sub d
    ld b, c
    push de
    push de
    ld [hl], b
    ld b, $83
    nop
    ld bc, $f9ed
    and [hl]
    ld a, [$e073]
    db $dd
    add l
    rst $10
    push de
    ld l, [hl]
    ccf
    ld h, b
    nop
    ret c

    nop
    ld a, e
    ld [hl], h
    sbc [hl]
    ld l, e
    nop
    rst $18
    sbc a
    adc e
    push de
    ld l, d
    rst $10
    ld b, b
    nop
    rst $08
    or l
    ld [hl], a
    nop
    push de
    ld l, [hl]
    ld d, a
    or d
    ld [hl], l
    db $76
    push de
    ld l, a
    sub e
    add e
    ld d, l
    ld c, [hl]
    and b
    rst $18
    jr nz, jr_05c_4123

    nop
    ret nz

    db $ec
    nop
    sub b
    push de
    ld l, a
    sla c
    nop
    adc $31
    sbc c
    ld [$75df], sp
    ld e, a
    nop
    dec de
    sbc c
    and b
    pop de
    jr @+$26

    push de
    ld l, a
    add hl, de
    ld sp, $addf
    push de
    cp a
    and b
    rst $18
    nop
    ld e, d
    daa
    push de
    ld l, l
    push bc
    ld l, [hl]
    ld [hl], l
    ld c, [hl]
    ld bc, $a0ff
    rst $18
    push de
    or l
    push bc
    ld [hl], c
    nop
    inc hl
    rst $38
    sbc [hl]
    ld a, [$db27]
    ld bc, $fffd
    rst $38
    ld hl, $a79f
    cp c
    pop de
    cp $00
    db $76
    add hl, sp
    dec d
    ld d, c
    dec c
    ld a, a
    and b
    rst $38
    ld [hl], l
    ld b, e
    push af
    rst $18
    ld d, $7b
    db $76
    ld [hl], b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    adc b
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    ld a, a
    rst $38
    rst $38
    rst $38

Jump_05c_4212:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Call_05c_4246:
    rst $38
    rst $38
    ret nz

    daa
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
    add hl, bc
    nop
    add [hl]
    rst $38
    and $90
    sub b
    ei

jr_05c_425e:
    pop hl
    ldh a, [$e7]
    or $f2
    jp nz, Jump_000_21eb

    db $e3
    ld hl, $c008
    add sp, -$3f
    rst $38
    ret nz

    pop hl
    ld d, b

jr_05c_4270:
    ld hl, $7f21
    scf
    ld [hl], $45
    ld b, h
    ld b, l
    ld [hl], $37
    ld a, e
    ld [c], a
    pop af
    inc b

jr_05c_427e:
    add c
    rst $38
    ld l, l
    jp hl


    ld b, l
    pop hl
    daa
    ld h, $59
    ld e, e
    cp a
    ld e, e
    jr nz, jr_05c_42e9

    ld h, $36
    dec a
    add hl, sp
    pop hl
    jr jr_05c_4304

    add hl, de
    ret nz

    add sp, -$01
    cp $07
    ldh [$37], a
    ld [hl+], a
    jr nz, jr_05c_425e

    ld [c], a
    sub a
    ld e, l
    ld e, l
    ld [hl+], a
    cp a
    ld [c], a
    ld hl, $ff7f
    ret nz

    add sp, $3d
    rla
    ld [hl], $26
    jr nz, jr_05c_4270

    push hl
    jr nz, @-$3f

    db $e3
    ret nz

    ldh a, [$b5]
    or $27
    ld c, [hl]
    add hl, sp
    jr c, jr_05c_427e

    db $e3
    add b
    pop hl
    ld d, a
    cp a
    db $e3
    add b
    jp hl


    xor $b4
    db $dd
    ld c, a
    ld hl, $8129
    and $57
    ld d, a
    ld e, h
    db $e3
    jr nz, jr_05c_42f5

    cp d
    ret nz

    ld c, h
    ret nc

    add hl, sp
    sub $4b
    ld d, b
    dec a
    sbc a
    ld [hl], $44

jr_05c_42df:
    ld b, h
    ld b, l
    ld h, $c1
    db $e3
    rst $38
    ldh [rNR52], a
    db $e3
    inc l

jr_05c_42e9:
    ld hl, $dfc5
    ret nz

    jp hl


    push bc
    and d
    scf
    ld [hl], $26
    dec a
    ld e, l

jr_05c_42f5:
    pop bc
    ld [c], a
    ld e, h
    ld e, h
    jr c, @+$3b

    jp z, $9bff

    and a
    ld sp, $8652
    and l
    ld a, d

jr_05c_4304:
    ret nz

    ret nz

    db $e3
    ld e, h
    add hl, hl
    jp z, Jump_05c_40ff

    jp z, Jump_05c_449a

    and h
    dec a
    cp a
    db $e4
    jr nz, jr_05c_4358

    jp z, $1bbf

    and a
    dec de
    db $76
    rst $38
    ldh [rNR24], a
    jr jr_05c_42df

    add sp, $20
    jr nz, jr_05c_4397

    ret nz

    rst $38
    ld a, [c]
    db $eb
    adc h
    ld bc, $e3be
    ld a, [hl]
    pop hl
    jr nz, jr_05c_4350

    ld h, c
    ld l, c
    ld b, b
    add $a2
    cp h
    adc $b6
    sbc d
    cp [hl]
    db $e3
    dec a
    ldh [$c1], a
    ldh [rSVBK], a
    adc a
    rst $38
    ld a, $7c
    push af
    dec a
    ld a, [hl+]
    ld e, [hl]
    ld l, c
    ld [hl], b
    ret nz

    rst $38
    ld l, c
    rst $38
    nop
    rst $38

jr_05c_4350:
    rst $38
    cp e
    db $eb
    push de
    adc e
    ld bc, $7bf1

jr_05c_4358:
    cp $cf
    rst $38
    add c
    rst $38
    inc l
    rst $38
    nop
    ret nz

    rst $30
    db $ec
    rst $18
    ld a, a
    rst $38
    add $68
    rst $38
    rr a
    db $fc
    sub l
    ld a, [hl]
    ret nz

    rst $38
    nop
    ld e, h
    rst $38
    db $dd
    rst $38
    ret nz

    rst $38
    add [hl]
    rst $38
    nop
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    and b
    rst $18
    ld [$a0df], a
    rst $18
    ret nz

    rst $38
    and [hl]
    rst $38
    add c
    xor a
    xor e
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_05c_4397:
    rst $38
    rst $38
    rst $38
    rst $38
    daa
    rst $18
    ld bc, $ffff
    rst $38
    ld b, d
    rst $18
    nop
    ld b, b
    rst $18
    pop de
    rst $38
    ld b, b
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], l
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05c_43ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0000], a
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
    jr nc, jr_05c_4470

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

Call_05c_4445:
    ld c, l
    ld b, h
    ld a, l
    ld b, h
    or l
    ld b, [hl]
    ld a, b
    ld c, b
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

jr_05c_4470:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld e, l
    inc c
    rst $38
    add sp, $0b
    dec bc
    ld l, e
    cp $e0
    dec bc
    db $ed
    db $e4
    rrca
    ld c, h
    ld c, h
    inc c
    ld c, h
    ld [c], a
    rst $20
    push af
    add sp, -$0a
    push af
    pop bc
    pop hl
    db $10
    cp [hl]
    ldh [$cf], a

Jump_05c_449a:
    rst $20
    cp [hl]
    ldh [$a1], a
    pop hl
    inc l
    ret nz

    rst $20
    push af
    ld [c], a
    pop bc
    or $a3
    dec bc
    dec hl
    db $fc
    ldh [$95], a
    and $80
    ld [c], a
    inc l
    jp Jump_000_2ce0


    ld b, b
    ld a, [$f5e1]
    add sp, -$3f
    or $fd
    pop hl
    adc d
    and $40

jr_05c_44bf:
    ld [c], a
    inc l
    ret nz

    ld [c], a
    jr c, jr_05c_44bf

    pop hl
    push af
    add sp, $43
    push af
    ld l, e
    ld c, e
    ld c, e
    inc bc
    and $40
    db $e4
    ld b, b
    sub d
    ld [c], a
    cp e
    ld [c], a
    push af
    add sp, $3b
    db $e4
    inc [hl]
    ld [$e2c1], a
    dec hl
    ld b, b
    ldh [rNR41], a
    adc $c8
    ret nz

    call nz, $e38c
    push af
    add sp, -$7e
    db $f4
    dec hl
    rst $38
    ldh [$80], a
    db $ec
    nop
    ld a, a
    rst $18
    ld b, e
    add sp, $7f
    pop hl
    add b
    db $ed
    ret nz

    pop hl
    add b
    db $e4
    push af
    rst $20
    inc b
    ld a, [c]
    ret nz

    ret nz

    push hl
    jp nz, $c0c5

    rst $38
    add $a5
    ld a, [bc]
    ldh [$c1], a
    pop hl
    dec hl
    dec bc
    dec b
    ld c, e
    add b
    pop hl
    inc l
    ld c, l
    push hl
    nop
    rst $00
    ret nz

    cp d
    ld c, c
    pop bc
    add d
    ldh [rSC], a
    inc b
    ret nz

    dec hl
    ret nz

    ld [c], a
    ld a, a
    rst $20
    add b
    cp d
    or a
    and [hl]
    pop bc
    ld [c], a
    inc b
    jp nz, Jump_05c_4212

    ret nz

    dec hl
    ccf
    ret nz

    ld a, a
    ld [c], a
    ld c, h
    rst $38
    ld [c], a
    ld c, d
    xor d
    ccf
    or h
    nop
    dec c
    ret nz

    add l
    jp nz, $e0c0

    ld a, a
    jp $c5fe


    ld b, b
    and d
    ret nz

    rst $20
    inc [hl]
    jp hl


    inc h
    call z, $8a8a
    ldh [$2b], a
    ld b, h
    ret nz

    ccf
    pop hl
    dec hl
    ld a, a
    push hl
    add e
    ld [c], a
    nop
    add b
    ld hl, sp-$07
    adc b
    ld c, b
    ldh [$c6], a
    pop hl
    rst $38
    jp nz, $8081

    cp $c2
    ld c, c
    db $e3
    nop
    dec a
    db $e4
    add b
    pop af
    ld sp, hl
    adc b
    rlca
    db $e4
    add $81
    ld b, h
    add c
    cp $c2
    sub a
    add [hl]
    nop
    ret nz

    or $f9
    add a
    ld a, [de]
    jp nz, $e3fb

    di
    db $eb
    add d
    ld [$8c03], a
    cp d
    adc l
    nop
    push de
    ld l, l
    db $d3
    ld a, h
    ld a, d
    adc l
    rst $08
    jp $ebfc


    db $d3
    ld h, a
    call z, $b475
    ld l, b
    ld [$c20d], sp
    ret nc

    add h
    res 0, e
    ld c, h
    db $d3
    ld h, a
    call z, $fa6f
    ld h, e
    ret nz

    jp hl


    nop
    ld d, b
    call nz, $e6fb
    add a
    ld h, b
    db $d3
    ld h, [hl]
    call z, Call_05c_406f
    rst $28
    jp c, $8dd9

    halt
    add b
    db $eb
    ld c, [hl]
    and e
    ld c, c
    and e
    ret z

    push hl
    add c
    di
    pop bc
    rst $28
    cp h
    ld [$abc8], a
    nop
    rst $38
    rst $38
    pop de
    add a
    ld c, c
    and e
    adc b
    ld h, l
    ld bc, $eeee
    adc h
    rst $38
    call z, $83d3
    nop
    adc e
    add e
    inc de
    ld l, c
    add c
    ld l, b
    ld l, [hl]
    adc h
    nop
    res 7, l
    and $de
    push de
    dec hl
    add [hl]
    jr nz, @+$01

    call nc, $90a3
    jp c, $bfd1

    db $d3
    ld e, h
    ld hl, $560b
    ld hl, $23b9
    nop
    ret nz

    adc $ee
    sbc d
    rst $20
    call $90c6
    add a
    ld [hl], $e7
    ret nc

    jp c, $e7d4

    rst $18
    nop
    ld [hl-], a
    xor c
    rst $38
    rst $38
    rst $20
    ret c

    ret nz

    rst $38
    rst $20
    reti


    jp nz, $e7ff

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
    ld c, h
    rst $38
    rst $38
    rst $38
    ret nz

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
    dec sp
    ld a, d
    db $fc

jr_05c_4644:
    rst $20
    jp nc, $e57a

    sbc $2c
    db $10
    jp nc, $bf7a

    sub c
    db $eb
    sbc a
    ret nz

    ld [hl], l
    inc l
    inc bc
    add c
    dec d
    jr nc, jr_05c_4644

    sub b
    nop
    ret nz

    ld [hl], d
    ret z

    inc b
    ld d, a
    db $eb
    db $eb
    sub e
    xor [hl]
    ld [de], a
    ld e, $f2
    jp nc, $c070

    ld [hl], a
    nop
    call c, Call_000_05df
    ld e, l
    jp c, $81ff

    rst $18
    rst $38
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
    cp a
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $fd
    ld [hl], b
    nop
    nop
    nop
    db $fd
    jr nz, @+$01

    rst $20

jr_05c_46b9:
    ld c, $31
    ld sp, $5b60
    ld e, a
    adc a
    ld sp, $2931
    nop
    rst $38
    rst $38
    rst $20
    and $c1
    db $ec
    ld e, e
    rst $08
    ld e, [hl]
    ld sp, $2129
    jp z, $c0ff

    ldh a, [rIF]
    ld sp, $818a
    pop hl
    ld h, b
    pop bc
    ldh [rNR41], a
    jp z, $80ff

    rst $28
    pop bc
    pop hl
    ld sp, $31c3
    ld h, d
    pop bc
    pop hl
    ret nz

    rst $38
    ld b, b
    rst $28
    add d
    ldh [rKEY1], a
    ld b, [hl]
    ccf
    ld d, h
    inc a
    ld sp, $2b31
    jr z, jr_05c_46b9

    rst $38
    nop
    rst $28
    ld a, $c5
    ret nz

    ld c, l
    ld [hl-], a
    jr nc, @+$32

    ld d, e
    ret nz

    rst $38
    ret nz

    jp nc, $c130

    db $e4
    ret nz

    rst $38
    add b
    db $d3
    add d
    db $e3
    ld h, a
    ld l, d
    ret nz

    rst $38
    ld b, b
    pop de
    cp e
    ld a, [bc]
    dec bc
    pop bc
    db $e3
    ld l, l
    ld h, a
    ld h, l
    ret nz

    ldh [rNR22], a
    ldh a, [$c0]
    rst $38
    db $eb
    ld [$e1c2], a
    add d
    ld [c], a
    jr nc, jr_05c_475d

    ld l, h
    ld l, h
    rra
    ld d, d
    ld sp, $1531
    ld d, $c0
    rst $38
    ld [$49e9], a
    pop bc
    ld a, [hl]
    push bc
    ret nz

    ld l, d
    ld l, l
    jr nc, jr_05c_4772

    ld l, l
    ld h, a
    ret nz

    ldh [$f0], a
    ld a, a
    pop hl
    jp z, $c0ff

    ld [$c186], a
    ld l, d
    ld l, d
    ld l, e
    ld l, l
    adc a
    ld h, a
    jr nc, jr_05c_47aa

    xor h
    ld a, a
    ld [c], a
    jp z, $e8ff

jr_05c_475d:
    rst $20
    ld h, d
    ld [hl], a
    ld sp, $3931
    add [hl]
    ret nz

    jr nc, jr_05c_47d0

    ld l, e
    ld a, $e0
    jp $8153


    ld a, a
    ld [c], a
    jp z, $e8ff

jr_05c_4772:
    rst $20
    ld c, [hl]
    and b
    inc a
    ld [hl], $0c
    ret nz

    ld [c], a
    ld b, b
    ret nz

    add e
    xor c
    ld a, a
    ld [c], a
    jp z, $c0ff

    add sp, $0d
    and b
    ld [hl], a
    ld b, a
    ld b, [hl]
    ld [hl], $c0
    ld [c], a
    ld [hl], e
    ld a, c
    add b
    ld a, a
    ld [c], a
    call c, $ffca
    ret nz

    jp hl


    ld e, e
    ld e, h
    ld e, l
    cp [hl]
    ldh [rHDMA4], a
    ld d, h
    rra
    ld d, l
    ld l, [hl]
    ld a, c
    add b
    add b
    ld a, a
    ld [c], a
    jp z, $ffff

    rst $38
    nop

jr_05c_47aa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_05c_47d0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    db $e4
    and l
    ld a, [hl]
    db $dd
    pop hl
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    db $d3
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05c_480f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
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
    jr nc, jr_05c_48d7

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
    or h
    ld c, b
    db $e4
    ld c, b
    ld e, e
    ld c, e
    inc bc
    ld c, l
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    ldh [rNR10], a
    ret z

    ld [bc], a
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    sbc a
    ld [bc], a
    or $01
    ld d, e
    ld bc, $1b4b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05c_48d7:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $18
    ld a, [hl+]
    ld c, d
    ld c, d
    ld c, d
    ld a, [bc]
    rst $38
    add sp, $6a
    ld l, d
    rra
    ld l, d

Jump_05c_48f0:
    ld a, [bc]
    inc c
    ld c, h
    ld c, h
    db $fd
    ldh [$fe], a
    ldh [$fa], a
    ld [c], a
    ld c, e
    inc c
    inc c
    ldh a, [$e1]
    inc l
    ld hl, sp-$1f
    db $fd
    ldh a, [rWY]
    cp a
    ldh [$d2], a
    ret nz

    db $eb
    ld a, [bc]
    ret nz

    db $e4
    cp l
    pop hl
    inc c
    jp nz, Jump_05c_4ce4

    inc l
    nop
    ret nz

    or $bf
    ldh [$80], a
    ld [$e073], a
    adc [hl]
    ld [c], a
    add [hl]
    ld [c], a
    db $fc
    ld [c], a
    add b
    pop hl
    ld [$e4c0], sp
    ld [hl], a
    rst $28
    ld b, c
    ldh [$2a], a
    ld b, b
    jp hl


    inc [hl]
    pop hl
    adc l
    db $e3
    ret nz

    db $e3
    ldh a, [rLCDC]
    push hl

jr_05c_4938:
    cp c
    db $e3
    ld [hl], a
    rst $28
    ld bc, $6ae0
    dec bc
    dec bc
    dec bc
    ld a, l
    ld l, e
    db $fc
    ldh [$0b], a
    ld c, e
    dec hl
    dec hl
    dec bc
    ret nz

    ld [c], a
    and b
    inc d
    db $e3
    ld c, $e6
    jr c, jr_05c_4938

    rst $30
    jp nz, $e737

jr_05c_4958:
    inc l
    ld b, b
    db $e4
    ld l, d
    ld [hl], a
    ld l, e
    dec bc
    ld l, e
    rst $38
    pop hl
    ld c, e
    dec bc
    ld c, e
    db $fd
    ldh [$80], a
    add b
    db $e3
    pop bc
    push hl
    ld c, e
    db $e3
    jr c, @-$1b

    rst $08
    pop hl
    jr nc, jr_05c_4958

    ret nz

    ret


    ld l, d
    nop
    jp nz, $c0e3

    pop hl
    cp a
    ldh [$c0], a
    db $e3
    ret nz

    ret z

    ccf
    rst $20
    adc a
    ldh [rPCM34], a
    rst $20
    inc c
    ld [hl], e

Call_05c_498a:
    add $43
    ldh [$2b], a
    dec hl
    cp [hl]
    db $e3
    ld a, $e1
    add b
    push hl
    add c
    add $10
    ld [hl], l
    call nz, $e52f
    ld [hl], a
    push hl
    inc sp
    add $2a
    ret nz

    pop hl
    cp a
    db $e3
    ld a, a
    ldh [$81], a
    dec bc
    nop
    db $e3
    add b
    call nz, $c67c
    ei
    and d
    push af
    push bc
    ret nz

    db $ec
    ld a, [hl+]
    dec bc
    dec bc
    dec hl
    ld a, [hl]
    ldh [rWX], a
    add b
    pop hl
    cp a
    pop hl
    add b
    rst $00
    cp [hl]
    rst $00
    jr z, @-$3e

    push bc
    ld b, c
    ldh a, [$c0]
    ldh [$2a], a
    ret z

    pop bc
    dec hl
    cp h
    ret nz

    ret nz

    rst $20
    nop
    ld b, $c7
    ld [bc], a
    jp nz, $c4c0

    ld [hl-], a
    db $e3
    add e
    ret


    ret nz

    db $e3
    dec a
    and $80
    ret nz

    nop
    ld b, b
    push hl
    ld b, [hl]
    and h
    ret z

    db $e4
    rst $38
    add $c0
    rst $08
    ret nz

    pop hl
    dec a
    ld [c], a
    ld a, $e1
    ld [bc], a
    ret nz

    and $4c
    sub h
    pop bc
    ld a, l
    add $80
    rst $20
    or $c8
    ret nz

    jp hl


    db $fc
    ret nz

    ld b, h
    db $fd
    call nz, $a5c0
    inc l
    ld b, c
    and a
    ld b, b
    add $b7
    xor b
    inc l
    rst $38
    ldh [$0a], a
    ret nz

    jp hl


    ld a, [hl+]
    cp h
    pop bc
    dec hl
    ld a, e
    and c
    nop
    rst $20
    ret nz

    jp hl


    xor [hl]
    and [hl]
    inc h
    db $76
    call nz, $eec0
    ld a, [hl+]
    cp h
    pop bc
    cp [hl]
    and b
    ld l, e
    ret nz

    and a
    ld b, b
    sub d
    nop
    ret nz

    rst $20
    ld sp, $138c
    add l
    add hl, bc
    add h
    ld b, b
    sbc h
    ret nz

    rst $20
    push de
    ld [hl], h
    ld b, b
    sub a
    nop
    rst $00
    add c
    ld a, a
    xor b
    push de
    ld [hl], h
    ld b, b
    sub d
    ret nz

    rst $20
    pop bc
    pop bc
    ld a, [hl]
    rst $20
    push de
    ld [hl], d
    nop
    ld b, b
    sub b
    jp nz, $c087

    add sp, -$2b
    ld [hl], e
    ld b, b
    sub e
    add c
    and a
    ld b, b
    add $d5
    ld [hl], l
    nop
    ld b, b
    sub c
    cp b
    ld h, a
    nop
    rst $00
    push de
    ld [hl], h
    ld b, b
    sub d
    add c
    or b
    push de
    ld [hl], l
    ld b, b
    sub d
    nop
    add b
    di
    push de
    ld [hl], h
    ld b, b
    sub b
    ld bc, $c0a7
    db $eb
    push de
    ld [hl], c
    ld b, b
    sub c
    ret nz

    add sp, $00
    add a
    xor e
    sub l
    ldh a, [rLCDC]
    sub d
    add b
    and a
    db $ec
    adc l
    push de
    ld l, l
    ld b, b
    sub e
    add b
    ld [hl], b
    nop
    push de
    ld [hl], h
    ld b, b
    sub e
    add b
    ret nc

    push de
    ld [hl], h
    db $eb
    sub h
    nop
    ld l, a
    push de
    ld a, c
    ret nz

    rrca
    nop
    nop
    ret nc

    push de
    ld [hl], h
    add b
    sbc b
    ld a, a
    ld h, e
    ret nz

    db $fc
    db $eb
    sub h
    nop
    adc a
    push de
    dec d
    nop
    add b
    sub d
    ld h, c
    add $81
    ld l, e
    push de
    ld de, $91eb
    add b
    ld l, b
    nop
    cp h
    ret nz

    rra
    nop
    ld b, $6c
    push de
    dec c
    ret nz

    ld a, [de]
    pop bc
    ld c, d
    sub l
    sub h
    ret nz

    add hl, de
    add c
    ld c, c
    push de
    inc d
    nop
    ret nz

    rra
    nop
    cp d
    ret nz

    dec e
    nop
    cp l
    ret nz

    rra
    nop
    cp e
    ret nz

    rra
    nop
    cp e
    nop
    ret nz

    inc e
    nop
    cp [hl]
    ret nz

    inc e
    nop
    sbc [hl]
    rst $08
    and l
    rst $30
    ld [hl], l
    nop
    sbc a
    cp $c4
    nop
    ld h, d
    di
    nop
    sbc [hl]
    add a
    push hl
    adc a
    ld [$0d4e], sp
    nop
    db $fc
    add b
    push hl
    rst $38
    rst $38
    nop
    and l
    ld c, h
    inc h
    inc b
    cp a
    rst $38
    dec [hl]
    ld c, [hl]
    cpl
    add hl, hl
    ccf
    db $ed
    rst $38
    rst $38
    xor $6f
    nop
    ret nz

    rst $38
    scf
    ei
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

jr_05c_4b3f:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

Jump_05c_4b46:
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
    sbc a
    adc e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    adc b
    rst $38
    add sp, -$0f
    ldh [$2f], a
    ret


    nop
    rst $38
    rst $38
    rst $20
    and $4e
    cp a
    ldh [$c0], a
    db $eb
    cpl
    adc d
    jr nc, jr_05c_4b3f

    rst $38
    ret nz

    add sp, -$41
    ldh [$80], a
    ld [$8a2f], a
    ret nz

    rst $38
    ret nz

    ld [$4ec3], a
    adc e
    ld b, b
    jp hl


    pop bc

Jump_05c_4b88:
    ldh [$c0], a
    rst $38
    ret nz

    db $eb
    adc h
    ld e, h
    rst $38
    ld e, l
    ld h, d
    ld b, a
    ld d, a
    ld d, a
    ld d, [hl]
    ld d, [hl]
    ld c, l
    rst $00
    ld e, l
    ld e, h
    ld e, e
    pop bc
    ldh [$c0], a
    rst $38
    ld b, b
    ld [$5f8c], a
    rst $38
    ld sp, $3b47
    ld [hl], $6d
    ld l, l
    jr nc, @+$6f

    rst $08
    ld [hl-], a
    ld c, l
    ld sp, $c05f
    rst $38
    ret nz

    call z, $5b8c
    inc hl
    ld e, [hl]
    ld c, c
    jp nz, $c0e0

    pop hl
    cp a
    ldh [$5e], a
    ret nz

    rst $38
    db $ec
    db $eb
    rra
    adc h
    ld e, e
    ld e, e
    ld h, c
    ld d, c
    pop bc
    pop hl
    cp a
    db $e4
    ret nz

    rst $38
    ld a, [hl]
    db $ec
    db $eb
    adc [hl]
    ld e, e
    ld e, e
    ld e, [hl]
    ld c, l
    ld [hl-], a
    ret nz

    push hl
    di
    ld l, l
    ld d, c
    ret nz

    rst $38
    db $ec
    db $eb
    ld c, a
    adc [hl]
    ld e, e
    ld e, a
    ld c, a
    ld sp, $3b4d
    ld b, d
    ccf
    pop hl
    ld a, $e0
    ld d, b
    ret nz

    rst $38
    inc a
    ret nz

    db $ec
    cp a
    ldh [$5c], a
    ld e, l
    ld sp, $0239
    ldh [$c0], a
    rst $38
    ld [$f2c0], sp
    ld a, [hl]
    ldh [$bd], a
    ret nz

    ld c, b
    ld a, a
    db $e3
    ret nz

    rst $38
    ret nz

    rst $28
    dec a
    ld [c], a
    add b
    ld a, a
    pop hl
    dec a
    ret nz

    ret nz

    rst $38
    ret nz

    ldh a, [$fc]
    ret nz

    inc a
    ret nz

    pop bc
    pop bc
    ld c, b
    reti


    ld c, c
    ret nz

    rst $38
    ret nz

    ldh a, [rVBK]
    adc [hl]
    cp h
    and e
    ld [hl], $3c
    reti


    ld h, c
    ret nz

    rst $38
    ret nz

    pop af
    ld c, a
    adc [hl]
    cp h
    ret nz

    ld b, a
    ld d, a
    rlca
    ld b, a
    ld sp, $c060
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38

Jump_05c_4ce3:
    rst $38

Jump_05c_4ce4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05c_4d62

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
    ccf
    ld c, l
    ld l, a
    ld c, l
    cp b
    ld c, a
    ld h, d
    ld d, c
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    ldh [rNR10], a
    ret z

    ld [bc], a
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    sbc a
    ld [bc], a
    or $01
    ld d, e
    ld bc, $1b4b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05c_4d62:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld e, l
    inc c
    rst $38
    ld [c], a
    inc l
    ld c, h
    dec bc
    rst $38
    pop hl
    dec hl
    ld a, [$1fe2]
    dec bc
    inc c
    inc c
    ld c, h
    ld c, h
    db $fd
    db $e3
    ld sp, hl
    ldh [$df], a
    ldh [rTMA], a
    ld a, [c]
    pop hl
    inc l
    inc l
    or $e0
    rst $30
    and $fe
    xor $c0
    db $e3
    cp a
    ld [c], a
    ld b, c
    ld a, [bc]
    ret nz

    ldh [$be], a
    pop hl
    jp nz, $b7e1

    pop hl
    cp l
    pop hl
    ld c, h
    ret


    push hl
    db $fc
    rst $30
    and $bc
    db $ed
    dec bc
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    dec bc
    ld bc, $fd0b
    ldh [$80], a
    ldh [$82], a
    and $b9
    ld [c], a
    ld a, [hl]
    db $e3
    db $76
    ld [c], a
    rst $30
    rst $20
    ld [$ecc2], sp
    pop bc
    ldh [$c3], a
    ldh [rWX], a
    ret nz

    db $e4
    db $dd
    db $e4
    ld d, a
    and $38
    db $e4
    nop
    rst $30
    add sp, $45
    jp hl


    jp nz, $fee2

    ldh [$03], a
    db $e3
    nop
    ld [c], a
    pop bc
    and $4b
    db $e3
    nop
    jr c, @-$1b

    jp c, $f7c0

    push hl
    call z, $c0c2
    rst $20
    pop bc
    ld [c], a
    ld a, [hl]
    ldh [rSCY], a
    ld [c], a
    inc bc
    dec bc
    ld a, [bc]
    rst $00
    jp $c4c0


    ccf
    rst $20
    ret


    ld [c], a
    ret nz

    rst $20
    add b
    add sp, $01
    ld l, e
    ld a, a
    ld [c], a
    add b
    rst $20
    sub l
    call nz, $c281
    ld [hl], l
    call nz, $f641
    ld b, b
    ld [c], a
    inc b
    ld a, $e2
    ld b, d
    jp $800a


    ret nz

    rst $00
    call nz, $c77c
    cp e
    jp nz, $c176

    nop
    rst $30
    db $e4
    nop
    db $eb
    add c
    ldh [$bf], a
    jp $e700


    ld b, $c5
    ret nz

    rst $18
    ret nz

    pop hl
    add b
    jp $80c9


    push bc
    ld c, l
    push bc
    rst $38
    and l
    or a
    ret


    ld b, e
    rst $08
    add c
    push bc
    ld a, [bc]
    nop
    nop
    push hl
    ld b, $c4
    ret z

    db $e4
    ld b, b
    adc $be
    add $56
    and b
    ld [bc], a
    db $e3
    call nz, $02a4
    ld b, b
    push hl
    inc l
    push bc
    and e
    db $76
    call nz, $f780
    push bc
    pop bc
    ld a, [bc]
    and e
    rst $38
    and a
    jp nz, $a14d

    inc l
    ld b, c
    and a
    ld b, b
    add $7f
    and l
    ret nz

    db $ec
    dec bc
    dec hl
    add b
    ret z

    add b
    add c
    ret nz

    jp nz, Jump_05c_4084

    and c
    ld b, [hl]
    and e
    ret nz

    add sp, -$33
    adc h
    inc l
    nop
    rst $38
    ldh [rDMA], a
    and [hl]
    ret nz

    db $ec
    ret nz

    add e
    rst $10
    xor $c0
    or $48
    add d
    add d
    ldh [rP1], a
    add b
    db $ec
    cp $fa
    xor d
    rst $20
    rst $28
    and l
    call nc, Call_000_07c7
    sub c
    ret nz

    rst $30
    push de
    ld a, b
    nop
    rlca
    adc d
    ld l, a
    ld hl, sp-$2b
    ld [hl], d
    rlca
    adc e
    or a
    adc l
    pop bc
    pop bc
    add b
    add e
    push de
    ld [hl], a
    nop
    ld b, a
    xor c
    or a
    adc [hl]
    ld b, b
    add a
    push de
    ld [hl], h
    rlca
    adc h
    or a
    adc [hl]
    inc a
    adc l
    push de
    ld l, l
    nop
    rlca
    adc h
    or a
    adc h
    ret nz

    rst $20
    push de
    ld [hl], l
    ld d, b
    rst $28
    or a
    adc c
    add [hl]
    ld [$75d5], a
    nop
    rlca
    adc b
    or a
    adc [hl]
    ld a, [hl]
    and b
    ret nz

    add sp, -$2b
    ld [hl], b
    ret nz

    adc $b7
    adc d
    ret nz

    rst $20
    nop
    push de
    db $76
    ld d, b
    db $eb
    or a
    adc a
    ccf
    db $eb
    push de
    ld l, a
    rlca
    adc [hl]
    ld a, [hl+]
    or e
    push de
    ld [hl], l
    nop
    ld d, b
    rst $28
    or a
    sub d
    push de
    ld a, [hl]
    or l
    sbc [hl]
    push de
    ld [hl], h
    ld d, b
    push af
    inc bc
    xor a
    push de
    ld [hl], e
    nop
    ld d, b
    rst $30
    inc l
    sbc b
    adc $f6
    inc [hl]
    ld [hl], e
    jr nc, jr_05c_4f85

    ret nz

    rst $38
    ld b, e
    adc [hl]
    pop bc
    rst $38
    nop
    inc [hl]
    ld a, b
    db $e3
    ld [hl], l
    ei
    ld h, e
    dec hl
    add l
    add c
    reti


    nop
    sub l
    add e
    dec h
    cp a
    cp $00
    nop
    sub a
    ld e, a
    ld sp, hl
    ld a, d
    xor a
    adc $6b
    ret


    ld h, h
    inc hl
    sub d
    pop bc
    ld c, d
    nop
    sub l
    nop
    cp e
    db $e3
    inc hl
    sub d
    nop
    sbc a
    inc hl
    sbc a
    db $dd
    rst $38
    inc hl
    sbc c
    db $dd
    cp $d8
    ld b, [hl]
    nop
    inc hl
    sub c
    nop
    sbc a
    dec a
    ret z

    inc hl
    sub b
    nop
    sbc a
    adc a
    ld b, [hl]
    inc hl
    sub d
    nop
    sbc a
    nop
    ret c

    ld h, $23
    sub d
    nop
    sbc a
    ld a, e
    ld h, l
    inc hl
    sub e
    nop
    sbc a
    call nz, $dd9f
    rst $38
    nop
    inc hl
    sbc a
    db $dd
    db $fd
    inc hl
    sbc a
    and c
    sbc e
    add c
    rst $38
    db $dd
    ei
    ret nz

    rst $38
    ldh a, [$da]
    nop
    call c, $ffff
    rst $38

jr_05c_4f85:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05c_4f8e:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc c
    sbc d
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
    nop
    sub d
    nop
    nop
    nop
    db $db
    inc l
    jr nz, @+$01

    ld [c], a
    nop
    ld sp, $e1ff
    ld h, b
    ld e, e
    ld b, d
    rst $38
    ld [c], a
    nop

jr_05c_4fc7:
    rst $38
    rst $38
    rst $20
    and $c0
    ld [$e2bf], a
    ld e, d
    ret nz

    rst $38
    cp $c0
    xor $0a
    dec bc
    ld sp, $3b4d
    ld d, l
    inc a
    rst $00
    ld sp, $5f31
    add b

jr_05c_4fe1:
    rst $38
    add b
    rst $28
    jp nz, Jump_000_31e0

    ld b, a
    ld a, a
    ld [hl-], a
    jr nc, jr_05c_501c

    ld c, b
    ld c, c
    ld sp, $c05e
    rst $38
    ld a, h
    db $ec
    db $eb
    inc b
    db $e3
    ld c, l
    ld b, [hl]
    ld [hl], $6d
    ld l, l
    ret nz

    pop hl
    ld a, c
    ld h, c
    ret nz

    rst $38
    ret nz

    ldh a, [rKEY1]
    ld [hl-], a
    ld l, d
    ld l, l
    rst $38
    ldh [$cb], a
    add hl, sp
    ld sp, $e280
    ld e, d
    jp z, $80ff

    db $ec
    add hl, sp
    jr nc, jr_05c_4fc7

    ret nz

    pop hl
    ld b, c
    ldh [rP1], a

jr_05c_501c:
    rst $38
    ld b, b
    ld a, [c]
    ld d, d
    jr nc, jr_05c_4fe1

    pop hl
    ld d, d
    push hl
    ld sp, $e141
    ld e, d
    add b
    rst $18
    nop
    db $ec
    ld [$774d], sp
    dec e
    ld l, l
    cp a
    ldh [rOCPS], a
    add e
    and a
    ld bc, $c0e3
    rst $38
    ret nz

    swap e
    dec d
    add hl, sp
    ld [bc], a
    ldh [$82], a
    ret nz

    add h
    and c
    ret nz

    rst $38
    add b
    ret nc

    or a
    ld [$5231], sp
    jp nz, $83c2

    add b
    ret nz

    ldh [$5a], a
    call c, $ffc0
    db $ec
    db $eb
    dec b
    dec b
    dec d
    ld bc, $6ae0
    ld l, d
    add a
    ld l, d
    ld c, b
    add h
    ret nz

    pop hl
    add b
    rst $38
    db $ed
    db $ec
    ld [$aca0], sp
    sbc [hl]
    pop bc
    ret nz

    jr nc, jr_05c_50a3

    add e
    add b
    ret nz

    rst $38
    ret nz

    di
    add c
    call $c083
    ldh [$71], a
    ld a, c
    ret nz

    rst $38
    add b
    di
    xor h
    xor c
    rrca
    add h
    ld [hl], $36
    ld l, [hl]
    pop bc
    ldh [$c0], a
    db $e4
    ld b, b
    rst $18
    ld b, b
    db $eb
    rra
    add c
    add b
    add b
    ld l, a
    ld l, a
    jp nz, $80e0

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_05c_50a3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fd
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
    jr nc, jr_05c_51c1

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
    sbc [hl]
    ld d, c
    adc $51
    ld c, e
    ld d, h
    ld a, [$f255]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    ldh [rNR10], a
    ret z

    ld [bc], a
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    sbc a
    ld [bc], a
    or $01
    ld d, e
    ld bc, $1b4b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05c_51c1:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $18
    ld a, [hl+]
    ld c, d
    ld c, d
    ld c, d
    ld a, [bc]
    rst $38
    add sp, $6a
    ld l, d
    ccf
    ld l, d
    ld a, [bc]
    inc c
    ld c, h
    inc c
    ld c, h
    db $fd
    pop hl
    ld sp, hl
    ldh [rNR31], a
    inc c
    inc c
    push af
    ld [c], a
    inc l
    inc l
    or $e0
    ld hl, sp-$1b
    cp $ea
    add hl, de
    ld c, d
    cp a
    ldh [$c0], a
    db $eb
    ld a, [bc]
    ld l, d
    call z, $c2e1
    pop hl
    cp d
    pop hl
    ld [bc], a
    cp l
    pop hl
    ld c, h
    ret z

    db $e4
    ld hl, sp-$1b
    ret nz

    ld [$e0bf], a
    add b
    ld [$e07e], a
    ret nz

    add d
    push hl
    cp c
    ld [c], a
    ld a, [hl]
    db $e3
    db $76
    push hl
    ld l, [hl]
    ld [c], a
    ret nz

    db $eb
    ld c, d
    ld a, [hl+]
    add b
    ld b, b
    jp hl


    ccf
    pop hl
    ld e, l
    db $e3
    ld d, [hl]
    and $38
    db $e4
    ld hl, sp-$1a
    ret nz

    db $ed
    ld c, d
    rst $28
    dec bc
    dec bc
    ld l, e
    dec bc
    rst $38
    db $e3
    ld c, e
    dec hl
    ld c, d
    db $10
    ret nz

    push hl
    dec b
    ld [c], a
    cp b
    db $e4
    ld a, d
    ld [c], a
    inc l
    ld hl, sp-$1b
    rst $30
    ldh [$fb], a
    pop bc
    cp h
    ld sp, hl
    db $e3
    ret nz

    pop hl
    dec hl
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ld [c], a
    dec bc
    pop bc
    ld c, e
    cp a
    ld [c], a
    ret nz

    ret z

    ccf
    rst $20
    ret nz

    rst $20
    add b
    xor $2b
    dec hl
    db $ed
    dec hl
    ret nz

    pop hl
    dec hl
    dec hl
    ld a, a
    ldh [rWX], a
    ld c, e
    ld c, d
    ret nz

    ret nz

    jp nz, $c481

    ld a, b
    jp nz, $e40b

    ld b, c
    pop af
    ld b, b
    ld [c], a
    ld c, e
    dec bc
    db $fc
    cp a
    pop hl
    cp d
    ldh [$0b], a
    dec bc
    dec hl
    dec bc
    ld c, e
    dec bc
    pop bc
    ld c, d
    add b
    call nz, $c67c
    cp e
    jp nz, $e579

    ret nz

    rst $08
    ld a, [bc]
    ld a, [hl+]
    call nz, $e2bf
    ret nz

    and $0b
    adc $c5
    ret


    rst $20
    ret nz

    reti


    ld a, [bc]
    ld a, [hl+]
    dec b
    ld a, [hl+]
    cp a
    ld [c], a
    ld l, e
    ld a, e
    ld [c], a
    or a
    pop bc
    ld c, l
    ret


    ret nz

    rst $00
    ld a, a
    di
    nop
    pop bc
    ld [c], a
    cp a
    db $e3
    ret nz

    db $eb
    ret nz

    and l
    ld b, b
    db $d3
    cp e
    add $c1
    db $e3
    ld a, [hl]
    db $e4
    ld b, $80
    push hl
    ld c, h
    inc l
    push bc
    and e
    ld a, l
    jp $ed80


    ld a, a
    jp z, $e4c1

    ld [$e33d], sp
    ld a, $c0
    rst $30
    and b
    ld a, [bc]
    inc d
    ret nz

    ld b, c
    and a
    ld b, b
    add $c0
    db $fc
    nop
    cp e
    jp nz, $e2c1

    ret nz

    ldh [rSTAT], a
    and l
    adc h
    db $d3
    cp h
    and c
    cp d
    and l
    ret nz

    rst $20
    ret nz

    ld a, d
    ret nz

    pop bc
    db $e3
    ret nz

    pop hl
    reti


    db $ed
    ret nz

    rst $38
    ld a, d
    pop bc
    ld c, e
    dec bc
    ld bc, $346b
    add c
    call $81f2
    di
    ld [hl-], a
    and [hl]
    ld d, e
    and l
    ret z

    jp $ffc0


    nop
    ld a, [hl-]
    and l
    push de
    ld [hl], h
    rrca
    add h
    pop bc
    ld l, c
    ld l, d
    db $f4
    push de
    ld [hl], d
    adc a
    ld h, h
    db $ec
    db $eb
    inc b
    or a
    and [hl]
    jp nz, Jump_000_2cc1

    add b
    add h
    push de
    ld [hl], e
    adc b
    ld h, l
    db $ec
    db $ec
    ret nz

    ldh a, [rP1]
    push de
    ld [hl], e
    sbc c
    ld l, c
    pop bc
    ld h, [hl]
    cp a
    db $d3
    push de
    ld [hl], d
    ld a, [$c1e4]
    ld l, h
    ld b, e
    and a
    nop
    nop
    rst $00
    push de
    ld [hl], e
    adc a
    ld h, h
    pop bc
    ld l, h
    inc bc
    xor [hl]
    rst $38
    ret z

    push de
    ld l, l
    ld h, h
    ret z

    nop
    ld a, [bc]
    ld [hl], b
    ccf
    ret


    push de
    ld [hl], c
    adc a
    ld h, h
    pop bc
    ld l, e
    ld b, b
    or d
    push de
    ld [hl], e
    ret nz

    db $d3
    nop
    add b
    ld h, a
    db $fc
    ld c, c
    push de
    ld [hl], c
    ld c, [hl]
    ld h, [hl]
    pop bc
    ld l, c
    ld b, b
    ld c, b
    ret nz

    db $eb
    push de
    ld l, a
    nop
    rrca
    ld b, [hl]
    ld b, b
    set 7, a
    ld d, b
    push de
    ld [hl], e
    add a
    ld h, l
    pop bc
    ld l, d
    rst $20
    sub e
    push de
    ld [hl], d
    nop
    ld b, a
    ld h, h
    db $ec
    db $eb
    di
    ld [hl], h
    push de
    ld [hl], a
    pop bc
    ld l, [hl]
    or e
    ld [hl], e
    push de
    db $76
    pop bc
    halt
    dec sp
    daa
    rst $38
    rst $38
    add b
    ld [hl], l
    push bc
    adc l
    rst $38
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    ret nz

    xor $00
    sub l
    dec d
    adc b
    sub c
    add b
    ld [hl], h
    sub l
    ld de, $0949
    ld hl, $698f
    ld c, c
    ret nz

    sub e
    nop
    ld c, c
    dec bc
    ld h, c
    db $ed
    add hl, hl
    ld c, b
    ret nz

    sub h
    ld c, c
    dec bc
    ld hl, $3f8d
    db $ed
    sub l
    stop
    ld c, c
    add hl, bc
    ld h, c
    xor $7f
    ld c, [hl]
    call nc, Call_000_3a91
    xor b
    ld h, c
    rst $28
    ret nz

    sbc h
    or h
    rst $28
    nop
    ld h, c
    xor $c0
    sbc e
    ld [hl], h
    adc d
    ld hl, $c08f
    sbc [hl]
    ld [hl], h
    adc d
    ld h, c
    ld a, [c]
    call nc, Call_000_009b
    ld d, [hl]
    adc b
    ld hl, $6090
    cp a
    and e
    add hl, hl
    ld hl, $c095
    sbc a
    dec [hl]
    sbc a
    rst $38
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, [hl]
    ld a, [$f32a]
    ld c, h
    rst $20
    ld b, h
    rst $38
    rst $38
    ld l, d
    sub e
    nop
    ld a, e
    add [hl]
    rst $38
    rst $38
    ld a, h
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [$0000], a
    nop
    sbc a
    adc e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    adc b
    rst $38
    add sp, -$0f
    ldh [$8b], a
    ret


    nop
    rst $38
    rst $38

jr_05c_545a:
    rst $20
    and $4e
    cp a
    ldh [$c0], a
    db $eb
    adc e
    ld c, [hl]
    add b
    jp z, $c0ff

    add sp, -$41
    ldh [$80], a
    ld [$e06f], a
    jp z, $c0ff

    jp hl


    ld c, [hl]
    and c
    adc e
    ld b, b
    jp hl


    jr nc, jr_05c_545a

    jp z, $e8ff

    rst $20
    add a
    rst $38
    ldh [$60], a
    rst $28
    ld h, d
    ld b, a
    ld d, [hl]
    ld d, a
    cp $e0
    ld d, [hl]
    ld d, [hl]
    ld b, a
    di
    ld h, b
    adc h
    ret nz

    rst $38
    ret nz

    xor $61
    scf
    ld [hl], $30
    adc [hl]
    rst $38
    ld [c], a
    ld l, h
    ld [hl], $37
    cp a
    pop hl
    jp z, $c0ff

    db $ec
    ld c, l
    db $fd
    ld [hl-], a
    ret nz

    pop hl
    ld l, l
    ld l, l
    ld l, h
    ld l, h
    add hl, sp
    ld h, c
    db $d3
    ld e, e
    adc h
    ret nz

    rst $38
    ld b, b
    db $ed
    ld sp, $e1bf
    ld l, l
    ld l, l
    rst $38
    ld l, l
    ld l, b
    ld l, b
    ld d, d
    ld sp, $5b5f
    adc h
    db $ec
    jp z, Jump_000_00ff

    ld [$8e8d], a
    cp a
    ld [c], a
    ld l, l
    ld l, l
    ld l, d
    ld a, a
    ld l, h
    ld l, h
    ld d, e
    ld sp, $5b5e
    ld e, e
    jp z, $eeff

    ret nz

    ret


    adc l
    ld c, a
    ld c, a
    cp a
    ld [c], a
    ld l, e
    ld l, c
    ld l, e
    rra
    jr nc, jr_05c_5516

    ld d, d
    ld sp, $c061
    rst $38
    add b
    jp z, $e0c1

    inc b
    cp a
    db $e4
    ret nz

    pop hl
    ld d, e
    ret nz

    rst $38
    db $ec
    db $eb
    pop bc
    ld [c], a
    ld a, [hl]
    db $e4
    ld b, b
    rst $38
    cp b
    ldh a, [$ef]
    pop bc
    db $e3
    dec a
    db $e4
    ld l, b
    ld l, b
    add hl, sp
    ret nz

    ret nz

    adc [hl]
    ld hl, sp-$36
    rst $38
    ret nz

    rst $28
    db $fc
    jp nz, Jump_05c_553a

    ld c, c

jr_05c_5516:
    ld e, [hl]
    ld e, e
    jp Jump_05c_4f8e


    jp z, $c0ff

    ldh a, [$bb]
    pop bc
    rst $38
    ldh [$5f], a
    adc [hl]
    ld sp, hl
    ld c, a
    ret nz

    rst $38
    ret nz

    ld a, [c]
    ld c, a
    adc [hl]
    ld e, h
    ld e, l
    ld sp, $6001
    pop bc
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05c_553a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    jr nc, jr_05c_5659

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
    ld [hl], $56
    ld h, [hl]
    ld d, [hl]
    or e
    ld e, b
    sub b
    ld e, d
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    ldh [rNR10], a
    ret z

    ld [bc], a
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    sbc a
    ld [bc], a
    or $01
    ld d, e
    ld bc, $1b4b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05c_5659:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    dec sp
    ld a, [bc]
    dec bc
    rst $38
    rst $20
    ld c, h
    ld c, h
    inc c
    rst $38
    ld [c], a
    ld hl, sp-$20
    ret c

    db $fd
    ld [c], a
    ld sp, hl
    ldh [$f2], a
    db $e4
    inc l
    inc l
    push hl
    pop hl
    inc l
    inc l
    inc c
    ldh [$e3], a
    ld a, [$0be9]
    dec bc
    cp [hl]
    add sp, -$41
    db $e4
    call nz, $b3e2
    pop hl
    ld [hl], b
    db $fc
    ld [c], a
    or b
    pop hl
    ret nz

    ld sp, hl
    ld a, a
    ldh [rOCPD], a
    ld l, e
    ld c, e
    rst $38
    ldh [rLCDC], a

jr_05c_569d:
    cp a
    add sp, -$7e
    db $e3
    cp c
    ld [c], a
    ld [hl], b
    db $e3
    db $76
    ld [c], a
    add b
    di
    ld c, h
    pop bc
    ldh [rSB], a
    dec hl
    ld a, [hl-]
    ldh [$be], a
    ld [c], a
    dec a
    push hl

jr_05c_56b4:
    ld a, d
    ld [c], a
    rst $30
    push hl
    jr c, jr_05c_569d

    db $fd
    di
    ccf
    dec bc
    ld l, h
    inc c
    ld c, h
    dec hl
    dec bc
    add h
    pop hl
    cp [hl]
    pop hl
    nop
    db $fc
    pop bc
    ei
    push bc
    cp l
    push hl
    jr c, jr_05c_56b4

    ld [bc], a
    ldh [rP1], a
    db $e4
    ld a, [$f3c4]
    jp $0b71


    call $82c0
    pop hl
    cp a
    db $e3
    dec bc
    dec bc
    inc l
    inc de
    ldh [$e8], a
    rst $38
    jp nz, $c4c0

    or a
    db $dd
    ld l, h
    ret nz

    pop hl
    dec hl
    ld l, e
    ld l, e
    ld [c], a
    ld a, a
    push hl
    ld c, e
    ret nz

    pop hl
    pop bc
    jp hl


    or a
    sbc $4c
    inc c
    dec bc
    inc de
    dec hl
    dec hl
    rst $38
    jp nz, $e2c0

    inc l
    ret nz

    db $e3
    cp $e5
    or a
    db $dd
    adc $0c
    ret nz

    ld l, h
    inc l
    inc l
    cp [hl]
    ldh [$c0], a
    pop bc
    ld c, e
    dec hl
    ld b, b
    ld a, d
    ret nz

    adc $c7
    or $c8
    or a

jr_05c_5721:
    sub $e7
    and c
    and $c1
    dec hl
    push bc
    ldh [rDIV], a
    ret nz

    ldh [$37], a
    ret nz

    dec bc
    cp [hl]
    db $e4
    pop bc
    jp hl


    or a
    db $d3
    sub d
    and c
    db $10
    ldh [rP1], a
    ldh [$a2], a
    cp a
    ld [c], a
    ld sp, hl
    pop bc
    ld a, [hl]
    push hl
    ret nz

    and h
    ld [hl], a
    and l
    or $a7
    ld [hl], a
    jp nz, Jump_05c_7604

    and [hl]
    db $10
    ldh [$4c], a
    adc h
    pop bc
    dec a
    ldh [$b8], a
    and b
    ei
    jp $a050


    jr nz, jr_05c_5721

    and e
    ld a, b
    call $b0f8
    ld [$bda3], sp
    ldh [$0b], a
    cp a
    pop hl
    cp l
    jp Jump_000_2a00


    pop hl
    add c
    and $b8
    push bc
    ld [$fe84], a
    adc l
    ld c, c
    and c
    add b
    db $e3
    ret nz

    jp hl


    nop
    ld b, c
    xor b
    or a
    ret


    ld [hl], a
    and a
    db $fd
    add $08
    and c
    inc c
    ret nz

    ld a, a
    pop hl
    ret nz

    jp hl


    db $10
    sbc l
    and [hl]
    inc b
    and l
    or [hl]
    add l
    ret nz

    db $ed
    ld a, [bc]
    ld [$ffa1], sp
    add $c0
    db $ec
    nop
    or a
    ret


    add b
    db $ed
    db $e3
    add a
    adc l
    adc b
    ei
    push hl
    cp h
    add [hl]
    or a
    push bc
    inc bc
    db $e4
    nop
    add b
    add sp, -$66
    add [hl]
    push de
    ld a, d
    or a
    add $bc
    add e
    cp a
    ret nc

    ld e, $bc
    ret nz

    db $eb
    ld [bc], a
    adc c
    and a
    inc l
    ld a, c
    add h
    ld e, $bf
    sub c
    call nz, $edef
    add hl, sp
    add l
    push de
    ld [hl], l
    nop
    ld hl, sp-$36
    ld [$b06e], sp
    ld [$72d5], a
    ld b, c
    ld h, e
    ret nz

    cp $1e
    or [hl]
    dec c
    xor $00
    dec a
    ld [hl], h
    ld e, $b5
    ld c, l
    ld d, a
    ld b, b
    db $eb
    ld e, $b5
    ret nz

    rst $38
    and e
    ld c, c
    ld e, $b0
    nop
    ld c, l
    ld d, c
    db $e3
    rst $20
    ccf
    ld [$b11e], a
    inc de
    di
    ret nz

    ld a, [c]
    ld e, $b3
    add hl, bc
    pop de
    nop
    pop bc
    ret nc

    ld e, $b6
    ret nz

    rst $38
    ld e, $bf
    rst $38
    rst $38
    ld e, $b6
    rst $38
    rst $38
    ld e, $bb
    nop
    pop de
    db $fd
    call c, $92ff
    ei
    sbc d
    dec c
    rst $38
    rst $38
    add c
    rst $38
    ldh [$d9], a
    ld hl, $0099
    db $dd
    sbc l
    ccf
    add hl, sp
    rst $38
    rst $38
    ccf
    dec sp
    ld b, c
    rst $38
    ccf
    ld [hl-], a
    add l
    ld l, [hl]
    dec c
    or a
    nop
    ccf
    dec sp
    add b
    rst $38
    ccf
    dec sp
    cp a
    rst $38
    ccf
    ld [hl-], a
    rst $38
    rst $38
    ld hl, $ff9f
    rst $38
    nop
    ccf
    scf
    ld l, e
    sbc h
    call c, Call_000_3f65
    ld [hl], $ee
    ld a, a
    dec a
    ld h, e
    ld hl, $5d9f
    ld l, [hl]
    nop
    ld [hl], d
    nop
    cp d
    add sp, $21
    sbc a
    sub e
    xor a
    xor h
    ld b, c
    add a
    db $e3
    ld hl, $3a9f
    cp $00
    rst $38
    rst $38
    push de
    ld [de], a
    cp a
    rst $38
    dec [hl]
    ld c, a
    ld c, e
    xor c
    ccf
    db $ec
    rst $38
    rst $38
    ld sp, hl
    ret nc

    nop
    ret nz

    rst $38
    sbc h
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
    xor $00
    nop
    nop
    cp e
    ld e, d
    ld e, e
    rst $38
    ldh [$5c], a
    ld e, l
    ld sp, $e1ff
    add hl, hl
    dec sp
    daa
    jr nz, @+$01

    ldh [rNR50], a
    inc h
    nop
    rst $38
    rst $38
    rst $20
    and $27
    ld e, e
    ld e, e
    ld e, d
    jp nz, $bfe4

jr_05c_58d1:
    and $20
    jp z, $e8ff

    rst $20
    rst $38
    ld h, d
    ld h, d
    ld h, d
    ld sp, $4731
    dec sp
    ld d, h
    rst $00
    ld d, l
    dec sp
    ld b, a
    ld a, [hl]
    and $ca
    rst $38
    add sp, -$19
    ld sp, $ff31
    inc b
    ld sp, $3649
    jr nc, jr_05c_5923

    ld l, l
    ld l, l
    pop hl
    ld [hl], $be
    pop hl
    dec a
    ld [c], a
    jp z, $c0ff

    add sp, $15
    ld d, $0f
    db $fd
    ld d, c
    pop bc
    pop hl
    ld l, l
    ld l, l
    jr nc, @+$38

jr_05c_590a:
    ld c, c
    ld sp, $31e7
    rla
    jr z, jr_05c_58d1

    rst $38
    add b

jr_05c_5913:
    ld [$2817], a
    nop
    dec a
    ld d, b
    ret nz

    db $e3
    ld l, l
    jr nc, jr_05c_5957

    ld sp, $e0b1
    ret nz

    rst $38

jr_05c_5923:
    ld c, h
    ld [$d0e9], a
    ldh [rP1], a
    scf
    ld b, b
    ld [c], a
    ld a, l
    ldh [rOBP0], a
    ld a, a
    db $e3
    ld a, b
    jp z, $e8ff

    rst $20
    pop de
    pop hl
    ld sp, $4647
    ld [hl], $ff
    ret nz

    sub a
    jr nc, @+$32

    ld l, d
    ld a, a
    pop hl
    daa
    ret nz

    rst $38
    ret nz

    db $eb
    jr z, jr_05c_590a

    ld [de], a
    ld de, $4731
    ld [hl-], a
    jr nc, jr_05c_5913

    ldh [$67], a
    ccf
    ld d, d
    and l

jr_05c_5957:
    ld [hl], b
    ld sp, $0404
    jp z, Jump_05c_40ff

    ld [$20ff], a
    ld [hl+], a
    ld hl, $1112
    ld c, l
    ld [hl-], a
    ld l, d
    rst $38
    ld l, d
    ld h, a
    ld h, a
    ld d, e
    add b
    xor [hl]
    ld [hl], b
    ld sp, $31f1
    jp z, $c0ff

    jp z, $a08b

    ld [hl+], a
    ld hl, $4901
    ccf
    ld c, b
    ld h, a
    ld h, a
    ld b, d
    ld [hl], d
    add b
    cp a
    pop hl
    jp z, $f6ff

    ld b, b
    ret


    inc d
    dec b
    ld c, d
    and b
    inc l
    ld bc, $3c31
    add e
    ld d, h
    ld d, h
    pop bc
    ldh [$bf], a
    pop hl
    jp z, $c0ff

    xor c
    inc c
    jp nz, Jump_000_0f16

    dec d
    ld sp, $a131
    jp nz, $bfe1

    pop hl
    jp z, $e8ff

    rst $20
    inc l
    push bc
    add c
    inc c
    ret nz

    jr z, jr_05c_59cc

    ret nz

    rst $20
    add b
    jp z, $c0ff

    adc c
    ld hl, $7f60
    push hl
    ret nz

    rst $38
    pop af
    ldh a, [rLCDC]
    add b
    ld h, b
    ld a, a
    db $e4
    ret nz

    rst $38
    nop

jr_05c_59cc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_05c_5aef

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
    call z, $fc5a
    ld e, d
    inc c
    ld e, l
    xor h
    ld e, [hl]
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    ldh [rNR10], a
    ret z

    ld [bc], a
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    sbc a
    ld [bc], a
    or $01
    ld d, e
    ld bc, $1b4b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05c_5aef:
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
    ldh a, [$0c]
    inc c
    inc c
    ld c, h
    ld c, h
    inc c
    ld de, $f94c
    ldh [rIE], a
    rst $38
    ret nz

    ldh a, [rOCPS]
    pop bc
    ldh [$be], a
    ld [c], a
    cp l
    rst $38
    and [hl]
    ret nz

    pop af
    ld l, d
    ld l, d
    ret z

    ld [c], a
    ld a, [hl]
    ldh [$2c], a
    ret nz

    ld [c], a
    inc l
    and c
    inc l
    ret nz

    rst $38
    pop bc
    ld [$e080], a
    ld b, b
    ld [c], a
    inc l
    ret nz

    ld [c], a
    inc l
    ld a, d
    ret nz

    ei
    dec bc
    rst $38
    ldh [rOCPD], a
    dec bc
    dec bc
    ld c, e
    ei
    ld [c], a
    rrca
    dec hl
    dec hl
    dec bc
    ld c, d
    ret nz

    ld [c], a
    ld b, b
    ld [c], a
    ret nz

    push hl
    dec sp
    add sp, -$30
    ld [hl], h
    jp hl


    ld l, c
    db $e3
    pop bc
    pop hl
    ret nz

    pop hl
    ld l, e
    rst $38
    ldh [rWX], a
    ld c, e
    rlca
    dec bc
    dec hl
    ld c, e
    cp a
    ldh [rLCDC], a
    push hl
    nop
    ld [c], a
    call Call_000_34ea
    rst $28
    ld hl, $826b
    pop hl
    cp l
    ldh [$fe], a
    ld [c], a
    cp a
    ldh [rWX], a
    ld a, [hl]
    ldh [$ca], a
    pop bc
    ret nz

    ld a, a
    jp nc, $d0f5

    ret nz

    db $e3
    ld a, [hl-]
    ld [c], a
    ld a, l
    ldh [$37], a
    pop hl
    dec bc
    ld c, d
    nop
    ld b, b
    pop bc
    ld a, a
    jp $e102


    add b
    ld [$f000], a
    adc $e0
    cp a
    and $b5
    ld [c], a
    ld bc, $c50a
    db $e3
    ret nz

    ldh a, [$31]
    ret nc

    dec c
    pop hl
    ld a, a
    and $c1
    db $e3
    ret nz

    ldh [rNR23], a
    ret nz

    or d
    or h
    ld a, [c]
    call z, Call_05c_6bc0
    dec hl
    ccf
    db $e4
    ld [hl], l
    jp nz, $a280

    ld [hl], b
    add c
    and c
    ret nz

    ld a, [$a6ec]
    ld b, l
    ret nz

    ld c, e
    dec hl
    ld c, e
    rst $38
    db $e3
    db $10
    pop bc
    db $e4
    ld b, b
    and c
    ccf
    cp a
    ld b, b
    or h
    ld a, [hl+]
    nop
    and h
    ret nz

    call nz, $feff
    ld bc, $ff2a
    db $ec
    cp a
    pop hl
    add b
    rst $38
    ld l, c
    rst $00
    ret nz

    xor $7e
    ldh [$c3], a
    add h
    inc c
    ret nz

    rst $38
    ret nz

    ld a, [c]
    ld a, [bc]
    ld a, [hl+]
    ld b, b
    ret z

    rst $38
    cp $99
    push bc
    adc [hl]
    jp nz, $fb00

    rst $20
    rst $00
    rst $38
    cp [hl]
    jp hl


    ld d, b
    add h
    jp z, Jump_05c_7fff

    pop af
    push de
    ld h, [hl]
    adc $7f
    nop
    di
    adc e
    pop bc
    push hl
    ld a, [hl]
    add sp, -$32
    ld a, a
    ld b, b
    adc l
    push de
    ld h, h
    adc $74
    add h
    ld a, b
    nop
    pop bc
    and $d5
    ld h, d
    adc $73
    add h
    ld a, c
    ld a, [hl+]
    ld h, h
    ld b, b
    db $eb
    adc $6c
    dec b
    ld h, [hl]
    nop
    jp hl


    jp c, $d77f

    ret nz

    ld sp, hl
    xor d
    ld b, [hl]
    ld a, a
    rrc [hl]
    sub e
    ret nz

    rst $30
    push de
    ld h, h
    nop
    adc $7f
    ld bc, $c7d6
    and d
    adc $73
    rst $38
    rst $38
    push de
    ld h, [hl]
    ld c, d
    cp a
    ret nz

    rst $18
    nop
    ld a, a
    rst $38
    ccf
    cp a
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ccf
    adc h
    db $fc
    rst $00
    rst $38
    rst $38
    nop
    nop
    sub c
    ld b, b
    ret


    rst $38
    rst $38
    ret nz

    ld [hl], c
    push bc
    rst $38
    ld a, d
    sbc e
    call $ffbf
    rst $38
    nop
    rst $38
    rst $38
    sbc l
    rst $18
    dec de
    ret c

    xor e
    dec d
    add a
    rst $18
    ld a, [de]
    and e
    db $dd
    sub [hl]
    ld l, d
    ld a, [$6800]
    ld b, e
    xor [hl]
    inc b
    ld b, c
    pop af
    push de
    inc a
    dec hl
    ld b, c
    db $fc
    ld [c], a
    xor e
    inc d
    rlca
    call c, Call_05c_6400
    and l
    ld d, [hl]
    or $05
    rst $38
    ld a, [hl+]
    ld b, h
    db $dd
    sub h
    rlca
    sbc $44
    and $40
    rst $18
    nop
    ld hl, $6631
    ld b, b
    add hl, hl
    inc h
    db $dd
    sbc a
    sub [hl]
    ld [de], a
    add c
    and $dd
    sbc a
    jr nc, jr_05c_5ccf

    nop
    call $87e0
    rst $20
    ld b, d
    jp nz, $ff85

    sub [hl]
    ld c, d
    add hl, de
    ld [c], a
    add a
    db $e3
    or [hl]
    jr z, jr_05c_5cbd

jr_05c_5cbd:
    db $dd
    sbc a
    rlca
    pop af
    rst $38
    rst $38
    call z, $ca2e
    inc hl
    cp a
    rst $38
    ccf
    ret c

    ccf
    rst $28
    nop
    rst $38

jr_05c_5ccf:
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
    ccf
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
    ld b, b
    inc de
    nop
    nop
    nop
    adc l
    adc b
    rst $38
    rst $28
    adc e
    nop
    rst $38
    rst $38
    rst $20
    and $c1
    ldh a, [$4e]
    inc c
    jp z, $c0ff

    ld hl, sp-$75
    ld c, [hl]
    ret nz

    rst $38
    add b
    ld hl, sp-$3f
    ldh [$c0], a
    rst $38
    cp $e9
    add sp, $5b
    ld e, e
    ld e, h
    ld e, l
    ld b, a
    ld d, [hl]
    ld d, [hl]
    rst $38
    ld b, a
    ld sp, $5647
    ld d, a
    ld c, l
    ld e, l
    ld e, h
    di
    ld e, e
    adc h
    ret nz

    rst $38
    ret nz

    db $eb
    ld h, b
    ld sp, $363c
    rst $38
    ld l, l
    jr nc, jr_05c_5d80

    ld d, h
    ld [hl], $6d
    ld l, d
    ld [hl-], a
    rst $00
    ld c, l
    ld sp, $bf60
    pop hl
    jp z, $e8ff

    rst $20
    ld e, a
    ld sp, $497f
    ld b, d
    ld l, l
    ld l, l
    jr nc, jr_05c_5d92

    ld l, l
    rst $38
    ldh [$e2], a
    cp a
    pop hl
    ld e, a
    ld a, [hl]
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld e, [hl]
    ld sp, $f539
    ld l, d
    call nz, Call_000_30e0
    cp [hl]
    ld [c], a
    ld l, d
    ld d, c
    ld sp, $e75e
    ld e, e
    ld e, e

jr_05c_5d80:
    adc h
    jp z, $e8ff

    rst $20
    ld sp, $5231
    ld e, c
    ld h, a
    cp a
    pop hl
    ld a, l
    ld [c], a
    ld l, d
    ld d, b
    ret nz

    pop hl

jr_05c_5d92:
    cpl
    jp z, $b4ff

    add sp, -$19
    ld bc, $4ce0
    cp a
    db $e4
    ld l, l
    ld l, l
    ld b, b
    ld [c], a
    cpl
    ld a, c
    adc d
    jp z, $c0ff

    jp z, Jump_000_323e

    ld h, a
    ld l, d
    inc a
    ldh [$c5], a
    jr nc, @-$3d

    pop hl
    ld h, b
    pop bc
    ldh [$c0], a
    rst $38
    ld b, b
    call z, $564d
    ld b, l
    ld d, a
    cp $e1
    ld d, a
    pop bc
    db $e4
    ret nz

    rst $38
    jp hl


    add sp, $09
    rst $38
    db $ec
    ld c, a
    adc a
    ld c, a
    ld c, a
    ld c, a
    jp z, $e8ff

    rst $20
    adc c
    rst $38
    db $ec
    add c
    ld c, a
    cp a
    ldh [$ca], a
    rst $38
    ret nz

    ld hl, sp-$41
    ldh [$ca], a
    rst $38
    ret nz

    ld sp, hl
    ld c, a
    ld bc, $ca8f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, jr_05c_5f0b

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
    add sp, $5e
    jr @+$61

    jr nz, jr_05c_5f47

    add $62
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    ldh [rNR10], a
    ret z

    ld [bc], a
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    ret nz

    ld a, l
    ldh [$7f], a
    ld l, a
    ld de, $1b4b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05c_5f0b:
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
    rst $20
    inc l
    dec bc
    dec bc
    dec bc
    ld l, e
    ld l, e
    ret z

    ei
    ldh [$ec], a
    and $f6
    ldh [$2c], a
    db $fc
    pop hl
    db $e4
    ldh [$2c], a
    ld c, h
    adc a
    inc c
    ld c, h
    ld c, h
    ld c, h
    jp nc, $f5e8

    pop af
    pop bc
    db $e3
    dec bc
    ldh a, [$d6]
    push hl
    or [hl]
    pop hl
    ret nz

    and $c5
    db $fc
    inc c
    inc c

jr_05c_5f47:
    ld l, h
    ld l, h
    nop
    pop bc
    db $e4
    add b
    and $c0
    ld [c], a
    ld h, h
    db $e4
    jp nz, Jump_05c_43ff

    db $e4
    ld b, b
    db $e4
    ld d, b
    pop hl
    ld a, b
    ld a, a
    add sp, $46
    db $fd
    add h
    pop hl
    ld c, e
    ld l, e
    ld c, e
    dec hl
    ret nz

    rst $20
    and d
    rst $20
    ret nz

    ld c, h
    ccf
    add sp, $06
    rst $28
    ld l, $ea
    ld l, h
    pop bc
    ldh [rWX], a
    rra
    ld l, e
    ld l, e
    dec hl
    dec hl
    ld c, e
    ret nz

    jp nz, $c4d6

    ccf
    and $14
    or a
    ld a, [$e381]
    ld c, e
    ret nz

    pop hl
    ld l, e
    pop bc
    pop hl
    add b
    rst $00
    ld l, c
    jp $8614


    ret nz

    ret nz

    rst $38
    dec bc
    ret nz

    ld [c], a
    dec hl
    ccf
    ld [c], a
    push bc
    add $4c
    jp nz, $86e8

    pop bc
    or [hl]
    ret z

    dec a
    jp nc, $c12c

    pop hl
    ld c, e
    dec hl
    dec hl
    add e
    dec hl
    ld l, e
    inc bc
    jp $c352


    ld c, h
    call z, $a2fd
    ret nz

    push af
    dec hl
    ret nz

    ret nz

    db $e3
    jp $14a2


    push bc
    inc c
    rst $00
    ld [hl], a
    and $bf
    or h
    ld c, h
    inc l
    ld l, b
    add $c0
    add b
    ldh [$84], a
    and b
    ld l, h
    ld b, h
    pop bc
    ld c, e
    ld c, e
    sub e
    and b
    inc [hl]
    sub d
    cp c
    or c
    xor h
    ld c, h
    ld a, a
    ldh [$2b], a
    dec bc
    ld b, d
    pop bc
    ret nz

    ld [c], a
    ret c

    add [hl]
    and d
    rst $00
    rst $38
    add b
    add sp, $4c
    inc l
    ld [bc], a
    and b
    dec hl
    dec hl
    nop
    ld a, d
    and c
    pop de
    and d
    ei
    add c
    cp e
    rst $30
    ret nz

    ldh a, [$be]
    pop hl
    jp nz, Jump_05c_4ce3

    or c
    nop
    ld bc, $bddc
    push hl
    ld [hl], a
    add l
    ld bc, $f7ee
    add [hl]
    cp c
    sbc a
    scf
    add e
    ld d, b
    or c
    jr nz, @+$40

    add c
    ret nz

    db $f4
    ld h, c
    add b
    dec de
    add c
    sub c
    add h
    inc l
    ld bc, $41ef
    db $db
    nop
    rla
    rst $38
    sub a
    rst $00
    add $cf
    ld sp, hl
    add sp, $18
    cp l
    add c
    cp $c4
    rst $38
    rst $20
    db $d3
    nop
    adc $6f
    rst $38
    rst $38
    rst $30
    ld l, h
    adc $79
    or a
    ld [hl], a
    nop
    db $eb
    ld d, a
    sub l
    ld [hl], a
    ld [hl], a
    ld hl, $f94b
    ld [$e92f], a
    cp b
    ld l, c
    jr c, jr_05c_60c7

    dec bc
    ld e, d
    ld b, l
    adc $6c
    inc b
    rlca
    ld l, e
    cp b
    ld d, a
    dec bc
    sub $c3
    ld sp, hl
    db $e4
    ret


    ret


    ret nz

    db $ed
    or a
    rst $18
    nop
    ret nz

    db $ec
    nop
    rst $38
    ld e, h
    ld b, c
    push de
    ld h, e
    adc $6e
    ld b, [hl]
    ld c, e
    scf
    ld e, b
    ld de, $0024
    adc d
    ld c, l
    ret nz

    ldh a, [rLYC]
    ld [hl], h
    push de
    ld h, d
    adc $6e
    jp z, $c030

    ld e, c
    ld a, [de]
    ld [hl-], a
    nop
    ld b, $46
    ret nz

    ld e, b
    sub $44
    rst $08
    ld c, a
    adc a
    ld c, c
    add h
    ret c

    ld bc, $cbf4
    ld e, a
    ld [bc], a
    ld bc, $0bea
    rst $08
    ld d, [hl]
    scf
    ld e, l
    xor a
    ld a, a
    rst $38
    rst $38
    xor $7d
    scf
    ld e, a
    nop
    ld l, d
    cp a
    rst $38
    rst $38
    add hl, hl
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld c, a
    ld bc, $00fa
    db $e4
    rst $18
    ld de, $0031
    adc $cc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05c_60c7:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    db $e3
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05c_6108:
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
    rst $38
    nop
    ld b, b
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    rst $20
    ld e, $21
    ld hl, $6021
    sbc [hl]
    rla
    ld [hl], b
    ld [hl], b
    ld [hl], b
    db $ec
    and $90
    db $fc
    db $e4
    rst $38
    rst $38
    cp c
    pop hl
    sub e
    ld bc, $c11f
    db $e3
    ret nz

    and $90
    ret nz

    rst $38
    jp nz, $19e8

    ld b, c
    jr jr_05c_6108

    db $e4
    ret nz

    db $eb
    rst $38
    rst $38
    jp nz, $c1e5

    push hl
    sbc [hl]
    ld b, b
    rst $20
    db $fc
    ld a, a
    rst $38
    nop
    db $e4
    add hl, bc
    ld hl, $2a3d
    ld b, h
    ld b, h
    bit 3, [hl]
    ld l, c
    pop bc
    pop hl
    ld h, b
    ret nz

    rst $38
    dec b
    xor $08
    dec a
    ld a, a
    ld [hl+], a
    ld e, l
    ld e, h
    ld e, l
    ld e, l
    ld h, c
    ld l, c
    pop bc
    ldh [$f1], a
    ld hl, $ebc0
    or a
    rst $38
    add c
    pop hl
    add hl, hl
    ld e, l
    ld e, d
    ld e, b
    rrca
    ld e, d
    ld e, l
    ld e, l
    ld [hl], e
    pop bc
    ldh [$c0], a
    rst $20
    ld [hl], a
    rst $38
    ld b, c
    call nz, Call_000_08ef
    ld hl, $5a43
    add b
    ldh [$5a], a
    ld e, e
    ld b, e
    ldh [$c1], a
    ldh [$80], a
    pop hl
    push bc
    call z, $ddb6
    ret nz

    ldh [$5d], a
    jr nz, jr_05c_61c5

    rst $38
    ld e, e
    ld e, c
    ld e, e
    ld b, e
    ld hl, $1b08
    dec de
    ld [hl], h
    db $10
    rst $38
    ld b, b
    ldh a, [rNR41]
    ret nz

    ld [c], a
    add hl, hl

jr_05c_61b7:
    ld hl, $d209
    rst $38
    inc a
    ret nz

    db $d3
    add b
    pop hl
    ld [hl+], a
    dec a
    ld [$5001], sp

jr_05c_61c5:
    rst $38
    ld b, b
    sub $e3
    ld a, [hl+]
    dec a
    add c
    db $e4
    ret nz

    rst $38
    ret nz

    or c
    ld hl, $1821
    ld bc, $8119
    ld [c], a
    adc a
    jp $ffbb


    ld b, b
    xor h
    jp nz, Jump_05c_40e6

    rst $08
    cp b
    cp a
    nop
    ld d, c
    jp c, $ffc4

    ld de, $ffdf
    rst $38
    sub b
    xor e
    cp e
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    nop
    jr jr_05c_61b7

    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    rst $30
    xor c
    rst $38
    ld b, b
    ccf
    ei
    ret nz

    rst $30
    xor e
    db $e4
    and h
    ldh a, [$f4]
    ret


    add c
    rst $30
    sub b
    ld h, h
    push hl
    nop
    push bc
    rst $08
    ret nz

    rst $38
    add b
    ld a, [$edc0]
    rst $38
    rst $38
    xor c
    rst $18
    adc $d7
    ld b, $cd
    nop
    adc a
    set 0, b
    rst $38
    ret nz

    rst $38
    call nc, $cd9a
    adc [hl]
    ld c, $ff
    rst $38
    rst $38
    ld l, $bf
    nop
    ld b, c
    or $ff
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    push de
    ld l, b
    adc $75
    xor b
    rst $38
    xor a
    ld a, a
    nop
    rst $38
    rst $38
    ld [hl], $7f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld b, [hl]
    adc d
    ld bc, $e4fa
    rst $18
    sbc a
    rst $18
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, e
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
    jr nc, jr_05c_631d

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
    ld a, [$2a62]
    ld h, e
    dec h
    ld h, [hl]
    xor $67
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    ldh [rNR10], a
    ret z

    ld [bc], a
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    sbc a
    ld [bc], a
    or $01
    ld d, e
    ld bc, $1b4b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05c_631d:
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
    ldh [$2b], a
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    dec hl
    rst $10
    dec bc
    dec hl
    dec bc
    rst $38
    ldh [$0a], a
    ei
    ldh [$0c], a
    ld c, h
    add c
    ld c, h
    db $fd
    ldh [$fe], a
    ldh [$fa], a
    ld [c], a
    sbc $e1
    db $fc
    ei
    pop bc
    ldh [$0b], a
    rrca
    dec hl
    ld c, e
    dec hl
    dec hl
    cp a
    ld [c], a
    ret nz

    jp hl


    cp c
    ldh [$a0], a
    ldh [$c6], a
    or l
    cp $2b
    dec bc
    ret nz

    ldh [$bf], a
    ldh [$7e], a
    ld [c], a
    dec hl
    dec bc
    dec b
    ld a, [bc]
    call z, Call_000_2ce1
    add h
    db $e3
    add d
    ldh [$bd], a
    db $e4
    or l
    db $e4
    ld [hl], d
    db $ed
    ret c

    ld h, c
    pop hl
    ld b, a
    ldh [$83], a
    ldh [$2b], a
    ld c, e
    add c
    db $e3
    dec hl
    dec bc
    add d
    call z, Call_000_2ce1
    ld b, [hl]
    ld [c], a
    ld b, b
    db $e4
    push af
    db $e3
    or l
    db $e3
    ld sp, $6cec
    ld a, b
    add b
    ld [c], a
    ld b, h
    pop hl
    cp $c0
    dec bc
    dec bc
    ld l, h
    ld c, h
    ld a, [hl]
    ldh [$38], a
    adc l
    and $cf
    db $e4
    or l
    ld [$0c0c], a
    inc l
    xor $c3
    ld sp, hl
    db $e4
    db $10
    cp a
    ldh [$83], a
    pop hl
    dec a
    pop hl
    push bc
    pop bc
    inc c
    cp a
    ldh [$5d], a
    rst $28
    cp e
    add $0e
    or d
    adc $6c
    ld l, h
    inc c
    add a
    ret nz

    push bc
    jp nz, $c080

    ld [hl], d
    ldh [$03], a
    ld c, h
    ld c, h
    add b
    pop bc
    ld a, a
    res 0, a
    db $e4
    ccf
    pop af
    ld d, l
    ret nz

    call nz, Call_000_07c0
    ld l, e
    ld l, e
    ld l, e
    ret nz

    ld [c], a
    ld c, b
    push hl
    rst $10
    jp $c33e


    ld [hl-], a
    call nz, $b500
    add sp, $2e
    ret


    call $bfc4
    pop hl
    ret nz

    push hl
    dec c
    db $e4
    ld a, $c4
    pop bc
    and $cc
    or l
    db $e4
    pop af
    xor h
    ld c, e

Call_05c_6400:
    ld c, e
    adc c
    ret nz

    ld b, $c0
    ld l, e
    dec hl
    dec b
    ld l, e
    add b
    db $e4
    inc c
    add b
    pop bc
    ld b, $c4
    ld e, h
    push hl
    or l
    rst $20
    or d
    xor l
    nop
    ld [$7ee3], sp
    jp nz, $e340

    ld l, [hl]
    ldh [$0a], a
    jp nz, $e709

    ld b, $e9
    ld h, [hl]
    and b
    ret z

    add c
    jp nz, $c47c

    ld b, b
    ldh [$0a], a
    ret nz

    ld [c], a
    rst $38
    ld [c], a
    dec bc
    dec bc
    ld b, $f2
    pop bc
    dec bc
    ld l, e
    ccf
    push hl
    inc sp
    and $b5
    db $eb
    nop
    xor $c7
    and c
    ld b, $43
    and [hl]
    dec bc
    ld l, e
    ret nz

    and c
    add c
    and l
    cp [hl]
    add $e8
    add $c0
    pop de
    inc e
    add [hl]
    and h
    or [hl]
    ldh [rWX], a
    ld c, e
    ld l, e
    ld b, b
    and b
    add c
    and a
    add h
    and l
    add b
    or l
    and $c4
    and h
    rst $38
    ldh [$80], a
    add $8d
    add b
    cp d
    ret nz

    db $fd
    pop hl
    ld l, e
    nop
    cp l
    add e
    nop
    db $e3
    ret nz

    jp hl


    dec a
    xor c
    ld l, [hl]
    add c
    ret nz

    rst $20
    ld d, b
    add c
    db $fd
    add sp, $00
    pop af
    ld [c], a
    ld c, [hl]
    add a
    sbc b
    db $e4
    ld [hl], l
    add sp, $6e
    add d
    add c
    rst $20
    xor [hl]
    add [hl]
    inc de
    add l
    ld b, b
    add hl, bc
    add h
    ld c, e
    adc a
    call z, $c0e8
    db $ec
    push de
    ld h, b
    ld d, d
    add l
    inc l
    ld c, b
    adc b
    nop
    ld c, e
    sub [hl]
    xor [hl]
    ld l, d
    ld e, l
    and e
    ld d, d
    add h
    and l
    add b
    or $e5
    rst $38
    ret z

    call z, Call_000_00cc
    ld bc, $3ee5
    rst $20
    pop de
    add $53
    add a
    rst $00
    ld h, h
    ld b, b
    ld [hl], b
    xor [hl]
    ld h, c
    ret nz

    jp hl


    nop
    ld e, e
    ld h, h
    xor c
    ld [hl], b
    ld c, e
    adc b
    db $fc
    adc l
    ld b, b
    rst $00
    ld l, c
    add h
    ld [de], a
    ld h, l
    rst $00
    ld b, l
    nop
    cp l
    jp hl


    ld a, b
    ld h, h
    db $fc
    adc c
    or e
    ret


    ld d, d
    adc b
    ld d, c
    ld h, [hl]
    rla
    call nz, $8600
    nop
    or c
    adc h
    ret nz

    call z, $a753
    di
    add sp, $7b
    add h
    ld b, d
    xor b
    or c
    adc b
    inc sp
    ret


    nop
    call nc, Call_000_2249
    ld h, c
    add d
    rst $20

Jump_05c_64ff:
    ld c, e
    adc b
    or c
    adc h
    ret nz

    db $eb
    call nc, Call_05c_4246
    add sp, $00
    sub h
    and [hl]
    rst $38
    ld [hl+], a
    or c
    adc h
    ld b, c
    add a
    db $ec
    ld [hl], d
    adc d
    add $c3
    ld b, [hl]
    or c
    adc e
    nop
    ld bc, $df88
    inc hl
    ld d, e
    dec h
    rst $00
    ld c, b
    db $fd
    and h
    ld a, a
    ret z

    ld sp, hl
    ld [hl], $82
    ret z

    nop
    jp nz, Jump_05c_4b46

    sub c
    ld c, c
    adc $7f
    inc hl
    push de
    ld l, l
    dec d
    adc b
    inc c
    ld [hl], h
    ld b, b
    jp z, $d500

    ld l, l
    add hl, de
    jp hl


    dec bc
    adc c
    jr c, @+$4a

    and e
    dec l
    ret nz

    or $cc
    add a
    or a
    ld l, e
    nop
    ld a, a
    ld h, c
    add hl, hl
    dec c
    db $ec
    ld l, b
    add hl, de
    rst $28
    ret nz

    db $ed
    ret nz

    ld l, b
    ld b, d
    call nc, Call_000_2c14
    nop
    rrca
    ld h, h
    ld [$0265], sp
    xor c
    db $e4
    jr z, @+$0b

    adc l
    db $e4
    or [hl]
    jp nz, Jump_05c_4b88

    push bc
    nop
    call nz, Call_05c_498a
    ld h, l
    ld a, [$14e9]
    sub e
    sbc $ed
    ld d, h
    db $10
    scf
    adc e
    ld sp, hl
    or c
    nop
    dec d
    adc d
    db $eb
    ld l, e
    add d
    dec bc
    ld [bc], a
    adc a
    ld h, b
    rrca
    jp nc, $82e9

    ld c, $55
    ld [hl], c
    nop
    sbc $ec
    jp nc, Jump_000_37eb

    dec c
    ret nz

    pop af
    sbc $eb
    ld d, h
    ld a, [bc]
    add [hl]
    ld l, [hl]
    ld a, $0e
    nop
    ld h, h
    ld [hl], b
    add hl, bc
    add l
    ld b, a
    daa
    ld a, [c]
    ld [$4e71], a
    ld h, h
    ld l, c
    db $f4
    ld [$6e86], a
    nop
    rst $38
    call nc, Call_000_0960
    ld e, b
    ld l, d
    scf
    dec c
    ld [hl], d
    sub b
    ld b, b
    adc a
    ld e, b
    ld h, [hl]
    inc [hl]
    jr nz, jr_05c_65c5

jr_05c_65c5:
    add [hl]
    ld l, l
    or c
    jr nc, jr_05c_660a

    adc h
    db $f4
    ld [$0d37], a
    sub a
    ld [hl-], a
    ret nz

    rst $30
    ld h, d
    sub d
    nop
    db $ed
    sub [hl]
    ld h, b
    ld c, $03
    cpl
    ld e, e
    sbc e
    and a
    db $d3
    cp l
    db $fc
    ld l, c
    ld a, [c]
    inc e
    ld b, d
    nop
    jp nz, Jump_05c_69ff

    ei
    ret nz

    rst $38
    rst $28
    call c, $ffdc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_05c_660a:
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_05c_6648

    jr nz, jr_05c_662a

jr_05c_662a:
    ld sp, $4647
    ld d, h
    ld e, a
    inc a
    ld sp, $6031
    ld e, e
    rst $38
    ldh [$5a], a

jr_05c_6637:
    ei
    ldh [$f1], a
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    pop hl
    scf
    ld [hl], $30
    jr nc, jr_05c_6637

    ld b, d
    cp a

jr_05c_6648:
    push hl
    ret nz

    rst $38

jr_05c_664b:
    ret nz

    xor $50
    jr nc, jr_05c_6680

    jr nc, @-$01

    ld l, l
    cp a
    ld [c], a
    ld h, b
    ld h, d
    ld h, d
    ld h, b
    ld e, e
    ld e, d
    inc [hl]

jr_05c_665c:
    jp z, $80ff

    db $eb
    ld d, c
    pop bc
    ldh [$6d], a
    ld l, d
    ld a, [hl]
    pop hl
    cp $e1
    reti


    ld h, b
    add b
    rst $38
    ld b, b
    db $eb
    ld [$c150], sp
    pop hl
    jr nc, jr_05c_66e2

    adc l
    ld d, d
    ret nz

    ldh [$15], a
    rrca
    ld hl, sp-$40
    jp z, Jump_000_00ff

jr_05c_6680:
    ld [$7f1a], a
    ld d, c
    ld l, e
    ld l, e
    ld l, c
    jr nc, @+$6f

    jr nc, jr_05c_664b

    pop hl
    sbc a
    rla
    jr z, jr_05c_669e

    ld sp, $ca31
    rst $38
    ret nz

    ret


jr_05c_6696:
    ld [$31d7], sp
    ld d, b
    jr nc, jr_05c_665c

    ld [c], a
    ld d, e

jr_05c_669e:
    add c
    ldh [rNR21], a
    jr nz, jr_05c_6696

    jr nz, @+$11

    ret nz

    rst $38
    jp hl


    add sp, $05
    dec b
    dec d
    ld sp, $495b
    ld c, b
    ld b, b
    push hl
    rla
    jr z, jr_05c_66e5

    ret nz

    rrca
    jp z, Jump_05c_64ff

    add sp, -$19
    call z, Call_000_39c2
    rst $38
    jp nz, $e080

    dec hl
    inc l
    ret nz

    rst $38
    sbc $ec
    db $eb
    ld h, d
    ld h, d
    ld h, d
    ld sp, $e07f
    jr nc, jr_05c_673f

    add e
    ld l, e
    ld l, d
    ret nz

    ret nz

    ret nz

    pop hl
    ld b, b
    rst $38
    ld [$8ce9], a
    and b
    ld e, [hl]
    ret nz

    ld a, a

jr_05c_66e2:
    pop hl
    cp l
    ret nz

jr_05c_66e5:
    add b
    db $e3
    ld a, a
    ret nz

    jp z, $c0ff

    add sp, $5a
    ld e, e
    cp a
    ld e, a
    ld sp, $4d31
    ld b, [hl]
    ld [hl], $c0
    ld [c], a
    add hl, hl
    add hl, de
    daa
    ld b, b
    rst $18
    add b
    xor $5b
    ld h, b
    rst $00
    and b
    db $fd
    add e
    ret nz

    cp a
    add b
    ret nz

    pop af
    cp a
    ld [c], a
    jp $f2e2


    ret nz

    ld b, b
    cp a
    nop
    db $ed
    adc l
    add b
    ld e, h
    ld bc, $b85d
    ret nz

    call nz, $c0e1
    sbc a
    db $ed
    db $ec
    ld d, b
    add c
    db $fd
    add sp, -$0f
    ld [c], a
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

jr_05c_673f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, jr_05c_684d

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
    ld a, [hl+]
    ld l, b
    ld e, d
    ld l, b
    pop hl
    ld l, d
    push bc
    ld l, h
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    ldh [rNR10], a
    ret z

    ld [bc], a
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    sbc a
    ld [bc], a
    or $01
    ld d, e
    ld bc, $1b4b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05c_684d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld e, a
    dec bc
    dec bc
    dec bc
    ld c, e
    ld c, e
    ei
    ldh [$0c], a
    rst $38
    and $7f
    inc l
    inc l
    inc c
    inc c
    ld c, h
    inc c
    ld c, h
    db $fd
    pop hl
    ld bc, $f64c
    ldh [$fa], a
    ld [c], a
    ld sp, hl
    rst $20
    db $fc
    db $e3
    jp nc, $c0e7

    ldh [$bf], a
    ld [c], a
    nop
    ret nz

    db $eb
    cp a
    ldh [$af], a
    pop hl
    sub $e6
    call z, $c1e4
    rst $28
    ret nz

    ld [c], a
    ld a, [hl]
    pop hl
    nop
    sbc b
    db $e4
    db $e4
    ld [$e287], a
    cp b
    db $e4
    db $f4
    db $e4
    ld l, l
    ld [c], a
    ret nz

    xor $3d

jr_05c_68a0:
    ld [c], a
    add b
    ld d, [hl]
    pop hl
    sbc b
    and $41
    ld [c], a
    ld a, $e2
    ccf
    db $ec
    ld l, d
    jp hl


    ret nz

    rst $20
    dec bc
    rrca
    dec hl
    dec bc
    dec bc
    ld l, e
    ld sp, hl
    ld [c], a
    ld b, e
    pop hl
    sub [hl]
    push hl
    cp d
    ld [c], a
    ldh [$f6], a
    jp $e4b5


    db $ed
    db $e4
    ret c

    jp $e880


    ld l, e
    ld c, e
    ld c, e
    rrca
    ld c, e
    dec hl
    dec bc
    ld c, e
    ld sp, hl
    ldh [$c0], a
    add sp, -$02
    db $e4
    or l
    db $e4
    ret nc

    xor [hl]
    rst $20
    ret nz

    jp z, $e087

    ld a, l
    jp Jump_05c_792b


    pop bc
    dec hl
    ld c, e
    add b
    ld a, a
    db $e4
    add b
    jp nz, $c7be

    ret nz

    ret c

    adc b
    ldh [$82], a
    pop hl
    dec sp
    jp nz, Jump_05c_412b

    dec hl
    ccf

jr_05c_68fa:
    db $eb
    jp z, $c7c6

    add $c0
    adc $14
    ret nz

    ld c, e
    add l
    ldh [$0e], a
    pop bc
    push hl
    dec hl
    dec bc
    ld l, h
    ld d, c
    push bc
    ld b, h
    and $40
    jp c, $a0d0

    jr jr_05c_68a0

    ldh [$81], a
    rst $20
    or a
    and l
    ld c, h
    inc l
    ld a, d
    push bc
    inc bc
    add sp, $40
    ret nc

    rrca
    ld l, h
    ld l, h
    inc l
    ld c, h
    inc b
    pop hl
    ret nz

    pop bc
    pop bc
    pop hl
    add c
    pop hl
    ld c, $a5
    ret nz

    ld c, h
    inc c
    inc l
    add c
    and $47
    call nz, $ca40
    jp c, Jump_000_00c4

    ld d, b
    and e
    dec a
    call nz, $c2b5
    ld b, a
    add $41
    and l
    add e
    xor d
    cp $f1
    ld d, [hl]
    ldh [rP1], a
    cp d
    and $01
    and [hl]
    ld a, [c]
    adc b
    jr nc, jr_05c_68fa

    add hl, hl
    and h
    jp nz, Jump_05c_48f0

    and h
    ret c

    push hl
    pop hl
    ld c, h
    pop bc
    add d
    sub h
    push af

jr_05c_6966:
    xor d
    xor $c0
    rst $28
    ld c, h
    inc c
    dec hl
    nop
    xor e
    and $c0
    rst $38
    add b
    add b
    rst $00
    adc h
    ret nz

    db $e3
    add c
    rst $38
    ld h, [hl]
    adc e
    db $10
    add h
    nop
    ei
    and $c0
    rst $38
    ld e, e
    add a
    push de
    ld l, [hl]
    bit 5, e
    push bc
    ld l, c
    dec [hl]
    add [hl]
    ld a, [de]
    adc h
    jr nz, jr_05c_6966

    ld l, a
    adc $e7
    ld h, b
    add sp, -$4b
    ld h, h
    ld l, h
    pop bc
    inc l
    db $fd
    xor c
    push de
    ld l, l
    nop
    bit 4, [hl]
    cp [hl]
    ld l, d
    ld [hl], l
    and [hl]
    ret nz

    jp hl


    push de
    ld [hl], d
    jp nc, $e967

    db $eb
    ld a, h
    and [hl]
    nop
    cp a
    ret


    push de
    ld l, a
    bit 5, c
    cp [hl]
    ld l, c
    call nz, Call_05c_4445
    ldh [$c0], a
    db $ec
    push de
    ld l, e
    nop
    or $ea
    cp [hl]
    ld h, a
    res 5, c
    ld a, l
    xor e
    push de
    ld l, h
    bit 5, d
    cp [hl]

jr_05c_69cf:
    ld l, e
    ld [hl], d
    ld b, l
    nop
    ccf
    jp z, Jump_05c_6dd5

    or $e9
    jp hl


    db $eb
    call z, $7587
    ld [$6dd5], a
    bit 4, [hl]
    nop
    cp [hl]
    ld l, [hl]
    inc c
    jp z, $75d5

    bit 5, b
    jp hl


    ld [$a88d], a
    ld d, d
    daa
    push de
    ld [hl], b
    nop
    or $e8
    ld c, c
    bit 4, b
    and a
    ld b, b
    adc c
    push de
    ld l, [hl]

Jump_05c_69ff:
    ld [$0d68], sp
    dec hl
    or [hl]
    ld [hl], b
    nop
    push de
    ld [hl], c
    ldh [$8a], a
    cp [hl]
    ld l, c
    and e
    daa
    add b
    db $eb
    rst $38
    rst $38
    adc h
    ld l, h
    add b
    ld l, a
    nop
    rst $38
    rst $38
    xor c
    add hl, bc
    ld e, d
    ld h, d
    ld [$7e5a], a
    db $fc
    ret nz

    rst $38
    cp [hl]
    ld a, h
    ld de, $008a
    pop de
    ld l, e
    ld de, $d089
    inc c
    ld [hl], d
    ld b, a
    ccf
    ld c, [hl]
    cp d
    xor a
    and d
    db $eb
    ld [hl], a
    or $00
    sub l
    ld hl, $328f
    push bc
    rlca
    push bc
    cpl
    ld b, b
    add sp, $06
    ld h, [hl]
    cp d
    xor [hl]
    cp d
    dec b
    nop
    add a
    jr nc, jr_05c_69cf

    adc c
    cp d
    or h
    jp z, Jump_05c_7266

    ld e, d
    sub [hl]
    ld b, [hl]
    ret c

    or e
    and l
    ld h, [hl]
    nop
    ld a, l
    rlca
    ld b, b
    ld sp, $358f
    rst $20
    ld l, b
    and h
    ld l, e
    ld [hl], h
    xor h
    and h
    ld de, $c6c3
    nop
    or h
    set 0, b
    rst $38
    ld a, $ef
    xor [hl]
    ld l, c
    di
    sbc c
    rlca
    db $eb
    or e
    ld h, a
    xor [hl]
    ld l, c
    nop
    nop
    jp nc, Jump_05c_6cc0

    or e
    ld l, e
    db $e4
    db $ed
    add b
    rst $08
    ret nz

    ld l, l
    ld sp, hl
    xor [hl]
    add l
    ld a, [c]
    nop
    ret nz

    ld [hl], a
    cp l
    ld l, l
    pop af
    xor $00
    call $ffff
    ret nz

    cp b
    cp a
    rst $38
    ld [hl], h
    ld a, a
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $dcca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $76
    ld a, [hl+]
    nop
    rst $38
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
    add [hl]

jr_05c_6ade:
    nop
    nop
    nop
    rst $38
    add b
    add b
    add b
    xor [hl]
    ld [hl], b
    ld sp, $3131
    ld [hl], a
    dec hl
    inc l
    jr nz, @+$01

    db $e4
    ld [hl+], a
    ld hl, $ff00
    rst $38
    jr nc, jr_05c_6ade

    and $c0
    ldh [$bf], a
    ld [c], a
    ret nz

    rst $20
    jr nz, jr_05c_6b10

    jp z, $c0ff

    db $eb
    ld e, $7e
    pop hl
    ld de, $2112
    jr z, @+$80

    push hl
    jp z, $c0ff

jr_05c_6b10:
    db $ec
    ld a, [hl]
    dec a
    ld [c], a
    ld de, $2712
    dec b
    dec b
    dec b
    ret nz

    rst $38
    cp $c0
    pop af
    add b
    and b
    ld sp, $9731
    ld d, [hl]
    ld d, [hl]
    rst $08
    ld d, a
    ld c, e
    ld sp, $c00c
    rst $38
    ld b, b
    rst $28
    ld a, c
    ld l, [hl]
    rst $38
    ld a, [hl-]
    sbc h
    sbc h
    sub h
    jr nc, jr_05c_6b68

    jr nc, jr_05c_6b70

    or e
    ld c, c
    dec c
    ret nz

    rst $38
    db $eb
    ld [$aa58], a
    pop bc
    ldh [$71], a
    rst $18
    ld l, l
    ld l, l
    sub h
    sub h
    ld l, d
    ret nz

    ldh [rOCPS], a
    add hl, sp
    di
    ld sp, $c008
    rst $38
    ld [$31e9], a
    xor e
    ld e, b
    xor d
    di
    add e
    ld l, l
    rst $38
    ldh [$c1], a
    ld [c], a
    ld l, l
    ld d, d
    ld sp, $7c15
    ret nz

jr_05c_6b68:
    rst $38
    ld [$14e9], a
    inc d
    dec d
    xor e
    add hl, sp

jr_05c_6b70:
    ret nz

    pop hl
    ld a, a
    ld l, c
    jr nc, jr_05c_6ba6

    ld l, c
    ld l, l
    ld l, l
    ld d, e
    ret nz

    rst $38
    ld a, [hl]
    db $ec
    db $eb
    inc h
    inc h
    rla
    ld sp, $324d
    ret nz

    and $e7
    add hl, sp
    ld sp, $c017
    rst $38
    ld [$20e9], a
    jr nz, jr_05c_6ba8

    rst $38
    dec d
    ld sp, $564d
    ld d, a
    ld d, [hl]
    ld d, [hl]
    ld [hl-], a
    sbc [hl]
    add b
    ldh [$36], a
    ld c, c
    dec d

Call_05c_6ba1:
jr_05c_6ba1:
    ld d, $c0
    rst $38
    ret nz

    db $eb

jr_05c_6ba6:
    jr z, jr_05c_6ba1

jr_05c_6ba8:
    rla
    ld b, c
    and b
    ld a, $a0
    ld c, l
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld b, a
    db $e3
    ld sp, $ba17
    and b
    jp z, $80ff

    jp hl


    jr nz, @+$18

    inc d
    or [hl]
    rst $38

Call_05c_6bc0:
    ldh [rNR12], a
    ld de, $e1ba
    ld de, $8112
    ldh [$0c], a
    ld a, h
    jp z, $e8ff

    rst $20
    ld hl, $1022
    jr nz, @+$26

    rst $38
    ldh [$af], a
    ld [hl+], a
    ld hl, $1112
    inc a
    and b
    ld [hl+], a
    cp d
    add b
    dec c
    or b
    jp z, $e8ff

    rst $20
    call z, $cae4
    add b
    ld [hl+], a
    ld hl, $e1b4
    jr nz, jr_05c_6bf7

    jr nz, jr_05c_6bfa

    ld sp, $ffca
    nop
    ret z

jr_05c_6bf7:
    add $80
    cp a

jr_05c_6bfa:
    db $e3
    ld b, b
    add l
    ld bc, $c015
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05c_6cc0:
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
    jr nc, jr_05c_6d24

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
    ld bc, $316d
    ld l, l
    ld d, d
    ld l, a
    ld a, c
    ld [hl], c
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a

Jump_05c_6d07:
    ldh [rNR10], a
    ret z

    ld [bc], a
    ld a, [c]
    inc sp
    ld c, e
    dec de
    dec h
    ld [bc], a
    ret nz

    ld a, l
    ldh [$7f], a
    ld l, a
    ld de, $1b4b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05c_6d24:
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
    ld l, e
    ld c, e
    rst $38
    ldh [$0b], a
    dec bc
    ccf
    dec hl
    dec hl
    inc c
    inc c
    inc c
    inc l
    db $fc
    ldh [$f9], a
    ldh [$c7], a
    ld c, h
    dec bc
    dec bc
    db $f4
    ldh [$fc], a
    pop hl
    ldh a, [$e1]
    inc l
    ld c, h
    adc a
    inc c
    ld c, h
    ld c, h
    ld c, h
    and $e3
    ld a, [$c1e9]
    db $e4
    dec hl
    inc h
    cp b
    ldh [$be], a
    pop hl
    dec hl
    db $dd
    ldh [$c0], a
    db $e4
    inc c
    pop bc
    jp hl


    db $eb
    and $00
    ret nz

    pop af
    pop bc
    ldh [$c0], a
    pop hl
    cp [hl]
    ldh [$8d], a
    pop hl
    add b
    ldh [$98], a
    ld [c], a
    add c
    rst $20
    inc e
    adc c
    ldh a, [$80]
    add sp, $2b
    dec bc
    ld l, e
    ccf
    ldh [rSTAT], a
    ld [c], a

jr_05c_6d8b:
    dec a
    ldh [rP1], a
    add b
    rst $20
    ld b, c
    ld [c], a
    add $f8
    ret nz

    rst $20
    add l
    ld [c], a
    ld [bc], a
    ldh [$7f], a
    pop hl
    ld b, b
    db $e3
    add b
    ld [de], a
    pop hl
    ld a, a
    add sp, $44
    ld a, [c]
    reti


    jp $e180


    ld b, e
    db $e3
    or [hl]
    pop bc
    dec hl
    nop
    ld b, b
    db $e3
    cp l
    jp nz, $cbc0

    or l
    push af
    dec bc
    pop hl
    ld [bc], a
    db $e3
    cp l
    pop bc
    ret nz

    ld [c], a
    ld hl, $0f6c
    db $e4
    ccf
    db $ec
    ret nz

    push af
    cp a
    db $e3
    ld c, e
    cp l
    call nz, $e1c0
    jr nz, jr_05c_6d8b

    pop bc
    ld e, d
    and $48
    pop bc

Jump_05c_6dd5:
    ld a, [hl]
    jp c, $c10e

    inc l
    ld a, [hl-]
    db $e3
    or a
    ret nz

    ret nz

    ld a, [c]
    db $e3
    adc c
    call nz, $c00e
    ld a, a
    jp hl


    or l
    and $f9
    xor [hl]
    ld c, h
    ld c, h
    rlca
    dec hl
    dec hl
    dec hl
    cp [hl]
    jp nz, $e2b2

    ld c, $d0
    or l
    db $eb
    or e
    rst $08
    ld b, b
    add h
    and b
    ld a, [hl]
    jp nz, $a1c0

    adc $bb
    or c
    xor e
    ld e, l
    db $e4
    ld c, h
    ld c, h
    ldh [$0a], a
    ld bc, $6ce2
    ld [hl-], a
    pop hl
    ld c, e
    ld d, l
    and b
    res 6, h
    ld a, b
    xor l
    adc l
    pop hl
    nop
    ld d, d
    jp nz, $a307

    pop bc
    ldh [$f2], a
    pop bc
    ret


    cp [hl]
    rst $30
    add [hl]
    jp z, $e981

    adc h
    ld bc, $c06c
    jp nz, $a235

    ld e, $ea
    ei
    sub d
    dec bc
    and c
    rst $08
    call nz, $aba6
    ldh a, [$cf]
    adc l
    cp c
    sub h
    ld c, e
    and e
    rst $38
    add sp, $6c
    ld l, h
    dec bc
    inc l
    nop
    ld bc, $3ef2
    add d
    ld a, a
    or b
    rst $38
    and e
    ld c, d
    and h
    add l
    ld a, [c]
    ld e, $c3
    or h
    sbc b
    ret nz

    push de
    ld l, h
    ld a, [$0181]
    db $ed
    rst $10
    and [hl]
    xor l
    rst $18
    add c
    ld h, c
    ld a, [bc]
    ld a, [bc]
    ld bc, $db08
    rst $38
    ld e, d
    ld h, d
    ld e, $9c
    ld c, e
    cp b
    cp e
    db $ec
    dec sp
    add [hl]
    ld [hl-], a
    add h
    jr nc, jr_05c_6e7a

jr_05c_6e7a:
    xor [hl]
    sbc a
    rst $30
    or $47
    or $66
    ld a, [bc]
    ld a, [bc]
    ccf
    adc $70
    ld [hl], e
    nop
    and d
    ld b, [hl]
    call nz, $6be8
    ld b, d
    ret nz

    rst $38
    nop
    rst $20
    sub b
    ld l, a
    ld d, h
    ld c, [hl]
    ld [hl], $78
    nop
    sub b
    ld [hl], e
    ret nz

    ld a, [c]
    cp $2e
    sbc d
    ld c, l
    sub b
    ld h, a
    nop
    xor l
    dec sp
    ld e, d
    sub b
    ld [hl], c
    nop
    ccf
    rst $38
    sbc a
    rst $38
    ret nz

    cp $d5
    ld h, a
    ret nz

    cp $40
    inc sp
    cp e
    db $eb
    ld [hl], l
    cp a
    nop
    ret nz

    ret nc

    call nc, $c094
    ld e, a
    jp $bb47


    ei
    ld b, l
    sbc c
    ld bc, $e5ff
    rst $18
    nop
    ld bc, $40ff
    rla
    ld bc, $ffff
    rst $38
    cp e
    db $fd
    sbc a
    ld hl, sp+$45
    rst $18
    add l
    cp $00
    rst $38
    rst $38
    dec b
    cp h
    call nc, $1d53
    ld hl, $dfe5
    ld h, $1b
    ld h, a
    ld b, d
    cp e
    ld a, [$0100]
    rst $38
    adc e
    ld e, a
    rst $38
    rst $38
    ld b, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add e
    cp a
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld b, e
    nop
    nop
    nop
    db $fd
    ld c, e
    rst $38
    ldh [$50], a
    ld hl, $2a3d
    ld b, l
    ld b, h
    rst $38
    dec hl
    scf
    ld hl, $5021
    ld c, e
    ld e, $00
    add hl, de
    nop
    db $fd
    ldh [$fe], a
    ld [c], a
    sub b
    sub b
    ei
    pop hl
    di
    db $e4
    ld sp, hl
    push af
    cp $c1
    db $e3
    ld [hl+], a
    ld e, e
    jr nz, jr_05c_6f9a

    ld e, e
    ld h, $36
    add a
    dec a
    ld hl, $c050
    jp hl


    pop bc
    rst $38
    ret nz

    pop hl
    pop bc
    pop hl
    ld e, c
    ld a, $c0
    pop hl
    ld e, c
    jr nz, @+$2b

    ld hl, $8021
    rst $20
    add c
    rst $38
    cp $80
    db $e3
    ld d, c

jr_05c_6f9a:
    ld hl, $2029
    jr nz, jr_05c_6ff9

    ld e, h
    ccf
    ld e, h
    ld e, d
    jr nz, jr_05c_6fc5

    jr c, @+$3b

    ret nz

jr_05c_6fa8:
    db $ed
    rst $38
    cp $be
    ret nz

    pop hl
    ld b, d
    ld e, b
    jr nz, @+$22

    ld e, b
    db $fc
    ldh [rNR41], a
    jr nz, @+$81

    ldh [rP1], a
    rst $38
    add b
    ldh a, [$84]
    pop hl
    cp l
    ld [c], a
    ld b, d
    ret nz

    ld sp, hl
    or l

jr_05c_6fc5:
    ld a, [c]
    ld h, $82
    pop bc
    daa
    ld h, $04
    ldh [$3d], a
    ld [c], a
    ld b, e
    add b
    xor $81
    ret z

    inc a
    ret nz

    db $f4
    ld b, c
    ret nz

    scf
    ld [hl], $44
    ld [hl-], a
    cp l
    jp nz, $e340

    inc [hl]
    rlca
    rst $38
    dec hl
    rst $00
    dec de
    rst $38
    pop hl
    add hl, de
    jr jr_05c_6fa8

    ret nz

    dec a
    ret nz

    pop af
    ld [hl-], a
    ret nz

    call nz, $dfc5
    ld [$01ac], a
    ld a, [bc]

jr_05c_6ff9:
    dec a
    ld [hl], $8f
    ld h, $5c
    ld h, $2c
    ld b, b
    ret


    rst $38
    rst $38
    and l
    xor b
    add hl, bc
    adc a
    ld hl, $3721
    ld b, [hl]
    ld a, a
    and b
    ret nz

    rst $38
    ld b, b
    rst $28
    ld bc, $7f12
    pop hl
    inc bc
    call nz, $c1e0
    ldh [$03], a
    di
    ldh [rLCDC], a
    ldh [$c8], a
    rst $38
    inc l
    add hl, hl
    and l
    call z, Call_000_00e4
    ld bc, $c1f9
    add hl, de
    or h
    ld [c], a
    ret nz

    rst $38
    ld a, $ec
    adc b
    ld d, d
    ld d, d
    ld hl, $0921
    inc [hl]
    db $ec
    add $a2
    ld [$cebc], sp
    or [hl]
    or e
    add d
    add c
    ld a, [bc]
    ld a, $e1
    or h
    ret z

    adc d
    rst $38
    add b
    adc h
    inc bc
    jr jr_05c_7068

    add hl, sp
    jp nz, $c534

    jp z, Jump_05c_69ff

    cp $ff
    rst $38
    cp e
    db $eb
    ld hl, sp-$2b
    adc d
    ld bc, $fff2
    rst $38
    ld bc, $0302
    inc b
    dec b
    rst $38

jr_05c_7068:
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    di
    ld c, $0f
    rst $08
    rst $38
    push hl
    rl b
    ld de, $1312
    rst $38
    inc d
    dec d
    ld d, $17
    jr jr_05c_709b

    ld a, [de]
    dec de
    rst $08
    inc e
    dec e
    ld e, $1f
    adc $ff
    and l
    sla b
    ld hl, $22ff
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05c_70c1

    ccf
    ld a, [hl+]
    dec hl

jr_05c_709b:
    inc l
    dec l
    ld l, $2f
    adc $ff
    ld h, l
    set 7, a
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    rst $38
    jr c, jr_05c_70e8

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    db $fc
    sub [hl]
    rst $18
    dec h
    bit 0, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    rst $38

jr_05c_70c1:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    inc bc
    ld c, [hl]
    ld c, a
    ret nz

    rst $38
    ld a, e
    jp c, $ffc1

    dec sp
    jp nc, $bfd7

    set 7, a
    nop
    sub b
    rst $38
    cp e
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    xor e
    rst $38
    xor e
    rst $38
    cp e

jr_05c_70e8:
    rst $38
    nop
    ld c, e
    db $dd
    ld bc, $bbff
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add b
    adc $46
    rst $38
    cp e
    rst $38
    cp e
    ei
    dec sp
    jr @-$7a

    rst $38
    nop
    rst $18
    rst $38
    rst $38
    nop
    ld b, l
    rst $18
    rst $20
    sbc a
    rst $38
    rst $38
    and c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld b, l
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
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
    jr nc, @+$39

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
    xor l
    ld [hl], c
    db $dd
    ld [hl], c
    ld l, [hl]
    ld [hl], e
    ld [de], a
    ld [hl], l
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $7d40
    ret nz

    ld a, [hl]
    ld [$c503], a
    ld b, $08
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
    ld [$df25], sp
    inc c
    inc c
    inc c
    ld l, h
    dec bc
    rst $38
    add sp, $4c
    inc l
    jp $2c2c


    db $ec
    ldh [rIE], a
    rst $38
    rst $20
    and $c1
    ld [$2b0b], a
    ld hl, sp-$41
    ldh [$cc], a
    rst $38
    pop bc
    rst $28
    ld c, e
    dec bc
    ld l, e
    ld l, e
    ld c, e
    pop hl
    ld c, e
    ret nz

    ldh [$bf], a
    ldh [$cb], a
    rst $38
    add d
    rst $28
    ld l, e
    ld l, e
    ld l, e
    inc c
    cp e
    ldh [$be], a
    pop hl

jr_05c_7212:
    dec bc
    ld c, h
    jp z, $e8ff

    rst $20
    add $e1
    ret


    ldh [rIF], a
    ld c, e
    ld l, e
    dec hl
    dec hl
    ld a, c
    ld [c], a
    cp a
    pop hl
    jp z, $c0ff

    add sp, $00
    adc b
    pop hl
    ld [$c0e1], sp
    db $e3
    jr c, jr_05c_7212

    ret nz

    rst $38
    ld [$c1e9], a

jr_05c_7237:
    db $e4
    ret nz

    and $01
    dec hl
    db $fc
    ret nz

    jp z, $c0ff

    add sp, -$78
    push bc
    add b
    db $e4
    ld a, a
    pop hl
    jp z, Jump_05c_40ff

    add sp, -$19
    sub b
    pop hl
    ret


    pop bc
    ret nz

    and $40
    rst $38
    ret nz

    db $eb
    dec hl
    jp nz, Jump_000_00c1

    add b
    jp nz, $c2f7

    ld a, [c]
    pop bc
    jp z, $80ff

    ret z

    cp a

Jump_05c_7266:
    pop hl
    ccf
    call nz, $e2b6
    nop
    ld b, b
    rst $38
    ld b, b
    call z, $c447
    jr c, jr_05c_7237

    ld b, b
    rst $38
    db $ed
    db $ec
    adc $e3
    ret nz

    and b
    ccf
    dec hl
    ld c, e
    ld l, e
    ld c, e
    ld l, e
    dec bc
    ei
    and c
    set 7, a
    ld h, b
    ret nz

    xor c
    cp a
    push hl
    cp [hl]
    ldh [$3b], a
    and b
    add hl, sp
    and b
    inc c
    ld l, h
    jp z, $9cff

    ld b, b
    ld [$8ac0], a
    dec bc
    inc c
    ld l, h
    ret nz

    rst $38
    jp hl


    add sp, $0a
    nop
    ret nz

    db $ec
    pop bc
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    ld e, a
    nop
    nop
    nop
    inc bc
    ld hl, $e8ff
    inc bc
    rst $28
    ldh [$e0], a
    rst $38
    rst $38

jr_05c_737c:
    ld [$c1e9], a
    ld_long $ffbf, a
    pop bc
    or $33
    dec hl
    dec hl
    ld sp, hl
    dec a
    cp a
    rst $38
    add d
    push af
    dec a
    dec [hl]
    inc [hl]
    ld e, d
    ld e, d
    jp Jump_000_3534


    cp [hl]
    pop hl
    cp a
    rst $38
    jp hl


    add sp, -$3a
    ldh [$2b], a
    ld b, h
    rst $38
    ld b, l
    ld b, l
    ld b, h
    inc [hl]
    ld e, c
    ld e, c

jr_05c_73a6:
    jr nz, jr_05c_7402

    ld [c], a
    cp [hl]
    ldh [$39], a
    inc [hl]
    ldh [$ca], a
    rst $38
    ret nz

    add sp, $3d
    ld [hl+], a
    jr nz, @+$27

    jr nz, jr_05c_737c

    ldh [$59], a
    ret nz

    ldh [$bf], a
    pop hl
    add hl, hl
    ret nz

    rst $38
    db $eb
    ld [$c188], a
    pop hl
    ret nz

    and $7e
    ldh [$32], a
    ld a, a
    ldh [$ca], a
    rst $38
    add sp, -$19
    add hl, hl
    nop
    pop bc
    ldh [$c0], a
    rst $20
    dec a
    ldh [$7f], a
    ldh [$ca], a
    rst $38
    ret nz

    db $eb
    ld [$c0e0], sp
    push hl
    adc c
    jr nz, jr_05c_73a6

    rst $38
    ld b, b
    db $ed
    ld e, b
    pop bc
    pop hl
    call nz, $fac1
    ldh [rNR41], a
    ld hl, $4020
    rst $38
    ret nz

    adc $c7
    db $e3
    add e
    ret nz

    ld e, b
    rst $38
    ldh [$c0], a
    rst $18
    ld a, [hl]
    ld b, b

jr_05c_7402:
    adc $35
    ld b, h
    ld b, h
    ld b, l
    ld b, h
    ld [hl-], a
    ld b, d
    ret nz

    and [hl]
    ret nz

    ldh [$2d], a
    inc sp
    ret nz

    rst $38
    db $eb
    ld [$4450], a
    and b
    sub b
    rst $38
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, h
    ld l, [hl]
    ld [hl-], a
    ld e, d
    ld e, b
    daa
    ld [hl-], a
    ld l, [hl]
    sbc a
    ret nz

    cp a
    db $ec
    db $eb
    ld c, e
    cp a
    ldh [$c0], a
    pop hl
    sbc [hl]
    cp [hl]
    pop hl
    ld l, [hl]
    ld h, h
    sbc [hl]
    sub a
    pop bc
    rst $38
    ret nz

    db $ec
    ld c, e
    sbc c
    ld c, [hl]
    ret nz

    db $e4
    ld a, e
    ldh [$9e], a
    ld h, b
    pop bc
    rst $38
    db $ed
    db $ec
    ld c, d
    inc bc
    ld c, e
    ld c, a
    ret nz

    and $c1
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_05c_7569

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
    ld b, [hl]
    ld [hl], l
    db $76
    ld [hl], l
    sbc $76
    adc c
    ld a, b
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

jr_05c_7569:
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
    ld l, e
    ld c, e
    rst $38
    add sp, -$11
    ldh [rSB], a
    inc c
    rst $38
    rst $38
    rst $20
    and $c1
    pop hl
    cp $e1
    cp b
    ldh [$fd], a
    ld [c], a
    cp a
    pop hl
    db $10
    jp z, $c0ff

    add sp, -$7e
    ldh [$c0], a
    jp hl


    dec hl
    ld a, [hl]
    ldh [$ca], a
    rst $38
    add sp, -$19
    nop
    ld b, e
    ldh [$7e], a
    ld [c], a
    ret nz

    and $7e
    ldh [$ca], a
    rst $38
    ret nz

    add sp, -$01
    jp nz, $e9c0

    sub c
    dec bc
    ret nz

    rst $38
    nop
    ld [$eec0], a
    dec hl
    jp z, $c0ff

    db $eb
    dec hl
    nop
    rst $38
    ldh [$c0], a
    rst $38
    add b
    ei
    ld a, a
    ret nz

    ld a, [hl-]
    jp nz, $e1b7

    jp z, Jump_05c_40ff

    db $eb

jr_05c_75d1:
    add b
    dec a
    jp nz, $a3fc

    ld [hl], a
    ld [c], a
    jp z, $c0ff

    db $ec
    db $fc
    and c
    pop bc
    push hl
    ld l, e
    nop
    ret nz

    rst $18
    ret nz

    rst $28
    ld a, h
    and h
    pop bc
    ld [c], a
    add b
    rst $38
    ld [$c7e9], a
    add $41
    add $18
    ret nz

    rst $38
    ld [$0fe9], a
    and d
    dec hl
    ld l, e
    cp c
    jp hl


    set 7, a
    nop
    xor c
    jr nz, jr_05c_75d1

    add c

Jump_05c_7604:
    ld bc, $c2a7
    rst $38
    add b
    db $ed
    adc $80
    ld l, e
    add c
    ld [c], a
    call nc, $22ff
    ld b, b
    db $f4
    ld c, e
    call z, $ffdf
    rst $38
    jp hl


    add sp, $4c
    db $dd
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld sp, $3131
    ld c, l
    ld a, [hl-]
    ld d, h
    ld d, h
    ld d, l
    ld e, l
    ld d, h
    db $fc
    ld [c], a
    ld d, l
    dec sp
    ld c, l
    rst $28
    ldh [rP1], a
    rst $38
    rst $38
    inc l
    rst $20
    and $c1
    ldh [$32], a
    ld l, c
    rst $38
    ldh [$30], a
    rst $38
    ldh [$f8], a
    pop hl
    ld sp, $bf32
    ldh [$ca], a
    rst $38
    ret nz

    add sp, $4d
    ld [hl-], a
    ret z

    ld [c], a
    ret nz

    push hl
    ldh [$bf], a
    pop hl
    jp z, $e8ff

    rst $20
    pop bc
    ldh [$c0], a
    db $eb
    jr nc, jr_05c_774e

    ld c, l
    ld h, h
    jp z, $e8ff

    rst $20
    add hl, sp
    ld b, [hl]
    ldh [$c0], a
    db $eb
    ld l, c
    add hl, sp
    jp z, $0aff

    add sp, -$19
    ld d, e
    ret nz

Jump_05c_7730:
    rst $28
    ld d, d
    jp z, $c0ff

    rst $38
    rst $38
    rst $38
    db $e4
    db $e3
    dec b
    ld d, d
    add [hl]
    ret nz

    ld l, d
    rst $38
    pop hl
    ld sp, hl
    db $e4
    ld b, b
    rst $38
    add b
    rst $28
    cp a
    ld [c], a
    dec bc
    ld l, b
    ld l, b
    cp c
    ld [c], a

jr_05c_774e:
    ld l, d
    ret nz

    rst $18
    add b
    xor $7e
    ld [c], a
    ret nz

    db $e4
    jp Jump_05c_7730


    ld b, b
    rst $18
    add b
    xor $3d
    pop hl
    add b
    db $e3
    jr nc, jr_05c_77a6

    jp hl


    inc a
    ret nz

    cp a
    ld [$83e9], a
    ld b, $e1
    jr nc, jr_05c_779f

    ld b, h
    call nz, $a03e
    ld b, b
    and c
    ld d, l
    pop bc
    ldh [$c0], a
    rst $38
    jp hl


    add sp, $79
    ld [hl], c
    ld h, $c5
    pop bc
    ld [hl], c
    xor a
    ld hl, sp-$80
    db $fd
    push hl
    ld de, $ffca
    add sp, -$19
    rst $38
    add b
    ld a, c
    ld [hl], a
    ld l, d
    ld l, d
    ld [hl], a
    ld a, c
    and c
    and $c2
    rst $20
    ld [de], a
    ld hl, $ffca
    ret nz

    add sp, -$80

jr_05c_779f:
    ld [hl], d
    ld b, d
    xor a
    ld b, d
    ld [hl], d
    xor b
    xor h

jr_05c_77a6:
    rst $00
    pop hl
    inc d
    rst $38
    pop hl
    ld hl, $22f3
    inc h
    jp z, $c0ff

    jp hl


    add b
    ld [hl], d
    ld [hl], d
    xor [hl]
    db $ed
    ld [hl], b
    adc c
    pop hl
    ld [hl+], a
    inc h
    rst $38
    pop hl
    jr nz, jr_05c_77e1

    jr nz, jr_05c_77c3

jr_05c_77c3:
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

jr_05c_77e1:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, jr_05c_78e8

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
    push bc
    ld a, b
    push af
    ld a, b
    add b
    ld a, d
    inc l
    ld a, h
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

jr_05c_78e8:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $fd
    dec bc
    rst $38
    db $eb
    dec hl
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    inc c
    db $fc
    rst $38
    rst $38
    rst $20
    and $0a
    ld l, e
    dec bc
    ld l, e
    ld l, e
    ld c, e
    ld d, $ff
    push hl
    dec bc
    ld c, e
    pop bc
    ldh [$2b], a
    jp z, $e8ff

    rst $20
    jp nz, Jump_000_1be0

    ld l, e
    dec hl
    rst $38
    ld [c], a
    dec bc
    dec bc
    cp a
    pop hl
    ld hl, sp-$1f
    jp z, Jump_000_10ff

    add sp, -$19
    add c
    ldh [$c1], a

Jump_05c_792b:
    db $e3
    ret nz

    db $e4
    ld c, e
    or e
    ldh [$ca], a
    rst $38
    ret nz

    jp hl


    ld b, b
    adc l
    ldh [$80], a
    and $f2
    ldh [rIE], a
    ret nz

    jp z, $e8ff

    rst $20
    dec hl
    pop bc
    ld [c], a
    add b
    cp e
    pop hl
    ld b, b
    pop hl

jr_05c_794a:
    pop bc
    jp nz, $ff40

    ret nz

    ldh a, [$78]
    ret nz

    ret nz

    pop bc
    dec bc
    nop
    ld a, [hl]
    pop hl
    jp z, $c0ff

    ret z

    call $c0c1
    ld [c], a
    pop bc
    ld [c], a
    ccf
    pop bc
    ret nz

    rst $38
    nop
    ld b, b
    ret


    cp a
    ld [c], a
    ld b, c
    rst $00
    cp $a1
    jp z, Jump_05c_40ff

    ret z

    ld c, c
    ret nz

    ccf
    ret nz

    nop
    ld [bc], a
    jp $e1c0


    ret nz

    cp a
    ret nz

    db $ec
    ld a, [hl]
    ldh [rIE], a
    and b
    ret nz

    db $e3
    ld b, c
    ld [c], a
    jr z, jr_05c_794a

    rst $38
    ld b, b
    ld [$c1c6], a
    dec hl
    call nz, Call_05c_6ba1
    inc [hl]
    pop bc
    ret nz

    rst $38
    ld d, $c0
    rst $28
    dec hl
    ld l, e
    ret nz

    ldh [$2b], a
    add l
    jp nz, $ffc0

    nop
    rst $28
    ld b, e
    ld a, [bc]
    dec hl
    cp $80
    ret nz

    add a
    ret nz

    rst $38
    ret nz

    call z, $8a2b
    and d
    nop
    ret nz

    rst $38
    nop
    push af
    add c
    add sp, -$40
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    ld e, e
    ld e, e
    ld h, b
    ld sp, $e8ff
    ld h, b
    ld e, e
    ld e, e
    rst $20
    ld e, d
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $5a
    ld e, a
    ld sp, $4def
    ld a, [hl-]
    ld d, l
    ld d, h
    cp $e2
    ld a, [hl-]
    ld c, l
    ld sp, $61f1
    pop bc
    ldh [$c0], a
    rst $38
    jp hl


    add sp, $5b
    ld e, [hl]
    ld c, l
    ld [hl-], a
    db $fd
    ld l, l
    rst $38
    pop hl
    ld l, c
    jr nc, jr_05c_7ae2

    ld l, l
    ld [hl-], a
    ld c, l
    jr c, jr_05c_7b36

    pop hl
    ret nz

    rst $38
    jp hl


    add sp, $5f
    ld sp, $c139
    ld [c], a
    ret nz

    ld [c], a
    db $e3
    ld l, l
    add hl, sp
    ld a, a
    ldh [$c0], a
    rst $38
    ld [$5ee9], a
    ld sp, $2a53
    ret nz

    db $e3
    ld l, d
    ret nz

    pop hl
    ld d, d
    ret nz

    pop hl
    ld e, d
    jp z, $c0ff

    jp hl


    ld c, $80
    pop hl
    ld l, b
    ld l, b

jr_05c_7ae2:
    ld l, d
    ret nz

    push hl
    nop
    rst $38
    ld b, b
    db $ec
    nop
    ldh [rOBP0], a
    inc b
    ldh [$fe], a
    ldh [$f9], a
    ret nz

    add hl, sp
    nop
    rst $38
    ret nz

    call $bf60
    ldh [$0c], a
    ret nz

    ld [c], a
    cp d
    ret nz

    ld c, b
    scf
    ret nz

    rst $38
    ld b, b
    call $e2bf
    cp l
    jp Jump_05c_6d07


    add e
    ld [hl], b
    cp $a2
    jp z, Jump_05c_40ff

    ret z

    cp a
    and c
    dec a
    call nz, Call_05c_480f
    db $76
    xor [hl]
    and a
    rst $38
    pop bc
    jp z, $c0ff

    jp hl


    ld a, [hl]
    rst $20
    rrca
    add e
    add b
    add b
    add c
    ccf
    pop bc
    jp z, Jump_05c_40ff

    jp hl


    ld a, [hl]
    ld [c], a
    rst $38
    xor a
    ld [hl], c
    ld l, l
    ld l, l

jr_05c_7b36:
    ld [hl], c
    ld a, c
    add b
    add b
    ld sp, hl
    and b
    ret nz

    rst $38
    ret nz

    ldh a, [$5f]
    ld sp, $7981
    ld a, [hl]
    pop af
    ld a, [hl]
    pop bc
    ldh [$c0], a
    rst $38
    nop
    ldh a, [$5a]
    ld e, e
    ld e, [hl]
    xor h
    ld bc, $c4a8
    ldh [$fd], a
    pop hl
    ret nz

    rst $38
    ret nz

    rst $08
    add c
    pop hl
    pop bc
    db $e4
    ret nz

    rst $38
    nop
    nop
    pop af
    add c
    rst $20
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    jr nc, jr_05c_7c8b

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

jr_05c_7c8b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05c_7fff:
    rst $38
