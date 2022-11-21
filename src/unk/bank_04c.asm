INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

    cpl
    ld d, a
    ld l, [hl]
    ld h, d
    rst $08
    ld h, d
    scf
    ld h, h
    ld [hl-], a
    ld h, l

    db $0d, $63, $d1, $63, $b2, $65, $3d, $66, $7c, $66, $a1, $66

    add $66
    ld a, [de]
    ld h, a

    db $45, $67, $7e, $67

    sbc h
    ld h, a
    ld [hl-], a
    ld l, b
    db $d2
    ld l, b

    db $6f, $69, $06, $6a

    and b
    ld l, d
    inc a
    ld l, e
    db $d2
    ld l, e

    db $6e, $6c, $0c, $6d, $a9, $6d

    dec hl
    ld l, [hl]
    ret


    ld [hl], b
    add hl, bc
    ld [hl], c

    db $1a, $71, $5f, $72, $9a, $73, $bc, $73, $de, $73, $70, $77, $c2, $77, $9b, $78
    db $d3, $78, $20, $79, $4b, $79

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
    rst $38
    ccf
    cp $3e
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    rst $38
    rst $38
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

Jump_04c_407d:
    nop
    nop
    nop
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$7f]
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    cp $0e
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    rlca
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    rst $38
    rlca
    rst $38
    rst $38
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
    ld bc, $ff01
    add b
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
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $feff
    add e
    add e
    ld bc, $0101
    ld bc, $0101
    ld bc, $8301
    add e
    rst $38
    cp $f0
    ld [hl], b
    ldh a, [rSVBK]
    ld hl, sp+$78
    cp $3e
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $7f01
    ld [hl], b
    ld a, a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$fc]
    inc c
    cp $0e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    nop
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    ld a, a
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ld [hl], b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    cp $06
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    add b
    rst $38
    add b
    rst $38
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    db $fc
    inc a
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, b
    ccf
    jr c, jr_04c_4214

    jr c, jr_04c_4216

    jr c, jr_04c_4218

    jr c, jr_04c_421a

    jr c, jr_04c_421c

    jr c, jr_04c_421e

jr_04c_41df:
    jr c, jr_04c_41df

    ld b, $fe
    ld b, $fe
    ld b, $fe
    ld b, $fe
    ld b, $ff
    rlca
    rst $38
    inc bc
    rst $38
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
    nop
    nop
    add b
    add b
    rst $38
    rst $38
    ccf
    jr nc, @+$41

    jr nc, jr_04c_4244

    jr nc, jr_04c_4246

    jr nc, jr_04c_4248

    jr nc, @+$81

    ld [hl], b
    rst $38
    ldh [rIE], a
    ldh [$fc], a
    inc c
    cp $0e

jr_04c_4214:
    rst $38
    rlca

jr_04c_4216:
    rst $38
    rlca

jr_04c_4218:
    rst $38
    rlca

jr_04c_421a:
    cp $0e

jr_04c_421c:
    db $fc
    inc c

jr_04c_421e:
    db $fc
    inc c
    ld bc, $0301
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $80ff
    rst $38
    add b
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
    add b
    rst $38
    ld bc, $03ff

jr_04c_4244:
    cp $02

jr_04c_4246:
    cp $02

jr_04c_4248:
    cp $02
    cp $02
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    db $fc
    rlca
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    ld b, $ff
    db $fc
    db $fc
    inc e
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    cp $1e
    db $fc
    inc e
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    nop
    nop
    ld a, a
    ld a, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp+$3f
    jr c, @+$21

    inc e
    db $fc
    inc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    cp $1e
    db $fc
    inc e
    ld a, a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp+$3f
    jr c, jr_04c_42ce

    inc e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    cp $06
    cp $06
    cp $06
    cp $06
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_04c_42ce:
    nop
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ld h, b
    ccf
    jr nc, jr_04c_431a

    jr nc, jr_04c_431c

jr_04c_42dd:
    jr nc, jr_04c_431e

Jump_04c_42df:
    jr nc, jr_04c_42dd

    inc c
    db $fc
    inc c
    db $fc
    inc c
    cp $0e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    cp $0e
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38

Call_04c_42fc:
    rst $38
    rst $38
    inc bc
    inc bc

Jump_04c_4300:
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $03ff
    cp $02
    cp $02
    cp $02

jr_04c_431a:
    cp $02

jr_04c_431c:
    rst $38
    inc bc

jr_04c_431e:
    rst $38
    ld bc, $1cfc
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    cp $0e
    rst $38
    rrca
    nop
    nop
    nop
    nop
    nop
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
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    ccf
    inc a
    rst $38
    ld hl, sp-$04
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    cp $1e
    rst $38
    rra
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    ccf
    inc a
    rst $38
    db $fc
    cp $06
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    ccf
    jr nc, jr_04c_4412

    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$7f]
    ld [hl], b
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    cp $0e
    rst $38
    rlca
    rst $38
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    rst $38
    rst $38
    rst $38
    cp $ff
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
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    cp $0e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$3f
    inc a
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    cp $1e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    cp $06

jr_04c_4412:
    cp $06
    cp $06
    cp $06
    cp $06
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $0000
    nop
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
    rst $38
    rst $38
    rst $38
    ccf
    jr nc, jr_04c_4472

    jr nc, jr_04c_4474

    jr nc, jr_04c_4476

    jr nc, jr_04c_4478

    jr nc, jr_04c_44ba

    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld a, h
    rst $00
    add $83
    add d
    add e
    add d
    add e
    add d
    rst $08
    adc $ff
    ld a, h
    rst $00
    add $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    cp $1e
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    inc e

jr_04c_4472:
    rra
    inc e

jr_04c_4474:
    rra
    inc e

jr_04c_4476:
    rra
    inc e

jr_04c_4478:
    ccf
    inc a
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    cp $1e
    rst $38
    rra
    rst $38
    rrca
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    ccf
    inc a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    inc a
    rst $20
    ld h, [hl]
    jp $c742


    ld b, [hl]
    rst $38
    inc a

jr_04c_44ba:
    rst $20
    ld h, [hl]
    jp $c742


    ld b, [hl]
    add e
    add d
    add e
    add d
    add e
    add d
    rst $08
    adc $ff
    ld a, h
    rst $00
    add $83
    add d
    add e
    add d
    rst $38
    rra
    cp $1e
    db $fc
    inc e
    db $fc
    inc e
    cp $1e
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    ccf
    inc a
    rra
    inc e
    rra
    inc e
    ccf
    inc a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01

Call_04c_44ff:
    ldh [rIE], a
    inc a
    rst $20
    inc h
    rst $38
    inc a
    rst $20
    inc h
    rst $38
    inc a
    rst $20
    inc h
    rst $38
    inc a
    rst $38
    jr @+$01

    inc a
    rst $20
    ld h, [hl]
    jp $c742


    ld b, [hl]
    rst $38
    inc a
    rst $20
    ld h, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    add e
    add d
    rst $08
    adc $ff
    ld a, h
    rst $00
    add $83
    add d
    add e
    add d
    rst $00
    add $ff
    ld a, h
    ld c, e
    ld b, [hl]
    ld c, h
    nop
    ccf
    nop
    nop
    ld b, a
    nop
    nop
    ld c, l
    nop
    ld a, [bc]
    dec bc
    nop
    dec d
    dec bc
    nop
    rra
    jr nz, jr_04c_4545

jr_04c_4545:
    inc l
    jr nz, jr_04c_4548

jr_04c_4548:
    rlca
    ld [$1209], sp
    inc de
    inc d
    inc e
    dec e
    ld e, $29
    ld a, [hl+]
    dec hl
    dec [hl]
    ld [hl], $37
    inc b
    dec b
    ld b, $0f
    db $10
    ld de, $1a19
    dec de
    ld h, $27
    jr z, jr_04c_4596

    inc sp
    inc [hl]
    inc a
    dec a
    ld a, $01
    ld [bc], a
    inc bc
    inc c
    dec c
    ld c, $16
    rla
    jr jr_04c_4597

    ld [hl+], a
    dec h
    jr nc, jr_04c_45a5

    ld sp, $393b
    ld a, [hl-]
    ld b, e
    ld b, h
    ld b, l
    ld bc, $0302
    inc c
    dec c
    ld c, $16
    rla
    jr @+$23

    ld [hl+], a
    inc hl
    dec l
    ld l, $2f
    jr c, jr_04c_45c8

    ld a, [hl-]
    ld b, b
    ld b, c
    ld b, d
    ld c, b
    ld c, c
    ld c, d

jr_04c_4596:
    nop

jr_04c_4597:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04c_45a5:
    nop
    ld h, e
    ld a, h
    ld sp, $f83e
    rst $38
    call c, $f43f
    rrca
    ld [hl], $cf
    ld [bc], a
    rst $38
    adc a
    rst $38
    ld h, e
    rst $38
    or a
    ld a, [hl]
    dec e
    cp $09
    cp $08
    rst $38
    ld a, h
    rst $38
    add $ff
    or e
    rst $08
    pop af
    rrca

jr_04c_45c8:
    jp $873f


    ld a, a
    inc c
    rst $38

jr_04c_45ce:
    jr @+$01

    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    add b
    nop
    nop
    ret nz

    ret nz

jr_04c_45dc:
    jr nc, jr_04c_45ce

    inc c
    db $fc
    inc b
    db $fc
    jr jr_04c_45dc

    ldh [$e0], a
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    jr c, jr_04c_462f

    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rst $38
    rrca
    rst $38
    ld e, $fe
    inc a
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$80], a
    add b
    rst $08
    rst $08
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    add a
    rst $38
    rst $08
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b

jr_04c_462f:
    rst $38
    ld a, b
    rst $38
    ld a, $ff
    ccf
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
    rst $38
    rst $38
    cp $ff
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], e
    di
    ld [hl], b
    ldh a, [$30]
    ldh a, [$38]
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$80], a
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
    ld bc, $0101
    ld bc, $0302
    dec b
    ld b, $06
    dec b
    ld a, c
    ld a, a
    ld h, c
    ld a, a
    add c
    rst $38
    ld h, e
    sbc a
    jp nz, $863f

    ld a, a
    ld e, $ff
    ld a, [hl-]
    rst $38
    ld [hl], d
    adc a
    ld h, d
    sbc a
    db $e3
    rra
    jp $c63f


    ccf
    add $3f
    adc h
    ld a, a
    adc a
    ld a, a
    rra
    rst $38
    ld a, [hl]
    cp $c3
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    adc [hl]
    rst $38
    add b
    add b
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp+$0e
    rrca
    rrca
    ld c, $0f
    ld c, $1f
    ld e, $1d
    ld e, $1d
    ld e, $1f
    inc e
    rra
    inc e
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
    add b
    ld a, a
    add b
    ld a, a
    rra
    rst $38
    rra
    rst $38
    ld a, $ff
    jr c, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $30
    ld [hl], e
    di
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

jr_04c_4730:
    nop
    rst $38

jr_04c_4732:
    add b
    rst $38
    ret nz

    rst $38
    jr c, jr_04c_4730

    jr c, jr_04c_4732

    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    ld [$090f], sp
    rrca
    dec bc
    rrca
    rlca
    rlca
    ld [bc], a
    inc bc
    dec b
    ld b, $05
    ld b, $0b
    inc c
    ld [c], a
    rst $38
    jp nz, $82ff

    rst $38
    ld [bc], a
    rst $38
    add a
    ld a, a
    adc l
    ld a, a
    add hl, de
    rst $38
    jr @+$01

    rrca
    rst $38
    inc e
    rst $38
    jr @+$01

    add hl, sp
    cp $38
    rst $38

jr_04c_4770:
    jr z, @+$01

    ld l, h
    rst $38
    call c, $83ff
    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    and b
    ld a, a
    ret nc

    ccf
    ld [hl], b
    sbc a

