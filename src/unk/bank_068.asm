INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $068", ROMX[$4000], BANK[$68]

    inc c
    ld b, b
    dec hl
    ld c, d
    rra
    ld d, a
    ld c, e
    ld h, e
    ccf
    ld l, a
    xor a
    ld a, c
    inc d
    ld b, b
    dec hl
    ld b, h
    adc d
    ld c, c
    xor h
    ld c, c
    rra
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    add sp, -$10
    rst $38
    ldh [$eb], a
    ld h, a
    ld l, [hl]
    ld l, $6e
    adc $e0
    call Call_000_0de0
    dec c
    jp nc, Jump_068_58e2

    ldh a, [rIE]
    ldh [$eb], a
    pop de
    ldh [$4e], a
    ld c, [hl]
    ret nc

    rst $20
    ld l, $f0

Jump_068_4039:
    rst $38
    ld a, [de]
    ldh [$ec], a

Jump_068_403d:
    ld l, $4e
    pop hl
    ld c, [hl]
    ld c, $f0
    rst $38
    ldh a, [$f9]
    ld c, a
    ld [c], a
    nop
    ld [$f0e0], sp
    rst $38
    ldh a, [$f7]
    ret z

    pop bc
    ldh a, [rIE]
    ldh a, [$f7]
    call $f0c0
    rst $38
    nop
    ldh a, [$fc]
    rrca
    ld [c], a
    ldh a, [rIE]
    ldh a, [$f4]
    rst $08
    call nz, $e590
    rst $38
    push bc
    ldh [$f5], a
    add b
    pop hl
    and d
    sbc $a6
    rst $00
    and b
    adc $ac
    or a
    and h
    ldh [$f4], a
    ret nc

    db $e4
    dec c
    inc b
    ret c

    and b
    cp $e0
    dec c
    ld [$c9c1], sp
    and e
    ldh a, [$e3]
    cp [hl]
    db $e3
    ldh [$f7], a
    nop
    ret nc

    push hl
    db $dd
    and b
    sub e
    and d
    add hl, de
    push bc
    ldh a, [$e5]
    inc a
    xor c
    ldh [$f1], a
    ret nc

    and $c0
    ld d, c
    and b
    ld a, e
    pop hl
    reti


    and b
    dec b
    and e
    ldh a, [$e4]
    add $e6
    ld c, l
    ld c, l
    ld bc, $e02d
    pop af
    ret nc

    push hl
    add a
    pop hl
    inc a
    pop hl
    ldh a, [$ed]
    nop
    and d
    db $fc
    add b
    dec b
    ld l, l
    ld hl, sp-$7e
    dec l
    ldh [$ee], a
    sub b
    and $8f
    add b
    sub [hl]
    and c
    push af
    add c
    nop
    add l
    add b
    dec e
    ret nz

    ldh a, [$e4]
    add sp, -$3f
    jp $fee0


    db $e3
    cp a
    pop hl
    ldh [$ec], a
    nop
    ret nc

    jp hl


    pop de
    jp $c17e


    ldh a, [$e7]
    and a
    ret nz

    pop bc
    and $bf
    pop hl
    cp [hl]
    pop hl
    inc b
    ldh [$e9], a
    ret nc

    db $e4
    ld l, l
    rst $38
    add sp, -$2c
    add c
    ldh a, [$e7]
    pop bc
    jp hl


    ld a, l
    ld [c], a
    ldh [$d5], a
    jp hl


    ret nc

    and $ce
    ld [c], a

Jump_068_4102:
    sub l
    ldh [$c3], a
    pop hl
    ld l, $4e
    ld c, $31
    ld c, [hl]
    cp [hl]
    push hl
    ld b, $e2
    ld b, c
    ld [c], a
    ld c, e
    dec l
    ld a, l
    and $fe
    ld [c], a
    ld a, [de]
    ret nc

    db $eb
    ld c, $c0
    rst $20
    ld l, [hl]
    ld l, [hl]
    cp a
    ldh [$f0], a
    ld [c], a
    add e
    and $0f
    dec bc
    dec bc
    dec hl
    dec bc
    rst $38
    ld [c], a
    cp h
    pop hl
    ret nz

    ldh [$a3], a
    push hl
    call z, $ecd0
    dec d
    ldh [$2e], a
    ld l, [hl]
    ld d, [hl]
    add l
    ld b, h

Jump_068_413c:
    and $2b
    dec bc
    ccf
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cp e
    jp nz, $e07b

    ld [$e27f], sp
    jr nz, jr_068_41af

    ret nc

    db $ed
    dec c
    dec bc
    pop hl
    ld d, $87
    ldh a, [$e1]
    add h
    ld [c], a
    ld e, $c5
    ldh [$2a], a
    dec hl
    ld a, [bc]
    ld a, [hl+]
    ld a, d
    ldh [$fe], a
    ldh [$bf], a
    db $e3
    ld b, d
    call c, Call_068_4ec1
    ret nc

    db $ed
    dec a
    ld [c], a
    ldh a, [$eb]
    ld c, b
    pop bc
    dec hl
    pop bc
    ldh [$80], a
    dec sp
    db $e3
    db $fc
    ld [c], a
    ld a, [$80e1]
    db $e3
    ret nc

    db $ed
    and a
    jp nz, $ebf0

    ld c, l
    ld h, $cc
    ret nz

    ld l, e
    ld a, [hl+]
    ld b, [hl]
    ldh [rIE], a
    pop bc
    dec hl
    ret nz

    add sp, $5c
    ret nz

    push bc
    ld c, $d0
    db $eb
    ld l, l
    ret nz

    db $ec
    ldh a, [$e3]
    cp a
    ldh [$0b], a
    dec hl
    add hl, bc
    ld c, e
    db $fd
    ret nz

    pop bc
    ret nz

    dec hl
    ld b, b
    ldh [$80], a
    rst $20
    ret nz

    rst $28
    inc b

jr_068_41af:
    push bc
    ld a, b
    ldh a, [$ea]
    ld b, b
    ld [c], a
    ld b, e
    ret nz

    ld l, e
    ld c, e
    ld c, e
    ld l, e
    rst $38
    jp nz, Jump_000_3a02

    pop hl
    ld l, l
    ld b, c
    jp $e950


    ret z

    and e
    ret


    and b
    ld d, h
    ld b, c
    jp nz, Jump_000_0ca4

    cp c
    and c
    jp z, Jump_000_0a80

    ld c, d
    add a
    call nz, $e500
    ld d, $e3
    ret nc

    db $ed
    ldh [rNR33], a
    ld b, b
    rst $00
    and b
    ld [c], a
    ld [c], a
    ld [c], a
    and d
    ldh a, [$e3]
    dec l
    ld c, l
    dec l
    ld b, e
    ld c, d
    ld c, d
    ld b, c
    ret nz

    cp l
    pop bc
    add b
    ret nz

    ld sp, $0de0
    ldh [$ea], a
    ldh [$d0], a
    and $07
    call nz, $a27d
    or e

Call_068_4200:
    and c
    rst $30
    and h
    dec l

Jump_068_4204:
    dec l
    dec c
    ld bc, $416b
    jp nz, $c2bb

    adc c
    and c
    call c, $e0a0
    add sp, -$30
    rst $20
    ld b, $83
    ldh a, [$a1]
    and b
    inc h
    pop bc
    ldh a, [$e6]
    ret nc

    add b
    dec l
    ld l, e
    ld c, e
    dec bc
    rla
    ld l, e
    ld a, [bc]
    ld c, e
    jp nz, $2da2

    add d
    ldh [$e0], a
    ld [$edd0], a
    jr c, @-$19

    pop bc
    adc c
    pop hl
    ldh a, [$e8]
    ld c, l
    dec c
    dec l
    ld b, e
    and e
    dec a
    and b
    and b
    push bc
    jp nz, $ece0

    ret nc

    ld [c], a
    ld l, a
    ret nz

    cp e
    add h
    ld c, $64
    pop bc
    ld l, l

Jump_068_424d:
    ld b, $f0
    jp hl


    dec l
    ld c, l
    jp $cbe4


    add d
    ldh [$ef], a
    ret nc

    ld [c], a
    add d
    jp $fa00


    and b
    inc h
    jp nz, $e9f0

    ld a, l
    add h
    jp $e080


    di
    sub b
    ld [c], a
    jr nc, jr_068_427a

    ld [hl-], a
    call z, Call_068_6d48
    ld a, [bc]
    and b
    rst $00
    and b
    dec c
    dec bc
    cp $40
    or e

jr_068_427a:
    ld b, [hl]
    nop
    ret nc

    db $ed
    jr nc, jr_068_428a

    db $fc
    ld h, $24
    ld bc, $6143
    dec b
    ld [c], a
    cp $41

jr_068_428a:
    add c
    ld h, b
    nop
    db $e4
    inc hl
    ret nc

    ld [$612b], a
    jr nc, jr_068_429d

    inc l
    ld b, [hl]
    sub a
    and c
    adc l
    add b
    inc b
    add h

jr_068_429d:
    nop
    ld a, c
    pop hl
    cp $41
    jr nc, jr_068_42a7

    ret nc

jr_068_42a5:
    add sp, $30

jr_068_42a7:
    dec c
    dec h
    ld b, $03
    pop hl
    pop bc
    rst $20
    add b
    nop
    and c
    di
    ret nz

    dec sp
    pop hl
    ret nc

    db $eb
    jr nc, @+$0f

    inc l
    ld b, [hl]
    ld d, [hl]
    ld h, b
    dec hl
    nop
    ret nz

    add b
    ret nz

    add sp, -$01
    ld h, c
    jr nc, jr_068_42d3

    pop hl

jr_068_42c8:
    dec b
    jr nc, @+$09

    cp h
    inc h
    add c
    ld [c], a
    nop

Call_068_42d0:
    call z, $4560

jr_068_42d3:
    ld h, b
    add l
    and c
    ccf
    db $e4
    ld a, $e2
    ret nc

    db $eb
    add b
    db $eb
    db $fc
    daa
    nop
    ld b, d
    pop hl
    ret nz

    db $e3
    pop bc
    and [hl]
    cp d
    jp nz, Jump_000_21ba

    jr nc, @+$0d

    ret nz

    db $ec
    db $fc
    inc h
    inc b
    ld d, d
    and c
    pop bc
    ret z

    dec hl
    jp nz, $bf82

    ld b, c
    ld b, b
    inc c
    ld c, [hl]
    pop bc
    ret nz

    db $ec
    ld hl, sp-$2d
    ld [bc], a
    ld d, a
    ld b, c
    jr nc, jr_068_42c8

    ld l, e
    ld c, e
    ld l, e
    dec bc
    ld l, e

jr_068_430d:
    ld [bc], a
    db $fd
    pop hl
    ld c, e
    add l
    add b
    ret nz

    pop af
    inc hl
    ld bc, $0d30
    ret nz

    db $e4
    ld a, a
    ld [c], a
    ld bc, $ff6b
    db $e3
    rst $38
    jr nz, jr_068_42a5

    ld [c], a
    add b
    pop hl
    cp [hl]
    and a
    call nc, Call_000_30a4
    dec c
    nop
    rst $10
    inc h
    ld [$4ce1], a
    ld b, b
    dec b
    ld b, e
    ld b, e
    add c
    or $01
    xor e
    jr nz, jr_068_430d

    xor $48
    jr nc, jr_068_434f

    ldh a, [$e1]

Jump_068_4343:
    ld a, a
    ld [c], a
    ld c, l
    adc e
    db $e3
    ret


    jr nz, jr_068_4356

    pop bc
    push hl
    ld b, b
    ld e, h

jr_068_434f:
    and d
    ret nc

    db $ec
    jr nc, jr_068_4360

    ldh a, [$e3]

jr_068_4356:
    ld d, l
    ld [hl+], a
    add d
    add h
    dec bc
    pop bc
    db $e4
    nop
    add hl, sp
    ld [hl+], a

jr_068_4360:
    ret nc

    xor $30
    dec c
    ldh a, [$e2]
    dec d
    inc hl
    ld a, l
    pop hl
    jp nz, Jump_068_72e6

    inc b
    nop
    ret nc

    xor $30
    ld [de], a
    ld a, $e2
    ld [$c2e1], sp
    ld b, h
    ld b, $42
    scf
    inc b
    ret nc

    pop af
    nop
    jr nc, @+$0a

    ldh a, [$e7]
    ld a, l
    ld [c], a
    add h
    push hl
    sub l
    call nz, $e4c0
    ret nc

    add sp, $30
    dec c
    nop
    pop af
    rst $20
    add h
    and $22
    ld bc, $f0e0
    dec b
    ld h, l
    jr nc, jr_068_43a8

    ldh a, [$e6]
    inc a
    ld [hl+], a
    nop
    add hl, bc
    jp $f2e0


    ret nc

    db $e4

jr_068_43a8:
    ld b, b
    dec b
    jr nc, jr_068_43b9

    cp a
    add sp, -$20
    di
    ret nc

    db $ec
    nop
    jr nc, @+$0a

    ret nz

    push hl
    ld a, [hl]
    db $e4

jr_068_43b9:
    ldh [$f3], a
    ret nc

    add sp, $30
    dec c
    ldh a, [$e2]
    cp a
    db $e4
    nop
    ld l, a
    ld hl, $f2e0
    ret nc

    add sp, $30
    dec c
    db $eb
    inc bc
    jp z, $e0c6

    di
    sub b
    add sp, $00
    jr nc, jr_068_43e2

    ldh a, [$e4]
    xor h
    jp nz, $40ab

    ld h, $41
    ldh [$f1], a
    ld b, b

jr_068_43e2:
    ld [$f2f0], sp
    nop
    ret nz

    or $d0
    rst $28
    jr nc, jr_068_43f6

    rra
    jp z, $c705

    ret nc

    or $30
    rrca
    ldh a, [$e4]

jr_068_43f6:
    ld [bc], a
    db $fc
    jp $e04d


    or $d0
    and $30
    inc c
    ldh a, [$e9]
    ld a, [hl+]
    ld h, b

Jump_068_4404:
    ldh [$fa], a
    nop
    ld h, c
    pop bc
    jr nc, @+$10

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_068_4424

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_068_441c

    nop
    ldh a, [rIE]
    ldh [$eb], a

jr_068_441c:
    jr nc, jr_068_442c

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_068_4430

jr_068_4424:
    ldh a, [rIE]
    ldh [$eb], a
    nop
    nop
    nop
    rra

jr_068_442c:
    ret c

    push de
    push de
    ret c

jr_068_4430:
    and b
    rst $38
    add sp, -$10
    rst $38
    ldh [$eb], a
    ld l, a
    jp nc, $d4d6

    sub $cd
    ld [c], a
    sbc $df
    jp nc, $fce2

    ldh a, [rIE]
    ldh [$eb], a
    sub $d2
    ret nc

    jp nc, $d6d4

    rst $18
    db $d3
    and b
    and b
    ldh [$e1], a
    adc c
    ldh [$d3], a
    ret nc

    db $ec
    ldh a, [rIE]
    ldh [$eb], a
    rst $10
    call nc, $e0cf
    rst $10
    jp nc, $e7d8

    and b
    ld [c], a
    db $e3
    ldh a, [rIE]
    ldh a, [$f0]
    db $dd
    reti


    rst $10
    rst $28
    call nc, $ddd7
    ret nc

    adc a
    ldh [$a0], a
    db $eb
    and b
    and a
    and b
    rst $10
    jp nc, $fff0

    ldh [$eb], a
    ret nc

    cp [hl]
    ldh [$dd], a
    db $fd
    pop de
    ret nc

    pop hl
    db $ec
    db $ed
    and b
    and b
    jp c, $a4d3

    ldh a, [rIE]
    ldh [$eb], a
    call nc, $e050
    ld c, $e0
    rst $10
    adc h
    jp $e9dc


    rst $10
    ldh a, [rIE]
    ldh [$eb], a
    reti


    ld d, b
    ldh [$d4], a
    rst $10
    reti


    ld h, l
    jp c, $c44c

    jp c, $fff0

    ldh [$eb], a
    db $db
    db $db
    call $17e0
    jp c, $dcdb

    inc c
    call nz, $f0dc
    jp hl


    rst $38
    ret nz

    ldh a, [$ea]
    db $10
    ldh [$ed], a
    ld e, a
    pop hl
    call $c2e2
    pop hl
    ret c

    ret z

    and l
    ldh a, [$e4]
    rst $38
    jp $f070


    rst $20
    ldh [$ed], a
    ret nc

    and $92
    and c
    db $e4
    push hl
    ret c

    ld [$16c0], sp
    add [hl]
    and a
    db $e4
    push hl
    ld a, h
    and d
    ld [$f7e0], a
    ret nc

    and $88
    ld [c], a
    dec de
    and $e7
    db $76
    ret nz

    pop de
    ret nc

    add hl, bc
    ret nz

    ldh a, [$e5]
    inc a
    xor c
    ld [hl], h
    ldh [$f1], a
    ret nc

    and $d3
    inc d
    pop bc
    add sp, -$17
    jp c, $a3c7

    inc a
    ldh a, [$e6]
    db $fc
    add l
    sbc a
    sbc l
    sbc l
    sbc a
    ldh [$f1], a
    ret nc

    and $84
    pop de
    and b

jr_068_4518:
    ld d, [hl]
    jp nz, $c7da

    and c
    adc c
    ret nz

    ldh a, [$e4]
    nop
    and d
    sbc a
    ccf
    and d
    sbc l
    or [hl]
    sub b
    sub b
    or [hl]
    cp l
    pop hl

Jump_068_452d:
    ldh [$ed], a
    ld d, d
    ret nc

    and $da
    ld d, h
    ret nz

    jr jr_068_4518

    call c, $c077
    jp c, $c079

    inc h
    ldh a, [$e5]
    nop
    and b
    sbc a
    jp $fee0


    db $e3
    or [hl]
    cp a
    ldh [$e0], a
    db $ec
    ld h, d
    ret nc

    push hl
    call c, $c844
    ld a, [hl-]
    pop bc
    ldh a, [$e5]

Jump_068_4556:
    ld [c], a
    db $e3
    pop bc
    ldh [$3d], a
    jp $e3bf


    jp $b690


    and d
    cp [hl]
    pop hl
    ldh [$e9], a
    ld [$e9c6], sp
    inc d
    sub d
    pop bc
    pop hl
    call nz, $e2bf
    ld sp, hl
    ld [c], a
    ld a, l
    ldh [rIE], a
    db $ed
    ld b, b
    call nc, $d261
    ld h, d
    inc d
    add c
    rst $00
    ld h, b
    dec b
    add b
    inc a
    add $9f
    ld b, $e1
    dec e
    call nz, $e0fe
    sub c
    ld b, [hl]
    sub c
    ld sp, hl
    pop hl
    cp a
    ld [$e8d0], a
    inc l
    sub [hl]
    add d
    inc d
    add c
    db $d3
    sub $46
    add c
    sub $86
    add d
    add e
    ld [c], a
    cp $04
    ldh [$91], a
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, e
    ld b, l
    ld b, [hl]
    adc d
    rst $38
    ldh [$91], a
    or $c0
    sbc [hl]
    rst $28
    and [hl]
    ret nc

    db $ed
    inc d
    add b
    ret c

    ldh a, [$0b]
    add b
    ret z

    add c
    ret nz

    db $e3
    dec b
    pop hl
    sub c

Jump_068_45c3:
    ld b, l
    ld b, e
    ld b, a
    rst $38
    ld c, c
    ld b, h
    ld c, c
    ld c, h
    ld e, h
    ld a, c
    ld a, d
    ld a, e
    inc bc
    ld a, h
    ld a, l
    cp a
    ldh [$3e], a
    ld [c], a
    ld e, c
    and d
    ret nc

    add sp, $0d
    pop bc
    rla
    add b
    xor h
    or $61
    rlca
    add b
    reti


    db $dd
    ldh a, [$e3]
    and c
    dec b
    ldh [rDMA], a
    rst $38
    ld c, d
    ld c, h
    ld h, b
    ld d, h
    ld b, h
    ld e, c
    ld d, e
    ld a, c
    rra
    ld a, [hl]
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld a, a
    cp a
    push hl
    pop de
    and c
    ret nc

    jp hl


    cp e
    db $d3
    jp c, $a318

    db $d3
    ret nc

    pop de
    rlca
    add b
    ret nc

    push af
    ret nc

    ldh a, [$e3]
    sbc [hl]
    dec b
    ldh [rLYC], a
    ld c, e
    ld h, c
    ld d, d
    cp $85
    ldh [$7b], a
    adc a
    ld b, l
    xor [hl]
    xor a
    xor [hl]
    ld b, [hl]
    ld c, e
    add c
    ld b, [hl]
    ld [hl], h
    ret nz

    and c
    pop de
    and d
    ret nc

    ld [$86d7], a
    add h
    db $e4
    ld c, b
    ld h, c
    ld b, $60
    call nc, $e3f0
    ld b, $c1
    ld b, l
    ld d, [hl]
    ld d, [hl]
    rst $38
    ld a, c
    ld a, [hl]
    dec hl
    inc l
    inc l
    inc l
    ld a, [hl+]
    xor a
    inc bc
    xor [hl]
    xor a
    ret nz

    ldh [$74], a
    ret nz

    cp $c0
    pop de
    and c
    ret nc

    jp hl


    rla
    add a
    ld hl, sp+$08
    add d
    rlca
    add l
    push bc
    and b
    ld b, [hl]
    ld b, e
    ld b, e
    add b
    ld b, h
    rst $38
    jr nc, jr_068_4681

    jr nz, jr_068_4683

    jr nc, jr_068_46a9

    xor a
    ld b, [hl]
    nop
    add b
    ldh [$72], a
    ret nz

    cp [hl]
    ret nz

    pop de
    and l
    ret nc

    push hl
    rlca
    add a
    ld hl, sp+$62
    rst $30
    ld h, [hl]
    db $fd
    sbc [hl]
    ld b, b
    ldh [$5a], a
    add d
    add e
    dec hl
    dec hl

jr_068_4681:
    dec hl
    rlca

jr_068_4683:
    inc l
    ld a, [hl+]
    xor [hl]
    rst $38
    ret nz

    ret nz

    ldh [$fd], a
    xor d
    ret nc

    push hl
    call c, $f823
    call $0821
    add [hl]
    push af
    ld h, d
    sbc a
    or [hl]
    sub c
    ld d, d
    ld d, [hl]
    ccf
    add l
    add a
    adc b
    adc b
    adc c
    add e
    ld bc, $40e0
    pop hl
    add b
    cp [hl]

jr_068_46a9:
    and a
    ret nc

    db $eb
    call c, Call_068_4720
    add b
    ld c, $84
    ldh a, [$e6]
    inc bc
    and b
    ld d, c
    rst $38
    ld e, [hl]
    ld c, c
    ld b, h
    ld c, [hl]
    ld c, b
    add l
    adc e
    xor a
    ccf
    ld b, [hl]
    xor a
    ld b, [hl]

Jump_068_46c4:
    add e
    add h
    ld b, [hl]
    nop
    pop bc
    ret nc

    ldh a, [$c4]
    rst $00
    ld h, b
    rlca
    add b
    rst $10
    ld c, $81
    ld a, l
    ld h, d
    ldh a, [$e4]
    and b
    and b
    rst $38
    and c
    ld b, l
    ld d, d
    ld d, h
    ld b, h
    ld d, h

Jump_068_46e0:
    ld h, b
    ld e, h
    rst $38
    add d
    add e
    ld b, [hl]
    ld b, [hl]
    add e
    add [hl]
    add l
    sub c
    inc hl
    or [hl]
    sbc a
    ldh [$e9], a
    ret nc

    and $c9
    and e
    jp c, $810e

    push af
    ld h, d
    ld l, h
    ldh a, [$e4]
    ld b, $80
    sbc h
    ld b, l
    add c
    and b
    ld e, e
    ld b, l
    dec sp
    pop hl
    rlca
    add a
    add l
    sbc h
    ld sp, hl
    ld h, b
    ldh [$e9], a
    ret nc

    and $c7
    ld h, b
    sub c
    ld b, b
    jr c, @-$3e

    ld b, d
    push af
    ld h, d
    ldh a, [$e7]
    sbc a
    sbc l
    sbc h
    ld b, l
    and c

Call_068_4720:
    db $fc

Call_068_4721:
    ld [c], a
    ld b, c
    sbc h
    jp nz, $e081

    db $ec
    push bc
    ld h, e
    rst $00
    ld h, b
    add c
    ld b, e
    ld [$c324], a
    ld b, $f0
    add sp, -$60
    sbc [hl]
    jp Jump_068_7ce4


    ld h, d
    ldh [$ef], a
    db $f4
    and e
    rst $38
    ld [hl], l
    ld a, [hl]
    add b
    pop hl
    ld a, c
    ld a, d
    ld a, h
    ld a, l
    ld b, [hl]
    ld b, [hl]
    rst $00
    call nz, $ff18
    ld [hl], d
    jr nc, @+$0f

    nop
    adc b
    sbc h
    ld b, [hl]
    dec b
    and b
    ld b, $a0
    ld b, e
    db $e3
    add [hl]
    call c, $a072
    and b
    jr nc, jr_068_476b

    db $fc
    ld h, $ca
    ld b, b
    add e
    pop hl
    adc a
    ld a, $45
    add c

jr_068_476b:
    adc [hl]
    ld a, h
    ld a, l
    sbc h
    sbc l
    add c
    ld h, b
    inc d
    call nz, $d0c0
    jp hl


    add d
    ldh [$30], a
    add hl, bc
    db $fc
    ld h, $07
    ld h, c
    add e
    ldh [rLYC], a
    ld b, e
    bit 0, c
    ld b, e
    db $fd
    ldh [rLYC], a
    ld a, l
    ldh [$81], a
    ld h, h
    db $d3
    ret nc

    ret nc

    ret nc

    jp hl


    jr nc, jr_068_47a1

    db $fc
    dec h
    ret z

    ld b, c
    sub c
    pop bc
    ldh [$36], a
    dec sp
    dec sp
    dec [hl]
    dec sp
    db $fd

