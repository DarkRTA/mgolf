INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02b", ROMX[$4000], BANK[$2b]

    db $ed
    ld [hl], e
    sub h
    ld [hl], h
    ld b, b
    ld b, b
    ld c, b
    ld b, b
    add l
    ld c, d
    ld b, c
    ld c, a
    db $fc
    ld d, b
    ld b, d
    ld d, c
    adc b
    ld d, c
    adc c
    ld d, c
    adc b
    ld b, b
    xor a
    ld d, l
    or a
    ld d, l
    ldh [$5e], a
    ld e, $62
    ld a, [$5363]
    ld h, h
    and d
    ld h, h
    and e
    ld h, h
    rst $30
    ld d, l
    add hl, hl
    ld h, l
    ld sp, $6c65
    ld l, h

Jump_02b_402e:
    rst $30
    ld l, a
    xor d
    ld [hl], d
    ld d, $73
    ld h, [hl]
    ld [hl], e
    ld h, a
    ld [hl], e
    ld [hl], c
    ld h, l
    adc b
    ld d, c
    and d
    ld h, h
    ld h, [hl]
    ld [hl], e
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    xor $6b
    rst $38
    ld a, a
    adc $39
    nop
    nop
    adc e
    ld hl, $218b
    adc e
    ld hl, $218b
    rst $18
    nop
    rra
    inc bc
    ld [$000b], sp
    nop
    ld d, h
    ld h, d
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop
    ld d, h
    ld h, d
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    ld d, h
    ld h, d
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    ld d, h
    ld h, d
    rst $38
    ld l, e
    rst $38
    jr nz, jr_02b_407f

jr_02b_407f:
    nop
    ld d, h
    ld h, d
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop
    db $fd
    rst $38
    rst $38
    db $ec
    jp Jump_02b_5a3c


    and l
    inc a
    jp $fee6


    pop hl
    and l
    ld e, d
    ld sp, hl
    ld [c], a
    ldh a, [$e4]
    dec sp
    rst $00
    and a
    sbc a
    ld e, h
    rst $08
    add hl, sp
    rst $08
    dec sp
    ldh [$e5], a
    ret z

    ldh [rP1], a
    cp $d0

jr_02b_40ab:
    jp hl


    call c, $e5e3
    ld a, d
    di
    inc a
    di
    ld a, a
    cp h
    di
    cp h
    ld a, [$fcb5]
    or e
    cp $e1
    ei
    push af
    cp d
    ld a, [c]
    pop hl
    di
    inc a
    ld a, [$ec75]
    ld a, a
    di
    call z, $1cf3
    db $e3
    dec h
    jp c, $e1a9

    ld a, [c]
    ret z

    push hl
    nop
    pop bc
    ldh [$99], a
    pop hl
    rst $08
    add hl, sp
    ld e, a
    xor h
    rst $38
    scf
    rst $08
    inc sp
    rst $08
    jr c, jr_02b_40ab

    and h
    ld e, e
    cp [hl]
    ldh a, [$e2]
    dec sp
    ld e, a
    xor e
    ccf
    set 7, [hl]
    pop hl
    xor a
    ld a, a
    ld e, e
    rst $08
    dec sp
    rst $08
    dec sp
    ldh a, [rP1]
    cp $e3
    ld d, c
    rrca
    cp $ec
    add sp, -$1b
    ldh [$e7], a
    nop
    ld [hl], b
    ldh [rP1], a
    ldh [$e8], a
    ret nz

    ldh a, [$e3]
    sub a
    ld [c], a
    ld a, [$e6f0]
    pop hl
    rst $38
    pop hl
    db $10
    pop hl
    dec l
    rst $18
    rst $38
    scf
    di
    ld a, l
    pop bc
    cp $40
    rst $18
    ld b, b
    rst $38
    cp a
    ld h, b
    jp $f73c


    rst $38
    ld a, a
    ld [$fff7], sp
    ld [$5ff7], sp

jr_02b_412f:
    ldh [$fe], a
    nop
    rst $38
    ld bc, $c3ff
    inc a
    sbc d
    push hl
    db $fd
    ld b, e
    ld a, e

jr_02b_413c:
    ld a, [hl]
    rst $38
    cp l
    adc h
    rst $38
    adc h
    ei
    adc b
    ld a, a
    ld [$e0fe], sp
    pop bc
    db $db

jr_02b_414a:
    rst $20
    or $2c
    db $eb
    jr c, jr_02b_412f

    rst $38
    jr jr_02b_414a

    db $10
    rst $38
    db $10
    jp Jump_02b_723c


    rst $38
    db $fd
    db $ec
    rst $08
    ld a, [$fec3]
    ld b, e
    ld a, e
    rst $38
    ld b, d
    cp l
    add [hl]
    rst $30
    add h
    jp $573c


    ld a, a
    xor a
    dec de
    ld hl, sp+$6f
    ldh [$7f], a
    ret nz

    or d
    pop hl
    rst $38
    rst $28
    jr nz, jr_02b_413c

    inc a
    reti


    and a
    or [hl]
    adc $ff
    xor e
    ret c

    sub a
    ldh a, [$ae]
    ldh [rIE], a
    and c
    rst $38
    rst $28
    and c
    jp $993c


    rst $20
    ld l, d
    db $76
    rst $38
    push de
    inc e
    db $eb
    ld [$c4d5], sp
    ei
    ld [hl+], a
    rst $38
    ei
    ld [hl+], a
    jp $f23c


    db $fd
    rst $28
    rrca
    ld a, [hl]
    sub [hl]
    pop hl
    or l
    ld sp, $7ece
    or e
    ld a, $80
    pop bc
    rst $38
    db $fc
    rst $38
    db $fc
    add a
    ld a, h
    rlca
    db $fd
    ld b, $ef
    ei
    inc a
    ei
    inc c
    rst $10
    jp nz, $fe03

    rlca
    rst $38
    db $fc
    rrca
    ld hl, sp+$0f
    cp $0f
    cp $03
    and $c7
    jp nz, Jump_000_3fe0

    cp $e6
    ldh [$e3], a
    db $fc
    rrca
    ldh a, [$7f]
    rra
    pop af
    rra
    di
    ld e, $ff
    ld e, $e0
    db $e3
    rst $38
    rra
    ld hl, sp+$07
    db $fc
    rst $00
    db $fc
    rst $20
    inc a
    ei
    rst $00
    ld a, h
    ldh [$fc], a
    db $fc
    rst $28
    jr nz, @+$61

    or b
    rst $38
    scf
    ret nc

    cpl
    ret c

    dec sp
    ret z

    and [hl]
    ld e, h
    ei
    jp Jump_02b_603f


    ret nz

    ld bc, $01bd
    rst $38
    ld b, e
    rst $38
    rst $18
    ld b, e
    cp $63
    sbc l
    cp $43
    cp h
    db $fc
    ld d, b
    ret nz

    db $f4
    ret nz

    rst $38
    ld [$087e], sp
    rst $38
    adc c
    rst $30
    db $ed
    adc l
    db $76
    ld [c], a
    and b
    xor $00
    ld a, a
    ld bc, $ffff
    add c
    cp l
    add c
    ld a, [hl]
    jp nz, Jump_02b_43df

    rst $38
    cp h
    ld a, a
    jp $fb3c


    adc h
    cp d
    adc l
    rst $38
    ld [hl], h
    ld a, e
    call c, $ec13
    inc sp
    and l
    ld a, [hl-]
    rst $38
    jp $c3fc


    inc a
    rst $18
    jr nc, jr_02b_429d

    or b
    xor $b2
    pop hl
    scf
    call z, $b0a5
    ld [c], a
    call c, $f7bc
    rst $18
    or d
    rst $18
    jp nz, $02fe

    inc a
    ldh [$03], a
    db $fd
    db $fd
    cp $e0
    ldh [$c7], a
    db $f4
    rlca
    add sp, $0f
    call nc, $1bdf
    xor l
    inc sp
    call nz, $99fb
    and c
    ld l, a
    ld c, $ff
    cp e
    add d
    ld a, a
    jp nz, $82ba

    ld [hl], l
    rlca
    rst $28
    ret


    adc $b3
    ld a, h
    or b
    ldh [$0c], a
    ld_long $ff6d, a
    ret c

    rra
    or $07
    cp d
    add e
    ld l, l
    and $e5
    rst $18
    ld [hl], a
    and b
    cp $c8
    ldh [$fc], a
    pop hl
    ld [bc], a
    inc bc
    cp $df
    rrca
    ld [$0f0f], sp

jr_02b_429d:
    rrca
    ld b, $e5
    jr nz, @-$1e

    rst $38
    ccf
    ld hl, sp+$08
    ld hl, sp-$08
    ld hl, sp-$01
    ld bc, $fe7f
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    add hl, bc
    cp $c0
    rst $38
    db $10
    rra
    rra
    rra
    add a
    db $fc
    rra
    ld hl, sp-$01
    ld a, a
    ldh [rIE], a
    sbc h
    db $e4
    db $fc
    rlca
    db $fc
    cp a
    inc b
    db $fc
    db $fc
    db $fc
    rst $38
    ld bc, $e0fe
    ld e, $ff
    di
    ld e, $11
    rra
    ldh a, [$1f]
    inc c
    rrca
    xor e
    inc bc
    inc bc
    cp c

jr_02b_42de:
    ret nz

    ld hl, sp-$1a
    pop bc
    call nz, $e0e0
    jr jr_02b_42de

    ld hl, sp-$20
    ldh [rNR41], a
    and a
    and l
    ld e, h
    srl c
    ei
    sub $32
    nop
    and l
    db $f4
    ei
    db $ed
    ld a, [bc]
    ei
    rst $30
    db $ec
    dec sp
    inc l
    ldh a, [$85]
    cpl
    rst $18
    or a
    ld [hl], b
    rst $28
    ld e, a
    rst $00
    cp b
    sbc b
    ldh [$e8], a
    ld c, $fa
    db $e3
    di
    dec e
    add hl, de
    ldh [rIE], a
    or b
    add l
    cp b
    ld a, a
    push de
    ld b, a
    rst $38
    rst $38
    ld d, a
    db $db
    inc a
    db $76
    and l
    inc l
    rst $28
    rst $38
    inc a
    rst $38
    inc [hl]
    rst $20
    rst $38
    rst $38
    inc a
    nop
    ei
    add a
    add a
    sub b
    add a
    dec e
    cp $ab
    ld [c], a
    rst $38
    rst $38
    ld [$7ebd], a
    ld e, d
    jp $99bd


    rst $38
    cp $fe
    pop hl
    add c
    rst $38
    sbc c
    ld h, [hl]
    rst $38
    ld a, l
    cp $df
    ld a, [$fe83]
    sbc e
    db $fd
    db $f4
    ldh [rIE], a
    sbc c
    rst $28
    db $fd
    add c
    ld a, [hl]
    rst $38
    ldh [$e4], a
    sbc a
    rst $38
    sbc c
    xor e
    cp l
    sbc c
    sub $e0
    ld a, [hl]
    ldh [$e1], a
    db $fd
    ret nc

    ld [c], a
    db $fd
    rst $38
    sbc c
    ld a, [$7d83]
    cp $7e
    rst $38
    rst $38
    rst $38
    add c
    cp $9f
    cp $83
    db $fc
    sbc a
    cp $eb
    sbc a
    rst $38
    ret nc

    ldh [$fe], a
    ldh a, [$e6]
    push af
    sbc d
    di
    rst $20
    sbc h
    ld h, e
    db $fc
    and b
    db $e3
    db $e4
    ldh [$91], a
    cp a
    sbc c
    rst $38
    ld e, e
    pop bc
    cp [hl]
    ld a, a
    db $ec
    inc h
    ld a, b
    xor b
    rst $38
    ld a, $ee
    ld l, $e2
    ld a, $da
    xor [hl]
    ld e, d
    rst $38
    adc $3a
    adc $3a
    dec sp
    inc l
    ld a, [hl-]
    dec l
    ei
    inc a
    dec hl
    cp $e1
    dec a
    ld a, [hl+]
    dec sp
    inc l
    dec sp
    rst $38
    inc l
    ldh [$a0], a
    db $e3
    and e
    rst $20
    and h
    rst $20
    rst $38
    and l
    rst $38
    cp h
    cp a
    add c
    db $76
    ld a, [c]
    xor h
    rst $38
    ld h, h
    rlca
    dec b

jr_02b_43cb:
    rst $00
    push bc
    rst $20
    dec h
    ld h, a
    rst $38
    dec h
    rst $00
    ld b, l
    add a
    add l
    dec e
    add hl, de
    ld a, d
    db $ed
    ld h, e
    ldh [$e3], a
    rst $38
    cp h

Jump_02b_43df:
    xor $a0
    ld a, [$fa7e]
    ei
    cp l
    add c
    ldh [$e3], a
    rst $20
    dec h
    rst $00
    push bc
    rrca
    rst $38
    add hl, bc
    dec c
    add hl, bc
    rst $00
    push bc
    db $f4
    ld d, h
    ld l, e
    rst $38
    bit 3, [hl]
    adc $37
    rst $20
    ld l, $e6
    sub [hl]
    rst $38
    ld [hl], d
    ret z

    jr c, jr_02b_43cb

    inc a
    cp $00
    inc bc
    di
    inc bc
    cp [hl]
    db $fc
    ld [c], a
    cp $e1
    cp h
    nop
    cpl
    ld a, [hl+]
    rst $38
    sub $d3
    ld a, d
    ld [hl], e
    db $ec
    rst $20
    ld [hl], h
    ld h, a
    rst $38
    ld l, c
    ld c, [hl]
    inc de
    inc e
    inc hl
    inc a
    ld h, [hl]
    rst $38
    db $f4
    inc b
    push hl
    db $fc
    pop bc
    ld h, [hl]
    db $10
    ldh [$7e], a
    jp $e73c


    sbc [hl]
    cp $e1
    cp l
    ld h, [hl]
    rst $38
    ld b, d
    ld a, [c]
    ldh [rNR41], a
    ldh [$7e], a
    rst $38

Jump_02b_443f:
    di
    ld a, [hl]
    di
    cp $93
    cp e
    add d
    ld d, l
    rst $38
    add $bb
    ld a, h
    xor $ff
    rst $30
    sub c
    db $ed
    rst $38
    add c
    ld a, [$fa83]
    add e
    db $ed
    add c
    rst $30
    rst $38
    sub c
    ld l, [hl]
    rst $38
    ld h, e
    db $fc
    ld a, [$fc95]
    ld sp, hl
    sub e
    cp $e1
    nop
    db $e3
    db $76
    rst $38
    db $eb
    adc c
    rst $30
    rst $38
    add c
    db $eb
    add c
    rst $30
    sub l
    rst $38

jr_02b_4474:
    sbc l
    rst $30
    ld d, a
    sbc l

jr_02b_4478:
    ld h, d
    rst $38
    and b
    pop hl
    rst $28
    xor $e0
    rst $28
    jp nc, $fee0

    and b
    pop bc
    adc $3a
    ld e, [hl]
    cp d
    ld l, $e6
    inc a
    rst $38
    db $ec
    jr c, jr_02b_4478

    cp a
    ld l, a
    rst $28
    jr nz, jr_02b_4474

    rst $38
    ccf
    dec sp
    inc l
    inc a
    cpl
    ld a, [hl-]
    inc sp
    ld e, $ff
    dec de
    ld c, $0b
    rst $38
    ld a, [$02fb]
    db $fd
    rst $38
    cp $d8
    ld c, b
    ld [hl], c
    pop de
    or c
    sub c
    ldh [rIE], a
    and b
    ldh [$a0], a
    rst $38
    cp a
    cp a
    add b
    ld a, a
    db $fd
    rst $38
    db $76
    ret nz

    dec a
    rst $20
    push hl
    rlca
    dec b
    rlca
    rst $18
    dec b
    rst $38
    db $fd
    db $fd
    ld bc, $c0a2
    cp h
    rst $20
    rst $38
    and h
    db $e3
    and e
    ldh [$a0], a
    cp b
    sbc b
    ld e, a
    rst $18
    rst $00
    or a
    ld [hl], b
    rst $08

jr_02b_44db:
    ccf
    inc b
    db $e3
    rlca
    dec b
    rst $38
    dec e
    add hl, de
    ld a, [$ede3]
    ld c, $f3
    db $fc
    rst $18
    call nz, Call_02b_5a3c
    and [hl]
    dec a
    or b
    ld c, b
    ld e, b
    nop
    rst $38
    ld bc, $ff01
    rst $38
    ld e, d
    jp $e724


    rst $38
    or l
    ld h, [hl]
    db $db
    ld b, d
    ld l, [hl]
    rst $28
    and e
    cp h
    add e
    ld e, d
    ld h, l
    sbc c

jr_02b_4509:
    add b
    sub b
    ld b, [hl]
    nop
    rst $00
    jr nz, jr_02b_44db

    ld [hl+], a
    pop bc
    db $fd
    add hl, bc
    sbc [hl]
    ld b, b
    push bc
    ld [c], a
    and c
    cp l
    ld b, b
    jp nz, $e9e0

    ret nc

    and c
    sbc $a0
    ld e, $c8
    and b
    or [hl]
    add a
    ld l, l
    pop hl
    sbc $a0
    ret nc

    and b
    ret nc

    jp nz, $c0e6

    push bc
    inc h
    db $db
    and b
    push bc
    and b
    and $7f
    rst $38
    cp a
    or a
    add b
    rst $38
    cp a
    ld a, [de]
    pop bc
    db $e3
    and d
    cp $e1
    ei
    rst $38
    db $fc
    db $f4
    rlca
    ld a, [$0df3]
    add hl, bc
    add a
    rlca
    add l
    rst $00
    ld b, l
    cp $e1
    db $db
    ld b, d
    rst $38
    rst $38
    rst $30
    or $b0
    ld hl, $3dfb
    jp $e1fe


    and e
    ld e, a
    call nz, $c73c
    rst $38
    ccf
    cp l
    add c
    rst $00
    rst $00
    ld a, [hl]
    nop
    ld e, h
    adc $fe
    ldh [$83], a
    add e
    cp [hl]
    cp [hl]
    jr nz, jr_02b_4509

    ld hl, $c3bc
    ld a, [hl]
    cp $e1
    push bc
    ld a, [$3c23]
    ei
    db $fc
    ld h, b
    push hl
    rst $18
    and l

jr_02b_4589:
    add c
    ld a, [hl]
    jp Jump_000_10db


    ret nz

    ld h, e
    rst $38
    cp $48
    ret nz

    sub l

jr_02b_4595:
    xor e
    add c
    cp a
    add c
    ld [hl], l
    pop bc
    rst $28
    cp $4b
    or a
    ld a, [hl]
    ldh [$a1], a
    cp l
    add c
    ld e, d

jr_02b_45a5:
    ld de, $dac3
    add b
    ldh [$82], a
    ret nc

    and e
    and l
    xor $e0
    jr nz, jr_02b_4595

    nop
    and c
    rst $38
    ld l, l
    pop hl
    ld a, [hl-]
    db $e3
    ld e, h
    rst $00
    or [hl]
    add a
    call nz, $a100
    or b
    add c
    ld a, [hl]
    jp nc, $d4e0

jr_02b_45c6:
    add c
    or b
    pop hl
    srl h
    rst $38
    ld e, h
    or a
    ld l, e
    db $e3
    rst $38
    add c
    ld e, l
    pop bc
    ccf
    push de
    ld b, c
    db $eb
    ld c, c
    or [hl]
    ld a, a
    ld b, h

