INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04e", ROMX[$4000], BANK[$4e]

    ld b, d

Jump_04e_4001:
    ld d, [hl]
    add c
    ld h, c
    ld l, l
    ld l, d
    rla
    ld l, [hl]
    ld [c], a
    ld l, [hl]
    adc $6f
    rst $08
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
    call nz, Call_04e_44c4
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

jr_04e_404b:
    cp b
    ccf
    jr c, jr_04e_404b

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
    jr nc, jr_04e_40f4

    ld [hl], b
    ld a, a
    ld [hl], b
    ccf
    jr nc, jr_04e_40fa

    ld [hl], b
    ccf

jr_04e_407d:
    jr c, jr_04e_407d

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

jr_04e_40c8:
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

jr_04e_40df:
    add hl, sp
    ld a, [$f23a]
    ld [hl-], a
    ld a, [$fa3a]
    ld a, [hl-]
    ld a, [$f83a]
    jr c, jr_04e_40df

    ld [hl-], a
    nop
    nop
    ld b, h
    ld b, h
    inc b
    inc b

jr_04e_40f4:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, b
    ld b, b

jr_04e_40fa:
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
    jr jr_04e_40c8

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
    jr nc, jr_04e_41b8

    ld [hl], b
    ld a, a
    ld [hl], b
    ccf

jr_04e_413d:
    jr nc, jr_04e_413d

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

jr_04e_4186:
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

jr_04e_41a1:
    ld [hl-], a
    ldh a, [$30]
    ld a, [$f03a]
    jr nc, jr_04e_41a1

    jr c, @-$06

    jr c, @-$06

    jr c, jr_04e_41f3

    ld b, h
    ld b, b
    ld b, b
    ld b, h
    ld b, h
    ld c, $0e
    ld c, $0e

jr_04e_41b8:
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
    jr c, jr_04e_4186

    cp b
    sbc a
    sbc b
    ccf
    jr c, jr_04e_41ec

jr_04e_41cd:
    jr jr_04e_41cd

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

jr_04e_41ec:
    and d
    and d
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ccf

jr_04e_41f3:
    jr nc, jr_04e_4274

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

jr_04e_421c:
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
    jr jr_04e_421c

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

jr_04e_4274:
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
    jr nc, jr_04e_4304

    ld [hl], b
    ccf
    jr nc, jr_04e_4308

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

jr_04e_42ac:
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

jr_04e_42c2:
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
    jr c, jr_04e_4340

    jr c, jr_04e_42c2

    cp b

jr_04e_4304:
    cp a
    cp b
    cp a
    cp b

jr_04e_4308:
    sbc a
    sbc b
    ccf
    jr c, jr_04e_42ac

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
    jr nc, jr_04e_43b0

    ld [hl], b
    ccf
    jr nc, jr_04e_4374

    jr nc, jr_04e_43b6

    ld [hl], b
    ccf
    jr nc, @+$81

    ld [hl], b
    ld a, a
    ld [hl], b
    rst $38
    rlca

jr_04e_4340:
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

jr_04e_4354:
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

jr_04e_4362:
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

jr_04e_4374:
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

jr_04e_4386:
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
    jr c, jr_04e_4354

    cp b
    sbc a
    sbc b
    cp a
    cp b
    cp a
    cp b
    ccf

jr_04e_439d:
    jr c, jr_04e_439d

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

jr_04e_43b0:
    and c
    and c
    and h
    and h
    ld l, [hl]
    ld l, [hl]

jr_04e_43b6:
    add c
    add c

jr_04e_43b8:
    jp $ffc3


    rst $38
    rst $38
    rst $38
    ld a, a
    ld [hl], b
    ccf
    jr c, jr_04e_4362

    sbc b
    rra
    jr jr_04e_4386

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
    jr c, jr_04e_4410

    jr jr_04e_4432

    jr c, @-$5f

    sbc b
    rra
    jr jr_04e_43b8

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

jr_04e_4410:
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

jr_04e_4432:
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

jr_04e_4452:
    sbc a
    sbc [hl]

jr_04e_4454:
    set 1, d
    rst $00
    add $93
    sub d

jr_04e_445a:
    db $d3
    jp nc, $9697

    rst $38
    jr c, @+$01

    jr c, jr_04e_4452

    jr z, jr_04e_4454

    jr z, @+$01

    jr c, @-$0f

    jr z, @+$01

    ld a, h
    rst $38
    jr c, jr_04e_445a

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
    jr jr_04e_44bb

    ld hl, $2a18
    dec hl
    inc l
    rlca
    ld [$1309], sp
    inc d

jr_04e_44bb:
    dec d
    rra
    jr nz, jr_04e_44d4

    jr z, jr_04e_44ea

    dec d
    inc sp
    inc [hl]

Call_04e_44c4:
    dec [hl]
    inc b
    dec b
    ld b, $10
    ld de, $1c12
    dec e
    ld e, $25
    ld h, $27
    jr nc, jr_04e_4504

    ld [hl-], a

jr_04e_44d4:
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
    jr c, @+$41

jr_04e_44ea:
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
    jr c, jr_04e_450c

    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_04e_4504:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04e_450c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    call z, $b3f3
    call z, $ff00
    nop
    rst $38
    inc b
    rst $38
    or [hl]
    rst $38
    ld l, l
    rst $38
    nop
    rst $38

jr_04e_4534:
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$a0]
    ldh [rNR10], a
    ldh a, [$1f]
    rra
    ld a, $3f
    ld a, b
    ld a, a
    ld [hl], c
    ld a, [hl]
    ld h, b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, b
    ld a, a
    ld a, $3f
    ret nz

    rst $38
    ld e, $e1
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $3c
    jp $817e


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_04e_4534

    inc a
    add c
    ld a, [hl]
    ld bc, $78ff
    add a
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    add b
    ld a, a
    ld hl, sp-$08
    ld a, h
    db $fc
    ld e, $fe
    adc a
    ld a, a
    rst $00
    ccf
    rrca
    rst $38
    ld e, $fe
    ld a, h
    db $fc
    ld b, $07
    inc b
    rlca
    dec c
    ld c, $0b
    inc c
    ld d, $19
    jr jr_04e_45bf

    add hl, bc
    rrca
    ld b, $07
    nop
    rst $38
    ld [$1cf7], sp
    db $e3
    or [hl]
    ld c, c
    db $e3
    inc e

jr_04e_45ae:
    nop
    rst $38
    ld hl, $dbff
    rst $38
    jr jr_04e_45ae

    ld [$48f8], sp
    cp b

jr_04e_45ba:
    db $e4
    inc e
    or h
    ld c, h
    inc c

jr_04e_45bf:
    db $fc
    jr jr_04e_45ba

    ret c

    ld hl, sp+$1e
    rra
    inc c
    rrca
    inc e
    rra
    jr jr_04e_45eb

    jr c, @+$41

    jr nc, @+$41

    ld sp, $3f3f
    ccf
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
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04e_45eb:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$08
    ld [hl], b
    ldh a, [$38]
    ld hl, sp+$1c
    db $fc
    ld c, $fe
    rlca
    rst $38
    inc bc
    rst $38
    rst $00
    rst $38
    dec c
    rrca
    jr jr_04e_4627

    db $10
    rra
    jr nz, jr_04e_464b

    jr c, jr_04e_464d

    ld de, $231e
    inc a
    db $76
    ld l, c
    xor [hl]
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$9cf7], sp
    ld h, e
    rst $30
    ld [$f868], sp
    inc b

jr_04e_4627:
    db $fc
    ld b, $fe
    ld [bc], a
    cp $06
    cp $42
    cp [hl]
    pop hl
    rra
    or a
    ld c, c
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld bc, $c301
    rst $38
    add a
    rst $38
    rrca
    rst $38
    sbc a

jr_04e_464b:
    rst $38
    rst $38

jr_04e_464d:
    rst $38
    rst $38
    rst $38
    di
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    add e
    rst $38
    add a
    rst $38
    ld c, $ff
    ld e, $ff
    ccf
    rst $38
    ei
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    ld [$18ff], sp
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $00
    rst $38
    jr @+$01

    jr @+$01

    inc a
    rst $38
    inc a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    rst $20
    rst $38
    jp Jump_000_00ff


    rst $38
    db $10
    rst $38
    jr @+$01

    jr c, @+$01

    inc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld bc, $c1ff
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    cp $fe
    ld hl, sp-$08
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
    cp h
    jp $ffc0


    inc h
    ccf
    ld a, [hl]
    ld a, a
    ld [hl], l
    ld a, a
    ld a, [hl+]
    ccf
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld h, e
    sbc h
    nop
    rst $38
    nop
    rst $38
    sbc d
    rst $38
    rst $38
    rst $38
    ld h, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    db $e3
    ld [bc], a
    cp $09
    rst $38
    ld c, c
    rst $38
    xor [hl]
    cp $db
    rst $38
    ld bc, $01ff
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
    ld bc, $0701
    rlca
    rra
    rra
    ld a, $3f
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    add c
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
    ret nz

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
    inc bc
    rst $38
    inc bc
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
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    ld a, h
    db $fc
    ld e, $fe
    ld c, $fe
    rlca
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
    nop
    nop
    add b
    add b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    pop hl
    cp $a3
    call c, $8976
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
    ld [$9cf7], sp
    ld h, e
    rst $30
    ld [$9c63], sp
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld b, c
    cp a
    ld [c], a
    dec e
    or a
    ld c, b
    inc e
    db $e3

jr_04e_47c4:
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld [hl], b
    ldh a, [$90]
    ld [hl], b
    jr nc, jr_04e_47c4

    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld c, $0f
    ld c, $0f
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
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
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    ld bc, $0301
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $ff80
    nop
    rst $38
    ld h, b
    rst $38
    reti


    rst $38
    sbc c
    rst $38
    rst $30
    rst $38
    xor h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$4cff], sp
    rst $38
    sbc $ff
    inc sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $20ff
    rst $38
    and [hl]
    rst $38
    ei
    rst $38
    ld l, l
    rst $38
    nop
    rst $38
    ld h, b
    ldh [$30], a
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$60]
    ldh [$80], a
    add b
    add b
    add b
    ret nz

    ret nz

    ld bc, $0101
    ld bc, $0303
    rrca
    rrca
    ld e, $1f
    inc a
    ccf
    jr c, jr_04e_48b1

    jr nc, jr_04e_48b3

    ldh [rIE], a
    ld [c], a
    db $fd
    rst $00
    ld hl, sp-$71
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    db $e3
    inc e
    jr @-$17

    inc a
    jp $817e


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_04e_4898

    rst $38
    ld b, e
    cp a

jr_04e_4898:
    pop hl
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $00
    jr c, jr_04e_48a5

jr_04e_48a5:
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b
    ldh a, [$38]
    ld hl, sp+$38

jr_04e_48b1:
    ld hl, sp+$1c

jr_04e_48b3:
    db $fc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld b, $07
    inc c
    rrca
    inc c
    rrca
    ld b, $07

Call_04e_48c0:
    ld b, $07
    ld c, $0d
    add b
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
    ld hl, $73de
    adc h
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
    ld [$9cf7], sp
    ld h, e
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
    ld b, d
    cp l
    rst $20
    jr jr_04e_4955

    ldh [$30], a
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp+$38
    ld hl, sp+$10
    ldh a, [$38]
    ret c

    jr nc, jr_04e_4945

    jr c, jr_04e_4947

    inc e
    rra
    ld c, $0f
    ld e, $1f
    inc e
    rra
    jr c, @+$41

    jr c, jr_04e_4953

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
    nop
    rst $38
    nop
    rst $38
    jp $813c


    ld a, [hl]
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

jr_04e_4944:
    inc e

jr_04e_4945:
    db $fc

jr_04e_4946:
    inc e

jr_04e_4947:
    db $fc

jr_04e_4948:
    inc e
    db $fc

jr_04e_494a:
    jr c, jr_04e_4944

    jr c, jr_04e_4946

    jr c, jr_04e_4948

    jr jr_04e_494a

    inc e

jr_04e_4953:
    db $fc
    rra