jr_04c_4782:
    ld l, b
    sbc a
    inc l
    rst $18
    inc c
    db $fc
    call nz, $e4fc
    db $fc
    ld a, h
    db $fc
    jr nz, jr_04c_4770

    jr nc, jr_04c_4782

    db $10
    ldh a, [rNR10]
    ldh a, [$1f]
    inc e
    rra
    inc e
    ld e, $1d
    ld e, $1d
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
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
    ld e, $fe
    inc e
    db $fc
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    cp [hl]
    cp a
    ccf
    ccf
    rra

Jump_04c_47c3:
    rra
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    di
    ld [hl], c
    pop af
    ld [hl], c
    pop af
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    ld a, a
    inc a
    ccf
    inc e
    rra
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc

jr_04c_47fe:
    inc e

Jump_04c_47ff:
    db $fc
    inc e
    db $fc
    inc a
    db $fc
    jr c, jr_04c_47fe

    ld c, $09
    ld c, $09
    inc d
    dec de
    ld de, $131f
    rra
    ld c, $0f
    inc bc
    ld [bc], a
    dec b
    ld b, $36
    ld sp, hl
    db $76
    ld sp, hl
    sub $f9
    sbc [hl]
    pop af
    inc e
    di
    sbc h
    ld [hl], e
    sbc h
    ld [hl], e
    sub h
    ld a, e
    ld e, $ff
    rla
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    ld [hl], e
    rst $38
    ld b, [hl]
    rst $38
    call z, $f9ff
    rst $38
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    add d
    cp $c2
    cp $c2
    cp $61
    rst $38
    pop af
    rst $38
    ld [$08f8], sp
    ld hl, sp-$7c
    db $fc
    call nz, Call_04c_64fc
    ld a, h
    inc [hl]
    inc a
    jr @+$1a

    nop
    nop
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
    nop
    nop
    nop
    nop
    inc a
    db $fc
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3f
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
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
    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rNR34]
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    ld a, [bc]
    dec c
    ld c, $09
    inc d
    dec de
    db $10
    rra
    ld de, $131f
    rra
    inc c
    inc c
    inc d
    ei
    ld de, $19ff
    rst $38
    dec sp
    rst $38
    ld a, [hl]
    rst $38
    ret c

    rst $18
    inc d
    dec de
    inc a
    inc sp
    set 7, a
    adc c
    rst $38
    db $fc
    rst $38
    ld h, [hl]
    rst $38
    ld b, e
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld h, e
    rst $38
    cp c
    rst $38
    add hl, de
    rst $38
    dec a
    rst $38
    ld l, a
    rst $38
    adc $fe
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [hl], b
    ld a, a
    ld a, b
    ld a, a
    ld a, $3f
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    ld a, $3f
    ld a, b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [hl], b
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    inc l
    inc sp
    jr c, jr_04c_4961

    add hl, sp
    daa
    ld sp, $332f
    cpl
    ld [hl+], a
    ld a, $36
    ld a, $1c
    inc e
    rst $38
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld b, c
    ld a, a
    ld h, e
    ld a, a
    ld a, $3e
    ld h, e
    ld a, a
    add d
    cp $82
    cp $c2
    cp $62
    ld a, [hl]
    ld [hl+], a
    ld a, $32

jr_04c_4961:
    ld a, $12
    ld e, $1c
    inc e
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, b
    ld a, a
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [rSTAT]
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld h, e
    ld a, a
    ld a, $3e
    ld h, e
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld a, $3f
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    ld a, $3f
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rP1]
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld de, $181e
    rra
    ld b, $07
    ld bc, $4101
    ld a, a
    ld h, e
    ld a, a
    ld a, $3e
    ld h, e
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld h, a
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, b
    ld a, a
    ld a, $3f
    ccf
    ccf
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [rDIV], a
    rlca
    inc b
    rlca
    ld b, $07
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld b, $ff
    inc c
    rst $38
    jr @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    db $ec
    di
    call c, $b8e3
    rst $00
    jr @+$01

    jr @+$01

    db $10
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr c, @+$01

    ld l, h
    rst $38
    ld h, a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    jr @+$01

    jr c, @+$01

    ld a, b
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    jr c, @+$01

    call c, $ee3f
    rra
    db $76
    adc a
    dec sp
    rst $00
    ldh [rIE], a
    ld [hl], b
    rst $38
    jr c, @+$01

    inc e
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, $fe
    inc bc
    rst $38
    ld h, b
    ldh [$30], a
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld b, $07
    dec c
    ld c, $0d
    ld c, $1f
    inc e
    dec de
    inc e
    dec sp
    inc a
    ld [hl-], a
    dec a
    ld [hl], b
    adc a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add c
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    ld l, h
    di
    ld l, h
    di
    ld l, h
    di
    db $ec
    di
    db $e4
    ei
    db $e4
    ei
    ldh a, [rIE]
    ldh a, [rIE]
    rra
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rrca
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld [hl], b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    cp h
    rst $38
    sbc [hl]
    rst $38
    rra
    rst $38
    inc e
    db $fc
    inc c
    db $fc
    ld c, $fe
    ld b, $fe
    ld b, $fe
    ld b, $fe
    ld b, $fe
    ld b, $fe
    ld bc, $0101
    ld bc, $0303
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld b, $04
    rlca
    inc b
    rlca
    or b
    rst $08
    ld h, b
    sbc a
    ret nz

    ccf
    pop bc
    ccf
    add e
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    add hl, de
    rst $38
    jp $e0ff


    rst $18
    or b
    rst $08
    or b
    rst $08
    or b
    rst $08
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    inc e
    rst $38
    inc e
    rst $38
    ld a, $ff
    scf
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    db $e3
    rst $38
    di
    rst $38
    add hl, de
    rst $20
    dec c
    di
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
    ret nz

    rst $38
    add e
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ld [hl], e
    rst $38
    ld a, [hl]
    cp $30
    ldh a, [$30]
    ldh a, [rSVBK]
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld [hl], e
    ld a, a
    ccf
    ccf
    ld e, $1e
    rrca
    rst $38
    ld e, $fe
    inc a
    db $fc
    ld a, b
    ld hl, sp-$20
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    ld [hl], b
    ld a, a
    ld a, c
    ld a, a
    ld a, a
    ld a, a
    ld l, a
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ret c

    rst $38
    sbc b
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld c, $ff
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, $fe
    ld b, $fe
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add [hl]
    cp $ce
    cp $fe
    cp $fc
    db $fc
    jr c, jr_04c_4c08

    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $ff31
    ld [hl], c
    rst $38
    pop hl
    rst $38
    reti


    rst $20
    ld hl, sp-$39
    or b
    rst $08
    and b
    rst $18
    ld h, c
    sbc a
    ld [hl], b
    adc a
    ld h, c
    sbc a
    ld h, c
    sbc a
    and c
    rst $18
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    rst $30
    rst $38

jr_04c_4c08:
    rst $38
    rst $38
    sbc [hl]
    rst $38
    db $ec
    rst $38
    db $ed
    rst $38
    dec e
    rst $38
    dec a
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    jr nc, @+$01

    ld hl, sp-$01
    db $fc
    rst $38
    xor $ff
    rst $08
    rst $38
    rst $08
    rst $38
    db $10
    ldh a, [rNR23]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    ret z

    rst $30
    ret c

    rst $20
    ret c

    rst $20
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ldh a, [$cf]
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    inc e
    rst $38
    jr @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    call c, $cedf
    rst $08
    rst $08
    rst $08
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
    rst $38
    ld bc, $0301
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $c101
    ccf
    add e
    ld a, a
    add e
    ld a, a
    rlca
    rst $38
    dec c
    db $fd
    add hl, de
    ld sp, hl
    ld sp, $e1f1
    pop hl
    rst $00
    rst $38
    rst $08
    rst $38
    ld a, l
    rst $38
    ld sp, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ret nz

    cp a
    db $fc
    rst $38
    adc [hl]
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $83ff
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    dec sp
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add h
    db $fc
    call z, $f8fc
    ld hl, sp-$50
    or b
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ldh a, [$cf]
    ldh [$df], a
    ret nz

    rst $38
    pop hl
    rst $38
    ld [hl], e
    ld a, a
    ccf
    ccf
    ld e, $1e
    nop
    nop
    ld a, b
    rst $38
    db $ec
    rst $28
    adc $cf
    rst $08
    rst $08
    add a
    add a
    rlca
    rlca
    ld c, $0f
    inc c
    rrca
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld bc, $c7ff
    rst $00
    jp $c3c3


    jp $8181


    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    ret nz

    cp a
    pop hl
    sbc a
    and c
    rst $18
    and c
    rst $18
    di
    rst $08
    ld d, e
    ld l, a
    ld d, e
    ld l, a
    ld h, [hl]
    ld a, [hl]
    rst $38
    rst $38
    add e
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    ld a, a
    jr nc, jr_04c_4d9d

    jr nc, jr_04c_4d9f

    jr jr_04c_4d81

    inc c
    rrca
    rlca
    rlca
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    jr jr_04c_4d97

    jr jr_04c_4d99

    jr jr_04c_4d9b

    jr jr_04c_4d9d

    jr jr_04c_4d9f

    inc e

jr_04c_4d81:
    rra
    ld c, $0f
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
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rst $38
    rst $38
    ret nz

jr_04c_4d97:
    ret nz

    ret nz

jr_04c_4d99:
    ret nz

    ret nz

jr_04c_4d9b:
    ret nz

    ret nz

jr_04c_4d9d:
    ret nz

    ret nz

jr_04c_4d9f:
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    inc h
    inc a
    dec a
    dec a
    add hl, de
    add hl, de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $fefe
    add e
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    ld c, $0f
    inc c
    rrca
    jr @+$21

    jr jr_04c_4df1

    jr @+$21

    jr @+$21

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

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_04c_4df1:
    ld bc, $0101
    ld bc, $1801
    rra
    inc e
    rra
    ld c, $0f
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    ld c, $0f
    inc c
    rrca
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

    ret nz

    ret nz

    ret nz

    ret nz

    rlca
    rlca
    dec b
    ld b, $03
    inc bc
    inc c
    rrca
    dec bc
    inc c
    rlca
    rlca
    inc bc
    ld [bc], a
    ld b, $05

jr_04c_4e36:
    jr nc, jr_04c_4e68

    db $fd
    db $ed
    rst $20
    ld a, $be
    db $dd
    ld l, c
    rst $38
    sub $ef
    ld d, l
    rst $28
    ld h, h
    rst $18
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ldh a, [$f0]
    db $10
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    jr nz, jr_04c_4e36

    nop
    nop
    inc a
    inc a
    ld e, e
    ld h, a
    ld h, $39
    ld de, $081e
    rrca
    inc b
    rlca

jr_04c_4e64:
    rrca
    rrca
    jr nc, @+$32

jr_04c_4e68:
    ld l, b
    ld e, b
    ld l, h
    ld e, h
    db $e4
    call c, $ff47
    daa
    cp $2f
    db $fc
    ld e, $f9
    nop
    nop
    nop
    nop
    inc e
    inc e
    db $e4
    db $fc
    ld l, b
    sbc b
    sub b
    ld [hl], b
    jr nz, jr_04c_4e64

    ld [hl], b
    ldh a, [$03]
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
    ld bc, $0001
    nop
    inc a
    jp $8f70


    ld hl, $03df
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, $ff
    cp $ff
    cp $ff
    call $8dfe
    cp $0d
    cp $0d
    cp $0d
    cp $c0
    ccf
    ret nz

    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    jp $c33f


    ccf
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    adc $ff
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    jr c, @+$01

    inc e
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld c, $fe
    ld b, $fe
    ld b, $fe
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $81ff
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, b
    ld a, a
    dec a
    ccf
    rra
    rra
    rrca
    rrca
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

    add b
    add b
    nop
    nop
    dec b
    rlca
    ld [bc], a
    inc bc

