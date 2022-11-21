INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04f", ROMX[$4000], BANK[$4f]

    ld b, l
    ld d, [hl]
    adc e
    ld h, c

    db $9c, $61, $84, $61

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
    push af
    ld [hl], l
    push af
    ld [hl], l
    ld a, [$fa7a]
    ld a, d
    push af
    ld [hl], l
    push af
    ld [hl], l
    ld a, [$fa7a]
    ld a, d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    adc c
    adc c
    adc c
    adc c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    adc c
    adc c
    adc c
    adc c
    cp a
    cp h
    cp a
    cp h
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    cp a
    cp h
    cp a
    cp h
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld a, [$fa1a]
    ld a, [de]
    db $fd
    dec e
    db $fd
    dec e
    ld a, [$fa1a]
    ld a, [de]
    db $fd
    dec e
    db $fd
    dec e
    sub c
    sub c
    sub c
    sub c
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    sub c
    sub c
    sub c
    sub c
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    cp a
    cp b
    cp a
    cp b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    cp a
    cp b
    cp a
    cp b
    db $fd
    dec c
    db $fd
    dec c
    cp $0e
    cp $0e
    db $fd
    dec c
    db $fd
    dec c
    cp $0e
    cp $0e
    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [$7f], a
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
    inc bc
    rst $38
    inc bc
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
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    adc c
    adc c
    adc c
    adc c
    ld [hl+], a
    ld [hl+], a
    and e
    and e
    rst $38
    rst $38
    rst $38
    ld a, [hl]
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
    ei
    dec de
    ld a, [$fd1a]
    dec e
    db $fd
    dec e
    ld a, [$fa1a]
    ld a, [de]
    db $fd
    dec e
    db $fd
    dec e
    db $fd
    dec c
    db $fd
    dec c
    cp $0e
    cp $0e
    db $fd
    dec c
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $2222
    ld [hl+], a
    ld [hl+], a
    adc c
    adc c
    adc c
    adc c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    nop
    ld a, [$fa1a]
    ld a, [de]
    db $fd
    dec e
    db $fd
    dec e
    cp $1e
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld bc, $9191
    sub c
    sub c
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    sub c
    sub c
    sub c
    sub c
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    cp a
    cp b
    cp a
    cp b
    ld a, a
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    sub e
    sub e
    sub e
    sub e
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    sub e
    sub e
    sub e
    sub e
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    push af
    ld [hl], l
    push af
    ld [hl], l
    ld a, [$fa7a]
    ld a, d
    db $fd
    ld a, l
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    cp a
    cp h
    cp a
    cp h
    ld e, a
    ld e, h
    ld a, a
    ld a, h
    cp a
    cp h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    db $eb
    ld l, d
    db $eb
    ld l, d
    rst $10
    ld d, [hl]
    rst $10
    ld d, [hl]
    db $eb
    ld l, d
    db $eb
    ld l, d
    rst $10
    ld d, [hl]
    rst $10
    ld d, [hl]
    rst $30
    inc d
    rst $30
    inc d
    rst $38
    inc e
    rst $38
    inc e
    rst $30
    inc d
    rst $30
    inc d
    rst $38
    inc e
    rst $38
    ld [$6aeb], sp
    db $eb
    ld l, d
    rst $10
    ld d, [hl]
    rst $10
    ld d, [hl]
    db $eb
    ld l, d
    db $eb
    ld l, d
    rst $30
    db $76
    rst $38
    inc a
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
    sub e
    sub e
    sub e
    sub e
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    sub e
    sub e
    sub e
    sub e
    rst $00
    add $ff
    ld a, h
    ld a, [de]
    add hl, de
    dec de
    dec d
    ld d, $00
    dec d
    ld d, $00
    inc e
    dec e
    nop
    add hl, bc
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld [bc], a
    ld a, [bc]
    dec bc
    inc c
    dec c
    rlca
    ld [bc], a
    ld [$0207], sp
    ld [$0207], sp
    ld [$0207], sp
    ld [$100f], sp
    ld de, $0504
    ld b, $04
    dec b
    ld b, $04
    dec b
    ld b, $04
    dec b
    ld b, $0e
    dec b
    ld b, $12
    inc de
    inc d
    ld bc, $0302
    ld bc, $0302
    ld bc, $0302
    ld bc, $0302
    ld bc, $0302
    ld bc, $0302
    rla
    db $10
    jr jr_04f_4238

    ld [bc], a

jr_04f_4238:
    inc bc
    ld bc, $0302
    ld bc, $0302
    ld bc, $0302
    ld bc, $0302
    ld bc, $0302
    ld bc, $0302
    rla
    db $10
    jr jr_04f_424f

jr_04f_424f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    inc bc
    rlca
    ld b, $05
    ld b, $0c
    rrca
    inc a
    inc a
    rst $20
    rst $38
    add c
    rst $38
    nop
    rst $38
    sbc c
    ld h, [hl]
    rst $38
    nop
    inc a
    jp $9966


jr_04f_427e:
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ldh [$60], a
    and b
    ld h, b
    jr nc, jr_04f_427e

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld [hl], b
    ld a, a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
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
    ld c, $ff
    rrca
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
    ld a, [hl]
    rst $38
    inc a
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
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
    rra
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
    nop
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $fe
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
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
    ret nz

    ret nz

    ret nz

    ret nz

    ld [$080f], sp
    rrca
    add hl, de
    rra
    ld de, $131f
    rra
    rla
    rra
    dec e
    rra
    jr jr_04f_436d

    ld b, d
    cp l
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    inc a
    rst $38
    inc h
    rst $38
    ld h, [hl]
    rst $38
    jp Jump_000_10ff


    ldh a, [rNR10]
    ldh a, [$98]
    ld hl, sp-$78
    ld hl, sp-$38
    ld hl, sp-$18
    ld hl, sp-$48
    ld hl, sp+$18

jr_04f_436d:
    ld hl, sp+$03
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
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

jr_04f_439a:
    nop
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
    rst $38
    nop
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rNR10]
    rra
    jr nc, jr_04f_4401

    jr nz, jr_04f_4403

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld d, b
    ld l, a
    ld a, b
    ld b, a
    db $ed
    jp nc, $ff00

    jp $82ff


    rst $38
    jp Jump_000_00ff


    rst $38
    ld b, d
    cp l
    rst $20
    jr jr_04f_439a

    ld b, d
    ld [$0cf8], sp
    db $fc
    inc b
    db $fc
    ld b, $fe
    ld [bc], a
    cp $0a
    or $1e
    ld [c], a
    or a
    ld c, e
    ld e, $1f
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
    jr c, jr_04f_443b

    jr c, jr_04f_443d

    ld a, b
    ld hl, sp+$38

jr_04f_4401:
    ld hl, sp+$38

jr_04f_4403:
    ld hl, sp+$38
    ld hl, sp+$38

jr_04f_4407:
    ld hl, sp+$38
    ld hl, sp+$1c
    db $fc
    inc e
    db $fc
    add a
    ld hl, sp-$7e
    db $fd
    sub b
    rst $38
    or b
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ld l, l
    ld a, a
    ld h, a
    ld a, a
    jr jr_04f_4407

    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    jp $e7ff


    rst $38
    cp l
    rst $38
    jr @+$01

    pop hl
    rra
    ld b, c
    cp a
    add hl, bc
    rst $38
    dec c
    rst $38
    dec e
    rst $38
    rra
    rst $38
    or [hl]

jr_04f_443b:
    cp $e6

jr_04f_443d:
    cp $38
    ccf
    jr c, jr_04f_4481

    jr c, jr_04f_4483

    jr c, jr_04f_4485

    jr c, @+$41

    jr c, jr_04f_4489

    jr c, jr_04f_448b

    jr c, jr_04f_448d

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
    inc e
    db $fc
    inc e
    db $fc
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc b
    rst $20
    cp l

jr_04f_446d:
    jp nz, $ff00

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
    jp $e73c


    jr jr_04f_4481

    cp $02

jr_04f_4481:
    cp $03

jr_04f_4483:
    rst $38
    inc bc

jr_04f_4485:
    rst $38
    ld bc, $01ff

jr_04f_4489:
    rst $38
    add hl, de

jr_04f_448b:
    rst $20
    cp l

jr_04f_448d:
    ld b, e
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, h
    add e
    ld a, b
    add a
    jr nc, jr_04f_446d

    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ccf
    ret nz

    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [rIE], a
    nop
    nop
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    adc a
    ld [hl], b
    rlca
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
    add c
    ld a, [hl]
    jp Jump_000_003c


    rst $38
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    pop af
    ld c, $e0
    rra
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    nop
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    db $fc
    inc bc
    ld hl, sp+$07
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld a, $c1
    ld e, $e1
    inc c
    di
    and a
    ret c

    add d
    db $fd
    sub b
    rst $38
    cp b
    rst $38
    add sp, -$11
    ld c, b
    ld c, a
    dec c
    rrca
    rlca
    rlca
    inc a
    jp $e718


    nop
    rst $38
    ld b, d
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    ld a, [hl]
    push hl
    dec de
    ld b, c
    cp a
    add hl, bc
    rst $38
    dec e
    rst $38
    rla
    rst $30
    ld [de], a
    ld a, [c]
    or b
    ldh a, [$60]
    ld h, b
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
    rrca
    rst $38
    rra
    rst $38
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc

jr_04f_457f:
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    jr jr_04f_457f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    jr c, @+$41

    inc a
    ccf
    inc e
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ccf
    rst $38
    ld a, c
    ld sp, hl
    pop af
    pop af
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
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
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld c, $fe
    ld e, $fe
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, [hl]
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    dec e
    db $fd
    inc a
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    ld a, a
    ld a, b
    ld a, a
    inc bc
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
    rst $38
    ld c, $fe
    ld c, $fe
    db $fc
    rst $38
    sbc [hl]
    sbc a
    adc a
    adc a
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop

jr_04f_466c:
    nop
    nop
    inc e
    db $fc
    inc a
    db $fc
    jr c, jr_04f_466c

    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    jr c, jr_04f_46bf

    jr c, jr_04f_46c1

    inc e
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca

