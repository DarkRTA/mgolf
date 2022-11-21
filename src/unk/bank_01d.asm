INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    db $f5, $7c

    db $fd
    ld a, h
    nop
    nop
    inc de
    nop
    rra
    nop
    ld a, [hl+]
    nop
    inc a
    nop
    ld c, e
    nop
    ld d, [hl]
    nop
    ld h, l
    nop
    ld [hl], h
    nop
    ld a, a
    nop
    adc h
    nop
    sbc b
    nop
    and d
    nop
    xor h
    nop
    or a
    nop
    add $00
    ret c

    nop
    db $dd
    nop
    push hl
    nop
    db $eb
    nop
    or $00
    db $fc
    nop
    ld [bc], a
    ld bc, $0108
    ld c, $01
    inc d
    ld bc, $011a
    jr nz, jr_01d_403d

    inc hl

jr_01d_403d:
    ld bc, $012a
    ld [hl], $01
    ld a, [hl-]
    ld bc, $0141
    ld c, b
    ld bc, HeaderMaskROMVersion
    ld d, e
    ld bc, $0158
    ld h, h
    ld bc, $016e
    ld a, b
    ld bc, $0183
    sub d
    ld bc, $019f
    xor b
    ld bc, $01af
    cp d
    ld bc, $01c2
    call $d801
    ld bc, $01e6
    pop af
    ld bc, $01fb
    inc bc
    ld [bc], a
    ld c, $02
    inc e
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    daa
    ld [bc], a
    jr nc, jr_01d_407a

    scf
    ld [bc], a

jr_01d_407a:
    dec a
    ld [bc], a
    ld b, a
    ld [bc], a
    ld d, e
    ld [bc], a
    ld e, c
    ld [bc], a
    ld h, e
    ld [bc], a
    ld l, [hl]
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    and e
    ld [bc], a
    ld a, [$2502]
    inc bc
    ld e, [hl]
    inc bc
    sbc c
    inc bc
    push bc
    inc bc
    db $d3
    inc bc
    push hl
    inc bc
    or $03
    ld de, $3c04
    inc b
    ld e, e
    inc b
    ld a, l
    inc b
    sbc e
    inc b
    or h
    inc b
    ret nc

    inc b
    ld hl, sp+$04
    ld hl, $3a05
    dec b
    ld l, h
    dec b
    add a
    dec b
    xor l
    dec b
    xor $05
    or $05
    ld [bc], a
    ld b, $0a
    ld b, $19
    ld b, $28
    ld b, $54
    ld b, $85
    ld b, $c4
    ld b, $f2
    ld b, $29
    rlca
    ld e, c
    rlca
    sub a
    rlca
    ret nz

    rlca
    pop af
    rlca
    ld d, [hl]
    ld [$0886], sp
    cp c
    ld [$08d9], sp
    db $ec
    ld [$0921], sp
    ld d, d
    add hl, bc
    ld [hl], c
    add hl, bc
    sub d
    add hl, bc
    cp a
    add hl, bc
    push af
    add hl, bc
    ld c, a
    ld a, [bc]
    add l
    ld a, [bc]
    xor e
    ld a, [bc]
    call nc, $0a0a
    dec bc
    jr nc, jr_01d_4101

    ld [hl], c
    dec bc
    xor l
    dec bc
    di
    dec bc
    ld [$360c], sp
    inc c
    ld d, l

jr_01d_4101:
    inc c
    ld [hl], l
    inc c
    xor h
    inc c
    db $dc
    inc c

    db $17, $0d

    ld d, l
    dec c

    db $8c, $0d

    call c, Call_000_0d0d
    db $0e

    db $24, $0e, $41, $0e

    ld e, h
    ld c, $8b
    db $0e

    db $a3, $0e

    cp d
    ld c, $d1
    ld c, $ec
    db $0e

    db $03, $0f

    rra
    rrca

    db $35, $0f

    ld e, e
    rrca
    ld h, e
    rrca
    ld l, d
    rrca

    db $72, $0f, $77, $0f

    ld a, h
    rrca
    sbc b
    rrca
    sbc a
    rrca
    or l
    rrca
    rrc a
    call $d50f
    rrca
    db $e4
    rrca
    db $ed
    rrca
    db $f4
    rrca
    ei
    rrca
    ld bc, $1b10
    db $10
    dec [hl]
    db $10
    inc a
    db $10
    ld d, [hl]
    db $10
    ld l, b
    db $10
    db $76
    db $10
    add c
    db $10
    adc h
    db $10
    sub e
    db $10
    sbc h
    db $10
    and [hl]
    db $10
    xor a
    db $10
    call nz, $d710
    db $10
    rst $20
    db $10
    ld a, [$0410]
    ld de, $111a
    ld [hl-], a
    ld de, $1141
    ld d, h
    ld de, $1169
    ld a, [hl]
    ld de, $118a
    sub d
    ld de, $119e
    xor h
    db $11

    db $b8, $11, $ba, $11

    cp h
    ld de, $11c5
    call nc, $e811
    ld de, $11fc
    jr nc, jr_01d_41a2

    ld e, d
    ld [de], a
    add a
    ld [de], a

jr_01d_4194:
    cp l
    ld [de], a
    ei
    ld [de], a
    ld a, [hl+]
    inc de
    dec a
    inc de
    ld l, h
    inc de
    adc a
    inc de
    xor [hl]
    inc de

jr_01d_41a2:
    db $dd
    inc de
    ld [$6a14], sp
    inc d
    sbc e
    inc d
    or b
    inc d
    pop bc
    inc d
    ld hl, sp+$14
    ld e, [hl]
    dec d
    ld h, c
    dec d
    adc a
    dec d
    sub a
    dec d
    xor a
    dec d

jr_01d_41ba:
    ret nc

    dec d
    nop
    ld d, $32
    ld d, $67
    ld d, $88
    ld d, $b8
    ld d, $ea
    ld d, $1f
    rla
    ld c, h
    rla
    add c
    rla
    or h
    rla
    jp hl


    rla
    inc e
    jr jr_01d_4229

    jr jr_01d_4194

    jr jr_01d_41ba

    jr jr_01d_41e0

    add hl, de
    jr nc, jr_01d_41f7

    ld b, a
    add hl, de

jr_01d_41e0:
    ld a, [hl]
    add hl, de
    sub $19
    rlca
    ld a, [de]
    add hl, de
    ld a, [de]
    ld b, l
    ld a, [de]
    ld e, c
    ld a, [de]
    add c
    ld a, [de]
    cp h
    ld a, [de]
    db $db
    ld a, [de]
    ld c, $1b
    ld l, e
    dec de
    sbc a

jr_01d_41f7:
    dec de
    or b
    dec de
    call nz, $f81b
    dec de
    ld a, [hl+]
    inc e
    jr c, @+$1e

    ld e, h
    inc e
    sub d
    inc e
    or l
    inc e
    ret c

    inc e
    db $ec
    inc e
    inc c
    dec e
    inc a
    dec e
    db $76
    dec e
    and a
    dec e
    ld a, [de]
    ld e, $2b
    ld e, $4d
    ld e, $69
    ld e, $81
    ld e, $8e
    ld e, $9e
    ld e, $ad
    ld e, $ca
    ld e, $da
    ld e, $e9

jr_01d_4229:
    ld e, $07
    rra
    dec l
    rra
    scf
    rra
    ld d, e
    rra
    ld e, a
    rra
    ld l, h
    rra
    ld [hl], a
    rra
    sub a
    rra
    add $1f
    db $eb
    rra
    add hl, bc
    jr nz, jr_01d_425a

    jr nz, jr_01d_4275

    jr nz, @+$54

    jr nz, jr_01d_42bf

    jr nz, jr_01d_4229

    jr nz, @+$19

    ld hl, $2127
    dec sp
    ld hl, $214d
    ld [hl], c
    ld hl, $218d
    or b
    ld hl, $21d8

jr_01d_425a:
    ld bc, $3622
    ld [hl+], a
    ld l, b
    ld [hl+], a
    call $fa22
    ld [hl+], a
    rla
    inc hl
    add hl, hl
    inc hl
    ld b, a
    inc hl
    ld a, e
    inc hl
    xor d
    inc hl
    call c, Call_000_0a23
    inc h
    dec e
    inc h
    ld b, d

jr_01d_4275:
    inc h
    ld d, a
    inc h
    add d
    inc h
    sub l
    inc h
    xor b
    inc h
    or h
    inc h
    push bc
    inc h
    and $24
    add hl, bc

jr_01d_4285:
    dec h
    jr jr_01d_42ad

    daa
    dec h
    jr c, jr_01d_42b1

    ld e, c
    dec h
    ld a, h
    dec h
    adc e
    dec h
    sub h
    dec h
    xor d
    dec h
    sla l

jr_01d_4298:
    db $ed
    dec h
    dec de
    ld h, $66
    ld h, $88
    ld h, $b8
    ld h, $cd
    ld h, $fd
    ld h, $37
    daa
    ld l, c
    daa
    sub l
    daa
    xor [hl]

jr_01d_42ad:
    daa
    db $d3
    daa
    rst $30

jr_01d_42b1:
    daa
    dec h
    jr z, jr_01d_430d

    jr z, jr_01d_432d

    jr z, jr_01d_425a

    jr z, jr_01d_4285

    jr z, jr_01d_4298

    jr z, @+$01

jr_01d_42bf:
    jr z, @+$36

    add hl, hl
    ld b, a
    add hl, hl
    ld l, c
    add hl, hl
    and c
    add hl, hl
    push de
    add hl, hl
    jr nc, @+$2c

    adc e
    ld a, [hl+]
    and [hl]
    ld a, [hl+]
    ret z

    ld a, [hl+]
    db $d3
    ld a, [hl+]
    call c, $e32a
    ld a, [hl+]
    db $eb
    ld a, [hl+]
    rst $30
    ld a, [hl+]
    ld [bc], a
    dec hl
    ld [de], a
    dec hl
    ld [hl+], a
    dec hl
    inc sp
    dec hl
    ld b, c
    dec hl
    ld d, h
    dec hl
    ld h, a
    dec hl
    ld a, b
    dec hl
    adc e
    dec hl
    sub a
    dec hl
    xor c
    dec hl
    cp d
    dec hl
    call z, $d82b
    dec hl
    db $eb
    dec hl
    db $fc
    dec hl
    inc c
    inc l

jr_01d_42fe:
    jr nz, jr_01d_432c

    ld [hl-], a
    inc l
    ld b, [hl]
    inc l
    ld e, e
    inc l
    ld l, a
    inc l
    add c
    inc l
    sub l
    inc l
    and l

jr_01d_430d:
    inc l
    or h
    inc l
    push bc
    inc l
    sub $2c
    rst $20
    inc l
    ld sp, hl
    inc l
    add hl, bc
    dec l
    add hl, de
    dec l
    add hl, hl
    dec l
    ld a, [hl-]
    dec l
    ld c, h
    dec l
    ld e, a
    dec l
    ld l, [hl]
    dec l
    ld a, [hl]
    dec l
    sub c
    dec l
    sbc a
    dec l

jr_01d_432c:
    or c

jr_01d_432d:
    dec l
    jp nz, $d32d

    dec l
    push hl
    dec l
    or $2d
    add hl, bc
    ld l, $1b
    ld l, $2d
    ld l, $3f
    ld l, $53
    ld l, $65
    ld l, $77
    ld l, $89
    ld l, $98
    ld l, $a7
    ld l, $b9
    ld l, $cb
    ld l, $db
    ld l, $ee
    ld l, $fc
    ld l, $0f
    cpl
    ld e, $2f

jr_01d_4358:
    ld sp, $442f
    cpl
    ld d, l
    cpl
    ld h, [hl]
    cpl
    ld [hl], a
    cpl
    add a
    cpl
    sbc d
    cpl
    xor h
    cpl
    cp a
    cpl
    pop de
    cpl
    ld [c], a
    cpl
    db $f4
    cpl
    ld [$1c30], sp
    jr nc, jr_01d_43a1

    jr nc, jr_01d_43b4

    jr nc, jr_01d_43c5

    jr nc, @+$67

    jr nc, jr_01d_42fe

    jr nc, jr_01d_4358

    jr nc, @+$41

    ld sp, $3196
    reti


    ld sp, $31f2
    ld b, c
    ld [hl-], a
    add e
    ld [hl-], a
    call z, Call_000_0d32
    inc sp
    ld [hl-], a
    inc sp

jr_01d_4392:
    ld b, e
    inc sp
    ld c, b
    inc sp
    ld l, a
    inc sp
    add d
    inc sp
    sbc l
    inc sp
    cp e
    inc sp
    rst $18
    inc sp
    dec bc

jr_01d_43a1:
    inc [hl]
    ld [hl], $34
    ld h, d
    inc [hl]
    ld [hl], c
    inc [hl]
    add l
    inc [hl]
    cp c
    inc [hl]
    db $db
    inc [hl]
    ld de, $3e35
    dec [hl]
    ld h, d
    dec [hl]

jr_01d_43b4:
    ld a, l
    dec [hl]
    or a
    dec [hl]
    ret z

    dec [hl]
    call $f735

jr_01d_43bd:
    dec [hl]
    ld a, [bc]
    ld [hl], $25
    ld [hl], $43
    ld [hl], $67

jr_01d_43c5:
    ld [hl], $93
    ld [hl], $be
    ld [hl], $ea
    ld [hl], $f9
    ld [hl], $0d
    scf
    ld b, c
    scf
    ld h, e
    scf
    sub [hl]
    scf
    cp c
    scf
    db $e4
    scf
    rla
    jr c, jr_01d_441e

    jr c, jr_01d_4435

    jr c, jr_01d_4459

    jr c, jr_01d_4392

    jr c, jr_01d_43bd

    jr c, @+$5b

    ld l, a
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_01d_4430

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], b
    nop
    ld b, d
    ld l, a
    ld l, a
    jr nz, jr_01d_4441

    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], e
    ld l, c
    ld h, e
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_01d_445b

    ld [hl], b
    ld h, l
    ld l, [hl]
    nop
    ld d, h
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01d_4470

    ld l, a
    ld [hl], h

jr_01d_441e:
    ld h, c
    ld l, h
    ld [hl], e
    nop
    ld d, h
    ld l, a
    ld h, c
    ld h, h
    jr nz, jr_01d_4470

    ld l, c
    ld h, a
    ld l, b
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e

jr_01d_4430:
    nop
    ld c, e
    ld l, a
    ld l, a
    ld [hl], b

jr_01d_4435:
    ld h, c
    jr nz, jr_01d_4488

    ld h, c
    ld [hl], d
    ld l, e
    nop
    ld d, e
    ld l, b
    ld a, c
    jr nz, jr_01d_4488

jr_01d_4441:
    ld [hl], l
    ld a, c
    jr nz, jr_01d_4489

    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    nop
    ld e, c
    ld l, a
    ld [hl], e
    ld l, b
    ld l, c
    daa
    ld [hl], e
    jr nz, jr_01d_449d

    ld [hl], e
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h

jr_01d_4459:
    nop
    ld b, d

jr_01d_445b:
    ld l, a
    ld l, a
    jr nz, jr_01d_44b5

    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld a, c
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    daa
    ld [hl], e
    jr nz, jr_01d_44c1

    ld [hl], h
    ld h, c

jr_01d_4470:
    ld [hl], d
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_44bd

    ld l, h
    ld [hl], l
    ld h, d
    nop
    ld d, b
    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_01d_44c7

    ld l, h
    ld [hl], l
    ld h, d
    nop

jr_01d_4488:
    ld b, h

jr_01d_4489:
    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_01d_44d1

    ld l, h
    ld [hl], l
    ld h, d
    nop
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_01d_44dc

    ld l, h
    ld [hl], l
    ld h, d
    nop

jr_01d_449d:
    ld d, b
    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_01d_44e9

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    nop
    ld d, h
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_01d_44b5:
    ld [hl], h
    jr nz, jr_01d_450c

    ld l, a
    ld [hl], h
    ld h, c
    ld l, h
    ld [hl], e

jr_01d_44bd:
    nop
    ld d, b
    ld l, h
    ld [hl], l

jr_01d_44c1:
    ld l, l
    nop
    ld b, e
    ld l, b
    ld h, c
    ld [hl], d

jr_01d_44c7:
    ld l, h
    ld l, c
    ld h, l
    nop
    ld d, b
    ld h, l
    ld h, c
    ld h, e
    ld l, b
    nop

jr_01d_44d1:
    ld b, d
    ld h, c
    ld h, d
    ld a, c
    jr nz, jr_01d_4524

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    nop

jr_01d_44dc:
    ld c, h
    ld [hl], l
    ld l, c
    ld h, a
    ld l, c
    nop
    ld e, c
    ld l, a
    ld [hl], e
    ld l, b
    ld l, c
    nop
    ld d, e

jr_01d_44e9:
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld a, c
    nop
    ld d, a
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    nop
    ld c, b
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    nop
    ld c, l
    ld h, c
    ld [hl], b
    ld l, h
    ld h, l
    nop
    ld b, h
    ld c, e
    nop
    ld b, d
    ld l, a
    ld [hl], a

jr_01d_450c:
    ld [hl], e
    ld h, l
    ld [hl], d
    nop
    ld c, l
    ld h, l
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, @+$4f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    nop
    ld c, e
    ld l, c
    ld h, h
    nop
    ld d, e
    ld l, b
    ld h, l
    ld [hl], d

jr_01d_4524:
    ld [hl], d
    ld a, c
    nop
    ld b, c
    ld a, d
    ld h, c
    ld l, h
    ld h, l
    ld h, c
    nop
    ld c, d
    ld l, a
    ld h, l
    nop
    ld b, e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    nop
    ld c, b
    ld l, a
    ld l, h
    ld h, l
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_4589

    ld l, h
    ld [hl], l
    ld h, d
    nop
    ld d, b
    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_01d_4593

    ld l, h
    ld [hl], l
    ld h, d
    nop
    ld b, h
    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_01d_459d

    ld l, h
    ld [hl], l
    ld h, d
    nop
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_01d_45a8

    ld l, h
    ld [hl], l
    ld h, d
    nop
    ld d, b
    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_01d_45b5

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    nop
    ld d, b
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01d_45a5

    jr nz, jr_01d_45d1

    ld [hl], l
    ld [hl], h
    ld [hl], h
    nop
    jr z, jr_01d_45da

    ld [hl], h
    ld h, c

jr_01d_4589:
    ld [hl], h
    ld [hl], l
    ld [hl], e
    add hl, hl
    nop
    ld d, d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_01d_4593:
    ld [hl], e
    nop
    ld b, d
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, @+$55

    ld h, e
    ld l, a

jr_01d_459d:
    ld [hl], d
    ld h, l
    nop
    ld b, c
    db $76
    ld h, l
    ld [hl], d
    ld h, c

jr_01d_45a5:
    ld h, a
    ld h, l
    nop

jr_01d_45a8:
    ld b, d
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_45f2

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    nop
    ld b, c
    db $76

jr_01d_45b5:
    ld h, a
    ld l, $20
    ld b, h
    ld [hl], d
    ld l, c
    db $76
    ld h, l
    nop
    ld b, [hl]
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_01d_4612

    ld h, l
    ld h, l
    ld [hl], b
    ld [hl], e
    nop
    ld b, c
    db $76
    ld h, a
    ld l, $20

jr_01d_45d1:
    ld d, b
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], e
    nop
    ld d, b
    ld h, c
    ld [hl], d

jr_01d_45da:
    jr nz, jr_01d_462f

    ld h, c
    db $76
    ld h, l
    ld [hl], e
    nop
    ld d, b
    ld h, c
    ld [hl], d
    jr nz, jr_01d_4635

    ld l, [hl]
    ld [hl], e
    nop
    ld d, e
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_4642

    ld h, c
    db $76
    ld h, l

jr_01d_45f2:
    ld [hl], e
    nop
    ld b, d
    ld l, c
    ld [hl], d
    ld h, h
    ld l, c
    ld h, l
    jr nz, jr_01d_463e

    ld h, c
    ld h, h
    ld h, a
    ld h, l
    ld [hl], e
    nop
    ld b, [hl]
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], h
    nop
    ld b, d
    ld h, c
    ld h, e
    ld l, e
    nop
    ld d, h
    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b

jr_01d_4612:
    ld l, c
    ld h, l
    ld [hl], e
    nop
    ld b, d
    ld l, c
    ld [hl], d
    ld h, h
    ld l, c
    ld h, l
    nop
    ld b, l
    ld h, c
    ld h, a
    ld l, h
    ld h, l
    nop
    ld b, c
    ld l, h
    ld h, d
    ld h, c
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    nop
    ld c, b
    ld l, a

jr_01d_462f:
    ld l, h
    ld h, l
    dec l
    ld l, c
    ld l, [hl]
    dec l

jr_01d_4635:
    ld c, a
    ld l, [hl]
    ld h, l
    nop
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], e

jr_01d_463e:
    nop
    ld d, d
    ld h, l
    ld l, l

jr_01d_4642:
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld d, [hl]
    ld d, e
    jr nz, jr_01d_469f

    ld h, l
    ld h, e
    ld l, a
    ld [hl], d
    ld h, h
    ld [hl], e
    nop
    ld d, a
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld [hl], d
    nop
    ld c, [hl]
    ld l, a
    jr nz, jr_01d_46ac

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    nop
    ld b, c
    jr nz, jr_01d_46d3

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01d_46d7

    ld [hl], e
    jr nz, jr_01d_46d7

    ld h, c
    ld l, h
    ld l, h
    dec l
    ld bc, $6e69
    ld h, a
    jr nz, jr_01d_46e1

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01d_46f4

    ld l, b
    ld h, l
    jr nz, jr_01d_46f7

    ld l, e
    ld a, c
    ld l, $03
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    inc l
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h

jr_01d_469f:
    jr nz, jr_01d_46e4

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $2107
    ld [bc], a

jr_01d_46ac:
    ld b, c
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01d_4728

    ld l, a
    ld [hl], b
    jr nz, jr_01d_4728

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    inc l
    ld bc, $2049
    ld l, c
    ld l, [hl]
    db $76
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld l, $2e
    ld l, $01
    jr nz, jr_01d_46f1

    jr nz, jr_01d_46f3

jr_01d_46d3:
    jr nz, jr_01d_46f5

    jr nz, jr_01d_46f7

jr_01d_46d7:
    jr nz, jr_01d_46f9

    ld d, b
    ld h, l
    ld h, c
    ld h, e
    ld l, b
    inc bc
    nop
    ld b, a

jr_01d_46e1:
    ld [hl], d
    ld h, c
    ld l, [hl]

jr_01d_46e4:
    ld h, h
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $2c07

jr_01d_46f1:
    jr nz, @+$79

jr_01d_46f3:
    ld h, l

jr_01d_46f4:
    ld l, h

jr_01d_46f5:
    ld h, e
    ld l, a

jr_01d_46f7:
    ld l, l
    ld h, l

jr_01d_46f9:
    ld bc, $6f74
    jr nz, jr_01d_474b

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_01d_475b

    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    ld hl, $0003
    ld d, h
    ld h, c
    ld l, h
    ld l, e
    jr nz, jr_01d_4785

    ld l, a
    jr nz, jr_01d_4788

    ld l, b
    ld h, l
    jr nz, @+$44

    ld l, a
    ld h, d
    dec l
    ld l, a
    ld l, l
    ld h, d
    ld bc, $766f
    ld h, l
    ld [hl], d
    jr nz, jr_01d_4799

    ld l, b
    ld h, l
    ld [hl], d

jr_01d_4728:
    ld h, l
    jr nz, jr_01d_479f

    ld l, a
    jr nz, jr_01d_4795

    ld l, a
    ld bc, $6f74
    jr nz, @+$52

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_01d_477f

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld h, h
    jr nz, jr_01d_47ad

jr_01d_474b:
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01d_47ba

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c
    ld bc, $6669
    jr nz, @+$7b

jr_01d_475b:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01d_47c7

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_01d_47c7

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003

jr_01d_477f:
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01d_47ed

jr_01d_4785:
    ld l, a
    ld l, h
    ld h, l

jr_01d_4788:
    jr nz, jr_01d_4801

    ld l, c
    ld l, h
    ld l, h
    ld bc, $6174
    ld l, e
    ld h, l
    jr nz, jr_01d_480d

    ld l, a