jr_04c_4f1a:
    ld b, $05
    dec c
    dec bc
    ld a, [bc]
    rrca
    ld b, $05
    inc c
    dec bc
    add hl, bc
    rrca
    xor $df
    ld c, c
    rst $38
    xor d
    db $fd
    push af
    cp [hl]
    sub $bf
    db $db
    cp a
    sub c
    rst $38
    xor b
    rst $38
    ret nz

    ret nz

    jr nz, jr_04c_4f1a

    sub b
    ldh a, [$d0]
    ldh a, [$60]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    add hl, de
    rla
    jr nc, jr_04c_4f79

    ld b, e
    ld a, a
    ld c, h
    ld a, a
    inc [hl]
    dec sp
    jr z, jr_04c_4f89

    ld sp, $672f
    ld e, a
    sbc b
    rst $38
    cp c
    rst $38
    adc $ff
    and a
    rst $18
    call nz, $c4bf
    cp a
    add $bf
    rst $08
    cp a
    adc h
    db $fc
    ld b, $fe
    inc bc
    rst $38
    pop af
    rst $38
    ld e, $fe
    inc c
    db $fc
    ld b, $fe
    jp nz, Jump_000_0efe

    rrca
    dec e

jr_04c_4f79:
    ld e, $1f
    inc e
    dec sp
    inc a
    ld [hl], $39
    ld a, h
    ld [hl], e
    ld l, h
    ld [hl], e
    ld hl, sp-$19
    dec c
    cp $0d

jr_04c_4f89:
    cp $0d
    cp $0d
    cp $0d
    cp $1d
    cp $1c
    rst $38
    inc a
    rst $38
    jp $873f


    ld a, a
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    adc [hl]
    ld a, a
    adc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    db $ec
    rst $38
    db $ec
    rst $38
    ld c, c
    rst $38
    add hl, de
    rst $38
    jr c, @+$01

    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, h
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $81ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    nop
    nop
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

    ret nz

    ret nz

    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, a
    ld h, $3f
    dec a
    dec a
    inc h
    inc a
    inc a

Jump_04c_4fff:
    inc a
    inc h
    inc a
    inc a
    inc a
    inc h
    inc a
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
    ld l, h
    ld e, a
    ld e, b
    ld a, a
    ld [hl], b
    ld a, a
    add hl, hl
    scf
    ld sp, $632f
    ld e, a
    ld h, [hl]
    ld e, a
    adc a
    cp $ce
    cp a
    sbc c
    rst $38
    sbc d
    db $fd
    cp c
    cp $f9
    cp $3c
    rst $38
    sub h
    ld a, a
    ld d, $ff
    ld sp, $19ff
    rst $38
    adc a
    rst $38
    call nz, Call_04c_42fc
    cp $22
    cp $31
    rst $38
    add hl, de
    rst $38
    ret nc

    rst $28
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    jp $e7ff


    rst $38
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    ld a, $ff
    ld a, [hl]
    rst $38
    rst $20
    rst $20
    jp $87c3


    add a
    ld b, $07
    ld b, $07
    rrca
    ld c, $3f
    rst $38
    ld a, [hl]
    rst $38
    or $ff
    and $ff
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    add hl, sp
    rst $38

jr_04c_509c:
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    jr jr_04c_509c

    inc e
    db $fc
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
    cp e
    cp $f3
    cp $2b
    ld [hl], $32
    cpl
    ld h, d
    ld e, a
    ld h, [hl]
    ld e, a
    ld c, e
    ld a, e
    inc sp
    inc sp
    scf
    rst $38
    add hl, hl
    rst $38
    ccf
    rst $38
    ld l, h
    rst $38
    ld a, b
    rst $38
    rst $20
    rst $38
    call nz, Call_04c_44ff
    rst $38
    dec d
    rst $30
    inc de
    di
    adc b
    ld hl, sp-$78
    ld hl, sp-$38
    ld hl, sp+$68
    ld hl, sp+$78
    ld hl, sp+$30
    ldh a, [$0d]
    ld c, $0f
    inc c
    rrca
    inc c
    dec de
    inc e
    rra
    jr jr_04c_510f

    add hl, de
    ld e, $19
    inc e
    dec de
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    ld c, $ff
    ld c, $ff
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop

jr_04c_510f:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    call c, $dcdf
    rst $18
    adc $cf
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    ld b, $07

jr_04c_5138:
    inc b
    rlca

jr_04c_513a:
    ld b, $05

jr_04c_513c:
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld a, $ff
    ld h, [hl]
    rst $38
    ld b, e
    rst $38
    add $fe
    cp h
    cp h
    ld h, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, [hl]
    ld a, [hl]
    jr nz, jr_04c_5138

    jr nz, jr_04c_513a

    jr nz, jr_04c_513c

    and b
    ldh [$60], a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec de
    jr jr_04c_5189

    jr jr_04c_518b

    jr jr_04c_518d

    inc e
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ccf
    rst $38
    dec sp
    ei
    ld [hl], c
    pop af
    ld h, e
    db $e3
    rst $20
    rst $20
    add $c7
    add [hl]
    add a
    ld b, $07
    ld bc, $ffff

jr_04c_5189:
    rst $38
    rst $38

jr_04c_518b:
    rst $38
    rst $38

jr_04c_518d:
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add $c7
    add a
    add a
    add e
    add e
    add e
    add e
    pop bc
    pop bc
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    sbc h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, [hl]
    ld a, [hl]
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, [hl]
    ld a, [hl]
    ld b, $07
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld b, $07
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

    add b
    add b
    add b
    add b
    add b
    add b
    rlca
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
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
    ld bc, $ffff
    rst $38
    adc c
    adc d
    adc e
    sbc b
    sbc c
    sbc d
    and l
    and [hl]
    and a
    adc h
    adc l
    adc [hl]
    sbc e
    sbc h
    sbc l
    xor b
    xor c
    xor d
    or d
    or e
    or h
    cp d
    cp e
    cp h
    nop
    jp nz, Jump_04c_4300

    ld bc, $0302
    inc b
    rrca
    db $10
    ld de, $1312
    dec de
    inc e
    dec e
    ld e, $1f
    daa
    jr z, jr_04c_528c

    ld a, [hl+]
    dec hl
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    nop
    ld b, h
    nop
    nop
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_04c_528c:
    ld l, c
    nop
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    nop
    nop
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    nop
    nop
    nop
    add c
    add d
    nop
    nop
    nop
    nop
    nop
    add l
    add d
    nop
    nop
    nop
    nop
    nop
    add l
    add d
    nop
    nop
    nop
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    nop
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    nop
    nop
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b

Jump_04c_52ca:
    or c
    nop
    nop
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    nop
    nop
    nop
    nop
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    nop
    nop
    nop
    nop
    nop
    jp $87c4


    nop
    nop
    nop
    nop
    nop
    nop
    push bc
    add $c7
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    ret


    add b
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    nop
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    ld l, h
    add h
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    ld [hl], a
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    adc b
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_04c_536d

    ld a, [de]
    nop
    nop
    nop
    nop
    jr nz, jr_04c_537c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    nop
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    nop
    nop

jr_04c_536d:
    nop
    nop
    nop
    nop
    scf
    jr c, jr_04c_53ad

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04c_537c:
    dec a
    inc c
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_04c_53c5

    ld a, [de]

jr_04c_53ad:
    nop
    nop
    nop
    nop
    jr nz, jr_04c_53d4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    nop
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04c_53f3

    ld [hl-], a
    nop
    nop

jr_04c_53c5:
    nop
    nop
    nop
    nop
    scf
    jr c, jr_04c_5405

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04c_53d4:
    dec a
    inc c
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld a, [bc]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop

jr_04c_53f3:
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    db $eb

jr_04c_5405:
    ld [$fc55], a
    and $ff
    db $f4
    db $e4
    adc b
    ld a, [$e0f6]
    ld [hl+], a
    ld hl, sp-$1a
    rst $38
    nop
    nop
    rst $38
    ld [hl+], a
    rst $38
    xor [hl]
    rst $38
    rst $38
    xor d
    ei
    rst $38
    rst $38
    adc d
    rst $38
    xor $cf
    rst $38
    xor d
    rst $38
    ld h, [hl]
    rst $38
    xor d
    cp a
    cp $dd
    rst $38
    adc d
    cp a
    inc de
    db $f4
    ldh [$dd], a
    rst $38
    rst $38
    ld h, c
    ld c, $fb
    inc b
    sbc [hl]
    ld b, c
    inc b
    rst $38
    ei
    ld h, b
    ld [hl], a
    ret z

    rst $38
    sbc l
    db $fd
    rst $38
    ld [hl], b
    pop de
    ldh [rIE], a
    rst $38
    add b
    rst $38
    add b
    db $eb
    ld [bc], a
    cp e
    ld a, $8c
    ldh [$df], a
    rst $20
    rst $38

Jump_04c_5457:
    and d
    rst $28
    cp $84
    ldh [$67], a
    ld a, a
    rst $30
    ld a, [hl+]
    rst $38
    call c, $e078
    inc sp
    rst $30

jr_04c_5466:
    and d
    ei
    rst $38
    db $dd
    rst $38
    ld h, d
    rrca
    di
    inc b
    sbc a
    ld b, b
    rst $38
    inc c
    di
    ld h, c
    ld [hl], a
    inc sp
    rst $38
    sbc c
    rst $18
    pop af
    rst $18
    add b
    rst $38
    add b
    rst $38
    nop
    ld [c], a
    ld d, a
    nop
    adc a
    nop
    db $fd

jr_04c_5487:
    ld a, a
    db $ec
    ret nz

    or $08
    ldh a, [rIF]
    ld h, b
    adc d
    rst $38
    ld bc, $30fe
    adc d
    jr nc, jr_04c_5466

    ld bc, $ffaa
    ld bc, $08fe
    and d
    nop
    ld [hl], a
    ld h, b
    adc d
    rst $38
    ld h, b
    sbc l
    inc bc
    xor b
    inc bc
    ld [hl], h
    db $10
    xor d
    adc a
    nop
    db $dd
    ld h, c
    ld [bc], a
    nop
    rst $38
    add b
    rst $38
    add b
    rst $00
    ld d, a
    cp a
    nop
    adc [hl]
    ld bc, $017e
    rst $38
    cp $e0
    db $ec
    rst $38
    inc de

