; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04b", ROMX[$4000], BANK[$4b]

    db $0a, $57

    ld c, c
    ld h, d
    ld d, d
    ld h, d
    ld e, e
    ld h, d
    ld h, h
    ld h, d
    ld l, e
    ld h, d
    ld [hl], d
    ld h, d

    db $79, $62, $3e, $69, $11, $68

    adc b
    ld l, e
    call nz, Call_04b_4d6b
    ld l, h
    adc b
    ld l, h
    dec hl
    ld l, l

    db $e7, $6d, $a0, $79

    call c, $1879
    ld a, d
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
    db $f4
    ld [hl], h
    db $f4
    ld [hl], h
    push af
    ld [hl], l
    push af
    ld [hl], l
    push af
    ld [hl], l
    push af
    ld [hl], l
    push af
    ld [hl], l
    db $f4
    ld [hl], h
    ld [bc], a
    ld [bc], a
    jp nz, $e2c2

    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    jp nz, Jump_04b_5fc2

    ld e, h
    ld e, a
    ld e, h
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ld e, a
    ld e, h
    ld a, [$fa1a]
    ld a, [de]
    ld a, [$fa1a]
    ld a, [de]
    ld a, [$fa1a]
    ld a, [de]
    ld a, [$fa1a]
    ld a, [de]
    ld b, d
    ld b, d
    ld [bc], a
    ld [bc], a
    ld h, d
    ld h, d
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld h, d
    ld h, d
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ccf
    jr c, jr_04b_40ce

    jr c, jr_04b_40d0

    jr c, jr_04b_40d2

    jr c, jr_04b_40f4

    ld e, b
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fd
    dec c
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    dec b
    dec b
    ld h, l
    ld h, l
    push af
    push af
    db $f4
    db $f4
    db $f4
    db $f4
    ld h, l
    ld h, l
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$7f], a
    ld h, b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc

jr_04b_40ce:
    rst $38
    inc bc

jr_04b_40d0:
    rst $38
    inc bc

jr_04b_40d2:
    rst $38
    inc bc
    rst $38
    inc bc
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl+], a
    ld [hl+], a
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

jr_04b_40f4:
    rst $38
    ret nz

    db $f4
    ld [hl], h
    db $f4
    ld [hl], h
    db $f4
    ld [hl], h
    db $f4
    ld [hl], h
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    db $f4
    ld [hl], h
    ld [bc], a
    ld [bc], a
    add d
    add d
    add b
    add b
    add [hl]
    add [hl]
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    add [hl]
    add [hl]
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld a, [$fa1a]
    ld a, [de]
    ld a, [$fa1a]
    ld a, [de]
    ld a, [$fc1a]
    inc e
    db $fc
    inc e
    ld a, [$021a]
    ld [bc], a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, b
    ld b, b
    ld b, [hl]
    ld b, [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld b, [hl]
    ld b, [hl]
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    cp $0e
    cp $0e
    db $fd
    dec c
    dec b
    dec b
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, c
    ld b, c
    ld b, l
    ld b, l
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld b, l
    ld b, l
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
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    adc h
    adc h
    adc h
    adc h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    nop
    nop
    jp nz, $e2c2

    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    jp nz, $40c2

    ld b, b
    ld [bc], a
    ld [bc], a
    ld h, d
    ld h, d
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld h, d
    ld h, d
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $fc
    inc c
    db $fc
    inc c
    db $fd
    dec c
    ld b, c
    ld b, c
    ld b, l
    ld b, l
    dec b
    dec b
    ld h, l
    ld h, l
    db $f4
    db $f4
    db $f4
    db $f4
    push af
    push af
    ld h, l
    ld h, l
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
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
    ld bc, $00ff
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    adc h
    adc h
    rst $08
    rst $08
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
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $fd
    dec c
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $4545
    ld b, c
    ld b, c
    ld b, l
    ld b, l
    ld h, l
    ld h, l
    push af
    push af
    push af
    push af
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    ret nz

    rst $38
    nop
    ld a, [$fa1a]
    ld a, [de]
    ld a, [$fa1a]
    ld a, [de]
    ld a, [$fe1a]
    ld e, $ff
    rrca
    rst $38
    ld bc, $0202
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, [hl]
    ld b, [hl]
    ld c, a
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld a, a
    ld a, b
    rst $38
    ldh a, [rIE]
    add b

    db $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $01, $ff, $01
    db $c7, $c7, $8b, $8b, $8b, $8b, $c3, $c3, $87, $87, $b3, $b3, $b3, $b3, $87, $87

    db $f4
    ld [hl], h
    db $f4
    ld [hl], h
    push af
    ld [hl], l
    push af
    ld [hl], l
    db $fd
    ld a, l
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    nop
    nop
    jp nz, $e2c2

    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld e, a
    ld e, h
    ld a, a
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    db $e3, $62, $cb, $4a, $d7, $56, $d7, $56, $e3, $62, $cb, $4a, $d7, $56, $d7, $56

    db $f4
    ld [hl], h
    db $f4
    ld [hl], h
    db $f4
    ld [hl], h
    db $f4
    ld [hl], h
    db $fc
    ld a, h
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    ld [bc], a
    ld [bc], a
    add d
    add d
    add b
    add b
    add [hl]
    add [hl]
    adc a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

    db $ff, $1c, $f7, $14, $ff, $1c, $f7, $14, $f7, $14, $f7, $14, $f7, $14

    rst $38
    db $08

    db $e3, $62, $cb, $4a, $d7, $56, $d7, $56, $e3, $62

    bit 1, d
    db $d3
    ld d, d
    rst $38
    inc a

    db $ff, $01

    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop

    db $c7, $c7, $8b, $8b

    adc e
    adc e
    jp $87c3


    add a
    or e
    or e
    rst $38
    rst $38
    rst $38
    db $fe

    db $2d, $2a, $2e, $25, $26, $00, $25, $26, $00, $2f, $30, $00

    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    ld d, $0c
    ld a, [bc]
    dec bc
    inc c
    inc e
    dec e
    ld e, $07
    ld [$1309], sp
    inc d
    dec d
    add hl, de
    ld a, [de]
    dec de
    inc de
    inc d
    dec d
    rra
    jr nz, jr_04b_437e

    inc b
    dec b
    ld b, $10
    ld de, $0412
    jr jr_04b_436c

    db $10
    ld de, $0412
    jr jr_04b_4372

jr_04b_436c:
    ld [hl+], a
    inc hl
    inc h
    ld bc, $0302

jr_04b_4372:
    dec c
    ld c, $0f
    ld bc, $0317
    dec c
    ld c, $0f
    ld bc, $0317

jr_04b_437e:
    dec c
    ld c, $0f
    daa
    jr z, @+$2b

    ld bc, $0302
    dec c
    ld c, $0f
    ld bc, $0317
    dec c
    ld c, $0f
    ld bc, $0317
    dec c
    ld c, $0f
    ld bc, $0317
    dec hl
    inc l
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $07, $07, $0c, $0f, $0c, $0f, $06, $07, $0e, $0f, $1c, $1f, $18, $1f, $18, $1f
    db $00, $ff, $00, $ff, $00, $ff, $1c, $e3, $30, $cf, $70, $8f, $40, $bf, $00, $ff
    db $18, $f8, $1c, $fc, $0c, $fc, $0c, $fc, $1c, $fc, $18, $f8, $1c, $fc, $0c, $fc

    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rlca
    rlca
    ld c, $0f
    ld c, $0f
    ret nz

    rst $38
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
    nop
    rst $38

    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff

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

    jr @+$01

    ld a, h
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld l, a
    rst $38
    inc sp
    rst $38
    ld bc, $8fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
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
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    ld a, a
    cp a
    cp a
    add a
    add a
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
    add b
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc c
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
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$78]
    db $f8

    db $0c, $0f, $0c, $0f, $1c, $1f, $18, $1f, $18, $1f, $38, $3f, $70, $7f, $60, $7f
    db $00, $ff, $00, $ff, $00, $ff, $0c, $ff, $0e, $ff, $1f, $ff, $1b, $ff, $0d, $ff
    db $0c, $fc, $0c, $fc, $1c, $fc, $1c, $fc, $0e, $fe, $86, $fe, $8e, $fe, $9c, $fc

    rrca
    rrca
    rlca
    rlca
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
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    cp $ff
    rst $10
    rst $38
    and e
    rst $18
    db $e3
    sbc a
    and e
    rst $18
    rst $00
    rst $38
    cp $ff
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$3f
    ret nz

    ld bc, $01ff
    rst $38
    ld bc, $e0ff
    rra
    ldh [$1f], a
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    add e
    add e
    rst $00
    rst $00
    rst $20
    rst $20
    rst $28
    rst $28
    xor $ef
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
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
    inc a
    db $fc
    inc a
    db $fc
    ld e, $fe
    ld c, $fe
    ld e, $fe
    ld e, $fe
    inc a
    db $fc
    ld a, h
    db $fc

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01
    db $70, $7f, $38, $3f, $18, $1f, $38, $3f, $30, $3f, $30, $3f, $f1, $fe, $e1, $fe
    db $1f, $ff, $1e, $ff, $0c, $ff, $00, $ff, $00, $ff, $e0, $1f, $80, $7f, $80, $7f
    db $18, $f8, $1c, $fc, $0e, $fe, $26, $fe, $67, $ff, $d3, $bf, $90, $ff, $60, $ff
    db $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $c0, $c0, $c0, $c0, $c0, $c0

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
    rlca
    rlca
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    ld a, a
    add b
    ld a, [hl]
    add c
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ld a, b
    ld hl, sp+$7c
    db $fc
    inc a
    db $fc
    inc e
    db $fc
    inc e
    db $fc

    db $03, $03, $03, $03, $03, $03, $07, $07, $0e, $0f, $0c, $0f, $0e, $0f, $07, $07
    db $00, $ff, $00, $ff, $00, $ff, $0c, $f3, $08, $f7, $38, $c7, $20, $df, $00, $ff
    db $e0, $e0, $60, $e0, $70, $f0, $38, $f8, $18, $f8, $18, $f8, $38, $f8, $70, $f0

    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
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
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, $fe
    ld a, $fe
    inc a
    db $fc
    jr nc, @+$01

    ld a, b
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc e
    db $fc
    inc e
    db $fc
    inc a
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b

    db $03, $03, $03, $03, $0f, $0f, $1e, $1f, $18, $1f, $18, $1f, $0c, $0f, $1c, $1f
    db $00, $ff, $08, $ff, $18, $ff, $34, $ef, $24, $ff, $18, $ff, $00, $ff, $00, $ff
    db $60, $ff, $70, $ff, $fc, $ff, $dc, $ff, $de, $ff, $eb, $ff, $7f, $ff, $38, $ff
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $80, $ff, $f0, $ff, $fc, $ff
    db $60, $e0, $60, $e0, $e0, $e0, $e0, $e0, $f0, $f0, $30, $f0, $18, $f8, $18, $f8

    rrca
    rrca
    ld c, $0f
    ld e, $1f
    inc e
    rra
    inc e
    rra
    inc e
    rra
    ld e, $1f
    rra
    rra
    ld a, $fe
    rra
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
    cp $ff
    cp $ff
    db $fc
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
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ldh a, [$f0]
    ld [hl], b
    db $f0

    db $18, $1f, $1c, $1f, $0e, $0f, $06, $07, $0c, $0f, $0c, $0f, $1c, $1f, $38, $3f
    db $00, $ff, $00, $ff, $03, $fc, $06, $f9, $0e, $f1, $08, $f7, $00, $ff, $00, $ff
    db $cc, $cf, $78, $ff, $b0, $7f, $30, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $1c, $fc, $0c, $fc, $0c, $fc, $1c, $fc, $18, $f8, $1c, $fc, $0c, $fc, $0c, $fc

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
    nop
    nop
    nop
    nop
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], b
    ldh a, [$78]
    ld hl, sp+$38
    ld hl, sp+$3c
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    ld a, b
    db $f8

    db $30, $3f, $38, $3f, $18, $1f, $38, $3f, $30, $3f, $3b, $3f, $1f, $1f, $0e, $0e
    db $00, $ff, $03, $ff, $07, $ff, $07, $ff, $03, $ff, $80, $ff, $c0, $ff, $c0, $ff
    db $c0, $ff, $e0, $ff, $60, $7f, $c0, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $00, $ff, $00, $ff, $00, $ff, $20, $ff, $60, $ff, $d0, $bf, $90, $ff, $60, $ff
    db $1c, $fc, $38, $f8, $30, $f0, $30, $f0, $70, $f0, $e0, $e0, $c0, $c0, $c0, $c0

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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    ld bc, $03ff
    rst $38
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
    rrca
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
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

    db $e0, $ff, $60, $7f, $e0, $ff, $c0, $ff, $e6, $ff, $7f, $7f, $3f, $3f, $01, $01
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $33, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $03, $ff, $03, $ff, $01, $ff, $03, $ff, $67, $ff, $ff, $ff, $fc, $fc
    db $c0, $c0, $80, $80, $80, $80, $80, $80, $80, $80, $00, $00, $00, $00, $00, $00

    ccf
    ccf
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
    nop
    nop
    add b
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, sp
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    call c, Call_000_00fc
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    ccf
    rst $38
    ld a, [hl]
    cp $7e
    cp $7c
    db $fc
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld h, b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    rra
    rst $38
    ld e, $ff
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
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
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
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    inc e
    rra
    jr c, @+$41

    ld [hl], b
    ld a, a
    ld a, h
    ld a, a
    ld a, $3f
    ld a, $3f
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    rrca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $fe
    ld e, $fe
    ld e, $fe
    rlca
    rlca
    ld b, $07
    ld e, $1f
    inc a
    ccf
    jr nc, jr_04b_49a5

    jr nc, @+$41

    jr nc, @+$41

    ld [hl], b
    ld a, a
    nop
    rst $38
    ld c, $f1
    ld e, $e1
    jr @-$17

    ld a, b
    add a
    ldh a, [rIF]
    ret nz

    ccf
    ret nz

    ccf
    jr @+$01

    ld a, b
    rst $38
    call c, $a4ff
    rst $18
    and h
    rst $18
    call z, $78ff
    rst $38
    nop
    rst $38
    ld a, b
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$1c
    db $fc
    ld e, $fe
    ld c, $fe
    inc bc
    rst $38
    inc bc
    rst $38
    jr c, jr_04b_49dd

    inc a
    ccf
    inc e
    rra
    inc e
    rra
    inc e