jr_01d_4795:
    ld [hl], l
    jr nz, jr_01d_480c

    ld l, a

jr_01d_4799:
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b

jr_01d_479f:
    daa
    ld [hl], e
    jr nz, jr_01d_47e6

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld b, a
    ld l, a

jr_01d_47ad:
    jr nz, jr_01d_4822

    ld h, l
    ld h, l
    jr nz, jr_01d_4803

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    ccf
    nop
    ld c, h

jr_01d_47ba:
    ld h, l
    ld h, c
    db $76
    ld h, l
    jr nz, jr_01d_4834

    ld l, b
    ld h, l
    jr nz, jr_01d_4807

    ld h, c
    ld [hl], e
    ld [hl], h

jr_01d_47c7:
    ld l, h
    ld h, l
    ccf
    nop
    ld d, b
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$52

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    ld hl, $0003
    ld b, a
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_4826

    ld l, b
    ld h, c
    ld l, l

jr_01d_47e6:
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $2007

jr_01d_47ed:
    ld l, c
    ld [hl], e
    jr nz, jr_01d_4859

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld d, a
    ld h, l
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$76

    ld l, a

jr_01d_4801:
    jr nz, @+$4f

jr_01d_4803:
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a

jr_01d_4807:
    ld bc, $6f57
    ld [hl], d
    ld l, h

jr_01d_480c:
    ld h, h

jr_01d_480d:
    inc l
    jr nz, jr_01d_4857

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_4826

    ld l, $03
    nop

jr_01d_4822:
    ld d, a
    ld h, l
    jr nz, jr_01d_489d

jr_01d_4826:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$6e

    ld l, c
    ld l, e
    ld h, l
    ld bc, $6f74
    jr nz, jr_01d_48ab

jr_01d_4834:
    ld h, l
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01d_48c1

    ld l, a
    ld [hl], l
    jr nz, jr_01d_48b2

    ld l, a
    ld [hl], d
    ld bc, $6177
    ld l, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    inc l

jr_01d_4857:
    jr nz, @+$67

jr_01d_4859:
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $03
    nop
    ld c, h
    ld h, l
    ld [hl], h
    jr nz, @+$77

    ld [hl], e
    jr nz, @+$64

    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_48e9

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    rlca
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, jr_01d_48f4

    ld h, l
    ld [hl], b
    ld [hl], h
    ld bc, $656d
    jr nz, jr_01d_4908

    ld h, c
    ld l, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld c, c
    jr nz, jr_01d_4900

jr_01d_489d:
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01d_490a

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01d_491b

    ld l, a
    ld bc, $6562

jr_01d_48ab:
    ld h, c
    ld [hl], h
    jr nz, jr_01d_48fc

    ld h, c
    ld [hl], d
    ld l, c

jr_01d_48b2:
    ld l, a
    ld hl, $0003
    ld c, c
    jr nz, jr_01d_491d

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_4922

    ld h, c
    ld [hl], d

jr_01d_48c1:
    ld h, l
    jr nz, @+$63

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $6e61
    ld a, c
    jr nz, jr_01d_4915

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_4917

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], e
    ld l, b
    ld l, c
    daa
    ld [hl], e
    dec l
    ld h, c
    jr nz, jr_01d_495b

jr_01d_48e9:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $5401
    ld l, b
    ld h, c
    ld [hl], h
    daa

jr_01d_48f4:
    ld [hl], e
    dec l
    ld h, c
    jr nz, @+$6f

    ld h, l
    ld h, c
    ld l, [hl]

jr_01d_48fc:
    inc l
    ld bc, $6f42

jr_01d_4900:
    ld [hl], a
    ld [hl], e
    ld h, l
    ld [hl], d
    ld hl, $0003
    ld b, h

jr_01d_4908:
    ld l, a
    ld l, [hl]

jr_01d_490a:
    daa
    ld [hl], h
    jr nz, jr_01d_4981

    ld h, c
    ld a, c
    jr nz, jr_01d_4985

    ld [hl], l
    ld h, e
    ld l, b

jr_01d_4915:
    dec l
    ld h, c

jr_01d_4917:
    ld bc, $6874
    ld l, c

jr_01d_491b:
    ld l, [hl]
    ld h, a

jr_01d_491d:
    ld hl, $0003
    ld d, a
    ld h, l

jr_01d_4922:
    ld l, h
    ld l, h
    jr nz, jr_01d_499a

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01d_494d

    ld b, e
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl+], a
    ld bc, $6562
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01d_49a8

    ld l, a
    ld [hl], h
    jr nz, jr_01d_49a0

    ld h, l
    ld bc, $6177
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_49b6

    ld a, c
    jr nz, @+$76

    ld l, c

jr_01d_494d:
    ld l, l
    ld h, l
    ld hl, $0003
    rlca
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h
    ld bc, $6567

jr_01d_495b:
    ld [hl], h
    jr nz, jr_01d_49bf

    jr nz, jr_01d_49c7

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $6373
    ld l, a
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld c, a
    ld c, e
    inc l
    jr nz, jr_01d_4979

    ld l, $01
    ld d, e
    ld l, b
    ld h, c
    ld l, h
    ld l, h

jr_01d_4979:
    jr nz, jr_01d_49f2

    ld h, l
    jr nz, jr_01d_49f1

    ld [hl], h
    ld h, c
    ld [hl], d

jr_01d_4981:
    ld [hl], h
    ld bc, $6874

jr_01d_4985:
    ld h, l
    jr nz, jr_01d_49fc

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ccf
    nop
    ld c, a
    ld l, b
    inc l
    jr nz, jr_01d_4a11

    ld l, a
    ld [hl], l

jr_01d_499a:
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$70

    ld l, a

jr_01d_49a0:
    ld [hl], h
    ld bc, $656d
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, h

jr_01d_49a8:
    ld l, h
    ld a, c
    jr nz, jr_01d_4a1c

    ld [hl], d
    ld h, l
    ld [hl], b
    ld h, c
    ld [hl], d
    ld h, l
    ld h, h
    ccf
    ld [bc], a
    ld b, h

jr_01d_49b6:
    ld l, a
    jr nz, jr_01d_4a2d

    ld h, l
    ld l, h
    ld l, h
    jr nz, @+$77

    ld [hl], e

jr_01d_49bf:
    jr nz, @+$79

    ld l, b
    ld h, l
    ld l, [hl]
    ld bc, $6f79

jr_01d_49c7:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01d_4a3f

    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], e
    ld l, b
    ld l, c
    ld hl, $0003
    ld c, l
    ld h, c
    ld l, l
    ld l, l
    ld h, c
    jr nz, jr_01d_4a30

    ld l, c
    ld h, c
    ld hl, $0003
    ld c, a
    ld l, b
    jr nz, jr_01d_4a59

    ld a, c
    ld hl, $0003
    ld h, a

jr_01d_49f1:
    ld l, a

jr_01d_49f2:
    ld l, a
    dec l
    ld h, a
    ld l, a
    ld l, a
    jr nz, jr_01d_4a60

    ld h, c
    dec l
    ld h, a

jr_01d_49fc:
    ld h, c
    inc bc
    nop
    ld c, a
    ld l, a
    ld l, b
    dec l
    ld l, a
    ld l, a
    ld l, b
    inc l
    jr nz, jr_01d_4a78

    ld l, a
    ld l, b
    ld hl, $0003
    ld c, b
    ld l, c
    inc l

jr_01d_4a11:
    jr nz, jr_01d_4a1a

    ld hl, $4901
    jr nz, jr_01d_4a7b

    ld h, c
    ld l, [hl]

jr_01d_4a1a:
    daa
    ld [hl], h

jr_01d_4a1c:
    dec l
    ld h, c
    jr nz, jr_01d_4a97

    ld h, c
    ld l, c
    ld [hl], h
    jr nz, jr_01d_4a99

    ld l, a
    ld bc, $6177
    ld [hl], h
    ld h, e
    ld l, b
    dec l

jr_01d_4a2d:
    ld h, c
    jr nz, jr_01d_4aa9

jr_01d_4a30:
    ld l, a
    ld [hl], l
    jr nz, jr_01d_4aa4

    ld l, h
    ld h, c
    ld a, c
    ld hl, $0003
    ld c, [hl]
    ld l, c
    ld h, e
    ld h, l
    dec l

jr_01d_4a3f:
    ld h, c
    jr nz, jr_01d_4aac

    ld l, a
    ld h, d
    ld hl, $5920
    ld l, a
    ld [hl], l
    ld bc, $6c70
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    ld hl, $5420
    ld l, b
    ld h, l
    jr nz, jr_01d_4ac5

    ld h, l
    ld [hl], a

jr_01d_4a59:
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    daa

jr_01d_4a60:
    ld [hl], e
    dec l
    ld h, c
    jr nz, jr_01d_4acc

    ld l, a
    ld l, a
    ld h, h
    ld hl, $0003
    ld c, c
    jr nz, jr_01d_4ad5

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01d_4abd

    daa
    ld l, h
    ld l, h
    dec l

jr_01d_4a78:
    ld h, c
    jr nz, jr_01d_4ae3

jr_01d_4a7b:
    ld h, c
    db $76
    ld h, l
    ld bc, $6f74
    jr nz, jr_01d_4af3

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01d_4af9

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6b

    ld h, [hl]
    dec l
    ld h, c
    ld bc, $2049

jr_01d_4a97:
    ld [hl], a
    ld h, c

jr_01d_4a99:
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, jr_01d_4b00

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, @+$4f

    ld h, c

jr_01d_4aa4:
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $03

jr_01d_4aa9:
    nop
    ld d, h
    ld l, a

jr_01d_4aac:
    ld h, h
    ld h, c
    ld a, c
    daa
    ld [hl], e
    jr nz, jr_01d_4b27

    ld l, b
    ld h, l
    jr nz, jr_01d_4b1b

    ld h, c
    ld a, c
    ld bc, $2049
    ld h, d

jr_01d_4abd:
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01d_4b0f

    ld h, c
    ld [hl], d
    ld l, c

jr_01d_4ac5:
    ld l, a
    ld hl, $5701
    ld h, c
    ld l, b
    inc l

jr_01d_4acc:
    jr nz, jr_01d_4b36

    ld h, c
    ld l, b
    inc l
    jr nz, jr_01d_4b1b

    ld b, c
    ld c, b

jr_01d_4ad5:
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_01d_4b53

    ld h, l
    ld h, l
    inc l

jr_01d_4ae3:
    jr nz, @+$4f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld hl, $4e01
    ld h, l
    ld a, b
    ld [hl], h
    jr nz, @+$76

    ld l, c
    ld l, l

jr_01d_4af3:
    ld h, l
    jr nz, jr_01d_4b3f

    daa
    ld l, h
    ld l, h

jr_01d_4af9:
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld hl, $5701

jr_01d_4b00:
    ld h, c
    ld l, b
    inc l
    jr nz, @+$6a

    ld h, c
    ld l, b
    inc l
    jr nz, @+$4a

    ld b, c
    ld c, b
    ld hl, $0003

jr_01d_4b0f:
    ld c, c
    jr nz, jr_01d_4b85

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01d_4b7a

    ld h, l
    jr nz, jr_01d_4b8f

jr_01d_4b1b:
    ld l, b
    ld h, l
    jr nz, jr_01d_4b8e

    ld l, [hl]
    ld h, l
    ld bc, $6f74
    jr nz, jr_01d_4b9d

    ld l, c

jr_01d_4b27:
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01d_4b9c

    ld h, l
    ld a, b
    ld [hl], h
    ld bc, $6f74
    ld [hl], l
    ld [hl], d

jr_01d_4b36:
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003

jr_01d_4b3f:
    ld b, l
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01d_4bb2

    ld l, [hl]
    jr nz, jr_01d_4b99

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld bc, $6f57

jr_01d_4b53:
    ld [hl], d
    ld l, h
    ld h, h
    jr nz, jr_01d_4bc4

    ld l, a
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_01d_4bc5

    ld l, a
    ld l, h
    ld h, [hl]
    ld l, $02
    ld c, c
    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01d_4bdf

    ld l, a
    jr nz, jr_01d_4bde

    ld l, h
    ld h, c
    ld a, c
    ld bc, $6f73
    jr nz, jr_01d_4bd8

    ld h, c
    ld h, h
    ld l, h
    ld a, c

jr_01d_4b7a:
    ld hl, $0003
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, @+$66

    ld l, a

jr_01d_4b85:
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_4bef

    ld h, c
    ld [hl], d

jr_01d_4b8e:
    ld h, l

jr_01d_4b8f:
    ld bc, $6669
    jr nz, jr_01d_4bfc

    ld h, l
    jr nz, jr_01d_4c0e

    ld l, c
    ld l, [hl]

jr_01d_4b99:
    ld [hl], e
    jr nz, jr_01d_4c0b

jr_01d_4b9c:
    ld [hl], d

jr_01d_4b9d:
    jr nz, jr_01d_4c0b

    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld c, [hl]
    ld l, a
    jr nz, jr_01d_4bf1

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_4bf3

    ld l, b
    ld h, c

jr_01d_4bb2:
    ld l, l
    ld [hl], b
    jr nz, jr_01d_4c1e

    ld h, c
    ld [hl], e
    ld bc, $7665
    ld h, l
    ld [hl], d
    jr nz, jr_01d_4c36

    ld l, a
    ld l, [hl]
    jr nz, @+$52

    ld h, l

jr_01d_4bc4:
    ld h, c

jr_01d_4bc5:
    ld h, e
    ld l, b
    daa
    ld [hl], e
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld b, h

jr_01d_4bd8:
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_4c52

jr_01d_4bde:
    ld l, b

jr_01d_4bdf:
    ld h, l
    ld a, c
    jr nz, jr_01d_4c4e

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld bc, $6f64
    ld [hl], a
    ld l, [hl]
    jr nz, jr_01d_4c61

    ld l, b
    ld h, l

jr_01d_4bef:
    ld [hl], d
    ld h, l

jr_01d_4bf1:
    jr nz, jr_01d_4c67

jr_01d_4bf3:
    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$79

jr_01d_4bfc:
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_4c50

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    ld [bc], a
    ld d, h
    ld l, a
    ld [hl], l
    ld [hl], d

jr_01d_4c0b:
    ld l, [hl]
    ld h, c
    ld l, l

jr_01d_4c0e:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ccf
    jr nz, jr_01d_4c6d

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $7274
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c

jr_01d_4c1e:
    daa
    ld [hl], e
    jr nz, @+$64

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01d_4c9a

    ld h, l
    ld l, [hl]
    ld [hl], h
    ld bc, $6f74
    jr nz, jr_01d_4c7c

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_4c79

jr_01d_4c36:
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_4ca7

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, @+$52

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    ld bc, $6977
    ld l, h
    ld l, h

jr_01d_4c4e:
    jr nz, jr_01d_4cb5

jr_01d_4c50:
    ld l, [hl]
    ld [hl], h

jr_01d_4c52:
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6f74
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l

jr_01d_4c61:
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a
    ld h, h

jr_01d_4c67:
    ld h, c
    ld a, c
    ld l, $03
    nop
    ld c, c

jr_01d_4c6d:
    ld h, [hl]
    jr nz, jr_01d_4ce9

    ld l, a
    ld [hl], l
    jr nz, jr_01d_4ce0

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01d_4ced

jr_01d_4c79:
    ld l, b
    ld l, c
    ld [hl], e

jr_01d_4c7c:
    ld bc, $6c70
    ld h, c
    ld h, e
    ld h, l
    inc l
    jr nz, jr_01d_4cfe

    ld l, a
    ld [hl], l
    jr nz, jr_01d_4cec

    ld h, c
    ld l, [hl]
    jr nz, jr_01d_4d03

    ld l, c
    ld [hl], e
    ld l, c
    ld [hl], h
    ld bc, $7375
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, c

jr_01d_4c9a:
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01d_4d1e

    ld l, a
    ld [hl], l

jr_01d_4ca7:
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01d_4d0f

    ld bc, $7270
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c

jr_01d_4cb5:
    ld h, e
    ld h, l
    jr nz, jr_01d_4d2b

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ccf
    nop
    ld d, b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    inc l
    jr nz, jr_01d_4d2f

    ld l, a
    jr nz, @+$63

    ld l, b
    ld h, l
    ld h, c
    ld h, h
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_4d4c

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01d_4d46

    ld l, l
    ld [hl], b
    ld [hl], d

jr_01d_4ce0:
    ld l, a
    db $76
    ld h, l
    ld bc, $6e61
    ld h, h
    jr nz, jr_01d_4d5c

jr_01d_4ce9:
    ld l, a
    ld l, l
    ld h, l

jr_01d_4cec:
    ld h, h

jr_01d_4ced:
    ld h, c
    ld a, c
    jr nz, jr_01d_4d56

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_4d6f

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01d_4cfe:
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_01d_4d03:
    ld [hl], h
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    daa
    ld h, h

jr_01d_4d0f:
    jr nz, jr_01d_4d7d

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$76

    ld l, a
    ld bc, $6f67
    jr nz, jr_01d_4d7e

    ld h, c
    ld h, e

jr_01d_4d1e:
    ld l, e
    jr nz, jr_01d_4d85

    ld l, a
    ld [hl], a
    ld l, [hl]
    inc l
    ld bc, $6e65
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01d_4d2b:
    jr nz, jr_01d_4da1

    ld l, b
    ld h, c

jr_01d_4d2f:
    ld [hl], h
    jr nz, @+$6a

    ld l, a
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_4db4

    ld l, b
    ld h, l
    jr nz, jr_01d_4dbb

    ld h, c
    ld a, c

jr_01d_4d46:
    ld bc, $6f74
    jr nz, jr_01d_4dbf

    ld l, b

jr_01d_4d4c:
    ld h, l
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03

jr_01d_4d56:
    nop
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l

jr_01d_4d5c:
    jr nz, jr_01d_4dca

    ld h, l
    ld [hl], h
    jr nz, jr_01d_4dd6

    ld l, b
    ld h, l
    ld bc, $6f74
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01d_4d6f:
    jr nz, @+$64

    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld b, d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l

jr_01d_4d7d:
    ld [hl], d

jr_01d_4d7e:
    jr nz, @+$6e

    ld [hl], l
    ld h, e
    ld l, e
    jr nz, @+$70

jr_01d_4d85:
    ld h, l
    ld a, b
    ld [hl], h
    ld bc, $6974
    ld l, l
    ld h, l
    inc l
    jr nz, @+$09

    ld l, $01
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01d_4e0c

    ld l, a
    jr nz, @+$76

    ld [hl], d
    ld a, c
    jr nz, jr_01d_4e00

    ld h, a
    ld h, c

jr_01d_4da1:
    ld l, c
    ld l, [hl]
    ccf
    nop
    ld d, h
    ld h, c
    ld l, h
    ld l, e
    jr nz, jr_01d_4e1f

    ld l, a
    jr nz, jr_01d_4e02

    ld l, a
    ld h, c
    ld h, h
    jr nz, jr_01d_4e14

    ld [hl], h

jr_01d_4db4:
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_4e1f

    ld l, [hl]

jr_01d_4dbb:
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]

jr_01d_4dbf:
    ld h, e
    ld h, l
    jr nz, jr_01d_4e24

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $2061

jr_01d_4dca:
    ld [hl], b
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, @+$74

    ld l, a
    ld [hl], l

jr_01d_4dd6:
    ld l, [hl]
    ld h, h
    ld l, $03
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    inc l
    ld bc, $2e07
    jr nz, @+$5b

    ld l, a
    ld [hl], l
    ld bc, $6c70
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    ld l, $20
    ld b, c
    ld l, l
    ld h, c
    ld a, d
    ld l, c

jr_01d_4e00:
    ld l, [hl]
    ld h, a

jr_01d_4e02:
    ld hl, $2002
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01d_4e77

    ld [hl], l

jr_01d_4e0c:
    ld h, e
    ld l, e
    jr nz, jr_01d_4e87

    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c

jr_01d_4e14:
    ld l, [hl]
    ld h, a
    ld bc, $656e
    ld a, b
    ld [hl], h
    jr nz, jr_01d_4e91

    ld l, c
    ld l, l

jr_01d_4e1f:
    ld h, l
    ld l, $01
    ld d, a
    ld h, c

jr_01d_4e24:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01d_4e9c

    ld l, a
    jr nz, @+$76

    ld [hl], d
    ld a, c
    jr nz, jr_01d_4e90

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ccf
    nop
    ld d, h
    ld h, c
    ld l, h
    ld l, e
    jr nz, jr_01d_4eaf

    ld l, a
    jr nz, jr_01d_4e92

    ld l, a
    ld h, c
    ld h, h
    jr nz, jr_01d_4ea4

    ld [hl], h
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_4eaf

    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01d_4eb4

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $2061
    ld [hl], b
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01d_4ed6

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_4ed1

    ld [hl], d
    ld h, l
    jr nz, jr_01d_4eeb

    ld h, l
    ld l, h
    ld h, e

jr_01d_4e77:
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01d_4ef0

    ld l, a
    ld bc, $6f6a
    ld l, c
    ld l, [hl]
    jr nz, jr_01d_4ef9

    ld [hl], e
    jr nz, @+$63

jr_01d_4e87:
    ld l, [hl]
    ld a, c
    jr nz, jr_01d_4eff

    ld l, c
    ld l, l
    ld h, l
    ld l, $03

jr_01d_4e90:
    nop

jr_01d_4e91:
    ld d, a

jr_01d_4e92:
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01d_4f10

    ld l, a
    ld [hl], l
    jr nz, jr_01d_4f05

    ld l, a

jr_01d_4e9c:
    ld l, c
    ld l, [hl]
    jr nz, jr_01d_4f15

    ld [hl], e
    jr nz, jr_01d_4f09

    ld l, a

jr_01d_4ea4:
    ld [hl], d
    ld bc, $6e61
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01d_4f23

jr_01d_4eaf:
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c

jr_01d_4eb4:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ccf
    nop
    ld d, h
    ld h, c
    ld l, h
    ld l, e
    jr nz, jr_01d_4f34

    ld l, a
    jr nz, jr_01d_4f17

    ld l, a
    ld h, c
    ld h, h
    jr nz, jr_01d_4f29

    ld [hl], h
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_4f34

    ld l, [hl]
    ld [hl], h

jr_01d_4ed1:
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l

jr_01d_4ed6:
    jr nz, jr_01d_4f39

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $2061
    ld [hl], b
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01d_4f5b

    ld l, a
    ld [hl], l

jr_01d_4eeb:
    ld l, [hl]
    ld h, h
    ld l, $03
    nop

jr_01d_4ef0:
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_01d_4efe

    ld l, $01

jr_01d_4ef9:
    ld c, l
    ld h, c
    ld a, c
    jr nz, jr_01d_4f75

jr_01d_4efe:
    ld h, l

jr_01d_4eff:
    jr nz, jr_01d_4f63

    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]

jr_01d_4f05:
    ld bc, $6874
    ld h, l

jr_01d_4f09:
    jr nz, jr_01d_4f7f

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c

jr_01d_4f10:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ccf

jr_01d_4f15:
    nop
    ld c, a

jr_01d_4f17:
    ld l, b
    inc l
    jr nz, jr_01d_4f94

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01d_4f90

    ld l, a

jr_01d_4f23:
    ld [hl], h
    ld bc, $656d
    ld l, [hl]
    ld [hl], h

jr_01d_4f29:
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_01d_4f9f

    ld [hl], d
    ld h, l
    ld [hl], b
    ld h, c
    ld [hl], d

jr_01d_4f34:
    ld h, l
    ld h, h
    ccf
    ld [bc], a
    ld b, h

jr_01d_4f39:
    ld l, a
    jr nz, jr_01d_4fb0

    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_01d_4fb6

    ld [hl], e
    jr nz, @+$79

    ld l, b
    ld h, l
    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$74

    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_4fca

    ld [hl], d

jr_01d_4f5b:
    ld h, l
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01d_4fd6

    ld l, b

jr_01d_4f63:
    ld l, c
    ld [hl], e
    ld bc, $7274
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    jr nz, jr_01d_4fe2

    ld l, a
    ld bc, $2007
    ld h, [hl]
    ld l, a
    ld [hl], d

jr_01d_4f75:
    ld [bc], a
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_4fcf