jr_04f_468a:
    inc bc
    inc bc
    nop
    nop
    inc e
    db $fc
    jr c, jr_04f_468a

    ld a, b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld [hl], a
    ld a, a
    ld [hl], l
    ld a, a
    ld a, d
    ld a, a
    ld a, d
    ld a, a
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
    ld a, l
    rst $38
    ld a, h

jr_04f_46bf:
    db $fc
    db $fc

jr_04f_46c1:
    db $fc
    db $fc
    db $fc
    call c, $bcfc
    db $fc
    cp h
    db $fc
    ld e, h
    db $fc
    ld e, h
    db $fc
    jr c, jr_04f_470f

    inc e
    rra
    ld e, $1f
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop

jr_04f_46dc:
    nop
    nop
    inc e
    db $fc
    inc e
    db $fc
    jr c, jr_04f_46dc

    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
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
    add b
    rst $38
    add b
    rst $38
    nop

jr_04f_470f:
    rst $38
    nop
    rst $38
    jr @+$01

    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    inc a
    rst $38
    jr @+$01

    ld c, $fe
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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

    ret nz

    ret nz

    ret nz

    ret nz

    db $e3
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    xor $fe
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ld sp, $0131
    ld bc, $fff0
    ldh a, [rIE]
    ld [hl], b
    ld a, a
    ld a, b
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    call z, Call_000_00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    call c, $dcff
    rst $38
    sbc h
    rst $38
    ld c, $ff
    ld c, $ff
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    add hl, sp
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rrca

jr_04f_479f:
    rst $38
    rrca
    rst $38
    ld c, $fe
    ld e, $fe
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    inc sp
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    ld [hl], a
    ld a, a
    ld a, $3e
    ld e, $1e
    adc h
    adc h
    add b
    add b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    ld c, $0f
    ld c, $0f
    ld c, $0f
    inc c
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, jr_04f_479f

    ld a, h
    add e
    cp $01
    rst $28
    stop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    db $e3
    ld a, $c1
    ld a, a
    add b
    rst $30
    ld [$e0e0], sp
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ldh [rSVBK], a
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$30]
    ldh a, [$03]
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    ld c, $0f
    ld e, $1f
    call z, $8eff
    rst $38
    add [hl]
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld b, $ff
    ld c, $ff
    inc e
    rst $38
    jr c, @+$01

    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    rlca
    rst $38
    inc bc
    rst $38
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
    rst $38
    nop
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp $ffff


    rst $38
    ld a, [hl]
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    inc e
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc sp
    rst $38
    ld [hl], c
    rst $38
    ld h, c
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$78]
    ld hl, sp+$0c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    dec c
    rrca
    rrca
    rrca
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $60fe
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    ld b, $f0
    rrca
    ldh [$1f], a
    ret nz

    ccf
    ld b, $ff
    ld c, $ff
    rrca
    rst $38
    rra
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    inc a
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc a
    ld h, b
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ldh [$1f], a

jr_04f_4900:
    ret nz

    ccf

jr_04f_4902:
    add b
    ld a, a

jr_04f_4904:
    ld b, $ff

jr_04f_4906:
    rrca
    rst $38

jr_04f_4908:
    rrca
    rst $38

jr_04f_490a:
    rrca
    rst $38
    rrca
    rst $38
    jr nc, jr_04f_4900

    jr nc, jr_04f_4902

    jr nc, jr_04f_4904

    jr nc, jr_04f_4906

    jr nc, jr_04f_4908

    jr nc, jr_04f_490a

    or b
    ldh a, [$f0]
    ldh a, [rNR32]
    rra
    inc e
    rra
    inc a
    ccf
    jr c, jr_04f_4965

    jr c, jr_04f_4967

jr_04f_4928:
    jr c, jr_04f_4969

jr_04f_492a:
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    jr c, jr_04f_4928

    jr c, jr_04f_492a

    inc a
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    ld e, $fe
    ld c, $fe
    rrca
    rrca
    ld b, $06
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, b
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    call c, $cfff
    rst $38
    adc a
    rst $38
    add a
    rst $38
    add b
    rst $38
    rra
    rst $38
    dec sp
    rst $38
    ld [hl], e
    rst $38
    pop hl

jr_04f_4965:
    rst $38
    pop bc

jr_04f_4967:
    rst $38
    add b

jr_04f_4969:
    rst $38
    nop
    rst $38
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
    ld a, [hl]
    rst $38
    inc a
    rst $38
    ld hl, sp-$01
    call c, $ceff
    rst $38
    add a
    rst $38
    add e
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld e, $fe
    rra
    rst $38
    rra
    rst $38
    dec sp
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    ld bc, $f0ff
    ldh a, [$60]
    ld h, b
    nop
    nop
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

    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld c, $fe
    ld c, $fe
    ld c, $fe
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca

jr_04f_49cb:
    rst $38
    rlca
    rst $38
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ldh [rSVBK], a
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$e0]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    cp $e3
    db $fc
    db $e3
    db $fc
    nop
    rst $38
    nop
    rst $38
    jr c, jr_04f_49cb

    ld a, h
    add e
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_04f_4a0f

jr_04f_4a0f:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @-$37

    cp $01
    rst $38
    nop
    rst $38
    nop
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
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    db $e3
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    inc e
    db $e3
    ld a, $c1
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    rst $00
    ccf
    rst $00
    ccf
    inc c
    rrca

jr_04f_4a60:
    inc c
    rrca

jr_04f_4a62:
    inc c
    rrca

jr_04f_4a64:
    inc c
    rrca

jr_04f_4a66:
    inc c
    rrca

jr_04f_4a68:
    inc c
    rrca

jr_04f_4a6a:
    inc c
    rrca

jr_04f_4a6c:
    inc c
    rrca

jr_04f_4a6e:
    jr nc, jr_04f_4a60

    jr nc, jr_04f_4a62

    jr nc, jr_04f_4a64

jr_04f_4a74:
    jr nc, jr_04f_4a66

    jr nc, jr_04f_4a68

    jr nc, jr_04f_4a6a

    jr nc, jr_04f_4a6c

    jr nc, jr_04f_4a6e

    rst $20
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add e
    ld a, h
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
    nop
    rst $38
    rst $20
    jr @+$01

jr_04f_4aa1:
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, $c1
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    rst $20
    jr jr_04f_4a74

jr_04f_4ab1:
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
    jp $ff3c


    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    jr jr_04f_4ab1

    nop
    rst $38
    nop
    rst $38
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    cp $01
    ld a, h
    add e
    jr c, jr_04f_4aa1

    nop
    rst $38
    nop
    rst $38
    pop bc
    ld a, $81
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
    rst $20
    rra
    rst $20
    rra
    rst $00
    ccf
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    ld c, $0f
    rlca
    rlca
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    rrca
    rst $38
    rst $20
    jr @+$01

    nop
    ld a, [hl]
    add c
    inc a
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    ld b, b

jr_04f_4b30:
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38

jr_04f_4b38:
    nop
    rst $38

jr_04f_4b3a:
    ld h, b
    rst $38
    ldh a, [rIE]
    jr nc, jr_04f_4b30

    jr nc, @-$0e

    jr nc, @-$0e

    jr nc, @-$0e

    jr nc, jr_04f_4b38

    jr nc, jr_04f_4b3a

    ld [hl], b
    ldh a, [$e0]
    ldh [$e0], a
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    db $e3
    rst $38
    ld [hl], a
    ld a, a
    ld a, a
    ld a, a
    ld a, $3e
    inc e
    inc e
    jr nc, @+$01

    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    sbc h
    sbc a
    ld c, $0f
    ld c, $0f
    ld b, $07
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
    inc bc
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld a, b
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    call c, $9edf
    sbc a
    nop
    rst $38
    inc c
    rst $38
    ld e, $ff
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec sp
    ei
    ld a, c
    ld sp, hl
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
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    inc c
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    add hl, sp
    ld sp, hl
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$60]
    ldh [rTAC], a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    xor $fe
    cp $fe
    ld a, h
    ld a, h
    jr c, jr_04f_4c06

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
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$01
    cp b
    cp a
    inc e
    rra
    ld c, $0f
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    rra
    rst $38
    rra
    rst $38
    dec sp
    ei
    ld [hl], e
    di
    db $e3
    db $e3
    db $e3
    db $e3
    jp Jump_000_03c3


    inc bc
    add c
    rst $38
    add c
    rst $38
    jp $c3ff


    rst $38

jr_04f_4c06:
    rst $20
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    call c, $cedf
    rst $08
    rst $00
    rst $00
    rst $00
    rst $00
    jp $c0c3


    ret nz

    dec de
    ei
    add hl, de
    ld sp, hl
    jr nc, @-$0e

    ld [hl], b
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    ldh [$e0], a
    ret nz

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
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rlca
    rst $38
    rrca
    rst $38
    sbc [hl]
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    sbc [hl]
    sbc a
    rra
    rra
    rra
    rra
    rra
    rra
    dec de
    rra
    dec de
    rra
    dec e
    rra
    dec e
    rra
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
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, c
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ret c

    ld hl, sp+$58
    ld hl, sp-$48
    ld hl, sp-$48
    ld hl, sp-$20
    rst $38
    ldh a, [rIE]
    ld a, c
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    ldh [$e0], a
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
    inc sp
    inc a
    scf
    jr c, @+$71

    ld [hl], b
    ld l, h
    ld [hl], e
    ld b, b
    ld a, a