jr_04b_49a5:
    rra
    jr @+$21

    jr c, jr_04b_49e9

    jr c, @+$41

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
    inc a
    rst $38
    ld a, [hl]
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    adc a
    rst $38
    add a
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    nop

jr_04b_49dd:
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08

jr_04b_49e9:
    rst $38
    ld b, $fe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, $3f
    rrca
    rst $38
    rlca
    rst $38
    inc bc
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
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    sbc h
    db $fc
    adc h
    db $fc
    inc c
    db $fc
    ld c, $fe
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    ld a, a
    jr nc, jr_04b_4a65

    jr c, jr_04b_4a67

    inc a
    ccf
    db $fc
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
    ld hl, sp-$01
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld c, $fe
    ld b, $fe
    ld b, $fe
    ld b, $fe
    ld c, $fe
    jr c, jr_04b_4a8d

    jr c, jr_04b_4a8f

    ld a, $3f
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld c, $0f
    ld c, $0f
    rst $28
    rst $38
    db $d3
    rst $28
    db $d3
    rst $28
    rst $20
    rst $38
    ld a, [hl]

jr_04b_4a65:
    rst $38
    inc a

jr_04b_4a67:
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
    ld bc, $01fe
    cp $07
    ld hl, sp+$0f
    ldh a, [rTAC]
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ei
    rlca
    ld sp, hl
    rlca
    add c
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    rrca

jr_04b_4a8d:
    rrca
    rra

jr_04b_4a8f:
    rra
    inc a
    ccf
    cp b
    cp a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    rrca
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
    rrca
    rst $38
    ld e, $fe
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld b, $07
    ld hl, sp-$01
    sbc b
    rst $38
    nop
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    inc c
    rst $38
    inc a
    rst $38
    ld l, [hl]
    rst $38
    db $fc
    rst $38
    cp [hl]
    rst $38
    or a
    rst $38
    rst $00
    rst $38
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $30
    inc e
    db $fc
    inc e
    db $fc
    inc c
    db $fc
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    nop
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

    ld h, b
    ldh [$60], a
    ldh [$0e], a
    rrca
    rlca
    rlca
    rlca
    rlca
    rra
    rra
    ld a, $3f
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
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
    inc e
    db $fc
    ld e, $fe
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    nop
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
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld d, d
    rst $28
    ld d, d
    rst $28
    ld h, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld e, $ff
    inc c
    rst $38

jr_04b_4b92:
    inc c
    rst $38

jr_04b_4b94:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_04b_4b92

    jr nc, jr_04b_4b94

    ld h, b
    ldh [$60], a
    ldh [rSVBK], a
    ldh a, [$38]
    ld hl, sp+$70
    ld a, a
    jr c, jr_04b_4bef

    inc e
    rra
    inc e
    rra
    inc e
    rra
    jr c, @+$41

    jr c, jr_04b_4bf9

    ld [hl], b
    ld a, a
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    cp [hl]
    cp a
    cp $ff
    cp $ff
    ret nz

    rst $38
    inc a
    rst $38
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    db $d3
    rst $28
    db $d3
    rst $28
    rst $20
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop

jr_04b_4bef:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff

jr_04b_4bf9:
    rst $38

jr_04b_4bfa:
    inc bc
    rst $38

jr_04b_4bfc:
    rra
    rst $38
    ld a, $fe
    jr c, jr_04b_4bfa

    jr c, jr_04b_4bfc

    ld a, b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld b, $07
    nop
    rst $38
    ld b, $ff
    ld c, $ff
    ld a, [hl]
    rst $38
    ld a, e
    ei
    ccf
    rst $38
    rra
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

jr_04b_4c36:
    inc bc
    rst $38

jr_04b_4c38:
    rlca
    rst $38

jr_04b_4c3a:
    ld b, $fe
    jr jr_04b_4c36

    jr jr_04b_4c38

    jr c, jr_04b_4c3a

    ld [hl], b
    ldh a, [$60]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, b
    ld a, a
    inc e
    rra
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, $fe
    inc a
    db $fc
    ld e, $fe
    ld c, $fe
    ld c, $fe
    ld b, $07
    ld b, $07
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
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    inc a
    ccf
    inc e
    rra
    ld c, $0f
    ld c, $0f
    ld b, $fe
    ld c, $fe
    inc e
    db $fc

jr_04b_4ca2:
    inc e
    db $fc

jr_04b_4ca4:
    inc c
    db $fc
    inc e
    db $fc
    jr c, jr_04b_4ca2

    jr c, jr_04b_4ca4

    ld e, $1f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    inc e
    rra
    inc e
    rra

jr_04b_4cb8:
    inc e
    rra
    rra
    rra
    inc e
    db $fc
    jr c, jr_04b_4cb8

    ld a, b
    ld hl, sp+$70
    ldh a, [$38]
    ld hl, sp+$3c
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc c
    rrca
    inc c
    rrca
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    or c
    rst $38

jr_04b_4d06:
    ld sp, hl
    rst $38

jr_04b_4d08:
    rst $38
    rst $38

jr_04b_4d0a:
    rst $18
    rst $18
    jr jr_04b_4d06

    jr jr_04b_4d08

    jr c, jr_04b_4d0a

    ldh a, [$f0]
    ldh [$e0], a
    add b
    add b
    add b
    add b
    nop
    nop
    rrca
    rrca
    rlca
    rlca
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
    pop hl
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    cp b

Call_04b_4d6b:
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld bc, $83ff
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38

jr_04b_4d78:
    cp $fe
    ld a, h
    ld a, h
    inc e
    db $fc
    jr c, jr_04b_4d78

    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

    db $08, $08, $14, $1c, $22, $3e, $22, $3e, $29, $37, $31, $2f, $41, $7f, $45, $7f
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $0c, $0c, $1e, $1e, $32, $3e, $e3, $ff, $81, $ff, $00, $ff, $80, $ff, $98, $e7
    db $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $80, $80, $80, $80, $c0, $c0

    ld b, $07
    ld b, $07
    ld c, $0f
    ld e, $1f
    inc e
    rra
    jr jr_04b_4df7

    jr @+$21

    inc e
    rra
    ld c, $f1
    ld e, $e1
    jr @-$17

    ld a, b
    add a
    ldh a, [rIF]

jr_04b_4de6:
    ret nz

    ccf

jr_04b_4de8:
    ret nz

    ccf
    nop
    rst $38
    jr c, jr_04b_4de6

    jr c, jr_04b_4de8

    inc e
    db $fc

jr_04b_4df2:
    inc c
    db $fc
    inc c
    db $fc
    inc e

jr_04b_4df7:
    db $fc
    jr c, jr_04b_4df2

    ldh a, [$f0]

    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $00, $00
    db $4d, $7f, $41, $7f, $90, $ef, $a0, $df, $02, $fd, $04, $fb, $18, $ff, $90, $ff
    db $00, $00, $00, $00, $80, $80, $40, $c0, $40, $c0, $80, $80, $40, $c0, $40, $c0
    db $01, $01, $01, $01, $01, $01, $03, $03, $02, $03, $02, $03, $03, $03, $06, $07
    db $30, $cf, $a0, $df, $80, $ff, $00, $ff, $04, $ff, $0e, $ff, $0a, $ff, $0e, $ff
    db $60, $e0, $20, $e0, $20, $e0, $60, $e0, $60, $e0, $30, $f0, $30, $f0, $60, $e0

    ld e, $1f
    ld c, $0f
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ccf
    ccf
    ld a, a
    ld a, a
    and $ff
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
    rlca
    rst $38
    ld b, $ff
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
    ld hl, sp-$01
    db $fc
    rst $38
    cp h
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
    ld bc, $e0ff
    ldh [rSVBK], a
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$e0]
    db $e0

    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00
    db $07, $fb, $0a, $f7, $00, $ff, $30, $ff, $20, $ff, $80, $ff, $92, $ff, $7f, $7f
    db $20, $e0, $20, $e0, $20, $e0, $40, $c0, $40, $c0, $80, $80, $80, $80, $00, $00
    db $06, $07, $03, $03, $03, $03, $06, $07, $04, $07, $1c, $1f, $30, $3f, $20, $3f
    db $08, $ff, $00, $ff, $00, $ff, $31, $cf, $63, $9f, $43, $be, $03, $ff, $00, $ff
    db $30, $f0, $30, $f0, $60, $e0, $30, $f0, $90, $f0, $98, $f8, $8c, $fc, $64, $9c

    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    ld a, a
    jr nc, jr_04b_4f53

    jr nc, jr_04b_4f55

    ld [hl], b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld a, $ff
    or a
    rst $38
    add e
    rst $38
    and c
    rst $38
    xor e
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a

jr_04b_4f44:
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, jr_04b_4f44

    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop

jr_04b_4f53:
    rst $38
    add b

jr_04b_4f55:
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ret nz

    ret nz

    ldh [$e0], a
    ld a, h
    db $fc
    ld a, [hl]
    cp $67
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

    db $30, $3f, $20, $3f, $30, $3f, $18, $1f, $70, $7f, $c0, $ff, $c1, $ff, $63, $7f
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $18, $ff, $18, $ff, $36, $ff, $bf, $ff
    db $c4, $3c, $8c, $7c, $0c, $fc, $04, $fc, $04, $fc, $0e, $fe, $07, $ff, $c1, $ff

    ret nz

    rst $38
    ldh [rIE], a
    ld a, b
    ld a, a
    inc a
    ccf
    inc e
    rra
    inc e
    rra
    jr c, jr_04b_4fe9

    jr c, jr_04b_4feb

    jr @+$01

    jr c, @+$01

    ld a, h
    rst $38
    cp $df
    and $df
    add $ff
    ld a, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [$0c]
    di
    inc a
    jp $8778


    ld h, b
    sbc a
    ld h, b
    sbc a
    inc e
    db $fc
    inc c
    db $fc
    ld c, $fe
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop

jr_04b_4fe9:
    rst $38
    nop

jr_04b_4feb:
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
    inc bc
    rst $38
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

    add b
    add b
    add b
    add b

    db $23, $3e, $63, $7f, $40, $7f, $60, $7f, $60, $7f, $c0, $ff, $c0, $ff, $c0, $ff
    db $81, $ff, $86, $f9, $0c, $f3, $08, $f7, $01, $ff, $c3, $ff, $a3, $be, $e3, $ff
    db $21, $3f, $c3, $ff, $c6, $fe, $07, $ff, $01, $ff, $81, $ff, $83, $ff, $86, $fe

    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

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
    nop
    rst $38
    ld sp, $3fff
    rst $38
    ld a, $ff
    ld [hl], l
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    inc a
    rst $38
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
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
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

    add b
    add b
    nop
    nop

    db $70, $7f, $18, $1f, $1c, $1f, $0c, $0f, $0d, $0f, $07, $07, $00, $00, $00, $00
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $80, $ff, $80, $ff, $f6, $ff, $7f, $7f
    db $04, $fc, $0c, $fc, $18, $f8, $08, $f8, $18, $f8, $70, $f0, $c0, $c0, $80, $80

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $ffe0
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    call z, $fcff
    rst $38
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc e
    db $fc
    ld a, h
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    ldh [$e0], a
    cp $ff
    rra
    rra
    rrca
    rrca
    rlca
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
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    and $ff
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
    ld bc, $e0ff
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    cp $ff
    ld a, [hl]
    ld a, a
    ccf
    ccf
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
    rst $38
    jr nc, @+$01

    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rra
    rra
    rra
    rra
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
    add c
    rst $38
    rst $00
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
    adc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld h, c
    pop hl
    ld bc, $03ff
    rst $38

