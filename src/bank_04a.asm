; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04a", ROMX[$4000], BANK[$4a]

    add $56

    db $05, $62, $9c, $62

    rra
    ld l, h
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
    ld a, [c]
    ld [hl-], a
    ld sp, hl
    add hl, sp
    ei
    dec sp
    di
    inc sp
    pop af
    ld sp, $3afa
    di
    inc sp
    ld hl, sp+$38
    inc b
    inc b
    inc b
    inc b
    and h
    and h
    and h
    and h
    ld b, b
    ld b, b
    call nz, $44c4
    ld b, h
    nop
    nop
    cp a
    cp b
    cp a
    cp b
    sbc a
    sbc b
    sbc a
    sbc b
    ccf
    db $38, $9f
    sbc b
    cp a

jr_04a_4045:
    cp b
    ccf
    jr c, jr_04a_4045

    inc c
    cp $0e
    db $fc
    inc c
    cp $0e
    cp $0e
    db $fc
    inc c
    cp $0e
    cp $0e
    dec h
    dec h
    ld b, l
    ld b, l
    db $ec
    db $ec
    db $ed
    db $ed
    ld d, c
    ld d, c
    or l
    or l
    ld h, b
    ld h, b
    add l
    add l
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ccf
    jr nc, jr_04a_40ee

    ld [hl], b
    ld a, a
    ld [hl], b
    ccf
    jr nc, jr_04a_40f4

    ld [hl], b
    ccf

jr_04a_4077:
    jr c, jr_04a_4077

    ld b, $ff
    rlca
    cp $06
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    cp $06
    rst $38
    rlca
    ld h, h
    ld h, h
    ld h, l
    ld h, l
    ld b, l
    ld b, l
    inc b
    inc b
    ld h, b
    ld h, b
    ld b, l
    ld b, l
    inc b
    inc b
    ld b, e
    ld b, e
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
    ldh [rIE], a
    ldh [rIE], a
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ret


    ret


    or e
    or e
    or e
    or e
    push bc
    push bc
    and e
    and e

jr_04a_40c2:
    push bc
    push bc
    push de
    push de
    sub e
    sub e
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld sp, hl

jr_04a_40d9:
    add hl, sp
    ld a, [$f23a]
    ld [hl-], a
    ld a, [$fa3a]
    ld a, [hl-]
    ld a, [$f83a]
    jr c, jr_04a_40d9

    ld [hl-], a
    nop
    nop
    ld b, h
    ld b, h
    inc b
    inc b

jr_04a_40ee:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, b
    ld b, b

jr_04a_40f4:
    ld b, h
    ld b, h
    inc b
    inc b
    ccf
    inc a
    rra
    inc e
    ccf
    inc a
    sbc a
    sbc h
    rra
    jr jr_04a_40c2

    cp b
    cp a
    cp b
    sbc a
    sbc b
    db $fc
    inc c
    cp $0e
    db $fc
    inc c
    db $fc
    inc c
    cp $0e
    cp $0e
    db $fc
    inc c
    cp $0e
    and h
    and h
    and h
    and h
    inc b
    inc b
    add l
    add l
    and b
    and b
    and l
    and l
    ld hl, $a121
    and c
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ccf
    jr nc, jr_04a_41b2

    ld [hl], b
    ld a, a
    ld [hl], b
    ccf

jr_04a_4137:
    jr nc, jr_04a_4137

    ld b, $fe
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    rlca
    cp $06
    rst $38
    rlca
    cp $06
    ld bc, $0501
    dec b
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    ld c, h
    ld c, h
    ld c, l
    ld c, l
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

    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld bc, $d3d3
    add l
    add l
    db $d3
    db $d3
    pop de
    pop de

jr_04a_4180:
    jp $8fc3


    adc a
    call $93cd
    sub e
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
    ld a, [$f23a]

jr_04a_419b:
    ld [hl-], a
    ldh a, [$30]
    ld a, [$f03a]
    jr nc, jr_04a_419b

    jr c, @-$06

    jr c, @-$06

    jr c, jr_04a_41ed

    ld b, h
    ld b, b
    ld b, b
    ld b, h
    ld b, h
    ld c, $0e
    ld c, $0e

jr_04a_41b2:
    ld c, [hl]
    ld c, [hl]
    ld d, l
    ld d, l
    dec bc
    dec bc
    cp a
    cp b
    cp a
    cp b
    cp a
    cp b
    ccf
    jr c, jr_04a_4180

    cp b
    sbc a
    sbc b
    ccf
    jr c, jr_04a_41e6

jr_04a_41c7:
    jr jr_04a_41c7

    ld c, $fe
    ld c, $fe
    ld c, $fc
    inc c
    cp $1e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc c
    inc h
    inc h
    ld [bc], a
    ld [bc], a
    and a
    and a
    add a
    add a
    adc d
    adc d
    dec b
    dec b
    add a
    add a

jr_04a_41e6:
    and d
    and d
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ccf

jr_04a_41ed:
    jr nc, jr_04a_426e

    ld [hl], b
    cp a
    or b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ccf
    jr nc, @+$01

    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    cp $06
    rst $38
    rlca
    cp $06
    rst $38
    rlca
    inc c
    inc c
    ld d, c
    ld d, c
    dec c
    dec c
    add hl, bc
    add hl, bc
    nop
    nop
    ld b, c
    ld b, c
    ld b, h
    ld b, h

jr_04a_4216:
    ld b, h
    ld b, h
    add l
    add l
    db $d3
    db $d3
    db $d3
    db $d3
    sub e
    sub e
    pop de
    pop de
    add e
    add e
    db $d3
    db $d3
    pop bc
    pop bc
    ld hl, sp+$78
    ld a, [$f07a]
    ld [hl], b
    ld a, [$f27a]
    ld [hl-], a
    ld a, [c]
    ld [hl-], a
    ld a, [$f23a]
    ld [hl-], a
    ld c, [hl]
    ld c, [hl]
    ld b, h
    ld b, h
    ld b, b
    ld b, b
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    ld b, h
    ld b, h
    ld b, b
    ld b, b
    sbc a
    sbc b
    sbc a
    sbc b
    cp a
    cp b
    sbc a
    sbc b
    cp a
    cp b
    cp a
    cp b
    rra
    jr jr_04a_4216

    cp b
    cp $0e
    db $fc
    inc c
    cp $0e
    cp $0e
    cp $0e
    cp $0e
    db $fc
    inc c
    cp $0e
    and h
    and h
    ld bc, $a101
    and c

jr_04a_426e:
    inc h
    inc h
    and l
    and l
    add l
    add l
    ld hl, $8121
    add c
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ccf
    jr nc, jr_04a_42fe

    ld [hl], b
    ccf
    jr nc, jr_04a_4302

    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    rst $38
    rlca
    cp $06
    cp $06
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    cp $06
    ld bc, $4401
    ld b, h
    dec b
    dec b
    ld b, c
    ld b, c
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, h
    ld b, h

jr_04a_42a6:
    dec b
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    ret


    ret


    adc e
    adc e

jr_04a_42bc:
    pop bc
    pop bc
    inc b
    inc b
    ld d, h
    ld d, h
    db $e3
    db $e3
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    ld a, [$fa3a]
    ld a, [hl-]
    ld a, [$fa3a]
    ld a, [hl-]
    ld hl, sp+$38
    ld a, [$f03a]
    jr nc, @-$04

    ld a, [hl-]
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ccf
    jr c, jr_04a_433a

    jr c, jr_04a_42bc

    cp b

jr_04a_42fe:
    cp a
    cp b
    cp a
    cp b

jr_04a_4302:
    sbc a
    sbc b
    ccf
    jr c, jr_04a_42a6

    sbc b
    cp $0e
    db $fc
    inc c
    cp $0e
    db $fc
    inc c
    cp $0e
    cp $0e
    cp $0e
    db $fc
    inc c
    add h
    add h
    and l
    and l
    and l
    and l
    add h
    add h
    dec h
    dec h
    and l
    and l
    ld hl, $8421
    add h
    ccf
    jr nc, jr_04a_43aa

    ld [hl], b
    ccf
    jr nc, jr_04a_436e

    jr nc, jr_04a_43b0

    ld [hl], b
    ccf
    jr nc, @+$81

    ld [hl], b
    ld a, a
    ld [hl], b
    rst $38
    rlca

jr_04a_433a:
    cp $06
    cp $0e
    db $fc
    inc c
    db $fd
    dec c
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    nop
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    ld b, b
    ld b, b

jr_04a_434e:
    inc c
    inc c
    and d
    and d
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    ret nz

jr_04a_435c:
    rst $38
    ldh [$7f], a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    ld a, [c]
    ld [hl-], a
    ld a, [$fa3a]
    ld a, [hl-]

jr_04a_436e:
    ld a, [$f23a]
    ld [hl-], a
    ld hl, sp+$38
    ld a, [$fa3a]
    ld a, [hl-]
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, b
    ld b, b
    ld b, h
    ld b, h

jr_04a_4380:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, b
    ld b, b
    inc b
    inc b
    sbc a
    sbc b
    cp a
    cp b
    ccf
    jr c, jr_04a_434e

    cp b
    sbc a
    sbc b
    cp a
    cp b
    cp a
    cp b
    ccf

jr_04a_4397:
    jr c, jr_04a_4397

    ld c, $fc
    inc e
    ld a, [$f81a]
    jr @-$01

    dec e
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    nop
    add h
    add h

jr_04a_43aa:
    and c
    and c
    and h
    and h
    ld l, [hl]
    ld l, [hl]

jr_04a_43b0:
    add c
    add c

jr_04a_43b2:
    jp $ffc3


    rst $38
    rst $38
    rst $38
    ld a, a
    ld [hl], b
    ccf
    jr c, jr_04a_435c

    sbc b
    rra
    jr jr_04a_4380

    cp b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $10
    sub $f3
    di
    and a
    and [hl]
    rst $10
    sub $83
    add d
    sub e
    sub d
    rst $10
    sub $d3
    jp nc, $0000

    ld b, h
    ld b, h
    inc b
    inc b
    ld b, h
    ld b, h
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    inc b
    inc b
    ccf
    jr c, jr_04a_440a

    jr jr_04a_442c

    jr c, @-$5f

    sbc b
    rra
    jr jr_04a_43b2

    cp b
    cp a
    cp b
    sbc a
    sbc b
    ldh a, [rSVBK]
    ld a, [$f07a]
    ld [hl], b
    ldh a, [rSVBK]
    ei
    ld a, e
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld bc, $4444

jr_04a_440a:
    ret nz

    ret nz

    add h
    add h
    nop
    nop
    inc bc
    inc bc
    add a
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc h
    ld a, a
    ld a, h
    rra
    inc e
    rra
    inc e
    ccf
    inc a
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    db $eb
    ld l, d
    db $eb
    ld l, e

jr_04a_442c:
    rst $00
    ld b, [hl]
    rst $20
    ld h, [hl]
    db $eb
    ld l, d
    db $eb
    ld l, d
    rst $00
    add $c7
    ld b, [hl]
    rst $38
    nop
    rst $38
    ld bc, $00ff
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
    sub a
    sub [hl]
    set 1, d

jr_04a_444c:
    sbc a
    sbc [hl]

jr_04a_444e:
    set 1, d
    rst $00
    add $93
    sub d

jr_04a_4454:
    db $d3
    jp nc, $9697

    rst $38
    jr c, @+$01

    jr c, jr_04a_444c

    jr z, jr_04a_444e

    jr z, @+$01

    jr c, @-$0f

    jr z, @+$01

    ld a, h
    rst $38
    jr c, jr_04a_4454

    ld l, d
    db $eb
    ld l, d
    rst $08
    ld c, [hl]
    rst $20
    ld h, [hl]
    db $eb
    ld l, d
    set 1, e
    rst $20
    rst $20
    rst $38
    ld a, [hl]
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
    ld bc, $01ff
    rst $38
    nop
    rst $00
    add $d7
    sub $93
    sub d
    rst $00
    add $93
    sub d
    add hl, hl
    add hl, hl
    rst $20
    rst $20
    rst $38
    cp $45
    ld b, d
    ld b, [hl]
    nop
    inc a
    nop
    ld b, e
    ld b, h
    nop
    ld b, a
    ld c, b
    nop
    ld a, [bc]
    dec bc
    inc c
    ld d, $17
    jr jr_04a_44b5

    ld hl, $2a18
    dec hl
    inc l
    rlca
    ld [$1309], sp
    inc d

jr_04a_44b5:
    dec d
    rra
    jr nz, jr_04a_44ce

    jr z, jr_04a_44e4

    dec d
    inc sp
    inc [hl]
    dec [hl]
    inc b
    dec b
    ld b, $10
    ld de, $1c12
    dec e
    ld e, $25
    ld h, $27
    jr nc, jr_04a_44fe

    ld [hl-], a

jr_04a_44ce:
    add hl, sp
    ld a, [hl-]
    dec sp
    ld bc, $0302
    dec c
    ld c, $0f
    add hl, de
    ld a, [de]
    dec de
    ld [hl+], a
    inc hl
    inc h
    dec l
    ld l, $2f
    ld [hl], $37
    jr c, jr_04a_4523

jr_04a_44e4:
    ld b, b
    ld b, c
    ld bc, $0302
    dec c
    ld c, $0f
    add hl, de
    ld a, [de]
    dec de
    ld [hl+], a
    inc hl
    inc h
    dec l
    ld l, $2f
    ld [hl], $37
    jr c, jr_04a_4506

    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_04a_44fe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04a_4506:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    ld a, [de]
    dec e
    rra
    jr jr_04a_4534

    inc e
    rrca
    inc c
    rrca
    inc c
    di
    rst $08
    or c
    rst $08
    ld [hl], b

jr_04a_4523:
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]

jr_04a_4534:
    sbc b
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$30
    ldh a, [$30]
    ldh a, [$3b]
    inc a
    dec a
    ld a, $1e
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld hl, sp-$79
    cp h
    jp $c3bc


    ld a, $c1
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
    rst $38
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld c, $f1
    inc e
    db $fc
    inc a
    db $fc
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$fc]
    db $fc
    ld a, [hl]
    cp $1b
    inc e
    scf
    jr c, jr_04a_45da

    jr c, jr_04a_45db

    add hl, sp
    ld e, $19
    ld a, a
    ld a, b
    rst $30
    ld hl, sp-$21
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld [hl], $c9

jr_04a_45b8:
    ld a, $c1
    ld e, $e1
    inc c
    di
    jr c, jr_04a_45b8

jr_04a_45c0:
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    jr jr_04a_45c0

    ld e, $fe
    rrca
    rst $38
    inc bc
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

jr_04a_45da:
    nop

jr_04a_45db:
    nop
    ld bc, $ee01
    pop af
    rst $38
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [rPCM34]
    ld a, b
    ld a, e
    ld a, h
    dec a
    ld a, $fe
    rst $38
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rP1]
    rst $38
    inc c
    di
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    sbc [hl]
    ld h, c
    cp $01
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld c, $fe
    ld e, $fe
    inc a
    db $fc
    ld a, a
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
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    dec c
    ld c, $de
    pop hl
    ld a, h
    ld h, e
    db $ec
    di
    call c, $bce3
    jp $c7b8


    ldh a, [$cf]
    ld [hl], b
    rst $08
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
    ret nz

    ccf
    inc bc
    rst $38
    ld b, $fe
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_04a_467e:
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
    ret nz

    ret nz

    ldh [$e0], a
    jr nc, jr_04a_467e

    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    ld c, $0f
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    sbc a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    db $fc
    add e
    cp [hl]
    pop bc
    ld a, $c1
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e0ff
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [rIF], a
    inc c
    dec c
    ld c, $07
    ld b, $06
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld b, $07
    or [hl]
    ld c, c
    rst $30
    ld [$0cf3], sp
    pop af
    ld c, $e0
    rra
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh a, [rIF]
    ret nz

    ccf