jr_01d_4f7f:
    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01d_4f90:
    ld l, $03
    nop
    ld c, c

jr_01d_4f94:
    jr nz, jr_01d_5006

    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, b

jr_01d_4f9f:
    ld l, c
    ld [hl], e
    ld bc, $7274
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    jr nz, jr_01d_501e

    ld l, a
    ld bc, $2007
    ld h, [hl]
    ld l, a

jr_01d_4fb0:
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld h, c
    ld l, e
    ld l, c

jr_01d_4fb6:
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_4fc9

    jr nz, jr_01d_502c

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld bc, $6e69
    jr nz, jr_01d_5015

    ld h, l
    ld h, c
    ld h, e
    ld l, b

jr_01d_4fc9:
    daa

jr_01d_4fca:
    ld [hl], e
    ld bc, $6f54
    ld [hl], l

jr_01d_4fcf:
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01d_4fd6:
    ld l, $03
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h

jr_01d_4fe2:
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    inc l
    ld bc, $2107
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01d_5066

    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_01d_506a

    ld h, l
    ld h, c
    ld h, h
    ld [hl], e
    ld a, [hl-]
    ld bc, $5422
    ld l, a
    jr nz, @+$52

    ld h, l
    ld h, c
    ld h, e

jr_01d_5006:
    ld l, b
    daa
    ld [hl], e
    ld bc, $6143
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    inc l
    jr nz, jr_01d_505b

    ld l, a
    ld l, h

jr_01d_5015:
    ld h, l
    jr nz, jr_01d_5049

    ld l, $22
    inc bc
    nop
    ld d, b
    ld [hl], l

jr_01d_501e:
    ld [hl], e
    ld l, b
    jr nz, jr_01d_5091

    ld [hl], d
    jr nz, jr_01d_5095

    ld [hl], l
    ld l, h
    ld l, h
    inc l
    ld bc, $7469

jr_01d_502c:
    jr nz, jr_01d_50a5

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_5096

    ld [hl], l
    ld h, h
    ld h, a
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$65

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, @+$66

    ld l, a
    ld l, a

jr_01d_5049:
    ld [hl], d
    ld bc, $7369
    jr nz, jr_01d_50c2

    ld l, b
    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_50c8

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $03
    nop

jr_01d_505b:
    ld b, e
    ld h, c
    ld l, l
    ld h, l
    ld [hl], d
    ld h, c
    jr nz, jr_01d_50b0

    ld l, a
    ld h, h
    ld h, l

jr_01d_5066:
    ld bc, $6f43
    ld [hl], l

jr_01d_506a:
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, jr_01d_50bc

    ld h, c
    ld [hl], b
    ld bc, $6353
    ld l, a
    ld [hl], d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], d
    ld h, h
    ld bc, $6553
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    ld bc, $6947
    db $76
    ld h, l
    jr nz, jr_01d_50e0

    ld [hl], b
    ld bc, $7551
    ld l, c
    ld [hl], h

jr_01d_5091:
    nop
    ld b, e
    ld l, b
    ld h, c

jr_01d_5095:
    ld [hl], d

jr_01d_5096:
    ld l, $20
    ld b, h
    ld h, c
    ld [hl], h
    ld h, c
    ld bc, $7453
    ld h, c
    ld [hl], d
    ld [hl], e
    ld bc, $654d

jr_01d_50a5:
    ld [hl], e
    ld [hl], e
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_01d_50cc

    jr nz, @+$22

    jr nz, jr_01d_50d0

jr_01d_50b0:
    jr nz, @+$22

    jr nz, jr_01d_50d4

    jr nz, jr_01d_50b7

    ld d, e

jr_01d_50b7:
    ld h, c
    db $76
    ld h, l
    jr nz, jr_01d_50e2

jr_01d_50bc:
    jr nz, @+$53

    ld [hl], l
    ld l, c
    ld [hl], h
    nop

jr_01d_50c2:
    ld c, [hl]
    ld h, c
    db $76
    ld l, c
    ld h, a
    ld h, c

jr_01d_50c8:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]

jr_01d_50cc:
    ld bc, $6843
    ld h, c

jr_01d_50d0:
    ld [hl], d
    ld l, $20
    ld b, h

jr_01d_50d4:
    ld h, c
    ld [hl], h
    ld h, c
    ld bc, $7453
    ld h, c
    ld [hl], d
    ld [hl], e
    ld bc, $654d

jr_01d_50e0:
    ld [hl], e
    ld [hl], e

jr_01d_50e2:
    ld h, c
    ld h, a
    ld h, l
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_01d_50f2

    ld d, e

jr_01d_50f2:
    ld h, c
    db $76
    ld h, l
    jr nz, @+$28

    jr nz, @+$53

    ld [hl], l
    ld l, c
    ld [hl], h
    nop

    db $43, $61, $6d, $65, $72, $61, $20, $4d, $6f, $64, $65, $01, $43, $6f, $75, $72
    db $73, $65, $20, $4d, $61, $70, $01, $53, $63, $6f, $72, $65, $63, $61, $72, $64
    db $01, $53, $65, $74, $74, $69, $6e, $67, $73, $01, $47, $69, $76, $65, $20, $55
    db $70, $01, $53, $61, $76, $65, $20, $26, $20, $51, $75, $69, $74, $00, $43, $61
    db $6d, $65, $72, $61, $20, $4d, $6f, $64, $65, $01, $43, $6f, $75, $72, $73, $65
    db $20, $4d, $61, $70, $01, $53, $63, $6f, $72, $65, $63, $61, $72, $64, $01, $53
    db $65, $74, $74, $69, $6e, $67, $73, $01, $47, $69, $76, $65, $20, $55, $70, $01
    db $51, $75, $69, $74, $00, $43, $61, $6d, $65, $72, $61, $20, $4d, $6f, $64, $65
    db $01, $43, $6f, $75, $72, $73, $65, $20, $4d, $61, $70, $01, $48, $6f, $6c, $65
    db $20, $4f, $75, $74, $01, $57, $69, $6e, $64, $20, $44, $69, $72, $65, $63, $74
    db $69, $6f, $6e, $01, $57, $69, $6e, $64, $20, $53, $70, $65, $65, $64, $01, $53
    db $65, $74, $74, $69, $6e, $67, $73, $01, $42, $61, $63, $6b, $20, $74, $6f, $20
    db $4d, $65, $6e, $75, $00, $51, $75, $69, $74, $20, $50, $72, $61, $63, $74, $69
    db $63, $65, $01, $57, $69, $6e, $64, $20, $44, $69, $72, $65, $63, $74, $69, $6f
    db $6e, $01, $57, $69, $6e, $64, $20, $53, $70, $65, $65, $64, $01, $53, $65, $74
    db $74, $69, $6e, $67, $73, $00, $51, $75, $69, $74, $20, $50, $72, $61, $63, $74
    db $69, $63, $65, $01, $53, $65, $74, $74, $69, $6e, $67, $73, $00, $4d, $75, $73
    db $69, $63, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $01, $33
    db $2d, $44, $20, $53, $63, $72, $65, $65, $6e, $00, $43, $6f, $6e, $74, $69, $6e
    db $75, $65, $01, $4d, $75, $6c, $6c, $69, $67, $61, $6e, $01, $48, $6f, $6c, $65
    db $20, $4f, $75, $74, $00, $43, $6f, $6e, $74, $69, $6e, $75, $65, $01, $4d, $75
    db $6c, $6c, $69, $67, $61, $6e, $01, $53, $74, $61, $72, $74, $20, $4f, $76, $65
    db $72, $01, $42, $61, $63, $6b, $20, $74, $6f, $20, $4d, $61, $69, $6e, $20, $4d
    db $65, $6e, $75, $00, $51, $75, $69, $74, $20, $4d, $69, $6e, $69, $2d, $47, $61
    db $6d, $65, $01, $53, $65, $74, $74, $69, $6e, $67, $73, $00, $53, $61, $76, $65
    db $20, $63, $75, $72, $72, $65, $6e, $74, $20, $70, $72, $6f, $67, $72, $65, $73
    db $73, $3f, $00, $4f, $4b, $20, $74, $6f, $20, $71, $75, $69, $74, $01, $74, $68
    db $69, $73, $20, $72, $6f, $75, $6e, $64, $3f, $00, $4f, $4b, $20, $74, $6f, $20
    db $72, $65, $74, $75, $72, $6e, $01, $74, $6f, $20, $4d, $61, $69, $6e, $20, $4d
    db $65, $6e, $75, $3f, $00, $4f, $4b, $20, $74, $6f, $20, $71, $75, $69, $74, $01
    db $74, $68, $69, $73, $20, $72, $6f, $75, $6e, $64, $3f, $00, $4f, $4b, $20, $74
    db $6f, $20, $71, $75, $69, $74, $20, $74, $68, $69, $73, $01, $4d, $61, $74, $63
    db $68, $20, $47, $61, $6d, $65, $3f, $00, $47, $69, $76, $65, $20, $75, $70, $20
    db $6f, $6e, $01, $74, $68, $69, $73, $20, $68, $6f, $6c, $65, $3f, $00, $59, $6f
    db $75, $20, $63, $61, $6e, $27, $74, $20, $67, $69, $76, $65, $20, $75, $70, $01
    db $6f, $6e, $20, $74, $68, $65, $20, $31, $73, $74, $20, $73, $74, $72, $6f, $6b
    db $65, $2e, $03, $00, $53, $6c, $6f, $77, $20, $20, $20, $00, $4e, $6f, $72, $6d
    db $61, $6c, $00, $46, $61, $73, $74, $20, $20, $20, $00, $4f, $4e, $20, $20, $00
    db $4f, $46, $46, $20, $00, $49, $73, $20, $69, $74, $20, $4f, $4b, $20, $74, $6f
    db $01, $65, $72, $61, $73, $65, $20, $61, $6c, $6c, $20, $64, $61, $74, $61, $3f
    db $00, $59, $45, $53, $01, $4e, $4f, $00, $45, $72, $61, $73, $65, $20, $74, $68
    db $69, $73, $20, $63, $68, $61, $72, $61, $63, $74, $65, $72, $3f, $00, $45, $72
    db $61, $73, $65, $20, $74, $68, $69, $73, $20, $63, $68, $61, $72, $61, $63, $74
    db $65, $72, $3f, $00, $07, $00, $4c, $65, $76, $65, $6c, $20, $09, $00, $44, $72
    db $69, $76, $65, $3a, $20, $09, $20, $59, $61, $72, $64, $73, $00, $4e, $6f, $74
    db $20, $79, $65, $74, $21, $00, $43, $6f, $75, $72, $73, $65, $00, $48, $6f, $6c
    db $65, $20, $09, $00, $53, $63, $6f, $72, $65, $00, $41, $6c, $6c, $20, $64, $61
    db $74, $61, $20, $68, $61, $73, $01, $62, $65, $65, $6e, $20, $65, $72, $61, $73
    db $65, $64, $2e, $00, $07, $27, $73, $20, $64, $61, $74, $61, $01, $68, $61, $73
    db $20, $62, $65, $65, $6e, $20, $65, $72, $61, $73, $65, $64, $2e, $00, $45, $72
    db $61, $73, $65, $64, $00, $07, $27, $73, $20, $64, $61, $74, $61, $01, $68, $61
    db $73, $20, $62, $65, $65, $6e, $20, $63, $6f, $70, $69, $65, $64, $2e, $00, $54
    db $68, $65, $72, $65, $20, $69, $73, $20, $6e, $6f, $20, $64, $61, $74, $61, $2e
    db $00, $44, $61, $74, $61, $20, $69, $73, $20, $66, $75, $6c, $6c, $2e, $00, $54
    db $6f, $75, $72, $6e, $61, $6d, $65, $6e, $74, $00, $4d, $61, $74, $63, $68, $20
    db $47, $61, $6d, $65, $00, $53, $74, $72, $6f, $6b, $65, $00, $54, $72, $61, $69
    db $6e, $69, $6e, $67, $00, $4d, $69, $6e, $69, $2d, $47, $61, $6d, $65, $00, $50
    db $72, $61, $63, $74, $69, $63, $65, $00, $43, $61, $6c, $63, $75, $6c, $61, $74
    db $69, $6e, $67, $20, $45, $58, $50, $20, $50, $74, $73, $2e, $00, $42, $72, $69
    db $6e, $67, $20, $45, $58, $50, $20, $50, $74, $73, $20, $66, $72, $6f, $6d, $00
    db $4e, $36, $34, $20, $4d, $61, $72, $69, $6f, $20, $47, $6f, $6c, $66, $2e, $00
    db $50, $74, $73, $20, $74, $6f, $20, $6e, $65, $78, $74, $20, $6c, $65, $76, $65

    ld l, h
    ld a, [hl-]
    nop
    ld c, h
    ld h, l
    db $76
    ld h, l
    ld l, h
    jr nz, @+$77

    ld [hl], b
    ld hl, $5900
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$6e

    ld h, l
    db $76
    ld h, l
    ld l, h
    jr nz, jr_01d_555f

    ld l, [hl]
    ld h, e
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    ld h, h
    ld l, $00
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_557a

    ld l, b
    ld h, l
    jr nz, jr_01d_5572

    ld l, c
    ld h, a
    ld l, b
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_557e

    ld h, l
    db $76
    ld h, l
    ld l, h
    ld hl, $4100
    ld h, h
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_5565

    ld e, b
    ld d, b
    jr nz, jr_01d_5574

    ld [hl], h
    ld [hl], e
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, @+$63

    jr nz, jr_01d_5575

    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_01d_5587

    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    ld l, $00
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, @+$63

    jr nz, jr_01d_5594

    ld l, c
    ld l, h
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01d_559c

    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    ld l, $00
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, @+$63

    jr nz, jr_01d_5598

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld a, d
    ld h, l
    jr nz, @+$56

    ld [hl], d
    ld l, a

jr_01d_555f:
    ld [hl], b
    ld l, b
    ld a, c
    ld l, $00
    ld h, [hl]

jr_01d_5565:
    ld l, a
    ld [hl], d
    jr nz, @+$64

    ld h, l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld h, d
    ld h, l

jr_01d_5572:
    ld h, c
    ld [hl], h

jr_01d_5574:
    ld l, c

jr_01d_5575:
    ld l, [hl]
    ld h, a
    nop
    ld d, e
    ld h, e

jr_01d_557a:
    ld l, a
    ld [hl], d
    ld h, l
    ld a, [hl-]

jr_01d_557e:
    jr nz, jr_01d_5589

    jr nz, @+$57

    ld [hl], b
    nop
    ld d, e
    ld h, e
    ld l, a

jr_01d_5587:
    ld [hl], d
    ld h, l

jr_01d_5589:
    ld a, [hl-]
    jr nz, jr_01d_5595

    jr nz, @+$46

    ld l, a
    ld [hl], a
    ld l, [hl]
    nop
    ld d, e
    ld h, e

jr_01d_5594:
    ld l, a

jr_01d_5595:
    ld [hl], d
    ld h, l
    ld a, [hl-]

jr_01d_5598:
    jr nz, @+$47

    db $76
    ld h, l

jr_01d_559c:
    ld l, [hl]
    nop

    db $09, $00, $04, $00, $43, $6f, $6e, $74, $69, $6e, $75, $65, $00, $70, $72, $65
    db $76, $69, $6f, $75, $73, $20, $67, $61, $6d, $65, $3f, $00, $53, $61, $76, $65
    db $64, $20, $64, $61, $74, $61, $20, $77, $69, $6c, $6c, $20, $62, $65, $20, $00
    db $65, $72, $61, $73, $65, $64, $2e, $20, $49, $73, $20, $74, $68, $69, $73, $20
    db $4f, $4b, $3f, $00, $54, $68, $65, $79, $20, $73, $61, $79, $20, $6f, $6e, $63
    db $65, $20, $79, $6f, $75, $01, $70, $69, $63, $6b, $20, $75, $70, $20, $67, $6f
    db $6c, $66, $2c, $01, $79, $6f, $75, $27, $6c, $6c, $20, $6e, $65, $76, $65, $72
    db $20, $71, $75, $69, $74, $2e, $03, $00, $45, $76, $65, $6e, $20, $68, $65, $72
    db $65, $20, $74, $68, $65, $72, $65, $01, $61, $72, $65, $20, $74, $6f, $74, $61
    db $6c, $20, $67, $6f, $6c, $66, $01, $66, $61, $6e, $61, $74, $69, $63, $73, $21
    db $03, $00, $41, $6e, $64, $20, $74, $68, $65, $79, $27, $76, $65, $20, $62, $65
    db $67, $75, $6e, $01, $61, $69, $6d, $69, $6e, $67, $20, $66, $6f, $72, $20, $74
    db $68, $65, $01, $73, $74, $72, $6f, $6e, $67, $65, $73, $74, $21, $03, $00, $41
    db $69, $6d, $69, $6e, $67, $20, $66, $6f, $72, $20, $74, $68, $61, $74, $01, $74
    db $61, $72, $67, $65, $74, $20, $66, $72, $6f, $6d, $20, $74, $68, $61, $74, $01
    db $74, $65, $65, $20, $69, $73, $6e, $27, $74, $20, $70, $72, $61, $63, $74, $69
    db $63, $65, $21, $03, $00, $49, $27, $6c, $6c, $20, $61, $63, $6b, $6e, $6f, $77
    db $6c, $65, $64, $67, $65, $20, $79, $6f, $75, $72, $01, $73, $6b, $69, $6c, $6c
    db $20, $69, $66, $20, $79, $6f, $75, $20, $68, $69, $74, $20, $74, $68, $65, $01
    db $74, $61, $72, $67, $65, $74, $20, $66, $72, $6f, $6d, $20, $68, $65, $72, $65
    db $2e, $03, $00, $48, $6d, $70, $68, $21, $20, $54, $6f, $64, $61, $79, $27, $73
    db $01, $67, $6f, $6c, $66, $65, $72, $73, $20, $68, $61, $76, $65, $20, $6e, $6f
    db $01, $74, $65, $6e, $61, $63, $69, $74, $79, $21, $20, $50, $69, $74, $79, $21
    db $03, $00, $59, $6f, $75, $27, $72, $65, $20, $61, $6c, $6c, $20, $77, $72, $6f
    db $6e, $67

    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, jr_01d_579c

    ld h, l
    ld l, h
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_57a9

    ld l, a
    ld [hl], l
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01d_57a1

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01d_57b2

    ld l, a
    jr nz, jr_01d_57b4

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_01d_57b4

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld d, h
    ld h, e
    ld l, b
    ld hl, $5420
    ld l, a
    ld h, h
    ld h, c
    ld a, c
    daa
    ld [hl], e
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_01d_57c9

    ld [hl], d
    ld h, l
    ld bc, $6970
    ld [hl], h
    ld l, c
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01d_57e4

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01d_57e8

    ld l, a
    ld [hl], d
    ld bc, $6e6f
    ld h, l
    jr nz, jr_01d_57fd

    ld l, a
    jr nz, jr_01d_5806

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, jr_01d_580d

    ld l, b
    ld l, a
    ld [hl], d

jr_01d_579c:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, h

jr_01d_57a1:
    ld a, c
    ld bc, $6d69
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e

jr_01d_57a9:
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, @+$64

    ld a, c
    ld bc, $6f79

jr_01d_57b2:
    ld [hl], l
    ld [hl], d

jr_01d_57b4:
    jr nz, jr_01d_581d

    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, @+$75

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e
    ld hl, $0003
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01d_583e

jr_01d_57c9:
    ld [hl], b
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01d_5841

    ld h, c
    ld h, e
    ld h, l
    ld bc, $6e61
    ld h, h
    jr nz, jr_01d_584a

    ld h, l
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_01d_585b

    ld l, a
    ld [hl], l

jr_01d_57e4:
    ld [hl], d
    ld bc, $7773

jr_01d_57e8:
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_01d_5860

    ld l, [hl]
    jr nz, jr_01d_5873

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01d_57fd:
    ld bc, $6c62
    ld l, a
    ld l, a
    ld h, h
    ld hl, $5920

jr_01d_5806:
    ld l, a
    ld [hl], l
    jr nz, jr_01d_587d

    ld l, b
    ld h, c
    ld l, h

jr_01d_580d:
    ld l, h
    ld bc, $6562
    jr nz, @+$63

    jr nz, jr_01d_5882

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $4302

jr_01d_581d:
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01d_5895

    ld h, l
    ld h, l
    jr nz, jr_01d_5893

    ld h, l
    jr nz, jr_01d_58a0

    ld l, b
    ld h, l
    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01d_5893

    ld [hl], d
    ld h, l
    jr nz, jr_01d_5899

    ld l, a
    ld l, [hl]
    ld h, [hl]
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01d_583e:
    ld bc, $6e69

jr_01d_5841:
    jr nz, jr_01d_58bc

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_58b8

    ld l, a
    ld [hl], a

jr_01d_584a:
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_58c9

    ld [hl], h
    ld [hl], l
    ld h, h
    ld l, c
    ld h, l

jr_01d_585b:
    ld [hl], e
    jr nz, jr_01d_58bf

    ld [hl], d
    ld h, l

jr_01d_5860:
    ld bc, $616c
    ld h, e
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $20
    ld b, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01d_58dd

    ld l, a
    ld [hl], d
    ld h, l

jr_01d_5873:
    ld bc, $7865
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, e

jr_01d_587d:
    ld h, l
    ld hl, $0003
    ld d, h

jr_01d_5882:
    ld l, b
    ld h, l
    jr nz, @+$66

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, jr_01d_58f4

    ld [hl], e
    jr nz, jr_01d_58fa

    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h

jr_01d_5893:
    ld l, $03

jr_01d_5895:
    nop
    ld d, e
    ld l, b
    ld l, a

jr_01d_5899:
    ld l, a
    ld [hl], h
    jr nz, jr_01d_5903

    ld [hl], d
    ld l, a
    ld l, l

jr_01d_58a0:
    jr nz, jr_01d_590a

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    nop
    ld c, b
    ld l, l
    ld l, l
    inc l
    jr nz, jr_01d_5926

    ld l, a
    ld [hl], l
    jr nz, @+$6b

    ld l, l
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76
    ld h, l
    ld h, h

jr_01d_58b8:
    ld hl, $4101
    ld [hl], d

jr_01d_58bc:
    ld h, l
    jr nz, jr_01d_5938

jr_01d_58bf:
    ld l, a
    ld [hl], l
    jr nz, jr_01d_592a

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_593d

jr_01d_58c9:
    ld l, a
    ld bc, $6873
    ld l, a
    ld [hl], a
    jr nz, jr_01d_593e

    ld h, l
    jr nz, jr_01d_593c

    ld l, a
    ld [hl], a
    jr nz, @+$6f

    ld [hl], l
    ld h, e
    ld l, b
    ccf
    inc bc

jr_01d_58dd:
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01d_5958

    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_01d_5954

    ld [hl], e
    ld bc, $6c73
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, h

jr_01d_58f4:
    ld a, c
    jr nz, jr_01d_595b

    ld l, c
    ld h, [hl]
    ld h, [hl]

jr_01d_58fa:
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld bc, $7266
    ld l, a

jr_01d_5903:
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01d_5976

jr_01d_590a:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, $02
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    jr nz, jr_01d_597c

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01d_5983

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, @+$76

    ld h, c
    ld l, e

jr_01d_5926:
    ld h, l
    ld [hl], e
    jr nz, jr_01d_598b

jr_01d_592a:
    jr nz, jr_01d_5992

    ld l, c
    ld l, [hl]
    ld h, l
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_01d_59ac

jr_01d_5938:
    ld l, a
    jr nz, @+$75

    ld l, c

jr_01d_593c:
    ld l, [hl]

jr_01d_593d:
    ld l, e

jr_01d_593e:
    jr nz, @+$6b

    ld [hl], h
    ld l, $03
    nop
    jr nz, jr_01d_5966

    nop
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_59c7

    ld l, a
    ld [hl], l
    jr nz, jr_01d_59b9

    ld h, l
    ld [hl], h

jr_01d_5954:
    jr nz, jr_01d_59bf

    ld [hl], h
    ccf

jr_01d_5958:
    ld bc, $2749

jr_01d_595b:
    ld l, l
    jr nz, jr_01d_59d2

    ld h, l
    ld l, h
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$7b

jr_01d_5966:
    ld l, a
    ld [hl], l
    ld bc, $7469
    daa
    ld [hl], e
    jr nz, jr_01d_59d7

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld c, b