jr_04b_5180:
    rrca
    rst $38
    rra
    rst $38
    inc e
    db $fc
    jr c, jr_04b_5180

    ld hl, sp-$08
    ldh a, [$f0]
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

    db $00, $9f, $00, $a6, $a7, $a8, $b1, $b2, $b3, $a0, $a1, $a2, $a9, $aa, $ab, $b4
    db $b5, $b6, $bd, $be, $bf, $c7, $c8, $c9, $d0, $d1, $d2, $00, $01, $02, $03, $00
    db $00, $0f, $10, $11, $00, $1b, $1c, $1d, $1e, $1f, $25, $06, $06, $26, $27, $2e
    db $2f, $30, $31, $32, $37, $06, $38, $39, $3a, $3e, $3f, $40, $41, $42, $00, $47
    db $48, $49, $4a

    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    nop
    nop
    ld e, h
    ld e, l
    ld b, $5e
    ld e, a
    nop
    nop
    ld l, b
    ld b, $69
    ld e, l
    ld l, d
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, h
    ld a, l
    ld a, [hl]
    ld e, l
    ld a, a
    ld b, $80
    add a
    ld b, $88
    ld b, $5e
    adc c
    adc d
    adc [hl]
    adc a
    ld b, $06
    ld b, $90
    nop
    nop
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    nop
    nop
    and e
    ld b, $06
    ld b, $06
    and h
    and l
    nop
    nop
    xor h
    ld b, $ad
    xor [hl]
    ld b, $af
    or b
    nop
    nop
    or a
    ld b, $b8
    cp c
    cp d
    cp e
    cp h
    nop
    nop
    ret nz

    ld b, $c1
    jp nz, $c4c3

    push bc
    add $ca
    rlc [hl]
    call z, Call_000_06cd
    ld b, $ce
    rst $08
    db $d3
    call nc, $0606
    ld b, $c1
    ld b, $d5
    nop
    nop
    sub $d7
    ld b, $06
    ld b, $d8
    reti


    nop
    nop
    nop
    jp c, $dcdb

    db $dd
    sbc $df
    nop
    ld d, a
    ld e, b
    ld b, $59
    ld e, d
    ld b, $06
    ld e, e
    nop
    ld h, b
    ld b, $61
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, e
    ld b, $6c
    ld b, $6d
    ld l, [hl]
    ld l, a
    ld b, $70
    ld a, b
    ld b, $06
    ld b, $79
    ld a, d
    ld b, $06
    ld a, e
    add c
    ld b, $82
    add e
    ld b, $84
    ld b, $85
    add [hl]
    adc e
    adc h
    ld b, $06
    ld b, $06
    ld b, $8d
    nop
    nop
    sub c
    ld b, $06
    ld b, $06
    ld b, $92
    nop
    nop
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
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
    dec d
    ld b, $16
    rla
    jr jr_04b_52d4

    ld b, $1a
    jr nz, jr_04b_52e0

    ld b, $06
    ld b, $22
    ld b, $23
    ld b, $06
    inc h
    jr z, jr_04b_52f3

Jump_04b_52ca:
    ld b, $2a
    dec hl
    ld b, $06
    rlca
    ld b, $2c
    dec l
    inc sp

jr_04b_52d4:
    ld b, $06
    inc [hl]
    dec [hl]
    ld b, $14
    dec d
    ld b, $36
    nop
    dec sp
    inc a

jr_04b_52e0:
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $3d
    nop
    nop
    ld b, e
    ld b, h
    ld b, $06
    ld b, $06
    ld b, $45
    ld b, [hl]

jr_04b_52f3:
    nop
    nop
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
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
    dec d
    ld b, $16
    rla
    jr jr_04b_532c

    ld b, $1a
    jr nz, jr_04b_5338

    ld b, $06
    ld b, $22
    ld b, $23
    ld b, $06
    inc h
    jr z, jr_04b_534b

    ld b, $2a
    dec hl
    ld b, $06
    rlca
    ld b, $2c
    dec l
    inc sp

jr_04b_532c:
    ld b, $06
    inc [hl]
    dec [hl]
    ld b, $14
    dec d
    ld b, $36
    nop
    dec sp
    inc a

jr_04b_5338:
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $3d
    nop
    nop
    ld b, e
    ld b, h
    ld b, $06
    ld b, $06
    ld b, $45
    ld b, [hl]

jr_04b_534b:
    nop
    nop
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $e9, $00, $ff, $ff, $eb, $ea, $55, $fc, $ee, $8f, $00, $5f, $bf, $00, $3f, $00
    db $7f, $00, $ff, $fc, $e0, $7e, $fe, $fa, $e0, $7e, $80, $3f, $80, $1e, $e0, $b5
    db $ff, $e0, $fb, $e0, $b7, $e0, $ff, $e0, $be, $ff, $e0, $7c, $e3, $b8, $e2, $d0
    db $ed, $a0, $ff, $ea, $41, $f7, $82, $ab, $05, $df, $3f, $ff, $cf, $7f, $84, $ff
    db $30, $ff, $7b, $cf, $1f, $ff, $b4, $ff, $7b, $ff, $cb, $e0, $ff, $ff, $80, $f4
    db $fd, $18, $8c, $e0, $fe, $00, $fd, $00, $fb, $00, $7f, $f7, $00, $ef, $00, $df
    db $00, $bf, $7c, $e2, $ff, $fe, $00, $fc, $03, $f8, $02, $f0, $0f, $ff, $e0, $0a
    db $c1, $3f, $82, $2b, $07, $ff, $ff, $0a, $af, $17, $7f, $2a, $bf, $5d, $ff, $ff
    db $bf, $e0, $70, $c7, $f0, $8a, $c0, $1d, $27, $b0, $4f, $7b, $80, $ff, $80, $fa
    db $07, $10, $e4, $fe, $e1, $fd, $0f, $84, $e0, $0b, $f0, $05, $d8, $02, $fc, $ab
    db $01, $76, $ff, $c0, $dd, $fb, $c0, $aa, $fc, $e3, $80, $ff, $aa, $c0, $ff, $a0
    db $ea, $f0, $ff, $aa, $fb, $ff, $77, $fc, $e0, $dc, $ff, $a8, $7f, $73, $4f, $3f
    db $22, $9f, $0d, $00, $ff, $f7, $f6, $18, $a2, $c2, $fc, $fe, $e3, $08, $f0, $01
    db $fc, $03, $78, $85, $30, $ff, $cf, $10, $aa, $11, $ef, $12, $ab, $17, $ef, $ef
    db $1a, $af, $1f, $fc, $e2, $8a, $ff, $37, $ef, $ff, $2a, $ff, $dd, $78, $e6, $fc
    db $cf, $fb, $f4, $80, $ff, $80, $da, $e0, $8c, $c0, $0c, $00, $f5, $00, $ff, $0a
    db $f0, $05, $f8, $02, $fc, $e1, $16, $ff, $c0, $3f, $80, $5d, $00, $ff, $07, $7f
    db $5f, $1f, $ff, $1d, $ff, $7f, $10, $e0, $ff, $fc, $e8, $ff, $fe, $ff, $a8, $fe
    db $70, $ff, $a0, $fa, $ff, $c0, $fd, $80, $eb, $03, $f7, $02, $af, $f0, $00, $ff
    db $80, $ff, $80, $c9, $7a, $c1, $bf, $00, $5f, $80, $57, $2e, $c0, $75, $90, $a0
    db $d7, $90, $a0, $bf, $fc, $e4, $f7, $80, $ea, $80, $74, $c2, $0a, $bf, $37, $7e
    db $ff, $2b, $fc, $df, $f8, $af, $f0, $7e, $e1, $cf, $bc, $c2, $c8, $95, $00, $df
    db $ee, $ed, $07, $00, $a1, $1f, $20, $a0, $0e, $c5, $7e, $c5, $f8, $eb, $27, $02
    db $a0, $f5, $ff, $08, $f3, $0c, $f1, $0e, $e1, $0a, $c1, $ff, $3e, $81, $2a, $01
    db $fe, $0f, $a0, $1f, $df, $e0, $3f, $80, $7f, $80, $70, $a4, $0d, $00, $c7, $ab
    db $03, $77, $00, $ff, $10, $d5, $f8, $f7, $f5, $00, $e1, $cf, $86, $80, $04, $a3
    db $5e, $e5, $e8, $83, $7b, $80, $37, $ff, $80, $1f, $e0, $0f, $a0, $06, $71, $02
    db $97, $a8, $00, $dd, $78, $c5, $f0, $00, $df, $ed, $ca, $80, $2e, $10, $c0, $f8
    db $00, $fc, $fe, $e0, $fe, $fe, $e2, $90, $e7, $a4, $f0, $d1, $70, $85, $af, $78
    db $86, $f0, $80, $77, $ec, $80, $dd, $ff, $1f, $a0, $3c, $43, $7e, $80, $cf, $10
    db $c3, $b4, $4b, $80, $df, $f0, $df, $e8, $d5, $78, $c1, $0f, $f8, $ff, $0b, $ac
    db $0f, $fe, $0b, $be, $3f, $fe, $7f, $2b, $fe, $ff, $fe, $ab, $fe, $77, $fc, $e0
    db $ff, $dd, $fe, $fa, $04, $04, $73, $02, $a8, $4f, $01, $dc, $30, $cf, $80, $ff
    db $00, $bf, $fc, $88, $60, $e9, $fe, $92, $62, $70, $8d, $ff, $fc, $e4, $5e, $00
    db $bc, $fb, $03, $78, $78, $61, $0b, $c3, $37, $82, $2f, $bf, $0d, $df, $0a, $af
    db $07, $7e, $68, $e0, $d8, $a3, $34, $cb, $80, $ff, $00, $7f, $78, $47, $5f, $98
    db $e1, $05, $fe, $10, $60, $17, $c1, $3f, $81, $5f, $07, $ff, $7f, $ea, $0f, $cf
    db $3f, $8a, $2f, $0f, $08, $a0, $fd, $3f, $08, $80, $ff, $ff, $af, $f0, $7f, $e0
    db $ff, $bf, $c0, $ff, $80, $f0, $0a, $e0, $17, $8f, $c0, $2a, $80, $5d, $80, $bf
    db $80, $ff, $00, $4e, $80, $77, $2f, $c0, $77, $14, $40, $d7, $e0, $f7, $0c, $42
    db $be, $fc, $e3, $ef, $c0, $df, $80, $af, $ea, $20, $e7, $ff, $10, $c3, $28, $81
    db $5c, $0b, $be, $37, $7f, $7c, $2f, $f8, $df, $f0, $f4, $cb, $80, $bf, $a0, $00
    db $9f, $00, $87, $80, $ad, $fc, $e5, $e8, $25, $de, $78, $c3, $0d, $0e, $f0, $20
    db $37, $82, $2b, $80, $3f, $80, $bf, $10, $b1, $80, $3a, $ef, $7e, $2b, $bc, $5f
    db $80, $60, $7f, $f0, $af, $47, $f0, $df, $f0, $80, $9f, $80, $bf, $80, $a7, $0e
    db $80, $3e, $ff, $fa, $07, $f7, $03, $f2, $09, $f1, $0c, $42, $68, $60, $36, $68
    db $60, $00, $bf, $00, $df, $7c, $ac, $e8, $f4, $82, $97, $7d, $00, $be, $78, $42
    db $17, $08, $60, $fc, $e7, $1a, $7e, $84, $a0, $70, $87, $f0, $0a, $f0, $0d, $78
    db $04, $51, $fe, $80, $3f, $80, $ff, $fc, $8b, $88, $ec, $80, $22, $e8, $80, $e9
    db $98, $08, $64, $08, $ca, $0f, $84, $e0, $07, $70, $8a, $3f, $30, $cd, $a0, $cb
    db $43, $b7, $78, $81, $00, $df, $d0, $80, $ff, $00, $ae, $e2, $22, $88, $41, $2e
    db $e8, $00, $0b, $f0, $ef, $0f, $a8, $0f, $fc, $80, $65, $aa, $fe, $76, $ff, $ff
    db $a8, $ff, $d9, $ff, $a2, $ff, $67, $ff, $ff, $8a, $ff, $9d, $ff, $7f, $cf, $ff
    db $a8, $80, $ff, $80, $ff, $f8, $60, $18, $72, $28, $e2, $80, $ae, $00, $bf, $aa
    db $01, $ff, $02, $ab, $07, $70, $00, $77, $ea, $6c, $00, $dc, $7c, $e0, $73, $7c
    db $e0, $cd, $ff, $ff, $00, $80, $ec, $00, $00

    nop

    db $80, $7e, $96, $73, $40, $22, $a0, $08, $40, $02, $40, $7d, $e8, $03, $a0, $08
    db $40, $02, $40, $13, $54, $1b, $a0, $08, $40, $02, $54, $1b, $e8, $03, $a0, $08
    db $40, $02, $e8, $03, $40, $13, $a0, $08

    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h

    jr jr_04b_570c

jr_04b_570c:
    call Call_04b_5817
    call Call_04b_5742
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
    ld hl, $5360
    ld de, $d000
    call Call_000_1f2f
    call Call_04b_614e
    ld hl, $56da
    ld de, $0205
    call Call_000_0595
    ret


Call_04b_5742:
    ld hl, $da00

jr_04b_5745:
    ld a, [hl+]
    cp $ff
    jr z, jr_04b_576b

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, e
    cp $03
    jr z, jr_04b_5758

    cp $02
    jr nz, jr_04b_5769

