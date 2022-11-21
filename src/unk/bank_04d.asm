INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04d", ROMX[$4000], BANK[$4d]

    add h
    ld e, b
    jp Jump_000_0563


    ld h, l
    ld a, a
    ld h, [hl]

    db $10, $68, $91, $69

    rrca
    ld l, e
    sub c
    ld l, h
    sbc $6d

    db $52, $6f, $d4, $70

    ld b, h
    ld [hl], d

    db $da, $73

    xor b
    ld [hl], h
    ld l, a
    ld a, e
    or h
    ld a, e
    inc sp
    ld a, h
    ld e, [hl]
    ld a, h
    or d
    ld a, h
    add sp, $7c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add sp, $68
    ldh [$60], a
    ld [c], a
    ld h, d
    ldh [$60], a
    add sp, $68
    ldh [$60], a
    ld [c], a
    ld h, d
    ldh [$60], a
    adc b
    adc b
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [$9c08], sp
    sbc h
    ld [$2208], sp
    ld [hl+], a
    nop
    nop
    and a
    and [hl]
    rlca
    ld b, $27
    ld h, $07
    ld b, $af
    xor [hl]
    daa

jr_04d_4063:
    ld h, $27
    ld h, $27

jr_04d_4067:
    ld h, $f8
    jr jr_04d_4063

    jr jr_04d_4067

    ld a, [de]

jr_04d_406e:
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld a, [$f81a]
    jr @-$5f

    sbc b
    rra
    jr jr_04d_40dc

Jump_04d_407d:
    ld e, b
    rra
    jr jr_04d_40e0

    ld e, b
    ld e, a
    ld e, b
    ld a, a
    ld a, b
    ld e, a
    ld e, b
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fd
    dec c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    adc b
    adc b
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    add b
    add b

Jump_04d_40a0:
    ret


    ret


    add b
    add b
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    cp a
    or b
    ccf
    jr nc, jr_04d_40ec

    jr nc, jr_04d_406e

    or b
    rst $38
    ldh a, [$bf]
    or b
    ccf
    jr nc, @-$3f

    or b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    adc b
    adc b
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    add b
    add b
    ret z

    ret z

    add b
    add b
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ldh [$7f], a
    ld h, b

jr_04d_40dc:
    ld a, a
    ld h, b
    ld a, a
    ld h, b

jr_04d_40e0:
    rst $38
    ldh [$7f], a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    add sp, $68
    ldh [$60], a

jr_04d_40ec:
    ld [c], a
    ld h, d
    ldh [$60], a
    add sp, $68
    ldh a, [rSVBK]
    ld [c], a
    ld h, d
    ldh a, [rSVBK]
    xor a
    xor [hl]
    daa
    ld h, $27
    ld h, $27
    ld h, $af
    xor [hl]
    ld h, a
    ld h, [hl]
    cpl
    ld l, $6f
    ld l, [hl]
    ld hl, sp+$18
    db $fc
    inc e
    ld a, [$f81a]
    jr @-$02

    inc e
    ld hl, sp+$18
    db $fc
    inc e
    ld a, [$df1a]
    ret c

    ld e, a
    ld e, b
    ld a, a
    ld a, b
    rst $18
    ret c

    ld e, a
    ld e, b
    rst $18
    ret c

    rst $38
    ld hl, sp-$21
    ret c

    db $fc
    inc c
    cp $0e
    db $fc
    inc c
    cp $06
    rst $38
    rlca
    cp $06
    cp $06
    cp $06
    adc b
    adc b
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    add c
    add c
    ret


    ret


    add c
    add c
    inc hl
    inc hl
    ld bc, $bf01
    or b
    rst $38
    ldh a, [$bf]
    or b
    rst $38
    ldh [$7f], a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    adc b
    adc b
    nop
    nop
    and d
    and d
    add b
    add b
    jp z, $82ca

    add d
    and d
    and d
    add d
    add d
    rst $38
    ldh [$7f], a
    ld h, b
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

    ldh a, [rSVBK]
    ld hl, sp+$38
    ld a, [c]
    ld [hl-], a
    ldh a, [$30]
    ld hl, sp+$38
    ldh a, [$30]
    ld a, [c]
    ld [hl-], a
    ldh a, [$30]
    ld l, a
    ld l, [hl]
    rst $28
    db $ec
    ld l, a
    ld l, h
    ld l, a
    ld l, h
    ld l, a
    ld l, h
    rst $28
    db $ec
    ld l, a
    ld l, h
    rst $28
    db $ec
    db $fc
    inc c
    db $fc
    inc c
    cp $0e
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    cp $0e
    db $fc
    inc c
    adc b
    adc b
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    add hl, bc
    sbc h
    sbc h
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld bc, $bf01
    or b
    cp a
    or b
    rst $38
    ldh a, [$bf]
    or b
    cp a

jr_04d_41d1:
    or b
    cp a
    or b
    rst $38
    ldh a, [$bf]
    or b
    cp $06
    cp $06
    cp $06
    cp $06
    rst $38
    rlca
    cp $06
    rst $38
    rlca
    cp $06
    adc c
    adc c
    ld bc, $2301
    inc hl
    add c
    add c
    ret


    ret


    add c
    add c
    inc hl
    inc hl
    ld bc, $7f01
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ldh [$7f], a
    ld h, b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    adc d
    adc d
    add d
    add d
    and d
    and d
    add d
    add d
    set 1, e
    add [hl]
    add [hl]
    db $e3
    db $e3
    push bc
    push bc
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
    add b
    rst $38
    add b
    ld hl, sp+$38
    ldh a, [$30]
    ld a, [c]
    ld [hl-], a
    ldh a, [$30]
    db $f4
    inc [hl]
    ldh a, [$30]
    ld a, [$f03a]
    jr nc, jr_04d_41d1

    adc b
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [$9d08], sp
    sbc l
    ld [$2008], sp
    jr nz, @+$03

    ld bc, $ecef
    rst $08
    call z, $ecef
    rst $08
    call z, $cccf
    rst $28
    db $ec
    rst $08
    call z, $cccf
    adc c
    adc c
    ld bc, $2301
    inc hl
    add hl, bc
    add hl, bc
    sbc l
    sbc l
    add hl, bc
    add hl, bc
    inc hl
    inc hl
    ld bc, $bf01
    or b
    cp a
    or b
    cp a
    or b
    cp a
    or b
    rst $38
    ldh a, [$bf]
    or b
    cp a
    or b
    cp a
    or b
    dec bc
    dec bc
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    inc bc
    inc bc
    ld c, d
    ld c, d
    ld [bc], a
    ld [bc], a
    inc hl
    inc hl
    ld [bc], a
    ld [bc], a
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
    ret nz

    call $c5cd
    push bc
    push hl
    push hl
    db $dd
    db $dd
    call $e3cd
    db $e3
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$38
    db $f4

jr_04d_42cb:
    inc [hl]
    ld a, [$f83a]

jr_04d_42cf:
    jr @-$06

    jr jr_04d_42cb

    jr jr_04d_42cf

    ld a, [de]
    ld hl, sp+$18
    adc b
    adc b
    ld bc, $2301
    inc hl
    add hl, bc

Jump_04d_42df:
    add hl, bc
    sbc l
    sbc l
    add hl, bc
    add hl, bc
    inc hl
    inc hl
    ld bc, $df01
    call c, $cccf
    rst $18
    call c, $d8df
    sbc a
    sbc b
    rst $18
    ret c

    cp a
    cp b
    sbc a
    sbc b
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    adc e
    adc e
    inc bc
    inc bc
    inc hl
    inc hl
    dec bc
    dec bc
    sbc a
    sbc a
    dec bc
    dec bc
    inc hl
    inc hl
    inc bc
    inc bc
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ldh [$7f], a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    daa
    daa
    inc e
    inc e
    ld c, b
    ld c, b
    add c
    add c
    rst $38
    rst $38
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
    add b
    rst $38
    nop
    adc c
    adc c
    ld bc, $2101
    ld hl, $0b0b
    sbc l
    sbc l
    dec bc
    dec bc
    inc hl
    inc hl
    rlca
    rlca
    sbc a
    sbc b
    sbc a
    sbc b
    cp a
    cp b
    sbc a
    sbc b
    sbc a
    sbc b
    sbc a
    sbc b
    cp a
    cp b
    sbc a
    sbc b
    adc c
    adc c
    ld bc, $2101
    ld hl, $0b0b
    sbc l
    sbc l
    dec bc
    dec bc
    inc hl
    inc hl
    inc bc
    inc bc
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06

jr_04d_4392:
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    adc e
    adc e
    rlca
    rlca
    daa
    daa
    ld c, $0e
    sbc h
    sbc h
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$7f], a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    adc b
    adc b
    add b
    add b
    and d
    and d
    adc b
    adc b
    sbc h
    sbc h
    adc b
    adc b
    and d
    and d
    add h
    add h
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    adc e
    adc e
    inc bc
    inc bc
    inc hl
    inc hl
    dec bc
    dec bc
    sbc a
    sbc a
    dec bc
    dec bc
    daa
    daa
    rlca
    rlca
    sbc a
    sbc b
    sbc a
    sbc b
    cp a
    cp b
    sbc a
    sbc b
    rra

jr_04d_43f1:
    jr jr_04d_4392

    sbc b
    ccf

Jump_04d_43f5:
    jr c, jr_04d_4416

jr_04d_43f7:
    jr jr_04d_43f1

    jr jr_04d_43f7

    inc e
    ld a, [$fc1a]
    inc e
    cp $1e
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $8f8f
    rlca
    rlca
    cpl
    cpl
    ld e, $1e
    add b
    add b
    adc c
    adc c
    rst $38
    rst $38

jr_04d_4416:
    rst $38
    rst $38
    rra
    jr @+$41

    jr c, jr_04d_443c

    jr @+$41

    jr c, jr_04d_44a0

    ld a, b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    sub e
    sub d
    adc e
    adc d
    rst $08
    adc $9b
    sbc d
    cp e
    cp d
    rst $18
    sbc $8b
    adc d
    rst $08
    ld c, h
    add h
    add h
    ret


    ret


jr_04d_443c:
    add h
    add h
    call $dd4d
    ld e, l
    call $e54d
    ld h, l

jr_04d_4446:
    push bc
    ld b, l
    rst $38
    add b

jr_04d_444a:
    rst $38
    add b
    rst $38
    add b

jr_04d_444e:
    rst $38
    nop

jr_04d_4450:
    rst $38
    nop
    rst $38
    nop

jr_04d_4454:
    rst $38
    nop
    rst $38
    nop
    rst $28
    jr z, jr_04d_444a

    jr z, @+$01

    jr c, jr_04d_444e

    jr z, jr_04d_4450

    jr z, @+$01

    jr c, jr_04d_4454

    jr z, @+$01

    db $10
    rst $18
    ld e, h
    rst $08
    ld c, h
    rst $08
    ld c, h
    rst $18
    ld e, h
    rst $38
    ld a, h
    rst $18
    ld e, h
    rst $08
    ld c, h
    rst $38
    jr c, jr_04d_4446

    ld c, l
    push bc
    ld b, l
    push hl
    ld h, l
    call $dd4d
    ld e, l
    ret


    ld c, c
    db $e3
    ld h, e
    rst $38
    ld a, $43
    ld b, b
    ld b, h
    nop
    add hl, sp
    ld a, [hl-]
    nop
    ld b, c
    ld b, d
    nop
    ld b, l
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc de
    inc d
    dec d
    ld e, $1f
    jr nz, jr_04d_449e

jr_04d_449e:
    jr z, jr_04d_44c9

jr_04d_44a0:
    ld b, $07
    ld [$1110], sp
    ld [de], a
    dec de
    inc e
    dec e
    add hl, bc
    ld h, $27
    jr nc, jr_04d_44df

    ld [hl-], a
    inc b
    ld [bc], a
    dec b
    ld c, $02
    rrca
    jr jr_04d_44d0

    ld a, [de]
    jr jr_04d_44de

    dec h
    dec l
    ld l, $2f
    ld [hl], $37
    jr c, jr_04d_44c3

    ld [bc], a

jr_04d_44c3:
    inc bc
    inc c
    ld [bc], a
    dec c
    ld d, $02

jr_04d_44c9:
    rla
    ld hl, $2322
    ld a, [hl+]
    dec hl
    inc l

jr_04d_44d0:
    inc b
    dec [hl]
    inc [hl]
    dec a
    ld a, $3f
    ld bc, $0302
    inc c
    ld [bc], a
    dec c
    ld d, $02

jr_04d_44de:
    rla

jr_04d_44df:
    ld hl, $2322
    ld a, [hl+]
    dec hl
    inc l
    inc b
    inc sp
    inc [hl]
    inc b
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld l, d
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    ld c, d
    ld a, [hl]
    ld h, d
    ld e, [hl]
    ld b, d
    ld a, [hl]
    jp hl


    sbc a
    ret nz

    cp a
    ld [c], a
    cp a
    ret z

    cp a
    db $fc
    sbc a
    ret z

    cp a
    ld [c], a
    cp a
    ret nz

    cp a
    adc [hl]
    adc [hl]
    sub c
    sbc a
    sub e
    sbc a
    sbc c
    sub a
    sbc h
    sub a
    sbc b
    sub a
    sbc d
    sub a
    ld e, b
    rst $10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [$00ff], sp
    rst $38
    ld [hl+], a
    rst $38
    ld [$9cff], sp
    rst $38
    ld [$22ff], sp
    rst $38
    nop
    rst $38
    adc c
    rst $38
    ld bc, $21ff
    rst $38
    add hl, bc
    rst $38
    sbc l
    rst $38
    dec bc
    rst $38
    ld hl, $03ff
    rst $38
    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $ff88


    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [$9cff], sp
    rst $38
    ld [$22ff], sp
    rst $38
    nop
    rst $38
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [$e0], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$c8], a
    rst $30
    ret c

    rst $20
    ld a, [c]
    rst $28
    ret c

    rst $20
    call c, $d8ef
    rst $20
    ld a, [c]
    rst $28
    ret nc

    rst $28
    ld c, e
    ld a, a
    ld b, e
    ld a, a
    ld h, e
    ld a, a
    dec hl
    ccf
    ccf
    ccf
    add hl, hl
    ccf
    inc de
    rra
    ld de, $c81f
    cp a
    ret nz

    cp a
    ld [c], a
    cp a
    ret z

    cp a
    call c, Call_04d_48bf
    cp a
    ld [c], a
    ccf
    ld b, b
    cp a
    ret c

    rst $18
    ld h, b
    rst $38
    ld [hl], d
    rst $38
    ld l, c
    rst $38
    db $fc
    rst $38
    ld l, c
    rst $38
    ld h, e
    rst $38
    ld h, c
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $8801
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [$9cff], sp
    rst $38
    ld [$22ff], sp
    rst $38
    add b
    rst $38
    adc e
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    dec bc
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    pop hl
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    pop hl
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    ret c

    rst $28
    ret nc

    rst $28
    ld a, [c]
    rst $28
    ret c

    rst $28
    call c, $d8ff
    rst $28
    ld [c], a
    rst $38
    add b
    rst $38
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $05
    ld b, $07
    ld b, $05
    ld b, $c9
    rst $08
    and l
    ld h, a
    and e
    ld h, e
    ld de, $91f1
    pop af
    ld de, $31f1
    pop af
    ld de, $88f1
    ld a, a
    add b
    ld a, a
    and d
    ld a, a
    adc b
    ld a, a
    sbc h
    ld a, a
    adc b
    ld a, a
    and d
    ld a, a
    add b
    ld a, a
    jp hl


    rst $38
    ld h, e
    rst $38
    ld h, c
    rst $38
    ld l, d
    cp $de
    cp $4a
    cp $64
    db $fc
    ld b, h
    db $fc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    adc b
    rst $38
    add b
    rst $38
    and d
    rst $38
    adc b
    rst $38
    call c, $c8ff
    rst $38
    ld [c], a
    rst $38
    ret nz

    rst $38
    adc d
    rst $38
    inc bc
    rst $38
    ld [hl+], a
    rst $38
    ld a, [bc]
    rst $38
    sbc [hl]
    rst $38
    ld a, [bc]
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $e3c3


    db $e3
    adc b
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    adc b
    rst $38
    inc e
    rst $38
    adc b
    rst $38
    and d
    rst $38
    add b
    rst $38
    pop hl
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    pop hl
    pop hl
    ld h, c
    pop hl
    db $e3
    db $e3
    db $e3
    db $e3
    adc b
    rst $38
    add b
    rst $38
    and d
    rst $38
    adc b
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    and d
    rst $38
    add b
    rst $38
    adc d
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld a, [bc]
    rst $38
    sbc h
    rst $38
    ld a, [bc]
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh [$e0], a
    ldh [$60], a
    ldh [$60], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rTMA], a
    dec b
    rlca
    inc b
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    ld b, $05
    sub d
    di
    ld [de], a
    di
    ld [hl-], a
    di
    ld a, [bc]
    ei
    sbc d
    ei
    ld a, [bc]
    ei
    ld a, [hl+]
    ei
    ld a, [bc]
    ei
    adc b
    ld a, a
    nop
    rst $38
    and d
    ld a, a
    ld [$9cff], sp
    rst $38
    ld [$22ff], sp
    rst $38
    nop
    rst $38
    xor b
    ld hl, sp+$31
    pop af
    ld [hl+], a
    db $e3
    inc hl
    ld [c], a
    and l
    and $27
    db $e4
    dec h
    and $26
    push hl
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    jr nz, @-$1e

    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$c8]
    rst $38
    ldh [rIE], a
    ld h, d
    ld a, a
    ld l, b
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld [hl], d
    ld a, a
    jr c, @+$41

    adc d
    rst $38
    ld bc, $23ff
    rst $38
    add hl, bc
    rst $38
    sbc l
    rst $38
    add hl, bc
    rst $38
    inc hl
    rst $38
    ld bc, $e3ff
    db $e3
    ld h, e
    db $e3
    ld h, e
    db $e3
    ld [hl], e
    di
    di
    di
    ld sp, $b1f1
    pop af
    cp c
    ld sp, hl
    adc b
    rst $38
    add b
    rst $38
    and d
    rst $38
    ret z

    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    and d
    rst $38
    ret nz

    rst $38
    adc b
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    add hl, bc
    rst $38
    sbc h
    rst $38
    ld [$22ff], sp
    rst $38
    ld bc, $e3ff
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    jp $c3c3


    jp $ff88


    add b
    rst $38
    and d

Jump_04d_47c3:
    rst $38
    ld [$9cff], sp
    rst $38
    ld [$22ff], sp
    rst $38
    nop
    rst $38
    adc d
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld a, [bc]
    rst $38
    sbc [hl]
    rst $38
    ld a, [bc]
    rst $38
    inc h
    rst $38
    dec b
    rst $38
    ldh [$e0], a

Call_04d_47e0:
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, $05
    inc b
    rlca
    ld b, $05
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld b, $07
    inc b
    rlca
    adc d

Jump_04d_47ff:
    ei
    ld a, [bc]
    ei
    ld a, [hl+]
    ei
    ld a, [bc]
    ei
    sbc d
    ei
    ld a, [bc]
    ei
    ld a, [hl+]
    ei
    ld a, [bc]
    ei
    and [hl]
    push hl
    ld h, $e5
    ld h, $e7
    ld h, $e5
    and [hl]
    push hl
    ld h, $e5
    ld a, [hl+]
    rst $28
    inc l
    db $eb
    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$38]
    ccf
    inc e
    rra
    inc e
    rra
    ld c, $0f
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $8801
    rst $38
    ld bc, $22ff
    rst $38
    ld [$9cff], sp
    rst $38
    ld [$a2ff], sp
    rst $38
    add b
    rst $38
    sbc c
    ld sp, hl
    db $dd
    db $fd
    rst $08
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    dec sp
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    ld [c], a
    rst $38
    ret z

    rst $38
    call c, $c8ff
    rst $38
    jp nz, $e0ff

    rst $38
    adc b
    rst $38
    ld bc, $23ff
    rst $38
    add hl, bc
    rst $38
    sbc l
    rst $38
    add hl, bc
    rst $38
    ld hl, $03ff
    rst $38
    jp $c7c3


    rst $00
    rst $00
    rst $00
    add $c7
    rst $00
    rst $00
    add $c7
    adc $cf
    adc [hl]
    adc a
    adc l
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    dec b
    rst $38
    sbc c
    rst $38
    dec bc
    rst $38
    dec hl
    rst $38
    inc de
    rst $38
    inc b
    rlca
    inc b
    rlca
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    sbc d
    ei
    ld a, [bc]