jr_04a_4720:
    ret nz

    ccf

jr_04a_4722:
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_04a_4720

    jr nc, jr_04a_4722

    ld h, b
    ldh [$60], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ldh [$03], a
    inc bc
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
    rst $18
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp+$7d
    ld a, [hl]
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, a
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [hl]
    add c
    cp [hl]
    pop bc
    sbc [hl]
    pop hl
    ld a, $c1
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, [hl]
    cp $fc
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [hl]
    cp $c0
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
    ld c, $0f
    ld a, [de]
    dec e
    rra
    jr @+$1d

    inc e
    dec c
    ld c, $0e
    rrca
    ld b, $07
    ld e, $1f
    ldh a, [rIF]
    ld [hl], b
    adc a
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], b
    ldh a, [rNR23]
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$30
    ldh a, [rSVBK]
    ldh a, [$60]
    ldh [$78], a
    ld hl, sp+$78
    ld a, a
    rst $30
    ld hl, sp-$11
    ldh a, [rIE]
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp+$7f
    ld a, a
    ccf
    ccf
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld e, $fe
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38

jr_04a_47ea:
    ld a, [hl]
    cp $fc
    db $fc
    dec de
    inc e
    dec de
    inc e
    dec c
    ld c, $3f
    ld a, $7e
    ld a, a
    ld l, h
    ld [hl], e
    ld l, a
    ld [hl], b
    scf
    jr c, @-$1e

    rra
    ret nz

    ccf
    add [hl]
    ld a, c
    rst $00
    jr c, jr_04a_47ea

    inc e
    pop af
    ld c, $f0
    rrca
    ldh [$1f], a
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf

jr_04a_4814:
    ret nz

    ccf
    ret nz

    ccf

jr_04a_4818:
    add b
    ld a, a

jr_04a_481a:
    nop
    rst $38
    nop
    rst $38
    jr jr_04a_4818

    jr jr_04a_481a

    jr nc, jr_04a_4814

    ld a, h
    db $fc
    ld a, [hl]
    cp $06
    cp $06
    cp $0c
    db $fc
    rrca
    rrca
    rra
    rra
    ld e, $1f
    dec a
    ld a, $7b
    ld a, h
    ld [hl], a
    ld a, b
    rst $30
    ld hl, sp-$1d
    db $fc
    cp [hl]
    pop bc
    ld a, [hl]
    add c
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$3c
    db $fc
    ld e, $fe
    ld c, $fe
    rrca
    rst $38
    rlca
    rst $38
    dec e
    ld e, $0f
    rrca
    ld c, $0f
    dec de
    inc e
    dec de
    inc e
    inc e
    rra
    ld c, $0f
    ld b, $07
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a

jr_04a_4878:
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    jr c, jr_04a_4878

    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rNR23]
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp+$70
    ldh a, [$60]
    ldh [$e0], a
    rst $38
    pop af
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    inc a
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    inc a
    rst $38
    inc a
    rst $38
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    ld b, $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $fe
    ld c, $fe
    ld c, $fe
    adc [hl]
    cp $07
    rst $38
    adc a
    rst $38
    cp $fe
    cp $fe
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $1b
    inc e
    inc e
    rra
    rra
    rra
    rrca
    rrca
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $e7ff


    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38

jr_04a_4920:
    nop
    rst $38
    nop
    rst $38
    ld bc, $19ff
    rst $38
    sbc a
    rst $38

jr_04a_492a:
    rst $38
    rst $38

jr_04a_492c:
    ldh a, [$f0]
    jr nc, jr_04a_4920

    jr jr_04a_492a

    jr c, jr_04a_492c

    ld hl, sp-$08
    ldh a, [$f0]
    add b
    add b
    nop
    nop
    nop
    nop
    ccf
    ccf
    ccf
    ccf
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, e
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ld e, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    ld a, [$7aff]
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    ld e, h
    db $fc
    rrca
    rst $38
    rrca
    rst $38
    ld c, $fe
    ld c, $fe
    sbc $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    inc e
    ccf
    inc a
    ld a, l
    ld a, [hl]
    ld l, e
    db $76
    ld a, l
    ld h, d
    ld a, a
    ld h, b
    ld l, a
    ld [hl], b
    rst $30
    ld hl, sp-$40
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a

jr_04a_49c8:
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    jr c, jr_04a_49c8

    inc a
    db $fc
    ld a, [hl]
    cp $66
    cp $06
    cp $06
    cp $0e
    cp $0f
    rst $38
    rrca
    rrca
    ld c, $0f
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0e
    rrca
    rlca
    rlca
    rlca
    rlca
    ld [hl], a
    ld hl, sp-$49
    ld a, b
    rst $10
    jr c, @-$0f

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
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
    ld bc, $0efe
    rst $38
    inc c
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [rSB], a
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rst $38
    ld hl, sp-$61
    ld hl, sp+$67
    sbc b
    ld a, a
    add b
    rst $38
    add b
    cp [hl]
    pop bc
    db $fc
    jp $e3dc


    add d
    ld a, l
    inc bc
    db $fc
    inc sp
    call z, $c43b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    rra
    rst $38
    add hl, de
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    add b
    add b
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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    ld a, h
    add e
    cp h
    jp $c1fe


    sbc $e1
    rst $28
    ldh a, [$ef]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp+$00
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
    add b
    ld a, a
    add b
    ld a, a
    inc bc
    db $fc
    ld b, e
    cp h
    db $e3
    inc e
    di
    inc c
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp-$80
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    rlca
    rlca
    ld b, $07
    rlca
    ld b, $fe
    pop hl
    rst $28
    ldh a, [$bf]
    ret nz

    cp [hl]
    pop bc
    db $fc
    jp $e3dc


    sbc h
    ld h, e
    adc $31
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $ff
    nop
    rst $38
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

    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh [rTAC], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    dec e
    dec e
    ccf
    ccf
    cp a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, h
    add e
    cp h
    jp $c1fe


    sbc $e1
    rst $38
    ldh [$c0], a
    ccf
    ret nz

    ccf

jr_04a_4b62:
    add b
    ld a, a
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$07
    ld hl, sp-$79
    ld a, b
    rst $00
    jr c, jr_04a_4b62

    jr @+$01

    nop
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    cp b
    cp b
    db $fc
    db $fc
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp [hl]
    pop bc
    call c, $fce3
    db $e3
    cp $e1
    sbc $e1
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc sp
    call z, $c43b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
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
    ret nz

    ret nz

    ldh [$e0], a
    ld a, a
    ld a, a
    ld a, d
    ld a, l
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    dec sp
    inc a
    dec a
    ld a, $1e
    rra
    rst $28
    ldh a, [$cf]
    ldh a, [$9f]
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    nop
    rst $38
    ld a, a
    add b
    ccf
    ret nz

    ld c, $f1
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
    rlca
    rst $38
    inc bc
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
    cp $fe
    sbc [hl]
    cp $0e
    cp $0e
    cp $0e
    cp $1c
    db $fc
    inc a
    db $fc
    ld a, b
    ld hl, sp+$06
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0701
    rlca
    rrca
    rrca
    dec c
    ld c, $ff
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    cp h
    jp $e3dc


    xor $f1
    rst $38
    ldh a, [$b7]
    ld a, b

jr_04a_4c6e:
    ld h, b
    ldh [$60], a
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    jr nc, jr_04a_4c6e

    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    ld c, $0f
    cp a
    ret nz

    rst $28
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$11
    ldh a, [$7f]
    add b
    rst $38
    nop
    cp $01
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$0d]
    ld c, $0e
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld b, $07
    rst $20
    jr @+$01

    nop
    ld a, [hl]
    add c
    cp h
    jp $e1de


    sbc a
    ldh [$7f], a
    add b
    cp $01
    nop
    rst $38

jr_04a_4cf0:
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr nc, jr_04a_4cf0

    ld [hl], b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ldh [rIF], a
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld a, a
    add b
    cp a
    ret nz

    rst $08
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$be], a
    pop bc
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a

Call_04a_4d38:
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $f0ff
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld a, [hl]
    add c
    rst $18
    ldh [$ef], a
    ldh a, [$ee]
    pop af
    call c, $f0e3
    rst $08
    add b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $1fff
    rst $38
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
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
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    ld c, $0f
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    ld a, b
    add a
    ld h, b
    sbc a
    ld c, $ff
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    xor $ef
    inc e
    rra
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
    jr @+$01

    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    db $fc
    rst $38

jr_04a_4dd6:
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $30
    jr c, jr_04a_4dd6

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    ld hl, sp-$01
    jr nc, jr_04a_4e31

    inc sp
    ccf
    ccf
    ccf
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    jp $cfff


    rst $38
    rst $38
    rst $38
    ld a, e
    ld a, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    jp $e7ff


    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    jp $f3ff


    rst $38
    rst $38
    rst $38
    sbc $de
    rra
    rst $38
    inc c

jr_04a_4e31:
    db $fc
    call z, $fcfc
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $28
    adc [hl]
    adc a
    ld c, $0f
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    cp $ff
    xor $ef
    nop
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    sbc $ff
    ld e, a
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    scf
    rst $30
    ld [hl], c
    pop af
    ld [hl], b
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    jr c, @-$06

    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

    inc l
    inc [hl]
    inc [hl]
    inc l
    db $76
    ld l, [hl]
    pop de
    xor a
    rst $20
    db $db
    xor l
    db $d3
    ldh [$1f], a
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
    inc bc
    ld [bc], a
    dec b
    rlca
    jr jr_04a_4ee8

    inc h
    inc a
    inc a
    inc h
    ld e, d
    ld h, [hl]
    di
    rst $08
    ld [hl], d
    rst $08
    or b
    ld c, a
    ldh [$1f], a
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

jr_04a_4ee8:
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$7f], a
    ld [hl], b
    ld [hl], a
    ld a, b
    ccf
    jr c, jr_04a_4f10

    inc e
    ccf
    inc a
    ld a, l
    ld a, [hl]
    ld [hl], l
    ld a, d
    ld l, a
    ld [hl], b
    ld hl, sp+$07
    ld hl, sp+$07
    or b
    ld c, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], a
    adc b

jr_04a_4f10:
    ld a, [hl]
    add c
    ld a, $c1
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_04a_4f1e:
    ld c, $fe
    ld c, $fe
    inc e
    db $fc
    jr c, jr_04a_4f1e

    ld a, h
    db $fc
    ld a, [hl]
    cp $0e
    cp $06
    cp $01
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0203
    ld bc, $c001
    cp a
    ld b, c
    cp a
    sub b
    ld l, a
    or b
    ld c, a
    add b
    ld a, a
    ret nz

    ccf
    call nz, $8c3b
    ld [hl], e
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, $05

jr_04a_4f60:
    rlca
    inc b

jr_04a_4f62:
    inc bc
    ld [bc], a
    rlca
    ld b, $0b
    inc c
    dec de
    inc d
    ld e, $11
    ld d, $19
    ret nz

    ccf
    add b
    ld a, a
    add d
    ld a, l
    sbc d
    ld h, l
    adc [hl]
    ld [hl], c
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04a_4f60

    jr nz, jr_04a_4f62

    ld b, b
    ret nz

    ld h, b
    ldh [rNR10], a
    ldh a, [rNR23]
    ld hl, sp+$28
    ld hl, sp+$08
    ld hl, sp+$00
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $706f
    rst $30
    ld hl, sp-$05
    db $fc
    dec e
    cp $6d
    sbc [hl]
    ld sp, hl
    add [hl]
    cp a
    ret nz

    rst $18
    ldh [$f8], a
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld b, $fe
    rrca
    rst $38
    rra
    rst $38
    inc a
    rst $38
    jr nc, @+$01

    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    nop
    nop
    add b
    add b
    ret nz

    ret nz

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
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ret nz

    ccf
    sub b
    ld l, a
    or b
    ld c, a
    ret nz

jr_04a_4ff5:
    ccf
    ret nz

    ccf
    add b
    ld a, a
    sub h
    rst $38
    ld a, a
    ld a, a
    add b
    add b

Jump_04a_5000:
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    rrca
    ld [$181f], sp
    ld [hl], $29
    inc l
    inc sp
    ld e, h
    ld [hl], e
    ld l, [hl]
    ld d, c
    ld e, [hl]
    ld h, c
    inc l
    inc sp
    db $10
    rst $28
    ret nc

    cpl
    ld [hl], b
    adc a
    jr nc, jr_04a_4ff5

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    ldh a, [rNR23]
    ld hl, sp+$24
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    ld [bc], a
    cp $02
    cp $04
    db $fc
    rst $38
    ldh [$ef], a
    ldh a, [rPCM34]
    ld a, b
    ld [hl], a
    ld a, b
    dec sp
    inc a
    dec sp
    inc a

jr_04a_504a:
    ld a, c
    ld a, [hl]

jr_04a_504c:
    ld sp, hl
    cp $e0
    rra
    ret nz

    ccf
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ld [bc], a
    db $fd
    rst $00
    jr c, jr_04a_504a

    jr jr_04a_504c

    jr jr_04a_50de

    adc b
    ld a, [hl]
    add c
    ld a, $c1
    inc e
    db $e3
    rlca
    rst $38
    rlca
    rst $38
    ld c, $fe
    ld c, $fe
    inc e
    db $fc
    inc e
    db $fc
    ld e, $fe
    rra
    rst $38
    inc e
    inc de
    ld a, $21
    ld l, $31
    inc a
    inc sp
    ld a, h
    ld b, e
    ld e, b
    ld h, a
    inc l
    inc sp
    ld a, $31
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc [hl]
    rr h
    db $e3
    inc c
    di
    nop
    rst $38
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    ld [de], a
    cp $02
    cp $04
    db $fc
    inc c
    db $fc
    rst $08
    ldh a, [$df]
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [rPCM34]
    ld a, b
    dec sp
    inc a
    ld a, l
    ld a, [hl]
    db $fd
    cp $e0
    rra
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld c, $fe
    inc e
    db $fc
    ld a, $fe
    ccf
    rst $38

jr_04a_50de:
    ld l, [hl]
    ld d, c
    ld e, h
    ld h, e
    ld a, b
    ld h, a
    add sp, -$69
    cp h
    jp Jump_04a_615e


    ld l, $31
    ld a, h
    ld b, e
    ld [bc], a
    cp $02
    cp $06
    cp $01
    rst $38
    ld bc, $02ff
    cp $04
    db $fc
    ld [bc], a
    cp $ef
    ldh a, [$df]
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [rPCM34]
    ld a, b
    dec sp
    inc a
    dec e
    ld e, $7d
    ld a, [hl]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38

jr_04a_5124:
    rlca
    rst $38
    ld c, $fe
    inc e
    db $fc
    jr c, jr_04a_5124

    ld a, $fe
    ld e, [hl]
    ld h, c
    ld a, $31
    inc l
    inc sp
    ld e, b
    ld h, a
    jr nz, jr_04a_5177

    jr @+$21

    ld b, $07
    ld bc, $0001
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
    ld b, d
    rst $38
    rst $38
    rst $38
    ld [bc], a
    cp $0c
    db $fc