jr_04b_5758:
    ld a, c
    and a
    jr z, jr_04b_5769

    ld a, c
    rrca
    rrca
    rrca
    and $07
    ld e, $00
    push hl
    call Call_04b_576c
    pop hl

jr_04b_5769:
    jr jr_04b_5745

jr_04b_576b:
    ret


Call_04b_576c:
    add a
    add a
    add a
    ld hl, $57d7
    add l
    ld l, a
    jr nc, jr_04b_5777

    inc h

jr_04b_5777:
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

jr_04b_5783:
    push de

jr_04b_5784:
    ld a, [hl]
    and a
    jr z, jr_04b_57c7

    bit 7, d
    jr nz, jr_04b_57c7

    ld a, d
    cp $14
    jr nc, jr_04b_57c7

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
    ld de, $4026
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
    jr c, jr_04b_57bc

    ld c, $08

jr_04b_57bc:
    push bc
    call Call_04b_6221
    pop bc
    dec c
    jr nz, jr_04b_57bc

    pop hl
    pop de
    pop bc

jr_04b_57c7:
    inc hl
    inc d
    dec e
    jr nz, jr_04b_5784

    pop de
    inc b
    ld a, c
    sub $08
    ld c, a
    jr z, jr_04b_57d6

    jr nc, jr_04b_5783

jr_04b_57d6:
    ret


    db $00, $00, $01, $01, $36, $43

    nop
    nop

    db $00, $00, $01, $02, $37, $43

    nop
    nop

    db $ff, $00, $03, $03, $39, $43

    nop
    nop
    rst $38
    nop
    inc bc
    inc b
    ld b, d
    ld b, e
    nop
    nop
    rst $38
    nop
    inc bc
    dec b
    ld c, [hl]
    ld b, e
    nop
    nop
    rst $38
    nop
    inc bc
    ld b, $5d
    ld b, e
    nop
    nop
    rst $38
    nop
    inc bc
    rlca
    ld l, a
    ld b, e
    nop
    nop
    rst $38
    nop
    inc bc
    ld [$4384], sp
    nop
    nop

Call_04b_5817:
    ld hl, $da00

jr_04b_581a:
    ld a, [hl+]
    cp $ff
    jr z, jr_04b_583d

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $01
    jr nz, jr_04b_583b

    ld a, b
    rrca
    rrca
    rrca
    and $07
    jr z, jr_04b_583b

    cp $07
    jr z, jr_04b_583b

    ld e, b
    push hl
    call Call_04b_584e
    pop hl

jr_04b_583b:
    jr jr_04b_581a

jr_04b_583d:
    ld a, [$c3b7]
    cp $0c
    jr nz, jr_04b_584d

    ld a, $07
    ld d, $0a
    ld e, $3f
    call Call_04b_584e

jr_04b_584d:
    ret


Call_04b_584e:
    add a
    add a
    add a
    ld hl, $610e
    add l
    ld l, a
    jr nc, jr_04b_5859

    inc h

jr_04b_5859:
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

jr_04b_5866:
    push de

jr_04b_5867:
    ld a, [hl]
    and a
    jr z, jr_04b_58b2

    bit 7, d
    jr nz, jr_04b_58b2

    ld a, d
    cp $14
    jr nc, jr_04b_58b2

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
    ld de, $58c0
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
    jr nc, jr_04b_5893

    inc h

jr_04b_5893:
    ld bc, $d000
    add hl, bc
    call Call_04b_6221
    call Call_04b_6221
    call Call_04b_6221
    call Call_04b_6221
    call Call_04b_6221
    call Call_04b_6221
    call Call_04b_6221
    call Call_04b_6221
    pop hl
    pop de
    pop bc

jr_04b_58b2:
    inc hl
    inc d
    dec e
    jr nz, jr_04b_5867

    pop de
    ld a, b
    add $08
    ld b, a
    dec c
    jr nz, jr_04b_5866

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
    jr jr_04b_5968

    jr nc, @+$41

    jr nc, jr_04b_59ac

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

jr_04b_5968:
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

jr_04b_59ac:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_04b_5af9:
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
    jr jr_04b_5b44

    jr jr_04b_5b46

    jr jr_04b_5b68

    jr nc, jr_04b_5b6a

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

jr_04b_5b44:
    nop
    nop

jr_04b_5b46:
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

jr_04b_5b68:
    nop
    nop

jr_04b_5b6a:
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    jr nc, jr_04b_5af9

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

    jr nz, jr_04b_5c14

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

jr_04b_5bcc:
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
    jr jr_04b_5bcc

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

jr_04b_5c14:
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

jr_04b_5c2e:
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
    jr jr_04b_5c2e

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
    jr nz, jr_04b_5cd8

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

jr_04b_5cd8:
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
    jp z, Jump_04b_52ca

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

jr_04b_5db2:
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_04b_5db2

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
    jp c, $5457

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

Jump_04b_5fc2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nc, jr_04b_610d

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
    jr z, jr_04b_611e

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

jr_04b_610d:
    ld h, $ff
    ld sp, hl
    inc bc
    ld bc, $60c0
    nop
    nop
    rst $38
    ld sp, hl
    inc bc
    ld bc, $60c0
    nop
    nop

jr_04b_611e:
    rst $38
    ld sp, hl
    inc bc
    ld bc, $60c3
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    add $60
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    ret nc

    ld h, b
    nop
    nop
    cp $f1
    dec b
    ld [bc], a
    jp c, JoypadTransitionInterrupt

    nop
    db $fd
    jp hl


    rlca
    inc bc
    db $e4
    ld h, b
    nop
    nop
    db $fd
    jp hl


    rlca
    inc bc
    ld sp, hl
    ld h, b
    nop
    nop

Call_04b_614e:
    ld hl, $da00

jr_04b_6151:
    ld a, [hl+]
    cp $ff
    jr z, jr_04b_6173

    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, e
    cp $03
    jr z, jr_04b_6164

    cp $02
    jr nz, jr_04b_6171

jr_04b_6164:
    ld a, b
    rrca
    rrca
    rrca
    and $07
    ld e, $07
    push hl
    call Call_04b_6174
    pop hl

jr_04b_6171:
    jr jr_04b_6151

jr_04b_6173:
    ret


Call_04b_6174:
    add a
    add a
    add a
    ld hl, $61e1
    add l
    ld l, a
    jr nc, jr_04b_617f

    inc h

jr_04b_617f:
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

jr_04b_618c:
    push de

jr_04b_618d:
    ld a, [hl]
    and a
    jr z, jr_04b_61d6

    bit 7, d
    jr nz, jr_04b_61d6

    ld a, d
    cp $14
    jr nc, jr_04b_61d6

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
    ld de, $439c
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
    call Call_04b_622e
    call Call_04b_622e
    call Call_04b_622e
    call Call_04b_622e
    call Call_04b_622e
    call Call_04b_622e
    call Call_04b_622e
    call Call_04b_622e
    pop hl
    pop de
    pop bc

jr_04b_61d6:
    inc hl
    inc d
    dec e
    jr nz, jr_04b_618d

    pop de
    inc b
    dec c
    jr nz, jr_04b_618c

    ret


    db $ff, $fe, $03, $03, $9c, $51

    nop
    nop

    db $ff, $fb, $03, $06, $a5, $51

    nop
    nop

    db $fe, $f9, $05, $08, $b7, $51

    nop
    nop
    db $fd
    ld sp, hl
    rlca
    ld [$51df], sp
    nop
    nop
    db $fc
    ld sp, hl
    add hl, bc
    ld [$5217], sp
    nop
    nop
    db $fc
    ld sp, hl
    add hl, bc
    ld [$525f], sp
    nop
    nop
    ei
    ld sp, hl
    dec bc
    ld [$52a7], sp
    nop
    nop
    ei
    ld sp, hl
    dec bc
    ld [$52a7], sp
    nop
    nop

Call_04b_6221:
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
    jr jr_04b_6239

Call_04b_622e:
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