jr_04c_54c3:
    ld b, b
    sbc l
    nop
    rst $38
    jr nc, @-$73

    ld sp, $cfff
    nop
    xor e
    ld b, $f9
    ld b, $a8
    nop
    rst $38
    rst $38
    add b
    ld a, [hl+]
    add b
    ld a, a
    inc b
    xor d
    nop
    rst $38
    ld [hl], a
    add b
    ld a, [hl+]
    add hl, de
    push bc
    jr jr_04c_5487

    ld bc, $777f
    nop
    xor d
    ld [$61d5], sp
    ld [bc], a
    nop
    rst $38
    ld hl, sp-$80
    rst $38
    nop
    rst $00
    db $10
    pop bc
    ld [$0cdd], sp
    rst $38
    rla
    db $eb
    rst $38
    rst $38
    sbc d
    ret nz

    sbc [hl]
    jr jr_04c_54c3

    rst $38
    rst $38
    and d
    cp $f4
    ldh [$a8], a
    cp $dc
    rst $38
    ld a, [hl+]
    rst $38
    ld a, a
    rst $18
    rst $38
    and d
    ei
    ld [hl], e
    rst $30
    ld [$8ac1], sp
    cp a
    rst $00
    rla
    rst $38
    xor b
    nop
    rst $18
    add b
    rst $38
    nop
    call z, Call_000_01fe
    cp $77
    and b
    db $dd
    add d
    rst $38
    ld b, [hl]
    rst $30
    cp $ff
    and a
    ld e, b
    rst $38
    ld a, [hl]
    sub b
    and b
    ld [$aec0], sp
    ld [$fac1], sp
    cp $f4
    ld [c], a
    ld [hl+], a
    rst $28
    ld [hl], a
    rst $38
    and d
    cp $1c
    rlca
    rst $38
    ld a, [hl+]
    cp [hl]
    ld hl, sp-$20
    ld hl, sp-$60
    nop
    rst $18
    add b
    rst $38
    nop
    xor e
    rst $38
    ld [$9f80], sp
    ret nz

    jp nz, $65e0

    ldh a, [rIE]
    ldh a, [$f8]
    reti


    db $fc
    db $fc
    cp $2b
    cp $ba
    ld a, h
    pop hl
    cp $14
    ldh [$fe], a
    rst $38
    ld a, [hl+]
    db $f4
    ldh [$28], a
    rst $28
    rst $38
    ld [hl], l
    ld a, a
    xor d
    db $f4
    ret nz

    xor d
    rst $38
    ld [hl], a
    jp Jump_000_2a7f


    db $ec
    ret nz

    nop
    rst $38
    add b
    rst $38
    add b
    sbc l
    nop
    xor d
    ld a, l
    sub c
    adc b
    add b
    rst $30
    rst $38
    adc d
    cp [hl]
    sbc [hl]
    add h
    add b
    or $00
    ldh [$bb], a
    ret nc

    ld [hl], h
    ret nz

    ld [hl], a
    ld a, a
    xor d
    xor $e2
    nop
    ldh [$0e], a
    nop
    rst $38
    add b
    rst $38
    nop
    sub a
    ld d, l

jr_04c_55aa:
    add b
    ccf
    rst $38
    ret nz

    dec d
    ldh [$6f], a
    ldh a, [$27]
    ld hl, sp+$7b
    rlca
    db $fc
    xor c
    cp $80
    add b
    ld [$80e4], sp
    ld [c], a
    ld hl, sp+$60
    nop
    rst $38
    xor b
    add b
    rst $38
    add b

jr_04c_55c7:
    ld a, [$6268]
    rst $38
    cp $e4
    xor d
    ld [hl], b
    ld h, c
    ld [hl], a
    rst $30
    add b
    xor $dd
    ld hl, sp-$60

jr_04c_55d7:
    ld h, a
    ld [hl], a
    xor b
    rst $38
    pop hl
    ld d, l
    nop
    rst $18
    add b
    rst $38
    add b
    rst $38
    add b
    db $ec
    jr nz, @-$0f

    db $dd
    ld a, [hl]
    db $ec
    add b
    scf
    ld a, a
    jr z, jr_04c_55aa

    reti


    db $fd
    nop
    rst $38
    ld a, h
    add b
    rst $38
    add b
    rst $38
    cp $00
    rst $30
    nop
    rst $28
    ld [hl], b
    ld h, b
    rst $38
    or $09
    ld h, b
    adc d
    ld [$6177], sp
    adc d
    ei
    ld h, c
    sbc h
    push af
    ret nz

    rst $30
    jr @-$5c

    jr jr_04c_55d7

    pop af
    ld h, b
    nop
    sbc a
    add b
    rst $38
    nop
    ld e, b
    ld d, a
    nop
    db $ec
    inc bc
    rst $38
    ld a, h
    ld [bc], a
    db $fc
    inc bc
    ld hl, sp+$03
    or b

jr_04c_5626:
    ld c, a
    ld a, a
    nop
    xor e
    dec c
    di
    inc l
    add e
    ld bc, $6080
    rst $38
    add b
    ld e, l
    db $10
    xor d
    ld bc, $8677
    add hl, hl
    inc hl
    ld b, $d9
    nop
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld h, $88
    jr nz, jr_04c_55c7

jr_04c_5647:
    jr nz, jr_04c_5626

    db $eb
    add b
    ld hl, $f774
    xor b
    add b
    ld hl, $47ef
    or b
    add b
    ld h, d
    nop
    rst $18
    add b
    rst $38
    add b
    cp $eb
    ld h, e
    inc c
    jr nz, jr_04c_5647

    xor h
    ld a, b
    ld h, b

jr_04c_5664:
    ld hl, sp+$40
    rst $38
    ld d, [hl]
    nop
    jr nz, @-$39

    ld [hl], h
    jr nz, jr_04c_56e4

    add $fc
    nop
    sbc l
    rst $18
    nop
    rst $18
    add b
    rst $38
    add b
    sbc a
    ld l, a
    ldh a, [$57]
    and a
    ld hl, sp-$05
    add b
    add b
    ld a, [hl]
    ld a, h
    ld h, b
    db $76
    add b
    nop
    dec d
    ld e, l
    ld [hl], h
    ld b, b
    db $76
    ld [hl], b
    ld b, b
    ld e, l
    nop
    rst $38
    add b
    rst $38
    add b
    cp a
    xor $80
    adc h
    and b
    db $eb
    ld d, c
    db $f4
    ld b, b
    ld d, a
    rst $38
    jr z, jr_04c_5664

    ei
    ld e, c
    nop
    cp a
    add b
    rst $38
    add b
    rst $38
    nop
    adc h
    ld [$7fab], sp
    sbc h
    rst $18
    xor d
    rst $38
    ld b, e
    rst $38
    adc d
    nop
    ld h, c
    ldh a, [rP1]
    rst $38
    add b
    rst $38
    add b
    sbc a
    add b
    add h
    di
    inc c
    ldh [$0a], a
    rst $38
    add c
    db $76
    ld bc, $44aa
    sbc c
    nop
    xor d
    ccf
    jr jr_04c_5737

    add hl, de
    and d
    nop
    db $dd
    nop
    cp a
    add b
    rst $38
    xor $80
    sbc e
    rst $28
    nop
    ld a, [hl]
    ld [$dc00], a
    ld [hl+], a
    add b
    rst $38

jr_04c_56e4:
    ld a, a
    add b
    ld a, [hl+]
    ld h, $d9
    ld b, $a8
    add b
    cp $80
    add b
    nop
    db $dd
    ld e, b
    and d
    ld a, [de]
    ld h, l
    nop
    rlca
    xor d
    inc b
    reti


    nop
    adc l
    nop
    nop
    nop
    add b
    ld a, l
    ret nc

    ld a, [hl]
    nop
    ld [bc], a
    add b
    nop
    nop
    ld [bc], a
    ld b, b
    ld [hl], c
    ldh [$03], a
    add b
    nop
    nop
    ld [bc], a
    ret nz

    ld [bc], a
    sub h
    inc hl
    add b
    nop
    nop
    ld [bc], a
    sub h
    inc hl
    ldh [$03], a
    add b
    nop
    nop
    ld [bc], a
    ldh [$03], a
    ret nz

    ld [bc], a
    add b
    nop
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    jr jr_04c_5731

jr_04c_5731:
    call Call_04c_583c
    call Call_04c_5767

jr_04c_5737:
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
    ld hl, $5400
    ld de, $d000
    call Call_000_1f2f
    call Call_04c_6173
    ld hl, $56ff
    ld de, $0205
    call Call_000_0595
    ret


Call_04c_5767:
    ld hl, $da00

jr_04c_576a:
    ld a, [hl+]
    cp $ff
    jr z, jr_04c_5790

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, e
    cp $03
    jr z, jr_04c_577d

    cp $02
    jr nz, jr_04c_578e

jr_04c_577d:
    ld a, c
    and a
    jr z, jr_04c_578e

    ld a, c
    rrca
    rrca
    rrca
    and $07
    ld e, $00
    push hl
    call Call_04c_5791
    pop hl

jr_04c_578e:
    jr jr_04c_576a

jr_04c_5790:
    ret


Call_04c_5791:
    add a
    add a
    add a
    ld hl, $57fc
    add l
    ld l, a
    jr nc, jr_04c_579c

    inc h

jr_04c_579c:
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

jr_04c_57a8:
    push de

jr_04c_57a9:
    ld a, [hl]
    and a
    jr z, jr_04c_57ec

    bit 7, d
    jr nz, jr_04c_57ec

    ld a, d
    cp $14
    jr nc, jr_04c_57ec

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
    ld de, $4050
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
    jr c, jr_04c_57e1

    ld c, $08

jr_04c_57e1:
    push bc
    call Call_04c_6246
    pop bc
    dec c
    jr nz, jr_04c_57e1

    pop hl
    pop de
    pop bc

jr_04c_57ec:
    inc hl
    inc d
    dec e
    jr nz, jr_04c_57a9

    pop de
    inc b
    ld a, c
    sub $08
    ld c, a
    jr z, jr_04c_57fb

    jr nc, jr_04c_57a8

jr_04c_57fb:
    ret


    nop
    nop
    ld bc, $3001
    ld b, l
    nop
    nop
    nop
    nop
    ld bc, $3102
    ld b, l
    nop
    nop
    rst $38
    nop
    inc bc
    inc bc
    inc sp
    ld b, l
    nop
    nop
    rst $38
    nop
    inc bc
    inc b
    inc a
    ld b, l
    nop
    nop
    rst $38
    nop
    inc bc
    dec b
    ld c, b
    ld b, l
    nop
    nop
    rst $38
    nop
    inc bc
    ld b, $57
    ld b, l
    nop
    nop
    rst $38
    nop
    inc bc
    rlca
    ld l, c
    ld b, l
    nop
    nop
    rst $38
    nop
    inc bc
    ld [$457e], sp
    nop
    nop

Call_04c_583c:
    ld hl, $da00

jr_04c_583f:
    ld a, [hl+]
    cp $ff
    jr z, jr_04c_5862

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $01
    jr nz, jr_04c_5860

    ld a, b
    rrca
    rrca
    rrca
    and $07
    jr z, jr_04c_5860

    cp $07
    jr z, jr_04c_5860

    ld e, b
    push hl
    call Call_04c_5873
    pop hl

jr_04c_5860:
    jr jr_04c_583f

jr_04c_5862:
    ld a, [$c3b7]
    cp $0c
    jr nz, jr_04c_5872

    ld a, $07
    ld d, $0a
    ld e, $3f
    call Call_04c_5873

jr_04c_5872:
    ret


Call_04c_5873:
    add a
    add a
    add a
    ld hl, $6133
    add l
    ld l, a
    jr nc, jr_04c_587e

    inc h

jr_04c_587e:
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

jr_04c_588b:
    push de

jr_04c_588c:
    ld a, [hl]
    and a
    jr z, jr_04c_58d7

    bit 7, d
    jr nz, jr_04c_58d7

    ld a, d
    cp $14
    jr nc, jr_04c_58d7

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
    ld de, $58e5
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
    jr nc, jr_04c_58b8

    inc h

jr_04c_58b8:
    ld bc, $d000
    add hl, bc
    call Call_04c_6246
    call Call_04c_6246
    call Call_04c_6246
    call Call_04c_6246
    call Call_04c_6246
    call Call_04c_6246
    call Call_04c_6246
    call Call_04c_6246
    pop hl
    pop de
    pop bc

jr_04c_58d7:
    inc hl
    inc d
    dec e
    jr nz, jr_04c_588c

    pop de
    ld a, b
    add $08
    ld b, a
    dec c
    jr nz, jr_04c_588b

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
    jr jr_04c_598d

    jr nc, @+$41

    jr nc, jr_04c_59d1

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

jr_04c_598d:
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

jr_04c_59d1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_04c_5b1e:
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
    jr jr_04c_5b69

    jr jr_04c_5b6b

    jr jr_04c_5b8d

    jr nc, jr_04c_5b8f

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

jr_04c_5b69:
    nop
    nop

jr_04c_5b6b:
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

jr_04c_5b8d:
    nop
    nop

jr_04c_5b8f:
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    jr nc, jr_04c_5b1e

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

    jr nz, jr_04c_5c39

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