jr_04a_5152:
    ld [bc], a
    cp $02
    cp $04
    db $fc
    jr jr_04a_5152

    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    db $fd
    cp $e7
    ld hl, sp-$41
    ret nz

    rst $38
    add b
    rst $18

jr_04a_5177:
    ldh [$f3], a
    db $fc
    ld a, l
    ld a, [hl]
    dec e
    ld e, $e0
    rra
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ccf
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38

jr_04a_5196:
    rlca
    rst $38
    rra
    rst $38
    ld a, $fe
    jr c, jr_04a_5196

    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    dec sp
    inc a
    ld [hl], a
    ld a, b
    ld l, a
    ld [hl], b
    xor $f1
    ret nz

    rst $38
    and $ff
    rst $38
    rst $38
    ld a, a
    ld a, a
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
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
    inc e
    db $fc
    ld c, $fe
    ld b, $fe
    rlca
    rst $38
    inc bc
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    cp $fe
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld c, $ff
    ccf
    rst $38
    rst $38
    rst $38
    di
    di
    jp Jump_000_03c3


    inc bc
    inc bc
    inc bc
    ld bc, $0001
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    cp $ff
    xor $ff
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp $e7ff


    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $20
    ld [hl], b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    jp $c0c3


    ret nz

    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    sbc e
    inc de
    and e
    and h
    and l
    xor [hl]
    xor a
    or b
    sbc h
    sbc l
    sbc [hl]
    and [hl]
    and a
    xor b
    or c
    or d
    or e
    cp b
    cp c
    cp d
    cp [hl]
    or d
    cp a
    jp $c5c4


    nop
    ld bc, $0302
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    nop
    inc d
    dec d
    ld d, $17
    jr jr_04a_5299

    ld hl, $0622
    inc hl
    add hl, hl
    ld a, [hl+]
    dec bc
    ld b, $2b
    cpl
    jr nc, jr_04a_52b6

    ld b, $32
    ld [hl], $37
    ld b, $06
    jr c, jr_04a_52cc

    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
    ld c, e
    ld c, h
    ld b, $06
    ld c, l
    nop
    ld d, h

jr_04a_5299:
    ld d, l
    ld d, [hl]
    ld b, $06
    ld d, a
    ld e, b
    ld h, b
    ld h, c
    ld b, $06
    ld b, $62
    ld h, e
    ld l, d
    ld l, e
    ld b, $6c
    ld b, $6d
    ld l, [hl]
    ld [hl], l
    db $76
    ld l, h
    ld b, $06
    ld l, l
    ld [hl], a
    ld a, l
    ld a, [hl]

jr_04a_52b6:
    ld b, $06
    ld b, $7f
    add b
    add [hl]
    add a
    ld b, $06
    ld b, $88
    adc c
    nop
    adc a
    sub b
    sub c
    sub d
    sub e
    nop
    nop

Jump_04a_52ca:
    sbc a
    and b

jr_04a_52cc:
    and c
    ld b, $06
    ld b, $a2
    nop
    xor c
    xor d
    xor e
    ld b, $06
    ld b, $06
    xor h
    xor l
    nop
    or h
    or l
    ld b, $b6
    ld b, $06
    or a
    nop
    nop
    cp e
    cp h
    or [hl]
    ld b, $06
    ld b, $bd
    nop
    nop
    ret nz

    pop bc
    ld b, $06
    ld b, $06
    jp nz, $c600

    rst $00
    ret z

    ld b, $06
    ld b, $06
    ret


    jp z, $cb00

    call z, $0606
    ld b, $06
    call $0000
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld b, $51
    ld b, $06
    ld d, d
    ld d, e
    ld e, c
    ld e, d
    ld e, e
    ld b, $5c
    ld e, l
    ld b, $5e
    ld e, a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld b, $06
    ld b, $68
    ld l, c
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld b, $06
    ld b, $73
    ld [hl], h
    ld a, b
    ld a, c
    ld a, d
    ld b, $06
    ld b, $06
    ld a, e
    ld a, h
    add c
    add d
    add e
    ld b, $06
    ld b, $06
    add h
    add l
    adc d
    adc e
    adc h
    ld b, $06
    ld b, $8c
    adc l
    adc [hl]
    nop
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    nop
    nop
    inc b
    dec b
    ld b, $07
    ld [$0606], sp
    ld b, $09
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $0606
    ld b, $06
    ld [de], a
    inc de
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld b, $06
    ld b, $06
    ld e, $1f
    inc h
    dec h
    ld h, $06
    ld b, $06
    ld b, $06
    ld b, $27
    jr z, jr_04a_5386