jr_04b_6239:
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


    dec bc
    ld [bc], a
    inc bc
    rst $38
    ld [$0004], a
    nop
    nop
    dec bc
    dec b
    jr nz, @+$01

    ld [$0006], a
    nop
    nop
    dec bc
    rlca
    ld [$eaff], sp
    add hl, bc
    nop
    nop
    nop
    ld bc, $ff00
    db $ec
    nop
    nop
    nop
    ld bc, $ff00
    db $ec
    nop
    nop
    nop
    ld bc, $ff00
    db $ec
    nop
    nop
    nop

    db $f5, $00, $ff, $ec, $ff, $fe, $e0, $7d, $fe, $ba, $c7, $bf, $83, $ff, $c7, $ff
    db $ef, $ff, $ff, $e1, $d0, $7f, $ef, $9f, $ff, $a0, $ff, $af, $f0, $fe, $e3, $e1
    db $ff, $df, $e0, $fc, $e2, $d6, $e2, $f3, $e1, $07, $ff, $f3, $1f, $ff, $0b, $ff
    db $fb, $0f, $fe, $e3, $d8, $e5, $d0, $e5, $1c, $e8, $e5, $e0, $ed, $9f, $ff, $c0
    db $a2, $e2, $b8, $e7, $a8, $e1, $9d, $ff, $b8, $e4, $eb, $1f, $f3, $a8, $e0, $e0
    db $e3, $d7, $ff, $38, $bb, $7c, $6d, $fe, $c6, $ff, $82, $df, $ff, $fe, $ff, $80
    db $7f, $60, $e0, $fe, $82, $ff, $ff, $c6, $ff, $6c, $ff, $b9, $7e, $d3, $ff, $3c
    db $e7, $18, $ef, $1e, $da, $3f, $b2, $ff, $7f, $e2, $7f, $b2, $7f, $da, $3f, $ee
    db $ff, $1f, $f0, $0f, $f7, $78, $db, $7c, $cd, $ff, $7e, $c6, $7f, $cc, $7f, $d9
    db $7e, $f3, $f7, $7c, $c7, $38, $50, $e8, $0a, $fa, $0f, $fa, $fd, $05, $40, $e6
    db $0e, $fa, $0f, $fe, $0f, $f8, $fd, $07, $00, $f1, $fe, $7f, $82, $ff, $ba, $ff
    db $df, $bb, $ff, $81, $ff, $ff, $90, $e0, $ef, $f0, $f5, $bd, $8e, $e0, $ba, $ee
    db $e0, $82, $ff, $fd, $fe, $3e, $e0, $c1, $fd, $7e, $82, $ff, $be, $fe, $e0, $f0
    db $e0, $0d, $7e, $d2, $e0, $0f, $fa, $d0, $ea, $e2, $e1, $d4, $e1, $e0, $e1, $7d
    db $fe, $50, $e0, $fe, $3f, $e2, $3f, $ee, $42, $e0, $bf, $ee, $ff, $eb, $3c, $fb
    db $3c, $e0, $e7, $fa, $a7, $ff, $c2, $7f, $c0, $e1, $a0, $e5, $aa, $fe, $e0, $ee
    db $fe, $a1, $c0, $fb, $3c, $eb, $3c, $fd, $7e, $c5, $db, $7e, $ed, $fc, $e0, $fd
    db $7e, $f2, $e6, $fe, $ab, $df, $fc, $8b, $fc, $f7, $78, $70, $e1, $be, $ff, $17
    db $a2, $ff, $8e, $fe, $e0, $a2, $ee, $c0, $d0, $e3, $fe, $e5, $10, $a0, $e1, $60
    db $e0, $de, $c0, $b2, $e1, $aa, $e0, $e2, $f0, $e3, $a0, $e7, $f0, $5e, $e5, $30
    db $e2, $40, $e0, $e2, $e3, $82, $ff, $bd, $fe, $4f, $af, $f0, $ef, $f0, $02, $e5
    db $60, $e0, $7f, $de, $c1, $a2, $00, $e7, $ae, $fc, $a0, $e0, $e5, $04, $e1, $fa
    db $f0, $c4, $fb, $b5, $3c, $22, $e3, $ee, $18, $e0, $fe, $1f, $c0, $a1, $ee, $38
    db $34, $e2, $a0, $e5, $f0, $e3, $ba, $ff, $92, $4a, $c0, $f0, $e3, $29, $fe, $62
    db $e4, $e0, $e5, $fe, $e4, $e2, $c6, $de, $e0, $50, $e3, $d3, $fe, $ef, $e0, $c3
    db $90, $c5, $fe, $04, $c0, $e6, $ff, $89, $ce, $fe, $a2, $a2, $c3, $86, $c2, $c0
    db $40, $e4, $96, $c2, $86, $fe, $70, $c0, $ae, $f3, $ae, $f3, $ff, $ff, $bf, $ea
    db $a9, $a0, $22, $b4, $c0, $ea, $b0, $c0, $e2, $bf, $ff, $ef, $ff, $fd, $1e, $f6
    db $f0, $e0, $b6, $ff, $b5, $0f, $fe, $b6, $ff, $b2, $90, $a9, $42, $a4, $e4, $c3
    db $24, $c1, $88, $e0, $e1, $a0, $e0, $14, $c2, $86, $10, $c6, $d4, $c7, $5e, $c1
    db $ee, $12, $fe, $a0, $86, $b8, $e0, $f2, $a1, $b2, $7a, $e0, $e0, $e7, $b0, $c5
    db $1e, $54, $e1, $be, $ff, $85, $fe, $b2, $c1, $b0, $c1, $a0, $e7, $f6, $a0, $c4
    db $73, $8d, $16, $c0, $96, $ff, $e9, $7f, $ff, $d5, $7f, $b1, $ff, $de, $ef, $ff
    db $ee, $bd, $ba, $12, $e0, $d6, $ff, $ed, $7e, $40, $c6, $66, $ff, $fc, $3f, $f9
    db $1e, $ff, $3c, $e7, $7e, $fb, $cc, $33, $52, $ea, $40, $bf, $e0, $df, $60, $ff
    db $ff, $30, $f7, $38, $ff, $fc, $f1, $3e, $fb, $f7, $38, $f8, $e0, $3c, $e1, $1e
    db $fd, $fe, $f9, $83, $50, $e8, $4f, $80, $01, $ff, $ff, $31, $ff, $d7, $b5, $ff
    db $b7, $fc, $e0, $11, $40, $80, $df, $e0, $7f, $5f, $e0, $77, $f8, $57, $f8, $37
    db $fc, $e0, $73, $57, $f8, $00, $ef, $f0, $cc, $00, $ff, $80, $fe, $ea, $b4, $d0
    db $ef, $e0, $eb, $80, $b1, $ed, $ff, $b4, $83, $e0, $85, $fa, $7f, $e0, $b4, $d5
    db $e1, $ff, $ff, $f9, $2f, $f9, $7f, $af, $f9, $af, $ff, $af, $ff, $21, $c6, $63
    db $cf, $f0, $1f, $f0, $7f, $fc, $e4, $0e, $83, $88, $ff, $f5, $db, $fe, $e2, $d8
    db $d0, $e3, $ff, $44, $ff, $6d, $f2, $fe, $e0, $6c, $fa, $e0, $96, $62, $f8, $2f
    db $f8, $af, $3f, $f8, $af, $fe, $2f, $fe, $a3, $85, $81, $6f, $60, $e5, $8c, $a0
    db $e2, $b4, $9c, $e0, $d0, $e3, $23, $ff, $ad, $ee, $fe, $e0, $2d, $ff, $a3, $be
    db $64, $08, $ff, $6b, $bf, $ff, $78, $ff, $4b, $ff, $28, $56, $63, $db, $3f, $3c
    db $a5, $7e, $5a, $ff, $a5, $fe, $e0, $fa, $e0, $fe, $d2, $a0, $ff, $ff, $c1, $ff
    db $f7, $ff, $f5, $fd, $9e, $fe, $e3, $fd, $9e, $ff, $3c, $db, $66, $ff, $bd, $db
    db $ef, $91, $f7, $89, $bd, $db, $bb, $db, $66, $0f, $60, $3c, $df, $64, $7c, $e0
    db $64, $bf, $ff, $24, $ff, $66, $ff, $42, $ff, $40, $7e, $ff, $bd, $c3, $ff, $99
    db $f7, $f9, $b9, $c7, $f8, $f9, $40, $ef, $60, $f0, $e1, $f7, $99, $ff, $62, $ff
    db $f7, $f9, $ff, $99, $e6, $e0, $ff, $ff, $3e, $df, $17, $62, $bf, $c2, $23, $a0
    db $93, $d1, $60, $80, $a0, $cd, $40, $5f, $81, $ff, $9f, $fd, $83, $e0, $e6, $7e
    db $e2, $e0, $e5, $9e, $f0, $e0, $99, $d0, $e4, $e0, $e0, $f5, $fb, $ef, $17, $32
    db $fb, $26, $9e, $e0, $24, $a0, $e5, $9c, $e1, $d0, $e5, $9e, $f4, $e3, $bf, $c1
    db $ff, $79, $a0, $e2, $91, $40, $11, $eb, $ff, $57, $34, $c0, $7d, $30, $c2, $ff
    db $00, $7f, $f9, $80, $fe, $e9, $a0, $4d, $ff, $04, $fd, $06, $fd, $ff, $0a, $fb
    db $f4, $97, $78, $f7, $18, $f7, $fd, $18, $55, $42, $e2, $8e, $73, $fe, $03, $fe
    db $cf, $03, $fc, $07, $f9, $d1, $60, $00, $cf, $f7, $07, $ff, $d8, $1e, $a8, $31
    db $d7, $6f, $4a, $5c, $ff, $93, $db, $94, $df, $ff, $00, $df, $c0, $ff, $37, $70
    db $0b, $98, $c7, $fc, $25, $fc, $ff, $93, $fe, $53, $fa, $00, $00, $07, $03, $ff
    db $1f, $0c, $33, $1c, $26, $39, $7c, $23, $ff, $7c, $43, $5e, $61, $00, $00, $e0
    db $c0, $ff, $f8, $30, $cc, $38, $64, $9c, $3e, $c4, $ff, $3e, $c2, $7a, $86, $4f
    db $70, $4f, $70, $ff, $7f, $67, $7a, $3f, $32, $1f, $10, $1f, $ff, $18, $0f, $0f
    db $07, $f2, $0e, $f2, $0e, $ff, $fe, $e6, $5e, $fc, $4c, $f8, $08, $f8, $ff, $18
    db $f0, $f0, $e0, $ff, $00, $fc, $01, $ff, $fc, $02, $fc, $02, $84, $32, $00, $4c
    db $ff, $00, $98, $10, $a8, $ff, $00, $3f, $80, $ff, $3f, $40, $3f, $40, $21, $4c
    db $00, $32, $ff, $00, $19, $08, $15, $10, $a8, $00, $98, $ff, $00, $40, $80, $40
    db $80, $20, $c0, $10, $ff, $e0, $08, $f0, $04, $08, $15, $00, $19, $ff, $00, $02
    db $01, $02, $01, $04, $03, $08, $ff, $07, $10, $0f, $20, $fc, $02, $f8, $02, $ff
    db $f8, $04, $f0, $04, $f0, $08, $e0, $08, $ff, $e0, $10, $e0, $1f, $3f, $40, $1f
    db $40, $ff, $1f, $20, $0f, $20, $0f, $10, $07, $10, $ef, $07, $08, $07, $f8, $72
    db $40, $03, $ff, $02, $ff, $ff, $03, $b6, $7a, $6f, $df, $99, $dc, $ff, $bf, $af
    db $ff, $00, $bf, $c0, $7f, $c0, $ff, $ff, $c0, $6d, $de, $f2, $f7, $1d, $3f, $ff
    db $fd, $f7, $bb, $ee, $b5, $fc, $53, $fa, $ff, $53, $7a, $b5, $7c, $d7, $3f, $e8
    db $1f, $ff, $f7, $0f, $5d, $77, $4d, $7f, $4a, $5f, $ff, $4b, $5e, $2d, $7e, $eb
    db $fc, $17, $f8, $ff, $ef, $f0, $af, $bf, $aa, $ba, $97, $d7, $ff, $53, $5f, $c9
    db $7c, $a7, $3f, $d8, $1f, $ff, $f7, $07, $eb, $fa, $ab, $fa, $d3, $fe, $ff, $95
    db $f4, $27, $7c, $cb, $f8, $37, $f0, $ff, $df, $c0, $fe, $03, $fb, $07, $fc, $06
    db $ff, $f7, $0f, $f9, $0c, $ec, $1f, $f1, $18, $ff, $ff, $1f, $7f, $c0, $df, $e0
    db $3f, $60, $ff, $ef, $f0, $1f, $30, $37, $f8, $0f, $18, $81, $ff, $80, $e0, $20
    db $ff, $20, $ff, $20, $ff, $20, $f8, $e2, $a0, $d2, $d7, $7a, $b5, $7e, $20, $e0
    db $1e, $20, $e1, $ad, $ff, $ef, $6a, $7f, $cb, $de, $20, $e2, $78, $ef, $f0, $e0
    db $40, $ff, $40, $ff, $40, $ff, $40, $ff, $60, $d5, $bd, $ec, $b7, $9f, $ff, $53
    db $fa, $d3, $7b, $60, $c2, $40, $e0, $3d, $fe, $40, $e0, $2a, $7f, $ab, $fe, $2d
    db $7e, $cb, $e4, $40, $ff, $40, $e1, $81, $fe, $e2, $4e, $68, $05, $ff, $dc, $77
    db $ff, $dd, $77, $fe, $e3, $ff, $77, $7f, $3c, $60, $ff, $44, $ff, $55, $ff, $d5
    db $ff, $54, $ff, $5d, $45, $31, $00, $f7, $78, $df, $f8, $e0, $57, $ee, $e0, $00
    db $ec, $e1, $50, $01, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $f2, $f1
    db $00, $ff, $ff, $fc, $fb, $00, $00

    nop

    db $17, $09, $09, $08, $ff, $ec, $09, $ff, $e0, $ec, $f1, $fc, $e5, $6e, $d2, $ed
    db $08, $08, $0b, $ff, $e8, $08, $48, $c0, $e3, $00, $ec, $ef, $c0, $f7, $80, $ff
    db $80, $f7, $ff, $ff, $3e, $ed, $d4, $ff, $c0, $ff, $20, $ff, $ff, $c0, $ff, $ff
    db $ff, $c0, $ff, $c4, $c0, $28, $c4, $f0, $ec, $f0, $40, $80, $ff, $80, $ff, $c0
    db $ff, $c0, $ff, $c0, $ff, $f2, $f1, $28, $c0, $ff, $00, $80, $ff, $c0, $ff, $80
    db $ff, $c0, $ff, $80, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $00, $c0, $ff, $ff, $ff
    db $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $c0, $ff, $80, $c0, $ff, $c0
    db $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $d1, $f6, $0d, $01, $0d, $ec, $f5
    db $c0, $ff, $c0, $ff, $c0, $ff, $40, $ff, $c0, $ff, $c0, $ff, $00, $d4, $ff, $fe
    db $f9, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $80, $3f, $d3
    db $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $97, $4d, $0f, $07, $0f, $0e
    db $0e, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $40, $df, $c0, $ff
    db $d4, $fb, $c0, $ff, $d0, $ff, $40, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $18, $ff, $ff, $ff, $ff, $ff, $ff, $08, $08, $00, $00

    nop

    db $ef, $62, $63, $02, $03, $ff, $ea, $04, $62, $63, $f4, $ec, $f3, $fc, $e5, $00
    db $ff, $ea, $64, $65, $05, $40, $ff, $90, $91, $92, $93, $94, $95, $96, $97, $ff
    db $98, $99, $9a, $9b, $40, $06, $64, $65, $78, $ec, $f3, $fc, $e5, $c0, $eb, $62
    db $63, $07, $08, $ff, $ea, $01, $09, $80, $e1, $ec, $f1, $80, $f3, $42, $ec, $3e
    db $e2, $ec, $f1, $80, $f5, $7f, $05, $30, $1f, $25, $1e, $14, $40, $ff, $e9, $09
    db $06, $ec, $f1, $00, $f5, $05, $c5, $ea, $c0, $e4, $ec, $f0, $80, $f6, $ff, $31
    db $15, $23, $24, $40, $2b, $13, $1f, $83, $22, $15, $80, $e7, $ec, $f0, $80, $ff
    db $80, $ff, $00, $f2, $32, $1f, $26, $15, $22, $11, $17, $83, $e6, $00, $e2, $ec
    db $f0, $78, $80, $ff, $80, $ff, $00, $f7, $33, $22, $19, $26, $00, $e5, $c1, $38
    db $00, $e4, $ec, $eb, $80, $ff, $80, $ff, $00, $f4, $17, $3a, $c0, $81, $e9, $80
    db $e1, $ec, $f0, $80, $ff, $80, $ff, $80, $b2, $34, $1e, $ff, $40, $35, $11, $19
    db $22, $27, $11, $29, $86, $7b, $a4, $37, $06, $ec, $f1, $80, $ff, $80, $ff, $00
    db $f6, $36, $07, $25, $24, $24, $00, $cb, $ec, $ee, $80, $ff, $80, $ff, $80, $92
    db $ff, $36, $11, $22, $40, $2b, $11, $26, $15, $81, $23, $7c, $85, $00, $e0, $ec
    db $f0, $80, $ff, $80, $ff, $80, $f6, $34, $81, $1e, $82, $e6, $80, $e6, $ec, $ec
    db $80, $ff, $80, $ff, $80, $72, $2b, $81, $11, $81, $60, $ff, $c9, $00, $c0, $ec
    db $f0, $80, $ff, $3c, $61, $60, $f1, $61, $80, $ef, $ec, $e3, $80, $77, $19, $22
    db $14, $19, $ff, $15, $40, $31, $11, $14, $17, $15, $23, $83, $70, $71, $80, $63
    db $ec, $ef, $80, $ff, $00, $ff, $80, $52, $2c, $ff, $2d, $2e, $2f, $5f, $42, $3c
    db $3d, $3e, $87, $3f, $42, $42, $80, $44, $ee, $2c, $fe, $2c, $40, $4c, $45, $5f
    db $46, $47, $4b, $4c, $4d, $fa, $e3, $43, $94, $6d, $fc, $f6, $f1, $00, $4c, $41
    db $42, $51, $41, $42, $42, $07, $41, $51, $50, $fa, $e0, $c0, $e4, $12, $29, $f4
    db $ef, $c0, $ee, $f9, $52, $c0, $e2, $ba, $e1, $8c, $8d, $8e, $8f, $5a, $13, $5b
    db $5c, $80, $ff, $80, $ea, $53, $80, $e2, $ba, $e1, $80, $ff, $f2, $80, $f1, $54
    db $40, $e2, $ba, $e1, $43, $40, $66, $67, $e4, $00, $ff, $00, $ed, $55, $00, $e2
    db $ba, $e1, $43, $40, $68, $c9, $69, $80, $ff, $c0, $cd, $56, $c0, $c2, $ba, $e1
    db $43, $40, $93, $6a, $6b, $80, $ff, $80, $cd, $57, $80, $c2, $ba, $e1, $43, $4f
    db $74, $75, $80, $81, $80, $ff, $40, $cc, $58, $40, $c2, $3e, $ba, $e1, $43, $76
    db $77, $82, $83, $80, $ff, $00, $cc, $f9, $59, $00, $c2, $ba, $e1, $43, $78, $79
    db $84, $85, $00, $80, $ff, $7e, $a9, $54, $b1, $80, $ff, $3c, $a7, $94, $fb, $80
    db $ff, $94, $fb, $00, $80, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $23, $00, $00

    nop
    ld b, a
    add hl, bc
    add hl, bc
    ld [$ecff], sp
    xor $eb
    ldh [$e2], a
    rrca
    rst $38
    and $60
    ldh [$f3], a
    ret nz

    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    db $fd
    db $fc
    ld c, $0e
    ldh [rIE], a
    ld [$ffff], sp
    rst $38
    rst $38
    rst $10
    ret nz

    ld c, b
    db $dd
    pop af
    ld [$c4c2], a
    ld hl, sp-$20
    db $fd
    nop
    rst $38
    rst $38
    and b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    rst $28
    ld e, $1f
    ld [bc], a
    inc bc
    rst $38
    ld [$1e04], a
    rra
    db $fd
    db $f4
    rst $38
    add sp, $1c
    dec e
    dec b
    ld [de], a
    ld [de], a
    sub $ff
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $bf
    rst $18
    ld [de], a
    ld [de], a
    ld b, $1c
    dec e
    ldh [$e9], a
    ld e, $17
    rra
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
    ld [de], a
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    rst $18
    push af
    or $f7
    ld hl, sp-$04
    rst $38
    db $e3
    ld de, $c606
    ldh [$eb], a
    ld de, $fd12
    pop hl
    cp $e7
    ldh [$ee], a
    ret nz

    pop bc
    db $76
    ldh [$fb], a
    jp nz, $c0c3

    ld a, [$1013]
    db $10
    db $fd
    ldh [$d8], a
    cp $e7
    add b
    rst $38
    ldh [$ec], a
    ret nc

    pop de
    ld h, b
    ei
    jp nc, $d8d3

    add b
    rst $38
    add b
    rst $38
    nop
    rst $30
    ldh [$e1], a
    ldh [$db], a
    ld [c], a
    db $e3
    nop
    add b
    rst $38
    add b
    or $22
    call z, $c21e
    ldh [$a9], a
    nop