jr_04f_4cb8:
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    ld a, [hl]
    db $db
    inc h
    rst $38
    nop
    rst $38
    nop
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call z, $ec3c
    inc e
    or $0e
    ld [hl], $ce
    ld [bc], a
    cp $03
    rst $38
    ld bc, $01ff
    rst $38
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $28
    ldh a, [$df]
    ldh [$de], a
    pop hl
    adc h
    di
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ld a, c
    add [hl]
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rNR34], a
    pop hl
    inc c
    di
    ld a, a
    add b
    rst $38
    nop
    db $e3
    inc e
    pop bc
    ld a, $80
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_04f_4d1d:
    rst $38
    add c
    ld a, [hl]
    jp $e73c


    jr @+$01

    nop
    rst $38
    nop
    ld a, [hl]
    add c
    inc a
    jp $e718


    cp $01
    rst $38
    nop
    rst $00
    jr c, jr_04f_4cb8

    ld a, h
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [$9e]
    ld h, c
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, b
    add a
    jr nc, jr_04f_4d1d

    rst $30
    rrca
    ei
    rlca
    ld a, e
    add a
    ld sp, $01cf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
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

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $ff8c
    inc c
    rst $38
    inc e
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    nop
    rst $38
    jr @+$01

    inc a
    rst $38
    ld a, [hl]
    rst $38
    ld h, [hl]
    rst $38
    jp $81ff


    rst $38
    nop
    rst $38
    ld sp, $30ff
    rst $38
    jr c, @+$01

    dec a
    rst $38
    ccf
    rst $38
    daa
    rst $38
    db $e3
    rst $38
    pop bc
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
    ld bc, $0001
    rst $38
    ld b, $ff
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $30
    rst $30
    rst $28
    rst $28
    nop
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld a, $ff
    ld a, $ff
    ld [hl], a
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    jr nc, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    xor $ff
    rst $00
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    rst $38
    rst $28
    rst $28
    rst $30
    rst $30
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

    add b
    add b
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    ld b, $07
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    jr jr_04f_4e4d

    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld b, $ff
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
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop

jr_04f_4e4d:
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$60], a
    ldh [$30], a
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [rNR23]
    ld hl, sp-$21
    rst $18
    dec e
    rra
    dec a
    ccf
    jr c, jr_04f_4ea5

    jr c, jr_04f_4ea7

    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    add c
    rst $38
    add e
    rst $38
    rst $00
    rst $38
    cp $ff
    ld a, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    jp $83ff


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
    rst $38
    nop
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp $c3ff


    rst $38
    rst $20
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    jp $c1ff


    rst $38
    add b
    rst $38
    add b

jr_04f_4ea5:
    rst $38
    nop

jr_04f_4ea7:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    di
    cp b
    ld hl, sp+$38
    ld hl, sp+$1c
    db $fc
    inc e
    db $fc
    ld c, $fe
    ld c, $fe
    ld c, $fe
    jr jr_04f_4eef

    add hl, de
    ld e, $33

jr_04f_4ed3:
    inc a
    scf
    jr c, jr_04f_4f0d

    add hl, sp
    jr nc, jr_04f_4f19

    jr nc, jr_04f_4f1b

    ld sp, $003f
    rst $38
    add b
    ld a, a
    pop bc
    ld a, $e3
    inc e
    ld a, a
    add b
    ld a, $c1
    inc e
    db $e3
    nop
    rst $38
    nop

jr_04f_4eef:
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    jp $e73c


    jr @+$80

    add c
    inc a
    jp $e718


    nop
    rst $38
    ld bc, $83fe
    ld a, h
    rst $00

jr_04f_4f05:
    jr c, jr_04f_4f05

    ld bc, $837c
    jr c, jr_04f_4ed3

    nop

jr_04f_4f0d:
    rst $38
    jr @-$06

    sbc b
    ld a, b
    call z, $ec3c
    inc e
    ld l, h
    sbc h
    inc c

jr_04f_4f19:
    db $fc
    inc c

jr_04f_4f1b:
    db $fc
    adc h
    db $fc
    nop
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
    ld bc, $0101
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rlca
    rst $38
    rlca
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
    add b
    add b
    add b
    add b
    add b
    add b
    inc sp
    ccf
    scf
    ccf
    ccf
    ccf
    dec de
    dec de
    rlca
    rlca
    ld b, $07
    inc c
    rrca
    inc c
    rrca
    inc bc
    rst $38
    add a
    rst $38
    adc [hl]
    rst $38
    sbc h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld h, b
    rst $38
    nop
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp $c3ff


    rst $38
    rst $20
    rst $38
    ld h, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    ld [hl], c
    rst $38
    add hl, sp
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld b, $ff
    nop
    rst $38
    call z, $ecfc
    db $fc
    db $fc
    db $fc
    ret c

    ret c

    ldh [$e0], a
    ld h, b
    ldh [$30], a
    ldh a, [$30]
    ldh a, [rSB]
    ld bc, $0101
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
    ret nz

    rst $38
    ret nz

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
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
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

    inc c
    rrca

jr_04f_4ff0:
    jr jr_04f_5011

    jr jr_04f_5013

    jr jr_04f_5015

    jr jr_04f_5017

    jr nc, @+$41

jr_04f_4ffa:
    jr nc, jr_04f_503b

jr_04f_4ffc:
    jr nc, jr_04f_503d

jr_04f_4ffe:
    jr nc, jr_04f_4ff0

jr_04f_5000:
    jr jr_04f_4ffa

    jr jr_04f_4ffc

    jr jr_04f_4ffe

    jr jr_04f_5000

    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc bc
    inc bc
    inc bc

jr_04f_5011:
    inc bc
    inc bc

jr_04f_5013:
    inc bc
    inc bc

jr_04f_5015:
    inc bc
    inc bc

jr_04f_5017:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    db $fc
    add a
    ld hl, sp-$71
    ldh a, [$9e]
    pop hl
    cp h
    jp $c7b8


    sub b
    rst $28
    add b
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    inc a
    jp $e01f


    rrca

jr_04f_503b:
    ldh a, [$03]

jr_04f_503d:
    db $fc
    nop
    rst $38
    ld e, $e1
    ccf
    ret nz

    ld a, a
    add b
    di
    inc c
    pop hl
    ld e, $c0
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    jp $ff3c


    nop
    rst $38
    nop
    inc a
    jp $ff00


    ld a, b
    add a
    db $fc
    inc bc
    cp $01
    rst $08
    jr nc, jr_04f_4ff0

    ld a, b
    inc bc
    db $fc
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3c], a
    jp Jump_000_07f8


    ldh a, [rIF]
    ret nz

    ccf
    pop bc
    ccf
    pop hl
    rra
    pop af
    rrca
    ld a, c
    add a
    dec a
    jp $e31d


    add hl, bc
    rst $30
    ld bc, $c0ff
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

    jr nc, jr_04f_50df

    ld sp, $333e
    inc a
    scf
    jr c, @+$38

    add hl, sp
    inc [hl]
    dec sp
    jr nc, jr_04f_50eb

    jr nc, jr_04f_50ed

    inc c
    db $fc
    adc h
    ld a, h
    call z, $ec3c
    inc e
    ld l, h
    sbc h
    inc l
    call c, $fc0c
    inc c
    db $fc
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
    ld bc, $0101
    ld bc, $0000
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    ld sp, hl
    ld sp, hl
    ldh a, [$f0]
    nop

jr_04f_50df:
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
    ret nz

jr_04f_50eb:
    rst $38
    ret nz

jr_04f_50ed:
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
    inc e
    rst $38
    ld a, $ff
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
    jr c, @+$01

    ld a, h
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $c1ff
    rst $38
    pop af
    rst $38
    ei
    rst $38
    sbc a
    sbc a
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
    inc sp
    ccf
    scf
    ccf
    ccf
    ccf
    dec e
    dec e
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
    add b
    rst $38
    add c
    rst $38
    jp $c7ff


    rst $38
    rst $28
    rst $38
    ld a, l
    ld a, l
    add hl, sp
    add hl, sp
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    jp $c3ff


    rst $38
    rst $20
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    ld bc, $81ff
    rst $38
    jp $e3ff


    rst $38
    rst $30
    rst $38
    cp [hl]
    cp [hl]
    sbc h
    sbc h
    call z, $ecfc
    db $fc
    db $fc
    db $fc
    cp b
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], c
    ld a, a
    ld [hl], e
    ld a, a
    ccf
    ccf
    ld a, $3e
    inc e
    inc e
    nop
    nop
    rst $38
    rst $38
    rst $28
    rst $28
    rst $08
    rst $08
    adc [hl]
    adc a
    dec c
    rrca
    dec c
    rrca
    ld c, $0f
    ld c, $0f
    nop
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp $c3ff


    rst $38
    ld h, [hl]
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    db $e3
    db $e3
    ld h, c
    pop hl
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh [rTAC], a
    rst $38
    rlca
    rst $38
    adc [hl]
    cp $ce
    cp $fc
    db $fc
    ld a, h
    ld a, h
    jr c, jr_04f_5214

    nop
    nop
    jr jr_04f_51f8

    inc h
    inc a
    ld b, d
    ld a, [hl]
    ld e, d
    ld h, [hl]
    and l
    db $db
    add c
    rst $38
    db $db
    rst $38
    and l
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_04f_51f8:
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    rst $38
    inc h
    rst $38
    nop
    rst $38
    and l
    ld e, d
    ld e, d
    and l
    nop
    rst $38
    and l
    rst $38
    ld e, d
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b

jr_04f_5214:
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and l
    ld e, d
    ld e, d
    and l
    and l
    rst $38
    and l
    rst $38
    ld a, d
    ld a, d
    nop
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    ld sp, hl
    nop
    ld a, [$fcfb]
    db $fd
    cp $ff
    ld bc, $0302
    rrca
    db $10
    ld de, $1817
    add hl, de
    inc e
    dec e
    ld e, $21
    ld [hl+], a
    inc hl
    dec l
    ld l, $2f
    nop
    and [hl]
    and a
    xor b
    nop
    or d
    or e
    or h
    or l
    or [hl]
    cp l
    cp [hl]
    inc d
    cp a
    ret nz

    ret z

    ret


    jp z, $cccb

    pop de
    jp nc, $d4d3

    push de
    jp c, $1414

    inc d
    db $db
    push hl
    ret


    jp z, $e6cb

    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    ld c, d
    ld c, e
    ld c, h
    inc d
    ld c, h
    ld c, l
    ld c, [hl]
    ld d, a
    ld e, b
    ld e, c
    jr z, @+$5c

    ld e, e
    ld e, h
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld a, b
    inc d
    inc d
    inc d
    inc d
    inc d
    ld a, c
    add c
    ld e, b
    ld e, c
    jr z, jr_04f_5313

    ld e, e
    add d
    adc e
    ld h, a
    adc h
    adc l
    adc [hl]
    ld l, e
    adc a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    xor c