jr_068_47a1:
    ldh [$36], a
    ld b, l
    add c
    ret nz

    ld h, b
    ld b, b
    ld h, d
    ret nc

    ret nc

    db $eb
    ld a, [hl-]
    add d
    jr nc, jr_068_47b8

    db $fc
    dec h
    and c
    adc c
    ld b, b
    ld b, [hl]
    add b
    rst $18

jr_068_47b8:
    ld b, [hl]
    ld b, h
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    rst $10
    ld b, h
    add c
    ld b, [hl]
    ld [bc], a
    and b
    sbc [hl]
    add hl, bc
    add b
    rst $10
    jp nc, $d0a0

    jp hl


    di
    and d
    jr nc, jr_068_47db

    db $fc
    inc h
    ld c, c
    ld b, c
    jp $e0c0


    ld b, d

jr_068_47db:
    rst $38
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e

Call_068_47e2:
    ld l, d
    dec [hl]
    ld h, a
    ld b, d
    adc h
    ld a, l
    ld [bc], a
    add b
    cp a
    ld b, c
    jp c, $d0d3

    jp hl


    ld c, b
    ldh a, [$e1]
    jr nc, @+$0c

    db $fc
    inc hl
    sbc [hl]
    adc [hl]
    ld b, c
    ret nz

    db $e3

jr_068_47fc:
    dec [hl]
    rst $38
    ldh [rP1], a
    ret nz

    ldh [rSC], a
    add e
    ei
    ld hl, $0023
    ret nc

    add sp, -$10
    ldh [$30], a
    inc c
    ld a, [c]
    ld hl, $c0fe
    ldh [$c4], a
    sub b
    ld b, [hl]
    add d
    add e
    ld b, h
    inc a
    dec sp
    ld l, e
    ld [hl], c
    rst $38

Jump_068_481e:
    ldh [$6d], a
    inc a
    ld b, h
    jp nz, Jump_068_7d81

    ld b, b
    ret nz

    pop bc
    ld h, d
    ret nc

    db $eb
    ld a, $80
    jr nc, jr_068_4839

    dec b
    add e
    add l
    ld b, c
    add l
    adc e
    ld b, $c0
    rst $00
    adc d

jr_068_4839:
    add l
    add b
    ld b, c
    ld b, c
    ld h, c
    ld b, e
    nop
    ret nc

jr_068_4841:
    ld [$227f], a
    inc b
    jr nc, @+$0e

    ret nz

    pop hl
    jp $e17f


    ld b, b
    push bc
    ld b, e
    add c
    db $76
    ld hl, $833f
    ld hl, sp-$30
    xor $30
    dec bc
    inc b
    ld b, e
    call nz, $91c3
    add l
    add a
    ld sp, hl
    adc c
    ld b, [hl]
    add b
    ld b, h
    add b
    adc c
    add a
    add l
    sub c
    jp $be00


    jr nz, jr_068_48ed

    jr z, jr_068_4841

    add sp, $30
    dec c
    ld a, b
    ldh [$bf], a
    ld [c], a
    add a
    jr nz, jr_068_47fc

    ld h, c
    nop
    ld b, h
    add c
    jp nz, $c120

    rst $20
    ret nc

    db $ed
    jr nc, jr_068_4894

    rra
    ld b, c
    rst $38
    and c
    add d
    jr nz, jr_068_488e

jr_068_488e:
    ld b, d
    add l
    inc bc
    ld [c], a
    ld b, e
    ld b, c

jr_068_4894:
    ld a, l
    and e
    ret nc

    db $eb
    jr nc, @+$0f

    ldh a, [$e1]
    ld b, a
    inc bc
    dec b
    jp $e3be


    sub c
    ld a, e
    inc bc
    ret nz

    ld bc, $01d8
    ret nc

    db $ed
    jr nc, jr_068_48ba

    inc d

Jump_068_48ae:
    ldh a, [$e2]
    ret nz

    add b
    or [hl]
    rlc c
    jp $013e


    dec b
    pop hl

jr_068_48ba:
    cp $62
    db $10
    ret c

    ld [bc], a
    ret nc

    db $ed
    ld bc, $be95
    ld [bc], a
    call nz, $c1c8
    ld b, h
    rlca
    inc c
    and c
    nop
    pop de
    ld l, l
    jr nc, @+$0e

    inc h
    add a
    ei
    jp nz, Jump_000_0247

    add h
    ld [c], a
    inc b
    sub b
    call nz, Call_000_0061
    jp nz, $3062

    ld [$e6f0], sp
    dec a
    inc b
    ld c, b
    ld [bc], a
    ldh [$f1], a
    ret nc

    db $e4
    ld b, b

jr_068_48ed:
    ld [bc], a
    nop
    jr nc, @+$0f

    inc h
    add d
    cp a
    push hl
    add hl, bc
    and b
    ldh [$f1], a
    ret nc

    jp hl


    jr nc, @+$0a

    ldh a, [$e5]
    nop
    db $fd
    add $4b
    ld hl, $f0e0
    ret nc

    push hl
    sub $21
    jr nc, jr_068_4915

    ldh a, [$e5]
    add hl, sp
    ld h, [hl]
    jr jr_068_495c

    add b
    ldh [$f1], a

jr_068_4915:
    ret nc

    push hl
    db $d3
    jp c, $8237

    jr nc, @+$08

    ldh a, [$e5]
    db $10
    jr nz, jr_068_4985

    sub $42
    ldh [$f2], a
    ret nc

    push hl
    rst $10
    ld a, a
    inc b
    jr nc, jr_068_4932

    ldh a, [$e5]
    nop
    jr nz, jr_068_4995

jr_068_4932:
    ld [$e007], a
    db $ed
    ret nc

    push hl
    scf
    add [hl]
    jr nc, jr_068_4940

    rst $30
    ld h, l
    jr nz, jr_068_49a3

jr_068_4940:
    nop
    ld [$e001], a
    di
    ret nc

    push hl
    call nz, $3027
    inc bc
    db $ed
    xor e
    ld a, [de]
    ld hl, $f3e0
    nop
    ret nc

    push hl
    jr nc, jr_068_4965

    dec h
    adc h
    ldh [$f6], a
    ret nc

    push hl

jr_068_495c:
    jr nc, @+$0e

    ldh a, [$e9]
    add sp, -$7f

Jump_068_4962:
    nop
    ldh [$f9], a

jr_068_4965:
    xor l
    ld [hl+], a
    jr nc, @+$0e

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_068_497c

    ldh a, [rIE]
    ldh [$eb], a
    nop
    jr nc, @+$0f

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_068_4989

jr_068_497c:
    ldh a, [rIE]
    ldh [$eb], a
    rst $38
    db $76
    ldh a, [rIE]
    nop

jr_068_4985:
    push bc
    ld h, c
    nop
    nop

jr_068_4989:
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

jr_068_4995:
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

jr_068_49a3:
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
    ld e, $10
    ld [bc], a
    ld bc, $1025
    ld [bc], a
    ld [bc], a
    dec e
    ld de, $0302
    rra
    ld de, $0402
    inc h
    ld de, $0502
    ld h, $11
    ld [bc], a
    ld b, $19
    inc d
    ld [bc], a
    rlca
    jr jr_068_49e1

    ld [bc], a
    ld [$1525], sp
    ld [bc], a
    add hl, bc
    inc h
    ld d, $02
    ld a, [bc]
    ld h, $16
    ld [bc], a
    dec bc
    ld a, [hl+]
    ld d, $02
    inc c
    dec h
    rla
    ld [bc], a

jr_068_49e1:
    dec c
    dec hl
    rla
    ld [bc], a
    ld c, $24
    add hl, de
    ld [bc], a
    rrca
    ld h, $19
    ld [bc], a
    db $10
    inc hl
    ld a, [de]
    ld [bc], a
    ld de, $1a25
    ld [bc], a
    ld [de], a
    rla
    ld h, $02
    inc de
    jr z, jr_068_4a22

    ld [bc], a
    inc d
    ld d, $27
    ld [bc], a
    dec d
    add hl, hl
    daa
    ld [bc], a
    ld d, $17
    ld a, [hl+]
    ld [bc], a
    rla
    jr z, jr_068_4a36

    ld [bc], a
    jr jr_068_4a27

    dec hl
    ld [bc], a
    add hl, de
    daa
    dec hl
    ld [bc], a
    ld a, [de]
    dec de
    ld l, $02
    dec de
    inc hl
    ld l, $02
    inc e
    ld e, $2f
    ld [bc], a
    dec e

jr_068_4a22:
    jr nz, jr_068_4a53

    ld [bc], a
    ld e, $1f

jr_068_4a27:
    jr nc, @+$01

    rst $38
    rst $38
    inc sp
    ld c, d
    pop bc
    ld c, a
    ld [hl], d
    ld d, [hl]
    sub h
    ld d, [hl]
    ld e, a
    ld l, $0e

jr_068_4a36:
    ld c, $0e
    ld c, l
    rst $38
    and $2e
    rst $38
    pop hl
    ld [c], a
    xor $e0
    ld c, [hl]
    db $ec
    pop hl
    push af
    pop hl
    pop hl
    ldh [$0d], a
    ld c, l
    ld c, l
    jp Jump_000_0d0d


    reti


    ldh [$fa], a
    ldh [$de], a

jr_068_4a53:
    pop hl
    ret nc

    ld [$4d4d], a
    rlca
    ld l, [hl]
    ld l, $6e
    cp [hl]
    ldh [$bd], a
    ldh [$e2], a
    db $e3
    ret nz

    db $e4
    xor h
    ld [c], a
    sub d
    ret nz

    and $0d
    add $e1
    ei
    ldh [$0d], a
    jp nz, $d0e0

    db $ec
    ld c, $b6
    pop bc
    ldh [$4e], a
    ld c, [hl]
    ret nz

    ld sp, hl
    ld l, l
    ld c, l
    adc c
    pop hl
    ld c, l
    pop bc
    dec l
    cp d
    ld [c], a
    ld h, b
    ldh [$d0], a
    ld a, [c]
    ld d, b
    ldh [$80], a
    db $ed
    dec c
    dec c
    ld a, l
    ld l, l
    dec [hl]
    ldh [$6d], a
    ld l, l
    ld l, l
    dec c
    ld l, l
    add l
    ld [c], a
    add hl, de
    dec l
    cp [hl]
    ldh [$d0], a
    ld sp, hl
    ld c, l
    dec c
    inc c
    db $e4
    ret nz

    and $2c
    ld [c], a
    ld a, h
    cp c
    ldh [rDMA], a
    pop hl
    dec hl
    dec bc
    dec hl
    ld c, l
    dec l
    ret nz

    rst $20
    ld h, b
    ret nc

    push hl
    db $10
    jp hl


    inc c
    push hl
    ret nz

    rst $20
    ret nc

    pop bc
    ld l, l
    dec l
    jp nz, $0fe2

    ld a, [bc]
    ld a, [hl+]
    ld c, e
    dec bc
    inc a
    ldh [$d0], a
    db $ed
    ret nc

    jp z, $e317

    db $f4
    sbc [hl]
    rst $00
    ld b, a
    ld [c], a
    dec bc
    rst $38
    ldh [$0d], a
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    rrca
    ld a, [bc]
    ld c, e
    dec c
    dec bc
    ret nz

    db $eb
    ret nc

    pop hl
    ret nz

    rst $28
    sub h
    pop bc
    db $f4
    cp b
    db $e3
    ld [$0be1], sp
    adc d
    pop bc
    dec c
    ld c, d
    ld a, [bc]
    ld a, [hl+]
    nop
    cp d
    pop hl
    ld a, a
    push hl
    sub b
    jp hl


    add b
    ld [$e27c], a
    nop
    ret nz

    or $e4
    call nz, $15e2
    ld a, [bc]
    cp l
    pop hl
    ld a, [bc]

Jump_068_4b0a:
    ld a, d
    ldh [rWX], a
    db $76
    ldh [$c0], a
    db $ec
    rst $08
    and c
    nop
    xor $a6
    sbc $a1
    inc a
    pop hl
    pop af
    and b
    ld c, [hl]
    ret nz

    add $c2
    jp nz, Jump_068_46e0

    ldh [rIE], a
    dec c
    dec hl
    dec c
    dec bc
    ld l, e
    ld l, e
    ld l, e
    ld a, [bc]
    ld bc, $3f0a
    pop hl
    cp [hl]
    and a
    ret nc

    push hl
    ret c

    jp nz, $a09f

    ld hl, sp-$60
    cp c
    and d
    inc [hl]
    add b
    and b
    ld c, e
    ld [c], a
    ld c, l
    ld b, e
    ldh [$0a], a
    ld a, [hl+]
    ld [$fee0], sp
    pop bc
    ld c, $c1
    pop hl
    ld a, [bc]
    dec c
    ld l, l
    ret nz

    ldh [$d0], a
    db $ed
    ld c, l
    and b
    add e
    and d
    ld a, b
    ld c, c
    and [hl]
    ld c, [hl]
    and c
    add d
    jp Jump_000_0d0b


    ld a, [hl+]
    ld a, [bc]
    ld b, [hl]
    pop hl
    add hl, bc
    dec hl
    dec b
    ldh [$bd], a
    ret nz

    ld c, e
    or $a0
    ret nc

    ldh a, [$50]
    ld [c], a
    ret nz

    ld [c], a
    ld [hl], b
    push af
    add e
    ld c, $a1
    ld d, $a2
    jp $0ac1


    ld l, e
    ld c, e
    rlca
    ldh [rNR22], a
    dec hl
    dec c
    ld c, e
    cp e
    and d
    ld l, l
    ret nz

    pop hl
    ret nc

    db $ec
    ld d, b
    db $e4
    ret nz

    ld a, c
    pop hl
    ldh a, [$e3]
    adc [hl]
    and b
    adc h
    and b
    ld b, $c1
    add e

jr_068_4b9c:
    ret nz

    dec l
    dec c
    rra
    ld l, e
    ld l, e
    ld c, e
    dec c
    ld c, e
    cp d
    ldh [$fc], a
    add b
    dec a
    and c
    nop
    ret nc

    xor $50
    db $e4
    push af
    add d
    ld [hl], l
    add b
    sub e
    add b
    jp Jump_068_4de0


    and b
    ld [$00c1], sp
    ld b, d
    pop bc
    ld b, h
    pop hl
    db $fc
    and b
    add c
    ld [c], a
    ld a, [hl]
    add d
    ret nc

    db $ed
    ld d, b
    and $7e
    jp nz, Jump_068_5320

    add c
    db $10
    and d
    ld b, d
    jp $e289


    ld a, [$2da0]
    rst $38
    ldh [$03], a
    ldh [rP1], a
    ld a, l
    add e
    ret nc

    ld [$e251], a
    ei
    db $e4
    ld hl, sp+$61
    pop de
    add h
    adc b
    and b
    ld c, b
    pop bc
    dec b
    dec hl
    ld c, c
    pop hl
    dec l
    inc a
    and b
    db $e4
    ld [c], a
    ret c

    ld h, e
    adc $e7
    ld e, a
    add h
    jr nz, jr_068_4b9c

    add b
    and [hl]
    ret nz

    ldh a, [$e2]
    ld d, d
    add c
    ld c, e
    db $e4
    dec hl
    call z, $8c80
    and b
    ret nz

    add e
    add d
    db $ed
    jp nz, $c082

    call c, $d0a3
    ld [c], a
    jp Jump_000_2ee1


    ld c, [hl]
    add b
    inc c
    pop bc
    ret nz

    push hl
    dec h
    add b
    rst $28
    ldh [$c0], a
    and $4f
    ret nz

    ld b, $a0
    ld c, e
    db $10
    add b
    ld [c], a
    ret nz

    db $e4
    call c, $c0a4
    push hl
    ld l, [hl]
    ret nc

    pop hl
    ret nz

    and $c2
    ldh [$38], a
    ld b, l
    ld h, c
    sub $60
    set 0, d
    ld c, d
    ld a, [bc]
    ld a, [bc]
    add b
    ldh [$83], a
    ret nz

    ret nz

    ld b, d
    ldh [$90], a
    ld [c], a
    ldh a, [$63]
    dec h
    ld h, c
    or h
    db $e4
    ld d, [hl]
    ld h, l
    ld l, l
    dec c
    ld h, b
    jp c, $1261

    ld h, l
    add c
    ret nz

    rst $00
    jp $a010


    ld l, e
    dec c
    call z, Call_000_03a0
    dec l
    ld l, l
    sbc $e0
    dec b
    jp nz, $61b0

    ld e, h
    jp nz, $61aa

    ld d, $67
    ld [hl], c
    ld l, l
    dec a
    ld [c], a
    ret nz

    db $eb
    ld c, h
    add b
    ld l, e
    dec bc
    ld c, e
    dec b
    add c
    nop
    add a
    ld h, b
    ldh [$c3], a
    ld d, l
    and e
    adc l
    db $e4
    ret nz

    ld [$e220], a
    ld [de], a
    ld h, [hl]
    dec b
    ret nz

    inc b
    ld c, a
    pop bc
    ld b, $81
    dec l
    cp a
    push hl
    and d
    add l
    ld e, h
    and e
    ldh a, [$c2]
    sub [hl]
    ld b, [hl]
    ld hl, $c06d

jr_068_4ca8:
    db $e4
    ld [de], a
    ld h, h
    jp z, Jump_068_4962

    ret nz

    dec l
    ld c, [hl]
    add c
    nop
    add e
    inc b
    ret nz

    ret nz

    daa
    ld b, b
    ld c, [hl]
    ld hl, sp-$40
    ld a, a
    ld h, b
    ld [de], a
    ld b, b
    ret nz

    db $ed
    inc b
    add $00
    db $fc
    ld b, d
    ld b, l
    pop bc
    ld d, h
    add c
    jp $c0e2


    rst $20
    sub a
    ld [c], a
    scf
    ld b, c
    inc b
    rst $00
    jr nz, @-$28

    ld [hl+], a
    ld hl, sp-$5d
    ld e, d
    ld b, b
    cp e
    ld [hl+], a
    or d
    pop bc
    dec bc
    sub b
    ld h, b
    dec b
    ret nz

    nop
    ld b, h
    pop bc
    ld [bc], a
    jp $c140


    xor d
    jr nz, jr_068_4ca8

    and c
    ld [c], a
    add e
    ld l, b
    ld b, d
    and c
    ld [hl+], a
    ret nz

    cp d
    and e
    ld [$51c1], sp
    ld b, b
    sbc b
    and b
    ld e, d
    and b
    add hl, bc
    add c
    ld c, d
    ld l, e
    nop
    add hl, bc
    ld h, c
    pop bc
    jp nz, $8189

    ld e, a
    ret nz

    ret nz

    pop hl
    pop af
    pop bc
    db $f4
    and b
    ret nc

    db $ec
    jr nc, jr_068_4d20

    call nz, $a2ad
    or e
    and c
    add b
    pop hl
    ld c, d

jr_068_4d20:
    ld a, [bc]
    cp a
    ldh [$87], a
    add b
    nop
    pop bc
    db $e3
    ld l, d
    pop hl
    ld hl, sp+$20
    cp a
    pop hl
    ld b, e
    and b
    ret nc

    db $ed
    ld a, [de]
    dec h
    rst $10
    and b
    db $fc
    db $db
    pop bc
    add c
    pop bc
    dec c
    ld a, [bc]
    dec hl
    dec hl
    dec bc
    ld c, e
    nop
    ld c, h
    add d
    pop bc
    and b
    ld c, $a4
    cp l
    add c
    ld [hl], $e3
    ret nc

    db $eb
    jp c, Jump_068_4404

    pop hl
    nop
    or h
    nop
    sbc d
    add b
    ld a, [bc]
    jp nz, Jump_000_20d0

    ccf
    ld [c], a
    adc [hl]
    pop hl
    ldh [$c6], a
    ld a, l
    jr nz, jr_068_4d78

    sbc e
    pop hl

jr_068_4d66:
    ret nc

    ld [$bb2d], a
    add [hl]
    ld c, $f5
    ldh [$f3], a
    and b
    dec d
    jr nz, jr_068_4d73

jr_068_4d73:
    ld c, l
    ld h, c
    inc bc
    add c
    nop

jr_068_4d78:
    ret nz

jr_068_4d79:
    db $10
    and $fc
    ld [bc], a
    ld d, [hl]
    and b
    ret nc

    xor $1a
    inc h
    nop
    add b
    ld [c], a
    ret nz

    db $e3
    ld c, c
    add b
    ld a, [bc]
    ld h, d
    jp z, $e861

    adc b
    cp h
    nop
    sub e
    and d
    jr jr_068_4d66

    db $eb
    jr nc, jr_068_4da4

    db $fc
    ld bc, $6d0d
    ld b, d
    pop bc
    adc c
    ld hl, $42cf
    nop

jr_068_4da4:
    add sp, -$7b
    rst $08
    inc bc
    ld h, d
    daa
    rst $08
    inc h
    jr nc, jr_068_4db9

    daa
    ld [bc], a
    adc a
    ld b, d
    adc d
    ld b, c
    jr jr_068_4dc4

    ld h, b
    add hl, hl
    add c

jr_068_4db9:
    ret nz

    add sp, $2e
    ld c, $d0
    db $eb
    or l
    ret nz

    jr nc, @+$0c

    nop

jr_068_4dc4:
    ld a, [$c002]
    db $e3
    ld c, c
    ld b, c
    ld b, $a2
    add sp, -$7c
    inc bc
    ld h, e
    db $db
    ld h, b
    ret nc

    jp hl


    nop
    jr nc, jr_068_4de4

    ret nz

    db $e3
    ld c, e
    ld b, b
    pop bc
    ld b, d
    sub c
    ret nz

    rrca

Jump_068_4de0:
    pop bc
    add sp, -$7d
    ret nc

jr_068_4de4:
    ld a, [bc]
    ld [$e5d0], sp
    jr nc, jr_068_4df5

    db $fc
    ld b, h
    dec l
    ld d, c
    jr nz, jr_068_4d79

    ld bc, $20c8
    ld b, e
    add b

jr_068_4df5:
    nop
    add d
    ld h, e
    ret nz

    db $ec
    ret nc

    db $e3
    ld b, b
    dec bc
    ld [hl], $64
    cp a
    db $e3
    ret nz

    db $e4
    nop
    add d
    nop
    and h
    add $50
    dec bc
    inc bc
    ld b, d
    ld b, b
    ld a, [bc]
    ret nz

    push hl
    ret nc

    ld bc, $e6c0
    cp a
    ld [c], a
    db $10
    and h
    jp $ebc0


    ld [hl], b
    db $ed
    ret nz

    add sp, $4d
    ld a, a
    ld [c], a
    ccf
    and e
    ld a, e
    ld hl, $a4c0
    call nz, $c3bf
    ret nz

    jp hl


    jr nc, @+$0c

    ld a, $04
    pop af
    ld [bc], a
    ld l, e
    ld c, e
    nop
    ld c, e
    ld hl, $837e
    ld c, b
    ld [hl+], a
    ld a, [hl]
    ld h, l
    add b
    jp hl


    or d
    ld bc, $a7ee
    ld l, [hl]
    ld b, $00
    sbc c
    ld hl, $a3be
    dec a
    add e
    ld [$e222], sp
    rst $20
    adc [hl]
    and h
    ld l, h
    and h
    jr nc, jr_068_4e5d

    nop
    ld h, a
    ld [bc], a
    ld a, $01

jr_068_4e5d:
    call c, Call_000_3f01
    ldh [$80], a
    ld h, c
    cp $03
    ld b, b
    db $e3
    add hl, de
    rst $00
    nop
    ret nc

    db $e3
    sub d
    and $30
    inc b
    and d
    ld b, [hl]
    jr c, jr_068_4e95

    ld d, a
    ld h, d
    ret nz

    and $6b
    jp nz, $9000

    rlca
    ret nc

    db $e3
    ret


    and l
    jr nc, jr_068_4e88

    ret nz

    jp hl


    inc a
    add b
    sub e

jr_068_4e88:
    ld h, c
    ld a, e
    pop hl
    nop
    adc l
    ld h, d
    ld b, [hl]
    jp Jump_000_0450


    ret nc

    db $e4
    ld b, b

jr_068_4e95:
    dec b
    jr nc, jr_068_4e9d

    ld h, d
    ld b, [hl]
    adc a
    and [hl]
    nop

jr_068_4e9d:
    adc b
    nop
    dec sp
    ld h, d
    sub b
    ld b, e
    ld b, h
    ld b, h
    ret nc

    and $70
    rst $20
    jr nc, jr_068_4eaf

    ld a, $05
    inc bc
    ld l, l

jr_068_4eaf:
    ld l, l
    xor a
    add b
    rst $08
    inc bc
    cp $c4
    ld c, a
    ld b, d
    ld d, b
    dec b
    ret nc

    and $10
    ld [hl], h
    inc h
    jr nc, @+$0a

Call_068_4ec1:
    dec e
    and e
    and c
    ld b, h
    ld c, $83
    ld hl, $c4be
    ret nz

    db $e4
    nop
    db $fd
    add h
    ret nc

    and $b0
    ld [c], a
    ld [hl-], a
    rlca
    jr nc, @+$05

    add hl, hl
    ld bc, $22ab
    ld a, [hl]
    ld [hl+], a
    nop
    ld a, d
    ld b, e
    ld a, $e3
    ldh [$e6], a
    ret nc

    ld [$423c], a
    jr nc, jr_068_4ef2

    xor l
    ld h, e
    call nc, $0121
    ld l, l
    ld a, [hl-]
    ld h, d

jr_068_4ef2:
    ld [hl], a
    add d
    db $fd
    pop bc
    ldh [$e7], a
    ret nc

    ld [$0540], a
    jr nc, jr_068_4f08

    nop
    ld bc, $c1e2
    and $b6
    ld b, c
    ldh [$eb], a
    ret nc