jr_02b_45dc:
    pop bc
    inc b
    db $e3
    rst $30
    rst $38
    cp [hl]
    cp [hl]
    jr nz, jr_02b_45a5

    add a
    add l
    dec c
    add hl, bc
    rst $38
    ld a, [$f4f3]
    rlca
    ld hl, sp-$01
    and l
    jp c, $c30f

    cp h
    ld b, e
    cp h
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$19
    ldh a, [rP1]
    add e
    ld h, d
    and b
    jr nz, jr_02b_45c6

    jr nz, jr_02b_4589

    rst $38
    inc a
    ld e, [hl]
    push bc
    and a
    ld a, h
    rst $00
    ld a, h
    cp $80
    ld b, l
    and b
    ld b, d
    ld hl, $7ec0
    ld a, [hl]
    jr nz, jr_02b_45dc

    rst $30
    pop af
    cp c
    add c
    rst $28
    adc a
    sbc $60
    db $fd
    rst $38
    ldh a, [$e1]
    rst $30
    sub c
    ld a, [hl]
    db $e3
    rst $38
    ld sp, hl
    db $fc
    db $10
    pop bc
    ld bc, $3ec0
    ld e, [hl]
    jp $83be


    cp $77
    sub e
    rst $38
    sub e
    ret nz

    ld h, b
    di
    rst $18
    ld a, $22
    nop
    rst $20
    add c
    rst $38
    sbc a
    ret nz

    ld h, b
    ldh [$e3], a
    cp $ff
    ld a, [hl]
    ldh a, [$e2]
    ldh [$f0], a
    pop hl
    sbc [hl]
    and c
    ret nc

    ldh [$c3], a
    ccf
    ld e, d
    and [hl]
    ei
    ccf
    jp nz, $e1fe

    and a
    ld e, d
    jp nz, $c33e

    rst $38
    ccf
    ei
    rst $38
    cp d
    ld l, $ff
    xor d
    rst $38
    db $dd
    ld [$e0fe], a
    xor [hl]
    cp [hl]
    ld [hl+], a
    ld d, [hl]
    ld bc, $22ab
    rst $38
    rst $38
    xor d
    db $eb
    and d
    rst $30
    or d
    rst $38
    xor d
    db $fc
    or $e0
    ld b, l
    nop
    db $eb
    ld [hl+], a
    rst $38
    db $eb
    db $eb
    inc hl
    ei
    rst $30
    di
    ld_long a, $ffe1
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    jr z, @+$01

    ld l, l
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $20
    rst $38
    ld e, l
    rst $00
    ld a, l
    rst $00
    rst $38
    ei
    rst $38
    xor e
    cp c
    adc [hl]
    ret nz

    ldh [$fe], a
    ld [c], a
    xor e
    adc [hl]
    ei
    ret nc

    ldh [$bf], a
    rst $38
    dec hl
    db $fd
    xor c
    cp $a8
    cp l

jr_02b_46bc:
    jr z, jr_02b_46bc

    rst $38
    ld [$abff], a
    rst $38
    cp a
    jp $dafc


    rst $30
    ld h, l
    db $fc
    ld b, e
    cp $e1
    push hl
    ld e, d
    jp $ef7c


    jp $e3fc


    ld a, h
    ld d, b

jr_02b_46d7:
    add b
    db $d3
    call c, $f393
    ld a, h
    db $e3
    nop
    and e
    ld d, b
    pop hl
    push af
    pop af
    ld l, $e3
    dec de
    ld a, [hl-]
    db $e3
    ld d, b
    and c
    rst $38
    inc a
    db $10
    db $e3
    inc l
    and c
    jr nz, jr_02b_46d7

    cp l
    ld a, h
    db $f4
    db $e3
    cp a
    add c
    rst $38
    ld a, c
    db $10
    ld [c], a
    inc a
    cpl
    ld a, [hl]
    and l
    rst $38
    rst $20
    call nc, $8140
    ld a, [$d0e0]
    ldh [rSVBK], a
    or b
    ld b, c
    inc c
    ld [c], a
    db $e4
    ret nz

    xor c
    add c
    rst $20
    rst $38
    db $db
    ld [c], a
    and d
    ccf
    ld e, d
    jp $81a5


    db $db
    sbc c
    adc e
    ld b, c
    ret nc

    db $e4
    inc l
    add b
    ld b, b
    ret nz

    pop bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ret nc

    ldh [$fd], a
    ret nc

    rst $38
    ldh [$fb], a
    ret nc

    or $07
    inc de
    jr nz, @+$11

    rra
    ld a, l
    rra
    or b
    add sp, -$80
    ldh a, [$c0]
    ldh a, [$f0]
    add b
    or $fd
    ld bc, $e3fe
    daa
    ccf
    ld b, b
    ld a, a
    adc a
    rst $38
    rst $38
    sbc [hl]
    rst $38
    ld [hl+], a
    rst $38
    ld l, h
    rst $38
    ld e, [hl]
    di
    rst $38
    sbc $f7
    adc b
    ld hl, sp+$04
    db $fc
    ld [c], a
    cp $f7
    ld a, [c]
    cp $89
    ld e, e
    ret nz

    push af
    sbc a
    rst $30
    rst $18
    or $60
    db $ed
    ld c, $03
    cp $e3
    ld sp, hl
    add hl, de
    db $e4
    inc a
    rst $38
    db $e4
    inc a
    ld [c], a
    ld a, $5e
    rst $30
    sbc $f7
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    add h
    rst $38
    add e
    rst $38

jr_02b_478d:
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_02b_47d1

    db $f4
    rst $18
    or $df
    push af
    inc b
    ldh a, [$e0]
    ld b, e
    ldh a, [$e0]
    ld b, $fe
    ld e, $fe
    ld hl, sp+$7a
    ldh [$fe], a
    ld [c], a
    jr jr_02b_478d

    ei
    rra
    ld a, [c]
    rra
    db $ed
    rst $38
    ccf
    db $e3
    ccf
    inc e
    rra
    ld de, $0e1f
    rst $38
    rrca
    rrca
    inc bc
    ld a, h
    ld c, a
    rst $38
    db $e3
    ld a, a
    rst $38
    pop af
    ld a, a
    ei
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    ld a, [hl]
    jp nc, Jump_02b_7ca0

    db $fc
    ld hl, sp-$38
    cp $8e

jr_02b_47d1:
    di
    ldh [$ce], a
    and $a0
    ei
    rst $38
    db $fd
    sub b
    rst $00
    cp b
    ldh [rSVBK], a
    ret nz

    di
    ld [hl], b
    ldh [$d0], a
    call $a18e
    rst $38
    rst $38
    ret nz

    ld a, a
    ld [hl], a
    ld b, b
    ld a, a
    add b
    sub h
    and b
    ld b, c
    ld a, a
    db $fd
    call z, $dde0
    rst $38
    dec a
    nop
    ld sp, $c1ff
    add h
    and b
    jp nz, $ff7e

    ldh a, [$90]
    ldh a, [$d0]
    ldh a, [$b0]
    ld hl, sp-$58
    rst $18
    rst $38
    ld c, b
    rst $38
    ld d, b
    rst $28
    jp nz, $f0e0

    nop
    db $db
    di
    inc bc
    ld d, d
    add b
    rrca
    ld [$c0d2], sp
    ld hl, sp-$01
    ei
    rlca
    rlca
    ld e, a
    and b
    pop bc
    ccf
    ld [c], a
    rra
    cp $ff
    ld [de], a
    cp $fe
    cp $03
    rst $38
    db $fc
    db $fc
    ld a, [hl]
    rst $28
    nop
    add e
    db $fc
    add a
    ld hl, sp-$01
    adc b
    xor d
    pop hl
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca

Call_02b_4841:
    nop
    rst $08
    ret nz

    cpl
    rst $28
    ldh [$1f], a
    ldh a, [rNR10]
    or l
    ret nz

    rra
    rst $38
    ldh [$c0], a
    add b
    xor $30
    rst $18
    nop
    rst $18
    or b
    rst $38
    nop
    rst $18
    cp b
    ld [c], a
    inc bc
    inc c
    db $ed
    rrca
    or b
    push hl
    db $fc
    inc c
    add e
    ret nz

    cp $3e
    cp $ee
    add b
    db $fd
    db $10
    rra

jr_02b_486e:
    jr nz, jr_02b_486e

    and b
    ld b, b
    ld a, a
    add c
    ld a, [hl]
    ld b, b
    ret nz

    add a
    rst $38
    adc a
    rst $38
    inc e
    db $fc
    ld c, d
    pop bc
    rst $30
    ld l, l
    rst $38
    reti


    ld a, [c]
    ldh [rIF], a
    ld sp, hl
    rrca
    ei
    cp $48
    push af
    pop af
    ld bc, $01f1
    ld a, [c]
    inc bc
    ld a, [c]
    rst $38
    inc bc
    sub e
    rst $38
    xor l
    rst $38
    and [hl]
    rst $38
    and d
    rst $28
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    db $d3
    ld h, b
    db $ed
    rst $28
    adc a
    xor a
    ei
    adc [hl]
    ei
    nop
    ldh a, [$a0]
    nop
    ld a, h
    ret nz

    ld [bc], a
    db $fc
    ld a, b
    ret nz

    ld c, d
    pop bc
    ldh a, [$c0]
    ld [hl], b
    ret nz

    ld c, a
    ret nz

    rst $30
    adc a
    add b
    adc a
    ld a, [$f2a0]
    inc bc
    pop af
    ld bc, $f0ed
    jp nz, $0fe0

    inc bc
    ld c, [hl]
    and b
    rlca
    dec bc
    rrca
    rst $38
    cp $fb
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    db $fc
    ld e, c
    rst $38
    nop
    ret nz

    cp $a1
    jp nz, Jump_02b_7cfe

    ret nz

    ld c, [hl]
    reti


    ld h, c
    call c, $cc00
    cp $a2
    ldh a, [$80]
    ld [$c046], sp
    inc c
    rlca
    xor e
    rrca
    inc bc
    nop
    rst $00
    ld a, a
    cp $e0
    ld b, b
    ld d, h
    ret nz

    add c
    inc e
    ld d, d
    ret nz

    nop
    rst $00
    add hl, de
    rst $38
    pop hl
    nop
    jp $ce80


    ld c, b
    pop hl
    rst $38
    db $f4
    rlca
    inc c
    rlca
    rlca
    rlca
    db $fc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, a
    ld a, a
    rst $38
    pop hl
    rra
    ld a, [c]
    rst $20
    rrca
    cp $0a
    nop
    rst $18
    nop
    jp nz, Jump_000_00ff

    db $fd
    db $fd
    inc bc
    daa
    ldh [$03], a
    or [hl]
    ld a, e
    ld l, a
    rst $18
    sbc c
    rst $38
    cp $bf
    rst $28
    rst $38
    nop
    cp a
    ret nz

    ld a, a
    rst $38
    ret nz

    rst $38
    ret nz

    ld l, l
    sbc $fa
    rst $30
    dec e
    rst $38
    rst $38
    db $fd
    rst $30
    cp e
    xor $b5
    cp $53
    cp $fe
    ldh [$b5], a
    ld a, [hl]
    rst $10
    ccf
    jp hl


    ld e, $f7
    rst $38
    rrca
    ld e, l
    rst $30
    ld c, l
    rst $38
    ld c, d
    rst $38

jr_02b_4961:
    ld c, e
    rst $38
    cp $2d
    cp $eb
    db $fc
    rla
    ld hl, sp-$11
    rst $38
    ldh a, [$fe]
    inc bc
    ei
    rlca
    db $fd
    ld b, $f7
    rst $38
    rrca
    ld sp, hl
    ld c, $ec
    rra
    pop af
    ld e, $ff
    rst $38
    rra
    ld a, a
    ret nz

    rst $18
    ldh [$3f], a
    ldh [$ef], a
    ld e, a
    ldh a, [$1f]
    ldh a, [$37]
    ld hl, sp+$6f
    and b
    ld hl, sp-$60
    and $5d
    ld a, d
    and b
    ldh [$dc], a
    cp a
    xor a

jr_02b_4998:
    and b
    ld [$a03f], a
    ld [c], a
    rst $18
    rst $38
    ld d, a
    rst $38
    jp nc, $a07a

    and $77
    xor l
    ld a, a
    rst $38
    ld l, d
    ld a, a
    set 3, [hl]
    dec l
    ld a, [hl]
    and b
    ldh [rHDMA5], a
    ld a, b
    and b
    add sp, $0c
    and b
    ldh [rNR23], a
    and b
    db $e4
    ld h, b
    and b
    ldh [$dd], a
    jr nc, jr_02b_4961

    ldh [rNR23], a
    rst $38
    ld hl, sp+$10
    ld h, b
    or l
    cp h
    rst $38
    ei
    db $f4
    rst $10
    call nc, $bdd5
    cp b
    and e
    rst $00
    jr nz, jr_02b_4998

    inc l
    sbc [hl]
    ccf
    db $ec
    db $eb
    nop
    rst $30
    ld a, [c]
    rst $38
    cp $00
    pop hl
    cp l
    xor $b7
    rst $38
    ld d, e
    cp $d3
    db $fd
    ld a, a
    nop
    push hl
    dec a
    rst $30
    xor l
    rst $38
    ld a, [hl+]
    rst $38
    dec b
    xor e
    nop
    ldh [$cb], a
    nop
    rst $38
    nop
    ldh [$7e], a
    rst $38
    nop
    ccf
    nop
    ccf
    db $fc
    nop
    ccf
    nop
    dec [hl]
    rst $08
    ccf
    ld e, [hl]
    xor b
    ccf
    jp z, $fe7e

    pop hl
    xor a
    ld e, d
    adc $38
    rst $08
    ccf
    ld l, $20
    dec a
    adc d
    ld b, b
    ld hl, $8aef
    cp $aa
    ld d, b
    jr nz, @+$01

    ld [bc], a
    ld a, [hl]
    ld b, b
    ld hl, $a8fd
    cp [hl]
    ld a, [hl+]
    rst $38
    ld l, e
    ld bc, $ff20
    db $fd
    rst $10
    ld b, l
    db $fd
    ld d, a
    db $fd
    ld e, a
    db $fd
    rst $18
    ld b, a
    db $fd
    ld d, a
    rst $10
    ld b, l
    ld h, e
    ld h, c
    ld d, l
    ld de, $ff2f
    ld d, l
    rst $38
    ld [hl], l
    cp $e0
    ld d, l
    or $e0
    rst $08
    ld bc, $68ff
    cp a
    dec l
    rst $18
    dec c
    cp a
    dec c
    rst $18
    ld sp, hl
    ld c, l
    add sp, $00
    ret nc

    nop
    ld_long a, $ff88
    cp d
    ld a, [$88e7]
    db $fd
    cp h
    ld a, [$fae1]
    ld b, b
    db $fc
    ld a, [$fb8d]
    db $fc
    db $d3
    cp $e1
    push af
    jp c, $dcf3

    di
    ld bc, $70fc
    adc $00
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld h, $00
    nop
    nop
    db $ed
    ld bc, $e0ff
    jr nc, jr_02b_4abc

    ld a, [$01e1]
    ld bc, $c932
    inc sp
    ld hl, sp-$1d
    ld a, [$00f1]
    rst $38
    db $f4
    ret nz

    pop hl
    ld b, b
    ld b, c
    db $db
    ld h, b
    ld h, c
    cp b
    pop hl
    ld b, d
    ld b, e
    ld hl, sp-$1d
    ld bc, $ff01
    dec sp
    ld e, c
    ld c, a
    ccf
    ld e, h
    add hl, sp
    ld e, [hl]
    ld e, a
    rst $38
    ld c, l
    add hl, sp
    ld e, [hl]
    ld c, d
    ld e, c
    ld c, a
    ld e, l
    ld l, [hl]
    sbc $c0

jr_02b_4abc:
    ei
    ld d, b
    ld d, c
    ld [hl], b

Call_02b_4ac0:
    ld [hl], c
    ld a, b
    pop hl
    ld d, d
    ld d, e
    ld hl, sp-$08
    db $e3
    add b
    rst $38
    add b
    db $eb
    db $10
    ld de, $1312
    inc d
    cp [hl]
    scf
    ldh [$15], a
    ld d, $17
    jr jr_02b_4af2

    dec [hl]
    db $e3
    ld l, a
    rst $30
    ld c, [hl]
    add hl, sp
    ld e, h
    add [hl]
    ldh [rSB], a
    dec sp
    ld c, l
    ld e, a
    ei
    ld a, [hl-]
    ld l, a
    ld b, b
    db $fd
    jr nz, jr_02b_4b0e

    ld [hl+], a
    inc hl
    inc h
    cp [hl]
    rst $30

jr_02b_4af2:
    ret nz

    dec h
    ld h, $27
    jr z, jr_02b_4b21

    db $fd
    ret


    ld [hl-], a
    ld e, c
    inc sp
    push hl
    push bc
    nop
    ld hl, sp+$02
    inc bc
    rst $38
    ld [$ae04], a
    ret nz

    cp h
    db $ed
    ld [c], a
    rst $30
    ldh [rSCY], a

jr_02b_4b0e:
    ld b, e
    ld b, b
    ld b, c
    ld b, b
    cp $09
    rst $38
    ld a, [bc]
    sub b
    sub c
    sub d
    sub e
    dec bc
    ld a, [bc]
    dec bc
    ld a, a
    ld a, [bc]
    or b
    or c

jr_02b_4b21:
    or d
    or e
    dec bc
    dec b
    ld l, [hl]
    ret nz

    ld sp, hl
    add hl, bc
    xor $e1
    rst $30
    ldh [rHDMA2], a
    ld d, e
    ld d, b
    ld d, c
    ld e, l
    ld a, l
    ld e, [hl]
    ret nz

    db $fd
    dec bc
    sub h
    sub l
    sub [hl]
    sub a
    pop bc
    ldh [$3f], a
    dec bc
    or h
    or l
    or [hl]
    or a
    ld a, [bc]
    ret nz

    ld [c], a
    xor $e1
    ld a, b
    or a
    pop hl
    ret nz

    rst $18
    add b
    pop hl
    sbc b
    sbc c
    sbc d
    sbc e
    add b
    pop hl
    rst $08
    cp b
    cp c
    cp d
    cp e
    add b
    db $e3
    xor $e1
    dec b
    ld bc, $5dff
    dec sp
    ld e, c
    ld e, h
    dec a
    ld bc, $8f01
    cp l
    ld a, c
    add b
    db $fc
    sbc h
    sbc l
    sbc [hl]
    sbc a
    add b
    pop hl
    cp h
    add a
    cp l
    cp [hl]
    cp a
    add b
    db $e3
    xor $e1
    add b
    rst $38
    nop
    push hl
    and b
    rst $30
    and c
    and d
    and e
    nop
    pop hl
    ret nz

    pop bc
    jp nz, Jump_02b_7cc3

    nop
    db $e3
    xor $e1
    dec b
    ld l, h
    ld e, c
    ld e, a
    adc b
    add b
    ldh [$bd], a
    add hl, sp
    nop
    cp $a4
    and l
    and [hl]
    and a
    nop
    pop hl
    call nz, $c5e7
    add $c7
    nop
    db $e3
    xor $e1
    dec b
    ld e, l
    ld e, a
    rst $38
    ld e, d
    dec a
    ld e, h
    ld bc, $4d5a
    add hl, sp
    ld l, h
    rst $30
    dec a
    ld e, h
    ld l, [hl]
    add b
    reti


    xor b
    xor c
    xor d
    xor e
    ld e, $80
    pop bc
    ret z

    ret


    jp z, $80cb

    jp $e1ee


    ld b, b
    ld [c], a
    ld hl, sp+$23
    ret nz

    cpl
    pop bc
    ld b, b
    jp c, $ac0d

    xor l
    xor [hl]
    xor a
    rst $38
    inc c
    dec c
    inc c
    dec c
    call z, $cecd
    rst $08
    ld [hl], c
    inc c
    ld b, b
    jp nz, $e1ee

    nop
    ld [c], a
    add hl, bc
    ret nc

    pop de
    ld hl, sp-$3d
    sub $c0
    sub a
    ld [$ff07], sp
    ld [$0006], a
    pop bc
    ld c, $1a
    sbc e
    dec de
    ld c, $c0
    db $e3
    jp nc, $c0d3

    db $fd
    ld a, $81
    ld e, a
    cp l
    ld e, d
    ld b, [hl]
    add h
    inc a
    ld e, c
    ld l, d
    ld c, a
    xor l
    and b
    rrca
    or a
    ld a, [hl+]
    dec hl
    rrca
    add b
    db $e3
    call nc, $c0d5
    rst $38
    ld a, c
    rst $38
    ld bc, $f1f0
    ld a, [c]
    di
    db $f4
    push af
    or $01
    rst $30
    push af
    ldh [$ef], a
    ld h, c
    ld l, l
    ld [c], a
    ld [hl], a
    pop hl
    ld h, e
    pop hl
    ld hl, sp-$1e
    ret nz

    db $fc
    rst $38
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    nop
    ret nz

    db $e4
    ld b, b
    sbc a
    ld b, b
    db $ec
    adc b
    ld l, a
    ld l, h
    ld l, l
    add b
    ld [hl], a
    sub h
    ld l, a
    ld l, h
    ld [hl], c
    nop
    add b
    rst $38
    inc b
    ld l, e
    ld l, h
    ld l, l
    nop
    ld a, b
    sub h
    ld l, [hl]
    or d
    ld b, e
    ld l, d
    ld h, d
    ld l, l
    ld h, b
    nop
    nop
    rst $38
    sub d
    ld h, [hl]
    add c
    ld c, d
    ld l, d
    ld h, d
    ld l, l
    ld h, b
    ret nz

    db $fc
    sub h
    ld h, l
    add c
    ld b, c
    nop
    ld b, c
    ld b, [hl]
    ld l, h
    ld l, a
    ld b, b
    ld d, [hl]
    sub h
    ld h, l
    add c
    ld b, c
    sub h
    ld h, h
    ld l, h
    ld [hl], c
    ret nz

    rst $30
    nop
    sub h
    ld l, a
    ld l, h
    ld [hl], c
    add b
    rst $30
    sub h
    ld h, d
    sub l
    ld l, c
    add b
    ld [c], a
    ld l, h
    ld l, l
    ld b, b
    rst $30
    add b
    sub h
    ld l, a
    ld l, h
    ld [hl], c
    nop
    rst $30
    sub h
    ld l, a
    ld l, h
    ld [hl], c
    ret nz

    rst $10
    sub h
    ld h, d
    ccf
    rrca
    ld e, h
    dec a
    add hl, sp
    ld e, [hl]
    sub h
    ld h, l
    ld l, h
    ld [hl], c
    add b
    rst $10
    sub h
    ld l, a
    jr jr_02b_4d1f

    ld [hl], c
    ld b, b
    rst $10
    sub h
    ld h, a
    sub $d7
    adc h
    ld b, l
    ld l, h
    ld l, a
    nop
    rst $10
    scf
    ld c, $1c
    dec e
    sub h
    ld h, h
    ret c

    reti


    ld c, h
    ld b, l
    ld l, h
    ld l, a
    ld l, [hl]
    ret nz

    or a
    rrca
    inc l
    dec l
    sub h
    ld h, h
    jp c, Jump_000_0cdb

    ld b, a
    inc bc
    adc a
    ld bc, $24c1
    rst $30
    ldh [$80], a
    ld a, [de]
    sub h
    ld [hl], b
    ld l, h
    ld [hl], c
    ret nz

    sbc a
    ldh a, [$86]
    ld l, e
    ld l, h
    ld l, l
    ret nz

    ld d, l
    ld e, d
    add l
    jr jr_02b_4d0b

    inc e
    dec e
    di
    ld e, $1f
    add hl, sp
    jp z, $438d

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    rst $20