Jump_04f_52ca:
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or a
    cp b
    inc d
    cp c
    inc d
    cp d
    inc d
    cp e
    cp h
    nop
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    nop
    call Call_000_14ce
    inc d
    inc d
    inc d
    inc d
    rst $08
    ret nc

    sub $d7
    inc d
    inc d
    inc d
    inc d
    inc d
    ret c

    reti


    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    rst $20
    add sp, -$17
    ld [$eb14], a
    db $ec
    db $ed
    xor $00
    nop
    db $f4
    push af
    or $f7
    ld hl, sp+$00
    nop
    ld c, a
    ld d, b

jr_04f_5313:
    ld d, c
    ld d, d
    inc d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld l, l
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld l, [hl]
    db $76
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld [hl], a
    ld a, d
    ld a, e
    jr z, jr_04f_53b5

    ld a, l
    ld a, [hl]
    jr z, @+$81

    add b
    add e
    add h
    add l
    add [hl]
    add a
    add [hl]
    adc b
    adc c
    adc d
    sub b
    sub c
    sub d
    sub e
    inc d
    sub h
    sub l
    sub [hl]
    sub a
    nop
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    nop
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $12
    inc de
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    ld d, $1a
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec de
    rra
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    jr nz, jr_04f_53a5

    inc h
    dec h
    ld h, $27
    jr z, jr_04f_53b5

    ld a, [hl+]
    dec hl
    inc l
    jr nz, jr_04f_53b0

    jr nc, jr_04f_53c4

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04f_53bb

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc d
    ld a, $3f
    ld b, b
    ld b, c

jr_04f_53a5:
    ld b, d
    nop
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop

jr_04f_53b0:
    nop

jr_04f_53b1:
    inc b
    dec b
    ld b, $07

jr_04f_53b5:
    ld [$0a09], sp
    dec bc
    inc c
    dec c

jr_04f_53bb:
    ld c, $12
    inc de
    inc d
    inc d

jr_04f_53c0:
    inc d
    inc d
    inc d
    inc d

jr_04f_53c4:
    inc d
    dec d
    ld d, $1a
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d

jr_04f_53d0:
    inc d
    dec de
    rra
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    jr nz, jr_04f_53fd

    inc h
    dec h
    ld h, $27
    jr z, jr_04f_540d

    ld a, [hl+]
    dec hl
    inc l
    jr nz, jr_04f_5408

    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04f_5413

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc d

jr_04f_53f9:
    ld a, $3f
    ld b, b
    ld b, c

jr_04f_53fd:
    ld b, d
    nop
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop

jr_04f_5408:
    nop
    nop
    nop
    nop
    nop

jr_04f_540d:
    nop
    nop
    nop
    xor c
    nop
    rst $38

jr_04f_5413:
    rst $38
    db $eb
    ld [$fc55], a
    xor $88
    db $ec
    ldh [rNR43], a
    xor $f8
    add sp, -$56
    nop
    rst $38
    db $fc
    ldh [rSTAT], a
    jr z, jr_04f_53d0

    rst $38
    ld b, [hl]
    ld d, h
    add d
    jr z, jr_04f_53b1

    ld e, h
    and d
    jr z, @+$01

    inc bc
    ld a, h
    add d
    jr nz, jr_04f_53c0

    ld e, h
    add d
    jr z, @+$01

    inc bc
    ld [hl], h
    add d
    ld [$7c81], sp
    ld [hl+], a
    ld a, h
    rst $38
    ld [hl], c
    db $dd
    db $dd
    adc a
    rst $38
    ld [bc], a
    ld a, a
    ld h, b
    rst $18
    rst $38

jr_04f_544e:
    push de
    db $fd
    rst $38
    rst $38
    adc [hl]
    db $fd
    rra
    nop
    ld sp, hl

Jump_04f_5457:
    ld a, a
    or b
    ldh [$fe], a
    pop hl
    xor d
    nop
    ld [hl], a
    nop
    ld a, [hl+]
    and h
    add b
    or $da
    db $e3
    ld [hl], a
    add b
    and $78
    push hl
    db $dd
    ld_long $ffe2, a
    ei
    nop
    pop bc
    ld [hl], b
    ldh [$74], a
    add d
    jr z, jr_04f_53f9

    ld e, h
    rst $38
    ld [hl+], a
    db $ec
    add b
    db $fc
    jp c, $ff7f

    dec h
    rra
    ld [hl], a
    add b
    rst $38
    ret c

    rst $18
    add b
    rst $38
    add h
    db $e3
    add b
    push hl
    add sp, -$58
    pop hl

jr_04f_5491:
    nop
    di
    ld e, h
    db $e3
    db $76
    add b
    xor $d2
    rrca
    ldh a, [rIE]
    rra
    ld h, h
    ld a, [hl+]
    ret nz

    ld e, c
    nop
    ld_long $ff00, a
    rst $30
    and b
    adc d
    and b
    db $dd
    jr nz, jr_04f_544e

    ld [hl], b
    pop hl
    push af
    nop
    rst $38
    add b
    rst $38
    add b
    db $dd
    ld a, b
    push bc
    xor l
    ldh [rNR13], a
    rst $38
    ld a, b
    dec bc
    xor h
    dec b
    sbc $42
    xor [hl]
    inc bc
    rst $38
    scf
    ld [bc], a
    xor e
    ld bc, $02df
    inc hl
    add c
    rst $20
    rst $10
    ret c

    db $db
    nop
    rst $38
    or $a5
    ld hl, sp+$00
    cp $0e
    add b
    add $76
    nop
    xor b
    add b
    rst $38
    nop
    rst $18
    nop
    rst $18
    add b
    cp a
    ldh [$78], a
    and $e2
    and e
    adc b
    pop bc
    nop
    di
    add b
    call $a200
    add b
    jp $d8d5


    nop
    rst $18
    add b
    rst $38
    add b
    or h
    ld [$54e5], sp
    and d
    cp $04
    ldh [$82], a
    jr nz, jr_04f_5491

    xor h
    ld [c], a
    db $10
    ld a, e
    rst $28
    ld [$04ae], sp
    rst $18
    add b
    push bc
    ld [hl+], a
    inc hl
    ld [hl], c
    rst $20
    ld [hl], a
    db $dd
    rst $18
    nop
    rst $38
    add b
    ei
    rlca
    nop
    ld e, a
    ccf
    nop
    rrca
    nop
    ld d, a
    nop
    ld bc, $be80
    ld [$1ea6], sp
    ld a, b
    call nz, $027c
    db $ec
    add c
    nop
    cp a
    nop
    ei
    ld l, h
    and a
    db $fd
    ld d, l
    nop
    sub $52
    rrca
    cp b
    rra
    db $e4
    ld a, [hl+]
    ei
    ret nz

    ld a, e
    ld [$80a5], sp
    xor d
    nop
    rst $30
    adc b
    rst $00
    and d
    adc b
    push de
    nop
    cp a
    add b
    rst $38
    add b
    rst $38
    xor d
    nop
    rst $38
    and l
    ldh [rNR30], a
    ld hl, sp+$09
    xor h
    ld b, $fe
    cp $08
    and [hl]
    xor e
    inc bc
    ld [hl], a
    ld b, d
    xor e
    ld bc, $fc9f
    nop
    cp a
    add b
    rst $38
    push de
    nop
    ldh [rP1], a
    push af
    nop
    or c
    ldh a, [$fc]
    ldh [rP1], a
    xor a
    ld [$80e7], sp
    rst $38
    db $10
    add b
    rst $18
    nop
    ld [$00e5], sp
    pop hl
    nop
    sbc a
    rst $38
    rst $38
    nop
    or e
    ld [$7861], sp
    add e
    ld [$05e8], sp
    cp a
    inc c
    ldh [rIE], a
    ld [$00e6], sp
    ldh [rP1], a
    sbc a
    rst $38
    rst $38
    nop
    adc l
    jr nz, jr_04f_55ac

    ld h, a
    add b
    ld [hl], e
    add b
    ld c, l
    nop
    sbc l
    db $10

jr_04f_55ac:
    ld c, c
    ld d, l
    db $10
    ld b, b
    add b
    sbc a
    nop
    nop
    ld a, e
    nop
    cp a
    sub b
    ld d, a
    inc [hl]
    ld h, c
    add b
    rst $38
    add b
    add hl, hl
    nop
    ld e, a
    nop
    db $dd
    ld [bc], a
    sub b
    ld c, c
    ld d, h
    sub b
    ld b, b
    add b
    rst $38
    add b
    ld e, e
    add b
    ld l, l
    nop
    rst $18
    nop
    rst $18
    dec e
    ld e, a
    ld l, h
    inc b
    ld a, a
    nop
    dec d
    nop
    ld c, [hl]
    nop
    ld l, l
    ld [$b845], sp
    nop
    ld b, e
    nop
    rst $18
    add b
    rst $38
    nop
    nop
    db $fd
    ld l, h
    ld h, $50
    ret nz

    add b
    ld a, a
    add b
    ld l, h
    nop
    ld e, a
    add b
    rst $38
    nop
    ld e, c
    add b
    ld a, l
    ld [hl+], a
    ld h, e
    ldh [rP1], a
    ld e, a
    add b
    rst $38
    nop
    rst $08
    nop
    ld d, l
    add b
    add e
    add e
    inc e
    sbc c
    dec c
    ld [bc], a
    add b
    inc b
    ld [bc], a
    db $e4
    nop
    ld c, d
    nop
    nop
    nop
    ld e, a
    ld h, c
    rst $38
    ld a, a
    ret nz

    ld [bc], a
    and b
    nop
    ret nz

    ld [bc], a
    ld [de], a
    ld a, l
    ld a, [c]
    inc bc
    and b
    nop
    ret nz

    ld [bc], a
    add sp, $03
    inc e
    ld [hl+], a
    and b
    nop
    ret nz

    ld [bc], a
    inc e
    ld [hl+], a
    ld a, [c]
    inc bc
    and b
    nop
    ret nz

    ld [bc], a
    ld a, [c]
    inc bc
    add sp, $03
    and b
    nop
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    jr jr_04f_5647