jr_04a_5386:
    inc l
    dec l
    ld b, $06
    ld b, $06
    ld b, $06
    ld l, $00
    nop
    inc sp
    inc [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    dec [hl]
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    ld b, $06
    ld b, $3c
    dec a
    ld a, $00
    nop
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    nop
    inc b
    dec b
    ld b, $07
    ld [$0606], sp
    ld b, $09
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $0606
    ld b, $06
    ld [de], a
    inc de
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld b, $06
    ld b, $06
    ld e, $1f
    inc h
    dec h
    ld h, $06
    ld b, $06
    ld b, $06
    ld b, $27
    jr z, jr_04a_53de

jr_04a_53de:
    inc l
    dec l
    ld b, $06
    ld b, $06
    ld b, $06
    ld l, $00
    nop
    inc sp
    inc [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    dec [hl]
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    ld b, $06
    ld b, $3c
    dec a
    ld a, $00
    nop
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop

jr_04a_540d:
    nop
    nop
    nop
    push de
    nop
    rst $38
    xor $ff
    cp $e6
    xor d
    db $e3
    rst $28
    nop
    ld d, l
    xor d
    db $fc
    xor $88
    db $ec
    ldh [rNR43], a
    ld hl, sp-$18
    xor d
    db $fc
    and $d5
    rst $38
    nop
    ld [$3d00], a
    add b
    ld c, $70
    inc bc
    rst $38
    xor b
    rlca
    ret c

    inc e
    and d
    ld [hl], b
    rlca
    ret nz

    ld a, a
    ld a, [hl+]
    nop
    db $dd
    ld [hl-], a
    ld [hl-], a
    call $faff
    ldh [rIF], a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ld hl, sp-$20
    db $fc
    ldh [$80], a
    rst $38
    add b
    rst $38
    cp $80
    db $f4
    ld d, l
    nop

Jump_04a_5457:
    xor a
    nop
    call c, $f002
    ld a, [hl]
    adc b
    ldh [rLCDC], a
    db $dd
    jr nz, jr_04a_540d

    ld h, b
    rst $30

jr_04a_5465:
    ld [hl], c
    ldh [rPCM34], a
    db $dd
    inc sp
    inc sp
    add b
    db $fd
    ld hl, sp+$00
    cp $7c
    ld [c], a
    ld [hl], a
    cp $00
    xor b
    ld h, e
    ld [c], a
    rrca
    nop
    ld a, a
    ld l, h
    ld [c], a
    rst $20
    ld a, a
    nop
    ld a, [hl+]
    add b
    rst $38
    adc b
    and $5e
    ld [bc], a
    pop af
    rst $38
    rrca
    jp nz, Jump_000_022f

    rst $38
    nop
    ld_long $ff20, a
    ld [hl], a
    and b
    ld [$dd40], a
    ld [$34ba], sp
    ld a, a
    ld a, a
    ld a, [hl+]
    cp $dd
    rst $38
    ld [hl-], a
    rst $38
    nop
    db $fd
    cp b
    ldh a, [$db]
    add b
    rst $38
    adc b
    add $f0
    inc bc
    xor b
    or e
    ret nz

    xor [hl]
    cp a
    ld [bc], a
    ld [hl], a
    ld a, [bc]
    xor [hl]
    inc b
    db $dd
    or e
    ret nz

    ld [hl], a
    ld l, $af
    ret nz

    db $dd
    inc sp
    or e
    add b
    call Call_000_201f
    db $e4
    ld e, $e1
    push hl
    dec d
    adc [hl]
    ret nc

    ldh a, [$f0]
    jp z, $ff80

    xor e
    nop
    ld d, [hl]
    rst $38
    nop
    cp b
    rlca
    ld a, b
    ld a, [bc]
    db $e4
    rra
    adc b
    ld a, a
    ld a, $e8
    rra
    jr c, jr_04a_5465

    ld c, $71
    ld a, b
    ldh [rNR12], a
    add b
    and $32
    add b
    adc $10
    rst $00
    rst $38
    and d
    ld [c], a
    xor $db
    add b
    push af
    rst $38
    ld d, a
    nop
    adc [hl]
    ld bc, $0558
    ld [hl], b
    rrca
    ld c, a
    ret nz

    ld l, $82
    ld a, a
    db $10
    ldh [$88], a
    pop bc
    rst $38
    adc b
    ret nz

    cp $00
    ld [c], a
    adc d
    ld l, $e4
    dec e
    ld [hl+], a
    adc e
    rlca
    ccf
    ld a, a
    ld a, [hl+]
    cp a
    db $dd
    rst $38
    inc sp
    add b
    adc $80
    rst $38
    ld a, d
    add b
    rst $38
    ld [hl+], a
    inc d
    and b
    ld a, b
    add b
    dec e
    ret nz

    adc h
    pop bc
    db $d3
    ld bc, $47fe
    and b
    adc b
    pop bc
    rst $38
    ld a, b
    pop hl
    ld [bc], a
    xor e
    rst $38
    rlca
    ld a, a
    jr z, @-$3f

    call c, $a8ff
    cp d
    rra
    ld d, l
    rst $38
    ld a, [bc]
    cp a
    sbc l
    nop
    ret nc

    add b
    rst $38
    add b
    rst $38
    cp $80
    adc c
    ld [$7500], a
    add b
    ld a, [hl-]
    ret nz

    dec c
    rst $38
    and b
    rlca
    ld hl, sp+$01
    xor d
    rlca
    ld hl, sp-$80
    rst $28
    ld [$f770], a
    xor b
    adc b
    and b
    xor d
    cp $77
    adc a
    rst $38
    xor b
    cp $dc
    nop
    rst $38
    add b
    rst $38
    nop
    rst $18
    nop
    ei
    cp h
    inc bc
    nop
    jp $ff08


    ld [bc], a
    xor d
    ld bc, $77df
    ld [bc], a
    xor a
    nop
    rst $18
    ld a, b
    ldh [rPCM34], a
    jr z, jr_04a_5593

    nop
    or d
    and b
    and l
    adc [hl]
    add c
    ld d, b
    add b

jr_04a_5593:
    rst $38
    nop
    rst $18
    nop
    adc $00
    xor d
    ld bc, $80f3
    sbc a
    add b
    rst $38
    nop
    rst $18
    nop
    push bc

jr_04a_55a4:
    adc b
    add l
    ld a, b
    add l
    nop
    ld a, a
    ld hl, sp-$80
    rst $38
    nop
    rst $18
    nop
    push bc
    nop
    rst $38
    ld [bc], a
    ld [$1f21], a
    ld [hl], a
    and d
    rst $28
    ld b, b
    rst $18
    nop
    add [hl]
    nop
    ld a, [hl]
    ld l, [hl]
    ld c, l
    jr c, jr_04a_55a4

    ld h, l
    nop
    ld a, a
    nop
    ld d, e
    ld e, $60
    ld b, $00
    add b
    ld hl, sp-$7f
    ldh [$80], a
    add c
    nop
    ld a, a
    nop
    ld a, a
    add b
    rst $38
    ld a, h
    inc hl
    ld d, h
    nop
    xor b
    rst $28
    rlca
    jp nz, $870b

    ld [$aa82], sp
    cp a
    ld d, a
    add b
    add b
    add d
    nop
    xor a
    db $10
    push af
    ldh a, [rLYC]
    add b
    rst $38
    nop
    dec l
    adc b
    pop hl
    ld b, d
    ei
    dec bc
    adc a
    sub b
    ld h, b
    rst $38
    rst $38
    xor b
    cp a
    ld d, [hl]
    cp a
    rst $38
    ld [$9dba], sp
    db $fd
    xor d
    ld c, $20
    xor d
    pop hl
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ld [hl], b
    dec hl
    add b
    ld sp, hl
    ld d, h
    ld bc, $fe20
    adc b
    and $aa
    ei
    db $fd
    rst $38
    and b
    ei
    ei
    ret nz

    adc h
    ldh [$88], a
    db $e3
    add b
    push hl
    nop
    rst $38
    ldh a, [$7b]
    nop
    ld a, [$0280]
    ld a, a
    ldh [$85], a
    add sp, -$10
    cp $a8
    cp $80
    ldh [$2c], a
    and b
    ldh [$fc], a
    ld [c], a
    ei
    ld [hl], l
    ld a, b
    ldh [$d9], a
    ld a, b
    and $00
    rst $38
    db $ec
    add b
    rst $38
    nop
    sbc $80
    ld a, [bc]
    ld a, b
    and $8a
    rst $38
    ld h, a
    rra
    rst $38
    adc d
    xor a
    db $dd
    rst $18
    nop
    rst $38
    ld b, $25
    sub b
    push bc
    ld hl, sp+$70
    ld [hl], e
    add b
    rst $38
    add b
    and l
    xor e
    nop
    ld d, a
    add b
    inc e
    add c
    db $e3
    add b
    ld b, [hl]
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    adc b
    db $e3
    add b
    ld b, b
    ld [hl], d
    rst $38
    ld a, [bc]
    pop bc
    ccf
    ld [bc], a
    xor a
    ld [bc], a
    rst $38
    jr nz, jr_04a_5706

    xor d
    db $10
    ld [hl], a
    jr nz, @-$04

    nop
    db $fd
    ld hl, sp+$25
    nop
    nop
    ld c, l
    nop
    nop
    nop
    ld c, $7e
    ld d, [hl]
    ld [hl], e
    nop
    ld a, [de]
    and b
    ld [$0200], sp
    ld b, b
    ld l, c
    adc b
    inc bc
    and b
    ld [$0200], sp
    nop
    inc hl
    ld d, [hl]
    ld [hl-], a
    and b
    ld [$0200], sp
    ld d, [hl]
    ld [hl-], a
    adc b
    inc bc
    and b
    ld [$0200], sp
    adc b
    inc bc
    ld b, b
    inc de
    and b
    ld [$2508], sp
    ld [$0825], sp
    dec h
    ld [$1825], sp
    nop
    call Call_04a_57d3
    call Call_04a_56fe
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
    ld hl, $5410
    ld de, $d000
    call Call_000_1f2f
    call Call_04a_610a
    ld hl, $5696
    ld de, $0205
    call Call_000_0595
    ret


Call_04a_56fe:
    ld hl, $da00

jr_04a_5701:
    ld a, [hl+]
    cp $ff
    jr z, jr_04a_5727

jr_04a_5706:
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, e
    cp $03
    jr z, jr_04a_5714

    cp $02
    jr nz, jr_04a_5725

jr_04a_5714:
    ld a, c
    and a
    jr z, jr_04a_5725

    ld a, c
    rrca
    rrca
    rrca
    and $07
    ld e, $00
    push hl
    call Call_04a_5728
    pop hl

jr_04a_5725:
    jr jr_04a_5701

jr_04a_5727:
    ret


Call_04a_5728:
    add a
    add a
    add a
    ld hl, $5793
    add l
    ld l, a
    jr nc, jr_04a_5733

    inc h

jr_04a_5733:
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

jr_04a_573f:
    push de

jr_04a_5740:
    ld a, [hl]
    and a
    jr z, jr_04a_5783

    bit 7, d
    jr nz, jr_04a_5783

    ld a, d
    cp $14
    jr nc, jr_04a_5783

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
    ld de, $4008
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
    jr c, jr_04a_5778

    ld c, $08

jr_04a_5778:
    push bc
    call Call_04a_61dd
    pop bc
    dec c
    jr nz, jr_04a_5778

    pop hl
    pop de
    pop bc

jr_04a_5783:
    inc hl
    inc d
    dec e
    jr nz, jr_04a_5740

    pop de
    inc b
    ld a, c
    sub $08
    ld c, a
    jr z, jr_04a_5792

    jr nc, jr_04a_573f

jr_04a_5792:
    ret


    nop
    nop
    ld bc, $9801
    ld b, h
    nop
    nop
    nop
    nop
    ld bc, $9902
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    inc bc
    sbc e
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    inc b
    and h
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    dec b
    or b
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    ld b, $bf
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    rlca
    pop de
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    ld [$44e6], sp
    nop
    nop

Call_04a_57d3:
    ld hl, $da00

jr_04a_57d6:
    ld a, [hl+]
    cp $ff
    jr z, jr_04a_57f9

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $01
    jr nz, jr_04a_57f7

    ld a, b
    rrca
    rrca
    rrca
    and $07
    jr z, jr_04a_57f7

    cp $07
    jr z, jr_04a_57f7

    ld e, b
    push hl
    call Call_04a_580a
    pop hl

jr_04a_57f7:
    jr jr_04a_57d6

jr_04a_57f9:
    ld a, [$c3b7]
    cp $0c
    jr nz, jr_04a_5809

    ld a, $07
    ld d, $0a
    ld e, $3f
    call Call_04a_580a

jr_04a_5809:
    ret


Call_04a_580a:
    add a
    add a
    add a
    ld hl, $60ca
    add l
    ld l, a
    jr nc, jr_04a_5815

    inc h

jr_04a_5815:
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

jr_04a_5822:
    push de

jr_04a_5823:
    ld a, [hl]
    and a
    jr z, jr_04a_586e

    bit 7, d
    jr nz, jr_04a_586e

    ld a, d
    cp $14
    jr nc, jr_04a_586e

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
    ld de, $587c
    add hl, de
    ld e, l
    ld d, h
    ld h, c
    ld l, $00
    srl h
    rr l
    ld a, b
    add a
    add l
    ld l, a
    jr nc, jr_04a_584f

    inc h

jr_04a_584f:
    ld bc, $d000
    add hl, bc
    call Call_04a_61dd
    call Call_04a_61dd
    call Call_04a_61dd
    call Call_04a_61dd
    call Call_04a_61dd
    call Call_04a_61dd
    call Call_04a_61dd
    call Call_04a_61dd
    pop hl
    pop de
    pop bc

jr_04a_586e:
    inc hl
    inc d
    dec e
    jr nz, jr_04a_5823

    pop de
    ld a, b
    add $08
    ld b, a
    dec c
    jr nz, jr_04a_5822

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
    jr jr_04a_5924

    jr nc, @+$41

    jr nc, jr_04a_5968

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

jr_04a_5924:
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
    call nz, $6c7c
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

jr_04a_5968:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_04a_5ab5:
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
    jr jr_04a_5b00

    jr jr_04a_5b02

    jr jr_04a_5b24

    jr nc, jr_04a_5b26

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

jr_04a_5b00:
    nop
    nop

jr_04a_5b02:
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

jr_04a_5b24:
    nop
    nop

jr_04a_5b26:
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    jr nc, jr_04a_5ab5

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

    jr nz, jr_04a_5bd0

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

jr_04a_5b88:
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
    jr jr_04a_5b88

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

jr_04a_5bd0:
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

jr_04a_5bea:
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
    jr jr_04a_5bea

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
    jr nz, jr_04a_5c94

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

jr_04a_5c94:
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
    jp z, Jump_04a_52ca

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

jr_04a_5d6e:
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_04a_5d6e

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
    jp c, Jump_04a_5457

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nc, jr_04a_60c9

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
    jr z, jr_04a_60da

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

jr_04a_60c9:
    ld h, $ff
    ld sp, hl
    inc bc
    ld bc, $607c
    nop
    nop
    rst $38
    ld sp, hl
    inc bc
    ld bc, $607c
    nop
    nop

jr_04a_60da:
    rst $38
    ld sp, hl
    inc bc
    ld bc, $607f
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    add d
    ld h, b
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    adc h
    ld h, b
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    sub [hl]
    ld h, b
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    and b
    ld h, b
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    or l
    ld h, b
    nop
    nop

Call_04a_610a:
    ld hl, $da00

jr_04a_610d:
    ld a, [hl+]
    cp $ff
    jr z, jr_04a_612f

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $03
    jr z, jr_04a_6120

    cp $02
    jr nz, jr_04a_612d

jr_04a_6120:
    ld a, b
    rrca
    rrca
    rrca
    and $07
    ld e, $07
    push hl
    call Call_04a_6130
    pop hl

jr_04a_612d:
    jr jr_04a_610d

jr_04a_612f:
    ret


Call_04a_6130:
    add a
    add a
    add a
    ld hl, $619d
    add l
    ld l, a
    jr nc, jr_04a_613b

    inc h

jr_04a_613b:
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

jr_04a_6148:
    push de

jr_04a_6149:
    ld a, [hl]
    and a
    jr z, jr_04a_6192

    bit 7, d
    jr nz, jr_04a_6192

    ld a, d
    cp $14
    jr nc, jr_04a_6192

    push bc
    push de
    push hl
    ld c, d
    ld l, [hl]
    ld h, $00
    add hl, hl

Jump_04a_615e:
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $44fe
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
    call Call_04a_61ea
    call Call_04a_61ea
    call Call_04a_61ea
    call Call_04a_61ea
    call Call_04a_61ea
    call Call_04a_61ea
    call Call_04a_61ea
    call Call_04a_61ea
    pop hl
    pop de
    pop bc

jr_04a_6192:
    inc hl
    inc d
    dec e
    jr nz, jr_04a_6149

    pop de
    inc b
    dec c
    jr nz, jr_04a_6148

    ret


    rst $38
    cp $03
    inc bc
    ld c, [hl]
    ld d, d
    nop
    nop
    rst $38
    ei
    inc bc
    ld b, $57
    ld d, d
    nop
    nop
    cp $f9
    dec b
    ld [$5269], sp
    nop
    nop
    db $fd
    ld sp, hl
    rlca
    ld [$5291], sp
    nop
    nop
    db $fc
    ld sp, hl
    add hl, bc
    ld [$52c9], sp
    nop
    nop
    db $fc
    ld sp, hl
    add hl, bc
    ld [$5311], sp
    nop
    nop
    ei
    ld sp, hl
    dec bc
    ld [$5359], sp
    nop
    nop
    ei
    ld sp, hl
    dec bc
    ld [$5359], sp
    nop
    nop

Call_04a_61dd:
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
    jr jr_04a_61f5

Call_04a_61ea:
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

jr_04a_61f5:
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


    cp $01
    ret nc

Jump_04a_6208:
    ld hl, $62f1
    add a
    add l
    ld l, a
    jr nc, jr_04a_6211

    inc h

jr_04a_6211:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d800
    call Call_000_1f2f
    pop hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d400
    call Call_000_1f2f
    ld hl, $d000
    ld bc, $0400
    ld a, $0a

jr_04a_623c:
    ld [hl+], a
    dec c
    jr nz, jr_04a_623c

    dec b
    jr nz, jr_04a_623c

    pop hl
    inc hl
    inc hl
    call Call_000_0341
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld de, $0201
    call Call_000_056c
    ld hl, $d800
    ld de, $b000
    ld c, $40
    call Call_000_0468
    ld hl, $d400
    ld de, $9800
    ld c, $20
    call Call_000_0468
    ld hl, $d000
    ld de, $b800
    ld c, $20
    call Call_000_04db
    call Call_000_0371
    call Call_000_0804
    pop hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, l
    ld [$d34e], a
    ld a, h
    ld [$d34f], a
    ld a, $ff
    ld [$d443], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld hl, $62a3
    call Call_000_23e8
    ret


    ld hl, $62a3
    call Call_000_2449
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d34e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d350
    push de
    push hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    push hl
    ldh a, [$8c]
    rrca
    and $1e
    add $08
    add l
    ld l, a
    jr nc, jr_04a_62ce

    inc h

jr_04a_62ce:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    push hl
    ldh a, [$8c]
    rrca
    and $0e
    add $28
    add l
    ld l, a
    jr nc, jr_04a_62e2

    inc h

jr_04a_62e2:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    pop hl
    ld de, $0201
    call Call_000_056c
    ret


    rst $30
    ld h, d
    or [hl]
    ld h, [hl]
    ld c, [hl]
    ld l, c
    db $fd
    ld h, d
    push hl
    ld h, l
    ld a, [hl]
    ld h, [hl]
    rst $38
    ldh a, [$e0]
    jr c, jr_04a_6312

    inc e
    ld [$040e], sp
    rst $38
    rst $00
    add d
    db $e3
    pop bc
    pop af
    pop hl
    pop af
    ld [hl], c
    rst $38
    nop
    nop

jr_04a_6312:
    ld bc, $0700
    nop
    rra
    nop
    rst $38
    ld a, [hl]
    ld bc, $3bfc
    rst $08
    ld b, a
    ret nz

    ld b, b
    rst $38
    ld [hl], c
    ld sp, $21f1
    db $e3
    pop bc
    add a
    inc bc
    rst $38
    rrca
    rlca
    rra
    ld c, $7e
    dec a
    db $fd
    ld a, [$40ff]

jr_04a_6335:
    ret nz

    ld b, b
    ret nz

    ld b, a
    add $47
    rst $00
    rst $38
    ld b, a
    rst $00
    ld b, l
    push bc
    ld b, l
    rst $00
    ld a, l
    ld a, l
    rst $38
    ld hl, sp-$0c
    add sp, -$39
    nop
    ld bc, $0182
    rst $38
    ld b, a
    add b
    inc de
    add b
    dec sp
    add b
    dec de
    db $e4
    rst $38
    ld a, a
    ld a, l
    ld a, l
    ld a, [hl-]
    ccf
    nop
    inc a
    jp $b0ff


    ld c, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld c, [hl]
    jr nc, jr_04a_63a7

    call nz, $1ce0
    add h
    ld a, b
    rst $38
    jr nz, jr_04a_6335

    ld bc, $c300
    add c
    rst $20
    ld b, d
    rst $38
    nop
    ld a, a
    ld b, b
    ccf
    ld hl, $201e
    inc e
    rst $38
    ld a, h
    dec sp
    xor $c4
    add [hl]
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld l, [hl]
    inc h
    inc l
    jr z, @+$2a

    jr z, jr_04a_63c1

    jr z, @+$01

    inc l
    inc l
    ld l, $2c
    cpl
    daa
    rst $28
    rst $20
    rst $38
    ld h, a
    ld h, d
    ld l, a
    ld b, [hl]
    ccf
    ld e, $7e

jr_04a_63a7:
    ld a, l
    rst $38
    ld e, $09
    ld c, $05
    add a
    inc b
    rst $38
    db $fc
    rst $08
    rst $28
    di
    db $ed
    jp nc, $e1b8

    or h
    pop hl
    ld bc, $3ffe
    inc b
    ld hl, sp-$01
    db $fc

jr_04a_63c1:
    rst $38
    ld hl, sp-$10
    push hl

jr_04a_63c5:
    and b
    db $eb
    ld l, l
    nop
    rst $38
    ldh [$80], a
    nop
    and b

jr_04a_63ce:
    push hl
    inc b
    inc bc
    ldh a, [$e1]
    rst $18
    ld bc, $1000
    ldh [rLCDC], a
    db $eb
    ldh [rP1], a
    nop
    sbc a
    ld b, b
    add b
    add c
    nop
    add a
    jr z, jr_04a_63c5

    jr nz, jr_04a_63ce

    ld hl, sp-$01
    rlca
    ldh [$1f], a
    add b
    ld a, a
    ld a, h
    cp b
    ld b, h
    cp e
    call nz, $ff44
    ldh [rLYC], a
    call nz, $12c7
    ldh [rLCDC], a
    cp a
    ld b, b
    ld a, h
    jr c, @+$47

    ld b, h
    ld b, a
    cp $e0
    add $cf
    push bc
    add h
    rlca
    inc b
    cp $e0
    ld b, b
    push hl
    ld a, $cc
    rst $38
    ld a, a
    inc sp
    pop hl
    ld b, b
    ret nz

    add b
    rra
    ld l, [hl]
    rst $38
    ld d, e
    ld sp, $1131
    ld sp, $1111
    ld de, $91bf
    ld de, $9191
    pop de
    sub c
    and b
    push hl
    ld b, e
    ld a, a
    add c
    adc a
    ld b, $9c
    ld [$1038], sp
    ret nz

    push bc
    rst $38
    cp $c1
    ld a, b
    daa
    jr nc, jr_04a_645d

    db $10
    rra
    cp [hl]
    db $10
    db $e3
    ld a, $1c
    ld h, $23

jr_04a_6447:
    ld [hl+], a

jr_04a_6448:
    rst $38
    ldh [rNR44], a
    ld a, l
    ld [hl+], a
    ld [hl], b
    rst $20
    ld sp, hl
    ld [hl], b
    sbc a
    adc a
    add c
    ld c, a
    ldh [$fe], a
    ld [hl], b
    jp hl


    ret nz

    cp a
    rrca
    ld [hl], a

jr_04a_645d:
    ld e, h
    jr z, jr_04a_6498

    rst $38
    db $10
    ld [hl], b
    jr nz, jr_04a_6448

    ld b, c
    rst $00
    add e
    adc a
    ld e, a
    add a
    adc a
    adc [hl]
    ld b, b
    add b
    ld h, $e0
    ldh [rNR43], a
    ldh [rIE], a
    ret nz

    ld bc, $83c0
    ld b, b
    adc a
    ld b, b
    inc bc
    cp [hl]
    ld h, d
    ret nz

    rlca
    nop
    ld b, $01
    ld [bc], a
    adc h
    ret nz

    jp Jump_000_00ff


    sub e

jr_04a_648b:
    ld h, b
    ld e, [hl]
    ld hl, $47b8
    jr nz, jr_04a_648b

    rst $18
    sbc $c7
    call nc, Call_000_04c5

jr_04a_6498:
    ld sp, hl
    db $10
    pop hl
    ld b, l
    rst $38
    add d
    add hl, de
    nop
    ld b, b
    ld b, b
    rst $00
    ld b, a
    ld b, a
    rst $38
    rst $00
    rst $00
    ld b, a
    call nz, $8c87
    add a
    sbc h
    ld a, a
    adc a
    db $fd
    cp $05
    ld b, $c5
    rst $00
    cp $e1
    ld a, h
    ld b, d
    ret nz

    ld b, b
    pop bc
    ld a, h
    sbc h
    adc b
    sbc h
    inc e
    rst $38
    ldh [$fb], a
    jr jr_04a_6447

    ld h, d
    ret nz

    rst $28
    rst $00
    rst $38
    rst $38
    pop de
    db $dd
    ld d, c
    rst $38
    pop hl
    pop de
    ld d, c
    pop de
    rst $38
    pop hl
    sub c
    sbc a
    rst $38
    ld a, a
    ld [hl], e
    inc hl
    db $e3
    ld b, d
    ld b, c
    ret nz

    ld h, e
    rst $38
    jp $e060


    ld [hl], b
    ldh [$7c], a
    cp b
    ccf
    rst $38
    rst $38
    ld sp, $721f
    ld a, $f4
    db $fc
    or $ff
    xor $e7
    ld e, a
    ld [hl], e
    inc hl
    dec h
    inc hl
    ld sp, hl
    rst $18
    ldh [$fe], a
    cp $01
    ld bc, $a0cc
    ld bc, $deff
    rst $38
    pop hl
    cp $8f
    ld b, b
    inc hl
    inc e
    ldh [$a3], a
    and d
    rst $38
    and d
    and e
    and d
    and e
    or d
    inc hl
    ei
    ld [hl-], a
    ld [hl], a
    cp a
    ld a, [hl]
    add b
    rst $38
    ldh [$8e], a
    adc h
    adc [hl]
    rst $38
    ldh [$fd], a
    adc d
    cp $e0
    ei
    rst $38
    rst $00
    ld a, a
    ld c, b
    ld a, b
    rst $38
    ld d, b
    ld [hl], b
    ld e, b
    ld a, b
    ld e, a
    ld a, a
    ld e, a
    ld l, a
    rst $38
    ld b, a
    ld b, a
    reti


    ret nz

    ld hl, sp-$08
    inc b
    inc b

jr_04a_6542:
    rst $38
    ld [bc], a
    ld [bc], a
    ld b, $06
    cp $fe
    db $fd
    db $fc
    rst $38
    ei
    ld hl, sp-$71
    ld b, b
    adc a
    adc h
    adc a
    adc b
    rst $38
    adc a
    add h
    rst $00
    add a
    ldh [$c0], a
    ldh a, [$e0]
    rst $38
    ld hl, sp+$70
    rst $38
    ccf
    rrca
    ldh a, [$8c]
    ld [hl], e
    sbc $00
    ret


    rrca
    ldh a, [$03]
    db $fc
    nop
    ret


    nop
    db $ec
    cp l
    jr z, @-$7e

    xor d
    ld [bc], a
    ld bc, $0609
    add b
    xor c
    db $fc
    rst $10
    ld hl, sp-$08
    ld [hl], a
    ld h, b
    xor c
    ld a, [hl]
    ld h, b
    xor h
    rst $38
    ld a, [hl]
    ld a, e
    db $fc
    dec sp
    and b
    xor c
    rra
    rst $38
    rra
    xor $a0
    xor c
    rst $30
    ccf
    rst $18
    cpl
    jr nz, jr_04a_6542

    ld [c], a
    pop hl
    jp hl


    add $de
    jr nz, @-$55

    ccf
    sbc $1f
    db $ec
    ld [hl], b
    xor c
    ei
    rst $38
    ld a, e
    ei
    ld [hl], l
    ldh a, [$89]
    jp nz, $c9c1

    add [hl]
    ret nc

    ld [$dff7], a
    rra
    rst $28
    ld b, b
    xor c
    ld de, $46e0
    add c
    rst $38
    add hl, de
    nop
    ld h, d
    ld bc, $008d
    ld sp, $ff00
    call nz, Call_000_1303
    inc c
    nop
    rst $38
    add b
    ld a, a
    inc e
    add $81
    db $fc
    db $e3
    add b
    ld a, a
    ld de, $e872
    nop
    and c
    ld hl, sp-$7b
    dec c
    ld de, $a228
    inc bc
    nop
    nop
    nop
    nop
    xor a
    inc c
    dec c
    ld c, $0f
    db $fc
    db $ed
    nop
    rst $38
    add sp, $1a
    rst $20
    dec de
    inc e
    dec e
    db $fc
    db $ed
    ldh [$e9], a
    ld a, [hl+]
    dec hl
    inc l
    ld a, c
    dec l
    db $fc
    db $ed
    ret nz

    jp hl


    jr c, jr_04a_663c

    ld a, [hl-]
    dec sp
    db $fc
    db $ed
    nop
    and b
    jp hl


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
    cp $80
    pop af
    db $10
    ld de, $1312
    inc d
    dec d
    inc c
    rst $38
    ld d, $17
    jr jr_04a_6633

    add hl, de
    nop
    ld bc, $fd06
    rlca
    add b
    db $ed
    ld e, $1f
    jr nz, jr_04a_6654

jr_04a_6633:
    ld [hl+], a
    inc hl
    rst $38
    inc h
    dec h
    ld h, $27
    jr z, jr_04a_6665

jr_04a_663c:
    ld [bc], a
    inc bc
    ei
    ld [$8009], sp

jr_04a_6642:
    db $ed
    ld l, $2f
    jr nc, jr_04a_6678

    ld [hl-], a
    rst $38
    inc sp
    ld a, [hl+]
    inc [hl]
    dec [hl]
    ld [hl], $2a
    scf
    inc b
    rlca
    dec b
    ld a, [bc]

jr_04a_6654:
    dec bc
    add b
    rst $38
    jr nz, jr_04a_6642

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_04a_6665:
    rst $38
    rst $38
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

jr_04a_6678:
    rst $38
    nop
    nop
    nop
    nop
    nop
    db $fc
    inc bc
    ld d, h
    inc bc
    ret nz

    ld a, [de]
    rra
    nop
    jr nz, jr_04a_6706

    ld b, b
    ld [hl], d
    ld h, b
    ld h, [hl]
    add c
    ld e, d
    and h
    ld c, [hl]
    rst $00
    ld b, d
    ld [$0d36], a
    dec hl
    jr nc, jr_04a_66b7

    dec c
    dec hl
    ld [$c736], a
    ld b, d
    and h
    ld c, [hl]
    add c
    ld e, d
    ld h, b
    ld h, [hl]
    ld b, b
    ld [hl], d
    rra
    nop
    sbc a
    nop
    rra
    ld bc, $019f
    rra
    ld [bc], a
    sbc a
    ld bc, $011f
    sbc a
    nop
    cp h

jr_04a_66b7:
    ld h, [hl]
    sbc l
    ld l, b
    ld d, $69
    db $fd
    nop
    rst $38
    db $ec

jr_04a_66c0:
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    ld [$d7f0], sp
    ld [$f8f0], sp
    rst $20
    db $e4
    rst $38
    cp $e0
    add b
    ld a, a
    rst $20
    add b
    ld a, a
    adc a
    add sp, -$20
    db $e4
    pop hl
    adc e
    ld [hl], c
    sbc a
    rst $38
    ld l, [hl]
    ld a, b
    or b
    ldh [rLCDC], a
    add a
    add e
    sbc $fb
    adc h
    db $fc
    rst $38
    ldh [rIE], a
    ld hl, sp+$0f
    inc b
    ld b, $ff
    inc bc
    ld a, [c]
    ld h, e
    di
    ld a, [c]
    ld a, [c]
    ld [c], a
    and $ff
    jp nz, Jump_000_060e

    adc b
    ld [hl], b
    sbc [hl]
    ld l, h
    rla
    rst $38
    di
    inc de
    di
    di

jr_04a_6706:
    inc de
    inc sp
    inc de
    inc sp
    rst $38
    inc hl
    daa
    inc hl
    rst $38
    ld h, b
    sbc a
    sub b
    sub b
    ld a, a
    sbc a
    sub b
    rra
    ccf
    db $10
    jr c, jr_04a_674b

    cp $e0
    db $fd
    jr nz, jr_04a_66c0

    db $e3
    ld e, $ec
    or $12
    ld [de], a
    ld [de], a
    rst $38
    ld [hl-], a
    ld [de], a
    ld [hl-], a
    ld [hl+], a
    rst $38
    inc c
    rst $30
    ld [hl], d
    rst $38
    or e
    sub c
    sbc c
    sub c
    reti


    adc c
    call $ff49
    rst $28
    rst $08
    di
    ld [hl], e
    adc a
    db $76
    adc l
    ld a, c
    rst $38
    add hl, de
    jp hl


    add hl, de
    pop af
    pop af
    ld de, $1011

jr_04a_674b:
    rst $28
    db $10
    db $10
    ld [de], a
    db $10
    add b
    rst $20
    ld hl, sp-$20
    inc a
    rst $38
    jr jr_04a_675c

    inc b
    adc b
    ld [hl], b
    rst $38

jr_04a_675c:
    ld h, a
    call c, $98ff
    add b
    add b
    add e
    add c
    adc a
    add a
    sbc a
    rst $30
    sbc a
    sbc a
    adc [hl]
    ld h, b
    ldh [$f8], a
    ld c, $05
    ld b, $ef
    inc bc
    di
    ld [c], a
    ld a, [c]
    rst $38
    ldh [$b2], a
    ld h, d
    sbc a
    rst $30
    ld l, a
    ld hl, sp+$30
    ld h, d
    pop hl
    rst $18
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ei
    ld [hl], d
    rst $38
    ldh [$3f], a
    db $10
    rst $38
    jr @+$11

    adc b
    adc a
    adc a
    adc b
    sbc b
    adc b
    rst $38
    sbc b

jr_04a_6799:
    jr jr_04a_67b3

    jr jr_04a_6799

    ld [hl], h
    db $fc
    ld [$99ff], sp
    ld l, b
    cp c
    ld d, c
    or e
    ld h, c
    and a
    ld h, e
    rst $38
    cp a
    ld h, a
    cp a
    ld a, [hl]
    ld e, $0e
    cp $fc
    ld a, a

jr_04a_67b3:
    db $fc
    ld hl, sp-$08
    ldh a, [$f8]
    add b
    add b
    push af
    jp nz, $e7fb

    daa
    cp $e0
    ld b, l
    call $cf47
    adc l
    rst $38
    sbc l
    adc l
    sbc l
    sbc c
    ld sp, hl
    ld sp, hl
    cpl
    ld [hl], $ff
    dec a
    add hl, hl
    add hl, sp
    ld sp, $0123
    rlca
    inc bc
    rst $38
    adc a
    rlca
    sbc $8e
    db $fc
    db $fc
    rst $20
    ld [hl+], a
    rst $38
    rst $20
    ld h, $e6
    ld b, a
    adc $45
    rst $08
    adc h
    rst $38
    sbc h
    adc h
    call c, $f898
    ld hl, sp-$0d
    ld h, d
    rst $38
    di
    ld [hl-], a
    inc sp
    pop af
    add hl, sp
    pop de
    ld sp, hl
    add hl, de
    cp a
    add hl, de
    add hl, de
    dec de
    add hl, bc
    rrca
    rrca
    dec b
    ldh [rNR13], a
    rst $38
    sub e
    ld [hl], e
    sub e
    ld [hl], c
    sbc c
    ld [hl], c
    sbc c
    ld a, c
    cp a
    sbc l
    ld a, c
    sbc a
    ld l, a
    call z, $da84
    pop bc
    db $fc
    db $fd
    ld a, b
    or b
    push bc
    rst $08
    adc b
    rst $08
    ret z

    call z, $ffcb
    rst $08
    ld b, l
    rst $20
    ld b, [hl]
    ldh [$60], a
    ldh a, [$60]
    rst $38
    rst $38

jr_04a_682e:
    ccf
    and [hl]
    ld h, d
    and $26
    ld h, [hl]
    add $ff
    add $c4
    ld [bc], a
    ld [bc], a
    ld b, $02
    cp $7e
    rst $38
    cp $fe
    cp $02
    cp $04
    sbc h
    ld l, b
    rst $28
    ld sp, hl
    jr nc, jr_04a_682e

    ld b, c
    inc a
    ld [c], a
    ld a, [hl]
    jr jr_04a_6861

    rst $38
    inc e
    ld [$04cc], sp
    and $c4
    and $e2
    rst $38
    ld a, [c]
    ld [c], a
    or $32
    ld a, $3e

jr_04a_6861:
    cp [hl]
    ld a, h
    ld a, e
    cp h
    ld e, b
    ld h, b
    ret


    ld sp, hl
    ldh a, [$f8]
    ld h, b
    ld d, b
    jp z, $f8c7

    rst $38
    ld [hl], b
    ld d, b
    ret


    ld h, $e0
    ldh [$eb], a
    rrca
    rst $38
    cp l
    ld b, $30
    ret


    adc a
    ld a, a
    adc a
    db $76
    db $10
    ret


    cp a
    ld [hl], a
    ld a, a
    cp a
    ld e, a
    nop
    jp z, $fffc

    add b
    nop
    ret


    inc e
    jp nc, $e0c0

    xor e
    ld e, $ff
    inc c
    ldh [$a9], a
    nop
    nop
    nop
    ld c, e
    ld bc, $fe02
    rst $28
    nop
    rst $38
    add sp, -$1f
    ldh a, [rSB]
    ldh [$e9], a
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
    db $fc
    ret nz

    rst $38
    ret nz

    rst $28
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$09bf], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $c0
    pop af
    rrca
    rst $38
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    rst $30
    jr jr_04a_68f5

    ld a, [de]
    add b

jr_04a_68de:
    pop af
    dec de
    ld [bc], a
    inc e
    dec e
    rst $38
    ld e, $1f
    jr nz, @+$04

    ld hl, $2322
    inc h
    nop
    add b
    rst $38
    ld b, b
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38

jr_04a_68f5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    db $fc
    inc bc
    ld a, e
    ld h, d
    adc $7d
    rra
    jr jr_04a_68de

    ld a, [de]
    ld a, a
    ld [hl+], a
    ccf
    ld a, [hl+]
    rst $38
    ld sp, $39bf
    ld a, a
    ld b, c
    ccf
    ld c, c
    rst $38
    ld d, b
    cp a
    ld e, b
    rst $38
    ld d, b
    ccf
    ld c, c
    ld a, a
    ld b, c
    cp a
    add hl, sp
    rst $38
    ld sp, $2a3f
    ld a, a
    ld [hl+], a
    nop
    ld a, h
    add b
    ld a, h
    nop
    ld a, l
    add b
    ld a, l
    nop
    ld a, [hl]
    add b
    ld a, l
    nop
    ld a, l
    add b
    ld a, h
    ld d, h
    ld l, c
    ld l, c
    ld l, e
    rst $20
    ld l, e
    db $fd
    nop
    rst $38
    db $ed
    rst $38
    ld bc, $00fe
    cp $02
    rst $38
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rSTAT], a
    cp a
    add b
    jr jr_04a_6972

    jr jr_04a_6974

