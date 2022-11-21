INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05e", ROMX[$4000], BANK[$5e]

    ld b, d
    ld l, e
    db $10
    ld b, b
    ld [$8944], sp

Call_05e_4007:
    ld d, b
    ld h, l
    ld e, d
    ld [de], a
    ld l, a
    ld d, c
    ld [hl], e
    add d
    ld a, b
    jr jr_05e_4052

    inc hl
    ld b, c
    rst $28
    ld b, e
    dec b
    ld b, h
    ld bc, $ff0a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05e_4030:
    rst $38

Jump_05e_4031:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05e_4051:
    rst $38

jr_05e_4052:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

Jump_05e_405c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

Jump_05e_4090:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05e_40a7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    or $f5
    ld a, [hl+]
    db $dd
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

Jump_05e_40f0:
    rst $38
    rst $38
    rst $38
    ld b, $c0
    ld hl, sp+$0b
    dec bc
    pop af
    di
    and b
    rst $38
    ret nz

    rst $38
    ret nz

Jump_05e_40ff:
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    and h
    nop
    nop
    nop
    rst $28
    ld hl, $4242
    ld b, d
    db $fc
    ld a, [c]
    add hl, hl
    sub d
    cpl
    rst $38
    ld h, $27
    jr z, jr_05e_415b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    rst $20
    sub d
    cpl
    add hl, hl
    call c, $c4f3
    ldh [rSTAT], a
    inc hl
    inc hl
    db $fd
    inc hl
    db $fc
    ld a, [c]

Jump_05e_4145:
    add hl, sp
    and d
    ccf
    ld [hl], $37
    jr c, @+$01

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    and d
    ccf
    add hl, sp
    db $fc
    call c, $f8f3
    ld sp, hl
    ld c, c
    or d

jr_05e_415b:
    ld c, a
    ld b, [hl]
    ld b, a
    ld c, b
    rst $38
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    or d
    ld c, a
    ld c, c
    db $fc
    ret nc

    rst $38
    ld a, b
    db $ed
    add hl, bc
    ld [hl], c
    rrca
    ld b, $07
    ld [$09ff], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld [hl], c
    rrca
    add hl, bc
    db $fc
    ret nc

    or $00
    or $19
    add c
    rra
    ld d, $17
    jr @+$01

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    add c
    rra
    add hl, de
    db $ec
    nop
    rst $38
    ld hl, sp-$33
    add hl, hl
    sub c
    ret nz

    add $91
    cpl
    add hl, hl
    sub h
    ld d, b
    rst $38
    ret nz

    adc $a1
    ret nz

    add $a1
    ret nz

    rst $18
    ret nz

    ret nc

    or c
    or d
    ret nz

    add $b1
    ret nz

    ret c

    nop
    sub $09
    ld [hl], b
    ret nz

    add $70
    or e
    rrca
    add hl, bc
    nop
    rst $38
    ld hl, sp-$53
    add hl, de
    add b
    ret nz

    add $80
    ld d, e
    rra
    add hl, de
    ld d, b
    rst $38
    ret nz

    adc $90
    add b
    and [hl]
    sub b
    ret nz

    rst $18
    jp z, $b080

    and b
    add b
    and [hl]
    and b
    ret nz

    ret c

    nop
    or [hl]
    ld c, c
    or b
    ld c, [hl]
    add b
    and [hl]
    or b
    ld c, a
    ld c, c
    nop
    rst $38
    add b
    xor [hl]
    ld a, [hl]
    add b
    and [hl]
    add hl, hl
    ld a, [hl]
    add b
    cp b
    ret nz

    rst $10
    adc [hl]
    add b
    and [hl]
    adc [hl]
    ret nz

    rst $18
    add b
    or b
    ld h, l
    sbc [hl]
    ld b, b
    add [hl]
    sbc [hl]
    ret nz

    ret c

    nop
    sub [hl]
    add hl, sp
    xor [hl]
    ld b, b
    add [hl]
    and a
    xor [hl]
    ccf

jr_05e_4208:
    add hl, sp
    nop
    rst $38
    ld b, b
    adc [hl]
    cp [hl]
    ld b, b
    add [hl]
    cp [hl]
    sub h
    ld b, b
    sbc a
    ld b, b
    sub b
    ld a, l
    ld b, b
    add [hl]

jr_05e_4219:
    ld a, l
    ret nz

    rst $18
    add b
    or b
    adc l
    ld d, d

jr_05e_4220:
    ld b, b
    add [hl]
    adc l
    ret nz

    ret c

    nop

Jump_05e_4226:
    ld [hl], a
    sbc l
    nop
    ld h, [hl]
    sbc l

jr_05e_422b:
    nop
    ld a, a
    ld c, d
    nop
    ld [hl], b
    xor l
    nop
    ld h, [hl]
    xor l
    ld b, b
    sbc a
    nop
    ld [hl], b
    cp l
    nop
    ld h, [hl]
    add hl, hl
    cp l
    ret nz

    rst $18
    nop
    ld [hl], b
    ld a, h
    nop
    ld h, [hl]
    ld a, h
    nop
    ld a, a
    nop
    ld [hl], b
    and l
    adc h
    nop
    ld h, [hl]
    adc h
    nop
    ld a, a
    nop
    ld [hl], b
    sbc h
    ret nz

    ld h, $9c
    sub h
    ld b, b
    sbc a
    ret nz

    jr nc, jr_05e_4208

    ret nz

    ld h, $ac
    ret nz

    rst $18
    ret nz

    jr nc, jr_05e_4220

    ld d, d
    ret nz

    ld h, $bc
    nop
    ld a, a
    nop
    ld [hl], b
    ld a, e
    ret nz

    ld h, $7b
    nop
    ld a, a
    ld c, d
    nop
    ld [hl], b
    adc e
    ret nz

    ld h, $8b
    ld b, b
    sbc a
    ret nz

    jr nc, jr_05e_4219

    add b
    ld b, $29
    sbc e
    ret nz

    rst $18

Jump_05e_4284:
    add b
    db $10
    xor e
    add b
    ld b, $ab
    nop
    ld a, a
    nop
    ld [hl], b
    and l
    cp e
    add b
    ld b, $bb
    nop
    ld a, a
    add b
    db $10
    ld a, d
    add b
    ld b, $7a
    sub h
    ld b, b
    sbc a
    ret nz

jr_05e_429f:
    jr nc, jr_05e_422b

    add b
    ld b, $8a
    ret nz

    rst $18
    add b
    db $10
    sbc d
    ld d, d
    add b
    ld b, $9a
    nop
    ld a, a
    nop

jr_05e_42b0:
    ld [hl], b
    xor d
    add b
    ld b, $aa
    nop
    ld a, a
    ld c, d
    add b
    db $10
    cp d
    add b
    ld b, $ba
    ld b, b
    sbc a
    ret nz

    jr nc, jr_05e_433c

    add b
    ld b, $29
    ld a, c
    ret nz

    rst $18
    add b
    db $10
    adc c
    add b
    ld b, $89
    nop
    ld a, a
    nop
    ld [hl], b

jr_05e_42d3:
    and l
    sbc c
    add b
    ld b, $99
    nop
    ld a, a
    add b
    db $10
    xor c
    add b
    ld b, $a9
    sub h
    ld b, b
    sbc a
    ret nz

    jr nc, jr_05e_429f

Call_05e_42e6:
    add b
    ld b, $b9
    ret nz

    rst $18
    add b
    db $10
    ld a, b
    ld d, d
    add b
    ld b, $78
    nop
    ld a, a
    nop
    ld [hl], b
    adc b
    add b
    ld b, $88
    nop
    ld a, a
    ld c, d
    add b
    db $10
    sbc b
    add b
    ld b, $98
    ld b, b
    sbc a
    ret nz

    jr nc, jr_05e_42b0

    add b
    ld b, $29
    xor b
    ret nz

    rst $18
    add b
    db $10
    cp b

Jump_05e_4311:
    add b
    ld b, $b8
    nop
    ld a, a
    nop
    ld [hl], b
    and l
    ld [hl], a
    add b
    ld b, $77
    nop
    ld a, a
    add b
    db $10
    add a
    add b
    ld b, $87
    sub h
    ld b, b
    sbc a
    ret nz

    jr nc, @-$67

    add b
    ld b, $97
    ret nz

    rst $18
    add b
    db $10
    and a
    ld d, d
    add b
    ld b, $a7
    nop
    ld a, a
    nop
    ld [hl], b
    or a

jr_05e_433c:
    add b
    ld b, $b7
    nop
    ld a, a
    ld c, d
    add b
    db $10
    db $76
    add b
    ld b, $76
    ld b, b
    sbc a
    ret nz

    jr nc, jr_05e_42d3

    add b
    ld bc, $648b
    ld h, l
    add b
    nop
    add [hl]
    ret nz

    ret nz

    pop af
    db $ec
    ldh [$e5], a
    add hl, de
    ld e, d
    add b
    rla
    sub [hl]
    add b
    ld bc, $7574
    add b
    nop
    sub [hl]
    ret nz

    ret nz

    call nc, $ecf1
    ldh [$e5], a
    add hl, hl
    nop
    ld [hl], a
    and [hl]
    add b
    ld bc, $8584
    and d
    add b
    nop
    and [hl]
    nop
    ld h, b
    pop af
    db $ec
    ldh [$e5], a
    add hl, sp
    add b
    rla
    or [hl]
    ld d, $80
    ld bc, $9594
    add b
    nop
    or [hl]
    ld b, b
    add b
    pop af
    db $ec
    ldh [$e5], a
    or l
    ld c, c
    ret nz

    scf
    ld c, $80
    ld bc, $5554
    add b
    nop
    ld c, $a8
    ld b, b
    add b
    pop af
    db $ec
    ldh [$e5], a
    add hl, bc
    add b
    rla
    ld e, $c0
    add $1e
    xor b
    ret nz

    pop bc
    pop af
    db $eb
    ldh [$e5], a
    add hl, de
    nop
    ld [hl], a
    ld l, $c0
    add $2e
    xor b
    nop
    ld h, b
    pop af
    db $ec
    ldh [$e5], a
    add hl, hl
    add b
    rla
    ld a, $c0
    add $3e
    ld d, b
    ld b, b
    add b
    pop af
    db $ec
    ldh [$e5], a
    ret nz

    ret c

    ld c, [hl]
    ret nz

    add $4e
    ret nz

    pop bc
    ld l, b
    pop af
    db $eb
    ldh [$e5], a
    ret nz

    rst $10
    dec b
    rst $38
    ld [c], a
    ld d, h
    ld d, l
    ld hl, sp-$1d
    add hl, bc
    inc hl
    pop af
    db $ec
    ldh [$e5], a
    ld e, c
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
    xor $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $10
    ld b, h
    ld c, b
    ld c, c
    rra
    ld d, b
    ld a, [hl-]
    ld d, b
    dec [hl]
    ld c, h
    rst $38
    push hl
    inc c
    rst $38
    ldh [$4c], a
    inc c
    push af
    db $e3
    di
    ldh [$e2], a
    add sp, -$20
    ld l, h
    db $fd
    ldh [$ea], a
    pop hl
    and $e1
    ld l, h
    ld l, $0e
    rst $38
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $0e
    ld l, $00
    ld a, [$fde0]
    push hl
    db $ec
    ldh [$ce], a
    db $e3
    cp a
    add sp, -$43
    ldh [$b8], a
    push hl
    xor h
    ld [c], a
    nop
    ret nz

    db $eb
    cp [hl]
    db $eb
    xor h
    ldh [$80], a
    add sp, -$03
    ld [c], a
    ld [hl], b
    and $82
    ldh [$81], a
    ld [c], a
    nop
    ld a, d
    ldh [$c0], a
    jp hl


    add b
    push hl
    ld [hl], a
    ld [c], a
    ret nz

    ld [$eb3e], a
    ld b, c
    pop hl
    ld b, a
    ld [c], a
    inc bc
    ld l, h
    ld a, [bc]
    inc hl
    pop hl
    add b
    rst $20
    ld b, e
    add sp, $2c
    pop hl
    nop
    and $53
    db $e3
    ld hl, sp-$02
    jp $e42b


    ld [bc], a
    pop hl
    ld c, h
    dec hl
    dec bc
    dec hl
    dec bc
    ld b, $f4
    ret nz

    ld c, [hl]
    ld l, $85
    push hl
    ld [hl], a
    db $eb
    sub $c2
    inc de
    db $ec
    inc sp
    ld [c], a
    db $76
    xor l
    push bc
    dec bc
    dec bc
    cp a
    ldh [$0b], a
    dec c
    dec bc
    cp a
    ldh [$80], a
    call Call_05e_77c4
    rst $20
    or e
    ret nz

    ret nz

    rst $20
    jp nc, $c1c5

    call nz, $e308
    inc c
    rst $38
    inc l
    ld c, e
    ld c, e
    ld c, e
    dec bc
    dec hl
    ld a, [bc]
    dec c
    add b
    cp a
    push hl
    ret nz

    rst $20
    ld [hl], l
    jp $e9c0


    dec a
    and $41
    pop bc
    ret nz

    call nz, $ff2c
    inc c
    inc l
    inc l
    ld c, e
    ld l, e
    dec bc
    dec hl
    dec c
    inc bc
    dec bc
    dec c
    ld a, $e0
    rst $38
    db $e4
    cp $c7
    ld b, b
    rst $20
    ld bc, $fbc2
    db $e3
    ld a, [c]
    ld [hl], e
    jp nz, Jump_05e_7f6c

    pop bc
    inc b
    jp Jump_05e_6b0a


    ld l, e
    ld l, e
    inc hl
    dec bc
    dec c
    ret nz

    db $e3
    ld c, b
    push hl
    ld a, [c]
    and h
    ld c, $40
    db $ed
    inc bc
    rst $00
    dec d
    ld l, h
    dec a
    ld [c], a
    inc l
    call nz, $0ba0
    ret nz

    jp hl


    cp d

Jump_05e_4502:
    add $c0
    push hl
    ret nc

    cp a
    rst $08
    ld [hl], h
    ld [c], a
    ld a, a
    ldh [$fd], a
    and c
    inc l
    ccf
    pop hl
    dec hl
    ld c, e
    inc bc
    ld a, [bc]
    dec hl
    ld b, b
    db $e4
    add l
    and a
    or l
    jp $e6c0


    ld de, $81c3
    jp Jump_05e_40f0


    db $e3
    add $a2
    add b
    ldh [$fc], a
    ret nz

    ld l, e
    dec hl
    dec hl
    ld a, [bc]
    ld bc, $c00b
    push bc
    ld b, d
    xor b
    ld b, b

Jump_05e_4536:
    rst $28
    ld b, b
    push bc
    rst $38
    ret nz

    db $eb
    ret z

    ret nz

    ldh [rSB], a
    dec bc

Call_05e_4541:
    ret nz

    ldh a, [$ef]
    add b
    ret nz

Jump_05e_4546:
    and a
    ret nz

    db $eb
    ld b, b
    pop hl
    rst $38
    add [hl]
    ld a, l
    ret nz

    rlca
    dec hl
    dec bc
    ld a, [bc]
    cp $a2
    ld b, b
    call $a741
    ld a, a
    and l
    push bc
    and h
    db $ec
    cp $83
    cp a
    push hl
    inc c
    ld c, e
    ld a, [hl]
    ldh [$4e], a
    ld c, [hl]
    ld c, [hl]

jr_05e_4569:
    ld [$8179], sp
    ld [hl], a
    add c
    ei
    db $e4
    ld l, $80
    db $f4
    ccf
    add [hl]
    ld [bc], a
    ld [c], a
    dec h
    add c
    rrca
    ld c, e
    ld c, e
    ld l, e
    ld c, e
    ld [hl], l
    and b
    ld a, d
    and c
    ret nz

    push hl
    add b
    ld [$0160], a
    db $ed
    adc b
    add b
    cp $a7
    ld a, $e1
    cp c
    ld [c], a
    inc l
    inc l
    add hl, sp
    and a
    nop
    ld hl, sp+$63
    jp nz, Jump_000_00cf

    and d
    add hl, sp
    add a
    cp [hl]
    ld h, [hl]
    ld sp, $39c4
    and [hl]
    ret nz

    db $eb
    jr jr_05e_4569

    db $eb
    xor d
    ld h, a
    jp hl


    add a
    dec bc

Jump_05e_45ae:
    ld a, [bc]
    or l
    add b
    cp a
    pop hl
    rst $38
    ld [$8324], a
    xor $80
    push af
    ld c, h
    cp [hl]
    ret nz

    cp e
    and b
    ld c, h
    pop af
    jp $cbd4


    ld [c], a
    pop bc
    jp hl


    inc l
    ld a, a
    adc b
    inc a
    ld l, d
    ld a, [hl]
    ret nz

    ld a, [bc]
    ld c, e
    dec c
    ld b, b
    ld [hl], b
    ld h, c
    cp $e9
    add [hl]
    db $eb
    ld a, l
    xor b
    pop bc
    db $ed
    ld a, [hl]
    pop bc
    ld l, e
    or [hl]
    ld b, c
    nop
    ld a, e
    add l
    ld [hl], e
    add e
    call nz, Call_000_00f2
    ld h, l
    cp l
    ld b, [hl]
    ld [hl], e
    add b
    ld a, a
    pop bc
    ld h, h
    ldh [$83], a
    ld l, h
    ld c, e
    cp d

jr_05e_45f6:
    and e
    ret nz

    ld h, a
    add h
    ldh a, [rSB]
    add h
    db $ed
    ld h, [hl]
    ld l, h
    add hl, de
    ld l, h
    ld d, a

Jump_05e_4603:
    and d
    xor [hl]
    add b
    ld l, h
    ld l, h

Call_05e_4608:
    ld sp, hl
    add b
    rlca
    ld h, c
    ld a, [hl-]
    ld b, l
    ret nz

    ld b, b
    db $ec
    ld [bc], a
    pop hl
    ld b, c
    add sp, $02
    ld b, l
    ld b, $40
    ld a, e
    ld h, c
    dec bc
    dec bc
    inc hl
    inc l
    ld c, h
    cp c
    add d
    or h
    ld b, l
    ld b, b
    db $ed
    inc l
    ld d, c
    ld b, d
    or h
    jr nz, jr_05e_45f6

    jp $4ccb


    add $e0
    ld l, e
    ld a, $80
    ld [hl-], a
    ld b, c
    ld c, $6e
    add b
    ld sp, hl
    ld b, l
    ccf
    ld b, d
    ld [hl], c
    call z, Call_05e_643c
    xor d
    ld b, l
    inc b
    add $44

Jump_05e_4646:
    ret nz

    ld l, e
    ld bc, $324b
    ld b, c
    pop bc
    ldh [$ba], a
    ld h, d
    ld bc, $c0a3
    ld [$a317], a
    ld c, l
    inc hl
    ld a, h
    ld b, d
    jp $c62c


    ld l, e
    ld l, e
    ld c, e
    ld l, e
    ld a, [bc]
    db $76
    ld h, c
    nop
    add d
    pop hl
    ret nz

    db $e4
    ld [hl], $23
    ld b, $c9
    ld sp, hl
    ld b, $02
    db $eb
    ld [bc], a
    and [hl]
    ld b, l
    ret nz

    nop
    ld b, e
    pop hl
    or [hl]
    ld a, [hl+]
    add e
    add sp, -$7a
    ld h, $ee
    dec hl
    jr c, jr_05e_46e5

    jr nc, jr_05e_46e5

    ld b, h
    and $80
    jp nz, $c0c6

    ld hl, $611e
    xor d
    and h
    ld de, $8723
    ld [bc], a
    ld l, [hl]
    daa
    ld l, h
    call z, $6005
    ld a, e
    jr nz, @+$0c

    ld a, [bc]
    ld b, h
    push hl
    ld b, d

Call_05e_46a0:
    ld l, b
    dec c
    dec c
    or b
    ret nz

    call $a861
    ld b, e
    nop
    ld a, [hl-]
    ld b, c
    inc l
    inc c

Jump_05e_46ae:
    ret nz

    ldh [$0a], a
    rlca
    ld c, e
    ld a, [bc]
    ld a, [bc]
    call nz, $8763
    jp Jump_000_2677


    ld b, c
    dec hl
    ld a, [bc]
    and [hl]
    ld e, [hl]
    ld [hl], d
    push hl
    ld l, h
    dec bc
    dec hl
    ld l, h
    add h
    ld h, c
    dec hl
    jp $8060


    ret nz

    db $e4
    add h
    rlca
    nop
    add e
    ld de, $4783
    push bc
    cp a
    add sp, $49
    ld bc, $372b
    dec hl
    dec c
    ld l, h
    ld a, a
    ld hl, $4b6b
    add b
    ld b, b

jr_05e_46e5:
    dec a
    ld a, [bc]
    ldh a, [$c0]
    and $c3
    ld a, [bc]
    dec b
    xor b
    adc [hl]
    jp nz, Jump_000_2b6b

    dec c
    dec hl
    inc c
    db $fc
    jr nz, jr_05e_46fd

    add c
    ld c, $6e
    ld b, h
    dec hl

jr_05e_46fd:
    nop
    dec h
    call nz, Call_05e_71aa
    ld c, h
    ld d, $87
    and b
    dec hl
    ld a, [bc]
    cp a
    ldh [$0c], a
    pop bc
    pop hl
    add c
    ld a, [bc]
    ret nz

    ld b, l
    ret nc

    adc e
    jr z, jr_05e_471b

    and [hl]
    ld b, $27
    ld b, a
    and b
    ld l, e

jr_05e_471b:
    ld b, a
    and b
    ld l, h
    inc c
    nop
    add d
    pop hl
    ld b, c
    ld b, [hl]
    adc b
    and c
    ld [hl], $25
    sub c
    add h
    ret z

    and h
    jr @-$3b

    pop bc
    and $17
    ld l, h
    dec bc
    dec bc
    call nz, Call_05e_4b01
    adc d
    add d
    ld b, $e4
    ld b, c
    ld b, h
    ret nz

    cp [hl]
    and l
    or h
    ld l, d
    jp $c1e4


    rst $20
    ld a, [bc]
    and b
    push bc
    pop bc
    dec hl
    inc c
    add b
    adc d