jr_04f_5647:
    call Call_04f_5752
    call Call_04f_567d
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
    call Call_04f_6089
    ld hl, $5615
    ld de, $0205
    call Call_000_0595
    ret


Call_04f_567d:
    ld hl, $da00

jr_04f_5680:
    ld a, [hl+]
    cp $ff
    jr z, jr_04f_56a6

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, e
    cp $03
    jr z, jr_04f_5693

    cp $02
    jr nz, jr_04f_56a4

jr_04f_5693:
    ld a, c
    and a
    jr z, jr_04f_56a4

    ld a, c
    rrca
    rrca
    rrca
    and $07
    ld e, $00
    push hl
    call Call_04f_56a7
    pop hl

jr_04f_56a4:
    jr jr_04f_5680

jr_04f_56a6:
    ret


Call_04f_56a7:
    add a
    add a
    add a
    ld hl, $5712
    add l
    ld l, a
    jr nc, jr_04f_56b2

    inc h

jr_04f_56b2:
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

jr_04f_56be:
    push de

jr_04f_56bf:
    ld a, [hl]
    and a
    jr z, jr_04f_5702

    bit 7, d
    jr nz, jr_04f_5702

    ld a, d
    cp $14
    jr nc, jr_04f_5702

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
    jr c, jr_04f_56f7

    ld c, $08

jr_04f_56f7:
    push bc
    call Call_04f_615c
    pop bc
    dec c
    jr nz, jr_04f_56f7

    pop hl
    pop de
    pop bc

jr_04f_5702:
    inc hl
    inc d
    dec e
    jr nz, jr_04f_56bf

    pop de
    inc b
    ld a, c
    sub $08
    ld c, a
    jr z, jr_04f_5711

    jr nc, jr_04f_56be

jr_04f_5711:
    ret


    nop
    nop
    ld bc, $e801
    ld b, c
    nop
    nop
    nop
    nop
    ld bc, $e902
    ld b, c
    nop
    nop
    rst $38
    nop
    inc bc
    inc bc
    db $eb
    ld b, c
    nop
    nop
    rst $38
    nop
    inc bc
    inc b
    db $f4
    ld b, c
    nop
    nop
    rst $38
    nop
    inc bc
    dec b
    nop
    ld b, d
    nop
    nop
    rst $38
    nop
    inc bc
    ld b, $0f
    ld b, d
    nop
    nop
    rst $38
    nop
    inc bc
    rlca
    ld hl, $0042
    nop
    rst $38
    nop
    inc bc
    ld [$4236], sp
    nop
    nop

Call_04f_5752:
    ld hl, $da00

jr_04f_5755:
    ld a, [hl+]
    cp $ff
    jr z, jr_04f_5778

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $01
    jr nz, jr_04f_5776

    ld a, b
    rrca
    rrca
    rrca
    and $07
    jr z, jr_04f_5776

    cp $07
    jr z, jr_04f_5776

    ld e, b
    push hl
    call Call_04f_5789
    pop hl

jr_04f_5776:
    jr jr_04f_5755

jr_04f_5778:
    ld a, [$c3b7]
    cp $0c
    jr nz, jr_04f_5788

    ld a, $07
    ld d, $0a
    ld e, $3f
    call Call_04f_5789

jr_04f_5788:
    ret


Call_04f_5789:
    add a
    add a
    add a
    ld hl, $6049
    add l
    ld l, a
    jr nc, jr_04f_5794

    inc h

jr_04f_5794:
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

jr_04f_57a1:
    push de

jr_04f_57a2:
    ld a, [hl]
    and a
    jr z, jr_04f_57ed

    bit 7, d
    jr nz, jr_04f_57ed

    ld a, d
    cp $14
    jr nc, jr_04f_57ed

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
    ld de, $57fb
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
    jr nc, jr_04f_57ce

    inc h

jr_04f_57ce:
    ld bc, $d000
    add hl, bc
    call Call_04f_615c
    call Call_04f_615c
    call Call_04f_615c
    call Call_04f_615c
    call Call_04f_615c
    call Call_04f_615c
    call Call_04f_615c
    call Call_04f_615c
    pop hl
    pop de
    pop bc

jr_04f_57ed:
    inc hl
    inc d
    dec e
    jr nz, jr_04f_57a2

    pop de
    ld a, b
    add $08
    ld b, a
    dec c
    jr nz, jr_04f_57a1

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
    jr jr_04f_58a3

    jr nc, @+$41

    jr nc, jr_04f_58e7

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

jr_04f_58a3:
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
    call nz, Call_04f_6c7c
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

jr_04f_58e7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_04f_5a34:
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
    jr jr_04f_5a7f

    jr jr_04f_5a81

    jr jr_04f_5aa3

    jr nc, jr_04f_5aa5

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

jr_04f_5a7f:
    nop
    nop

jr_04f_5a81:
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

jr_04f_5aa3:
    nop
    nop

jr_04f_5aa5:
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    jr nc, jr_04f_5a34

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

    jr nz, jr_04f_5b4f

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

jr_04f_5b07:
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
    jr jr_04f_5b07

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

jr_04f_5b4f:
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

jr_04f_5b69:
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
    jr jr_04f_5b69

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
    jr nz, jr_04f_5c13

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

jr_04f_5c13:
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
    jp z, Jump_04f_52ca

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

jr_04f_5ced:
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_04f_5ced

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
    jp c, Jump_04f_5457

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
    jr nc, jr_04f_6048

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
    jr z, jr_04f_6059

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

jr_04f_6048:
    ld h, $ff
    ld sp, hl
    inc bc
    ld bc, $5ffb
    nop
    nop
    rst $38
    ld sp, hl
    inc bc
    ld bc, $5ffb
    nop
    nop

jr_04f_6059:
    rst $38
    ld sp, hl
    inc bc
    ld bc, $5ffe
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    ld bc, $0060
    nop
    cp $f1
    dec b
    ld [bc], a
    dec bc
    ld h, b
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    dec d
    ld h, b
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    rra
    ld h, b
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    inc [hl]
    ld h, b
    nop
    nop

Call_04f_6089:
    ld hl, $da00

jr_04f_608c:
    ld a, [hl+]
    cp $ff
    jr z, jr_04f_60ae

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $03
    jr z, jr_04f_609f

    cp $02
    jr nz, jr_04f_60ac

jr_04f_609f:
    ld a, b
    rrca
    rrca
    rrca
    and $07
    ld e, $07
    push hl
    call Call_04f_60af
    pop hl

jr_04f_60ac:
    jr jr_04f_608c

jr_04f_60ae:
    ret


Call_04f_60af:
    add a
    add a
    add a
    ld hl, $611c
    add l
    ld l, a
    jr nc, jr_04f_60ba

    inc h

jr_04f_60ba:
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

jr_04f_60c7:
    push de

jr_04f_60c8:
    ld a, [hl]
    and a
    jr z, jr_04f_6111

    bit 7, d
    jr nz, jr_04f_6111

    ld a, d
    cp $14
    jr nc, jr_04f_6111

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
    ld de, $424e
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
    call Call_04f_6169
    call Call_04f_6169
    call Call_04f_6169
    call Call_04f_6169
    call Call_04f_6169
    call Call_04f_6169
    call Call_04f_6169
    call Call_04f_6169
    pop hl
    pop de
    pop bc

jr_04f_6111:
    inc hl
    inc d
    dec e
    jr nz, jr_04f_60c8

    pop de
    inc b
    dec c
    jr nz, jr_04f_60c7

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

Call_04f_615c:
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
    jr jr_04f_6174

Call_04f_6169:
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

jr_04f_6174:
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


    ld hl, $62a7
    call Call_000_2449
    ret


jr_04f_618b:
    call Call_000_2e3b
    ld hl, $caa0
    ld a, [hl+]
    or [hl]
    jr nz, jr_04f_618b

    ld hl, $62a7
    call Call_000_2449
    ret


    rst $08

    db $8a

    push af
    push bc
    push de
    push hl
    ld a, $64
    ld hl, $62a7
    call Call_000_23e8
    pop hl
    pop de
    pop bc
    pop af
    push de
    push af
    ld e, c
    ld bc, $caa0
    ld hl, $000a
    add hl, bc
    ld [hl], e
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    set 7, h
    ld d, h
    ld e, l
    ld hl, $0006
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop af
    pop de
    push af
    ld hl, $0008
    add hl, bc
    ld [hl], d
    inc hl
    ld [hl], e
    push af
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $632b
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    ld l, c
    ld h, b
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    pop af
    push af
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $6569
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    ld hl, $0004
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $63a9
    add hl, de
    ld a, [$c836]
    or a
    jr z, jr_04f_624a

    cp $01
    jr z, jr_04f_6243

    cp $02
    jr z, jr_04f_6243

    cp $06
    jr z, jr_04f_6243

    cp $0a
    jr z, jr_04f_6243

    cp $07
    jr z, jr_04f_625e

    cp $09
    jr z, jr_04f_6268

    call Call_04f_6272
    cp $03
    jr z, jr_04f_6243

    call Call_04f_6272
    cp $04
    jr z, jr_04f_6243

    call Call_04f_6272
    cp $05
    jr z, jr_04f_6243

jr_04f_6243:
    ld de, $0f01
    call Call_000_056c
    ret


jr_04f_624a:
    ld a, [$c837]
    cp $0a
    jr nz, jr_04f_6257

    call Call_04f_6272
    call Call_04f_6272

jr_04f_6257:
    ld de, $0f01
    call Call_000_056c
    ret


jr_04f_625e:
    call Call_04f_627b
    ld de, $0f01
    call Call_000_056c
    ret


jr_04f_6268:
    call Call_04f_6294
    ld de, $0f01
    call Call_000_056c
    ret


Call_04f_6272:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ret


Call_04f_627b:
    ld a, [$c837]
    sub $0a
    ret c

    sub $03
    ret c

    call Call_04f_6272
    sub $03
    ret c

    call Call_04f_6272
    sub $03
    ret c

    call Call_04f_6272
    ret