jr_04d_48b1:
    ei
    ld a, [hl-]
    ei
    ld a, [de]

jr_04d_48b5:
    ei
    sbc c
    ld sp, hl
    add hl, de
    ld sp, hl
    add hl, sp
    ld sp, hl
    add hl, de
    ld sp, hl
    xor h

Call_04d_48bf:
    db $eb
    jr z, jr_04d_48b1

    ld l, $eb
    jr z, jr_04d_48b5

    call z, $48cf
    rst $08
    ld c, d
    rst $08
    ld c, b
    rst $08
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    rst $38
    ldh [rIE], a
    ld [hl], d
    ld a, a
    inc a
    ccf
    ld e, $1f
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    add h
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [$9cff], sp
    rst $38
    ld [$a2ff], sp
    rst $38
    ldh [rIE], a
    ret z

    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    add sp, -$01
    db $fc
    rst $38
    add sp, -$01
    ld [c], a
    rst $38
    ldh [rIE], a
    adc c
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    dec bc
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    adc [hl]
    adc a
    adc [hl]
    adc a
    sbc h
    sbc a
    sbc h
    sbc a
    sbc h
    sbc a
    cp b
    cp a
    cp d
    cp a
    ldh a, [rIE]
    adc b
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [$9cff], sp
    rst $38
    ld [$22ff], sp
    rst $38
    ld bc, $97ff
    rst $38
    ld h, $fe
    ld h, $fe
    ld c, h
    db $fc
    ld c, h
    db $fc
    sbc h
    db $fc
    sbc b
    ld hl, sp+$30
    ldh a, [rSC]
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc l
    db $fd
    dec d
    db $fd
    cpl
    rst $38
    dec bc
    rst $38
    add l
    rst $38
    and e
    rst $38
    ld b, c
    ld a, a
    add hl, hl
    ccf
    ret z

    rst $08
    ld c, b
    rst $08
    ld c, d
    rst $08
    ld c, b
    rst $08
    ret z

    rst $08
    ld d, b
    rst $18
    ld e, d
    rst $18
    ld d, b
    rst $18
    sub b
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [$d0]
    ldh a, [$50]
    ldh a, [$a0]
    ldh [$a0], a
    ldh [$f8], a
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, -$01
    ldh [rIE], a
    ld a, [c]
    rst $38
    add sp, -$01
    db $fc
    rst $38
    ld l, b
    ld a, a
    ld [hl], d
    ld a, a
    ld h, b
    ld a, a
    adc e
    rst $38
    inc bc
    rst $38
    daa
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    dec bc
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    jp nz, $88ff

    rst $38
    inc e
    rst $38
    ld [$22ff], sp
    rst $38
    ld bc, $89ff
    rst $38

jr_04d_49d0:
    ld [bc], a
    rst $38
    ld h, $ff
    inc c
    rst $38
    sbc c
    rst $38
    inc sp
    rst $38
    ld h, a
    rst $38
    adc $fe
    jr nc, jr_04d_49d0

    ld h, b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld de, $0d1f
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    adc b
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    and d
    rst $38
    add b
    rst $38
    add sp, -$01
    ld b, c
    rst $38
    ld h, l
    rst $38
    add d
    rst $38
    cp l
    rst $38
    or d
    cp $8c
    db $fc
    ldh a, [$f0]
    and b
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld a, a
    ld [hl], b
    ld a, a
    ld h, d
    ld a, a
    ld l, b
    ld a, a
    ld a, h
    ld a, a
    ld l, b
    ld a, a
    ld [hl], d
    ld a, a
    ld [hl], b
    ld a, a
    adc e
    rst $38
    rlca
    rst $38
    inc hl
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    dec bc
    rst $38
    daa
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld h, c
    rst $38
    add a
    rst $38
    ccf
    rst $38

jr_04d_4a5a:
    db $fc
    db $fc
    ld hl, sp-$08
    sbc h
    db $fc
    jr c, jr_04d_4a5a

    ld [hl], b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld a, $3e
    ld l, e
    ld [hl], a
    ld e, l
    ld h, e
    jp hl


    rst $10
    pop af
    rst $08
    db $e3
    rst $18
    pop af
    rst $08
    ld l, a
    ld a, [hl]
    ld a, h
    ld a, a
    ccf
    ld a, $0d
    ld c, $8d
    adc [hl]
    adc l
    adc [hl]
    adc a
    adc [hl]
    adc l
    adc [hl]
    adc b
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    add b
    rst $38
    ret


    rst $38
    add b
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    cp b
    rst $38
    jr @+$01

    ld a, [hl-]
    rst $38
    sbc b
    rst $38
    reti


    rst $38
    sbc b
    rst $38
    ld a, [hl-]
    rst $38
    add hl, de
    rst $38
    ld hl, sp-$08
    ld e, b
    ld hl, sp+$58
    ld hl, sp-$68
    ld hl, sp-$10
    ldh a, [$b0]
    ldh a, [$b0]
    ldh a, [$60]
    ldh [rTMA], a
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    rlca
    ld b, $07
    rlca
    rlca
    ld b, $07
    adc b
    ld a, a
    add b
    ld a, a
    ld [hl+], a
    rst $38
    adc b
    ld a, a
    sbc h
    rst $38
    ld [$22ff], sp
    rst $38
    nop
    rst $38
    sbc b
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp+$18
    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp+$18
    ld hl, sp-$28
    rst $28
    ret nc

    rst $28
    jp nz, $d8ff

    rst $28
    call c, $c8ff
    rst $38
    ld [c], a
    rst $38
    ret nz

    rst $38
    adc c
    rst $38
    ld bc, $23ff
    rst $38
    add hl, bc
    rst $38
    sbc l
    rst $38
    add hl, bc
    rst $38
    inc hl
    rst $38
    ld bc, $86ff
    add a
    add a
    add a
    add [hl]
    add a
    add [hl]
    add a
    add [hl]
    add a
    add [hl]
    add a
    add [hl]
    add a
    adc h
    adc a
    ret z

    cp a
    ldh [$1f], a
    ld h, d
    cp a
    ret z

    ccf
    call c, $883f
    ld a, a
    ld [c], a
    ccf
    add b
    ld a, a
    or b
    ldh a, [rSVBK]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$b0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [rSB]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    xor b
    rst $18
    pop hl
    rst $18
    jp nz, $e0bf

    sbc a
    ret


    cp a
    ret nz

    cp a
    ld [c], a
    cp a
    ret nz

    cp a
    adc l
    adc [hl]
    call $cfce
    adc $cd
    adc $cf
    call $cccf
    adc $cd
    adc $cd
    sbc c
    rst $38
    ld a, [de]
    rst $38
    ld a, $ff
    sbc l
    rst $38
    db $db
    rst $38
    sbc a
    rst $38
    ld a, $fe
    inc e
    db $fc
    ld h, b
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    sbc h
    sbc h
    ld a, $3e
    ld l, e
    ld [hl], a
    ld d, l
    ld l, e
    rlca
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    sbc b
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp+$18
    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp-$38
    rst $38
    ret nz

    rst $38
    ld [c], a
    rst $38
    ret z

    rst $38
    call c, $c8ff
    rst $38
    ld [c], a
    rst $38
    ret nz

    rst $38
    adc [hl]
    adc a
    adc l
    adc [hl]
    adc a
    adc [hl]
    adc l
    adc [hl]
    adc l
    adc [hl]
    adc l
    adc [hl]
    adc a
    adc [hl]
    adc l
    adc [hl]
    adc b
    ld a, a
    add b
    ld a, a
    and d
    ld a, a
    ld [$9cff], sp
    ld a, a
    ld [$a2ff], sp
    ld a, a
    nop
    rst $38
    or b
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$b0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$c8]
    cp a
    ret nz

    cp a
    ld [c], a
    cp a
    ret nz

    cp a
    ret


    cp a
    ret nz

    cp a
    ld [c], a
    cp a
    ret nz

    cp a
    adc $cd
    adc $cd
    adc $cd
    adc $cd
    rst $08
    call $cfcc
    adc $cd
    adc $cd
    sbc b
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp-$68
    ld hl, sp-$28
    ld hl, sp-$67
    ld sp, hl
    add hl, sp
    ld sp, hl
    add hl, de
    ld sp, hl
    reti


    rst $28
    pop de
    rst $28
    db $e3
    rst $18
    pop hl
    rst $18
    jp hl


    rst $18
    and b
    rst $18
    pop hl
    rst $18
    and b
    rst $18
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    rlca
    ld b, $07
    rlca
    rlca
    cp b
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp+$18
    ld hl, sp-$44
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    adc l
    adc [hl]
    adc l
    adc [hl]
    adc a
    adc [hl]
    adc l
    adc [hl]
    adc h
    adc a
    adc l
    adc [hl]
    adc [hl]
    adc a
    adc h
    adc a
    adc b
    rst $38
    ret nz

    cp a
    and d
    rst $38
    add b
    rst $38
    ret


    rst $38
    add b
    rst $38
    and d
    rst $38
    add b
    rst $38
    call z, $cccf
    rst $08
    adc $cf
    call z, $cdcf
    rst $08
    call z, $cecf
    rst $08
    call z, $99cf
    ld sp, hl
    add hl, de
    ld sp, hl
    add hl, sp
    ld sp, hl
    sbc c
    ld sp, hl
    reti


    ld sp, hl
    sbc c
    ld sp, hl
    add hl, sp
    ld sp, hl
    add hl, de
    ld sp, hl
    xor b
    rst $18
    ret nz

    cp a
    ld [c], a
    cp a
    ret nz

    cp a
    ret


    cp a
    ret nz

    cp a
    ld [c], a
    cp a
    ld b, b
    cp a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $bc01
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    cp [hl]
    cp $3e
    cp $36
    cp $36
    cp $68
    ld a, a
    ld h, b
    ld a, a
    ld h, d
    ld a, a
    ld l, b
    ld a, a
    ld a, h
    ld a, a
    ld l, b
    ld a, a
    ld h, d
    ld a, a
    ld h, b
    ld a, a
    inc c
    rrca
    inc c
    rrca
    ld c, $0f
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    ld e, $1f
    jr jr_04d_4d1d

Jump_04d_4cfe:
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    rst $38
    ret nz

    rst $38
    and d
    rst $38
    ret nz

    rst $38
    ret


    rst $38
    ret nz

    rst $38
    ld [c], a
    rst $38
    ret nz

jr_04d_4d1d:
    rst $38
    call z, $cccf
    rst $08
    adc $cf
    db $ec
    rst $28
    db $ed
    rst $28
    ld l, [hl]
    rst $28
    db $ec
    rst $28
    ld h, [hl]
    rst $20
    sbc e
    ei
    dec de
    ei
    dec sp
    ei
    sbc e
    ei
    db $db
    ei
    cp e
    ei
    inc de
    di
    inc sp
    di
    ret z

    cp a
    nop
    rst $38
    ld h, d
    cp a
    add b
    rst $38
    ret


    rst $38
    add b
    rst $38
    ld [hl+], a
    rst $38
    ld bc, $c8ff
    rst $38
    ret nz

    rst $38
    jp nz, $c8ff

    rst $38
    db $fc
    rst $38
    ld l, b
    ld a, a
    ld [hl], d
    ld a, a
    jr nc, @+$41

    sub [hl]
    cp $16
    cp $37
    rst $38
    inc de
    rst $38
    sbc e
    rst $38
    add hl, de
    rst $38
    dec l
    rst $38
    inc c
    rst $38
    ld l, b
    ld a, a
    ld h, b
    ld a, a
    ld h, d
    ld a, a
    ld l, b
    ld a, a
    db $fc
    rst $38
    add sp, -$01
    ld [c], a
    rst $38
    ldh a, [rIE]
    adc e
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    dec bc
    rst $38
    ld h, $fe
    ld b, $fe
    inc e
    rra
    jr jr_04d_4db1

    ld a, [de]
    rra
    jr jr_04d_4db5

    inc e
    rra
    jr jr_04d_4db9

    ld a, [de]
    rra
    jr c, @+$41

    adc b
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [$9cff], sp
    rst $38
    ld a, [bc]
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    or b
    ldh a, [rSVBK]

jr_04d_4db1:
    ldh a, [$30]
    ldh a, [rSVBK]

jr_04d_4db5:
    ldh a, [$60]
    ldh [$60], a

jr_04d_4db9:
    ldh [$60], a
    ldh [$60], a
    ldh [rBCPS], a
    ld a, a
    ld h, b
    ld a, a
    ld [hl], d
    ld a, a
    ld h, b
    ld a, a
    ld sp, $383f
    ccf
    ld [hl-], a
    ccf
    jr jr_04d_4ded

    and $e7
    and $e7
    or [hl]
    rst $30
    or [hl]
    rst $30
    or a
    rst $30
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld l, $ff
    or e
    di
    inc sp
    di
    inc sp
    di
    or e
    di
    di
    di
    or e
    di
    inc sp
    di
    inc sp

jr_04d_4ded:
    di
    adc b
    rst $38
    ld bc, $23ff
    rst $38
    add c
    rst $38
    ret


    rst $38
    add l
    rst $38
    ld hl, $05ff
    rst $38
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    jr c, jr_04d_4e4f

    jr jr_04d_4e31

    ld e, $1f
    inc c
    rrca
    ld c, $0f
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $8601
    rst $38
    rlca
    rst $38
    inc hl
    rst $38
    add hl, bc
    rst $38
    sbc h
    rst $38
    ld [$a2ff], sp
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ld [hl], b

jr_04d_4e31:
    rst $38
    or d
    rst $38
    cp b
    rst $38
    cp h
    rst $38
    jr c, @+$01

    ld [hl-], a
    rst $38
    jr nc, @+$01

    adc [hl]
    cp $06
    cp $26
    cp $0e
    cp $9e
    cp $0e
    cp $26
    cp $06
    cp $30

jr_04d_4e4f:
    ccf
    jr c, @+$41

    ld [hl-], a
    ccf
    jr c, @+$41

    inc a
    ccf
    ld a, b
    ld a, a
    ld h, d
    ld a, a
    ldh [rIE], a
    adc d
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    inc b
    rst $38
    sub l
    rst $38
    dec c
    rst $38
    add hl, hl
    rst $38
    dec bc
    rst $38
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    inc e
    rra
    inc c
    rrca
    ld c, $0f
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    or [hl]
    rst $38
    ld d, $ff
    ld h, $ff
    ld b, $ff
    adc a
    rst $38
    add $ff
    rst $30
    rst $38
    ld a, $3f
    or e
    di
    inc sp
    di
    scf
    rst $30
    or [hl]
    rst $30
    rst $30
    rst $30
    cp [hl]
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    dec c
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    adc e
    rst $38
    set 7, a
    adc d
    cp $36
    cp $16
    cp $e8
    rst $38
    ld [hl], b
    ld a, a
    inc a
    ccf
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    rst $38
    jr nc, @+$01

    ld [hl-], a
    rst $38
    cp b
    rst $38
    db $fc
    rst $38
    ld a, b
    ld a, a
    ld a, [de]
    rra
    jr jr_04d_4efd

    adc a
    rst $38
    rlca
    rst $38
    daa
    rst $38
    ld c, $ff
    sbc h
    rst $38
    inc c
    rst $38
    ld l, $ff
    inc c
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    and d
    rst $38
    ld [$9cff], sp
    rst $38
    ld [$21ff], sp
    rst $38
    inc bc

jr_04d_4efd:
    rst $38
    sbc e
    rst $38
    inc de
    rst $38
    ld [hl], $fe
    ld h, $fe
    ld l, h
    db $fc
    call c, $98fc
    ld hl, sp+$38
    ld hl, sp+$1f
    rra
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    db $e4
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    rst $28
    rst $38
    xor $ff
    pop hl
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $ac
    db $fc
    ld l, h
    db $fc
    ret c

    ld hl, sp-$50
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    jr jr_04d_4f5f

    jr jr_04d_4f61

    ld a, [de]
    rra
    jr jr_04d_4f65

    inc e
    rra
    jr @+$21

    ld a, [de]
    rra
    jr @+$21

    adc h
    rst $38
    inc c
    rst $38
    ld l, $ff
    dec c
    rst $38
    sbc l
    rst $38
    inc c
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    add [hl]

jr_04d_4f5f:
    rst $38
    inc c

jr_04d_4f61:
    rst $38
    add hl, sp
    rst $38
    di

jr_04d_4f65:
    rst $38
    rst $08
    rst $38
    ld a, $fe
    ld hl, sp-$08
    ldh [$e0], a
    ld [hl], b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $2001
    jr nz, jr_04d_5001

    ld d, b
    db $f4
    call nc, $fede
    sbc $fa
    jp c, $fafe

    cp $da
    cp $00
    nop
    nop
    nop
    ld b, $06
    dec bc
    dec c
    dec c
    dec bc
    dec c
    dec bc
    add hl, bc
    rrca
    dec c
    dec bc
    jr c, jr_04d_4fe8

    ld d, h
    ld l, h
    ld h, h
    ld e, h
    ld [hl], h
    ld e, h
    ld a, h
    ld e, h
    ld [hl], h
    ld e, h
    ld h, h
    ld e, h
    and d
    sbc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    or b
    ret nc

    inc e
    dec de
    ld a, [de]
    dec e
    ld [hl], $3b
    jr c, jr_04d_5015

    inc a
    ccf
    jr c, jr_04d_5019

    ld [hl-], a
    ccf
    jr nc, jr_04d_501d

    adc [hl]
    cp $06
    cp $23
    rst $38
    rrca
    rst $38
    sbc a
    rst $38

jr_04d_4fe8:
    dec bc
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    inc a
    dec sp
    inc [hl]
    dec sp
    ld [hl], $3b
    inc a
    dec sp
    inc a
    dec sp
    inc a
    dec sp
    ld [hl], $3b
    inc [hl]
    dec sp
    adc a

Jump_04d_4fff:
    rst $38
    rlca

jr_04d_5001:
    rst $38
    daa
    rst $38
    ld c, $fe
    sbc [hl]
    cp $0e
    cp $26
    cp $06
    cp $c3
    jp $8787


    ld c, $0f
    dec c

jr_04d_5015:
    ld c, $1f
    inc e
    dec de

jr_04d_5019:
    inc e
    ld e, $1d

jr_04d_501c:
    dec de

jr_04d_501d:
    inc e
    ldh [$e0], a
    ldh a, [$f0]
    jr c, jr_04d_501c

    sbc b
    ld a, b
    sbc h
    db $fc
    inc c
    db $fc
    inc l
    db $fc
    inc c
    db $fc
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    jp c, Jump_04d_4cfe

    ld a, h
    ld l, h
    ld a, h
    ld c, b
    ld a, b
    ld e, c
    ld a, c
    ld c, e
    ld a, d
    ld l, d
    ld a, e
    ld c, e
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add hl, bc
    rrca

Jump_04d_5060:
    add hl, bc
    rrca
    dec c
    rrca
    ld [$090f], sp
    rrca
    add hl, bc
    rrca
    inc b
    rlca
    inc b
    rlca
    or d
    sbc $c3
    cp a
    rst $20
    sbc a
    db $d3
    cp a
    ei
    cp a