jr_04c_5bf1:
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
    jr jr_04c_5bf1

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

jr_04c_5c39:
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

jr_04c_5c53:
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
    jr jr_04c_5c53

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
    jr nz, jr_04c_5cfd

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

jr_04c_5cfd:
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
    jp z, Jump_04c_52ca

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

jr_04c_5dd7:
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_04c_5dd7

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
    jp c, Jump_04c_5457

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
    jr nc, jr_04c_6132

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
    jr z, jr_04c_6143

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

jr_04c_6132:
    ld h, $ff
    ld sp, hl
    inc bc
    ld bc, $60e5
    nop
    nop
    rst $38
    ld sp, hl
    inc bc
    ld bc, $60e5
    nop
    nop

jr_04c_6143:
    rst $38
    ld sp, hl
    inc bc
    ld bc, $60e8
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    db $eb
    ld h, b
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    push af
    ld h, b
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    rst $38
    ld h, b
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    add hl, bc
    ld h, c
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    ld e, $61
    nop
    nop

Call_04c_6173:
    ld hl, $da00

jr_04c_6176:
    ld a, [hl+]
    cp $ff
    jr z, jr_04c_6198

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $03
    jr z, jr_04c_6189

    cp $02
    jr nz, jr_04c_6196

jr_04c_6189:
    ld a, b
    rrca
    rrca
    rrca
    and $07
    ld e, $07
    push hl
    call Call_04c_6199
    pop hl

jr_04c_6196:
    jr jr_04c_6176

jr_04c_6198:
    ret


Call_04c_6199:
    add a
    add a
    add a
    ld hl, $6206
    add l
    ld l, a
    jr nc, jr_04c_61a4

    inc h

jr_04c_61a4:
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

jr_04c_61b1:
    push de

jr_04c_61b2:
    ld a, [hl]
    and a
    jr z, jr_04c_61fb

    bit 7, d
    jr nz, jr_04c_61fb

    ld a, d
    cp $14
    jr nc, jr_04c_61fb

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
    ld de, $4596
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
    call Call_04c_6253
    call Call_04c_6253
    call Call_04c_6253
    call Call_04c_6253
    call Call_04c_6253
    call Call_04c_6253
    call Call_04c_6253
    call Call_04c_6253
    pop hl
    pop de
    pop bc

jr_04c_61fb:
    inc hl
    inc d
    dec e
    jr nz, jr_04c_61b2

    pop de
    inc b
    dec c
    jr nz, jr_04c_61b1

    ret


    rst $38
    cp $03
    inc bc
    ld [hl], $52
    nop
    nop
    rst $38
    ei
    inc bc
    ld b, $3f
    ld d, d
    nop
    nop
    cp $f9
    dec b
    ld [$5251], sp
    nop
    nop
    db $fd
    ld sp, hl
    rlca
    ld [$5279], sp
    nop
    nop
    db $fc
    ld sp, hl
    add hl, bc
    ld [$52b1], sp
    nop
    nop
    db $fc
    ld sp, hl
    add hl, bc
    ld [$52f9], sp
    nop
    nop
    ei
    ld sp, hl
    dec bc
    ld [$5341], sp
    nop
    nop
    ei
    ld sp, hl
    dec bc
    ld [$5341], sp
    nop
    nop

Call_04c_6246:
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
    jr jr_04c_625e

Call_04c_6253:
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

jr_04c_625e:
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


    db $db
    ld [bc], a
    inc bc
    rst $38
    xor $04
    db $f4
    rst $38
    add sp, $05
    ld [de], a
    ld a, [hl]
    rst $38
    ld [c], a
    and [hl]
    and a
    xor b
    xor c
    inc d
    ld d, $f4
    db $e3
    push hl
    ld b, $e0
    db $eb
    db $10
    rst $38
    db $ec
    ldh [$ed], a
    ld b, b
    ld b, c
    ld b, d
    push af
    ld b, e
    cp $e9
    ld de, $ecc0
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    inc a
    cp $e9
    ldh [$ed], a
    ld b, d
    ld b, e
    jr nz, jr_04c_62c5

    cp $e9
    ret nz

    db $ed
    rrca
    ld d, d
    ld d, e
    jr nc, jr_04c_62de

    cp $e9
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
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

    ld sp, hl
    rlca

jr_04c_62c5:
    dec b
    ld [$eeff], sp
    add hl, bc
    ldh [$a9], a
    nop
    nop
    nop
    push de
    ld [$fdff], sp
    jr z, @+$01

    ld [c], a
    ld c, $ff
    ldh [$0d], a
    dec c
    nop
    db $f4
    ld [c], a

jr_04c_62de:
    ldh [$ed], a
    rst $08
    xor $e0
    xor $c3
    pop hl
    db $fc
    rst $20
    ret nz

    rst $28
    ldh [$fb], a
    nop
    add a
    pop hl
    cp $e9
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    nop
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f8], a
    rst $18
    cp h
    nop
    nop
    nop

    db $bb, $1c, $1d, $fe, $ef, $22, $23, $f4, $ff, $e0, $1c, $fd, $1d, $fa, $e1, $1e
    db $1f, $1e, $1f, $02, $03, $9a, $ff, $e6, $04, $f0, $e1, $32, $33, $e6, $e3, $da
    db $e3, $1c, $ff, $1d, $05, $12, $12, $aa, $ab, $ac, $ad, $df, $ae, $af, $12, $12
    db $06, $b0, $e1, $24, $25, $58, $c0, $e1, $fc, $e3, $c0, $e1, $07, $08, $ff, $e6
    db $09, $b0, $e1, $33, $34, $35, $e0, $e7, $80, $f1, $42, $43, $c0, $e7, $84, $e8
    db $c6, $7c, $e6, $52, $53, $a0, $e7, $84, $e0, $fe, $e1, $a6, $a7, $2f, $a8, $a9
    db $16, $14, $f4, $e3, $06, $82, $e7, $e0, $e1, $f9, $10, $ff, $ec, $e0, $ed, $40
    db $41, $86, $87, $88, $ff, $89, $8a, $8b, $8c, $8d, $a2, $a3, $a0, $ef, $a1, $8e
    db $8f, $11, $c0, $ec, $50, $51, $96, $ff, $97, $98, $99, $9a, $9b, $9c, $9d, $b2
    db $df, $b3, $b0, $b1, $9e, $9f, $e0, $ed, $44, $45, $f3, $20, $21, $fe, $e9, $c0
    db $ed, $54, $55, $30, $31, $00, $fe, $e9, $a0, $eb, $e4, $c8, $dc, $c6, $40, $e9
    db $80, $c1, $fc, $ed, $20, $e9, $00, $40, $d1, $c0, $ff, $c0, $ff, $c0, $ff, $1c
    db $c3, $00, $00

    nop

    db $dd, $09, $ff, $f0, $0d, $0d, $08, $ff, $e0, $09, $09, $10, $fa, $e3, $f8, $e3
    db $fc, $e5, $e0, $f4, $0f, $ff, $e2, $e0, $ea, $d0, $e7, $18, $c0, $f3, $b0, $e7
    db $7c, $ed, $0e, $0e, $8e, $e9, $f4, $ef, $e0, $ea, $2d, $28, $ed, $e4, $0e, $0e
    db $49, $e3, $28, $ef, $e3, $e0, $ec, $fc, $ef, $f7, $c0, $e0, $0d, $0d, $0e, $0e
    db $0c, $0c, $0f, $0f, $0f, $0b, $0b, $bb, $e5, $e0, $ff, $80, $e7, $87, $e1, $00
    db $fe, $e9, $e0, $ff, $ff, $ff, $e0, $db, $e0, $ff, $e0, $ff, $e0, $ff, $e0, $ff
    db $00, $da, $a1, $00, $00

    nop
    rst $38

Call_04c_6438:
    ld b, b
    ld b, c
    ld c, h
    ld c, l
    ld l, b
    ld l, c
    ld c, [hl]
    ld c, a
    rst $38
    ld l, d
    ld l, e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld l, h
    ld l, l
    rst $38
    add h
    add l
    ld l, [hl]
    ld l, a
    add b
    add c
    ld h, h
    ld h, l
    rst $38
    ld h, [hl]
    ld h, a
    add d
    add e
    and h
    and l
    ld b, d
    ld b, e
    rst $38
    ld d, b
    ld d, c
    ld e, h
    ld e, l
    ld a, b
    ld a, c
    ld e, [hl]
    ld e, a
    rst $38
    ld a, d
    ld a, e
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, h
    ld a, l
    rst $38
    sub h
    sub l
    ld a, [hl]
    ld a, a
    sub b
    sub c
    ld [hl], h
    ld [hl], l
    rst $38
    db $76
    ld [hl], a
    sub d
    sub e
    or h
    or l
    ld d, d
    ld d, e
    rst $28
    ld c, h
    ld c, l
    jr nz, jr_04c_64a5

    cp $f7
    ld [hl+], a
    inc hl
    ld e, h
    rst $30
    ld e, l
    jr nc, jr_04c_64be

    cp $f7
    ld [hl-], a
    inc sp
    ld l, b
    ld l, c
    sbc $c0
    ld sp, hl
    inc h
    dec h
    ld a, b
    ld a, c
    ret nz

    ld sp, hl
    inc [hl]
    dec [hl]
    ld a, e
    ld c, [hl]
    ld c, a
    add b
    ld sp, hl
    nop
    nop

jr_04c_64a5:
    ld e, [hl]
    ld e, a
    add b
    ld sp, hl
    ld l, a
    nop
    nop
    ld l, d
    ld l, e
    ret nz

    ei
    ld a, d
    ld a, e
    ret nz

    ei
    db $db
    ld h, b
    ld h, c
    add b
    ei
    ld [hl], b
    ld [hl], c
    add b
    ei
    ld h, d

jr_04c_64be:
    ld h, e
    or [hl]
    ld b, b
    ei
    ld [hl], d
    ld [hl], e
    ld b, b
    ei
    ld l, h
    ld l, l
    nop
    ei
    ld a, h
    ld l, l
    ld a, l
    nop
    ei
    add h
    add l
    ret nz

    db $db
    sub h
    sub l
    ret nz

    db $db
    db $db
    ld l, [hl]
    ld l, a
    add b
    db $db
    ld a, [hl]
    ld a, a
    add b
    db $db
    add b
    add c
    or [hl]
    ld b, b
    db $db
    sub b
    sub c
    ld b, b
    db $db
    ld h, h
    ld h, l
    nop
    db $db
    ld [hl], h
    ld l, l
    ld [hl], l
    nop
    db $db
    ld h, [hl]
    ld h, a
    ret nz

    cp e
    db $76
    ld [hl], a
    ret nz

    cp e
    db $db
    add d

Call_04c_64fc:
    add e
    add b
    cp e
    sub d
    sub e
    add b
    cp e
    and h
    and l
    or [hl]
    ld b, b
    cp e
    or h
    or l
    ld b, b
    cp e
    ld b, h
    ld b, l
    nop
    cp e
    ld d, h
    ld l, l
    ld d, l
    nop
    cp e
    ld b, [hl]
    ld b, a
    ret nz

    sbc e
    ld d, [hl]
    ld d, a
    ret nz

    sbc e
    db $db
    ld c, b
    ld c, c
    add b
    sbc e
    ld e, b
    ld e, c
    add b
    sbc e
    ld c, d
    ld c, e
    ld b, $40
    sbc e
    ld e, d
    ld e, e
    ld b, b
    sbc e
    nop
    nop
    nop
    rst $18
    ld [$0d08], sp
    ld c, $0d
    rst $38
    ldh [$0e], a
    ld c, $fd
    dec bc
    rst $38
    ldh [$0c], a
    inc c
    dec c
    dec c
    rrca
    rrca
    or a
    ld c, $0e
    inc c
    rst $38
    ldh [$0b], a
    dec bc
    or $e1
    ld [$0803], sp
    ld c, $e0
    ld a, [$e3c2]
    db $fc
    rst $30
    jp nz, $ffe3

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    db $76
    rst $28
    ld [hl+], a
    ldh [$e0], a
    db $fc
    ld h, b
    ei
    ldh [rIE], a