jr_04a_696d:
    jr c, jr_04a_696d

    ldh [rSVBK], a
    rst $38

jr_04a_6972:
    rrca
    ld [hl], b

jr_04a_6974:
    rrca
    ldh [$1f], a
    ldh [$1f], a
    nop
    rst $38
    ld hl, sp+$00
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    ld [bc], a
    rst $30
    db $fc
    nop
    cp $d6
    ldh [rIE], a
    ret nz

    ccf
    ret nz

    ei
    ccf
    ld b, b
    cp $e0
    jr nz, jr_04a_69b3

    db $10
    rrca
    ld [$07f7], sp
    add d
    ld bc, $e1e0
    dec b
    ld hl, sp+$03
    db $fd
    rst $38
    rrca
    or $1c

jr_04a_69a5:
    add sp, $38
    ret nc

    ld [hl], b
    and b
    rst $38
    cp $1d
    or $63
    jp nz, $8e83

    rlca

jr_04a_69b3:
    rst $38
    ld a, $1f
    ld a, [hl]
    dec a
    ld a, h
    ld a, e
    ld [hl], d
    ld h, c
    sbc $a0
    jp hl


    rla
    db $e3
    ld a, [hl]
    cp h

jr_04a_69c3:
    and b
    jp hl


    rst $38
    cp $ff
    inc bc
    ld bc, $f70f
    dec c
    ld hl, sp+$18
    add sp, -$01
    jr jr_04a_69c3

    jr nc, jr_04a_69a5

    inc sp
    pop hl
    ld h, a
    and e
    rst $38
    ld h, a
    rst $00
    rst $18
    ld l, $fb
    pop af
    ld e, c
    ld c, c
    rst $38
    ld c, l
    ld c, c
    rst $28
    ld b, l
    rst $30
    rst $20
    rst $38
    ei
    rst $38
    di
    and d