Call_04f_6294:
    ld a, [$c837]
    cp $0d
    ret c

    call Call_04f_6272
    call Call_04f_6272
    cp $10
    ret c

    call Call_04f_6272
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $caa0
    call Call_04f_62b4
    ret


Call_04f_62b4:
    ld a, [hl+]
    ld e, [hl]
    or e
    ret z

    inc hl
    inc hl
    ld a, [hl]
    push hl
    or a
    jr nz, jr_04f_62fd

    dec hl
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    inc [hl]
    add a
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    cp $ff
    jr nz, jr_04f_62db

    xor a
    dec hl
    dec hl
    ld [hl+], a
    ld [hl+], a
    pop hl
    ret


jr_04f_62db:
    push af
    inc de
    ld a, [de]
    inc hl
    ld [hl+], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push hl
    and $0f
    swap a
    ld h, $00
    ld l, a
    ld b, h
    ld c, l
    add hl, hl
    add hl, bc
    add hl, hl
    add hl, hl
    add hl, de
    pop de
    ld c, $0c
    call Call_000_0468

jr_04f_62fd:
    pop hl
    dec [hl]
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld c, [hl]
    ld b, $07
    ld hl, $6312
    call Call_000_26ea
    ret


    db $04, $fc, $00, $00, $14, $fc, $02, $00, $04, $04, $04, $00, $14, $04, $06, $00
    db $04, $0c, $08, $00, $14, $0c, $0a, $00, $80

    ld b, a
    ld h, e
    ld h, b
    ld h, e

    db $85, $63

    adc b
    ld h, e
    adc e
    ld h, e

    db $8e, $63, $91, $63

    sub h
    ld h, e

    db $97, $63

    sbc d
    ld h, e
    sbc l
    ld h, e
    and b
    ld h, e
    and e
    ld h, e
    and [hl]
    ld h, e
    nop
    ld [$0c01], sp
    ld [bc], a
    ld [$0c03], sp
    nop
    ld [$0c01], sp
    ld [bc], a
    ld [$0c03], sp
    nop
    ld [$0c01], sp
    ld [bc], a
    ld [$0c03], sp
    rst $38
    nop
    dec b
    ld bc, $0205
    dec b
    inc bc
    dec b
    inc b
    dec b
    dec b
    dec b
    ld b, $05
    rlca
    dec b
    ld [$0905], sp
    dec b
    ld a, [bc]
    inc b
    dec bc
    inc b
    inc c
    rrca
    dec c
    rrca
    ld c, $0a
    rrca
    ld a, [bc]
    ld c, $0a
    rrca
    inc c
    rst $38

    db $00, $78

    rst $38
    ld bc, $ff78
    ld [bc], a
    ld a, b
    rst $38

    db $00, $78

    rst $38

    db $01, $78

    rst $38
    ld [bc], a
    ld a, b
    rst $38

    db $01, $78

    rst $38
    ld [bc], a
    ld a, b
    rst $38
    nop
    ld a, b
    rst $38
    nop
    ld a, b
    rst $38
    ld bc, $ff78
    ld [bc], a
    ld a, b
    rst $38
    call nz, $ff01
    ld a, a
    rra
    ld hl, $0000
    call nz, $ff01
    ld a, a
    rra
    ld hl, $0000
    call nz, $ff01
    ld a, a
    rra
    ld hl, $0000
    call nz, $ff01
    ld a, a
    rra
    ld hl, $0000
    inc e
    ld d, a
    rst $38
    ld a, a
    ld b, b
    ld a, l
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld d, $7d
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld e, d
    ld a, l
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    sub a
    ld a, l
    nop
    nop

    db $1c, $57, $ff, $7f, $d8, $1a, $00, $00

    inc e
    ld d, a
    rst $38
    ld a, a
    call c, $001a
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    sub h
    ld [hl-], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret c

    ld [hl+], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret c

    ld a, [de]
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    call c, $001a
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    sub h
    ld [hl-], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret c

    ld [hl+], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret c

    ld a, [de]
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    call c, $001a
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    sub h
    ld [hl-], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret c

    ld [hl+], a
    nop
    nop

    db $1c, $57, $ff, $7f, $86, $03, $00, $00

    inc e
    ld d, a
    rst $38
    ld a, a
    ld c, d
    inc bc
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld b, d
    inc hl
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld d, b
    inc bc
    nop
    nop

    db $1c, $57, $ff, $7f, $86, $03, $00, $00

    inc e
    ld d, a
    rst $38
    ld a, a
    ld c, d
    inc bc
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld b, d
    inc hl
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld d, b
    inc bc
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    add [hl]
    inc bc
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld c, d
    inc bc
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld b, d
    inc hl
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld d, b
    inc bc
    nop
    nop

    db $1c, $57, $ff, $7f, $40, $02, $00, $00

    inc e
    ld d, a
    rst $38
    ld a, a
    adc [hl]
    ld bc, $0000
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld c, c
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld [bc], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld b, b
    ld [bc], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    adc [hl]
    ld bc, $0000
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld c, c
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld [bc], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld b, b
    ld [bc], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    adc [hl]
    ld bc, $0000
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld c, c
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld [bc], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld b, b
    ld [bc], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    adc [hl]
    ld bc, $0000
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld c, c
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld [bc], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld b, b
    ld [bc], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    adc [hl]
    ld bc, $0000
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld c, c
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld [bc], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ld b, b
    ld [bc], a
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    adc [hl]
    ld bc, $0000
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld c, c
    nop
    nop
    inc e
    ld d, a
    rst $38
    ld a, a
    ret nz

    ld [bc], a
    nop
    nop
    sub b
    ld h, l
    sub b
    ld l, b

    db $90, $74

    sub b
    ld [hl], h
    sub b
    ld [hl], h

    db $d0, $76, $10, $79

    db $10
    ld a, c

    db $d0, $76

    ret nc

    db $76
    db $10
    ld a, c
    ld d, b
    ld a, e
    ld d, b
    ld a, e
    ld d, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    db $e3
    cp a
    xor $bd
    or $b9
    db $e3
    cp h
    db $e3
    cp h
    rst $20
    cp b
    rst $38
    and c
    cp $b3
    xor $bf
    ld [c], a
    cp a
    db $e3
    cp a
    rst $20
    cp l
    rst $28
    cp c
    xor $bb
    rst $20
    cp a
    ld [$d8bd], a
    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_04f_65e3:
    nop
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld [$0cff], sp
    rst $30
    ld a, [de]
    rst $20
    ld a, [$fe07]
    di
    ld a, [hl]
    adc e
    db $fc
    ld e, a
    ld sp, hl
    rrca
    sbc $2f
    ld a, [hl]
    sbc e
    cp $f3
    inc l
    rst $38
    jr z, jr_04f_65e3

    db $fc
    rra
    and $fb
    and d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    add a
    ld a, l
    rst $20
    dec e
    rst $20
    dec e
    rst $20
    dec a
    rst $00
    ld a, l
    add a
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    db $e3
    cp a
    xor $bd
    or $b9
    db $e3
    cp h
    db $e3
    cp h
    rst $20
    cp b
    rst $38
    and c
    cp $b3
    xor $bf
    ld [c], a
    cp a
    rst $20
    cp a
    rst $28
    cp c
    cp $b3
    xor $bf
    rst $20
    cp a
    ld [$d8bd], a
    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_04f_66a3:
    nop
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld [$0cff], sp
    rst $30
    ld a, [de]
    rst $20
    ld a, [$fe07]
    di
    ld a, [hl]
    adc e
    db $fc
    ld e, a
    ld hl, sp+$0f
    ret c

    cpl
    ld a, [hl]
    sbc a
    rst $38
    pop af
    ld l, $ff
    jr z, jr_04f_66a3

    db $fc
    rra
    and $fb
    and d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    ld b, a
    cp l
    ld b, a
    cp l
    ld h, a
    sbc l
    rst $20
    dec e
    rst $30
    dec c
    rst $30
    dec c
    rst $30
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    db $e3
    cp a
    xor $bd
    or $b9
    db $e3
    cp h
    db $e3
    cp h
    rst $20
    cp b
    rst $38
    and c
    cp $b3
    xor $bf
    ld [c], a
    cp a
    rst $20
    cp a
    rst $28
    cp c
    cp $b3
    xor $bf
    rst $20
    cp a
    ld [$d8bd], a
    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_04f_6763:
    nop
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld [$0cff], sp
    rst $30
    ld a, [de]
    rst $20
    ld a, [$fe07]
    di
    ld a, [hl]
    adc e
    db $fc
    ld e, a
    ld hl, sp+$0f
    rst $18
    cpl
    ld a, a
    sbc c
    cp $f3
    inc l
    rst $38
    jr z, jr_04f_6763

    db $fc
    rra
    and $fb
    and d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rla
    db $fd
    ld [hl], a
    db $ed
    rst $30
    adc l
    rst $20
    dec e
    ld h, a
    sbc l
    daa
    db $dd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    db $e3
    cp a
    xor $bd
    or $b9
    db $e3
    cp h
    db $e3
    cp h
    rst $20
    cp b
    rst $38
    and c
    cp $b3
    xor $bf
    ld [c], a
    cp a
    db $e3
    cp a
    rst $20
    cp l
    rst $28
    cp c
    xor $bb
    rst $20
    cp a
    ld [$d8bd], a
    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_04f_6823:
    nop
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld [$0cff], sp
    rst $30
    ld a, [de]
    rst $20
    ld a, [$fe07]
    di
    ld a, [hl]
    adc e
    db $fd
    ld e, a
    db $fd
    rrca
    sbc $2b
    ld a, [hl]
    sub e
    db $fc
    rst $30
    jr z, @+$01

    jr z, jr_04f_6823

    db $fc
    rra
    and $fb
    and d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    ld b, a
    db $fd
    ld h, a
    db $dd
    rst $20
    sbc l
    rst $30
    adc l
    rst $30
    dec c
    ld [hl], a
    adc l
    scf
    call $ed17
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld a, [hl+]
    rst $30
    ld a, $e3
    ld a, [hl+]
    rst $30
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    ld a, [hl+]
    rst $38
    inc d
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
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp [hl]
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld a, [hl+]
    push de
    ld a, $c1
    cp $01
    ld a, a
    sbc b
    ld a, [hl]
    add l
    inc e
    db $e3
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    add a
    ld a, l
    rlca
    db $fd
    rlca
    db $fd
    add a
    ld a, l
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    db $e4
    cp e
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ld [c], a
    cp l
    ldh [$bf], a
    pop hl
    cp [hl]
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04f_6a6b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    ld [$18f7], sp
    rst $20
    inc e
    db $e3
    cp h
    ld b, e
    ld a, l
    add d
    ld a, $c1
    ld a, [hl]
    add c
    jr jr_04f_6a6b

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rla
    db $ed
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rla
    db $ed
    rlca
    db $fd
    daa
    db $dd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    add sp, -$49
    pop hl
    cp [hl]
    pop hl
    cp [hl]
    ldh [$bf], a
    db $e4
    cp e
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [$1cf7], sp
    db $e3
    pop bc
    ld a, $3e
    pop bc
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    adc a
    ld [hl], l
    ld b, a
    cp l
    ld b, a
    cp l
    add a
    ld a, l
    rlca
    db $fd
    rlca
    db $fd
    add a
    ld a, l
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp [hl]
    ld [c], a
    cp l
    ld [c], a
    cp l
    pop hl
    cp [hl]
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    daa
    db $dd
    daa
    db $dd
    rlca
    db $fd
    add a
    ld a, l
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a