jr_04e_4955:
    jr jr_04e_4968

    ld e, $30
    ccf
    jr nz, jr_04e_499b

    inc sp
    ccf
    rra
    rra
    dec c
    dec c
    nop
    nop
    sbc $21
    adc h
    ld [hl], e

jr_04e_4968:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a

jr_04e_496f:
    rst $38
    xor [hl]
    rst $38
    ei
    ei
    rst $30
    ld [$9c63], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $73ff
    rst $38
    rst $38
    rst $38
    cp l
    ld b, d
    jr jr_04e_496f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    sbc d
    rst $38
    rst $30
    rst $30
    db $fc
    inc c
    call nz, Call_000_043c
    db $fc
    inc b

jr_04e_499b:
    db $fc
    ld l, h
    db $fc
    ld e, b
    ret c

    ret nz

    ret nz

    add b
    add b
    jr nc, jr_04e_49e5

    jr nc, @+$41

    ld sp, $3f3f
    ccf
    rra
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    jr nc, @+$01

    ld a, b
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $28
    rst $28
    add a
    add a
    inc bc
    inc bc
    ld bc, $0001
    rst $38
    nop
    rst $38
    ld [$18ff], sp
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    ld a, $ff
    cp $ff
    rst $30
    rst $30
    jp Jump_000_00c3


jr_04e_49e5:
    rst $38
    ld b, $ff
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    inc a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $30
    db $e3
    db $e3
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    rst $18
    rst $18
    adc a
    adc a
    jr c, @+$01

    ld a, $ff
    ld a, a
    rst $38
    ld [hl], a
    rst $30
    ld h, c
    pop hl
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    inc c
    db $fc
    inc c
    db $fc
    call z, $fcfc
    db $fc
    db $fc
    db $fc
    jr c, jr_04e_4a88

    nop
    nop
    nop
    nop
    jr jr_04e_4a75

    jr nc, jr_04e_4a97

    jr nz, @+$41

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    and b
    rst $18
    ld a, a
    rst $38
    inc sp
    rst $38
    nop

jr_04e_4a69:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    ld a, l
    sbc d

jr_04e_4a75:
    cp $03
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    nop
    nop
    nop

jr_04e_4a88:
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rTAC], a
    rlca
    rrca

jr_04e_4a97:
    rrca
    ld e, $1f
    inc a
    ccf
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    jr c, jr_04e_4ae1

    inc e
    rra
    add b
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

jr_04e_4ab3:
    rst $38
    ldh a, [$f0]
    ld a, b
    ld hl, sp+$3c
    db $fc
    ld e, $fe
    ld c, $fe
    ld c, $fe
    ld c, $fe
    inc e
    db $fc
    ld bc, $0301
    inc bc
    ld b, $07
    dec b
    ld b, $0c
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    ld b, $07
    pop af
    adc [hl]

jr_04e_4ad6:
    ld a, e
    add h
    rst $18
    jr nz, jr_04e_4a69

    ld [hl], c
    inc b
    ei
    nop
    rst $38
    nop

jr_04e_4ae1:
    rst $38
    ld b, d
    rst $38
    rst $00
    jr c, jr_04e_4ad6

    db $10
    ld a, l
    add d
    jr c, jr_04e_4ab3

    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld c, c
    rst $38
    inc e
    db $e3

jr_04e_4af6:
    cp [hl]
    ld b, c
    rst $30
    ld [$1ce3], sp
    ld b, b
    cp a
    ld [bc], a
    rst $38

jr_04e_4b00:
    inc bc
    rst $38
    inc de
    rst $38

jr_04e_4b04:
    jr nc, jr_04e_4af6

jr_04e_4b06:
    sub b
    ld [hl], b
    ret c

    jr c, jr_04e_4b73

    sbc b
    jr jr_04e_4b06

    jr nc, jr_04e_4b00

    db $10
    ldh a, [$98]
    ld hl, sp+$00
    nop
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
    ld a, b
    ld a, a
    ldh a, [rIE]
    ldh [rIE], a
    add e
    db $fc
    rrca
    ldh a, [$87]
    ld hl, sp-$3f
    cp $f0
    rst $38
    ld [$1cf7], sp
    db $e3
    ld a, $c1
    ld a, a
    add b
    rst $38
    nop
    rst $20
    jr jr_04e_4b04

    inc a
    add c
    ld a, [hl]
    ld e, $fe
    rrca
    rst $38
    inc bc
    rst $38
    pop bc
    ccf
    ldh a, [rIF]
    ldh [$1f], a
    add c
    ld a, a
    inc bc
    rst $38
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10

jr_04e_4b73:
    rra
    rst $20
    rst $38
    dec a
    rst $38
    jr @+$01

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
    ld l, l
    rst $38
    rst $38
    rst $38
    inc sp
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
    cp d
    rst $38
    xor $ff

jr_04e_4b98:
    ld h, h
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
    ld hl, sp-$08
    jr nc, jr_04e_4b98

    db $10
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    inc b
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    ld [hl], b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld b, $ff
    ld e, $ff
    db $fc
    rst $38
    ld hl, sp-$01
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
    jr c, @+$01

    ld a, b
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
    inc c
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    jr nc, @+$01

    inc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    db $10
    rra
    jr nc, jr_04e_4c57

    ld hl, $633e
    ld a, h
    rst $00
    ld hl, sp-$02
    pop bc
    call c, Call_04e_68e3
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    jp $e73c


    jr jr_04e_4cad

    add c
    inc a
    jp $e718


    inc b
    db $fc
    ld b, $fe
    add d
    ld a, [hl]
    jp nz, $e33e

    rra
    ld a, l
    add e
    add hl, sp
    rst $00
    inc de
    rst $28
    add hl, sp
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    rlca
    rlca
    ld e, $1f
    ld a, h
    ld a, a
    ldh a, [rIE]
    ldh a, [rIE]
    pop af

jr_04e_4c57:
    rst $38
    or e
    rst $38
    scf
    rst $38
    ld a, $ff
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, $ccff
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$1cff], sp
    rst $38
    ld a, $ff
    ld [hl], a
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0dff], sp
    rst $38
    rra
    rst $38
    ccf
    rst $38
    di
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    and $ff
    or $ff
    ld a, $ff
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    call z, $fcfc
    db $fc
    ld hl, sp-$08
    ld h, b
    ldh [rSVBK], a

jr_04e_4cad:
    ldh a, [$3c]
    db $fc
    rra
    rst $38
    rlca
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
    ret nz

    ret nz

    jr c, @+$41

    jr nc, jr_04e_4d07

    ld h, d
    ld a, a
    ld c, [hl]
    ld a, a
    ld a, h
    ld a, a
    jr c, @+$41

    dec c
    rrca
    rlca
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    call z, $deff
    rst $38
    ld [hl], e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$9cff], sp
    rst $38
    or [hl]
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$88ff], sp
    rst $38
    call c, $b7ff
    rst $38
    ld b, $fe
    inc bc

jr_04e_4d07:
    rst $38
    ld de, $19ff
    rst $38
    rrca
    rst $38
    add $fe
    db $e4
    db $fc
    cp h
    db $fc
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld b, $07
    ld c, $0f
    inc e
    rra
    jr jr_04e_4d43

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
    rst $38
    nop
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ldh [rSVBK], a
    ldh a, [$30]
    ldh a, [$38]
    ld hl, sp+$1c
    db $fc
    inc c

jr_04e_4d43:
    db $fc
    inc c
    rrca
    ld [$180f], sp
    rra
    jr nc, jr_04e_4d8b

    ld h, b
    ld a, a

jr_04e_4d4e:
    ld b, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    jr jr_04e_4d4e

    inc c
    db $fc
    ld b, $fe
    ld [bc], a
    cp $03
    rst $38
    ld bc, $00ff
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
    ret nz

    ret nz

    ld h, b
    ldh [rNR41], a
    ldh [rNR32], a
    rra
    ld c, $0f
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
    ld c, $0f
    inc e
    rra
    add hl, sp
    ld a, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b

jr_04e_4d8b:
    rst $28
    jr c, @-$37

    ld a, h
    add e
    cp $01
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$1cf7], sp
    db $e3
    ld a, $c1

jr_04e_4da0:
    ld a, a
    add b
    rst $38
    nop
    inc e
    db $fc
    jr c, jr_04e_4da0

    ldh a, [$f0]
    ldh [$e0], a
    ld [hl], b
    ldh a, [$38]
    ld hl, sp+$1c
    db $fc
    adc h
    ld a, h
    ld bc, $0101
    ld bc, $0303
    ld b, $07
    inc b
    rlca
    inc c
    rrca
    ld [$0c0f], sp
    rrca
    adc b
    rst $30
    inc e
    db $e3
    ld a, $c1
    ld l, a
    sub b
    rst $00
    jr c, @+$05

    db $fc
    ld bc, $00fe
    rst $38
    ld [$1cf7], sp
    db $e3
    ld a, $c1
    ld a, a
    add b
    rst $30
    ld [$1ce3], sp
    pop bc
    ld a, $80
    ld a, a
    ld [$1df7], sp
    db $e3
    ld a, $c1

jr_04e_4dea:
    ld a, a
    add b
    rst $30
    ld [$1ee1], sp
    ret nz

    ccf
    add b
    ld a, a
    ld h, b
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

jr_04e_4dfa:
    ld h, b
    ldh [$a0], a
    ld h, b
    ldh a, [$30]
    db $10
    ldh a, [rNR10]
    ldh a, [$73]
    ld a, h
    rst $20
    ld hl, sp-$20
    rst $38
    ldh a, [rIE]
    ld a, b
    ld a, a
    jr c, jr_04e_4e4f

    jr c, jr_04e_4e51

    ld [hl], b
    ld a, a
    rst $28
    db $10
    add a
    ld a, b
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    rst $20
    jr jr_04e_4dea

    inc a
    add c
    ld a, [hl]
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
    rst $20
    jr jr_04e_4dfa

    inc a
    add c
    ld a, [hl]
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
    adc $3e
    and $1e
    add [hl]
    ld a, [hl]
    ld b, $fe
    ld b, $fe
    rlca

jr_04e_4e4f:
    rst $38
    inc bc

jr_04e_4e51:
    rst $38
    inc bc
    rst $38
    rlca
    rlca
    ld b, $07
    inc c
    rrca
    ld [$0c0f], sp
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    or e
    cp a
    ld e, $1e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$98ff], sp
    rst $38
    db $fd
    rst $38
    rst $20
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    add $ff
    rst $28
    rst $38
    ld sp, hl
    ld sp, hl
    nop
    rst $38

jr_04e_4ea6:
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    ld h, e
    rst $38
    ld [hl], e
    rst $38
    sbc $de
    jr nc, jr_04e_4ea6

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld a, a
    pop hl
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    cp $fe
    ld a, h
    ld a, h
    jr c, jr_04e_4f0a

    nop
    nop
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    or b
    cp a
    ld sp, $333f
    ccf
    ccf
    ccf
    ld e, $1e
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    jp $e7ff


    rst $38
    rst $38
    rst $38
    ld a, l
    ld a, l
    jr c, jr_04e_4f2c

    nop
    rst $38
    nop
    rst $38
    add e
    rst $38
    add a
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_04e_4f0a:
    add b
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    pop hl
    rst $38
    pop af
    rst $38

jr_04e_4f2c:
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    adc [hl]
    adc [hl]
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    add [hl]
    cp $c6
    cp $ee
    cp $7c
    ld a, h
    jr c, jr_04e_4f7c

    add e
    rst $38
    jp $f3ff


    rst $38
    ld a, a
    ld a, a
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr z, jr_04e_4f90

    inc a
    inc h
    inc l
    inc a
    ld d, h
    ld a, h
    ld l, d
    ld d, [hl]
    push de
    db $eb
    xor e
    rst $38
    ld [$1408], sp
    inc e
    inc d
    inc e
    inc e
    inc d
    ld a, [hl+]
    ld [hl], $77
    ld l, e
    ld b, c
    ld a, a
    pop bc
    rst $38
    ld [hl], b
    ld a, a
    ldh [rIE], a
    jp $cfff


    rst $38