Jump_02b_4d00:
    dec a
    ld a, $3f
    add b
    ld d, l
    ld e, d
    add l
    jr z, jr_02b_4d32

    inc l
    rst $38

jr_02b_4d0b:
    dec l
    ld l, $2f
    ld c, a
    dec a
    ld l, e
    ld e, [hl]
    ld bc, $5ee7
    ld c, d
    ld c, [hl]
    jp z, Jump_02b_4d00

    ld b, l
    ld c, c
    ld c, d
    ld c, e
    rst $08

jr_02b_4d1f:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, b
    ld d, l
    jr nz, @+$63

    inc [hl]
    dec [hl]
    cp $20
    ld b, l
    ld e, [hl]
    ld e, h
    ld l, h
    ld bc, $593e

jr_02b_4d32:
    ld e, h
    rst $18
    ld bc, $5d7a
    ld e, [hl]
    ld l, [hl]
    dec c
    ld b, h
    ld e, c
    ld e, d
    sbc a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    nop
    ld d, l
    dec bc
    add c
    ld b, h
    pop af
    ld b, l
    ldh [rNR42], a
    db $76
    ld [hl], c
    jp z, Jump_02b_6920

    ld l, d
    ld l, e
    ld l, h
    rst $30
    ld l, l
    ld l, [hl]
    ld l, a
    ret nz

    dec [hl]
    ld d, d
    ld d, e
    ld c, a
    inc a
    rst $28
    ld d, h
    ld d, l
    ld e, h
    inc a
    or [hl]
    inc hl
    ld l, a
    ld e, d
    add hl, sp
    di
    ld c, l
    ld c, [hl]
    scf
    ld l, b
    adc d
    jr nz, @+$7b

    ld a, d
    ld a, e
    ld a, h
    rst $20
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    dec [hl]
    pop hl
    db $e4
    adc c
    adc d
    adc e
    sbc [hl]
    ret nz

    ld [c], a
    inc a
    ld e, a
    ld c, a
    dec a
    ret nz

    db $eb
    and $e0
    adc h
    rst $00
    adc l
    adc [hl]
    adc a
    ld b, b
    dec [hl]
    db $e4
    rst $20
    add b
    ld [c], a
    ld c, l
    ld c, d
    daa
    ld c, a
    ld c, h
    ld e, l
    ld b, b
    ld [$fcfd], a
    ld c, a
    ld b, [hl]
    ldh [$f6], a
    dec b
    ld a, a
    ld l, a
    ld e, d
    dec a
    add hl, sp
    dec sp
    ld c, c
    adc b
    ret nz

    ldh [$1f], a
    add hl, sp
    ld e, l
    ld e, [hl]
    ld c, l
    dec a
    ld [hl], h
    ld b, b
    ld b, c
    ld bc, $e5fc
    ld hl, sp-$42
    inc de
    ld b, $e1
    and h
    inc bc
    ld l, a
    ld e, d
    ld c, d
    ld e, [hl]
    dec sp
    cp a
    ld c, c
    ld bc, $5f5a
    ld e, [hl]
    ld e, [hl]
    xor h
    jr nz, jr_02b_4e2e

    db $e3
    ld e, h
    ld e, l
    cp a
    ldh [rSTAT], a
    ld bc, $81a9
    add hl, bc
    ldh [$e1], a
    dec c
    dec b
    ld a, [hl]
    inc de
    ld e, [hl]
    ld c, c
    ld h, [hl]
    dec b
    ld de, $59a2
    nop
    ld [hl], h
    ld bc, $5238
    dec b
    ld b, c
    ld bc, $81a9
    add hl, bc
    ld [c], a
    db $e3
    ret nz

    db $f4
    jp c, $8325

    nop
    nop
    ld a, h
    dec b
    dec a
    ld bc, $e6c0
    ld b, c
    nop
    xor c
    add c
    add hl, bc
    inc sp
    db $e4
    push hl
    add b
    db $f4
    jp c, Jump_000_0025

    nop
    ld a, h
    dec b
    sub $89
    ld a, b
    ld b, c
    ld bc, $e5fc
    cp a
    scf
    inc b
    dec b
    ld b, $07
    ld a, $05
    db $fd
    adc b
    ld d, b
    call nz, Call_000_0908
    ld a, [bc]
    dec bc
    inc c
    dec c
    inc bc
    ld c, $0f
    ldh [$e5], a

jr_02b_4e2e:
    ldh a, [$e6]
    ret nz

    sub h
    cp d
    ld hl, $21f6
    ld [hl-], a
    ld b, c
    ld e, $6e
    ld b, c
    jr jr_02b_4e56

    ld a, [de]
    dec de
    xor [hl]
    add c
    and b
    add a
    ldh a, [$e3]
    ldh [$c0], a
    sub l
    ld a, d
    ld b, c
    or [hl]
    ld b, c
    ld a, [c]
    ld b, c
    ld l, $61
    jr z, jr_02b_4e7b

    ld a, [hl+]
    pop hl
    dec hl
    xor [hl]

jr_02b_4e56:
    add c
    and b
    add a
    ldh a, [$e3]
    ld hl, sp+$6d
    jr nc, @+$33

    ld [hl-], a
    rra
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld e, b
    ld hl, $2194
    ret nc

    ld hl, $0cc2
    ld b, c
    jr c, jr_02b_4eb9

    add h
    ldh [$e5], a
    ldh a, [$e5]
    cp b
    ld l, l
    ld b, b
    ld b, c
    ccf

jr_02b_4e7b:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    jr jr_02b_4ec4

    ld d, h
    ld b, c
    add h
    sub b
    ld b, c
    call z, Call_02b_4841
    ld c, b
    add h
    ldh [$e5], a
    ldh a, [$e5]
    ld a, b
    ld l, l
    ld d, b
    rst $38
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ret nc

    rst $38
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    rst $38
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ld e, b
    ldh a, [rOBP0]
    add h
    ldh [$e5], a
    ldh a, [$e5]
    jr c, jr_02b_4f25

    ld h, b

jr_02b_4eb9:
    ld h, c
    ld h, d
    ld h, e
    rst $38
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ldh [$e1], a
    ld [c], a

jr_02b_4ec4:
    db $e3
    rst $38
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$1feb], a
    db $ec
    db $ed
    xor $ef
    ld l, b
    ld c, b
    add h
    ldh [$e5], a
    ldh a, [$e5]
    cp $f8
    ld c, l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    db $fd
    ld [hl], a
    jp nc, $f845

    ld sp, hl
    ld a, [$fcfb]
    db $fd
    rlca
    cp $ff
    ld a, b
    ld c, b
    add h
    ldh [$e5], a
    ldh a, [$e5]
    cp b
    ld c, l
    ld [$00cd], sp
    db $10
    call $eee0
    ld [hl], a
    ld c, h
    ld [$10cd], sp
    call $ade8
    jr c, @+$4f

    ld [$00cd], sp
    db $10
    call $ade8
    ld hl, sp+$2d
    ld [$10cd], sp
    call $ade8
    cp b
    dec l
    ld [$00cd], sp
    db $10
    call $ade8
    ld a, b
    dec l

jr_02b_4f25:
    ld [$10cd], sp
    call $ade8
    jr c, jr_02b_4f5a

    ld [$00cd], sp
    db $10
    call $ade8
    ld hl, sp+$0d
    ld [$10cd], sp
    call $ade8
    ld b, b
    dec c
    nop
    nop
    nop
    add hl, bc
    adc d
    rst $38
    rst $38
    db $e3
    ld [c], a
    ld a, [bc]
    rst $38
    db $f4
    add $ff
    jp $c0e1


    rst $38
    nop
    add b
    rst $38
    ret nz

    rst $30
    or a
    push hl
    ld hl, sp-$16
    rst $38

jr_02b_4f5a:
    rst $38
    ret nz

    or $8b
    add sp, -$80
    rst $38
    cp h
    ld c, e
    ei
    ret nz

    rst $38
    adc d
    adc d
    inc c
    ld c, $ff
    ldh [$0c], a
    ret nz

    rst $38
    ldh [$f8], a
    ld [c], a
    push af
    jp nz, $e1ee

    ret nz

    rst $38
    ret nz

    cp $8a
    adc d
    ld bc, $ffca
    ldh [$c0], a
    rst $38
    add b
    db $f4
    dec de
    jp hl


    ret nz

    rst $38
    add b
    ld a, [c]
    ld b, b
    rst $38
    nop
    nop
    rst $30
    sbc a
    call nz, $a3dd
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    adc $5d
    and [hl]
    jr nc, jr_02b_4f9f

jr_02b_4f9f:
    ret c

    ld b, c
    pop bc
    db $fc
    rst $20
    ret nz

    db $ec
    dec c
    dec c
    ld b, b
    cp $03
    or b
    ld a, b
    ret nz

    rst $38
    add b
    xor e
    cp b
    add l
    jp z, $4a4a

    ld a, [hl+]
    ld l, l
    push hl
    ld e, b
    ret nz

    rst $38
    ld l, h
    pop hl
    rst $18
    and c
    ld a, [bc]
    jp z, $e6f2

    ld a, [bc]
    jp nc, Jump_000_00a3

    ret


    jp z, $9f80

    ld [hl+], a
    and $53
    call nz, $9f40
    ret nz

    sbc a
    ret nz

    rst $38
    or b
    di
    nop
    xor h
    db $f4
    add $ff
    ld l, h
    ei
    jp z, Jump_02b_6cff

    rst $08
    ld a, [c]
    pop af
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ld b, b
    rst $38
    call nz, $82e7
    ld h, c
    db $ec
    sbc a
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
    ld [hl], h

jr_02b_500c:
    ret nz

    rst $38
    ret nz

    db $e4
    ld c, d
    rst $38
    ldh [$0a], a
    rrca
    rrca
    ld hl, sp-$1d
    inc c
    ld l, h
    ld [hl], c
    add b
    ld hl, sp+$0f
    rrca
    add b
    db $e4
    ret nz

    ldh [$c0], a
    cp a
    ret nz

    rst $38
    add b
    db $ec
    ld h, h
    ld l, c
    inc b
    ld b, b
    cp a
    ld l, h
    ld a, a
    ret nz

    rst $38
    ld l, h
    ld a, [hl]
    jp z, $0fff

    db $10
    rst $38
    ldh [$0d], a
    rst $38
    ret nz

    rst $38
    inc d
    ld h, b
    ld a, [hl+]
    ret nz

    rst $38
    nop
    ld [hl], a
    db $ec
    ld b, [hl]
    jr nz, jr_02b_500c

    rst $38
    ret nz

    ld c, d
    call nc, $c0ff
    rst $38
    jp c, Jump_000_2ae2

    jp z, Jump_02b_7dff

    ld e, [hl]
    nop
    rst $38
    rst $38
    ld l, a
    add sp, $43
    and c
    ld b, c
    and b
    cp a
    rst $38

jr_02b_5062:
    ret nz

    jp nc, $e3be

    db $fc
    db $e3
    jr nz, jr_02b_5062

    dec hl
    xor $eb
    ret nz

    ld sp, hl
    add a
    ld [$2753], a
    ld c, d
    add c
    ld bc, $82e9
    inc bc
    inc c
    inc c
    inc de
    rst $38
    xor h
    pop af
    ret nz

    cp $fd
    db $fc
    ret nz

    rst $38
    rst $38
    rst $38
    db $10
    ei
    ld a, [$65d7]
    sub h
    ld h, c
    db $fc
    jp hl


    dec c
    rst $38
    db $ec
    xor a
    ld h, l
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
    inc b
    ret nz

    rst $38
    ret nz

    rst $30
    rrca
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    ld a, [$e5c8]
    ld [bc], a
    ld h, c
    sbc h
    cp $41
    or e
    db $e3
    ld c, $0c
    dec bc
    rst $38
    db $e4
    cp b
    push hl
    ld [$ff08], sp
    db $e4
    ret nz

    rst $38
    pop bc
    ld [c], a
    ld c, $c0
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    push af
    add hl, sp
    ld c, $80
    rst $28
    or e
    nop
    ld [$0e08], sp
    ret nz

    rst $38
    add $04
    nop
    ret nz

    ld a, [c]
    ret nz

    rst $18
    add b
    ld sp, hl
    dec a
    ldh [$80], a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    ld a, [c]
    ld bc, $0108
    ld [c], a
    add b
    xor $00
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
    cp $0b
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f1], a
    ret nc

    push af
    di
    inc bc
    cp a
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    xor b
    push hl
    adc a
    ld a, a
    add b
    ld l, a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    sub b
    rst $38
    ldh [$e0], a
    push hl
    cp [hl]
    db $e3
    ld [hl], b
    rst $20
    cp [hl]
    db $e3
    ret nz

    ld hl, sp+$01
    rrca
    ld bc, $0efb
    inc bc
    and b
    ldh [rTAC], a
    jr jr_02b_51ef

    ld h, b
    ld a, a
    rst $20
    add b
    rst $38
    nop
    cp $e2

jr_02b_51d8:
    sbc b
    ldh [$80], a
    ld [hl], b
    ret nz

    rst $18
    jr c, jr_02b_51d8

    daa
    cp $01
    xor $e0
    ret nz

    rst $38
    add d
    add b
    ld [$fe80], a
    ldh [rNR10], a
    jp hl


jr_02b_51ef:
    cp [hl]
    ldh [$60], a
    ld [c], a
    cp [hl]
    ldh [$e0], a
    sbc h
    cp [hl]
    db $e4
    ret c

    db $e3
    ld [hl], b
    ret nz

    ccf
    cp [hl]
    db $e4
    ld b, b
    db $ec
    add b
    cp $ca
    db $e4
    ld bc, $00f0
    pop af
    ld bc, $02f3
    rst $38
    rst $30
    dec b
    add c
    rst $38
    inc de
    cp $33
    cp $ff
    add hl, sp
    rst $28
    cp a
    or $ff
    ldh [rIE], a
    ld a, $ff
    rst $38
    push bc
    jp $f1fe


    ccf
    pop af
    rra
    rst $38
    pop af
    ccf
    ld a, [$fe5e]
    ld b, $fe
    cp $93
    rst $38
    ld b, l
    and b
    jp nc, $e046

    pop af
    cp [hl]
    ldh [$ec], a
    pop bc
    ret nz

    db $fd
    ld a, a
    cp [hl]
    and $e6
    rst $38
    ret z

    rst $38
    cp $07
    db $fd
    db $fc
    cp [hl]
    db $e4
    rra
    ld a, [$fe4e]
    ld h, $fe
    cp l
    cp $60
    call Call_000_030e
    inc c
    rlca
    cp $e1
    db $f4
    rst $38
    rlca
    ld a, [c]
    inc bc
    di
    inc bc
    di
    ld [bc], a
    ld bc, $ff7f
    inc bc
    cp $83
    cp $87
    db $fc
    cp $e1
    rst $38
    ld c, a
    ld hl, sp-$31
    ld hl, sp-$08
    ccf
    db $fc
    rlca
    ei
    cp $03
    ld l, l
    ldh [rWX], a
    cp $03
    rst $38
    dec a
    rst $28
    rst $38
    ld l, c
    ld [hl], b
    ret nz

    cp $e3
    ld c, a
    ret nz

    adc a
    xor l
    add b
    cp $e1
    ld c, $03
    cp [hl]
    db $e3
    db $f4
    cp [hl]
    db $e4
    nop
    db $ed
    rst $38
    cp [hl]
    db $eb
    ret nz

    rst $38
    cp [hl]
    db $e4
    inc de
    cp $63
    ld [c], a
    cp b
    ldh [$03], a
    or d

jr_02b_52a9:
    pop bc
    ret nz

    db $e3
    cp [hl]
    db $e3
    rst $38
    ld a, [bc]
    rst $38
    db $fd
    add hl, bc
    db $fc
    pop hl
    rra
    inc de
    ccf
    ld hl, $223f
    rst $38
    ld a, a
    ld b, d
    rst $38
    ld b, l
    rst $38
    and d
    rst $38
    ld e, h
    rst $38
    rst $38
    ld b, h
    rst $38
    jp nz, Jump_000_21ff

    rst $38
    daa
    rst $38
    cp $13
    rst $38
    ld b, [hl]
    rst $38
    adc b
    rst $38
    ld [hl], b
    ld l, $ea
    ldh [$86], a
    rst $38
    ld [$e030], sp
    sub b
    adc d
    db $e3
    nop
    rst $00
    db $f4
    jp z, $fec1

    pop hl
    dec c
    add [hl]
    jp $ff00


    ld d, c
    rst $38
    ld e, a
    pop de
    rst $38
    ld [hl+], a
    rst $38
    inc e
    cp [hl]
    db $e4
    jr nz, jr_02b_52a9

    ldh [$92], a
    cp [hl]
    jp hl


    ld [$a1f8], sp
    ld b, [hl]
    pop hl
    ld [hl], b
    cp [hl]
    and h
    inc c

jr_02b_5306:
    pop hl
    rst $30
    db $fd
    ld b, $80
    ldh [rNR11], a
    ccf
    inc hl
    ccf
    jr nz, jr_02b_5331

    rst $38
    db $10
    rst $28
    jr c, jr_02b_5306

    cp c
    rst $38
    ld e, b
    db $fc
    rst $38
    bit 7, [hl]
    pop hl
    rst $38
    ret nc

    rst $38
    call z, $f7ff
    dec sp
    rst $38
    ld [hl], d
    rst $30
    and b
    dec b
    ld a, a
    add a