jr_01d_5976:
    ld l, l
    ld [hl], b
    ld l, b
    ld hl, $0320

jr_01d_597c:
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_01d_5983:
    jr nz, @+$75

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c

jr_01d_598b:
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_59f4

    ld l, h
    ld [hl], e
    ld h, l

jr_01d_5992:
    ld hl, $0003
    ld b, d
    ld a, c
    jr nz, jr_01d_5a0d

    ld l, b
    ld h, l
    jr nz, jr_01d_5a14

    ld h, c
    ld a, c
    inc l
    jr nz, jr_01d_5a0b

    ld [hl], e
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_5a1d

    ld l, b
    ld l, a

jr_01d_59ac:
    ld [hl], h
    jr nz, @+$63

    jr nz, @+$68

    ld h, c
    ld h, h
    ld h, l
    ccf
    nop
    ld c, l
    ld l, l
    ld l, l

jr_01d_59b9:
    ld l, $2e
    ld l, $49
    jr nz, jr_01d_5a22

jr_01d_59bf:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$76

    ld h, l
    ld l, h

jr_01d_59c7:
    ld l, h
    ld bc, $756a
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_5a31

    ld a, c
    jr nz, jr_01d_5a49

jr_01d_59d2:
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, c

jr_01d_59d7:
    ld l, [hl]
    ld h, a
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_5a46

    ld l, a
    ld [hl], d
    ld l, l
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01d_5a63

    ld l, a
    ld [hl], l
    jr nz, jr_01d_5a5a

    ld l, c
    ld l, e
    ld h, l
    inc l
    jr nz, jr_01d_5a3d

jr_01d_59f4:
    daa
    ld l, h
    ld l, h
    ld bc, $6863
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_01d_5a79

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_5a6b

    ld h, c
    ld h, h
    ld h, l
    ld bc, $6e69

jr_01d_5a0b:
    ld [hl], h
    ld l, a

jr_01d_5a0d:
    jr nz, jr_01d_5a70

    jr nz, jr_01d_5a75

    ld [hl], d
    ld h, c
    ld [hl], a

jr_01d_5a14:
    ld l, $2e
    ld l, $00
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_5a8c

jr_01d_5a1d:
    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, @+$69

jr_01d_5a22:
    ld h, l
    ld [hl], h
    jr nz, jr_01d_5a95

    ld l, [hl]
    ld h, l
    ld bc, $6863
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $2e

jr_01d_5a31:
    ld l, $20
    ld d, e
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01d_5a83

    ld bc, $6863

jr_01d_5a3d:
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01d_5a46:
    jr nz, jr_01d_5abb

    ld l, b

jr_01d_5a49:
    ld l, a
    ld [hl], h
    ccf
    nop
    ld b, d
    ld a, c
    jr nz, jr_01d_5ac5

    ld l, b
    ld h, l
    jr nz, jr_01d_5acc

    ld h, c
    ld a, c
    inc l
    jr nz, jr_01d_5ac3

jr_01d_5a5a:
    ld [hl], e
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_5ad5

    ld l, b

jr_01d_5a63:
    ld l, a
    ld [hl], h
    jr nz, @+$63

    jr nz, @+$66

    ld [hl], d
    ld h, c

jr_01d_5a6b:
    ld [hl], a
    ccf
    nop
    ld c, l
    ld l, l

jr_01d_5a70:
    ld l, l
    ld l, $2e
    ld l, $49

jr_01d_5a75:
    jr nz, jr_01d_5ada

    ld l, a
    ld [hl], l

jr_01d_5a79:
    ld l, h
    ld h, h
    jr nz, @+$76

    ld h, l
    ld l, h
    ld l, h
    ld bc, $756a

jr_01d_5a83:
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_5ae9

    ld a, c
    jr nz, jr_01d_5b01

    ld h, c
    ld [hl], h

jr_01d_5a8c:
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f79
    ld [hl], l

jr_01d_5a95:
    ld [hl], d
    jr nz, jr_01d_5afe

    ld l, a
    ld [hl], d
    ld l, l
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01d_5b1b

    ld l, a
    ld [hl], l
    jr nz, @+$6e

    ld l, c
    ld l, e
    ld h, l
    inc l
    jr nz, jr_01d_5af5

    daa
    ld l, h
    ld l, h
    ld bc, $6863
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_01d_5b31

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01d_5abb:
    jr nz, jr_01d_5b21

    ld [hl], d
    ld h, c
    ld [hl], a
    ld bc, $6e69

jr_01d_5ac3:
    ld [hl], h
    ld l, a

jr_01d_5ac5:
    jr nz, @+$63

    jr nz, jr_01d_5b2f

    ld h, c
    ld h, h
    ld h, l

jr_01d_5acc:
    ld l, $2e
    ld l, $00
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_5b44

jr_01d_5ad5:
    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_01d_5b41

jr_01d_5ada:
    ld h, l
    ld [hl], h
    jr nz, jr_01d_5b4d

    ld l, [hl]
    ld h, l
    ld bc, $6863
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $2e

jr_01d_5ae9:
    ld l, $20
    ld d, e
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01d_5b3b

    ld bc, $6863

jr_01d_5af5:
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_01d_5b74

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01d_5afe:
    jr nz, jr_01d_5b73

    ld l, b

jr_01d_5b01:
    ld l, a
    ld [hl], h
    ccf
    nop
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld h, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_5b80

    ld l, c
    ld l, [hl]
    ld h, h
    ccf
    ld bc, $6143
    ld l, l

jr_01d_5b1b:
    ld h, l
    jr nz, jr_01d_5b92

    ld l, a
    jr nz, jr_01d_5b84

jr_01d_5b21:
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_5ba0

    ld l, b
    ld l, a

jr_01d_5b2f:
    ld [hl], h
    ccf

jr_01d_5b31:
    nop
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, @+$71

    ld l, [hl]
    ld l, h
    ld a, c

jr_01d_5b3b:
    jr nz, jr_01d_5ba1

    ld l, a
    jr nz, jr_01d_5ba9

    ld [hl], h

jr_01d_5b41:
    ld bc, $6e6f

jr_01d_5b44:
    ld h, e
    ld h, l
    ld l, $20
    ld d, e
    ld l, b
    ld h, c
    ld l, h
    ld l, h

jr_01d_5b4d:
    jr nz, @+$4b

    jr nz, @+$6f

    ld h, c
    ld l, e
    ld h, l
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_5bc1

    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_01d_5bc1

    jr nz, jr_01d_5bc6

    ld [hl], d
    ld h, c
    ld [hl], a
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_5be0

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01d_5bda

    ld h, c

jr_01d_5b73:
    ld [hl], e

jr_01d_5b74:
    ld bc, $6562
    ld h, l
    ld l, [hl]
    jr nz, @+$65

    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l

jr_01d_5b80:
    ld h, h
    jr nz, jr_01d_5be9

    ld [hl], d

jr_01d_5b84:
    ld l, a
    ld l, l
    ld bc, $2061
    ld h, [hl]
    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_01d_5c03

    ld l, a
    jr nz, jr_01d_5bf3

jr_01d_5b92:
    jr nz, jr_01d_5bf8

    ld [hl], d
    ld h, c
    ld [hl], a
    ld hl, $0003
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_01d_5c0f

jr_01d_5ba0:
    ld l, [hl]

jr_01d_5ba1:
    ld l, h
    ld a, c
    jr nz, @+$66

    ld l, a
    jr nz, jr_01d_5c11

    ld [hl], h

jr_01d_5ba9:
    ld bc, $6e6f
    ld h, e
    ld h, l
    ld l, $20
    ld d, e
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$4b

    jr nz, jr_01d_5c26

    ld h, c
    ld l, e
    ld h, l
    ld bc, $6f79
    ld [hl], l
    ld [hl], d

jr_01d_5bc1:
    jr nz, @+$66

    ld [hl], d
    ld h, c
    ld [hl], a

jr_01d_5bc6:
    jr nz, jr_01d_5c29

    jr nz, jr_01d_5c30

    ld h, c
    ld h, h
    ld h, l
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_5c48

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$6a

jr_01d_5bda:
    ld h, c
    ld [hl], e
    ld bc, $6562
    ld h, l

jr_01d_5be0:
    ld l, [hl]
    jr nz, jr_01d_5c46

    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld h, h

jr_01d_5be9:
    jr nz, jr_01d_5c51

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $2061
    ld h, h
    ld [hl], d

jr_01d_5bf3:
    ld h, c
    ld [hl], a
    jr nz, @+$76

    ld l, a

jr_01d_5bf8:
    jr nz, jr_01d_5c5b

    jr nz, jr_01d_5c62

    ld h, c
    ld h, h
    ld h, l
    ld hl, $0003
    ld c, c

jr_01d_5c03:
    ld h, [hl]
    jr nz, jr_01d_5c7f

    ld l, a
    ld [hl], l
    jr nz, jr_01d_5c6d

    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l

jr_01d_5c0f:
    jr nz, jr_01d_5c8a

jr_01d_5c11:
    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $696d
    ld l, [hl]
    ld h, h
    inc l
    jr nz, jr_01d_5c88

    ld h, l
    ld [hl], h
    jr nz, jr_01d_5c8d

    ld h, l
    jr nz, jr_01d_5c8e

    ld l, [hl]
    ld l, a
    ld [hl], a

jr_01d_5c26:
    ld l, $01
    ld c, c

jr_01d_5c29:
    daa
    ld l, l
    jr nz, jr_01d_5c8e

    ld l, h
    ld [hl], a
    ld h, c

jr_01d_5c30:
    ld a, c
    ld [hl], e
    jr nz, jr_01d_5c9c

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    daa
    ld [hl], e
    jr nz, jr_01d_5ca8

    ld [hl], c
    ld [hl], l
    ld h, c

jr_01d_5c46:
    ld l, h
    inc l

jr_01d_5c48:
    jr nz, jr_01d_5caf

    ld l, b
    ccf
    ld bc, $6857
    ld h, l
    ld l, [hl]

jr_01d_5c51:
    jr nz, jr_01d_5ccc

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01d_5cbc

    ld h, l

jr_01d_5c5b:
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $6874

jr_01d_5c62:
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_5cda

    ld l, b
    ld h, c
    ld [hl], h
    inc l
    jr nz, jr_01d_5cb5

    daa

jr_01d_5c6d:
    ld l, h
    ld l, h
    jr nz, jr_01d_5cd3

    ld h, l
    ld [bc], a
    ld [hl], a
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_5cf6

    ld l, a
    ld [hl], l

jr_01d_5c7f:
    ld l, $01
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01d_5cfb

    ld [hl], d

jr_01d_5c88:
    ld h, c
    ld l, c

jr_01d_5c8a:
    ld l, [hl]
    ld l, c
    ld l, [hl]

jr_01d_5c8d:
    ld h, a

jr_01d_5c8e:
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    ld bc, $6f64
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_5d0c

    ld h, l
    ld h, a

jr_01d_5c9c:
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld hl, $0003
    ld b, a
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h

jr_01d_5ca8:
    ld hl, $4e20
    ld l, a
    ld [hl], a
    jr nz, jr_01d_5d15

jr_01d_5caf:
    ld l, a
    ld [hl], d
    jr nz, jr_01d_5d27

    ld l, b
    ld h, l

jr_01d_5cb5:
    ld bc, $656e
    ld a, b
    ld [hl], h
    jr nz, jr_01d_5d1f

jr_01d_5cbc:
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld hl, $0003
    ld d, h
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l

jr_01d_5ccc:
    jr nz, jr_01d_5d32

    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01d_5d3e

jr_01d_5cd3:
    ld l, c
    ld h, h
    ld [hl], e
    ld hl, $4201
    ld h, c

jr_01d_5cda:
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_01d_5d44

    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld d, a
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    ld l, a
    ld l, [hl]

jr_01d_5cf6:
    ld h, l
    jr nz, jr_01d_5d61

    ld h, l
    ld l, h

jr_01d_5cfb:
    ld [hl], b
    ld bc, $656d
    jr nz, jr_01d_5d71

    ld l, c
    ld h, e
    ld l, e
    jr nz, jr_01d_5d7b

    ld [hl], b
    jr nz, jr_01d_5d7d

    ld l, b
    ld h, l
    ld [hl], e

jr_01d_5d0c:
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    ld [hl], e
    ccf
    inc bc

jr_01d_5d15:
    nop
    ld b, e
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_5d94

    ld l, a
    ld [hl], l
    jr nz, jr_01d_5d83

jr_01d_5d1f:
    ld l, a
    jr nz, jr_01d_5d8f

    ld h, l
    ld bc, $2061
    ld h, [hl]

jr_01d_5d27:
    ld h, c
    db $76
    ld l, a
    ld [hl], d
    ccf
    nop
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    inc l

jr_01d_5d32:
    jr nz, jr_01d_5dab

    ld l, b
    ld l, a
    ld h, l
    db $76
    ld h, l
    ld [hl], d
    jr nz, @+$6a

    ld l, c
    ld [hl], h

jr_01d_5d3e:
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_5da6

jr_01d_5d44:
    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_01d_5dab

    ld l, h
    ld l, h
    jr nz, jr_01d_5dbd

    db $76
    ld h, l
    ld [hl], d
    ld bc, $6873
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01d_5dbd

    ld l, h
    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_5dd5

    ld [hl], b

jr_01d_5d61:
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_5dde

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01d_5de5

    ld l, a
    ld [hl], l
    jr nz, jr_01d_5de4

    ld l, a

jr_01d_5d71:
    jr nz, @+$6a

    ld l, c
    ld [hl], h
    ld bc, $6874
    ld h, l
    ld [hl], e
    ld h, l

jr_01d_5d7b:
    jr nz, jr_01d_5ddf

jr_01d_5d7d:
    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_01d_5dec

jr_01d_5d83:
    ld l, [hl]
    ld [hl], h
    ld l, a
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_01d_5df0

    ld l, c
    ld [hl], d

jr_01d_5d8f:
    ld h, e
    ld l, h
    ld h, l
    ld l, $02

jr_01d_5d94:
    ld d, e
    ld h, l
    ld h, l
    ccf
    jr nz, @+$49

    ld h, l
    ld [hl], h
    jr nz, jr_01d_5dc5

    ld h, l
    ld l, l
    jr nz, jr_01d_5e0b

    ld l, [hl]
    jr nz, jr_01d_5e19

    ld l, b

jr_01d_5da6:
    ld h, l
    ld bc, $6963
    ld [hl], d

jr_01d_5dab:
    ld h, e
    ld l, h
    ld h, l
    inc l
    jr nz, jr_01d_5e1d

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    ld hl, $0003
    ld b, d

jr_01d_5dbd:
    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_5e25

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h

jr_01d_5dc5:
    jr nz, jr_01d_5e3b

    ld h, c
    ld l, e
    ld h, l
    ld bc, $6f74
    ld l, a
    jr nz, @+$6e

    ld l, a
    ld l, [hl]
    ld h, a
    ld l, $2e

jr_01d_5dd5:
    ld l, $49
    daa
    ld l, l
    ld bc, $7270
    ld h, l
    ld [hl], h

jr_01d_5dde:
    ld [hl], h

jr_01d_5ddf:
    ld a, c
    jr nz, jr_01d_5e4b

    ld l, l
    ld [hl], b

jr_01d_5de4:
    ld h, c

jr_01d_5de5:
    ld [hl], h
    ld l, c
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03

jr_01d_5dec:
    nop
    ld e, c
    ld l, a
    ld [hl], l

jr_01d_5df0:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01d_5e69

    ld l, a
    ld l, a
    jr nz, jr_01d_5e6c

    ld l, h
    ld l, a
    ld [hl], a
    ld l, $03
    nop
    ld d, h
    ld h, e
    ld l, b
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_01d_5e6e

    ld l, a

jr_01d_5e0b:
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$66

    ld l, a

jr_01d_5e19:
    jr nz, jr_01d_5e8f

    ld l, b
    ld h, l

jr_01d_5e1d:
    jr nz, @+$70

    ld h, l
    ld a, b
    ld [hl], h
    ld bc, $7562

jr_01d_5e25:
    ld l, [hl]
    ld h, e
    ld l, b
    ld hl, $0003
    ld c, [hl]
    ld l, a
    jr nz, jr_01d_5e97

    ld h, l
    ld l, h
    ld [hl], b
    jr nz, jr_01d_5e95

    ld [hl], h
    jr nz, @+$63

    ld l, h
    ld l, h
    ld l, $2e

jr_01d_5e3b:
    ld l, $21
    inc bc
    nop
    ld c, l
    ld l, l
    ld l, l
    inc l
    jr nz, jr_01d_5eb9

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, @+$63

jr_01d_5e4b:
    ld [hl], d
    ld h, l
    jr nz, jr_01d_5eb5

    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $01
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_01d_5ebe

    ld l, a
    jr nz, jr_01d_5ed1

    ld l, b
    ld h, l
    jr nz, jr_01d_5ed3

    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, $03
    nop
    ld d, a
    ld h, l

jr_01d_5e69:
    jr nz, jr_01d_5ed1

    ld l, c

jr_01d_5e6c:
    ld l, [hl]
    ld h, c

jr_01d_5e6e:
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_01d_5ed9

    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    ld h, l
    ld h, h
    ld hl, $4301
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01d_5ee3

    ld l, [hl]
    ld h, h
    jr nz, jr_01d_5eee

    ld h, l
    ld l, h
    ld [hl], b
    jr nz, jr_01d_5ef8

    ld h, l
    ld bc, $656e

jr_01d_5e8f:
    ld a, b
    ld [hl], h
    jr nz, @+$76

    ld l, c
    ld l, l

jr_01d_5e95:
    ld h, l
    inc l

jr_01d_5e97:
    jr nz, jr_01d_5f0d

    ld l, a
    ld l, a
    ld l, $20
    ld c, a
    ld c, e
    ccf
    inc bc
    nop
    ld d, a
    ld h, l
    jr nz, @+$66

    ld l, c
    ld h, h
    jr nz, jr_01d_5f13

    ld [hl], h
    ld hl, $5420
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, @+$7b

    ld l, a

jr_01d_5eb5:
    ld [hl], l
    ld bc, $6f73

jr_01d_5eb9:
    jr nz, jr_01d_5f28

    ld [hl], l
    ld h, e
    ld l, b

jr_01d_5ebe:
    ld hl, $0003
    ld b, c
    ld l, l
    ld h, c
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, jr_01d_5f32

    ld l, a
    ld [hl], l

jr_01d_5ed1:
    ld l, h
    ld h, h

jr_01d_5ed3:
    ld bc, $616d
    ld l, [hl]
    ld h, c
    ld h, a

jr_01d_5ed9:
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01d_5f51

    ld l, h
    ld h, c

jr_01d_5ee3:
    ld h, e
    ld h, l
    ld hl, $5701
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01d_5f61

    ld l, a

jr_01d_5eee:
    jr nz, @+$76

    ld [hl], d
    ld a, c
    ccf
    nop
    ld c, c
    jr nz, jr_01d_5f6b

    ld l, b

jr_01d_5ef8:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$75

    ld l, a
    ld l, $20
    ld d, h
    ld l, a
    ld l, a
    ld bc, $6162
    ld h, h
    ld l, $20
    ld e, c
    ld l, a

jr_01d_5f0d:
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_01d_5f7a

jr_01d_5f13:
    ld l, a
    ld [hl], h
    ld bc, $6877
    ld h, c
    ld [hl], h
    jr nz, jr_01d_5f85

    ld [hl], h
    jr nz, jr_01d_5f93

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    ld hl, $4202
    ld [hl], l
    ld [hl], h

jr_01d_5f28:
    jr nz, jr_01d_5fa3

    ld l, a
    ld [hl], l
    jr nz, @+$74

    ld h, l
    ld h, c
    ld l, h
    ld l, h

jr_01d_5f32:
    ld a, c
    jr nz, jr_01d_5f99

    ld l, c
    ld h, h
    ld bc, $6568
    ld l, h
    ld [hl], b
    jr nz, jr_01d_5fab

    ld h, l
    jr nz, jr_01d_5fb0

    ld [hl], l
    ld [hl], h
    ld hl, $5401
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01d_5fc5

    ld l, a
    ld [hl], l
    ld hl, $0003

jr_01d_5f51:
    ld e, c
    ld h, l
    ld [hl], e
    ld hl, $4920
    daa
    ld l, l
    jr nz, @+$75

    ld l, a
    jr nz, jr_01d_5fc6

    ld h, c
    ld [hl], b
    ld [hl], b

jr_01d_5f61:
    ld a, c
    ld hl, $4e01
    ld l, a
    ld [hl], a
    jr nz, jr_01d_5fe2

    ld l, a
    ld [hl], l

jr_01d_5f6b:
    jr nz, jr_01d_5fd0

    ld l, h
    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_5fe8

    ld [hl], b
    ld bc, $6e69
    ld [hl], e
    ld [hl], h
    ld h, l

jr_01d_5f7a:
    ld h, c
    ld h, h
    jr nz, jr_01d_5fed

    ld h, [hl]
    jr nz, jr_01d_5fee

    ld h, l
    ld hl, $0003

jr_01d_5f85:
    ld d, e
    ld h, l
    ld h, l
    jr nz, jr_01d_6003

    ld l, a
    ld [hl], l
    jr nz, jr_01d_5fef

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_01d_5f93:
    ld l, $03
    nop
    ld c, b
    ld b, c
    ld c, b

jr_01d_5f99:
    ld hl, $4a20
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_600c

    ld l, c
    ld h, h

jr_01d_5fa3:
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld b, h

jr_01d_5fab:
    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h

jr_01d_5fb0:
    jr nz, jr_01d_601f

    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_602b

    ld l, a
    ld bc, $6373
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld l, $20
    ld d, h

jr_01d_5fc5:
    ld l, b

jr_01d_5fc6:
    ld h, c
    ld l, [hl]
    ld l, e
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$68

    ld l, a

jr_01d_5fd0:
    ld [hl], d
    jr nz, jr_01d_604c

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$6a

    ld h, l
    ld l, h
    ld [hl], b
    ld hl, $0003
    ld c, c
    jr nz, jr_01d_6044

    ld l, h

jr_01d_5fe2:
    ld h, l
    ld h, c
    ld l, [hl]
    inc l
    jr nz, jr_01d_605c

jr_01d_5fe8:
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01d_6061

jr_01d_5fed:
    ld l, b

jr_01d_5fee:
    ld h, l

jr_01d_5fef:
    ld a, c
    ld bc, $656d
    ld [hl], e
    ld [hl], e
    jr nz, jr_01d_6060

    ld [hl], h
    jr nz, jr_01d_606f

    ld [hl], b
    ld hl, $4901
    ld [hl], h
    jr nz, jr_01d_606e

    ld h, c
    ld l, e

jr_01d_6003:
    ld h, l
    ld [hl], e
    jr nz, jr_01d_6074

    ld h, l
    jr nz, jr_01d_607d

    ld l, c
    ld h, e

jr_01d_600c:
    ld l, e
    ld hl, $0003
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ccf
    nop
    ld c, d

jr_01d_601f:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$6e

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01d_6072

    jr nz, jr_01d_609e

jr_01d_602b:
    ld h, c
    ld l, c
    ld h, h
    inc l
    ld bc, $7469
    daa
    ld [hl], e
    jr nz, jr_01d_6097

    ld l, h
    ld l, h
    jr nz, @+$74

    ld l, b
    ld a, c
    ld [hl], h
    ld l, b
    ld l, l
    ld hl, $0003
    ld b, c
    ld l, b

jr_01d_6044:
    inc l
    jr nz, jr_01d_60b5

    ld l, a
    jr nz, jr_01d_60b1

    ld l, a
    ld l, a

jr_01d_604c:
    ld h, h
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    ld bc, $6e75
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    ld h, c
    ld h, d
    ld l, h

jr_01d_605c:
    ld h, l
    ld [hl], e
    jr nz, jr_01d_60c1

jr_01d_6060:
    ld [hl], d

jr_01d_6061:
    ld h, l
    ld bc, $6874
    ld h, l
    jr nz, @+$63

    ld h, d
    ld [hl], e
    ld l, a
    ld l, h
    ld [hl], l
    ld [hl], h

jr_01d_606e:
    ld h, l