jr_04e_4f7c:
    db $fd
    rst $38
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ldh [rIE], a
    nop
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    cp h
    rst $38
    cp $ff
    rst $20
    rst $38

jr_04e_4f90:
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
    jr c, @+$01

    ld a, h
    rst $38
    rst $20
    rst $38
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    ld bc, $31ff
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    nop
    rst $38
    ld c, $fe
    add [hl]
    cp $c3
    rst $38
    di
    rst $38
    cp a
    rst $38
    sbc [hl]
    cp $1c
    db $fc
    ld c, $fe
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld d, [hl]
    ld a, [hl]
    xor e
    rst $10
    push de
    xor e
    ld bc, $aaff
    cp $55
    rst $38
    xor e
    ld d, l
    ld d, l
    xor e
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    inc bc
    ld [bc], a
    ld bc, $0201
    inc bc
    xor d
    rst $38
    ld d, l
    ld a, a
    add b
    rst $38
    ld b, b
    rst $38
    ld h, [hl]
    sbc c
    sbc c
    ld h, [hl]
    nop
    rst $38
    ld l, d
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [$a0], a
    ld h, b
    ldh [$e0], a
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
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld b, $07
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $fe
    inc e
    db $fc
    ld c, $fe
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    rlca
    ld b, $04
    rlca
    inc bc
    inc bc
    nop
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    rst $38
    ld d, l
    rst $38
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    inc bc
    inc bc
    ld b, $07
    inc b
    rlca
    ld [bc], a
    inc bc
    dec b
    ld b, $06
    dec b
    ld a, [bc]
    rrca
    inc c
    rrca
    sbc l
    rst $38
    nop
    rst $38

jr_04e_5088:
    nop

jr_04e_5089:
    rst $38
    nop
    rst $38
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    rst $38
    ret nz

    ret nz

    jr nc, jr_04e_5088

    db $10
    ldh a, [rNR41]
    ldh [$90], a
    ld [hl], b
    ld [hl], b
    sub b
    ld [$18f8], sp
    ld hl, sp+$07
    rlca
    inc bc
    inc bc
    rrca
    rrca
    ld e, $1f
    jr c, jr_04e_50ed

    jr nc, jr_04e_50ef

    jr c, jr_04e_50f1

    ld e, $1f
    inc bc
    db $fc
    rst $00
    ld hl, sp-$71
    ldh a, [$1f]
    ldh [$3e], a
    pop bc
    ld a, h
    add e
    jr c, jr_04e_5089

    nop
    rst $38
    add c
    ld a, [hl]
    jp $e73c


    jr @+$01

    nop
    ld a, [hl]
    add c
    inc a
    jp $e718


    nop
    rst $38
    rst $00
    ccf
    db $e3
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, h
    add e
    ld a, $c1
    inc e
    db $e3
    nop
    rst $38

jr_04e_50e4:
    add b
    add b
    ret nz

    ret nz

    ldh a, [$f0]
    jr c, jr_04e_50e4

    inc e

jr_04e_50ed:
    db $fc
    inc c

jr_04e_50ef:
    db $fc
    inc a

jr_04e_50f1:
    db $fc
    ld hl, sp-$08
    dec b
    rlca
    ld a, [bc]
    rrca
    inc e
    rra
    inc d
    rra
    ld [$190f], sp
    ld e, $36
    add hl, sp
    jr nz, jr_04e_5143

    ld c, h
    rst $38
    or e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    nop
    rst $38
    ret nc

    ldh a, [$b0]
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$6c
    ld l, h
    ld h, [hl]
    sbc [hl]
    ld [bc], a
    cp $0e
    rrca
    inc e
    rra
    jr c, jr_04e_5169

    ld [hl], b
    ld a, a
    ld h, c
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    inc bc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add h
    rst $38
    inc c
    rst $38
    inc a

jr_04e_5143:
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
    ld h, h
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
    db $10
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop

jr_04e_5169:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    ld [hl], c
    rst $38
    ccf
    rst $38
    ldh [$e0], a
    ld [hl], b
    ldh a, [$30]
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    db $10
    rra
    jr nz, jr_04e_51d7

    jr nc, jr_04e_51d9

    inc c
    rrca
    inc sp
    ccf
    jr nz, jr_04e_51df

    db $10
    rra
    ld h, b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call z, Call_000_33ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    db $fc

jr_04e_51b6:
    ld b, $fe
    ld [bc], a
    cp $cc
    db $fc
    jr c, jr_04e_51b6

    ld [$06f8], sp
    cp $02
    cp $03
    inc bc
    ld bc, $0001
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld c, $0f
    inc a
    ccf
    db $fc
    rst $38
    db $ed

jr_04e_51d7:
    rst $38
    rst $28

jr_04e_51d9:
    rst $38
    rst $00
    rst $38
    add b
    rst $38
    nop

jr_04e_51df:
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor $ff
    cp $ff
    cp a
    rst $38
    dec sp
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop af
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
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b
    ldh a, [$38]
    ld hl, sp+$40
    ld a, a
    jr nz, @+$41

    ld e, c
    ld h, [hl]
    and [hl]
    reti


    ret nc

    rst $38
    xor b
    rst $38
    di
    rst $38
    rra
    rra
    nop
    rst $38
    nop
    rst $38
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    rst $38
    ld sp, $ffff
    rst $38
    inc b
    db $fc
    ld [bc], a
    cp $9a
    ld h, [hl]
    ld h, a
    sbc c
    ld bc, $03ff
    rst $38
    adc [hl]
    cp $f8
    ld hl, sp+$78
    ld a, a
    ld h, b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    ld a, a
    jr c, @+$41

    jr c, jr_04e_52b3

    inc e
    db $fc
    ld c, $fe
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $fe
    inc a
    db $fc
    inc e
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $7701
    ld a, b
    rst $28
    ldh a, [$df]
    ldh [$b9], a
    add $20
    rst $18
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    adc $3e
    rst $20
    rra
    di
    rrca
    add hl, sp
    rst $00
    inc c
    di
    nop
    rst $38
    ld bc, $03ff

jr_04e_52b3:
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    rst $38
    add [hl]
    rst $38
    sbc [hl]
    rst $38

Jump_04e_52ca:
    cp $ff
    or $f7
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr c, @+$01

    ld a, l
    rst $38
    rst $28
    rst $28
    rst $00
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    jp $c7ff


    rst $38
    rst $28
    rst $38
    ld a, a
    ld a, a
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    db $fc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$1cff], sp
    rst $38
    cp [hl]
    rst $38
    rst $30
    rst $30
    db $e3
    db $e3
    rlca
    rst $38
    inc bc
    rst $38
    ld h, c
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    add $c6
    ret nz

    ret nz

    add b
    add b
    nop
    and l
    nop
    xor h
    xor l
    nop
    or h
    or l
    or [hl]
    nop
    and [hl]
    nop
    xor [hl]
    xor a
    or b
    or a
    cp b
    cp c
    cp a
    ret nz

    pop bc
    ret


    jp z, $d3cb

    call nc, Call_000_00d5
    ld bc, $0302
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    nop
    db $10
    ld de, $0012
    nop
    inc e
    dec e
    ld e, $00
    jr z, jr_04e_538e

    ld a, [hl+]
    dec hl
    inc l
    ld sp, $3332
    inc [hl]
    dec [hl]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    nop
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    nop
    nop
    ld [hl], c

jr_04e_538e:
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], e
    nop
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    nop
    nop
    add h
    ld c, $0e
    ld c, $85
    add [hl]
    adc e
    adc h
    adc l
    adc l
    adc l
    adc [hl]
    adc a
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    nop
    nop
    and a
    xor b
    xor c
    xor d
    xor e
    nop
    nop
    nop
    or c
    or d
    ld c, $0e
    ld c, $b3
    nop
    nop
    nop
    cp d
    cp e
    cp h
    cp h
    cp h
    cp l
    cp [hl]
    nop
    nop
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    nop
    nop
    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $0000

    sub $0e
    ld c, $0e
    ld c, $0e
    rst $10
    nop
    ret c

    reti


    cp h
    cp h
    cp h
    cp h
    cp h
    jp c, $db65

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    nop
    nop
    ld e, c
    ld e, d
    ld c, $0e
    ld c, $0e
    ld e, e
    nop
    ld h, c
    ld h, d
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, h
    ld h, l
    ld l, e
    ld l, h
    ld l, l
    ld c, $0e
    ld c, $6e
    ld l, a
    ld [hl], b
    nop
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    add c
    ld hl, $0e0e
    ld c, $0e
    ld c, $82
    add e
    add a
    adc b
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc d
    sub b
    sub c
    sub d
    sub d
    sub d
    sub d
    sub d
    sub e
    sub h
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    nop
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $07
    ld [$0000], sp
    inc c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    nop
    nop
    inc de

Jump_04e_5457:
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    nop
    rra
    jr nz, jr_04e_5484

    ld c, $22
    inc hl
    inc h
    ld c, $25
    ld h, $27
    dec l
    ld l, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    cpl
    jr nc, jr_04e_54ad

    scf
    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_04e_54b6

    jr c, jr_04e_54b9

    ld a, [hl-]
    ld b, b
    ld b, c
    ld b, d

jr_04e_5484:
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, e
    ld b, h
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $07
    ld [$0000], sp
    inc c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    nop

jr_04e_54ad:
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]

jr_04e_54b6:
    dec de
    nop
    rra

jr_04e_54b9:
    jr nz, jr_04e_54dc

    ld c, $22
    inc hl
    inc h
    ld c, $25
    ld h, $27
    dec l
    ld l, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    cpl
    jr nc, jr_04e_5505

    scf
    jr c, jr_04e_550a

    jr c, jr_04e_550c

    jr c, @+$3a

    jr c, jr_04e_5511

    ld a, [hl-]
    ld b, b
    ld b, c
    ld b, d

jr_04e_54dc:
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, e
    ld b, h
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    ld d, e
    nop
    rst $38
    cp $ff
    ld a, [$77fa]
    call c, $dde0
    ld hl, sp-$18
    ld d, l
    xor d
    db $fc
    db $e4
    nop
    db $f4
    and $00

jr_04e_5505:
    db $ec
    ldh [$dd], a
    ldh a, [$e0]

jr_04e_550a:
    add hl, sp
    ld [hl], a

jr_04e_550c:
    db $ec
    ldh [$fd], a
    push hl
    ld h, a

jr_04e_5511:
    ld h, [hl]
    rst $38
    rst $38
    pop hl
    jp c, Jump_000_10e2

    cp $ff
    add b
    rst $38
    add b
    rst $38
    add b
    rst $20
    ld h, [hl]
    add h
    db $e3
    add b
    rst $38
    cp $ff
    db $fc
    add b
    rst $38
    nop
    ldh a, [$60]
    ld h, b
    ldh a, [$f0]
    ld hl, sp-$10
    inc bc
    ld sp, hl
    ldh a, [$80]
    rst $38
    cp $ff
    add b
    rst $38
    add b
    pop de
    ld a, [hl]
    db $e3
    add b
    rst $38
    nop
    cp $ff
    add b
    rst $38
    nop
    db $d3
    push af
    and c
    add b
    rst $38
    cp $ff
    add b
    rst $38
    add b
    or e
    ld bc, $fe01
    ldh [$80], a
    rst $38
    cp $ff
    add b
    rst $38
    nop
    push de
    add b
    rst $18
    cp $ff
    nop
    add b
    rst $38
    add b
    sub l
    db $fc
    add h
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $18
    cp $ff
    add b
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp $ff
    add b
    rst $38
    add b
    rst $38
    ld hl, sp+$42
    rrca
    pop hl
    rrca
    add b
    rst $38
    cp $ff
    add b
    rst $38
    add b
    ld d, c
    inc de
    inc de
    ld a, a
    pop hl
    ld a, e
    nop
    rst $18
    cp $ff
    add b
    rst $38
    nop
    ld d, c
    rlca
    rlca
    ld l, a
    add a
    ld h, a
    rst $38
    rst $30
    add b
    rst $38
    cp $ff
    add b