jr_02b_532d:
    db $fd
    cp a
    rrca
    rst $38

jr_02b_5331:
    ld d, $ef
    ld l, h

jr_02b_5334:
    sbc a
    add b
    ld [c], a
    rst $08
    rst $38
    ld b, b
    rst $28
    jr nz, jr_02b_532d

    sub b
    ldh a, [rNR10]
    ldh a, [$67]
    jr nz, jr_02b_5334

    ld b, b
    add d
    ldh [$ca], a
    ret nz

    di
    ld [bc], a
    inc b
    push bc
    rst $28
    rst $08
    ld hl, sp-$11
    inc a
    cp [hl]
    db $e3
    ld a, l
    ld [c], a
    cp $d7
    sub c
    rst $38
    ld a, h
    call z, Call_02b_4ac0
    cp [hl]
    db $e3
    ld a, l
    adc a
    rst $28
    rst $38
    ld [de], a
    rst $38
    ld a, h
    ld b, b
    db $ed
    ld a, a
    ld b, l
    ld a, a
    db $dd
    ld b, b
    adc b
    ldh [rNR24], a
    rst $30
    rlca
    ld l, $a3
    rst $38
    ld sp, hl
    rst $38
    sbc a
    db $f4
    adc a
    ld a, [$f90f]
    ld b, $ff
    rst $30
    jp nc, $22ff

    db $ed
    ret nz

jr_02b_5386:
    rst $38
    jr nc, @+$01

    ld e, b
    rst $38
    rst $20
    cp h
    db $e3
    ld a, $c1
    rst $38
    sub c
    rst $38
    adc a
    adc e
    cp $6b
    sbc [hl]
    jr nc, @-$55

    ld a, b

jr_02b_539b:
    pop hl
    ldh a, [$85]
    pop af
    rst $18
    ld bc, $03f2
    rst $30
    dec b
    call c, $13c0
    rst $38
    cp a
    jr jr_02b_539b

    ld a, h
    adc a
    ei
    ld b, $93
    ldh [rNR43], a
    rst $38
    rst $38
    and c
    rst $38
    rst $38
    sub b
    rst $38
    jr nc, @-$0f

    ld l, a
    ld a, h
    db $e3
    cp [hl]
    pop bc
    rst $30
    ldh [$89], a
    rst $38
    ret nz

    ldh a, [$f3]

jr_02b_53c8:
    inc c
    rrca
    ld b, h
    pop hl
    or b
    add [hl]
    rst $38
    jr jr_02b_53c8

    inc a
    rst $38
    di
    sbc a
    ldh a, [$5f]
    ld hl, $2f3f
    ccf
    rst $38
    rra
    rra
    rrca
    rrca
    rst $38
    ld h, b
    rst $38
    ld sp, $cfff
    ld a, [$fc07]
    adc b
    ld hl, sp-$18
    ld hl, sp-$2f
    ldh a, [rIE]
    pop hl
    ld c, $a4
    jr nz, jr_02b_5386

    pop af
    ld a, d
    and b
    rst $38
    sbc e
    rst $38
    rst $38
    sbc h
    di
    sbc [hl]
    pop af
    sbc a
    ldh a, [$9f]
    rst $38
    di
    sbc a
    rst $38
    rra
    rst $28
    cpl
    rst $38
    or d
    rst $38
    rst $38
    ld [hl-], a
    rst $08
    ld a, d
    adc a
    ld a, [$fa0e]
    cp a
    adc $fa
    cp $f2
    rst $38
    pop af
    nop
    sbc l
    jr nz, @-$07

    ccf
    ld b, b
    ld a, a
    cp $e1
    rst $38
    ld a, a
    ei
    ld l, [hl]
    rst $38

jr_02b_542a:
    rst $38
    ld l, a
    rst $38
    ld b, b
    rrca
    db $fc
    rlca
    rst $38
    db $fd
    rlca
    ld a, [hl-]
    and b
    rst $38
    ld a, [$e1bf]
    rst $38
    pop af
    rst $38
    rst $38
    add hl, bc
    rst $28
    jr nz, @+$01

    db $10
    rst $38
    db $10
    jp nc, $c080

    ld b, b
    add h
    add e
    ld [$11a0], a
    xor $e0
    ld [$770f], sp
    inc b
    rrca
    inc bc
    ld a, $81
    ret nz

    ld a, a
    ret nz

    ld e, d
    add b
    rst $38
    ret nz

    ld a, a
    rst $38
    ccf
    ei
    ld c, $ff
    rra
    or e
    rst $38
    jr nz, jr_02b_542a

    db $fd
    ld d, b
    ld l, [hl]
    rrca
    rra
    rst $38
    ldh [$2f], a
    rst $18
    ccf
    rst $20
    ccf
    pop bc
    ld a, a
    cp d
    ldh [$7f], a
    ldh a, [$0b]
    ldh a, [$f8]
    rst $38
    ld [c], a
    rst $20
    xor $80
    ld a, d
    ldh [$80], a
    ld l, [hl]
    add d
    and c
    cp e
    rst $30
    inc b
    xor b
    and b
    ld a, [bc]
    rrca
    add hl, bc
    ld a, h
    pop hl
    rst $28
    rst $38
    cpl
    rst $18
    ld e, a
    rst $18
    ld e, a
    rst $28
    rst $38
    rst $20
    ei
    ld a, a
    pop bc
    jp nc, $ff60

    ld a, a
    rst $38
    ld sp, hl
    rst $38
    rst $18
    cp $ff
    ld hl, sp-$01
    cp $c0
    ldh [$fd], a
    rlca
    add e
    cp $ff
    ret nz

    ld h, b
    cp [hl]
    and e
    ld b, b
    ldh [$3e], a
    ld [c], a
    jr nc, jr_02b_552c

    rst $38
    ld a, l
    ld b, b
    cp $e0
    ld b, [hl]
    rst $38
    ld b, e
    ld a, a
    ld b, d
    db $f4
    add b
    rst $30
    add d
    rst $38
    add h
    ldh [$80], a
    ld a, [bc]
    rst $38
    call nz, $dbff
    add h
    db $fc
    cp $e2
    cp $42
    and b
    ld e, l
    rst $38
    and b
    add sp, -$02
    ldh [$c0], a
    rst $38
    ret nz

    rst $30
    ld b, c
    cp $e0
    ld b, e
    cp $42
    ld a, [hl-]
    add $e0
    sub h
    jp nz, $88e0

    rst $38
    inc b
    cp $e2
    ret nz

    ldh [$a3], a
    ld hl, sp-$78
    cp $e1
    ret nz

    rst $38
    cp [hl]
    pop hl
    cp $82
    push hl
    add h
    ldh a, [$c0]
    rst $20
    add d
    pop hl
    add b
    rst $28
    ld a, [bc]
    ld h, b
    inc bc
    db $f4
    rlca
    ld hl, sp-$01
    rrca
    ld [$0f0f], sp
    rrca
    ld hl, sp-$01
    rlca
    db $fd
    rlca
    sub b
    ldh [$c4], a
    ccf
    ld a, [c]
    cpl
    ld a, [$db16]

jr_02b_5528:
    cp $fe
    adc a
    ld h, b

jr_02b_552c:
    db $fc
    db $fc
    ld [hl], b
    ldh [rVBK], a
    ld hl, sp-$01
    sbc a
    add sp, -$41
    ret nc

    rst $38
    rst $38
    rst $38
    add b
    rst $30
    rst $38
    ld a, a
    ld a, a
    jr c, jr_02b_5582

    ld c, a
    ret nz

    cpl
    ldh [rIE], a
    jr nc, jr_02b_5528

    ldh [$e0], a
    ccf
    rst $38
    ret nz

    ret nz

    ld [hl], b
    ret nz

    rst $38
    ret nz

    ei
    adc b
    ld b, d

Jump_02b_5555:
    cp [hl]
    ldh [$0c], a
    rlca
    rlca
    sbc e
    and b
    db $d3
    inc bc
    inc bc
    ld d, h
    ret nz

    sbc b
    ld h, b
    ccf
    inc hl
    add b
    ldh a, [$f0]
    rst $28
    rra
    rst $38
    ldh [$e0], a
    ld [bc], a
    ret nz

    adc b
    rst $38
    adc a
    pop de
    ld hl, sp+$7b
    ld h, b
    add b
    push hl
    ld a, [hl]
    ld hl, $068f
    ld b, b
    add b
    add b
    rst $30
    rst $38
    rst $38

jr_02b_5582:
    nop
    ld a, d
    ld h, [hl]
    rrca
    ld bc, $0101
    or $f0
    pop hl
    rst $38
    db $fc
    adc h
    ret nz

    db $fc
    ld b, e
    cp $82
    or [hl]
    add b
    db $e4
    cp $7e
    ld a, [bc]
    ldh [$7e], a
    add [hl]
    xor h
    ld b, b
    cp $1f
    cp $83
    rst $38
    ld a, h
    ld a, h
    ld b, b
    daa
    call nc, $c0e0
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    ld h, $00
    nop
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    or $03
    rst $38
    ld a, a
    ldh [rSCX], a
    ld b, b
    ld a, [hl]
    rst $38
    ld a, a
    adc $76
    dec [hl]
    ld bc, $14e9
    rst $18
    ld a, l
    rra
    ld b, b
    ld a, a
    ld a, a
    adc e
    inc l
    rst $38
    ld a, a
    ld a, [bc]
    ld a, [hl]
    db $10
    ld a, a
    inc bc
    ld b, c
    rst $38
    ld a, a
    dec de
    nop
    ccf
    ld [bc], a
    add b
    ld a, l
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    db $fd
    nop
    rst $38
    db $e4
    ld a, [hl]
    inc a
    rst $38
    rst $20
    jp $ffbd


    nop
    rst $28
    ld b, $07
    ld c, $05
    inc c
    rrca
    rst $38
    inc c
    ld a, [bc]
    inc c
    dec bc
    inc c
    rrca
    ld c, $05
    rst $38
    ld b, $07
    ld b, $03
    ld b, $05
    inc c
    rlca
    rst $38
    inc c
    dec bc
    ld a, $1d
    ld hl, sp+$6f
    ret z

    or a
    ei
    nop
    cp $d0
    push hl
    nop
    nop
    ld bc, $0300
    rst $38
    ld bc, $0207
    inc d
    db $eb
    xor d
    ld d, l
    ld e, l
    rst $28
    and d
    cp $01
    rst $38
    ret nz

    db $e4
    ld e, [hl]
    and a
    ld a, $ff
    push bc
    ld e, h
    xor a
    cp h
    ld c, d
    ld a, h
    adc e
    cp h
    rst $38
    ld c, a
    ld e, [hl]
    and l
    ld l, $d7
    ld l, $d3
    ld e, [hl]
    cp a
    and l
    cp h
    ld b, a
    ld a, h
    adc e
    cp $c0
    push hl
    rst $30
    rst $38
    ld bc, $0abe
    push af
    dec d
    ld [$542b], a
    rst $38
    rla
    add sp, $2f
    pop de
    ld e, a
    and d
    nop
    rst $38
    cp e
    nop
    db $dd
    db $fc
    ldh [$a7], a
    nop
    push hl
    or $e0
    cp e
    rst $38
    nop
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, b
    cp a
    db $eb
    nop
    rst $30
    add sp, -$20
    cp l
    ld a, [$40e1]
    cp a
    and b
    ld a, a
    ld e, e
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    xor l
    db $fc
    ldh [rIE], a
    cp e
    add b
    ld a, a
    xor d
    ld d, l
    ld d, l
    xor d
    add d
    db $dd
    ld a, l
    xor $e0
    ld [hl], a
    ld b, b
    cp l
    and $e1
    ld bc, $ff01
    ld [bc], a
    inc bc
    inc b
    rlca
    ld c, $0f
    db $10
    rra
    rst $38
    jr nz, jr_02b_56f8

    ld a, l
    ld a, a
    add b
    rst $38
    ldh [$e0], a
    db $fd
    ld h, b
    cp $e0
    rst $38
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    db $fd
    ld [hl], a
    db $fc
    ldh [rIE], a
    rst $38
    ld [bc], a
    inc bc
    inc bc
    inc bc
    db $fd
    ld [bc], a
    cp $e2
    ld c, $07
    inc bc
    ld bc, $fefe
    rst $28
    ret nz

    ret nz

    ld b, b
    ret nz

    db $fc
    pop hl
    db $f4
    ret nz

    ld a, d
    rst $38
    ldh [$f4], a
    add b
    ld a, l
    add d
    rst $38
    db $10
    rst $38
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp [hl]
    rst $38
    rst $20

jr_02b_56f8:
    rst $38
    rst $38
    add c
    db $eb
    inc d
    ld a, a
    xor [hl]
    rst $38
    inc d
    rst $38
    rst $38
    inc l
    cp $59
    rst $38

jr_02b_5707:
    jr z, jr_02b_5707

    dec e
    ld a, a
    rst $30
    xor h
    rst $38
    ld d, $fe
    ldh [$2c], a
    cp $5d
    rst $38
    rst $38
    xor b
    cp $7d
    rst $38
    add sp, -$02
    add c
    push de
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $30
    ld [$40bf], sp
    rst $38
    rst $38
    ld [bc], a
    rst $38
    dec b
    ld a, a
    adc e
    rst $38
    rla
    rst $38
    reti


    ld c, $40
    ldh [$fe], a
    ld [c], a
    ld a, [hl]
    cp l
    ret nz

    db $e3
    rlca
    cp $ff
    rrca
    db $f4
    rrca
    db $fc
    ld c, $f9
    rrca
    ld hl, sp-$41
    ld c, $fd
    rrca
    db $f4
    rlca
    cp $f0
    pop hl
    ld c, $c7
    db $fd
    rra
    add sp, -$20
    ldh [$c0], a
    ld [c], a
    ret nc

    push hl
    nop
    rst $38
    cp a
    ld bc, $03fe
    db $fd
    rlca
    ld a, [$e001]
    ld [hl+], a
    xor $01
    ldh [$58], a
    push hl
    ld a, [de]
    ld bc, $44e0
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    xor d
    nop
    ld b, b
    nop
    ld [de], a
    xor $fc
    ldh [rP1], a
    nop
    ld [$c062], sp
    ld b, b
    nop
    xor b
    cp $f0
    ldh [$90], a
    nop
    ld b, d
    nop
    add b
    nop
    ld d, b
    xor d
    db $fc
    ldh [$aa], a
    sbc $e0
    add d
    or $e0
    add c
    and $e2
    ld b, c
    cp $50
    add $ab
    inc c
    ld e, a
    ld c, $f5
    ld b, $5f
    add $be
    pop bc
    xor b
    ld d, a
    ret z

    pop bc
    and b
    db $e3
    xor [hl]
    jp $ff00


    pop bc
    ld b, h
    and h
    ret nz

    ld d, h
    ld [c], a
    rst $38
    db $f4
    nop
    pop bc
    ld b, b
    ld [c], a
    ld b, $0f
    rst $38
    inc b
    rrca
    inc c
    ld c, $09
    ld a, a

jr_02b_57c7:
    jr c, jr_02b_57c7

    ei
    db $fd
    rst $38
    nop
    ldh [rTMA], a
    rst $38
    ld c, $f5
    inc c
    rst $38
    rst $38
    inc c
    ld a, [$bb7c]
    db $fc
    rst $28
    cp $df
    add l
    sbc $27
    nop
    xor $58
    jp $ee00


    rst $38
    ld bc, $03ba
    db $ed
    rlca
    cp d
    nop
    ld [hl], a
    db $fc
    ld a, $c3
    nop

jr_02b_57f3:
    and $5e
    rrca
    db $e4
    ld c, $5d
    rrca
    rst $38
    cp b
    ld c, $59
    rrca
    xor h
    rrca
    ld d, h
    rlca
    rst $38
    xor [hl]
    rlca
    ld d, $0f
    and h
    ld c, $4d
    rra
    push de
    xor b
    nop
    and $11
    jr nz, jr_02b_57f3

    ld b, h
    inc e
    ldh [rNR11], a
    ld bc, $445f
    inc bc
    ld de, $4207
    add b
    and h

jr_02b_5820:
    jr jr_02b_5820

    ldh [$82], a
    ld [hl], l
    and e
    ld b, h
    sbc $e0
    db $fc
    pop hl
    jp c, Jump_000_10e4

    ld [c], a
    inc c
    pop hl
    cp e
    ld a, [bc]
    and $c0
    xor $f8
    ld [c], a
    xor $fc
    ld [c], a
    ld a, d
    db $e4
    jr nc, @-$09

    sbc h
    ldh [$f9], a
    nop
    sub h
    ldh [rHDMA1], a
    and a
    add hl, bc
    ld [bc], a
    nop
    dec b
    nop
    di
    inc bc
    ld [$c681], sp
    add a
    and b
    cp $00
    db $fc
    ld bc, $41fe
    jp Jump_000_10cf


    adc a
    jr c, jr_02b_5866

    ld a, h
    inc bc
    rst $20
    cp [hl]
    dec d
    ld a, a
    pop hl

jr_02b_5866:
    add sp, -$30
    call nz, Call_000_0a01
    rlca
    rst $38
    jr z, jr_02b_58ce

    nop
    scf

jr_02b_5871:
    ld c, b
    db $fc
    inc bc
    cp b
    rst $38
    ld b, [hl]
    ldh [$1f], a
    ccf
    ld b, b
    ld a, [$7f05]
    rst $38
    add b
    ldh [$1f], a
    nop
    ld a, [$df00]
    rrca
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld b, $01
    dec d
    ld a, [bc]
    rrca
    rst $38
    jr nz, @+$1c

    dec b
    ld e, $61
    inc a
    inc bc
    jr z, @-$17

    ld d, a
    ld a, b
    dec b
    add sp, -$80
    rst $38
    db $e4
    rlca
    rlca
    dec b
    rst $38
    rlca
    rlca
    inc b
    nop
    nop
    ret nz

    ret nz

    ldh a, [rIE]
    jr nc, jr_02b_5871

    pop bc
    ld [bc], a
    ld [bc], a
    ld h, c
    ld h, c
    ldh [$f7], a
    and b
    ldh [rNR41], a
    sub b
    add c
    inc [hl]
    inc [hl]
    add c
    cp l
    rst $38
    nop
    rst $38
    add b
    cp a
    ld a, h
    ld a, l
    inc bc
    inc bc
    cp $80

jr_02b_58cb:
    add e
    ld a, h

jr_02b_58cd:
    ld a, h

jr_02b_58ce:
    ld [bc], a
    ld a, [$f404]
    jr c, jr_02b_58cb

    cp b
    ret nz

    ret nz

    ld [hl], b
    add l
    ld e, b
    ld e, b
    add h
    or h
    ei
    ld a, b
    ld a, b
    jr nc, jr_02b_58cd

    rla
    rla
    ld b, b
    ld e, [hl]
    rst $18
    rst $38
    rst $18
    cp h
    rst $28
    db $fd
    adc a
    rst $38
    rst $38
    xor b
    rst $38
    rst $38
    xor c
    rst $38
    adc d
    cp $8a
    cp $fb
    rst $38
    ei
    scf
    db $fd
    cp a
    pop af
    rst $38
    rst $38
    dec d
    rst $38
    rst $38
    sub l
    rst $38
    ld d, c
    ld a, a
    ld d, c
    ld a, a
    ld hl, sp-$01
    nop
    ldh a, [rSB]
    ldh [rSC], a
    ret nz

    add hl, bc
    add b
    cp $11
    pop hl
    ld b, e
    nop
    dec d
    ld a, [bc]
    rst $38
    rlca
    ld a, a
    db $fd
    dec hl
    ld [c], a
    ldh [rIF], a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    cp [hl]
    ldh [$7f], a
    call c, $f8f1
    ld hl, sp-$0c
    db $fd
    cp $1d
    ret nz

    rst $38
    sbc a
    jr nz, jr_02b_595e

    ld [hl], b
    rrca
    cp b
    rlca
    ld a, h
    rra
    dec hl
    cp $15
    ld a, a
    ld c, $dc
    ldh [rSB], a
    ld [$e0d4], a
    rst $30