jr_01d_606f:
    jr nz, jr_01d_60e8

    ld l, a

jr_01d_6072:
    ld [hl], d
    ld [hl], e

jr_01d_6074:
    ld [hl], h
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, @+$64

jr_01d_607d:
    ld h, l
    ld h, a
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_60fe

    ld l, a
    ld [hl], l
    inc l
    ld bc, $6c70
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    ld l, $20
    ld b, a
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01d_610c

jr_01d_6097:
    ld [hl], b
    ld l, $03
    nop
    ld b, d
    ld [hl], l
    ld [hl], h

jr_01d_609e:
    jr nz, jr_01d_60e9

    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, @+$69

    ld h, l
    ld [hl], h
    jr nz, jr_01d_6119

    ld l, [hl]
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]

jr_01d_60b1:
    jr nz, jr_01d_6119

    ld [hl], d
    ld l, a

jr_01d_60b5:
    ld l, l
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld [hl+], a
    ld d, a
    ld l, b

jr_01d_60c1:
    ld h, c
    ld [hl], h
    jr nz, jr_01d_6126

    ld l, l
    jr nz, jr_01d_6111

    jr nz, jr_01d_612e

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    ld [hl+], a
    inc bc
    nop
    ld c, b
    ld l, c
    ld [hl], e
    jr nz, @+$76

    ld h, l
    ld h, l
    jr nz, jr_01d_614e

    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $616c
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01d_6156

    db $76

jr_01d_60e8:
    ld h, l

jr_01d_60e9:
    ld [hl], d
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld b, l
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01d_616d

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_01d_6147

jr_01d_60fe:
    jr nz, jr_01d_6173

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01d_617e

    ld l, b
    ld h, l

jr_01d_610c:
    jr nz, jr_01d_6175

    ld [hl], d
    ld h, l
    ld h, l

jr_01d_6111:
    ld l, [hl]
    inc l
    ld bc, $2049
    ld h, h
    ld [hl], l
    ld l, [hl]

jr_01d_6119:
    ld l, e
    jr nz, jr_01d_6185

    ld [hl], h
    ld l, $2e
    ld l, $03
    nop
    ld d, e
    ld l, a
    jr nz, jr_01d_6189

jr_01d_6126:
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01d_6194

    ld [hl], h
    jr nz, jr_01d_61a3

jr_01d_612e:
    ld l, [hl]
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    dec l
    ld bc, $6261
    ld l, h
    ld h, l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_01d_61ac

    ld [hl], l
    ld l, h
    ld l, h
    ld l, c
    ld h, a
    ld h, c
    ld l, [hl]
    inc l

jr_01d_6147:
    ld bc, $726f
    jr nz, jr_01d_61b3

    ld l, c
    db $76

jr_01d_614e:
    ld h, l
    jr nz, jr_01d_61c6

    ld [hl], b
    inc l
    jr nz, jr_01d_61c7

    ld l, c

jr_01d_6156:
    ld h, a
    ld l, b
    ld [hl], h
    ccf
    inc bc
    nop
    ld c, [hl]
    ld l, a
    ld hl, $4e20
    ld l, a
    ld hl, $4e20
    ld c, a
    ld hl, $5420
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_01d_616d:
    daa
    ld [hl], e
    ld bc, $6f67
    ld [hl], h

jr_01d_6173:
    jr nz, jr_01d_61e9

jr_01d_6175:
    ld l, a
    jr nz, @+$64

    ld h, l
    jr nz, jr_01d_61dc

    jr nz, jr_01d_61f4

    ld h, c

jr_01d_617e:
    ld a, c
    ld bc, $6f74
    jr nz, @+$66

    ld l, a

jr_01d_6185:
    jr nz, jr_01d_61fb

    ld l, b
    ld l, c

jr_01d_6189:
    ld [hl], e
    ld hl, $0003
    ld b, d
    ld [hl], l
    ld [hl], h
    inc l
    jr nz, jr_01d_620c

    ld l, a

jr_01d_6194:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01d_6203

    ld l, [hl]
    jr nz, jr_01d_6211

    ld l, b
    ld h, l
    ld bc, $6f72
    ld [hl], l

jr_01d_61a3:
    ld h, a
    ld l, b
    inc l
    jr nz, @+$75

    ld l, a
    jr nz, @+$7b

    ld l, a

jr_01d_61ac:
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_6227

    ld l, a
    ld l, a
    ld h, h

jr_01d_61b3:
    ld bc, $6f77
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_622d

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    inc l
    jr nz, jr_01d_6234

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_01d_61c6:
    ccf

jr_01d_61c7:
    ld [bc], a
    ld b, c
    jr nz, jr_01d_623b

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01d_6239

    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    ld bc, $6e6f
    ld h, l

jr_01d_61dc:
    jr nz, jr_01d_6252

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_01d_6247

    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_6262

jr_01d_61e9:
    ld l, a
    ld [hl], l
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_01d_6260

    ld l, [hl]
    ld l, h
    ld a, c

jr_01d_61f4:
    jr nz, jr_01d_625e

    ld l, c
    ld [hl], h
    jr nz, jr_01d_622b

    inc sp

jr_01d_61fb:
    jr nc, jr_01d_6256

    ld l, $03
    nop
    ld b, h
    ld l, a
    ld l, [hl]

jr_01d_6203:
    daa
    ld [hl], h
    jr nz, jr_01d_6280

    ld l, a
    ld [hl], l
    jr nz, @+$76

    ld l, b

jr_01d_620c:
    ld l, c
    ld l, [hl]
    ld l, e
    ccf
    nop

jr_01d_6211:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_628a

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01d_628f

    ld l, a
    inc l
    jr nz, jr_01d_6294

    ld l, a
    ld l, a
    ccf
    ld bc, $6553
    ld h, l

jr_01d_6227:
    ld hl, $4720
    ld l, c

jr_01d_622b:
    db $76
    ld h, l

jr_01d_622d:
    jr nz, jr_01d_62a4

    ld [hl], b
    ld hl, $0003
    ld d, h

jr_01d_6234:
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01d_62a5

jr_01d_6239:
    ld h, l
    ld [hl], h

jr_01d_623b:
    daa
    ld [hl], e
    jr nz, @+$75

    ld h, l
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01d_62bb

jr_01d_6247:
    ld [hl], d
    ld a, c
    jr nz, jr_01d_62b4

    ld [hl], h
    ld hl, $0003
    ld c, l
    ld h, c
    ld a, c

jr_01d_6252:
    ld h, d
    ld h, l
    jr nz, jr_01d_62bf

jr_01d_6256:
    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6d69
    ld [hl], b
    ld l, a

jr_01d_625e:
    ld [hl], e
    ld [hl], e

jr_01d_6260:
    ld l, c
    ld h, d

jr_01d_6262:
    ld l, h
    ld h, l
    ccf
    inc bc
    nop
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01d_62e1

    ld [hl], d
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01d_62e1

    ld l, a
    jr nz, @+$76

    ld l, a
    jr nz, @+$6b

jr_01d_6280:
    ld [hl], h
    ld hl, $0003
    ld e, c
    ld [hl], l
    ld [hl], b
    ld l, $20
    ld b, a

jr_01d_628a:
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01d_6304

jr_01d_628f:
    ld [hl], b
    ld hl, $0003
    ld c, b

jr_01d_6294:
    ld b, c
    ld c, b
    ld hl, $5320
    ld h, l
    ld h, l
    ld hl, $4901
    ld [hl], h
    jr nz, jr_01d_6304

    ld h, c
    ld l, [hl]
    daa

jr_01d_62a4:
    ld [hl], h

jr_01d_62a5:
    jr nz, jr_01d_6309

    ld h, l
    jr nz, jr_01d_630e

    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $0003
    ld c, c
    jr nz, jr_01d_631a

    ld [hl], l

jr_01d_62b4:
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01d_6327

    ld l, a
    ld [hl], h

jr_01d_62bb:
    ld l, $2e
    ld l, $03

jr_01d_62bf:
    nop
    ld b, c
    ld [hl], a
    ld h, l
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01d_633c

    ld l, b
    ld l, a
    ld [hl], h
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_6337

    ld h, c
    ld l, [hl]
    jr nz, jr_01d_6345

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01d_6346

    ld [hl], h
    ld bc, $7266

jr_01d_62e1:
    ld l, a
    ld l, l
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $213f
    inc bc
    nop
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_633b

    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_636e

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    ld bc, $2049
    ld h, e
    ld l, a
    ld [hl], l

jr_01d_6304:
    ld l, h
    ld h, h
    jr nz, jr_01d_6375

    ld h, c

jr_01d_6309:
    ld l, e
    ld h, l
    jr nz, jr_01d_6381

    ld l, b

jr_01d_630e:
    ld h, c
    ld [hl], h
    ld l, $03
    nop
    ld c, [hl]
    ld c, c
    ld b, e
    ld b, l
    jr nz, jr_01d_6368

    ld c, [hl]

jr_01d_631a:
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_6385

    ld h, c
    ld l, [hl]
    jr nz, jr_01d_638a

    ld l, a

jr_01d_6327:
    jr nz, @+$6b

    ld [hl], h
    ld bc, $696c
    ld l, e
    ld h, l
    jr nz, jr_01d_63a5

    ld l, b
    ld h, c
    ld [hl], h
    ld hl, $213f

jr_01d_6337:
    inc bc
    nop
    ld c, b
    ld h, l

jr_01d_633b:
    ld [hl], d

jr_01d_633c:
    ld h, l
    jr nz, jr_01d_6388

    jr nz, jr_01d_63a8

    ld l, a
    ld hl, $0003

jr_01d_6345:
    ld e, c

jr_01d_6346:
    ld l, a
    ld [hl], l
    jr nz, jr_01d_63ae

    ld l, c
    ld h, h
    jr nz, @+$6b

    ld [hl], h
    ld hl, $0003
    ld c, c
    jr nz, jr_01d_63b9

    ld l, c
    ld h, h
    jr nz, jr_01d_63c2

    ld [hl], h
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld hl, $5920
    ld l, a
    ld [hl], l

jr_01d_6368:
    jr nz, jr_01d_63dd

    ld l, b
    ld l, a
    ld [hl], a
    ld h, l

jr_01d_636e:
    ld h, h
    ld bc, $656d
    jr nz, @+$76

    ld l, b

jr_01d_6375:
    ld h, l
    jr nz, jr_01d_63ef

    ld h, c
    ld a, c
    ld hl, $0003
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_01d_6381:
    inc l
    jr nz, jr_01d_63f0

    ld h, l

jr_01d_6385:
    ld [hl], h
    daa
    ld [hl], e

jr_01d_6388:
    jr nz, @+$6a

jr_01d_638a:
    ld l, a
    ld l, h
    ld h, l
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01d_63f5

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$79

    ld h, l
    ld bc, $6f6c
    ld [hl], e
    ld h, l
    jr nz, jr_01d_6406

    ld h, c
    ld a, c
    ld l, h

jr_01d_63a5:
    ld l, c
    ld h, a
    ld l, b

jr_01d_63a8:
    ld [hl], h
    ld hl, $0003
    ld b, a
    ld l, c

jr_01d_63ae:
    ld l, l
    ld l, l
    ld h, l
    jr nz, jr_01d_6415

    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_01d_6425

    ld a, c

jr_01d_63b9:
    jr nz, jr_01d_6423

    ld h, c
    ld [hl], h
    inc l
    ld bc, $6f79
    ld [hl], l

jr_01d_63c2:
    jr nz, @+$75

    ld [hl], h
    ld [hl], l
    ld [hl], b
    ld l, c
    ld h, h
    jr nz, jr_01d_642e

    ld [hl], d
    ld l, a
    ld [hl], a
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, jr_01d_643d

    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, jr_01d_6443

    ld h, l

jr_01d_63dd:
    ld [hl], h
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_01d_644d

    ld h, c
    ld [hl], h
    jr nz, @+$64

    ld h, c
    ld h, e
    ld l, e
    ld hl, $0003

jr_01d_63ef:
    ld c, a

jr_01d_63f0:
    ld c, b
    ld hl, $5920
    ld l, a

jr_01d_63f5:
    ld [hl], l
    jr nz, @+$6b

    ld h, h
    ld l, c
    ld l, a
    ld [hl], h
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01d_6467

    ld [hl], d
    ld l, a

jr_01d_6406:
    ld [hl], a
    daa
    ld [hl], e
    ld bc, $6c66
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    ld [hl], a
    ld h, c
    ld a, c

jr_01d_6415:
    ld hl, $0003
    ld b, c
    ld c, b
    ld hl, $4920
    ld [hl], h
    jr nz, jr_01d_6497

    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01d_6423:
    jr nz, jr_01d_6494

jr_01d_6425:
    ld h, [hl]
    ld h, [hl]
    ld bc, $6f74
    jr nz, @+$67

    ld h, c
    ld [hl], h

jr_01d_642e:
    jr nz, @+$6f

    ld a, c
    jr nz, jr_01d_649b

    ld h, c
    ld [hl], h
    ld hl, $0003
    ld c, a
    ld l, b
    ld hl, $5420

jr_01d_643d:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$66

    ld h, c

jr_01d_6443:
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_64aa

    ld [hl], d
    ld l, a
    ld [hl], a
    ld hl, $4901

jr_01d_644d:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$69

    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld c, c
    ld h, [hl]
    jr nz, jr_01d_64d6

    ld l, b
    ld h, l
    jr nz, jr_01d_64c8

    ld h, c

jr_01d_6467:
    ld l, h
    ld l, h
    jr nz, jr_01d_64d3

    ld l, c
    ld [hl], h
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_64e4

    ld l, c
    ld l, [hl]
    inc l
    jr nz, jr_01d_64e2

    ld [hl], h
    jr nz, jr_01d_64ef

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld bc, $6373
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_01d_64fd

    ld l, b
    ld h, l
    jr nz, jr_01d_64f0

    ld [hl], d
    ld l, a
    ld [hl], a
    jr nz, jr_01d_64f3

    ld l, [hl]
    ld h, h

jr_01d_6494:
    ld [bc], a
    ld l, l
    ld h, c

jr_01d_6497:
    ld l, e
    ld h, l
    jr nz, jr_01d_6504

jr_01d_649b:
    ld [hl], h
    jr nz, @+$66

    ld [hl], d
    ld l, a
    ld [hl], b
    jr nz, @+$6f

    ld a, c
    ld bc, $6168
    ld [hl], h
    ld l, $20

jr_01d_64aa:
    ld b, e
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_652a

    ld l, a
    ld [hl], l
    jr nz, jr_01d_651c

    ld h, l
    ld [hl], h
    ld bc, $796d
    jr nz, jr_01d_6524

    ld h, c
    ld [hl], h
    jr nz, jr_01d_6522

    ld h, c
    ld h, e
    ld l, e
    ccf
    inc bc
    nop
    ld c, b
    ld h, l

jr_01d_64c8:
    ld a, c
    ld hl, $5420
    ld l, b
    ld h, l
    jr nz, jr_01d_6533

    ld [hl], d
    ld l, a
    ld [hl], a

jr_01d_64d3:
    jr nz, jr_01d_6538

    ld h, c

jr_01d_64d6:
    ld l, l
    ld h, l
    ld bc, $6162
    ld h, e
    ld l, e
    ld hl, $4e20
    ld l, a
    ld [hl], a

jr_01d_64e2:
    daa
    ld [hl], e

jr_01d_64e4:
    jr nz, jr_01d_655f

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6863
    ld h, c
    ld l, [hl]
    ld h, e

jr_01d_64ef:
    ld h, l

jr_01d_64f0:
    jr nz, jr_01d_6566

    ld l, a

jr_01d_64f3:
    jr nz, jr_01d_655c

    ld h, l
    ld [hl], h
    jr nz, jr_01d_6562

    ld [hl], h
    ld hl, $0003

jr_01d_64fd:
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$68

    ld [hl], d

jr_01d_6504:
    ld l, a
    ld l, l
    jr nz, jr_01d_6570

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    nop
    ld c, c
    ld [hl], h
    jr nz, jr_01d_6575

    ld [hl], d
    ld l, a
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, jr_01d_6586

    ld a, c
    jr nz, @+$6a

jr_01d_651c:
    ld h, c
    ld [hl], h
    ld l, $03
    nop
    ld e, c

jr_01d_6522:
    ld l, a
    ld [hl], l

jr_01d_6524:
    jr nz, jr_01d_658a

    ld l, c
    ld h, h
    jr nz, jr_01d_6593

jr_01d_652a:
    ld [hl], h
    ld hl, $5920
    ld b, l
    ld d, e
    ld hl, $0003

jr_01d_6533:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_659f

jr_01d_6538:
    ld l, a
    ld [hl], h
    jr nz, jr_01d_65a9

    ld a, c
    jr nz, jr_01d_65a7

    ld h, c
    ld [hl], h
    ld bc, $6162
    ld h, e
    ld l, e
    jr nz, jr_01d_65ae

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $7263
    ld l, a
    ld [hl], a
    ld hl, $0003
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01d_65a5

jr_01d_655c:
    jr nz, @+$65

    ld h, c

jr_01d_655f:
    ld l, [hl]
    jr nz, jr_01d_65c8

jr_01d_6562:
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h

jr_01d_6566:
    ld l, h
    ld a, c
    ld bc, $6f67
    jr nz, jr_01d_65d5

    ld l, a
    ld l, l
    ld h, l

jr_01d_6570:
    ld hl, $0003
    ld d, h
    ld l, b

jr_01d_6575:
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01d_65f3

    ld l, a
    ld [hl], l
    ld hl, $4920
    daa
    ld l, h
    ld l, h
    ld bc, $656e
    db $76

jr_01d_6586:
    ld h, l
    ld [hl], d
    jr nz, jr_01d_65f0

jr_01d_658a:
    ld l, a
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_01d_6593:
    ld hl, $0003
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01d_660f

    ld l, a
    ld l, l
    ld h, l

jr_01d_659f:
    ld l, a
    ld l, [hl]
    ld h, l
    ld bc, $6c70

jr_01d_65a5:
    ld h, l
    ld h, c

jr_01d_65a7:
    ld [hl], e
    ld h, l

jr_01d_65a9:
    jr nz, jr_01d_660e

    ld l, a
    ld l, l
    ld h, l

jr_01d_65ae:
    jr nz, jr_01d_6620

    ld l, h
    ld h, c
    ld a, c
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_01d_662f

    ld [hl], e
    ccf
    inc bc
    nop
    ld d, a
    ld h, l
    jr nz, jr_01d_6639

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a

jr_01d_65c8:
    jr nz, jr_01d_663a

    ld l, h
    ld h, c
    ld a, c
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_6617

    ld [hl], l
    ld l, [hl]

jr_01d_65d5:
    ld h, l
    jr nz, jr_01d_661b

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f63
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $2e
    ld l, $03
    nop
    ld d, a
    ld h, l
    jr nz, jr_01d_6659

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_01d_6651

jr_01d_65f0:
    ld l, [hl]
    ld l, a
    ld [hl], h

jr_01d_65f3:
    ld l, b
    ld h, l
    ld [hl], d
    ld bc, $656d
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_01d_6673

    ld l, a
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01d_6668

    ld l, [hl]
    ld bc, $6c61
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01d_660e:
    ld l, [hl]

jr_01d_660f:
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_01d_667b

    ld h, c
    ld l, l
    ld h, l

jr_01d_6617:
    ld l, $2e
    ld l, $03

jr_01d_661b:
    nop
    ld c, b
    ld h, l
    ld a, c
    inc l

jr_01d_6620:
    jr nz, jr_01d_669b

    ld l, a
    ld [hl], l
    jr nz, jr_01d_668b

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    ld bc, $6874

jr_01d_662f:
    ld h, l
    jr nz, @+$46

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_01d_667a

    ld l, h
    ld [hl], l

jr_01d_6639:
    ld h, d

jr_01d_663a:
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    jr nz, jr_01d_66ba

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ccf
    nop
    ld c, c
    daa
    ld l, l

jr_01d_6651:
    jr nz, @+$76

    ld h, l
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, d
    ld l, h

jr_01d_6659:
    ld h, l
    inc l
    jr nz, jr_01d_66d0

    ld l, a
    jr nz, @+$4b

    ld bc, $6163
    ld l, [hl]
    jr nz, jr_01d_66d5

    ld l, [hl]
    ld l, h

jr_01d_6668:
    ld a, c
    jr nz, jr_01d_66db

    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$6b

    ld h, [hl]
    jr nz, @+$6f

jr_01d_6673:
    ld a, c
    ld bc, $6170
    ld [hl], d
    ld [hl], h
    ld l, [hl]

jr_01d_667a:
    ld h, l

jr_01d_667b:
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_01d_66e7

    ld l, a
    ld l, a
    ld h, h
    ld l, $02
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    daa
    ld h, h

jr_01d_668b:
    jr nz, jr_01d_66f9

    ld h, l
    ld [hl], h
    jr nz, jr_01d_66fe

    ld h, l
    jr nz, jr_01d_6704

    ld l, h
    ld h, c
    ld a, c
    ld bc, $6977
    ld [hl], h

jr_01d_669b:
    ld l, b
    jr nz, jr_01d_6711

    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01d_671d

    ld l, b
    ld l, a
    jr nz, jr_01d_66ab

    ld [hl], b

jr_01d_66ab:
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_672a

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a

jr_01d_66ba:
    ld l, b
    ld [hl], h
    jr nz, jr_01d_6731

    ld l, a
    ld hl, $5720
    ld l, c
    ld l, h
    ld l, h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01d_673b

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01d_6747

jr_01d_66d0:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_6742

jr_01d_66d5:
    ld h, l
    ccf
    ld bc, $6c50
    ld h, l

jr_01d_66db:
    ld h, c
    ld [hl], e
    ld h, l
    ld hl, $5900
    ld h, l
    ld h, c
    ld l, b
    inc l
    jr nz, jr_01d_6730

jr_01d_66e7:
    daa
    ld l, l
    jr nz, jr_01d_6755

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $2061
    ld l, h
    ld l, c
    ld h, c
    ld h, d
    ld l, c
    ld l, h
    ld l, c
    ld [hl], h

jr_01d_66f9:
    ld a, c
    ld l, $03
    nop
    ld d, d

jr_01d_66fe:
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ccf

jr_01d_6704:
    jr nz, jr_01d_6747

    ld [hl], a
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $0003
    ld d, a
    ld h, l

jr_01d_6711:
    jr nz, jr_01d_6776

    ld h, c
    ld l, [hl]
    jr nz, jr_01d_6787

    ld l, h
    ld h, c
    ld a, c
    ld bc, $6c61

jr_01d_671d:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_01d_6798

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e

jr_01d_672a:
    ld hl, $0003
    ld b, c
    jr nz, @+$76

jr_01d_6730:
    ld h, l

jr_01d_6731:
    ld h, c
    ld l, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01d_676a

    jr nz, jr_01d_67ae

    ld h, c

jr_01d_673b:
    ld l, e
    ld h, l
    ld [hl], e
    ld bc, $7574
    ld [hl], d

jr_01d_6742:
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01d_67ae

    ld l, c

jr_01d_6747:
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_67c2

    ld l, b
    ld h, l
    ld bc, $6173
    ld l, l
    ld h, l

jr_01d_6755:
    jr nz, jr_01d_67b9

    ld h, c
    ld l, h
    ld l, h
    inc l
    jr nz, jr_01d_67ac

    ld c, e
    ccf
    inc bc
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01d_67d3

    ld l, a
    ld [hl], a
    dec l

jr_01d_676a:
    ld l, h
    ld h, l
    db $76
    ld h, l
    ld l, h
    ld bc, $6c70
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d

jr_01d_6776:
    jr nz, jr_01d_67e1

    ld [hl], e
    jr nz, @+$6a

    ld l, a
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01d_67e7

    ld l, [hl]

jr_01d_6787:
    jr nz, jr_01d_67fe

    ld [hl], b
    ld [hl], e
    ld h, l
    ld [hl], h
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_01d_6798:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01d_67fe

    ld [hl], e
    jr nz, jr_01d_6807

    ld l, a
    ld l, a
    ld h, h
    ld bc, $7361
    jr nz, jr_01d_67af

    inc l
    jr nz, jr_01d_681f

    ld l, b

jr_01d_67ac:
    ld h, l
    ld [hl], d

jr_01d_67ae:
    ld h, l