Call_04e_55a6:
    rst $38
    add b
    ld a, [hl+]
    ld [bc], a
    rst $38
    rlca
    ld [bc], a
    rlca
    rlca
    rrca
    rlca
    rst $28
    rst $20
    jp $e7ff


    nop
    ld e, a
    cp $ff
    add b
    rst $38
    nop
    add hl, hl
    inc b
    inc b
    rst $38
    ld a, a
    inc b
    ld l, $2e
    ld a, a
    ld a, $ff
    ccf
    ldh [$82], a
    ld h, $80
    rst $38
    cp $ff
    add b
    rst $38
    add b
    ld [$3838], sp
    ld a, l
    pop bc
    ld a, l
    add d
    add sp, -$80
    rst $38
    cp $ff
    add b
    rst $38
    add b
    ld l, h
    or [hl]
    or [hl]
    ldh a, [$80]
    rst $38
    cp $ff
    add b
    rst $38
    nop
    ld [hl], e
    ld a, b
    ld a, b
    db $fd
    db $fd
    ldh a, [$80]
    rst $38
    cp $ff
    add b
    rst $38
    add b
    ld d, c
    ld b, $06
    rst $28
    rst $28
    ldh a, [$80]
    rst $18
    cp $ff
    add b
    rst $38
    nop
    ld d, e
    inc bc
    inc bc
    ld [hl], a
    ld [hl], a
    nop
    add b
    db $ec
    nop
    nop
    nop
    rra
    ld sp, $7d78
    sbc b
    ld d, h
    ld b, b
    db $10
    ld b, b
    ld a, [hl-]
    ld c, h
    ld a, h
    ld [c], a
    inc hl
    ld b, b
    db $10
    ld b, b
    ld a, [hl-]
    nop
    dec hl
    ld e, b
    ld c, e
    ld b, b
    db $10
    ld b, b
    ld a, [hl-]
    ld e, b
    ld c, e
    ld [c], a
    inc hl
    ld b, b
    db $10
    ld b, b
    ld a, [hl-]
    ld [c], a
    inc hl
    nop
    dec hl
    ld b, b
    db $10
    rra
    dec h
    ld [$0825], sp
    dec h
    ld [$1825], sp
    nop
    call Call_04e_574f
    call Call_04e_567a
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
    ld hl, $54f0
    ld de, $d000
    call Call_000_1f2f
    call Call_04e_6086
    ld hl, $5612
    ld de, $0205
    call Call_000_0595
    ret


Call_04e_567a:
    ld hl, $da00

jr_04e_567d:
    ld a, [hl+]
    cp $ff
    jr z, jr_04e_56a3

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, e
    cp $03
    jr z, jr_04e_5690

    cp $02
    jr nz, jr_04e_56a1

jr_04e_5690:
    ld a, c
    and a
    jr z, jr_04e_56a1

    ld a, c
    rrca
    rrca
    rrca
    and $07
    ld e, $00
    push hl
    call Call_04e_56a4
    pop hl

jr_04e_56a1:
    jr jr_04e_567d

jr_04e_56a3:
    ret


Call_04e_56a4:
    add a
    add a
    add a
    ld hl, $570f
    add l
    ld l, a
    jr nc, jr_04e_56af

    inc h

jr_04e_56af:
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

jr_04e_56bb:
    push de

jr_04e_56bc:
    ld a, [hl]
    and a
    jr z, jr_04e_56ff

    bit 7, d
    jr nz, jr_04e_56ff

    ld a, d
    cp $14
    jr nc, jr_04e_56ff

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
    ld de, $400e
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
    jr c, jr_04e_56f4

    ld c, $08

jr_04e_56f4:
    push bc
    call Call_04e_6159
    pop bc
    dec c
    jr nz, jr_04e_56f4

    pop hl
    pop de
    pop bc

jr_04e_56ff:
    inc hl
    inc d
    dec e
    jr nz, jr_04e_56bc

    pop de
    inc b
    ld a, c
    sub $08
    ld c, a
    jr z, jr_04e_570e

    jr nc, jr_04e_56bb

jr_04e_570e:
    ret


    nop
    nop
    ld bc, $9e01
    ld b, h
    nop
    nop
    nop
    nop
    ld bc, $9f02
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    inc bc
    and c
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    inc b
    xor d
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    dec b
    or [hl]
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    ld b, $c5
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    rlca
    rst $10
    ld b, h
    nop
    nop
    rst $38
    nop
    inc bc
    ld [$44ec], sp
    nop
    nop

Call_04e_574f:
    ld hl, $da00

jr_04e_5752:
    ld a, [hl+]
    cp $ff
    jr z, jr_04e_5775

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $01
    jr nz, jr_04e_5773

    ld a, b
    rrca
    rrca
    rrca
    and $07
    jr z, jr_04e_5773

    cp $07
    jr z, jr_04e_5773

    ld e, b
    push hl
    call Call_04e_5786
    pop hl

jr_04e_5773:
    jr jr_04e_5752

jr_04e_5775:
    ld a, [$c3b7]
    cp $0c
    jr nz, jr_04e_5785

    ld a, $07
    ld d, $0a
    ld e, $3f
    call Call_04e_5786

jr_04e_5785:
    ret


Call_04e_5786:
    add a
    add a
    add a
    ld hl, $6046
    add l
    ld l, a
    jr nc, jr_04e_5791

    inc h

jr_04e_5791:
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

jr_04e_579e:
    push de

jr_04e_579f:
    ld a, [hl]
    and a
    jr z, jr_04e_57ea

    bit 7, d
    jr nz, jr_04e_57ea

    ld a, d
    cp $14
    jr nc, jr_04e_57ea

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
    ld de, $57f8
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
    jr nc, jr_04e_57cb

    inc h

jr_04e_57cb:
    ld bc, $d000
    add hl, bc
    call Call_04e_6159
    call Call_04e_6159
    call Call_04e_6159
    call Call_04e_6159
    call Call_04e_6159
    call Call_04e_6159
    call Call_04e_6159
    call Call_04e_6159
    pop hl
    pop de
    pop bc

jr_04e_57ea:
    inc hl
    inc d
    dec e
    jr nz, jr_04e_579f

    pop de
    ld a, b
    add $08
    ld b, a
    dec c
    jr nz, jr_04e_579e

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
    jr jr_04e_58a0

    jr nc, @+$41

    jr nc, jr_04e_58e4

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

jr_04e_58a0:
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

jr_04e_58e4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_04e_5a31:
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
    jr jr_04e_5a7c

    jr jr_04e_5a7e

    jr jr_04e_5aa0

    jr nc, jr_04e_5aa2

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

jr_04e_5a7c:
    nop
    nop

jr_04e_5a7e:
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

jr_04e_5aa0:
    nop
    nop

jr_04e_5aa2:
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    jr nc, jr_04e_5a31

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

    jr nz, jr_04e_5b4c

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

jr_04e_5b04:
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
    jr jr_04e_5b04

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

jr_04e_5b4c:
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

jr_04e_5b66:
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
    jr jr_04e_5b66

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
    jr nz, jr_04e_5c10

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

jr_04e_5c10:
    nop
    nop
    nop
    nop
    sbc c
    sbc c
    rst $38
    rst $38

Jump_04e_5c18:
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
    jp z, Jump_04e_52ca

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

jr_04e_5cea:
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_04e_5cea

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
    jp c, Jump_04e_5457

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
    jr nc, jr_04e_6045

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
    jr z, jr_04e_6056

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

jr_04e_6045:
    ld h, $ff
    ld sp, hl
    inc bc
    ld bc, $5ff8
    nop
    nop
    rst $38
    ld sp, hl
    inc bc
    ld bc, $5ff8
    nop
    nop

jr_04e_6056:
    rst $38
    ld sp, hl
    inc bc
    ld bc, $5ffb
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    cp $5f
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    ld [$0060], sp
    nop
    cp $f1
    dec b
    ld [bc], a
    ld [de], a
    ld h, b
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    inc e
    ld h, b
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    ld sp, $0060
    nop

Call_04e_6086:
    ld hl, $da00

jr_04e_6089:
    ld a, [hl+]
    cp $ff
    jr z, jr_04e_60ab

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $03
    jr z, jr_04e_609c

    cp $02
    jr nz, jr_04e_60a9

jr_04e_609c:
    ld a, b
    rrca
    rrca
    rrca
    and $07
    ld e, $07
    push hl
    call Call_04e_60ac
    pop hl

jr_04e_60a9:
    jr jr_04e_6089

jr_04e_60ab:
    ret


Call_04e_60ac:
    add a
    add a
    add a
    ld hl, $6119
    add l
    ld l, a
    jr nc, jr_04e_60b7

    inc h

jr_04e_60b7:
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

jr_04e_60c4:
    push de

jr_04e_60c5:
    ld a, [hl]
    and a
    jr z, jr_04e_610e

    bit 7, d
    jr nz, jr_04e_610e

    ld a, d
    cp $14
    jr nc, jr_04e_610e

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
    ld de, $4504
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
    call Call_04e_6166
    call Call_04e_6166
    call Call_04e_6166
    call Call_04e_6166
    call Call_04e_6166
    call Call_04e_6166
    call Call_04e_6166
    call Call_04e_6166
    pop hl
    pop de
    pop bc

jr_04e_610e:
    inc hl
    inc d
    dec e
    jr nz, jr_04e_60c5

    pop de
    inc b
    dec c
    jr nz, jr_04e_60c4

    ret


    rst $38
    cp $03
    inc bc
    inc [hl]
    ld d, e
    nop
    nop
    rst $38
    ei
    inc bc
    ld b, $3d
    ld d, e
    nop
    nop
    cp $f9
    dec b
    ld [$534f], sp
    nop
    nop
    db $fd
    ld sp, hl
    rlca
    ld [$5377], sp
    nop
    nop
    db $fc
    ld sp, hl
    add hl, bc
    ld [$53af], sp
    nop
    nop
    db $fc
    ld sp, hl
    add hl, bc
    ld [$53f7], sp
    nop
    nop
    ei
    ld sp, hl
    dec bc
    ld [$543f], sp
    nop
    nop
    ei
    ld sp, hl
    dec bc
    ld [$543f], sp
    nop
    nop

Call_04e_6159:
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
    jr jr_04e_6171

Call_04e_6166:
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

jr_04e_6171:
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


    push af
    nop
    rst $38
    db $ec
    rst $38
    cp $e0
    ld a, l
    cp $ba
    rst $00
    cp a
    add e

jr_04e_618e:
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $38
    pop hl
    ret nc

    ld a, a
    rst $28
    sbc a
    rst $38
    and b
    rst $38
    xor a
    ldh a, [$fe]
    db $e3
    pop hl
    rst $38
    rst $18
    ldh [$fc], a
    ld [c], a
    sub $e2
    di
    pop hl
    rlca
    rst $38
    di
    rra
    rst $38
    dec bc
    rst $38
    ei
    rrca
    cp $e3
    ret c

    push hl
    ret nc

    push hl
    inc e
    add sp, -$1b
    ldh [$ed], a
    sbc a
    rst $38
    ret nz

    and d
    ld [c], a
    cp b
    rst $20
    xor b
    pop hl
    push hl
    rst $38
    cp b
    and $f3
    xor b
    ldh [$e0], a
    db $e3
    rst $10
    jr c, jr_04e_618e

    rst $38
    ld a, h
    ld l, l
    cp $c6
    rst $38
    add d
    rst $38
    cp $f7
    rst $38
    add b
    ld a, a
    ld h, b

jr_04e_61e1:
    ldh [$fe], a
    add d
    rst $38
    add $ff
    rst $38
    ld l, h
    rst $38
    cp c
    ld a, [hl]
    db $d3
    inc a
    rst $20
    rst $38
    jr jr_04e_61e1

    ld e, $da
    ccf
    or d
    ld a, a
    ld [c], a
    rst $38
    ld a, a
    or d
    ld a, a
    jp c, $ee3f

    rra
    ldh a, [rIE]
    rrca
    rst $30
    ld a, b
    db $db
    ld a, h
    call $c67e
    rst $38
    ld a, a
    call z, $d97f
    ld a, [hl]
    di
    ld a, h
    rst $00
    ld a, l
    jr c, @+$52

    add sp, $0a
    ld a, [$fa0f]
    dec b
    ld b, b
    and $7f
    ld c, $fa
    rrca
    cp $0f
    ld hl, sp+$07
    add hl, sp
    push hl
    rst $38
    nop
    cp $00
    cp $02
    cp $01
    db $fd
    cp $f0
    and $00
    ld [bc], a
    ei
    nop
    rst $38
    ld b, d
    jp nz, $e0fe