jr_068_4f08:
    db $ed
    jr nc, @+$0d

    ld [hl], b
    ld [c], a
    add d
    ret nz

    nop
    ret nz

    ld [$ede0], a
    ret nc

    add sp, $30
    dec c
    ret nz

    add sp, $7b
    ld bc, $62b6
    ld d, b
    add hl, bc
    jr jr_068_4ef2

    db $ed
    jr nc, jr_068_4f32

    add b
    db $e3
    ld c, l
    dec l
    ld bc, $b6e6
    ld b, b
    ret nc

    ld sp, hl
    nop
    jr nc, @+$0d

jr_068_4f32:
    ld [hl], b
    db $e3
    rst $30
    ld bc, $e700
    pop bc
    call nz, $f2d0
    call nc, Call_000_30e0
    inc c
    ld [hl-], a
    inc l
    inc bc
    dec l
    inc a
    add c
    cp $e2
    ld l, e
    ld c, e
    ret nz

    jp hl


    ret nc

    rst $28
    jr jr_068_4f80

    ld a, [bc]
    add c
    call nz, $a04c
    ld c, l
    dec l
    cp a
    push hl
    ld c, d
    ld bc, $f5d0
    nop
    jr nc, jr_068_4f6f

    adc [hl]
    ld b, l
    cp d
    add e
    jp z, $e004

    rst $28
    ret nc

    and $30
    inc c
    ldh a, [$e7]
    nop

jr_068_4f6f:
    rst $38
    ld [$f0e0], a
    ret nc

    db $e3
    jr nc, @+$10

    ldh a, [$e7]
    ld h, a
    and b
    ld h, b
    db $e3
    dec de
    pop bc
    ld b, b

jr_068_4f80:
    ldh [$f0], a
    ret nc

    db $e3
    jr nc, jr_068_4f99

    add d
    ld bc, $c2b5
    add h
    ld h, d
    ld c, [hl]
    ld hl, sp+$62
    nop
    ldh [$ec], a
    ret nc

    ld [$0530], a
    ldh a, [$e8]
    jp hl


jr_068_4f99:
    add d
    ret nz

    ld [c], a
    add sp, -$1f
    ldh [$ef], a
    nop
    ret nc

    ld [c], a
    jr nc, @+$10

    ldh a, [$e7]
    di
    inc h
    inc b
    ld h, d
    ld [hl], h
    pop hl
    ldh [$ed], a
    ret nc

    db $e3
    nop
    jr nc, jr_068_4fc0

    ldh a, [$e8]
    ld [hl], e
    inc hl
    db $dd
    ld b, e
    ldh [$f1], a
    sub b
    ld [c], a
    nop
    nop

jr_068_4fc0:
    nop
    rst $18
    ret c

    push de
    push de
    ret c

    and b
    rst $38
    and $d3
    ret nc

    ld a, a
    rst $10
    call nc, $d0d2
    jp nc, $d2d7

    db $ec
    pop hl
    db $dd
    rst $10
    or $e0
    call nc, $dad7
    ld [c], a
    ld [c], a
    call c, $cfdb
    call c, $dea0
    rst $18
    rst $10
    ldh [$d0], a
    db $eb
    and b
    and b
    rst $08
    jp nc, $d4d6

    sub $bd
    ld [c], a
    ld [c], a
    ld [c], a
    rst $10
    jp nc, $ddff

    reti


    rst $10
    call nc, $ddd7
    ret nc

    db $d3
    cp d
    xor h
    ldh [$da], a
    or $e0
    reti


    jp c, $a2dc

    and $e0
    cp c
    pop hl
    jp nz, $d0e0

    db $eb
    ret c

    push de
    sub $9b
    pop hl
    sub $f8
    pop de
    ldh [$e2], a
    ldh [$cd], a
    ldh [$d3], a
    ret nc

    ret nc

    db $dd
    reti


    ld a, e
    db $dd
    pop de
    ret nz

    ld [c], a
    call c, $d9da
    jp c, $e089

    rst $30
    and b
    sbc a
    sbc l
    rst $38
    ldh [$9f], a
    and b
    and b
    ld [c], a
    pop bc
    db $e3
    ld h, b
    ldh [$d0], a
    db $eb
    ld d, b
    add sp, -$1e
    ldh [$59], a
    ldh [$d7], a
    call nc, $40e0
    ldh [rOBP1], a
    pop hl
    ld d, d
    pop hl
    ld c, e
    pop hl
    pop bc
    ldh [$b6], a
    sub b
    sub b
    ld c, a
    sub b
    sub c
    sbc h
    and d
    cp [hl]
    ldh [$d0], a
    xor $d3
    sub d
    ldh [$0a], a
    ld d, b
    and $eb
    ld c, h
    pop hl
    reti


    ld b, b
    ldh [rOBP1], a
    pop hl
    ld [hl], b
    db $e3
    add e
    ldh [$3d], a
    and d
    pop bc
    ld [c], a
    ld b, l
    ld b, l
    ld b, [hl]
    sbc h
    ld a, l
    ldh [rNR41], a
    ld [$d058], a
    ldh [$dd], a
    ret nz

    ld d, b
    and $ec
    db $ed
    ret c

    jp nz, $bddb

jr_068_5088:
    ldh [$f8], a
    ld c, c
    pop hl
    ld d, d
    ldh [rBGP], a
    pop hl
    sbc h
    sub c
    sub b
    sub c
    xor [hl]
    rra
    ld b, l
    ld b, e
    ld b, a
    ld c, c
    ld b, h
    cp a
    pop hl
    jr nz, jr_068_5088

    ret nc

    pop hl
    add e
    jp c, Jump_068_50d3

    and $7b
    add $bd
    ldh [$cc], a
    jp $e147


    sub c
    db $fd
    ld b, [hl]
    rst $38
    ldh [$af], a
    ld b, a
    ld c, h
    ld d, h
    ld e, c
    ld b, h
    daa
    xor [hl]
    ld b, [hl]
    sbc [hl]
    jr nz, @-$15

    ld l, c
    jp Jump_068_50d7


    and $ff
    xor $fe
    ld [$91e0], sp
    ld b, [hl]
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, a
    ld d, c
    ld e, [hl]

Jump_068_50d3:
    ld d, d
    ld a, [hl+]
    cpl
    dec l

Jump_068_50d7:
    xor a
    ld a, a
    ld [c], a
    jp nc, $ecd0

    jp c, $e650

    ei
    and l
    ret c

    ldh a, [$a5]
    and c
    sub b
    rst $38
    sub c
    ld a, c
    ld a, d
    adc a
    ld d, b
    ld b, l
    xor [hl]
    ld a, a
    rst $38
    ld a, l
    ld e, e
    ld a, [hl+]
    jr nz, jr_068_5116

    dec l
    ld b, e
    ld b, [hl]
    and b
    ld a, a
    pop hl
    ret nc

    db $ec
    ld [hl+], a
    ret nz

    ld d, b
    db $e4
    ret z

    push hl
    db $d3
    inc b
    jp nz, $ffe4

    push hl
    and b

jr_068_510b:
    sbc [hl]
    sub c
    ld a, c
    ld a, [hl]
    ld d, b
    ld b, a
    rst $38
    ld e, l
    ld c, c
    xor a
    ld b, l

jr_068_5116:
    add c
    scf
    ld h, $2f
    ccf
    ld a, [hl+]
    ld c, e
    ld e, d
    xor [hl]
    ld b, [hl]
    and c
    jr nz, jr_068_510b

    sbc b
    and $0e
    add d
    and c
    db $e4
    push hl
    ret c

    adc c
    and b
    db $76
    and d
    pop bc
    and b
    ld [hl], b
    and b
    rst $38
    and $e7
    and b
    sbc [hl]
    ld b, [hl]
    add b
    ld c, d
    ld e, l
    rst $38
    ld d, d
    ld e, e
    ccf
    scf
    jr c, jr_068_51ad

    dec [hl]
    ld [hl], $7f
    ld b, e
    ld c, c
    ld h, c
    ld d, l
    xor a
    sub c
    sbc [hl]
    ret nc

    ldh a, [$36]
    ld d, b
    ld [c], a
    and $e7
    ld d, e
    and b
    pop de
    ret nc

    ld c, c
    and c
    res 4, b
    rst $18
    and b
    ld [$e8a0], a
    jp hl


    ret nz

    pop hl
    ld d, l
    ld h, c
    rst $38
    ld e, h
    ld [hl], $35
    dec [hl]
    ld l, h
    ld l, l
    xor h
    ld b, b
    ccf
    xor [hl]
    ld e, e
    ld e, e
    ld b, l
    sub c
    or [hl]
    db $fd
    and c
    ret nc

    db $ed
    add [hl]
    ld d, b
    ld [c], a
    add sp, -$17
    ld d, e
    and b
    rlca
    and c
    ld d, $a3
    rst $28
    add d
    sbc [hl]
    rst $38
    ld b, [hl]
    add d
    add e
    ld e, e
    ld b, l
    ld [hl], $35
    dec sp
    rst $38
    ld [hl], e
    ld l, [hl]
    xor l
    ld b, d
    xor a
    sub c
    sub b
    sub b
    add b
    pop bc
    ld [c], a
    ret nc

    xor $50
    db $e3
    ld d, e
    and c
    rlca
    and b
    ld a, c
    push bc
    ld b, $c2
    ld b, [hl]
    rst $38
    add l
    add a

jr_068_51ad:
    adc c
    add e
    ld b, l
    ld b, c
    ld b, e
    add c
    cpl
    scf
    scf
    ld b, l
    ld b, [hl]
    ld a, h
    and b
    sbc [hl]
    cp [hl]
    add d
    ret nc

    db $ed
    ldh a, [$50]
    db $e3
    sbc [hl]
    add c
    ld de, $d3a0
    add d
    sbc a
    sbc l
    and d
    or [hl]
    cp $08
    jp nz, $ae46

    add l
    adc e
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld bc, $fc81
    and b
    add c
    db $e3
    call c, $d081
    db $ed
    ld d, b
    and $46
    push hl
    ret


    and d
    db $f4
    ld [$07c0], sp
    ret nz

    xor a
    dec a
    ldh [$af], a
    add e
    add h
    ld b, [hl]
    ld de, $be9c
    add a
    ret nc

    rst $28
    ret


    xor a
    jp $c046


    add e
    ldh [rOBP0], a
    ret nz

    rst $38
    scf
    add l
    add a
    adc b
    add a
    add l
    sub c
    and c
    ret nz

    and h
    add c
    sbc [hl]
    xor a
    call nz, $c261
    ld h, d
    and $62
    push bc
    and h
    sbc [hl]
    sub b
    rst $38
    jp Jump_068_46c4


    add b
    ld b, [hl]
    xor [hl]
    ld b, e
    xor a
    rra
    add hl, sp
    ld l, d
    dec [hl]
    xor h
    ld b, b
    ret z

    ret nz

    rst $00
    jp Jump_068_61c2


    inc d
    and h
    and l
    db $f4
    db $e3
    push de
    push bc
    ld h, b
    jp nc, $62d6

    inc b
    add d
    db $e4
    ld h, b
    sbc $3f
    pop bc
    sbc [hl]
    sub b
    call nz, $c0c3
    ldh [$af], a
    ld c, e
    rst $38
    ld e, d
    ld a, $75
    ld h, [hl]
    xor l
    ld b, d
    sub b
    or [hl]
    or b
    inc b
    add d
    jp nz, $dc63

    and l
    call nc, $d361
    sub $56
    ld h, c
    sub $90
    sub [hl]
    ld h, d
    inc b
    add c
    cp a
    and b
    rst $38
    and b
    rst $10
    ld de, $8081
    pop hl
    ld d, c
    ld a, a
    ld e, [hl]
    ld d, l
    ld a, [hl-]
    dec [hl]
    ld l, d
    ld [hl], $45
    adc d
    ret nz

    db $10
    ld [hl], d
    and d
    jp nz, $dc61

    and [hl]
    or [hl]
    ld h, b
    ret c

    dec de
    ld h, b
    ld hl, $0d61
    pop bc
    call nc, $8107
    ld [de], a
    ld h, a
    sbc [hl]
    ld [$8da0], sp
    ld b, b
    ldh [$36], a
    dec [hl]
    cpl
    ld [hl], $81
    ld b, l
    sub c
    ld c, d
    ret nz

    ld [$a172], a
    db $d3
    add d
    ld [hl], b
    call c, $d7a4
    ld h, c
    add $60
    ld hl, $dd61
    db $d3
    jp c, $8307

    ld hl, sp+$12
    ld h, a
    ld [$4ca1], sp
    add b
    ld b, h
    inc a
    ld a, [hl-]
    add e
    add h
    pop hl
    xor [hl]
    jp z, $72a3

    and b
    call c, $d7a8
    ld h, d
    db $d3
    ret nc

    pop de
    adc [hl]
    rla
    ld h, b
    ret nc

    ret nc

    rst $10
    or [hl]
    add [hl]
    ld [de], a
    ld h, h
    ld [$46a1], sp
    rst $38
    xor [hl]
    add e
    adc c
    adc b
    ld [hl], c
    ld [hl], c
    add a
    add l
    rlca
    xor a
    sub b
    jp $a389


    ld l, d
    add e
    call c, $d9a7
    add b
    jr @+$64

    ld sp, hl
    call nc, $8707
    ld bc, $9cc5
    ld a, c
    adc l
    ld b, e
    xor a
    rst $18
    adc d
    add l
    ld [hl], $35
    add hl, sp
    call nz, $90a0
    call nz, $9083
    sub b
    adc d
    add c
    ld l, d
    add e
    ld [hl+], a
    xor b
    ld d, c
    and c
    ld h, c
    ld b, b
    reti


    cp $fd
    xor h
    db $eb
    and b
    and c
    ld b, [hl]
    add b
    ld b, l
    ld c, e
    or a
    ld e, h
    add c
    ld [hl], $44
    ret nz

    xor [hl]

Jump_068_5320:
    xor a
    ld c, c
    and b
    jp $be20


    jp nz, $836a

    jr @-$3a

    rst $28
    inc hl
    jr jr_068_5391

    db $db
    call $fc6a
    ld b, c
    ld a, [hl]
    ld c, c
    add b
    ld d, c
    ld d, [hl]
    add hl, sp
    ld [hl], l
    ld h, [hl]
    dec [hl]
    res 0, b
    rlca
    ld b, [hl]
    sub c
    jp $e07f


    ld c, d
    add c
    ld l, d
    add c
    inc e
    ld b, h
    inc sp
    rst $20
    ldh a, [rNR23]
    ld h, e
    ld [$5dc3], sp
    pop bc
    adc c
    add h
    add b
    ld c, d
    ld d, [hl]
    add hl, sp
    adc a
    dec [hl]
    ld [hl], a
    ld h, h
    ld h, h
    ld b, [hl]
    ld h, b
    ld b, c
    pop hl
    ld c, d
    add b
    db $eb
    add b
    dec [hl]
    ld b, h
    inc e
    ld b, d
    ret nc

    db $ec
    ld [$5dc4], sp
    pop bc
    add b
    and e
    ret


    ld h, b
    ld h, b
    rst $38
    ld e, h
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld [hl], $45
    xor [hl]
    add c
    nop
    add e
    and e
    ld e, a
    jp $819b


    ret nc

    ldh a, [rNR30]
    inc h
    ld e, l
    pop bc
    ld b, l
    ld h, d
    add hl, bc
    add e
    ld a, a

jr_068_5391:
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    xor a
    add c
    add d
    and b
    ld h, b
    dec bc
    add d
    ld c, $28
    ret nc

    db $ed
    ld a, [de]
    jr z, @+$47

    ld h, d
    sbc a
    sbc h
    call z, $ff80
    adc b
    ld [hl], d
    ld l, h
    ld a, $46
    ld b, [hl]
    add e
    add h
    ret nc

    add h
    jp nz, Jump_068_6b15

    ret nc

    db $ed
    ld [$eac6], sp
    db $db
    call nz, $9c9f
    ld a, a
    ld b, [hl]
    ld b, [hl]
    ld b, b
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    adc b
    add [hl]
    add b
    ld h, b
    ld b, d
    and c
    add sp, -$7c
    ld h, c
    call nz, $efd0
    rst $38
    ld l, [hl]
    sbc [hl]
    ld b, [hl]
    ld c, d
    ld h, b
    dec b
    dec [hl]
    add b
    ldh [rDMA], a
    ld c, $61

Call_068_53e0:
    add sp, -$7b
    ld h, c
    call nz, Call_068_6dcf
    jr nc, jr_068_53f4

    ld h, $fc
    nop
    sbc a
    sbc h
    pop bc
    pop hl
    nop
    ldh [$ae], a
    rst $08
    ld b, d

jr_068_53f4:
    add sp, -$7a
    db $e4

jr_068_53f7:
    dec de
    add e
    ret nc

    db $ec
    and b
    jr nc, jr_068_5409

    db $fc
    ld bc, $469e
    ld b, d
    ld a, a
    dec [hl]
    xor h
    dec [hl]
    dec [hl]
    inc a

jr_068_5409:
    ld b, h
    xor a
    ld b, $c3
    jr nc, jr_068_53f7

    add l
    dec de
    add c
    inc e
    add b
    ret nc

    ld [$d5d8], a
    jr nc, @+$0d

    adc b
    ld b, e
    add a
    ld b, h
    inc a
    xor l
    ld a, a
    ldh [rLY], a
    add h
    add sp, -$7a
    ld b, e
    ld h, c
    db $d3
    ld b, c
    ret nc

    ret nc

    db $eb
    jr nc, jr_068_543c

    ld c, b
    ld [hl+], a
    ld bc, $3ee2
    ldh [$39], a
    rrca
    ld b, e
    jr nz, @+$1b

    ld l, c
    ret nc

jr_068_543c:
    db $ed

jr_068_543d:
    ld a, [hl-]
    add b
    jr nc, jr_068_544b

    cp a
    add e

jr_068_5443:
    ld b, [hl]
    ld bc, $fec0
    ret nz

    rst $18
    ld a, $46

jr_068_544b:
    sub b
    or [hl]
    and d
    nop
    set 2, a
    jp nc, $d020

    db $eb
    bit 4, b
    jr nc, @+$0c

    or $42
    ccf
    ret nz

    add hl, sp
    ret nz

    db $e4
    inc bc
    ld h, l
    ld [hl], $43
    push bc
    jp c, $d0d3

    db $eb
    jp c, $30d3

    dec bc
    or $43

jr_068_546f:
    ld c, b
    ccf
    ret nz

    ld a, a
    pop hl
    ret nz

    pop hl
    jp $e7bf


    ret


    ld h, c
    call c, Call_000_0043
    ld h, d
    ret nc

    jp hl


    call c, $803e
    jr nc, jr_068_5490

jr_068_5486:
    sbc $82
    sbc [hl]
    sub c
    ld a, a
    ld [c], a
    inc de
    add hl, sp
    ld b, [hl]
    ld [hl], l

jr_068_5490:
    ld b, b
    cp a
    ldh [$9e], a
    nop
    ld h, d
    add hl, bc
    add l
    ret nc

    db $eb
    add sp, $3e
    add b
    jr nc, jr_068_54a5

    add hl, sp
    add h
    ld [$403d], a
    xor [hl]

jr_068_54a5:
    ld b, l
    scf
    dec l
    dec a
    ld c, e
    jr nz, jr_068_543d

    call nz, Call_068_61c0
    sbc [hl]
    nop
    ld h, d
    ld c, e
    add [hl]
    jr nz, jr_068_5486

    and $bd
    and d
    jr c, jr_068_5443

    ld a, $05
    db $fd
    jr nz, jr_068_546f

    ld b, c
    ld [hl+], a
    ld c, c
    ld [hl+], a
    add b
    ld [$7221], sp
    nop
    ld [c], a
    rst $20
    ld [$eb84], sp
    adc d
    ld e, a
    ld b, c
    ld a, $06
    and b
    dec bc
    and c
    sub b
    ld bc, $ae21
    cp $01
    rst $38
    pop bc
    ld a, $41
    ld [c], a
    add sp, $60
    ret nc

    db $e3
    sub d
    and $30
    inc b
    ld h, d
    ld b, a
    cp $03
    sub b
    sub c
    ld a, h
    ld [c], a
    nop
    nop
    ld h, b
    ld c, c
    inc bc
    ld d, b
    ld b, $d0
    db $e4
    sub d
    and $30
    inc b
    ld a, $0a
    ld b, c
    ld bc, $b601
    ld a, e
    ld [c], a
    ld b, c
    jr nz, jr_068_5546

    add b
    ld h, b
    nop
    ld [c], a
    and $d0
    db $e4
    sub d
    and $00
    jr nc, jr_068_5519

    ld l, [hl]
    ld [$43f1], sp

jr_068_5519:
    ld a, c
    nop
    cp $c3
    ld b, b
    call nz, Call_000_0550
    ret nc

    db $e4
    nop
    sub d
    and $30
    dec b
    ld a, $07
    ld d, h
    ld b, h
    ld a, d
    ret nz

    cp a
    pop hl
    rst $38
    inc h
    rra
    ld b, [hl]
    nop
    ret nc

    push hl
    sub d
    push hl
    ld a, [hl-]
    rrca
    ld d, h
    ld b, d
    ld a, [hl-]
    pop bc
    cp $c2
    ccf
    jp nz, Jump_068_481e

    nop

jr_068_5546:
    pop de
    ld l, [hl]
    jr nc, jr_068_5555

    ld d, h
    ld b, [hl]
    cp d
    and c
    dec a
    call nz, $a57e
    inc b
    adc l
    ret nc

jr_068_5555:
    pop hl
    ldh [rTIMA], a
    ld b, d
    jr nc, jr_068_5563

    ld a, l
    ld b, b
    ld [hl], a
    inc hl
    cp c
    add c
    ld b, e
    ld b, c

jr_068_5563:
    ld b, e
    ld c, $fd
    ldh [rLYC], a
    ld b, [hl]
    sbc h
    cp b
    ld h, b
    ldh [$e7], a
    ret nc

    ld [$2268], a
    call c, Call_000_0d30
    add hl, sp
    add l
    dec sp
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    ld b, l
    ld bc, $b946
    ld b, b
    ldh [$e9], a
    ret nc

    db $ed
    jr nc, jr_068_5590

    jr jr_068_55ac

    ld e, b
    ld hl, $61b9
    ei
    and h

jr_068_5590:
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    ld b, h
    ld b, [hl]
    sbc [hl]
    add b
    ldh [$eb], a
    ret nc

    add sp, -$1a
    ld b, c
    jr nc, jr_068_55aa

    sub $42
    and h
    ld h, c
    add hl, sp
    ld h, c
    ld l, c
    ld a, a
    and e

jr_068_55aa:
    dec [hl]
    dec [hl]

jr_068_55ac:
    and e
    ld l, d
    dec [hl]
    ld b, d
    ret nz

    ldh [$0c], a
    ldh [$e9], a
    ret nc

    jp hl


    db $d3
    jp c, Jump_000_23a1

    jr nc, jr_068_55c2

    ldh a, [$e0]
    ld d, l
    ld h, e
    inc bc

jr_068_55c2:
    sbc a
    sbc h
    ret nz

    ldh [$78], a
    ld h, c
    ret nz

    ldh [rP1], a
    ldh [$e0], a
    add sp, -$30
    ld [$d7e1], a
    ld h, e
    ld h, h
    jr nc, jr_068_55db

    ldh a, [$e1]
    ld [hl], a
    ld h, e
    sbc [hl]

jr_068_55db:
    ld b, h

jr_068_55dc:
    inc a
    dec sp
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    ld b, h
    ld a, [$e020]
    jp hl


    ld h, b
    ret nc

    jp hl


    scf
    add [hl]
    jr nc, @+$06

    ld b, b
    and b
    ld de, $a023
    sbc [hl]
    ret nz

    rst $00
    nop
    cp d
    jr nz, jr_068_55dc

    add sp, -$30
    ld [$27c4], a
    jr nc, jr_068_5606

    call nc, $f847

jr_068_5606:
    jr nz, @+$42

    call nz, $4100
    pop bc
    ldh [$ed], a
    ret nc

    push hl
    jr nc, jr_068_5621

    dec h
    add [hl]
    cp d
    add c
    db $fd
    ld [c], a
    rst $38
    add l
    nop
    ldh [$eb], a
    ret z

    ld h, [hl]
    jr nc, jr_068_562c

jr_068_5621:
    ldh a, [$ee]
    sbc $67
    ldh [$f2], a
    jr nc, jr_068_5636

    ldh a, [$e8]
    nop

jr_068_562c:
    inc l
    ld b, l
    sub l
    ld h, c
    ldh [$f1], a
    ld a, l
    ld h, d
    jr nc, jr_068_5643

jr_068_5636:
    ldh a, [$e8]
    jr nc, @+$24

    ld l, $40
    nop
    db $dd
    ld h, c
    db $fd
    ld b, c
    ldh [$ed], a

jr_068_5643:
    push bc
    ld h, d
    jr nc, jr_068_5654

    ldh a, [$e8]
    adc $02
    ld e, b
    jr nz, jr_068_564e

jr_068_564e:
    db $dd
    ld h, l
    ldh [$ed], a
    ld d, a
    add d

jr_068_5654:
    jr nc, jr_068_5663

    ldh a, [$e8]
    dec e
    ld [hl+], a
    add hl, bc
    jr nz, jr_068_56cc

    add e
    nop
    ldh [$ef], a
    ld d, a
    add e

jr_068_5663:
    cpl
    adc l
    db $10
    daa
    db $ed
    dec b
    cp $05
    ldh [$ed], a
    ld d, a
    add c
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
    inc h
    ld b, $02
    ld bc, $072a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    add hl, bc
    ld [bc], a
    inc bc
    dec hl
    ld a, [bc]
    ld [bc], a
    inc b
    dec h
    inc c
    ld [bc], a
    dec b
    daa
    inc c
    ld [bc], a
    ld b, $1d
    rrca
    ld [bc], a
    rlca
    ld hl, $020f
    ld [$1114], sp
    ld [bc], a
    add hl, bc
    ld a, [de]
    ld de, $0a02
    inc de
    ld [de], a
    ld [bc], a
    dec bc
    jr jr_068_56d6

    ld [bc], a
    inc c
    ld e, $12
    ld [bc], a
    dec c
    inc d
    inc de