jr_04c_656d:
    dec bc
    dec bc
    nop
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    jr nz, jr_04c_656d

    ld c, [hl]
    pop bc
    ldh [rIE], a
    ldh [$df], a
    ldh [rIE], a
    ld b, $e0
    di
    rrca
    rrca
    ldh [rIE], a
    and b
    rst $18
    ldh [rIE], a
    jr nz, @+$01

    ldh [rIE], a
    nop
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $18
    ldh [rIE], a
    ldh [$df], a
    ldh [rIE], a
    ldh [$df], a
    ldh [rIE], a
    nop
    ldh [$e2], a
    nop
    db $fc
    ldh [rIE], a
    ret nz

    rst $18
    and b
    cp a
    ldh [rIE], a
    ldh [$f5], a
    nop
    nop
    nop

    db $db, $02, $03, $ff, $ee, $04, $00, $ff, $e8, $05, $12, $ff, $26, $27, $28, $2c
    db $12, $2c, $10, $12, $f5, $10, $fd, $e5, $06, $e0, $eb, $12, $12, $20, $21, $f9
    db $11, $fd, $e9, $e0, $ed, $17, $30, $31, $18, $30, $ff, $31, $19, $30, $31, $1a
    db $30, $31, $1b, $7b, $30, $31, $e0, $ed, $29, $2a, $2b, $2c, $a3, $e7, $f8, $a0
    db $ff, $a0, $ff, $40, $eb, $36, $37, $38, $39, $3a, $e1, $2c, $3d, $e8, $a0, $ff
    db $a0, $ff, $e0, $c8, $3b, $3c, $3d, $83, $3e, $3f, $a0, $e1, $3a, $e5, $a0, $ff
    db $a0, $ff, $7d, $c6, $07, $35, $08, $ff, $ee, $09, $60, $c9, $1c, $1d, $fe, $ef
    db $40, $c9, $fe, $20, $de, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $07, $ab, $ac, $ad
    db $56, $e0, $fd, $e2, $80, $ff, $ff, $e8, $00, $00

    nop

    db $bd, $08, $ff, $fd, $28, $0b, $0b, $0b, $e0, $fa, $08, $07, $08, $0d, $0d, $fd
    db $ea, $e0, $ff, $a0, $ff, $c0, $ff, $e0, $ff, $00, $a0, $e7, $9e, $f9, $a0, $fd
    db $df, $c0, $a0, $ff, $a0, $ff, $40, $ff, $80, $f7, $22, $5c, $d9, $09, $ff, $f0
    db $ca, $ff, $0a, $c8, $0e, $ff, $e6, $d4, $ff, $00, $d3, $b0, $00, $00

    nop

    db $fd, $00, $ff, $e1, $0f, $0f, $10, $18, $27, $10, $19, $28, $fe, $f1, $e0, $e2
    db $ff, $ff, $fc, $e0, $d6, $e2, $fb, $f3, $3e, $e0, $fd, $e0, $e0, $10, $30, $c8
    db $a0, $f3, $00, $00

    nop

    db $fb, $10, $28, $fe, $ef, $18, $27, $0f, $10, $00, $1b, $0f, $00, $ff, $f7, $ff
    db $ff, $fc, $e0, $e0, $ff, $de, $e1, $7e, $a0, $f1, $30, $c8, $e0, $10, $00, $e0
    db $c0, $e3, $00, $00, $00

    rst $38
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld l, b
    ld l, c
    ld a, b
    ld a, c
    rst $38
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    ld l, d
    ld l, e
    ld a, d
    ld a, e
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
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    add h
    add l
    sub h
    sub l
    rst $38
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    add b
    add c
    sub b
    sub c
    rst $38
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    rst $38
    add d
    add e
    sub d
    sub e
    and h
    and l
    or h
    or l
    rst $38
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    rst $38
    ld c, b
    ld c, c
    ld e, b
    ld e, c
    ld c, d
    ld c, e
    ld e, d
    ld e, e
    nop
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

jr_04c_6725:
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
    jr nc, jr_04c_6725

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

    db $ff, $44, $45, $54, $55, $46, $47, $56, $57, $ff, $48, $49, $58, $59, $4a, $4b
    db $5a, $5b, $ff, $86, $87, $96, $97, $88, $89, $98, $99, $ff, $8a, $8b, $9a, $9b
    db $8c, $8d, $9c, $9d, $ff, $a0, $a1, $b0, $b1, $a2, $a3, $b2, $b3, $ff, $8e, $8f
    db $9e, $9f, $42, $43, $52, $53, $00, $00, $00, $75, $0e, $ff, $e1, $0c, $fe, $e1
    db $0c, $0c, $0d, $ff, $e4, $24, $ed, $e2, $f0, $e0, $0f, $ff, $e0, $e0, $e1, $0b
    db $ff, $e0, $e8, $e5, $00, $00, $00

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

    rrca
    rst $38
    cp $ff
    nop
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

    rst $38
    inc bc
    add d
    add e
    jp nz, $feff

    rst $38
    nop
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

jr_04c_6913:
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
    jr jr_04c_6913

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
    rlca
    cp $ff
    nop
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
    db $fe, $03, $ff, $00, $00, $00

    nop

    db $ff, $ff, $00, $ff, $7f, $c7, $47, $c8, $5c, $ff, $d9, $53, $e2, $73, $e2, $7e
    db $d5, $5e, $f6, $f0, $e0, $ff, $03, $eb, $e0, $c0, $ff, $30, $7f, $ef, $e8, $0f
    db $f8, $0f, $e0, $e0, $fe, $03, $82, $ff, $83, $e2, $43, $f2, $23, $f2, $23, $fa
    db $ff, $13, $fa, $cb, $4d, $cf, $4d, $ca, $4b, $ff, $ca, $4f, $cf, $4f, $da, $59
    db $ef, $60, $ff, $fe, $62, $b8, $cf, $d4, $e7, $6c, $a7, $ff, $bc, $bf, $27, $e7
    db $da, $ee, $f5, $05, $d7, $ff, $00, $13, $dc, $e0, $13, $d4, $e0, $a3, $f2, $fb
    db $e3, $62, $fe, $e1, $e5, $76, $df, $5f, $c2, $ff, $43, $c3, $43, $c1, $43, $c1
    db $41, $ff, $ff, $7f, $ff, $00, $fa, $04, $fb, $83, $fa, $ff, $87, $75, $8f, $ea
    db $0e, $d2, $3f, $ff, $ff, $ff, $ff, $00, $c3, $c2, $43, $c2, $83, $f7, $82, $03
    db $02, $fe, $e1, $ff, $fe, $ff, $00, $00, $00, $00

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
    jp Jump_04c_407d


    rst $18
    pop hl
    db $76
    rst $28
    ld a, [$dfee]
    rst $38
    sub l
    ldh [$e3], a
    ld h, d
    jp Jump_04c_42df


    add e
    add d
    inc bc
    ld [bc], a
    cp $e1
    rst $38
    cp $03
    rst $38
    nop
    nop
    nop
    nop
    cp a
    rst $38
    nop

jr_04c_6b3f:
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
    jp nz, Jump_04c_47c3

    rst $38
    rst $00
    ld b, a
    call nz, $c547
    ld c, [hl]
    ret


    ld c, a

jr_04c_6b76:
    rst $38
    ret z

    ld c, a
    ret


    ld c, l
    bit 1, [hl]
    db $10
    rst $38
    db $fd
    jr c, jr_04c_6b3f

    ldh [$30], a
    rst $18
    jr nz, jr_04c_6b76

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
    rst $38
    xor $97
    add $2b
    adc [hl]
    rst $38
    cp $ff
    ld bc, $0000
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
    jp z, Jump_04c_4fff

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
    jp Jump_04c_47ff


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
    rst $38
    add d
    inc bc
    add d
    add e
    jp nz, $feff

    rst $38
    ld bc, $0000
    nop
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
    db $e2, $83, $c2, $43, $a0, $e0, $0f, $ff, $fe, $ff, $00, $00, $00

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
    db $82, $83, $82, $03, $02, $ff, $fe, $03, $ff, $00, $00, $00

    nop

    db $ff, $ff, $00, $ff, $7f, $c0, $40, $c1, $43, $ff, $c3, $47, $c7, $47, $c6, $47
    db $c4, $4f, $de, $f0, $e0, $ff, $7c, $fe, $ff, $ff, $e0, $01, $ff, $ef, $38, $ff
    db $7c, $ff, $e0, $e0, $fe, $03, $02, $ff, $03, $82, $83, $c2, $c3, $e2, $e3, $e2
    db $ff, $63, $f2, $cc, $4f, $cf, $4f, $c7, $4f, $f7, $c7, $47, $c7, $f8, $e0, $df
    db $5f, $cf, $5f, $ff, $7c, $ff, $fc, $ff, $f8, $ff, $e3, $ff, $f9, $c7, $fe, $e0
    db $ca, $e1, $73, $f2, $73, $f2, $f3, $63, $f2, $e3, $fc, $e0, $fe, $e3, $d2, $e1
    db $c3, $47, $a0, $e2, $1f, $4f, $ff, $7f, $ff, $00, $d8, $e1, $d6, $e3, $d1, $e2
    db $bf, $00, $e3, $f2, $c3, $e2, $83, $a2, $e3, $f2, $0f, $ff, $fe, $ff, $00, $00
    db $00

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

Jump_04c_6e6b:
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
    jp nz, Jump_04c_7bff

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
    rra
    ld a, [hl]
    rst $38
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc bc
    rra
    inc c
    inc sp
    inc e
    ld h, $39
    ld a, h
    inc hl
    ld a, h
    ld b, e
    ld e, [hl]
    ld h, c
    nop
    nop
    ldh [$c0], a
    ld hl, sp+$30
    call z, Call_04c_6438
    sbc h
    ld a, $c4
    ld a, $c2
    ld a, d

jr_04c_6ee8:
    add [hl]
    rlca
    inc bc
    nop
    nop
    inc bc
    ld bc, $060f
    add hl, de
    ld c, $13
    inc e
    ld a, $11
    ld a, $21
    ld hl, sp-$10
    nop
    nop
    ldh a, [$e0]
    db $fc
    jr jr_04c_6ee8

    inc e
    ld [hl-], a
    adc $1f
    ld [c], a
    rra
    pop hl
    ld b, $03
    inc bc
    ld bc, $0000
    ld bc, $0700
    inc bc
    inc c
    rlca
    add hl, bc
    ld c, $9f
    ld [$fc06], sp
    db $fc
    ld hl, sp+$00
    nop
    ld hl, sp-$10
    cp $0c
    di
    ld c, $99
    ld h, a
    rrca
    pop af
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0386
    add h
    add a
    ld bc, $03ff
    cp $fe
    db $fc
    nop
    nop
    db $fc
    ld a, b
    rst $38
    add [hl]
    ld a, c
    add a
    call z, $c333
    add c
    add c
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    jp $2481


    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $38
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    inc a
    rst $38
    jp $c33c


    di
    pop hl
    ld h, c
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    jp nc, $92ff

    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld a, a
    ccf
    nop
    nop
    ccf
    ld e, $ff
    ld h, c
    ld sp, hl
    sbc c
    ld a, c
    ldh a, [$30]
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ret nz

    add b
    nop
    nop
    add b
    nop
    rst $38
    sbc a
    jp hl


    rst $38
    ret


    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    ccf
    rra
    nop
    nop
    rra
    rrca
    db $e4
    inc e
    db $fc
    call z, $f8bc
    sbc b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    ret nz

    nop
    nop
    sbc a
    ldh [rIE], a
    rst $08
    db $f4
    ld a, a
    ld h, h
    ccf
    jr nz, jr_04c_7002

    jr nc, jr_04c_6fe4

    rra
    rrca
    nop
    nop
    ld a, [c]
    ld c, $f2
    ld c, $fe
    and $5e
    db $fc
    ld c, h
    ld hl, sp+$08
    ld hl, sp+$18
    ldh a, [$f0]
    ldh [rVBK], a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld a, a
    ld h, a
    ld a, d
    ccf
    ld [hl-], a
    rra
    db $10