jr_04e_623d:
    and $0c
    ld [de], a
    di
    ld [$21fb], sp
    ccf
    cp $d2
    and $1e
    inc h
    and $09
    ld sp, hl
    inc d
    dec e
    cp $cf
    pop bc
    jr nz, jr_04e_6293

    ret z

    rst $08
    ld a, [c]
    di
    inc a
    rst $18
    inc a
    rrca
    rst $08
    add c
    add c
    or b
    and $e0
    add b
    rst $18
    rst $28
    jr nz, @+$31

    call nz, $a0cc
    and $07
    nop
    rra
    rst $30
    nop
    rst $30
    ld b, h
    ld [hl], h
    sub b
    and $ea
    push hl
    ret nc

    and $bf
    db $10
    rst $18
    jr nz, jr_04e_623d

    ld c, b
    ld a, b
    ld [hl], b
    and $03
    cp a
    inc b
    db $fd
    ld [bc], a
    cp $09
    rrca
    ld h, b
    and $f0
    and [hl]
    ret nz

    pop hl
    nop
    db $76
    ld h, b

jr_04e_6293:
    rst $20
    ld d, l
    jp nz, Jump_04e_4001

    and $3f
    rst $28
    db $10
    or b
    ld [$a28f], sp
    rst $20
    ld b, b
    ret nz

    jr nz, @-$05

    ld a, $2e
    pop hl
    ld e, c
    jp $cf48


    inc b
    add a
    nop
    rst $38
    add e
    ld b, d
    jp $e020


    nop
    inc bc
    nop
    rst $18
    add e
    jr z, @+$2d

    ld b, b
    ld b, e
    and b
    ldh [rTAC], a
    db $10
    ld a, a
    inc de
    jr nz, jr_04e_62e9

    nop
    db $fd
    nop
    db $fd
    sub [hl]
    ldh [$fb], a
    ei
    nop
    cp $e0
    ld [$05fb], sp
    rst $30
    dec a
    rst $38
    add l
    ccf
    add b
    ccf
    add b
    cp a
    add b
    ld a, a
    rst $30
    ld b, b
    ld a, a
    nop
    cp $e1
    jp nc, $e15e

    dec l

jr_04e_62e9:
    rst $38
    db $ed
    dec c
    di
    inc de
    di
    inc bc
    ei
    dec bc
    rst $38
    ei
    inc bc
    db $fd
    dec b
    ldh [$ef], a
    add sp, -$11
    rst $38
    ldh a, [$f7]
    db $f4
    rst $30
    ld hl, sp-$05
    cp d
    cp e
    ld a, a
    cp h
    cp l
    dec e
    ld e, l
    ld a, [hl]
    ld a, [hl]
    ld a, a
    rst $38
    ldh [$bf], a
    ld a, e
    ld a, e
    ld a, c
    ld a, c
    ld a, e
    ld a, e
    or $e1
    ld [hl], e
    ld a, a
    ld [hl], b
    sbc e
    sbc b
    db $e3
    ldh [$f3], a
    ldh a, [$fe]
    db $e3
    rst $38
    set 1, b
    add d
    inc sp
    and b
    ccf
    sbc b
    jr @+$01

    and a
    daa
    xor a
    cpl
    sbc a
    rra
    cp a
    ccf
    rst $38
    cp [hl]
    ld a, $08
    ld a, [$fc04]
    ld [de], a
    rra
    ei
    add sp, -$11
    cp [hl]
    pop hl
    ld sp, hl
    ei
    ld hl, sp-$06
    sub a
    rst $38
    db $f4
    cpl
    add sp, $5f
    ret nc

    ld a, $a2
    cp h
    rst $38
    add l
    ld a, d
    ld b, e
    ld a, b
    dec bc
    db $f4
    add [hl]
    db $f4
    rst $38
    rla
    ld a, [$fd0b]
    dec b
    ld a, $22
    ld e, l
    rst $38
    pop de
    inc hl
    ld [c], a
    rlca
    inc b
    di
    sub b
    add b
    push de
    add [hl]
    ld h, [hl]
    ret nz

    nop
    dec c
    ret nz

    ld bc, $a166
    rst $28
    jr z, @-$03

    db $fc
    ld bc, $e0fe
    dec b
    ld a, [$7883]
    ld b, e
    rst $38
    cp b
    add e
    cp c
    dec bc
    or h
    ld b, $10
    ldh a, [$fb]
    rrca
    ld [$e154], sp
    ld [hl], e
    ld [bc], a
    ld [hl], b
    inc b
    ld [hl], b
    rst $38
    nop
    rst $38
    add b
    nop
    inc c
    ldh [$0c], a
    pop hl
    rst $38
    dec l
    call nc, $c01d
    add hl, de
    jr nz, jr_04e_63de

    ld [bc], a
    rst $18
    ld a, e
    nop
    ld h, e
    add hl, bc
    ld sp, hl
    db $fc
    pop bc
    ld b, b
    pop bc
    rst $38
    add h
    add a
    ld [$800f], sp
    adc a
    db $10
    sbc a
    cp [hl]
    nop
    ldh [rSB], a
    ld c, b
    ret


    add h
    add l
    add $c0
    ld bc, $84ff
    add l
    ld c, b
    ret


    nop
    or $00
    or $ff
    db $10
    or $0a
    xor $01
    db $ed
    ld bc, $ffec
    ld hl, $11ec
    call c, $80ff
    rst $30

jr_04e_63de:
    dec b
    cp a
    ld a, [c]
    ld [bc], a
    ldh a, [rP1]
    ldh a, [rTAC]
    cp $e3
    db $fd
    rst $38
    ld bc, $427e
    ld a, $20
    sbc a
    add c
    ld e, a
    rst $38
    ld b, b
    ld e, a
    ld b, c
    sbc h
    add h
    ld d, d
    db $d3
    ld e, $eb
    ld e, $fe
    rst $38
    ldh [$7e], a
    rst $38
    ldh [rNR34], a
    ld e, $ae
    db $eb
    xor $0f
    db $dd
    add d
    ei
    rst $38
    ldh [$f9], a
    ld sp, hl
    ld a, [$faff]
    dec b
    rlca
    nop
    ld a, a
    and a
    or h
    rst $10
    rst $18
    ret nc

    rst $20
    ldh [$f7], a
    ldh a, [$fe]
    pop hl
    ld [hl], a
    ld [hl], b
    rst $38
    and a
    and b
    cp h
    inc a
    cp h
    dec a
    cp h
    inc a
    rst $38
    cp a
    ccf
    cp a
    ccf
    sbc a
    rra
    xor a
    cpl
    ld a, a
    sub a
    scf
    ld a, d
    ld a, d
    ld a, b
    ld a, b
    ld a, [$e0ff]
    rst $38
    ld sp, hl
    ld sp, hl
    ldh a, [$f2]
    ret z

    rst $08
    jr nz, jr_04e_6488

    rst $38
    ld a, [c]
    ld b, $f1
    dec b
    pop af
    inc b
    ld hl, sp-$76
    rst $38
    ld a, h
    ld b, h
    ccf
    jr nz, @+$61

    ret nc

    cpl
    add sp, -$02
    ld [hl], e
    ret nz

    nop
    db $dd
    ld b, b

jr_04e_6461:
    dec a
    jr nz, jr_04e_6461

    add b
    rst $38

jr_04e_6466:
    db $fd
    dec b
    ld a, [c]
    ld [de], a
    adc b
    adc a
    rst $00
    nop
    rst $30
    rst $00
    db $10
    rst $28
    ld h, l
    and b
    db $fd
    dec b
    ei
    inc bc
    rst $38
    ei
    adc e
    db $76
    ld d, [hl]
    or b
    ld b, $b0
    ld d, $ff
    and b
    nop
    ccf
    jr nz, jr_04e_6466

    ret nc

jr_04e_6488:
    rst $28
    add sp, -$11
    rst $30
    db $f4
    ld [hl], b
    ld [hl], b
    ld d, b
    add c
    inc de
    ld [bc], a
    call nc, Call_000_04ff
    ret nc

    ld b, a

jr_04e_6498:
    or b
    daa
    or b
    add [hl]
    ld [hl], b
    ld e, a
    ld b, [hl]
    nop
    ld h, e
    nop
    ld l, a
    cp $e2
    rst $28
    cp $e0
    db $fd
    rrca
    cp $e0
    ret nz

    nop
    pop bc
    inc d
    call nc, $ff02

jr_04e_64b3:
    jp nz, $c000

    jr nz, jr_04e_6498

    ld [$04c8], sp
    db $fd
    call nz, $8349
    ld [de], a
    di
    jr nz, @-$1d

    nop
    pop bc
    rst $38
    ld b, d
    jp Jump_000_0704


    nop
    call c, $df00
    cp a
    nop
    rst $18
    jr nz, jr_04e_64b3

    db $10
    ldh a, [$58]
    and l
    ld [bc], a
    rst $10
    cp $04
    db $fc
    ld [bc], a
    and b
    inc bc
    rra
    add e
    ld [$bbcf], sp
    add d
    cp $6a
    and b
    nop
    add d
    add e
    rrca
    add e
    db $10
    ld a, l
    or b
    add e
    ldh [$3f], a
    add b
    add b
    ld b, b
    ret nz

    rst $38
    ld h, e
    rst $38
    dec b
    ld a, l
    nop
    ldh [rP1], a
    ldh [rSB], a
    rlca
    sbc $36

jr_04e_6504:
    and l
    ld c, b
    ret z

    add b
    rst $38
    push bc
    and b
    nop
    add b
    ld sp, hl
    add b
    add [hl]
    and h
    ld l, $a0
    jr z, jr_04e_6504

    nop
    nop
    ld [$08fd], sp
    rst $08
    ld h, e
    add b
    ld hl, sp+$00
    ret nz

    ld bc, $9303
    db $10
    rra
    and c
    and b
    or b
    db $e3
    ldh a, [$99]
    and b
    or b
    add sp, $31
    rst $38
    ld sp, $de1e
    add a
    add a
    ld bc, $2201
    db $fd
    ld a, $9f
    ld h, e
    dec c
    adc l
    ld a, [bc]
    ld a, [hl+]
    push de
    push de
    cp a
    cp $fe
    ld a, a
    ld a, a
    sbc [hl]
    sbc [hl]
    ld b, d
    and b
    ld hl, sp-$01
    jr nc, @+$39

    or b
    or a
    ld h, b
    ld h, e
    ret nz

    ret nz

    rst $28
    adc d
    adc [hl]
    db $10
    rra
    ld a, b
    ldh [rIE], a
    nop
    ld b, $f8
    ld b, [hl]
    add c
    ld b, l
    ld h, [hl]
    db $fc
    rst $28
    ret nz

    nop
    add b
    ld [de], a
    sub e
    rst $38
    ld hl, $00a1
    add b
    nop
    add b
    ld hl, $efa1
    ld [de], a
    sub e
    sub b
    sbc a
    add [hl]
    pop hl
    ld [bc], a
    add e
    ld hl, $e1ff
    db $10
    ldh a, [rSB]
    pop af
    ld [$10f9], sp
    rst $38
    sbc a
    add b
    adc a
    ld [$840f], sp
    add a
    ld b, b
    db $dd
    pop bc
    ld [$fee0], a
    add hl, bc
    ld sp, hl
    db $e4
    xor d
    ld bc, $ff00
    inc bc
    jr nz, @-$1e

    ld b, d
    jp $8300


    inc b
    rst $30
    add a
    ld c, b
    rst $08
    rrca
    ld h, e
    jr nz, jr_04e_65cf

    db $10
    inc de
    cp $ca
    ret nz

    inc bc
    ld b, b
    ld b, e
    jr z, jr_04e_65e1

    nop
    add e
    di
    nop
    inc bc
    and h
    jp hl


    sbc h
    ldh [$c0], a
    ld [$01f9], sp
    cp a
    pop af
    db $10
    ldh a, [rNR42]
    pop hl
    ld [bc], a