jr_05e_474e:
    add e
    cp a
    inc h
    ret nz

    push af
    inc c
    add l
    push bc
    jp $e182


    adc b
    pop bc
    ld a, [bc]
    nop
    jp $c080


    pop hl
    adc c
    xor d
    ccf
    and [hl]
    ld [hl-], a
    ld l, e
    adc [hl]
    ld l, c
    adc l
    ret nz

    adc d
    ret nz

    nop
    ret nz

    db $ec
    ld b, b
    and h
    add hl, sp
    ld b, $c0
    xor $fe
    ld b, [hl]
    pop bc
    db $e3
    adc e
    jr nz, @+$81

    ret nz

    db $10
    ret nz

    ldh a, [rPCM34]
    push hl
    add c
    db $f4
    ret nz

    ld [c], a
    ld a, [bc]
    ld c, h
    jr nz, jr_05e_474e

    ldh [rOBP0], a
    ld b, b
    ld bc, $0a0c
    ld h, b
    ld [$0127], sp
    ld h, [hl]
    cp [hl]
    and b
    ld e, d
    ld b, l
    dec c
    inc h
    add hl, sp
    ld b, a
    ld b, $4f
    and b
    ld l, e
    ld c, e
    call $9f60
    add h
    ld c, b
    dec l
    nop
    and l
    add hl, sp
    ld d, c
    nop
    rlca
    ld hl, $a14b
    ld sp, $43a2
    add d
    rst $38
    and b
    adc c
    ld hl, $43c5
    ld b, c
    dec b
    ld c, b
    dec a
    ld h, d
    nop
    ld d, b
    add hl, bc
    pop bc
    dec hl
    dec a
    ld [bc], a
    cp e
    jp nz, $f42b

    ldh [rP1], a
    db $fc
    add b
    rst $18
    ld h, b
    add d
    inc b
    inc a

Call_05e_47d5:
    push hl
    add hl, sp
    ld [bc], a
    rrca
    ld h, [hl]
    ret c

    ld [$c288], sp
    nop
    add c
    jp nz, $8450

    xor d
    and e
    ld a, d
    ld h, b
    ld a, l
    ldh [$c0], a
    jp hl


    ld b, b
    and d
    sbc l
    inc h
    db $e4
    rst $30
    ld b, h
    jp nz, Jump_05e_6be4

    db $d3
    ld bc, $a40c
    dec c
    ld c, [hl]
    ld l, $3d
    dec bc
    xor l

Jump_05e_47ff:
    inc hl
    inc l
    inc l
    dec bc
    ld c, [hl]
    cp e
    adc c
    nop
    ld c, h
    ld a, b
    ld [$92e1], sp
    ld h, b
    jp z, Jump_05e_4ba1

    ld c, e
    dec bc
    ld a, [bc]
    ld [de], a
    ld h, c
    and b
    jp nc, $bf83

    ldh [$84], a
    ld bc, $0141
    add c
    inc c
    ld c, [hl]
    ld [hl+], a
    ld a, [bc]
    dec c
    ld b, d
    ld h, b
    nop
    inc c
    add h
    db $e4
    adc a
    add e
    sub d
    add h
    adc d
    ld [c], a
    ld l, $f7
    jp nz, $cf6c

    ld [de], a
    dec d
    and d
    dec bc

Jump_05e_4839:
    dec bc
    reti


    jr nz, jr_05e_48a9

    inc c
    ld e, d
    nop
    nop
    ld c, h
    and b
    ld d, [hl]
    ld b, c
    sub b
    ld h, a
    cp e
    db $e3
    add hl, sp
    db $e4
    add b
    rrca
    ld e, c
    ld h, c
    adc h
    ret nz

    nop
    ld c, [hl]
    and c
    inc e
    pop hl
    ret nz

    ld [c], a
    sub l
    push bc
    ret nz

    rst $20
    add hl, sp
    db $e3
    add c
    dec bc
    ld b, b
    jr nz, jr_05e_4863

jr_05e_4863:
    ld b, l
    pop hl
    call nz, $05e3
    ldh [$d3], a
    ld h, h
    sub c
    ld h, b
    dec e
    ld h, [hl]
    dec c
    rst $00
    add hl, sp

jr_05e_4872:
    ld [c], a
    ld b, b
    xor l
    jp $89c0


    call nc, $85c0
    pop hl
    inc e
    jr nz, jr_05e_48fa

    pop hl
    dec c
    call nc, Call_000_01a0
    ld a, [bc]
    ld [hl], $e0
    db $dd
    ld b, h
    add b
    jp hl


    ld b, [hl]
    ld b, [hl]
    add hl, sp
    ld c, e
    and e
    ret nz

    ld b, l
    ld [c], a
    adc b
    ld a, [hl]
    db $e3
    ret nc

    ld b, c
    or $c1
    ld l, $59
    ld b, a
    set 5, h
    ret nz

    db $eb
    ld l, $18
    ld hl, $99c1
    add b
    ld a, [hl]
    push hl

jr_05e_48a9:
    ld c, e
    dec c
    ret nc

    ld b, b
    pop de
    ld b, b
    rrca
    and a
    add b
    adc [hl]
    ld h, l
    ld hl, sp-$19
    cp c
    adc e
    cp a
    and $9b
    ld [bc], a
    ld a, e
    ret nz

    sub [hl]
    and c
    dec bc
    nop
    jp z, $12a0

    ld h, h
    ret nz

    db $ed
    cp c
    add [hl]
    jr c, jr_05e_4872

    ld a, [hl]
    db $e4
    pop bc
    ld [c], a
    sub $a3
    rrca
    inc l
    inc c
    dec c
    dec c
    ret nz

    db $e4
    inc e
    db $e3
    ld b, [hl]
    ld l, a
    ret nz

    add sp, $00
    dec a
    db $e4
    add d
    pop hl
    ld e, a

Call_05e_48e5:
    inc hl
    adc [hl]
    ld b, c
    ret nz

    push hl
    sub d
    ld b, c
    sub e
    ld h, h
    ld [$d842], sp
    db $f4
    rst $20
    ld l, $88
    db $fc
    jp nz, Jump_05e_4b6b

    ld h, c

jr_05e_48fa:
    call nz, Call_000_2e4e
    nop
    adc [hl]
    ld b, b
    ld d, h
    add hl, bc
    inc c
    ld h, $be
    db $e4
    ld a, $08
    and e
    and a
    pop bc
    ldh [rIF], a
    and b
    ld c, $17
    ld h, d
    ld c, [hl]
    ld l, $4c
    sub d
    dec b
    adc d
    ld h, d
    inc de
    ld h, h
    db $f4
    and $30
    cp [hl]
    add a
    push af

jr_05e_4920:
    inc bc
    db $e4
    xor b
    xor b
    inc bc
    ld c, $0c
    ld b, b
    pop bc
    rst $38
    and h
    nop
    call c, Call_05e_42e6
    jr z, jr_05e_4920

    xor h
    ld [hl-], a
    rst $00
    ret nz

    and $1c
    add l
    call nc, $fe47
    push af
    nop
    cpl
    ld c, d
    ret nz

    db $ed
    adc [hl]
    ld a, [c]
    nop
    add a
    nop
    nop
    nop
    rst $38
    sub a
    sub a
    sub a
    sub l
    sub l
    sub [hl]
    sub [hl]
    sub a
    rst $38
    sub a
    sbc b
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    sub a
    rra
    sub a
    sub [hl]
    sub [hl]
    sub [hl]
    sub l
    rst $38
    pop hl
    ld hl, sp-$20
    db $eb
    ldh [rIE], a
    sbc b
    sbc b
    sbc c
    nop
    ld bc, $0100
    sbc c
    rst $38
    ld [$d69e], sp
    rst $10
    ret c

    and b
    and b
    and b
    rlca
    call nc, $d4d5
    ld a, [$fde0]
    push hl
    db $ec
    ldh [$ce], a
    pop hl
    cp a
    db $eb
    ldh [$f0], a
    pop hl
    pop bc
    rst $20
    xor c
    ldh [$c1], a
    ldh [$c0], a
    ldh [$d9], a
    jp c, Jump_000_08db

    add $e2
    cp [hl]
    jp hl


    db $ec
    ldh [$98], a
    pop bc
    and $c0
    rst $20
    ld a, a
    pop hl
    add c
    and $f7
    rrca
    rlca
    rrca
    ld h, [hl]
    ldh [$08], a
    sbc [hl]
    call c, $01dd
    sbc $c1
    ld [c], a
    add b
    db $e4
    ld [hl], a
    ld [c], a
    db $ec
    ldh [$82], a
    push hl
    ld d, l
    ld [c], a
    ld a, $e5
    db $fc
    ld b, c
    db $e4
    add c
    pop hl
    rrca
    ld [bc], a
    jp Jump_000_0403


    rrca
    ld c, $40
    ldh [$df], a
    ldh [$e1], a
    ld b, [hl]
    add sp, $35
    db $e3
    db $ec
    ldh [rLCDC], a
    add sp, -$04
    ccf
    jp hl


    ld [bc], a
    and $06
    ld b, l
    dec hl
    dec hl
    ld b, l
    ld [bc], a
    rrca
    rlca
    ld [bc], a
    sbc h

Call_05e_49e6:
    sbc a
    add l
    push hl
    rst $30
    jp $e577


    call $e0c2
    cp [hl]
    ret nz

    ccf
    db $e4
    cp l

jr_05e_49f5:
    jp $c2c1


    jp nz, Jump_000_05c3

    ld a, [hl+]
    jr nz, jr_05e_4a3d

    jr nz, @+$2c

    ld b, l
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    cp a
    ldh [$c6], a
    pop bc
    inc bc
    ld [c], a
    db $e3
    rst $30
    push bc
    inc sp
    db $e3
    ret nz

    push hl
    ld a, [hl]
    call nz, $e5c0
    add d
    call nz, $99ff
    sbc c
    ld [bc], a
    dec hl
    ld sp, $202c
    ld a, [hl+]
    dec de
    jp $bfaf


    push hl
    db $e4
    push hl
    rst $30
    call nz, $c475
    ret nz

    jp hl


    ld hl, sp+$3d
    add $80
    db $e4
    ld b, c
    pop bc
    rrca
    rlca
    inc b
    inc bc
    ld a, [hl+]
    ld a, a
    ld hl, $373d

jr_05e_4a3d:
    xor a
    ld b, [hl]
    xor [hl]
    sbc [hl]
    ld d, b
    pop bc
    inc bc
    and $e7
    rst $30
    rst $00
    inc sp
    pop bc
    dec c
    pop bc
    ld d, c
    and $40
    add sp, -$55
    ret z

    rst $38
    ld [$3ac3], sp
    dec [hl]
    dec [hl]
    add hl, sp
    xor [hl]
    xor a
    add hl, de
    sbc [hl]
    ld d, b
    pop bc
    ld c, b
    push hl
    ld [c], a
    db $e3
    nop
    call nz, $f180
    rst $38
    call nz, $2afe
    call nz, Call_05e_4608
    add hl, sp
    dec [hl]
    dec [hl]
    ld a, [hl-]
    xor a
    jr jr_05e_49f5

    ldh [$3c], a
    pop bc
    ccf
    call nz, $e5e4
    nop
    call nz, $e37f
    ld b, b
    rst $28
    db $fc
    ld a, a
    and e
    jp hl


    and c
    rrca
    ld [bc], a
    ld b, h
    inc a
    jp $193c


    ld b, h
    add b
    ldh [$3c], a
    ret z

    and $e7
    or l
    ret nz

    db $ec
    and b
    ret nz

    ldh a, [$fc]
    ld a, $a3
    ld b, b
    xor b
    ld c, $05
    ld a, [hl-]
    dec [hl]
    inc a
    jp Jump_05e_4603


    sbc [hl]
    ld b, d
    ret z

    or l
    jp $c100


    ld c, [hl]
    and c
    nop
    ld sp, hl
    add sp, -$7f
    push bc
    ld b, $3f
    ldh [$39], a
    ret nz

    db $e3
    ld b, d
    ret z

    ld a, l
    ldh [$a0], a
    and b
    ldh a, [$c0]
    add b
    nop
    di
    cp $a5
    xor b
    add c
    rrca
    ld [bc], a
    ld [hl], $35
    inc bc
    ld a, [hl-]
    jp $a2fe


    add hl, sp
    and b
    push bc
    jp nz, $85b5

    ld de, $15a5
    db $e3
    db $fc
    ld b, b
    db $ed
    ld a, a
    push hl
    ld c, $05
    inc a
    dec [hl]
    ld [hl], $45
    rrca
    sbc h
    sbc l
    sbc l
    sbc a
    add hl, sp
    and b
    push bc
    pop bc
    ld [hl], d
    add d
    ld [hl], e
    add c
    ld hl, sp-$6c
    rst $20
    add b
    rst $28
    ld a, a
    rst $20
    sbc c
    ld b, $36
    dec sp

Call_05e_4b01:
    ld [hl], $07
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld a, d
    and d
    ld c, b

Call_05e_4b09:
    pop hl
    ld [hl], d
    add c
    or l
    add d
    inc d
    add h
    ldh a, [$81]
    push hl
    ret nz

    call nz, $acfe
    ld a, $e0
    inc b
    add hl, bc
    inc b
    rlca
    ld bc, $b407
    and b
    add hl, sp
    and h
    ld a, e
    and l
    add b
    ldh [$d1], a
    pop hl
    rst $10
    rst $20
    cp l
    ld l, b
    inc a
    db $fd
    ld h, a
    cp $61
    rrca
    inc b
    inc bc
    dec bc
    db $76
    add b
    or a
    add c
    add b
    cp b
    ld h, b
    ld [hl], d
    add [hl]
    jp nz, $c1e4

    rst $20
    add b
    rst $20
    cp h
    add [hl]
    rst $38
    ld [c], a
    ld b, $bf
    ld [hl], $c3
    dec sp
    dec sp
    add hl, sp
    ld [bc], a
    cp a
    ldh [$9d], a
    add b
    rst $38
    jp hl


    add b
    pop bc
    add hl, de
    rst $20
    ret nz

    ld [c], a
    dec a
    ld l, b
    ld a, $62
    add b
    ld h, c
    nop
    add hl, sp
    ld bc, $c0be
    ld a, d
    and b
    xor [hl]

Jump_05e_4b6b:
    ld [bc], a
    rrca
    add hl, sp
    ldh [$fd], a
    add sp, -$20
    dec de
    call nz, $ecc1
    dec a
    ld l, d
    add b
    db $e3
    ret nz

    pop hl
    jp $af3b


    inc bc
    ld [bc], a
    ld c, $c0
    db $eb
    jp Jump_05e_5ce3


    db $e4
    add c
    ld [$c83f], a
    cp $41
    ld [hl], $7e
    ret nz

    jr c, jr_05e_4bca

    rst $38
    pop bc
    ret nc

    pop de
    rst $38
    jp hl


    jp nz, $f0e9

    ld [bc], a
    pop hl
    ld b, c
    and c
    inc bc

Jump_05e_4ba1:
    and b
    rst $38
    xor d
    sbc b
    sbc c
    dec c
    inc b
    ld e, [hl]
    add $c0
    inc bc
    inc b
    rlca
    ld c, $b3
    add b
    jp nc, Jump_05e_62ba

    ldh [$c0], a
    ld h, a
    jp $c1e5


    db $e4
    ld b, c
    push bc
    ret nz

    xor c
    rrca
    ld [bc], a
    xor [hl]
    cp e
    xor [hl]
    ld [bc], a
    ld b, d
    pop bc
    dec bc
    ld b, $08

jr_05e_4bca:
    ld sp, hl
    add b
    call nc, $d4c1
    add d
    add d
    scf
    ld b, d
    jp nz, $c1e7

    db $eb
    nop
    xor d
    ld [$ffae], sp
    xor a
    xor a
    scf
    scf
    jp Jump_05e_46ae


    ld b, [hl]
    inc bc
    ld b, $06
    cp c
    add d
    dec b
    and d
    ld [hl-], a
    ld h, d
    add e
    ld [$4342], a
    ld [bc], a
    db $eb
    sbc [hl]
    add d
    and d
    xor a
    ld [hl], $3b
    dec [hl]
    ld a, $80
    db $76
    ld b, b
    dec b
    ld l, l
    ret nc

    ld hl, sp+$42
    ld [c], a
    db $e3
    or [hl]
    ld [hl+], a
    db $e4
    push hl
    jp nz, $b0e9

    pop bc
    db $e4
    add c
    ld h, a
    db $eb
    ld [hl+], a
    add d
    jr nz, jr_05e_4c1a

    ld [hl], $44
    ret nz

    ld [hl], $1b

jr_05e_4c1a:
    ld b, l
    ld [bc], a
    cp h
    and b
    ret nc

    db $d3
    ld a, a
    ld b, d
    pop bc
    ld h, c
    ld [hl], h
    jr nz, @-$1b

    and $e7
    jp nz, $c3eb

    rst $08
    jp Jump_000_02a2


    ld a, [hl-]
    dec sp
    rla
    dec sp
    ld [hl], $c3
    call nz, Call_05e_46a0
    pop bc
    ldh [$3a], a
    ld h, d
    pop bc
    ld h, b
    ld h, b
    or [hl]
    inc hl
    add h
    and $07
    call nz, $b004
    ld b, h
    and a
    ret nc

    pop de
    pop bc
    ldh [rP1], a
    inc b
    and a
    nop
    ld b, e
    ld b, l
    db $eb
    jp $8408


    and h
    rlca
    and b
    ld b, [hl]
    ret nz

    call nz, Call_000_0081
    ld b, h
    db $e4
    db $76
    ld h, $bc
    ld b, c
    ld c, c
    db $e3
    add h
    and $84
    inc bc
    ld [bc], a
    and $83
    jp nz, Jump_05e_40ff

    dec sp
    xor h
    jr c, jr_05e_4cb3

    scf
    add $c7
    add b
    ld b, h
    push hl
    add h
    ld b, $bc
    ld b, c
    nop
    and e
    rlca
    db $e3
    pop bc
    add sp, -$12
    dec b
    rrca
    rst $38
    ld [bc], a
    ld [bc], a
    rrca
    dec b
    inc a
    xor l
    dec [hl]
    jp Jump_000_3a0f


    call nz, $d2c5
    dec a
    nop
    cp d
    nop
    dec a
    inc b
    ld [hl], b
    nop
    ldh [$3f], a
    ld h, c
    jp nc, $8342

    db $eb
    add h
    ld l, b
    ld b, a
    ld h, b
    ld [hl], $06
    ld b, $0e
    add d
    pop bc
    add hl, sp
    ld b, [hl]
    ld b, [hl]

jr_05e_4cb3:
    dec a
    ld bc, $02ba
    add h
    dec b
    nop
    add a
    ld hl, sp-$7d
    jp hl


    ld a, b
    ld [c], a
    dec l
    add h
    ld [$3539], sp
    xor h
    dec b
    ld c, $02
    ld h, b
    jr c, jr_05e_4d03

    ld b, l
    add b
    ld b, b
    dec a
    ld a, [bc]
    ld [hl], b
    inc b
    rrca
    and $b0
    add h
    push hl
    ret nz

    and $e8
    add c
    ret nz

    ldh [$ad], a
    ld [hl], $0c

Jump_05e_4ce1:
    add b
    jp Jump_05e_4502


    ld h, b
    ret nc

    inc b
    ld h, c
    call nz, $bf44
    and [hl]
    ld b, b
    ld h, e
    ei
    jp hl


    ld [hl], b
    ld h, l
    ld e, [hl]

jr_05e_4cf4:
    ld b, d
    inc bc
    xor [hl]
    inc a
    dec [hl]
    jp $e0bf


    dec b
    pop bc
    ldh [$80], a
    ld b, l
    pop bc
    pop bc

jr_05e_4d03:
    nop
    ld b, c
    inc b
    cp a
    and h
    ret nz

    db $ed
    ld sp, $3368
    jr nz, jr_05e_4d1c

    db $db
    dec b
    xor a
    jp z, Jump_000_3c60

    ld b, h
    ld a, [bc]
    and b
    ret nc

    db $d3
    or $d0

jr_05e_4d1c:
    and d
    and $e7
    db $fc
    nop
    call nc, $e2d4
    db $e3
    ld [hl], b
    cp a
    and l
    pop bc
    pop af
    db $f4
    inc bc
    jp nz, Jump_000_37c1

    jr c, jr_05e_4cf4

    ld b, a
    and c
    ld bc, $4a05
    add e
    adc l
    and d
    ld b, c
    ld [bc], a
    add b
    add a
    ld d, $21
    ld [bc], a
    and $c1
    add sp, $5a
    or h
    nop
    dec c
    jp z, Jump_000_3520

    dec [hl]
    push bc
    jp nz, Jump_05e_4311

    ld [hl+], a
    add b
    ld c, [hl]
    and d
    add $42
    add b
    add l
    ld b, b
    ld b, b
    rst $00
    and a
    ld [hl], l
    ld b, [hl]
    ld b, $c3
    inc b
    dec e
    inc bc
    jp z, Jump_000_3a81

    add $c7
    add hl, bc
    ld b, b
    ret nz

    pop hl
    ld b, $26
    and b
    cp h
    add $40
    ret z

    ld sp, hl
    and $78
    dec h
    ld c, l
    jr nz, @+$3d

    rst $08
    ld b, b
    dec [hl]
    rlca
    add hl, sp
    call nz, $c0c5
    db $e4
    add l
    and d
    add h
    add e
    ld a, $20
    add hl, sp
    inc b
    ld h, b
    ret nz

    db $ed
    ld c, d
    and c
    ld de, $c264
    pop hl
    ld c, e
    jr nz, jr_05e_4ddc

    ld b, [hl]
    ld b, e
    ret nz

    nop
    ld b, b
    pop hl
    ret


    add d
    add h
    add e
    add c
    ld h, h
    rst $30
    ld bc, $f0c1
    ret nc

    ld [hl+], a
    sub c
    ld b, e
    ld bc, $c936
    and b
    rst $38
    pop hl
    nop
    pop hl
    call $8422
    add e
    add c
    ld h, h
    ld a, [hl-]
    ld h, c
    ld [hl], b
    adc [hl]
    push bc
    cp e
    ld [hl+], a
    or $28
    call nz, Call_000_36c1
    ld b, e
    ld b, l
    add [hl]
    add c
    rra
    inc b
    inc bc
    ld [bc], a
    ld c, $05
    ld c, b
    inc h
    adc b
    ld h, $c0
    add c
    nop
    ccf
    ld bc, $00dc
    ld a, l
    dec h
    or a

jr_05e_4ddc:
    ld h, $13
    ld hl, $c044
    ld d, d
    ld b, b
    ld c, $21
    inc d
    ld c, e
    ld h, b
    add d
    jr nz, jr_05e_4e31

    adc c
    ld hl, $cb9f
    ld h, b
    cp c
    push bc
    ld hl, sp-$5f
    ldh [$3e], a
    nop
    rst $00
    and $fe
    db $e3
    ld b, d
    pop hl
    ld c, b
    ret nz

    dec sp
    ld [hl], $02