jr_02b_5951:
    pop bc
    scf
    add e
    add sp, -$20
    rra
    rst $38
    ld [hl], $7f
    rst $38
    inc l
    db $fc
    ld a, b

jr_02b_595e:
    ld hl, sp-$10
    ld hl, sp-$11
    rst $38
    rst $38
    ld hl, sp-$04
    pop bc
    pop hl
    sub a
    sub a
    cpl
    cpl
    rst $38
    rra
    rra
    ld e, a
    ld e, a
    cp a
    cp a
    ld [hl], b
    rrca
    rst $38
    ld d, c
    and a
    and c
    ld e, e
    ld b, c
    or a
    and d
    ld c, e
    cp a
    ld bc, $02f7
    db $eb
    nop
    and e
    add b
    ret


    ldh a, [rIE]
    pop af
    inc c
    db $ec
    nop

jr_02b_598d:
    ld b, h
    jr nc, jr_02b_59c1

    ld b, l
    ld a, a
    ld d, l
    ld b, b
    ld a, a
    jr nc, jr_02b_598d

    rrca
    ld e, a
    ld a, [bc]
    pop bc
    rst $38
    ld [bc], a
    ld b, [hl]
    jr jr_02b_59db

    jr nz, jr_02b_5951

    sbc b
    ei
    rst $28
    add a
    xor a
    nop
    call nz, $a1fa
    ret nc

    push de
    dec b
    db $fd
    push af
    cp h
    add c
    ret nz

    rst $18
    ccf
    ld a, a
    inc b
    xor l
    ld a, a
    inc bc
    inc de
    add b
    cp [hl]
    add sp, -$15
    ld [bc], a
    ld c, d

jr_02b_59c1:
    and b
    cp $ee
    ld [c], a
    ccf
    nop
    ld h, b
    xor d
    xor e
    nop
    rst $38
    db $db
    ret nc

    jp c, $e1dc

    ccf
    cp a
    ld [c], a
    ret nz

    ld [bc], a
    ld d, l
    ld a, a
    push de
    nop
    rst $38

jr_02b_59db:
    dec bc
    ld e, e
    and b
    xor a
    ret nz

    pop bc
    rst $38
    ld a, a
    ld a, a
    nop
    add b
    ld [bc], a
    ld a, e
    ld e, a
    ld e, a
    db $fd
    nop
    ld c, d
    jp nz, $ef0f

    ld a, [c]
    ld a, [c]
    inc c
    dec l
    rst $38
    nop
    xor e
    nop
    ld e, a
    ld [bc], a
    rst $38
    ld de, $7dff
    ld a, [bc]
    dec l
    add b
    xor d
    rst $38
    nop
    ld d, l
    xor a
    ld [$07e0], sp
    cp a
    rst $38
    ld e, a
    ld hl, sp+$60
    ldh a, [$e3]
    rst $28
    ld h, b
    db $fd
    db $e4
    ldh [$e3], a
    rst $38
    xor e
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    db $fd
    ei
    ldh [$e5], a
    ldh [$df], a
    ldh a, [rIE]
    ld hl, sp-$01

jr_02b_5a29:
    rst $30
    db $fc

jr_02b_5a2b:
    rst $38
    cp $c0
    db $e3
    or c
    pop af
    ldh [$e0], a
    rst $38
    ret nz

jr_02b_5a35:
    ldh [rLCDC], a
    ret nz

    add c
    pop bc
    nop
    ret nz

Call_02b_5a3c:
Jump_02b_5a3c:
    rst $38
    add c
    add c
    ld [bc], a
    add d
    ld e, a
    ld e, a
    ccf
    ccf
    rst $38
    ld d, a
    ld d, a
    xor a
    xor a
    ld d, l
    ld d, l
    adc d
    adc d
    rst $38
    ld de, $0211
    ld [bc], a
    nop
    ld b, l
    ld bc, $ff91
    pop bc
    rst $20
    ld h, $ae

Jump_02b_5a5c:
    ret z

    db $eb
    rlca
    rst $18
    cp $30
    ld [c], a
    call c, Call_02b_7706
    ld bc, $06fd
    rst $30
    rst $28
    jr c, jr_02b_5a2b

    ret nz

    db $e4
    ld a, [de]
    and c
    ldh [$eb], a
    rra
    db $fc
    ld [$40e1], sp
    and [hl]
    rrca
    xor a
    ldh a, [$f0]
    ld b, b
    ret nc

    rst $30
    inc a
    ld a, l
    inc bc
    jr nc, jr_02b_5a29

    ldh [$ea], a
    rra
    rra
    cp a
    inc b
    ld d, $38
    cp l
    ret nz

    db $db
    jr nz, jr_02b_5a35

    ld [hl], b
    rst $30
    ld a, d
    add b
    push de
    db $10
    xor d
    rlca
    ld bc, $0305
    di
    rlca
    nop
    cp $e7
    sub h
    ld h, c
    rst $38
    push de
    rst $38
    ld a, [$377c]
    db $e4
    add b
    ld h, c
    sub [hl]
    rst $38
    ld bc, $a1ff
    dec a
    ld h, b
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    nop
    ldh [rNR41], a
    or b
    ld a, a
    ld [hl], b
    ldh a, [rNR23]
    ldh a, [rNR32]
    ldh a, [rNR30]
    db $fc
    ld [c], a
    call c, $e8c6
    cp d
    ldh [rSB], a
    dec b
    rst $38
    dec h
    ldh [$f5], a
    ei
    jp hl


    rst $30
    inc c
    ldh [$0a], a
    pop hl
    ld a, a
    ldh [rLCDC], a
    ld a, a
    rst $38
    sbc a
    call z, $c2fe
    db $ec
    pop hl
    cp $ff
    ret z

Jump_02b_5ae7:
    push hl
    ret nz

    db $e3
    ld a, [hl-]
    or b
    ld a, [bc]
    add h
    pop hl
    inc bc
    cp $e0
    ld bc, $25d7
    db $10
    ld h, b
    add a
    db $e3
    ld [hl], a
    ld h, c
    ld a, h
    ld b, [hl]
    and b
    sbc b
    ldh [$fc], a
    ldh a, [$fa]
    ldh a, [$fc]
    ld c, c
    ld h, b
    xor c
    ld d, h
    ldh [$e4], a
    ld h, b
    pop hl
    ei
    sbc b
    ld [c], a
    rst $20
    ld h, b
    add sp, $75
    cp a
    rst $38
    sbc e
    rst $38
    db $ed
    rst $38
    rst $18
    add a
    ldh [$cf], a
    rst $38
    rst $30
    pop hl
    rst $38
    ret nc

    rst $38
    ld [$f5ff], a
    ld d, h
    ld e, d
    ld b, b
    adc b
    db $e3
    sub a
    ld d, b
    ld b, b
    or a
    ld c, h
    ld b, b
    cp $b2
    ld b, d
    rst $18
    ld a, e
    db $fc
    db $eb
    rst $30
    rst $08
    sub $e0
    ei
    rst $20
    cp e
    call $a0f0
    ld b, c
    ld a, $ff
    call $e0d4
    push af
    rst $38
    rst $38
    rst $10
    rst $28
    sub l
    ld a, a
    push de
    ld_long $ffc8, a
    rst $30
    sub h
    db $eb
    jp hl


    rst $10
    sbc h
    db $e3
    ret


    dec hl
    rst $30
    ld [$401a], a
    daa
    jr nz, @-$3c

    ld a, e
    ld b, b
    ret nz

    inc e

jr_02b_5b68:
    pop bc
    cp d
    ld b, b
    pop hl
    sbc d
    inc b
    ldh [$9a], a
    ldh a, [$5c]
    ld hl, sp-$1e
    ld a, [hl-]
    rst $08
    or b
    ld d, l
    rst $38
    ld [$ea50], sp
    nop
    ld l, b
    rlca
    inc bc
    rst $30
    rra
    rrca
    ccf
    jr nc, @+$29

    jr nz, jr_02b_5b68

    ret z

    ld hl, sp+$7f
    db $f4
    db $fc
    dec sp
    rst $20
    dec c
    ldh a, [rHDMA5]
    sbc h
    ldh [$fd], a
    call nc, $e09c
    sub h
    db $eb
    ld sp, hl
    rst $00
    call nc, $97ef
    sub h
    ld a, a
    ld h, $c4
    add b
    cp e
    sbc h
    db $e4
    and b
    res 3, d
    ld a, [c]
    and b
    add $01
    cp $e0
    ld d, h
    pop bc
    sub h
    db $eb
    cp c
    rst $00
    rst $38
    db $fc
    add e
    ld a, [hl+]
    push bc
    ld a, h
    add e
    ld a, [hl-]
    push bc
    ld [hl], a
    ld d, h
    xor e
    ld a, a
    ld l, [hl]
    ret nz

    ld a, l
    rst $38
    xor a
    ret c

    ld h, b
    or a
    cp a
    rst $38
    ld d, [hl]
    ld a, b
    and b
    rst $38
    rst $38
    ld l, b
    pop hl
    call c, $f09b
    cp d
    db $fc
    db $e4
    ld a, d
    or b
    ld a, a
    ld h, c
    or b
    ret


    ld e, l
    set 7, a
    ld a, [hl+]
    and b
    call z, $a09a
    bit 1, a
    ld bc, $050f
    rst $38
    jr c, jr_02b_5c2d

    ld [hl+], a
    ld [$1437], sp
    dec hl
    ld c, c
    db $fd
    ld [hl], a
    ld b, b
    ld bc, $f0b0
    xor h
    ld e, h
    inc h
    db $fc
    ccf
    ld d, h
    db $fc
    or h
    db $fc
    db $76
    cp $d0
    xor c
    ld l, h
    pop hl
    rst $18
    ld d, h
    db $eb
    ld l, c
    rst $10
    inc d
    ld l, h
    ldh [$d4], a
    xor e
    rst $38
    ld a, [hl-]
    push bc
    ld l, h
    add e
    add $01
    ld a, [$1dff]
    ld e, d
    call nz, Call_02b_7fa0
    rst $38
    xor l
    ld l, b
    ldh [$6c], a
    pop hl
    ret nc

    and a
    add $68

jr_02b_5c2d:
    pop hl
    sbc d
    ldh a, [$38]
    pop hl
    db $fc
    db $e3
    ret nc

    and e
    ld l, l
    add d
    rst $38
    cp $01
    ld a, h
    add e
    xor d
    ld d, l
    ld d, h
    xor e
    ld e, a
    ld bc, $aaff
    rst $18
    ld a, a
    ld [hl], h
    ret nz

    ld d, a
    push de
    nop
    sub a
    ld a, a
    rst $38
    xor [hl]
    sbc [hl]
    nop
    cp l
    and d
    nop
    inc [hl]
    db $e3
    ld a, [$2c2e]
    db $e4
    ld a, [$05b0]
    ldh [$ac], a
    ld a, l
    and e
    nop
    add b
    jp z, Jump_000_07ff

    dec b
    jr jr_02b_5c78

    ld sp, $2b34
    add hl, bc
    rst $38
    scf
    ld d, h
    ld l, e
    ld l, c
    ld d, a
    inc d

jr_02b_5c75:
    ld l, e
    ldh [rIE], a

jr_02b_5c78:
    ldh [$b8], a
    ld a, b
    inc l
    call c, $fca4
    ld [hl], h
    ccf
    db $fc
    or $fe
    ld e, d
    cp $fa
    ld b, b
    and $78
    push hl
    xor [hl]
    ld b, [hl]
    rst $20
    ld b, l
    add d
    xor $76
    ldh [$7b], a
    ld b, [hl]
    ld [c], a
    cp l
    ld [$c0b2], sp
    db $76
    db $e3
    ld b, b
    db $e3
    sbc b
    ld b, h
    ld [c], a
    xor b
    pop bc
    ld b, d
    jp hl


    call nz, $fe81
    ld b, [hl]
    db $e3
    jp z, $a5bf

    rst $18
    jp nz, $f1ff

    cp e
    cp $7e
    add hl, sp
    nop
    xor [hl]
    rst $38
    ld a, h
    ld b, [hl]
    ldh [$f9], a
    adc a
    rst $38
    and e
    rst $38
    ld c, a
    inc bc
    and b
    ld b, h

jr_02b_5cc4:
    db $e3

jr_02b_5cc5:
    ld b, b
    rst $20
    inc d
    ret c

    db $eb
    jr nz, jr_02b_5cc5

    add b
    jr nz, jr_02b_5c75

    db $fd
    ld a, a
    ld [hl], b
    set 7, h
    ldh a, [$7d]
    jp c, $cf70

    nop
    rrca
    inc bc
    ld [hl], b
    ld hl, $60d9
    rst $30
    add b
    jr nz, jr_02b_5cc4

    ld b, b
    ld b, l
    cp $bc
    ld a, a
    adc a
    rst $38
    rlca
    jp $8302


    jr nz, jr_02b_5d61

    ld b, b
    or b
    rst $38
    add b
    ld b, c
    add b
    ld [$8188], sp
    adc b
    dec h
    rst $38
    call z, Call_02b_65b7
    ld a, [hl]
    ld [bc], a
    inc bc
    ld bc, $ff83
    nop
    push hl
    ld b, b
    and b
    ld b, b
    xor h
    ret z

    ld [hl], l
    rst $38
    ld sp, hl
    ld d, d

jr_02b_5d11:
    di
    rst $38
    ld h, b
    ldh [rSVBK], a
    and b
    rst $38
    or b
    ld [hl], b
    or b
    ld d, b
    or b
    ret nc

    or b
    ldh a, [$5f]
    ldh a, [$a0]
    ld h, b
    ldh [$38], a
    ldh [$cc], a
    cp $e0
    call Call_000_00ff
    inc bc
    inc b

jr_02b_5d2f:
    inc b
    ld [$0408], sp
    ld a, b
    rst $38
    jr nc, jr_02b_5d2f

    db $e4
    ret nz

    cp d
    db $10
    db $e4
    nop
    rst $38
    nop
    add b
    nop
    ld b, b
    add b
    nop
    ld h, b
    ld a, $ff
    call z, $570f
    dec bc
    add l
    nop
    rra
    jr nz, @+$01

    ld d, h
    jr nz, @-$7e

    jr nz, jr_02b_5d9d

    jr nz, jr_02b_5d6c

    jr nz, @+$01

    inc e
    inc d
    ld bc, $0914
    nop
    rrca
    inc b

jr_02b_5d61:
    rst $38
    adc c
    ld [bc], a
    inc e
    ld [bc], a
    xor c

jr_02b_5d67:
    ld [bc], a
    sub b
    ld [bc], a
    ld a, a
    cp l

jr_02b_5d6c:
    inc d

jr_02b_5d6d:
    jp nz, Jump_000_3984

    adc b
    ld [hl], d
    sub b
    pop hl
    rst $38
    jr nc, jr_02b_5d67

    jr nc, @-$2e

    jr nc, jr_02b_5dcb

    jr nc, jr_02b_5d6d

    push bc
    ld [hl], b
    sub b
    ldh [rTIMA], a
    and l
    ld h, b
    ld a, e
    jr nz, jr_02b_5d11

    and $b0
    nop
    rst $08
    ldh a, [rP1]
    ldh [rP1], a
    ld l, d
    rst $00
    add b
    ld l, e
    ld bc, $1107
    or $c0
    and d
    ld a, d
    rst $00
    sub b
    ld l, c

jr_02b_5d9d:
    sbc h
    db $e4
    ret nz

    ret nz

    and a
    ldh a, [$83]
    add h
    ld c, d
    jp $a1c0


    add c
    ld a, d
    jp nz, $a3c0

    ld a, d
    rst $00
    call z, $bce1
    ld a, h
    xor h
    jp nz, $c2a8

    or b
    jp nz, $71ff

    cp $ff
    pop hl

jr_02b_5dbf:
    ld a, b
    or b
    ld h, c
    and b
    ld h, c
    ld e, d
    jp Jump_02b_7fff


    ld a, a
    add b
    add b

jr_02b_5dcb:
    push bc
    ld hl, sp-$6c
    ld h, b
    add b
    adc $d8
    add b
    jr c, @+$01

    ld [c], a
    pop bc
    cp [hl]
    rst $38
    nop
    rst $28
    jr @+$09

    jr nz, jr_02b_5df4

    nop
    ld l, e
    rst $38
    ld b, b
    ld a, $3c
    jp Jump_000_18e7


    add c
    ld l, [hl]
    rst $38
    nop
    cp a
    nop
    and b
    ld e, b
    and b
    inc b
    xor d
    db $db

jr_02b_5df4:
    nop
    rst $38
    ldh a, [$e3]
    ld bc, $a0fc
    inc b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_02b_5e21

    ret nz

    and b
    ld b, b
    ld b, b
    and b
    sbc [hl]
    ld b, b
    rst $20
    xor e
    ld bc, $2240
    ld h, b
    rra
    ld h, l
    ld [hl], a
    nop
    dec l

jr_02b_5e13:
    rst $38
    nop
    ld d, a
    nop
    and $80
    ld [hl], e
    nop
    rst $10
    rst $38
    jr nz, jr_02b_5e7a

    db $10
    ld l, a

jr_02b_5e21:
    nop
    ld e, a
    nop
    or h
    rst $38
    nop
    ld a, [hl]
    jr nz, jr_02b_5dbf

    jr nz, @+$51

    nop
    db $fd
    rst $38
    ld b, c
    ld a, [hl-]
    nop
    rst $28
    ldh [rP1], a
    and b
    ld d, b
    rst $38
    or b
    nop
    db $10
    ldh [rNR10], a
    ldh [$b0], a
    ld b, b
    ld a, a
    jr nz, jr_02b_5e13

    ld h, b
    add b
    ccf
    nop
    rra
    ld h, e
    ld b, b
    ldh [$2a], a
    and a
    pop bc
    and b
    cp [hl]
    pop bc
    ret nz

    rst $00
    cpl
    ld bc, $0101

jr_02b_5e57:
    ld [bc], a
    ei
    ld a, h
    dec sp
    ld h, b
    db $e3
    jr nz, jr_02b_5eba

    nop
    adc $00
    rst $38
    ei
    nop
    ld h, b
    inc a
    jp c, Jump_02b_5ae7

    add c
    rst $38
    ld a, [hl]
    nop
    db $eb
    inc c
    jp nc, $f601

    nop

jr_02b_5e74:
    rra
    sbc a
    nop
    dec b
    inc a

jr_02b_5e79:
    ld e, e

jr_02b_5e7a:
    ldh a, [$e3]
    ld h, h
    pop hl
    ld l, h
    add b
    rst $38
    ret nc

    nop
    ld [hl], b
    sub b
    jr nz, jr_02b_5e57

    jr nz, jr_02b_5ee9

    ld a, l
    sub b
    cp $20
    xor [hl]
    nop
    ld b, l
    nop
    ld [bc], a
    ld h, b
    ldh [$ba], a
    cp $e1
    nop
    xor $20
    and d
    nop
    db $10
    dec bc
    ret nz

    nop
    xor e
    nop
    add d
    ld [c], a
    jr nz, @-$4f

jr_02b_5ea6:
    ldh a, [$e2]
    ld b, c
    ldh [$e0], a
    ld de, $e8fe
    ldh [rHDMA5], a
    nop
    ld a, [$c020]
    jr nz, jr_02b_5ea6

    ld a, a
    jr nc, jr_02b_5e79

    db $10

jr_02b_5eba:
    ldh a, [rNR10]
    ld [hl], b
    jr nc, @-$08

    ldh [$df], a
    ld h, b
    add b
    ld a, b
    rlca
    dec h
    sub b
    adc d
    rst $38
    ldh [$dd], a
    cp [hl]
    sub b
    adc e
    sub c
    nop
    jr nz, jr_02b_5e74

    ldh [rNR24], a
    nop
    ld a, a
    sbc b
    nop