jr_04d_5078:
    db $d3
    cp a
    rst $00
    cp a
    jp $d0bf


    or b
    ld d, b
    or b
    ret nc

    ld [hl], b
    sub b
    ld [hl], b
    jr nc, jr_04d_5078

    db $10
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [$38]
    ccf
    jr nc, jr_04d_50d1

    ld [hl-], a
    ccf
    jr c, jr_04d_50d5

    inc a
    ccf
    jr c, @+$41

    ld [hl-], a
    ccf
    jr nc, jr_04d_50dd

    inc a
    dec sp
    inc [hl]
    dec sp
    ld [hl], $3b
    inc a
    dec sp
    inc a
    ccf
    inc a
    dec sp
    ld [hl-], a
    ccf
    jr nc, jr_04d_50ed

    ld a, [de]
    dec e
    ld e, $19
    ld a, $39
    inc a
    dec sp
    ld [hl], $39
    inc a
    dec sp
    ld [hl], $3b
    inc [hl]
    dec sp
    add h
    db $fc
    inc c
    db $fc
    ld h, $fe
    ld c, $fe
    sbc [hl]
    cp $0e
    cp $26
    cp $06
    cp $07
    rlca
    dec b

jr_04d_50d1:
    rlca
    inc b
    rlca
    ld [bc], a

jr_04d_50d5:
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop

jr_04d_50dd:
    nop
    ld e, d
    ld a, e
    ld c, d
    ld a, e
    db $ec
    rst $38
    call Call_04d_59ff
    rst $38
    ld c, d
    cp $ea
    cp $4c

jr_04d_50ed:
    ld a, h
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    add hl, sp
    add hl, sp
    ld d, h
    ld l, h
    ld [hl], h
    ld e, h
    ld a, h
    ld a, h
    ld [hl], l
    ld e, l
    ld h, l
    ld e, l
    ld b, l
    ld a, l
    db $d3
    cp a

jr_04d_5110:
    jp nz, $c7bf

    cp a
    jp nc, $fbbf

    cp a
    ld d, c
    cp a
    add l
    ld a, a
    pop bc
    ccf
    jr nc, jr_04d_5110

    db $10
    ldh a, [$60]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    jr c, jr_04d_5166

    adc e
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    dec bc
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    inc a
    dec sp
    ld [hl], h
    ld a, e
    ld h, [hl]
    ld a, e
    ld a, b
    ld [hl], a
    ld l, h
    ld [hl], a
    ld l, h
    ld [hl], e
    ld l, d
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, l
    ld e, l
    ld c, l
    ld a, l
    ld b, l
    ld a, l
    ld d, l
    ld a, l
    ld a, l
    ld a, l
    ld d, l
    ld a, l
    ld b, l
    ld a, l
    ld b, l
    ld a, l
    sub c
    ld a, a
    add c
    ld a, a
    ld b, l
    rst $38
    sub c
    ld a, a

jr_04d_5166:
    add hl, sp
    rst $38
    ld de, $45ff
    rst $38
    ld bc, $54ff
    ld l, h
    ld h, h
    ld e, h
    ld h, h
    ld e, h
    ld [hl], h
    ld e, h
    ld e, h
    ld a, h
    ld [hl], h
    ld e, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    jr c, jr_04d_51bf

    jr nc, jr_04d_51c1

    ld a, [hl-]
    ccf
    jr @+$21

    inc e
    rra
    jr jr_04d_51a9

    ld a, [de]
    rra
    jr jr_04d_51ad

    adc e
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    dec bc
    rst $38
    daa
    rst $38
    rlca
    rst $38
    jr c, jr_04d_51df

    jr nc, @+$41

    ld [hl-], a
    ccf
    jr c, jr_04d_51e5

    inc a
    ccf
    cp b

jr_04d_51a9:
    cp a
    sbc d
    sbc a
    sbc b

jr_04d_51ad:
    sbc a
    adc [hl]
    cp $06
    cp $26
    cp $0e
    cp $9e
    cp $0e
    cp $2c
    db $fc
    inc c
    db $fc
    ld h, b

jr_04d_51bf:
    ld a, a
    ld l, b

jr_04d_51c1:
    ld [hl], a
    ld h, d
    ld a, a
    ld l, b
    ld a, a
    ld a, h
    ld a, a
    ld l, b
    ld a, a
    ld h, d
    ld a, a
    ld h, b
    ld a, a
    ld d, l
    ld a, l
    ld b, l
    ld a, l
    ld b, l
    ld a, l
    ld d, h
    ld a, h
    ld a, [hl-]
    ld a, $32
    ld a, $25
    ccf
    ld de, $111f

jr_04d_51df:
    rst $38
    ld bc, $45ff
    rst $38
    sub d

jr_04d_51e5:
    cp $ba
    cp $92
    cp $c6
    cp $82
    cp $54
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld d, h
    ld a, h
    cp h
    db $fc
    sub h
    db $fc
    call nz, $88fc
    ld hl, sp+$18
    rra
    inc c
    rrca
    ld c, $0f
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    ld b, $07
    ld b, $07
    adc l
    rst $38
    dec b
    rst $38
    daa
    rst $38
    dec c
    rst $38
    sbc l
    rst $38
    ld a, [bc]
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    sbc b
    sbc a
    sbc b
    sbc a
    sbc d
    sbc a
    sbc b
    sbc a
    call c, $d8df
    rst $18
    jp c, $d8df

    rst $18
    adc h
    db $fc
    inc c
    db $fc
    inc l
    db $fc
    inc c
    db $fc
    sbc h
    db $fc
    inc c
    db $fc
    inc l
    db $fc
    inc c
    db $fc
    adc [hl]
    cp $06
    cp $26
    cp $0e
    cp $9e
    cp $0e
    cp $26
    cp $0c
    db $fc
    inc de
    rra
    ld [$0a0f], sp
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    sub d
    cp $82
    cp $c7
    rst $38
    sub d
    rst $38
    cp d
    rst $38
    sub d
    rst $38
    add $ff
    add e
    rst $38
    xor b
    ld hl, sp-$78
    ld hl, sp+$48
    ld hl, sp+$10
    ldh a, [$50]
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld b, $07
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    adc d
    rst $38
    ld [bc], a
    rst $38
    ld hl, $09ff
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    jp nz, $e0ff

    rst $38
    call c, Call_04d_78df
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    sbc h
    rst $38
    call z, Call_04d_6eff
    rst $38
    inc l
    rst $38
    adc h
    db $fc
    inc e
    db $fc
    inc l
    db $fc
    inc e
    db $fc
    sbc b
    ld hl, sp+$18
    ld hl, sp+$39
    ld sp, hl
    add hl, de
    ld sp, hl
    ld l, b
    ld a, a
    ld h, b
    ld a, a
    ld [c], a
    rst $38
    ret z

    rst $38
    call c, $c8ff
    rst $38

Jump_04d_52ca:
    and d
    rst $38
    add b
    rst $38
    adc h
    db $fc
    inc l
    db $fc
    inc l
    db $fc
    inc l
    db $fc
    ret c

    ld hl, sp+$58
    ld hl, sp+$58
    ld hl, sp+$58
    ld hl, sp+$74
    ld a, a
    jr c, jr_04d_5321

    inc e
    rra
    ld c, $0f
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    adc h
    rst $38
    inc c
    rst $38
    ld l, $ff
    inc c
    rst $38
    inc e
    rst $38
    call z, $feff
    rst $38
    inc a
    ccf
    sbc c
    ld sp, hl
    add hl, de
    ld sp, hl
    dec sp
    ei
    rra
    rst $38
    sbc [hl]
    rst $38
    inc e
    rst $38
    ld a, [hl-]
    rst $38
    jr @+$01

    adc b
    rst $38
    add b
    rst $38
    ld [hl+], a
    rst $38
    add hl, bc
    rst $38
    sbc l
    rst $38
    ld a, [bc]
    rst $38
    ld [hl+], a
    rst $38
    dec b
    rst $38
    or b
    ldh a, [$b0]

jr_04d_5321:
    ldh a, [$b0]
    ldh a, [$60]
    ldh [$60], a
    ldh [$60], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    inc c
    rrca
    inc c
    rrca
    ld c, $0f
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    ld c, $0f
    inc c
    rrca
    sbc b
    rst $38
    jr @+$01

    ld a, [hl-]
    rst $38
    dec de
    rst $38
    sbc e
    rst $38
    jr @+$01

    dec a
    rst $38
    rra
    rst $38
    adc c
    rst $38
    inc de
    rst $38
    ld h, a
    rst $38
    adc $fe
    inc e
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    xor d
    nop
    or h
    or l
    or [hl]
    cp [hl]
    cp a
    ret nz

    xor e
    xor h
    xor l
    or a
    cp b
    cp c
    pop bc
    jp nz, $c6c3

    rst $00
    ret z

    adc $cf
    ret nc

    sub $d7
    ret c

    nop
    ld bc, $0302
    inc b
    nop
    inc c
    dec c
    ld c, $0f
    dec d
    ld d, $17
    jr jr_04d_5398

jr_04d_5398:
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $30
    ld sp, $3209
    inc sp
    dec sp
    inc a
    add hl, bc
    dec a
    inc sp
    ld b, [hl]
    ld b, a
    add hl, bc
    ld c, b
    ld c, c
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld e, d
    ld l, b
    ld l, c
    nop
    ld h, l
    ld [hl], b
    ld [hl], c
    ld e, d
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld h, l
    ld a, b
    ld a, c
    ld e, d
    ld a, d
    ld a, e
    ld a, h
    add c
    add d
    add e
    ld e, d
    add h
    add l
    ld a, h
    nop
    adc l
    adc [hl]
    ld e, d
    adc a
    sub b
    sub c
    nop
    sbc c
    sbc d
    ld e, d
    sbc e
    sbc h
    nop
    nop
    nop
    and d
    ld e, d
    and e
    and h
    nop
    nop
    xor [hl]
    xor a
    or b
    add hl, bc
    or c
    or d
    or e
    nop
    nop
    cp d
    ld [de], a
    cp e
    add hl, bc
    sub l
    cp h
    cp l
    nop
    nop
    cp d
    call nz, $09ba
    sub l
    push bc
    sub l
    nop
    nop
    ret


    jp z, $09cb

    call z, $95cd
    nop
    nop
    pop de
    jp nc, $09d3

    call nc, $d57f
    nop
    nop
    reti


    jp c, $09db

    call c, $dedd
    nop
    nop
    nop
    rst $18
    ldh [$09], a
    pop hl
    ld [c], a
    db $e3
    nop
    nop
    nop
    nop
    db $e4
    add hl, bc
    push hl
    and $e7
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    add hl, bc
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld l, d
    add hl, bc
    ld l, e
    ld l, h
    add hl, bc
    ld h, c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], l
    add hl, bc
    db $76
    ld l, h
    add hl, bc
    ld h, c
    ld [hl], a
    add hl, bc
    ld l, a
    ld a, l
    ld d, c
    ld a, [hl]
    ld a, a
    add hl, bc
    ld [de], a
    add b
    add hl, bc
    ld l, a
    nop
    add [hl]

Jump_04d_5457:
    add a
    adc b
    add hl, bc
    adc c
    adc d
    adc e
    adc h
    nop
    sub d
    sub e
    sub h
    add hl, bc
    sub l
    sub [hl]
    sub a
    sbc b
    nop
    nop
    sbc l
    sbc [hl]
    add hl, bc
    sbc a
    and b
    and c
    nop
    nop
    nop
    nop
    and l
    add hl, bc
    and [hl]
    and a
    xor b
    nop
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec bc
    add hl, bc
    ld a, [bc]
    db $10
    ld de, $0812
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc d
    add hl, bc
    ld a, [bc]
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    add hl, bc
    add hl, bc
    ld e, $1f
    jr nz, jr_04d_54bb

    nop
    daa
    jr z, jr_04d_54c7

    ld a, [hl+]
    add hl, bc
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    add hl, bc
    jr c, jr_04d_54e6

    add hl, bc
    ld a, [hl-]
    rrca
    nop
    ld a, $3f
    ld b, b
    ld b, c
    add hl, bc
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop

jr_04d_54bb:
    nop
    nop
    nop
    ld c, d
    ld c, e
    add hl, bc
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop

jr_04d_54c7:
    nop
    nop
    nop
    ld d, h
    add hl, bc
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    nop
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec bc
    add hl, bc
    ld a, [bc]
    db $10
    ld de, $0812
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc d
    add hl, bc

jr_04d_54e6:
    ld a, [bc]
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    add hl, bc
    add hl, bc
    ld e, $1f
    jr nz, jr_04d_5513

    nop
    daa
    jr z, jr_04d_551f

    ld a, [hl+]
    add hl, bc
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    add hl, bc
    jr c, @+$3b

    add hl, bc
    ld a, [hl-]
    rrca
    nop
    ld a, $3f
    ld b, b
    ld b, c
    add hl, bc
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop

jr_04d_5513:
    nop
    nop
    nop
    ld c, d
    ld c, e
    add hl, bc
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop

jr_04d_551f:
    nop
    nop
    nop
    ld d, h
    add hl, bc
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    db $eb
    ld [$0055], a
    nop
    db $fc
    db $fc
    ld a, a
    ld [bc], a
    cp $01
    inc b
    xor d
    nop
    db $fc
    db $f4
    ldh [$aa], a
    ldh a, [$e0]
    adc b
    db $ec
    ldh [rNR43], a
    ld hl, sp-$18
    xor d
    db $fc
    db $e4
    xor e
    rst $38
    nop
    ld d, a
    nop
    xor a
    nop
    rst $18
    nop
    xor [hl]
    rst $38
    ld bc, $027c
    xor b
    dec b
    ret nc

    ld a, [bc]
    or b
    rst $38
    rlca
    ld [hl], b
    ld a, [bc]
    ldh a, [$0d]
    or b
    ld [hl-], a
    ld a, b
    rst $38
    call $94cc
    xor [hl]
    ld [hl], e
    ld h, e
    ld a, l
    db $fd
    rst $18
    cp $dd
    db $fd
    rst $38
    rst $38
    adc [hl]
    xor $0f
    rrca
    rst $30
    jr nc, @+$41

    ld b, b
    cp $e1
    nop
    ccf
    nop
    rrca
    db $f4
    add b
    ld a, [c]
    db $fc
    db $e4
    ld bc, $e0a0
    rlca
    nop
    ld e, a
    nop
    push af
    adc a
    db $fc
    ldh [$2f], a
    ld hl, sp-$20
    sbc [hl]
    ld bc, $017c
    cp a
    ld a, b
    rlca
    ldh a, [$0a]
    ldh a, [rIF]
    db $fc
    db $e3
    ldh [rIE], a
    rra
    ret nz

    ld a, [hl+]
    add b
    ld a, a
    ld bc, $03aa
    rst $38
    ld [hl], h
    rlca
    xor b
    rrca
    ret nc

    ld e, $a0
    inc a
    rst $38
    ld b, e
    ld a, b
    add d
    ldh a, [$0d]
    ldh [rSC], a
    call z, Call_000_1dff
    sbc h
    ld [de], a
    or e
    db $ed
    push hl
    ld d, [hl]
    ld e, h
    rlca
    cp a
    sbc l
    db $dd
    add b
    ldh a, [$6d]
    ldh [$fe], a
    db $e3
    ei
    db $e3
    add b
    rst $30
    rst $38
    nop
    add b
    dec d
    ret nz

jr_04d_55e2:
    nop
    ldh [rTIMA], a
    ld [hl], b
    rst $38
    ld [$05f0], sp
    ret nc

    ld [bc], a
    ldh a, [rTIMA]
    ld [hl], b
    rst $38
    jr jr_04d_55e2

    dec d
    ldh a, [$72]
    ldh a, [$a5]
    ldh a, [$fd]
    ld a, [$eafc]
    dec b
    xor b
    ld [bc], a
    db $f4
    add c
    ld [$c0ff], a
    db $fd
    xor d
    rst $38
    ld [hl], a
    ld a, a
    ld a, [hl+]
    cp a
    rst $38
    dec e
    rst $18
    ld [hl-], a
    ccf
    ld a, l

jr_04d_5611:
    ld c, a
    call z, Call_04d_7d97
    xor a
    nop
    rst $30
    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    cp $e1
    rrca
    nop
    db $fc
    nop
    ldh a, [$80]
    ld a, [$c4f4]
    add b
    call $c388
    ccf
    ld e, [hl]
    nop
    cp h
    inc bc
    ld a, b
    ld [bc], a
    db $f4
    jp nz, $c1ec

    ld a, a

jr_04d_5638:
    dec c
    pop hl
    ld a, [bc]
    jp $8734


    jr z, jr_04d_5638

    ret nz

    rra
    jr nz, @+$2e

    ld e, l
    ld e, h
    sub d
    nop
    ld hl, sp+$00
    rst $18
    ld a, h
    call nz, Call_000_03bd
    jr nz, jr_04d_5611

    rrca
    nop
    ld e, [hl]
    ld bc, $e098
    dec b
    ld a, [$c08c]
    rlca
    adc b
    ret nz

    dec c
    ldh a, [rIF]
    ldh [$0b], a
    rst $38
    jp $823f


    cpl
    rrca
    rst $38
    ld a, [bc]
    cp a
    rst $38
    ld a, $ff

jr_04d_566f:
    jr z, jr_04d_566f

    ld hl, sp-$01
    xor b
    ld a, [c]
    rst $38
    ld l, h
    di
    adc [hl]
    ldh [$8f], a
    ret nc

    nop

jr_04d_567d:
    cp d
    rst $38
    jr nc, @+$79

    jr nz, jr_04d_567d

    pop de
    db $fc
    inc sp
    ldh a, [$c7]
    ld a, a
    ret z

    call $d900
    add b
    rst $38
    db $fc
    and e
    add b
    nop
    rst $38
    ret nz

    dec d
    ldh [rP1], a
    ldh a, [$15]
    ld [hl], b
    jr c, @+$01

    ldh a, [rHDMA5]
    ldh a, [$f2]
    ldh a, [$75]
    ldh a, [$f0]
    rst $38
    db $fc
    pop de
    db $fc
    ldh a, [rIE]
    and b
    ld_long a, $ffe0
    rst $38
    add b
    ld_long $ff81, a
    ld [bc], a
    xor e
    rlca
    rst $38
    rst $38
    ld a, [bc]
    xor a
    rra
    rst $38
    ld a, [hl+]
    cp [hl]
    ld [hl], h
    rst $38
    ld a, a
    xor b
    ld a, [$fdd0]
    jr nz, @-$13

    ld b, e
    rst $38
    scf
    jp nz, $cd2f

    rra
    jp nz, $9d3f

    rlca
    ld a, a
    inc e
    or e
    nop
    rst $38
    nop
    rst $38
    add b
    push de
    nop
    and l
    ld hl, sp-$7d
    rst $38
    ld e, l
    add b
    dec hl
    ld b, b
    rla
    and b
    rrca
    ret nc

    rst $38
    xor a
    ldh a, [$7f]
    ldh a, [$af]
    ldh a, [$df]
    ldh a, [$cf]
    ccf
    ldh a, [$7b]
    call z, $ff00
    db $eb
    ld [$0707], a
    rst $38
    jr jr_04d_571f

    jr nz, jr_04d_5721

    jr nz, jr_04d_5704

jr_04d_5704:
    rra
    nop
    pop af
    dec b
    add b
    rst $38
    add b
    db $ed
    add b
    and b
    ld [hl], h
    ld bc, $00aa
    rst $38
    db $dd
    add b
    dec hl
    jp $e237


    rrca
    db $fd
    ld a, a
    rrca
    ld a, [c]
    rrca

jr_04d_571f:
    db $ed
    rra

jr_04d_5721:
    call c, Call_000_0013
    rst $38
    and h
    xor $8f
    jp hl


    add b
    db $dd
    add b
    rst $38
    nop
    db $ed
    db $dd
    ldh a, [$60]
    ld [hl], a
    ld a, d
    ld hl, sp-$1e
    xor e

jr_04d_5737:
    ld hl, sp-$20
    xor a
    nop
    or [hl]
    jr nc, jr_04d_573e