jr_04b_6c4b:
    nop
    nop
    ld [hl], l
    add hl, bc
    rst $38
    ldh a, [$0a]
    rst $38
    add sp, $09
    add hl, bc
    ld [$ecff], sp
    ld [bc], a
    ldh [$f0], a
    rrca
    rst $38
    and $e0
    di
    ret nz

    ld a, [$fd80]
    ld a, a
    db $ec
    ldh [rIE], a
    jr nc, jr_04b_6c4b

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f0], a
    ld a, [bc]
    ld a, [bc]
    ldh [rIE], a
    and b
    rst $38
    nop
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $18
    jr @-$3d

    nop
    nop
    nop
    db $eb
    ld e, $1f
    cp $ef
    db $f4
    rst $38
    add sp, $1c
    dec e
    ld [bc], a
    db $dd
    inc bc
    rst $38
    ld [$1c04], a
    dec e
    ldh [$e9], a
    ld e, $1f
    rst $38
    dec b
    ld [de], a
    ld [de], a
    sub $d7
    ret c

    reti


    jp c, $dbff

    call c, $dedd
    rst $18
    ld [de], a
    ld [de], a
    ld b, $96
    ret nz

    db $ed
    rlca
    ld [$eaff], sp
    add hl, bc
    ret nz

    db $ed
    add b
    db $fd
    inc e
    or $7f
    ld [$1d04], a
    ret nz

    xor $05
    ld [de], a
    ld h, $27
    xor a
    jr z, @+$2b

    ld a, [hl+]
    ld [de], a
    rst $38
    ld [c], a
    ld b, $c0
    rst $28
    dec b
    db $e3
    ld [de], a
    db $10
    rst $38
    ld [c], a
    ldh [$e3], a
    ret nz

    pop af
    cp h
    cp l
    cp [hl]
    rst $28
    rst $00
    ret z

    ret


    ld de, $f6c0
    inc de
    db $10
    rst $20
    rst $20
    inc de
    db $10
    db $10
    ldh [$e3], a
    add b
    pop af
    inc de
    db $10
    add sp, -$2a
    ldh [$e1], a
    call nc, $c0d5
    or $e9
    ret nz

    pop hl
    db $e4
    push hl
    jp nc, $f6c0

    ld [$e6a0], a
    add b
    di
    db $eb
    add b
    ldh [$2b], a
    inc l
    xor a
    dec l
    ld l, $2f
    ccf
    add b
    di
    db $ec
    ret nz

    ld a, [$93c4]
    push bc
    add $40
    ld hl, sp+$5f
    jp z, $8009

    rst $08
    cp $ea
    ld e, $00

jr_04b_6d26:
    add b
    call z, $0000
    nop
    rst $38
    rst $38
    nop
    db $fc
    nop
    ld sp, hl
    inc bc
    ld_long a, $ff03
    jp nz, $9c06

    ld a, $a0
    ld [hl-], a
    sub d
    ld a, [hl-]
    rst $38
    rst $38
    nop
    ccf
    nop
    sbc a
    ret nz

    ld e, a
    ret nz

jr_04b_6d46:
    rst $38
    ld b, e
    ld h, b
    add hl, sp
    ld a, h
    dec b
    ld c, h
    ld c, c
    ld e, h
    db $eb
    rst $38
    nop
    sbc $ea
    jr nc, jr_04b_6d46

    pop hl
    ld a, a
    nop
    ccf
    rst $38
    add b
    cp a
    add b
    add a
    ret nz

    ld [hl], e
    ld hl, sp+$0b
    ld sp, hl
    jr jr_04b_6d26

    db $fd
    and d
    db $e3
    ld a, [c]
    ld b, $84
    ld c, $3c
    rst $18
    ld a, h
    ld b, b
    ld h, d
    ld [hl+], a
    ld [hl], d
    and d
    db $e3
    ld c, a
    ld h, b
    rst $38
    ld hl, $3c70
    ld a, $02
    ld b, [hl]
    ld b, h
    ld c, [hl]
    rst $38
    ret z

    ld e, $e4
    inc c
    add sp, $0d
    ret


    dec de
    rst $18
    jp nc, $cc1f

    ld e, $e1
    sub h
    ldh [rNR13], a
    ld a, b
    rst $38
    daa
    jr nc, jr_04b_6daf

    or b
    sub e
    ret c

    ld c, e
    ld hl, sp-$09
    inc sp
    ld a, b
    add a
    add h
    ldh [$90], a
    ld a, [hl-]
    ret z

    dec e
    ld a, a
    jp hl


    rrca
    ld [$e40f], a
    ld c, $f1