jr_05e_4e02:
    ld h, a
    rlca
    inc de
    inc de
    adc a
    ld b, b
    ld b, d
    ld [c], a
    ld [bc], a
    dec c
    ld [bc], a
    ld [hl+], a
    ld h, c
    dec bc
    add d
    ld [bc], a
    ld a, $80
    ld b, d
    ld b, d
    cp d
    ld h, d
    call nc, $c7d5
    ld [c], a
    ret z

    ld a, l
    inc h
    ld d, h
    ld b, e
    ld c, b
    jp Jump_000_0840


    ld [c], a
    call nc, $d023
    inc bc
    ld l, e
    inc b
    dec c
    dec h
    nop
    ld c, $82

jr_05e_4e31:
    nop
    sbc l
    sbc a
    add d
    ld h, b
    ret nz

    ld b, d
    ld b, d
    cp [hl]
    ld bc, $4100
    call nz, Call_05e_48e5
    rst $00
    jr @+$22

    dec sp
    jr c, jr_05e_4e02

    ret z

    jp nz, $a30c

    and b
    db $d3
    ret nc

    ld b, [hl]
    ld a, [hl]
    ld h, c
    dec c
    rra
    sbc c
    ld c, $02
    ld b, [hl]
    sbc h
    add [hl]
    nop
    jp nz, Jump_05e_40a7

    ld h, [hl]
    db $ec
    sbc h
    ld [bc], a
    sbc d
    ld hl, $4408
    adc l
    and c
    ld b, e
    ld b, e
    ld b, l
    inc bc
    ld b, [hl]
    jp Jump_05e_6112


    jp nc, $bf83

    ldh [$72], a
    ldh [rSCY], a
    ld b, b
    ld a, a
    ld b, b
    ld [hl], d
    add c
    dec bc
    sbc l
    add b
    inc h
    jr nz, @-$1c

    dec bc
    xor [hl]
    ld b, [hl]
    sub d
    ld h, b
    db $10
    rst $10
    jr nz, jr_05e_4ecd

    db $e3
    call nc, $5041
    ld h, h
    db $d3
    add hl, sp
    ld [c], a
    rst $30
    pop bc
    pop bc
    inc c
    ld sp, hl
    rlca
    jr nz, jr_05e_4edb

    sub d
    and b
    ld b, [hl]
    ld b, l
    ld b, c
    ld b, l
    ld b, [hl]
    dec c
    xor a
    sbc a
    ld [hl+], a
    ld b, [hl]
    ld b, [hl]
    ld c, h
    and c
    rla
    ld b, e
    sub h
    ld b, d
    ld c, l
    add h
    ldh a, [$39]
    db $e4
    ld b, b
    dec bc
    and l
    ld bc, $80d6
    ld b, [hl]
    ld b, l
    ld [hl], $a6
    ld a, [de]
    sub h
    and c
    ld b, [hl]
    sub d
    ld h, b
    ld b, [hl]
    ld b, [hl]
    ld c, h
    and c
    reti


    nop
    ld d, b
    ld h, l
    ld l, b
    bit 0, l
    add hl, sp

jr_05e_4ecd:
    ld [c], a
    add c
    dec bc
    pop de
    ld a, [bc]
    pop hl
    inc bc
    dec bc
    pop bc
    ldh [rNR22], a
    ld h, d
    and a
    ld h, [hl]

jr_05e_4edb:
    ld d, e
    and b
    jp $e13e


    adc l
    and d
    add hl, de
    jr nz, jr_05e_4eeb

    rla
    ld b, e
    call nc, $0fd4
    ld b, [hl]

jr_05e_4eeb:
    add hl, sp
    pop hl
    xor l
    jp Jump_000_26ff


    ld a, [bc]
    ldh [$dc], a
    ld d, a
    ret nz

    pop bc
    ldh [$67], a
    and e
    ld l, b
    cp a
    pop hl
    ld b, [hl]
    xor [hl]
    ld c, $dd
    nop
    jp $ae46


    reti


    ld bc, $611d
    ld d, [hl]
    ld bc, $a78b
    db $f4
    add hl, bc
    ld b, l
    ld [hl], h
    add [hl]
    and b
    add sp, -$3e
    ld b, [hl]
    ld b, d
    xor b
    xor c
    rst $10
    ld l, h
    dec [hl]
    dec [hl]
    cp a
    ld [c], a
    xor a
    ld a, $e2
    xor a
    ld b, [hl]
    ld bc, $609e
    inc hl
    sub e
    add d
    set 5, e
    ld b, e
    nop
    ld sp, hl
    daa
    ld a, [hl-]
    jr nz, jr_05e_4f54

    ret nz

    rst $38
    ld b, l
    ld [hl], $6e
    ld l, a
    ld l, h
    dec [hl]
    and e
    xor d
    dec d
    xor e
    sub b
    add b
    xor [hl]
    jr jr_05e_4f65

    ld b, [hl]
    sub h
    and d
    ld d, [hl]
    ld [bc], a
    cp [hl]
    db $e3
    ret nz

    set 4, l
    cp a
    ld b, b
    inc b
    jr nz, jr_05e_4f90

    inc hl

jr_05e_4f54:
    or e
    ld b, l
    cp a
    push hl
    ld l, h
    ld l, a
    pop de
    ld l, [hl]
    ld a, a
    pop hl
    dec sp
    ret nz

    ld b, a
    and b
    xor [hl]
    adc $80

jr_05e_4f65:
    ld [c], a
    db $e3
    nop
    jp c, Jump_05e_5282

    ld h, c
    set 4, l
    ld b, [hl]
    ld h, e
    ld b, e
    ld b, e
    ld a, [hl-]
    ld h, d
    or b
    ld b, c
    ld a, [hl]
    db $e4
    inc a
    pop bc
    ld [c], a
    sub $a4
    dec b
    xor a
    xor [hl]
    sbc [hl]
    sub d
    ld b, b
    ld d, b
    ld [hl+], a
    inc bc
    and $e7
    ld b, [hl]
    ld [hl], c
    ld a, [hl-]
    ld h, h
    ld l, $22
    dec a
    db $e3

jr_05e_4f90:
    add d
    pop hl
    ld c, $a2
    ld c, l
    ret nc

    ld sp, hl
    and c
    xor a
    sbc [hl]
    ld e, d
    nop
    ld d, b
    ld hl, $4ed4
    inc h
    ld h, b
    db $10
    db $e3
    db $f4
    add sp, $7a
    ld [bc], a
    ld [hl], d
    inc bc
    db $fc
    jp nz, Jump_05e_4536

    ld e, a
    inc bc
    inc b
    rrca
    and b
    adc [hl]
    ld b, b
    ret nc

    ld c, $81
    sbc d
    inc h
    inc c
    inc h
    jp nz, $c822

    ld hl, $fd88
    ld c, b
    ld a, b
    inc h
    cp e
    pop bc
    ld b, l
    ld e, a
    nop
    dec hl
    ld b, b
    sbc $20
    db $d3
    inc bc
    ret nc

    ld de, $0192
    call nc, $8e21
    ld hl, $6513
    sla d
    ld a, [bc]
    ld b, c
    or b
    ld b, b
    ld b, a
    ei
    ld hl, $226b
    db $e4
    and l
    ld [c], a
    db $e3
    ld e, h
    ld bc, $03d2
    ld de, $e1d2
    jr nz, jr_05e_5044

    ld bc, $4015
    call c, Call_05e_49e6
    ld b, [hl]
    ld a, [hl]
    adc c
    ld [hl], $b2
    db $ec
    db $e4
    push hl
    and [hl]
    ld bc, $119e
    rrca
    ld b, c
    sbc h
    ld bc, $1418
    ld l, b
    cp $f5
    or d
    ld [$e7e6], a
    and [hl]
    ld bc, $e3c0
    add a
    xor b
    nop
    adc [hl]
    db $eb
    nop
    ld b, a
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
    ld bc, $0728
    ld [bc], a
    ld [bc], a

jr_05e_5044:
    ld a, [hl+]
    ld [$0302], sp
    add hl, hl
    add hl, bc
    ld [bc], a
    inc b
    ld a, [hl+]
    ld a, [bc]
    ld [bc], a
    dec b
    cpl
    inc d
    ld [bc], a
    ld b, $27
    jr @+$04

    rlca
    jr z, jr_05e_5072

    ld [bc], a
    ld [$1926], sp
    ld [bc], a
    add hl, bc
    inc l
    add hl, de
    ld [bc], a
    ld a, [bc]
    dec h
    rra
    ld [bc], a
    dec bc
    ld hl, $0222
    inc c
    rra
    inc h
    ld [bc], a
    dec c
    dec c
    ld [hl-], a

jr_05e_5072:
    ld [bc], a
    ld c, $11
    ld [hl], $02
    rrca
    rla
    ld [hl], $02
    db $10
    ld [de], a
    jr c, @+$04

    ld de, $3919
    ld [bc], a
    ld [de], a
    ld a, [de]
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    sub c
    ld d, b
    pop de
    ld d, e
    rlca
    ld e, d
    ld [hl+], a
    ld e, d
    pop bc
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    ld l, h
    ld c, h
    ld hl, sp-$01
    ldh [$d9], a
    rst $38
    jp nz, Jump_05e_6cf5

    ld l, h
    dec hl
    ld a, [bc]
    ld a, [bc]
    pop af
    ld a, [bc]
    cp [hl]
    rst $38
    pop bc
    push af
    jp nz, $0ae1

    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    inc a
    cp a
    rst $38
    pop bc
    ld sp, hl
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld l, h
    pop de
    rst $38
    db $ec
    db $eb
    ld a, e
    inc l
    inc l
    add d
    and $2b
    ld a, [bc]
    ld a, [hl+]
    dec bc
    rst $08
    rst $38
    add [hl]
    ld b, e
    push af
    ld a, [bc]
    ld c, e
    inc a
    pop hl
    or b
    ldh [$cd], a
    rst $38
    db $eb
    ld [$8c4c], a
    pop bc
    db $e4
    ret nz

    pop hl
    ld c, e
    ld c, e
    jp nz, Jump_05e_47ff

    adc $c1
    db $e4
    ld a, [bc]
    adc $7e
    ret nz

    ld c, e
    ld c, e
    ld c, h
    scf
    rst $18
    add c
    db $f4
    ld c, d
    ld l, e
    ld b, $78
    db $e4
    ld a, [hl+]
    dec bc
    cp e
    rst $18
    add c
    ldh a, [$c1]
    ret nz

    ld a, $c1
    ld a, [hl-]
    ret nz

    add c
    ld c, d
    ret


    rst $38
    adc d
    and [hl]
    jp $43c5


    pop bc
    nop
    ret nz

    cp h
    jp nz, Jump_000_1c0a

    ei
    rst $18
    ld b, a
    call nz, Call_000_2b6c
    dec bc
    ld c, d
    db $e3
    adc b
    ld [c], a
    ret nz

    and b
    add c
    ld c, d
    ei
    pop hl
    call nz, $86ff
    rst $00
    ld c, a
    pop hl
    add e
    db $e3
    ret nz

    and c
    ld c, d
    add b
    ei
    ret nz

    db $ec
    and d
    jp $86ff


    push bc
    rrca
    pop hl
    cp h
    push hl
    ld a, a
    and b
    inc l
    or c
    inc c
    add b
    rst $18
    add [hl]
    and l
    ret z

    and h
    ld a, [hl+]
    dec bc
    add $c5
    ld c, d
    rra
    ld c, d
    ld c, d
    ld a, [bc]
    ld c, h
    dec bc
    cp b
    add c
    cp [hl]
    rst $38
    ld b, [hl]
    and b
    ld a, $0c
    and e
    ld a, [hl+]
    dec bc
    dec bc
    dec hl
    ld c, d
    scf
    push hl
    ld a, $df
    jr c, jr_05e_516f

    xor b
    rrca
    ret nz

    ld d, c
    pop bc
    ld c, e

jr_05e_516f:
    ld c, e
    ld c, e
    add e
    jp $e082


    ldh [$7c], a
    add c
    cp $e0
    ld a, $df
    add $82
    adc $a2
    ld a, [hl+]
    ld c, d
    ld l, e
    pop bc
    dec bc
    ld c, h
    ldh [$7e], a
    rst $20
    cp [hl]
    ldh [$bb], a
    pop bc
    rst $38
    rst $38
    inc l
    inc c
    cpl
    inc l
    ld c, d
    ld a, [hl+]
    ld c, e
    ret nz

    ldh [rWX], a
    push bc
    and d
    ld a, d
    call nz, $c07c
    rst $38
    db $fd
    ret


    ld a, [hl+]
    ld l, d
    ld a, [hl+]
    ld a, [bc]
    ld l, d
    cp e
    ldh [rSCX], a
    ld a, [bc]
    ld a, [bc]
    ld b, c
    and l
    cp c
    and d
    ccf
    rst $18
    db $e4
    db $e3
    ld c, d
    ld bc, $7ce0
    db $fc
    ldh [$c6], a
    ld h, c
    dec bc
    ld c, e
    ld l, e
    ld c, e
    ld c, e
    ld l, $e3
    ld bc, $c74b
    rst $38
    push hl
    db $e4
    adc e
    ret


    cp b
    ret nz

    or l
    ret nz

    cp a
    and d
    rst $38
    rst $38
    db $10

jr_05e_51d4:
    inc b
    add h
    adc h
    add d
    adc c
    pop bc
    ret nz

    ld h, d
    dec bc
    cp l
    ld [c], a
    ret


    rst $38
    nop
    jp hl


    adc c
    ld a, [hl+]
    adc b
    ld h, e
    add hl, sp
    and e
    dec bc
    ld b, h
    rst $38
    db $ec
    db $eb
    ld c, $a0
    ld a, [hl+]
    inc bc
    dec hl
    ld l, e
    adc l
    jp nz, $8579

    set 7, a
    add b
    db $eb
    ld b, d
    ret nz

    cp b
    add c
    ld [hl], b
    db $f4
    add l
    set 7, a
    add l
    ld c, c
    inc a
    and c
    ld l, d
    ld c, e
    ld a, [bc]
    cp [hl]
    pop hl
    jr nc, jr_05e_51d4

    pop hl
    ld c, c
    rst $18
    adc c
    inc l
    ret


    ld [hl+], a
    ld l, d
    ld c, e
    db $fd
    add b
    ld a, e
    ldh [$f1], a
    ld a, [hl+]
    ret


    sbc a
    pop bc
    pop af
    dec b
    ld h, d
    dec bc
    dec c
    dec bc
    ld c, d
    rrca
    ld a, [bc]
    ld l, d
    ld c, h
    ld c, h
    dec b
    sbc a
    ld b, [hl]
    ld c, b
    sub d
    add h
    jp z, Jump_000_2160

    dec bc
    ret nz

    ldh [$81], a
    ccf
    ccf
    sub c
    ld b, a
    inc hl
    dec bc
    ld a, a
    pop hl
    ld [hl], l
    add b
    ld h, c
    ld l, h
    ld a, $ff
    ld b, d
    xor c
    ld c, a
    add c
    inc b

jr_05e_524e:
    add c
    ld a, [bc]
    dec bc
    ld a, a
    ldh [$a1], a
    dec hl
    ei
    ldh [rTAC], a
    sbc a
    add b
    adc d
    add [hl]
    and h
    ld a, [bc]
    push bc
    pop hl
    dec hl
    add e
    dec hl
    ld l, e
    cp h
    ldh [$ca], a
    rst $38
    call nz, Call_05e_4b09
    ld b, d
    add l
    add b
    dec bc
    dec bc
    ld l, e
    dec bc
    inc a
    ret nz

    dec hl
    cp e
    ret nz

    ccf
    rst $38
    ld bc, $cfac
    ld hl, $6a15
    add l
    add d
    ld c, e

Jump_05e_5282:
    ld a, h
    ret nz

    dec bc
    ld a, a
    rra
    cp a
    ld c, a
    ld b, h
    ld hl, $45c0
    add b
    ld a, h
    ret nz

    cp a
    ldh [$c9], a
    rst $38
    add b
    ld l, b
    add l
    add l
    ld c, d
    ld l, e
    ld c, b
    jp $c0c2


    rst $38
    ld b, c
    xor e
    inc c
    adc l
    ld b, [hl]
    add h
    ret nz

    dec c
    pop bc
    ldh [rSTAT], a
    dec c
    add a
    ld a, a
    rst $38
    adc d
    adc [hl]
    ld b, d
    ret nz

    push hl
    rst $38
    pop hl
    ld c, e
    pop bc
    rst $18
    inc l
    cp a
    adc d

jr_05e_52bb:
    nop
    and e
    ld l, d
    ld a, [hl+]
    ret nz

    db $e4
    ld l, e
    add b
    rst $38
    ld a, l
    dec l
    ld c, a
    ld c, d
    ld l, d
    ld c, d
    ld l, d
    cp l
    jr nz, jr_05e_524e

    ld [c], a
    ld l, e
    jp Jump_000_167f


    ld a, l
    cpl
    ld l, d
    ld c, d
    pop bc
    db $e3
    dec bc
    pop bc
    rst $38
    ccf
    ld a, [c]
    add e
    ld [c], a
    ld [bc], a

jr_05e_52e1:
    ret nz

    add b
    ld l, e
    add c
    ld b, b
    add [hl]
    rra
    cp l
    ld l, $0a
    and d
    ld b, d
    add b
    cp e
    jr nz, jr_05e_52e1

    add c
    rst $38
    pop af
    ldh a, [rSCX]
    jr nz, jr_05e_52bb

    add c
    ld c, e
    dec bc
    dec hl
    dec bc
    ldh a, [$c3]
    ret nz

    add c
    rst $38
    db $fc
    ld l, l
    add b
    db $e3
    dec bc
    dec hl
    ld c, e
    dec hl
    rlca
    dec bc
    dec hl
    ld c, h
    pop bc
    rst $38
    push bc
    and [hl]
    db $fc
    ld b, l
    ld [bc], a
    db $e3
    ret nz

    ldh [rNR11], a
    dec bc
    add b
    pop hl
    rst $38
    rst $38
    ld a, [bc]
    ld h, b
    ld c, h
    rst $38
    ldh [$c0], a
    db $ed
    ret nz

    add d
    inc b
    pop bc
    rst $18
    call z, Call_05e_6c41
    db $d3
    ld h, b
    cp [hl]
    rst $20
    nop
    db $e3
    ld [bc], a
    ldh [$80], a
    add b
    nop
    xor b
    add sp, -$73
    ld d, a
    rst $10
    ret nz

    sub a
    ld h, c
    push de
    db $e4
    nop
    pop hl
    rst $00
    ld [bc], a
    cp l
    pop hl
    sra e
    dec hl
    cp a
    cp $4c
    pop bc
    pop hl
    ld d, [hl]
    ld l, b
    ld c, h
    dec bc
    ld c, e
    ld l, e
    ld l, e
    xor [hl]
    db $e3
    dec hl
    db $fd
    pop bc
    ld b, b
    ld a, l
    ld l, h
    sub b
    jp Jump_000_1500


    ld h, c
    sub [hl]
    ld h, h
    ld b, b
    db $e4
    cp e
    and d

jr_05e_536a:
    or [hl]
    ldh [rIF], a
    cp [hl]
    ld d, l
    and d
    inc a
    ld [c], a
    nop
    rst $28
    rst $20
    ld a, h
    rst $00
    ld a, l
    db $dd
    pop de
    and $93
    ld b, b
    inc a
    inc hl
    ret nz

    and e
    ld b, l
    pop hl
    ld b, h
    ld a, h
    ret nz

    jp nz, Jump_000_2c7e

    ld a, [de]

jr_05e_538a:
    ld h, b
    ld a, [hl]
    push hl
    ld d, $c3
    ld c, e
    ld b, [hl]
    ld h, c
    sbc b
    ei
    ldh [$3c], a
    pop bc
    inc b
    rst $18
    inc l
    inc c
    cp a
    ld [c], a
    ld [de], a
    jr nz, jr_05e_540b

    nop
    dec d
    jp $df0e


    db $ed
    db $ec
    jr jr_05e_536a

    inc d
    ld b, c
    sub e
    and h
    ret nz

    rst $38
    ld c, h
    dec c
    jr nz, jr_05e_538a

    and c
    pop bc
    ldh [$d5], a
    rst $38
    dec b
    or l
    db $fc
    ret nz

    ld l, e
    ret c

    rst $38
    inc c
    sbc c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nz, Jump_000_0043

    nop
    nop
    db $fd
    sbc c
    rst $38
    db $eb
    sbc b
    sbc b
    sbc b
    sub a
    sub a
    sub a
    adc a
    sub [hl]
    sub [hl]
    sub [hl]
    sub l
    rst $38
    ld [c], a
    rst $30
    ldh [$f1], a
    ldh [$98], a
    ld bc, $e798
    pop hl
    ld [$ede0], a
    db $e4
    db $eb
    and $fe
    db $ed
    jp nz, $c1e0

    db $ec
    ld a, $c2
    ld [c], a
    sbc b
    sbc c
    nop
    ld bc, $a899
    ldh [$a9], a
    db $e3
    ldh [$bf], a
    db $e4
    ret nz

    ldh a, [$c1]
    db $e4
    sub a

jr_05e_540b:
    db $e3
    reti


    and $98
    dec c
    rlca
    nop
    rst $38
    ldh [$65], a
    ldh [$67], a
    pop hl
    xor b
    rst $20
    xor c
    pop hl
    ld b, h
    pop af
    ld b, d
    db $e4
    ld b, a
    ld [c], a
    cp $45
    pop hl
    rrca
    inc b
    inc bc
    ld b, l
    ld d, b
    ld d, b
    ld d, b
    ld b, e
    inc bc
    inc b
    ld a, [hl]
    rst $20
    ld l, b
    rst $20
    inc b
    db $ec
    pop bc
    rst $20
    sub l
    add l
    db $e3
    cp $c1
    ldh [rSC], a
    ld b, l
    ld c, b
    ld c, c
    ld e, l
    ld e, l
    ld e, l
    rlca
    ld c, c
    ld c, b
    ld [bc], a
    ld a, [hl]
    db $e3
    dec a
    db $e4
    cp a
    rst $28
    push bc
    add $81
    db $e4
    db $fc
    jp z, $c1c2

    ldh [rBGP], a
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld d, h
    rrca
    ld e, c
    ld d, h
    ld d, l
    ld b, $a3
    jp nz, $c5bb

    cp l
    call $e7c1
    call c, $c287
    adc d
    ret nz

    sbc c
    ld bc, $c100
    push hl
    ld d, d
    ld b, l
    rrca
    ld c, [hl]
    ld c, b
    ld b, e
    ld a, [bc]
    ld a, d
    call nz, $e67e
    db $fd
    jp z, $ce86

    db $fc
    ld c, d
    ret nz

    add d
    push hl
    ld d, [hl]
    ld b, l
    ld c, d
    ld h, b
    ld d, h
    ld e, d
    add a
    ld a, [bc]
    ld bc, $bb00
    rst $00
    inc a
    call $e364
    dec e
    jp z, $fb98

    sbc c
    ld b, $43
    db $e3
    ld h, c
    ld e, d
    ld b, [hl]
    ld c, a
    ld d, [hl]
    rlca
    ld b, e
    ld b, e
    ld b, $e0
    and h
    and b
    call nz, $cb7c
    ret z

    and h
    call z, $eea6
    jp z, $0ea1

    dec b
    ld c, d
    pop bc
    ld [c], a
    ld h, c
    ld e, d
    ld b, l
    rst $38
    ld c, e
    ld e, d