jr_04d_573e:
    sbc h
    cp $f0
    rst $28
    ldh [$e0], a
    jr jr_04d_573e

    inc b
    ld hl, sp+$04
    xor a
    nop
    ld hl, sp+$00
    ret nz

    add b
    ld sp, hl
    adc c
    sub b
    ld h, b
    daa
    ld a, [hl+]
    ldh a, [$60]
    xor a
    db $fc
    db $e4
    cp [hl]
    adc b
    ld h, b
    ld hl, sp-$10
    ld h, c
    nop
    cp a
    db $ec
    rst $38
    rst $38
    nop
    rst $18
    nop
    ld [$60f0], sp
    ld [bc], a
    ldh [rTIMA], a
    rst $30
    and b
    ld a, [bc]
    ldh a, [$fc]
    db $e3
    ld a, [de]
    ldh a, [rNR51]
    or b
    rst $38
    ld a, d
    ldh a, [$ad]
    ldh a, [$7a]
    ldh a, [$a7]
    ldh a, [rIE]
    jp c, $0df0

    and b
    ld [bc], a
    ldh a, [$83]
    add sp, $3f
    ret nz

    db $fc
    jr nc, @-$0c

    ld a, b
    ld c, l
    nop
    rst $38
    add b
    rst $38
    ld a, h
    add b
    rst $18
    add b
    db $d3
    rst $38
    nop
    db $ed
    inc e
    call c, Call_04d_7900
    ld hl, sp-$80
    rst $38
    add b
    ld a, a
    add b
    ld [hl], b
    ldh a, [$0a]
    pop hl
    ld d, $c3
    rlca
    jr z, jr_04d_5737

    ld e, b
    nop
    ret nz

    nop
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    ld [hl], d
    ld a, [hl]
    ld hl, sp+$60
    ld a, [c]
    ld e, h
    db $fd
    sbc h
    ld a, [c]
    di
    nop
    rst $38
    ld hl, sp-$80
    ld a, a
    add b
    ld a, a
    add b
    ld l, d
    inc hl
    ld d, a
    ld h, d
    adc a
    db $ed
    rra
    rra
    or d
    ccf
    ld a, l
    rst $08
    nop
    ld e, d
    nop
    ccf
    nop
    rst $18
    jp c, $6a80

    ld a, [hl+]
    add b
    ld h, b
    ld a, [bc]
    ret nc

    ld a, b
    and l
    cpl
    ldh a, [$83]
    ld e, h
    db $fc
    nop
    ld a, [$3f00]
    add b
    rst $38
    add b
    or d
    ld hl, sp+$63
    or a
    rst $20
    jr nc, jr_04d_5875

    ld c, h
    nop
    ld a, d
    nop
    ccf
    ccf
    ccf
    add b
    db $eb
    ld a, a

jr_04d_5805:
    add b
    dec e
    and b
    ccf
    add b
    rst $38
    xor d
    nop
    ret nc

    rst $28
    ld a, [bc]
    or b
    rlca
    ld [hl], b
    nop
    add b
    ld hl, sp+$02
    db $fc
    db $e3
    inc bc
    cp $26
    ld [c], a
    nop
    cp a
    nop
    call c, $c5c0
    jr nz, jr_04d_5864

    ldh [rNR10], a
    dec b
    and b
    nop
    ret nz

    add b
    rst $38
    add b
    rst $00
    rst $18
    dec c
    or b
    dec sp
    ld [hl], b
    daa
    nop
    ld b, b
    ld [hl], $f0
    ldh [rP1], a
    ld a, a
    add b
    cp a
    nop
    ld a, a
    nop
    ld h, a
    adc b
    add e
    ld [$10aa], sp
    ld a, a
    ld a, a

jr_04d_5849:
    jr z, jr_04d_5805

    ld e, b
    db $fd
    jr nz, jr_04d_5849

    nop
    xor e
    nop
    nop
    nop
    rst $18
    nop
    ld e, a
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld h, e
    db $10
    ld [de], a
    ld [bc], a
    ld e, d
    ld a, h
    ld [$6303], a
    db $10

jr_04d_5864:
    ld [de], a
    ld [bc], a
    call nz, $df02
    ld [bc], a
    ld h, e
    db $10
    ld a, [c]
    ld bc, $02df
    ld [$6303], a
    db $10
    ld [de], a

jr_04d_5875:
    ld [bc], a
    ld [$c403], a
    ld [bc], a
    ld h, e
    db $10
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    jr jr_04d_5886

jr_04d_5886:
    call Call_04d_5991
    call Call_04d_58bc
    ld a, $01
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9000
    ld c, $80
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $20
    call Call_000_2096
    ld hl, $5530
    ld de, $d000
    call Call_000_1f2f
    call Call_04d_62c8
    ld hl, $5854
    ld de, $0205
    call Call_000_0595
    ret


Call_04d_58bc:
    ld hl, $da00

jr_04d_58bf:
    ld a, [hl+]
    cp $ff
    jr z, jr_04d_58e5

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, e
    cp $03
    jr z, jr_04d_58d2

    cp $02
    jr nz, jr_04d_58e3

jr_04d_58d2:
    ld a, c
    and a
    jr z, jr_04d_58e3

    ld a, c
    rrca
    rrca
    rrca
    and $07
    ld e, $00
    push hl
    call Call_04d_58e6
    pop hl

jr_04d_58e3:
    jr jr_04d_58bf

jr_04d_58e5:
    ret


Call_04d_58e6:
    add a
    add a
    add a
    ld hl, $5951
    add l
    ld l, a
    jr nc, jr_04d_58f1

    inc h

jr_04d_58f1:
    ld a, [hl+]
    add d
    ld d, a
    ld a, [hl+]
    add e
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_04d_58fd:
    push de

jr_04d_58fe:
    ld a, [hl]
    and a
    jr z, jr_04d_5941

    bit 7, d
    jr nz, jr_04d_5941

    ld a, d
    cp $14
    jr nc, jr_04d_5941

    push bc
    push de
    push hl
    ld a, d
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $4028
    add hl, de
    ld e, l
    ld d, h
    add a
    add a
    add a
    add b
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $00
    add l
    ld l, a
    ld a, h
    adc $d0
    ld h, a
    ld a, c
    cp $08
    jr c, jr_04d_5936

    ld c, $08

jr_04d_5936:
    push bc
    call Call_04d_639b
    pop bc
    dec c
    jr nz, jr_04d_5936

    pop hl
    pop de
    pop bc

jr_04d_5941:
    inc hl
    inc d
    dec e
    jr nz, jr_04d_58fe

    pop de
    inc b
    ld a, c
    sub $08
    ld c, a
    jr z, jr_04d_5950

    jr nc, jr_04d_58fd

jr_04d_5950:
    ret


    nop
    nop
    ld bc, $8801
    ld b, h
    nop
    nop
    nop
    nop
    ld bc, $8902
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    inc bc
    adc e
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    inc b
    sub h
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    dec b
    and b
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    ld b, $af
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    rlca
    pop bc
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    ld [$44d6], sp
    nop
    nop

Call_04d_5991:
    ld hl, $da00

jr_04d_5994:
    ld a, [hl+]
    cp $ff
    jr z, jr_04d_59b7

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $01
    jr nz, jr_04d_59b5

    ld a, b
    rrca
    rrca
    rrca
    and $07
    jr z, jr_04d_59b5

    cp $07
    jr z, jr_04d_59b5

    ld e, b
    push hl
    call Call_04d_59c8
    pop hl

jr_04d_59b5:
    jr jr_04d_5994

jr_04d_59b7:
    ld a, [$c3b7]
    cp $0c
    jr nz, jr_04d_59c7

    ld a, $07
    ld d, $0a
    ld e, $3f
    call Call_04d_59c8

jr_04d_59c7:
    ret


Call_04d_59c8:
    add a
    add a
    add a
    ld hl, $6288
    add l
    ld l, a
    jr nc, jr_04d_59d3

    inc h

jr_04d_59d3:
    ld a, [hl+]
    add d
    ld d, a
    ld a, [hl+]
    add e
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_04d_59e0:
    push de

jr_04d_59e1:
    ld a, [hl]
    and a
    jr z, jr_04d_5a2c

    bit 7, d
    jr nz, jr_04d_5a2c

    ld a, d
    cp $14
    jr nc, jr_04d_5a2c

    push bc
    push de
    push hl
    ld c, d
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5a3a
    add hl, de
    ld e, l
    ld d, h

Call_04d_59ff:
    ld h, c
    ld l, $00
    srl h
    rr l
    ld a, b
    add a
    add l
    ld l, a
    jr nc, jr_04d_5a0d

    inc h

jr_04d_5a0d:
    ld bc, $d000
    add hl, bc
    call Call_04d_639b
    call Call_04d_639b
    call Call_04d_639b
    call Call_04d_639b
    call Call_04d_639b
    call Call_04d_639b
    call Call_04d_639b
    call Call_04d_639b
    pop hl
    pop de
    pop bc

jr_04d_5a2c:
    inc hl
    inc d
    dec e
    jr nz, jr_04d_59e1

    pop de
    ld a, b
    add $08
    ld b, a
    dec c
    jr nz, jr_04d_59e0

    ret


    rst $38
    nop
    rst $38
    ld bc, $73ff
    rst $38
    ei
    rst $08
    rst $08
    rst $00
    rst $00
    rst $20
    ld h, a
    di
    inc sp
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    pop af
    ccf
    inc sp
    ccf
    dec sp
    rra
    dec de
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    rst $38
    ldh a, [rIE]
    ld hl, sp-$61
    sbc c
    rra
    dec de
    ccf
    dec sp
    ccf
    scf
    ld a, $36
    ld a, [hl]
    ld a, [hl]
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld hl, sp-$61
    sbc e
    rra
    rra
    ld a, $36
    ld a, $36
    ld a, [hl]
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $81ff
    rst $38
    jp $efff


    ld a, a
    ld a, a
    dec sp
    dec sp
    rst $38
    nop
    rst $38
    ldh [rIE], a
    pop af
    cp a
    or e
    rra
    dec de
    ld e, $1e
    sbc [hl]
    sbc [hl]
    adc [hl]
    adc [hl]
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$61
    sbc b
    rra
    jr jr_04d_5ae2

    jr nc, @+$41

    jr nc, jr_04d_5b26

    ld h, b
    ld a, a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    inc a
    rst $20
    and h
    rst $20
    and $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    inc a
    rst $20
    inc h
    rst $20
    ld h, h
    rst $08
    ld c, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04d_5ae2:
    rst $38
    jr nc, @+$01

    ld a, b
    rst $08
    ret z

    adc a
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $c2
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $86
    db $fc
    call nz, Call_04d_6c7c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04d_5b26:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    inc sp
    ld sp, hl
    add hl, de
    ld sp, hl
    ld a, c
    db $fc
    db $fc
    call z, $c4cc
    call nz, $e6e6
    ld [c], a
    ld h, d
    adc [hl]
    adc [hl]
    call z, $cccc
    call z, $cccc
    ret z

    ret z

    ld c, b
    ld c, b
    ld b, b
    ld b, b
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld [hl], e
    ld [hl], e
    ld h, e
    ld h, e
    db $e3
    db $e3
    rst $00
    rst $00
    rst $00
    rst $00
    adc h
    adc h
    adc b
    adc b
    ld a, a
    ld a, a
    ld [hl], e
    ld [hl], e
    ld h, e
    ld h, e
    db $e3
    db $e3
    rst $00
    rst $00
    rst $00
    rst $00
    adc h
    adc h
    adc b
    adc b
    ld sp, $3131
    ld sp, $1919
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    call z, $cccc
    call z, $c8c8
    ld c, b
    ld c, b
    ld [$7f08], sp
    ld l, [hl]
    ld a, a
    ld e, a
    di
    di
    db $e3
    db $e3
    rst $20
    rst $20
    rst $00
    add $cf
    call z, $8c8f
    db $fc
    inc b
    cp $06
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    db $fc
    inc b
    db $fc
    inc b
    ld h, e
    ld h, d
    inc sp
    inc sp
    ld sp, $1931
    add hl, de
    sbc c
    sbc c
    sbc c
    sbc c
    ret


    ret


    ld c, c
    ld c, c
    rst $08
    ld c, c
    rst $08
    ret


    sbc a
    sbc a
    sbc l
    sbc l
    sbc b
    sbc b
    cp c
    cp c
    ld sp, $3331
    inc sp
    sbc a
    sbc c
    rra
    ld de, $bfbf
    cp e
    cp e
    pop af
    pop af
    di
    di
    db $e3
    db $e3
    ld h, [hl]
    ld h, [hl]
    cp $ee
    ld a, $3e
    inc sp
    inc sp
    ld sp, $1931
    add hl, de
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    inc a
    inc l
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    sbc e
    sbc e
    sbc e
    sbc e
    sub e
    sub e
    rst $38
    add b
    rst $38
    add b
    rst $38
    jr nc, @+$01

    ld a, b
    rst $08
    ret z

    adc a
    adc b
    sbc a
    sbc b
    rra
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$30]
    ld hl, sp+$38
    ld hl, sp+$18
    ld hl, sp+$18
    db $fc
    inc c
    db $fc
    inc c
    rst $38
    rrca
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    rst $38
    rst $38
    rst $38
    cp h
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    ld [hl], b
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop

jr_04d_5c73:
    nop
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    pop af
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    rst $38
    rst $38
    rst $38
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and $e6
    rst $38
    rst $38
    rst $38
    cp l
    rrca
    inc c
    rra
    jr jr_04d_5cbe

    jr jr_04d_5cc0

    jr jr_04d_5ce2

    jr nc, jr_04d_5ce4

    jr nc, @+$01

    ldh a, [rIE]
    ldh [$fe], a
    ld b, $ff
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, b
    ld c, b
    nop
    nop

jr_04d_5cbe:
    nop
    nop

jr_04d_5cc0:
    add b
    add b
    add b
    add b
    call z, $ffcc
    ld a, a
    rst $38
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld h, a
    rst $38
    rst $38
    rst $38
    sbc b
    ld b, h
    ld b, h
    inc b
    inc b
    nop
    nop
    nop
    nop

jr_04d_5ce2:
    nop
    nop

jr_04d_5ce4:
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    jr nc, jr_04d_5c73

    adc b
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    add hl, sp
    rst $38
    rst $38
    rst $38
    add $93
    sub e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $ffcc
    rst $38
    rst $38
    inc sp
    ccf
    jr nc, @+$41

    jr nz, jr_04d_5d8e

    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc bc
    db $fc
    inc b
    db $fc
    ld [hl], h
    sbc h
    sbc h
    adc h
    adc h
    add $c6

jr_04d_5d46:
    and $66
    ld a, [c]
    ld [hl-], a
    rst $38
    ld b, $f9
    adc c
    ld sp, hl
    adc c
    ld sp, hl
    reti


    ld [hl], e
    ld d, e
    ld [hl], e
    ld d, d
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    rst $38
    nop
    rst $38
    jr jr_04d_5d46

    inc h
    rst $20
    ld h, h
    rst $08
    ld c, h
    rst $08
    ret


    rst $18
    rst $18
    ld e, c
    ld e, c
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    call nz, Call_000_3e3e
    ld h, $26
    rst $38
    ld b, $f9
    add hl, bc
    ld sp, hl
    adc c
    di
    sub e
    di
    sub d
    rst $20
    and $67
    ld h, h
    ld h, a
    ld h, h
    rst $38
    nop
    rst $38
    nop

jr_04d_5d8e:
    rst $38
    ld bc, $19ff
    rst $30
    dec d
    di
    inc de
    ld sp, hl
    add hl, bc
    ld sp, hl
    add hl, bc
    rst $38
    nop
    rst $38
    ld b, $fb
    adc d
    ld [hl], e
    ld d, d
    ld [hl], a
    ld d, h
    ld [hl], a
    ld d, h
    daa
    daa

jr_04d_5da8:
    dec h
    dec h
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @-$1f

    ld d, b
    rst $18
    ld d, d
    sbc l
    sub l
    cp h
    cp h
    inc h
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_04d_5da8

    dec h
    rst $20
    dec h
    or $76
    sub d
    sub d
    sub d
    sub d
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    and b
    ccf
    jr nz, jr_04d_5e52

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld e, b
    rst $28
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    cp $02
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $62fe
    db $dd
    push de
    ld c, l
    ld c, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    or b
    rst $28
    xor $dd
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $62fe
    db $dd
    ld d, l
    db $ed
    ld l, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
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
    di
    ld [hl], e
    sbc e
    sbc e
    adc c
    adc c
    ret nz

    ret nz

    ldh [$60], a
    ldh [rNR41], a
    pop af
    ld sp, $1fff
    ld b, h
    ld b, h
    ld c, h
    ld c, h
    ld c, c
    ld c, c
    nop
    nop

jr_04d_5e52:
    nop
    nop
    nop
    nop
    sbc c
    sbc c
    rst $38
    rst $38
    or e
    or e
    db $e3
    db $e3
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    rst $20
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    sub d
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    dec sp
    rst $38
    rst $38
    ld c, a
    ld c, h
    ld c, a
    ld c, [hl]
    ld c, c
    ld c, c
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    or a
    or [hl]
    rst $38
    db $fc
    db $fc
    inc a
    db $e4
    inc h
    ld a, [c]
    ld [de], a
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fd
    dec b
    rst $38
    inc bc
    xor c
    xor c
    xor c
    xor c
    adc c
    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    sub e
    rst $38
    rst $38
    ld c, [hl]
    ld c, [hl]
    jp z, Jump_04d_52ca

    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld [hl-], a
    rst $38
    rst $38
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    rst $38
    rst $38
    rst $08
    ret z

    sbc a
    sub b
    sbc a
    sub b
    cp a
    and b
    ccf
    jr nz, @+$41

    jr nz, @+$41

    jr nz, @+$01

    ret nz

    rst $38
    ld bc, $03ff
    cp $02
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ld l, c
    ld l, c
    xor e
    xor e
    xor d
    xor d
    ld b, d
    ld b, d
    nop
    nop
    add b
    add b
    sub c
    sub c
    rst $38
    ld a, a
    db $dd
    db $dd
    ld d, h
    ld d, h
    xor $ee
    xor d
    xor d
    nop
    nop
    nop
    nop
    adc e
    adc e
    rst $38
    rst $38
    xor c
    xor c
    xor e
    xor e
    xor d
    xor d
    adc d
    adc d
    ld bc, $0101
    ld bc, $1919
    rst $38
    cp $ff
    ret nz

    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop

jr_04d_5f2c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec h
    jp c, $eb5a

    dec hl
    db $ed
    dec l
    push de
    ld d, l
    ldh [rNR41], a
    ldh a, [rNR10]
    rst $38
    rrca
    rst $38
    jr nz, jr_04d_5f2c

    push de
    ld e, d
    ld e, d
    ld d, l
    ld d, l
    dec b
    dec b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    sub b
    ld l, a
    ld l, b
    xor a
    xor h
    db $db
    jp c, Jump_04d_5457

    rlca
    inc b
    rrca
    ld [$f0ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    dec b
    db $fd
    dec b
    cp $02
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    xor l
    ld a, d
    ld a, d
    ld d, [hl]
    ld d, [hl]
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    and b
    cp a
    and b
    ld a, a
    ld b, b
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_04d_604a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_04d_6074:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, b
    ld d, c
    ld d, d
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $4a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    jr nc, jr_04d_6287

    ld [hl-], a
    inc sp
    inc [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    daa
    jr z, jr_04d_6298

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $10
    ld de, $1312
    inc d
    dec d
    ld d, $20
    ld hl, $2322
    inc h
    dec h

jr_04d_6287:
    ld h, $ff
    ld sp, hl
    inc bc
    ld bc, $623a
    nop
    nop
    rst $38
    ld sp, hl
    inc bc
    ld bc, $623a
    nop
    nop

jr_04d_6298:
    rst $38
    ld sp, hl
    inc bc
    ld bc, $623d
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    ld b, b
    ld h, d
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    ld c, d
    ld h, d
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    ld d, h
    ld h, d
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    ld e, [hl]
    ld h, d
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    ld [hl], e
    ld h, d
    nop
    nop

Call_04d_62c8:
    ld hl, $da00

jr_04d_62cb:
    ld a, [hl+]
    cp $ff
    jr z, jr_04d_62ed

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $03
    jr z, jr_04d_62de

    cp $02
    jr nz, jr_04d_62eb

jr_04d_62de:
    ld a, b
    rrca
    rrca
    rrca
    and $07
    ld e, $07
    push hl
    call Call_04d_62ee
    pop hl

jr_04d_62eb:
    jr jr_04d_62cb

jr_04d_62ed:
    ret


Call_04d_62ee:
    add a
    add a
    add a
    ld hl, $635b
    add l
    ld l, a
    jr nc, jr_04d_62f9

    inc h

jr_04d_62f9:
    ld a, [hl+]
    add d
    ld d, a
    ld a, [hl+]
    add e
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_04d_6306:
    push de

jr_04d_6307:
    ld a, [hl]
    and a
    jr z, jr_04d_6350

    bit 7, d
    jr nz, jr_04d_6350

    ld a, d
    cp $14
    jr nc, jr_04d_6350

    push bc
    push de
    push hl
    ld c, d
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $44ee
    add hl, de
    ld e, l
    ld d, h
    ld a, c
    add a
    add a
    add a
    add b
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $d000
    add hl, bc
    call Call_04d_63a8
    call Call_04d_63a8
    call Call_04d_63a8
    call Call_04d_63a8
    call Call_04d_63a8
    call Call_04d_63a8
    call Call_04d_63a8
    call Call_04d_63a8
    pop hl
    pop de
    pop bc

jr_04d_6350:
    inc hl
    inc d
    dec e
    jr nz, jr_04d_6307

    pop de
    inc b
    dec c
    jr nz, jr_04d_6306

    ret


    rst $38
    cp $03
    inc bc
    ld l, [hl]
    ld d, e
    nop
    nop
    rst $38
    ei
    inc bc
    ld b, $77
    ld d, e
    nop
    nop
    cp $f9
    dec b
    ld [$5389], sp
    nop
    nop
    db $fd
    ld sp, hl
    rlca
    ld [$53b1], sp
    nop
    nop
    db $fc
    ld sp, hl
    add hl, bc
    ld [$53e9], sp
    nop
    nop
    db $fc
    ld sp, hl
    add hl, bc
    ld [$5431], sp
    nop
    nop
    ei
    ld sp, hl
    dec bc
    ld [$5479], sp
    nop
    nop
    ei
    ld sp, hl
    dec bc
    ld [$5479], sp
    nop
    nop

Call_04d_639b:
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    xor c
    ld e, a
    cpl
    ld d, a
    jr jr_04d_63b3

Call_04d_63a8:
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    or c
    ld d, a
    cpl
    ld e, a

jr_04d_63b3:
    ld a, d
    and b
    ld b, a
    ld a, d
    and c
    ld c, a
    ld a, [hl]
    and e
    or c
    ld [hl+], a
    ld a, [hl]
    and e
    or b
    ld [hl+], a
    pop de
    ret


    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    rst $00
    ld c, a
    rst $08
    cp $e0
    cp a
    rst $00
    ld c, a
    jp $c443


    ld b, a
    ldh a, [$e0]
    rst $38
    rst $38
    nop
    add b
    add b
    ret nz

    ld hl, sp-$04
    add $ff
    cp l
    add c
    di
    ld [c], a
    rst $38
    cp $03
    ld [bc], a
    cp $e3
    add e
    rst $38
    jp nz, $e243

    rst $00
    ld b, a
    call $cd4f
    rst $38
    ld c, a
    call nz, $c647
    ld b, a
    jp nz, $c443

    rst $38
    ld c, a
    jp z, $c04f

    rst $38
    ld hl, sp-$01
    inc b
    rst $38
    rst $38
    db $e3
    rst $38
    db $d3
    rst $18
    di
    sbc a
    jp nc, $dfff

    ld bc, $23ef
    ld [c], a
    inc hl
    ld a, [c]
    inc de
    rst $38
    ld a, [c]
    sub e
    ld a, [c]
    db $d3
    ld a, [c]
    di
    ld a, [$bffb]
    cp $7f
    cp $c8
    ld c, a
    ret


    jp nc, $c2e0

    rst $38
    ld b, e
    rst $00
    ld b, a
    jp nz, $ff46

    ld a, a
    rst $38
    rst $38
    nop
    nop
    rst $38

Call_04d_6438:
    add h
    rst $38
    rlca
    rst $38
    rra
    cp a
    rst $38
    push hl
    db $fd
    xor d
    ld a, b
    rst $38
    sub l
    ldh [$7f], a
    ld a, a
    cp $fb
    cp $c3
    ld [c], a
    add e
    jp nz, $e1fe

    ld [hl], e
    rst $38
    cp $72
    ldh [rSVBK], a
    ldh [$c3], a
    ld b, a
    rst $00
    cp $e0
    ei
    jp $7047


    push hl
    add b
    ret nz

    ldh [$f0], a
    db $fc
    xor a
    cp $e3
    rst $38
    ret nz

    ld [hl], b
    db $eb
    add d
    ld [hl], b
    db $e3
    rst $00
    ei
    ld b, a
    push bc
    ld [hl], d
    ldh [$c3], a
    ld b, e
    push bc
    ld c, l
    jp z, $94fe

    ldh [$f0], a
    rst $38
    ld a, h
    rst $38
    ld b, d
    rst $38
    ld sp, $ffff
    ld e, c
    rst $18
    ld a, c
    rst $08
    ld e, c
    rst $18
    nop
    db $dd
    rst $30
    ld [hl], b
    jp hl


    ld a, e
    ld a, [$70bb]
    ldh [$c4], a
    ld c, a
    rst $10
    jp nz, $c147

    ld [hl], b
    add sp, -$3e
    ld [hl], b
    ld [$fe3b], a
    rst $08
    ld a, e
    cp $f3
    ld a, [$e36e]
    ld [hl], b
    push hl
    ret nz

    ld b, c
    add l
    pop bc
    cp $e1
    ld b, e
    ld c, $e0
    ldh [$c2], a
    ld [hl], c
    ldh [rSVBK], a
    ldh [$f3], a
    xor e
    rst $38
    ldh [rSVBK], a
    ldh a, [$c5]
    ld b, h
    ldh [$c4], a
    ld l, h
    pop hl
    ld b, l
    rst $38
    push bc
    ld c, h
    ret


    ld c, l
    ret z

    ld c, a
    ld hl, sp-$01
    rst $38
    cp [hl]
    rst $38
    and c
    rst $38
    jr @+$01

    xor h
    rst $28
    cp a
    cp h
    rst $20
    inc l
    rst $28
    add b
    ei
    ldh [$c7], a
    db $d3
    rst $18
    ld a, [c]
    or e
    ld a, [$fa5b]
    ld [hl], b
    rst $28
    ld h, c
    rst $38
    rst $18
    inc bc
    rst $38
    adc a
    rst $38
    ld [hl], l
    ldh [$c4], a
    dec de
    ld a, [$3b0b]
    ld a, [$e070]
    ld a, [c]
    ldh [$c5], a
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld b, b
    ret nz

    ld b, b
    rst $38
    ret c

    ld e, l
    rst $28
    ld [hl], a
    pop bc
    ld h, e
    ret nz

    ld a, c
    or $f0
    ldh [rIE], a
    nop
    rst $38
    ldh [$7f], a
    rst $38
    add h
    pop hl
    rst $30
    nop
    rst $38
    sbc a
    di
    ldh [rIE], a
    cp $03
    ld [bc], a
    rst $38
    inc bc
    ld [bc], a
    ld [hl], e
    ld a, [$fa8b]
    ld b, a
    cp $ff
    ld l, e
    ld a, [$7fc0]
    pop bc
    ld a, a
    and $7f
    rst $38
    ret c

    ld e, a
    db $d3
    ld e, a
    push de
    ld e, [hl]
    rst $08
    ld e, l
    rst $38
    call $ae4c
    ldh [$33], a
    db $ec
    ld a, a
    ret nz

    rst $38
    ld l, e
    call z, $d457
    rst $28
    sbc h
    rst $20
    inc d
    rst $38
    rst $28
    inc c
    xor e
    cp d
    xor e
    ld a, d
    di
    ld a, [hl-]
    rst $38
    db $e3
    ld h, d
    and e
    ld [c], a
    db $e3
    ld [c], a
    and e
    and d
    rst $38
    ld h, e
    ld h, d
    add $4e
    jp $c047


    ld b, e
    rst $38
    ret nz

    ld b, c
    pop bc
    ld b, a
    push bc
    ld c, h
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    cp $80
    ld a, a
    add b
    sbc e
    jp nz, $e57f

    pop af
    rra
    ld a, a
    rst $30
    sbc d
    rst $38
    sub l
    ldh [rIE], a
    db $e3
    and d
    jp $8342


    jp nz, $8203

    ccf
    inc bc
    add d
    add e
    jp nz, $feff

    ld [hl], d
    ldh [rSVBK], a
    db $e4
    rst $38
    ldh a, [$79]
    db $dd
    ld l, a
    jp nz, $c147

    ld [hl], e
    cp $70
    push hl
    ld a, [hl]
    rst $38
    adc c
    db $e3
    nop
    rst $38
    dec a
    cp $70
    and $43
    ld [c], a
    cp a
    cp [hl]
    ld b, a
    cp $2b
    rst $38
    ld a, [$7fc1]
    jp nz, $cc7f

    ld a, a
    pop af
    rst $38
    ld a, a
    rst $10
    ld e, a
    bit 3, l
    rst $08
    ld e, d
    set 7, a
    ld c, b
    ld [hl], e
    add $8f
    and b
    rst $38
    add b
    xor a
    rst $38
    jr nc, jr_04d_663e

    ld d, c
    cp a
    ld [hl], c
    sbc [hl]
    ld d, b
    cp a
    rst $38
    ld sp, $fea7
    ld h, a
    cp $eb
    ld a, d
    or e
    cp a
    ld a, [$6263]
    jp $a3e2


    ld l, [hl]
    ldh [$c5], a
    ld sp, hl
    ld c, l
    xor d
    ldh [rSVBK], a
    add sp, -$05
    ld [bc], a
    rst $38
    nop
    or a
    or a
    call nz, $f3ed
    ld [hl], b
    push hl
    and e
    ld [hl+], a
    ld [hl], b
    di
    ret nc

    ld a, a
    ld a, b
    ld sp, hl
    ld l, a
    add $4f
    jp nz, $e077

    push bc
    ld a, a
    ld a, h
    cp $93
    rst $00
    nop
    rst $38
    ld a, e
    ldh [$c6], a
    rst $38
    inc hl
    ld [hl], d
    rst $18
    sbc $83
    cp $43
    cp $ff
    jp nz, $c57f

    ld a, a
    jp z, $fb7e

    ld a, [hl]
    rst $38
    adc $5e
    rst $10
    ld e, d
    rst $18
    ld d, h
    rst $10
    ld d, b
    rst $38

jr_04d_663e:
    and h
    adc h
    ld e, $c1
    rst $38
    nop
    ld e, l
    ld b, c
    rst $38
    cp [hl]
    and d
    ld a, a
    db $e3
    dec a
    ld hl, $63ff
    cp $70
    pop hl
    rst $20
    ld a, [hl]
    dec sp
    ld a, [hl]
    db $e3
    and d
    inc hl
    rst $38
    or d
    inc de
    ld d, d
    di
    ld d, d
    jp z, $c65a

    db $fd
    ld c, a
    ld [hl], b
    jp hl


    rst $30
    inc b
    rst $38
    nop
    ld l, $89
    rst $30
    set 4, e
    dec a
    ldh [$c4], a
    db $d3
    ld [hl], d
    ld h, e
    ld [hl], d
    ld bc, $e283
    ret nz

    ldh [$c5], a
    nop
    nop
    nop
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    push bc
    ld b, h
    rst $00
    cp $e1
    rst $18
    ld b, a
    call c, $e75e
    ld [hl], b
    ldh a, [$e0]
    rst $38
    db $f4
    ei
    rlca
    ld a, [$e0fe]
    pop af
    db $fd
    rrca
    rra
    ld sp, hl
    db $fd
    inc bc
    ldh [$e0], a
    cp $13
    ld a, [c]
    dec bc
    ld_long a, $ff0b
    ld a, [$fefb]
    rst $08
    ld e, $e7
    xor $df
    rst $38
    ld a, a
    db $fd
    ld a, h
    bit 1, [hl]
    add $46
    add $ff
    ld b, [hl]
    push de
    ld d, l
    db $dd
    ld e, h
    push de

jr_04d_66c0:
    ld d, [hl]
    add [hl]
    rst $38
    rst $08
    db $fc
    ld a, a
    ld a, [$cd2b]
    dec de
    rst $38
    rst $38
    jr jr_04d_66c0

    ld bc, $00ff
    cp l
    pop bc
    rra
    ei
    cp $07
    cp $e0
    add e
    cp $43
    cp $43
    ei
    ld a, [hl]
    ld b, e
    ld hl, sp-$20
    jp nc, $c957

    ld e, a
    add $ff
    ld c, a
    pop bc
    ld b, e
    ret nz

    ld b, b
    ret nz

    ld b, c
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    dec a
    inc bc
    ld [hl], a
    add a
    adc c
    rst $38
    rst $18
    rst $38
    rst $38
    db $76
    ld e, b
    xor c
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    cp $03
    cp $13
    rst $38
    cp $ff
    cp $83
    jp nz, $c243

    rst $38
    reti


    cp $72
    ldh [rSVBK], a
    ldh [$c4], a
    ld b, [hl]
    ld l, [hl]
    ld [c], a
    ld b, a
    call z, $4eb7
    reti


    ld e, h
    ld [hl], b
    pop hl
    ld [c], a
    rlca
    ld a, b
    pop hl
    ld sp, hl
    rst $28
    db $fc
    rlca
    ccf
    db $fc
    sbc h
    ldh [rIE], a
    cp $23
    rst $38
    ld a, [c]
    inc de
    ld a, [c]
    sub e
    ld a, [c]
    di
    ld_long a, $ffdb
    sbc d
    set 5, d
    rst $20
    ld a, a
    sbc $5e
    rst $00
    rst $38
    ld b, a
    push bc
    ld b, l
    push bc
    ld b, a
    push bc
    ld h, h
    push af
    rst $38
    ld a, h
    db $eb
    ld l, [hl]
    ld sp, hl
    rst $38
    xor $1f
    rst $30
    rst $38
    dec d
    ld l, h
    ld d, $7f
    ld b, $b3
    add b
    rst $38
    rst $28
    nop
    sbc $60
    dec sp
    ld b, [hl]
    ldh [$0b], a
    cp $c7
    rst $38
    cp $a7
    ld a, [hl]
    inc hl
    cp [hl]
    and e
    ld a, [hl]
    jp $feff


    pop hl
    ld [hl], a
    ret nc

    ld a, a
    call z, $c35f
    db $fd
    ld b, a
    ld [hl], b
    push hl
    sbc l
    inc bc
    rst $30
    add a
    ret


    rst $18

jr_04d_6789:
    db $dd
    ld a, a
    ld [hl], b
    ld [$fe27], a
    ei
    ld [hl], b
    ld [$47c2], a
    cp [hl]
    ld l, [hl]
    pop hl
    push bc
    ld b, a
    add $4f
    ret


    ld [hl], b
    ld [c], a
    ld [hl], e
    ld a, l
    rlca
    ld a, b
    pop hl
    db $fc
    cp $03
    ld a, a
    cp $50
    pop hl
    rst $38
    cp $43
    ld [c], a
    and e
    ld a, [c]
    ld d, e
    ld [hl], d
    di
    rst $38
    ld a, d
    db $eb
    jp c, $ea4b

    db $d3
    ld e, a
    sbc $ff
    ld e, a
    push bc
    ld b, l
    add $46
    push bc
    ld c, [hl]
    set 7, a
    ld l, [hl]
    ld [$d27e], a
    ld e, e
    db $fc
    rst $38
    ld [hl], a
    rst $38
    rlca
    ld l, e
    adc d
    or $8b
    cp a
    add e
    ld e, c
    rst $38
    ld b, b
    rst $38
    nop
    rst $28
    jr nc, jr_04d_6789

    ld_long a, $ff1b
    ld a, [$fa8b]
    ld l, e
    ld a, [hl]
    rst $10
    ld a, $97
    rst $38
    ld e, [hl]
    db $d3
    ld a, $23
    ld a, [hl]
    pop de
    ld h, a
    ldh [$df], a
    ld a, a
    reti


    ld a, a
    add $4f
    ldh [$c5], a
    ld c, [hl]
    ld bc, $bbaf
    add e
    ld b, l
    rst $28
    ldh [$c7], a
    jp $c0e0


    ld c, a
    rlca
    cp $f3
    ld a, [$c5e0]
    nop
    nop
    nop

    db $ff, $ff, $00, $ff, $7f, $c0, $40, $c1, $43, $b7, $c2, $47, $c4, $fe, $e0, $c8
    db $4f, $f0, $e0, $ff, $ff, $7f, $ff, $82, $e8, $00, $fd, $38, $ff, $ef, $77, $c7
    db $7f, $c0, $e0, $e0, $fe, $03, $02, $ff, $83, $82, $83, $82, $43, $c2, $43, $42
    db $ff, $c3, $42, $c8, $4f, $d1, $5f, $d1, $5f, $ff, $d7, $5f, $d9, $59, $df, $5b
    db $cc, $49, $ff, $cb, $4c, $c7, $98, $7f, $00, $fd, $ff, $ff, $ff, $f7, $75, $77
    db $fb, $3f, $fd, $04, $7f, $fb, $07, $43, $c2, $c3, $42, $c3, $d6, $e0, $fc, $f8
    db $e0, $fe, $e0, $43, $c2, $c6, $4f, $c5, $47, $b7, $c7, $4f, $c9, $ca, $e0, $d2
    db $5e, $a7, $e0, $00, $ff, $ff, $00, $f6, $0e, $fa, $0f, $7d, $0d, $ff, $7d, $83
    db $fa, $86, $ff, $ff, $ff, $00, $db, $43, $c2, $a4, $e1, $03, $02, $fe, $e1, $ff
    db $fe, $5c, $e0, $e1, $70, $e1, $c0, $41, $c3, $70, $e2, $c9, $70, $e2, $ff, $3e
    db $fe, $c9, $e3, $00, $f3, $71, $ff, $27, $ae, $8e, $7f, $e0, $e1, $70, $e0, $03
    db $70, $e2, $98, $e1, $ff, $c9, $4f, $cb, $4e, $cb, $4f, $cf, $4f, $ff, $ca, $5a
    db $ce, $5a, $cd, $5a, $ca, $5d, $ff, $8e, $31, $ff, $00, $fb, $ff, $ff, $de, $ff
    db $da, $de, $77, $ff, $ff, $0a, $f7, $0c, $fe, $4a, $e2, $c2, $c3, $e2, $a3, $e2
    db $a3, $a2, $ff, $a3, $62, $23, $a2, $c4, $4f, $cb, $4f, $af, $c5, $4f, $c1, $41
    db $65, $e0, $43, $70, $e3, $fe, $bf, $1c, $f6, $1d, $6d, $89, $fd, $70, $e5, $e2
    db $8f, $a3, $f2, $c3, $e2, $70, $ed, $e0, $c0, $de, $c0, $c5, $f7, $47, $c6, $46
    db $e0, $c1, $7c, $fe, $a3, $cf, $7f, $00, $cf, $c6, $ff, $7d, $39, $fe, $70, $e8
    db $fd, $83, $12, $e0, $c3, $c2, $c7, $46, $c5, $46, $ff, $c7, $47, $cf, $5f, $d7
    db $57, $dc, $55, $ff, $db, $54, $d5, $5a, $39, $c6, $ff, $00, $ff, $ef, $ff, $ff
    db $7d, $6d, $7d, $d6, $ff, $ef, $ff, $28, $d7, $38, $ec, $c1, $c3, $c2, $e3, $ff
    db $f2, $d3, $d2, $73, $52, $b3, $52, $53, $ff, $b2, $cb, $5e, $d6, $5f, $c9, $5f
    db $c1, $df, $41, $c0, $41, $c0, $40, $70, $e4, $39, $ef, $7f, $39, $55, $93, $fe
    db $83, $ba, $c6, $e0, $c1, $3f, $a3, $f2, $d3, $f2, $23, $f2, $e0, $c7, $00, $00

    nop

    db $ff, $ff, $00, $ff, $7f, $c7, $47, $c8, $5c, $ff, $d9, $53, $e2, $73, $e2, $7e
    db $d5, $5e, $f6, $f0, $e0, $ff, $03, $eb, $e0, $c0, $ff, $30, $7f, $ef, $e8, $0f
    db $f8, $0f, $e0, $e0, $fe, $03, $82, $ff, $83, $e2, $43, $f2, $23, $f2, $23, $fa
    db $ff, $13, $fa, $cb, $4d, $cf, $4d, $ca, $4b, $ff, $ca, $4f, $cf, $4f, $da, $59
    db $ef, $60, $ff, $fe, $62, $b8, $cf, $d4, $e7, $6c, $a7, $ff, $bc, $bf, $27, $e7
    db $da, $ee, $f5, $05, $d7, $ff, $00, $13, $dc, $e0, $13, $d4, $e0, $a3, $f2, $fb
    db $e3, $62, $fe, $e1, $e5, $76, $df, $5f, $c2, $ff, $43, $c3, $43, $c1, $43, $c1
    db $41, $ff, $ff, $7f, $ff, $00, $fa, $04, $fb, $83, $fa, $ff, $87, $75, $8f, $ea
    db $0e, $d2, $3f, $ff, $ff, $ff, $ff, $00, $c3, $c2, $43, $c2, $83, $37, $82, $03
    db $02, $fe, $e1, $ff, $fe, $72, $e0, $70, $e3, $ff, $5e, $d4, $51, $e1, $7b, $e1
    db $7f, $d2, $fe, $70, $e6, $e0, $ff, $18, $bf, $64, $0f, $fc, $fd, $07, $70, $e4
    db $c2, $43, $e2, $23, $f2, $13, $fe, $fe, $e0, $cd, $4e, $ce, $4e, $c9, $4b, $cd
    db $ff, $4f, $cb, $4f, $cd, $4c, $d7, $50, $df, $ff, $51, $ec, $77, $f6, $fb, $0a
    db $db, $2e, $ff, $ff, $93, $f3, $6d, $f7, $fe, $02, $7f, $f9, $00, $dc, $e1, $46
    db $e0, $e2, $c3, $e2, $63, $22, $ff, $e3, $a2, $e3, $22, $d2, $5b, $cf, $4f, $f7
    db $c2, $46, $c2, $70, $e6, $fd, $02, $fb, $c3, $af, $7b, $c7, $b6, $ce, $70, $e0
    db $1f, $70, $e1, $43, $f9, $42, $72, $e5, $70, $e7, $c6, $4f, $c8, $5c, $d4, $7f
    db $59, $d1, $5b, $d0, $5f, $c9, $5f, $e0, $c1, $ff, $06, $ff, $01, $ff, $f0, $ff
    db $0c, $9f, $77, $f2, $87, $7e, $d5, $c1, $fe, $03, $02, $70, $e7, $ff, $ce, $4e
    db $cf, $4f, $cc, $4b, $ca, $4b, $ff, $c9, $4f, $c6, $4e, $cb, $4c, $ce, $48, $ff
    db $b6, $3b, $79, $7d, $87, $dd, $97, $ff, $ff, $4b, $fb, $b6, $7b, $7d, $03, $ff
    db $80, $fe, $72, $e3, $43, $e2, $e3, $e2, $b3, $92, $73, $bf, $52, $d3, $12, $c9
    db $4d, $c6, $70, $ea, $7e, $ff, $81, $fd, $e1, $be, $e2, $5a, $66, $f4, $f7, $06
    db $4a, $9f, $e0, $c1, $a3, $22, $c3, $c2, $00, $70, $e9, $00, $00

    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    pop bc
    ld b, e
    jp nz, $ff47

    add $4f
    ret


    ld e, a
    ret nc

    ld e, h
    ret nc

    ld a, c
    db $fc
    ldh a, [$e0]
    db $ed
    ldh [rP1], a
    cp a
    nop
    rrca
    jr nz, @-$77

    rst $28
    nop
    jp $f810


    ldh [$e0], a
    cp $c3
    ld [c], a
    rst $38
    inc hl
    ld a, [c]
    inc de
    ld a, [$fa0b]
    dec bc
    cp $ff
    rlca
    cp $e1
    ld [hl], e
    pop hl
    ld [hl], e
    ldh [$7b], a
    rst $38
    ldh [$7f], a
    ldh [$7f], a
    pop hl
    ld a, a
    db $d3
    ld a, [hl]
    rst $38
    db $d3
    ld e, [hl]
    sbc h
    rst $38
    db $e3
    ld [hl], a
    db $fc
    or c
    rst $38
    ld e, a
    ldh [$d7], a
    ret c

    cp [hl]
    ld l, c
    sbc $b9
    rst $38
    ld h, a
    sub c
    rlca
    ld a, [hl]
    rlca
    cp $87
    cp $ff
    ld b, a
    ld a, [hl]
    ld c, e
    cp $8b
    cp d
    db $d3
    ld a, [c]
    rst $38
    db $d3
    ld [hl], d
    ret


    ld c, a
    call nz, $c347
    ld b, e
    rst $38
    jp nz, $c143

    ld b, c
    ret nz

    ld b, b
    rst $38
    ld a, a
    cp $a5
    pop hl
    cp d
    jp Jump_04d_407d


    rst $18
    pop hl
    db $76
    rst $28
    ld a, [$dfee]
    rst $38
    sub l
    ldh [$e3], a
    ld h, d
    jp Jump_04d_42df


    add e
    add d
    inc bc
    ld [bc], a
    cp $e1
    rst $38
    cp $be
    add l
    pop hl
    rst $38
    ld a, a
    ret nz

    ld b, c
    pop bc
    ld [hl], b
    db $e3
    ld e, c
    db $eb
    ret nc

    ld a, e
    ld [hl], b

jr_04d_6bb4:
    pop hl
    add b
    ld [hl], b
    ldh [rLCDC], a
    rra
    jr nz, @-$1f

    rrca
    nop
    add a
    jr nz, jr_04d_6bb4

    ld [hl], b
    pop hl
    add e
    jp nz, Jump_04d_43f5

    ld l, [hl]
    pop hl
    ld a, [c]
    ld l, [hl]
    pop hl
    db $e3
    ld [hl], a
    db $e3
    db $76
    ei
    pop hl
    ld [hl], a
    ld [hl], d
    db $e3
    push de
    ld e, l
    adc $4d
    jr c, @+$01

    ld sp, hl
    add $de
    ld sp, hl
    ld h, e
    cp h
    pop bc
    xor [hl]
    rst $38
    or b
    ld a, a
    pop de
    cp h
    ld [hl], c
    rst $08
    ld [hl+], a
    rlca
    db $fc
    ld c, h
    ldh [$6e], a
    pop hl
    rst $00
    cp $4b
    ld a, d
    set 7, d
    rst $28
    db $d3
    ld [hl], d
    rst $00
    ld b, [hl]
    ld [hl], d
    ldh [rDMA], a
    pop bc
    ld b, e
    ei
    ret nz

    ld b, b
    ld [hl], b
    push hl
    ld [hl], l
    ld b, $fb
    add b
    ld e, a
    rst $28
    pop bc
    or $f2
    ld l, [hl]
    ld [hl], b
    ld [c], a
    db $d3
    ld [hl], d
    ld h, e
    rst $20
    ld h, d
    jp $6ee2


    db $e3
    ld [hl], b
    add sp, $43
    add $4f
    cp a
    jp z, $d05f

    ld e, e
    ret nc

    ld [hl], a
    ldh [$c1], a
    pop bc
    rst $38
    rst $28
    nop
    sbc a
    ld b, b
    rra
    nop
    rra
    nop
    rst $20
    rst $08
    ld b, b
    rst $20
    ld [hl], b
    jp hl


    call c, $e6c1
    ld [hl], a
    rst $20
    rst $30
    ld l, l
    db $e3
    ld l, [hl]
    db $e4
    ret nz

    ld a, a
    sub $5d
    set 7, a
    ld e, d
    call Call_04d_604a
    di
    sbc b
    cp l
    or $ff
    rst $08
    ld a, c
    add e
    ld e, l
    ld h, e
    cp $a2
    ld a, c
    rst $20
    db $e3
    sbc a
    ld b, h
    cp h
    pop bc
    ld l, [hl]
    db $e3
    adc e
    cp $4b
    rst $38
    ld a, [$7a53]
    add $44
    jp $c547


    rst $30
    ld b, l
    jp nz, $7047

    rst $20
    db $eb
    inc c
    db $76
    add b
    rst $18
    cp l
    pop bc
    ld l, d

Call_04d_6c7c:
    ld [hl], d
    ld a, [hl]
    ldh [$c2], a
    ld d, e
    ld [hl], d
    rst $38
    ld h, e
    ld a, [c]
    db $e3
    ld [c], a
    ld b, e
    ld h, d
    inc bc
    ld b, d
    nop
    ldh [$c3], a
    nop
    nop
    nop
    cp a
    rst $38
    nop

jr_04d_6c94:
    rst $38
    ld a, a
    ret nz

    ld b, b
    cp $e2
    ld b, c
    rst $28
    pop bc
    ld b, e
    jp nz, $f043

    ldh [rIE], a
    dec de
    dec sp
    rst $38
    rrca
    dec de
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    inc hl
    adc a
    ei
    nop
    ccf
    ldh [$e0], a
    cp $83
    add d
    inc bc
    ld [bc], a
    cp $fe
    ldh [$82], a
    add e
    add d
    add e
    jp nz, Jump_04d_47c3

    rst $38
    rst $00
    ld b, a
    call nz, $c547
    ld c, [hl]
    ret


    ld c, a

jr_04d_6ccb:
    rst $38
    ret z

    ld c, a
    ret


    ld c, l
    bit 1, [hl]
    db $10
    rst $38
    db $fd
    jr c, jr_04d_6c94

    ldh [$30], a
    rst $18
    jr nz, jr_04d_6ccb

    ret nz

    rst $38
    ld l, a
    ld b, b
    ei
    jr nz, @+$81

    cp l
    ldh [$e2], a
    inc hl
    cp $e1
    rst $38
    ld a, [c]
    di
    ld a, [c]
    sub e
    ld a, [c]
    ld d, e
    ld a, [c]
    jp z, $d6fe

    ldh [$d8], a
    ld a, a
    db $ec
    ld l, a
    db $db
    ld c, a
    db $ec
    rst $38
    ld h, a
    rst $38
    ld a, a
    rst $38
    nop
    jr nz, @+$01

    ret nz

    cp [hl]
    adc l
    ldh [$88], a
    rst $38
    ld [hl], b
    rst $38
    ld bc, $e09e
    rst $38
    rst $38
    nop
    inc de
    ld a, [c]
    and e
    ld a, [c]
    ld [hl], e
    ld a, [c]
    ld c, a
    ld a, a
    xor $97
    add $2b
    adc [hl]
    rst $38
    cp $72
    ldh [$fe], a
    ld [hl], b
    ldh a, [$36]
    ld [hl], a
    inc e
    inc d
    ld a, h
    cp $fe
    rst $00
    rst $38
    ld b, c
    sbc a
    ld [hl], b
    db $e3
    ld [hl], d
    ld [c], a
    ld l, [hl]
    db $e4
    jp nz, $f747

    push bc
    ld b, a
    call nz, $e074
    ret z

    ld c, a
    ret c

    ld e, a
    ld a, a
    add sp, $6d
    add sp, $7f
    adc b
    rst $38
    call c, $e02d
    rst $38
    ret c

    ld l, a
    sub b
    or a
    jr nz, @+$01

    ld d, b
    db $fd
    rst $28
    ret z

    sbc a
    add e
    jp nz, $e56e

    ld [hl], e
    ld_long a, $ff4b
    ld a, [$fa2b]
    add sp, $7f
    ret c

    ld e, a
    ret c

    cp a
    ld a, a
    and $6f
    push de
    ld b, a
    ld [$e270], a
    adc b
    res 7, a
    ld [hl], b
    db $fd
    ret nz

    ld [hl+], a
    jp z, $70e2

    pop hl
    dec bc
    ld a, [$53f7]
    ld a, [$7033]
    ldh [$57], a
    add $ab
    adc $de
    ld [hl], b
    push af
    ld l, h
    xor $38
    jr z, jr_04d_6e01

    pop hl
    ld bc, $dd9f
    add b
    ld [hl], b
    rst $28
    ld b, [hl]
    call nz, $7046
    db $e3
    ld hl, sp+$7f
    ld a, a

jr_04d_6da0:
    ret z

    ld e, [hl]
    ret nc

    ld a, a
    ld b, h
    rst $38
    xor $9d
    ret nz

    rst $38
    ld l, h
    or a
    ld c, b
    db $db
    db $10
    rst $38
    jr z, jr_04d_6da0

    ei
    ld d, h
    rst $00
    ld [hl], b
    rst $20
    dec sp
    cp $27
    cp $17
    rst $30
    cp $c0
    ld a, a
    ld l, [hl]
    ldh [$7f], a
    push hl
    ld l, a
    call nc, $7096
    db $e4
    ld b, h
    rst $28
    or b
    pop bc
    ld de, $e2ca
    ldh [$c1], a
    rlca
    rra
    cp $2b
    cp $33
    ld a, [$e770]
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    jp nz, $c647

    ld b, a
    rst $38
    push bc
    ld c, a
    ld sp, hl
    ld a, h
    add $4f
    pop bc
    ld h, e
    cp $f0
    ldh [rIE], a
    nop
    ccf
    nop
    adc a
    ldh [$f3], a
    cp a
    sbc a
    ccf
    ld a, h
    ld bc, $f8e3

jr_04d_6e01:
    ldh [$e0], a
    cp $ef
    inc hl
    ld [c], a
    inc de
    ld a, [c]
    cp $e1
    ei
    ld a, [$bf8f]
    ld e, $f0
    ld a, b
    adc $4f
    ret


    cp $e0
    jp z, Jump_04d_4fff

    bit 1, [hl]
    bit 1, [hl]
    add $4f
    rra
    cp $bf
    ldh [$e0], a
    rst $38
    sbc a
    rst $18
    db $e4
    ld c, h
    or d
    rst $38
    call nz, $803f
    rst $38
    nop
    dec bc
    cp [hl]
    di
    rst $38
    cp $03
    cp $ff
    cp $63
    ld [hl], d
    inc hl
    rst $38
    ld [hl], d
    inc hl
    or d
    and e
    ld [c], a
    push bc
    ld b, a
    jp Jump_04d_47ff


    jp $c243


    ld b, [hl]
    add $4f
    ret


    rst $30
    ld e, e
    rst $38
    ld a, a
    and l
    ldh [$80], a
    db $fd
    jp $ff5e


    ret nz

    ld h, $f0
    add hl, de
    ld a, a
    ld b, $9f
    rst $38
    cp $95
    ldh [rSCX], a
    ld h, d
    ld b, e
    jp nz, $c283

    add e
    ld a, a
    add d
    inc bc
    add d
    add e
    jp nz, $feff

    ld [hl], d
    ldh [$fe], a
    ld [hl], b
    ld [c], a
    rst $00
    ld b, a
    call nz, $f94e
    ld a, h
    rst $00
    rst $30
    ld c, a
    ldh [$73], a
    ld [hl], b
    db $e4
    sbc a
    ldh a, [rIE]
    rst $08
    rst $18
    rra
    inc a
    add c
    rst $20
    ldh a, [rSVBK]
    jp hl


    db $eb
    ld a, [$cfef]
    ld e, $d8
    ld e, h
    call nc, Call_04d_47e0
    rst $00
    ld c, a
    rst $38
    push bc
    ld c, [hl]
    rst $00
    ld c, l
    add $4d
    push bc
    ld c, [hl]
    rst $38
    ld e, $ff
    ld bc, $f0ff
    rst $38
    rst $38
    cp a
    rst $38
    ret nc

    sbc b
    ld h, [hl]
    adc b
    ld a, [hl]
    ld bc, $01ff
    rst $38
    inc de
    ld a, $e3
    cp $07
    cp $fb
    ld a, [$a3ff]
    ld a, [c]
    inc hl
    ld h, d
    inc hl
    ld [hl+], a
    inc hl
    ld h, d
    rst $18
    jp nz, $c147

    ld b, e
    pop bc
    ld [hl], b
    add sp, $7e
    nop
    cp a
    cp d
    add a
    ld e, [hl]
    ret nz

    inc h
    pop af
    ld [hl], b
    ld a, [$fe43]
    ld [hl], b
    ldh [rDMA], a
    db $fd
    ld a, h
    jp $f067


    ld a, c
    cp $e0
    jp nz, $807f

    rst $38
    ld [hl], b
    rst $38
    adc $1f
    di
    add hl, sp
    add e
    ld [hl], b
    db $e4
    ld [c], a
    jp nz, $f233

    db $d3
    ld a, [c]
    ld a, a

Call_04d_6eff:
    rst $18
    ld e, $cc
    ld e, [hl]
    rst $00
    ld b, a
    push bc
    ld [hl], b
    ldh [rIE], a
    bit 1, l
    adc $4b
    call z, $cb4a
    ld c, h
    rst $30
    inc e
    ld a, [hl]
    add e
    call nc, $ffe0
    ld a, a
    and c
    ld sp, $ccff
    db $10
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    inc sp
    ld a, [hl]
    rst $38
    jp $0ffe


    cp $f3
    ld a, [$f223]
    rst $38
    inc hl
    and d
    inc hl
    ld h, d
    jp $c462


    ld c, [hl]
    db $fd
    jp $ea70


    db $fd
    nop
    ld [hl], l
    adc [hl]
    cp [hl]
    add b
    cp a
    ld c, l
    pop hl
    inc sp
    ld a, a
    inc c
    cp a
    ldh [$c2], a
    ld b, d
    nop
    ld [c], a
    jp $c5e0


    nop
    nop
    nop

    db $ff, $ff, $00, $ff, $7f, $c0, $40, $c0, $41, $ff, $c3, $47, $c4, $4d, $c8, $5b
    db $c8, $5b, $fe, $f0, $e0, $ff, $3e, $7f, $e1, $ff, $18, $ff, $e7, $04, $ff, $07
    db $fa, $e0, $e0, $e0, $fe, $03, $02, $ff, $c3, $c2, $23, $22, $e3, $22, $f3, $f2
    db $ff, $0b, $fa, $c9, $5f, $cf, $5f, $c7, $4f, $ff, $c7, $47, $c7, $47, $c6, $46
    db $c3, $46, $ff, $c2, $42, $e3, $ff, $ff, $fe, $db, $f9, $ff, $d7, $cb, $f6, $e3
    db $af, $60, $f7, $8f, $ff, $f7, $07, $fb, $fa, $b3, $32, $e3, $62, $fe, $fe, $e0
    db $72, $f3, $12, $73, $12, $e3, $f2, $9f, $c1, $43, $c0, $41, $c1, $fe, $e0, $9c
    db $e0, $40, $ff, $ff, $7f, $ff, $00, $5b, $03, $dc, $c0, $ff, $df, $c1, $ff, $e0
    db $6e, $60, $27, $21, $fd, $ff, $a2, $e0, $a3, $a2, $c3, $42, $03, $c2, $ff, $83
    db $82, $83, $82, $03, $02, $ff, $fe, $dc, $72, $e0, $70, $e9, $4b, $c8, $4b, $70
    db $e3, $c1, $ff, $7f, $30, $fe, $09, $fe, $0f, $ff, $30, $70, $e4, $f7, $83, $c2
    db $43, $9c, $e1, $e2, $13, $f2, $c9, $ff, $4f, $c7, $4f, $c3, $47, $c3, $43, $c3
    db $df, $47, $c5, $44, $c7, $45, $fc, $e0, $ff, $ff, $ff, $fc, $bb, $f2, $bf, $9a
    db $ed, $da, $6f, $ff, $c0, $ee, $1e, $ef, $0f, $eb, $fa, $73, $ff, $72, $a3, $a2
    db $e3, $e2, $63, $e2, $e3, $7f, $22, $b3, $32, $f3, $f2, $c2, $46, $6e, $e3, $fe
    db $70, $e5, $b7, $07, $b9, $80, $de, $c3, $de, $ef, $c0, $ee, $e0, $25, $70, $e2
    db $63, $f2, $43, $6f, $42, $43, $42, $83, $6e, $e0, $03, $82, $70, $e9, $ff, $c1
    db $43, $c2, $46, $c4, $45, $c4, $45, $fe, $70, $e5, $20, $f9, $16, $f9, $1f, $ff
    db $60, $fe, $70, $e6, $c3, $e2, $a3, $e2, $e3, $e2, $23, $f7, $f2, $c5, $47, $72
    db $e2, $43, $c7, $4f, $ca, $ff, $49, $cf, $4a, $cb, $48, $cf, $ff, $fa, $ff, $f8
    db $77, $e5, $7f, $35, $da, $b5, $df, $ff, $80, $dd, $3c, $df, $1f, $d3, $f2, $f3
    db $df, $f2, $a3, $32, $e3, $a2, $d2, $e0, $62, $73, $7f, $7a, $f3, $f2, $c5, $4c
    db $c3, $47, $e0, $c9, $ff, $6e, $0f, $f3, $88, $bf, $86, $dd, $c6, $ef, $5d, $41
    db $2e, $63, $e0, $c1, $e3, $f2, $c3, $01, $62, $70, $e0, $72, $e0, $e0, $c3, $00
    db $00

    nop

    db $ff, $ff, $00, $ff, $7f, $c0, $41, $c3, $43, $ff, $c4, $44, $c6, $44, $cf, $4f
    db $d0, $51, $fe, $f0, $e0, $ff, $f8, $fc, $07, $ff, $18, $ff, $e7, $20, $ff, $e0
    db $fa, $e0, $e0, $e0, $fe, $03, $02, $ff, $03, $82, $c3, $e2, $23, $f2, $13, $f2
    db $ff, $0b, $fa, $df, $5f, $cd, $4c, $c5, $44, $ff, $cf, $4e, $d6, $50, $df, $50
    db $d5, $59, $ff, $cf, $4f, $c6, $ff, $7f, $7f, $db, $93, $ff, $ef, $d7, $af, $c6
    db $fe, $03, $ef, $e0, $ff, $ef, $e0, $0b, $fa, $8b, $fa, $eb, $fa, $df, $f3, $fa
    db $73, $72, $f3, $fe, $e0, $63, $72, $ff, $cf, $4f, $c5, $45, $c3, $46, $c1, $43
    db $ff, $c2, $47, $c7, $47, $ff, $7f, $ff, $00, $ff, $de, $c0, $7b, $03, $f2, $07
    db $cc, $1f, $ef, $f1, $ff, $5a, $ff, $ff, $e0, $00, $e3, $e2, $7f, $c3, $e2, $e3
    db $e2, $83, $c2, $43, $a0, $e0, $d3, $ff, $fe, $72, $e0, $70, $e1, $40, $d0, $e0
    db $46, $c7, $df, $46, $c7, $47, $c8, $49, $70, $e1, $7c, $fe, $ff, $83, $ff, $0c
    db $7f, $90, $7f, $f0, $ff, $fd, $0c, $70, $ec, $13, $fa, $d7, $5f, $ce, $4e, $ff
    db $c5, $45, $c7, $47, $c5, $4c, $c7, $4c, $ff, $cd, $5c, $cf, $5f, $e3, $ff, $bf
    db $3f, $ff, $e9, $49, $ff, $5b, $b7, $5b, $fd, $01, $7f, $7b, $78, $f7, $f0, $0b
    db $fa, $cb, $70, $e2, $ff, $b3, $32, $73, $b2, $f3, $32, $a3, $32, $f6, $70, $e0
    db $4d, $c2, $70, $e8, $df, $c0, $7d, $c3, $f7, $b3, $87, $4c, $70, $e6, $63, $62
    db $c3, $e2, $db, $c3, $c2, $70, $ef, $c3, $47, $9a, $e1, $c4, $4d, $fe, $70, $e5
    db $04, $9f, $68, $9f, $f8, $ff, $06, $58, $e0, $c6, $3e, $e2, $dc, $c0, $cb, $4b
    db $0e, $e0, $4c, $6e, $e0, $ff, $4e, $cf, $4a, $de, $5e, $cf, $5f, $f1, $ff, $ff
    db $5f, $1f, $f6, $a6, $ff, $ad, $db, $ff, $2d, $fe, $00, $bd, $3c, $fb, $f8, $93
    db $ff, $f2, $d3, $f2, $f3, $f2, $e3, $f2, $d3, $ff, $92, $b3, $d2, $f3, $12, $d3
    db $12, $cb, $f7, $4b, $c4, $4c, $70, $e9, $ee, $e0, $bd, $e1, $ef, $db, $43, $6c
    db $0f, $e0, $c5, $a3, $32, $c3, $03, $e2, $83, $a2, $e3, $e0, $c2, $00, $00

    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    ret z

    ld c, a
    rst $08
    ld c, b
    rst $38
    bit 1, b
    rst $08
    ld c, a
    ret nc

    ld e, a
    db $ec
    ld a, a
    cp $f0
    ldh [rIE], a
    ld b, $ff
    add c
    ccf
    nop
    ld a, a
    cp a
    ldh [rIE], a
    jr @+$01

    db $76
    rst $38
    ldh [$e0], a
    cp $ff
    inc bc
    ld [bc], a
    add e
    add d
    ld b, e
    jp nz, $fa3b

    rst $38
    rrca
    cp $17
    ld a, [$7fef]
    sbc $5b
    rst $38
    rst $38
    ld a, l
    cp $7b
    call nc, $fa5c
    ld a, h
    rst $38
    ret c

    ld a, h
    rst $28
    ld a, a
    rst $38
    rst $38
    ld [hl], l
    ld b, l
    rst $38
    db $fd
    and l
    db $76
    rst $00
    ld a, [hl-]
    ld a, a
    rla
    add hl, sp
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    xor a
    ld [c], a
    ld e, a
    jp nz, Jump_04d_7bff

    jp nc, $e67f

    ld d, a
    xor $ef
    cp $ff
    rst $10
    cp $a3
    cp $ee
    ld l, [hl]
    push af
    db $76
    ccf
    rst $10
    ld [hl], a
    rst $38
    ld [hl], b
    or $72
    call nc, $a2e0
    pop hl
    rst $38
    db $fc
    ccf
    ld a, h
    db $dd
    db $e3
    rst $30
    rrca
    rst $18
    ei
    rra
    cp $d2
    ldh [rIE], a
    nop
    and e
    ld a, [hl]
    ld h, e
    rst $38
    cp $eb
    cp $e7
    cp $e3
    cp $f3
    rst $20
    ld a, [hl]
    rst $38
    cp $72
    ldh [rSVBK], a
    ldh [$c4], a
    ld c, a
    set 7, a
    ld c, h
    ret


    ld c, h
    rst $08
    ld c, a
    ldh a, [$7f]
    and $fe
    ld [hl], b
    ld [c], a
    inc bc
    rst $38
    ld b, b
    rra
    add b
    ccf
    ldh a, [$6f]
    rst $38
    inc c
    rst $38
    ccf
    ld [hl], b
    rst $20
    ld [c], a
    inc sp
    ld [hl], b
    ldh [rIE], a
    dec bc
    cp $ef
    ld a, a
    ld a, [$df78]
    ld a, d
    rst $38
    ei
    ld a, c
    sub $77
    push af
    db $76
    db $fc
    ld a, [hl]
    db $fd
    rst $18
    ld [hl], b
    ldh [$aa], a
    and e
    cp $ea
    ld a, [hl+]
    ld [c], a
    rst $18
    dec e
    dec a
    dec bc
    dec de
    rra
    pop de
    ldh [$97], a
    ld a, [c]
    rst $38
    rst $28
    ld [c], a
    cp a
    ld [$f6bb], a
    ccf
    or $ff
    rst $30
    cp $ef
    cp $53
    cp [hl]
    rst $18
    ld a, a
    rst $38
    ld a, [c]
    ld [hl], a
    db $dd
    ld a, e
    ei
    ld a, b
    ei
    ld a, l
    ei
    rst $28
    ld [hl], a
    ld [hl], b
    pop hl
    ld e, a
    ld e, a
    xor a
    inc e
    or $df
    ld sp, hl
    ei
    rlca
    ld h, a
    adc a
    ld [hl], b
    db $e3
    db $d3
    ld a, $fb
    and e
    ld a, [hl]
    ld [hl], b
    db $ed
    jp nz, $c447

    ld c, a
    ret z

    ld a, a
    ld c, a
    bit 1, a
    db $ec
    ld a, a
    db $d3
    ld e, a
    ldh [$c1], a
    rst $38
    ld bc, $a8ff
    rlca
    ld d, b
    rlca
    db $fc
    rst $38
    rst $30
    ld [bc], a
    rst $38
    rrca
    ldh [$c8], a
    inc sp
    ld a, [$fe2b]
    rst $38
    rlca
    cp $f7
    ld e, a
    db $fd
    ld a, h
    rst $18
    ld a, l
    rst $38
    db $fd
    ld e, h
    db $db
    ld a, a
    cp $7f
    rst $18
    ld a, a
    rst $38
    rst $18
    ld [hl], a
    rst $38
    rst $38
    ld d, l
    ld d, c
    rst $38
    ld [hl], l
    rst $38
    sub l
    pop af
    ld c, $9e
    ld b, a
    rrca
    rrca
    sbc a
    rst $38
    rst $38
    rst $38
    adc e
    ld a, [$f277]
    ld e, e
    db $76
    rst $18
    ld e, a
    ld a, [$febb]
    rst $38
    ld l, [hl]
    ldh [$db], a
    sbc [hl]
    rst $38
    sub $76
    rst $28
    ld a, e
    jp c, $fd7c

    ld a, [hl]
    ei
    cp $7f
    ld [hl], b
    db $e3
    xor e
    xor e
    ld d, a
    adc [hl]
    ei
    rst $18
    db $fc
    db $fd
    inc bc
    db $d3
    ld h, a
    ld [hl], b
    db $e4
    cp [hl]
    and e
    inc bc
    ld a, [hl]
    ld l, e
    ldh [$c8], a
    nop
    nop
    nop

    db $ff, $ff, $00, $ff, $7f, $c0, $40, $c1, $43, $ff, $c3, $47, $c7, $47, $c6, $47
    db $c4, $4f, $de, $f0, $e0, $ff, $7c, $fe, $ff, $ff, $e0, $01, $ff, $ef, $38, $ff
    db $7c, $ff, $e0, $e0, $fe, $03, $02, $ff, $03, $82, $83, $c2, $c3, $e2, $e3, $e2
    db $ff, $63, $f2, $cc, $4f, $cf, $4f, $c7, $4f, $f7, $c7, $47, $c7, $f8, $e0, $df
    db $5f, $cf, $5f, $ff, $7c, $ff, $fc, $ff, $f8, $ff, $e3, $ff, $f9, $c7, $fe, $e0
    db $ca, $e1, $73, $f2, $73, $f2, $f3, $63, $f2, $e3, $fc, $e0, $fe, $e3, $d2, $e1
    db $c3, $47, $a0, $e2, $1f, $4f, $ff, $7f, $ff, $00, $d8, $e1, $d6, $e3, $d1, $e2
    db $bf, $00, $e3, $f2, $c3, $e2, $83, $a2, $e3, $f2, $03, $ff, $fe, $72, $e0, $70
    db $e8, $9a, $e1, $70, $e7, $6c, $e3, $70, $eb, $7f, $e3, $f2, $ce, $4f, $cc, $4f
    db $c4, $70, $e8, $aa, $4c, $e1, $7c, $6e, $e8, $f3, $70, $e0, $73, $70, $f8, $ff
    db $40, $46, $e2, $6e, $e6, $70, $ff, $70, $ea, $ce, $e1, $70, $eb, $cf, $e0, $c4
    db $45, $c6, $68, $e0, $dc, $e0, $c0, $d9, $e7, $68, $e1, $e0, $70, $e0, $00, $e6
    db $c1, $e0, $c1, $d6, $c3, $e0, $cf, $6e, $e3, $70, $f5, $00, $00

    nop
    db $fd
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    ret nc

    rst $28
    sbc a
    rst $38
    ld l, a
    and b
    rst $38
    xor a
    ldh a, [$fe]
    db $e3
    rst $38
    rst $38
    db $ed
    ldh [$fa], a
    db $fc
    pop hl
    nop
    cp $e4
    rst $38
    rlca
    rst $38
    di
    rst $38
    rrca
    dec bc
    rst $38
    ei
    rrca
    cp $e3
    ret c

    push hl
    ret nc

    push hl
    add sp, -$1b
    ld c, $e0
    db $ed
    sbc a
    rst $38
    ret nz

    cp b
    ldh [$b5], a
    ld [c], a
    cp b
    db $e4
    xor b
    pop hl
    dec e
    rst $38
    cp b
    db $e4
    db $eb
    rra
    di
    xor b
    ldh [$e1], a
    ld [c], a
    rst $38

jr_04d_74ef:
    rst $38
    db $fc
    rst $38
    rst $38
    jr nz, jr_04d_74ef

    rst $38
    adc d
    rst $38
    cp d
    rst $28
    cp b
    ld [hl], e

Call_04d_74fc:
    rst $38
    cp d
    ld hl, sp-$20
    ld l, [hl]
    db $e3
    adc b
    rst $38
    xor d
    cp $e0
    ld sp, hl
    adc c
    ld a, [$f0e0]
    push hl
    cp l
    rst $20
    cp l
    rst $38
    cp l
    ld d, e
    rst $38
    adc l
    ldh [$e6], a
    call nc, $b9e1
    ret nc

    and $89
    db $e4
    ldh [$bf], a
    adc a
    ld hl, sp-$11
    ld hl, sp-$71
    ld hl, sp+$2e
    ld [c], a
    rra
    rst $20
    pop af
    rra
    push af
    db $fc
    db $e4
    ld e, $e3
    ld de, $77ff
    ld a, [c]
    db $fc
    ldh [$7d], a
    ld hl, sp-$20
    ld c, $e2
    pop af
    rra
    pop af
    cp a
    ld a, c
    pop hl
    cp $e3
    ldh [$e6], a
    db $fd
    rla
    rst $38
    rst $10
    ldh [$e5], a
    cp d
    ret nc

    ldh [rHDMA5], a
    cp $e0
    ld d, e
    rst $38
    dec d
    rst $18
    jp Jump_000_07f0


    rra
    ldh a, [$7f]
    db $fc
    db $e4
    rst $08
    jp z, $c283

    ldh a, [rIE]
    pop de
    jp hl


    jp nc, $c14c

    add b
    cp $ea
    ldh [$ed], a
    rst $38
    ldh [$ec], a
    add b
    ld c, a
    rst $38
    ld [hl], b
    ld c, a
    ld [hl], b
    ld a, a
    ld h, a
    ld a, d
    ccf
    ld [hl-], a
    rst $38
    rra
    db $10
    rra
    jr jr_04d_7591

    rrca
    rlca
    ld a, [c]
    rst $38
    ld c, $f2
    ld c, $fe
    and $5e
    db $fc
    ld c, h
    rst $38
    ld hl, sp+$08

jr_04d_7591:
    ld hl, sp+$18
    ldh a, [$f0]
    ldh [rP1], a
    rst $38
    nop
    rlca
    inc bc
    rra
    inc c
    inc sp
    inc e
    ld h, $ff
    add hl, sp
    ld a, h
    inc hl
    ld a, h
    ld b, e
    ld e, [hl]
    ld h, c
    nop
    rst $38
    nop
    ldh [$c0], a
    ld hl, sp+$30
    call z, Call_04d_6438
    rst $38
    sbc h
    ld a, $c4
    ld a, $c2
    ld a, d
    add [hl]
    rst $30
    rst $38
    rlca
    db $eb
    inc c
    rst $10
    dec de
    db $ed
    scf
    ld sp, hl
    rst $38

jr_04d_75c5:
    cpl
    db $fd
    cpl
    db $fd
    daa
    db $dd
    rla
    cp a
    rst $18
    add b
    ld a, a
    ret nz

    rst $38
    ld b, b
    cp $e7
    db $fd
    rla
    rst $38
    db $dd
    rla
    db $ed
    scf
    db $fd
    cpl
    ld hl, sp+$2f
    rst $38
    rst $38
    cpl
    rst $28
    jr nc, jr_04d_75c5

    rra
    rst $38
    ld b, b
    rst $08
    rst $18
    ld b, b
    cp a
    ld h, b
    adc a
    and b
    cp $e0
    cp a
    ld h, b
    rst $38
    rst $18
    ret nz

    rst $18
    rra
    xor a
    jr nc, jr_04d_765b

    ld l, a
    rst $38
    or b
    rst $18
    and $bf
    rst $28
    cp c
    rst $38
    cp c
    rst $38
    cp [hl]
    rst $00
    cp a
    add b
    ld e, a
    ret nz

    xor a
    ld h, b
    rst $28
    rst $18
    or b
    ld a, a
    ret nc

    cp $e3
    reti


    ld l, a
    ld [hl], e
    rst $38
    ld e, [hl]
    or a
    db $dd
    rst $20
    cp a
    ldh [$bf], a
    rst $38
    rst $38
    cp a

jr_04d_7624:
    cp a
    ret nz

    ld a, a
    ld a, a
    rst $18
    or b
    rst $28
    ei
    jr nz, @+$01

    db $e4
    ld [c], a
    rst $38
    ret nc

    rst $18
    jr nc, jr_04d_7624

    db $fd
    ldh [$c0], a
    rst $20
    rst $38
    cp c
    or [hl]
    rst $08
    ld a, b
    ld l, a
    cp $c0
    db $eb
    rst $38
    or b
    db $76
    ld c, a
    rst $38
    cp c
    rst $28
    rst $38
    cp c
    and $bf
    or b
    rst $18
    ld e, a
    ld l, a
    xor a
    db $fc
    add b
    ldh [$a8], a
    push hl
    rst $18
    or b
    xor a
    ld h, b

jr_04d_765b:
    ld e, a
    ret nz

    rst $28
    cp a
    add b
    ei
    adc a
    cp $eb
    rst $38
    inc a
    db $db
    rst $38
    ld h, [hl]
    cp l
    db $db
    rst $28
    sub c
    rst $30
    adc c
    cp l
    rst $30
    db $db
    db $db
    ld h, [hl]
    push af
    add b
    inc a
    rst $18
    ld h, h
    rst $38
    rst $38
    ld b, h
    rst $38
    ld h, h
    rst $38
    inc h
    rst $38
    ld h, [hl]
    rst $38
    db $fd
    ld b, d
    push hl
    add b
    ld a, [hl]
    cp l
    jp $99ff


    rst $30
    rst $10
    ld sp, hl
    cp c
    rst $00
    ret


    add b
    add c
    ldh a, [$e3]
    rst $30
    sbc c
    cp a
    rst $38
    ld h, d
    rst $38
    ld sp, hl
    rst $38
    sbc c
    and $e0
    rst $38
    rst $38
    rst $38
    ld a, $df
    ld h, d
    cp a
    jp nz, $92ff

    db $eb
    rst $38
    sub e
    ld [c], a
    ldh [$f3], a
    db $fd
    add d
    add c
    rst $38
    sbc a
    xor e
    db $fd
    add e
    ldh [$e6], a
    ld a, [hl]
    ld [c], a
    ldh [$9e], a
    ldh a, [$e0]
    sbc c
    db $fc
    ret nc

    db $e4
    ldh [$e0], a
    push af
    ei
    rst $28
    ld [hl-], a
    ei
    ld h, $c2
    sbc [hl]
    ldh [rNR50], a
    and b
    push hl
    sbc h
    pop hl
    ret nc

    push hl
    db $f4
    db $e3
    cp a
    pop bc
    xor e
    rst $38
    ld a, c
    and b
    ld [c], a
    inc a
    db $76
    ldh [$e7], a
    add [hl]
    ldh [$81], a
    jr nz, @-$04

    ldh [$d0], a
    pop hl
    reti


    and e
    ldh a, [$e1]
    ld b, l
    add e
    inc a
    ld [c], a
    ld [c], a
    db $e4
    db $e3
    cp $60
    ldh [$8e], a
    adc [hl]
    adc a
    adc a
    adc [hl]
    adc a
    sub [hl]
    rst $38
    sbc a
    and b
    cp a
    cp a
    cp a
    cp c
    cp a
    xor c
    rst $38
    or [hl]
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    rst $38
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$1c
    db $fc
    inc [hl]
    rst $38
    db $fc
    sbc b
    sbc b
    and a
    cp a
    jp z, $dfff

    rst $18
    rst $38
    cp a
    or b
    cp a
    and b
    rst $18
    pop hl
    inc b
    inc b
    rst $28
    set 1, a
    ld sp, $a3ff
    ret nz

    ld a, a
    rst $28
    ccf
    rst $38
    db $e4
    cp h
    db $fc
    ld e, h
    add e
    add e
    add h
    add a
    rst $28

jr_04d_7743:
    adc a
    adc a
    sbc a
    sub b
    cp $e0
    sbc a
    cp a
    and b
    rst $38
    rst $38
    rst $18
    ret nz

    ret nz

    jr nc, jr_04d_7743

    ret z

    ld hl, sp-$01
    db $e4

jr_04d_7757:
    inc a
    db $f4
    inc e
    db $fc
    call c, Call_000_32fe
    rst $38
    db $fd
    sbc a
    add [hl]
    add [hl]
    adc c
    adc a
    sub b
    sbc a
    rst $38
    sbc c
    sbc a
    sbc a
    sub [hl]
    cp a
    and b
    xor h

jr_04d_776f:
    or e
    cp $30
    add c
    ret nz

    ret nz

    jr nz, jr_04d_7757

    sub b
    ldh a, [$c8]
    rst $38
    ld a, b
    ret z

    ld a, b
    add sp, $38
    add sp, -$08
    adc a
    rst $38
    adc a
    or [hl]
    cp a
    call nz, $acff
    rst $18
    sbc [hl]
    rst $10
    rst $30
    cp a
    db $e3
    db $ed
    ld h, b
    db $e3
    add d
    db $e3
    jr z, jr_04d_776f

    rst $38
    ld h, h
    sbc h
    add h
    db $fc
    adc $7e
    ld sp, hl
    ccf
    rst $38
    adc e
    adc e
    sbc a
    sub h
    sbc l
    sub d
    xor a
    cp a
    rst $38
    ret nz

    rst $38
    sub c
    rst $38
    sub e
    cp $bf
    db $ec
    rst $38
    ld h, b
    ld h, b
    ldh [$a0], a
    ldh a, [$30]
    ret z

    ld hl, sp-$01
    inc b
    db $fc
    inc b
    db $fc
    add d
    cp $c2
    ld a, [hl]
    ld a, l
    adc a
    ld b, h
    ldh [$af], a
    cp c
    cp a
    cp a
    ldh [$5c], a
    pop hl
    rst $30
    or l
    cp a
    cp l
    and d
    pop hl
    db $10
    ldh a, [$98]
    ld hl, sp-$01
    ld b, h
    db $fc
    and h
    db $fc
    db $fc
    ld a, h
    db $fc
    inc [hl]
    rst $38
    add c
    add c
    add d
    add e
    add e
    add e
    add a
    add h
    rst $30
    add a
    add l
    sbc a
    inc e
    ldh [$d4], a
    rst $38
    ldh a, [$f0]
    rst $38
    adc b
    ld hl, sp-$18
    ld hl, sp-$0c
    sbc h
    db $f4
    db $fc
    rst $38
    db $f4
    call c, $fcf4
    ld [bc], a
    cp $b9
    xor a
    rst $30
    cp c
    xor a
    call nz, Call_04d_6074
    and [hl]
    cp a
    sub b
    sbc a
    rst $38
    adc h
    adc a
    rst $38
    rst $38
    sbc d
    ld a, [hl]
    sbc [hl]
    ld a, [hl]
    rst $38
    ld h, $fe
    ld d, $fe
    ld c, $fe
    inc a
    db $fc
    db $dd
    ld hl, sp+$2f
    add b
    or [hl]
    xor c
    rst $38
    pop hl
    ldh [$bf], a
    and e
    rst $38
    sbc a
    sub b
    adc a
    adc h
    add e
    add e
    rst $38
    rst $38
    rst $38
    cp $52
    cp $0a
    db $fc
    inc b
    ld hl, sp+$18
    rst $28
    ldh [rNR41], a
    ret nz

    ret nz

    jp nz, $f862

    rst $10
    ld hl, sp-$01
    rst $18
    db $f4
    rst $18
    ldh a, [$af]
    cp d
    sbc a
    sbc h
    cp $e0
    pop hl
    ld hl, sp-$01
    ld l, h
    sub a
    db $fd
    rlca
    ld sp, hl
    cp a
    rra
    and $3e
    ld hl, sp+$78
    add b
    and b
    add c
    rst $38
    rst $38
    cp a
    or e
    cp a
    xor b
    cp a
    and b
    sbc a
    sub [hl]
    ld a, [$e0be]
    adc b
    pop de
    ldh [$b8], a
    db $fc
    inc h
    db $fc
    inc d
    rst $38
    db $fc
    inc c
    ld a, [$f23e]
    ld a, [hl]
    adc [hl]
    adc [hl]
    xor [hl]
    or l
    ld b, b
    and d
    db $dd
    and d
    or c
    ret nz

    call z, $e0de
    sub c
    cp $f0
    pop hl
    db $fd
    and a
    db $fd
    sub a
    ld sp, hl
    rrca
    push af
    rst $18
    ccf
    db $db
    ld e, e
    add b
    add b
    ld h, d
    ld h, d
    di
    rst $38
    rst $38
    jp nc, $b2ad

    cp a
    and b
    db $db
    db $f4
    rst $08
    rst $38
    ld sp, hl
    sub $f6
    rst $38
    rst $38
    jp hl


    cp a
    jp hl


    rst $38
    cp a
    rst $38
    scf
    cp $1e
    ld a, [c]
    ld a, [hl]
    pop hl
    rst $30
    rst $38
    ld c, c
    ld a, a
    ld [hl], l
    ld b, b
    ret nz

    rst $38
    jp $ffbf


    cp a
    sbc a
    sbc a

jr_04d_78cd:
    adc a
    adc b
    adc a
    adc b
    add a
    db $fd
    add h
    ld h, b
    ldh [$aa], a
    cp $82
    db $fc
    add h

jr_04d_78db:
    ld hl, sp-$29
    jr jr_04d_78db

Call_04d_78df:
    inc a
    ld e, [hl]
    ldh [rLCDC], a
    ld sp, $c087
    rst $38
    rst $10
    or b
    cp a
    adc a
    jr nz, jr_04d_78cd

    ld bc, $e0fe
    dec l
    di
    cp a
    ccf
    pop hl
    ld a, [hl]
    ld a, [c]
    db $fc
    call nz, $e120
    add a
    xor l
    add a
    ld c, b
    pop bc

Call_04d_7900:
    or e
    xor h
    or a
    pop hl
    cp [hl]
    sub d
    ldh [$e0], a
    rst $38
    ldh [rNR23], a
    ld hl, sp-$7c
    db $fc
    ld [c], a

jr_04d_790f:
    ld a, [hl]
    ld a, [$3ebf]
    cp $e6
    ccf
    di
    db $fd
    ldh [$e0], a
    adc b
    ei
    adc a
    adc h
    ld a, $c0
    and e
    cp a
    rst $38
    call c, $d7ff
    db $e3
    cp a
    cp l
    ld [c], a
    and c
    jr nc, jr_04d_790f

    and b
    add h
    db $fc
    rst $38
    add $7e
    rst $08
    ld a, c
    rst $18
    ld [hl], l
    cp [hl]
    cp [hl]
    db $fd
    push bc
    ld d, a
    add b
    ret nz

    rst $38
    push bc
    rst $38
    rst $28
    ld a, [$be7f]
    or c
    xor l
    or e
    ld h, b
    ld h, b
    sbc b
    ld h, h
    ret nz

    rst $38
    ld [bc], a
    cp $01
    rst $38
    and c
    rst $38
    ld a, c
    rst $38
    rst $30
    di
    sbc a
    adc a
    ld [bc], a
    ret nz

    and b
    cp a
    and [hl]
    cp c
    db $db
    sub a
    sbc b
    add b
    pop bc
    rst $18
    rst $38
    ld h, b
    jp $f818


    sbc a
    ld d, $fe
    add c
    rst $38
    pop bc
    add $20
    and b
    pop hl
    adc a
    xor l
    adc b
    ld b, l
    add b
    rst $38
    rst $28
    sbc h
    and c
    and [hl]
    ret nz

    and c
    ld [$f8ff], sp
    call nz, Call_04d_74fc
    db $fc
    adc [hl]
    cp $f3
    rst $30
    rst $38
    db $fd
    ld a, a
    and b
    and c
    adc b
    adc a
    sbc a
    sbc a
    cp l
    and c
    cp $a0
    rst $38
    rst $38
    sbc a
    sbc c
    ld h, d
    and l
    add h
    ld a, a
    db $fc
    ld b, d
    cp $f2
    cp $de
    cp [hl]
    nop
    push bc
    rst $38
    and b
    cp a
    sbc $ff
    rst $38
    db $eb
    cp a
    cp d
    rst $30
    add b
    add b
    ld b, b
    cp $a6
    db $e4
    db $fc
    db $fc
    inc a
    rst $38
    sub c
    sub c
    cp e

jr_04d_79c1:
    xor d
    cp a
    xor h
    sbc a
    sub a
    rst $38
    cp c
    cp a
    di
    sbc $ff
    db $ed
    cp a
    cp [hl]
    rst $38
    jp nz, $f7c2

    ld [hl], l
    rst $38
    dec e
    rst $38
    cp c
    rst $38
    cp $ea
    cp $66
    sbc $fa
    add $7e
    rst $38
    rst $38
    pop de
    xor $d1
    cp a
    xor b
    rst $38
    and $f9
    rst $18
    ld h, $20
    ld d, b
    pop bc
    pop af
    ld e, a
    pop af
    ld e, a
    db $e3
    rst $38
    ccf
    db $e3
    ccf
    jp nz, $9c7e

    db $fc
    ldh a, [$5e]
    ld [de], a
    jr nz, jr_04d_79c1

    and [hl]
    rst $38

jr_04d_7a04:
    jp hl


    ld d, l

jr_04d_7a06:
    jr nz, jr_04d_7a04

    sbc d
    ret nz

    rst $10
    cp b
    sbc a
    sub b
    dec b
    jr nz, jr_04d_7a06

    ld a, c
    and b
    ld a, [bc]
    db $fc
    ccf
    ld l, h
    ld hl, sp-$78
    ldh a, [$30]
    ret nz

    dec a
    jr nz, jr_04d_7a41

    ret nz

    db $f4
    jr nz, @-$3c

    sbc h
    ldh [$90], a
    and b
    pop bc
    rst $30
    ld e, a
    rst $38
    add hl, bc
    rst $38
    rst $38
    dec b
    cp $12
    db $fc
    inc e
    ldh a, [rSVBK]
    ld a, [hl]
    ldh [$e1], a
    rst $38
    ldh a, [$9f]
    sub h
    sbc a
    sbc [hl]
    call nz, $bd80

jr_04d_7a41:
    and d
    ldh [$a3], a
    cp $3e
    cp $8a
    ld e, [hl]
    ret nz

    inc d
    jp c, $a0be

    ld h, b
    ldh [$a1], a
    cp a
    or d
    rst $30
    nop
    ret z

    rst $38
    and a
    ldh a, [$bf]
    xor h
    cp $a1
    and l
    nop
    ld b, a
    db $e4
    ldh [$08], a
    ld e, d
    and h
    ldh [rLCDC], a
    nop
    jp $919f


    adc b

jr_04d_7a6c:
    add b
    and b
    add h
    pop hl
    rst $30
    sub c
    sbc [hl]
    adc c
    ld h, b
    and b
    adc $32
    adc $3a
    ld h, e
    call c, $8024
    and d
    sbc $e0
    ld [hl], l
    nop
    call nz, $aaff
    ld h, b
    ei
    cp a
    cp [hl]
    sbc [hl]
    and b
    sbc c
    add [hl]
    add [hl]
    rst $38
    rst $38
    db $eb
    db $fc
    ld [hl], h
    cp $a0
    ld [bc], a
    ld e, [hl]

jr_04d_7a98:
    and b
    ld a, b
    ldh a, [$f0]
    sbc $42
    ld bc, $fefb
    db $fd
    rst $00
    jr nc, jr_04d_7ac5

    add b
    rst $38
    ld sp, hl
    db $d3
    jp c, Jump_04d_40a0

    ldh [$f2], a
    cp $fa
    ld c, $fc
    rst $38
    ld h, h
    db $fc

jr_04d_7ab5:
    and h
    ld hl, sp-$38
    ldh a, [$30]
    ldh [$fd], a
    jr nz, jr_04d_7a6c

    ret nz

    sbc a
    and h
    cp e
    adc $f1
    rst $18

jr_04d_7ac5:
    xor a
    rst $38
    ldh [rIE], a
    sbc a
    sub h
    and c
    sbc $c0
    pop bc
    jr c, jr_04d_7b50

    ld hl, sp+$14
    db $fc
    rst $00
    rst $38
    rst $20
    db $fd
    inc e
    jr nz, jr_04d_7a98

    xor l
    ret nc

    add hl, hl
    rst $30
    add a
    ld hl, sp-$71
    add c
    add hl, hl
    rst $30
    ei
    ldh a, [rIF]
    ld b, b
    add b
    sub [hl]
    sbc a
    xor l
    xor c
    cp a
    rst $38
    cp a
    and h
    or c
    sbc $ff
    db $eb
    rst $38
    cp d
    db $fd
    cp a
    add b
    jp nz, Jump_04d_5060

    or b
    sbc b
    ret c

    ld b, h
    rra
    db $ec
    db $e4
    db $fc
    inc a
    ld a, h
    add b
    ld l, $fe
    rst $38
    cp $ff
    ld hl, sp-$02
    rst $38
    cp $ff
    ldh a, [rDIV]
    di
    sbc $e1
    rst $38
    di
    ld [hl], a
    cp a
    rst $38
    xor h
    ld bc, $c0e0
    cp a
    and h
    ret nc

    ld b, b
    rst $18
    ld a, c
    cp $b2
    cp $2a
    ld hl, $8820
    ldh a, [rPCM34]
    db $10
    ldh [$60], a
    jr nc, jr_04d_7ab5

    adc a
    rst $30
    add a
    ret nc

    add hl, bc
    rst $28
    rrca
    ld hl, sp-$09
    ldh a, [$7f]
    add hl, bc
    ret z

    db $e3
    jp $e7ff


    rst $38
    rst $38
    cp [hl]
    cp a
    and h
    or b
    sbc b
    rst $38
    sbc a
    add a

jr_04d_7b50:
    add a
    rst $38
    rst $38
    ld a, h
    db $f4
    xor d

jr_04d_7b56:
    ld a, a
    ld [$ae02], a
    inc b
    inc e
    jr c, jr_04d_7b56

    add b
    jp Jump_000_0001


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
    nop
    nop
    nop
    ld b, a
    add hl, bc
    add hl, bc
    ld [$ecff], sp
    xor $eb
    ldh [$e2], a
    rrca
    rst $38
    and $87
    ld [$4808], sp
    ldh [$f0], a
    ret nz

    ld hl, sp-$01
    rst $38
    db $fd
    db $fc
    dec c
    rra

jr_04d_7b8a:
    dec c
    ld [$2828], sp
    jr z, jr_04d_7b8a

    jp hl


    ldh [$ee], a
    ld a, [$00ec]
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

    rst $28
    cp $e0
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    or $f5
    ret nz

    db $eb
    nop
    nop
    nop
    rst $28
    ld [hl+], a
    inc hl
    ld [bc], a
    inc bc
    rst $38
    ld [$2204], a
    inc hl
    db $fd
    nop
    rst $38
    add sp, $24
    dec h
    dec b
    ld e, $1e
    add [hl]
    rst $38
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    cp a
    adc a
    ld e, $1e
    ld b, $24
    dec h
    ldh [$e9], a
    ld [hl+], a
    rla
    inc hl
    rlca
    ld [$eaff], sp
    add hl, bc
    ret nz

    db $eb
    and d
    db $ec
    sbc [hl]
    ld [c], a
    cp $a0
    jp hl


    dec b
    db $10
    ld de, $1312
    inc d
    dec d
    rst $38
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [$e1ff]
    ld [hl-], a

Jump_04d_7bff:
    ldh [$ea], a
    add d
    add e
    ld hl, $1e1e
    ld sp, hl
    ld e, $fa
    jp hl


    ldh [$eb], a
    sub d
    sub e
    rra
    jr nz, jr_04d_7c31

    ld bc, $fa20
    jp hl


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

    ld hl, sp+$22
    call z, $c21e
    ldh [$a9], a
    nop

jr_04d_7c31:
    nop
    nop
    sbc a
    dec c
    ld c, $0e
    ld c, $0d
    rst $38
    db $e4
    push af
    ldh [$0e], a

jr_04d_7c3e:
    dec h
    dec bc
    rst $38
    db $e4
    inc c
    rst $38
    ldh [$e8], a
    pop hl
    rrca
    rst $38
    ldh [$e8], a
    pop hl
    jr nc, jr_04d_7c3e

    pop hl
    db $ec
    pop hl
    ldh [$e1], a
    db $ec
    push hl
    ld c, $0c
    cp $e1
    ret c

    db $e3
    nop
    nop
    nop
    rst $38
    ld c, b
    ld c, c
    ld e, b
    ld e, c
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    rst $38
    ld c, d
    ld c, e
    ld e, d
    ld e, e
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    rst $38
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    rst $38
    ld l, b
    ld l, c
    ld a, b
    ld a, c
    add b
    add c
    sub b
    sub c
    rst $38
    ld l, d
    ld l, e
    ld a, d
    ld a, e
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    rst $38
    ld h, b
    ld h, c
    ld [hl], b
    ld [hl], c
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    rst $38
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    add h
    add l
    sub h
    sub l
    rst $38
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    rst $38
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    ld [c], a
    ld bc, $0201
    inc bc
    dec b
    ld b, $ff
    dec bc
    inc c
    rla
    jr @+$0d

    inc c
    dec b
    ld b, $cf
    ld [bc], a
    inc bc
    ld bc, $e801
    db $e3
    ld a, [$c0e5]
    ret nz

    rst $38
    ld b, b
    ret nz

    ld a, b
    ld hl, sp+$08
    ld hl, sp-$18
    jr @+$01

    ld [$78f8], sp
    ld hl, sp+$40
    ret nz

    ret nz

    ret nz

    nop
    ldh [$e5], a
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    db $e4
    ld bc, $0201
    inc bc
    dec b
    ld b, $ff
    dec bc
    inc c
    ld [$0e0f], sp

jr_04d_7cf8:
    rrca
    ld [bc], a
    inc bc
    rst $08
    ld [bc], a
    inc bc
    inc bc
    inc bc
    and $e5
    sbc $e1
    add b
    add b
    rst $38
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, @-$16

    jr @+$01

    adc b
    ld a, b
    cp b
    ld a, b
    and b
    ld h, b
    jr nz, jr_04d_7cf8

    inc bc
    ldh [$e0], a
    ldh [$e3], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_04d_7d97:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