jr_02b_5ed8:
    ld b, b
    nop
    inc b
    nop
    adc c
    nop
    nop
    nop
    pop hl
    inc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02b_5ee9:
    rst $38
    dec [hl]
    ld [hl], $37
    db $d3
    jr c, jr_02b_5f29

    reti


    rst $38
    xor $ed
    dec l
    rst $38
    db $e4
    ld a, [hl-]
    dec sp
    and e
    inc a
    ld b, l
    db $f4
    push hl
    jp z, $e8ff

    rst $20
    add hl, hl
    rst $38
    pop hl
    ld b, [hl]
    rst $38
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld d, h
    ld d, l
    jp nc, $e2f2

    add hl, hl
    jp z, $e8ff

    rst $20
    ld a, [hl+]
    rst $38
    db $e4
    ld d, [hl]

jr_02b_5f1b:
    ld d, a
    inc hl
    ld e, b
    ld e, c
    db $f4
    push hl
    jp z, $e8ff

    rst $20
    dec hl
    rst $38
    ldh a, [$ca]

jr_02b_5f29:
    rst $38
    add d
    add sp, -$19
    ld sp, $f0ff
    jp z, $c0ff

    rst $38
    rst $38
    rst $38
    db $e4
    db $e3
    rra
    ld d, $ff
    db $e3
    inc bc
    nop
    rst $38
    ldh [$03], a
    di
    db $e4
    jp z, $c0ff

    xor $3f
    ld bc, $191b
    add hl, de
    dec de
    ld bc, $ffc0
    rst $28
    xor $fb
    cpl
    jr nc, jr_02b_5ed8

    ld [c], a
    ld [bc], a
    ld a, [de]
    jr z, jr_02b_5f1b

    jr z, @-$01

    ld [bc], a
    ld a, [hl]
    ld [c], a
    jr nc, jr_02b_5f91

    inc l
    jr z, jr_02b_5f8d

    jr z, jr_02b_5fd4

    ld [bc], a
    ei
    db $e4
    ld l, a
    ld [hl], b
    or $e0
    ld a, e
    ld a, h
    pop af
    ldh [$f7], a
    add a
    adc b
    ld [bc], a
    or c
    ldh a, [$3d]
    ld a, $3f
    ld b, b
    db $fd
    ld b, c
    add d
    ldh [$28], a
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    dec de
    rst $38
    ld bc, $4041
    ccf
    ld a, $3d

jr_02b_5f8d:
    inc l
    ld e, d
    ld a, a
    ld h, l

jr_02b_5f91:
    ld h, [hl]
    ld e, l
    inc l
    ld e, d
    ld l, c
    ld l, d
    ei
    ldh [rIE], a
    ld [hl], c
    ld [hl], d
    ld [hl], e
    inc l
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    rst $18
    inc l
    adc c
    adc d
    adc e
    adc h
    ld [hl], c
    ldh a, [rKEY1]
    ld c, [hl]
    rst $28
    ld c, a
    ld d, b
    ld d, c
    inc e
    add d
    ldh [$5e], a
    ld e, a
    ld h, b
    rst $38
    ld h, c
    ld a, [de]
    inc e
    ld d, c
    ld d, b
    ld c, a
    ld c, [hl]
    ld c, l
    rst $38
    inc l
    ld e, [hl]
    ld h, a
    ld l, b
    ld h, c
    inc l
    ld e, [hl]
    ld l, e
    rst $38
    ld l, h
    ld l, l
    inc l
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    inc l
    rst $38
    add c
    add d

jr_02b_5fd4:
    add e
    add h
    inc l
    adc l
    adc [hl]
    adc a
    push af
    sub b
    ld sp, $1ef0
    rst $38
    ldh [rNR33], a
    ld [hl+], a
    ld a, [de]
    ret nz

    rst $38
    jr z, jr_02b_604a

    ld h, e
    ld h, e
    ld h, h
    ld a, [de]
    ld [hl+], a
    dec e
    ld a, [$e1f0]
    inc l
    db $f4
    pop hl
    or b
    ld h, d
    ld h, e
    ld l, [hl]
    ld h, h
    rst $38
    inc l
    ld h, d
    ld a, b
    ld a, c
    ld a, d
    inc l
    ld h, d
    add l
    db $dd
    add [hl]
    ei
    ldh [$91], a
    sub d

jr_02b_6008:
    sub e
    ret nz

    or d
    inc hl
    inc h
    di
    ld d, $05
    ld [bc], a
    pop hl
    cp $e0
    ld a, [de]
    dec b
    ld d, $24
    ld a, c
    inc hl
    ret nz

    cp a
    ld b, b
    xor e
    dec h
    dec bc

jr_02b_6020:
    add hl, bc
    dec b
    add b
    ldh [$be], a
    cp a
    pop hl
    ld a, [de]
    dec b
    add hl, bc
    dec bc
    dec h
    ld b, b
    and b
    nop
    rst $38
    sub h
    sub l

jr_02b_6032:
    inc bc
    inc l
    nop
    sbc e
    sbc h
    inc bc
    rst $38
    inc l
    xor h
    xor l
    xor [hl]
    xor a
    inc l

Jump_02b_603f:
    or [hl]
    or a
    rst $20
    cp b
    cp c
    inc l
    jr nz, jr_02b_6008

    ret nz

    sub c
    daa

jr_02b_604a:
    ld h, $07
    ei
    inc b
    ld b, $80
    push hl
    ld b, $04
    rlca
    ld h, $27
    rst $38
    add hl, hl
    inc l
    add hl, de
    sub [hl]
    sub a
    sbc b
    inc l
    add hl, de
    rst $38
    sbc l
    sbc [hl]
    sbc a
    inc l
    or b
    or c
    or d
    or e
    ccf
    inc l
    cp d
    cp e
    cp h
    cp l
    inc l
    jr nz, jr_02b_6032

    ld [hl], c
    ldh a, [$cf]
    jr nz, jr_02b_6097

    ld a, [bc]
    dec b
    add d
    ret nz

    add b
    db $e3
    jr z, jr_02b_6097

    rst $38
    dec de
    dec b
    dec bc
    ld hl, $2c20
    jr z, jr_02b_6020

    ld l, l
    sbc d
    ld b, b
    ret nz

    and b
    and c
    dec sp
    ret nz

    or h
    or l
    ld [hl], $c0
    dec sp
    cp [hl]
    cp a
    ld b, b

jr_02b_6097:
    sub $18
    ld de, $020a
    push hl
    cp $c3
    rst $30
    ld a, [bc]
    ld de, $5418
    jp Jump_02b_7ea2


    and e
    and h
    jr c, @-$03

    db $e3
    ld b, l
    jp nz, $d440

jr_02b_60b0:
    jr jr_02b_60c3

    dec bc
    ld [bc], a
    push hl
    cp $c3
    inc a
    ret nz

    pop hl
    ld d, h
    jp nz, $a6a5

    and a
    xor b
    ei
    db $e3
    ld b, l

jr_02b_60c3:
    jp nz, Jump_02b_402e

    call nc, Call_000_1318
    ld [de], a
    add b
    db $eb
    dec bc
    add b
    ldh [rHDMA4], a
    jp nz, Jump_02b_620f

    xor c
    xor d
    xor e
    ei
    db $e4
    pop af
    ld [c], a
    ld b, b
    db $d3
    ret nz

    ld [c], a
    ld c, $80
    jp hl


    ld [de], a
    inc de
    jr @+$4c

    rst $18
    ld b, b
    db $ec
    nop
    and $c0
    ret nz

    add a
    ld [de], a
    db $10
    db $10
    jp z, $c0ff

    call z, $e602
    ld b, b
    ret nz

    add hl, bc
    or e
    add hl, bc
    dec bc
    jp z, $e8ff

    rst $20
    db $10
    ld [de], a
    add b
    jp Jump_000_2e19


    rst $38
    pop hl
    dec de
    dec b
    ld [$e0ff], sp
    ld a, [bc]
    jp z, $e8ff

    rst $20
    ld b, a
    dec bc
    add hl, bc
    ld [$a182], sp
    add $a0
    rst $38
    pop hl
    rlca
    ret nz

    rst $38
    ld b, $ed
    db $ec

jr_02b_6122:
    ld a, [bc]
    ld [$e0c0], sp
    ld b, $a1
    add $e1
    db $fc
    ld [c], a
    ld b, b
    rst $38
    jr c, jr_02b_60b0

    db $eb
    ld [bc], a
    and d
    add b
    and $09
    dec bc
    ld [de], a
    ret nz

    rst $18
    nop
    jp hl


    ei
    db $10
    ld [de], a
    ld b, b
    and c
    jr z, jr_02b_6171

    ld [hl-], a
    inc sp
    inc sp
    ccf
    ld [hl-], a
    ld l, $05
    ld a, [bc]
    ld [de], a
    db $10
    ld b, b
    rst $18
    ld b, b
    xor d
    ei
    jr @+$13

    ret nz

    add c
    ret nz

    inc [hl]
    ld b, d
    ld b, e
    ld b, e
    ld c, e
    ld b, d
    inc [hl]
    ld b, d
    and c
    jr jr_02b_6122

    rst $38
    ret nz

    ld [$7e13], a
    jp nz, Jump_02b_443f

    ld d, d
    ld d, e
    ld d, e
    ld d, d
    ld b, h
    ret nz

    rst $38

jr_02b_6171:
    ret nz

    db $f4
    ld h, [hl]
    pop bc
    ld h, d
    inc c
    dec c
    ret nz

    rst $38
    nop
    ldh a, [$0b]
    ld [$c2fe], sp
    cpl
    ret nz

    jr z, jr_02b_6192

    rrca
    nop
    ldh [rNR13], a
    ret nz

    rst $38
    add b
    call z, $0813
    ld [$c2fe], sp
    add d

jr_02b_6192:
    and d
    ld [$c081], sp
    add b
    rst $18
    nop
    sla b
    call z, $bca1
    ld h, b
    add d
    and h
    ld b, b
    cp a
    ret nz

    pop af
    rlca
    add d
    and [hl]
    add b
    cp a
    nop
    ret nz

    xor l
    cp $ed
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02b_620f:
    rst $38
    nop
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
    nop
    dec b
    inc c
    rst $38
    ldh a, [$08]
    rst $38
    rst $38
    rst $20
    and $c0
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
    jp z, Jump_02b_70ff

    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld [$0d08], sp
    rst $38
    db $e4
    and c
    dec l
    db $fc
    db $e4
    ldh a, [$e1]
    jp z, $c0ff

    xor $4d
    cp l
    pop hl
    ld l, l
    adc h
    ret nz

    rst $38
    rst $28
    xor $0a
    ld a, [bc]
    add d
    push hl
    ld a, h
    pop hl
    ld a, d
    pop hl
    ld a, [hl+]
    dec [hl]
    ld a, [hl+]
    ld l, e
    pop hl
    dec l
    ei
    db $e4
    dec bc
    dec bc
    ei
    jp hl


    ret nz

    pop af
    ld [hl], h
    cp $e0
    add d

jr_02b_6279:
    pop hl
    dec bc
    rst $38
    ldh [$2d], a
    ld l, l
    ld a, [hl+]
    rst $38
    pop hl
    ld b, c
    ld [$e1f4], sp
    ei
    ld a, [c]
    ret nz

    db $f4
    ei
    pop bc
    ret nz

    ld [c], a
    dec l
    ret nz

    rst $38
    ret nz

    ret nz

    call nc, $e4c0
    cp $e2
    ret nz

    ld [c], a
    ld l, a
    ld [c], a
    ret nz

    rst $38
    ld c, l
    ld c, l
    ret c

Jump_02b_62a1:
    add l
    ret nz

    ei
    ldh [$78], a
    jp nz, Jump_02b_6d6d

    db $fd
    ret nz

    ld l, l
    ld l, l
    jr jr_02b_6279

    rst $18
    ret nz

    ld [$c648], a
    dec c
    dec l
    cp [hl]
    ret nz

    ret nz

    pop hl
    ret nz

    ret z

    jr nz, jr_02b_632f

    pop bc
    ei
    push hl
    ret nz

    pop de
    add [hl]
    db $e4
    ret nz

    add sp, $2d
    ret nz

    ld [c], a
    jp z, Jump_000_00e7

    ret nz

    and $e7
    ldh [rP1], a
    ld hl, sp+$7e
    push hl
    ld a, h
    ldh [rWY], a
    call $d940
    ret nz

    ld a, [c]
    nop
    add b
    rst $18
    ld b, b
    xor b
    ld a, $ec
    ret nz

    rst $38
    nop
    xor e
    add h
    push bc
    cp [hl]
    push bc
    ld a, l
    ret nz

    add b
    ret nz

    rst $38
    ret nz

    adc d
    cp [hl]
    jp hl


    add c
    pop bc
    nop
    cp a
    add b
    ld [$c97f], a
    ld c, l
    ld [hl], c
    ld l, l
    dec a
    ret nz

    ret nz

    rst $38
    add b
    push de
    dec l
    ld l, l
    ld c, l
    ld a, h
    add b
    nop
    reti


    sub c
    rst $30
    or $83
    and b
    ccf
    add e
    rst $38
    pop hl
    add c
    and b
    reti


    or h
    ret nz

    ld [hl], a
    ld [bc], a
    ld b, l
    add h
    ld l, l
    cp a
    db $e3
    ret nz

    rst $38
    add b
    or e
    add hl, bc
    pop hl
    db $fc
    add $ca
    rst $38
    ld a, b
    ret nz

    adc c

jr_02b_632f:
    adc h
    db $e3
    cp [hl]
    ld h, l
    ld c, l
    ld l, l
    ld l, l
    ld c, l
    jp z, $f8ff

    add sp, -$19
    ld c, b
    ldh [$81], a
    add d
    ld c, $0e
    ld c, $2e
    ld l, $01
    ld l, $c2
    add b
    cp [hl]
    ret nz

    jp z, Jump_000_00ff

    call z, $e8c0
    cp b
    ld b, c
    jp z, Jump_000_00ff

    ld b, b
    xor d
    inc bc
    add d
    ret nz

    rst $38
    ld b, b
    ld d, a
    inc a
    add l
    ld a, a
    ld h, d
    ret nz

    rst $38
    nop
    ld d, b
    nop
    ld a, a
    ld h, e
    cp a
    ld b, c
    add b
    cp a
    ret nz

    dec l
    add $20
    cp $c2
    add d
    and e
    ret nz

    rst $38
    nop
    add b
    inc sp
    add d
    and [hl]
    ret nz

    cp a
    ld b, b
    ld l, $7e
    db $e3
    add d
    and h
    ret nz

    rst $38
    add b
    ld c, h
    nop
    cp $ee
    add b
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ld b, $00
    nop
    nop
    dec b
    rrca
    rst $38
    and $00
    rst $38
    ld a, [c]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fb], a
    nop
    ld a, [$c0e5]
    db $f4

jr_02b_640e:
    ld sp, hl
    add sp, -$20
    rst $38
    ldh [rIE], a
    ld h, b
    db $ed
    ld hl, sp-$15
    ldh [rIE], a
    ret nz

    ldh [rIE], a
    ldh [$f0], a
    rst $18
    sub $02
    push hl
    ldh [rIE], a
    ldh [$f5], a
    rrca
    nop
    nop
    cp $e0
    ldh [$fa], a
    and b
    call c, $dd80
    jr nz, jr_02b_640e

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    push hl

jr_02b_6450:
    nop
    nop
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
    db $e3
    ld [c], a
    db $10
    ldh [rIE], a
    ld [bc], a
    db $ec
    pop af
    ld de, $ffcc
    rst $38
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
    db $ed
    db $ec
    ld hl, $dde0
    jr jr_02b_6450

    ret c

    ld l, h
    rlc b
    or d
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
    di
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
    nop
    nop
    jr z, @+$2a

    nop
    nop
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    rst $38
    ld a, a
    ld b, [hl]
    add hl, sp
    ld l, h
    ld a, [hl-]
    ld a, [c]
    inc bc
    ld a, [c]
    inc bc
    nop
    inc bc
    db $fd
    ld [$10c8], sp
    rst $38
    ld a, a
    ld [hl], a
    ld e, a
    jp nc, Jump_02b_694a

    dec h
    rst $38
    ld a, a
    rst $18
    ld c, d
    rra
    add hl, hl
    ld l, [hl]
    ld c, h
    ld a, [c]
    inc bc
    sbc a
    nop
    rra
    ld [bc], a
    ld b, b
    ld a, l
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    rst $18
    add b
    nop
    ccf
    nop
    ld a, a
    cp $e4
    or l
    add b
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    db $fd
    ld bc, $01ff
    rst $38
    ei
    ld bc, $01f5
    xor c
    ld bc, $0153
    ei
    rst $38
    cp $e0
    and $1f
    rst $38
    ld a, l
    rst $38
    ld_long $ffff, a
    ret nc

    rst $38
    ld [$7d7f], a
    cp a
    rra
    rst $28
    ld b, l
    nop
    add d
    nop
    db $fc
    db $e3
    rst $38
    ld d, a
    rst $38
    rst $38
    cp l
    rst $38
    pop af
    cp a
    ld bc, $05ff
    cp a
    pop bc
    add hl, bc
    db $fc
    pop hl

Call_02b_65b7:
    add sp, -$1b
    ldh [$e6], a
    add sp, -$1c
    ldh [$e6], a
    add b
    pop hl
    rst $38
    ldh [$7f], a
    ld a, a
    rra
    adc a
    nop
    ld b, b
    nop
    rst $38
    add l
    nop
    ld b, d
    nop
    add l
    rst $38
    inc bc
    ld e, a
    rst $38
    rrca
    db $fd
    rst $38
    pop af
    rst $38
    ld bc, $05bf
    ld sp, hl
    ld a, a
    cp a
    pop hl
    db $ec
    ldh [$a5], a
    nop
    jp z, $f580

    rst $38
    ldh [$7f], a
    rst $38
    ccf
    db $eb

jr_02b_65ed:
    ld b, b
    ret nc

    add b
    cp $c3
    db $e3
    inc bc
    cp a
    rrca
    cp $ff
    db $fc
    cp $7f
    ld [bc], a
    dec bc
    ld bc, $077f
    scf
    rlca
    db $fc
    jp hl


    or l
    rst $38
    rst $38
    db $ec
    ld a, d
    jr nc, jr_02b_65ed

    ccf
    nop
    rst $38
    ldh [$7f], a
    rst $38
    dec a
    ld b, d
    ld a, [hl+]
    ld d, l
    xor a
    rrca
    rst $38
    rrca
    ld sp, hl
    rst $28
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    ld c, a
    cp b
    adc a
    ld a, h
    sbc a
    ld a, [c]
    ldh a, [$f7]
    ldh a, [$f3]
    db $fc
    ldh [rIE], a
    ldh [$f7], a
    sbc a
    ld d, e
    inc b
    ld a, [c]
    dec b
    xor a
    ld [de], a
    ldh [$fe], a
    pop hl
    ld bc, $00ff
    ld bc, $43ff
    cp a
    add e
    ld a, a
    inc [hl]
    rst $38
    ld c, e
    add hl, hl
    ld d, [hl]
    inc d
    ld l, e
    jr nz, @+$61

    ld [$77ff], sp
    jr nz, jr_02b_66af

    nop
    ld a, a
    rst $38
    ld a, a
    rrca
    ld a, a
    ld a, [$fd0f]
    ld c, $f0
    nop
    rst $38
    cp $e3
    rst $38
    rst $38
    rst $38
    pop af
    ld b, $f2
    dec b
    add b
    rlca
    xor [hl]
    ldh a, [$e7]
    dec b
    rst $38
    inc bc
    db $fc
    ldh [rNR13], a
    db $fc
    ld [c], a
    ld b, l
    cp $73
    ldh [$c3], a
    pop bc
    cp a
    add a
    cp $8c
    ld sp, hl
    rst $38
    sbc b
    di
    or e
    or $a6
    db $ec
    db $e4
    db $ec

jr_02b_6687:
    rst $38
    ret z

    ldh a, [$e0]
    adc [hl]
    nop
    ld a, [hl]
    inc a
    ld [$c0ef], a
    add d
    nop
    ld [bc], a
    cp $e2
    ret c

    ret z

    ret c

    ccf
    ret nc

    ret c

    sub b
    or b
    sub b
    cp b
    db $fc
    ldh [$fe], a
    pop hl
    cp [hl]
    ld [$02e0], a
    ld c, $00
    ld [de], a
    ld [bc], a
    cp $e0