jr_04b_6daf:
    db $76
    ldh [$fe], a
    ldh [$e0], a
    cp b
    daa
    ld [hl], b
    cpl
    ldh [$af], a
    ldh [$e7], a
    ld c, a
    ldh [$1f], a
    ldh a, [$e2]
    ret nz

    rst $38
    ret z

    inc e
    ret z

    rst $38
    dec e
    ret nc

    dec de
    sub c
    ccf
    and [hl]
    ccf
    sbc b
    rst $38
    inc a
    jp Jump_000_0900


    ld e, h
    inc de
    jr c, @+$15

    rst $38
    cp b
    dec bc
    ret c

    adc c
    db $fc
    ld h, l
    db $fc
    add hl, de
    nop
    ldh a, [$e0]
    nop
    nop
    nop

    db $ff, $c1, $ff, $a1, $ff, $91, $ff, $89, $ff, $ff, $85, $ff, $83, $ff, $81, $ff
    db $80, $ff, $ff, $ff, $00, $ff, $00, $7d, $fe, $ba, $c7, $bf, $83, $ff, $c7, $ff
    db $ef, $ff, $ff, $e1, $d0, $7f, $ef, $9f, $ff, $a0, $ff, $af, $f0, $fe, $e3, $f0
    db $df, $e1, $fc, $e2, $d8, $e0, $fc, $e2, $ff, $07, $ff, $f3, $1f, $ff, $0b, $ff
    db $fb, $0f, $fe, $e3, $d8, $e5, $d0, $e5, $1c, $e8, $e5, $e0, $ed, $9f, $ff, $c0
    db $a2, $e2, $b8, $e7, $a8, $e1, $9d, $ff, $b8, $e4, $eb, $1f, $f3, $a8, $e0, $e0
    db $e3, $d7, $ff, $38, $bb, $7c, $6d, $fe, $c6, $ff, $82, $df, $ff, $fe, $ff, $80
    db $7f, $60, $e0, $fe, $82, $ff, $ff, $c6, $ff, $6c, $ff, $b9, $7e, $d3, $ff, $3c
    db $e7, $18, $ef, $1e, $da, $3f, $b2, $ff, $7f, $e2, $7f, $b2, $7f, $da, $3f, $ee
    db $ff, $1f, $f0, $0f, $f7, $78, $db, $7c, $cd, $ff, $7e, $c6, $7f, $cc, $7f, $d9
    db $7e, $f3, $f7, $7c, $c7, $38, $50, $e8, $0a, $fa, $0f, $fa, $fd, $05, $40, $e6
    db $0e, $fa, $0f, $fe, $0f, $f8, $41, $07, $38, $e6, $32, $e4, $fd, $c0, $fe, $eb
    db $e0, $eb, $00, $e0, $ec, $ff, $ff, $bd, $3c, $42, $7e, $99, $ff, $bd, $ff, $e7
    db $bd, $e7, $99, $ff, $42, $7e, $bd, $7d, $3c, $c0, $c1, $bd, $3c, $c3, $7e, $c3
    db $f4, $e4, $ff, $eb, $08, $f7, $1c, $f7, $7f, $c1, $7f, $ff, $a2, $3e, $aa, $3e
    db $d5, $77, $eb, $63, $bf, $ff, $0c, $fd, $1e, $fd, $0e, $fe, $e5, $f9, $ff, $06
    db $ff, $be, $e7, $ff, $ce, $b7, $fc, $ff, $9f, $f1, $be, $e7, $f8, $ff, $ff, $c0
    db $ff, $bf, $ff, $be, $e3, $ff, $cf, $b3, $fe, $ff, $8f, $fb, $87, $ff, $e3, $fe
    db $bf, $e0, $ff, $9f, $ff, $8e, $fe, $9f, $f6, $bf, $ee, $ff, $f7, $ff, $ff, $c6
    db $bf, $fe, $87, $fc, $ff, $83, $ff, $ff, $e0, $ff, $ff, $fe, $c3, $f9, $bf, $51
    db $c0, $e0, $e2, $4f, $70, $4f, $70, $7f, $ff, $67, $7a, $3f, $32, $1f, $10, $1f
    db $18, $ff, $0f, $0f, $07, $f2, $0e, $f2, $0e, $fe, $ff, $e6, $5e, $fc, $4c, $f8
    db $08, $f8, $18, $ff, $f0, $f0, $e0, $00, $00, $07, $03, $1f, $ff, $0c, $33, $1c
    db $26, $39, $7c, $23, $7c, $ff, $43, $5e, $61, $00, $00, $e0, $c0, $f8, $ff, $30
    db $cc, $38, $64, $9c, $3e, $c4, $3e, $f7, $c2, $7a, $86, $10, $e9, $f7, $87, $f8
    db $8f, $fe, $f0, $c9, $f7, $f0, $0f, $f8, $ff, $80, $fd, $ff, $81, $f6, $87, $e9
    db $8f, $f6, $9e, $d7, $ff, $9c, $eb, $b8, $ef, $b8, $ff, $00, $df, $ff, $c0, $37
    db $f0, $cb, $f8, $b7, $3c, $f5, $ff, $1c, $eb, $0e, $fb, $0e, $ff, $80, $fe, $ff
    db $80, $ff, $81, $fd, $81, $fe, $83, $de, $ff, $9f, $e0, $bf, $d1, $9f, $ff, $00
    db $bf, $ff, $80, $7f, $c0, $5f, $c0, $3f, $e0, $3d, $ff, $fc, $03, $fe, $45, $fc
    db $fd, $7f, $83, $ff, $ff, $ba, $ff, $87, $ff, $fb, $ff, $bb, $fe, $9e, $a0, $ff
    db $7f, $ff, $c1, $7f, $ff, $23, $eb, $ff, $6b, $fe, $e2, $21, $a0, $a1, $c0, $7f
    db $ff, $ff, $11, $ff, $57, $ff, $71, $ff, $7d, $df, $cf, $71, $df, $ff, $df, $90
    db $ce, $80, $cd, $9f, $f0, $bb, $9f, $f7, $fe, $e0, $f0, $9f, $f6, $fe, $e0, $ff
    db $fb, $9f, $bf, $c0, $e0, $44, $ff, $55, $ff, $45, $93, $ff, $dd, $fc, $e0, $65
    db $a3, $11, $f0, $e0, $fe, $e1, $50, $3e, $f0, $e4, $a2, $ff, $eb, $ff, $aa, $fe
    db $e2, $2f, $a0, $ef, $03, $fe, $ff, $88, $f2, $e0, $a8, $ff, $ae, $7e, $fc, $e0
    db $ff, $ff, $f8, $8f, $f7, $87, $30, $c9, $ef, $0f, $f8, $f7, $f0, $f0, $a9, $eb
    db $b8, $d7, $b7, $9c, $f6, $9e, $00, $e0, $87, $fd, $e1, $82, $eb, $ff, $0e, $f5
    db $1c, $b7, $3c, $cb, $f8, $37, $f7, $f0, $df, $c0, $f5, $81, $e9, $8f, $f4, $87
    db $bd, $f4, $c8, $c0, $fb, $8f, $fd, $8c, $c1, $81, $4b, $ff, $f8, $17, $f0, $17
    db $f0, $8f, $f8, $6f, $77, $78, $df, $18, $d5, $81, $fe, $ef, $ba, $fe, $e1, $ff
    db $ff, $92, $ff, $d6, $ff, $c5, $7e, $fd, $95, $7e, $a0, $81, $ee, $72, $e2, $ba
    db $2e, $a0, $f0, $e1, $fb, $bb, $3c, $eb, $fe, $e6, $fb, $3c, $fe, $56, $e4, $aa
    db $fa, $10, $a0, $c6, $e0, $e6, $fd, $7e, $c5, $7e, $ed, $54, $fc, $e0, $c0, $e3
    db $fd, $fe, $80, $ba, $2e, $e2, $ee, $fe, $e0, $5f, $ba, $ff, $9a, $ff, $8a, $1c
    db $e0, $b2, $98, $c0, $8d, $ee, $40, $82, $fd, $7e, $e0, $e1, $a0, $e5, $56, $86
    db $40, $bf, $bf, $e0, $df, $60, $bb, $cf, $fe, $eb, $c0, $8a, $24, $80, $90, $ee
    db $c0, $84, $a0, $80, $00, $81, $13, $af, $81, $fe, $42, $c0, $8f, $ff, $97, $f8
    db $98, $f7, $b9, $f7, $f6, $b6, $f9, $ff, $81, $e0, $ff, $f0, $ff, $ff, $e8, $1f
    db $18, $ef, $9c, $6f, $1c, $ef, $ff, $8e, $8e, $8f, $8f, $8e, $8f, $96, $9f, $ff
    db $a0, $bf, $bf, $bf, $b9, $bf, $a9, $b6, $ff, $00, $00, $80, $80, $60, $e0, $10
    db $f0, $ff, $08, $f8, $88, $f8, $e4, $fc, $34, $fc, $df, $98, $98, $a7, $bf, $ca
    db $29, $c0, $bf, $b0, $fb, $bf, $a0, $df, $e1, $04, $04, $cb, $cf, $31, $ff, $ff
    db $d0, $ff, $d0, $7f, $ef, $3f, $e4, $ff, $bc, $fc, $5c, $83, $83, $84, $87, $8f
    db $f7, $8f, $9f, $90, $fe, $e0, $9f, $bf, $a0, $ff, $ff, $df, $c0, $c0, $30, $f0
    db $c8, $f8, $e4, $ff, $3c, $f4, $1c, $fc, $dc, $fe, $32, $fd, $ff, $9f, $86, $86
    db $89, $8f, $90, $9f, $99, $7f, $9f, $9f, $96, $bf, $a0, $ac, $b3, $61, $60, $ff
    db $00, $c0, $c0, $20, $e0, $90, $f0, $c8, $ff, $78, $c8, $78, $e8, $38, $e8, $f8
    db $8f, $ff, $8f, $b6, $bf, $c4, $ff, $ac, $df, $9e, $d7, $f7, $bf, $e3, $ad, $60
    db $e3, $82, $e3, $28, $d8, $ff, $64, $9c, $84, $fc, $ce, $7e, $f9, $3f, $ff, $8b
    db $8b, $9f, $94, $9d, $92, $af, $bf, $fd, $c0, $1a, $60, $93, $fe, $bf, $ec, $60
    db $60, $ff, $e0, $a0, $f0, $30, $c8, $f8, $04, $fc, $bf, $04, $fc, $82, $fe, $c2
    db $7e, $31, $8c, $ff, $ff, $40, $ff, $20, $ff, $10, $ff, $08, $ff, $df, $04, $ff
    db $02, $ff, $01, $00, $60, $be, $fd, $7f, $9f, $fc, $9e, $fd, $8d, $fe, $87, $fa
    db $c2, $ff, $ff, $ff, $6c, $9f, $f8, $3f, $78, $bf, $f7, $b0, $7f, $e0, $fa, $c2
    db $ff, $ff, $b9, $af, $f7, $b9, $af, $c4, $34, $60, $a6, $bf, $90, $9f, $fd, $8c
    db $df, $e0, $9a, $7e, $9e, $7e, $26, $fe, $7f, $16, $fe, $0e, $fe, $3c, $fc, $f8
    db $2e, $80, $f7, $b6, $a9, $ff, $e1, $e0, $bf, $a3, $9f, $90, $f7, $8f, $8c, $83
    db $42, $80, $fe, $52, $fe, $0a, $ff, $fc, $04, $f8, $18, $e0, $20, $c0, $c0, $fd
    db $00, $b5, $41, $f8, $d7, $f8, $df, $f4, $df, $df, $f0, $af, $ba, $9f, $9c, $e0
    db $e1, $f8, $ff, $ff, $6c, $97, $fd, $07, $f9, $1f, $e6, $3e, $f7, $f8, $78, $80
    db $6f, $e1, $ff, $bf, $b3, $bf, $5f, $a8, $bf, $a0, $9f, $96, $be, $e0, $88, $50
    db $a0, $ff, $b8, $fc, $24, $fc, $14, $fc, $0c, $fa, $df, $3e, $f2, $7e, $8e, $8e
    db $5f, $40, $a2, $dd, $d5, $a2, $b1, $c0, $cc, $de, $e0, $91, $f0, $e1, $fd, $a7
    db $ff, $fd, $97, $f9, $0f, $f5, $3f, $db, $5b, $fb, $80, $80, $a0, $e2, $f3, $ff
    db $d2, $ad, $b2, $ff, $bf, $a0, $db, $f4, $cf, $f9, $d6, $f6, $fe, $50, $a0, $bf
    db $e9, $bf, $ff, $37, $fe, $1e, $ff, $f2, $7e, $e1, $ff, $49, $7f, $ff, $ff, $7d
    db $8f, $44, $c0, $af, $b9, $bf, $bf, $e0, $5c, $c1, $f7, $b5, $9f, $9d, $a2, $c1
    db $10, $f0, $98, $f8, $ff, $44, $fc, $a4, $fc, $fc, $7c, $fc, $34, $ff, $81, $81
    db $82, $83, $83, $83, $87, $84, $f7, $87, $85, $9f, $1c, $c0, $d4, $ff, $f0, $f0
    db $ff, $88, $f8, $e8, $f8, $f4, $9c, $f4, $fc, $ff, $f4, $dc, $f4, $fc, $02, $fe
    db $87, $87, $b6, $48, $c1, $b3, $ac, $44, $60, $ff, $be, $92, $e0, $e0, $ff, $e0
    db $18, $f8, $84, $fc, $e2, $7e, $fa, $ff, $3e, $fe, $e6, $3f, $f3, $fd, $ff, $87
    db $ef, $87, $88, $8f, $8c, $3e, $c0, $a3, $bf, $ff, $5f, $dc, $ff, $e3, $bf, $bd
    db $e2, $a1, $30, $e2, $a0, $ff, $84, $fc, $c6, $7e, $cf, $79, $df, $75, $df, $be
    db $be, $c5, $ff, $a0, $62, $c0, $c5, $ff, $ff, $ef, $fa, $be, $b1, $ad, $b3, $60
    db $60, $dd, $98, $64, $c0, $02, $fe, $01, $68, $20, $79, $ff, $f7, $f3, $9f, $8f
    db $02, $c0, $a7, $bf, $af, $b8, $db, $af, $b8, $80, $e1, $df, $ff, $60, $e5, $96
    db $fe, $bf, $81, $ff, $41, $ff, $f3, $bf, $a0, $e1, $8f, $ab, $88, $bf, $20, $c0
    db $ef, $9c, $a1, $a6, $c0, $a1, $08, $ff, $f8, $c4, $fc, $74, $fc, $8e, $fe, $f3
    db $f9, $ff, $82, $60, $a0, $a0, $88, $8f, $9f, $9f, $a1, $de, $fe, $a0, $ff, $ff
    db $9f, $99, $62, $a5, $84, $fc, $bf, $42, $fe, $f2, $fe, $de, $be, $8c, $a0, $c0
    db $ff, $ff, $c3, $bf, $bf, $9f, $9e, $8f, $88, $fb, $87, $84, $a5, $40, $2a, $fe
    db $82, $fc, $84, $ff, $f8, $18, $fc, $3c, $f8, $38, $c0, $40, $be, $f1, $27, $c0
    db $ff, $b0, $bf, $8f, $ff, $a0, $01, $fe, $ea, $a0, $2d, $f3, $3f, $e1, $7e, $f2
    db $fc, $fd, $c4, $20, $c1, $ff, $d1, $ee, $d1, $bf, $a8, $e7, $ff, $e6, $df, $e6
    db $00, $50, $c1, $f1, $5f, $f1, $ff, $5f, $e3, $3f, $e3, $3f, $c2, $7e, $9c, $7b
    db $fc, $f0, $d2, $00, $bf, $a6, $ff, $e9, $15, $20, $5d, $fc, $9c, $e0, $b8, $9f
    db $90, $af, $00, $f5, $79, $a0, $ff, $0a, $fc, $6c, $f8, $88, $f0, $30, $c0, $98
    db $fd, $00, $22, $c0, $20, $c2, $bf, $ac, $de, $a0, $9f, $a0, $f7, $ff, $5f, $ff
    db $09, $ff, $05, $fe, $12, $fc, $f7, $1c, $f0, $70, $e0, $e1, $ff, $f0, $9f, $94
    db $cf, $9f, $9c, $bf, $a2, $fe, $a0, $e0, $a2, $fe, $1e, $af, $fe, $92, $fe, $aa
    db $be, $a2, $60, $e0, $a1, $bf, $7d, $b2, $b7, $00, $c8, $ff, $f0, $bf, $ac, $fe
    db $a1, $be, $4f, $00, $47, $fc, $14, $f8, $08, $a4, $e0, $40, $d6, $00, $c3, $9f
    db $91, $88, $80, $a0, $84, $e1, $91, $9e, $fd, $89, $3f, $a0, $ce, $32, $ce, $3a
    db $dc, $24, $b8, $80, $a2, $de, $e0, $00, $c7, $a0, $bf, $de, $13, $60, $bf, $ef
    db $ba, $80, $80, $40, $fe, $a6, $e4, $fc, $fc, $df, $3c, $91, $91, $bb, $aa, $64
    db $e0, $97, $b9, $ff, $bf, $f3, $de, $ff, $ed, $bf, $be, $c2, $ff, $c2, $f7, $75
    db $ff, $1d, $ff, $b9, $fe, $ff, $ea, $fe, $66, $de, $fa, $c6, $7e, $8f, $ff, $8f
    db $92, $9d, $a7, $b8, $af, $bf, $f0, $ee, $e2, $81, $f9, $bf, $af, $62, $81, $1c
    db $fc, $8a, $ff, $fe, $63, $ff, $f3, $fe, $ff, $dc, $f7, $ef, $5e, $8f, $8f, $b0
    db $84, $80, $c3, $ff, $b3, $dd, $be, $5e, $e0, $bf, $ff, $ea, $60, $c3, $84, $fc
    db $7b, $c4, $7c, $40, $81, $f8, $f8, $83, $83, $e2, $a1, $fd, $a0, $1d, $a0, $cc
    db $ff, $de, $f3, $bf, $b9, $90, $c0, $a1, $00, $c1, $fe, $a1, $94, $c1, $80, $ff
    db $e0, $dc, $e3, $9b, $ff, $9f, $bb, $a4, $bb, $ae, $0c, $0c, $0e, $3f, $0e, $fe
    db $f6, $38, $f8, $18, $20, $20, $3c, $81, $d7, $87, $87, $98, $84, $60, $a0, $80
    db $e0, $bf, $ef, $df, $bf, $f0, $8f, $ff, $e0, $84, $62, $1e, $fe, $ff, $f9, $ef
    db $f1, $1f, $e2, $fe, $1c, $fc, $f0, $60, $fd, $02, $c1, $9c, $80, $f8, $a0, $9f
    db $98, $87, $87, $ff, $ff, $ff, $fc, $74, $fe, $aa, $fe, $02, $ee, $5e, $80, $38
    db $f0, $f0, $60, $81, $fb, $fe, $fd, $9d, $c7, $c3, $20, $80, $ff, $d3, $dc, $a0
    db $40, $c0, $f2, $ff, $fe, $fa, $0e, $fc, $64, $fc, $a4, $f8, $df, $c8, $f0, $30
    db $e0, $20, $00, $81, $f4, $fb, $ab, $b9, $bf, $48, $20, $d9, $5c, $80, $92, $2f
    db $20, $08, $3f, $ff, $bd, $ff, $f9, $fe, $e6, $e2, $a0, $7a, $c0, $fe, $1f, $20
    db $d4, $bf, $a7, $bf, $a4, $9f, $98, $c3, $9f, $96, $a0, $a3, $a9, $80, $60, $c4
    db $80, $c3, $bf, $a9, $fb, $97, $98, $1e, $c0, $90, $8f, $8a, $87, $84, $fe, $e0
    db $61, $05, $ff, $8e, $fa, $8e, $fa, $dc, $bf, $74, $da, $7e, $e4, $e4, $40, $80
    db $a0, $c8, $ab, $ff, $d4, $21, $c0, $c0, $39, $80, $cc, $d8, $80, $ff, $af, $ff
    db $04, $fc, $1c, $ff, $60, $94, $42, $60, $38, $ad, $f8, $c0, $a1, $c0, $ff, $87
    db $40, $b0, $be, $e2, $8b, $de, $a0, $e2, $f4, $bc, $d4, $7c, $40, $a0, $f0, $10
    db $d0, $1e, $c1, $60, $ff, $24, $80, $26, $80, $a1, $ff, $c0, $9f, $91, $af, $9f
    db $9a, $bf, $ba, $80, $41, $48, $c0, $80, $22, $ff, $fe, $e2, $fe, $fa, $9e, $fc
    db $3c, $87, $c7, $87, $8e, $8b, $06, $81, $de, $80, $e0, $e0, $9f, $9a, $fc, $e0
    db $e3, $40, $c0, $fc, $f4, $3c, $fc, $3c, $fc, $fd, $64, $c0, $61, $ad, $a9, $bf
    db $bf, $a4, $b1, $ed, $de, $9a, $00, $ba, $bf, $c0, $a2, $60, $50, $b0, $ff, $98
    db $d8, $44, $ec, $e4, $fc, $3c, $7c, $5f, $ff, $3b, $ee, $3f, $ea, $fe, $e3, $2a
    db $d0, $c0, $1d, $3f, $dc, $01, $a2, $ff, $ea, $70, $01, $ff, $e0, $50, $03, $fd
    db $22, $62, $00, $a2, $ff, $ae, $ae, $a2, $a2, $fe, $40, $02, $fe, $23, $fe, $af
    db $fe, $e3, $fe, $6f, $fb, $ba, $e3, $a2, $ad, $60, $0e, $fb, $fe, $e1, $ff, $0f
    db $fd, $0f, $fd, $05, $fc, $04, $ff, $bf, $07, $ff, $e0, $bf, $fe, $a3, $e0, $e0
    db $63, $df, $fe, $7b, $7b, $62, $62, $e1, $40, $1f, $f0, $fb, $1f, $f7, $fe, $e0
    db $f0, $1f, $f5, $95, $f4, $ff, $94, $ff, $9f, $ff, $c0, $7f, $ff, $44, $7b, $ff
    db $55, $fc, $e0, $df, $df, $44, $44, $c1, $40, $eb, $07, $fd, $f2, $e0, $d5, $ee
    db $e0, $55, $55, $45, $fd, $45, $b1, $40, $e0, $bf, $f0, $1f, $f0, $bf, $97, $f0
    db $bf, $e0, $ca, $c0, $90, $37, $20, $02, $82, $bf, $25, $be, $60, $46, $72, $00
    db $c3, $00, $80, $f8, $60, $41, $6c, $20, $37, $c1, $ff, $c7, $e0, $67, $fc, $54
    db $42, $40, $a0, $80, $bf, $e0, $20, $f0, $70, $e0, $60, $60, $c0, $e3, $fb, $c3
    db $e7, $da, $20, $bf, $a4, $b0, $98, $9f, $fe, $c0, $a1, $7c, $f4, $aa, $ea, $02
    db $ae, $04, $17, $1c, $38, $f8, $c0, $a3, $00, $ff, $ff, $ff, $ff, $ea, $e9, $7c
    db $5e, $0a, $e1, $20, $b4, $ff, $b5, $ff, $85, $fc, $e0, $f9, $b4, $54, $61, $7d
    db $80, $2f, $f9, $af, $f9, $af, $af, $ff, $af, $ff, $21, $a5, $c2, $ff, $13, $e0
    db $7f, $fc, $fc, $e4, $d0, $e2, $d7, $38, $ab, $6c, $c7, $ee, $ff, $83, $82, $45
    db $c6, $83, $d6, $93, $ba, $fe, $90, $60, $07, $eb, $0c, $d7, $1b, $ed, $37, $ff
    db $f9, $2f, $fd, $2f, $fd, $27, $dd, $17, $cf, $bf, $80, $7f, $c0, $fb, $00, $fe
    db $e6, $fd, $17, $ff, $dd, $17, $ed, $37, $fd, $2f, $f8, $2f, $ff, $ff, $2f, $ef
    db $30, $df, $1f, $ff, $40, $bf, $df, $40, $bf, $60, $ff, $a0, $fe, $e1, $bf, $7f
    db $60, $df, $c0, $ff, $88, $ff, $db, $fe, $e2, $29, $d8, $80, $e3, $83, $c0, $6d
    db $fe, $e0, $6c, $fa, $e0, $60, $e2, $ff, $f8, $2f, $f8, $af, $f8, $af, $fe, $2f
    db $74, $4b, $c0, $50, $e3, $84, $d9, $20, $86, $ff, $f6, $fc, $e0, $2e, $d0, $e3
    db $42, $ff, $da, $fe, $e0, $c2, $fa, $e0, $50, $e5, $05, $df, $fe, $e0, $3f, $fa
    db $e0, $20, $e2, $ef, $df, $ff, $ff, $fa, $f9, $ff, $df, $1f, $af, $30, $5f, $6f
    db $b0, $df, $ff, $e6, $bf, $ef, $b9, $ff, $b9, $be, $c7, $ff, $bf, $80, $5f, $c0
    db $af, $60, $df, $b0, $fb, $7f, $d0, $fe, $e3, $d9, $6f, $73, $5e, $b7, $f3, $dd
    db $e7, $d1, $a0, $97, $80, $c0, $7f, $7f, $df, $ef, $b0, $ef, $20, $ff, $e4, $e2
    db $ff, $d0, $df, $ff, $30, $ef, $e0, $fc, $00, $f9, $03, $fa, $ff, $03, $f2, $06
    db $84, $0e, $3c, $7c, $40, $ff, $62, $22, $72, $3f, $00, $9f, $c0, $5f, $ff, $c0
    db $4f, $60, $21, $70, $3c, $3e, $02, $07, $46, $44, $4e, $51, $ca, $fe, $ff, $fe
    db $ff, $fe, $ff, $fe, $ff, $fc, $bb, $a8, $00, $e7, $ff, $b9, $b6, $cf, $78, $6f
    db $fe, $00, $eb, $ff, $b0, $76, $4f, $ff, $b9, $ef, $ff, $b9, $e6, $bf, $b0, $df
    db $5f, $6f, $af, $fc, $00, $c0, $e8, $c5, $df, $b0, $af, $60, $5f, $c0, $ff, $bf
    db $80, $90, $3a, $c8, $1c, $c8, $1d, $ff, $d0, $1b, $91, $3f, $a6, $3f, $98, $3c
    db $ff, $c3, $00, $09, $5c, $13, $38, $13, $b8, $7f, $0b, $d8, $89, $fc, $65, $fc
    db $19, $f0, $e0, $ff, $ff, $3c, $db, $66, $bd, $db, $ef, $91, $bf, $f7, $89, $bd
    db $db, $db, $66, $50, $a0, $3c, $fb, $df, $64, $5f, $80, $64, $ff, $24, $ff, $66
    db $fe, $04, $c0, $ff, $ff, $7e, $bd, $c3, $ff, $99, $ff, $f7, $f9, $b9, $c7, $ef
    db $9f, $ff, $81, $fe, $f0, $e3, $f7, $99, $ff, $62, $ff, $f9, $ff, $fd, $99, $e6
    db $e0, $ff, $ff, $3e, $df, $62, $bf, $5f, $c2, $ff, $92, $ff, $93, $e2, $e0, $f3
    db $0f, $a1, $ae, $da, $e0, $9f, $fd, $83, $e0, $e6, $7e, $e2, $e0, $9e, $f2, $f0
    db $e0, $99, $d0, $e4, $e0, $e0, $f5, $fb, $ef, $32, $0b, $fb, $26, $9e, $e0, $24
    db $a0, $e5, $9c, $e1, $d0, $e5, $f4, $e3, $af, $bf, $c1, $ff, $79, $d0, $e4, $84
    db $c2, $80, $b5, $f3, $ff, $8c, $bc, $80, $ff, $e3, $2d, $f7, $ad, $fb, $df, $a5
    db $ff, $29, $ff, $ad, $f0, $e3, $f8, $6f, $ff, $f8, $5f, $f0, $3f, $f8, $1f, $d8
    db $6f, $c5, $f8, $df, $e3, $8a, $4e, $a2, $4a, $a1, $71, $e2, $5f, $e8, $2f, $bf
    db $4b, $ff, $a8, $c4, $00, $e8, $61, $40, $6f, $80, $ff, $cf, $7c, $df, $f5, $df
    db $74, $ff, $ef, $57, $ff, $6c, $f7, $af, $e3, $21, $f4, $e0, $2f, $6e, $83, $ee
    db $40, $e2, $08, $ff, $6b, $fe, $e0, $68, $ff, $0b, $5e, $90, $e3, $fe, $43, $fe
    db $5f, $fc, $e0, $df, $f8, $e0, $02, $21, $e2, $80, $fe, $e8, $1f, $81, $10, $8c
    db $f0, $fc, $0e, $bf, $ec, $eb, $00, $00, $00, $fd, $00, $ff, $e0, $03, $03, $04
    db $07, $0b, $0c, $ff, $17, $18, $2f, $30, $5f, $60, $2f, $30, $ff, $17, $18, $0b
    db $0c, $04, $07, $03, $03, $fc, $e6, $e1, $fc, $e3, $c0, $c0, $40, $c0, $7e, $fe
    db $ef, $02, $fe, $fa, $06, $fe, $e1, $02, $fe, $7e, $1f, $fe, $40, $c0, $c0, $c0
    db $e0, $e3, $00, $00

    nop
    db $fd
    nop
    rst $38
    ldh [$03], a
    inc bc
    inc b
    rlca
    dec bc
    inc c
    rst $38
    rla
    jr jr_04b_7a19

    jr nc, @+$61

    ld h, b
    cpl
    jr nc, @+$01

    rla
    jr jr_04b_79fe

    inc c
    inc b
    rlca
    inc bc
    inc bc
    db $fc
    and $e1
    db $fc
    db $e3
    ret nz