Call_04f_6c7c:
    ldh [$bf], a
    ldh [$bf], a
    db $e4
    cp e
    ld [c], a
    cp l
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rrca
    push af
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    push hl
    cp e
    db $eb
    or [hl]
    add sp, -$49
    add sp, -$49
    db $e4
    cp e
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    ld a, [hl]
    rst $20
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    adc [hl]
    ld [hl], c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    and a
    db $dd
    rst $10
    ld l, l
    rla
    db $ed
    rla
    db $ed
    daa
    db $dd
    add a
    ld a, l
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    db $e3
    cp [hl]
    rst $20
    cp h
    rst $28
    cp b
    rst $28
    cp e
    rst $20
    cp [hl]
    db $e3
    cp [hl]
    rst $20
    cp l
    ldh [$bf], a
    db $e4
    cp e
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    jr @+$01

    ld a, [hl]
    rst $20
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    inc a
    rst $38
    jp $ff00


    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    add a
    db $fd
    rst $00
    ld a, l
    rst $20
    dec a
    rst $30
    dec e
    rst $30
    db $dd
    rst $30
    ld a, l
    rst $20
    ld a, l
    rst $20
    cp l
    rlca
    db $fd
    rlca
    db $fd
    ld c, e
    cp l
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    db $e3
    cp [hl]
    rst $20
    cp h
    rst $28
    cp b
    rst $28
    cp e
    rst $20
    cp [hl]
    db $e3
    cp [hl]
    rst $20
    cp l
    rst $20
    cp h
    db $e3
    cp [hl]
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    ld a, [hl]
    rst $20
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    inc a
    rst $38
    jp $dbff


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    add a
    db $fd
    rst $00
    ld a, l
    rst $20
    dec a
    rst $30
    dec e
    rst $30
    db $dd
    rst $20
    ld a, l
    rst $00
    ld a, l
    rst $20
    cp l
    rst $20
    dec a
    rst $00
    ld a, l
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    db $e3
    cp [hl]
    rst $20
    cp h
    rst $28
    cp b
    rst $28
    cp e
    rst $20
    cp [hl]
    db $e3
    cp [hl]
    rst $20
    cp l
    rst $20
    cp h
    db $e3
    cp [hl]
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    rst $38
    ld a, h
    rst $20
    db $fd
    add d
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    inc a
    rst $38
    jp $dbff


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    add a
    db $fd
    ld b, a
    db $fd
    ld b, a
    db $fd
    add a
    db $fd
    rst $00
    ld a, l
    rst $20
    dec a
    rst $30
    dec e
    rst $30
    db $dd
    rst $20
    ld a, l
    rst $00
    ld a, l
    rst $20
    cp l
    rst $20
    dec a
    rst $00
    ld a, l
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    db $e3
    cp [hl]
    rst $20
    cp h
    rst $28
    cp b
    rst $28
    cp e
    rst $20
    cp [hl]
    db $e3
    cp [hl]
    rst $20
    cp l
    rst $20
    cp h
    db $e3
    cp [hl]
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $1aff
    rst $38
    ld a, l
    and $fd
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    inc a
    rst $38
    jp $dbff


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rst $00
    db $fd
    and a
    ld a, l
    rst $20
    dec a
    and a
    ld a, l
    ld b, a
    db $fd
    rst $00
    ld a, l
    rst $20
    dec a
    rst $20
    dec e
    rst $20
    db $dd
    rst $20
    ld a, l
    rst $00
    ld a, l
    rst $20
    cp l
    rst $20
    dec a
    rst $00
    ld a, l
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    db $e3
    cp [hl]
    rst $20
    cp h
    rst $28
    cp b
    rst $28
    cp e
    rst $20
    cp [hl]
    db $e3
    cp [hl]
    rst $20
    cp l
    rst $20
    cp h
    db $e3
    cp [hl]
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    ld bc, $03ff
    cp $1f
    db $fc
    ld a, a
    db $e4
    ei
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    inc a
    rst $38
    jp $dbff


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    set 7, l
    rst $20
    dec a
    rst $30
    dec e
    rst $30
    dec e
    rst $30
    dec e
    rst $20
    dec a
    ld b, a
    db $fd
    rst $20
    dec a
    rst $30
    dec e
    rst $30
    db $dd
    rst $20
    ld a, l
    rst $00
    ld a, l
    rst $20
    cp l
    rst $20
    dec a
    rst $00
    ld a, l
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    db $e3
    cp [hl]
    rst $20
    cp h
    rst $28
    cp b
    rst $28
    cp e
    rst $20
    cp [hl]
    db $e3
    cp [hl]
    rst $20
    cp l
    rst $20
    cp h
    db $e3
    cp [hl]
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    ld bc, $03ff
    cp $1f
    db $fc
    ld a, a
    db $e4
    ei
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp l
    rst $38
    db $db
    rst $38
    inc a
    rst $38
    jp $dbff


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    set 7, l
    rst $20
    dec a
    rst $30
    dec e
    rst $30
    dec e
    rst $30
    dec e
    rst $20
    dec a
    ld b, a
    db $fd
    rst $20
    dec a
    rst $30
    dec e
    rst $30
    db $dd
    rst $20
    ld a, l
    rst $00
    ld a, l
    rst $20
    cp l
    rst $20
    dec a
    rst $00
    ld a, l
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    db $e3
    cp [hl]
    rst $20
    cp h
    rst $28
    cp b
    rst $28
    cp e
    rst $20
    cp [hl]
    db $e3
    cp [hl]
    rst $20
    cp l
    rst $20
    cp h
    db $e3
    cp [hl]
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    ld bc, $03ff
    cp $1f
    db $fc
    ld a, a
    db $e4
    ei
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp l
    rst $38
    db $db
    rst $38
    inc a
    rst $38
    jp $dbff


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    set 7, l
    rst $20
    dec a
    rst $30
    dec e
    rst $30
    dec e
    rst $30
    dec e
    rst $20
    dec a
    ld b, a
    db $fd
    rst $20
    dec a
    rst $30
    dec e
    rst $30
    db $dd
    rst $20
    ld a, l
    rst $08
    ld a, l
    rst $38
    or l
    rst $38
    dec b
    rst $38
    adc l
    ld [hl], a
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    db $e3
    cp [hl]
    rst $20
    cp h
    rst $28
    cp b
    rst $28
    cp e
    rst $20
    cp [hl]
    db $e3
    cp [hl]
    rst $20
    cp l
    rst $20
    cp h
    db $e3
    cp [hl]
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    ld bc, $03ff
    cp $1f
    db $fc
    ld a, a
    db $e4
    ei
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp l
    rst $38
    db $db
    rst $38
    inc a
    rst $38
    jp $dbff


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    set 7, l
    rst $20
    dec a
    rst $30
    dec e
    rst $30
    dec e
    rst $30
    dec e
    rst $20
    dec a
    ld b, a
    db $fd
    rst $20
    dec a
    rst $30
    dec e
    rst $38
    db $dd
    rst $38
    ld [hl], l
    rst $38
    ld h, l
    rst $38
    adc l
    rst $30
    dec e
    rst $20
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    ld [c], a
    cp a
    db $e3
    cp [hl]
    push hl
    cp [hl]
    rst $20
    cp h
    rst $20
    cp h
    push hl
    cp [hl]
    db $e3
    cp [hl]
    ld [c], a
    cp a
    pop hl
    cp a
    ldh [$bf], a
    pop hl
    cp a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld_long a, $ff05
    nop
    call nc, $fe2b
    ld bc, $57a8
    ld bc, $e3ff
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    add a
    db $fd
    ld b, a
    db $fd
    ld b, a
    db $fd
    daa
    db $fd
    daa
    db $fd
    daa
    db $fd
    ld h, a
    db $fd
    ld b, a
    db $fd
    rst $00
    db $fd
    add a
    db $fd
    rst $00
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    ld [c], a
    cp a
    db $e3
    cp [hl]
    push hl
    cp [hl]
    rst $20
    cp h
    rst $20
    cp h
    db $ed
    cp [hl]
    db $e3
    cp a
    db $e4
    cp a
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    inc a
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld_long a, $ff05
    nop
    ld d, h
    xor e
    add c
    rst $38
    ld a, [hl]
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    add a
    db $fd
    ld b, a
    db $fd
    ld b, a
    db $fd
    daa
    db $fd
    daa
    db $fd
    daa
    db $fd
    ld [hl], a
    db $fd
    add a
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    ld [c], a
    cp a
    db $e3
    cp [hl]
    push hl
    cp [hl]
    db $ed
    cp [hl]
    db $e3
    cp a
    db $e4
    cp a
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [$9105]
    rst $28
    ld a, [hl]
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    add a
    db $fd
    ld b, a
    db $fd
    ld b, a
    db $fd
    daa
    db $fd
    ld [hl], a
    db $fd
    add a
    db $fd
    ld b, a
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    ld [c], a
    cp a
    db $e3
    cp [hl]
    push hl
    cp [hl]
    rst $20
    cp h
    rst $20
    cp h
    push hl
    cp [hl]
    db $e3
    cp [hl]
    ld [c], a
    cp a
    pop hl
    cp a
    ld [c], a
    cp l
    ldh [$bf], a
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld_long a, $ff05
    nop
    call nc, $fe2b
    ld bc, $57a8
    nop
    rst $38
    jp Jump_000_3fff


    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    add a
    db $fd
    ld b, a
    db $fd
    ld b, a
    db $fd
    daa
    db $fd
    daa
    db $fd
    daa
    db $fd
    daa
    db $fd
    ld b, a
    db $fd
    ld b, a
    db $fd
    add a
    db $fd
    rst $00
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    jp nc, $fdbf

    cp a
    db $eb
    cp a
    db $e4
    cp a
    rst $30
    cp a
    ld [$ebbf], a
    cp [hl]
    push af
    cp [hl]
    rst $28
    cp h
    rst $30
    cp h
    xor $bd
    push hl
    cp a
    xor $bf
    ld a, [c]
    cp a
    db $ed
    cp a
    push af
    cp a
    db $eb
    cp a
    jp nc, $afbf

    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    and d
    rst $38
    ld d, l
    rst $38
    dec a
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld_long a, $ff05
    nop
    push de
    dec hl
    ld a, c
    add a
    and d
    rst $18
    sbc [hl]
    rst $38
    ld h, l
    rst $38
    ld e, c
    rst $38
    and [hl]
    rst $38
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    xor e
    db $fd
    scf
    db $fd
    ld c, a
    db $fd
    cpl
    db $fd
    rst $10
    db $fd
    ld d, a
    db $fd
    ld l, a
    db $fd
    scf
    db $fd
    cpl
    db $fd
    cp a
    db $fd
    ld h, a
    db $fd
    ld c, a
    db $fd
    or a
    db $fd
    and a
    db $fd
    ld e, a
    db $fd
    ld l, a
    db $fd
    sub a
    db $fd
    ld l, e
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    jp nc, $fdbf

    cp a
    db $eb
    cp a
    db $e4
    cp a
    push af
    cp a
    ld [$edbf], a
    cp a
    push af
    cp a
    ld [$f7bf], a
    cp [hl]
    db $ec
    cp a
    rst $20
    cp a
    xor $bf
    ld a, [c]
    cp a
    db $ed
    cp a
    push af
    cp a
    db $eb
    cp a
    jp nc, $afbf

    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    and d
    rst $38
    ld d, l