Jump_05e_54c1:
    ld b, [hl]
    ld b, [hl]
    inc bc
    inc bc
    dec bc
    inc bc
    add e
    inc b
    rrca
    add hl, sp
    push bc
    cp e
    xor h
    add c
    and $cc
    and l
    adc e
    and b
    ld b, $fb
    ld b, l
    ld c, e
    pop bc
    ld [c], a
    ld h, c
    ld d, [hl]
    ld b, h
    ld d, h
    ld d, l
    ld a, a
    ld c, b
    ld c, [hl]
    ld c, c
    ld c, h
    ld e, l
    ld b, a
    ld b, l
    cp e
    ret nz

    add b
    rst $18
    and e
    cp e
    xor h
    jp hl


    push hl
    ld b, a
    call nz, $a136
    add c
    and $c1
    ret nz

    ld c, b
    ld l, a
    ld c, c
    ld h, b
    ld d, h
    ld d, e
    ei
    ldh [rHDMA5], a
    ld a, [bc]
    sub [hl]
    db $e3
    ld hl, sp-$45
    and [hl]
    ld bc, $47eb
    add $00
    ld bc, $070d
    ld [bc], a
    cp $81
    push hl
    ld d, d
    ld c, b
    ld c, c
    ld d, a
    ld d, h
    ld d, e
    ld b, l
    dec b
    ld e, a
    scf
    ret nz

    ld d, l
    ei
    ret nz

    push af
    add h
    ret nz

    db $f4
    ld b, a
    call nz, $a08a
    rst $30
    ld b, l
    ld b, h
    ld c, l
    jp Jump_05e_54c1


    ld d, e
    ld d, b
    ld d, e
    cp a
    ld d, e
    ld c, b
    ld c, b
    ld d, [hl]
    ld d, l
    ld d, [hl]
    push af
    ldh [rSC], a
    and c
    rrca
    push af
    add h
    add b
    db $ec
    ld b, b
    and $c7
    and h
    ld b, $8a
    and b
    ld c, c
    ei
    ld c, b
    ld e, [hl]
    add e
    db $e3
    ld e, l
    ld d, [hl]
    ld b, a
    ld d, h
    ld e, c
    rrca
    ld c, e
    ld d, [hl]
    ld b, l
    ld e, e
    pop bc
    ret nz

    inc a
    pop bc
    add b
    ldh a, [rP1]
    db $ec
    and [hl]
    add [hl]
    jp Jump_05e_6060


    add e
    ldh [$81], a
    and c
    ld c, e
    cp a
    ldh [rVBK], a
    bit 3, b
    rla
    cp b
    add c
    dec c
    nop
    di
    add b
    jp z, $9998

    db $dd
    ld [$c486], sp
    ld d, d
    ld a, [hl+]
    ld [hl-], a
    inc a
    pop hl
    ld h, b
    ld e, d
    ld a, a
    ld d, [hl]
    add sp, $4a
    ld h, b
    ld e, h
    dec bc
    ld b, e
    cp b
    add c
    ret nc

    ld a, $c1
    add b
    db $d3
    ld a, a
    push bc
    ret nz

    ldh [rHDMA1], a
    ld b, l
    ldh [rHDMA4], a
    ld d, h
    rst $28
    ld d, d
    ld a, [hl+]
    jr nz, jr_05e_55d5

    dec a
    jp nz, Jump_05e_5a5a

    ld e, d
    rlca
    ld d, c
    ld e, [hl]
    ld c, b
    ccf
    ret nz

    ld a, $c4
    add b
    pop af
    rst $38
    and [hl]
    sub b
    ld h, b
    rst $30
    ld [$5245], sp
    adc d
    ret nz

    ld c, [hl]
    ld c, b
    ld a, [hl+]
    ld h, $7b
    inc h
    ld d, l
    ld a, a
    and c
    ld c, e
    ld d, [hl]
    ld d, [hl]
    ld c, d
    ld [hl-], a
    ldh [$c0], a
    ld [hl], h
    and c
    ld a, $c1
    nop
    ldh a, [$7f]
    and a
    and h

jr_05e_55d5:
    ld h, c
    ld c, d
    add b
    ld e, e
    ld b, a
    rst $38
    ld h, b
    ld d, a
    ld h, b
    ld d, l
    add hl, sp
    dec [hl]
    add hl, sp
    ld d, d
    jr jr_05e_5624

    pop hl
    add b
    add b
    or l
    and e
    ld h, c
    ld e, d
    ret nz

    pop hl
    add b
    rst $08
    cp $ac
    rst $38
    rrca
    rlca
    inc c
    ld e, [hl]
    ld d, e
    ld b, e
    ld d, [hl]
    ld d, [hl]
    cp a
    ld b, l
    jr c, @+$40

    ld c, d
    ld h, c
    ld d, [hl]
    ld a, h
    ldh [$5d], a
    pop af
    ld e, l
    ret nz

    db $e4
    add b
    cp $c5
    ld h, e
    sbc c
    inc c
    ld c, l
    ld c, h
    ld a, a
    ld d, d
    ld d, l
    ld h, c
    ld d, h
    ld c, b
    ld b, e
    ld d, l
    ld bc, $0fa0
    ld d, e
    ld d, h
    ld d, a
    ld e, d
    ld a, b
    pop hl
    ld [hl], $81

jr_05e_5624:
    nop
    di
    ld a, a
    set 7, [hl]
    adc a
    ld b, b
    dec b
    ld c, e
    ld h, c
    ld c, c
    ld b, [hl]
    ld c, l
    ld h, c
    rst $30
    ld h, b
    ld c, c
    ld c, c
    ld b, c
    add b
    ld b, [hl]
    ld b, l
    ld b, e
    ld b, e
    ld a, $bb
    ldh [$61], a
    ld d, a
    ld d, d
    ld b, l
    ld [bc], a
    add b
    db $d3
    rst $38
    adc e
    ld [hl], d
    adc a
    ld b, b
    ld b, $c7
    ret nz

    nop
    and l
    ld c, c
    ld b, h
    ld b, [hl]
    rst $38
    pop hl
    inc hl
    ld b, l
    ld e, e
    ld a, a
    add d
    ld b, c
    and a
    add b
    ld sp, hl
    ld b, $4b
    ldh [$be], a
    ret nz

    ld e, [hl]
    ld b, b
    add d
    ld e, b
    ld b, h
    ld d, b
    ld b, l
    cp [hl]
    ld [c], a
    ld [$4536], sp
    db $fc
    ld a, h
    ld c, a
    nop
    db $ed
    ld a, [bc]
    ld b, a

jr_05e_5676:
    ld c, c
    ld c, b
    ld e, e
    ld b, e
    ld a, d
    dec bc
    db $e3
    ld h, c
    ld b, [hl]
    add b
    ld b, e
    ld c, b
    ld c, b
    ld b, h
    ld b, h
    ldh [$f8], a
    pop bc
    sub e
    add a
    daa
    add l
    ld b, [hl]
    ld b, $52
    ld e, l
    ld h, c
    ld d, h
    ld sp, hl
    ld b, l
    ld hl, sp-$60
    ld c, b
    call nz, Call_05e_604c
    ld h, b
    ld e, h
    ld [$6db0], sp
    ld b, d
    ld b, c
    or c
    ret nz

    xor c
    add l
    ld b, e
    ld [$4d51], sp
    add b
    jr c, @+$75

    jr c, jr_05e_56e5

    jp z, $7ac0

    add d
    ld d, h
    ld d, a
    ld d, d
    push bc
    jp nz, $dad0

    and l
    ld a, h
    dec l
    ret nz

    res 0, l
    ld b, b
    inc c
    ld d, b
    and b
    ld d, d
    ld [hl], $fd
    jp $e0be


    ld e, c
    ld e, c
    ld e, c
    ld d, e
    inc bc
    inc bc
    or b
    push bc
    push bc
    ld a, [hl-]
    dec h
    db $fc
    inc c
    ld b, b
    call z, Call_000_020f
    ld b, a
    ld b, e
    ld [hl], $0f
    dec [hl]
    dec [hl]
    jr c, jr_05e_5719

    ld b, d
    ld b, b
    rlca

jr_05e_56e5:
    add e
    cp e
    dec b
    ld b, b
    ld d, a
    ld hl, sp-$41
    add e
    adc c
    jr nz, jr_05e_5676

    ld b, e
    ld h, c
    ld d, l
    ld a, [hl-]
    jp $0f35


    xor h
    add hl, sp
    ld c, e
    ld h, c
    ld b, e
    ldh [rSTAT], a
    ld b, e
    ret nz

    scf
    ld a, a
    adc c
    db $fd
    ld b, $86
    ld b, e
    ld d, h
    ld h, b
    ld d, [hl]
    add hl, sp
    dec [hl]
    dec [hl]
    jp Jump_000_3aad


    cp e
    add b
    ld b, [hl]
    ld l, d
    rst $38
    db $10
    rst $38
    ld l, e
    ld a, [bc]

jr_05e_5719:
    ld c, a
    db $ec
    adc b
    ld b, d
    ld b, h
    jr nz, jr_05e_577c

    inc a
    ld a, a
    pop hl
    ld e, c
    ld d, e
    ccf
    jp Jump_000_0e05


    add $47
    ld bc, $7f32
    ld c, c
    add b
    db $e3
    ld d, [hl]
    ld d, d
    ld sp, hl
    ld d, a
    ret nz

    ldh [$7f], a
    ldh [$3e], a
    jr c, @+$3d

    dec [hl]
    add hl, sp
    sub b
    rlca
    add d
    push bc
    dec h
    jp nz, $c612

    rlca
    ld c, $01
    and b
    ret


    nop
    ld e, h
    rst $38
    ld d, b
    ld e, e
    ld b, h
    inc a
    rst $08
    call Call_000_3ecf
    rrca
    ld a, [hl-]
    dec [hl]
    xor h
    ld a, $07
    add d
    ld b, d
    dec d
    ld bc, $5a8a
    and b
    db $fd
    ld a, [bc]
    ret z

    ld h, c
    ld d, d
    ld b, a
    ld e, l
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    scf
    adc $c3
    adc $c0
    ldh [$ad], a
    ld a, [hl-]
    ccf
    ldh [$86], a
    ld sp, $81ee
    sub h

jr_05e_577c:
    ld b, l

jr_05e_577d:
    ld d, e
    ld e, c
    call nz, Call_05e_6040
    ld d, d
    ld [hl], $fd
    add hl, sp
    add b
    ldh [$39], a
    inc a
    xor h
    dec [hl]
    dec [hl]
    ld b, h
    ld hl, $4008
    add sp, -$40
    di
    ld b, l
    dec b
    ccf
    ld h, b
    ld b, a
    ld d, b
    jr nz, jr_05e_57e1

    ld bc, $55ff
    ld b, l
    scf
    dec a
    scf
    ld [hl], $35
    xor l
    add a
    xor h
    dec [hl]
    ld b, b
    ret nz

    ldh [$86], a
    jr z, jr_05e_57b0

    pop af

jr_05e_57b0:
    nop
    add sp, $52
    xor $44
    inc h
    ld d, [hl]
    add hl, sp
    jr c, jr_05e_577d

    ret nz

    dec [hl]
    xor h
    xor l
    ldh [$80], a
    ld [c], a
    add [hl]
    ld c, b

jr_05e_57c3:
    ld b, h
    ld a, [bc]
    ld [bc], a
    ld h, d
    ld a, a
    add hl, hl
    ld b, $4a
    ld e, l
    ld [de], a
    inc bc
    inc h
    ld b, b
    jp $c1e0


    ldh [$ac], a
    nop
    db $e3
    ld b, $92
    pop bc
    and $64
    pop bc
    adc b
    call nz, Call_05e_6105

jr_05e_57e1:
    cp a
    and c
    pop bc
    ldh [$ad], a
    add hl, sp
    add b
    ret


    add b
    add c
    ret z

    add h
    db $e4
    and $82
    nop
    and $3f
    and b
    inc b
    ret nz

    ld a, l
    jr nz, @+$60

    dec sp
    ld d, d
    ld a, [hl-]
    ld b, e
    pop hl
    xor h
    xor l
    ld [hl], $07
    ld b, l
    ld b, a
    ld c, $70
    pop bc
    and $e6
    add d
    ld hl, $7dc4
    jr nz, jr_05e_585d

    ld e, [hl]
    ld h, b
    pop bc
    ldh [rDIV], a
    cp a
    add b
    add b
    pop hl
    ld [hl], $07
    ld h, [hl]
    ld b, a
    db $10
    ld l, d
    add [hl]
    dec h
    and d
    and b
    and c
    sbc $bd
    jr nz, jr_05e_5878

    ld e, [hl]
    ld h, b
    ld e, [hl]
    pop bc
    db $e3
    xor h
    dec [hl]
    add b
    pop bc
    ld [c], a
    ld b, a
    inc d
    pop bc
    add sp, $66
    and e
    ld [hl-], a
    ld [c], a
    ld a, [hl]
    add b
    rst $38
    and b
    scf
    ld l, l
    jr c, jr_05e_57c3

    ldh [$35], a
    xor l
    ld a, $80
    ld b, [hl]
    ld [$8681], sp
    ld b, b
    ld b, l
    adc d
    ld c, c
    ld h, $05
    call nz, $e104
    db $76
    jr nz, @+$3f

    jp nz, Jump_05e_4839

    ret nz

    ld a, [hl]
    add e
    pop bc

jr_05e_585d:
    ld [hl], $45
    ld b, l
    ccf
    inc c
    ld c, $06

jr_05e_5864:
    ld l, d
    add b
    ld b, h
    add [hl]
    ret z

    and a
    xor b
    and a
    dec de
    ld h, c
    ld a, $41
    ld b, l
    add b
    inc bc
    pop hl
    ld a, [hl-]
    rra
    ld b, h
    ld b, l

jr_05e_5878:
    ld [hl], $3a
    dec b
    ld e, [hl]
    add h
    ret c

    jp hl


    ret z

    ld b, d
    ldh [$30], a
    ld h, a
    db $ed
    ld h, h
    ld e, [hl]
    ld b, d
    ld a, $42
    ret nz

    db $e3
    dec [hl]
    ld a, $46
    inc bc
    add hl, sp
    dec [hl]
    jp $8680


    ld b, [hl]
    ld b, l
    ld c, d
    adc d
    rlca
    xor e
    add h
    sbc d
    ld h, c
    ld d, $3f
    db $e3
    ld a, [bc]
    ld a, $c0
    push hl
    ld a, $43
    add b
    ld b, $47
    ret nz

    rst $28
    ld a, $4b
    ld b, [hl]
    dec c
    rlca
    rlca
    rlca
    dec c
    dec [hl]
    ld b, e
    ret nz

    rst $20
    rra
    add hl, sp
    ld b, [hl]
    add hl, sp
    dec sp
    ld b, b
    pop bc
    jp nz, $ea80

    ld b, b
    and $06
    adc e
    rlca
    inc b
    inc bc
    ld e, b
    jr nz, jr_05e_5864

    ld b, e
    cp h
    ld h, c
    ld b, b
    db $e4
    pop bc
    ret nz

    db $e3
    ld b, e
    ld b, e
    ld [$00e4], a
    xor $0a
    adc b
    rrca
    ld [bc], a
    ld b, [hl]
    db $e3
    ld b, l
    ld b, c
    ld e, b
    ld hl, $02dd
    ret nz

    db $e3
    dec sp
    jr c, jr_05e_5928

    rst $38
    dec a
    scf
    ld b, e
    ld b, l
    ld b, b
    dec sp
    jr c, jr_05e_592b

    ldh a, [$c0]
    xor d
    ret nz

    add sp, $01
    db $e4
    adc [hl]
    jr nz, @+$48

    ld b, l
    ld [hl], $a6
    ld sp, hl
    ld [hl], $17
    ld hl, $6156
    sbc b
    sbc c
    dec b
    ld a, $38
    dec b
    scf
    rst $38
    ldh [$38], a
    cp e
    ldh [$3f], a
    add b
    ld b, b
    ld l, c
    add c
    ld l, b
    adc h
    ld b, a
    ld a, a
    ld c, $05
    ld b, l
    ld [hl], $62
    and a
    ld h, [hl]
    cp a
    pop hl
    inc h
    sub [hl]
    ld h, c

jr_05e_5928:
    ret nz

    ldh [rSCX], a

jr_05e_592b:
    pop bc
    and e
    db $fc
    jp nz, Jump_05e_7d3a

    pop bc
    add $09
    ld [hl], h
    ld b, e
    ld h, h
    dec bc
    ld h, a
    ld [$e0c1], sp
    ld h, a
    and e
    ld l, b
    cp a
    ld [c], a
    ld b, $17
    ld hl, $0a99

jr_05e_5946:
    ld b, b
    call nz, $c23c
    ld a, l
    pop bc
    add $11
    dec bc
    add a
    ld a, a
    ld [$a842], sp
    xor c
    ld l, h
    dec [hl]
    dec [hl]
    cp a
    ld [c], a
    sbc h
    ret nz

    jp hl


    ld a, e
    and d
    add hl, sp
    ld b, e

jr_05e_5961:
    ccf
    ret nz

    sub e
    add b
    ld_long $ff6e, a
    ld l, a
    ld l, h
    dec [hl]
    and e
    xor d
    xor e
    ld [hl], $45
    db $f4
    ld d, $60
    cp h
    jr nz, jr_05e_59bc

    ld b, [hl]
    ld h, b
    ccf
    ld b, c
    ld b, e
    ld b, c
    ccf
    ccf
    ccf
    ccf
    ld b, l
    ld [bc], a
    rlca
    add b
    push bc
    ld bc, $3c6b
    nop
    db $eb
    cp a
    ldh [$6c], a
    ld l, a
    ld l, [hl]
    ld [hl], $00
    ld [c], a
    ld sp, $07c0
    add hl, bc
    add hl, bc
    inc b
    rst $28
    and b
    db $fd
    ld [c], a
    ld bc, $c625
    dec c
    add b
    call z, Call_05e_6e03
    ld l, a
    pop bc
    ldh [$d6], a
    ld h, c
    db $76
    and e
    ld h, h
    ld h, e
    ld e, a
    ld h, d
    nop
    and l
    inc c
    add $0c
    nop
    call z, Call_05e_6e36
    pop bc
    ldh [$15], a
    add d

jr_05e_59bc:
    or a
    add h
    jr nc, jr_05e_5946

    jr c, jr_05e_5961

    dec h
    add $0c
    add b
    xor h
    ld b, l
    ld [hl], $36
    add b
    and b
    cp l
    add h
    nop
    and l
    ld h, a
    jp hl


    ld h, h
    pop bc
    ld [c], a
    ld [bc], a
    ld l, h
    nop
    or c
    ld [hl], c
    inc h
    ld a, [hl+]
    ld h, a
    dec c
    ld hl, $9c00
    ld h, e
    add e
    ld c, [hl]
    adc c
    ld b, a
    call nz, Call_000_0e63
    db $e4
    add a
    push hl
    and a
    ld h, e
    rlc d
    nop
    call c, $c068
    ld [$852b], a
    ld b, h
    ld h, [hl]
    ld d, h
    push hl
    push bc
    and $bb
    push hl
    add l
    ld b, $00
    inc b
    daa
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
    inc h
    rra
    ld [bc], a
    ld bc, $2125
    ld [bc], a
    ld [bc], a
    add hl, hl
    inc hl
    ld [bc], a
    inc bc
    jr z, jr_05e_5a57

    ld [bc], a
    inc b
    add hl, hl
    ld h, $02
    dec b
    jr z, jr_05e_5a61

    ld [bc], a
    ld b, $25
    jr z, jr_05e_5a41

    rlca
    daa

jr_05e_5a41:
    jr z, @+$04

    ld [$2829], sp
    ld [bc], a
    add hl, bc
    ld h, $29
    ld [bc], a
    ld a, [bc]
    jr z, jr_05e_5a77

    ld [bc], a
    dec bc
    dec h
    ld a, [hl+]
    ld [bc], a
    inc c
    daa
    ld a, [hl+]
    ld [bc], a

jr_05e_5a57:
    dec c
    ld h, $2b

Jump_05e_5a5a:
    ld [bc], a
    ld c, $24
    inc l
    ld [bc], a
    rrca
    ld [hl+], a

jr_05e_5a61:
    ld l, $ff
    rst $38
    rst $38
    ld l, l
    ld e, d
    push bc
    ld h, b
    ld a, h
    ld l, c
    sub a
    ld l, c
    dec h
    ld c, $ff
    ldh [$0d], a
    ei
    pop hl
    rst $30
    ld [c], a
    dec c

jr_05e_5a77:
    push af
    ld [c], a
    ldh a, [$e0]
    nop
    db $ed
    and $e2
    db $e3
    add sp, -$1d
    rst $20
    ld [c], a
    db $dd
    db $e4
    push af
    rst $20
    ret


    ld [c], a
    rst $18
    push hl
    nop
    sbc $e3
    db $fd
    push hl
    cp e
    db $eb
    ret nz

    push hl
    pop hl
    ld [$e38d], a
    call nc, $b4e7
    ld [c], a
    and a
    ld c, l
    ld c, l
    dec l
    xor h
    push hl
    and a
    di
    ld c, l
    rst $38
    ldh [$2d], a
    ld a, b
    sub h
    db $e4
    ld a, l
    rst $20
    ld l, e
    db $e4
    ld c, l
    ld l, l
    dec bc
    dec c
    cp a
    ld [c], a
    ld hl, sp-$1a
    jp hl


    ld b, l
    ld [c], a
    xor b
    db $e4