jr_04a_69ee:
    nop
    rst $38
    rra
    db $ec
    rla
    di
    db $fd
    inc de
    cp $e0
    inc sp
    db $d3
    inc sp
    db $e3
    ld h, a
    and e
    rst $28
    ld hl, sp+$67
    sbc b
    sub a
    cp $e0
    rla
    jr nc, jr_04a_6a27

    ei
    jr nc, jr_04a_6a4a

    cp $e0
    cpl
    inc bc
    nop
    rrca
    nop
    ld a, a
    ccf
    nop
    cp $00
    db $f4
    ld [$3e00], sp
    ldh [$7f], a
    ld bc, $c0f0
    ccf
    call nz, $0103
    dec de
    ldh [rIE], a

jr_04a_6a27:
    jr c, jr_04a_6a29

jr_04a_6a29:
    ld h, h
    jr jr_04a_69ee

    inc a
    add c
    ld a, [hl]
    ei
    nop
    rst $38
    cp $e1
    add b
    ld a, a
    ld b, b
    ld a, $00
    rst $38
    inc a
    jr nz, jr_04a_6a59

    nop
    inc e
    ld b, b
    add b
    db $10
    rst $38
    ldh [$0c], a
    ldh a, [$03]
    db $fc
    nop
    rra

jr_04a_6a4a:
    nop
    rst $38
    rrca
    ret z

    rlca
    adc b
    ld b, a
    and $42
    adc $ff
    add [hl]
    sbc [hl]
    adc [hl]
    cp [hl]

jr_04a_6a59:
    sbc [hl]
    cp $fa
    ld a, [$f6ff]
    ld a, [c]
    ld l, [hl]
    inc bc
    rra
    ld b, b
    ld b, b
    ld d, b
    rst $38
    ld h, b
    ld c, h
    ld [hl], b
    ld b, e
    ld a, h
    ld b, b
    ld e, a
    ld b, b
    rst $38
    ld c, a
    ld c, b
    ld b, a
    ret z

    rst $00
    ldh [rLCDC], a
    add c
    ld l, a
    add b
    rst $38
    sbc a
    rst $38
    rst $38
    ldh [$f0], a
    ld l, b
    and b
    pop hl
    cp e
    ld bc, $f401
    pop hl
    rst $38
    cp $b8
    and b
    db $e4
    ld c, a
    rst $38
    add $4e
    call $ce5d
    rst $38
    ld a, c
    ld a, a
    rst $38
    ld a, d
    ld a, [hl]
    inc [hl]
    inc h
    inc e
    rlca
    rra
    ld h, [hl]
    rst $38
    and d
    and $46
    adc $86
    sbc a
    inc c
    inc a
    rst $38
    rra
    ld a, h
    dec sp
    ld hl, sp+$77
    ld hl, sp-$19
    daa
    rst $38
    daa
    ld h, a
    daa
    ld h, a
    ld b, l
    rst $08
    ld b, l
    call $8dff
    sbc l
    adc l
    sbc l
    sbc c
    ld sp, hl
    ld sp, hl
    cpl
    rst $38
    ld [hl], $3d
    add hl, hl
    add hl, sp
    ld sp, $0123
    rlca
    ld a, a
    inc bc
    adc a
    rlca
    sbc $8e
    db $fd
    cp $ae
    ldh [$f7], a
    ldh a, [$08]
    ldh a, [$9c]
    pop bc
    ld [hl+], a
    inc e
    add hl, bc
    ld b, $fb
    ld [bc], a
    ld bc, $c170
    add d
    ld a, h
    ld b, h
    jr c, jr_04a_6b13

    rst $38
    stop
    nop
    ld bc, $4700
    add b
    db $10
    rst $38
    inc c
    db $10
    ld c, $30
    rrca
    jr nz, jr_04a_6b1b

    ld h, b
    rst $38
    rra
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ld [$60f6], sp
    ret nz

    ldh a, [rIF]
    ld a, [hl+]
    pop hl
    inc b
    ld hl, sp+$10
    ldh [$bf], a
    ld b, b

jr_04a_6b13:
    add b
    inc de
    rrca
    inc de
    dec c
    ldh [$e9], a
    ret z

jr_04a_6b1b:
    rst $30
    rst $00
    ret c

    add a
    ldh [$e9], a
    rla
    rrca
    rla
    dec bc
    ld a, d
    ret nz

    jp hl


    add sp, -$20
    db $ec
    ld sp, hl
    ldh a, [$f1]
    ld h, b
    add b
    jp hl


    rst $28
    db $fc
    ei

jr_04a_6b34:
    ld sp, hl
    db $76
    add b
    jp hl


    pop bc
    nop
    ldh a, [$df]
    nop
    ld [$04f0], sp
    ld hl, sp+$00
    push bc
    inc e
    db $e3
    sub d
    ld a, d
    ldh [$7f], a
    nop
    pop bc
    cp $a1
    db $10
    db $76
    ldh [$c0], a
    and e
    nop
    db $ec
    cp $e0
    ret c

    and b
    ld hl, sp-$7d
    ld [hl], b
    ret nz

    rra
    nop
    inc a
    inc bc
    inc bc
    ld a, b
    cp [hl]
    and b
    ret nz

    and c
    nop
    nop
    nop
    xor a
    ld bc, $0302
    inc b
    db $fc
    db $ed
    nop
    rst $38
    add sp, $0d
    rst $20
    ld c, $0f
    db $10
    db $fc
    db $ed
    ldh [$e9], a
    add hl, de
    ld a, [de]
    dec de
    ld a, c
    inc e
    db $fc
    db $ed
    ret nz

    jp hl


    inc hl
    inc h
    dec h
    ld h, $fc
    db $ed
    nop
    and b
    jp hl


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
    cp $80
    push af
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    db $fd
    inc c
    add b
    push af
    ld de, $1312
    inc d
    dec d
    ld d, $fb
    rla
    jr jr_04a_6b34

    push af
    dec e
    ld e, $19
    ld a, [de]
    rra
    rlca
    jr nz, jr_04a_6bde

    ld [hl+], a
    add b
    rst $38
    nop
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_04a_6bde:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc bc
    rst $18
    ld [bc], a
    rst $18
    ld h, b
    nop
    ld a, h
    cp h
    ld e, h
    reti


    ld h, b
    or $64

jr_04a_6bf5:
    inc de
    ld l, c
    jr nc, @+$6f

    ld c, l
    ld [hl], c
    ld l, d
    ld [hl], l
    add a
    ld a, c
    call nz, $877d
    ld a, c
    ld l, d
    ld [hl], l
    ld c, l
    ld [hl], c
    jr nc, jr_04a_6c76

    inc de
    ld l, c
    or $64
    reti


    ld h, b
    rra
    jr @+$61

    inc e
    sbc a
    jr nz, jr_04a_6bf5

    inc h
    rra
    add hl, hl
    rst $18
    inc h
    sbc a
    jr nz, @+$61

    inc e
    call Call_000_23b6
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_0341
    call Call_000_2683
    ld a, $90
    ldh [rWY], a
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld hl, $6cc5
    ld de, $0008
    call Call_000_056c
    ld hl, $6d05
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $40
    call Call_000_0468
    ld hl, $d400
    ld de, $b400
    ld c, $40
    call Call_000_0468
    ld hl, $d800
    ld de, $a800
    ld c, $40
    call Call_000_04db
    ld hl, $74d9
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000

jr_04a_6c76:
    ld de, $b800
    ld c, $24
    call Call_000_04db
    ld hl, $755e
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $9800
    ld c, $24
    call Call_000_04db
    call Call_000_0371
    xor a
    ld [$c0f8], a
    ld a, $01
    ld hl, $6ca2
    call Call_000_23e8
    ret


    ld hl, $c0f8
    ld a, [hl]
    push hl
    and $fc
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $7650
    add hl, de
    ld de, $b000
    ld c, $04
    call Call_000_0468
    pop hl
    inc [hl]
    ld a, [hl]
    cp $30
    ret c

    xor a
    ld [hl], a
    ret


    adc [hl]
    ld a, a
    pop de
    inc b
    add hl, bc
    nop
    rra
    nop
    adc [hl]
    ld a, a
    rst $18
    ld [hl-], a
    add hl, bc
    nop
    rra
    nop
    adc [hl]
    ld a, a
    rst $38
    ld h, e
    add hl, bc
    nop
    rra
    nop
    rst $38
    ld h, e
    pop de
    inc b
    add hl, bc
    nop
    rra
    nop
    rst $38
    ld h, e
    rst $18
    ld [hl-], a
    add hl, bc
    nop
    pop de
    inc b
    adc [hl]
    ld a, a
    rst $38
    ld h, e
    pop de
    inc b
    add hl, bc
    nop
    adc [hl]
    ld a, a
    rst $18
    ld [hl-], a
    pop de
    inc b
    add hl, bc
    nop
    adc [hl]
    ld a, a
    rst $38
    inc bc
    sbc a
    ld [bc], a
    add hl, bc
    nop
    rst $38
    ld bc, $7203
    inc bc
    inc bc
    ld b, $05
    ld c, $ff
    ccf
    ld a, h
    ld e, l
    ld h, d
    cpl
    ld [hl], d
    rla
    ld a, [hl-]
    rst $38
    dec bc

jr_04a_6d19:
    inc e
    ld a, [bc]
    dec e
    inc d
    dec de
    ld de, $df3f
    ld h, $3f
    jr jr_04a_6d61

    nop
    rst $38
    ldh [$80], a
    ret nz

    rst $38
    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld [hl], b
    db $fc
    ld a, $ff
    cp d
    ld b, [hl]
    db $f4
    ld c, [hl]
    add sp, $5c
    ret nc

    jr c, @+$01

    ld d, b
    cp b
    jr z, jr_04a_6d19

    adc b
    db $fc
    ld h, h
    db $fc
    rst $20
    jr jr_04a_6d84

    ld c, $df
    pop hl
    db $fc
    ld hl, sp+$01
    nop
    ld [$07bd], sp

jr_04a_6d52:
    db $dd
    jp hl


    add b
    ld a, a
    nop
    rst $38
    ldh a, [$ea]
    nop
    ei
    ld [$daf0], sp
    pop hl
    inc b

jr_04a_6d61:
    inc bc
    ld [$1107], sp
    rst $38
    ld c, $23
    dec e
    rlca
    dec sp
    ld b, a
    ld a, $20
    rst $38
    rra
    nop
    rst $38
    rrca
    rst $30
    ld a, a
    cp a
    rst $38
    cp $ff
    ldh [$c1], a
    cp [hl]
    nop
    rst $38
    ld [$01f0], sp
    rst $18
    cp $e0

jr_04a_6d84:
    rst $18
    cp $fd
    ldh a, [$e1]
    rst $38
    rst $38
    ei
    ld a, a
    cp a
    ld l, h
    pop hl
    jr nz, jr_04a_6d52

    ld [$c2f0], sp
    ld a, a
    cp h
    ldh a, [$ef]
    db $fc
    ei
    rst $38
    cp $b2
    jp hl


    rst $28
    ld b, b
    add b
    jr nz, @-$3e

    add [hl]
    push hl
    nop
    ld bc, $ff02
    ld bc, $0300
    nop
    inc bc
    jr nz, jr_04a_6dd0

    ld b, e
    rst $38
    inc a
    adc a
    ld [hl], a
    rra
    rst $28
    ccf
    rst $18
    ld a, a
    db $eb
    cp a
    ld a, a
    cp a
    ldh [rP1], a
    and a
    ldh [$81], a
    add c
    nop
    ld a, [$e1f9]
    rst $38
    cp [hl]
    ldh [$83], a
    inc bc
    db $fc
    ret nz

jr_04a_6dd0:
    ccf
    rst $38
    ld hl, sp-$09
    ld e, $1d
    add e
    add e
    ld sp, hl
    ld sp, hl
    rst $38
    cp $7e
    rrca
    rst $30
    adc h
    ld [hl], e
    ld [$ffff], sp
    add hl, bc
    or $00
    cp $80
    ld a, [hl]
    ldh [$df], a
    cp $9e
    pop hl
    ld b, c
    add b
    sbc h
    inc e
    inc a
    inc a
    ld a, h
    db $fd
    ld a, h
    ld [hl], b
    pop hl
    rst $18
    rst $18
    rra
    rst $18
    rra
    rst $28
    rst $38
    ld c, a
    scf
    daa
    rra
    rlca
    dec de
    db $d3
    rst $08
    ccf
    jp $c3cf


    call $c7c9
    ld l, b
    db $e3
    ld_long a, $ffe7
    sub b
    ld h, b
    ret z

    or b
    db $e4
    ret c

    ld a, [c]
    db $ec
    ld a, a
    ld sp, hl
    or $fc
    ei
    cp $fd
    cp $10
    add sp, -$5a
    ld h, b
    pop hl
    nop
    ret nz

    ld l, h
    pop hl
    ld l, b
    pop hl
    ld [bc], a
    ld h, b
    pop hl
    ld bc, $01bf
    nop
    rst $38
    ld a, a
    rst $38
    cp $fe
    ldh [$7e], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $7f
    cp a
    ccf
    rst $38
    di
    rst $38
    ld a, $ee
    ldh [$ab], a
    rst $20
    cp $81
    ld a, [hl]
    ld hl, sp-$59
    rst $20
    cp $f9
    call c, $ffe0
    jp nz, $f63f

    ret nz

    ld a, a
    rst $38
    cp [hl]
    rra
    rst $28
    adc a
    ld [hl], a
    rst $20
    sbc e
    di
    db $fd
    db $ed
    sbc h
    pop hl
    inc bc
    db $e3
    inc bc
    di
    jp $ffbb


    db $e3
    db $dd
    pop af
    xor $f0
    rst $38
    ld hl, sp-$09
    xor a
    db $fc
    ld a, e
    pop bc
    rst $00
    cp $e1
    ret


    cp $e0
    jp $cdff


    ld d, e
    adc l
    inc hl
    rst $18
    rst $38
    cp $cf
    rst $38
    rst $08
    rst $20
    rst $20
    db $e3
    db $e3
    di
    di
    pop af
    or $ff
    ldh [$f0], a
    ldh a, [$de]
    ret nz

    ldh [$90], a
    ld h, b
    add b
    rst $38
    ldh a, [$c8]
    or b
    ret nz

    ld hl, sp-$40
    ld hl, sp-$1c
    rst $38
    ret c

    ccf
    rst $18
    sbc a
    ld l, a
    ld e, a
    cpl
    rrca
    rst $38
    scf
    daa
    dec de
    inc de
    inc c
    add hl, bc
    ld b, $04
    rst $38
    inc bc
    db $fc
    ei
    ld hl, sp-$09
    ldh a, [$ef]
    ldh [rIE], a
    rst $18
    ret nz

    cp a
    jp nz, $843c

    ld a, b
    ld [$f07f], sp
    rra
    rst $28
    rrca
    rst $30
    rlca
    ei
    ld c, b
    ret nz

    ld a, a
    rst $38
    jr nz, jr_04a_6efc

    db $10
    inc c
    nop
    inc c
    db $76
    ret nz

    db $fd
    db $fc
    ld d, b
    pop hl
    ccf
    sbc $0f
    db $f4
    add e
    ld a, h
    rst $38
    ld hl, $7e1e
    cp l
    ccf
    sbc $9f
    ld l, a
    rst $38
    adc a
    ld a, a
    rst $08
    scf
    rst $00