jr_04e_65ca:
    ret nc

    ret nz

    ld b, b

jr_04e_65cd:
    ld a, a
    ld a, a

jr_04e_65cf:
    sub b
    sbc a
    inc b
    call nz, $c808
    adc d
    add b
    rst $38
    ret nz

    ld [bc], a
    jp nz, $d414

    nop
    pop bc
    nop
    rst $30

jr_04e_65e1:
    ret nz

    inc b
    rlca
    or b
    ldh [$c1], a
    jr nz, jr_04e_65ca

    ld [de], a
    ld [hl], c
    di
    ld d, b
    db $f4
    cp $ff
    ld e, $ef
    ret nz

    nop
    di
    cp $e4
    xor [hl]
    ld b, c
    ld b, c
    sbc h
    nop
    adc b
    ld [de], a
    ldh [$94], a
    ld hl, sp-$20
    sbc h
    ldh a, [$c2]
    rst $38
    cp $ff
    ld c, [hl]
    ld l, h
    ret z

    add b
    nop
    inc bc
    ld bc, $9f0e
    rlca
    ld [$0804], sp
    dec b
    db $fc
    ldh [$f6], a
    ld hl, $bb80
    nop
    and b

jr_04e_661e:
    ld h, c
    ld h, b
    ret nz

    nop
    or b
    cp $e0
    inc b
    ldh a, [$e8]
    ldh [$fc], a
    jp hl


    and b
    dec l
    jp z, Jump_000_07e3

    ld [$0e01], sp
    ld d, [hl]
    db $76
    add c
    nop
    ld bc, $e1cc
    ret nz

    inc hl
    ld h, b
    and b
    ld e, a
    ret nz

    jr nc, jr_04e_65cd

    ld b, b
    jr z, jr_04e_66a6

    ld l, a
    cpl
    call z, Call_000_2048
    db $10
    cp $eb
    db $76
    ld hl, $0177
    nop
    dec b
    dec d
    and b
    inc bc
    nop
    dec c
    cp $e0
    cp [hl]
    jr jr_04e_661e

    nop
    ret nz

    add b
    ld [hl], b
    ldh [$d8], a
    ldh [$a0], a
    inc d
    call nc, $ece0
    pop hl
    inc bc
    rst $30
    add b
    dec b
    push de
    ld b, d
    ret nz

    pop hl
    ld [$efe1], a
    ldh [rNR10], a
    add b
    ld [hl], b
    and $a1
    nop
    add b

jr_04e_667d:
    rst $38
    ld a, a
    rst $38
    rst $10
    rst $20
    and l
    add $a5
    add [hl]
    cp $e5
    cp h
    inc hl
    ld hl, $0af0
    rst $38
    rst $38
    inc bc
    ld bc, $e8fe
    nop
    rst $38
    rra

jr_04e_6696:
    rrca
    db $10
    ld [$1a30], sp
    ldh [$7f], a
    ccf
    add b
    ld c, h
    add b
    ld e, e
    add b
    ld c, e
    ld a, [de]
    and b

jr_04e_66a6:
    ld c, l
    db $ec
    rst $38
    ld hl, sp-$10
    ld [$0c10], sp
    ld e, b
    rlca
    cp $7f
    ld bc, $0132
    jp c, $d201

    ld bc, $01bd
    rst $38
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    adc b
    ld a, a
    sub h
    ld a, [$205b]
    cp [hl]
    ld d, a
    jr nz, jr_04e_667d

    ld a, a
    add c
    rst $38
    rst $38
    ld c, a
    ld bc, $55fe
    xor d
    cp $e3
    ldh [$e4], a
    cp h
    dec a
    jr nz, @-$56

    db $fc
    pop hl
    ld a, [$e0e1]
    pop af
    sbc h
    dec e
    jr nz, jr_04e_6696

    cp $e0
    or d
    db $10
    or $e0
    ret nz

    push af
    cp $e3
    ret nz

    di
    cp h
    jp nz, $fce0

    pop hl
    ld a, [$f8e1]
    add b
    add sp, $06
    rst $20
    db $fc
    jp $bf1e


    cp a
    and c
    cp l
    rst $38
    and c
    cp [hl]
    rst $20
    db $fd
    pop hl
    cp $27
    or h
    ld h, a
    ld h, $d8
    db $fc
    inc b
    jp hl


    ld hl, sp-$3f
    ld b, b
    add b
    cp $eb
    ld c, h
    dec sp
    inc bc
    ld a, [$02e7]

jr_04e_6720:
    ld bc, $ebfe
    add b
    ldh a, [$b0]
    jr nz, jr_04e_6720

    ld hl, $20b6
    or $c8
    pop bc
    jp nz, $c0c3

    push de
    sbc b
    cp $e4
    ret nz

    call nz, $b270
    and c
    rst $20
    nop
    ld e, a
    db $e4
    ld a, h
    jp nz, Jump_04e_7f8e

    add h
    cp $e0
    push hl
    or h
    cp $e0
    sbc b
    ld a, h
    push bc
    ld b, $c1
    add h
    sbc [hl]
    sbc c
    rst $38
    cp a
    sbc a
    cp a
    adc h
    rst $18
    add $ef
    db $e3
    and c
    rst $30
    dec bc
    push bc
    jr z, @-$3c

    and h
    and c
    ld [bc], a
    ret nz

    inc bc
    ldh a, [$e8]
    ld c, e

jr_04e_6768:
    cp $0a
    ret nz

    ld c, h
    add b
    ld a, a
    add b
    ld a, [de]
    ldh [$08], a
    rst $18
    jr nc, jr_04e_6784

    stop
    rra
    ld d, l
    xor e
    nop
    rst $38
    db $fd
    jp nc, $c00a

    ld [hl-], a
    ld bc, $01fe

jr_04e_6784:
    ld e, b
    rlca
    cp a
    db $10
    inc c
    ldh a, [$08]
    nop
    ld hl, sp+$1c
    jp z, Jump_000_02b0

    add h
    ldh [$b8], a
    cp $e0
    ld a, [hl]
    pop hl
    db $fc
    or c
    ld [c], a
    jp $ce5c


    call c, Call_04e_55a6
    and d
    ldh [$c0], a
    cp d
    db $fc
    ret c

    and d
    sbc [hl]
    and b
    cp d
    cp h
    ret nz

    ldh [$ba], a
    pop bc
    cp h
    or l
    jp c, $bca3

    and [hl]
    ld b, b
    and e
    rrca
    rra
    rla
    ld a, a
    db $10
    rra
    db $10
    rra
    inc de
    ld e, $13
    jr nc, jr_04e_6768

    rst $38
    add b
    ret nz

    ld b, b
    ld h, b
    and b
    jr nc, jr_04e_6829

    rra
    ei
    ei
    sub e
    jr nz, @-$5b

    ld b, $0f
    dec bc
    add hl, bc
    rrca
    rst $08
    add hl, de
    rst $30
    ldh a, [$5f]
    sub b
    add d
    inc l
    add h
    add b
    rst $20
    rst $30
    rst $38
    db $db
    sbc b
    nop
    xor c
    cp h
    cp $7a
    ld b, e
    sbc $f0
    adc c
    inc a
    ld a, a
    ld e, e
    jp $85e0


    inc bc
    rlca
    cp a
    ld b, $04
    rst $38
    db $fc
    cp a
    inc h
    ret nc

    add l
    jr nc, jr_04e_6812

    ld hl, sp-$18
    ret z

    ld hl, sp-$02
    ldh [$3c], a
    or b
    ld e, d
    and e
    ld b, b
    ld sp, hl
    rlca
    or h
    ld a, a

jr_04e_6812:
    sbc [hl]
    db $fc
    sbc b
    cp d
    add e
    db $fc
    and h
    ld h, b
    xor c
    cp b
    add h
    xor $f8
    add c
    sbc [hl]
    ld a, a
    add [hl]
    sbc b
    add e
    ld e, $12
    ld e, $ff

jr_04e_6829:
    inc de
    rra
    inc de
    rra
    db $10
    rla
    db $10
    rrca
    db $fd
    rra
    add b
    ld h, c
    cp $9e
    ei
    sub d
    ld a, a
    ld [de], a
    rst $18
    sbc $12
    cp a
    inc sp
    call z, $a3fe
    add hl, de
    rst $28
    rst $38
    ld a, c
    rst $28
    ld a, c

jr_04e_6849:
    rst $38
    add hl, de
    ld e, l
    add hl, de
    and $fe
    xor $a2
    rst $30
    ldh a, [$df]
    sub e
    rst $18
    sub e
    rst $30
    rst $28
    sub b
    ld a, [$6798]
    sbc $a3
    ld b, c
    cp $4c
    ld a, a
    rst $38
    ld c, h
    ld a, a
    ld c, h
    xor $cc
    inc sp
    adc $a2
    rst $38
    cp a
    add e
    rst $38
    or e
    rst $28
    and e

jr_04e_6873:
    rst $30
    add c
    rst $30
    xor a
    adc c
    db $76
    ret nc

    db $e3
    ld b, $f9
    ccf
    db $e3
    ld a, a
    scf
    push hl
    inc h
    rst $20
    inc h
    jp $20e7


    ld h, c
    ei
    ld hl, sp+$08
    ld a, [bc]
    pop hl
    add sp, $08
    ret nc

    jr jr_04e_6873

    dec a
    ldh a, [rNR10]
    ld h, c
    daa
    rst $30
    ld h, a
    or a
    cp $e3
    ld hl, sp+$64
    add c
    cp [hl]
    jr c, jr_04e_6849

    ld e, h
    and d
    ldh [$ee], a
    ld a, [de]
    add l
    ld hl, sp+$64
    ldh [$f2], a

jr_04e_68ad:
    cp d
    and d
    jp nc, $9c60

    adc [hl]
    ld h, b
    ret nz

    rst $30
    jp c, $a2a1

    ld a, b
    ld h, c
    jr @-$1f

    ccf
    dec [hl]
    daa
    ld a, [hl-]
    ld [hl+], a
    dec l
    nop
    dec h
    ccf
    rst $38
    daa
    dec a
    daa
    jr jr_04e_6909

    rst $08
    rst $38
    ld h, [hl]
    rst $20
    jr nz, @+$01

    ld h, $fe
    ldh [$fa], a
    ld [c], a
    reti


    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    jp $4d7f


    rst $38
    ld c, l
    rst $38

Call_04e_68e3:
    rst $38
    ld b, e
    rst $38
    ld c, c
    ei
    ld c, c
    or [hl]
    rst $38
    adc $ef
    rst $38
    rst $30
    ld sp, $deef
    ld [c], a
    rst $28
    jr nz, jr_04e_68ad

    rst $38
    ld sp, $ffce
    rlca
    rrca
    rrca
    sbc b
    sbc a
    db $fd
    sub e
    cp $e0
    sub d
    sub a
    sub e
    dec bc
    sbc b
    rlca