jr_04c_6fe4:
    rra
    jr jr_04c_6ff6

    rrca
    rlca
    dec a
    jp Jump_000_07f9


    ld sp, hl
    rlca
    rst $38
    di
    cpl
    cp $26
    db $fc
    inc b

jr_04c_6ff6:
    db $fc
    inc c
    ld hl, sp+$2f
    jr nc, jr_04c_7023

    jr c, jr_04c_7025

    jr c, @+$41

    inc sp
    dec a

jr_04c_7002:
    rra
    add hl, de
    rrca
    ld [$0c0f], sp
    rlca
    rrca
    ldh a, [$9e]
    ld h, c
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    ld sp, hl
    sub a
    rst $38
    sub e
    cp $02
    cp $9f
    sub b
    sub a
    sbc b
    sub e
    sbc h
    sub e
    sbc h
    sbc a
    sbc c

jr_04c_7023:
    sbc [hl]
    rrca

jr_04c_7025:
    inc c
    rlca
    inc b
    rlca
    add a
    ld a, b
    add a
    ld a, b
    rst $08

jr_04c_702e:
    jr nc, jr_04c_702e

    ld bc, $01fe
    rst $38
    db $fc
    ld c, e
    rst $38
    ld c, c
    rst $38
    rst $08
    add h
    rst $08
    ld c, b
    ld c, e
    call z, $ce49
    ld c, c
    adc $cf
    call z, $87cf
    add [hl]
    inc bc
    ld h, [hl]
    sbc c
    jp $c33c


    inc a
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    and l
    rst $38
    ld b, d
    jp $42e7


    rst $20
    inc h
    and l
    ld h, [hl]
    inc h
    rst $20
    inc h
    rst $20
    rst $20
    ld h, [hl]
    rst $20
    jp $e19e


    inc sp
    call z, Call_000_1ee1
    pop hl
    ld e, $f3
    inc c
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ccf
    ld h, c
    ret nz

    ld hl, $f3e1
    ld hl, $12f3
    jp nc, $9233

    ld [hl], e
    sub d
    ld [hl], e
    di
    inc sp
    ld a, a
    jr nc, @-$2f

    ld [hl], b
    sbc c
    and $f0
    adc a
    ldh a, [rIF]
    ld a, c
    add [hl]
    ccf
    ret nz

    ccf
    ret nz

    ldh [$c0], a
    jr nc, @-$1e

    sub b
    ld [hl], b
    ld sp, hl
    db $10
    ld sp, hl
    add hl, bc
    jp hl


    add hl, de
    ret


    add hl, sp
    ret


    add hl, sp
    rrca
    rlca
    ccf
    jr jr_04c_7115

    jr c, jr_04c_70fc

    ld [hl], e
    ld hl, sp+$47
    ld hl, sp-$79
    cp h
    jp $e09f


    ret nz

    add b
    ldh a, [$60]
    sbc b
    ld [hl], b
    ret z

    jr c, @+$7e

    adc b
    ld a, h
    add h
    db $f4
    inc c
    db $e4
    inc e
    rst $28
    ld b, $07
    ld a, [bc]
    dec bc
    rst $38
    ld [$060c], a
    rlca
    db $fd
    nop
    rst $38
    add sp, $16
    rla
    dec c
    ld e, $1c
    dec e
    ld a, a
    ld e, $1f
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    ld a, [hl-]
    ld e, $ff
    pop hl
    ld [hl], a
    ld c, $16
    rla
    ldh [$e9], a
    ld h, $27
    dec c
    jp hl


    ld [c], a
    xor $fb
    and $0e
    ld h, $27
    ret nz

    jp hl


    ld [hl], $37

jr_04c_70fc:
    rrca
    dec e
    ld a, [de]
    rst $38
    ld [$361b], a
    scf
    and b
    jp hl


    nop
    nop
    nop
    rlca
    ld a, [bc]
    ld a, [bc]
    ld [$ecff], sp
    xor $eb
    ldh [rIE], a
    ldh [rIE], a