jr_04f_78a9:
    rst $38
    ld e, l
    rst $38
    xor e
    rst $38
    ld d, d
    rst $38
    cp l
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    rst $10
    jr c, jr_04f_78a9

    dec sp
    push de
    ld a, a
    cp e
    xor $be
    rst $38
    ld h, l
    rst $38
    ld e, c
    rst $38
    and [hl]
    rst $38
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    xor e
    db $fd
    scf
    db $fd
    ld c, a
    db $fd
    cpl
    db $fd
    rst $10
    db $fd
    ld d, a
    db $fd
    cpl
    db $fd
    or a
    db $fd
    ld l, a
    db $fd
    cp a
    db $fd
    rst $20
    db $fd
    ld c, a
    db $fd
    or a
    db $fd
    and a
    db $fd
    ld e, a
    db $fd
    ld l, a
    db $fd
    sub a
    db $fd
    ld l, e
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    jp nc, $fdbf

    cp a
    db $eb
    cp a
    db $e4
    cp a
    push af
    cp a
    ld [$edbf], a
    cp a
    push af
    cp a
    ld [$f7bf], a
    cp a
    db $ed
    cp a
    and $bf
    xor $bf
    ld a, [c]
    cp a
    db $ed
    cp a
    push af
    cp a
    db $eb
    cp a
    jp nc, $afbf

    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    and d
    rst $38
    ld d, l
    rst $38
    ld e, l
    rst $38
    xor e
    rst $38
    ld d, d
    rst $38
    cp l
    rst $38
    db $eb
    rst $38
    ld l, $f5
    push de
    cp $fb
    ld l, [hl]
    ld l, d
    rst $38
    rst $10
    db $fd
    cp e
    rst $28
    cp [hl]
    rst $38
    ld h, l
    rst $38
    ld e, c
    rst $38
    and [hl]
    rst $38
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    xor e
    db $fd
    scf
    db $fd
    ld c, a
    db $fd
    cpl
    db $fd
    rst $10
    db $fd
    ld d, a
    db $fd
    cpl
    db $fd
    or a
    db $fd
    ld l, a
    db $fd
    cp a
    db $fd
    rst $20
    db $fd
    ld c, a
    db $fd
    or a
    db $fd
    and a
    db $fd
    ld e, a
    db $fd
    ld l, a
    db $fd
    sub a
    db $fd
    ld l, e
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    ld [c], a
    cp a
    db $e3
    cp [hl]
    push hl
    cp [hl]
    rst $20
    cp h
    rst $20
    cp h
    push hl
    cp [hl]
    db $e3
    cp [hl]
    and $bf
    push hl
    cp e
    ld [c], a
    cp l
    ldh [$bf], a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld_long a, $ff05
    nop
    call nc, $fe2b
    ld bc, $57aa
    and l
    rst $38
    ld e, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    add a
    db $fd
    ld b, a
    db $fd
    ld b, a
    db $fd
    daa
    db $fd
    daa
    db $fd
    daa
    db $fd
    daa
    db $fd
    ld b, a
    db $fd
    ld h, a
    db $fd
    rst $00
    db $fd
    add a
    ld a, l
    rlca
    db $fd
    dec bc
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    pop hl
    cp a
    ld [c], a
    cp a
    db $e3
    cp [hl]
    push hl
    cp [hl]
    rst $28
    cp h
    rst $20
    cp h
    db $ed
    cp [hl]
    rst $28
    cp [hl]
    ld [$f7bf], a
    cp a
    rst $30
    cp a
    push hl
    cp a
    db $e3
    cp a
    pop hl
    cp a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    inc a
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld_long a, $ff05
    nop
    call nc, $fe2b
    ld bc, $57a8
    nop
    rst $38
    jp $ffff


    rst $38
    ld a, l
    rst $38
    db $dd
    rst $38
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    add a
    db $fd
    ld b, a
    db $fd
    ld b, a
    db $fd
    daa
    db $fd
    daa
    db $fd
    scf
    db $fd
    daa
    db $fd
    ld [hl], a
    db $fd
    ld d, a
    db $fd
    rst $30
    db $fd
    and a
    db $fd
    or a
    db $fd
    ld d, a
    db $fd
    rst $00
    db $fd
    adc e
    db $fd
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    db $e4
    cp a
    pop hl
    cp a
    ld [c], a
    cp a
    db $e3
    cp [hl]
    push hl
    cp [hl]
    rst $30
    cp h
    rst $20
    cp h
    push hl
    cp [hl]
    db $eb
    cp [hl]
    ld [c], a
    cp a
    pop hl
    cp a
    add sp, -$41
    push af
    cp a
    db $ec
    cp a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld_long a, $ff05
    nop
    call nc, $fe2b
    ld bc, $57a8
    ld bc, $e3ff
    rst $38
    inc e
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    ld b, a
    db $fd
    rlca
    db $fd
    sub a
    db $fd
    ld b, a
    db $fd
    ld b, a
    db $fd
    daa
    db $fd
    daa
    db $fd
    cpl
    db $fd
    ld h, a
    db $fd
    ld b, a
    db $fd
    rst $20
    db $fd
    sub a
    db $fd
    xor a
    db $fd
    rra
    db $fd
    add a
    db $fd
    set 7, l
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    db $e4
    cp a
    pop hl
    cp a
    ldh [$bf], a
    pop hl
    cp a
    ld [c], a
    cp a
    di
    cp [hl]
    push hl
    cp [hl]
    rst $20
    cp h
    rst $20
    cp h
    db $ed
    cp [hl]
    db $e3
    cp a
    add sp, -$41
    push af
    cp a
    db $ec
    cp a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc a
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld_long a, $ff05
    nop
    ld d, h
    xor e
    add c
    rst $38
    ld a, [hl]
    rst $38
    inc b
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    ld b, a
    db $fd
    rlca
    db $fd
    rla
    db $fd
    rlca
    db $fd
    add a
    db $fd
    ld b, a
    db $fd
    ld b, a
    db $fd
    cpl
    db $fd
    daa
    db $fd
    daa
    db $fd
    ld [hl], a
    db $fd
    sub a
    db $fd
    cpl
    db $fd
    rra
    db $fd
    add a
    db $fd
    set 7, l
    push af
    ei
    ld a, [$fc06]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    xor a
    rst $18
    ret nc

    cp a
    ldh [$bf], a
    ldh [$bf], a
    db $e4
    cp a
    pop hl
    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    pop af
    cp a
    ld [c], a
    cp a
    di
    cp [hl]
    db $ed
    cp [hl]
    push hl
    cp [hl]
    db $e3
    cp a
    add sp, -$41
    push af
    cp a
    db $ec
    cp a
    ret nc

    cp a
    xor a
    rst $18
    ld e, a
    ld h, b
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    ld [bc], a
    rst $38
    nop
    rst $38
    inc a
    rst $38
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [$9105]
    rst $28
    ld a, [hl]
    rst $38
    inc b
    rst $38
    adc c
    rst $38
    ld b, $ff
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld a, [$f506]
    ei
    dec bc
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    ld b, a
    db $fd
    rlca
    db $fd
    rla
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    and a
    db $fd
    ld c, a
    db $fd
    ld b, a
    db $fd
    daa
    db $fd
    ld [hl], a
    db $fd
    rst $28
    db $fd
    ld d, a
    db $fd
    rrca
    db $fd
    add a
    db $fd
    set 7, l
    push af
    ei
    ld a, [$fc06]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