jr_01d_67af:
    daa
    ld [hl], e
    ld bc, $6f6e
    jr nz, @+$66

    ld h, l
    ld l, [hl]
    ld a, c

jr_01d_67b9:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_6827

    ld [hl], h
    ld hl, $0003

jr_01d_67c2:
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_6829

    jr nz, jr_01d_682d

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    jr nz, @+$6e

    ld l, c
    ld l, e
    ld h, l

jr_01d_67d3:
    ld bc, $2c07
    jr nz, jr_01d_684c

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld bc, $7369
    jr nz, @+$70

jr_01d_67e1:
    ld l, a
    jr nz, @+$66

    ld h, l
    ld l, [hl]
    ld a, c

jr_01d_67e7:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$6b

    ld [hl], h
    ld hl, $0003
    ld d, b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_01d_686b

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_01d_686c

jr_01d_67fe:
    ld l, a
    ld [hl], a
    ld l, $03
    nop
    ld d, a
    ld h, l
    jr nz, jr_01d_686a

jr_01d_6807:
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_687b

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01d_6854

    ld [hl], l
    ld l, [hl]
    ld h, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    inc l
    jr nz, jr_01d_688f

    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e

jr_01d_681f:
    ld [hl], e
    jr nz, @+$76

    ld l, a
    ld bc, $2e07
    inc bc

jr_01d_6827:
    nop
    ld e, c

jr_01d_6829:
    ld h, l
    ld h, c
    ld l, b
    inc l

jr_01d_682d:
    jr nz, jr_01d_68a3

    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_01d_6897

    jr nz, jr_01d_68a4

    ld l, a
    ld [hl], h
    ld hl, $0003
    ld b, e
    ld l, a
    ld l, l
    ld [hl], b
    ld h, l
    ld [hl], h
    ld h, l
    jr nz, jr_01d_68a8

    ld a, c
    jr nz, jr_01d_68bd

    ld h, c
    ld l, e
    ld l, c

jr_01d_684c:
    ld l, [hl]
    ld h, a
    ld bc, $7574
    ld [hl], d
    ld l, [hl]
    ld [hl], e

jr_01d_6854:
    jr nz, jr_01d_68be

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_68cd

    ld l, [hl]
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld d, a
    ld l, c

jr_01d_686a:
    ld l, h

jr_01d_686b:
    ld l, h

jr_01d_686c:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01d_68e5

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    inc l
    ld bc, $3f07
    nop

jr_01d_687b:
    ld c, a
    ld c, e
    jr nz, @+$76

    ld l, b
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01d_68f2

    ld h, l
    jr nz, @+$68

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ccf
    nop
    ld d, a

jr_01d_688f:
    ld h, l
    jr nz, jr_01d_68fe

    ld l, a
    ld [hl], e
    ld [hl], h
    ld l, $2e

jr_01d_6897:
    ld l, $03
    nop
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_6908

    ld [hl], h
    jr nz, jr_01d_6919

    ld h, c

jr_01d_68a3:
    ld [hl], e

jr_01d_68a4:
    jr nz, jr_01d_690c

    ld [hl], l
    ld l, [hl]

jr_01d_68a8:
    ld hl, $0003
    ld d, b
    ld l, h
    ld [hl], l
    ld [hl], e
    inc l
    jr nz, jr_01d_6929

    ld h, l
    jr nz, @+$69

    ld l, a
    ld [hl], h
    jr nz, jr_01d_692d

    ld l, a
    ld bc, $6c70

jr_01d_68bd:
    ld h, c

jr_01d_68be:
    ld a, c
    jr nz, @+$46

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $0003
    ld c, h

jr_01d_68cd:
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_6943

    ld l, h
    ld h, c
    ld a, c
    ld bc, $6c61
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, @+$74

    ld [hl], l
    ld l, h
    ld h, l

jr_01d_68e5:
    ld [hl], e
    ld bc, $6761
    ld h, c
    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld c, a
    ld c, e
    inc l

jr_01d_68f2:
    jr nz, @+$6e

    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$69

    ld l, a
    ld l, $03
    nop

jr_01d_68fe:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_6965

    jr nz, jr_01d_697a

    ld l, c
    ld h, l

jr_01d_6908:
    ld l, $2e
    ld l, $03

jr_01d_690c:
    nop
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_697b

    ld [hl], h
    jr nz, @+$79

    ld h, c
    ld [hl], e
    jr nz, jr_01d_697f

jr_01d_6919:
    ld [hl], l
    ld l, [hl]
    ld hl, $0003
    ld d, b
    ld l, h
    ld [hl], l
    ld [hl], e
    inc l
    jr nz, jr_01d_699c

    ld h, l
    jr nz, @+$69

    ld l, a

jr_01d_6929:
    ld [hl], h
    jr nz, jr_01d_69a0

    ld l, a

jr_01d_692d:
    ld bc, $6c70
    ld h, c
    ld a, c
    jr nz, @+$46

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_01d_697c

    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $0003
    ld c, h
    ld h, l
    ld [hl], h
    daa

jr_01d_6943:
    ld [hl], e
    jr nz, jr_01d_69b6

    ld l, h
    ld h, c
    ld a, c
    ld bc, $6c61
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_01d_69c7

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    ld bc, $6761
    ld h, c
    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld c, a
    ld c, e
    inc l

jr_01d_6965:
    jr nz, jr_01d_69d3

    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_69d4

    ld l, a
    ld l, $03
    nop
    ld d, a
    ld h, l
    jr nz, jr_01d_69ec

    ld l, a
    ld l, [hl]
    ld hl, $0003

jr_01d_697a:
    ld d, a

jr_01d_697b:
    ld h, l

jr_01d_697c:
    jr nz, jr_01d_69f5

    ld l, a

jr_01d_697f:
    ld l, [hl]
    inc l
    jr nz, @+$76

    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6f74
    jr nz, jr_01d_6994

    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e

jr_01d_6994:
    jr nz, @+$63

    ld l, h
    ld l, h
    jr nz, jr_01d_6a13

    ld l, a
    ld [hl], l

jr_01d_699c:
    ld [hl], d
    ld bc, $6f64

jr_01d_69a0:
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $5420
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    inc l
    ld bc, $2107
    inc bc
    nop
    ld c, c
    jr nz, jr_01d_6a17

    ld h, c
    ld l, [hl]

jr_01d_69b6:
    daa
    ld [hl], h
    jr nz, jr_01d_6a1c

    ld h, l
    ld l, h
    ld l, c
    ld h, l
    db $76
    ld h, l
    ld bc, $7469
    ld hl, $4e20
    ld l, c

jr_01d_69c7:
    ld h, e
    ld h, l
    jr nz, jr_01d_6a42

    ld l, c
    ld l, [hl]
    inc l
    jr nz, jr_01d_69d7

    ld l, $03
    nop

jr_01d_69d3:
    ld c, h

jr_01d_69d4:
    ld h, l
    ld [hl], h
    daa

jr_01d_69d7:
    ld [hl], e
    jr nz, jr_01d_6a4a

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    inc l
    jr nz, jr_01d_6a57

    ld l, a
    ld bc, $6577
    jr nz, jr_01d_6a4e

    ld l, a
    ld l, [hl]

jr_01d_69ec:
    daa
    ld [hl], h
    jr nz, jr_01d_6a5c

    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01d_6a69

jr_01d_69f5:
    ld l, a
    ld bc, $2007
    ld h, c
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_01d_6a0e

    ld hl, $5401
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e

jr_01d_6a0e:
    ld [hl], e
    jr nz, jr_01d_6a77

    ld l, a
    ld [hl], d

jr_01d_6a13:
    jr nz, jr_01d_6a89

    ld l, b
    ld h, l

jr_01d_6a17:
    ld bc, $746f
    ld l, b
    ld h, l

jr_01d_6a1c:
    ld [hl], d
    jr nz, jr_01d_6a83

    ld h, c
    ld a, c
    ld l, $20
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    ld [bc], a
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, @+$74

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_01d_6a9a

    ld [hl], l
    ld l, [hl]
    ld hl, $5701
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01d_6ab2

    ld l, a
    jr nz, @+$72

    ld l, h

jr_01d_6a42:
    ld h, c
    ld a, c
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]

jr_01d_6a4a:
    ccf
    nop
    ld l, $2e

jr_01d_6a4e:
    ld l, $41
    ld [hl], a
    inc l
    jr nz, jr_01d_6ab5

    ld l, h
    ld [hl], d
    ld l, c

jr_01d_6a57:
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $01

jr_01d_6a5c:
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_01d_6ad1

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_01d_6adc

    ld l, c

jr_01d_6a69:
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    ccf
    jr nz, jr_01d_6ab6

    ld l, h
    ld l, h

jr_01d_6a77:
    jr nz, jr_01d_6aeb

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $5702
    ld l, b
    ld l, c
    ld h, e

jr_01d_6a83:
    ld l, b
    jr nz, jr_01d_6af8

    ld [hl], l
    ld l, h
    ld h, l

jr_01d_6a89:
    ld [hl], e
    inc l
    ld bc, $7473
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    jr nz, jr_01d_6b03

    ld [hl], d
    jr nz, jr_01d_6b04

    ld h, c
    ld [hl], h
    ld h, e

jr_01d_6a9a:
    ld l, b
    ccf
    inc bc
    nop
    ld l, $2e
    ld l, $6d
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, @+$70

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_01d_6b21

    ld l, c
    ld l, l
    ld h, l
    ld l, $03

jr_01d_6ab2:
    nop
    ld d, a
    ld l, c

jr_01d_6ab5:
    ld l, h

jr_01d_6ab6:
    ld l, h
    jr nz, jr_01d_6b32

    ld l, a
    ld [hl], l
    jr nz, jr_01d_6b31

    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_6b3b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6b73
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01d_6b45

jr_01d_6ad1:
    ld l, b
    ld l, c
    ld [hl], e
    ld bc, $6873
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_01d_6b3f

jr_01d_6adc:
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ccf
    nop
    ld b, a
    ld h, l
    ld [hl], h
    jr nz, jr_01d_6b57

    ld l, [hl]
    jr nz, jr_01d_6b54

jr_01d_6aeb:
    ld l, [hl]
    jr nz, jr_01d_6b1f

    jr nz, jr_01d_6b63

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    jr nz, jr_01d_6b58

    ld l, [hl]

jr_01d_6af8:
    ld h, h
    ld bc, $6973
    ld l, [hl]
    ld l, e
    jr nz, jr_01d_6b69

    ld [hl], h
    jr nz, jr_01d_6b7a

jr_01d_6b03:
    ld l, c

jr_01d_6b04:
    ld [hl], h
    ld l, b
    jr nz, @+$33

    jr nz, jr_01d_6b7a

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld bc, $6e6f
    jr nz, jr_01d_6b77

    ld h, c
    ld h, e
    ld l, b
    jr nz, @+$6a

    ld l, a
    ld l, h
    ld h, l
    ld hl, $0003
    ld c, a
    ld l, [hl]

jr_01d_6b1f:
    ld l, h
    ld a, c

jr_01d_6b21:
    jr nz, jr_01d_6b70

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    daa
    ld [hl], e
    jr nz, jr_01d_6b92

    ld l, a
    ld [hl], h
    dec l
    ld bc, $6574

jr_01d_6b31:
    ld l, [hl]

jr_01d_6b32:
    jr nz, jr_01d_6ba3

    ld l, [hl]
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_01d_6ba9

    ld l, [hl]

jr_01d_6b3b:
    ld h, l
    ld bc, $6e6f

jr_01d_6b3f:
    jr nz, @+$67

    db $76
    ld h, l
    ld [hl], d
    ld a, c

jr_01d_6b45:
    jr nz, @+$6a

    ld l, a
    ld l, h
    ld h, l
    ld l, $2e
    ld l, $03
    nop
    ld d, a
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, c

jr_01d_6b54:
    jr nz, @+$76

    ld [hl], d

jr_01d_6b57:
    ld a, c

jr_01d_6b58:
    jr nz, jr_01d_6bcd

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld bc, $6c70
    ld h, c

jr_01d_6b63:
    ld a, c
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01d_6bdd

jr_01d_6b69:
    ld l, b
    ld l, c
    ld [hl], e
    ld bc, $6873
    ld l, a

jr_01d_6b70:
    ld [hl], d
    ld [hl], h
    jr nz, jr_01d_6bd7

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01d_6b77:
    ld [hl], e
    ld h, l
    ccf

jr_01d_6b7a:
    nop
    ld d, e
    ld l, a
    inc l
    jr nz, @+$79

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$66

    ld l, c
    ld h, h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01d_6c00

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ccf

jr_01d_6b92:
    inc bc
    nop
    ld c, b
    ld l, l
    ld l, l
    ld l, $2e
    ld l, $4c
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_01d_6c0d

    ld l, c
    ld l, e

jr_01d_6ba3:
    ld h, l
    ld bc, $7469
    jr nz, jr_01d_6c0d

jr_01d_6ba9:
    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_6c17

    ld l, a
    jr nz, @+$79

    ld h, l
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld d, h
    ld l, a
    ld h, h
    ld h, c
    ld a, c
    daa
    ld [hl], e
    jr nz, jr_01d_6c29

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    ld bc, $6168
    db $76
    ld h, l

jr_01d_6bcd:
    jr nz, @+$63

    jr nz, jr_01d_6c48

    ld h, c
    ld a, c
    ld [hl], e
    jr nz, jr_01d_6c4a

    ld l, a

jr_01d_6bd7:
    jr nz, jr_01d_6c40

    ld l, a
    ld l, $03
    nop

jr_01d_6bdd:
    ld c, a
    ld l, b
    dec l
    ld l, b
    ld l, a
    ld l, b
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, jr_01d_6c57

    ld h, c
    ld h, h
    ld h, l
    ld bc, $7469
    jr nz, jr_01d_6c61

    ld l, [hl]
    jr nz, jr_01d_6c5e

    ld l, [hl]
    jr nz, jr_01d_6c67

    ld l, [hl]
    ld h, l
    ld bc, $6e6f
    jr nz, @+$67

    db $76

jr_01d_6c00:
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, @+$6a

    ld l, a
    ld l, h
    ld h, l
    ld hl, $0003
    ld b, d
    ld [hl], l

jr_01d_6c0d:
    ld [hl], h
    jr nz, @+$70

    ld l, a
    ld [hl], h
    jr nz, @+$64

    ld h, l
    ld l, c
    ld l, [hl]

jr_01d_6c17:
    ld h, a
    jr nz, jr_01d_6c7b

    ld h, d
    ld l, h
    ld h, l
    ld bc, $6f74
    jr nz, jr_01d_6c8a

    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01d_6c96

    ld [hl], l
    ld [hl], h

jr_01d_6c29:
    jr nz, @+$79

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $2031
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld [hl], h
    jr nz, jr_01d_6c9f

    ld [hl], l
    ld [hl], d
    ld [hl], h
    ld [hl], e
    ld l, $03
    nop
    ld c, a
    ld l, b

jr_01d_6c40:
    dec l
    ld l, b
    ld l, a
    ld l, b
    ld hl, $5320
    ld l, b

jr_01d_6c48:
    ld l, a
    ld l, a

jr_01d_6c4a:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $2009
    ld l, c
    ld [hl], e
    jr nz, jr_01d_6cbc

    ld [hl], d
    ld h, l

jr_01d_6c57:
    ld h, c
    ld [hl], h
    ld hl, $0003
    ld b, d
    ld [hl], l

jr_01d_6c5e:
    ld [hl], h
    jr nz, jr_01d_6ccf

jr_01d_6c61:
    ld l, a
    ld [hl], h
    jr nz, jr_01d_6ccc

    ld h, l
    ld [hl], h

jr_01d_6c67:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6e6f
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_01d_6ce2

    ld l, [hl]
    ld h, l
    ld bc, $6f64
    ld h, l
    ld [hl], e
    ld l, [hl]

jr_01d_6c7b:
    daa
    ld [hl], h
    jr nz, jr_01d_6ce2

    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

    ld [hl], h
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld a, c

jr_01d_6c8a:
    inc l
    jr nz, jr_01d_6c94

    ld hl, $5901
    ld l, a
    ld [hl], l
    jr nz, @+$69

jr_01d_6c94:
    ld l, a
    ld [hl], h

jr_01d_6c96:
    jr nz, jr_01d_6d07

    ld l, [hl]
    jr nz, jr_01d_6d04

    ld l, [hl]
    jr nz, jr_01d_6d0d

    ld l, [hl]

jr_01d_6c9f:
    ld h, l
    ld bc, $6e61
    ld h, h
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$63

    jr nz, jr_01d_6cb6

    ld hl, $0003
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e

jr_01d_6cb6:
    jr nz, @+$63

    ld l, l
    ld h, c
    ld a, d
    ld l, c

jr_01d_6cbc:
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld d, h
    ld l, a
    ld h, h
    ld h, c
    ld a, c
    daa
    ld [hl], e
    jr nz, @+$69

    ld l, a
    ld l, h

jr_01d_6ccc:
    ld h, [hl]
    ld h, l
    ld [hl], d

jr_01d_6ccf:
    ld [hl], e
    ld bc, $6967
    db $76
    ld h, l
    jr nz, jr_01d_6d40

    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    jr nz, jr_01d_6d41

    ld l, h
    ld l, h

jr_01d_6ce2:
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_01d_6d52

    ld [hl], c
    ld [hl], l
    ld h, c
    ld l, h
    ld h, l
    ld h, h
    jr nz, @+$4f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    inc l
    ld bc, $2107
    jr nz, jr_01d_6d58

    ld l, a
    ld [hl], l
    jr nz, jr_01d_6d66

    ld h, c

jr_01d_6d04:
    ld l, [hl]
    jr nz, jr_01d_6d77

jr_01d_6d07:
    ld l, h
    ld h, c
    ld a, c
    ld bc, $6568

jr_01d_6d0d:
    ld [hl], d
    ld h, l
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld hl, $0003
    ld d, e
    ld l, a
    inc l
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01d_6d9d

    ld l, a
    ld [hl], l
    jr nz, jr_01d_6d98

    ld l, h
    ld h, c
    ld a, c
    ccf
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01d_6d95

    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    jr nz, jr_01d_6da2

    ld h, l
    ld [hl], d
    ld h, l
    ld bc, $7261

jr_01d_6d40:
    ld h, l

jr_01d_6d41:
    jr nz, jr_01d_6da9

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_6dbb

    ld h, c
    ld [hl], h
    ld h, l
    ld hl, $0003
    ld b, e
    ld l, a
    ld h, c

jr_01d_6d52:
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_01d_6dbd

jr_01d_6d58:
    ld a, c
    ld h, l
    jr nz, jr_01d_6dd0

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, h
    ld bc, $796d
    jr nz, jr_01d_6dd9

jr_01d_6d66:
    ld l, h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01d_6dd5

    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_01d_6dd2

    ld bc, $6f6c
    ld l, [hl]
    ld h, a
    dec l

jr_01d_6d77:
    ld h, h
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01d_6de9

    ld l, a
    ld l, a
    ld l, e
    ld hl, $0003
    ld c, c
    ld h, [hl]
    jr nz, jr_01d_6e04

    ld l, a
    ld [hl], l
    jr nz, jr_01d_6e06

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01d_6e08

    ld l, a

jr_01d_6d95:
    ld bc, $6d69

jr_01d_6d98:
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76
    ld h, l

jr_01d_6d9d:
    inc l
    jr nz, jr_01d_6e07

    ld h, l
    ld [hl], h

jr_01d_6da2:
    jr nz, jr_01d_6e18

    ld l, b
    ld h, l
    ld bc, $6f63

jr_01d_6da9:
    ld h, c
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    daa
    jr nz, jr_01d_6e20

    ld [hl], b
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $03
    nop

jr_01d_6dbb:
    ld e, c
    ld l, a

jr_01d_6dbd:
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_01d_6e2a

    ld l, a
    ld [hl], h
    jr nz, @+$69

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6964
    ld [hl], e
    ld [hl], h
    ld h, c

jr_01d_6dd0:
    ld l, [hl]
    ld h, e

jr_01d_6dd2:
    ld h, l
    jr nz, jr_01d_6e3b

jr_01d_6dd5:
    ld l, a
    ld [hl], d
    jr nz, jr_01d_6e3a

jr_01d_6dd9:
    ld l, [hl]
    ld bc, $6d61
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], l
    ld [hl], d
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l
    daa
    db $76

jr_01d_6de9:
    ld h, l
    jr nz, jr_01d_6e53

    ld l, a
    ld [hl], h
    jr nz, jr_01d_6e51

    ld bc, $7473
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_6e61

    ld l, a
    ld l, a
    ld l, e
    jr nz, @+$79

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $2061

jr_01d_6e04:
    ld l, b
    ld l, c

jr_01d_6e06:
    ld h, a

jr_01d_6e07:
    ld l, b

jr_01d_6e08:
    jr nz, jr_01d_6e7e

    ld [hl], d
    ld h, c
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld l, $03
    nop
    ld c, c
    ld h, [hl]

jr_01d_6e18:
    jr nz, jr_01d_6e93

    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld h, c
    ld l, [hl]

jr_01d_6e20:
    ld [hl], h
    jr nz, jr_01d_6e97

    ld l, a
    ld bc, $6f63
    ld l, l
    ld [hl], b
    ld h, l

jr_01d_6e2a:
    ld [hl], h
    ld h, l
    inc l
    jr nz, jr_01d_6ea8

    ld l, a
    ld [hl], l
    jr nz, @+$70

    ld h, l
    ld h, l
    ld h, h
    ld bc, $6f6d
    ld [hl], d

jr_01d_6e3a:
    ld h, l

jr_01d_6e3b:
    jr nz, @+$66

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $02
    ld b, [hl]
    ld l, c
    ld a, b
    jr nz, jr_01d_6ebf

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01d_6eb8

    ld l, a

jr_01d_6e51:
    ld l, a
    ld l, e

jr_01d_6e53:
    inc l
    ld bc, $6e61
    ld h, h
    jr nz, jr_01d_6ec6

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01d_6ed9

    ld l, a

jr_01d_6e61:
    ld [hl], l
    ld [hl], d
    ld bc, $7274
    ld h, c
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_6eed

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01d_6e7e:
    ld bc, $6873
    ld l, a
    ld [hl], h
    jr nz, jr_01d_6eef

    ld [hl], l
    ld h, h
    ld h, a
    ld h, l
    ld h, h
    ccf
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_01d_6ef9

    ld h, l
    ld [hl], d

jr_01d_6e93:
    ld h, l
    jr nz, jr_01d_6eff

    ld h, [hl]

jr_01d_6e97:
    jr nz, jr_01d_6f12

    ld l, a
    ld [hl], l
    ld bc, $656e
    ld h, l
    ld h, h
    jr nz, jr_01d_6f05

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], e
    ld h, l
    ld l, h

jr_01d_6ea8:
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_6f13

    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l

jr_01d_6eb8:
    nop
    ld h, c
    jr nz, jr_01d_6f20

    ld h, l
    ld h, e
    ld h, l

jr_01d_6ebf:
    ld l, [hl]
    ld [hl], h
    nop
    ld h, c
    jr nz, jr_01d_6f2c

    ld l, a

jr_01d_6ec6:
    ld l, a
    ld h, h
    nop
    ld h, c
    jr nz, jr_01d_6f3c

    ld [hl], d
    ld l, a
    daa
    ld [hl], e
    nop
    ld h, c
    jr nz, jr_01d_6f48

    ld l, a
    ld [hl], b
    jr nz, jr_01d_6f48

    ld [hl], d

jr_01d_6ed9:
    ld l, a
    daa
    ld [hl], e
    nop
    ld h, c
    jr nz, jr_01d_6f4d

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    nop
    ld l, [hl]
    ld h, l
    ld h, l
    ld h, h
    ld [hl], e

jr_01d_6eed:
    jr nz, @+$65

jr_01d_6eef:
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_01d_6f56

    ld l, [hl]
    ld h, h
    nop
    ld l, h

jr_01d_6ef9:
    ld h, c
    ld h, e
    ld l, e
    ld [hl], e
    jr nz, jr_01d_6f62

jr_01d_6eff:
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_01d_6f66

jr_01d_6f05:
    ld l, [hl]
    ld h, h
    nop
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_01d_6f5c

    ld c, e
    jr nz, jr_01d_6f73

    ld h, c
    ld [hl], d