jr_05e_5abd:
    ld l, l
    dec hl
    dec bc
    dec bc
    dec hl
    or c
    dec bc
    sbc h
    pop hl
    ld h, $e6
    dec l
    rst $20
    ld l, l
    dec hl
    rst $38
    ldh [$0d], a
    ld bc, $e22b
    db $e3
    jr nz, jr_05e_5abd

    push hl
    db $e3
    add a
    pop hl
    pop bc
    pop hl
    cp a
    db $e4
    ld [c], a
    rst $08
    pop hl
    ld l, l
    db $e4
    pop hl
    pop hl
    pop hl
    dec a
    rst $20
    db $ed
    push bc
    ld l, l
    dec hl
    inc c
    add e
    inc l
    inc l
    and e
    pop hl
    sbc $e4
    cp a
    db $e3
    ld [c], a
    ret z

    cp b
    pop bc
    ld l, e
    and $c0
    push hl
    ld c, e
    dec l
    and c
    push hl
    ld h, [hl]
    jp $0b6d


    dec hl
    dec de
    inc c
    inc c
    cp a
    ldh [$0c], a
    inc l
    ret nz

    db $e4
    dec a
    ldh [$c0], a
    push hl
    ldh [rNR24], a
    add sp, $64
    ld [c], a
    ld a, h
    ld [c], a
    and d
    push hl
    jp hl


    jp $0d6d


    inc l
    inc e
    pop bc
    ldh [$fd], a
    pop hl
    inc l
    inc l
    ld c, e
    ld e, h
    push hl
    sbc d
    jp $cabe


    ret z

    push hl
    ret nz

    ld h, b
    ldh [$5d], a
    pop hl
    dec c
    cp $c7
    xor b
    pop hl
    dec c
    inc l
    inc h
    add h
    ldh [$c0], a
    db $e3
    ld l, e
    cp a
    pop hl
    reti


    ret nz

    ld l, e
    ld a, l
    ret nz

    db $db
    call Call_05e_4030
    rst $20
    ret nz

    ld [$e342], a
    add c
    db $e3
    ld c, h
    dec bc
    cp a
    pop hl
    pop bc
    ldh [$f9], a
    ld c, e
    nop
    and $44
    add $6d
    ld l, e
    ld c, e
    ld l, e
    dec bc
    add l
    ld l, e
    db $fd
    pop hl
    ld c, e
    ld c, l
    ldh [$e5], a
    and h
    push bc
    jp nz, $e5ff

    ld l, h
    dec bc
    ld c, h
    ld c, h
    push bc
    pop hl
    dec bc
    pop bc
    ldh [$de], a
    db $e4
    ld l, b
    and h
    add d
    jp nz, Jump_05e_6b10

    ldh [rIE], a
    db $e3
    db $e3
    add sp, -$3f
    db $eb
    ld l, h
    db $dd
    jp nz, $e099

    sbc a
    pop hl
    xor b
    ld h, $a4
    db $76
    and l
    inc b
    ret nz

    ld a, [bc]
    daa
    pop hl
    dec c
    cp $a0
    ld l, l

Call_05e_5ba0:
    ld a, [hl-]
    ret nz

    add sp, $2b
    call nz, $0cc5

jr_05e_5ba7:
    inc c
    ld c, h
    db $e4
    jp nz, $e0bf

    ld hl, sp-$47
    and b
    ei
    add d
    ld [$6da8], sp
    dec hl
    ld l, e
    ld a, [bc]
    ld a, [bc]
    rst $20
    ld c, d
    dec bc
    dec hl
    sbc h
    and d
    ld b, e
    rst $20
    dec c
    dec c
    dec bc
    ld hl, sp-$3b
    call nz, $e142
    add [hl]
    and b
    dec bc
    dec bc
    ld c, e
    ld c, e
    dec c
    ld hl, sp-$5f
    pop bc
    ld b, c
    xor e
    add [hl]
    and b
    dec bc
    dec hl
    ld a, [bc]
    ld a, [hl+]
    ld c, d
    ret c

    ret nz

    ldh [rTIMA], a
    ldh [$28], a
    xor c
    dec bc
    ld l, h
    ld bc, $2ce5
    inc c
    adc $1e
    pop bc
    ld c, e
    ld c, e
    dec bc
    ret nz

    and $08
    and [hl]

jr_05e_5bf3:
    ld l, l
    dec c
    ei
    dec hl
    ld a, [bc]
    ld h, $c0
    ld a, [hl+]
    ld a, [bc]
    dec hl
    dec hl
    dec l
    or l
    ld c, l
    ret nz

    db $ed
    ld c, h
    inc b
    push bc
    inc c
    dec c
    and c
    ret nz

    ld l, e
    db $e3
    ld c, e
    dec hl
    db $dd
    add e
    ld h, h
    add a
    ld e, e
    ldh [$0d], a
    ld l, e
    ld a, [hl+]
    ld h, e
    ld a, [hl+]
    ld c, e
    and $e0
    ret nz

    db $e4
    jr c, jr_05e_5ba7

    ld l, l
    dec bc
    pop bc
    ret z

    ld d, $21
    ldh [$0b], a
    dec bc
    or h
    and b
    inc l
    ld b, c
    and a
    cp $63
    ld l, $c1
    inc hl
    ld a, [hl+]
    ld c, d
    inc b
    xor c
    ld d, [hl]
    add h
    sub c
    add b
    ld l, h
    rst $38
    push bc
    ld bc, $c5e0
    ld l, e
    ret nz

    db $e4
    inc c
    ld b, c
    and [hl]
    or e
    ld h, e
    xor [hl]
    and c
    ld a, [bc]
    ld c, d
    ret nc

    nop
    and c
    add d
    add e
    push bc
    ld [c], a
    call nc, Call_000_2b83
    ld b, b
    push hl
    inc c
    inc c
    add e
    ld c, e
    ld l, e
    db $fc
    ret nz

    ld [hl], $a3
    ld bc, $62a2
    ld h, l
    add b
    db $e3
    ld a, [bc]
    add c
    ld a, [hl+]
    ld h, h
    add c
    ld b, c
    ret nz

    ld e, c
    add d
    jr c, jr_05e_5bf3

    xor d
    ld [c], a
    adc [hl]
    add b
    ld c, h
    ret z

    rst $38
    rst $00
    cp h
    ret nz

    ld [hl], $a2
    ld c, h
    pop bc
    add b
    ccf
    ld l, b
    ld c, l
    dec l
    jr nz, @+$09

    add c
    dec h
    and d
    db $fd
    and d
    ld a, [$94e7]
    ret nz

    dec c
    add b
    and a
    ld a, b
    and a
    add b
    ret nz

    jp hl


    cp e
    ld b, b
    cp a
    pop hl
    jp $a382


    pop bc
    cp e
    add b
    adc l
    jp Jump_000_106c


    ret nz

    pop hl
    xor l
    add b
    ld a, $c6
    ld [hl], $c6
    dec bc
    add b
    pop hl
    ld a, [de]
    ld h, l
    add h
    ld b, d
    or b
    rlca
    ldh [$7b], a
    ret nz

    and e
    ld h, c
    db $dd
    ld h, b
    ld c, h
    inc l
    xor c
    ld b, d
    inc c
    nop
    adc a
    ret nz

    ld l, [hl]
    ld h, c
    ld a, [hl]
    and [hl]
    ld a, d
    add e
    ld [hl], e
    add c
    nop
    db $e3
    ld h, [hl]
    ld b, a
    bit 0, b
    inc b
    daa
    ld h, b
    cp a
    ld h, e
    ld c, h
    ld h, b
    ret nz

    or h
    ld h, b
    ld [hl], l
    and b
    ret z

    db $eb

Jump_05e_5ce3:
    jp nz, $c080

    cp $e0
    cp h
    add b
    ld b, b
    db $e3
    ld h, $4b
    db $fd
    ret nz

    dec b
    add e
    ld l, e
    ld c, e
    dec c
    inc c
    rst $38
    ld h, c
    dec c
    ld c, e
    ld a, [hl-]
    add b
    ld l, h
    and b
    db $fc
    pop bc
    ret z

    pop hl
    inc b
    jp nz, Jump_000_2f82

    and e
    ld c, h
    rst $30
    and b
    ret nz

    add h
    ld d, a
    ld b, [hl]
    cp h
    pop bc
    jp nz, $0762

    dec hl
    ld c, e
    dec bc
    sbc c
    and b
    ld [$1e21], a
    add b
    db $d3
    ld b, c
    sub b
    ld b, d
    ld [bc], a
    ei
    and c
    ld c, h
    db $f4
    add b
    add h
    ld b, b
    ld a, [$c0e2]
    add a
    dec a
    ld c, b
    ld h, [hl]
    add c
    ld b, d
    add h
    ld h, c
    inc c
    cp d
    inc h

jr_05e_5d36:
    ei
    ld b, b
    ld a, a
    pop hl
    sub b
    ld b, d
    ld l, h
    ld c, b
    ldh [rTMA], a
    ld l, h
    ldh [rWX], a
    ld c, e
    adc b
    ld h, b
    nop
    and b
    call c, $9d81
    ld a, [hl+]
    ret nz

    db $e3
    ld b, b
    and e
    ld h, b
    and d
    add b
    ret nz

    db $e3
    dec [hl]
    ld b, e
    db $ed
    and d

jr_05e_5d59:
    ld c, $41
    ld c, h
    ld c, h
    ldh [$60], a
    xor d
    push hl
    jp nz, $80e3

    ld b, a
    inc bc
    ld b, h
    ld [bc], a
    ld h, d
    ld l, e
    ld c, e
    add e
    call nz, Call_05e_7d00
    db $e3
    xor l
    ld b, l
    push hl
    ld b, d
    jr z, jr_05e_5d59

    inc b
    add h
    pop de
    nop
    ld b, c
    add $fe
    and c
    nop
    pop bc
    pop hl
    rlca
    jp nz, Jump_05e_405c

    ei
    ld h, h
    inc [hl]
    ld hl, $4290
    xor a
    and c
    dec l

jr_05e_5d8e:
    db $e3

jr_05e_5d8f:
    sub b
    inc b
    daa
    rst $20
    dec bc
    push bc
    ld [hl+], a
    ld d, l
    and b
    inc l
    ld sp, hl
    ld h, b
    or d
    add b
    dec c
    rlca
    dec bc
    dec l
    ld c, l
    jr nc, @+$25

    cp a
    ld [c], a
    sub b
    ld b, c
    ret nz

    push hl
    ld c, $66
    nop
    and a
    add hl, bc
    ld a, [bc]
    jr nz, jr_05e_5d36

    ld [hl+], a
    ld b, l
    pop bc
    pop hl
    daa
    adc a
    ld [c], a
    sub b
    ld b, l
    dec de
    add c
    ld d, b
    adc c
    call Call_000_2662
    ld c, h
    and c
    ret nz

    ld [$f94b], a
    ld h, l
    ld l, l
    ld c, a
    ld b, c
    jr nz, jr_05e_5d8f

    db $e4
    ld c, e
    and h
    ld c, c
    ld b, [hl]
    ld h, c
    daa
    add c
    ld h, b
    ld a, [hl+]
    add b
    db $e4
    ld e, $20
    ld [$a0f6], sp

jr_05e_5ddf:
    and b
    add e
    sub c
    inc bc
    dec c
    sub b
    ld b, c
    ret nz

    ld [c], a
    and a
    ld [$e9c0], sp
    adc [hl]
    xor l
    nop
    ld a, [bc]
    ld c, d
    ld a, [hl+]
    db $e3
    ld b, c
    ld b, b
    push hl
    ldh [$80], a
    ld c, l
    ld h, h
    jr z, jr_05e_5ddf

    ld d, e
    nop
    dec c
    jp z, $e160

    and d
    ld c, e
    ld c, e
    adc c
    inc bc
    jr c, jr_05e_5d8e

    ld b, $9d
    ld b, l
    ret nz

    ldh [$0a], a
    dec hl
    dec bc
    dec h
    jr nz, @+$42

    add sp, $10
    ld b, e
    ld h, e
    ld d, e
    ld [bc], a
    push af
    ld h, c
    add a
    ld [bc], a
    ld c, e
    rlca
    ld h, d
    rst $00
    xor b
    add h
    add h
    cpl
    dec bc
    dec bc
    ld c, d
    ld a, [bc]
    pop bc
    pop hl
    dec bc
    sbc l
    ld h, b
    ld a, [hl]
    inc hl
    db $10
    ld a, d
    ld b, d
    jr nc, @+$06

    jp hl


    inc bc
    ld [c], a
    jr nz, jr_05e_5e48

    ld b, [hl]
    ld b, b
    ld a, [hl]
    and $04
    daa
    ld b, $06
    and c
    ld l, e
    dec hl
    ld l, b
    ld b, b

jr_05e_5e48:
    add b
    ret nz

    ld a, [hl]
    inc h
    pop bc
    and $7a
    and b
    ld a, [bc]
    xor l
    jp nz, $610d

    ld h, b
    ld c, e
    and e
    ld [bc], a
    ld a, $e9
    inc e
    ld b, [hl]
    sub [hl]
    ld h, c
    ld [hl-], a
    ld a, [bc]
    jr nz, @+$0d

    ld c, $80
    jp Jump_000_0ea3


    ld c, $18
    and b
    sub [hl]
    inc bc
    ld b, $13
    ld hl, $0d0b
    rra
    ldh [$b5], a
    db $e3
    db $fd
    jp Jump_000_0949


    add $82
    or b
    ld h, l
    ld b, c
    sub e
    jr nz, jr_05e_5ec6

    add b
    rst $38
    inc h
    dec l
    dec c
    ld d, [hl]
    dec b
    ld c, e
    ld a, [hl]
    ld c, d
    ld b, c
    ld c, d
    ld a, [bc]
    ld l, e
    dec hl
    ld a, [bc]
    ld l, d
    dec e
    add c
    inc bc
    ld c, l
    dec l
    ld b, d
    and e
    ld a, [$1ce4]
    ld b, d

jr_05e_5e9e:
    xor b
    ld hl, $c21e
    ret nz

    pop hl
    nop
    ld h, $84
    add l
    and d
    ld [$cb45], a
    ld bc, $2060
    add h
    ld hl, $c23a
    ld b, c
    add hl, hl
    nop
    ld d, a
    ld b, b
    ret nz

    db $e3
    scf
    ret nz

    ret nz

    push hl
    xor l
    ld h, e
    ld d, [hl]
    ld [bc], a
    ld l, [hl]
    ld h, d
    dec [hl]

jr_05e_5ec5:
    ld h, b

jr_05e_5ec6:
    ld bc, $456b
    ld [hl+], a
    sbc h
    ld h, c
    jp hl


    add b
    ld a, c
    add $54
    add h
    adc l
    ld h, d
    ret nz

    db $e3
    ld [$22bf], sp
    inc bc
    and l
    ld b, e
    ld [c], a
    ld c, h
    ret nc

    ld b, b
    adc c
    ld b, d
    ld e, [hl]
    ld h, e
    ld a, [$80c4]
    ret nz

    rst $20
    sbc c
    ld h, d
    dec a
    and e
    cp a
    pop bc
    call nz, $e020
    ld b, $70
    ld b, d
    ld c, h
    ld [bc], a
    ld a, d
    jp nz, Jump_000_362b

    jr nz, jr_05e_5e9e

    ret nz

    cp a
    jp hl


    add l
    ld b, h
    ld c, $c0
    ld h, $22
    ld h, b
    cp [hl]
    add d
    ld a, l
    pop bc
    cp l
    jr nz, jr_05e_5f6c

    inc b
    ld c, [hl]
    ld bc, $2c4c

jr_05e_5f13:
    db $ed
    and b
    ld b, $60
    jr nz, jr_05e_5f83

    ld l, d
    ld h, b
    jp nz, $83dd

    sbc a
    and e
    ld b, l
    add h
    ld b, a
    jr nz, jr_05e_5ec5

    ld a, [hl+]
    nop
    call nz, $dd84
    inc h
    ld hl, sp+$02
    ld b, c
    ld h, d
    ld c, h
    ld h, a
    ld b, d
    dec hl
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, d
    or e
    rlca
    ld h, [hl]
    ld b, c
    adc c
    ld h, l
    add c
    push bc
    add b
    inc bc
    ld b, d
    ld h, $04
    cp [hl]
    pop hl
    xor h
    ld h, b
    add e
    add c
    ret nz

    pop hl
    and d
    and c
    dec hl
    nop
    sbc [hl]
    inc bc
    db $fd
    call nz, $859f
    ld c, e
    ld h, d
    adc [hl]

jr_05e_5f5a:
    and b
    jp nc, $b303

    and e
    ret c

    ld h, b
    dec e
    ld c, l
    inc bc
    ld b, h
    ld l, h
    ld c, e
    ld l, e
    add b
    ldh [$a3], a

jr_05e_5f6b:
    nop

jr_05e_5f6c:
    push bc
    ld b, b
    add b
    ld b, b
    pop bc
    dec de
    ld b, e
    sub c
    jr nz, jr_05e_5f13

    and b
    dec bc
    ld l, b
    ld b, h
    ld h, c
    cp a
    db $e4
    ld c, e
    ret nz

    ret z

    ld b, b
    ld a, l
    ld [bc], a

jr_05e_5f83:
    ld a, [hl]
    ld b, b
    adc b
    jp nz, $21b2

    ld b, e
    ldh [rOCPS], a
    ld a, [bc]
    ld bc, $df0a
    dec b
    add hl, sp
    and [hl]
    ld [hl], c
    push bc
    jr z, jr_05e_5f5a

    ld a, a
    db $e4
    ld bc, $22a0
    inc h
    jr @-$12

    ld hl, $242d
    nop
    and b
    ld a, [bc]
    ld a, [bc]
    or l
    ld b, l
    db $ec
    jr nz, jr_05e_5f6b

    xor $00
    dec h
    push hl
    jp c, Jump_05e_6342

    push bc
    xor e
    jr nz, jr_05e_5fc4

    push bc
    ld a, a
    and b
    push af
    ld b, c
    cpl
    ret nz

    nop
    jr nz, jr_05e_6022

    ld a, [hl-]
    and e
    sbc a
    push hl

jr_05e_5fc4:
    rst $20
    and h
    cp l
    jp Jump_000_20c7


    cp h
    and a
    adc $a6
    nop
    dec e
    ld h, h
    cpl
    ld b, c
    ld d, [hl]
    jr nz, @-$1f

    ld b, d
    ret c

    inc hl
    ld a, a
    add sp, $12
    ld b, l
    ld hl, $00e6
    ld a, $c4
    and [hl]
    call nz, $22b7
    inc l
    add l
    ld a, a
    inc bc
    add $40
    jp z, $65e6

    db $e3
    db $10
    ld [hl], h
    and e
    ei
    add [hl]
    cp a
    daa
    pop af
    and l
    dec l
    inc l
    add d
    ld [hl], l
    ld b, d
    add d
    db $e4
    nop
    ld a, l
    push hl
    sub e
    jr z, jr_05e_6068

    and [hl]
    ld a, a
    ld h, $c4
    add c
    rst $18
    inc bc
    pop bc
    db $e4
    ld b, l
    ld h, l
    nop
    ld a, [hl]
    push hl
    ld hl, sp-$7e
    add d
    ld b, h
    ld [hl+], a
    call nz, $e360
    ld l, [hl]
    ld b, h
    add hl, sp
    add h
    ld a, [c]
    ld [hl+], a

jr_05e_6022:
    add b
    inc a
    ld h, $21
    daa
    ret nz

    db $e3
    add d
    ld b, l
    ld [$1e06], a
    add $67
    ld h, e
    dec l
    add b
    ld a, [c]
    inc hl
    and b
    add a
    ld hl, $4025
    jp hl


    rst $10
    inc h
    db $db
    ld [bc], a
    ld b, b

Call_05e_6040:
    rst $20
    dec c
    dec b
    ld l, l
    xor l
    jr nz, @+$4f

    cp a
    ldh [$ae], a
    ld h, b
    or a

Call_05e_604c:
    inc h
    call nc, Call_05e_5ba0
    ld h, [hl]
    nop
    add h
    ld [bc], a
    add d
    ld b, e
    ld e, b
    inc h
    and l
    ld b, d
    db $ec
    push hl
    xor l
    ld b, e
    cp a
    ld [c], a

Jump_05e_6060:
    ld b, e
    and c
    nop
    db $fc
    inc hl
    or c
    ld [c], a
    ld e, e

jr_05e_6068:
    ld h, h
    cp e
    ld b, c
    add d
    ld b, [hl]
    ld h, h
    ld c, b
    ld [hl], e
    ld b, b
    pop hl
    add d
    nop
    xor $c5
    ld h, $81
    ld h, h
    ld bc, $0449
    cpl
    db $e4
    push de
    ld bc, $a63f
    and h
    pop bc

Jump_05e_6084:
    nop
    dec de
    dec h
    ld a, [hl]
    and e
    ret nc

    add $6c
    and c
    add h
    push bc
    dec de
    ld h, e
    cp [hl]
    dec b
    or $e6
    ld bc, $464d
    ld bc, $6266
    ld a, $03
    sbc a
    inc bc
    sla [hl]
    cp l
    ld a, [bc]
    pop bc
    ld [hl+], a
    ld bc, $954d
    inc b
    ld hl, sp-$1f
    jp $63e5


    daa
    jp hl


    ld [c], a
    pop af
    db $e4
    xor d
    db $e4
    nop
    db $f4
    db $ec
    add hl, sp
    ld h, h
    ld e, [hl]
    rst $20
    sub [hl]
    jp hl


    sbc b
    ld c, b
    ret nz

    xor $00
    nop
    nop
    rst $38
    sbc $df
    ldh [$e1], a
    and b
    ld [c], a
    db $e3
    db $e4
    rst $38
    push hl
    and $da
    db $db
    call c, $a0a0
    and b
    sbc a
    ret nc

    pop de
    jp nc, $a0d3

    db $fd
    ldh [$ed], a
    ld [c], a
    db $dd
    ld hl, sp-$1e
    ld [c], a
    rst $20
    ld [c], a
    push af
    db $e3
    ret nc

    pop de
    and b
    call nc, $03d5
    jp nc, $ddd3

    ldh [$dc], a
    pop hl
    jp nc, $c6e1

    pop hl
    ret


Jump_05e_60fa:
    ldh [$df], a
    push hl
    inc e
    jp hl


    db $e3
    rst $28
    pop hl
    call nc, $a0d5

Call_05e_6105:
    cp e
    jp hl


    sbc l
    ld [c], a
    and a
    pop hl
    inc de
    sub $d7
    rst $18
    db $e4
    sub h
    db $e4