jr_04e_6909:
    ld e, a
    rrca
    adc [hl]
    rst $38
    rst $30
    ld [hl], c
    ldh [$e0], a
    and $e0
    pop hl
    cp l
    rst $30
    ldh [$e0], a
    ld h, c
    di
    di
    sub d
    cp $e0
    sub [hl]
    rst $38
    rst $38
    sbc [hl]
    rst $38
    add d
    cp e
    add d
    ld a, l
    rst $38
    rst $38
    ldh a, [$f8]
    ld hl, sp+$08
    add sp, $08
    ldh a, [$78]
    ld e, $fc
    pop hl
    ld b, b
    ld h, b
    add b
    ret nz

    jr nz, @-$0e

    ld b, [hl]
    pop hl
    ld d, [hl]
    and e
    ld a, [c]
    nop
    pop af
    ld [c], a
    ld b, d
    add d
    ldh [$d7], a
    cp [hl]
    ld a, a
    and [hl]
    ld a, a
    dec b
    adc h
    db $f4
    ld h, b
    or b
    jp nc, $c060

    jp z, $f3f8

    ld b, $43
    cp $61
    ccf
    cp a
    cp a
    or b
    cp a
    and b
    cp a
    add hl, bc
    ld b, a
    cp $63
    ld a, [c]
    db $10
    ld [hl+], a
    ld bc, $67fe
    sub $e7
    and c
    cp h
    and b
    rst $38
    inc bc
    and c
    ld hl, sp-$2c
    ld l, c
    db $f4
    ld bc, $69d4
    db $e4
    ld l, $ff
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld l, e
    ld [$fefe], sp
    ld b, $7f
    inc c
    rst $38
    rrca
    jr c, jr_04e_69cd

    ld h, b
    ld a, h
    ret nz

    ldh a, [$fe]
    rst $38
    cp $00
    ld a, a
    ld a, h
    ld a, h
    add $fe
    add $ff
    rst $20
    add $e7
    cp $ff
    add $ff
    add $df
    rst $20
    nop
    ld h, e
    db $fc
    db $fc
    ldh a, [$e1]
    db $fc
    rst $38
    or $fa
    db $e3
    nop
    ld a, [hl]
    ldh [$e1], a
    ret nz

    db $e3
    ret nz

    ldh [rIE], a
    ret nz

    ldh [$c6], a
    and $7c
    ld a, a
    nop
    ld a, $bf
    ld hl, sp-$08
    call z, $c6fc
    and $ce
    pop hl

jr_04e_69cd:
    call z, $efff
    ld hl, sp-$02
    nop
    ld a, h
    cp $fe
    ret nz

    rst $38
    rst $38
    ret nz

    ldh [$fc], a
    db $fc
    ret nz

    cp $c0
    ld sp, hl
    ldh [$b0], a
    pop hl
    ldh a, [$e9]
    ret nz

    ldh [rP1], a
    ld h, b
    ld a, [hl]
    db $fd
    ld a, [hl]
    ldh [$e1], a
    adc $ee
    add $ef
    add $e7
    and $c0
    pop hl
    add $c6
    sub d
    rst $20
    sub b
    pop hl
    ld a, b
    ld a, b
    jr nc, @-$07

    inc a
    jr nc, jr_04e_6a3d

    cp $e3
    ld a, b
    ld a, b
    nop
    inc a
    cp a
    ld a, [hl]
    ld a, [hl]
    inc c
    ccf
    inc c
    ld c, $fe
    pop hl
    ld c, h
    rst $38
    ld c, [hl]
    jr c, jr_04e_6a57

    nop
    inc e
    add $c6
    call c, $ffff
    ldh a, [$fe]
    ldh [$f8], a
    ldh a, [$f0]
    call c, $fc7f
    add $ee
    nop
    ld h, e
    ret nz

    ret nz

    ld [hl], h
    pop hl
    db $fc
    db $fc
    db $e3
    ld b, b
    pop hl
    add $c6
    xor $ef

jr_04e_6a3a:
    xor $ff
    ld sp, hl

jr_04e_6a3d:
    sub $fe
    ldh [$9e], a
    pop hl
    nop
    ld h, e
    add $c6
    and $3f
    rst $20
    or $f7
    sbc $ff
    adc $90
    ldh [$30], a
    pop hl
    nop
    jr nz, jr_04e_6a3a

    inc e
    pop hl

jr_04e_6a57:
    ld b, b
    pop hl
    sbc $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$ef]
    nop
    nop
    nop
    push af
    nop
    rst $38
    db $ec
    rst $38
    cp $e0
    ld a, l
    cp $ba
    rst $00
    cp a
    add e

jr_04e_6a7a:
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $38
    pop hl
    ret nc

    ld a, a
    rst $28
    sbc a
    rst $38
    and b
    rst $38
    xor a
    ldh a, [$fe]
    db $e3
    pop hl
    rst $38
    rst $18
    ldh [$fc], a
    ld [c], a
    sub $e2
    di
    pop hl
    rlca
    rst $38
    di
    rra
    rst $38
    dec bc
    rst $38
    ei
    rrca
    cp $e3
    ret c

    push hl
    ret nc

    push hl
    inc e
    add sp, -$1b
    ldh [$ed], a
    sbc a
    rst $38
    ret nz

    and d
    ld [c], a
    cp b
    rst $20
    xor b
    pop hl
    push hl
    rst $38
    cp b
    and $f3
    xor b
    ldh [$e0], a
    db $e3
    rst $10
    jr c, jr_04e_6a7a

    rst $38
    ld a, h
    ld l, l
    cp $c6
    rst $38
    add d
    rst $38
    cp $f7
    rst $38
    add b
    ld a, a
    ld h, b

jr_04e_6acd:
    ldh [$fe], a
    add d
    rst $38
    add $ff
    rst $38
    ld l, h
    rst $38
    cp c
    ld a, [hl]
    db $d3
    inc a
    rst $20
    rst $38
    jr jr_04e_6acd

    ld e, $da
    ccf
    or d
    ld a, a
    ld [c], a
    rst $38
    ld a, a
    or d
    ld a, a
    jp c, $ee3f

    rra
    ldh a, [rIE]
    rrca
    rst $30
    ld a, b
    db $db
    ld a, h
    call $c67e
    rst $38
    ld a, a
    call z, $d97f
    ld a, [hl]
    di
    ld a, h
    rst $00
    ld a, l
    jr c, @+$52

    add sp, $0a
    ld a, [$fa0f]
    dec b
    ld b, b
    and $7f
    ld c, $fa
    rrca
    cp $0f
    ld hl, sp+$07

jr_04e_6b12:
    nop
    db $ed
    ld hl, sp-$01
    rst $38
    db $fc
    ei
    db $e3
    pop bc
    ldh a, [rP1]
    rst $28
    rrca
    add sp, -$0d
    ld [$feef], sp
    ld [c], a
    db $d3
    pop bc
    rlca
    nop
    ld hl, sp-$08
    rst $20
    rlca
    rlca
    ld hl, sp-$30
    call nz, $c3c6
    ccf
    nop
    rst $18
    rst $18
    ret nz

    cpl
    jr nz, jr_04e_6b12

    db $10
    cp $c5
    db $fc
    nop
    rst $18
    ei
    inc bc
    db $f4
    inc b
    db $eb
    ret nc

    ld [c], a
    ldh [rP1], a
    rst $18
    rra
    rra
    ldh [$e0], a
    rra
    ret nc

    and $0f
    nop
    rst $18
    rst $30
    ldh a, [rNR22]
    db $10
    rst $30
    cp $e2
    rst $38
    rst $38
    rst $38
    sbc a
    ccf
    rst $30
    rrca
    xor e
    rlca
    di
    inc bc
    rst $30
    xor c
    inc bc
    pop af
    db $fc
    ldh [rIE], a
    rst $38
    ld sp, hl
    db $fc
    rst $38
    rst $28
    ldh a, [$d5]
    ldh [$cf], a
    ret nz

    sub l
    ret nz

    rst $08
    adc a
    add b
    sub l
    add b
    xor [hl]
    ret z

    ld h, b
    call nz, Call_04e_7f7f
    rst $38
    sbc a
    ld a, a
    and a
    ld e, a
    xor a
    ld d, a
    xor c
    ld d, a
    rrca
    xor d
    ld d, l
    xor d
    ld d, l
    db $10
    pop de
    adc $e9
    rst $38
    rst $38
    db $fc
    ei
    db $fc
    ld a, [bc]
    db $e3
    ld_long a, $ffe7
    ld b, h
    db $dd
    ld h, [hl]
    rst $38
    cp $ff
    call nz, $dd7f
    ld h, [hl]
    db $dd
    ld h, $f9
    ld a, $ff
    db $e3
    inc e
    db $eb
    ld [$08eb], sp
    push af
    inc b
    db $fc
    cp $e3
    db $f4

jr_04e_6bbc:
    pop hl
    rst $10
    db $10
    rst $10
    db $10
    xor a
    jr nz, jr_04e_6bbc

    cp $e3

jr_04e_6bc6:
    db $f4
    pop hl
    ld [hl+], a
    ret nz

    ld a, a
    cp $13
    cp $1d
    ld a, a
    pop af
    ld e, $f7
    jr jr_04e_6bbc

    jr c, jr_04e_6bc6

    ld a, [bc]
    db $e4
    ld a, b
    ld a, [$0ce7]
    pop hl
    db $fc
    jp hl


    rrca
    add b
    dec d
    add b
    db $fc
    jp hl


    add b

jr_04e_6be7:
    jr nc, @-$11

    inc c
    pop hl
    db $fc
    jp hl


    ld a, $ff
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    ret nz

    rrca
    adc l
    ldh a, [$78]
    add $f8
    nop
    ld [bc], a
    ret nz

    sub l
    and b
    and h
    add c
    rst $10
    cp a
    db $10
    cpl
    jr nz, jr_04e_6be7

    ret nz

    ccf
    ld e, h
    add $eb
    cp a
    ld [$04f4], sp
    ei
    inc bc
    db $fc
    ld c, h
    jp z, $8d1f

    nop
    ld [bc], a
    ret nz

    rra
    ldh [$74], a
    add d
    ld a, [bc]
    jp $c002


    ldh a, [$f9]
    rrca
    ld h, h
    add d
    nop
    db $e3
    add hl, hl
    jp Jump_000_33c1


    ld sp, $cbdf
    pop bc
    scf
    ld hl, $00cb
    db $e3
    db $10
    add a
    rst $38
    rlca
    sbc b
    ld [$07a7], sp
    ret c

    ld [$f0a7], sp
    ld a, [hl-]
    call nz, $8059
    db $fc
    db $e3
    inc c
    pop bc
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    push de
    rst $38
    ld [$0a15], a
    push af
    ld a, [$0205]
    db $fd
    cp $10
    adc l
    ld l, a
    ld h, b
    sbc a
    ret nc

    sbc a
    ldh a, [$9e]
    rst $38
    ldh a, [$9f]
    pop af
    sbc [hl]
    ldh a, [$97]
    pop af
    adc a
    db $fd
    rst $28
    nop
    add c
    cp $0e
    pop de
    push de
    jr nz, @-$4f

    rst $38
    db $e3
    rst $28
    ld sp, $38b5
    cp $b7
    jr nc, @+$01

    rst $08
    ld e, b
    ld c, e
    ld a, b
    add [hl]
    cp h
    add l
    db $fd
    rst $38
    ld c, d
    ld a, d
    ld c, [hl]
    ld a, e
    adc $fb
    db $fd
    ld bc, $faff
    ld [bc], a
    db $fc
    dec b
    db $e4
    rst $20
    jr @+$5d

    rst $30
    ld [$6cef], sp
    ld a, d
    add b
    or a
    add a
    ld l, b
    set 7, a
    ld d, b
    rst $10
    and e
    xor e
    ld h, l
    db $fc
    ld h, [hl]
    db $fc
    rst $28
    and l
    cp l
    db $e3
    cp e
    inc h
    ldh [$a0], a
    ccf
    ldh [rIE], a
    adc $ce
    pop de
    dec d
    ldh [$ee], a
    ld h, $ff
    rst $38
    ld h, $ff
    ld l, e
    ld h, e
    sub h
    or l
    sbc b
    ei
    ld a, a
    sbc c
    rst $38
    sub b
    rst $30
    sub b
    rst $38
    sbc c
    cp $e0
    rst $38
    ld a, [hl]
    ld a, [hl]
    add c
    cp l

jr_04e_6cd7:
    add c
    rst $38
    ld h, [hl]
    ld a, [hl]
    rst $38
    and l
    cp l
    and $be
    ld h, [hl]
    ccf
    and $3f
    cp $b8
    ld h, e
    and $e6
    add hl, de
    ld e, l
    ld l, b
    rst $28
    add hl, bc
    ei
    rst $28
    ld a, c
    xor b
    ld h, h
    sbc $de
    ld hl, $20fd
    rst $28
    cp [hl]
    ldh [$f5], a
    ld l, d
    ldh [$e2], a
    db $dd
    inc e
    and d
    rst $38
    ld a, [hl+]
    ld b, c
    ld e, a
    add $de
    ld h, d
    ld l, d
    ld [hl], c