jr_01d_6f12:
    ld [hl], d

jr_01d_6f13:
    ld a, c
    jr nz, jr_01d_6f77

    ld l, [hl]
    ld h, h
    nop
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_01d_6f81

    ld h, c
    ld [hl], d

jr_01d_6f20:
    ld [hl], d
    ld a, c
    jr nz, jr_01d_6f85

    ld l, [hl]
    ld h, h
    nop
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_01d_6f9a

jr_01d_6f2c:
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01d_6f94

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_01d_6f98

    ld l, [hl]
    ld h, h
    nop
    ld l, b
    ld h, c

jr_01d_6f3c:
    ld [hl], e
    jr nz, jr_01d_6fa7

    ld [hl], l
    ld h, a
    ld h, l
    jr nz, jr_01d_6fa7

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c

jr_01d_6f48:
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    nop

jr_01d_6f4d:
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_6fb4

    jr nz, @+$64

    ld h, c

jr_01d_6f56:
    ld h, h
    jr nz, jr_01d_6fbf

    ld h, c
    ld h, h
    ld h, l

jr_01d_6f5c:
    ld hl, $7700
    ld l, c
    ld [hl], h
    ld l, b

jr_01d_6f62:
    jr nz, @+$63

    jr nz, jr_01d_6fd9

jr_01d_6f66:
    ld l, b
    ld h, c
    ld [hl], d
    ld [hl], b
    jr nz, jr_01d_6fd2

    ld h, c
    ld h, h
    ld h, l
    ld l, $00
    ld [hl], h
    ld l, b

jr_01d_6f73:
    ld h, c
    ld [hl], h
    jr nz, jr_01d_6fdd

jr_01d_6f77:
    ld h, c
    ld h, h
    ld h, l
    ld [hl], e
    ld l, $00
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h

jr_01d_6f81:
    jr nz, @+$68

    ld h, c
    ld h, h

jr_01d_6f85:
    ld h, l
    ld [hl], e
    jr nz, jr_01d_6fea

    jr nz, jr_01d_6fed

    ld l, c
    ld [hl], h
    ld l, $00
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    daa

jr_01d_6f94:
    ld [hl], e
    jr nz, @+$75

    ld [hl], h

jr_01d_6f98:
    ld [hl], d
    ld h, c

jr_01d_6f9a:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $00
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$66

    ld [hl], d

jr_01d_6fa7:
    ld h, c
    ld [hl], a
    ld [hl], e
    jr nz, jr_01d_700d

    jr nz, jr_01d_7010

    ld l, c
    ld [hl], h
    ld l, $00
    ld [hl], h
    ld l, b

jr_01d_6fb4:
    ld h, c
    ld [hl], h
    jr nz, jr_01d_701c

    ld [hl], d
    ld h, c
    ld [hl], a
    ld [hl], e
    ld l, $00
    ld [hl], a

jr_01d_6fbf:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_7025

    jr nz, jr_01d_7039

    ld l, b
    ld h, c
    ld [hl], d
    ld [hl], b
    jr nz, @+$66

    ld [hl], d
    ld h, c
    ld [hl], a
    ld l, $00
    ld [hl], a

jr_01d_6fd2:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$63

    jr nz, jr_01d_703b

jr_01d_6fd9:
    ld h, c
    ld h, h
    jr nz, jr_01d_7041

jr_01d_6fdd:
    ld [hl], d
    ld h, c
    ld [hl], a
    ld hl, $6800
    ld h, c
    ld [hl], e
    jr nz, jr_01d_7055

    ld l, a
    jr nz, jr_01d_704d

jr_01d_6fea:
    ld l, a
    ld l, [hl]
    ld [hl], h

jr_01d_6fed:
    ld [hl], d
    ld l, a
    ld l, h
    ld l, $00
    ld l, c
    ld [hl], e
    jr nz, @+$6a

    ld h, c
    ld [hl], d
    ld h, h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01d_7061

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld l, $00
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, @+$69

    ld l, a
    ld l, a

jr_01d_700d:
    ld h, h
    jr nz, jr_01d_7073

jr_01d_7010:
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld l, $00
    ld l, c
    ld [hl], e
    jr nz, jr_01d_7081

jr_01d_701c:
    ld h, c
    ld [hl], e
    ld a, c
    jr nz, jr_01d_7095

    ld l, a
    jr nz, jr_01d_7087

    ld l, a

jr_01d_7025:
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld l, $00
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, @+$65

    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], e
    ld l, c
    ld h, e
    jr nz, jr_01d_709c

jr_01d_7039:
    ld l, a
    ld l, [hl]

jr_01d_703b:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld l, $00

jr_01d_7041:
    ld l, c
    ld [hl], e
    jr nz, jr_01d_70aa

    ld h, c
    ld [hl], e
    ld a, c
    jr nz, jr_01d_70be

    ld l, a
    jr nz, @+$65

jr_01d_704d:
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld l, $00

jr_01d_7055:
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, @+$69

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01d_70c2

    ld l, a
    ld l, [hl]

jr_01d_7061:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld l, $00
    ld l, c
    ld [hl], e
    jr nz, jr_01d_70d3

    ld h, c
    ld [hl], d
    ld h, h
    jr nz, @+$76

    ld l, a
    jr nz, @+$65

jr_01d_7073:
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld l, $00
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_01d_70ee

    ld l, a

jr_01d_7081:
    jr nz, @+$65

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d

jr_01d_7087:
    ld l, a
    ld l, h
    ld l, $00
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$75

    ld l, e
    ld a, c
    jr nz, jr_01d_70fd

jr_01d_7095:
    ld l, c
    ld h, a
    ld l, b
    inc l
    nop
    ld c, c
    ld [hl], h

jr_01d_709c:
    daa
    ld [hl], e
    jr nz, jr_01d_7111

    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_01d_710e

    ld l, c
    ld h, a
    ld l, b
    inc l

jr_01d_70aa:
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_711c

    ld l, c
    ld l, [hl]
    ld h, h
    ld h, c
    jr nz, jr_01d_711f

    ld l, c
    ld h, a
    ld l, b
    inc l
    nop
    ld c, c
    ld [hl], h

jr_01d_70be:
    daa
    ld [hl], e
    jr nz, @+$63

jr_01d_70c2:
    jr nz, jr_01d_7138

    ld h, c
    ld h, h
    jr nz, jr_01d_7130

    ld l, c
    ld h, a
    ld l, b
    inc l
    nop
    ld c, b
    ld h, l
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_01d_70d3:
    daa
    ld [hl], e
    jr nz, jr_01d_7138

    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    inc l
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_7146

    jr nz, jr_01d_715b

    ld h, c
    ld h, h
    jr nz, jr_01d_7157

    ld l, a
    ld [hl], a
    inc l

jr_01d_70ee:
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$6d

    ld l, c
    ld l, [hl]
    ld h, h
    ld h, c
    jr nz, jr_01d_7167

    ld l, a
    ld [hl], a

jr_01d_70fd:
    inc l
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_7176

    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_01d_7177

    ld l, a
    ld [hl], a
    inc l

jr_01d_710e:
    nop
    ld c, c
    ld [hl], h

jr_01d_7111:
    daa
    ld [hl], e
    jr nz, jr_01d_7187

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, @+$6e

jr_01d_711c:
    ld l, a
    ld [hl], a
    inc l

jr_01d_711f:
    nop
    ld c, c
    ld [hl], h
    jr nz, jr_01d_718a

    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    ld [hl], e
    jr nz, jr_01d_71a3

    ld l, c
    ld l, [hl]
    ld h, h
    inc l

jr_01d_7130:
    jr nz, jr_01d_7132

jr_01d_7132:
    ld c, c
    ld [hl], h
    jr nz, jr_01d_71a9

    ld [hl], h
    ld l, c

jr_01d_7138:
    ld h, e
    ld l, e
    ld [hl], e
    jr nz, jr_01d_71b1

    ld l, a
    jr nz, jr_01d_71b7

    ld l, c
    ld l, [hl]
    ld h, h
    inc l
    nop
    ld d, a

jr_01d_7146:
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_71ad

    ld l, h
    ld l, a
    ld [hl], a
    ld [hl], e
    jr nz, jr_01d_71ba

    ld [hl], h
    inc l
    nop
    ld d, a
    ld l, c
    ld l, [hl]

jr_01d_7157:
    ld h, h
    jr nz, jr_01d_71ca

    ld [hl], l

jr_01d_715b:
    ld [hl], e
    ld l, b
    ld h, l
    ld [hl], e
    jr nz, jr_01d_71ca

    ld [hl], h
    inc l
    nop
    ld b, c
    ld h, [hl]
    ld h, [hl]

jr_01d_7167:
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_01d_71d5

    ld [hl], e
    jr nz, @+$63

    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    inc l

jr_01d_7176:
    nop

jr_01d_7177:
    ld c, c
    ld [hl], h
    jr nz, @+$68

    ld h, l
    ld h, l
    ld l, h
    ld [hl], e
    jr nz, jr_01d_71ed

    ld l, c
    ld h, l
    inc l
    nop
    ld c, c
    ld [hl], h

jr_01d_7187:
    jr nz, jr_01d_71ef

    ld h, l

jr_01d_718a:
    ld h, l
    ld l, h
    ld [hl], e
    jr nz, jr_01d_71f8

    ld [hl], h
    ld [hl], e
    jr nz, jr_01d_71ff

    ld l, c
    ld h, l
    inc l
    nop
    ld c, h
    ld l, c
    ld h, l
    jr nz, jr_01d_71ff

    ld h, c
    ld l, [hl]
    jr nz, jr_01d_7208

    ld l, a
    ld l, h
    ld h, h

jr_01d_71a3:
    jr nz, jr_01d_720e

    ld [hl], h
    inc l
    nop
    ld c, h

jr_01d_71a9:
    ld l, c
    ld h, l
    jr nz, jr_01d_7210

jr_01d_71ad:
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_7213

jr_01d_71b1:
    ld [hl], l
    ld [hl], d
    ld a, c
    jr nz, @+$6b

    ld [hl], h

jr_01d_71b7:
    inc l
    nop
    ld l, l

jr_01d_71ba:
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01d_7220

    ld [hl], d
    ld h, l
    ld h, c
    daa
    ld [hl], e
    jr nz, jr_01d_722e

    ld [hl], l
    ld h, a
    ld h, l
    inc l

jr_01d_71ca:
    nop
    ld l, l
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01d_7232

    ld [hl], d
    ld h, l
    ld h, c
    daa

jr_01d_71d5:
    ld [hl], e
    jr nz, jr_01d_723a

    ld l, c
    ld h, a
    inc l
    nop
    ld l, l
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01d_7243

    ld [hl], d
    ld h, l
    ld h, c
    daa
    ld [hl], e
    jr nz, jr_01d_7255

    ld h, c
    ld [hl], d
    ld h, a
    ld h, l

jr_01d_71ed:
    inc l
    nop

jr_01d_71ef:
    ld l, l
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01d_7256

    ld [hl], d
    ld h, l
    ld h, c

jr_01d_71f8:
    daa
    ld [hl], e
    jr nz, jr_01d_7273

    ld l, c
    ld h, h
    ld h, l

jr_01d_71ff:
    inc l
    nop
    ld l, l
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, @+$63

    ld [hl], d

jr_01d_7208:
    ld h, l
    ld h, c
    daa
    ld [hl], e
    jr nz, jr_01d_726f

jr_01d_720e:
    db $76
    ld h, a

jr_01d_7210:
    ld l, $2c
    nop

jr_01d_7213:
    ld l, l
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01d_727a

    ld [hl], d
    ld h, l
    ld h, c
    daa
    ld [hl], e
    jr nz, jr_01d_7293

jr_01d_7220:
    ld l, h
    ld l, c
    ld l, l
    inc l
    nop
    ld l, l
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01d_728c

    ld [hl], d
    ld h, l
    ld h, c

jr_01d_722e:
    daa
    ld [hl], e
    jr nz, jr_01d_72a0

jr_01d_7232:
    ld h, c
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], a
    inc l
    nop
    ld l, l

jr_01d_723a:
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01d_72a0

    ld [hl], d
    ld h, l
    ld h, c
    daa

jr_01d_7243:
    ld [hl], e
    jr nz, @+$76

    ld l, c
    ld l, [hl]
    ld a, c
    inc l
    nop
    ld l, l
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01d_72b2

    ld [hl], d
    ld h, l
    ld h, c
    daa

jr_01d_7255:
    ld [hl], e

jr_01d_7256:
    jr nz, jr_01d_72bf

    ld l, a
    ld l, [hl]
    ld h, l
    inc l
    nop
    ld [hl], h
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_01d_72cc

    ld l, c
    ld l, [hl]
    ld h, e
    ld l, b
    inc l
    nop

jr_01d_726f:
    ld [hl], h
    ld l, c
    ld l, l
    ld l, c

jr_01d_7273:
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_01d_72e0

    ld l, a

jr_01d_727a:
    ld l, a
    ld h, h
    inc l
    nop
    ld [hl], h
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_01d_72ed

    ld h, c
    ld [hl], e
    ld a, c
    inc l

jr_01d_728c:
    nop
    ld [hl], h
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a

jr_01d_7293:
    daa
    ld [hl], e
    jr nz, jr_01d_7305

    ld l, a
    ld [hl], h
    jr nz, @+$64

    ld h, c
    ld h, h
    inc l
    nop
    ld [hl], h

jr_01d_72a0:
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_01d_730a

    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    inc l
    nop
    ld [hl], h

jr_01d_72b2:
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_01d_732e

    ld l, a
    dec l
    ld [hl], e
    ld l, a

jr_01d_72bf:
    inc l
    nop
    ld [hl], h
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_7337

    ld h, l
    ld h, l
    ld h, h

jr_01d_72cc:
    ld [hl], e
    jr nz, jr_01d_7346

    ld l, a
    ld [hl], d
    ld l, e
    inc l
    nop
    ld [hl], h
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_01d_734d

    ld h, [hl]
    ld h, [hl]

jr_01d_72e0:
    inc l
    nop
    ld [hl], h
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_01d_7354

    ld l, a

jr_01d_72ed:
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    inc l
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_7369

    ld l, a
    jr nz, jr_01d_7375

    ld h, c
    db $76
    ld h, l
    ld [hl], d
    ld l, $00
    ld [hl], a

jr_01d_7305:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_7376

jr_01d_730a:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_01d_7388

    ld h, c
    db $76
    ld h, l
    ld [hl], d
    ld l, $00
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_7390

    ld l, h
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01d_739b

    ld h, c
    db $76
    ld h, l
    ld [hl], d
    ld l, $00
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b

jr_01d_732e:
    jr nz, @+$6e

    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01d_73ac

    ld h, c
    db $76

jr_01d_7337:
    ld h, l
    ld [hl], d
    ld l, $00
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_73a2

    db $76
    ld h, a
    ld l, $20
    ld [hl], a

jr_01d_7346:
    ld h, c
    db $76
    ld h, l
    ld [hl], d
    ld l, $00
    ld [hl], a

jr_01d_734d:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$6f

    ld l, a
    ld [hl], d

jr_01d_7354:
    ld h, l
    jr nz, jr_01d_73ce

    ld h, c
    db $76
    ld h, l
    ld [hl], d
    ld l, $00
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_73c5

    ld l, c
    ld h, a
    jr nz, @+$79

    ld h, c
    db $76

jr_01d_7369:
    ld h, l
    ld [hl], d
    ld l, $00
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_73df

    ld l, a
    ld [hl], h

jr_01d_7375:
    ld [hl], e

jr_01d_7376:
    ld h, c
    jr nz, jr_01d_73f0

    ld h, c
    db $76
    ld h, l
    ld [hl], d
    ld l, $20
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_73f3

    ld h, c
    ld l, d

jr_01d_7388:
    ld l, a
    ld [hl], d
    jr nz, jr_01d_7403

    ld h, c
    db $76
    ld h, l
    ld [hl], d

jr_01d_7390:
    ld l, $00
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$63

    ld l, c
    ld l, l
    daa
    ld [hl], e

jr_01d_739b:
    jr nz, @+$72

    ld h, l
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld h, e

jr_01d_73a2:
    ld [hl], h
    ld hl, $6100
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_740b

    ld l, c
    ld l, l

jr_01d_73ac:
    jr nz, jr_01d_7417

    ld [hl], e
    jr nz, jr_01d_7418

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld hl, $6100
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_741d

    ld l, c
    ld l, l
    jr nz, jr_01d_7429

    ld [hl], e
    jr nz, jr_01d_742a

    ld l, a
    ld l, a

jr_01d_73c5:
    ld h, h
    ld hl, $6100
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_742e

    ld l, c

jr_01d_73ce:
    ld l, l
    daa
    ld [hl], e
    jr nz, jr_01d_7437

    ld h, l
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $00
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_7440

jr_01d_73df:
    ld l, c
    ld l, l
    jr nz, jr_01d_744c

    ld [hl], e
    jr nz, @+$63

    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    ld l, $00
    ld h, c
    ld l, [hl]

jr_01d_73f0:
    ld h, h
    jr nz, jr_01d_7454

jr_01d_73f3:
    ld l, c
    ld l, l
    daa
    ld [hl], e
    jr nz, jr_01d_746e

    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld l, $00
    ld h, c

jr_01d_7403:
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_7468

    ld l, c
    ld l, l
    jr nz, jr_01d_7474

jr_01d_740b:
    ld [hl], e
    jr nz, jr_01d_7470

    ld h, c
    ld h, h
    ld hl, $6100
    ld l, [hl]
    ld h, h
    jr nz, @+$63

jr_01d_7417:
    ld l, c

jr_01d_7418:
    ld l, l
    daa
    ld [hl], e
    jr nz, jr_01d_747e

jr_01d_741d:
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld hl, $6100
    ld l, [hl]
    ld h, h
    jr nz, @+$63

    ld l, c

jr_01d_7429:
    ld l, l

jr_01d_742a:
    ld l, $2e
    ld l, $55

jr_01d_742e:
    ld b, a
    ld c, b
    ld hl, $5900
    ld l, a
    ld [hl], l
    jr nz, jr_01d_749f

jr_01d_7437:
    ld h, c
    db $76
    ld h, l
    ld bc, $2004
    ld [hl], e
    ld l, b
    ld l, a

jr_01d_7440:
    ld [hl], h
    ld bc, $0204
    inc b
    ld bc, HeaderLogo
    inc b
    inc bc
    nop
    ld c, c

jr_01d_744c:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_01d_74b5

    ld h, c

jr_01d_7454:
    ld l, h
    ld l, h
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, HeaderLogo
    inc b
    ld [bc], a
    inc b
    ld bc, HeaderLogo
    inc b
    inc bc
    nop
    ld e, c

jr_01d_7468:
    ld l, a
    ld [hl], l
    jr nz, jr_01d_74cf

    ld h, c
    ld l, [hl]

jr_01d_746e:
    daa
    ld [hl], h

jr_01d_7470:
    jr nz, @+$69

    ld h, l
    ld [hl], h

jr_01d_7474:
    jr nz, jr_01d_74d7

    ld bc, $6974
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$75

jr_01d_747e:
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01d_74ec

    ld h, [hl]
    jr nz, jr_01d_74ff

    ld l, a
    ld [hl], l
    ld bc, $6177
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01d_74ff

    ld l, [hl]
    jr nz, @+$6b

    ld l, l
    ld [hl], b
    ld h, c
    ld h, e
    ld [hl], h
    ld l, $02
    ld b, c
    db $76
    ld l, a
    ld l, c
    ld h, h

jr_01d_749f:
    jr nz, jr_01d_7514

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_01d_751e

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $616e
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], a
    jr nz, jr_01d_7520

    ld h, l
    ld h, l

jr_01d_74b5:
    ld [hl], h
    jr nz, jr_01d_7519

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_752d

    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01d_753e

    ld l, a
    jr nz, @+$6c

    ld [hl], l
    ld h, h

jr_01d_74cf:
    ld h, a
    ld h, l
    ld bc, $2061
    ld [hl], e
    ld l, b
    ld l, a

jr_01d_74d7:
    ld [hl], h
    jr nz, jr_01d_753b

    ld [hl], h
    jr nz, @+$6e

    ld h, l
    ld [hl], e
    ld [hl], e
    ld bc, $6874
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_7554

    ld h, c
    ld a, b
    ld l, $20
    ld [hl], b

jr_01d_74ec:
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $02
    ld c, c
    ld h, [hl]
    jr nz, jr_01d_756a

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_7576

    ld l, a
    ld [hl], l

jr_01d_74ff:
    ld [hl], d
    ld bc, $6562
    ld [hl], e
    ld [hl], h
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    inc l
    jr nz, jr_01d_7575

    ld l, c
    ld [hl], h
    ld bc, $6977
    ld [hl], h
    ld l, b

jr_01d_7514:
    jr nz, jr_01d_757e

    ld h, l
    ld h, c
    db $76

jr_01d_7519:
    ld l, c
    ld h, l
    ld [hl], d
    jr nz, @+$65

jr_01d_751e:
    ld l, h
    ld [hl], l

jr_01d_7520:
    ld h, d
    ld [hl], e
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_759d

    ld h, l
    ld h, l
    ld l, l

jr_01d_752d:
    jr nz, jr_01d_75a3

    ld l, a
    jr nz, jr_01d_75a9

    ld h, c
    db $76
    ld h, l
    ld [hl], d
    ld bc, $6e6f
    jr nz, jr_01d_759d

jr_01d_753b:
    ld l, a
    ld [hl], h
    ld l, b

jr_01d_753e:
    jr nz, @+$72

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01d_75a7

    ld l, [hl]
    ld h, h
    ld bc, $6d69
    ld [hl], b
    ld h, c
    ld h, e
    ld [hl], h
    ld l, $02
    ld c, h
    ld h, l
    ld h, c

jr_01d_7554:
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01d_75ca

    ld l, b
    ld a, c
    ld [hl], h
    ld l, b
    ld l, l
    jr nz, jr_01d_75c0

    ld l, [hl]
    ld h, h
    ld bc, $6974
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_75de

jr_01d_756a:
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01d_75e2

    ld [hl], d
    ld h, c
    ld h, e

jr_01d_7575:
    ld [hl], h

jr_01d_7576:
    ld l, c
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_01d_757e:
    ld h, c
    ld [hl], h
    jr nz, jr_01d_75c5

    ld b, c
    ld c, [hl]
    daa
    ld d, h
    jr nz, @+$64

    ld h, l
    jr nz, @+$63

    ld bc, $6573
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_01d_7608

    ld l, b
    ld l, a
    ld [hl], h
    ld hl, $213f
    ld [bc], a
    ld c, c

jr_01d_759d:
    ld h, [hl]
    jr nz, jr_01d_7609

    ld [hl], h
    jr nz, @+$6b

jr_01d_75a3:
    ld [hl], e
    inc l
    jr nz, jr_01d_7620

jr_01d_75a7:
    ld l, a
    ld [hl], l

jr_01d_75a9:
    jr nz, jr_01d_7619

    ld h, l
    ld h, l
    ld h, h
    ld bc, $6f74
    jr nz, jr_01d_7623

    ld h, l
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_01d_7624

    ld [hl], h
    ld hl, $0003
    ld c, c

jr_01d_75c0:
    jr nz, jr_01d_7626

    ld l, a
    ld l, [hl]
    daa

jr_01d_75c5:
    ld [hl], h
    jr nz, jr_01d_7632

    ld [hl], l
    ld h, h

jr_01d_75ca:
    ld h, a
    ld h, l
    ld bc, $696d
    ld [hl], e
    dec l
    ld l, b
    ld l, c
    ld [hl], h
    ld [hl], e
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_7650

    ld l, b

jr_01d_75de:
    ld l, a
    ld [hl], h
    jr nz, jr_01d_7643

jr_01d_75e2:
    jr nz, jr_01d_764c

    ld l, a
    ld l, a
    ld l, e
    inc l
    ld bc, $6f73
    jr nz, jr_01d_7666

    ld l, a
    ld [hl], l
    jr nz, jr_01d_765e

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_765e

    ld h, c
    db $76
    ld h, l
    ld bc, $6f73
    ld l, l
    ld h, l
    jr nz, jr_01d_7673

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld l, $02
    ld b, d
    ld [hl], l