jr_068_56cc:
    ld [bc], a
    ld c, $18
    dec d
    ld [bc], a
    rrca
    ld e, $16
    ld [bc], a
    db $10

jr_068_56d6:
    ld d, $17
    ld [bc], a
    ld de, $1720
    ld [bc], a
    ld [de], a
    dec e
    jr jr_068_56e3

    inc de
    ld a, [de]

jr_068_56e3:
    add hl, de
    ld [bc], a
    inc d
    inc e
    add hl, de
    ld [bc], a
    dec d
    ld hl, $0219
    ld d, $1f
    ld a, [de]
    ld [bc], a
    rla
    inc e
    inc e
    ld [bc], a
    jr jr_068_5712

    ld hl, $1902
    ld d, $22
    ld [bc], a
    ld a, [de]
    rra
    daa
    ld [bc], a
    dec de
    ld e, $28
    ld [bc], a
    inc e
    jr nz, @+$2a

    ld [bc], a
    dec e
    ld d, $29
    ld [bc], a
    ld e, $1a
    dec hl
    ld [bc], a
    rra

jr_068_5712:
    jr nz, jr_068_573f

    ld [bc], a
    jr nz, jr_068_5733

    cpl
    ld [bc], a
    ld hl, $2f21
    rst $38
    rst $38
    rst $38
    daa
    ld d, a
    ld d, $5c
    ld d, d
    ld h, d
    ld [hl], h
    ld h, d
    rst $18
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    db $ed
    ld l, $2e
    ld [hl], c
    ld c, [hl]

jr_068_5733:
    push af
    and $e0
    db $ec
    ret nc

    db $ed
    ld l, [hl]
    ld l, $6e
    cp [hl]
    ldh [$fe], a

jr_068_573f:
    cp l
    ldh [$0d], a
    dec c
    ld c, l
    ld c, l
    ld l, l
    ld l, l
    ld l, l
    rrca
    ld l, $2e
    ld c, $6d
    set 4, c
    ldh a, [$e2]
    jp nz, $e0e0

    ld [$f0ec], a
    ldh a, [$c1]
    ldh [$4e], a
    ld c, [hl]
    ret nz

    and $2e
    ld l, $6e
    rrca
    ld l, $4e
    ld c, $0d
    cp e
    ldh [$c0], a
    db $e4
    rst $28
    ldh [$e0], a
    add sp, $1c
    ldh a, [$f1]
    adc a
    ldh [$0e], a
    ld c, $4e
    sub b
    db $e3
    jp nz, $f1e0

    pop hl
    add b
    ld b, b
    ldh [$c0], a
    rst $20
    ldh [$e9], a
    ldh a, [$f6]
    ccf
    ld [c], a
    ret z

    pop hl
    ld l, a
    ldh [$0e], a
    dec de
    ld c, $0d
    rst $38
    ldh [rKEY1], a
    dec l
    ldh a, [$e0]
    ldh [$ed], a
    ldh a, [$fa]
    ld a, h
    adc b
    ld [c], a
    ret nz

    db $e4
    ld l, l
    dec hl
    dec bc
    ld c, l
    dec l
    ldh [$ef], a
    ld hl, sp-$10
    ld a, [$c0bd]
    add b
    db $e3
    ld l, l
    dec c
    ld l, l
    ld a, [bc]
    ld a, [bc]
    push bc
    ld l, d
    cp a
    ldh [$0d], a
    ldh [$ed], a
    ldh a, [$fd]
    add d
    jp nz, Jump_068_6d6d

    ccf
    dec c
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec a
    ldh [$df], a
    jp $c0f0


    add sp, -$10
    ei
    ld hl, sp-$5d
    ld [bc], a
    ldh [$2b], a
    dec bc
    dec hl
    ld a, [bc]
    dec b
    ld a, [hl+]
    add c
    ldh [$2d], a
    ldh [$ee], a
    ldh a, [$ee]

Jump_068_57df:
jr_068_57df:
    sbc $a6
    inc c
    pop bc
    jp $fee2


    ld [bc], a
    ldh [$0a], a
    ld c, e
    ld c, e
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    dec l
    ld bc, $7f0d
    ldh [$be], a
    and [hl]
    ldh a, [$a2]
    xor [hl]
    xor b
    ret nc

    db $e3
    sub d
    pop hl
    jr z, jr_068_57df

    inc sp
    dec c
    dec c
    ld hl, sp-$5f
    cp c
    and e
    dec c
    dec c
    ld [bc], a
    ldh [$7e], a
    ldh [rSB], a
    dec hl
    cp [hl]
    and d
    ei
    ret nz

    ld c, b
    pop hl
    and b
    and e
    ldh [$e3], a
    ret nc

    ld [$c214], a
    add sp, -$40
    pop hl
    ld sp, hl
    and h
    ld a, b
    and c
    dec l
    add e
    ldh [rWX], a
    ld c, e
    ld l, e
    inc bc
    dec c
    dec l
    jr c, @-$3b

    sbc a
    pop hl
    ld sp, hl
    ld [c], a
    inc h
    and h
    ret nc

    db $eb
    ld b, c
    and b
    ld hl, sp+$0d
    pop hl
    ld b, $c3
    dec a
    ld [c], a
    ld c, $4d
    dec l
    dec hl
    ld l, e
    ld de, $ff0b
    ldh [$33], a
    ld [c], a
    cp d
    pop bc
    ld l, l

jr_068_584d:
    ld sp, hl
    db $e3
    rrca
    and e
    ret nc

    db $eb
    add sp, $54
    and c
    pop de
    and c
    ldh a, [$e6]
    dec c
    ret nz

    and b
    ld c, l
    dec l
    ld l, e
    inc bc
    ld c, e
    ld c, e
    ret nz

    ldh [$7f], a
    pop hl
    db $fd
    push hl
    ld [hl], d
    pop bc
    inc d
    pop hl
    ret nc

    db $ec
    nop
    sbc a
    add c
    sub [hl]
    and c
    push af
    add c
    ld [hl], l
    add b
    dec d
    db $e3
    ld a, [hl]
    and b
    ld a, [hl]
    ret nz

    inc a
    pop bc
    add b
    cp [hl]
    add sp, -$40
    db $e3
    ret nc

    xor $50
    and e
    ld d, l
    add h
    or l
    jp nz, $e38b

    ld a, [bc]
    db $76
    db $fc
    and b
    ld c, e
    dec c
    inc a
    db $e3
    dec c
    dec bc
    dec bc
    ld [hl-], a
    jp nz, $c080

    push hl
    ret nc

    add sp, $4d
    add b
    db $fd
    and $b4
    add c
    ldh a, [$e3]
    ld [bc], a
    and b
    ld c, d
    ld bc, $7d2a
    ret nz

    ld a, e
    ret nz

    cp e
    pop bc
    ld a, [c]
    and b
    cp a
    ldh [$32], a
    jp nz, $edd0

    jr c, jr_068_584d

    and e
    cp c
    ldh [$75], a
    add c
    ld c, [hl]
    ld c, $4e
    ldh a, [$e4]
    cp $c0
    push af
    dec hl
    cp [hl]
    jp nz, $b52b

    ret nz

jr_068_58d1:
    ld c, e
    ld c, d
    ld a, [bc]
    ld a, [bc]
    ld d, b
    or e
    ret nz

    or d
    and b
    sub h
    ld h, d
    ret nc

    ld [$c00e], a
    rst $20
    ld l, [hl]

Jump_068_58e2:
    inc b
    add c
    ld e, $f0
    push hl
    ld c, l
    dec l
    dec l
    ld c, e
    ld a, a
    pop bc
    ld a, b
    pop bc
    db $f4
    pop bc
    add c
    ld l, d
    rst $38
    ret nz

    call c, $d0a4
    ld a, [c]
    dec b
    add h
    ret nz

    rst $20
    push bc
    and b
    ld c, e
    daa
    dec c
    ld l, e
    ld l, e
    scf
    jp nz, $c1b3

    ld a, [bc]
    ld [c], a
    add d
    push de
    ld h, c
    jp nz, $edd0

    dec c
    call z, $f681
    ld h, a
    ldh a, [$e3]
    db $ec
    ld b, c
    dec l
    dec c
    nop
    ld a, [hl-]
    and b
    ld a, a
    ld [c], a
    ldh a, [$80]
    ld l, l
    ldh [$dc], a
    and h
    ret nc

    db $ed
    dec a
    ld [c], a
    ldh a, [$ed]
    add b
    jr z, jr_068_58d1

    cp e
    ret nz

    ld a, [$b3c2]
    and c
    ld [hl], e
    add d
    sbc h
    and d
    ret nc

    db $ed
    dec l
    nop
    add h
    call nz, $eaf0
    call nc, Call_068_7ca2
    ret nz

    rst $38
    pop bc
    di
    and b
    ret nz

    pop hl
    db $db
    add b
    inc b
    ld e, h
    and d
    ret nc

    db $eb
    ld l, l
    ret nz

    db $ec
    ldh a, [$e4]
    ld [hl], a
    add d
    ld a, h
    ret nz

    cp a
    call nz, Call_000_2b81
    ret nz

    ld [c], a
    ld e, d
    add e
    ret nz

    db $ed
    inc b
    push bc
    ldh a, [$ea]
    db $ec
    ld [hl+], a
    dec l
    nop
    ld a, [$b480]
    ld h, c
    ld sp, hl
    pop bc
    cp [hl]
    add l
    ret nc

    db $ec
    ret z

    and e
    adc d
    ld h, b
    jp $f842


    cp b
    and l
    inc a
    ld h, b
    ldh a, [rNR42]
    dec c
    ld l, e
    ld c, e
    ld l, e
    ld c, e
    ld b, d
    ret nz

    ld [c], a
    ld a, [hl+]
    cp a
    and b
    pop bc
    and [hl]
    ret nc

    db $eb
    inc c
    ld b, h
    dec c
    ld hl, sp-$40
    and e
    dec l
    dec l
    db $f4
    ret nz

    ldh a, [$e6]
    ld a, e
    ld b, c
    ld c, e
    ld [hl], h
    ld h, c
    dec hl
    ld [bc], a
    db $f4

jr_068_59a7:
    add c
    ld c, e
    db $e4
    ldh [$e0], a
    db $eb
    ret nc

    db $e3
    inc c
    ld b, h
    ld a, l
    and d
    or e
    and c
    jr jr_068_59a7

    rst $20
    inc [hl]
    ld h, e
    ld b, b
    jp Jump_068_4b0a


    ldh [$ef], a
    ret nc

    db $e4
    inc c
    ld b, l
    add $b5
    ldh [$2e], a
    ld c, [hl]
    ldh a, [$e9]
    add $83
    ld a, [hl]
    and d
    dec hl
    dec c
    nop
    add c
    pop hl
    ldh [$ec], a
    ret nc

    ld [$e144], a
    or h
    nop
    cp e
    pop hl
    ldh a, [$e5]
    ld l, a
    ld b, c
    ld b, b
    dec sp
    ld h, b
    or a
    ld h, c
    inc [hl]
    ld h, b
    inc hl
    ldh [$e0], a
    db $ec
    ret nc

    ld [c], a
    dec l
    cp e
    add [hl]
    ld bc, $f50e
    ldh [$f3], a
    and b
    ldh a, [$e7]
    xor h
    ld bc, $803e
    ld [hl], a
    ld h, c

Call_068_5a00:
    ld b, d
    pop hl
    add b
    ldh [$ee], a
    ret nc

    db $e3
    inc c
    ld b, h
    add b
    ld [c], a
    ldh a, [$eb]
    add hl, sp
    ld hl, $e2c0
    ld l, e
    nop
    push af
    ld b, b
    ldh [$f0], a
    sub b
    ld [c], a
    jr nc, jr_068_5a26

    sub e
    ld b, d
    ld d, a
    ld b, l
    ld b, c
    pop hl
    add b
    pop hl
    ld bc, $7a4b

jr_068_5a26:
    ldh [rSC], a
    ld h, l
    ld b, d
    ld b, l
    call Call_000_30e6
    ld a, [bc]
    inc b
    call nz, Call_000_0234
    nop
    ld sp, $b601
    ld hl, $c1c3
    ld a, c
    ld b, h
    inc b
    ld b, c
    ret nc

    ld [$610b], a
    jr nc, jr_068_5a4d

    nop
    db $f4
    and [hl]
    jp Jump_000_01e3


    add h
    dec sp
    and b

jr_068_5a4d:
    ld [hl], d
    jp nz, Jump_000_0330

    ret nc

jr_068_5a52:
    jp hl


    jr nc, jr_068_5a62

    jr nc, jr_068_5a52

    ld h, h
    rst $30
    nop
    add a
    ld b, h
    ld a, h
    ld h, c
    dec bc
    ld c, e
    ld [hl], e
    add c

jr_068_5a62:
    ret nz

    and $60
    ret nc

    jp hl


    jr nc, jr_068_5a76

    ld b, b
    ld b, $48
    ld b, l
    inc a
    ld h, c
    ld c, e
    ld c, e
    add d
    ld b, e
    add b
    ld e, d
    ld b, c

jr_068_5a76:
    ret nc

    db $ec
    jr nc, jr_068_5a87

    db $e4
    and h
    ld a, h
    ld b, [hl]
    ret nz

    db $e3
    cp b
    ld [hl+], a
    ld l, l
    ld b, b
    ldh [$e1], a
    ret nc

jr_068_5a87:
    db $ed
    ld b, b
    dec c
    xor a
    ld b, h
    ld d, d
    ld [hl+], a
    ld b, b
    push hl
    ld c, e
    ld b, c
    ldh [rP1], a
    jp hl


    add b
    ld b, b
    inc bc
    ret nc

    db $ec
    ret nz

    db $ed
    db $f4
    and h
    ei
    ld h, $09
    add b
    jp nz, Jump_000_00c1

    inc sp
    add e
    ld [hl+], a
    jp nz, $ecc0

    jr nc, @+$10

    push af
    and l
    ld b, [hl]
    inc hl
    ld b, c
    db $e3
    inc b
    add $04
    adc a
    call nz, $e9d0
    ld l, $30
    dec c
    cp a
    and $80
    and c
    ld b, c
    db $e3
    add $03
    ld b, b
    ldh [$e6], a
    ret nc

    db $eb
    jr nc, jr_068_5ad9

    ldh a, [$e5]
    rra
    pop bc
    jp $0ba2


    ld b, a
    inc hl
    ld b, b
    ldh [$ed], a
    ret nc

jr_068_5ad9:
    push hl
    jr nc, jr_068_5aea

    ldh a, [$e4]
    ld [bc], a
    jp nz, Jump_000_003a

    ld c, e
    add d
    and b
    ret nz

    push bc
    ld b, d
    ldh [$ec], a

jr_068_5aea:
    ret nc

    and $30
    inc c
    ldh a, [$e5]
    and $00
    dec l
    ld c, l
    add b
    ld b, c
    ld h, c
    ld a, c
    ld h, d
    ldh [$ef], a
    ld b, b
    dec b
    jr nc, jr_068_5b0c

    ldh a, [$e5]
    add b
    ld b, d
    ld c, l
    inc bc
    dec hl
    dec hl
    ld [hl], a
    ld b, d
    add e
    nop
    ret nc

jr_068_5b0c:
    push af
    jr nc, jr_068_5b21

    pop hl
    add c
    dec a
    and l
    nop
    cp b
    ld [c], a
    jp $e021


    db $eb
    ret nc

    ld [$0830], a
    ldh a, [$e4]
    pop bc

jr_068_5b21:
    ld [$e3bf], a
    nop
    ldh [$ea], a
    ret nc

    and $30
    dec c
    ld a, [c]
    db $e3
    pop bc
    db $ec
    db $e3
    ld b, c
    ldh [$ea], a
    ret nc

    rst $20
    nop
    adc a
    and e
    jr nc, @+$09

    ld a, a
    and e
    pop bc
    db $ed
    and e
    ld b, d
    ldh [$e8], a
    ret nc

    rst $20
    ld d, b
    dec b
    nop
    jr nc, jr_068_5b55

    ld b, d
    ld [hl+], a
    ld b, d
    nop
    rst $30
    add l
    ld h, e
    ld b, c
    ldh [$e9], a
    ret nc

    db $ed

jr_068_5b55:
    jr nc, jr_068_5b60

    nop
    inc bc
    inc hl
    dec b
    add d
    call nz, $8163
    add c

jr_068_5b60:
    ldh [$ec], a
    ret nc

    jp hl


    jr nc, jr_068_5b73

    rst $30
    ld h, b
    add b
    ld b, h
    and e
    push bc
    ld [bc], a
    cp c
    ld b, d
    ldh [$ec], a
    ret nc

    db $eb

jr_068_5b73:
    jr nc, @+$0f

    xor l
    pop hl
    dec c
    inc c
    add l
    and b
    add l
    ld b, b
    dec l
    dec bc
    cp [hl]
    ld b, b
    jp nz, $d0c2

    ld hl, sp+$30
    dec bc
    nop
    ldh a, [$e2]
    ret nz

    ld [c], a
    ld b, [hl]
    inc bc
    add d
    ld h, c
    ret nc

    ld sp, hl
    ld [hl], $40
    ldh a, [$ef]
    ld d, l
    nop
    ld b, b
    cp a
    db $e4
    inc bc
    ld h, c
    ret nc

    db $fc
    jr nc, jr_068_5bab

    dec a
    inc bc
    ld d, c
    ld b, b
    ld l, e
    ld [$0160], sp
    ld c, e
    ld b, c

jr_068_5bab:
    nop
    dec b
    ld h, c
    sub $49
    ret nc

    db $ec
    jr nc, @+$11

    db $fc
    ld [hl+], a
    cp [hl]
    jp nz, $8000

    ld h, b
    add l
    ld b, c
    ldh a, [rNR43]
    ldh [$ec], a
    ret nc

    add sp, $30
    inc c
    db $fc
    inc h
    db $fd
    ld b, [hl]
    nop
    jr c, jr_068_5bcd

    or b

jr_068_5bcd:
    add d
    ldh [$eb], a
    ret nc

    and $30
    ld c, $fc
    inc hl
    dec a
    pop hl
    ld c, c
    and b
    nop
    add $43
    ret nz

    db $e3
    ldh [$ea], a
    ret nc

    rst $20
    jr nc, jr_068_5bf9

    db $fc
    ret nz

    adc d
    ld b, e
    call c, Call_000_0181
    dec c
    ldh [$ee], a
    ret nc

    xor $30
    inc b
    ldh a, [$e9]
    xor l
    inc bc
    sbc l
    add c

jr_068_5bf9:
    ldh [$f3], a
    nop
    ret nc

    pop hl
    jr nc, jr_068_5c0e

    ldh a, [$e8]
    ld e, c
    add d
    ld d, h
    add e
    ldh [$f2], a
    jr nc, jr_068_5c1b

    ldh a, [$e9]
    nop
    ret nz

jr_068_5c0e:
    and $e0
    db $f4
    ret nz

    pop hl
    nop
    nop
    nop
    rst $18
    ret c

    push de
    push de
    ret c

jr_068_5c1b:
    and b
    rst $38
    db $ed
    db $d3
    ret nc

    pop af
    db $d3
    db $ec
    push hl
    ldh [$ed], a
    ret nc

    db $ed
    jp nc, $d4d6

    sub $e6
    cp l
    ld [c], a
    sbc $df
    ret nc

    db $e4
    or c
    ldh [$d7], a
    call nc, $e6d7
    ldh a, [$e3]
    ret c

    push de
    ldh [$eb], a
    ldh a, [$ef]
    sub $d2
    ret nc

    or a
    jp nc, $d6d4

    sub c
    ldh [$e0], a
    pop hl
    ret nc

    db $e3
    ret nc

    cp a
    jp nc, $a0d8

    jp c, $dad9

    ldh a, [$e3]
    db $d3
    ld e, c
    ret nc

    ldh [$eb], a
    ldh a, [$ef]
    rst $10
    call nc, $e0bf
    rst $10
    call z, $bbe0
    ld [c], a
    db $e3
    ld d, e
    ldh [$d2], a
    ret nc

    pop de
    ld a, [c]
    ldh [$a0], a
    rst $00
    call c, $dcdb
    ldh a, [$e2]
    ldh [$ed], a
    ldh a, [$f0]
    db $dd
    reti


    cp d
    ld d, e
    ldh [$dd], a
    db $10
    ld [c], a
    db $eb
    and b
    rst $10
    ld [hl], e
    pop hl
    rst $10
    ld a, a
    jp c, $a0a0

    sbc a
    and d
    sbc l
    sbc a
    ldh a, [$e0]
    ld l, b
    rst $28
    ldh [$e0], a
    ld [$f0f0], a
    ret nc

    cp [hl]
    ldh [$dd], a
    pop de
    ret nc

    pop bc
    rst $28
    db $ec
    db $ed
    and b
    jp c, $e007

    reti


    jp c, $ffdc

    and b
    sbc a
    sbc h
    ld b, l
    ld b, l
    sbc h
    sbc a
    db $ed
    ld c, a
    and b
    and b
    jp c, $e0d3

    ld [$f0f0], a
    call nc, $e040
    db $e4
    adc e
    pop hl
    ld a, h
    jp nz, Jump_000_07dc

    ldh [rLYC], a
    ldh [$9f], a
    sbc h
    ld c, b
    ld e, a
    ld c, c
    ld d, d
    ld b, l
    or [hl]
    sbc a
    rst $28
    ldh [$d7], a
    ldh [$ea], a
    jp nz, $f0f0

    reti


    ld b, b
    ldh [$8b], a
    pop hl
    ldh [$e4], a
    rlca
    ldh [$a0], a
    and b
    ld a, a
    sbc [hl]
    ld b, l
    ld d, d
    ld h, c
    ld d, d
    ld b, h
    sub b
    cp a
    pop hl
    add hl, de
    jp c, $ebe0

    ldh a, [$ef]
    db $db
    db $db
    db $dd
    ldh [$8b], a
    pop hl
    ei
    xor b
    ld a, a
    sbc [hl]
    ld b, l
    dec hl
    cp l
    ld b, a
    ld b, a
    sub c
    cp a
    pop hl
    add c
    call c, $ece0
    ldh a, [$ee]
    db $ed
    ld [c], a
    adc e
    pop hl
    rlca
    jp nz, $a0b6

    sbc $ff
    rst $18
    sbc a
    sbc h
    ld b, a
    ld a, [hl+]
    cp [hl]
    ld d, d
    ld d, d
    rrca
    ld b, l
    sub c
    sub b
    sbc [hl]
    call Call_068_6be4
    pop hl
    ldh [$a4], a
    ret nc

    xor $d6
    add e
    and d
    db $e4
    push hl
    ld b, l
    ret nz

    jp nc, $a276

    ldh [$e1], a
    rst $38
    sbc [hl]
    ld d, c
    ld e, [hl]
    ld d, d
    cp [hl]
    cpl
    inc l
    cp l
    adc a
    xor [hl]
    sub b
    or [hl]
    sbc l
    ld a, c
    ret nz

    ld h, d
    and h
    ldh [$a1], a
    ld [$d08c], a
    ldh a, [$8f]
    and d
    and $e7
    ld b, l
    ret nz

    dec b
    ret nz

    dec [hl]
    and b
    ld [c], a
    rst $38
    db $e3
    sbc a
    sbc h
    ld d, e
    ld d, e
    cp l
    jr z, jr_068_5d8d

    cp a
    cp l
    xor a
    sub c
    jp $c390


    cp d
    pop bc
    and b
    ld h, c
    sbc a
    cp b
    ldh [$f0], a
    and d
    ret nc

    ldh a, [rNR14]
    and d
    add sp, -$17
    ld b, l
    ret nz

    db $fc
    or a
    and c
    push af
    add c
    db $eb
    sbc a
    sbc h
    ld b, [hl]
    add hl, sp
    dec [hl]
    rst $38
    dec [hl]
    ld a, [hl-]
    ld b, l
    xor [hl]

jr_068_5d8d:
    call nz, $c490
    sub b
    ccf
    or [hl]
    and d
    sbc l
    sbc l
    or [hl]
    jp $c2b3


    db $e4
    add a
    add b
    ret nc

    add sp, $14
    and c
    ld b, l
    jp $a00a


    ld a, c
    pop bc
    ld hl, sp-$60
    nop
    ret nz

    scf
    cp a
    jr c, jr_068_5de4

    ld b, b
    xor a
    sub c
    sub b
    rst $38
    db $e3
    jp $c441


    cp a
    db $e3
    call c, $d081
    db $ed
    inc d
    and c
    jr z, @-$1d

    call c, $c077
    db $fc
    push bc
    and b
    ld [hl], h
    add d
    ld [$aea1], a
    ld b, [hl]
    ld b, h
    ld c, b
    ld a, a
    ld c, [hl]
    ld c, b
    ld b, l
    xor [hl]
    sub c
    sub b
    jp $e0bc


    ld b, $78
    pop hl
    sub b
    and c
    call c, $d083
    db $ed
    dec c