jr_04e_6d0b:
    ld hl, sp+$40
    xor $ff
    rst $38
    db $fc
    ei
    add c
    cp a
    ld b, c
    ld e, l
    cp [hl]
    db $fd
    ld a, $cc
    add a
    jr nz, jr_04e_6d0b

    ld hl, $defd
    sbc $7e
    cp h
    add a
    adc $fa
    ld c, l
    ld l, c
    or [hl]
    jr nc, jr_04e_6cd7

    add a
    cp a
    inc c
    rst $28
    inc d
    ld d, [hl]
    db $eb
    db $e3
    sbc h
    add a
    ldh [$df], a
    xor a
    ret nc

    sub a
    ld l, a
    rrca
    ret nz

    jp hl


    ld sp, $73b5
    adc $ce
    ld a, h
    add a
    inc c
    ldh [$dd], a
    ld h, [hl]
    ld h, [hl]
    ld l, h
    add a
    cp a
    and $3e
    push hl
    dec [hl]
    jp c, Jump_04e_5c18

    add a
    add hl, bc
    rst $18
    rst $28
    add hl, de
    ld e, a
    and $e6
    ld c, h
    add a
    ld [$ef3f], a
    ld [$d53b], a
    dec d
    inc a
    add a
    ld b, c
    db $dd
    ld b, d
    rlca
    ld a, d
    cp l
    cp h
    ld h, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $fd
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    ld a, a
    add b
    cp $e0
    add e
    ld a, a
    add a
    rst $38
    ld a, [hl]
    adc a
    ld a, h
    adc a
    ld a, l
    adc [hl]
    ld a, a
    adc a
    db $fd
    ld a, a
    ld hl, sp-$1e
    ld a, l
    adc [hl]
    ld a, c
    add [hl]
    ld a, a
    add b
    db $fd
    rst $38
    rst $38
    pop hl
    inc bc
    rst $38
    ld bc, $c1ff
    rst $38
    rst $38
    pop hl
    ld a, a
    pop af
    or a
    ld a, c
    rst $30
    add hl, sp
    rst $30
    rst $18
    ld sp, hl
    rst $30
    ld sp, hl
    scf
    ld sp, hl
    ld hl, sp-$20
    add hl, sp
    rst $20
    pop bc
    add hl, de
    and $e0
    rst $18
    ldh [$c0], a
    ld [c], a
    jp z, $f8e4

    jp hl


    ld a, b
    add a
    xor $c0
    add sp, -$1f
    rst $38
    pop af
    jp z, $e7e1

    ld sp, hl
    rst $28
    rst $30
    pop af
    ccf
    pop af
    cp d
    pop hl
    rst $20
    ld sp, hl
    rrca
    pop af
    ld a, [$e8c0]
    add a
    adc d
    ldh [$9f], a
    ld a, c
    sbc [hl]
    ld a, e
    sbc h
    db $76
    cp $e1
    ld a, a
    sbc h
    ld a, d
    ldh [$87], a
    ld a, h
    add e
    add b
    rst $28
    ei
    rst $00
    add hl, sp
    ld [hl], h
    ldh [$31], a
    rst $30
    ld a, c
    rst $20
    ld sp, hl
    rrca
    rst $08
    pop af
    rra
    pop hl
    add b
    rst $28
    cp $e5
    add b
    xor $40
    rst $20
    ld hl, sp-$02
    pop hl
    ret nz

    or $40
    or $f1
    rst $30
    ld sp, hl
    rlca
    ld sp, hl
    ld b, $38
    pop hl
    rst $28
    pop af
    ld c, b
    ldh [$f0], a
    push hl
    ret nz

    or $c0
    adc $c0
    db $ed
    ldh [$fe], a
    db $e3
    nop
    rst $38
    nop
    rst $28
    db $76
    ldh [$78], a
    ret nz

    ld sp, hl
    or a
    ld sp, hl
    adc e
    daa
    reti


    ld b, b
    add sp, -$74
    ld a, [bc]
    push hl
    ld a, [$40c7]
    jp z, $0031

    ld b, $e2
    ld b, h
    add $40
    rst $00
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    ld a, a
    add b
    cp $e0
    add a
    ld a, a
    add a
    rst $08
    ld a, l
    add e
    ld a, a
    add c
    cp $e6
    ldh a, [$e0]
    ld a, h
    add e
    rst $30
    ld a, a
    add b
    rst $38
    rst $38
    pop hl
    inc bc
    rst $38
    ld bc, $7fff
    pop hl
    rst $28
    pop af
    adc a
    pop af
    cp a
    pop bc
    cp $e5
    add [hl]
    ldh a, [$e1]
    rrca
    pop af
    and $e0
    rst $18
    ldh [$c0], a
    ld [c], a
    db $fc
    jp hl


    sbc b
    rst $28
    ld a, a
    sbc h
    ld a, a
    adc a
    ret nz

    db $ec
    ld h, c
    rst $28
    ld [hl], c
    cp $fe
    add sp, -$0f
    rst $08
    pop af
    sbc a
    pop hl
    ccf
    pop bc
    ld a, $c0
    add sp, -$74
    ld a, l
    adc [hl]
    ld a, l
    adc a
    jp z, $fce0

    ldh [$b3], a
    ld a, l
    adc a
    db $f4
    ldh [$fe], a
    ldh [$79], a
    add [hl]
    add b
    add sp, $71
    rrca
    rst $30
    ld sp, hl
    rst $20
    ld sp, hl
    jp z, $84e1

    ldh [$82], a
    ldh [$f0], a
    ldh [$c7], a
    add hl, sp
    rst $20
    add hl, de
    ret nz

    db $ec
    cp $e8
    or [hl]
    pop hl
    ld a, b
    add a
    ld d, b
    ld b, b
    add sp, -$02
    db $ed
    ld b, b
    db $ed
    add b
    ldh [$7e], a
    add d
    db $e4
    ld a, h
    add b
    pop af
    rst $38
    ld sp, $39f7
    rst $30
    ld a, c
    rst $30
    ld sp, hl
    rst $30
    rra
    ld sp, hl
    or a
    ld sp, hl
    scf
    ld sp, hl
    db $f4
    ldh [$fe], a
    ldh [$80], a
    db $eb
    cp c
    ld a, a
    adc h
    ld [c], a
    ret nz

    ld a, [$f739]
    cp c
    cp [hl]
    pop hl
    rst $30
    rst $18
    ld sp, hl
    ld [hl], a
    ld sp, hl
    or a
    ld a, c
    ld b, b
    db $ec
    add a
    ld a, a
    ld a, a
    adc a
    ld a, h
    sbc a
    ld a, c
    sbc [hl]
    ld a, e
    sbc h
    cp $e1
    ld c, h
    ret nz

    ret nc

    adc [hl]
    ret nz

    ld a, a
    pop af
    jp z, $84e1

    ld [c], a
    ld a, c
    db $f4
    pop bc
    add e
    rra
    pop hl
    add b
    ret z

    call nz, Call_04e_48c0
    pop hl
    ld hl, sp-$1b
    ret nz

    adc $e1
    inc bc
    rst $38
    pop af
    ld c, b
    ld [c], a
    cp d
    ret nz

    ld c, b
    ret nz

    ldh a, [$c5]
    ld b, b
    ret nz

    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    ld a, a
    add b
    cp $e0
    add a
    ld a, a
    adc a
    rst $38
    ld a, h
    sbc a
    ld a, c
    sbc [hl]
    ld a, e
    sbc h
    ld a, e
    sbc l
    rst $38
    ld a, e
    sbc l
    ld a, a
    sbc h
    ld a, a
    adc a
    ld a, a
    add a
    rst $18
    ld a, h
    add e
    ld a, a
    add b
    rst $38
    rst $38
    pop hl
    inc bc
    rst $38
    rst $38
    ld bc, $c1ff
    rst $38
    pop hl
    ld a, a
    pop af
    or a
    rst $38
    ld a, c
    rst $30
    add hl, sp
    rst $30
    cp c
    rst $30
    ld sp, hl
    rst $30
    ld a, a
    ld sp, hl
    ei
    db $fd
    cp e
    db $fd
    inc hl
    db $dd
    and $e0
    ld [hl], h
    rst $18
    ldh [$c0], a
    ld [c], a
    adc a
    ret nz

    ldh [$8f], a
    ld a, l
    adc [hl]
    ld hl, sp-$1f
    reti


    ld a, l
    ld hl, sp-$20
    cp $e1
    ld a, c
    add [hl]
    ret nz

    add sp, -$1f
    rst $38
    rst $30
    pop af
    scf
    ld sp, hl
    jp nz, $f9e0

    rst $20
    ld sp, hl
    rst $08
    ld a, l
    pop af
    ld a, [c]
    ldh [$71], a
    rst $30
    add hl, sp
    rst $20
    add hl, de
    ret nz

    add sp, $76
    add b
    ld [c], a
    ld a, l
    sbc [hl]
    adc b
    db $e4
    sbc h
    ld a, a
    sbc a
    ld [hl], b
    ldh [$bc], a
    add b
    jp hl


    ret nz

    ldh [rPCM34], a
    ld sp, hl
    add a
    ld a, c
    ld a, b
    db $e3
    rst $30
    db $ed
    ld a, c
    cp d
    pop hl
    rra
    pop hl
    add b
    add sp, -$61
    ld a, a
    sbc a
    ld l, a
    ld [hl], c
    adc a
    ld a, a
    add c
    cp $e9
    ld a, [hl]
    add c
    ld b, b
    add sp, -$22
    ld c, [hl]
    ldh [$83], a
    db $fd
    cp a
    pop bc
    cp $e9
    ccf
    pop bc
    adc [hl]
    ld b, b
    add sp, -$80
    ld a, a
    sbc b
    inc b
    ldh [$fe], a
    db $e4
    nop
    ldh a, [rSB]
    jp Jump_000_31ff


    inc b
    ldh [$fe], a
    push hl
    add b
    rst $28
    ret nz

    add sp, $7d
    sbc [hl]
    adc l
    ld a, [hl]
    jp nz, Jump_04e_7fc0

    add e
    add b
    ld [$e9c0], a
    ld b, d
    ld [c], a
    sbc a
    push de
    pop hl
    add b
    ld [$cc8c], a
    jp $b87d


    ret nz

    ld a, a
    adc a
    ld hl, $be7e
    jp nz, $cac0

    add d
    push hl
    add d
    jp nz, Jump_04e_78f7

    pop bc
    ret nz

    rr h
    ret nz

    ldh [$8a], a
    db $e3
    ld a, a
    add a
    ld a, [hl]
    db $76
    jp nz, $f0c0

    jp z, Jump_000_00c2

    add h
    jp $e7c0


    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    ld a, a
    add b
    cp $e0
    adc h
    ld a, l
    adc [hl]
    rst $38
    ld a, [hl]
    adc a
    ld a, a
    add a
    ld a, a
    add e
    ld a, a
    add c
    db $f4
    cp $e6
    add sp, -$20
    rst $38
    rst $38
    pop hl
    inc bc
    rst $38
    ld bc, $ffff
    ld sp, $39f7
    rst $30
    ld a, c
    rst $20
    ld sp, hl
    rst $08
    rst $18
    pop af
    sbc a
    pop hl
    cp a
    pop bc
    cp $e3
    ccf
    pop bc
    ld hl, sp-$1a
    ldh [$df], a
    ldh [$c0], a
    ld [c], a
    adc a
    ld a, a
    adc a
    ld a, b
    add a
    adc d
    or [hl]
    ldh [$81], a
    cp [hl]
    ldh [$87], a
    or [hl]
    ldh [$f0], a
    db $e4
    ret nz

    and $f1
    rst $28
    rst $30
    ld sp, hl
    ld [hl], a
    ld sp, hl
    ret nz

    db $e3
    ccf
    pop bc
    ld a, a
    dec l
    add c
    ldh a, [$e1]
    rlca
    ld sp, hl
    ret nz

    pop hl
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    and $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_04e_78f7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_04e_7f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_04e_7f8e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_04e_7fc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