jr_02b_66af:
    ld [de], a
    rst $28
    ld e, $0e
    ld c, $02
    and $e3
    cp d
    sub b
    cp a
    adc a
    sbc l
    cp a
    add b
    add b
    ld [hl], b
    ret nz

    ldh [$e1], a
    add $e1
    cp $fb
    ld b, b
    cp $2c
    ldh [rIE], a
    rst $38
    sub b
    add b
    ret z

    rst $38
    ld b, b
    ld h, h
    jr nz, jr_02b_6687

    db $10
    ld e, c
    ld [$f32c], sp
    inc b
    ld d, $f0
    ret nz

    ld b, b
    jp nz, Jump_02b_7f05

    ld a, [hl+]
    rst $38
    rst $38
    ld e, a
    rst $38
    inc h
    cp $12
    dec hl
    ld bc, $7f03
    nop
    db $fd
    add hl, hl
    rst $38
    ld d, l
    rst $38
    db $fd
    add sp, -$40
    rst $18
    inc h
    ei
    ld c, b
    ret nc

    sub b
    ret nc

jr_02b_66fe:
    pop hl
    jr nz, jr_02b_6701

jr_02b_6701:
    rst $38
    rst $30
    nop
    rst $30
    jr nz, jr_02b_66fe

    ld d, l
    rst $30
    or d
    rst $38
    rst $38
    rst $30
    add hl, bc
    ld bc, $0213
    inc b
    nop
    rst $38
    ei
    db $10
    ei
    xor b
    rst $38
    ld e, c
    ei
    ld_long a, $ffff
    ei
    nop
    rst $38
    inc sp
    call z, $804c
    rst $38
    ld c, l
    add b
    ld [hl-], a
    call $ca35
    ld c, b
    add a
    ld [hl], e
    ld d, l
    adc d
    inc e
    ldh [$98], a
    pop hl
    nop
    xor b
    ld d, a
    ld b, l
    ret nz

    rst $38
    ld a, [$d52a]
    nop
    rst $38
    ld [$bb15], a
    rst $38
    nop
    ld [$0015], a
    rst $38
    ld a, [hl+]
    push de
    ld d, l
    rst $38
    xor d
    cp a
    ld b, b
    ld e, b
    add a
    ld d, b
    adc a
    ld a, c
    cp a
    add [hl]
    ld d, b
    adc a
    ld [hl], b
    adc a
    ld e, c
    ld a, [$58e0]
    rst $38
    add a
    ld d, a
    xor b
    cp l
    ld b, d
    ld l, a
    sub b
    cp a
    rst $38
    ld b, b
    cp a
    ld b, b
    ld l, a
    sub b
    cp l
    ld b, d
    ld d, a
    rst $20
    xor b
    rst $28
    db $10
    push de
    call nz, $c2cd
    rst $28
    db $10
    ld a, a
    rst $38
    rst $38
    add b
    ret nz

    sub c
    add b
    xor a
    add a
    xor d
    rst $38
    adc h
    xor [hl]
    adc c
    adc l
    adc d
    xor [hl]
    adc c
    rst $38
    rst $38
    rst $38
    ld [hl], b
    jr nz, jr_02b_6807

    jr nz, @+$01

    rst $38
    cp [hl]
    rst $38
    inc b
    cp [hl]
    ld c, c
    ld e, l
    xor d
    inc a
    sra b
    rst $38
    adc e
    ld l, [hl]
    add hl, bc
    dec e
    ld a, [bc]
    rst $38
    ldh a, [$bf]
    rst $38
    add hl, bc
    cp [hl]
    ld b, [hl]
    ld e, a
    and h
    ld a, $c9
    adc b
    rst $38
    adc e
    sbc $89
    db $fd
    ld a, [$88df]
    adc a
    rst $38
    adc e
    xor [hl]
    adc h
    adc a
    adc b
    xor h
    adc e
    ld a, $ff
    ret


    rra
    db $e4
    xor e
    ld d, d
    rst $18
    dec h
    ei
    ld a, a
    adc b
    rst $30
    ld d, b
    cp $21
    ld a, l
    sub d
    or b
    pop hl
    rst $38
    sbc [hl]
    add b
    cp c
    add b
    or a
    add e
    or l
    add h
    rst $38
    sub a
    add h
    xor [hl]
    add l
    rst $38
    rst $38
    ld c, $04
    rst $38
    and h
    inc b
    ld c, $04
    rst $38
    rst $38
    ld a, [hl]
    nop
    rst $28
    ld d, e
    xor c
    xor e
    ld d, a
    ld b, c
    pop hl
    cp l

jr_02b_67fa:
    nop
    ld [$55be], sp
    ret nz

    ld h, b
    ldh [$8a], a
    ret nz

    ccf
    ld c, l
    ret nz

    ld [hl], b

jr_02b_6807:
    rst $28
    jr nz, @+$27

    jr nz, jr_02b_687e

    adc [hl]
    ldh [$29], a
    inc bc
    ld a, [c]
    rst $38
    ld b, $a4
    ld c, h
    sub a
    add h
    add [hl]
    add l
    rst $08
    rst $38
    add h
    db $fc
    db $fd
    rst $08
    add a
    sub [hl]
    add [hl]
    xor h
    rst $38
    add h
    sbc l
    add h
    inc e
    xor $59
    cp b
    db $e3
    rst $38
    ld [hl], b
    call $1fc0
    add b
    ld a, [hl]
    ld bc, $fff5
    ld a, [bc]
    ld l, b
    rla
    ld a, a
    nop
    ld a, [$d505]
    rst $38
    ld a, [hl+]
    and e
    ld e, h
    ret


    inc sp
    sbc a
    ld h, [hl]
    ld c, l
    rst $38
    sbc h
    db $fd
    ld [hl-], a
    ld [$9018], a
    jr nc, jr_02b_67fa

    rst $38
    ld h, b
    call nz, $ffc0
    rst $38
    rla
    nop
    jp nc, $2dff

    ld c, $f0
    xor h
    add h
    sub h
    add h
    add l
    rst $38
    add h
    call $fc84
    db $fc
    call z, $9785
    rst $38
    add a
    xor [hl]
    add h
    ld a, [c]
    inc c
    and $19
    db $db
    rst $38
    daa
    ld c, a
    sbc l
    add hl, sp
    ld [hl], c
    push hl
    pop bc
    sub e
    rst $38

jr_02b_687e:
    ld bc, $0105
    ld [hl], b
    rst $28
    push hl
    sbc d
    add hl, bc
    rst $38
    ld [hl], l
    jp Jump_000_0e3b


    db $76
    call $9934
    rst $38
    ld l, l
    sbc e
    ld l, c
    ld a, a
    adc a
    ldh a, [$78]
    add a
    rst $38
    jp $1c3f


    cp $61
    ret nc

    adc a
    ret nz

    rst $38
    ccf
    add b
    ld a, a
    rst $38
    rst $38
    jp nz, $e0c0

    rst $38
    and b
    or e
    sub a
    sub b
    adc h
    adc c
    adc b
    xor d
    cp a
    adc b
    adc d
    adc b
    rst $38
    rst $38
    jr z, @+$2a

    jp nz, $bf03

    ld bc, $0113
    add c
    ld a, a
    ld d, c
    ld sp, $15a0
    cp $d6
    and b
    rst $38
    rst $38
    add b
    nop
    sub h
    nop
    adc c
    db $fd
    ld a, [hl]
    adc [hl]
    and c
    ld d, e
    inc bc
    add a
    dec b
    call $ffe9
    add hl, bc
    ld sp, $1199
    ld d, l
    ld de, $1159
    rst $30
    xor d
    adc b
    xor b
    ret z

    ldh [$88], a
    adc b
    xor l
    adc b
    ld [hl], a
    adc a
    adc a
    adc l
    ld hl, sp-$20
    xor e
    rst $38
    push af
    db $fd
    adc d
    rst $18
    ld d, b
    rst $38
    xor d
    rst $38
    ld [hl], l
    db $eb
    adc b
    ld e, l
    ld de, $17ff
    add hl, de
    ld d, c
    dec e
    inc de
    dec e
    or e

Call_02b_690b:
    dec e
    ld a, a
    ld sp, hl
    rst $38
    or e
    dec e
    add hl, de
    rra
    adc d
    call nz, $dde0
    adc d
    add [hl]
    ld [c], a
    xor c
    adc b
    xor h
    and b
    ret nz

    inc e

Jump_02b_6920:
    inc c
    rst $38
    ld d, e
    ld [de], a
    ld de, $f311
    ld h, b
    adc c
    add b
    rst $38
    add a
    add b
    ld c, a
    ld b, d
    rst $30
    ld b, c
    nop
    nop
    rst $38
    ld [hl], h
    ld h, b
    sub b
    sub b
    ld e, [hl]
    inc e
    or [hl]
    ld [bc], a
    rst $38
    xor $02
    cp $84
    cp $52
    sbc a
    add d
    rst $38
    rst $08
    add l
    ld a, a
    ld [hl], d

Jump_02b_694a:
    ld c, a
    ld a, a
    jr nz, jr_02b_698d

    rst $28
    ld hl, $9f3f
    rra
    ld a, b
    and b
    xor d
    cp $d4
    rst $38
    db $fc
    db $fc
    db $f4

jr_02b_695c:
    db $fc
    xor h
    ld hl, sp+$5e
    ld_long a, $ffff
    db $fd
    cp $2a
    rlca
    rlca
    ld h, $07
    ld a, l

jr_02b_696b:
    ld b, $7a
    add b
    cp $ff
    ret nz

    rst $38
    xor $fc
    ldh [rIE], a
    add b
    add b
    ld c, b
    ret nz

    jr nz, jr_02b_695c

    ld [hl], d
    ldh a, [rIE]
    ld [$04f8], sp
    db $fc
    cp [hl]
    cp $01
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld [bc], a
    inc bc
    ld b, e

jr_02b_698d:
    inc bc
    ld l, d
    inc bc
    rst $38
    ld h, d

jr_02b_6992:
    inc bc
    ld [hl+], a
    inc hl
    ld c, $07
    inc bc
    ld bc, $ffff
    rst $38
    ret nz

    ret nz

    ld c, [hl]
    ret nz

    call c, $ffc0
    ld b, b
    ret nz

    db $f4
    ret nz

    ld a, d
    ldh [$f4], a
    add b
    rst $38
    nop
    nop
    inc h
    nop
    jr nc, jr_02b_69b2

jr_02b_69b2:
    ld [de], a
    nop
    rst $38
    ld b, $00
    ld h, [hl]
    ld [bc], a
    inc [hl]
    inc d
    nop
    nop
    db $dd
    ret nz

    and [hl]
    ld h, b
    sub [hl]
    nop
    call nz, $e0f8
    sbc b
    nop
    rst $10
    adc h
    ld [$87c0], sp
    add b
    sbc c
    inc [hl]
    add b
    ld h, b
    nop
    db $ed
    ld [hl-], a
    sbc $e0
    inc h
    inc b
    ld h, [hl]
    and c
    reti


    nop
    add b
    cp a
    nop
    ret z

    nop
    jp nz, $8600

    sbc $c0
    ret nz

    xor [hl]
    jr jr_02b_696b

    jr nz, jr_02b_69ed

jr_02b_69ed:
    inc b
    ldh [$e0], a
    jr nc, jr_02b_6992

    add b
    ld b, h
    db $fc
    ld a, [bc]
    add c
    db $fc
    push hl
    add hl, bc
    ld [bc], a
    nop
    dec b
    nop
    inc bc
    rst $38
    ld [$0000], sp
    ld bc, $070a
    jr z, @+$61

    rst $38
    nop
    scf
    ld c, b
    db $fc
    inc bc
    cp b
    ld b, [hl]
    ldh [rIE], a
    rra
    ccf
    ld b, b
    ld a, [$7f05]
    add b
    ldh [rIE], a
    rra
    nop
    ld a, [$df00]
    rrca
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    ld b, $01
    dec d
    ld a, [bc]
    rrca
    jr nz, @+$1c

    rst $38
    dec b
    ld e, $61
    inc a
    inc bc
    jr z, jr_02b_6a8b

    ld a, b
    rst $38
    dec b
    pop bc
    scf
    add e
    ld a, a
    ld c, $ff
    rra
    rst $38
    rst $38
    ld [hl], $7f
    inc l
    db $fc
    ld a, b
    ld hl, sp-$10
    rst $38
    ld hl, sp-$11
    rst $38
    ld hl, sp-$04
    pop bc
    pop hl
    sub a
    rst $38
    sub a
    cpl
    cpl
    rra
    rra
    ld e, a
    ld e, a
    cp a
    rst $38
    cp a
    ld [hl], b
    rrca
    ld d, c
    and a
    and c
    ld e, e
    ld b, c
    rst $38
    or a
    and d
    ld c, e
    ld bc, $02f7
    db $eb
    nop
    rst $38
    and e
    or c
    pop af
    ldh [$e0], a
    ret nz

    ldh [rLCDC], a
    rst $38
    ret nz

    add c
    pop bc
    nop
    ret nz

    add c
    add c
    ld [bc], a
    rst $38
    add d
    ld e, a
    ld e, a
    ccf
    ccf
    ld d, a
    ld d, a
    xor a
    rst $38
    xor a
    ld d, l
    ld d, l
    adc d

jr_02b_6a8b:
    adc d
    ld de, $0211
    rst $38
    ld [bc], a
    rst $38
    nop
    xor d
    ld d, l
    ld d, l
    xor d
    nop
    rst $38
    rst $38
    inc a
    rst $38
    rst $20
    rst $38
    add c
    jp $ff00


    nop
    add $3e
    and h
    ld e, [hl]
    call z, $a83c
    rst $38
    ld e, h
    ret z

    inc a
    xor h
    ld e, h
    call nz, $a63e
    rst $38
    ld e, [hl]
    ld b, [hl]
    cp [hl]
    add h
    ld a, [hl]
    inc l
    call c, Call_02b_7f08
    db $fc
    inc a
    cp $e8
    ld hl, sp-$80
    ret z

    ld c, e
    ld h, b
    cp $80
    and b
    db $ed
    ld [de], a
    jp nc, $e82d

    rla
    and c
    cp a
    ld e, a
    db $d3
    cpl
    and [hl]
    ld e, a
    rst $38
    inc sp
    add b
    xor d
    ld a, [hl]
    add d
    ld h, b
    inc a
    jp Jump_000_18e7


    add c
    ld b, d
    ret nz

    ldh [rIE], a
    ld hl, sp-$5c
    ld a, [$f0cc]
    xor b
    db $f4
    ret z

    rst $38
    db $f4
    xor h
    ldh a, [$c4]
    ld a, [$f8a6]
    ld b, d
    rst $38
    db $fc
    and h
    ld a, [$f844]
    ld [$1cf4], sp
    ld e, a
    ld [c], a
    ld l, b
    sub b
    add b
    ld c, b
    sbc $61
    cp $ee
    and b
    ld a, [hl]
    ld d, a
    ld b, c
    ldh [rIE], a
    pop de
    cp $a2
    db $fd
    db $ed
    jp Jump_02b_5555


    ldh a, [rLCDC]
    xor d
    ld_long a, $ffe0
    db $ec
    ret nz

    inc de
    db $fc
    db $ec
    rst $30
    dec bc
    nop
    daa
    db $fc
    ldh [$57], a
    nop
    xor [hl]
    ld bc, $04a4
    and c
    cp l
    push bc
    ld [bc], a
    cp l
    pop bc

jr_02b_6b35:
    ld a, [$20e2]
    ld b, [hl]
    ld h, b
    ld [$00c3], sp
    db $10
    ld c, a
    ld b, b
    add c
    ret nz

    cp $ee
    add b
    ld b, [hl]
    ld a, a
    inc de
    ld l, a
    ld bc, $0103
    ld hl, $4771
    cp $94
    ld e, b
    ret nz

    rst $38
    inc b
    rst $38
    ld d, l
    rra
    add hl, de
    rra
    ld d, l
    rra
    db $fd
    ld e, a
    db $fc
    ldh [$9f], a
    rra
    dec d
    ccf
    add hl, sp
    rst $38
    rst $38
    adc l
    adc e
    xor c
    adc a
    adc a
    add a
    sbc e
    adc b
    sbc a
    or l
    sub b
    ld [c], a
    and b
    ret nz

    xor d
    add b
    ld b, b
    ld b, e
    ld a, [hl+]
    ld a, a
    rst $38
    add l
    ld a, a
    ret nc

    cpl
    ld e, d
    dec b
    cp c
    ldh [$fa], a
    cpl
    ld b, d
    xor d
    sub e
    jr nz, jr_02b_6b35

    rst $38
    add d
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $30
    db $fd
    pop af
    rst $38
    db $e3
    db $fd
    rla
    rst $38
    ld sp, hl
    ld e, c
    db $ed
    dec c
    rst $30
    cp e
    ld b, e
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld [bc], a
    add b
    dec d
    add b
    cpl

jr_02b_6baa:
    cp $fc
    ldh [$35], a
    adc d
    add b

jr_02b_6bb0:
    nop
    ld bc, $ff81
    rst $28
    rst $38
    xor e
    ld bc, $4e7f
    jr nz, @-$01

    ld bc, $ff0b
    push af
    nop
    ld bc, $8199
    db $e3
    db $e3
    ld hl, $a1ef
    add c
    and c
    pop bc
    cp $e0
    jp Jump_000_00a3


    rst $38
    add b
    dec h
    add b
    sub a
    add a
    add a
    add l
    sub l
    ei
    add a
    add l
    cp $e0
    rst $00
    push bc
    nop
    ld bc, $eda5
    ld bc, $ebc0
    inc bc
    add e
    ret nz

    db $eb
    ret


    pop bc
    and $df
    and $26
    and [hl]

jr_02b_6bf3:
    add b
    and b
    jp nz, $c7e1

    and a
    cp $c0
    pop hl
    ld h, a
    ld h, a
    ld h, a
    ld h, l
    push bc
    rst $00
    add l
    rst $18
    add a
    dec h
    daa
    rst $20
    push hl
    ret nz

    pop hl
    and $e6
    rst $38
    jr nz, jr_02b_6bb0

    add c
    and c
    ret nz

    and b
    add $a6
    cp h
    and b
    db $e3
    ldh [$e3], a
    ld h, l
    ld h, a
    ld h, l
    ld h, a
    and b
    db $e3
    ld [hl], c
    rst $38
    cp $c0
    ldh a, [$86]
    pop bc
    jr jr_02b_6baa

    nop
    rst $38
    add b
    add b
    ld b, b
    add b
    jr nc, jr_02b_6bf3

    adc [hl]
    ld [hl], a
    rst $38
    adc a
    dec c
    inc bc
    add d
    ld h, c
    ld bc, $0118
    rst $38
    nop
    inc bc
    nop
    dec c
    nop
    ld [hl], e
    adc l
    ldh [rIE], a
    pop de
    db $eb
    db $f4
    or b
    ld hl, sp-$1f
    db $f4
    ld b, e
    rst $38
    ldh [$c1], a
    ldh [$e0], a
    ld hl, sp-$47
    cp $0f
    rst $38
    ld [hl], e
    rst $38
    rlca
    cp l
    ld c, a
    ld l, a
    add a
    rst $30
    ld a, a
    inc bc
    ld a, l
    add e
    cp b
    ld b, a
    pop hl
    rra
    nop
    nop
    nop
    cp a
    ld h, d
    ld d, a
    ld e, a
    ld e, e
    dec bc
    inc c
    rst $38
    db $e3
    ld bc, $0097
    ld bc, $fd00
    ldh [rSB], a
    ld hl, sp-$1b
    jp hl


    db $e4
    dec bc
    sbc a
    ld e, e
    ld e, a
    ld d, a
    ld h, d
    ld h, e
    rst $38
    db $f4
    ret nz

    pop hl
    dec c
    ei
    ld c, $0f
    cp $e1
    stop
    ld bc, $0202
    cp a
    ld bc, $1500
    ld d, $16
    dec d
    or $e3
    db $10
    db $76
    jp hl


    ld [c], a
    ld c, $0d
    ret nz

    db $fd
    ld de, $1312
    cp $e1
    rst $38
    inc d
    ld bc, $0300
    inc b
    ld bc, $1700
    rst $38
    jr @+$1a

    rla
    nop
    ld bc, $0304
    nop
    dec de
    ld bc, $e914
    ld [c], a
    ld [de], a
    ld de, $fd80
    ld c, h
    pop hl
    db $fc
    db $e3
    rst $38
    dec b
    ld b, $00
    ld bc, $1a19
    ld a, [de]
    add hl, de
    cpl
    ld bc, $0600
    dec b
    db $eb
    and $00
    ld b, b
    db $fd
    pop bc
    push hl
    rst $38
    dec de
    dec de
    dec b
    ld b, $1b
    jr nz, @+$23

    ld [hl+], a
    rst $38
    ld [hl+], a
    ld hl, $1b20
    ld b, $05
    dec de
    dec de
    ldh a, [$a8]
    push hl
    add b
    rst $38
    ld a, [hl]
    db $e3
    ret nz

    ld [c], a
    inc hl
    inc h
    dec h