Jump_05e_6112:
    and b
    and b
    db $e3
    ld a, h
    db $e3
    and b
    ldh [rNR34], a
    ld a, h
    ldh [$9f], a
    sbc l
    sbc l
    sbc a
    ret c

    ld [c], a
    ld l, l
    ld [c], a
    add $e3
    db $fc
    add l
    pop hl
    sbc b
    ld [c], a
    ret c

    reti


    and b
    sbc a
    and d
    sbc l
    add d
    rst $38
    ldh [$9f], a
    sub h
    db $e4
    add a
    db $e4
    ld a, e
    ld [c], a
    ld b, h
    ldh [$e3], a
    ldh [$9c], a
    rrca
    ld b, [hl]
    xor [hl]
    sbc h
    sbc a
    ret c

    ldh [$e6], a
    rst $20
    ld [hl], e
    ldh [$e5], a
    pop hl
    db $fc
    xor b
    pop hl
    and c
    ldh [$9c], a
    ld b, l
    ld [hl], $a6
    ld [hl], $45
    pop hl
    sbc h
    db $f4
    ldh [$90], a
    pop hl
    inc bc
    rst $20
    add d
    pop hl
    sbc a
    sbc h
    ld b, e
    rra
    ld b, c
    ld b, e
    ld b, e
    xor a
    ld b, e
    ld [c], a
    pop hl
    jp hl


    rst $00
    ld c, e
    ld [c], a
    sbc a
    sbc a
    sbc h
    ld b, [hl]
    ld b, [hl]
    sbc h
    add [hl]
    ldh [$c1], a
    ldh [$62], a
    jp Jump_05e_66a7


    cp a
    ld [c], a
    call nc, $e2c0
    ret z

    add d
    pop hl
    sbc h
    ld [hl], $17
    dec sp
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    and c
    pop hl
    jp hl


    add $4b
    ld [c], a
    rst $38
    sbc h
    ld b, [hl]
    ld [bc], a
    inc b
    inc bc
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    cp a
    xor [hl]
    ld [hl], $62
    ld h, a
    dec [hl]
    ld l, b
    cp a
    db $e3
    ret nc

    ld a, h
    ld [c], a
    ret


    add c
    ret nz

    sbc [hl]
    ld b, h
    inc a
    and h
    ld h, h
    rst $38
    ldh [$8f], a
    and l
    inc a
    ld b, h
    sbc [hl]
    inc c
    ld [c], a
    jp hl


    push bc
    add e
    pop hl
    ld [bc], a
    rst $38
    rrca
    sbc b
    dec c
    inc b
    inc b
    ld [bc], a
    xor a
    xor b
    ld [hl], a
    xor c
    ret z

    dec [hl]
    cp a
    ld [c], a
    sbc [hl]
    and b
    jp nc, $c845

    cp [hl]
    adc l
    pop bc
    sbc [hl]
    ld b, d
    dec [hl]
    ld l, c
    dec [hl]
    rst $38
    ldh [rOCPS], a
    di
    dec [hl]
    ld b, d
    ld h, c
    ld [c], a
    dec hl
    jp $d3d2


    sbc a
    sbc h
    rst $18
    xor [hl]
    dec b
    rlca
    rrca
    sbc b
    rst $38
    pop hl
    rrca
    ld [bc], a
    rst $38
    ld [hl], $6e
    ld l, a
    ld l, h
    dec [hl]
    dec [hl]
    xor d
    xor e
    pop hl
    ld [hl], $9d
    ldh [$be], a
    ret


    ld h, l
    ret nz

    ret nz

    pop hl
    and e
    dec [hl]
    dec [hl]
    push bc
    and e
    ret nz

    ldh [$ae], a
    ld a, a
    ldh [rIE], a
    and d
    ld l, e
    pop bc
    sbc [hl]
    ld b, [hl]
    rst $38
    xor a
    ld b, $01
    nop
    sbc c
    sbc b
    sub a
    sbc b
    rst $28
    sbc c
    sbc e
    ld [$bf45], sp
    ldh [$c8], a
    ld l, h
    ld l, a
    add l
    ld l, [hl]
    ret nz

    ldh [$d0], a
    ld [c], a
    and c
    ld b, d
    push hl
    ld h, l
    ret nz

    ld b, b
    ldh [rOCPD], a
    ld a, l
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    ld b, h
    xor a
    and c
    rst $38
    and h
    sbc $e9
    jp nz, Jump_05e_4646

    ld [$c199], sp
    ld [c], a
    ld bc, $f300
    ld b, $46
    cp a
    pop hl
    pop bc
    ldh [rLYC], a
    and c
    and b
    jp nc, Jump_05e_4284

    rst $00
    add d
    jp $c045


jr_05e_6261:
    push bc
    ld h, b
    jp nz, $e427

    add [hl]
    ret nz

    inc bc
    db $fd
    inc b
    ld b, d
    ldh [$97], a
    sub [hl]
    sub a
    sbc b
    rrca
    rlca
    rlca
    dec b
    ld b, [hl]
    ld b, l
    ld a, [hl]
    ldh [$c1], a
    ldh [$5c], a
    add $e3
    and d
    sbc c
    db $e4
    adc l
    ld b, l
    ld b, b
    pop bc
    ld b, c
    ld b, e
    ld hl, $6cc2
    and h
    ld b, a
    ret nz

    ld [bc], a
    ld sp, hl
    dec c
    jp nz, $c1e0

    ld [c], a
    ld [bc], a
    xor [hl]
    ld b, l
    scf
    jr c, jr_05e_6261

    add hl, sp
    ld b, l
    ld [hl], $81
    jp $a090


    ld [$d2a1], sp
    db $d3
    ld e, $04
    jp Jump_05e_4546


    ld d, b
    ld b, l
    ld e, [hl]
    pop bc
    rla
    ret nz

    sub $a1
    ld e, [hl]
    add l
    and h
    and c
    ld b, [hl]
    dec b
    ld c, $c2

Jump_05e_62ba:
    pop hl
    sub [hl]
    add c
    ldh [rIE], a
    ld b, $46
    xor a
    ld [hl], $35
    dec [hl]
    ld a, [hl-]
    ld b, l
    pop hl
    ld b, l
    sbc l
    and b
    push af
    add c
    ld [$e0a8], sp
    and b
    ld b, h
    ld c, c
    ld e, l
    ccf
    ld d, l
    ld b, l
    ld b, [hl]
    xor [hl]
    xor a
    sbc h
    sub a
    and c
    xor a
    add e
    xor [hl]
    ld l, e
    pop bc
    ld b, [hl]
    ld b, $9a
    ld b, h
    ldh [$95], a
    ld b, d
    ldh [$0e], a
    rst $30
    dec b
    ld b, [hl]
    add hl, sp
    ld h, b
    ret nz

    ld a, [hl-]
    ld b, l
    xor [hl]
    xor a
    pop af
    sbc [hl]
    push af
    add e
    dec b
    add $a1
    and b
    ld b, e
    ld a, [hl+]
    ld a, [hl+]
    ld d, d
    adc a
    ld h, b
    ld d, l
    ld b, [hl]
    xor a
    call nz, $afa2
    add h
    ld l, e
    pop bc
    ld b, [hl]
    ld sp, hl
    ld b, $86
    ret nz

    add d
    pop hl
    sbc c
    rrca
    dec b
    xor [hl]
    ld a, [hl-]
    ccf
    dec [hl]
    dec [hl]
    dec sp
    add hl, sp
    ld b, [hl]
    xor a
    ld h, c
    ret nz

    push af
    add b
    db $fc
    or [hl]
    add [hl]
    ld a, [hl+]
    and b
    xor [hl]
    ld b, l
    ld c, e
    ld a, [hl+]
    jr nz, @+$2f

    rra
    ld d, [hl]
    ld d, l
    ld b, [hl]
    ld b, [hl]
    sbc [hl]
    add d
    add c
    ret z

    add h
    ld l, e
    pop bc
    ld hl, sp+$40
    ld [c], a
    pop bc
    pop hl
    add e
    ret nz

    xor a

Jump_05e_6342:
    inc a
    jr c, jr_05e_637c

    ld b, e
    call z, $e01b
    sbc e
    ld [c], a
    ret nc

    pop de
    ld a, [bc]
    add c
    inc c
    add d
    and c
    ld b, [hl]
    ld a, a
    xor a
    ld b, l
    ld d, [hl]
    ld c, c
    ld a, [hl+]
    inc h
    ld [hl], $ff
    ret nz

    ret


    and c
    ld e, d
    adc c
    pop bc
    jp nz, Jump_05e_7f0f

    pop hl
    add b
    pop hl
    ld [bc], a
    ld [hl], $bd
    inc a
    ld [c], a
    ret nz

    dec b
    rlca
    rlca
    ld [bc], a
    db $dd
    pop bc
    jp nc, $d3e9

    ret nz

    ld h, c
    push af
    ld h, d
    sbc [hl]

jr_05e_637c:
    ld h, $a0
    ld b, e
    ld d, [hl]
    ld d, l
    ld bc, $e43c
    ret nz

    jp Jump_05e_65c0


    db $e4
    ld d, [hl]
    add d
    ret


    add b
    call nz, $c1a3
    pop bc
    ld l, a
    ld a, [hl+]
    ld hl, $af36
    ldh a, [$e0]
    sbc c
    sbc d
    or $c0
    ld [hl], b
    pop bc
    and b
    ret nz

    ld h, h
    xor b
    ld h, b
    ret nz

    pop hl
    ld b, l
    ld c, e
    ld d, [hl]
    ld [hl+], a
    ldh [$33], a
    ld b, b
    xor [hl]
    add d
    jp nz, Jump_05e_60fa

    sbc l
    sbc h
    db $76
    ret nz

    cp $e1
    ei
    dec b
    ld c, $ff
    call nz, Call_000_2a06
    ld a, [hl+]
    ld [bc], a
    ld [bc], a
    ld c, $f4
    and c
    sbc c
    sbc e
    ld b, $19
    ldh [$80], a
    add l
    ld c, h
    ld h, b
    ret nz

    ld [c], a
    dec bc
    ld d, e
    ld d, e
    ld [c], a
    ret nz

    add hl, sp
    sbc a
    ldh [$58], a
    add b
    ld d, d
    add b
    db $76
    ret nz

    ld a, [c]
    ret nz

    ld [c], a
    xor [hl]
    push bc
    add c
    cp a
    jp nz, Jump_000_040f

    inc b
    rrca
    dec bc
    rrca
    dec c
    ld [hl], $a1
    sbc c
    ret nz

    pop hl
    add b
    add l
    ld [hl+], a
    add h
    jp nz, $f0a0

    inc hl
    jp nz, $a3fd

    ld d, l
    add b
    pop bc
    db $e4
    xor a
    xor [hl]
    ld b, [hl]
    ld [$7f00], sp
    jp $e3ff


    ld [hl], $a0
    ld [hl], $c1
    rra
    and b
    add b
    add e
    ld a, a
    call nz, $e295
    cp a
    inc a
    dec [hl]
    dec [hl]
    ld [hl], $45
    xor [hl]
    add $e0
    ld [de], a
    ld [hl], l
    inc de
    rst $38
    pop hl
    ld [de], a
    cp d
    ld [c], a
    xor a
    ld b, [hl]
    ld b, $42
    and c
    inc hl
    sub [hl]
    sub a
    ret nz

    add b
    call nz, $bee0
    pop hl
    ld [$c159], sp
    add $42
    ret z

    ld a, a
    and e

Call_05e_643c:
    sbc h
    add c
    adc b
    and b
    xor a
    ld hl, $3ec0
    ld [c], a
    ld [de], a
    ld [de], a
    ccf
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld [de], a
    cp a
    pop hl
    bit 4, b
    add c
    ld b, $c2
    add c
    pop bc
    pop hl
    ld a, d
    add c
    cp d
    add c
    ret nz

    call nz, $4866
    sbc a
    jp hl


    sbc h
    ld [de], a
    pop hl
    and c
    and e
    ld [de], a
    add a
    ldh [$80], a
    dec l
    cpl
    rla
    ld a, [hl+]
    ld a, a
    ld a, l
    ld a, c
    db $e3
    inc de
    ret z

    db $e3
    jp nz, $ff80

    pop hl
    add [hl]
    ei
    ret nz

    sbc c
    db $10
    add b
    pop bc
    scf
    ld b, c
    ld h, [hl]
    ld b, [hl]
    db $fd
    jp $eeae


    pop bc
    ld h, b
    ld [hl], $45
    ld de, $6058
    add d
    add e
    ld a, [hl+]
    rst $30
    jr nc, jr_05e_64da

    add c
    ld a, a
    jp nz, Jump_05e_4145

    inc bc
    inc b
    rlca
    rlca
    rrca
    sbc c
    ld bc, $6bc0
    ldh [rOCPS], a
    ldh [$36], a
    ld h, d
    ret nz

    add h
    ld hl, sp+$3d
    push hl
    and $20
    sbc $41
    xor a
    inc a
    dec [hl]
    inc a
    ld b, h
    rst $38
    ld b, [hl]
    ld de, $46ae
    xor [hl]
    add l
    add [hl]
    add e
    rst $00
    dec hl
    add e
    add h
    xor d
    jp Jump_05e_4090


    ei
    and c
    ld b, $79
    rlca
    ld a, [hl]
    ld a, [hl+]
    cpl
    ld l, d
    pop hl
    ld sp, hl
    ld b, b
    ret nz

    add h
    adc c
    ld hl, $2398

jr_05e_64da:
    cp h
    ld d, $a2
    ld a, [hl]
    jp nz, $ae39

    ld de, $8baf
    ret nz

    add l
    rst $08
    add a
    adc b
    add a
    add l
    ld [hl], h
    add b
    sub b
    ld b, h
    dec b

jr_05e_64f0:
    ld c, $03
    ld c, $05
    ld l, h
    ldh [$c0], a
    ldh [$aa], a
    ldh [$9e], a
    add c
    or l
    ld hl, $225d
    ld h, h
    and e
    inc hl
    and $20
    and c
    cp e
    and c
    ld hl, $af80
    ld de, $c04c
    ret c

    ld c, d
    ret nz

    dec a
    jp nz, Jump_05e_4051

    ld h, a
    and e
    sub b
    ld b, c
    ld [bc], a
    ld [bc], a
    sbc c
    ld b, [hl]
    xor l
    ldh [rIE], a
    ldh [$87], a
    add l
    ld h, d
    ld b, d

jr_05e_6525:
    or l
    jr nz, @-$2e

    ld a, b
    ret nz

    ld h, [hl]
    rst $38
    ld h, h
    inc b
    add c
    ld b, l
    ld b, l
    ld [de], a
    ld [de], a
    add b
    pop hl
    inc e
    add hl, sp
    add b
    ld de, $4241
    xor b
    xor c
    pop de
    ld b, b
    ld c, a
    ld b, c
    rst $20
    ld h, b
    ld [$a064], sp
    add e
    inc hl
    ld l, a
    inc hl
    jp nc, $c641

    sbc h
    ld b, b
    ld d, $a1
    adc [hl]
    and b
    add d
    rlca
    ret nz

    ld [de], a
    rst $38
    and b
    ld a, [$fd60]
    ld [hl+], a
    db $ed
    jr nz, jr_05e_64f0

    ld b, c
    and e
    add b
    sub b
    ld b, b
    ld l, e
    ld [c], a
    jp hl


    ld b, b
    sbc b
    dec b
    inc b
    rst $20
    ret nz

    and [hl]
    ret z

    and b
    ld [de], a
    ld [bc], a
    ld a, [hl]
    jr nz, jr_05e_6525

    db $fd
    ldh [rNR41], a
    jp $c1aa


    ld c, a
    ld b, c
    sub b
    ld b, c
    ld l, e
    ld [c], a
    rlca
    sbc [hl]
    call nc, Call_05e_79d5
    nop
    ld a, l
    ld bc, $0161
    and a
    ld b, $62
    jr nz, jr_05e_65b3

    db $d3
    add e
    ld de, $46be
    ldh [$82], a
    sub b
    nop
    and c
    sub b
    ld b, l
    pop af
    add b
    ld b, $a4
    ld h, b
    sub $d7
    ld c, c
    inc h
    call nz, $c521
    inc h
    pop bc
    ld h, c
    ld [de], a
    and h
    add hl, de
    ld de, $267e
    ld d, [hl]

jr_05e_65b3:
    ld [c], a
    ret c

    reti


    jp hl


    ld b, c
    sub b
    ld b, d
    or d
    add b
    pop bc
    xor [hl]
    and h
    ld h, b

Jump_05e_65c0:
    adc c
    ld h, c
    adc e
    ld b, $df
    inc h
    db $e4
    nop
    xor a
    ld b, l
    bit 1, b
    ld c, b
    jp Jump_000_1141


    cp [hl]
    ld h, $3e

Jump_05e_65d3:
    inc hl
    sbc a
    sbc h
    pop de
    ld b, c
    db $ed
    ld b, b
    sub b
    ld b, b
    cp c
    add c
    xor a
    and a
    ld b, d
    ret nc

    pop de
    ld hl, sp+$0f
    ld h, $df
    inc h
    ld b, a
    pop bc
    ld d, c
    ld e, [hl]
    ld d, h
    dec hl
    cp l
    jr nz, @-$3e

    ld [c], a
    ld a, $24
    cp $00
    ld b, [hl]
    ld hl, $0153
    xor a
    xor l
    add c
    ld [hl-], a
    add e
    ldh a, [$89]
    inc bc
    push hl
    pop bc
    ld b, h
    push hl
    add d
    ld h, h
    ld c, d
    ld h, b
    ld l, $20
    ld bc, $402d
    pop hl
    ld a, [hl]
    dec h
    ld hl, $6f21
    nop
    ld d, e
    ld [bc], a
    rst $08

jr_05e_6619:
    ld b, b
    ld [hl-], a
    add l
    add $66
    inc bc
    jp nc, Jump_05e_65d3

    ld [bc], a
    ld bc, $c062
    db $e4
    ld d, [hl]
    jr nc, jr_05e_662d

    dec h
    ld b, d
    ret nz

jr_05e_662d:
    ret z

    ld a, e
    ld h, d
    pop bc
    ldh [rHDMA3], a
    inc bc
    db $f4
    ld h, c
    ld [c], a
    jr nz, jr_05e_6619

    daa
    pop bc
    rst $00
    inc h
    add l
    ld [bc], a
    ld bc, $0662
    and e
    ld b, l
    add hl, sp
    ld hl, $24f1
    ret nz

    pop hl
    ld a, [hl]
    inc h
    pop bc
    rst $20
    dec [hl]
    ret z

    or a
    cp b
    ld a, $a7
    ldh [$ae], a
    ld b, h
    ld c, c
    ld d, h
    ld b, h
    inc bc
    ld h, b
    daa
    pop bc
    adc b
    ld a, $e6
    inc bc
    ld b, d
    ld b, $a4
    ld a, [hl-]
    add $62
    ld c, $81
    add a
    and c
    sbc a
    ld a, $eb
    ld b, c
    ld [hl], $b9
    cp d
    dec [hl]
    dec [hl]
    sub l
    ld bc, $61ad
    ld b, $1f
    ldh [$2a], a
    ld b, l
    ld h, b

jr_05e_667f:
    ld hl, $2346
    ld a, $e2
    ccf
    ld [bc], a
    inc e
    ld b, d
    rlca
    ld b, [hl]
    ld b, h
    inc a
    ld h, l
    ld b, b
    ld d, l
    ld h, b
    ld b, h
    add b
    sbc h
    and d
    dec hl
    ld b, c
    ld a, [c]
    add l
    and c
    ret z

    sub l
    ld bc, $6135
    ld c, d
    ld d, [hl]
    ld l, $30
    dec de

jr_05e_66a3:
    ld c, d
    ld d, d
    ld a, [hl-]
    and c

Jump_05e_66a7:
    sbc h
    sbc a
    ld c, h
    ld b, d
    ld h, c
    nop
    add a

jr_05e_66ae:
    ld b, $02
    dec b
    ld h, c
    ld a, [hl-]
    ld e, [hl]
    jp nz, $8004

    and [hl]
    ld h, e
    ld b, h
    and h
    pop bc
    ld [c], a
    db $e3
    ld b, d
    rrca
    ld b, e
    dec l
    jr nc, jr_05e_6713

    ret nz

    ldh [$f1], a
    ld b, b
    dec h
    and e
    ld b, e
    ld h, e
    ld a, [bc]
    add a
    ld [bc], a
    xor [hl]
    jr z, jr_05e_66f3

    add hl, sp
    adc h
    add d
    ret nz

    ld [c], a
    xor $80
    xor [hl]
    add e
    jr c, jr_05e_66a3

    and d
    xor b
    ld h, b
    ld [$4681], a
    ld b, l
    inc sp
    add l
    jr nz, jr_05e_667f

    and d
    or a
    sbc h
    sbc l
    and d
    inc e
    ld b, b
    call nc, $c2d5
    inc bc

jr_05e_66f3:
    sbc [hl]
    dec de
    xor [hl]
    xor a
    ld [bc], a
    ldh [$35], a
    ld b, b
    dec e
    jp nz, Jump_05e_6084

    add d
    ld [bc], a
    jr c, jr_05e_66ae

    add b
    inc bc
    and d

jr_05e_6706:
    adc b
    add d
    ld [de], a
    ld [de], a
    ld b, l
    xor [hl]
    ld b, d
    or b
    ld b, b
    ld l, h
    inc l
    ld b, e
    ld e, l

jr_05e_6713:
    ld [bc], a
    sub $d7
    jp nz, $9e03

    xor a
    ld b, a
    ld b, c
    and b
    ld bc, $96e1
    pop hl
    cp a
    jp $8183


    jp $ae01


    inc de
    ld hl, $1f46
    ld de, $3842
    scf
    ld b, l
    ld h, $81
    ld l, [hl]
    ld b, d
    cp a
    push hl
    ld [$01be], sp
    ld bc, $81c3
    pop hl
    inc a
    and [hl]
    db $e4
    call c, Call_000_3ce3
    ld bc, $01c3
    ld a, [c]
    cp a
    ld h, b
    ld b, e
    rst $28
    ld h, b
    ld h, d
    pop bc
    ld b, e
    ld b, a
    ld d, h
    ld d, e
    nop
    db $e4
    ld h, b
    cp a
    and $3f
    ld b, d
    ld bc, $88e2
    ld b, d
    ld a, [hl+]
    nop
    ld h, l
    db $e4
    inc b
    ld b, h
    ld a, [hl]
    reti


    ld h, c
    and c
    ld b, [hl]
    ld b, l
    ld a, [hl+]
    cpl
    dec l
    or b
    ld b, b
    ld a, $e0
    ret nz

    ld [hl], $54
    ld h, c
    ld h, c
    ld d, l
    rst $20
    inc h
    ei
    db $e4
    jr nc, jr_05e_6706

    ld h, l
    pop bc
    call nz, $2352
    ld b, $42
    sbc h
    sbc l
    dec sp
    ld b, b
    jp nz, $cf01

    ld b, l
    ld a, [hl+]
    jr nz, jr_05e_67c1

    ld [hl], b
    ld b, b
    jr z, jr_05e_67f3

    inc hl
    cpl
    add a
    ld a, [hl+]
    ld d, [hl]
    ld d, [hl]
    ld h, d
    daa
    ccf
    ld hl, $e382
    ld d, $60
    add hl, sp
    db $eb
    jr c, jr_05e_67dc

    ld [de], a
    inc h
    xor a
    sbc e
    ld b, c
    ld a, [hl+]
    add c
    sbc [hl]
    db $ec
    cp [hl]
    nop
    ld a, h
    inc h
    dec hl
    cp l
    ret nz

    pop hl
    ld c, e
    ld d, [hl]
    dec hl
    rlca
    inc l
    ld a, [hl+]
    ld c, e
    nop
    ret nz

    jr z, jr_05e_67e4