jr_04c_7115:
    ldh [$f9], a
    nop
    nop
    nop

    db $ff, $00, $01, $01, $03, $02, $07, $05, $06, $ff, $07, $0c, $0a, $1d, $17, $19
    db $17, $19, $ff, $0a, $1d, $05, $0e, $02, $07, $01, $03, $f7, $00, $01, $00, $ff
    db $e2, $ec, $fe, $56, $bb, $ff, $ff, $13, $ff, $13, $6f, $f3, $fe, $e1, $ff, $bf
    db $e0, $3d, $a6, $ee, $f7, $df, $37, $ff, $ff, $17, $7f, $97, $bf, $df, $7e, $ff
    db $fb, $30, $78, $dc, $e3, $00, $00, $01, $03, $06, $ff, $8f, $cb, $fc, $b7, $78
    db $ef, $33, $fd, $ff, $23, $ef, $30, $f7, $38, $fd, $1e, $fb, $df, $1f, $f9, $fb
    db $70, $f8, $e0, $e5, $80, $c0, $ff, $5b, $ff, $b4, $6f, $ff, $20, $fb, $27, $ff
    db $ff, $27, $ee, $37, $fe, $17, $ff, $17, $3f, $bf, $d7, $fe, $ff, $34, $7e, $c0
    db $e5, $7a, $e0, $ff, $81, $81, $c1, $c0, $c1, $c0, $c0, $80, $ff, $c0, $00, $00
    db $c1, $e3, $e3, $32, $f3, $ff, $32, $f1, $f3, $60, $f1, $00, $00, $18, $ff, $3c
    db $2c, $76, $5e, $e6, $b6, $ce, $6e, $ff, $9e, $74, $8e, $ba, $c7, $5d, $e3, $2d
    db $ff, $73, $5a, $e7, $b7, $cf, $ef, $1f, $dc, $ef, $3f, $f8, $fc, $f0, $a0, $e0
    db $03, $07, $06, $ff, $05, $07, $04, $07, $04, $1b, $3c, $65, $ff, $fe, $bb, $c6
    db $7b, $b6, $d5, $2e, $fb, $ff, $1c, $eb, $1c, $7f, $84, $df, $e4, $7f, $b7, $ff
    db $1d, $3f, $85, $e1, $80, $c0, $ff, $e1, $cc, $ff, $de, $b2, $ff, $dd, $e3, $bd
    db $db, $ea, $ff, $97, $fe, $8f, $f7, $8f, $bf, $c3, $ef, $df, $f3, $fd, $ff, $8e
    db $df, $42, $e5, $03, $02, $fb, $3b, $7e, $ce, $e0, $86, $df, $3e, $bf, $7e, $ff
    db $df, $3e, $7e, $87, $bf, $c7, $67, $ff, $ef, $3e, $7f, $0c, $1e, $42, $e5, $c0
    db $60, $e0, $ff, $60, $e0, $30, $f0, $70, $e0, $70, $c0, $ff, $60, $a0, $70, $e0
    db $30, $d0, $38, $78, $07, $98, $f8, $f8, $20, $e1, $00, $00

    nop
    add b
    ld a, l
    rra
    ld l, b
    ld c, h
    ld l, b
    nop
    nop

    db $ff, $7c, $fe, $fa, $87, $bd, $c3, $7e, $c1, $ff, $7b, $4c, $7d, $4e, $7e, $4f
    db $7e, $4f, $ff, $7d, $4e, $7b, $4c, $7f, $40, $7e, $41, $7f, $7b, $47, $3f, $7f
    db $1e, $3f, $00, $ff, $e3, $ff, $80, $81, $c3, $46, $ef, $ab, $7c, $d7, $ff, $38
    db $ff, $13, $dd, $33, $af, $70, $77, $7f, $f8, $ed, $fe, $c3, $e7, $81, $c3, $e2
    db $e4, $ff, $00, $03, $07, $87, $c4, $4f, $fc, $bf, $ff, $70, $ef, $3c, $e7, $2c
    db $e7, $24, $e7, $ff, $34, $dd, $3e, $fb, $1e, $ba, $db, $f9, $f7, $fb, $30, $79
    db $c0, $e5, $83, $c7, $8c, $df, $ff, $d7, $78, $af, $f0, $df, $e6, $bb, $c6, $ff
    db $5f, $e0, $cf, $70, $bb, $7c, $f7, $3f, $ef, $f3, $f7, $e0, $f0, $be, $e5, $00
    db $80, $80, $df, $c0, $40, $e0, $e0, $60, $fe, $e3, $a0, $70, $7f, $f0, $30, $70
    db $b0, $f0, $f0, $60, $e0, $e0, $ff, $06, $0f, $0b, $1d, $17, $39, $2d, $73, $ff
    db $5b, $67, $5d, $63, $2e, $71, $17, $38, $ff, $0b, $1c, $16, $39, $6d, $f3, $fb
    db $87, $bf, $f7, $8f, $7e, $ff, $3c, $7e, $60, $e0, $01, $fb, $01, $81, $ff, $e1
    db $86, $8f, $19, $bf, $ae, $ff, $f1, $5e, $ed, $75, $cb, $fe, $c7, $fa, $ff, $c7
    db $df, $e1, $37, $f9, $1f, $3f, $07, $df, $0f, $00, $00, $c0, $e0, $b2, $e1, $f0
    db $30, $ff, $f3, $37, $7c, $bf, $f7, $b8, $ef, $b6, $ff, $7a, $a5, $ff, $23, $fd
    db $23, $ef, $30, $bf, $fb, $3c, $f7, $ff, $63, $f7, $80, $e6, $00, $ff, $0e, $9f
    db $b7, $f9, $5f, $e1, $77, $cf, $ff, $af, $df, $b7, $cf, $df, $e1, $ef, $f1, $bf
    db $d9, $ff, $cf, $df, $83, $c7, $00, $e3, $60, $ff, $f0, $f0, $90, $f0, $98, $f8
    db $0c, $fc, $ff, $9c, $f8, $9c, $f0, $98, $e8, $9c, $b8, $ff, $cc, $f4, $ce, $de
    db $e6, $be, $fe, $1c, $07, $be, $00, $00, $00, $00

    nop

    db $ff, $ff, $ff, $bf, $c0, $ff, $bf, $e0, $a0, $9e, $fe, $f5, $ff, $ff, $ff, $00
    db $fd, $e0, $ff, $f6, $ff, $7f, $ff, $fd, $03, $ff, $fd, $07, $05, $fe, $f5, $00
    db $00, $00, $fb, $e0, $a0, $fe, $f5, $ff, $bf, $bf, $c0, $ff, $eb, $ff, $00, $ff
    db $f6, $ff, $e3, $e0, $ff, $ff, $07, $fd, $05, $fe, $f5, $ff, $fd, $fd, $03, $ff
    db $ff, $00, $00, $00, $15, $00, $ff, $ec, $ff, $ff, $fc, $00, $fe, $ec, $ef, $ed
    db $ff, $f5, $7f, $82, $00, $12, $00, $36, $00, $66, $91, $e2, $ff, $04, $00, $08
    db $00, $19, $00, $13, $00, $c7, $33, $00, $37, $8f, $ee, $a6, $e9, $a0, $e4, $ff
    db $89, $ff, $ff, $f7, $89, $fb, $fd, $8b, $7d, $fb, $f7, $8d, $fb, $fd, $7f, $e0
    db $fe, $23, $ff, $6f, $ff, $b3, $7f, $bf, $69, $bf, $6f, $b5, $6f, $fd, $b3, $6f
    db $e0, $ef, $12, $ff, $76, $9b, $f6, $ff, $fb, $16, $fb, $76, $9b, $7f, $9f, $ff
    db $ff, $00, $fe, $ff, $46, $ff, $da, $67, $df, $bf, $7f, $c6, $7f, $de, $67, $fe
    db $4f, $e1, $3f, $ff, $e4, $3f, $ed, $36, $ed, $f6, $2d, $f6, $fa, $fa, $e0, $36
    db $10, $ef, $80, $80, $80, $ff, $80, $e1, $c8, $fb, $e0, $05, $e0, $fa, $e1, $fb
    db $c1, $00, $ad, $00, $f9, $40, $12, $e2, $f0, $c0, $01, $01, $01, $ff, $01, $99
    db $6b, $fb, $e0, $e5, $c0, $01, $01, $d8, $e1, $ce, $e0, $a3, $e3, $80, $de, $ce
    db $e3, $ce, $c1, $bc, $c0, $2d, $00, $f2, $b8, $c4, $c3, $d8, $e1, $ce, $e0, $1b
    db $01, $f5, $ce, $e3, $6e, $ce, $cf, $cc, $77, $00, $7f, $fe, $e0, $b9, $c1, $f7
    db $08, $0f, $f3, $0c, $f9, $06, $8f, $c9, $83, $c1, $06, $e7, $fe, $c3, $7f, $ff
    db $1f, $f0, $1f, $f6, $1f, $f7, $fa, $e0, $ff, $fe, $1f, $f6, $16, $f0, $10, $ff
    db $f0, $ff, $df, $ff, $88, $ff, $da, $ff, $db, $ff, $bf, $db, $fe, $db, $da, $cb
    db $ca, $7d, $c1, $8d, $df, $ff, $af, $ff, $ad, $fd, $fe, $e0, $ad, $85, $ff, $85
    db $ff, $0e, $fb, $ff, $18, $ff, $5a, $fe, $fe, $e0, $1a, $ff, $da, $da, $1a, $1a
    db $ff, $ff, $70, $df, $f8, $8f, $f8, $df, $f8, $df, $dd, $f0, $fe, $e0, $d8, $cf
    db $c8, $10, $cd, $80, $bc, $ff, $80, $e3, $80, $9f, $80, $f0, $80, $8f, $fe, $fc
    db $e0, $df, $80, $80, $00, $ce, $00, $39, $ff, $00, $c7, $00, $78, $00, $8f, $00
    db $f0, $fb, $00, $1f, $e2, $a0, $cc, $00, $3b, $00, $c6, $7b, $00, $79, $f0, $e5
    db $01, $1d, $01, $e7, $22, $e2, $df, $0f, $01, $f9, $01, $07, $ea, $c1, $c1, $c9
    db $3f, $c0, $ca, $c0, $cb, $c0, $c9, $fc, $e0, $fe, $e0, $fe, $c0, $a1, $7f, $7f
    db $1f, $1f, $0f, $4f, $0f, $ff, $4f, $0b, $2b, $4b, $6b, $df, $20, $cf, $ff, $30
    db $67, $98, $67, $98, $23, $dc, $23, $ff, $dc, $01, $fe, $01, $fe, $f8, $07, $fc
    db $ff, $03, $9c, $63, $cc, $33, $66, $99, $66, $1f, $99, $22, $dd, $02, $fd, $08
    db $e5, $02, $eb, $b6, $a2, $bc, $93, $af, $83, $a1, $3f, $e1, $3f, $ef, $fe, $e0
    db $e3, $7e, $fa, $e1, $29, $ef, $29, $ff, $03, $fe, $10, $e4, $fe, $0c, $e0, $5a
    db $08, $08, $ff, $80, $ff, $f8, $f7, $c7, $fc, $d7, $fe, $e0, $c7, $fc, $df, $dc
    db $f3, $47, $44, $60, $bd, $04, $c0, $9b, $80, $f6, $80, $ff, $cd, $80, $bb, $80
    db $e6, $80, $99, $80, $dd, $f7, $20, $a0, $cf, $00, $70, $02, $e0, $76, $00, $f7
    db $99, $00, $e6, $f4, $c0, $ff, $00, $c3, $00, $f7, $fc, $00, $03, $fc, $e0, $27
    db $00, $dc, $00, $fd, $33, $f4, $a0, $9f, $01, $71, $01, $8f, $01, $7f, $79, $01
    db $c7, $01, $3d, $01, $e3, $0a, $e2, $d7, $cd, $c4, $cd, $00, $e0, $cd, $fe, $c1
    db $4b, $6b, $ef, $0b, $2b, $0b, $4b, $fe, $e4, $0b, $0b, $4b, $be, $d0, $87, $01
    db $ff, $03, $ff, $07, $c0, $82, $10, $2f, $ff, $60, $ff, $c0, $57, $e0, $88, $56
    db $c0, $0c, $c5, $78, $04, $c7, $b4, $89, $fe, $d0, $3e, $e1, $3f, $ed, $fe, $e5
    db $f7, $2d, $e1, $21, $7d, $81, $11, $ff, $55, $ff, $ff, $75, $ff, $75, $df, $75
    db $55, $70, $50, $3a, $e0, $81, $ab, $fe, $e5, $aa, $83, $82, $60, $9f, $ff, $ff
    db $dc, $ff, $ff, $f8, $f7, $0f, $ff, $9e, $fe, $e0, $be, $ff, $f7, $3c, $ff, $7d
    db $fe, $e0, $ff, $ff, $30, $ff, $ff, $70, $ff, $71, $ff, $e3, $ff, $e7, $ff, $f9
    db $ef, $b0, $63, $bd, $fc, $ff, $f8, $87, $ff, $b4, $8b, $ff, $b5, $fe, $e1, $b5
    db $22, $a0, $f0, $62, $12, $e1, $d5, $7f, $ff, $d5, $55, $db, $5b, $ff, $7f, $6f
    db $60, $ff, $e0, $1f, $f0, $5f, $f0, $1f, $f0, $7f, $03, $70, $1f, $e2, $80, $6e
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f8, $ff, $ff, $ff, $ff, $91, $52
    db $63, $00, $1e, $00, $71, $af, $00, $4f, $00, $32, $95, $60, $40, $32, $62, $01
    db $eb, $00, $fe, $3e, $a2, $a7, $24, $80, $00, $01, $32, $ff, $01, $dc, $01, $62
    db $01, $be, $01, $c6, $0f, $01, $78, $01, $9e, $b1, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $b8, $ff, $ff, $ff, $ff, $34, $22, $3f, $00, $60, $48, $60, $70, $cb, $00
    db $0f, $3a, $80, $5f, $22, $20, $30, $6c, $01, $e6, $ef, $01, $38, $01, $8e, $06
    db $e0, $86, $01, $f8, $07, $01, $06, $01, $b0, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $5c, $ff, $ff, $35, $03, $6f, $00, $1a, $44, $60, $4d, $4a, $40, $7f
    db $76, $00, $19, $7f, $00, $00, $3e, $40, $62, $d7, $9b, $00, $6c, $2a, $40, $f8
    db $f5, $a0, $60, $01, $77, $9e, $01, $70, $fe, $c2, $c6, $01, $3c, $f0, $7f, $80
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f8, $f7, $20, $00
    db $92, $65, $82, $6d, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff
    db $00, $f0, $f2, $00, $00

    nop

    db $5b, $29, $09, $ff, $ee, $29, $0b, $ff, $e1, $08, $ff, $e3, $12, $e0, $f1, $0f
    db $ff, $e1, $e0, $f8, $0e, $ff, $e1, $c0, $e5, $b8, $e4, $1e, $f9, $e8, $29, $0d
    db $0d, $0d, $f3, $e7, $e0, $f0, $f3, $f6, $80, $e0, $ff, $e0, $ff, $e0, $ff, $e0
    db $ff, $e0, $ff, $e0, $ff, $a0, $c4, $2a, $08, $e0, $cf, $ed, $ea, $e0, $f0, $0a
    db $f3, $ea, $ff, $e5, $f5, $ea, $e0, $ff, $00, $e0, $ff, $e0, $ff, $dd, $a1, $00
    db $00

    nop

    db $fd, $02, $ff, $f0, $1a, $1b, $1c, $1d, $1e, $90, $7c, $ff, $e3, $e0, $f1, $2a
    db $2b, $2c, $2d, $2e, $e0, $e4, $7d, $08, $ff, $f0, $3a, $3b, $3c, $3d, $3e, $c0
    db $e4, $f7, $18, $10, $11, $ff, $ec, $12, $18, $4a, $4b, $f7, $4c, $4d, $4e, $a0
    db $e4, $28, $20, $21, $22, $e6, $fe, $eb, $23, $28, $85, $e4, $7e, $e2, $38, $30
    db $5d, $6b, $5e, $5f, $fd, $e3, $21, $f6, $e3, $33, $38, $e0, $e9, $5f, $03, $20
    db $6d, $6e, $6f, $fd, $e3, $31, $f6, $e3, $fb, $23, $03, $c0, $e9, $09, $30, $7d
    db $7e, $7f, $5a, $fd, $e3, $21, $f6, $e3, $33, $09, $a0, $e9, $19, $80, $ef, $e5
    db $19, $80, $e9, $29, $80, $e7, $77, $e0, $31, $32, $31, $17, $32, $33, $29, $60
    db $e9, $39, $80, $e7, $77, $e0, $40, $e2, $45, $39, $40, $e9, $04, $80, $e7, $77
    db $e0, $c0, $e2, $04, $20, $e9, $ed, $06, $00, $ee, $33, $07, $00, $e9, $16, $13
    db $14, $b6, $ff, $ec, $15, $17, $e0, $c9, $26, $27, $fe, $e4, $24, $b5, $25, $f6
    db $e5, $27, $c0, $c9, $36, $37, $fe, $e4, $34, $b5, $35, $f6, $e5, $37, $a0, $c9
    db $46, $47, $fe, $e4, $34, $d5, $35, $f6, $e5, $47, $80, $c9, $01, $ff, $e5, $34
    db $35, $00, $f5, $e6, $60, $c9, $00, $00

    nop

    db $6f, $ff, $ff, $fd, $83, $fe, $e5, $81, $ff, $ff, $e1, $ab, $dd, $33, $fe, $e5
    db $11, $f0, $e1, $00, $fe, $f0, $cc, $ff, $fd, $ce, $f9, $7e, $f3, $3c, $f7, $38
    db $ff, $e7, $18, $ff, $40, $df, $60, $df, $6a, $ff, $5a, $ef, $5a, $ef, $5e, $e5
    db $fd, $76, $03, $85, $7a, $00, $00

    nop

    db $7f, $ff, $ff, $ff, $81, $81, $c3, $bd, $fe, $e2, $f5, $81, $f3, $e0, $00, $ff
    db $ec, $ff, $ff, $11, $11, $cd, $bb, $fe, $e4, $ff, $11, $e0, $ef, $ff, $ff, $00
    db $00, $9d, $cc, $ff, $e0, $78, $78, $30, $ff, $e0, $d4, $ef, $40, $7a, $ff, $e0
    db $4a, $ff, $e2, $44, $44, $74, $74, $b4, $ef, $ff, $f0, $f0, $f0, $10, $10, $10
    db $50, $b0, $02, $fe, $e1, $10, $f3, $e0, $92, $ed, $00, $00

    nop

    db $fb, $02, $03, $ff, $ee, $04, $14, $15, $16, $17, $ff, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $2b, $05, $20, $ff, $ee, $06, $e0, $fd, $00, $ff, $e8, $e0, $fd
    db $0b, $07, $08, $ff, $ee, $09, $c0, $e9, $00, $00

    nop

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f4, $00, $00

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_04c_7bff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