jr_01d_7608:
    ld [hl], h

jr_01d_7609:
    jr nz, @+$4b

    jr nz, jr_01d_767c

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_01d_767c

    ld [hl], l
    ld h, h
    ld h, a
    ld h, l
    ld bc, $616e

jr_01d_7619:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, c
    ld l, h
    jr nz, @+$75

jr_01d_7620:
    ld l, b
    ld l, a
    ld [hl], h

jr_01d_7623:
    ld [hl], e

jr_01d_7624:
    ld l, $03

jr_01d_7626:
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_76a0

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01d_767b

jr_01d_7632:
    jr nz, jr_01d_7698

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6e6b
    ld l, a
    ld [hl], a
    jr nz, jr_01d_76a0

    jr nz, jr_01d_76b4

    ld l, h
    ld l, c

jr_01d_7643:
    ld h, e
    ld h, l
    ccf
    ld [bc], a
    ld c, b
    ld l, c
    ld [hl], h
    jr nz, jr_01d_76bf

jr_01d_764c:
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, c

jr_01d_7650:
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01d_76be

    ld h, [hl]
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01d_76d3

    ld h, c
    ld l, [hl]

jr_01d_765e:
    ld [hl], h
    jr nz, jr_01d_76c2

    ld h, h
    db $76
    ld l, c
    ld h, e
    ld h, l

jr_01d_7666:
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01d_76ce

    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$79

    ld l, c
    ld [hl], h

jr_01d_7673:
    ld l, b
    jr nz, jr_01d_76ea

    ld l, a
    ld [hl], b
    ld [hl], e
    ld [hl], b
    ld l, c

jr_01d_767b:
    ld l, [hl]

jr_01d_767c:
    ld hl, $5301
    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_01d_76f3

    ld h, [hl]
    ld h, [hl]
    ld hl, $4902
    jr nz, jr_01d_76fe

    ld h, l
    ld h, l
    jr nz, jr_01d_7708

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_7707

    ld l, e
    ld l, c
    ld l, h
    ld l, h

jr_01d_7698:
    inc l
    ld bc, $6f6e
    ld [hl], a
    jr nz, jr_01d_7712

    ld l, b

jr_01d_76a0:
    ld l, a
    ld [hl], a
    jr nz, jr_01d_7711

    ld h, l
    jr nz, jr_01d_7720

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6873
    ld l, a
    ld [hl], h
    ld hl, $0003
    ld e, c
    ld l, a

jr_01d_76b4:
    ld [hl], l
    jr nz, jr_01d_7727

    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_771d

    ld h, c
    ld h, e
    ld l, e

jr_01d_76be:
    ld [hl], e

jr_01d_76bf:
    ld [hl], b
    ld l, c
    ld l, [hl]

jr_01d_76c2:
    ld bc, $6e6f
    jr nz, jr_01d_773b

    ld l, b
    ld h, l
    jr nz, jr_01d_772d

    ld h, c
    ld l, h
    ld l, h

jr_01d_76ce:
    ld hl, $4902
    jr nz, jr_01d_7736

jr_01d_76d3:
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_7743

    ld [hl], l
    ld h, h
    ld h, a
    ld h, l
    jr nz, jr_01d_7758

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6873
    ld l, a
    ld [hl], h
    jr nz, @+$76

    ld l, b

jr_01d_76ea:
    ld h, c
    ld [hl], h
    jr nz, jr_01d_7765

    ld h, c
    ld a, c
    ld l, $03
    nop

jr_01d_76f3:
    ld c, c
    jr nz, jr_01d_775a

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_7761

    db $76
    ld h, c

jr_01d_76fe:
    ld l, h
    ld [hl], l
    ld h, c
    ld [hl], h
    ld h, l
    ld bc, $6e69
    ld [hl], h

jr_01d_7707:
    ld h, l

jr_01d_7708:
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_01d_7784

jr_01d_7711:
    ld l, b

jr_01d_7712:
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_7783

    ld h, c
    db $76

jr_01d_771d:
    ld h, l
    jr nz, jr_01d_778c

jr_01d_7720:
    ld l, a
    ld [hl], e
    ld [hl], h
    inc l
    ld bc, $2e07

jr_01d_7727:
    inc bc
    nop
    ld l, $2e
    ld l, $03

jr_01d_772d:
    nop
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_01d_7795

    ld h, h
    ld l, l

jr_01d_7736:
    ld l, c
    ld [hl], h
    jr nz, @+$7b

    ld l, a

jr_01d_773b:
    ld [hl], l
    ld [hl], d
    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b

jr_01d_7743:
    jr nz, jr_01d_778c

    ld h, c
    ld l, l
    ld h, l
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$64

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld b, h
    ld l, c
    ld h, h

jr_01d_7758:
    jr nz, jr_01d_77d3

jr_01d_775a:
    ld l, a
    ld [hl], l
    jr nz, jr_01d_77ca

    ld l, a
    ld [hl], e
    ld h, l

jr_01d_7761:
    inc l
    ld bc, $070e

jr_01d_7765:
    ccf
    inc bc
    nop
    ld c, c
    jr nz, jr_01d_77ce

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_77d3

    ld h, l
    ld l, h
    ld l, c
    ld h, l
    db $76
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01d_77e9

    ld l, a
    ld [hl], e
    ld [hl], h
    ld l, $03
    nop

jr_01d_7783:
    ld c, c

jr_01d_7784:
    daa
    ld l, l
    jr nz, jr_01d_77e9

    ld h, [hl]
    ld [hl], d
    ld h, c
    ld l, c

jr_01d_778c:
    ld h, h
    jr nz, @+$6b

    ld [hl], h
    ld bc, $7369
    jr nz, jr_01d_7809

jr_01d_7795:
    ld [hl], d
    ld [hl], l
    ld h, l
    inc l
    jr nz, jr_01d_77a9

    dec b
    ld l, $2e
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_7818

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b

jr_01d_77a9:
    ld [hl], h
    jr nz, jr_01d_77f5

    daa
    ld h, h
    jr nz, jr_01d_7812

    ld h, l
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_7826

    ld l, [hl]
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01d_7822

    ld l, a
    jr nz, jr_01d_782a

    ld [hl], h
    ld hl, $0003
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d

jr_01d_77ca:
    jr nz, jr_01d_782d

    ld l, h
    ld l, a

jr_01d_77ce:
    ld l, [hl]
    ld h, l
    jr nz, jr_01d_7835

    ld h, c

jr_01d_77d3:
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld bc, $6564
    ld h, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01d_784d

    ld h, l
    inc l
    ld bc, $6f63
    ld [hl], d
    ld [hl], d
    ld h, l
    ld h, e

jr_01d_77e9:
    ld [hl], h
    inc l
    jr nz, jr_01d_77fb

    ld b, $3f
    inc bc
    nop
    ld d, e
    ld l, a
    jr nz, jr_01d_77fc

jr_01d_77f5:
    daa
    ld [hl], e
    ld bc, $6574
    ld h, e

jr_01d_77fb:
    ld l, b

jr_01d_77fc:
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01d_7867

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l

jr_01d_7809:
    ld [hl], d
    ld bc, $6874
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_788a

    ld l, a

jr_01d_7812:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    inc l
    jr nz, jr_01d_7826

jr_01d_7818:
    rlca
    ccf
    inc bc
    nop
    ld c, c
    ld [hl], h
    jr nz, jr_01d_7890

    ld h, c
    ld l, c

jr_01d_7822:
    ld l, [hl]
    ld [hl], e
    jr nz, @+$6f

jr_01d_7826:
    ld h, l
    jr nz, @+$76

    ld l, a

jr_01d_782a:
    jr nz, jr_01d_789f

    ld h, c

jr_01d_782d:
    ld a, c
    ld bc, $6f73
    inc l
    jr nz, jr_01d_7896

    ld [hl], l

jr_01d_7835:
    ld [hl], h
    jr nz, jr_01d_783f

    ld bc, $7369
    jr nz, jr_01d_789f

    ld [hl], d
    ld l, c

jr_01d_783f:
    ld l, h
    ld l, h
    ld l, c
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_01d_784d:
    jr nz, jr_01d_78c3

    ld l, a
    inc l
    jr nz, @+$10

    rlca
    ccf
    inc bc
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_01d_78c3

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_78d0

    ld l, a
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d

jr_01d_7867:
    ld h, l
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_78db

    ld h, l
    ld [hl], d
    ld h, l
    ld l, h
    ld a, c
    jr nz, jr_01d_78ec

    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_01d_78ee

    ld l, a
    ld bc, $6562
    jr nz, @+$63

    ld l, h
    ld l, a
    ld l, [hl]
    ld h, l
    inc l
    jr nz, jr_01d_78fb

    ld l, a
    jr nz, jr_01d_78ee

jr_01d_788a:
    ld h, l
    ld h, c
    ld l, h
    ld bc, $6977

jr_01d_7890:
    ld [hl], h
    ld l, b
    jr nz, jr_01d_7908

    ld l, b
    ld h, l

jr_01d_7896:
    jr nz, @+$75

    ld l, b
    ld l, a
    ld h, e
    ld l, e
    ld l, $03
    nop

jr_01d_789f:
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_78b2

    rlca
    inc l
    ld l, $2e
    ld l, $79
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld bc, $756a

jr_01d_78b2:
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_791d

    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_7932

    ld [hl], b
    ccf
    inc bc
    nop
    ld b, [hl]
    ld l, a

jr_01d_78c3:
    ld l, a
    ld l, h
    ld l, $2e
    ld l, $49
    jr nz, jr_01d_7938

    ld h, c
    ld a, c
    jr nz, @+$6a

    ld h, c

jr_01d_78d0:
    db $76
    ld h, l
    ld bc, $6f6c
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_793a

    jr nz, jr_01d_7948

jr_01d_78db:
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, jr_01d_792f

    daa
    ld l, l
    jr nz, jr_01d_795d

    ld [hl], h
    ld l, c

jr_01d_78ec:
    ld l, h
    ld l, h

jr_01d_78ee:
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $0003
    ld b, c
    ld [hl], h
    jr nz, @+$76

jr_01d_78fb:
    ld l, b
    ld h, l
    jr nz, jr_01d_7975

    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01d_7970

    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], h

jr_01d_7908:
    inc l
    ld bc, $2049
    ld [hl], e
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$66

    ld h, l
    ld h, [hl]
    ld h, l
    ld l, [hl]
    ld h, h
    ld bc, $796d
    jr nz, jr_01d_7991

jr_01d_791d:
    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld c, $07
    daa
    ld [hl], e
    jr nz, jr_01d_798e

    ld h, l
    ld [hl], e
    ld [hl], b
    ld h, l
    ld [hl], d

jr_01d_792f:
    ld h, c
    ld [hl], h
    ld h, l

jr_01d_7932:
    ld bc, $6f6e
    ld [hl], a
    jr nz, jr_01d_79ac

jr_01d_7938:
    ld l, b
    ld h, c

jr_01d_793a:
    ld [hl], h
    jr nz, jr_01d_79a5

    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01d_79ae

    ld l, a
    ld [hl], e
    ld [hl], h
    ld l, $03
    nop

jr_01d_7948:
    ld c, h
    ld l, a
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_79c7

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h
    ld bc, $6968
    ld [hl], e
    jr nz, jr_01d_79cc

    ld [hl], d

jr_01d_795d:
    ld l, c
    ld h, h
    ld h, l
    ld l, $03
    nop
    ld c, c
    daa
    ld h, h
    jr nz, jr_01d_79d4

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01d_79e3

jr_01d_7970:
    ld h, l
    ld h, l
    jr nz, jr_01d_79dc

    ld l, a

jr_01d_7975:
    ld [hl], a
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01d_79e0

    ld l, a
    jr nz, jr_01d_79e0

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_7995

    rlca
    ld bc, $6e69
    jr nz, @+$76

    ld l, b

jr_01d_798e:
    ld h, l
    jr nz, jr_01d_7a05

jr_01d_7991:
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_01d_7995:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_7a08

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01d_7a11

jr_01d_79a5:
    ld l, a
    ld [hl], e
    ld [hl], h
    inc l
    ld bc, $2e07

jr_01d_79ac:
    inc bc
    nop

jr_01d_79ae:
    ld l, $2e
    ld l, $03
    nop
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, @+$63

    ld h, h
    ld l, l
    ld l, c
    ld [hl], h
    inc l
    jr nz, jr_01d_7a39

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_7a2c

    ld l, a
    ld l, h

jr_01d_79c7:
    ld h, [hl]
    ld bc, $6167
    ld l, l

jr_01d_79cc:
    ld h, l
    jr nz, jr_01d_7a38

    ld [hl], e
    jr nz, jr_01d_7a34

    ld h, l
    ld a, c

jr_01d_79d4:
    ld l, a
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_7a46

    ld h, l
    ld l, $03

jr_01d_79dc:
    nop
    ld b, h
    ld l, c
    ld h, h

jr_01d_79e0:
    jr nz, jr_01d_7a5b

    ld l, a

jr_01d_79e3:
    ld [hl], l
    jr nz, jr_01d_7a52

    ld l, a
    ld [hl], e
    ld h, l
    inc l
    ld bc, $070e
    ccf
    inc bc
    nop
    ld c, c
    jr nz, jr_01d_7a56

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_7a5b

    ld h, l
    ld l, h
    ld l, c
    ld h, l
    db $76
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01d_7a71

jr_01d_7a05:
    ld l, a
    ld [hl], e
    ld [hl], h

jr_01d_7a08:
    ld l, $03
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_01d_7a71

    ld h, [hl]

jr_01d_7a11:
    ld [hl], d
    ld h, c
    ld l, c
    ld h, h
    jr nz, @+$6b

    ld [hl], h
    ld bc, $7369
    jr nz, jr_01d_7a91

    ld [hl], d
    ld [hl], l
    ld h, l
    inc l
    jr nz, jr_01d_7a31

    dec b
    ld l, $2e
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_7aa0

jr_01d_7a2c:
    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b

jr_01d_7a31:
    ld [hl], h
    jr nz, jr_01d_7a7d

jr_01d_7a34:
    daa
    ld h, h
    jr nz, jr_01d_7a9a

jr_01d_7a38:
    ld h, l

jr_01d_7a39:
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_7aae

    ld l, [hl]
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01d_7aaa

jr_01d_7a46:
    ld l, a
    jr nz, jr_01d_7ab2

    ld [hl], h
    ld hl, $0003
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d

jr_01d_7a52:
    jr nz, jr_01d_7ab5

    ld l, h
    ld l, a

jr_01d_7a56:
    ld l, [hl]
    ld h, l
    jr nz, jr_01d_7abd

    ld h, c

jr_01d_7a5b:
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld bc, $6564
    ld h, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01d_7ad5

    ld h, l
    inc l
    ld bc, $6f63
    ld [hl], d
    ld [hl], d
    ld h, l
    ld h, e

jr_01d_7a71:
    ld [hl], h
    inc l
    jr nz, jr_01d_7a83

    ld b, $3f
    inc bc
    nop
    ld d, e
    ld l, a
    jr nz, jr_01d_7a84

jr_01d_7a7d:
    daa
    ld [hl], e
    ld bc, $6574
    ld h, e

jr_01d_7a83:
    ld l, b

jr_01d_7a84:
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01d_7aef

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l

jr_01d_7a91:
    ld [hl], d
    ld bc, $6874
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_7b12

    ld l, a

jr_01d_7a9a:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    inc l
    jr nz, jr_01d_7aae

jr_01d_7aa0:
    rlca
    ccf
    inc bc
    nop
    ld c, c
    ld [hl], h
    jr nz, jr_01d_7b18

    ld h, c
    ld l, c

jr_01d_7aaa:
    ld l, [hl]
    ld [hl], e
    jr nz, @+$6f

jr_01d_7aae:
    ld h, l
    jr nz, @+$76

    ld l, a

jr_01d_7ab2:
    jr nz, jr_01d_7b27

    ld h, c

jr_01d_7ab5:
    ld a, c
    ld bc, $6f73
    inc l
    jr nz, jr_01d_7b1e

    ld [hl], l

jr_01d_7abd:
    ld [hl], h
    jr nz, jr_01d_7ac7

    ld bc, $7369
    jr nz, jr_01d_7b27

    ld [hl], d
    ld l, c

jr_01d_7ac7:
    ld l, h
    ld l, h
    ld l, c
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_01d_7ad5:
    jr nz, @+$76

    ld l, a
    inc l
    jr nz, @+$10

    rlca
    ccf
    inc bc
    nop
    ld c, c
    daa
    ld l, l
    jr nz, @+$69

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_7b58

    ld l, a
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d

jr_01d_7aef:
    ld h, l
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01d_7b63

    ld h, l
    ld [hl], d
    ld h, l
    ld l, h
    ld a, c
    jr nz, @+$79

    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_01d_7b76

    ld l, a
    ld bc, $6562
    jr nz, jr_01d_7b69

    ld l, h
    ld l, a
    ld l, [hl]
    ld h, l
    inc l
    jr nz, jr_01d_7b83

    ld l, a
    jr nz, jr_01d_7b76

jr_01d_7b12:
    ld h, l
    ld h, c
    ld l, h
    ld bc, $6977

jr_01d_7b18:
    ld [hl], h
    ld l, b
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01d_7b1e:
    jr nz, jr_01d_7b93

    ld l, b
    ld l, a
    ld h, e
    ld l, e
    ld l, $03
    nop

jr_01d_7b27:
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_7b3a

    rlca
    inc l
    ld l, $2e
    ld l, $79
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld bc, $756a

jr_01d_7b3a:
    ld [hl], e
    ld [hl], h
    jr nz, @+$69

    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_7bba

    ld [hl], b
    ccf
    inc bc
    nop
    ld c, c
    jr nz, @+$6e

    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_7bc5

    ld l, b
    ld h, l
    jr nz, jr_01d_7bc2

    ld h, c
    ld [hl], h
    ld h, e

jr_01d_7b58:
    ld l, b
    inc l
    ld bc, $796d
    jr nz, jr_01d_7bd3

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l

jr_01d_7b63:
    jr nz, jr_01d_7bc6

    ld l, [hl]
    ld h, h
    jr nz, @+$76

jr_01d_7b69:
    ld l, b
    ld h, l
    ld bc, $6977
    ld l, h
    ld l, h
    jr nz, jr_01d_7be6

    ld l, a
    jr nz, jr_01d_7bdb

    ld l, c

jr_01d_7b76:
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $03
    nop
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01d_7bca

    jr nz, jr_01d_7bfa

jr_01d_7b83:
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_01d_7bee

    ld l, a
    ld [hl], d
    ld bc, $2007
    ld [hl], h
    ld l, a
    ld bc, $6564
    ld h, [hl]

jr_01d_7b93:
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01d_7be5

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $03
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $2e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01d_7c0f

    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_7c19

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld bc, $6977

jr_01d_7bba:
    ld l, h
    ld l, h
    jr nz, jr_01d_7c20

    ld h, l
    jr nz, jr_01d_7c2a

    ld l, [hl]

jr_01d_7bc2:
    db $76
    ld l, c
    ld [hl], h

jr_01d_7bc5:
    ld h, l

jr_01d_7bc6:
    ld h, h
    ld l, $03
    nop

jr_01d_7bca:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_7c32

    ld h, c
    ld l, [hl]
    jr nz, jr_01d_7c49

jr_01d_7bd3:
    ld l, c
    ld [hl], e
    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01d_7bdb:
    ld bc, $6163
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_01d_7c5b

    ld l, c

jr_01d_7be5:
    ld [hl], h

jr_01d_7be6:
    ld l, b
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b
    daa

jr_01d_7bee:
    ld [hl], e
    jr nz, jr_01d_7c5a

    ld l, [hl]
    db $76
    ld l, c
    ld [hl], h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]

jr_01d_7bfa:
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01d_7c58

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a

jr_01d_7c0f:
    ld bc, $7461
    jr nz, jr_01d_7c64

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa

jr_01d_7c19:
    ld [hl], e
    jr nz, jr_01d_7c5f

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h

jr_01d_7c20:
    ld h, l
    inc l
    ld bc, $2107
    inc bc
    nop
    ld c, c
    jr nz, jr_01d_7ca1

jr_01d_7c2a:
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_01d_7ca3

    ld l, a
    jr nz, @+$64

jr_01d_7c32:
    ld h, l
    jr nz, jr_01d_7c96

    ld l, h
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $03
    nop
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_7c4f

    rlca
    inc l
    ld l, $2e
    ld l, $79
    ld l, a
    ld [hl], l

jr_01d_7c49:
    daa
    ld [hl], d
    ld h, l
    ld bc, $756a

jr_01d_7c4f:
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_7cba

    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a

jr_01d_7c58:
    jr nz, @+$77

jr_01d_7c5a:
    ld [hl], b

jr_01d_7c5b:
    ccf
    inc bc
    nop
    ld c, c

jr_01d_7c5f:
    jr nz, jr_01d_7ccd

    ld l, a
    ld [hl], e
    ld [hl], h

jr_01d_7c64:
    jr nz, jr_01d_7cda

    ld l, b
    ld h, l
    jr nz, jr_01d_7cd7

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $6e61
    ld h, h
    jr nz, jr_01d_7ce1

    ld a, c
    jr nz, jr_01d_7ceb

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    inc l
    jr nz, jr_01d_7ce0

    ld [hl], l
    ld [hl], h
    ld bc, $7469
    jr nz, jr_01d_7cee

    ld [hl], e
    jr nz, jr_01d_7cf6

    ld l, a
    ld [hl], h
    jr nz, jr_01d_7d00

    ld l, b
    ld h, l
    jr nz, jr_01d_7cf5

    ld l, [hl]
    ld h, h
    ld hl, $0003
    ld b, c

jr_01d_7c96:
    ld [hl], e
    jr nz, jr_01d_7cfc

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l

jr_01d_7ca1:
    ld [hl], d
    inc l

jr_01d_7ca3:
    ld bc, $2c07
    jr nz, jr_01d_7cf1

    ld bc, $6873
    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$78

    ld h, c
    ld l, [hl]
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_01d_7d32

    ld l, a

jr_01d_7cba:
    ld [hl], l
    ld l, $03
    nop
    ld c, a
    ld l, b
    ld hl, $4e20
    ld l, a
    ld [hl], a
    jr nz, jr_01d_7d10

    jr nz, jr_01d_7d30

    ld h, l
    ld [hl], h
    jr nz, jr_01d_7d36

jr_01d_7ccd:
    ld [hl], h
    ld hl, $4601
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01d_7d44

    ld l, a

jr_01d_7cd7:
    ld [hl], a
    jr nz, jr_01d_7d49

jr_01d_7cda:
    ld l, [hl]
    inc l
    jr nz, jr_01d_7d55

    ld h, l
    daa

jr_01d_7ce0:
    ld [hl], d

jr_01d_7ce1:
    ld h, l
    ld bc, $6874
    ld h, l
    jr nz, jr_01d_7d4b

    ld l, b
    ld h, c
    ld l, h

jr_01d_7ceb:
    ld l, h
    ld h, l
    ld l, [hl]

jr_01d_7cee:
    ld h, a
    ld h, l
    ld [hl], d

jr_01d_7cf1:
    ld [hl], e
    ld hl, $0003

jr_01d_7cf5:
    push af

jr_01d_7cf6:
    ld a, $00
    call Call_01d_7d05
    pop af

jr_01d_7cfc:
    ret


    push af
    ld a, $01

jr_01d_7d00:
    call Call_01d_7d05
    pop af
    ret


Call_01d_7d05:
    push bc
    push de
    push hl
    ld hl, $4004
    sla e
    rl d
    add hl, de

jr_01d_7d10:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $43e6
    add hl, de
    or a
    jr nz, jr_01d_7d22

    ld de, $c600
    ld bc, $0180
    jr jr_01d_7d28

jr_01d_7d22:
    ld de, $d880
    ld bc, $0020

jr_01d_7d28:
    call MemCopy
    pop hl
    pop de
    pop bc
    ret


    rst $38

jr_01d_7d30:
    rst $38
    rst $38

jr_01d_7d32:
    rst $38
    rst $38
    rst $38
    rst $38

jr_01d_7d36:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01d_7d44:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01d_7d49:
    rst $38
    rst $38

jr_01d_7d4b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01d_7d55:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