jr_068_5de4:
    jp $c703


    ld a, $c3
    rst $38
    xor a
    xor [hl]
    ld c, d
    ld h, b
    ld h, c
    ld d, d
    ld b, l
    xor a
    ld a, e
    ld b, [hl]
    xor [hl]
    add l
    ldh [$90], a
    sub c
    ld b, [hl]
    ld b, [hl]
    ld [hl-], a
    jp nz, $dcf8

    add c
    ret nc

    ld a, [c]
    inc d
    adc l
    sbc a
    sbc h
    xor a
    ld c, d
    ld d, d
    rst $38
    scf
    dec a
    dec a
    dec a
    scf
    xor a
    sub c
    call nz, $90ff
    sub c
    ld b, l
    ld c, b
    ld c, b
    ld b, l
    sub c
    jp Jump_000_3200


    jp nz, $6df4

    jp nz, Jump_000_0462

    add c
    or a
    ld h, b
    push af
    ld h, b
    inc a
    jp $a1fc


    rst $38
    ld b, l
    ld b, b
    dec [hl]
    dec [hl]
    dec [hl]
    xor h
    xor h
    jr c, @+$01

    scf
    ccf
    ld b, e
    ccf
    ld d, c
    ld e, [hl]
    ld e, b
    ld b, h
    add a
    xor [hl]
    call nz, $dc9e
    xor b
    ret nc

    and $96
    ld h, d
    inc b
    add c
    db $d3
    push af
    sub $36
    add c
    sub $f0
    push hl
    sbc a
    sbc l
    sbc h
    ld [hl], $ff
    dec [hl]
    xor h
    xor l
    xor l
    dec [hl]
    dec [hl]
    ld h, d
    ld h, e
    dec sp
    ld h, [hl]
    ld [hl], $30
    and b
    xor a
    sub b
    sbc [hl]
    call c, $d0a8
    db $eb
    jp nz, $8004

    ret c

    ei
    ld h, b
    ld b, e
    add c
    ldh a, [$e5]
    inc a
    pop hl
    ld [hl], $ad
    ld a, a
    ld [hl], $43
    ld a, [hl-]
    ld h, d
    ld h, a
    dec [hl]
    ld l, b
    cp a
    pop hl
    rlca
    ld e, h
    or [hl]
    sbc a
    call c, $d0a8
    and $0d
    pop bc
    rla
    add b
    or $61
    ld a, [c]
    ld b, e
    add c
    db $dd
    ldh a, [$e5]
    ei
    jp nz, Jump_068_48ae

    ld c, b
    ld a, $39
    ld l, c
    add hl, sp
    ldh [$bf], a
    ldh [$5b], a
    sbc h
    sbc a
    ld hl, $dc81
    and d
    and [hl]
    ret nc

    jp hl


    db $d3
    jp c, $8227

    call $d140
    rst $30
    ld h, b
    ret nc

    ld sp, hl
    ret nc

    ldh a, [$e5]
    ldh a, [rSTAT]
    and c
    xor a
    ld c, l
    ld d, d
    ld a, [hl-]
    cpl
    ld l, e
    ld l, h
    dec [hl]
    xor h
    ld a, [hl]
    ldh [rLY], a
    db $f4
    add b
    call c, Call_000_22a4
    ret nc

    ld [$86d7], a
    add h
    jr c, jr_068_5f37

    or $40
    call nc, $e5f0
    ldh a, [rSTAT]
    rst $38
    sbc [hl]
    ld d, c
    ld d, d
    ld [hl], $ac
    ld l, [hl]
    ld l, a
    ld l, h
    ccf
    xor l
    dec [hl]
    ld l, h
    ld l, l
    ld b, b
    sbc [hl]
    db $db
    add b
    call c, $e0a8
    ret nc

    push hl
    daa
    add a
    ld hl, sp+$62
    rla
    add [hl]
    ldh a, [rSTAT]
    sbc [hl]
    ld b, l

jr_068_5efe:
    add hl, sp
    rst $38
    dec [hl]
    xor l
    dec [hl]
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], b
    rlca
    ld l, [hl]
    ld b, h
    and c
    db $db
    add b
    jp nc, $d0a8

    push hl
    daa
    add a
    ld hl, sp+$62
    ld a, [hl]
    rst $30
    ld l, d
    sbc a
    sbc h
    ld a, $35
    dec [hl]
    ld [hl], $78
    and b
    rst $38
    ld c, b
    ld c, b
    ld b, e
    ld b, [hl]
    sbc h
    sbc a
    add sp, -$17
    ldh [$d7], a
    jr z, jr_068_5efe

    push hl
    inc c
    ld b, [hl]
    ld hl, sp+$65
    dec h
    adc c
    sbc [hl]
    add hl, sp

jr_068_5f37:
    dec sp
    rst $38
    ld [hl], $43
    ld d, e
    ld d, h
    ld d, d
    ld d, d
    ld h, b
    ld c, c
    ld h, e
    ld c, b
    ld b, l
    pop bc
    and a
    ret nc

    db $eb
    inc c
    ld b, e
    db $e4
    push hl
    adc [hl]
    daa
    cp [hl]
    ldh a, [$e6]
    sbc a
    sbc h
    ld b, e
    xor [hl]
    ld b, l
    ld a, c
    and b
    scf
    nop
    jr nc, jr_068_5fbc

    ret nz

    and $d0
    db $ec
    inc c
    ld b, h
    inc hl
    pop hl
    add h
    ld [hl+], a
    ldh a, [$e8]
    or $40
    ld [hl], a
    xor [hl]
    xor a
    ld [hl], $79
    and b
    dec [hl]
    add hl, sp
    ld e, e
    ld [hl], b
    ld b, b
    add b
    ldh [$ee], a
    ld d, h
    inc hl
    inc c
    ld b, e
    inc hl
    pop hl
    add hl, bc
    ld [hl+], a
    ldh a, [$e8]
    cp b
    add c
    ld [hl], $1d
    xor h
    ret nz

    pop hl
    ld a, $ae
    ld b, [hl]
    inc [hl]
    ld h, b
    ldh [$ed], a
    reti


    ld [bc], a
    ld h, b
    inc c
    ld b, l
    inc a
    jp nz, Jump_068_4039

    ldh a, [$e8]
    ld hl, sp+$20
    add hl, sp
    xor h
    ld a, $a0
    rrca
    dec [hl]
    xor h
    ld a, $af
    pop bc
    and b
    ldh [$ee], a
    push bc
    ld h, d
    inc c
    ld b, h
    ld a, b
    inc hl
    ld h, c
    add hl, bc
    ld hl, $e9f0
    and b
    and c
    xor [hl]
    ld a, $c1
    pop hl
    rlca

jr_068_5fbc:
    dec [hl]
    xor l
    add hl, sp
    add d
    and b
    ldh [$ef], a
    ret nc

    ld [c], a
    rst $38
    ld l, [hl]
    ld sp, hl
    ld l, d
    dec e
    ld a, $41
    pop hl
    jr c, jr_068_6006

    xor [hl]
    db $76
    ld b, h
    ldh [$eb], a
    reti


    ld bc, $30dc
    dec c
    ld hl, sp+$29
    sbc a
    or [hl]
    ld b, [hl]
    add b
    pop hl
    ld a, [hl-]
    xor [hl]
    inc bc
    ld b, [hl]
    xor a
    add e
    ld h, b
    call c, $ce6d
    inc hl
    jr nc, @+$0d

    add hl, hl
    ld c, b
    adc h
    ld b, b
    cpl
    or [hl]
    sub b
    xor [hl]
    ld a, [hl-]
    jp $afc1


    pop bc
    ld b, c
    nop
    ld b, d
    inc c
    ld b, h
    ret nz

    ret nc

    ld [$d5d8], a

jr_068_6004:
    jr nc, jr_068_6011

jr_068_6006:
    inc h
    jp $e4c3


    jp $fb40


    xor a
    inc a
    add e
    pop bc

jr_068_6011:
    ld b, [hl]
    call nz, $c390
    sbc [hl]
    ld b, $e0
    ld [c], a
    db $d3
    ret nc

    ret nc

    db $eb
    jr nc, jr_068_602b

    db $f4
    and h
    ld b, a
    ldh [$ca], a
    ld b, b
    ld l, h
    rst $00
    ld b, c
    ld a, h
    ld h, c
    dec [hl]

jr_068_602b:
    add hl, sp
    ld a, c
    ld b, b
    call nz, Call_000_009e
    ld b, d
    jr nc, jr_068_6004

    db $ec
    ld a, [hl-]
    add c
    jr nc, jr_068_6042

    db $f4
    and h
    and b
    and c
    sub b
    ld b, c
    rst $00
    ld b, c
    adc l

jr_068_6042:
    ld b, h
    add b
    ldh [$3a], a
    ld b, l
    ld a, [hl-]
    ld b, c
    dec [hl]
    jr nz, @+$0b

    add b
    rst $10
    ld hl, $d0d2
    ld [$a1f3], a
    jr nc, jr_068_605f

    db $f4
    and l
    sbc [hl]
    inc c
    ld b, c
    ld c, h
    ld b, c
    push bc
    ld b, d

jr_068_605f:
    add h
    and c
    ld b, [hl]
    ld a, [$3320]
    nop
    add hl, bc
    add c
    jp c, $30d3

    ret nc

    ld [$e0f0], a
    jr nc, jr_068_607b

    db $f4
    and l
    sbc a
    or [hl]
    call $c420
    jr nz, @+$17

    sub c

jr_068_607b:
    ld a, c
    ld [hl+], a
    sub c
    ld sp, hl
    rlca
    call c, Call_000_0043
    ret nc

    add sp, -$10
    ldh [$74], a
    jr nc, jr_068_6095

    di
    dec h
    sbc [hl]
    rst $08
    ld hl, $90c3
    ld b, l
    add c
    ret nz

    inc hl

jr_068_6095:
    ld a, $46
    ld b, l
    ld h, $09
    add d
    ret nc

    ld [$0ea0], a
    add b
    jr nc, jr_068_60ac

    jr jr_068_60aa

    add $8a
    ld [hl+], a
    ld bc, $39e1

jr_068_60aa:
    ld b, [hl]
    inc b

jr_068_60ac:
    add $33
    inc bc
    ret nc

    ld [$7f00], a
    ld [hl+], a
    jr nc, jr_068_60c5

    ld [bc], a
    jp $e441


    ld b, a
    add e
    ldh [$e6], a
    ret nc

    pop af
    jr nc, jr_068_60ca

    inc [hl]
    ldh a, [$e4]

jr_068_60c5:
    inc a
    pop hl
    ld b, [hl]
    add c
    ld h, b

jr_068_60ca:
    ld a, $46
    add l
    ld bc, $efe0
    ld b, b
    ret nc

    and $30
    dec c
    ldh a, [$e4]
    ret nz

    ld [c], a
    ld a, [hl-]
    nop
    add d
    pop bc
    sbc [hl]
    ldh [$f0], a
    ldh a, [$f4]
    ld h, $30
    dec c
    ldh a, [$e4]
    ld a, h
    pop bc
    sub c
    ld b, l
    scf
    scf
    dec b
    ld b, l
    jp $b6a0


    dec b
    ld h, b
    ldh [$ed], a
    ret nc

    and $30
    dec c
    ldh a, [$e4]
    nop
    cp h
    and b
    adc b
    inc b
    jp $e0a3


    db $ed
    ret nc

    and $30
    dec c
    ldh a, [$e4]
    ld a, [hl]
    jp nz, $fd00

    push hl
    ld a, $c1
    ldh [$ec], a
    ret nc

    and $01
    sub e
    cp $82
    cp [hl]
    push hl
    add c
    add c
    nop
    ld bc, $3094
    ld c, $00
    add $01
    and c
    jp nz, $f6e4

    add b

jr_068_612b:
    nop

Jump_068_612c:
    add d
    call nc, Call_000_006d
    call nz, $1561
    ld b, d
    jr nc, jr_068_613e

    dec b
    ld b, d
    ld b, b
    and c
    cp l
    add c
    dec a
    ld [c], a

jr_068_613e:
    cp b
    add b
    add c
    call nz, $80c1
    ldh [$e9], a
    ret nc

    add sp, $40
    ld [bc], a
    jr nc, jr_068_6159

    ret nz

    add b
    call nz, $c308
    pop bc
    pop bc
    jp $8177


    sbc [hl]
    ldh [$ea], a

jr_068_6159:
    ret nc

    db $ed
    jr nc, jr_068_6165

    ret nz

    db $e4
    db $10
    inc b
    and b
    ret z

    jr nz, jr_068_612b

jr_068_6165:
    jr nz, @+$45

    add c
    call nz, $6081
    ldh [$ea], a
    ret nc

    add sp, -$08
    dec a
    pop bc
    jr nc, jr_068_617d

    ldh a, [$e2]
    sbc a
    or [hl]
    call nz, Call_000_3991
    dec bc
    and h

jr_068_617d:
    ld h, h
    rst $38
    ldh [$a5], a
    jp $c160


    jp nz, $eae0

    ret nc

    add sp, -$3d
    db $d3
    jp c, $8227

    jr nc, jr_068_6196

    ldh a, [$e3]
    ld b, h
    and c
    ld l, c
    and e

jr_068_6196:
    rrca
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld b, b
    and b
    ld [bc], a
    pop hl
    ldh [$ec], a
    ret nc

    rst $20
    ld bc, $8fd7
    inc b
    jr nc, jr_068_61ae

    ldh a, [$e3]
    ret nz

    ld [c], a
    ld b, a

jr_068_61ae:
    ld hl, $e1c0
    ld bc, $a0c2
    ldh [$eb], a
    ret nc

    rst $20
    scf
    add [hl]
    jr nc, jr_068_61c0

    rst $30
    ld h, e
    and c
    push bc

Call_068_61c0:
jr_068_61c0:
    ld h, b
    ld l, e

Jump_068_61c2:
    dec b
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc bc
    ld h, b
    nop
    add d
    ldh [$eb], a
    ret nc

    rst $20
    db $f4
    daa
    inc d
    jr nc, jr_068_61d7

    ld b, a
    inc h
    or [hl]

jr_068_61d7:
    ret nz

    pop bc
    xor h
    ret nz

    jp Jump_068_4204


    ldh [$eb], a
    jr nc, @-$2e

    rst $20
    jr nc, jr_068_61f4

    xor b
    ld [bc], a
    ld a, $61
    ld b, [hl]
    xor a
    ld bc, $81a2
    ld h, b
    nop
    db $e4
    ld [hl+], a
    ldh [$ea], a

jr_068_61f4:
    ret nc

    add sp, $30
    inc c
    ldh a, [$e4]
    ld a, l
    ret nz

    ld a, $a3
    ld b, d
    ld h, c
    ld b, b
    db $e4
    jr nz, @-$1e

    db $ed
    ret nc

    and $30
    dec c
    db $fc
    daa
    add hl, bc
    ret nz

    sbc l
    add $43
    add b
    db $e4
    jr nz, jr_068_61f4

    db $ed
    ret nc

    and $30
    dec c
    db $fc
    dec h
    ccf
    ld hl, $47c7
    db $eb
    nop
    ldh [$ed], a
    ret nc

    and $30
    dec c
    ldh a, [$e8]
    or l
    ld [bc], a
    add sp, $02
    db $dd
    and d
    ldh [$ee], a
    nop
    ret nc

    ld [c], a
    jr nc, jr_068_6243

    ldh a, [$e8]
    db $ec
    jp nz, Jump_000_02e8

    ld l, e
    ld bc, $efe0
    ret nc

    ld [c], a
    nop

jr_068_6243:
    rst $38
    ld [hl], h
    add hl, sp
    ld bc, $41fa
    jr jr_068_626e

    ldh [$f3], a
    jp nc, $0021

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

jr_068_626e:
    nop
    rst $38
    db $f4
    nop
    nop
    nop
    ld [bc], a
    nop
    dec de
    dec bc
    ld [bc], a
    ld bc, $0c1d
    ld [bc], a
    ld [bc], a
    rra
    inc c

Jump_068_6280:
    ld [bc], a
    inc bc
    inc e
    dec c
    ld [bc], a
    inc b
    ld h, $0d
    ld [bc], a
    dec b
    dec h
    ld c, $02
    ld b, $27
    ld c, $02
    rlca
    rla
    rrca
    ld [bc], a
    ld [$0f1e], sp
    ld [bc], a
    add hl, bc
    ld hl, $020f
    ld a, [bc]
    jr jr_068_62b0

    ld [bc], a
    dec bc
    jr nz, jr_068_62b4

    ld [bc], a
    inc c
    ld [hl+], a
    db $10
    ld [bc], a
    dec c
    ld a, [hl+]
    ld de, $0e02
    ld e, $12

jr_068_62b0:
    ld [bc], a
    rrca
    rra
    ld [de], a

jr_068_62b4:
    ld [bc], a
    db $10
    add hl, hl
    ld [de], a
    ld [bc], a
    ld de, $131d
    ld [bc], a
    ld [de], a
    dec e
    dec d
    ld [bc], a
    inc de

Call_068_62c2:
    inc h
    ld d, $02
    inc d
    jr nz, jr_068_62df

    ld [bc], a
    dec d
    jr nz, @+$1d

    ld [bc], a
    ld d, $1f
    inc e
    ld [bc], a
    rla
    ld hl, $021d
    jr jr_068_62fe

    dec e
    ld [bc], a
    add hl, de
    jr nz, @+$20

    ld [bc], a
    ld a, [de]
    dec h

jr_068_62df:
    ld e, $02
    dec de
    ld e, $1f
    ld [bc], a
    inc e
    jr nz, jr_068_6308

    ld [bc], a
    dec e
    ld h, $20
    ld [bc], a
    ld e, $24
    ld hl, $1f02
    ld e, $22
    ld [bc], a
    jr nz, @+$27

    ld [hl+], a
    ld [bc], a
    ld hl, $2327
    ld [bc], a
    ld [hl+], a

jr_068_62fe:
    rla
    inc h
    ld [bc], a
    inc hl
    ld a, [de]
    inc h
    ld [bc], a
    inc h
    dec de
    dec h

jr_068_6308:
    ld [bc], a
    dec h
    add hl, de
    ld h, $02
    ld h, $18
    daa
    ld [bc], a
    daa
    dec de
    jr z, jr_068_6317

    jr z, jr_068_6330

jr_068_6317:
    jr nc, jr_068_631b

    add hl, hl
    inc h

jr_068_631b:
    jr nc, jr_068_631f

    ld a, [hl+]
    ld a, [de]

jr_068_631f:
    ld sp, $2b02
    ld [hl+], a
    ld sp, $2c02
    dec h
    ld sp, $2d02
    jr jr_068_635e

    ld [bc], a
    ld l, $23
    ld [hl-], a

jr_068_6330:
    ld [bc], a
    cpl
    inc h
    inc sp
    ld [bc], a
    jr nc, jr_068_634e

    inc [hl]
    ld [bc], a
    ld sp, $3523
    ld [bc], a
    ld [hl-], a
    inc e
    add hl, sp
    ld [bc], a
    inc sp
    ld a, [de]
    ld a, [hl-]
    ld [bc], a
    inc [hl]
    dec de
    dec sp
    rst $38
    rst $38
    rst $38
    ld d, e
    ld h, e
    ld c, d

jr_068_634e:
    ld l, b
    adc [hl]
    ld l, [hl]
    or b
    ld l, [hl]
    rra
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    add sp, -$10
    db $ed
    db $f4

jr_068_635e:
    db $ed
    adc $d0
    db $ed
    ld l, [hl]
    ld l, $6e
    cp [hl]
    ldh [$bd], a
    ldh [$0d], a
    dec c
    or b
    jp nz, $f0e2

    db $eb
    and [hl]
    add sp, -$20
    ld a, [c]
    ld l, $0e
    pop bc
    ldh [$4e], a
    push de
    ld c, [hl]
    ret nz

    rst $20
    ld l, $f0
    db $eb
    ld c, l
    xor e
    pop hl
    dec l
    dec l
    ld l, c
    ld c, l
    ldh [$f5], a
    ret nc

    ldh [$2e], a
    ld a, $e1
    ld c, [hl]
    ld c, $f0
    di
    rst $38
    dec c
    ld l, l
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld c, l
    dec l
    ld b, b
    add b
    and $d0
    db $f4
    ccf
    ld [c], a

Jump_068_63a2:
    ld hl, sp-$40
    ldh a, [$ec]
    pop bc
    ldh [rOCPD], a
    ret nz

    ldh [$c1], a
    ld c, d
    ret nz

    pop hl
    ldh [$f1], a
    ret nz

    ld [$c1b8], a
    ldh a, [$ec]
    dec c
    dec hl
    ccf
    dec hl
    dec bc
    dec bc
    dec hl
    ld c, d
    ld a, [bc]
    ld a, a
    ld [c], a
    ldh [$f0], a
    ld hl, sp-$80
    ld [$e113], a
    ldh a, [$ec]
    dec c
    ld a, [bc]
    ld c, d
    ld l, e
    dec bc
    rrca
    ld c, e
    ld a, [bc]
    ld c, d
    dec hl
    ld a, a
    ld [c], a
    ldh [$ef], a
    ret nz

    xor $ef
    jp nz, $b0be

    rst $20
    ld l, l
    ld a, [bc]
    ld a, [bc]
    ld c, e
    dec bc
    ld a, $e0
    ld l, l
    ret nz

    ret nz

    push hl
    ldh [$ec], a
    ret nc

    db $ec
    xor a
    call nz, $e770
    jp Jump_068_6bc0


    ld c, e
    rrca
    ld c, e
    ld a, [bc]
    ld l, l
    dec c
    add b
    db $e3
    ldh [$ed], a
    pop de
    and c
    adc $a3
    ld h, c
    ld l, l
    rst $00
    and d
    cp [hl]
    and a
    ldh a, [$e0]
    ldh a, [$a0]
    dec c
    ld a, [bc]
    add b
    ld [c], a
    ld hl, $e52b
    and b
    inc a
    ret nz

    db $fc
    and a
    ret nc

    jp hl


    dec c
    ret c

    pop hl
    jp $f0a0


    ld hl, sp-$5f
    cp c
    and e
    ldh a, [$e3]
    ret nz

    ld [c], a
    ld c, l
    ld c, d
    ld a, [bc]
    dec hl
    nop
    ret nz

    ld [c], a
    cp [hl]
    pop hl
    cp h
    and e
    ret nc

    db $ed
    call $83a0
    and d
    ld sp, hl
    and l
    ldh a, [$e5]
    ld a, [de]
    cp l
    db $e3
    ld l, e
    add b
    ret nz

    dec bc
    dec bc
    ret nz

    pop hl
    cp a
    ld [c], a
    ld e, h
    and c
    nop
    ret nc

    db $ed
    ld b, c
    and b
    ld a, e
    pop hl
    cp c
    and b
    push af
    add e
    ldh a, [$e4]
    jp Jump_068_63a2


    ldh [rSC], a
    ret nz

    pop hl
    dec l
    cp a
    ld [c], a
    db $fc
    call nz, $ecd0
    add a
    pop hl
    inc a
    pop hl
    ldh a, [$ed]
    ld b, $c1
    db $e4
    ld l, e
    ld l, e
    add c
    pop hl
    cp a
    ld [c], a
    inc a
    call nz, $ecd0
    adc a
    add c
    add b
    add [hl]
    and c
    push af
    add c
    ld [hl], l
    add b
    db $fd
    and b
    ldh a, [$e4]
    xor a
    add b
    rst $00
    ret nz

    dec hl
    ld bc, $404b
    ld [c], a
    ld a, [hl]
    pop hl
    sbc h
    pop bc
    db $dd
    and c
    ret nc

    ldh a, [$94]
    add e
    ld a, [hl]
    pop bc
    jr @-$0e

    rst $20
    ld b, d
    ld [c], a
    ld a, a
    and d
    ld c, e
    dec hl
    or [hl]
    pop hl
    ld e, l
    ret nz

    sbc l
    and e
    ld b, d
    ret nc

    db $eb
    ld l, l
    rst $38
    add sp, -$4c
    add c
    ldh a, [$e3]
    ld b, h
    ret nz

    ld l, l
    add c
    ld [c], a
    rst $18
    dec bc
    dec bc
    ld l, e
    ld l, e
    ld c, e
    db $76

jr_068_64c2:
    pop hl

Jump_068_64c3:
    dec l
    ld l, l
    pop bc
    ld c, l
    sbc $ea
    ret nc

    push hl
    adc $e2
    ld h, e
    ldh [$c3], a
    pop hl
    ld l, $4e
    inc bc
    ld c, $4e
    ldh a, [$e3]
    add h
    db $e3
    jp nz, $c2c0

    pop hl
    add hl, sp
    pop hl
    cp [hl]
    and b
    jr nc, jr_068_64c2

    add sp, -$30
    add sp, -$3c
    and b
    ret nz

    push hl
    ld l, [hl]
    ld l, [hl]
    cp a
    ldh [$f0], a
    pop hl
    ld l, h
    add a
    jp nz, $c10a

    dec bc
    ld l, e
    ld b, h
    pop bc
    dec hl
    dec l
    ret nz

    ld [c], a
    jr nc, @-$1b

    ld h, b
    sbc $e5
    ret nc

    db $ec
    add b
    pop hl
    ld l, $6e
    ld [hl], $85
    ld [hl], c
    pop hl

jr_068_650d:
    jr jr_068_650d

    db $e3
    call nz, $83a0
    jp nz, Jump_000_2d2d

    ld l, [hl]
    ldh [$80], a
    db $e3
    sbc $e3
    add d
    ret nc

    db $eb
    dec c
    dec bc
    pop hl
    or $67
    pop bc
    db $e3
    add h
    pop bc
    rst $38
    ldh [$2d], a
    ld [bc], a
    rst $38
    pop hl
    dec hl
    pop bc
    pop hl
    call nc, $d468
    call nz, $e590
    dec a
    ld [c], a
    ret nz

    add sp, $4c
    pop de
    and e