jr_05e_67c1:
    sbc d
    ld bc, $650b
    inc h
    and c
    ld a, h
    db $dd
    add d
    sub c
    ld [bc], a
    add d
    add e
    dec hl
    cp [hl]
    jr nc, @-$3e

    ldh [$f8], a
    cpl
    ld b, b
    ld b, d
    ld [bc], a
    ld b, l
    jp nz, Jump_05e_45ae

jr_05e_67dc:
    ld d, e
    ld d, h
    ld e, l
    inc de
    ld d, h
    ld c, c
    add c
    ld [c], a

jr_05e_67e4:
    rst $28
    ld hl, $3945
    and l
    ld b, l
    add c
    sbc d
    inc b
    inc a
    ld h, [hl]
    call nz, Call_05e_4007
    dec l

jr_05e_67f3:
    ld a, [hl+]
    add c
    and c
    ld h, b
    ld b, d
    xor b
    inc b
    ld e, $9d
    db $e3
    ld d, d
    ld d, h
    ld d, h
    ld d, l
    or b
    inc hl
    rst $28
    ld [hl+], a
    jr nz, jr_05e_6868

    ld h, e
    call nc, Call_05e_47d5
    ld bc, $0993
    cp a
    db $e3
    add e
    add h
    sub a
    ld h, d
    add h
    and l
    ld h, e
    xor c
    push bc
    ld b, l
    rst $38
    ldh [$5a], a
    inc bc
    rst $28
    ld [hl+], a
    ld a, [hl-]
    and c
    sub $31
    rst $10
    sbc a
    push hl
    ld c, h
    inc b
    ld a, h
    ld [c], a
    add l
    add a
    dec e
    ld b, h
    xor b
    inc bc
    ld b, b
    adc $a5
    ld b, c
    ld b, c
    pop bc
    db $e3
    rst $28
    inc hl
    sbc a
    ld b, b
    ld e, $c1
    xor [hl]
    ld [hl-], a
    ldh [rP1], a
    ld a, a
    and $42
    add h
    sub b
    ld h, b
    ei
    add l
    db $e3
    and b
    db $ec
    db $e4
    xor h
    inc hl
    or b
    ld hl, $6b00
    add b
    inc l
    add b
    sbc a
    ld b, b
    adc c
    ld [bc], a
    ld hl, $5d22
    db $e4
    jp nz, Jump_000_1a65

    add h
    ld d, b
    dec de
    add b
    add c
    ld b, b

jr_05e_6868:
    ld l, [hl]
    ld b, l
    dec a
    ld h, c
    ld b, l
    inc l
    add b
    and e
    inc l
    add d
    ld c, [hl]
    ld a, e
    ld hl, $a0d3
    sbc [hl]
    ld hl, $6324
    ld h, e
    ld b, h
    add d

jr_05e_687e:
    ld b, [hl]
    ld b, d
    and d
    and [hl]
    sbc [hl]
    db $ec
    add sp, $7b
    ld h, c
    ld a, [c]
    dec h
    add b
    inc b
    sbc [hl]
    ld hl, $0625
    ld b, e
    ld bc, $42af
    add d
    ld b, [hl]
    ld [hl+], a
    jp Jump_05e_4226


    ld l, [hl]
    ld b, [hl]
    add e
    call nz, $2c0c
    add d
    add b
    inc b
    and b
    sbc [hl]
    ld hl, $2427
    ld h, b
    ret nz

    ldh [$82], a
    ld b, [hl]
    db $10
    inc a
    add e
    ld h, h
    add b
    ld l, [hl]
    ld b, [hl]
    inc bc
    ld [hl+], a
    sbc h
    ld a, [c]
    inc hl
    jr nz, jr_05e_687e

    ld e, h
    ld h, b
    or h
    ld hl, $9725
    add c
    ld b, h
    add d
    ld b, h
    xor h
    ld b, d
    ld a, h
    ld h, l
    sbc [hl]
    ld h, $ec
    and $3c
    ld b, h
    adc c
    nop
    call nc, Call_05e_4541
    inc l
    add c
    or a
    inc hl
    db $10
    inc e
    ld h, b
    cpl
    and $c1
    add c
    ret nz

    push bc
    xor l
    ld e, [hl]
    ld bc, $421f
    pop de
    pop hl
    nop
    ld l, [hl]
    ld c, b
    dec l
    add b
    cp a
    ldh [$7e], a
    ld h, e
    cp [hl]
    ld b, b
    add h
    ld h, c
    ld hl, $1f25
    ld b, d
    ld h, [hl]
    add d
    ld b, [hl]
    ret nc

    pop de
    ld e, e
    inc h
    sub b
    ldh [rSCX], a
    xor [hl]
    ld l, [hl]
    ld b, b
    nop
    cpl
    add b
    adc l
    ld b, b
    ld b, d
    ld hl, $c04d
    sbc [hl]
    ld h, l
    ld e, a
    ld [hl+], a
    ld hl, $cc23
    ld h, b
    inc c
    ld d, h
    and h
    jp nz, $d262

    db $d3
    ld e, e
    dec h
    inc hl
    ld hl, $636c
    jp z, $0042

    inc l
    ld hl, $8026
    and d
    jp $a19f


    jp c, $fe80

    pop hl
    or b
    ret nz

    or $e5
    nop
    ld h, c
    daa
    ld a, $03
    db $eb
    db $e3
    inc d
    add c
    ret nc

    ld b, e
    ld a, a
    inc hl
    ld b, b
    inc hl
    ld e, d
    jp $f400


    ld bc, $c3b0
    ld l, [hl]
    ld b, e
    ld h, c
    inc h
    ld a, $04
    db $eb
    db $e3
    or c
    and b
    adc b
    inc b
    inc sp
    ret nc

    pop de
    jp Jump_05e_7c20


    inc b
    jp nc, Jump_000_18d3

    jp nz, $e425

    ret nz

    inc c
    jp nz, $4523

    sbc l
    inc bc
    ld d, b
    ld bc, $e3c2
    db $eb
    and $d2
    db $d3
    nop
    ld h, l
    and b
    ld a, h
    ld [bc], a
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
    ld d, $04
    ld [bc], a
    ld bc, $0633
    ld [bc], a
    ld [bc], a
    add hl, hl
    ld [$0302], sp
    ld a, [de]
    add hl, bc
    ld [bc], a
    inc b
    ld [hl-], a
    inc c
    ld [bc], a
    dec b
    dec d
    dec c
    ld [bc], a
    ld b, $39
    dec c
    ld [bc], a
    rlca
    inc d
    ld c, $02
    ld [$0e38], sp
    ld [bc], a
    add hl, bc
    ld sp, $020f
    ld a, [bc]
    add hl, sp
    rrca
    ld [bc], a
    dec bc
    dec bc
    db $10
    ld [bc], a
    inc c
    inc sp
    ld de, $0d02
    inc d
    inc de
    ld [bc], a
    ld c, $1f
    inc de
    ld [bc], a
    rrca
    ld e, $14
    ld [bc], a
    db $10
    dec h
    inc d
    ld [bc], a
    ld de, $1518
    ld [bc], a
    ld [de], a
    inc h
    dec d
    ld [bc], a
    inc de
    ld h, $15
    ld [bc], a
    inc d
    db $10
    ld d, $02
    dec d
    ld d, $16
    ld [bc], a
    ld d, $0d
    rla
    ld [bc], a
    rla
    ld de, $0219
    jr jr_05e_6a12

    ld a, [de]
    ld [bc], a
    add hl, de
    ld a, [de]
    ld a, [de]
    ld [bc], a
    ld a, [de]
    ld d, $1b
    ld [bc], a
    dec de
    add hl, de
    dec de
    ld [bc], a
    inc e
    dec de
    dec de
    ld [bc], a
    dec e
    ld hl, $021b
    ld e, $18

jr_05e_6a12:
    inc e
    ld [bc], a
    rra
    ld a, [de]
    inc e
    ld [bc], a
    jr nz, jr_05e_6a36

    inc e
    ld [bc], a
    ld hl, $1d11
    ld [bc], a
    ld [hl+], a
    add hl, de
    dec e
    ld [bc], a
    inc hl
    dec de
    dec e
    ld [bc], a
    inc h
    ld l, $1d
    ld [bc], a
    dec h
    jr nc, jr_05e_6a4c

    ld [bc], a
    ld h, $10
    ld e, $02
    daa
    rla

jr_05e_6a36:
    ld e, $02
    jr z, jr_05e_6a54

    ld e, $02
    add hl, hl
    dec l
    ld e, $02
    ld a, [hl+]
    cpl
    ld e, $02
    dec hl
    ld sp, $021e
    inc l
    ld l, $1f
    ld [bc], a

jr_05e_6a4c:
    dec l
    jr nc, jr_05e_6a6e

    ld [bc], a
    ld l, $0c
    jr nz, jr_05e_6a56

jr_05e_6a54:
    cpl
    dec l

jr_05e_6a56:
    jr nz, jr_05e_6a5a

    jr nc, @+$0c

jr_05e_6a5a:
    ld hl, $3102
    inc l
    ld hl, $3202
    cpl
    ld hl, $3302
    daa
    ld [hl+], a
    ld [bc], a
    inc [hl]
    dec hl
    ld [hl+], a
    ld [bc], a
    dec [hl]
    dec l

jr_05e_6a6e:
    ld [hl+], a
    ld [bc], a
    ld [hl], $29
    inc hl
    ld [bc], a
    scf
    inc l
    inc hl
    ld [bc], a
    jr c, jr_05e_6aa4

    inc h
    ld [bc], a
    add hl, sp
    ld [hl-], a
    inc h
    ld [bc], a
    ld a, [hl-]
    jr nc, jr_05e_6aa8

    ld [bc], a
    dec sp
    inc sp
    dec h
    ld [bc], a
    inc a
    dec hl
    ld h, $02
    dec a
    db $10
    daa
    ld [bc], a
    ld a, $29
    daa
    ld [bc], a
    ccf
    ld c, $28
    ld [bc], a
    ld b, b
    ld de, $0228
    ld b, c
    inc [hl]
    jr z, jr_05e_6aa2

    ld b, d
    rrca

jr_05e_6aa2:
    add hl, hl
    ld [bc], a

jr_05e_6aa4:
    ld b, e
    dec [hl]
    add hl, hl
    ld [bc], a

jr_05e_6aa8:
    ld b, h
    ld [$022a], sp
    ld b, l
    ld c, $2a
    ld [bc], a
    ld b, [hl]
    db $10
    ld a, [hl+]
    ld [bc], a
    ld b, a
    inc sp
    ld a, [hl+]
    ld [bc], a
    ld c, b
    rlca
    dec hl
    ld [bc], a
    ld c, c
    rrca
    dec hl
    ld [bc], a
    ld c, d
    ld h, $2b
    ld [bc], a
    ld c, e
    dec c
    inc l
    ld [bc], a
    ld c, h
    ld [hl+], a
    inc l
    ld [bc], a
    ld c, l
    ld c, $2e
    ld [bc], a
    ld c, [hl]
    dec c
    cpl
    ld [bc], a
    ld c, a
    inc de
    cpl
    ld [bc], a
    ld d, b
    ld [hl], $2f
    ld [bc], a
    ld d, c
    ld b, $30
    ld [bc], a
    ld d, d
    inc c
    jr nc, jr_05e_6ae6

    ld d, e
    ld a, [hl-]

jr_05e_6ae6:
    jr nc, jr_05e_6aea

    ld d, h
    dec c

jr_05e_6aea:
    ld sp, $5502
    add hl, hl
    ld sp, $5602
    dec bc
    ld [hl-], a
    ld [bc], a
    ld d, a
    ld de, $0233
    ld e, b
    dec h
    inc sp
    ld [bc], a
    ld e, c
    inc c
    inc [hl]
    ld [bc], a
    ld e, d
    dec l
    inc [hl]
    ld [bc], a
    ld e, e

Jump_05e_6b05:
    cpl
    inc [hl]
    ld [bc], a
    ld e, h
    inc b

Jump_05e_6b0a:
    dec [hl]
    ld [bc], a
    ld e, l
    add hl, de
    dec [hl]
    ld [bc], a

Jump_05e_6b10:
    ld e, [hl]
    ld l, $35
    ld [bc], a
    ld e, a
    jr nc, @+$37

    ld [bc], a
    ld h, b
    cpl
    ld [hl], $02
    ld h, c
    rrca
    scf
    ld [bc], a
    ld h, d
    ld c, $38
    ld [bc], a
    ld h, e
    inc h
    jr c, jr_05e_6b2a

    ld h, h
    rrca

jr_05e_6b2a:
    add hl, sp
    ld [bc], a
    ld h, l
    inc hl
    add hl, sp
    ld [bc], a
    ld h, [hl]
    jr jr_05e_6b6d

    ld [bc], a
    ld h, a
    dec c
    dec sp
    ld [bc], a
    ld l, b
    scf
    dec sp
    ld [bc], a
    ld l, c
    daa
    inc a
    rst $38
    rst $38
    rst $38
    ld c, d
    ld l, e
    ld a, d
    ld l, e
    add hl, bc
    ld l, l
    sbc $6e
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

jr_05e_6b6d:
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

Jump_05e_6be4:
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

Call_05e_6c41:
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

Jump_05e_6c6c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05e_6cf5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, jr_05e_6dd9

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
    jr z, jr_05e_6deb

    ret nz

    rst $38
    ret nz

    adc $39
    ld l, h
    rst $38

jr_05e_6dd2:
    ld [c], a
    add hl, sp
    ld h, e
    ld sp, $c117
    pop hl

jr_05e_6dd9:
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

jr_05e_6deb:
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
    jr z, jr_05e_6dd2

    rla
    jp z, $c0ff

    xor e
    and b
    add b
    rst $38
    ld [c], a
    and b

Call_05e_6e03:
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

Call_05e_6e36:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05e_6ed5:
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
    jr nc, jr_05e_6f3d

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
    ld a, [de]
    ld l, a
    ld c, d
    ld l, a
    and e
    ld [hl], c
    dec e
    ld [hl], e
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

jr_05e_6f3d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $ed
    inc l
    rst $38
    rst $20
    inc c
    dec bc
    rst $38
    ldh [$2b], a
    dec hl
    dec bc
    adc e
    dec bc
    inc c
    rst $38

jr_05e_6f59:
    ldh [$4c], a
    db $fd
    ldh [$fc], a
    ldh [$f5], a
    ldh [$2c], a
    ldh a, [$fa]
    ld [c], a
    ldh a, [$ed]
    ei
    push hl
    pop bc
    db $ec
    ld l, e
    ld c, e
    dec bc
    dec hl
    inc b
    ret nz

    ld [c], a
    jp nz, Jump_05e_4ce1

    ld [c], a
    ldh [$c0], a
    pop hl
    ld a, [$f0e1]
    xor $c0
    db $ed
    cp $82
    pop hl
    ld l, e
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    dec bc
    ld c, e
    add b
    ret nz

    and $6b
    pop hl
    sbc [hl]
    ld [c], a
    ldh a, [$f0]
    add b
    db $ec
    ld b, e
    ldh [$c2], a
    ldh [$0b], a
    ld bc, $c04b
    push hl
    ld b, b
    ld [c], a
    add a
    ld [c], a
    pop bc
    db $e4
    ldh a, [$ec]
    ret nz

    ld a, [c]
    jp nz, $03e0

    ld c, e
    ld l, e
    nop
    db $e3
    ld b, b
    db $e3
    rra
    db $e4
    ldh a, [$f1]
    add sp, -$3c
    add c
    ld [$4100], a
    pop hl
    ret nz

    ret z

    cp a
    db $e3
    pop de
    jp $edf0


    ret nz

    call z, $e5c0
    ld a, a
    ret nz

    ldh [$80], a
    add sp, $7f
    pop bc
    add b
    jp hl


    ldh a, [$e9]
    ret nz

    xor $2b
    ld l, e
    ld c, e
    jr nc, jr_05e_6f59

    add sp, -$40
    ei
    inc a
    rst $00
    ret nz

    add sp, $2b
    ld c, e
    ld b, c
    ret nz

    ld b, b
    jp hl


    jr c, jr_05e_7039

    jp hl


    ldh a, [$eb]
    ret nz

    pop af
    dec bc
    dec hl
    ld c, e
    jp $80a1


    jp hl


    nop
    sub $a9
    ldh a, [$ed]
    ret nz

    ldh a, [$84]
    and c
    nop
    jp hl


    ret nc

    jp z, $ebf0

    ld a, e
    and [hl]
    ld b, $40
    and h
    ld l, h
    ld c, h
    ld b, h
    and h
    inc a
    and c
    ld b, b
    and [hl]
    add b
    call z, $ea2f
    nop
    ld b, b
    xor l
    inc bc
    and e
    cp [hl]
    ld [c], a
    rlca
    jp nz, $fb80

    nop
    or b
    add h
    ld [c], a
    jp nz, Jump_000_0180

    ld l, e
    ret nz

    ldh [rLY], a
    pop bc
    cp $e1
    ld [bc], a
    rst $00
    ldh a, [$eb]
    ld a, e
    and a
    add b
    adc b
    ld c, $43
    db $e3
    ld l, e

jr_05e_7039:
    dec hl
    ld a, [bc]
    add c
    add e
    ld a, a
    jp z, $edf0

    ret nz

    pop af
    ld c, $3d
    pop hl
    ld l, e
    ld l, e
    ld a, [bc]
    ld b, b
    pop hl
    add b
    db $e3
    add d
    xor c
    ldh a, [$eb]
    nop
    ld a, l
    add a
    push de
    push hl
    inc de
    add d
    ret z

    add sp, $00
    adc e
    call $c08a
    ld [$6ed5], a
    nop
    rst $00
    db $ec
    nop
    add a
    ld a, a
    call nc, Call_05e_6ed5
    rst $00
    ld l, d
    nop
    add h
    ld l, a
    adc $3c
    xor d
    nop
    push de
    ld l, e
    rst $00
    ld l, l
    db $ec
    push hl
    ld l, a
    jp z, $89fc

    push de
    ld l, [hl]
    jr jr_05e_70ec

    add c
    ld h, l
    nop
    ld l, a
    bit 7, h
    ld l, d
    push de
    ld l, d
    jr jr_05e_70ff

    ld l, a
    adc $3c
    ld l, c
    push de
    ld l, e
    ld b, c
    ldh a, [rP1]
    rst $30
    call nz, $f6fe
    push de
    ld l, h
    jr jr_05e_7109

    ld b, b
    rst $20
    add c
    xor e
    ld b, b
    db $ec
    sub l
    ld h, [hl]
    nop
    jr @+$70

    ld b, b
    sub c
    ld a, h
    ld c, d
    push de
    ld l, a
    rla
    sub c
    ld b, c
    rlc b
    rst $08
    inc sp
    db $f4
    nop
    ld b, b
    sub e
    ret nz

    xor $c0
    set 3, b
    ld d, b
    ld b, b
    sub l
    push de
    ld [hl], c
    ld e, c
    ld c, l
    ld b, c
    inc hl
    nop
    cp [hl]
    adc h
    ld h, a
    adc b
    add b
    xor $97
    adc h
    ld c, $25
    ret nz

    ld a, [c]
    push de
    ld l, [hl]
    jr jr_05e_7144

    nop
    cp $86
    jp $d595


    ld l, [hl]
    ld [$0e6a], sp
    jr nc, jr_05e_70e5

jr_05e_70e5:
    sub e
    jr jr_05e_7160

    adc a
    ld b, $00
    ld a, l

jr_05e_70ec:
    ld de, $ae66
    jr jr_05e_715c

    cp l
    ld l, $7d
    db $10
    sub l
    dec l
    add a
    jr z, jr_05e_7108

    dec hl
    nop
    ld h, l
    cp a
    ld [bc], a

jr_05e_70ff:
    db $ec
    cp [hl]
    inc c
    ld h, l
    cp a
    and h
    jp nc, $bf65

jr_05e_7108:
    sub l

jr_05e_7109:
    add hl, hl
    ld c, c
    daa
    nop
    ld c, $2e
    dec a
    ld de, $3195
    adc [hl]

jr_05e_7114:
    inc [hl]
    ret c

    adc $c0
    or e
    reti


    push bc
    ld c, $2f
    nop
    ld a, l
    inc de
    sub l
    ld l, $6e
    and d
    ld c, $31
    db $fd
    ld de, $2e95
    xor [hl]
    jr z, jr_05e_7114

    db $ed
    nop
    ld a, l
    ld de, $6e26
    ld [de], a
    ld h, d
    cp $0f
    ret c

    sub $ac
    inc sp
    add hl, hl
    or c
    dec a
    sub d
    ld [bc], a
    sub b
    jr nz, jr_05e_714f

    and e

jr_05e_7144:
    add c
    ld l, c
    db $fd
    sbc b
    sub b
    sub e
    add a
    ld h, h
    sub [hl]
    ld b, h
    ld l, d

jr_05e_714f:
    nop
    cp a
    ld [hl], d
    rst $00
    ld a, [$85c0]
    ld l, $41
    cp $34
    add l
    rst $38

jr_05e_715c:
    sbc a
    db $fc
    cp a
    ei

jr_05e_7160:
    nop
    ret nz

    rst $38
    sbc $fe
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
    ccf
    or d
    nop
    ld l, c
    sub e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b

Jump_05e_719f:
    sbc [hl]
    nop
    nop
    nop
    db $ed
    jr nz, @+$01

    rst $20
    ld c, $31
    rst $38