Jump_02b_6cff:
    dec h
    db $e3
    inc h
    inc hl
    ret nz

    ld [c], a
    add b
    rst $38
    ret nz

    jp nz, Jump_02b_5a5c

    ld e, l
    cp l
    ld c, d
    rst $38
    ld [c], a
    dec de
    dec de
    rlca
    ld [$e580], sp
    ld [$07ef], sp
    dec de
    dec de
    ld c, e
    jp hl


    ld [c], a
    ld e, l
    ld e, d
    ld e, h
    cp $80
    jp nz, Jump_000_1b1b

    ld c, l
    ld c, [hl]
    ld c, a
    ld c, a
    ld c, [hl]
    cp l
    ld c, l
    add b
    adc $63
    ld h, e
    ld e, e
    ld c, b
    rst $38
    ld [c], a
    dec de
    rst $28
    dec de
    add hl, bc
    ld a, [bc]
    dec de
    rst $38
    db $e4
    ld a, [bc]
    add hl, bc
    dec de
    ld a, e
    dec de
    ld c, c
    jp hl


    ld [c], a
    ld e, e
    ld h, c
    ld e, [hl]
    ld h, b
    ret nz

    db $e3
    cp a
    ld d, b
    ld d, c
    ld d, d
    ld d, d
    ld d, c
    ld d, b
    ret nz

    ld a, [c]
    ld c, h
    cp [hl]
    rst $38
    ldh [rOBP0], a
    nop
    ld bc, $1d1c
    cp $e7
    nop
    ei
    ld bc, $ea49
    ld [c], a
    ld e, e
    ld e, a
    ld e, c
    ld d, [hl]
    ld e, b
    cp $00
    ret nz

Jump_02b_6d6d:
    nop
    ld bc, $5453
    ld d, l
    ld d, l
    ld d, h
    db $fd
    ld d, e
    add b
    pop af
    ld c, h
    ld h, $27
    daa
    ld h, $49
    ld [hl], e
    ld b, b
    ld b, c
    add d
    push hl
    ld a, d
    pop hl
    ld c, e
    ld c, d
    ld c, b
    ld [$9ae2], a
    jp nz, Jump_02b_62a1

    ret nz

    and b
    ld b, h
    ld b, l
    ldh a, [$e3]
    ret nz

    ld a, [c]
    add hl, hl
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    add hl, hl
    ld c, c
    ld b, d
    ld b, e
    ld e, $1f

jr_02b_6da0:
    jr nc, jr_02b_6da0

    rst $20
    ld b, d
    ldh [$ea], a
    ld [c], a
    add b
    push hl
    ld b, [hl]
    ld b, a
    ldh a, [$e3]
    ret nz

    pop de
    rra
    ld c, h
    ld h, $28
    jr z, jr_02b_6ddb

    ld de, $b8e0
    jp $c3b2


    db $e3
    ld c, b
    ld c, b
    ld [$00e3], a
    push hl
    add b
    reti


    ld c, b
    ld c, d
    add hl, hl
    ei
    add hl, hl
    ld c, e
    db $fc
    pop bc
    ld c, h
    dec hl
    inc l
    dec l
    ld l, $0f
    ld l, $2d
    inc l
    dec hl
    inc b
    ld [c], a
    ld [$80e2], a

jr_02b_6ddb:
    push bc
    nop
    or [hl]
    xor $00
    ld [c], a
    jr z, @+$2a

    daa
    rst $38
    ldh [rNR52], a
    ld c, c
    cpl
    rst $38
    jr nc, jr_02b_6e1d

    ld [hl-], a
    ld [hl-], a
    ld sp, $2f30
    ld c, c
    and $ee
    ret nz

    daa
    daa
    ld l, d
    db $e3
    ret nz

    add e
    ld l, e
    ld l, h
    ld h, e
    ld [hl], e
    ld l, a
    ld [hl], b
    db $fd
    pop hl
    ret nz

    adc h
    ld h, b
    ld e, [hl]
    ld h, c
    nop
    ld [c], a
    cp $fe
    pop hl
    add hl, hl
    ld c, c
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $36
    rst $08
    dec [hl]
    inc [hl]
    inc sp
    ld c, c
    xor $e6
    nop
    push bc

jr_02b_6e1d:
    ld l, l
    ld l, [hl]
    cp a
    ld h, e
    ld [hl], c
    ld [hl], d
    ld h, e
    ld [hl], e
    ld [hl], h
    add b
    adc h
    ld e, b
    ld [hl], a
    ld d, [hl]
    ld e, c
    ld e, a
    ret nz

    ld a, [$635b]
    ld h, e
    ld b, b
    sbc c
    add c
    ld h, d
    cp $61
    ld b, b
    pop bc
    ld a, $e1
    ld b, b
    db $eb
    xor $e3
    ret nz

    and l
    ld [hl], l
    ld a, a
    db $76
    ld h, e
    ld [hl], $36
    ld h, e
    ld c, d
    ld c, d
    ret nz

    pop af
    adc h
    add a
    pop bc
    cp [hl]
    ret nz

    ld c, d
    ld c, d
    ret nz

    rst $00
    xor $e6
    ret nz

    and l
    ld [hl], a
    ld c, l

jr_02b_6e5c:
    ld a, b
    ret nz

    pop hl
    ld c, b
    ld c, h
    add b
    ldh a, [$3e]
    ret nc

    ld c, h
    ld b, d
    call nz, Call_000_0200
    and e
    ret nz

    and c
    ld b, b
    ld hl, sp-$42
    and [hl]
    ld hl, sp-$80
    ld [hl], l
    and e
    rst $30
    pop hl
    jp nz, Jump_000_00a3

    ld [bc], a
    ld [c], a
    ret nz

    ld hl, sp-$40
    pop bc
    ld a, $a6
    ret


    and $b7
    and $c0
    cp $40
    pop bc
    inc b
    ld a, [hl]
    add c
    ld c, e
    ld [c], a
    ld c, h
    ret nz

    and $f6
    ldh [$39], a
    ld [c], a
    ld b, d
    add c
    ret nz

    add e
    jr c, jr_02b_6e5c

    cp b
    ld a, [hl]
    and c
    dec a
    add c
    ld c, h
    ld b, b
    ld b, c
    ld c, c
    db $e4
    or $e1
    ldh [rIE], a
    db $e4
    ld b, b
    cp l
    ret nz

    and c
    inc d
    and b
    adc [hl]
    pop hl
    ld c, b
    ld b, d
    ld b, e
    nop
    ld b, b
    push hl
    or $e0
    db $ec
    db $e4
    nop
    call c, $a2c0
    add [hl]
    pop hl
    add h
    pop hl
    add b
    jp hl


    ld bc, $ec4c
    db $e3
    add b
    db $fd
    nop
    jp $e086


    adc [hl]
    pop hl
    add b
    pop hl
    add b
    jp $f200


    db $e3
    ld a, d
    pop hl
    ret nz

    ld h, l
    add b
    cp b
    cp $40
    add b
    and $3c
    add d
    or $c1
    ldh a, [$80]
    db $e3
    nop
    rst $18
    cp [hl]
    add e
    add b
    and $48
    ld c, h
    scf
    jr c, @-$7b

    add hl, sp
    ld a, [hl-]
    or h
    ld h, b
    ld l, h
    db $e3
    ld [bc], a
    ld h, e
    ret nz

    cp d
    cp [hl]
    add c
    ld e, h
    di
    ld e, d
    ld e, d
    ld a, [$8a60]
    jp nz, Jump_000_3b4c

    inc a
    dec a
    dec e
    ld a, $34
    ld h, b
    ld c, b
    ld c, b
    ld e, l
    db $eb
    ldh [rSCY], a
    jp $ba80


    ldh a, [$7e]
    ld [c], a
    ei
    and b
    ld a, [$8ac2]
    ld h, b
    ccf
    ld h, h
    ld h, l
    ld h, [hl]
    sbc [hl]
    add b
    ld [c], a
    ld e, e
    ld h, e
    ld h, c
    ld e, [hl]
    add d
    db $e3
    ret nz

    db $fc
    ld e, b
    ld sp, hl
    ld d, [hl]
    ld a, e
    and c
    ld a, h
    db $e3
    ld c, b
    ld c, h
    ld h, a
    ld l, b
    ld l, c
    add hl, bc
    ld l, d
    ld a, [bc]
    add b
    add h
    ldh [$63], a
    add l
    ld b, b
    add d
    ld [c], a
    add b
    db $fc
    ld a, l
    db $e4
    nop
    ld a, e
    ldh [$f6], a
    ld hl, $6203
    ld a, [bc]
    ld b, b
    rst $28
    ldh [$83], a
    db $e4
    ret nz

    rst $38
    ld a, l
    pop hl
    nop
    ld a, e
    pop hl
    ld hl, sp-$3f
    db $fd
    ld [c], a
    ld c, d
    and c
    db $ed
    ldh [$83], a
    db $e3
    ret nz

    rst $38
    ld a, e
    jp hl


    nop
    db $fc
    db $e3
    add l
    rst $20
    ret nz

    rst $38
    ld a, e
    ld [$e5fc], a
    add l
    and $c0
    rst $38
    rst $38
    rst $38
    nop
    ld b, b
    ld d, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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

    dec d
    nop
    nop
    nop
    ld e, a
    inc c
    inc l
    inc l
    ld a, [hl+]
    dec c
    rst $38
    add sp, $2d
    rst $38
    ldh [$7c], a
    ld hl, sp-$1b
    db $fc
    push hl
    ld a, [bc]
    inc c
    inc c
    ld c, h
    ld [$f4ff], sp
    nop
    ret nz

    db $ec
    jp nz, $bee2

    ld [c], a
    ret nz

    rst $38
    ret nz

    pop af
    ld a, h
    and $80
    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ld b, b
    db $ec
    ld b, $e2
    inc b
    push hl
    db $fd
    rst $00
    ret nz

    rst $38
    pop bc
    rst $20
    dec b
    db $e4
    ld a, b
    db $fc
    push hl
    ret nz

    rst $38
    add b
    ret nz

    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec hl
    cp $e1
    ld a, [hl]
    add b
    ld [c], a
    ld c, l
    ld c, l
    ld c, l
    ld l, l
    ld l, l
    ld l, l
    add b
    ld [c], a
    or $ea
    db $e3
    ld a, [bc]
    ld a, [bc]
    add b
    db $e3
    dec c
    dec l
    ld c, $0e
    ld l, a
    ld c, $2e
    ld l, $2e
    add b
    adc $0c
    inc c
    ret nz

    db $e4
    sub b
    add b
    db $e3
    cp $e4
    add hl, sp
    ret nz

    ret nz

    db $e4
    inc c
    rst $38
    ldh [rLCDC], a
    ldh [$2d], a
    ld d, l
    dec c
    ret nz

    rst $30
    dec hl
    add b
    pop hl
    dec bc
    cp b
    call Call_02b_690b
    ld [c], a
    ld [$e5c0], a
    dec c
    ret nz

    ld hl, sp+$0b
    sbc h
    ldh [$2c], a
    dec bc
    dec bc
    and c
    dec bc
    add d
    and $b5
    ret nz

    inc l
    ldh [$a3], a
    and b
    inc l
    ret nz

    pop hl
    ld c, h
    ld hl, $c04c
    ret nz

    pop hl
    ldh [$f0], a
    ld [c], a
    add b
    ld a, [c]
    ld c, h
    ld a, b
    and b
    ret nz

    ldh [rDIV], a
    add d
    db $ec
    xor e
    ldh [$6c], a
    add b
    ldh [$c1], a
    ldh [$c0], a
    ld [c], a
    ldh a, [$e3]
    add b
    xor [hl]
    rst $38
    ld l, d
    ld c, d
    ld l, d
    dec bc
    ld c, h
    ld c, h
    ld l, h
    ld l, h
    ret z

    ld d, c
    db $e3
    db $fc
    jp hl


    ld [$0ae2], a
    pop bc
    pop hl
    add b
    db $dd
    dec bc
    ld c, h
    ld b, c
    inc l
    ld a, h
    jp $c1d3


    ld c, d
    ldh [$33], a
    ldh [$6d], a
    pop bc
    inc c
    xor e
    ldh [rBGP], a
    ld c, d
    ld c, d
    ld c, d
    nop
    db $db
    nop
    db $e3
    ld a, c
    ret nz

    inc l
    db $fc
    ret nz

    ld h, b
    ret nz

    and $f2
    pop hl
    db $fd
    pop hl
    cp e
    ret nz

    ret nz

    and e
    inc c
    inc c
    db $fd
    db $e4
    nop
    ret nz

    adc l
    ld a, [hl]
    add b
    nop
    ldh [$bf], a
    pop hl
    ret nz

Jump_02b_70ff:
    db $eb
    pop bc
    ld [c], a
    nop
    ldh [rP1], a
    call nz, $c012
    ld sp, hl
    dec bc
    ret nz

    and $d4
    pop bc
    ld l, h
    rst $38
    ldh [$c0], a
    add sp, $00
    call nz, Call_000_3eb8
    or e
    ld h, l
    ret nz

    add b
    ld [c], a
    ld l, h
    ld l, h
    ld c, h
    cp $e0
    ld l, h
    ret z

    ret nz

    rst $20
    xor [hl]
    ret nz

    xor $e0
    ld c, h
    ret nz

    db $e4
    ld c, d
    ldh [$0a], a
    ld a, [bc]
    ld c, $13
    add b
    ld [$2b0b], sp
    ret nz

    pop af
    sub $a1
    cp [hl]
    ret nz

    adc l
    jp nz, $80f0

    db $e4
    jp nz, $c0c4

    and h
    ret nz

    db $e3
    ld c, h
    ld l, h
    ld [$002b], sp
    nop
    call z, $e380
    cp $80
    adc c
    pop bc
    ld a, $cb
    xor $e2
    ld [bc], a
    and d
    cp a
    and b
    nop
    ld b, b
    ld a, [$81fe]
    cp [hl]
    and d
    ret


    db $e3
    ld [hl], l
    and c
    dec [hl]
    jp nz, $e602

    ret nz

    ld hl, sp-$80
    db $d3
    ret nz

    ret nz

    db $e3
    ld c, e
    db $e4
    ld [hl], l
    jp nz, $a4c2

    ld [bc], a
    push hl
    ret nz

    db $fc
    ld l, h
    ld [$817e], sp
    dec a
    add d
    ld a, [bc]
    ld [c], a
    inc l
    jp z, $b0a0

    add d
    dec hl
    add c
    jp nz, Jump_000_00a1

    add b
    cp d
    add d
    pop hl
    ld a, $a1
    pop bc
    db $e3
    dec bc
    and d
    adc d
    and c
    or l
    ld [c], a
    nop
    add e
    nop
    ld b, b
    cp l
    ret nz

    and c
    rst $08
    db $e4
    ld a, b
    jp nz, $c3f7

    pop af
    db $e3
    ld b, b
    adc b
    ret nz

    ld sp, hl
    nop
    add [hl]
    ld [c], a
    ei
    db $e3
    push af
    and c
    dec [hl]
    add c
    ret nz

    db $e4
    ret nz

    ld h, a
    nop
    ld [hl], h
    pop de
    add c
    nop
    add b
    db $eb
    add d
    and c
    add b
    rst $38
    nop
    call $e680
    or $c7
    ldh a, [$c1]
    nop
    rst $18
    nop
    ld b, b
    and b
    ld a, $e4
    adc e
    db $e4
    db $10
    ld h, c
    ret nz

    rst $20
    ld b, d
    and d
    ret nz

    rst $38
    sbc d
    ld b, b
    ld [bc], a
    ld a, [$2bc3]
    db $fd
    ld h, d
    ld b, [hl]
    db $e3
    rst $38
    pop hl
    ret nz

    rst $38
    ld b, h
    ld h, c
    ld d, e
    add c
    ld [$c27a], sp
    add b
    jp hl


    add $83
    inc c
    cp d
    add b
    ret nz

    ei
    ld a, $e2
    ret nz

    ldh [rLCDC], a
    ld a, h
    ld [c], a
    add b
    db $e4
    add h
    rst $20
    ret nz

    rst $38
    cp l
    and $f6
    and d
    dec hl
    rst $38
    pop hl
    nop
    ld c, d
    add h
    or l
    and b
    jp nz, $c042

    rst $38
    ret nz

    push hl
    inc c
    ld [c], a
    add h
    rst $20
    add e
    db $e3
    nop
    ret nz

    rst $38
    ld a, e
    ld [$c3f1], a
    push bc
    and $c0
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $fd
    db $fc
    nop
    ld b, b
    dec d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02b_723c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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

    dec d
    nop
    nop
    nop
    dec b
    rrca
    rst $38
    pop af
    nop
    rst $38
    rst $20
    ldh [rIE], a
    call $c0e7
    db $f4
    cp d
    ld [c], a
    nop
    or h
    db $e3
    rst $08
    db $ec
    ldh [$e7], a
    xor a
    di
    ret nz

    and $6f
    db $ec
    and b
    xor $df
    db $ec
    nop

jr_02b_72cb:
    ldh [$f9], a
    ret nz

    db $fd
    nop
    ldh a, [$c1]
    db $ed
    ldh [rIE], a
    ld h, b
    xor $fb
    add sp, -$20
    rst $08
    nop
    db $fd
    pop hl
    db $db
    db $e3
    di
    ld [c], a
    add b
    ret nc

    ldh [$e7], a
    ld h, b
    db $d3
    cp a
    pop bc
    cp e
    pop hl
    nop
    ld h, b
    rst $18
    jr nz, jr_02b_72cb

    ret nz

    ld hl, sp-$20
    cp a
    ldh [rIE], a
    ldh [$f1], a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02b_7306:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $20
    nop
    nop
    nop
    add hl, de
    nop
    rst $38
    rst $38
    db $e4
    db $e3
    jr c, jr_02b_7356

    call c, $ffff
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld [c], a
    pop hl
    jr z, jr_02b_7306

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], h
    rst $38
    rst $38
    rst $38
    cp $48
    db $dd
    rst $38
    nop
    nop
    jr @-$21

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_02b_7356:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
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
    jr nz, jr_02b_741f

    jr jr_02b_748f

jr_02b_741f:
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

jr_02b_743b:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_02b_7477

    cp $ff
    jr nz, jr_02b_743b

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
    jr nz, jr_02b_743b

jr_02b_7477:
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
    ld hl, $74a3
    call Call_000_23e8
    add sp, $02

jr_02b_748f:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $74a3
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_02b_74ac

    rst $30
    nop
    inc bc
    ret nz

jr_02b_74ac:
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

jr_02b_74be:
    ld a, [hl]
    cp $ff
    jr z, jr_02b_74e0

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
    jr nz, jr_02b_74be

    ld a, b
    call Call_02b_74ea
    ld a, c
    cp $04
    jr nz, jr_02b_74be

jr_02b_74e0:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_02b_74ea:
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

jr_02b_7500:
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
    jr nz, jr_02b_7529

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_02b_7500

jr_02b_7529:
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

Call_02b_7706:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02b_7ca0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02b_7cc3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02b_7cfe:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02b_7dff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02b_7ea2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02b_7f05:
    rst $38
    rst $38
    rst $38

Call_02b_7f08:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_02b_7fa0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02b_7fff:
    rst $38