jr_068_653e:
    jp Jump_000_2bc2


    dec bc
    cp e
    pop hl
    pop hl
    pop bc
    ld l, l
    ret nz

    rst $30
    ld h, l
    dec l
    ldh a, [$ed]
    ld c, l
    rrca
    pop hl
    call nz, $0d62
    dec bc
    inc bc
    and c
    ld [$c19f], sp
    pop bc
    jp $f080


    ld l, l
    ret nz

    db $ec
    ldh a, [$e1]
    pop bc
    add d
    dec b
    and c
    ld [bc], a
    ld a, a
    ld h, b
    dec l
    and b
    pop hl
    jp nz, $cea1

    add sp, -$40
    db $eb
    ldh a, [$ef]
    ld l, e
    add c
    inc b
    ld c, c
    ldh [$c4], a
    add b
    ld c, e
    ret nz

    ldh [$ae], a
    jp nz, $edce

    add [hl]
    ld b, l
    ret z

    and e
    nop
    cp [hl]
    call nz, $a5f4
    ret nz

    ld [c], a
    ld b, e
    ldh [rLCDC], a
    pop hl
    ld [hl+], a
    ld [c], a
    and b
    xor e
    ret nc

    ld [$0700], a
    pop bc
    rst $00
    and b
    jr nz, jr_068_653e

    ld d, [hl]
    ldh [rRP], a
    pop bc
    ret nz

    db $e3
    ld b, c
    ld [c], a
    nop
    ldh [rP1], a
    push bc
    ld h, b
    ld l, [hl]
    and e
    ldh [$e5], a
    ret nc

    db $ed
    rlca
    call nz, $a27d
    inc bc
    jp $a3ff


    ld bc, $c66b
    add c
    cp $c1
    cp a
    jr nz, jr_068_661f

    and l
    sub e
    and c
    ret nc

    db $ed
    dec sp
    and e
    inc l
    inc a
    add b
    or l
    ldh [$2e], a
    ld c, [hl]
    jp c, Jump_068_6d82

    ld a, a
    ret nz

    ld b, l
    add e
    nop
    call nz, Call_068_7062
    ret nz

    dec e
    and c
    ldh [$e3], a
    ret nc

    db $ed
    ret nz

    push hl
    ld b, h
    pop hl
    or h
    nop
    ld [hl], h
    sub $22
    ccf
    db $e4
    ld c, e
    jp $4b60


    ld a, [bc]
    ld a, [hl+]
    cp a
    db $e4
    sub h
    ldh [$e4], a
    ret nc

    db $ed
    dec l
    cp e
    add [hl]
    ld c, $f5
    ldh [$b7], a
    ld b, c
    ld c, $79
    ld c, l
    ret nz

    add h
    ret nz

    pop hl
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld hl, sp+$60
    nop
    db $fc
    nop
    ldh [$e4], a
    ret nc

    db $ed
    ld c, d
    pop hl
    ld c, e
    add d
    add b
    pop hl
    ret nz

    ld [c], a
    ld b, b

jr_068_661f:
    ldh [rP1], a
    rst $38
    add e
    add d
    and b
    cp a
    ld [c], a
    add b
    ld h, d
    cp d
    nop
    ret nc

    ld a, [c]
    jr nc, jr_068_663c

    ld d, h
    inc b
    inc b
    nop
    pop bc
    ld b, b
    and e
    dec bc

jr_068_6637:
    ld bc, $bf80
    db $e3
    ld [hl+], a

jr_068_663c:
    ld b, [hl]
    add hl, hl
    add hl, bc
    jr nc, @+$0c

    add b
    db $f4
    and h
    ld c, l
    nop
    add [hl]
    ld h, e
    add e
    ld b, c
    ld hl, sp-$60
    add b
    ld h, d
    cp h
    ld [hl+], a
    ld l, $c1
    ld c, $d0
    ld [$610b], a
    jr nc, jr_068_6662

    db $f4
    and h
    ld [hl], l
    ldh [$2d], a
    dec c
    ld bc, $814d

jr_068_6662:
    jp nz, $81bd

    db $fc
    add b
    ret nz

    and $da
    ld h, b
    ret nc

    add sp, $30
    dec c
    nop
    ei
    ld h, h
    xor c
    inc hl
    ld b, [hl]
    jr nz, jr_068_6637

    ld [$41ff], a
    ret nc

    db $ec
    jr nc, jr_068_668b

    db $f4
    and h
    nop
    ld l, c
    inc h
    ld b, $60
    ccf
    db $e3
    ld [hl], c
    add d
    reti


    ld h, b

jr_068_668b:
    ret nc

    xor $30
    dec c
    ret nz

    push hl
    ld h, $7f
    ld h, h
    ld c, l
    dec hl
    cp l
    and e
    add b
    ld h, c
    dec l
    ldh [$e1], a
    ret nc

    db $ed
    nop
    jr nc, jr_068_66af

    xor a
    ld b, h
    ret nz

    push hl
    db $fc
    add e
    ld b, b
    ldh [$82], a
    and c
    ld b, e
    ld b, e
    ld b, b

jr_068_66af:
    inc c
    nop
    ret nz

    db $ec
    db $76
    add h
    ret nz

    rst $20
    ld bc, $7f22
    ld h, c
    ld a, $01
    ld e, c
    inc hl
    ret nz

    ld [$3000], a
    ld c, $9f
    ld [bc], a
    sbc c
    inc bc
    jp nz, $fd21

    add d
    ret nz

    push hl
    ld b, c
    ld bc, $edd0
    ld bc, $302e
    dec c
    ret nz

    db $e4
    cp [hl]
    add d
    ld b, b
    db $e4
    add b
    ld [c], a
    add c
    ld hl, $2689
    nop
    ret nc

    add sp, $30
    dec c
    ldh a, [$e5]
    ld a, l
    add d
    db $fc
    and e
    ld a, d
    ld b, b
    add c
    ld hl, $e151
    ld b, b
    ret nc

    rst $28
    jr nc, jr_068_6706

    ldh a, [$e4]
    ld a, h
    and b
    ld c, c
    nop
    ei
    ld h, d
    ld c, e
    scf
    ld b, b
    ld b, b
    xor [hl]
    and d

jr_068_6706:
    and h
    add c
    ret nc

    xor $30
    inc c
    ldh a, [$e5]
    ld [hl], $e3
    dec hl
    cp d
    ld h, b
    ld bc, $c06b
    pop hl
    cp [hl]
    ldh [rLCDC], a
    inc bc
    ret nc

    db $ed
    jr nc, jr_068_672c

    ldh a, [$e5]
    and c
    pop bc
    ld [bc], a
    ld b, $40
    dec hl
    pop bc
    nop
    cp $21
    or l

jr_068_672c:
    ld hl, $e229
    ret nc

    db $ed
    jr nc, jr_068_6745

    nop
    or [hl]
    call nz, $e3c8
    cp a
    ld [hl+], a
    scf
    ld b, c
    inc c
    and e
    ret nc

    pop af
    jr nc, jr_068_674a

    ldh a, [$e7]
    inc bc

jr_068_6745:
    dec c
    ld l, l
    jp $81e3


jr_068_674a:
    ld [c], a
    jr nc, jr_068_676d

    dec hl
    ld bc, $e4c0
    ret nc

    add sp, $00
    ld [hl-], a
    rlca
    ld [hl+], a
    dec c
    add h
    db $e4
    cp l
    push hl
    sbc l
    ld h, c
    ld e, l
    ld b, d
    jr nc, jr_068_67ad

    inc c
    ld b, [hl]
    nop
    ld [hl+], a
    rlca
    jr nc, jr_068_676c

    ret nz

    pop hl
    cp l

jr_068_676c:
    rst $20

jr_068_676d:
    sbc b
    db $e3
    and b
    push hl
    ret nc

    add sp, $40
    dec b
    nop
    jr nc, jr_068_6785

    db $fc
    ld b, b
    add hl, bc
    db $e3
    jp nz, $dcc3

    ld bc, $63e3
    inc sp
    ld b, [hl]
    ret nc

jr_068_6785:
    db $eb
    nop
    jr nc, @+$0a

    ld [hl], b
    ld [c], a
    ld [bc], a
    pop hl
    add hl, bc
    pop hl
    ret nz

    and $e3
    ld h, l
    or e
    inc h
    ret nc

    add sp, $01
    dec c
    ld b, b
    inc c
    ldh a, [$e2]
    ld [bc], a
    db $eb
    ld [bc], a
    pop bc
    rla
    ld b, l
    ret nc

    xor $fb
    ld [bc], a
    nop
    ldh a, [$ed]
    jp nz, $fdc4

jr_068_67ad:
    ld b, h
    ld b, d
    pop bc
    ret nz

    and $d0
    db $ed
    ld b, b
    dec bc
    ldh a, [$e4]
    inc bc

jr_068_67b9:
    ld c, l
    dec l
    ret nz

    rst $20
    db $fd
    add d
    ld h, e
    ld h, h
    ld [hl], d
    nop
    ret nc

    db $eb
    ld l, c
    pop bc
    jr jr_068_67b9

    ldh a, [$bf]
    db $e3
    ld a, [hl]
    ld bc, $2d0b
    ld a, [hl]
    add c
    add d
    ret z

    ret nz

    db $ed
    nop
    jr nc, jr_068_67e3

    rst $38
    and a
    adc $20
    add c
    add sp, -$56
    db $e4
    inc [hl]
    add hl, bc

jr_068_67e3:
    add [hl]
    ld b, d
    jr nc, jr_068_67f6

    nop
    add hl, de
    ret z

    nop
    ld h, e
    ld a, [hl]
    add c
    jp nz, $d0ea

    db $eb
    jr nc, @+$0e

    ldh a, [$e8]

jr_068_67f6:
    add c
    add c
    nop
    rst $38
    pop hl
    ld a, [hl]
    add b
    or c
    ld h, b
    ldh [$ef], a
    ret nc

    ld [c], a
    jr nc, @+$10

    ldh a, [$e7]
    cp h
    call nz, Call_068_4200
    and d
    ldh [$f1], a
    ret nc

    db $e3
    jr nc, jr_068_6825

    ldh a, [$e1]
    db $fd
    jp nz, $8181

    add d
    and b
    nop
    ldh [$f1], a
    ret nc

    jp hl


    jr nc, jr_068_6826

    ldh a, [$e9]
    ld a, [hl-]
    nop

jr_068_6825:
    adc c

jr_068_6826:
    ld bc, $e1f8
    ld h, b
    inc bc
    nop
    ldh [$ec], a
    ret nc

    pop hl
    jr nc, @+$10

    ldh a, [$e8]
    ld hl, sp-$7f
    db $e3
    and d
    or b
    add d
    ldh [$ef], a
    nop
    jr nc, jr_068_6850

    ldh a, [$e9]
    ret nz

    ld [$f0e0], a
    ld de, $0081
    nop
    nop
    rra
    ret c

    push de
    push de
    ret c

    and b

jr_068_6850:
    rst $38
    add sp, -$10
    db $ed
    db $f4
    db $ed
    sbc $d0
    db $ed
    jp nc, $d4d6

    sub $bd
    ld [c], a
    sbc $df
    ldh a, [$c2]
    ld [c], a
    ldh a, [$eb]
    and [hl]
    add sp, -$20
    ld a, [c]
    ret c

    push de
    sub $d2
    rst $38
    ret nc

    jp nc, $d6d4

    db $d3
    and b
    and b
    ldh [$ed], a
    pop hl
    ld a, c
    ldh [$d3], a
    ret nc

    ldh a, [$eb]
    and b
    sbc a
    sbc l
    cp a
    sbc l
    sbc l
    and d
    sbc a
    and b
    ld [$f4e0], a
    db $d3
    rst $30
    ret nc

    rst $10
    call nc, $e0bf
    rst $10
    jp nc, $a0d8

    ei
    ld [c], a
    db $e3
    ldh a, [$f0]
    sbc a
    sbc h
    ld b, l
    ld c, b
    ld c, [hl]
    rst $20
    ld c, b
    sbc h
    sbc a
    ld e, $e0
    ldh [$f2], a
    db $d3
    ret nc

    db $dd
    cp a
    reti


    rst $10
    call nc, $ddd7
    ret nc

    ld a, a
    ldh [$a0], a
    rst $18
    db $eb
    and b
    and b
    rst $10
    jp nc, $eaf0

    sbc a
    sbc h
    ld a, a
    ld b, [hl]
    ld b, h
    ld e, c
    ld d, h
    ld h, b
    ld d, l
    sbc [hl]
    sbc $c2
    or h
    ldh [$ef], a
    ret nc

    ldh [$d0], a
    cp [hl]
    ldh [$dd], a
    pop de
    ret nz

    pop hl
    db $ec
    rst $18
    db $ed
    and b
    and b
    jp c, $f0d3

    ld [$459e], a
    ccf
    ld b, e
    ld a, [hl+]
    jr nz, jr_068_690f

    ld c, e
    ld d, l
    ld a, a
    ld [c], a
    ldh [$f0], a
    jp nc, $e0d0

    call nc, $e040
    cp $c0
    rst $10
    ld a, h
    jp $d7dc


    cp $f0
    ld [$4f9e], a
    ld d, [hl]
    ld l, $20
    ld l, $4b
    and e
    ld d, l
    ld b, [hl]
    ld a, a
    db $e3
    ldh [$ee], a
    ret nc

    ldh [$d9], a
    ld b, b
    ldh [$d4], a

jr_068_690f:
    rst $10
    rst $10
    reti


    jp c, $c43c

    jp c, $e9f0

    sbc a
    sbc h
    rst $38
    ld c, a
    ld e, b
    ld [hl-], a
    jr nz, @+$34

    ld e, [hl]
    ld d, l
    sub c
    ret c

    ret nz

    push hl
    ldh [$eb], a
    ret nc

    pop hl
    db $db
    db $db
    call $dae0
    db $db
    ld sp, hl
    call c, $e59f
    ldh a, [$e9]
    and c
    ld b, l
    ld c, e
    ld d, [hl]
    dec l
    rra
    ld h, $2d
    ld e, e
    sub c
    sub b
    ret nz

    and $e0
    ld [$e14f], a
    call nz, $e2cd
    jp nz, $d8e1

    cp b
    and l
    ldh a, [$e4]
    ldh a, [$a0]
    sbc [hl]
    ld d, c
    rst $38
    ld e, [hl]
    ld e, d
    ld a, $35
    ld a, $46
    sub b
    sub b
    pop hl
    or [hl]
    inc a
    ret nz

    db $fc
    and l
    ret nc

    db $ed
    add d
    and c
    db $e4
    push hl
    ret c

    db $ec
    ld hl, sp-$60
    db $76
    and a
    db $e4
    push hl
    ldh a, [$a1]
    sbc [hl]
    sub c
    ld c, e
    dec de
    ld d, l
    ld a, [hl-]
    ret nz

    ldh [$c3], a
    sub b
    cp [hl]
    ldh [$3c], a
    pop bc
    db $ec
    and e
    ld l, h
    ret nc

    db $eb
    adc b
    ld [c], a
    and $e7
    db $76
    ret nz

    pop de
    ret nc

    ld sp, hl
    and b
    db $fc
    ldh a, [$e5]
    ldh a, [$a1]
    sbc [hl]
    sub b
    ld b, e
    ld b, b
    dec [hl]
    dec [hl]
    ld b, a
    ld a, [hl-]
    ld b, l
    call nz, $e5bf
    call c, $d0a1
    db $ed
    db $d3
    inc b
    pop bc
    rst $00
    add sp, -$17
    jp c, $a3b7

    ldh a, [$e6]
    add h
    and c
    or [hl]
    sub c
    rst $38
    ld a, c
    ld a, d
    ld h, l
    ld h, [hl]
    dec [hl]
    ld b, b
    sub c
    call nz, $9087
    sub b
    jp $c5fc


    ret nc

    db $ed
    pop bc
    and b
    ld b, [hl]
    jp nz, $f0da

    or a
    and c
    ld a, c
    ret nz

    ldh a, [$e4]
    pop bc
    db $e3
    ld a, [hl]
    ld b, l
    ld a, [hl-]
    ld [hl], a
    ld a, a
    ld h, h
    ld a, h
    ld a, l
    sub c
    sub b
    sub b
    call nz, $c5bc
    ld [bc], a
    ret nc

    db $ed
    jp c, $c044

    ld hl, $86a0
    ret nz

    or $e0
    ld a, c
    ret nz

    ldh a, [$e5]
    cp $42
    ldh [rDMA], a
    add b
    xor [hl]
    ld b, [hl]
    ld a, $35
    dec [hl]
    ld b, e
    add hl, sp
    ld a, a
    cp a
    pop hl
    rst $38
    pop bc
    ret c

    pop hl
    ret nc

    db $ed
    call c, $c844
    ld hl, sp+$3a
    pop bc
    ldh a, [$e5]
    ld b, d
    ldh [$ae], a
    add b
    xor a
    ld b, l
    ld a, [hl-]
    ld c, $c0
    ldh [rDMA], a
    add c
    ld b, [hl]
    ret nz

    jp $e7da


    or $eb
    inc b
    adc [hl]
    rst $38
    sbc a
    sbc l
    and d
    or [hl]
    sub c
    ld b, [hl]
    xor a
    add b
    ld a, a
    ld b, l
    ld [hl], $35
    jr c, jr_068_6a6a

    ld b, l
    xor [hl]
    ret nz

    ldh [rP1], a
    db $fd
    add e
    jp nc, $c46b

    ld h, c
    jp nz, Jump_000_0462

    add c
    or a
    ld h, b
    push af
    ld h, b
    inc a
    jp $9fff


    or [hl]
    sub b
    sub b
    sub c
    xor [hl]
    ld b, [hl]
    ld a, c
    dec de
    adc l
    ld [hl], $c2
    pop hl
    ld b, [hl]
    xor a
    ret nz

    db $e3
    sbc $e7
    ret nc

    add sp, $2c
    add [hl]
    add d
    inc b
    add c
    db $d3
    sub $36
    add c
    sub $76
    add c

jr_068_6a6a:
    pop bc
    pop hl
    rst $38
    sub b
    ld b, [hl]
    xor a
    ld a, c
    ld a, [hl]
    ld [hl], $3c
    ld b, h
    rst $38
    xor [hl]
    xor [hl]
    xor a
    ld b, [hl]
    add e
    add h
    ld b, [hl]
    sub b
    ld de, $dea1
    jp hl


    ret nc

    db $ec
    inc b
    add c
    ret c

    ei
    ld h, b
    cp b
    add c
    ld [hl], $81
    db $fd
    sbc [hl]
    ld d, d
    ret nz

    sub c
    xor [hl]
    ld a, c
    ld a, [hl]
    add hl, sp
    dec [hl]
    rst $38
    dec [hl]
    ld b, b
    xor a
    xor a
    add e
    adc c
    add a
    add l
    dec b
    sub c
    pop bc
    and c
    db $d3
    sbc $e6
    ret nc

    add sp, $0d
    pop bc
    rlca
    add b
    or $61
    sub [hl]
    rst $30
    ld h, b
    reti


    db $dd
    db $fd
    and c
    sbc [hl]
    ld d, d
    ret nz

    inc bc
    pop hl
    ld a, [hl-]
    rst $38
    ld l, h
    ld l, a
    adc b
    adc b
    adc b
    add a
    add l
    ld b, [hl]
    ld [hl-], a
    pop bc
    ld [c], a
    ret c

    sbc $e8
    ret nc

    rst $20
    db $d3
    jp c, $8207

    ld b, [hl]
    ld h, b
    adc l
    pop de
    rst $30
    ld h, b
    ret nc

    ret nc

    ldh a, [$e0]
    adc b
    and b
    add c
    pop hl
    adc l
    cp a
    add hl, sp
    dec [hl]
    ld [hl], e
    ld l, [hl]
    ld b, b
    ld b, [hl]
    rst $38
    ldh [$9c], a
    ld de, $7f9d
    ld h, c
    sbc $e9
    ret nc

    rst $20
    rst $10
    add [hl]
    add h
    jr c, jr_068_6b58

    or $40
    pop af
    call nc, $e1f0
    pop bc
    ret nz

    add c
    ld [c], a
    dec [hl]
    ld l, d
    xor h
    add hl, sp
    nop
    jp $c2e0


    ldh [$a3], a
    ld b, c
    sbc $e9
    ret nc

    rst $20
    rlca
    add a
    ld hl, sp+$62
    rst $30

Jump_068_6b15:
    ld h, e
    rst $30
    and c
    sub b
    sub c
    add c
    pop hl
    dec [hl]
    ld l, d
    xor l
    ld a, $01
    ld b, [hl]
    rst $00
    ret nz

    and e
    ld b, e
    sbc $ea
    ret nc

    and $07
    add a
    ld hl, sp+$62
    rst $30
    ld h, e
    ld e, h
    ccf
    ldh [rSC], a
    ldh [$ac], a
    dec [hl]
    ld l, d
    call nz, $9ea0
    add e
    ld b, c
    add b
    and e
    ld b, c
    sbc $ea
    ret nc

    and $cc
    inc hl
    cp l
    ld hl, $8708
    ld a, a
    pop bc
    add b
    rla
    ld b, d
    dec [hl]
    xor l
    ld b, b
    ldh [rLCDC], a
    ld b, l
    ld h, [hl]
    and $67

jr_068_6b58:
    ret nc

    db $eb
    ret nz

    call z, Call_068_4721
    add b
    ld c, $80
    ld a, c
    inc hl
    ld hl, sp+$21
    ld a, a
    ret nz

    add b
    ld b, h
    dec c
    inc a
    ld b, b
    pop hl
    ld b, d
    xor [hl]
    ld b, e
    ld b, d
    xor $62
    ld e, [hl]
    ld h, $d0
    ld [$c784], a
    ld h, b
    rlca
    add b
    rst $10
    ld c, $80
    ld a, l
    ld h, e
    ld hl, sp+$21
    ld b, b
    ld [c], a
    ld [hl], $3f
    dec [hl]
    dec [hl]
    ld [hl], l
    ld h, [hl]
    add hl, sp
    xor a
    add d
    call nz, $e6e0
    call nz, $edd0
    ret


    and e
    jp c, $810e

    push af
    ld h, d
    ld b, l
    add e
    sub b
    add d
    dec e
    add e
    push bc
    add c
    ld [hl], a
    ld h, h
    ld a, e
    ld b, d
    add b
    add h
    ld h, c
    ldh [$e6], a
    ret nz

    ret nc

    db $ed
    rst $00
    ld h, b
    add c
    ld b, b
    ld l, h
    call nz, $4439
    add [hl]
    ld h, b
    add l
    adc e
    scf
    ld b, [hl]
    ld a, $ac
    ld b, h

Jump_068_6bc0:
    add b
    ld c, e
    ld c, e
    ld b, d
    add b
    add e
    add h
    db $10
    push de
    ld h, d
    ret nc

    db $ed
    rst $00
    ld h, b
    add c
    ld b, e
    ld [$62f5], a
    dec de
    add d
    ret nz

    add b
    rst $18
    xor [hl]
    add d
    add e
    ld a, $ad
    inc b
    add b
    ld d, d
    ld h, c
    add c
    ld d, l
    ld b, d

Call_068_6be4:
    add c
    db $fc
    ld [bc], a
    ldh [$e2], a
    ret nc

    xor $2f
    sub b
    ld a, a
    and b
    xor a
    rst $18
    add l
    add a
    ld [hl], c
    ld [hl], d
    ld l, h
    inc bc
    ld h, b
    ld d, d
    ld e, d
    ld b, c
    adc h
    pop bc
    ld h, l
    rst $18
    ld l, e
    push bc
    ld h, e
    jr nc, jr_068_6c11

    ldh a, [$62]
    and c
    ld b, c
    add b
    rst $38
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    ld l, [hl]
    ld [hl], b
    ld [hl], d
    ld l, h

jr_068_6c11:
    ld [hl], $67
    ld b, l
    ld b, e
    xor [hl]
    add b
    ld h, [hl]
    cp $6e
    and b
    and b
    jr nc, jr_068_6c29

    ld [hl], h
    ld sp, hl
    inc h
    nop
    add c
    ld b, [hl]
    add d
    add b
    dec [hl]
    ld l, [hl]
    ld l, a

jr_068_6c29:
    cp a
    ldh [$61], a
    xor a
    add b
    ld h, c
    ret nz

    ld b, e
    inc d
    ret nz

    ret nc

    ld [$d5d8], a
    jr nc, jr_068_6c44

    ld [hl], h
    db $f4
    and e
    cp a
    ld h, d
    sub c
    ret nz

    pop hl
    dec [hl]
    ld l, [hl]
    ld [hl], h

jr_068_6c44:
    ld b, c
    ld h, b
    inc c
    ld b, b
    ld h, c
    ret nz

    ld b, e
    db $d3
    ret nc

    ret nc

    db $eb
    jr nc, jr_068_6c5d

    db $f4
    and h
    jp Jump_000_2f42


    jp Jump_000_3645


    dec sp
    ld a, [hl]
    ldh [rBCPD], a

jr_068_6c5d:
    nop
    ld b, b
    nop
    ld h, c
    ret nz

    cp a
    inc hl
    ret nc

    db $ec
    ld a, [hl-]
    add c
    jr nc, jr_068_6c73

    db $f4
    and h
    add e
    ld b, d
    call nz, Call_068_7b91
    ld b, l
    ld b, e

jr_068_6c73:
    cp l
    and b
    ld l, e
    ld l, h
    inc a
    ld b, h
    add b
    ld h, c
    inc c
    add b
    jr nz, @-$25

    ld h, b
    rst $10
    jp nc, $ead0

    di
    and c
    jr nc, jr_068_6c91

    db $f4
    and l
    di
    sbc $df
    db $fd
    ld h, b
    db $fd
    ld b, b

jr_068_6c91:
    ld b, h
    ld a, [hl-]
    dec [hl]
    ld l, [hl]
    bit 6, b
    ld [hl], c
    cp [hl]
    ld h, b
    sub c
    ld b, b
    ld h, b
    reti


    ld h, c
    jp c, $b0d3

    ret nc

    ld [$e0f0], a
    jr nc, jr_068_6cb2

    db $f4
    and l
    ldh [$e1], a
    ret nz

    pop hl
    jp $9029


    ld [bc], a