jr_04a_6efc:
    ccf
    rst $20
    dec de
    rst $38
    db $e3
    rra
    rlca
    ei
    rlca
    rst $38
    adc a
    ld [hl], a
    rst $38
    adc a
    rst $30
    rst $00
    cp a
    rst $20
    db $db
    db $e3
    rst $38
    rst $10
    di
    rst $28
    ld hl, sp-$01
    and $fc
    rst $38
    ld [c], a
    db $e4
    ret c

    ei
    ldh [$fc], a
    cp $e1
    ld a, [c]
    db $ec
    ld a, [c]
    db $ec
    ldh a, [$fb]
    cp $f0
    ld b, b
    ret z

    nop
    ld bc, $0703
    rlca
    db $dd
    rrca
    xor l
    and e
    rlca
    rrca
    ccf
    ld d, e
    ret nz

    rst $28
    ldh a, [$ef]
    ld a, a
    add b
    ld bc, $3303
    pop bc
    add b
    pop bc
    pop af
    rst $38
    ld sp, hl
    db $fd
    rst $38
    sbc a
    ld a, a
    ei
    rlca
    xor $ff
    pop af
    ei
    rst $20
    sub $ef
    db $ed
    sbc $bb
    rst $38
    call c, $b856
    db $fc
    ldh a, [$e8]
    ldh a, [$37]
    rst $38
    call z, $e4db
    cpl
    ldh a, [$df]
    jr nc, jr_04a_6fa0

    ei
    jr @+$19

    cp $e0
    ld [hl], a
    ld hl, sp+$18
    rrca
    inc c
    rst $38
    rlca
    ld [$100f], sp
    rrca
    db $10
    rra
    daa
    ccf
    inc e
    jr c, jr_04a_6f90

    jr nz, jr_04a_6f82

jr_04a_6f82:
    ld bc, $e046
    cp $e3
    rst $38
    ldh a, [$3f]
    inc e
    rlca
    ld b, $03

jr_04a_6f8e:
    di
    db $fd

jr_04a_6f90:
    rst $38
    ld a, c
    or a
    add hl, sp
    sbc $1c
    ei
    inc e
    rst $28
    cp a
    inc c
    rst $38
    ld c, $fd
    ld c, $f5

jr_04a_6fa0:
    ld b, b
    jp z, $b37f

    ld a, a
    rst $38
    ld e, d
    db $e3
    ld a, [$f0e7]
    ld a, [hl]
    cp $eb
    dec c
    rst $38
    ld e, $1b
    inc a
    ccf
    jr c, jr_04a_6fed

    ld a, b
    ld a, a
    ld a, a
    ld [hl], b
    ld l, a
    ldh a, [$7f]
    ldh [rIE], a
    ldh [$a1], a
    and $f2
    sbc c
    db $e4
    cp $8f
    rst $20
    add a
    ld [c], a
    add sp, -$0f
    ld [hl], c
    pop af
    cp a
    or c
    ld [hl], e
    db $db
    dec sp
    rst $28
    rra
    add hl, hl
    and b
    rrca
    rst $38
    rst $38
    rlca
    ld [$40f0], sp
    ldh a, [rNR10]
    or b
    rst $18
    db $10
    and b
    jr nz, @-$1e

    jr nz, jr_04a_6f8e

    add c
    add b
    rst $38
    rst $38
    nop

jr_04a_6fed:
    db $fc
    inc bc
    rst $30
    rrca
    xor $1f
    db $db
    rst $38
    inc a
    or a
    ld a, b
    ld l, [hl]
    ldh a, [$dc]
    ldh [$fe], a
    db $fd
    ld bc, $e01e
    db $fc
    db $ed
    ld e, $f7
    ld c, $82
    ei
    rlca
    inc bc
    rst $38
    ldh [$0e], a
    rst $30
    ld c, $f7
    adc [hl]
    rst $38
    ld [hl], e
    adc a
    ld [hl], d
    rlca
    ld a, b
    inc bc
    ld a, h
    inc bc
    rla
    ld a, h
    ld de, $d86e
    and b
    cp a
    ret c

    and c
    cp $e5
    ld d, b
    push hl
    pop hl
    ld sp, hl
    rst $38
    ldh [$2c], a
    and d
    xor h
    ret nz

    xor b
    pop bc
    ld a, [c]
    db $ec
    ld [c], a
    ret c

    sbc b
    jp nz, $e05e

    ld e, d
    ldh [$ef], a
    ldh a, [rHDMA2]
    ldh [$f0], a
    ld a, a
    rst $38
    ld [hl], b
    ld [hl], a
    ld a, b
    ld bc, $0507
    ld b, $04
    xor e
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    add [hl]
    add c
    ret c

    add b
    ld [bc], a
    ret c

    add b
    inc b
    rst $38
    inc bc
    dec b
    rlca
    ld bc, $0007
    ld b, $b8
    rst $38
    ret nz

    or b
    ret nz

    ldh a, [$80]
    ld h, b
    add c
    pop hl
    rst $38
    inc bc

jr_04a_706a:
    jp $c303


    rlca
    add e
    rlca
    dec bc
    rst $28
    rra
    ccf
    ld a, a
    ld a, [hl]
    ld a, b
    and b
    db $dd
    xor $ff
    rst $38
    call z, $dceb
    rst $38
    ld hl, sp-$47
    ld l, a
    ld hl, sp-$01
    ld b, a
    ld a, h
    rlca
    db $fc
    inc bc
    ld a, [hl]
    inc bc
    cp $e3
    ld bc, $a37f
    ret nz

    db $76
    rst $20
    ld l, h
    ldh [$df], a
    rra
    rst $38
    cp $8a
    ldh [$df], a
    ldh [$df], a
    db $ec
    db $db
    rst $38
    adc $fc
    ld c, [hl]
    add e
    ld a, [de]
    add c
    jr nz, jr_04a_706a

    db $10
    ldh [$08], a
    ldh a, [rIE]
    add h
    ld a, b
    ret nz

    cp h
    ld [c], a
    call c, $783f
    rst $38
    dec sp
    inc a
    rra
    inc a
    dec c
    ld e, $1e
    ccf
    push af
    rra
    cp $e1
    rra
    cp l
    ld h, l
    sub l
    nop
    ld [$ef80], a
    ccf
    ldh [rIF], a
    ld hl, sp-$53
    ld h, e
    ld [bc], a
    nop
    ld d, l
    ei
    nop
    cp a
    ld b, a
    jp nz, Jump_000_0001

    dec bc
    nop
    ld d, a
    cp $f4
    db $e4
    cp $03
    ld hl, sp+$0f
    nop
    ld b, $01
    rst $38
    rlca
    inc b
    rlca
    add h
    inc bc
    add d
    inc bc
    pop bc
    ld a, a
    add c
    ld b, b
    add b
    ld h, b
    ret nz

    add a
    rlca
    cp $e1
    rst $38
    ld b, e
    add a
    and c
    jp $ffe7


    cp l
    ld a, [hl]
    rst $38
    rst $38
    nop
    add hl, bc
    ld hl, sp+$00
    ldh a, [$15]
    ldh a, [rIE]
    inc hl
    ldh [rLYC], a
    ret nz

    adc e
    add b
    rlca
    nop
    ei
    ccf
    jr nc, @+$03

    call nz, $fe01
    inc bc
    db $fc
    rlca
    rst $08
    pop af
    rra
    add a
    rst $38
    ld d, h
    and c
    cp $e0
    ld [hl], a
    rlca
    db $ed
    rst $38
    ld d, d
    and c
    di
    dec c
    ld b, b
    adc c
    ldh a, [$ef]
    ret nz

    rst $38
    cp a
    db $e3
    db $e3
    pop bc
    pop bc
    pop af
    pop af
    ld sp, hl
    ei
    ld sp, hl
    db $fd
    adc [hl]
    ld h, c
    ld a, a
    ccf
    rst $08
    ldh [$fe], a
    cp e
    ldh a, [$ee]
    and h
    add b
    rst $28
    ld hl, sp-$39
    cp $e0
    add a
    ld l, l
    ld hl, sp+$58
    ld h, b
    nop
    rrca
    ld a, [hl+]
    ld h, b
    rlca
    inc b
    call z, $ffc2
    nop
    rlca
    ld b, c
    rst $38
    jr c, @+$01

    ld e, $ff
    rst $38
    ld a, [bc]
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    rst $28
    ret nz

    ccf
    rst $38
    add b
    call nc, $a081
    rst $38
    dec b
    db $eb
    rst $38
    ld [bc], a
    add [hl]
    and d
    ldh [$0c], a
    ld h, b
    ld bc, $17ff
    cp a
    rst $38
    db $fd
    rst $38
    xor d
    rst $38
    ld d, b
    cp d
    add b
    jr @+$01

    ldh [$83], a
    db $fc
    ld b, b
    rst $38
    xor b
    rst $38
    ld b, b
    adc $68
    and h
    inc bc
    ld bc, $0e30
    ld h, b
    ld e, h
    and l
    rlca
    cp $ff
    rra
    pop af
    ld e, $f3
    inc e
    di
    inc e
    db $e3
    rst $28
    ld a, $e3
    ld a, a
    pop bc
    xor l
    ldh [rP1], a
    ccf
    db $fc
    rst $18
    ld h, a
    pop hl
    ld a, a
    jp $107f


    ret nz

    rra
    rst $38
    rst $18
    sbc [hl]
    ld a, a
    sub l
    rst $38
    ldh a, [$8d]
    and b
    ret nz

    rst $38
    rst $38
    db $e3
    cp $87
    db $fc
    ld b, a
    db $fc
    adc a
    ld hl, sp-$32
    ret nc

    ret nz

    rst $38
    ccf
    ldh [$d8], a
    pop hl
    add hl, de
    and e
    rst $00
    ld a, h
    rst $38
    rrca
    rst $38
    add a
    rst $38
    db $e3
    ccf
    ld sp, hl
    rrca
    push af
    db $fc
    ld e, h
    ret nz

    cp $5c
    ret nz

    ld sp, hl
    ld b, $f0
    ld c, $ff
    ldh a, [$0e]
    ld [c], a
    inc e
    ldh [rNR32], a
    call nz, Call_04a_4d38
    nop
    db $e4
    ret nz

    ld b, $07
    cp $e3
    rst $38
    pop hl
    inc bc
    sbc [hl]
    and b
    ld a, a
    ldh [$3f], a
    or b
    rra
    ld e, h
    rrca
    add a
    push de
    ld b, b
    rst $20
    add b
    nop
    add b
    db $fd
    ldh [rNR21], a
    add c
    ld hl, sp-$31
    db $fc
    adc a
    rlca
    sbc a
    inc bc
    rlca
    cp d
    ld b, c
    rst $10
    ld b, b
    ld h, [hl]
    db $e4
    db $fc
    ld a, [c]
    and l
    and b
    inc bc
    ld d, h
    rst $20
    adc l
    pop hl
    ld l, b
    rst $00
    ret z

    adc a
    cp e
    ccf
    ldh [$fe], a
    pop hl
    dec hl
    ret nz

    ld d, l
    sub b
    ret nz

    ld bc, $48fa
    ret nz

    ld [$e2e4], sp
    pop bc
    ld a, a
    rst $20
    ccf
    rst $38
    db $fd
    inc e
    add l
    add c
    rra
    pop af
    ld a, $f3
    ld a, h
    db $e3
    rst $38
    db $fc
    rst $00
    ld hl, sp+$07
    ld hl, sp+$0f
    pop af
    rrca
    rst $08
    di
    rrca
    inc bc
    cp $ca
    add b
    push de
    ret nz

    ccf
    ldh [rIE], a
    rra
    ldh a, [$ef]
    or b
    rst $38
    nop
    rst $20
    ld bc, $e3af
    nop
    db $d3
    nop
    db $fc
    pop hl
    rst $20
    db $f4
    ldh [$cf], a
    ld h, a
    ld bc, $e000
    call c, $fe40
    and $40
    add b
    jp c, $fe43

    sub a
    daa

jr_04a_7291:
    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$6f], a
    rst $28
    ldh a, [$37]
    ld a, b
    dec de
    cp d
    and b
    rlca
    ld c, $1b
    rst $38
    ld [hl], c
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$3e

    jr nz, @+$01

    ld e, $10
    rra
    db $10
    rrca
    ld [$020f], sp
    rst $28
    db $fc
    db $10
    ldh [$80], a
    xor h
    ld [hl+], a
    pop hl
    ld e, $03
    rst $38
    db $fd
    rra
    rst $28
    db $10
    rrca
    ld hl, $991e
    rst $38
    ld h, [hl]
    jr c, jr_04a_7291

    ld a, b
    or [hl]
    ld a, [$f2f4]
    ld d, a
    db $fc
    ldh a, [$ec]
    ld e, h
    pop hl
    dec b
    rst $20
    jr nz, jr_04a_72df

    xor b
    and b
    db $fd
    rlca
    and h

jr_04a_72df:
    and b
    di
    ld c, $f3
    inc c
    ei
    ld c, $5f
    db $fd
    ld b, $bf
    nop
    jp z, $e085

    ldh a, [$d3]
    ld h, d
    ld a, a
    ei
    nop
    jp hl


    nop
    ld b, c
    nop
    add e
    ldh [$e0], a
    cp $73
    jr nz, jr_04a_7300

    db $fd

jr_04a_7300:
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    ei
    rlca
    or $0f
    db $ec
    ld e, $d8
    inc a
    ld b, a
    add b
    ret nz

    add b
    rst $38
    ldh [rLYC], a
    jr nz, @+$06

    inc h
    ld b, $ba
    jp nz, $01d3

    inc bc
    dec [hl]
    ld b, b
    pop de
    jp nz, Jump_04a_6208

    and c
    add e
    ld [bc], a
    rst $18
    add e
    ld b, b
    pop bc
    ld hl, $96e0
    ld b, b
    ldh a, [$27]
    rst $18
    rst $20
    ld c, a
    rst $08
    ld c, a
    rst $08
    ld [hl+], a
    ld b, b
    cp [hl]
    inc a
    cp a
    db $db
    nop
    ld a, a
    ld [hl+], a
    inc e
    ldh [$fe], a
    ld b, b
    ret nz

    rst $08
    cp b
    adc b
    ld [hl], b
    stop
    add b
    cp e
    pop hl
    rla
    nop
    db $fd
    cpl
    db $fc
    ld [c], a
    ld e, a
    nop
    ccf
    nop
    ld a, [hl]
    rlca
    ei
    ldh [$3f], a
    ld d, c
    ld h, l
    db $fd
    inc bc
    rst $08
    ccf
    cp $ff
    rst $38
    ldh a, [$f8]
    ld sp, hl
    ld b, $f2
    rrca
    rst $28
    ld a, a
    rra
    cp l
    ld a, a
    ldh a, [$f8]
    ret nz

    ldh [$71], a
    push bc
    cp e
    cp a
    ret nz

    and $40
    rst $38
    rra
    ccf
    ld h, c
    jp $fffe


    ld bc, $07fb
    sbc a
    ld a, a
    db $fc
    cp $c0
    ld a, [hl]
    or h
    nop
    nop
    nop
    or b
    ld a, b
    ldh [$f0], a
    sub $e0
    inc a
    ld h, b
    and $d8
    pop bc
    ld c, $1f
    rlca
    rrca
    cp b
    ld b, b
    ld d, d
    ld [bc], a
    ret z

    pop af
    ld b, e
    cp d
    ret nz

    add a