Call_05e_71aa:
    ldh [$5d], a
    ld e, h
    ld e, e
    db $e3
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $c1
    db $ec
    ld b, a
    ld c, l
    ld sp, $60e9
    ret nz

    rst $38
    ret nz

    pop af
    rrca
    jp nz, $46e1

    ld [hl], $32
    rst $20
    ld c, l
    ld sp, $ca5f
    rst $38
    add b
    rst $28
    ld [$3131], sp
    rst $38
    ld c, l
    ld b, [hl]
    ld [hl], $30
    jr nc, @+$32

    add hl, sp
    ld sp, $5ef9
    jp z, Jump_05e_40ff

    rst $28
    dec d
    ld sp, $3931
    ld l, d
    sbc l
    ld l, b
    rst $38
    ldh [rHDMA2], a
    ld sp, $ca31
    rst $38
    nop
    xor $00
    rst $38
    ld sp, $4931
    ld c, b
    ld h, a
    ld l, d
    ld l, h
    ld l, h
    di
    ld l, h
    ld d, e
    ret nz

    rst $38
    ret nz

    di
    add hl, sp
    jr nc, jr_05e_7271

    ld h, a
    rlca
    ld l, d
    jr nc, jr_05e_7239

    add b
    rst $38
    ret nz

    or $bf
    ldh [rLCDC], a
    rst $38
    ld b, b
    ld hl, sp+$06
    cp a
    ldh [$65], a
    ld h, l

jr_05e_7218:
    ret nz

    rst $38
    nop
    db $f4
    ccf
    pop hl
    ld b, b
    ldh [rP1], a
    rst $38
    ld b, [hl]
    ret nz

    push af
    ld c, c
    ld c, b
    ld bc, $00e0
    rst $38
    add b
    or d
    jr z, jr_05e_726f

    ret nz

    inc de
    ld sp, $003c
    rst $18
    ret nz

    or $17
    ld b, d

jr_05e_7239:
    and d
    add b
    cp a
    add b
    push af
    add e
    ld hl, $c229
    add c
    nop
    cp a
    ret nz

    sub l
    cp a
    push hl
    pop bc
    ldh [$5a], a
    jr c, jr_05e_7218

    rst $38
    add b
    sub b
    ld a, [hl]
    db $e3
    ld e, l
    ld e, h
    ld e, d
    ld b, b
    sbc a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_05e_726f:
    rst $38
    rst $38

jr_05e_7271:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_05e_737c

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
    ld e, c
    ld [hl], e
    adc c
    ld [hl], e
    ld d, h
    db $76
    ld c, [hl]
    ld a, b
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

jr_05e_737c:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    dec bc
    dec bc
    dec bc
    ld l, e
    dec bc
    dec bc
    ld c, e
    dec hl
    rst $38
    dec bc
    ld c, h
    ld c, h
    ld c, h
    inc c
    inc c
    inc c
    inc l
    rrca
    inc l
    inc l
    ld c, h
    dec bc
    rst $30
    pop hl
    ld a, [c]
    ldh [$fd], a
    push hl
    rst $20
    ld [c], a
    ldh a, [$f9]
    pop hl
    add sp, -$1e
    db $db
    ldh [$fd], a
    jp hl


    dec bc
    ld l, e
    ld l, e
    ld l, e
    ccf
    dec hl
    dec bc
    ld c, e
    ld c, e
    dec bc
    inc l
    ret nz

    ld [c], a
    cp [hl]
    pop hl
    ret nz

    ret nz

    ld [$e0b9], a
    or d
    db $e3
    ld hl, sp-$1a
    cp a
    db $eb
    jp nz, Jump_000_2be0

    dec hl
    ld b, $7f
    ldh [rWX], a
    ld c, e
    ret nz

    and $8e
    db $e3
    db $fc
    ld [$e280], a
    ld hl, sp-$1d
    ld hl, sp-$80
    db $ec
    jp nz, $c0e0

    pop hl
    ld l, e
    ld c, e
    ld c, e
    inc l
    ld c, h
    ld bc, $ff6c
    ldh [$bf], a
    ld [c], a
    ld e, h
    db $ec
    ld c, b
    push hl
    ld b, b
    pop af
    ret nz

    db $e4
    ld a, $e1
    call nz, $e2ff
    ld sp, hl
    ret nz

    inc l
    ld c, a
    push hl
    add d
    rst $20
    ccf
    add sp, $4c
    inc c
    add b
    ldh [$e1], a
    push de
    pop bc
    add b
    db $e4
    ld b, l
    ldh [$c4], a
    ldh [$7f], a
    ldh [$b9], a
    ret nz

    dec bc
    add b
    ld sp, hl
    pop bc
    add $c2
    ld b, b
    ld [$e33f], a
    jp nz, $c0d0

    ret nz

    ret nz

    ld [c], a
    ld c, e
    add d
    add hl, sp
    pop hl
    ld l, e
    dec sp
    ldh [$f9], a
    pop bc
    adc h
    jp $eafc


    ld a, a
    rst $10
    dec bc
    nop
    ld a, a
    ld [c], a
    ld a, [$b7c2]
    pop bc
    ld sp, hl
    jp nz, $c35b

    add l
    push bc
    ld c, h
    pop bc
    ld a, c
    jp $f800


    push hl
    ld b, b
    jp z, $e0bf

    cp $e6
    ld sp, hl
    call nz, $c698
    dec [hl]
    db $e4

jr_05e_7457:
    ld hl, sp-$12
    jr nz, jr_05e_7457

    xor b
    ld de, $c0c0
    jp nz, $e2b9

    cp l
    jp $b86b


    and c
    sub [hl]
    and $20
    xor [hl]
    and b
    or c
    and d
    ld hl, sp-$1b
    ret nz

    xor h
    adc a
    and b
    inc l

jr_05e_7475:
    ld a, a
    jp nz, $e6c0

    inc bc
    ld l, e
    dec bc
    ld b, e
    push hl
    or [hl]
    push bc
    ld [hl], d
    push hl
    add d
    and e
    add c
    jp nz, $c47c

    nop
    ret nz

    db $e3
    cp a
    pop hl
    cp d
    and b
    ld a, b
    jp nz, $e030

    ld b, b
    ld [c], a
    inc bc
    rst $00
    di
    call nz, $f840
    push hl
    ld a, [hl]
    adc $0c
    and c
    pop bc
    db $e4
    add hl, sp
    and b
    ld [hl], h
    and b
    dec hl
    ld d, b
    and l
    and b
    dec b
    and d
    jr nc, jr_05e_7475

    ld [hl], d
    and $fb
    adc h
    dec h
    pop hl
    inc l
    add hl, sp
    jp Jump_000_004b


    ld [hl], a
    and b
    ret nz

    pop bc
    adc $85
    db $fd
    or d
    cp l
    and c
    ld [$bfc3], a
    add sp, -$48
    and e
    nop
    db $fd
    and d
    ret nz

    db $e4
    dec c
    and h
    cp l
    xor l
    di
    add d
    ret nz

    db $eb
    sbc l
    pop bc
    cp e
    jp Jump_05e_6b05


    or a
    add c
    ld c, e
    ld [c], a
    rst $00
    sbc a
    call nz, $e9f8
    inc hl
    add d
    add c
    rst $20
    nop
    ld e, $85
    adc h
    add l
    rst $10
    push bc
    db $fc
    ld sp, hl
    inc sp
    push bc
    cp l
    jp hl


    push de
    ld l, d
    or $f0
    nop
    db $f4
    add a
    cp l
    ld l, [hl]
    push de
    ld l, [hl]
    or $f1
    or h
    adc d
    ld c, $e3
    ld hl, $d5c6
    ld l, l
    nop
    or $f3
    adc h
    add $80
    jp $cadb


    push de
    ld l, [hl]
    or $f3
    adc $c6
    inc c
    pop bc
    nop
    sbc a
    xor c
    push de
    ld l, e
    or $f2
    di
    adc d
    cp $a1
    jp nz, $9ff0

    ld b, [hl]
    or $f0
    nop
    di
    adc e
    ld a, c
    ld b, [hl]
    push de
    db $76
    or $ec
    di
    adc e
    ld b, b
    rst $20
    push de
    ld [hl], c
    or $f2
    nop
    di
    adc h
    ret nz

    add sp, -$2b
    ld l, [hl]
    or $f1
    di
    adc e
    nop
    jp nc, $a7d4

    bit 4, [hl]
    nop
    adc $c8
    ret nz

    ei
    ld a, c
    or e
    ld [$4a86], sp
    dec h
    ei
    adc c
    ld b, d
    bit 1, [hl]
    ld [hl-], a
    nop
    ld l, l
    xor b
    xor l
    jr nc, jr_05e_75a2

    xor h
    ld c, [hl]
    cpl
    rlca
    daa
    jp z, $f907

    ld c, a
    db $e4
    dec b
    nop
    ld a, c
    or e
    ld b, d
    dec h
    ld h, d
    add l
    ei
    dec c
    sbc l
    daa
    ld c, [hl]
    jr nc, @-$2c

    and [hl]
    cp $af
    nop
    nop
    add a
    sbc l
    ld h, $79
    xor a
    db $f4
    db $ed
    pop af
    ld c, b
    ret nz

    ld h, [hl]
    ld a, e
    or d
    adc a
    push hl
    nop
    add c
    xor d
    cp $b2
    jr nc, @-$55

    ld c, [hl]
    cpl
    ld l, l
    xor b
    ret nz

    db $f4
    sub l
    inc h

jr_05e_75a2:
    ld c, [hl]
    ld [hl-], a
    nop
    ld l, l
    xor c
    pop af
    ld c, l
    pop bc
    xor [hl]
    ld c, [hl]
    cpl
    ld d, c
    db $d3
    rst $30
    or l
    ld c, [hl]
    cpl
    db $f4
    ld [$6b00], a
    xor c
    ld [bc], a
    ld c, d
    sub l
    inc h
    ld c, [hl]
    jr nc, jr_05e_7601

    ld a, [hl+]
    ld b, d
    inc de
    sbc d
    and a
    ld c, [hl]
    ld [hl], $00
    ld c, d
    jr z, jr_05e_760c

    rrca
    sbc a
    ld [$344e], a
    ld c, l
    push hl
    rst $30
    sub e
    add hl, sp
    ld l, b
    ld c, [hl]
    inc [hl]
    nop
    ld b, d
    push bc
    dec a
    jr z, jr_05e_7659

    db $10
    ld c, [hl]
    jr nc, jr_05e_762b

    ld a, [hl+]
    rst $18
    xor c
    ccf
    ldh a, [rKEY1]
    ccf
    nop
    ld a, [hl]
    add hl, hl
    ld b, b
    ld [$0072], a
    ld d, [hl]
    inc c
    di
    db $eb
    db $e4
    xor $a7
    xor $56
    inc c
    nop
    rlca
    db $eb
    rlca
    ld a, b
    di
    inc c
    dec hl

jr_05e_7601:
    ld a, [bc]
    ld e, b
    xor h
    ld c, c
    xor a
    add b
    jp hl


    rst $38
    rst $38
    nop
    rst $20

jr_05e_760c:
    reti


    cp a
    rst $38
    ret nz

    ld_long a, $ffdc
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor l
    xor [hl]
    nop
    rst $08
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05e_762b:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, [hl]
    ld [hl], a
    rst $38
    rst $38
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
    add [hl]
    nop
    nop
    nop
    rst $38
    ld sp, $3131
    ld b, a

jr_05e_7659:
    ld d, [hl]
    ld d, a
    ld b, a
    ld sp, $31ef
    rla
    jr z, jr_05e_7682

    rst $38
    ldh [$28], a
    ld hl, $e721
    dec d
    ld sp, $ff00
    rst $38
    rst $20
    and $31
    ld b, a
    ld b, [hl]
    rst $38
    ld [hl], $30
    ld l, e
    ld [hl], $3c
    ld sp, $1615
    db $e4
    ret nz

    pop hl
    cp [hl]
    ldh [rNR22], a
    ret nz

jr_05e_7682:
    rst $38
    jp hl


    add sp, $37
    ld [hl], $30
    cp a
    jr nc, jr_05e_76bb

    ld l, e
    ld l, e
    ld c, b
    ld c, c
    ld a, a
    db $e4
    jr nz, jr_05e_76ba

    jr nz, jr_05e_76ab

    dec d
    jp z, $e8ff

jr_05e_7699:
    rst $20
    ld d, c
    pop bc
    ldh [$c0], a
    ldh [$3f], a
    jr nc, @+$3b

    ld sp, $2715
    dec b
    rst $38
    ldh [$7f], a
    pop hl
    ld [hl], h

jr_05e_76ab:
    jp z, $e8ff

    rst $20
    ld d, b
    ret nz

    db $e3
    ld l, c
    ld c, b
    inc a
    or $c0
    db $e4
    di
    ret nz

jr_05e_76ba:
    ld sp, hl

jr_05e_76bb:
    ret nz

    ld d, $ca
    rst $38
    add sp, -$19
    ld c, c
    ld c, b
    ld l, h
    rst $38
    ld l, h
    ld l, h
    ld l, l
    ld l, e
    ld l, c
    jr nc, jr_05e_7702

    ld b, [hl]
    ld b, e
    ld d, [hl]
    ld d, [hl]
    cp c
    ret nz

    ld sp, hl
    pop bc
    jp z, $c0ff

    ret z

    add hl, sp
    ret nz

    ldh [rNR13], a
    ld l, h
    ld l, d
    ei
    pop bc
    cp h
    pop hl
    ld c, l
    ld a, b
    pop bc
    jp z, $80ff

    ret z

    ld e, a
    ld c, c
    ld [hl], $68
    ld l, b
    ld l, b
    ei
    jp nz, $b769

    ret nz

    cp b
    ld sp, hl
    jp nz, $ffca

    ld b, b
    ret z

    ld sp, $3247
    cp l
    pop bc
    jr nc, jr_05e_7699

jr_05e_7702:
    ld l, l
    ld l, l
    ld l, d
    ld a, b
    jp Jump_05e_4031


    rst $18
    jp hl


    add sp, $12
    adc a
    ld de, $4d31
    ld [hl-], a
    dec a
    pop hl
    pop bc
    ldh [$38], a
    ret nz

    ld l, e
    rst $08
    ld d, b
    ld sp, $6031
    jp z, $e8ff

    rst $20
    ld [hl+], a
    ld hl, $12f3
    ld de, $e23d
    db $fd
    jp nz, $6b6b

    ld d, c
    ld sp, $60f3
    ld e, e
    jp z, $e8ff

    rst $20
    jr nz, @+$2a

    ld [hl+], a
    ld hl, $010f
    ld b, a
    ld b, [hl]
    ccf
    cp d
    and b
    ld a, b
    pop bc
    add b
    ldh [$c0], a
    rst $38
    sbc b
    ret nz

    ld [$a00c], a
    inc a
    ldh [rOBP1], a
    ld c, b
    pop bc
    ldh [$37], a
    ret nz

    ld c, b
    ret


    xor a
    ld b, b
    rst $38
    ret nz

    db $ed
    jr nz, jr_05e_7799

    pop hl
    add hl, sp
    jp nz, Jump_05e_6c6c

    ld b, a
    add e
    xor d
    ld [hl], b
    ret nz

    rst $18
    ret nz

    db $ed
    cp [hl]
    ldh [$2b], a
    cp e
    jp Jump_05e_719f


    ld a, c
    add b
    xor [hl]
    ld [hl], b
    ret nz

    rst $38
    ret nz

    xor $20
    rst $38
    nop
    ld bc, $464d
    ld d, l
    ld d, l
    ld l, [hl]
    ld a, c
    inc bc
    add b
    add b
    cp a
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05e_7799:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05e_77c4:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_05e_78ad

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
    adc d
    ld a, b
    cp d
    ld a, b
    dec [hl]
    ld a, d
    dec e
    ld a, h
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
    ld e, a
    ld e, e
    ret z

    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0116
    ret z

jr_05e_78ad:
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $2508
    ld [$0825], sp
    dec h
    ld [$9d25], sp
    dec bc
    rst $38
    pop hl
    ld l, e
    ld l, e
    ld c, e
    rst $38
    pop hl
    db $f4
    ld [c], a
    dec hl
    db $e3
    dec hl
    ld a, [bc]
    db $ec
    ld [c], a
    rst $38
    rst $38
    and $e5
    ld l, e
    ld l, e
    dec hl
    dec de
    dec hl
    ld l, e
    cp l
    db $e4
    ld c, e
    dec hl
    cp [hl]
    ldh [$cd], a
    rst $38
    ld [$83e9], a
    ld c, e
    dec bc
    jp nz, Jump_05e_7de1

    push hl
    ld a, d
    db $e4
    rst $38
    rst $38
    pop bc
    and $4b
    ld c, $82
    ldh [$2b], a
    dec hl
    dec hl
    add c
    db $e3
    ld [hl], l
    ldh [$bf], a
    rst $38
    add d
    db $eb
    ld [bc], a
    ld c, $e0
    dec hl
    nop
    db $e3
    ld a, c
    pop hl
    ret nz

    rst $38
    ret nz

    ldh a, [rSC]
    db $e4
    ld a, d
    ldh [rP1], a
    or l
    ld [c], a
    jp z, $ffff

    rlc b
    ld [c], a
    ret nz

    ld [c], a
    ld hl, sp-$3d
    call $81ff
    jp z, $8a02

    ld [c], a
    ld l, e
    cp d
    ret nz

    ret nz

    db $e3
    dec l
    pop hl
    rst $38
    rst $38
    add sp, -$19
    add $c1
    nop
    ld b, c
    pop bc
    cp e
    pop bc
    ld [hl], a
    jp nz, $ffcd

    jp nz, $4ee9

    ret nz

    rst $00
    jp $c5bd


    db $10
    ld bc, $82df
    ld [$c3cb], a
    ret nz

    push hl
    ld c, e
    add d
    rst $38
    cp [hl]
    ld a, [c]
    ld c, b
    pop bc
    nop
    pop bc
    rst $38
    pop bc
    sub $be
    jp nz, $c587

    cp h
    rst $38
    nop
    ld [$e4c0], a
    ld a, [c]
    add a
    adc b
    ret nz

    sbc a
    add b
    xor l
    or e
    adc c
    ld a, [bc]
    pop bc
    rst $38
    ld bc, $74ab
    adc e
    ld a, [bc]
    ld bc, $c00a
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

Call_05e_79d5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    nop
    nop

jr_05e_7a34:
    nop
    rst $38
    add hl, hl
    ld l, $01
    ld bc, $4401
    ld d, $23
    rst $28
    ld [hl+], a
    inc hl
    ld d, $17
    or $e0

jr_05e_7a45:
    jr nc, jr_05e_7a77

    dec hl
    rst $00
    ld a, [hl+]
    jr z, jr_05e_7a9d

    rst $38
    rst $38
    rst $20
    and $c1
    ldh [rLY], a
    ld b, e
    db $db
    ld b, c
    nop
    rst $38
    ldh [$3b], a
    ld b, $bb
    ldh [$15], a
    inc b
    rst $20
    ld bc, $2e01
    jp z, $e8ff

    rst $20
    ld bc, $4201
    db $ed
    inc a
    pop bc
    ld [c], a
    nop
    dec sp
    rst $38
    ldh [$38], a
    nop
    inc d
    rst $20
    inc c

jr_05e_7a77:
    ld bc, $ca01
    rst $38
    ret nz

    add sp, $42
    inc a
    ld c, d
    db $eb
    nop
    jr c, jr_05e_7a45

    ld [c], a
    jr c, @+$01

    ldh [rP1], a
    jr c, jr_05e_7a90

    reti


    dec e
    ret nz

    rst $38
    jp hl


jr_05e_7a90:
    add sp, $3f
    inc a
    ret nz

    ldh [rP1], a
    jr c, jr_05e_7a34

    add e
    db $e3
    add hl, sp
    ldh [$38], a

jr_05e_7a9d:
    nop
    add hl, bc
    ret nz

    rst $38
    jp hl


    add sp, $3d
    rst $00
    inc a
    inc a
    ld a, $c9
    pop hl
    ld b, e
    ld [c], a
    ld a, [hl]
    ld [c], a
    jr @+$1b

    cp h
    jp z, $e8ff

    rst $20
    ld c, d
    inc a
    inc a
    ld b, b
    adc b
    ld [c], a
    ld [hl], $09
    ld [hl], $43
    ldh [$f7], a
    jp nz, $ca1f

    rst $38
    add b
    jp hl


    ld b, c
    ldh [$81], a
    pop bc
    db $e3
    ld c, l
    ld c, l
    ld b, e
    pop hl
    ret nz

    rst $38
    nop
    xor $3e
    ld a, [hl-]

jr_05e_7ad6:
    ld a, [hl-]
    ld h, l
    ld a, [hl-]
    ret nz

    pop hl
    ld c, [hl]
    pop bc
    pop bc
    scf
    ret nz

    dec b
    dec e
    jp z, $feff

    add sp, -$19
    ld c, h
    inc a
    ld b, b
    inc sp
    inc sp
    dec [hl]
    dec sp
    ld c, b
    cp l
    ret nz

    cp c
    ldh [$b7], a
    ld [c], a
    ld hl, $dfc0
    ret nz

    jp hl


    ld a, $08
    pop bc
    ld a, d
    cp a
    ldh [$37], a
    ret nz

    ld [c], a
    ld a, [hl-]
    nop
    ld b, $0c
    ret nz

    rst $38
    cp d
    ret nz

    xor c
    jr nz, jr_05e_7ad6

    and c
    dec sp
    dec [hl]
    add hl, sp
    ret nz

    db $e3
    ld [de], a
    or c
    dec d
    ld a, [hl-]
    and b
    jp z, $80ff

    xor b
    ld c, $02
    add a
    and c
    inc [hl]
    adc l
    add hl, sp
    ccf
    pop hl
    ld b, $22
    add d
    and b
    ld b, b
    cp a
    ld [$2fe9], a
    dec sp
    ld bc, $bf1d
    pop hl
    inc [hl]
    add hl, sp
    ld b, $03
    and b
    cp [hl]
    add c
    adc h
    ret nz

    sbc a
    ret nz

    adc l
    dec e
    dec d
    rst $00
    add c
    add d
    add c
    add e
    pop hl
    jr z, @+$05

    jr z, jr_05e_7b75

    jp z, $e8ff

    rst $20
    ld b, b
    add d
    db $fd
    rst $20
    pop bc
    pop hl
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

jr_05e_7b75:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38

Jump_05e_7c20:
    rst $38
    xor $ed
    ld [hl], $30
    scf
    ld h, $20
    cpl
    daa
    db $10
    ld d, $17
    push de
    rst $28
    ld de, $e0ff
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05e_7d00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05e_7d3a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05e_7de1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05e_7f0f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05e_7f6c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