jr_068_6cb2:
    ld b, c
    ld b, b
    ld b, c
    sub c
    add d
    dec h
    call c, Call_000_0023
    ret nc

    add sp, -$28
    ldh a, [$e0]
    jr nc, @+$0d

    di
    inc h
    ld [c], a
    db $e3
    ld a, l
    ld h, b
    jp $05c4


    jp Jump_068_4102


    dec [hl]
    ld a, a
    ld bc, $2382
    xor d
    nop
    ld b, e
    nop
    ret nc

    jp hl


    ld [hl], c
    and b
    ld a, $80
    jr nc, jr_068_6ce9

    cp $a8
    call nz, $c490
    ld b, b
    ldh [rSC], a
    ret nz

    db $e3

jr_068_6ce9:
    sub b
    ld [bc], a
    ld [hl+], a
    xor d
    nop
    ld b, e
    nop
    ret nc

    ld [$227f], a
    jr nc, jr_068_6d05

    nop
    dec a
    ld b, e
    ld b, b
    db $e4
    ret nz

    pop hl
    ld b, c
    ld [bc], a
    xor d
    ld [bc], a
    ret nc

    ld a, [c]
    jr nc, @+$0a

jr_068_6d05:
    ldh a, [$e4]
    inc c
    db $fc
    ld [hl+], a
    db $fc

jr_068_6d0b:
    and e
    ld a, $46
    pop bc
    pop bc
    ld d, l
    ld a, [hl+]
    ret nc

    add sp, $30
    dec c
    nop
    ldh a, [$e4]

jr_068_6d19:
    dec a
    jr nz, @+$7d

    jr nz, jr_068_6d19

    ld h, c
    cp a
    and c
    ld a, l
    ld b, h

jr_068_6d23:
    rst $00
    ld bc, $edd0
    ldh a, [$30]
    dec c
    ldh a, [$e4]
    db $fc
    and d
    ei
    add b
    ld [hl], $35
    ld [hl], $45
    jp nz, Jump_068_413c

    ld b, [hl]
    ld a, b
    ld h, h
    ret nc

    xor $30
    dec c
    ei
    ld l, b
    ld b, [hl]
    ld b, [hl]
    cpl
    xor [hl]
    ld b, [hl]
    ld b, l
    ld b, c
    pop bc

Call_068_6d48:
    pop hl
    xor [hl]
    ld sp, hl
    jr nz, jr_068_6d0b

    nop
    and b
    add hl, sp
    ld b, e
    ret nc

    db $eb
    jr nc, @+$0f

    ldh a, [$e5]
    ret nz

    ld [c], a
    xor a
    add l
    ld [c], a
    ld b, [hl]
    inc bc
    xor [hl]
    xor a
    cp a
    ldh [$7e], a
    nop
    add hl, sp
    ld b, e
    ret nc

    db $eb
    jr nc, jr_068_6d77

    pop af
    ld h, [hl]
    inc de

Jump_068_6d6d:
    sbc a
    sbc h
    jp Jump_068_7ee3


    jr nz, jr_068_6d23

    or a
    ldh [$b8], a

jr_068_6d77:
    ld b, c
    add hl, sp
    ld b, e
    nop
    pop de
    ld l, [hl]
    jr nc, jr_068_6d88

    inc h
    add a
    ld b, c

Jump_068_6d82:
    ldh [$fe], a
    add sp, $01
    push hl
    ret nc

jr_068_6d88:
    db $ed
    jp nz, Jump_000_0c62

    jr nc, jr_068_6d96

    ldh a, [$e6]
    and b
    and c
    add hl, bc
    db $e3
    pop bc
    jp hl


jr_068_6d96:
    call c, $d0a5
    add sp, $00
    ld b, b
    ld [bc], a
    jr nc, jr_068_6dac

    db $fc
    ld hl, $e041
    add hl, bc
    ld [c], a
    jp nz, Jump_000_3ac3

    ld hl, $65e3
    nop

jr_068_6dac:
    ret nc

    rst $28
    jr nc, @+$0a

    ldh a, [$e5]
    ld [bc], a
    pop hl
    add hl, bc
    pop hl
    ld bc, $7ae3
    ld hl, $67e3
    nop
    ret nc

    jp hl


    ld [hl-], a
    ld bc, $8027
    jr nc, jr_068_6dcb

    ldh a, [$e5]
    ld [bc], a
    db $eb
    ld [bc], a
    pop bc

jr_068_6dcb:
    db $e3
    ld h, a
    ret nz

    ret nc

Call_068_6dcf:
    jp hl


    ld [hl-], a
    nop
    daa
    add c
    ld [hl+], a
    add hl, bc
    ldh a, [$e2]
    jp nz, Jump_068_45c3

    scf
    dec d
    dec a
    rst $38
    ldh [$37], a
    cp [hl]
    and b
    sbc [hl]
    rst $10
    daa
    ret nc

    ld [$0332], a
    ld e, h
    ld [hl+], a
    dec c
    ld b, d
    push bc
    add hl, sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    db $fd
    ld b, b
    add c
    sbc [hl]
    rst $10
    dec h
    db $e4
    and e
    ret nc

    and $37
    add [hl]
    ld [hl+], a
    ld a, [bc]
    ld bc, $3ec5
    ld a, a
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld a, $42
    and d
    ld h, b
    db $10
    jp z, $e5d0

    call nz, Call_000_2227
    add hl, bc
    dec a
    add d
    sbc l
    sbc h
    ret nz

    ldh [$c0], a
    ld a, e
    ld b, c
    ret nz

    ldh [$3a], a
    ld [$ebd0], sp
    jr nc, jr_068_6e39

    push af
    ld h, a
    and c
    ld b, [hl]
    scf
    add hl, sp
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    add hl, sp
    ret nz

    db $eb
    ret nc

jr_068_6e39:
    db $eb
    inc d
    jr nc, jr_068_6e49

    ldh a, [$e8]
    sbc [hl]
    ret nz

    rst $00
    and c
    ldh [$f1], a
    ld l, a
    inc hl
    jr nc, @+$0e

jr_068_6e49:
    inc c
    ldh a, [$e8]
    cp $87
    sbc h
    sbc a
    ldh [$f1], a
    ld c, l
    ld h, d
    jr nc, jr_068_6e63

    ldh a, [$e8]
    add b
    db $fd
    jp nz, Jump_068_64c3

    ldh [$f1], a
    push bc
    ld h, d
    jr nc, @+$0f

jr_068_6e63:
    ldh a, [$e8]
    ld hl, sp+$20
    sbc a
    dec b
    sbc l
    rst $38
    ldh [$9f], a
    db $e4
    inc b
    ldh [$ed], a
    push de
    ld h, d
    jr nc, jr_068_6e82

    ldh a, [$e8]
    nop
    db $ec
    inc bc
    db $10
    and h
    ldh [$f0], a
    ret nc

    ld [c], a
    rst $38
    ld [hl], a

jr_068_6e82:
    db $10
    add e
    ld hl, sp-$18
    ldh [$ed], a
    nop
    rst $28
    and c
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
    inc h
    dec bc
    ld [bc], a
    ld bc, $0c25
    ld [bc], a
    ld [bc], a
    jr z, @+$0f

    ld [bc], a
    inc bc
    ld e, $0f
    ld [bc], a
    inc b
    inc e
    db $10
    ld [bc], a
    dec b
    inc h
    ld de, $0602
    ld a, [de]
    ld [de], a
    ld [bc], a
    rlca
    ld [hl+], a
    ld [de], a
    ld [bc], a
    ld [$1320], sp
    ld [bc], a
    add hl, bc
    ld hl, $0213
    ld a, [bc]
    ld d, $14
    ld [bc], a
    dec bc
    add hl, de
    inc d
    ld [bc], a
    inc c
    jr jr_068_6efa

    ld [bc], a
    dec c
    ld e, $17
    ld [bc], a
    ld c, $1b
    add hl, de
    ld [bc], a
    rrca
    rla
    ld a, [de]
    ld [bc], a
    db $10
    ld e, $1a
    ld [bc], a
    ld de, $1b20
    ld [bc], a
    ld [de], a

jr_068_6efa:
    inc e
    ld e, $02
    inc de
    jr @+$21

    ld [bc], a
    inc d
    inc hl
    ld hl, $1502
    jr z, @+$24

    ld [bc], a
    ld d, $19
    inc h
    ld [bc], a
    rla
    dec de
    daa
    ld [bc], a
    jr jr_068_6f39

    daa
    ld [bc], a
    add hl, de
    ld a, [de]
    jr z, jr_068_6f1b

    ld a, [de]
    inc e

jr_068_6f1b:
    jr z, @+$04

    dec de
    ld e, $2e
    ld [bc], a
    inc e
    ld h, $2e
    ld [bc], a
    dec e
    dec h
    cpl
    ld [bc], a
    ld e, $27
    cpl
    ld [bc], a
    rra
    dec e
    ld [hl-], a
    ld [bc], a
    jr nz, @+$1e

    inc sp
    ld [bc], a
    ld hl, $331e
    ld [bc], a

jr_068_6f39:
    ld [hl+], a
    inc h
    inc sp
    rst $38
    rst $38
    rst $38
    ld b, a
    ld l, a
    adc a
    ld [hl], e
    xor $78
    db $10
    ld a, c
    rra
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    add sp, -$10
    rst $38
    ldh [$eb], a
    ld h, a
    ld l, [hl]
    ld l, $6e
    adc $e0
    call Call_000_0de0
    dec c
    jp nc, Jump_068_58e2

    ldh a, [rIE]
    ldh [$eb], a
    pop de
    ldh [$4e], a
    ld c, [hl]
    ret nc

    rst $20
    ld l, $f0
    rst $38
    ld a, [de]
    ldh [$ec], a
    ld l, $4e
    pop hl
    ld c, [hl]
    ld c, $f0
    rst $38
    ldh a, [$f9]
    ld c, a
    ld [c], a
    nop
    ld [$f0e0], sp
    rst $38
    ldh a, [$f7]
    ret z

    pop bc
    ldh a, [rIE]
    ldh a, [$f7]
    call $f0c0
    rst $38
    nop
    ldh a, [$fc]
    rrca
    ld [c], a
    ldh a, [rIE]
    ldh a, [$f4]
    rst $08
    call nz, $fff0
    ldh [$e8], a
    sbc $a6
    ld b, b
    rst $00
    and b
    adc $aa
    nop
    jp nz, $a8be

    ldh [$ed], a
    ret nc

    db $e4
    dec c
    ret c

    and b
    ld [hl+], a
    cp $e0
    dec c
    ld [$c9c1], sp
    and e
    ldh a, [$e3]
    ld l, l
    db $fd
    ldh [$a2], a
    pop hl
    nop
    cp c
    and c
    ldh [$f1], a
    ret nc

    push hl
    db $dd
    and b
    sub e
    and d
    add hl, de
    push bc
    ldh a, [$e5]
    add b
    and c
    dec a
    ld l, l
    cp e
    ldh [rKEY1], a
    dec l
    ld l, l
    ld l, l
    ldh [$f1], a
    ret nc

    and $20
    ld d, c
    and b
    ld a, e
    pop hl
    reti


    and b
    dec b
    and e
    ldh a, [$e4]
    ld l, l
    rst $38
    pop hl
    ld a, d
    pop hl
    rlca
    ld c, l
    dec l
    dec l
    ldh [$f1], a
    ret nc

    push hl
    add a
    pop hl
    inc a
    pop hl
    ldh a, [$ed]
    ld e, $c1
    db $e3
    dec hl
    dec c
    dec c
    dec bc
    ld a, l
    ldh [$e0], a
    ldh a, [$90]
    and $80
    adc a
    add b
    sub [hl]
    and c
    push af
    add c
    add l
    add b
    dec e
    ret nz

    ldh a, [$e4]
    add d
    ld [c], a
    ld a, [bc]
    rlca
    ld a, [bc]

jr_068_7016:
    ld a, [hl+]
    ld a, [hl+]
    inc a
    pop hl
    ldh [$f0], a
    ret nc

    jp hl


    sub h
    jp $c17e


jr_068_7022:
    inc d
    ldh a, [$e8]
    cp l
    pop bc
    ld a, [bc]
    cp a
    ldh [rWX], a
    or e
    pop bc
    ldh [$f0], a
    ret nc

    db $e3
    nop
    jr jr_068_7016

    ei
    db $e4
    call nc, $f081
    rst $20
    ld h, [hl]
    ret nz

    db $fd
    push hl
    cp h
    ret nz

    ldh a, [$c1]
    ldh [$e8], a
    ld h, c
    ret nc

    db $ed
    adc $e2
    pop de
    pop bc
    sub l
    add c
    ld c, [hl]
    ld c, $4e
    inc a
    ldh a, [$e6]
    ret nz

    ld [c], a
    dec bc
    dec hl
    dec bc
    dec hl
    db $fc
    ret nz

    ld a, e
    pop bc
    ld l, b
    jr nc, jr_068_7022

    and h
    ld h, d

Call_068_7062:
    ret nc

    ld [$c00e], a
    rst $20
    ld l, [hl]
    ld l, [hl]
    cp a
    ldh [$ac], a
    ldh a, [$e6]
    cp $a1
    dec c
    ld c, e
    cp a
    ldh [rOCPD], a
    db $dd
    and c
    dec l
    sbc b
    ldh a, [$a1]
    call c, $d0a4
    ld a, [c]
    ld l, $6e
    ld d, [hl]
    add l
    ld [hl], b
    db $e3
    dec c
    ei
    ld l, l
    dec bc
    and l
    and b
    ld l, e
    ld c, e
    ld c, e
    ld l, e
    ld c, e
    ld [hl+], a
    ld a, l
    ret nz

    dec bc
    ret nz

    db $e3
    push af
    ld h, e
    ret nc

    db $ed
    dec c
    dec bc
    pop hl
    ld d, $87
    ld hl, sp-$10
    ld [c], a
    pop bc
    ldh [$c0], a
    pop hl
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld l, d
    ld [bc], a
    or a
    ldh [$0b], a
    cp c
    and c
    ret nz

    pop hl
    ld e, h
    jp nz, $ecd0

    dec a
    ld [c], a
    ldh a, [$ec]
    nop
    ld [$c0c0], sp
    ld [c], a
    ccf
    jp $a2fb


    ld d, l
    and d
    ld e, l
    and $90
    add sp, -$5e
    jp nz, $f050

    db $ec
    call z, Call_068_47e2
    pop hl
    cp a
    and c
    dec l
    db $f4
    pop hl
    dec l
    add hl, sp
    and b
    inc b
    ld e, h
    and e
    ret nc

    db $eb
    ld l, l
    ret nz

    db $ec
    ldh a, [$e2]
    add [hl]
    and c
    ccf
    ld [c], a
    ld a, e
    jp nz, Jump_000_0d0f

    dec l
    dec bc
    dec l
    rst $30
    add c
    ld e, d
    add h
    ret nz

    db $ed
    inc b
    push bc
    inc c
    or b
    push hl

jr_068_70fb:
    rst $00
    add b
    dec c
    dec hl
    add a
    and b
    ld b, a
    pop hl
    add hl, sp
    pop hl
    add c
    ldh [rSB], a
    dec hl
    ld [hl], a
    and b
    ld a, d
    and b
    push de
    jp $ead0


    ret z

    and e
    ret


    and b
    ld d, h
    ld b, c
    and b
    db $f4
    and e
    add l
    and c
    add a
    and b
    add $c0
    jp nz, $2da4

    pop bc
    ldh [$0a], a
    rra
    ld a, [hl+]
    ld c, d
    dec l
    ld l, l
    dec l
    ret nc

    ldh a, [rTAC]
    pop bc
    rst $00
    and b
    add h
    ld c, $80
    ldh [$e0], a
    dec l
    jr jr_068_70fb

    ld b, [hl]
    and b
    rst $08
    pop hl
    cp a
    pop hl
    dec bc
    di
    dec bc
    dec bc
    or $e3
    scf
    and b
    ld c, d
    ld c, l
    dec l
    ld c, $20
    ldh [$e0], a
    ret nc

    db $ed
    rlca
    call nz, $a27d
    add [hl]
    jp Jump_068_424d


    ldh [rIE], a
    pop af
    add c
    dec bc
    and b
    ldh [rNR31], a
    and b
    ret nc

    db $ec
    dec sp
    and e
    inc a
    add b
    or l
    ldh [$2e], a
    ld hl, $024e
    pop hl

jr_068_716f:
    ld b, d
    db $e3
    add a
    add b
    ld a, e
    db $e3
    ld a, [hl+]
    db $fc
    and b
    ld sp, $01e2
    ld c, e
    ld d, a
    push bc
    ret nc

    ld [$e4c0], a
    ld b, h
    pop hl
    call nz, Call_068_5a00
    pop bc
    add c
    db $e3
    ld h, $07
    add b
    ld c, d
    ld c, d
    add b
    add c
    cp $60
    ld l, e
    pop af
    jp nz, Jump_068_612c

    inc d
    sbc e
    pop hl
    ret nc

    ld [$bb2d], a
    add [hl]
    ld c, $f5
    ldh [$f3], a
    and b
    ld b, c
    push hl
    jr z, jr_068_716f

    ld h, b
    ld c, d
    db $e3
    pop bc
    and d
    ld c, d
    cp b
    ldh [$6d], a
    jp hl


    ld b, c
    ret nc

    xor $60
    add d
    jp $a0fa


    or l
    pop hl
    or e
    and b
    add b
    db $e4
    ld c, d
    dec bc
    ld a, [$80c4]

jr_068_71c6:
    rst $30
    ldh [$f6], a
    add b
    ld b, d
    pop hl
    cp h
    add d
    ret nc

    db $ed
    jr nc, jr_068_71de

    ld [hl], e
    ld b, c
    ld c, l
    ld bc, $002d
    ld [c], a
    adc c
    push bc
    rst $30
    add c
    nop

jr_068_71de:
    ret nz

    ld [hl], c
    ld b, b
    ld [hl-], a
    ld c, b
    call $c0e6
    jr nc, jr_068_71f2

    db $fc
    dec h
    cp a
    ld [c], a
    ld b, a
    push bc
    or a
    call nz, Call_068_62c2

jr_068_71f2:
    ld l, $0e
    jr nc, jr_068_71c6

    ld [$a12f], a
    jr nc, @+$0a

    inc l
    ld b, [hl]
    dec c
    ld l, e
    add $c1
    cp a
    and $c0
    cp d
    jp nz, Jump_068_6280

    sbc h
    ld h, b
    ret nc

    add sp, $30
    dec c
    db $fc
    ld h, $0d
    ld c, l
    ret nz

    ret nz

    db $e4
    dec sp
    and b
    ld b, h
    rst $00
    ret nc

    xor $30
    dec c
    db $fc
    ld h, $4d
    dec l
    db $fc
    ld c, [hl]
    ret nz

    rst $38
    add b
    ld a, [hl+]
    ld c, e
    ld c, e
    ld c, e
    dec bc
    dec bc
    ld hl, $392b
    ret nz

    add e
    pop bc
    jr nc, jr_068_7240

    ldh a, [$ed]
    ld c, $c0
    and $30
    ld hl, $8512
    ld h, c
    dec hl
    ld b, c

jr_068_7240:
    and b
    pop bc
    ldh [$0b], a
    cp d
    ldh [$3e], a
    ld b, b
    inc de
    ld b, d
    nop
    ret nc

    ld [$eb80], a
    db $fc
    ld h, $be
    jp nz, Jump_068_403d

    jp $ff40


    db $e3
    di
    nop

jr_068_725b:
    jr nz, jr_068_725b

    ld hl, $4143
    jr nc, jr_068_726e

    ret nz

    db $ec
    ld a, d
    ld b, $6d
    cp a
    db $e3
    rlca
    ld h, b
    rlca
    dec bc
    dec l

jr_068_726e:
    dec bc
    ld a, e
    jr nz, @+$45

    jp $c15e


    ret nz

    db $eb
    jr nc, jr_068_7287

    nop
    db $fc
    and d
    sbc l
    ld b, e
    dec a
    ld h, c
    ccf
    db $e3
    add e
    ld h, e
    inc sp
    inc bc
    sub b

jr_068_7287:
    db $ed
    jr nc, jr_068_7297

    ld [$e078], sp
    ld e, l
    ld b, c
    ld a, $e2
    ld l, e
    ld b, b
    db $e3
    ld a, a
    jr nz, jr_068_729a

jr_068_7297:
    ld h, c
    ld e, h
    push hl

jr_068_729a:
    ret nz

    ret nc

jr_068_729c:
    db $eb
    jr nc, jr_068_72ac

    ldh a, [$e5]
    add c
    ld hl, $4042
    ld a, a
    ret nz

    ld l, e
    ld c, e
    nop
    ld a, b
    nop

jr_068_72ac:
    inc b
    ld b, l
    ret nc

    xor $30
    ld c, $f0
    db $e4
    cp $c2
    dec a
    dec h
    ld b, h
    ld b, e
    jr nz, jr_068_729c

    ld [$a6d4], a
    jr nc, jr_068_72cd

jr_068_72c1:
    ldh a, [$e5]
    nop
    add hl, hl
    dec l
    ld hl, $e022
    db $eb
    nop
    jr nc, jr_068_72e2

jr_068_72cd:
    ldh a, [$e5]
    rra
    ld h, b
    ld a, a
    and $2c
    ld h, c
    ret nc

    push af
    jr nc, @+$14

    jp c, $0003

    ld a, $e4
    dec b
    jr nz, jr_068_72c1

    pop af

jr_068_72e2:
    ret nc

    jp hl


    jr nc, @+$0a

Jump_068_72e6:
    ldh a, [$e6]
    ld d, b
    ld bc, $c1fd
    nop
    ld [hl], $03
    ldh [$ef], a
    ret nc

    db $e4
    jr nc, jr_068_7302

    ldh a, [$e9]
    cp d
    and b
    ld h, h
    ld [hl+], a
    ldh [$f5], a
    nop
    ld b, l
    ld h, [hl]
    jr nc, jr_068_730a

jr_068_7302:
    ldh a, [$e5]
    db $f4
    ld h, h
    and e
    db $e3
    ldh [$f0], a

jr_068_730a:
    ret nc

    push hl
    ld b, b
    dec b
    nop
    jr nc, jr_068_7320

    db $f4
    ld h, d
    ret nz

    jp hl


    ldh [$ea], a
    ret nc

    rst $28
    or b
    ld b, $c0
    db $e3
    jp hl


    ld h, e
    nop

jr_068_7320:
    db $ec
    dec h
    ldh [$ef], a
    ret nc

    rst $20
    jr nc, jr_068_7335

    ldh a, [$e4]
    ld [hl], h
    add d
    db $ec
    ld hl, $f4e0
    nop
    ld b, b
    ld b, $30
    dec c

jr_068_7335:
    ldh a, [$e4]
    ret nz

    db $e4
    adc l
    db $e4
    ret nc

    ld hl, sp+$30
    dec bc
    ldh a, [$e4]
    nop
    ldh a, [$a4]
    ld c, b
    and c
    ldh [$f2], a
    ld d, b
    ld [$f2f0], sp
    db $f4
    ld h, h
    ret nz

    rst $28
    ret nc

    rst $28
    nop
    jr nc, jr_068_735f

    rst $38
    xor e
    db $e4
    xor d
    ret nc

    ld a, [c]
    jr nc, jr_068_736c

    ldh a, [$e4]

jr_068_735f:
    xor b
    xor d
    ldh [$f0], a
    nop
    ret nc

    and $30
    inc c
    ldh a, [rIE]
    ldh [$eb], a

jr_068_736c:
    jr nc, @+$10

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, @+$15

    nop
    ldh a, [rIE]
    ldh [$eb], a
    jr nc, @+$07

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_068_738f

    ldh a, [rIE]
    ldh [$eb], a
    nop
    jr nc, jr_068_7394

    ldh a, [rIE]
    ldh [$eb], a
    nop
    nop
    nop

jr_068_738f:
    rra
    ret c

    push de
    push de
    ret c

jr_068_7394:
    and b
    rst $38
    add sp, -$10
    rst $38
    ldh [$eb], a
    ld l, a
    jp nc, $d4d6

    sub $cd
    ld [c], a
    sbc $df
    jp nc, $fce2

    ldh a, [rIE]
    ldh [$eb], a
    sub $d2
    ret nc

    jp nc, $d6d4

    rst $18
    db $d3
    and b
    and b
    ldh [$e1], a
    adc c
    ldh [$d3], a
    ret nc

    db $ec
    ldh a, [rIE]
    ldh [$eb], a
    rst $10
    call nc, $e0cf
    rst $10
    jp nc, $e7d8

    and b
    ld [c], a
    db $e3
    ldh a, [rIE]
    ldh a, [$f0]
    db $dd
    reti


    rst $10
    rst $28
    call nc, $ddd7
    ret nc

    adc a
    ldh [$a0], a
    db $eb
    and b
    and a
    and b
    rst $10
    jp nc, $fff0

    ldh [$eb], a
    ret nc

    cp [hl]
    ldh [$dd], a
    db $fd
    pop de
    ret nc

    pop hl
    db $ec
    db $ed
    and b
    and b
    jp c, $a4d3

    ldh a, [rIE]
    ldh [$eb], a
    call nc, $e050
    ld c, $e0
    rst $10
    adc h
    jp $e9dc


    rst $10
    ldh a, [rIE]
    ldh [$eb], a
    reti


    ld d, b
    ldh [$d4], a
    rst $10
    reti


    ld h, l
    jp c, $c44c

    jp c, $fff0

    ldh [$eb], a
    db $db
    db $db
    call $17e0
    jp c, $dcdb

    inc c
    call nz, $f0dc
    rst $38
    ldh [$eb], a
    db $dd
    ld [c], a
    ld [bc], a
    jp nc, $d8e1

    ret z

    and l
    ldh a, [$e4]
    nop
    jp nz, $e8f0

    ldh [$ed], a
    ret nc

    and $ce
    sub d
    and c
    db $e4
    push hl
    ret c

    ld [$86c0], sp
    and a
    db $e4
    push hl
    ld h, d
    nop
    jp nz, $e0ea

    rst $30
    ret nc

    and $88
    ld [c], a
    and $e7
    db $76
    ret nz

    db $e3
    pop de
    ret nc

    add hl, bc
    ret nz

    ldh a, [$e5]
    nop
    jp $a29f


    sbc l
    pop de
    sbc a
    ld [hl-], a
    and c
    ldh [$ef], a
    ret nc

    and $d3
    inc d
    pop bc
    add sp, -$17
    pop af
    jp c, $a3c7

    ldh a, [$e6]
    db $fc
    add d
    sbc a
    sbc h
    xor [hl]
    xor [hl]
    add e
    sbc h
    and d
    cp [hl]
    ldh [$e0], a
    rst $28
    ret nc

    and $d1