jr_04a_73a9:
    jr nz, jr_04a_73ba

    cp [hl]
    ldh [$c0], a
    db $e3
    rst $18
    ccf
    rst $28
    db $fc
    cp $f0
    ld hl, sp+$62
    jr nz, jr_04a_73b9

jr_04a_73b9:
    cp a

jr_04a_73ba:
    ld a, a
    adc a
    ldh [$f0], a
    add b
    ret nz

    jr nz, jr_04a_73a9

    db $f4
    ldh [rNR43], a
    ld a, [bc]
    ld [hl], b
    rst $38
    ld hl, sp-$18
    sbc b
    ld hl, sp-$74
    db $f4
    adc h
    cp h
    rst $38
    add $7a
    add $5e
    ld h, e
    ccf
    ld h, e
    inc e
    rst $18
    ld a, $2e
    ld [hl-], a
    ld a, $22
    cp $e2
    ld h, d
    ld e, b
    rst $30
    ld h, h
    ld a, h
    push bc
    ld [$0fc4], a
    add hl, de
    ccf
    ld l, $ef
    ld [hl], c
    ld e, a
    ldh [$bf], a
    ld [hl], b
    inc b
    jr jr_04a_7432

    dec [hl]
    ld a, a
    xor a
    cp a
    and [hl]
    cp a
    and [hl]
    cp l
    and a
    ld d, [hl]
    ld bc, $307f
    ld a, b
    ld a, b
    ld c, c
    db $fd
    rst $08
    rst $38
    xor d
    ret nz

    ei
    db $fd
    rst $08
    and d
    db $e3
    ret nz

    ldh [$a0], a
    ld h, b
    xor $df
    ccf
    db $fd
    inc sp
    rst $38
    jr nc, jr_04a_745f

    ld bc, $0301
    rst $38
    ld [bc], a
    rlca
    dec b
    ld c, $0b
    inc c
    set 5, h
    rst $38
    and l
    ld a, [hl]
    ld [hl], b
    ld a, b
    cp b
    ret z

    ld a, b
    adc b
    rst $28

jr_04a_7432:
    ld hl, sp+$08
    ld hl, sp+$48
    cp $e2
    ld [$233e], sp
    rst $38
    ccf
    jr nz, jr_04a_746e

    jr nc, jr_04a_7460

jr_04a_7441:
    jr nc, @+$21

    db $10
    rst $38
    ld d, $19
    dec bc
    dec e
    ld b, $0f
    db $fd
    push bc
    rst $38
    cp l
    ld b, l
    push af
    dec c

jr_04a_7452:
    ld sp, hl
    dec c
    ld hl, sp+$09
    rst $38
    add sp, $18
    ld d, b
    cp b
    ldh [$f0], a
    ld l, a
    sbc b

jr_04a_745f:
    rst $28

jr_04a_7460:
    rst $38
    jr jr_04a_7452

    jr jr_04a_7441

    pop bc
    ld l, a
    ldh a, [rNR33]
    rst $18
    ld a, $03
    rlca
    cp h

jr_04a_746e:
    and h
    cp $e2
    db $e4
    db $fc
    rst $38
    ld h, h
    db $ec
    ld [hl], h
    call c, $8874
    call c, $ff79
    ld c, c
    ld a, c
    ld c, l
    ld [hl], l
    ld c, l
    ld a, l
    ld b, a
    ld e, e
    rst $38
    ld h, a
    ccf
    ld h, e
    ld l, $33
    inc e
    ld a, $ff
    push af

jr_04a_748f:
    jr nc, jr_04a_748f

    ldh [$31], a
    cp $e1
    ld a, a
    or c
    rst $38
    or c
    rst $38
    ld c, [hl]
    rst $38
    jp nc, $f137

    inc de
    ld [hl], b
    sub c
    rst $30
    ldh a, [$91]
    pop af
    cp $e2
    ld h, b
    pop af
    ld hl, sp+$08
    rst $38
    ld a, b
    adc b
    add sp, -$68
    di
    sbc a
    ld d, l
    or [hl]
    cp a
    rst $20
    inc [hl]
    push bc
    ld h, [hl]
    add e
    rst $00
    ld a, [c]
    jp $ff87


    rst $08
    ld c, d
    call $48cf
    ld c, d
    call $fe87
    ld b, b
    db $e4
    ld c, $9f
    sub l
    sbc e
    sbc a
    sub c
    sub l
    rlca
    sbc e
    ld c, $9f
    nop
    nop
    nop
    add l
    ld [$f0ff], sp
    rrca
    rst $38
    add sp, -$0d
    ldh [$e3], a
    db $ed
    ldh [$f1], a
    dec bc
    ld b, b
    rst $38
    pop hl
    ldh [$f2], a
    sbc a
    db $e3
    ldh [$e3], a
    sbc $e3
    and b
    ld_long $ff48, a
    ldh [rBCPS], a
    ldh [$e9], a
    ldh a, [$e1]
    ldh [$ed], a
    dec c
    rst $38
    pop hl
    inc c
    inc c
    ret nz

    ldh [$5d], a
    ld a, [bc]
    ldh [$f6], a
    inc c
    dec c
    dec c
    ret nz

    ld sp, hl
    inc c
    ldh [$e0], a
    add hl, bc
    inc c
    ld e, [hl]
    pop hl
    and b
    ld a, [c]
    inc c
    rst $38
    ldh [$9f], a
    ldh [$3a], a

jr_04a_751d:
    ldh [$80], a
    ld a, [c]
    pop de
    ld [$e1e0], sp
    db $fc
    db $e3
    ld h, b
    ld a, [c]
    ld c, $e0
    db $ec
    cpl
    cpl
    ld e, b
    jr nz, @-$12

    add l
    pop hl
    cp h
    ld [c], a
    ld c, $0e
    ldh [$f7], a
    ld c, $ff
    ld [c], a
    jr @-$3e

    db $ed
    ld h, b
    jp $c0fe


    ld c, $0e
    ld h, b
    ret c

    ld e, h
    ret nz

    sub h
    jp nz, Jump_04a_5000

    jp $ce40


    jr nc, jr_04a_751d

    ld h, b
    adc $50
    call z, $cd60
    db $fc
    db $ed
    ldh [$a9], a
    nop
    nop
    nop
    ld [hl], l
    inc b
    rst $38
    ldh a, [rP1]
    rst $38
    add sp, $04
    nop
    ld [bc], a
    db $dd
    ldh [rIE], a
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld a, [$e1e3]
    ld [bc], a
    ldh [$eb], a
    ld bc, $0403
    inc b
    dec c
    rst $38
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    db $e3
    ld d, $04
    ldh a, [$e1]
    ret nz

    ld [$e19f], a
    rla
    jr jr_04a_75ac

    ld a, a
    ld a, [de]
    dec de
    inc e
    dec e
    inc d
    ld e, $1f
    and b
    rst $28
    cp $7f
    ld [c], a
    jr nz, jr_04a_75c3

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc d
    ei
    ld h, $27
    ldh [$f2], a

jr_04a_75ac:
    jr z, jr_04a_75d7

    ld a, [hl+]
    dec hl
    inc l
    cp a
    dec l
    ld l, $2f
    jr nc, jr_04a_75e8

    ld [hl-], a
    ret nz

    ld a, [c]
    inc sp
    rst $38
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04a_75fb

    ld a, [hl-]

jr_04a_75c3:
    dec sp
    ei
    inc a
    dec a
    and b
    ld a, [c]
    ld a, $34
    inc [hl]
    ccf
    ld b, b
    ld a, a
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc d
    ld b, l
    ld b, [hl]
    add b

jr_04a_75d7:
    pop af
    rst $38
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    rst $28
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld h, b
    pop af

jr_04a_75e8:
    ld d, e
    ld d, h
    ld d, l
    rst $38
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    db $fd
    ld e, [hl]
    ld b, b
    pop af

jr_04a_75f8:
    ld e, a
    ld h, b
    ld h, c

jr_04a_75fb:
    ld h, d
    ld h, e
    ld h, h
    cp a
    inc [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    jr nz, jr_04a_75f8

    ld l, d
    rst $38
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    inc [hl]
    inc [hl]
    ld [hl], b
    rst $30
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    ld a, [c]
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    cp a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ldh [$d4], a
    ld a, [hl]
    adc a
    ld a, a
    add b
    add c
    add d
    ld h, b
    ret c

    ld b, e
    ret


    ld h, b
    ret nc

    add e
    ld a, a
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    inc de
    pop bc
    cp $60
    pop de
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rlca
    sub d
    sub e
    sub h
    ld h, b
    call nc, $b7e0
    nop
    nop
    nop
    ld bc, $0203
    inc bc
    inc bc
    ld b, $05
    ld c, $3f
    ld a, h
    ld e, l
    ld h, d
    cpl
    ld [hl], d

jr_04a_765e:
    rla
    ld a, [hl-]
    dec bc
    inc e
    ld a, [bc]
    dec e
    inc d
    dec de
    ld de, $263f
    ccf
    jr jr_04a_76a8

    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld [hl], b
    db $fc
    ld a, $ba
    ld b, [hl]
    db $f4
    ld c, [hl]
    add sp, $5c
    ret nc

    jr c, @+$52

    cp b
    jr z, jr_04a_765e

    adc b
    db $fc
    ld h, h
    db $fc
    jr @+$3e

    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    ld c, $1f
    inc de
    inc e
    inc de
    inc e
    dec c
    ld e, $06
    rrca
    ld [bc], a
    rlca
    dec b
    ld c, $0a
    dec c

jr_04a_76a8:
    add hl, bc
    rrca
    ld c, $0e
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld [hl], b
    ld hl, sp+$3c
    ld e, h
    and h
    db $f4
    xor h
    add sp, -$44
    ldh a, [rNR23]
    or b
    ld d, b
    db $10
    ld hl, sp-$38
    ld hl, sp+$28
    ld hl, sp+$18
    jr c, jr_04a_76cd

jr_04a_76cd:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    rlca
    dec c
    ld c, $0f
    ld [$0c0b], sp
    dec c
    ld c, $07
    ld c, $03
    ld b, $07
    inc b

jr_04a_76e6:
    ld b, $05
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld h, b
    ld d, b
    or b
    ret nc

    or b
    ldh [$b0], a
    ldh [rNR41], a
    and b
    ld h, b
    jr nz, jr_04a_76e6

    ld d, b
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld b, $07
    inc b
    dec b
    ld b, $06
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0003
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$a0], a
    ld h, b
    ldh [rNR41], a
    and b
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [rNR41], a
    and b
    ld h, b
    and b
    ld h, b
    ret nz

    ld h, b
    ld b, b
    ret nz

    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc

jr_04a_7758:
    ld [bc], a
    inc bc
    dec b
    ld b, $05
    ld b, $03
    ld b, $03
    ld [bc], a
    ld [bc], a

jr_04a_7763:
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    ld b, $07
    nop
    nop
    nop
    nop
    add b

jr_04a_7771:
    ret nz

    ld b, b

jr_04a_7773:
    ret nz

    ld b, b
    ldh [$a0], a
    ld [hl], b
    ret c

    jr c, jr_04a_7773

    ld [$18e8], sp
    ret c

    jr c, jr_04a_7771

    jr c, jr_04a_7763

    jr nc, jr_04a_77f5

    sub b
    jr nc, jr_04a_7758

    sub b
    ldh a, [rSVBK]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    rlca
    rrca
    ld e, $1f
    db $10
    rla
    jr jr_04a_77aa

    inc e
    rlca
    inc c
    ld b, $05
    inc b
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rrca

jr_04a_77aa:
    inc c
    ld c, $00
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    ldh [rSVBK], a
    cp b
    ld a, h
    db $e4
    inc e
    db $e4
    inc e
    ret c

    inc a
    or b
    ld a, b
    and b
    ld [hl], b
    ld d, b
    cp b
    xor b
    ret c

    ld c, b
    ld hl, sp+$38
    jr c, jr_04a_77cd

jr_04a_77cd:
    nop
    nop
    nop
    ld bc, $0203
    inc bc
    inc bc
    ld b, $05
    ld c, $3f
    ld a, h
    ld e, a
    ld h, b
    cpl
    ld [hl], b

jr_04a_77de:
    rla
    jr c, jr_04a_77ec

    inc e
    ld a, [bc]
    dec e
    inc d
    dec de
    ld de, $263f
    ccf
    jr jr_04a_7828

jr_04a_77ec:
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

jr_04a_77f5:
    ld h, b
    and b
    ld [hl], b
    db $fc
    ld a, $fa
    ld b, $f4
    ld c, $e8
    inc e
    ret nc

    jr c, @+$52

    cp b
    jr z, jr_04a_77de

    adc b
    db $fc
    ld h, h
    db $fc
    jr @+$3e

    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    ld c, $1f
    inc de
    inc e
    inc de
    inc e
    dec c
    ld e, $06
    rrca
    ld [bc], a

jr_04a_7823:
    rlca
    dec b
    ld c, $0a
    dec c

jr_04a_7828:
    add hl, bc
    rrca
    ld c, $0e
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld [hl], b
    ld hl, sp+$3c
    db $fc
    inc b
    db $f4
    inc c
    add sp, $1c
    ldh a, [rNR23]
    or b
    ld d, b
    db $10
    ld hl, sp-$38
    ld hl, sp+$28
    ld hl, sp+$18
    jr c, jr_04a_784d

jr_04a_784d:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    rlca
    dec c
    ld c, $0f
    ld [$0c0b], sp
    dec c

jr_04a_785f:
    ld c, $07

jr_04a_7861:
    ld c, $03
    ld b, $07
    inc b

jr_04a_7866:
    ld b, $05
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    nop

jr_04a_786f:
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld h, b
    ret nc

    jr nc, jr_04a_784d

    jr nc, jr_04a_785f

    jr nc, jr_04a_7861

    jr nz, jr_04a_7823

    ld h, b
    jr nz, jr_04a_7866

    ld d, b
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0103
    ld bc, $0100
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR10]
    ret nc

    jr nc, jr_04a_786f

    ld [hl], b
    ldh [rSVBK], a
    ldh [$60], a
    and b
    ld h, b
    ldh [rNR41], a
    ld h, b
    and b
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc

jr_04a_78d8:
    ld [bc], a
    inc bc
    dec b
    ld b, $05
    ld b, $03
    ld b, $03
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    ld b, $07
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$a0], a
    ld [hl], b
    ret c

    jr c, jr_04a_7973

    adc b
    add sp, -$68
    ret c

    cp b
    ldh a, [$38]
    ldh [$30], a
    ld [hl], b
    sub b
    jr nc, jr_04a_78d8

    sub b
    ldh a, [rSVBK]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    rlca
    rrca
    ld e, $1d
    ld [de], a
    rla
    ld a, [de]
    dec bc
    ld e, $07
    inc c
    ld b, $05
    inc b
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    inc c
    ld c, $00
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    ldh [rSVBK], a
    cp b
    ld a, h
    ld h, h
    sbc h
    db $e4
    sbc h
    ret c

    cp h
    or b
    ld a, b
    and b
    ld [hl], b
    ld d, b
    cp b
    xor b
    ret c

    ld c, b
    ld hl, sp+$38
    jr c, jr_04a_794d

jr_04a_794d:
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

jr_04a_7973:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