jr_04b_79fe:
    ret nz

    ld b, b
    ret nz

    ld a, [hl]
    cp $ef
    ld [bc], a
    cp $fa
    ld b, $fe
    pop hl
    ld [bc], a
    cp $7e
    rra
    cp $40
    ret nz

    ret nz

    ret nz

    ldh [$e3], a
    nop
    nop
    nop
    db $fd

jr_04b_7a19:
    nop
    rst $38
    ldh [rSB], a
    ld bc, $0302
    dec b
    ld b, $ff
    dec bc
    inc c
    rla
    jr jr_04b_7a3f

    jr jr_04b_7a3b

    ld e, $ef
    dec e
    ld e, $05
    ld b, $fe
    pop hl
    inc b
    rlca
    rlca
    db $fd
    rlca
    ld [c], a
    pop hl

jr_04b_7a39:
    add b
    add b

jr_04b_7a3b:
    ld b, b
    ret nz

    and b
    ld h, b

jr_04b_7a3f:
    rst $38
    ret nc

    jr nc, @-$16

    jr jr_04b_7a39

    inc c
    db $f4
    inc c
    cp a
    call nz, $dc3c
    inc a
    ret nc

jr_04b_7a4e:
    jr nc, jr_04b_7a4e

    pop hl
    db $10
    rra
    ldh a, [$f0]
    ldh a, [rP1]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