jr_068_747f:
    and b
    ld d, [hl]
    jp nz, $f0da

    rst $00
    and c
    adc c
    ret nz

    ldh a, [$e4]
    pop bc
    db $e3
    ld b, l
    xor a
    xor a
    ld b, [hl]
    inc hl
    xor [hl]
    sbc h
    ld a, l
    pop hl
    ldh [$ed], a
    ret nc

    and $da
    ld d, h
    ret nz

    jr jr_068_747f

    push bc
    call c, $c087
    jp c, $c089

    ldh a, [$e5]
    add d
    ld [c], a
    ld b, a
    ld c, h
    ld b, a
    ld c, c
    ld c, b
    xor a
    cp a
    db $e4
    ldh [$ec], a
    ret nc

    push hl
    call c, $c854
    ld hl, sp+$4a
    pop bc
    ldh a, [$e6]
    ld b, e
    ldh [$af], a
    ld d, e
    ld e, c
    ld e, c
    ld d, e
    adc a
    ld b, l
    xor a
    xor [hl]
    sbc [hl]
    ldh [$f1], a
    add $e8
    inc d
    sub d
    sbc [hl]
    rst $38
    xor [hl]
    xor a
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    ld a, e
    ld a, h
    inc bc
    ld a, l
    xor a
    ret nz

    db $e3
    ei
    xor $d4
    ld h, c
    jp nc, $1462

    add c
    rst $00
    ld h, b
    ld hl, sp+$05
    add b
    inc a
    jp $8204


    and c
    xor a
    ld a, c
    ld a, [hl]
    inc l
    ccf
    ld a, [hl+]
    ld b, e
    dec l
    ld a, [hl+]
    ld a, a
    ld a, l
    cp $c1
    call c, $b0e3
    and h
    ld h, e
    ret nc

    add sp, -$6a
    add d
    inc d
    add c
    db $d3
    sub $46
    add c
    sub $fe
    ldh a, [$e6]
    sbc a
    sbc h
    ld a, c
    ld a, [hl]
    xor [hl]
    ld a, [hl+]
    jr nz, jr_068_7527

    cpl
    jr nz, jr_068_7545

    xor [hl]
    cp a
    ld [c], a
    ldh a, [$60]
    call c, $d0a6
    db $ed
    ld [c], a
    inc d
    add b

jr_068_7527:
    ret c

    dec bc
    add b
    ret z

    add c
    ldh a, [$e5]
    sbc a
    sbc h
    ld b, [hl]
    rst $38
    add b
    xor [hl]
    xor a
    ld b, l
    cp l
    inc l
    ld a, [hl+]
    ld b, l
    rra
    xor a
    ld b, [hl]
    add c
    ld b, [hl]
    and c
    ldh a, [$61]
    call c, $d0a6

jr_068_7545:
    add sp, $30
    dec c
    pop bc
    rla
    add b
    or $61
    rlca
    add b
    reti


    db $dd
    ldh a, [$e4]
    pop bc
    ldh [rIE], a
    ld b, [hl]
    add b
    xor a
    xor [hl]
    ld b, a
    ld c, c
    ld c, [hl]
    ld c, c
    ccf
    ld d, d
    ld b, l
    xor [hl]
    add c
    ld b, [hl]
    or [hl]
    cp c
    and c
    call c, $a6a5
    ret nc

    jp hl


    db $d3
    jp c, $8217

    ld d, [hl]
    ld h, b
    pop de
    rlca
    add b
    ret nc

    db $fd
    ret nc

    ldh a, [$e4]
    sbc [hl]
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    add d
    add e
    cp $80
    ret nz

    ld d, h
    ld d, h
    ld d, e
    xor [hl]
    xor a
    add c
    ld b, [hl]
    ld de, $bf90
    pop hl
    call c, $d0a4
    ld [$96d7], a
    add h
    ld c, b
    ld h, c
    ld b, $60
    db $fd
    call nc, $e4f0
    sbc [hl]
    xor a
    xor [hl]
    ld b, [hl]
    add l
    adc e
    rst $38
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    xor [hl]
    xor [hl]
    ld b, [hl]
    xor a
    add e
    rrca
    add h
    ld b, [hl]
    sub b
    sub b
    inc a
    pop bc
    call c, $d0a5
    add sp, $17
    add a
    ret c

    ld [$0782], sp
    add h
    add [hl]
    and c
    ld b, e
    ld b, l
    ld a, a
    ldh [$ae], a
    xor a
    ld e, $b7
    ldh [$8a], a
    add l
    ld b, [hl]
    sub c
    ld a, a
    ld [c], a
    jp nc, $d0a8

    push hl
    ld hl, sp+$17
    add a
    ld [$0782], sp
    add h
    and c
    ld b, l
    ld b, a
    ld c, h
    ld c, h
    cp a
    ld b, a
    add l
    add [hl]
    add e
    xor a
    ld b, [hl]
    add c
    ld [c], a
    ld b, l
    rlca
    ld c, b
    ld c, [hl]
    ld c, b
    add hl, sp
    and d
    push de
    pop bc
    ret nc

    ld [$23dc], a
    call $fe21
    ld [$9f88], sp
    sbc h
    ld b, a
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    rst $28
    ld d, d
    add l
    add a
    adc b
    rst $38
    ldh [$87], a
    add l
    ld b, l
    ld c, $f1
    ldh [$60], a
    ld d, l
    and c
    db $ec
    ld b, e
    ret nc

    db $ec
    call c, Call_068_4721
    add b
    ld a, b
    ld c, $80
    adc c
    inc hl
    ld [$9f40], sp
    sbc h
    ld b, h
    ld c, l
    pop bc
    ldh [$fe], a
    cp a
    ldh [rSCX], a
    ld b, e
    ld b, e
    ld c, b
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    dec e
    ld c, c
    or d
    pop hl
    ld d, [hl]
    sbc h
    sbc a
    ldh a, [$62]
    ret nc

    db $ec
    rst $00
    ld h, b
    and d
    rlca
    add b
    rst $10
    ld c, $80
    ld a, l
    ld h, e
    ld [$9e40], sp
    sub b
    pop hl
    ld h, c
    ld a, a
    ld h, c
    ld d, a
    ld h, c
    ld h, c
    ld c, h
    ld c, h
    ld c, h
    ld [hl], a
    pop hl
    ld b, [hl]
    or e
    ld [c], a
    ld e, b
    ld b, h
    ld sp, hl
    add d
    ret nc

    db $ed
    ret


    and e
    jp c, $810e

    add sp, -$0b
    ld h, d
    ld b, d
    push hl
    ld c, b
    ret nz

    ld d, d
    ld a, e
    ld [c], a
    ld d, h
    ld d, e
    ld d, e
    dec c
    ld d, h
    ld [hl], d
    pop hl
    ld d, [hl]
    ld b, l
    cp c
    add d
    ret nc

    db $ed
    rst $00
    ld h, b
    sub c
    ld b, b
    call nc, Call_068_42d0
    push af
    ld h, h
    sbc [hl]
    ld b, d
    pop hl
    ld d, [hl]
    ld c, b
    ret nz

    ld d, c
    ld e, [hl]
    ld [hl], h
    ei
    pop bc
    inc a
    ret nz

    ld b, l
    or [hl]
    pop hl
    ld d, l
    sbc h
    sbc a
    db $ec
    ld bc, $d048
    db $ed
    rst $00
    ld h, b
    sub c
    ld b, e
    ld [$62f5], a
    ret nz

    push hl
    ld e, d
    rst $38
    and b
    db $ed
    ld c, d
    cp e
    ret nz

    ld e, b
    ld b, h
    inc a
    ret nz

    ld b, [hl]
    xor [hl]
    ld c, e
    and e
    ld h, c
    ld d, d
    db $fc
    add e
    ret nc

    rst $28
    cpl
    adc [hl]
    and c
    add b
    ld [c], a
    ld b, l
    or a
    xor a
    ld b, l
    ld c, e
    cp e
    pop bc
    ld d, l
    ld b, [hl]
    ld a, l
    ld h, b
    xor a
    ld bc, $424f
    ld [c], a
    db $ec
    ld [bc], a
    rst $08
    ld l, e
    jr nc, @+$0f

    ld a, [bc]
    ld h, d
    rlca
    pop hl
    ld b, $a0
    db $76
    push bc
    jp nz, Jump_068_4556

    pop bc
    ldh [rLYC], a
    ld c, e
    ld e, d
    ld a, [hl-]
    ld h, d
    ld b, $dc
    ld l, l
    and b
    and b
    jr nc, jr_068_76f7

    db $fc
    inc h
    cp a
    db $e3
    adc b
    push bc
    ld a, $60
    cpl
    ld c, b

jr_068_76f7:
    ld c, c

jr_068_76f8:
    ld h, b
    ld d, l
    add e
    jp $d0d5


    ld [$e082], a
    inc h
    jr nc, jr_068_770d

    db $fc
    ld h, $9e
    ld b, l
    db $e3
    ld b, [hl]
    call nz, Call_000_3c60

jr_068_770d:
    ret nz

    ld [bc], a
    pop hl
    ld [hl], b
    jp z, $d082

    jp hl


    jr nc, jr_068_7724

    db $fc
    ld h, $9e
    sub c
    ld c, d
    ld a, [bc]
    jp Jump_068_57df


    ld d, a
    ld d, h
    ld e, c
    ld e, c

jr_068_7724:
    ld b, d
    ret nz

    ld d, [hl]
    ld b, l
    ldh [$83], a
    and b
    ret nc

    xor $3a
    add d
    jr nc, jr_068_7739

    db $fc
    ld h, $9f
    or [hl]
    ld b, l
    ei
    ld d, e
    ld d, h

jr_068_7739:
    call nz, Call_068_53e0
    ld b, e
    ld b, e
    ld b, l
    ld b, [hl]
    rst $08
    ld b, [hl]
    ld b, h
    ld c, e
    ld d, a
    ld b, h
    ret nz

    reti


    ld h, d
    rst $10
    jp nc, $d0f0

    jp hl


    di
    and d
    jr nc, jr_068_775a

    db $fc
    ld h, $a0
    and c
    sub b
    jp Jump_068_452d


jr_068_775a:
    call nz, Call_000_37e0
    dec a
    rst $38
    ldh [$37], a
    or $e1
    ld a, [hl]
    ld b, b
    add [hl]
    add hl, bc
    add c
    jp c, $d0d3

    jp hl


    ldh a, [$e1]
    jr nc, jr_068_777a

    jr nz, jr_068_76f8

    sbc a
    rst $38
    or [hl]
    call nz, $91c3
    ld b, [hl]
    add hl, sp

jr_068_777a:
    and h
    ld h, h
    ld e, $ff
    ldh [$a5], a
    add hl, sp
    xor [hl]
    sub c
    ld [bc], a
    add d
    sub c
    ld bc, $0023
    ldh [$d0], a
    add sp, -$10
    ldh [$30], a
    inc c
    ld a, [c]
    dec h
    cp a
    ldh [$90], a
    sub c
    ld a, $ff
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld a, $af
    ld bc, $03c3
    add e
    add hl, bc
    add d
    ret nc

    db $eb
    ld a, $80
    jr nc, @+$0c

    pop af
    ld [hl+], a
    jr nz, jr_068_7811

    ld a, a
    sbc [hl]
    sub b
    sub b
    sub b
    ld a, $69
    dec [hl]
    rst $38
    ldh [rIF], a
    ld l, d
    ld a, $ae
    call nz, Call_000_26ff
    inc sp
    nop
    ret nc

    ld [$227f], a
    db $fc
    jr nc, @+$0e

    jr nz, jr_068_782e

    sbc a
    or [hl]
    sub b
    sub b
    add hl, sp
    ld l, e
    dec e
    ld [hl], c
    rst $38
    ldh [$6d], a
    add hl, sp
    xor a
    ld b, e
    ld h, c
    ldh [$e6], a
    ret nc

    xor $10
    jr nc, jr_068_77ed

    ldh a, [$e4]

jr_068_77e4:
    ld a, a
    pop hl
    ret nz

    push bc
    sub c
    add d
    ld b, b
    ldh [$ed], a

jr_068_77ed:
    call nc, Call_000_00a6
    jr nc, jr_068_77ff

    ldh a, [$e4]
    ld a, a
    ld [c], a
    cp $e4
    ld b, e
    ld b, c
    ldh [$ed], a
    call nc, Call_000_30a6

jr_068_77ff:
    dec c
    inc e
    ldh a, [$e4]
    inc a
    pop bc
    sub b
    sub b
    jp $e2bc


    call nz, $e0a1
    db $ed
    jr nc, jr_068_77e4

    and [hl]

jr_068_7811:
    jr nc, jr_068_7820

    ei
    ld h, h
    cp $c2
    jp $bfc4


    pop hl
    call nz, $e022
    ldh [$ed], a

jr_068_7820:
    call nc, Call_000_30a6
    dec c
    ldh a, [$e5]
    ei
    and e
    call nz, $b690
    inc bc
    sbc l
    sbc a

jr_068_782e:
    ldh [$f2], a
    ret nc

    push hl
    ld bc, $2a8d
    ld [$a1fb], sp
    ld b, $c6
    db $10
    ldh [$ef], a
    sub $e8
    jr nc, jr_068_7848

    or $6b
    sbc l
    add e
    ldh [$e0], a
    rst $30

jr_068_7848:
    call nz, Call_000_0061
    jp nz, $3062

    ld [$e8f0], sp
    xor b
    ld h, a
    ldh [$f3], a
    ret nc

    ld [c], a
    ld b, b
    ld [bc], a
    jr nc, jr_068_7868

    nop
    db $f4
    ld l, c
    db $ec
    inc h
    ldh [$ed], a
    ret nc

    ld [$0830], a
    ldh a, [$e5]

jr_068_7868:
    db $f4
    ld h, l
    db $ec
    dec h
    nop
    ldh [$ed], a
    ret nc

    push hl
    ld de, $3081
    add hl, bc
    ldh a, [$e5]
    db $f4
    ld h, l
    pop hl
    and c
    ldh [$f1], a
    ld b, $d0
    push hl
    db $d3
    jp c, Jump_000_232b

    jr nc, jr_068_788b

    ldh a, [$e5]
    db $f4
    ld h, l
    dec de

jr_068_788b:
    ret nz

    inc b
    ldh [$f2], a
    ret nc

    push hl
    rst $10
    ld a, a
    inc b
    jr nc, jr_068_789b

    ldh a, [$e5]
    ldh a, [$a5]
    db $ec

jr_068_789b:
    inc h
    nop
    ldh [$ee], a
    ret nc

    push hl
    scf
    add [hl]
    jr nc, jr_068_78a9

    rst $30
    ld h, l
    pop af
    dec h

jr_068_78a9:
    ld [c], a
    dec h
    ldh [$ed], a
    nop
    ret nc

    push hl
    sub c
    jp hl


    jr nc, jr_068_78b5

    db $ed

jr_068_78b5:
    xor h
    jp $e0a8


    db $eb
    ret nc

    push hl
    jr nc, jr_068_78cd

    nop
    dec h
    adc h
    ldh [$f6], a
    ret nc

    push hl
    jr nc, @+$0e

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_068_78da

jr_068_78cd:
    ldh a, [rIE]
    nop
    ldh [$eb], a

jr_068_78d2:
    jr nc, @+$0f

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_068_78e7

jr_068_78da:
    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_068_78ed

    jr nc, jr_068_78d2

    rst $38
    ldh [$eb], a
    rst $38
    ld a, b

jr_068_78e7:
    ldh a, [rIE]
    call c, Call_000_00a0
    nop

jr_068_78ed:
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
    rra
    dec c
    ld [bc], a
    ld bc, $0d20
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld c, $02
    inc bc
    dec e
    rrca
    ld [bc], a
    inc b
    inc hl
    rrca
    ld [bc], a
    dec b
    inc e
    db $10
    ld [bc], a
    ld b, $24
    db $10
    ld [bc], a
    rlca
    dec de
    ld de, $0802
    dec e
    inc de
    ld [bc], a
    add hl, bc
    inc hl
    inc de
    ld [bc], a
    ld a, [bc]
    inc e
    inc d
    ld [bc], a
    dec bc
    dec e
    dec d
    ld [bc], a
    inc c
    inc h
    dec d
    ld [bc], a
    dec c
    jr jr_068_795e

    ld [bc], a
    ld c, $23
    ld d, $02
    rrca
    add hl, de
    rla
    ld [bc], a
    db $10
    ld e, $17
    ld [bc], a
    ld de, $1720
    ld [bc], a
    ld [de], a
    ld hl, $0217
    inc de

jr_068_795e:
    rra
    jr jr_068_7963

    inc d
    ld [hl+], a

jr_068_7963:
    jr jr_068_7967

    dec d
    dec de

jr_068_7967:
    dec e
    ld [bc], a
    ld d, $19
    ld e, $02
    rla
    ld [hl+], a
    ld e, $02
    jr @+$26

    ld e, $02
    add hl, de
    ld a, [de]
    rra
    ld [bc], a
    ld a, [de]
    inc hl
    rra
    ld [bc], a
    dec de
    ld h, $1f
    ld [bc], a
    inc e
    dec h
    jr nz, jr_068_7987

    dec e
    inc h

jr_068_7987:
    ld hl, $1e02
    jr jr_068_79b2

    ld [bc], a
    rra
    add hl, de
    daa
    ld [bc], a
    jr nz, jr_068_79b7

    daa
    ld [bc], a
    ld hl, $2825
    ld [bc], a
    ld [hl+], a
    inc h
    add hl, hl
    ld [bc], a
    inc hl
    ld e, $2d
    ld [bc], a
    inc h
    dec e
    ld l, $02
    dec h
    rra
    ld l, $02
    ld h, $1e
    cpl
    rst $38
    rst $38
    rst $38
    or a
    ld a, c
    rst $20

jr_068_79b2:
    ld a, c
    or c
    ld a, e
    ld b, a
    ld a, l

jr_068_79b7:
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
    db $e4
    ld c, h
    inc l
    db $fc
    ld a, [c]
    ldh [$fd], a
    ld [$4c4c], a
    ld l, h
    ld c, h
    inc c
    inc c
    ld c, $e9
    ldh [$2c], a
    inc l
    ld c, h
    di
    ldh [$f4], a
    ldh [$fe], a
    rst $28
    pop bc
    and $00
    cp a
    pop af
    call nz, $c0e1
    db $e3
    push bc
    pop af
    pop bc
    db $ec
    cp a
    ld a, [c]
    ret nz

    db $e4
    pop bc
    rst $38
    ld a, $3d
    db $e3
    ld l, h
    inc l
    ld l, h
    inc l
    inc c
    ld e, b
    db $ec
    dec a
    ldh [$38], a
    ld b, [hl]
    ld a, [c]
    ld [de], a
    pop hl
    inc b
    db $e4
    ld l, e
    ld c, e
    ld c, e
    ld a, [$98c3]
    push af
    inc e
    ld l, d
    ld a, [c]
    ret nz

    and $6b
    dec bc
    ld c, e
    rst $38
    ldh [$b8], a
    push bc
    ret nz

    call $0b01
    sbc d
    ldh [$ba], a
    ret nz

    db $fc
    pop hl
    add b
    di
    pop bc
    db $e3
    db $fc
    db $e4
    ld a, h
    db $eb
    ldh a, [$6d]
    pop bc
    ld l, b
    db $e3

jr_068_7a58:
    ret nz

    rst $30
    add d
    db $e4
    ld l, e
    dec hl
    dec hl
    dec hl
    nop
    ld a, b
    db $e3
    inc e
    ldh a, [$bd]
    push de
    inc b
    jp nz, $e443

    ret nz

    ldh [$3a], a
    ld [c], a
    inc d
    ret nz

    db $10
    db $db
    call z, $c335
    db $fd
    and c
    ret nz

    push af
    ld l, e
    ret nz

    db $e3
    or l
    and d
    cp c
    xor l
    jr nc, jr_068_7af2

    pop bc
    jp Jump_000_3ca0


    jp nc, $e480

    ld l, e
    ld l, e
    cp a
    ldh [$c0], a
    push af
    ret z

    ld b, d
    ret nc

    ld d, [hl]
    and [hl]
    ld b, h
    and c
    dec hl
    pop bc
    pop hl
    cp [hl]
    ldh [$2b], a
    dec hl
    ld [hl], b
    ld a, d
    pop hl
    ret nz

    ldh a, [$c7]
    pop af
    ret nz

    jp hl


    dec hl
    dec bc
    dec hl
    ret nz

    ld [c], a
    ld h, b
    db $fd
    and h
    ret nz

    ld sp, hl
    ret nz

    or h
    rst $00
    pop bc
    ei
    jp Jump_000_0c0b


    ld a, a
    and b
    jr nc, jr_068_7a58

    xor [hl]
    ld bc, $80d5
    and l
    cp h
    add a
    inc c
    ld l, h
    ret nz

    db $f4
    ld b, c
    ld a, [c]
    add h
    ret nz

    xor $c1
    ldh [$6c], a
    ld b, b
    adc $41
    rst $00
    cp b
    sub b
    dec bc
    add d
    inc l
    nop
    sbc e
    add h
    di
    db $e4
    add b
    adc $41
    push de
    rst $08
    ld [hl], e
    ldh [$f9], a
    xor c
    sbc a
    ld e, h
    adc a
    nop
    adc b
    rst $38
    ld l, e
    rst $38
    db $e4
    push af
    sbc a

jr_068_7af2:
    or h
    ld l, e
    cp $ff
    rst $38
    or $4d
    ld a, h
    sub [hl]
    nop
    ld l, e
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    rst $10
    sbc $ff
    rst $38
    rst $38
    rst $38
    nop
    ld a, b
    rst $18
    dec de
    rst $18
    ld [hl], a
    or b
    inc [hl]
    jr nz, @+$01

    db $db
    ld [bc], a
    inc l
    inc [hl]
    inc sp
    rst $38
    rst $38
    nop
    ld bc, $25bf
    ld a, b
    and b
    rst $18
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], c
    rst $18
    nop
    rst $38
    rst $38
    ld [hl], c
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, e
    ld sp, hl
    ld c, h
    rst $38
    ld [hl], b
    inc c
    xor d
    ld [hl+], a
    nop
    cp $e5
    add $ff
    ld a, [de]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_068_7b91:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    rst $18
    nop
    nop
    ld bc, $2104
    rst $38
    db $e4
    inc b
    ld bc, $0001
    rst $38
    rst $38
    xor $ed
    pop bc
    rst $20
    cp a
    rst $38
    pop bc
    db $fc
    cp a
    rst $38
    ldh a, [$ef]
    inc e
    pop bc
    ld [$e0bf], a
    dec de
    ld bc, $bc1b
    rst $38
    jp hl


    add sp, -$7a
    db $e4
    rla
    inc l
    ld [hl], $37
    ld a, h
    db $e3
    ld a, [de]
    rst $38
    ldh [$ca], a
    rst $38
    ret nz

    db $ed
    ld l, a
    inc l
    ld [hl-], a
    ld d, a
    ld h, $be
    push hl
    ld hl, $ca21
    db $ed
    adc a
    sub b
    nop
    sub b
    sub b
    ld sp, hl
    ld [c], a
    add b
    push af
    pop bc
    ldh [$5a], a
    ld a, a
    ld e, l
    ld e, l
    ld h, $44
    ld b, l
    ld b, h
    ld b, l
    ld a, b
    pop hl
    add sp, -$40
    xor $ff
    ldh [$c0], a
    ld sp, hl
    daa
    pop bc
    ld [c], a
    jr nz, jr_068_7c70

    ld e, e
    ld a, a
    ld e, e
    ld e, c
    jr nz, @+$22

    ld h, $36
    dec a
    sub a
    db $ed
    or h
    ret nz

    db $e4
    nop
    or $42
    pop bc
    ld [c], a
    jr nz, jr_068_7c48

    ret nz

    ld [c], a
    jr nz, @+$25

    ld [hl+], a
    dec a
    ld a, [bc]
    xor $c2
    or $c0
    jp Jump_068_4343


    ldh [$c0], a
    and $13
    ld [hl+], a
    dec a
    nop
    xor $c0
    db $dd
    ld b, d
    pop bc
    ldh [$7f], a
    pop hl
    ld b, b
    pop hl
    xor b

jr_068_7c48:
    pop bc
    ldh [$c0], a
    rst $38
    ld b, b
    call z, $c029
    ld [c], a
    ld e, l
    nop
    ldh [$32], a
    pop af
    ld [hl], $c1
    ldh [$c0], a
    rst $38
    nop
    call z, Call_000_363d
    ld b, h
    ld h, $c6
    ret nz

    ld [c], a
    inc [hl]
    inc l
    ld a, e
    and d
    jp z, $c0ff

    xor [hl]
    scf
    ld b, [hl]
    rra
    ld b, a

jr_068_7c70:
    ld b, [hl]
    ld b, [hl]
    ld b, a
    inc h
    inc a
    or h
    ld bc, $80d7
    and l
    nop
    db $fd
    sbc e
    ld b, c
    rst $10
    ret nz

    xor $be
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    add c
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
    add hl, sp
    rst $38
    nop
    ret nz

    rst $38
    db $dd
    rst $38
    pop bc

Call_068_7ca2:
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

Jump_068_7ce4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_068_7d9e

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_068_7d81:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_068_7d9e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_068_7ee3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
