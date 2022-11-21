INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    xor b
    ld c, [hl]

    db $dc, $51

    jr nz, jr_006_4061

    db $39, $5b, $40, $60

    and $60

    db $71, $60, $0f, $69

    ld a, $6d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    jr c, jr_006_405b

    ld l, h
    sub $ee
    cp $82
    ld d, h
    xor $7c
    ld d, h
    ld l, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_006_407c

    ld d, h
    ld l, h
    ld a, e
    ld b, a
    ld e, l
    ld h, e
    ld l, $31
    rla
    jr jr_006_405a

    inc c
    dec c
    ld c, $15
    ld a, [de]
    rra
    db $10
    rla
    jr jr_006_4064

    inc c

jr_006_405a:
    rlca

jr_006_405b:
    rlca
    nop
    nop
    nop
    nop
    nop

jr_006_4061:
    nop
    nop
    nop

jr_006_4064:
    nop
    nop
    ldh a, [$f0]
    ld l, b
    sbc b
    db $f4
    inc c
    db $fc
    inc b
    ld a, [$f606]
    ld c, $f9
    rlca
    db $fd
    inc bc
    sbc d
    ld h, [hl]
    ld d, h
    db $ec
    xor b
    ret c

jr_006_407c:
    sub b
    ldh a, [$60]
    ld h, b

    db $2f, $1d, $00, $7c, $1f, $00, $00, $00, $67, $29, $ff, $6b, $58, $1e, $00, $00

    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    ld a, a
    ld a, h
    ld a, a
    ld b, b
    daa
    ld a, [hl-]
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    cp $3e
    cp $02
    db $e4
    ld e, h
    inc de
    ld e, $0a
    rrca
    ld [$100f], sp
    rra
    ld de, $261f
    ld a, $38
    jr c, jr_006_40bf

jr_006_40bf:
    nop
    ret z

    ld a, b
    ld d, b
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp+$64
    ld a, h
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $9c, $7e, $ff, $4b, $5c, $37, $f7, $7d

    nop
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
    inc bc
    ld [bc], a
    rlca
    inc b
    ld a, a
    ld a, h
    ld a, a
    ld b, b
    daa
    ld a, [hl-]
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    cp $3e
    cp $02
    db $e4
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    ccf
    ld a, $3f
    jr nz, jr_006_41d1

jr_006_41d1:
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    rst $38
    rra
    rst $38
    ld bc, $0e0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $9f01
    sbc a
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp+$08
    rst $38
    rrca
    add h
    add a
    add a
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, Call_000_03cf
    inc bc
    nop
    nop
    nop
    nop
    jr nc, jr_006_424a

    ld a, b
    ld c, b
    ld a, b
    ld c, b
    db $fc
    add h
    add c
    add c
    ld b, d
    jp $c3c3


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$01

    ld h, [hl]
    rst $20
    add c
    add c
    nop
    nop
    nop
    nop
    jr jr_006_4254

    inc a
    inc h
    inc a
    inc h
    ld b, b
    ret nz

    ld b, b
    ret nz

jr_006_4244:
    ld hl, $e1e1
    pop hl
    nop
    nop

jr_006_424a:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    rst $38
    adc h
    rst $38

jr_006_4254:
    inc sp
    di
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc c
    inc c
    ld e, $12
    ld b, b
    ret nz

    jr nz, jr_006_4244

    jr nz, @-$1e

    sub b
    ldh a, [rSVBK]
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_006_42b1

    ld b, b
    ld a, a
    ld b, [hl]
    ld a, a
    sbc c
    ld sp, hl
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld b, $06
    and b
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$c8]
    ld hl, sp+$38
    jr c, jr_006_428d

jr_006_428d:
    nop
    nop
    nop
    inc d
    rra
    db $10
    rra
    jr nz, @+$41

    inc hl
    ccf
    ld c, h
    ld a, h
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    inc de
    ld e, $0a
    rrca
    ld [$100f], sp
    rra
    ld de, $261f
    ld a, $38
    jr c, jr_006_42af

jr_006_42af:
    nop
    ret z

jr_006_42b1:
    ld a, b
    ld d, b
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp+$64
    ld a, h
    inc e
    inc e
    nop
    nop
    inc de
    dec e
    add hl, bc
    rrca
    dec b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc de
    rra

jr_006_42ce:
    inc e
    inc e
    ld a, [c]
    ld l, $e4
    inc a
    jr z, jr_006_42ce

    ld [$04f8], sp
    db $fc
    call nz, Call_000_32fc
    ld a, $0e
    ld c, $9f
    sub b
    add hl, bc
    ld c, $04
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    add hl, bc
    rrca
    rst $38
    nop
    ld sp, hl
    sub a
    ld a, [c]
    sbc [hl]
    sub h
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $62
    cp $99
    sbc a
    rst $08
    rst $08
    rst $08
    ld c, b
    add h
    add a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    rst $38
    add a
    rst $38
    nop
    db $fc
    ld c, e
    ld a, c
    rst $08
    ld c, d
    cp $02
    cp $01
    rst $38
    ld sp, $00ff
    nop
    rst $20
    rst $20
    rst $20
    inc h
    ld b, d
    jp $8181


    nop
    nop
    nop
    nop
    add c
    add c
    ld a, [hl]
    ld b, d
    rst $38
    jp Jump_000_00ff


    ld a, [hl]
    and l
    inc a
    rst $20
    and l
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    di
    di
    di
    ld [de], a
    ld hl, $40e1
    ret nz

    add b
    add b

jr_006_434e:
    add b
    add b
    ld e, $12
    ccf
    ld hl, $e1ff
    rst $38
    nop
    ccf
    jp nc, $f39e

    ld d, d
    ld a, a
    ld b, b
    ld a, a
    nop
    nop
    nop
    nop
    add b
    add b
    ld sp, hl
    ld sp, hl
    ld sp, hl
    add hl, bc
    sub b
    ld [hl], b
    jr nz, jr_006_434e

    ld b, b
    ret nz

    rrca
    add hl, bc
    rrca
    add hl, bc
    rra
    db $10
    rst $38
    ldh a, [rIE]
    nop
    sbc a
    jp hl


    ld c, a
    ld a, c
    add hl, hl
    ccf
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    db $fc
    ld a, h
    db $fc
    inc b
    ret z

    cp b
    sub b
    ldh a, [$03]
    inc bc
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$f8ff], sp
    rst $38
    add b
    ld c, a
    ld [hl], h
    daa
    inc a
    ret z

    ld a, b
    ld d, b
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp+$64
    ld a, h
    inc e
    inc e
    nop
    nop
    inc de
    ld e, $0a
    rrca
    ld [$100f], sp
    rra
    ld de, $261f
    ld a, $38
    jr c, jr_006_43bf

jr_006_43bf:
    nop
    ld a, [c]
    ld l, $e4
    inc a
    jr z, @-$06

    ld [$04f8], sp
    db $fc
    call nz, Call_000_32fc
    ld a, $0e
    ld c, $13
    dec e
    add hl, bc
    rrca
    dec b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc de
    rra
    inc e
    inc e
    rst $38
    nop
    ld sp, hl
    sub a
    ld a, [c]
    sbc [hl]
    sub h
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $62
    cp $99
    sbc a
    sbc a
    sub b
    add hl, bc
    ld c, $04
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    add hl, bc
    rrca
    rst $38
    add a
    rst $38
    nop
    db $fc
    ld c, e
    ld a, c
    rst $08
    ld c, d
    cp $02
    cp $01
    rst $38
    ld sp, $cfff
    rst $08
    rst $08
    ld c, b
    add h
    add a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    ld a, [hl]
    ld b, d
    rst $38
    jp Jump_000_00ff


    ld a, [hl]
    and l
    inc a
    rst $20
    and l
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    nop
    rst $20
    rst $20
    rst $20
    inc h
    ld b, d
    jp $8181


    nop
    nop
    nop
    nop
    add c
    add c
    ld e, $12
    ccf
    ld hl, $e1ff
    rst $38
    nop
    ccf
    jp nc, $f39e

    ld d, d
    ld a, a
    ld b, b
    ld a, a
    nop
    nop
    nop
    nop
    di
    di
    di
    ld [de], a
    ld hl, $40e1
    ret nz

    add b
    add b

jr_006_445e:
    add b
    add b
    rrca
    add hl, bc
    rrca
    add hl, bc
    rra
    db $10
    rst $38
    ldh a, [rIE]
    nop
    sbc a
    jp hl


    ld c, a
    ld a, c
    add hl, hl
    ccf
    nop
    nop
    nop
    nop
    add b
    add b
    ld sp, hl
    ld sp, hl
    ld sp, hl
    add hl, bc
    sub b
    ld [hl], b
    jr nz, jr_006_445e

    ld b, b
    ret nz

    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$f8ff], sp
    rst $38
    add b
    ld c, a
    ld [hl], h
    daa
    inc a
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    db $fc
    ld a, h
    db $fc
    inc b
    ret z

    cp b
    sub b
    ldh a, [rP1]
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    cp $3e
    cp $02
    db $e4
    ld e, h
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    ld a, a
    ld a, h
    ld a, a
    ld b, b
    daa
    ld a, [hl-]
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    rst $38
    rra
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    ccf
    ld a, $3f
    jr nz, jr_006_44e8

    rlca
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b

jr_006_44e8:
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp+$08
    rst $38
    rrca
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $9f01
    sbc a
    call z, Call_000_03cf
    inc bc
    nop
    nop
    nop
    nop
    jr nc, jr_006_453a

    ld a, b
    ld c, b
    ld a, b
    ld c, b
    db $fc
    add h
    add h
    add a
    add a
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$01

    ld h, [hl]
    rst $20
    add c
    add c
    nop
    nop
    nop
    nop
    jr jr_006_4544

    inc a
    inc h
    inc a
    inc h
    add c
    add c
    ld b, d
    jp $c3c3


    nop
    nop
    nop
    nop

jr_006_453a:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    rst $38
    adc h
    rst $38

jr_006_4544:
    inc sp
    di
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc c
    inc c
    ld e, $12
    ld b, b
    ret nz

    ld b, b
    ret nz

jr_006_4554:
    ld hl, $e1e1
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, [hl]
    ld a, a
    sbc c
    ld sp, hl
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, b
    ret nz

    jr nz, jr_006_4554

    jr nz, @-$1e

    sub b
    ldh a, [rSVBK]
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    rra
    db $10
    rra
    jr nz, @+$41

    inc hl
    ccf
    ld c, h
    ld a, h
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    and b
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$c8]
    ld hl, sp+$38
    jr c, jr_006_459d

jr_006_459d:
    nop
    nop
    nop

    db $02, $03, $03, $03, $04, $f0, $f1, $f0, $f1, $f0, $f1, $f0, $f1, $f0, $f1, $f0
    db $f1, $f0, $f1, $f0, $f4, $f4, $02, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $05, $e0, $e1, $e2, $06, $f2, $02, $03, $03, $03, $03, $03, $03, $03, $04, $f2
    db $f3, $f2, $f3, $f2, $f4, $f4, $05, $20, $b6, $c0, $b6, $c5, $20, $74, $72, $7d
    db $05, $e3, $e4, $e5, $06, $f0, $05, $20, $20, $20, $20, $20, $20, $20, $06, $f0
    db $f1, $f0, $f1, $f0, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $05, $e6, $e7, $e8, $06, $f2, $07, $08, $08, $08, $08, $08, $08, $08, $09, $f2
    db $f3, $f2, $f3, $f2, $00, $00, $05, $20, $67, $20, $97, $20, $8f, $20, $8a, $20
    db $07, $08, $08, $08, $09, $f0, $f1, $f0, $f1, $f0, $f1, $f0, $f1, $f0, $f1, $f0
    db $f1, $f0, $f1, $f0, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $02, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $04, $00, $00, $05, $20, $68, $20, $98, $20, $90, $20, $8b, $20
    db $05, $41, $42, $43, $44, $45, $20, $46, $47, $48, $49, $4a, $20, $4b, $4c, $4d
    db $4e, $4f, $20, $06, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $20, $69, $20, $99, $20, $91, $20, $8c, $20
    db $05, $50, $51, $52, $53, $54, $20, $55, $56, $57, $58, $59, $20, $5a, $20, $2e
    db $2c, $27, $20, $06, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $20, $6a, $20, $9a, $20, $92, $20, $8d, $20
    db $05, $61, $62, $63, $64, $65, $20, $66, $67, $68, $69, $6a, $20, $6b, $6c, $6d
    db $6e, $6f, $20, $06, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $20, $6b, $20, $9b, $20, $93, $20, $8e, $20
    db $05, $70, $71, $72, $73, $74, $20, $75, $76, $77, $78, $79, $20, $7a, $20, $3f
    db $21, $2f, $20, $06, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $8f, $98, $75, $5f, $5f, $20, $20, $9d, $20
    db $05, $30, $31, $32, $33, $34, $20, $35, $36, $37, $38, $39, $20, $25, $26, $28
    db $3d, $29, $20, $06, $00, $00, $05, $20, $00, $00, $00, $20, $20, $20, $20, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $20, $00, $00, $00, $20, $20, $20, $6f, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $44, $45, $4c, $20, $20, $20, $45
    db $4e, $44, $20, $06, $00, $00, $05, $20, $00, $00, $00, $20, $20, $20, $20, $20
    db $07, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $09, $00, $00, $07, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $04, $04, $04, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $01, $01, $01, $01, $00, $00, $00, $00
    db $00, $04, $04, $04, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $04, $04, $04, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $01, $00, $00, $00, $01, $00
    db $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $01, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $01, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f4]
    db $f4
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, $05
    ldh [$e1], a
    ld [c], a
    ld b, $f2
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld a, [c]
    di
    ld a, [c]
    di
    ld a, [c]
    di
    ld a, [c]
    db $f4
    db $f4
    dec b
    jr nz, jr_006_4acd

    ld [hl], d
    ld a, l
    ld [hl], e
    jr nz, @-$73

    sub a
    db $76
    dec b
    db $e3
    db $e4
    push hl
    ld b, $f0
    dec b
    jr nz, @+$22

jr_006_4a69:
    jr nz, @+$22

    jr nz, jr_006_4a73

    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]

jr_006_4a73:
    ldh a, [rP1]
    nop
    dec b
    jr nz, jr_006_4a99

    jr nz, jr_006_4a9b

    jr nz, jr_006_4a9d

    jr nz, jr_006_4a9f

    jr nz, jr_006_4a86

    and $e7
    add sp, $06
    ld a, [c]

jr_006_4a86:
    rlca
    ld [$0808], sp
    ld [$0908], sp
    ld a, [c]
    di
    ld a, [c]
    di
    ld a, [c]
    di
    ld a, [c]
    nop
    nop
    dec b
    jr nz, @-$57

jr_006_4a99:
    jr nz, @-$27

jr_006_4a9b:
    jr nz, @-$2f

jr_006_4a9d:
    jr nz, jr_006_4a69

jr_006_4a9f:
    jr nz, @+$09

    ld [$0808], sp
    add hl, bc
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]

jr_006_4aad:
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]

jr_006_4ab3:
    ldh a, [rP1]
    nop
    dec b
    jr nz, jr_006_4ad9

    jr nz, jr_006_4adb

    jr nz, jr_006_4add

    jr nz, jr_006_4adf

    jr nz, jr_006_4ac3

    inc bc
    inc bc

jr_006_4ac3:
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

jr_006_4acd:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    dec b
    nop
    xor b

jr_006_4ad9:
    jr nz, jr_006_4ab3

jr_006_4adb:
    jr nz, jr_006_4aad

jr_006_4add:
    jr nz, @-$33

jr_006_4adf:
    jr nz, jr_006_4ae6

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_006_4ae6:
    jr nz, jr_006_4b2e

    ld b, a
    ld c, b
    ld c, c

jr_006_4aeb:
    ld c, d
    jr nz, jr_006_4b39

jr_006_4aee:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    jr nz, jr_006_4afa

jr_006_4af4:
    nop
    nop
    dec b
    nop
    jr nz, @+$22

jr_006_4afa:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    dec b
    jr nz, jr_006_4b23

jr_006_4b03:
    jr nz, jr_006_4b25

    jr nz, @+$22

    jr nz, jr_006_4b29

    jr nz, jr_006_4b2b

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_006_4b31

    jr nz, @+$22

    ld b, $00
    nop
    dec b
    nop
    xor c
    jr nz, jr_006_4af4

    jr nz, jr_006_4aee

    jr nz, jr_006_4aeb

    jr nz, jr_006_4b26

    ld d, b
    ld d, c

jr_006_4b23:
    ld d, d
    ld d, e

jr_006_4b25:
    ld d, h

jr_006_4b26:
    jr nz, jr_006_4b7d

    ld d, [hl]

jr_006_4b29:
    ld d, a
    ld e, b

jr_006_4b2b:
    ld e, c

jr_006_4b2c:
    jr nz, @+$5c

jr_006_4b2e:
    jr nz, @+$30

    inc l

jr_006_4b31:
    daa
    jr nz, @+$08

    nop

jr_006_4b35:
    nop
    dec b
    jr nz, jr_006_4b59

jr_006_4b39:
    jr nz, jr_006_4b5b

    jr nz, jr_006_4b5d

    jr nz, jr_006_4b5f

    jr nz, @+$07

    jr nz, jr_006_4b63

    jr nz, jr_006_4b65

    jr nz, @+$22

    jr nz, jr_006_4b69

    jr nz, jr_006_4b6b

    jr nz, @+$22

    jr nz, jr_006_4b6f

    jr nz, jr_006_4b71

    jr nz, @+$22

    ld b, $00
    nop
    dec b
    jr nz, jr_006_4b03

jr_006_4b59:
    jr nz, jr_006_4b35

jr_006_4b5b:
    jr nz, @-$2c

jr_006_4b5d:
    jr nz, jr_006_4b2c

jr_006_4b5f:
    jr nz, jr_006_4b66

    ld h, c
    ld h, d

jr_006_4b63:
    ld h, e
    ld h, h

jr_006_4b65:
    ld h, l

jr_006_4b66:
    jr nz, @+$68

    ld h, a

jr_006_4b69:
    ld l, b
    ld l, c

jr_006_4b6b:
    ld l, d
    jr nz, jr_006_4bd9

    ld l, h

jr_006_4b6f:
    ld l, l

jr_006_4b70:
    ld l, [hl]

jr_006_4b71:
    ld l, a
    jr nz, @+$08

    nop
    nop

jr_006_4b76:
    dec b
    jr nz, jr_006_4b99

    jr nz, jr_006_4b9b

    jr nz, jr_006_4b9d

jr_006_4b7d:
    jr nz, jr_006_4b9f

    jr nz, @+$07

    jr nz, jr_006_4ba3

    jr nz, jr_006_4ba5

    jr nz, @+$22

    jr nz, jr_006_4ba9

    jr nz, jr_006_4bab

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_006_4bb3

    ld b, $00
    nop
    dec b
    jr nz, @-$53

jr_006_4b99:
    jr nz, jr_006_4b76

jr_006_4b9b:
    jr nz, jr_006_4b70

jr_006_4b9d:
    jr nz, @-$30

jr_006_4b9f:
    jr nz, jr_006_4ba6

    ld [hl], b
    ld [hl], c

jr_006_4ba3:
    ld [hl], d
    ld [hl], e

jr_006_4ba5:
    ld [hl], h

jr_006_4ba6:
    jr nz, jr_006_4c1d

    db $76

jr_006_4ba9:
    ld [hl], a
    ld a, b

jr_006_4bab:
    ld a, c
    jr nz, @+$7c

    jr nz, @+$41

    ld hl, $202f

jr_006_4bb3:
    ld b, $00
    nop
    dec b
    jr nz, jr_006_4bd9

    jr nz, jr_006_4bdb

    jr nz, @+$22

    jr nz, jr_006_4bdf

    jr nz, @+$07

    jr nz, jr_006_4be3

    jr nz, jr_006_4be5

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_006_4bf1

    jr nz, @+$22

    ld b, $00
    nop
    dec b
    adc a
    sbc b

jr_006_4bd9:
    ld [hl], l
    ld e, a

jr_006_4bdb:
    ld e, a
    jr nz, @+$22

    db $dd

jr_006_4bdf:
    jr nz, jr_006_4be6

    jr nc, @+$33

jr_006_4be3:
    ld [hl-], a
    inc sp

jr_006_4be5:
    inc [hl]

jr_006_4be6:
    jr nz, jr_006_4c1d

    ld [hl], $37
    jr c, jr_006_4c25

    jr nz, jr_006_4c13

    ld h, $28
    dec a

jr_006_4bf1:
    add hl, hl
    jr nz, jr_006_4bfa

    nop
    nop
    dec b
    jr nz, jr_006_4bf9

jr_006_4bf9:
    nop

jr_006_4bfa:
    nop
    jr nz, jr_006_4c1d

    jr nz, jr_006_4c1f

    jr nz, @+$07

    jr nz, jr_006_4c23

    jr nz, jr_006_4c25

    jr nz, jr_006_4c27

    jr nz, jr_006_4c29

    jr nz, jr_006_4c2b

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_006_4c31

    jr nz, @+$22

jr_006_4c13:
    ld b, $00
    nop
    dec b
    jr nz, jr_006_4c19

jr_006_4c19:
    nop
    nop
    jr nz, jr_006_4c3d

jr_006_4c1d:
    jr nz, @-$4f

jr_006_4c1f:
    jr nz, @+$07

    jr nz, @+$22

jr_006_4c23:
    jr nz, @+$22

jr_006_4c25:
    jr nz, jr_006_4c47

jr_006_4c27:
    jr nz, @+$22

jr_006_4c29:
    ld b, h
    ld b, l

jr_006_4c2b:
    ld c, h
    jr nz, @+$22

    jr nz, jr_006_4c75

    ld c, [hl]

jr_006_4c31:
    ld b, h
    jr nz, jr_006_4c3a

    nop
    nop
    dec b
    jr nz, jr_006_4c39

jr_006_4c39:
    nop

jr_006_4c3a:
    nop
    jr nz, jr_006_4c5d

jr_006_4c3d:
    jr nz, @+$22

    jr nz, @+$09

    ld [$0808], sp
    ld [$0808], sp

jr_006_4c47:
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    nop
    nop

Call_006_4c56:
    rlca
    ld [$0808], sp
    ld [$0808], sp

jr_006_4c5d:
    ld [$0808], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop

jr_006_4c75:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc b
    inc b
    inc b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
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
    nop
    inc b
    inc b
    inc b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop

Call_006_4cf7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $e0, $47, $a0, $45

    ld h, b
    ld c, h
    jr nz, @+$4c

    ret


Call_006_4ea9:
    ld a, [$c4b3]
    add a
    add a
    ld hl, $4ea0
    add l
    ld l, a
    jr nc, jr_006_4eb6

    inc h

jr_006_4eb6:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d400
    ld bc, $0024
    call Call_000_03eb
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    ld bc, $0024
    call Call_000_03eb
    ret


Call_006_4ed3:
    ld hl, $d000
    ld de, $9800
    ld bc, $0024
    call Call_000_0468
    ret


Call_006_4ee0:
    ld hl, $d400
    ld de, $b800
    ld bc, $0024
    call Call_000_0468
    ret


Call_006_4eed:
    push af
    ld a, $10
    ld [$c3f6], a
    ld a, $05
    ld [$c3f7], a
    pop af
    ret


Call_006_4efa:
    push bc
    push hl
    ld hl, $c800
    ld c, $00

jr_006_4f01:
    ld a, [hl+]
    cp $00
    jr z, jr_006_4f09

    inc c
    jr jr_006_4f01

jr_006_4f09:
    ld a, c
    pop hl
    pop bc
    ret


Call_006_4f0d:
    push af
    push bc
    push de
    push hl
    ld hl, $d027
    ld a, $03
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d047
    ld a, $20
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d047
    ld de, $c800

jr_006_4f2f:
    ld a, [de]
    inc de
    cp $00
    jr z, jr_006_4f45

    ld [hl+], a
    jr jr_006_4f2f

    ld bc, $ffdf
    add hl, bc
    sub $d0
    ld [hl+], a
    ld bc, $0020
    add hl, bc
    jr jr_006_4f2f

jr_006_4f45:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_006_4f4a:
    push af
    push bc
    push de
    push hl
    call Call_006_4efa
    and a
    jr z, jr_006_4f67

    ld hl, $c800

jr_006_4f57:
    ld a, [hl+]
    cp $00
    jr nz, jr_006_4f57

    dec hl
    dec hl
    ld a, [hl]
    ld [hl], $00
    call Call_006_4f0d
    call Call_006_4ed3

jr_006_4f67:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_006_4f6c:
    call Call_006_4ea9
    call Call_006_4f0d
    ld hl, $d021
    ld de, $d421
    ld bc, $06e0
    ld a, $20
    rst $18

    db $08, $06

    call Call_006_4ed3
    call Call_006_4ee0
    ret


Call_006_4f87:
    push af
    push bc
    push de
    push hl
    ld a, [$c3f6]
    ld d, a
    ld a, [$c3f7]
    ld e, a
    ld a, e
    cp $05
    jr nz, jr_006_4fbc

    ld a, d
    cp $0a
    jr z, jr_006_4fb0

    ld a, d
    cp $10
    jr z, jr_006_4fb5

    jr jr_006_4fbc

    ld hl, $c4b3
    ld a, [hl]
    xor $01
    ld [hl], a
    call Call_006_4f6c
    jr jr_006_4ffc

jr_006_4fb0:
    call Call_006_4f4a
    jr jr_006_4ffc

jr_006_4fb5:
    ld hl, $c4b3
    set 7, [hl]
    jr jr_006_4ffc

jr_006_4fbc:
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $00c0
    add hl, bc
    ld a, d
    add $01
    ld e, a
    ld d, $00
    add hl, de
    ld de, $d000
    add hl, de
    ld a, [hl]
    ld d, a
    jr jr_006_4fdb

    add $40
    ld d, a

jr_006_4fdb:
    ld hl, $c800

jr_006_4fde:
    ld a, [hl+]
    cp $00
    jr nz, jr_006_4fde

    dec hl
    call Call_006_5001
    and a
    jr nz, jr_006_4ffc

    ld a, d
    ld [hl+], a
    ld [hl], $00
    call Call_006_4f0d
    call Call_006_4ed3
    call Call_006_4efa
    cp $07
    call z, Call_006_4eed

jr_006_4ffc:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_006_5001:
    call Call_006_4efa
    cp $05
    cp $07
    jr c, jr_006_500e

    ld a, d
    ld a, $ff
    ret


jr_006_500e:
    xor a
    ret


    ld [hl], e
    or e
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    adc d
    adc e
    adc h
    adc l
    adc [hl]
    jp z, $cccb

    call $ffce
    push hl
    ld a, d
    dec hl
    ld e, [hl]
    ld hl, $5010
    cp $de
    jr z, jr_006_5050

    ld hl, $5030
    cp $df
    jr z, jr_006_5050

    xor a
    pop hl
    ret


jr_006_5050:
    ld a, [hl+]
    cp $ff
    jr z, jr_006_5059

    cp e
    jr nz, jr_006_5050

    xor a

jr_006_5059:
    pop hl
    ret


    nop

    db $00, $00, $00, $00, $01, $00, $00, $00, $00, $00

    ld bc, $0000
    nop
    nop
    nop
    nop
    nop

    db $00, $00

    nop
    ld bc, $0000
    nop
    nop

    db $00

    ld bc, $0000
    nop
    nop
    nop

    db $00, $00, $00, $00, $00, $01, $00, $00, $00, $00, $00, $01, $00

    nop
    nop
    nop
    nop

    db $00, $00, $00

    nop
    nop
    ld bc, $0000
    nop
    nop

    db $00

    db $01

    db $00

    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $00, $00, $01, $00, $00, $00

    nop

    db $00

    db $01

    db $00

    nop
    nop
    nop
    nop

    db $01, $01, $01, $01, $01, $01, $02, $02, $02, $02, $00, $02, $02, $02, $02, $02
    db $00

Call_006_50c1:
    push af
    push bc
    push de
    push hl
    ld a, [$c3f6]
    ld d, a
    ld a, [$c3f7]
    ld e, a
    ldh a, [$91]
    ld b, a
    and $f0
    jr z, jr_006_5136

    rst $08

    db $5b

jr_006_50d6:
    bit 5, b
    jr z, jr_006_50dd

    dec d
    jr jr_006_50f2

jr_006_50dd:
    bit 4, b
    jr z, jr_006_50e4

    inc d
    jr jr_006_50f2

jr_006_50e4:
    bit 6, b
    jr z, jr_006_50eb

    dec e
    jr jr_006_50f2

jr_006_50eb:
    bit 7, b
    jr z, jr_006_50f2

    inc e
    jr jr_006_50f2

jr_006_50f2:
    ld a, d
    bit 7, a
    jr z, jr_006_50fc

    ld a, $11
    dec a
    jr jr_006_5101

jr_006_50fc:
    cp $11
    jr c, jr_006_5101

    xor a

jr_006_5101:
    ld d, a
    ld a, e
    bit 7, a
    jr z, jr_006_510c

    ld a, $06
    dec a
    jr jr_006_5111

jr_006_510c:
    cp $06
    jr c, jr_006_5111

    xor a

jr_006_5111:
    ld e, a
    ld a, e
    add a
    add a
    add a
    add a
    add e
    add d
    ld hl, $505b
    add l
    ld l, a
    jr nc, jr_006_5121

    inc h

jr_006_5121:
    ld a, [hl]
    cp $00
    jr z, jr_006_5136

    cp $01
    jr z, jr_006_50d6

    bit 4, b
    jr nz, jr_006_50d6

    bit 5, b
    jr nz, jr_006_50d6

    ld b, $10
    jr jr_006_50d6

jr_006_5136:
    ld a, d
    ld [$c3f6], a
    ld a, e
    ld [$c3f7], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_006_5143:
    ld a, [$c3f6]
    add a
    add a
    add a
    add $14
    ld d, a
    ld a, [$c3f7]
    add a
    add a
    add a
    add a
    add $44
    ld e, a
    ld a, [$c3f7]
    cp $05
    jr nz, jr_006_516a

    ld a, [$c3f6]
    add a
    add a
    add a
    add $14
    ld d, a
    ld a, e
    sub $02
    ld e, a

jr_006_516a:
    ld bc, $0360
    call Call_000_26a4
    ret


Call_006_5171:
    call Call_006_4efa
    ld h, a
    ld a, [$c4b2]
    and $10
    jr nz, jr_006_517d

    inc h

jr_006_517d:
    ld de, $6c14

jr_006_5180:
    ld a, h
    cp $07
    jr nc, jr_006_5196

    ld bc, $0320
    push de
    push hl
    call Call_000_2798
    pop hl
    pop de
    ld a, d
    add $f8
    ld d, a
    inc h
    jr jr_006_5180

jr_006_5196:
    ret


Call_006_5197:
    ld a, [$c4b2]
    rrca
    rrca
    and $0f
    ld h, $00
    ld l, a
    cp $08
    jr c, jr_006_51a8

    add $08
    ld l, a

jr_006_51a8:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $a0
    add l
    ld l, a
    ld a, h
    adc $41
    ld h, a
    push hl
    ld de, $8f00
    ld c, $02
    call Call_000_0468
    pop hl
    ld de, $0100
    add hl, de
    ld de, $8f20
    ld c, $02
    call Call_000_0468
    ret


    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_006_5143
    call Call_006_5171
    call Call_006_5197
    ret


    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ldh [$8a], a
    ldh [$8b], a
    ld [$c4b3], a
    ld [$c3f6], a
    ld [$c3f7], a
    ld a, $00
    ldh [rVBK], a
    ld hl, $4040
    ld de, $8600
    ld c, $04
    call Call_000_0468
    ld hl, $4080
    ld de, $0a02
    call Call_000_056c
    ld hl, $4020
    ld de, $8200
    ld c, $02
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $4090
    ld de, $8f00
    ld c, $10
    call Call_000_0468
    ld hl, $4190
    ld de, $0101
    call Call_000_056c
    ld a, [$c810]
    ld b, $06
    ld de, $8e00
    rst $18

    db $06, $06

    call Call_000_2e3b
    call Call_006_4f6c
    ld a, $0f
    ld hl, $51cc
    call Call_000_23e8
    call Call_000_2e3b

jr_006_5246:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$94]
    bit 3, a
    jr z, jr_006_5257

    rst $08
    ld e, h
    call Call_006_4eed

jr_006_5257:
    ldh a, [$94]
    bit 1, a
    jr z, jr_006_526a

    call Call_006_4efa
    and a
    jr z, jr_006_52dc

    rst $08
    ld e, l
    call Call_006_4f4a
    jr jr_006_527a

jr_006_526a:
    ldh a, [$94]
    bit 0, a
    jr z, jr_006_5277

    rst $08

    db $5c

    call Call_006_4f87
    jr jr_006_527a

jr_006_5277:
    call Call_006_50c1

jr_006_527a:
    call Call_000_2e3b
    call Call_000_0a61
    ld a, [$c4b3]
    bit 7, a
    jr z, jr_006_5246

    res 7, a
    ld [$c4b3], a
    call Call_006_4efa
    and a
    jr nz, jr_006_52b1

    ld a, [$c810]
    ld hl, $0043
    add l
    ld l, a
    jr nc, jr_006_529d

    inc h

jr_006_529d:
    ld de, $c800
    rst $18
    ld e, h
    dec b
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_006_4f0d
    call Call_006_4ed3
    jr jr_006_5246

jr_006_52b1:
    ld hl, $51cc
    call Call_000_2449
    call Call_000_0a61
    ld a, h
    ld [$c80b], a
    call Call_000_0a61
    ld a, h
    ld [$c80c], a
    call Call_000_0a61
    ld a, h
    ld [$c80d], a
    call Call_000_0a61
    ld a, h
    ld [$c80e], a
    call Call_000_0a61
    ld a, h
    ld [$c80f], a
    xor a
    ret


jr_006_52dc:
    ld hl, $51cc
    call Call_000_2449
    ld a, $ff
    ret


    nop
    nop
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
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    ld a, a
    ret nz

    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, e
    jp nz, $c043

    ld b, [hl]
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    ldh [$f0], a
    ldh a, [$fc]
    cp $f3
    rst $30
    xor $f0
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    add d
    add e
    jp nz, $62c3

    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld b, b
    pop bc
    ld b, e
    jp nz, $c243

    ld b, a
    push bc
    ld b, a
    add $46
    rst $38
    nop
    rst $38
    rst $38
    ld a, h
    cp $a3
    rst $08
    nop
    rst $08
    add $ff
    ld a, l
    add hl, sp
    cp $00
    rst $38
    nop
    rst $38
    cp $03
    ld [bc], a
    inc bc
    add d
    add e
    add d
    add e
    jp nz, $c243

    jp $ffc2


    nop
    rst $38
    ld a, a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nc

    ld a, b
    ld sp, hl
    ld l, a
    add $4f
    jp nz, $ff77

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, h
    cp $93
    rst $00
    nop
    rst $38
    ld a, e
    rst $38
    rst $38
    nop
    rst $38
    cp $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc hl
    ld [hl], d
    rst $18
    sbc $83
    cp $43
    cp $ff
    nop
    rst $38
    ld a, a
    jp nz, $c447

    ld b, [hl]
    push bc
    ld b, h
    push bc
    ld b, a
    add $4f
    ret


    ld e, h
    rst $38
    nop
    rst $38
    rst $38
    ld [hl], e
    rlca
    db $fc
    ld bc, $00ff
    db $fc
    cp $03
    ld a, a
    cp $00
    rst $38
    nop
    rst $38
    cp $43
    ld [c], a
    and e
    ld a, [c]
    ld d, e
    ld [hl], d
    di
    ld a, d
    db $eb
    jp c, $ea4b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    rrca
    add hl, bc
    ld c, $09
    dec de
    inc e
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    call nc, $f7b7
    sub h
    rst $30
    sub h
    rst $28
    sbc h
    cp a
    call z, $0000
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
    nop
    nop
    push bc
    ld b, a
    add $47
    rst $00
    ld b, a
    rst $00
    ld b, a
    push bc
    ld b, l
    rst $00
    ld c, h
    ret


    ld c, l
    call z, $fc49
    cp $07
    rst $38

jr_006_5604:
    dec e
    rst $38
    cp [hl]
    rst $38
    xor h
    rst $28
    cp h
    rst $20
    inc c
    ld l, a
    nop
    rst $38
    and e
    ld [hl+], a
    ld h, e
    ld [hl-], a
    sub e
    sub d

jr_006_5616:
    sub e
    jp nc, $d2d3

    db $d3
    ld a, [c]
    or e
    ld a, [$fa5b]
    rst $00
    ld b, [hl]
    push bc
    ld b, [hl]
    rst $00
    ld b, a
    rst $08
    ld e, a
    rst $10
    ld d, a
    call c, $db55
    ld d, h
    push de
    ld e, d
    add hl, sp
    add $ff
    nop
    rst $28
    rst $38
    rst $38
    ld a, l
    ld l, l
    ld a, l
    sub $ff
    rst $38
    jr z, jr_006_5616

    jr c, jr_006_5604

    jp nz, $c243

    jp $e3c2


    ld a, [c]
    db $d3
    jp nc, $5273

jr_006_564c:
    or e
    ld d, d
    ld d, e
    or d
    jp nz, $c57f

    ld a, a
    jp z, $fb7e

    ld a, [hl]
    adc $5e
    push de
    ld e, d
    rst $18
    ld d, h
    rst $10
    ld d, b
    and h
    adc h
    ld e, $41
    rst $38
    nop
    ld e, l
    ld b, c
    cp [hl]
    and d
    ld a, a
    db $e3
    dec a
    ld hl, $63ff
    and a
    cp $67
    cp $e7
    ld a, [hl]
    dec sp
    ld a, [hl]
    db $e3
    and d
    inc hl
    or d
    inc de
    ld d, d
    di
    ld d, d
    db $d3
    ld e, a
    sbc $5f
    push bc
    ld b, l
    add $46
    push bc
    ld c, [hl]
    bit 5, [hl]
    ld [$d27e], a
    ld e, e
    db $fc
    rst $38
    ld [hl], e
    rlca
    ld [hl], h
    adc [hl]
    ei
    adc d
    cp a
    add e
    ld e, c
    ld b, b
    rst $38
    nop
    rst $28
    jr nc, jr_006_564c

    ld a, [$fa1b]
    adc e
    ld a, [$fe6b]
    ld d, a
    ld a, $97
    ld e, [hl]
    db $d3
    ld a, $23
    ld a, [hl]
    ccf
    inc l
    dec a
    ld h, $2b
    ld [hl], $1e
    inc de
    rla
    dec de
    rrca
    ld [$0c0b], sp
    rlca
    inc b
    ld [hl], a
    call z, Call_006_4cf7
    sbc $6d
    rst $38
    ld h, c
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    rst $38
    ld [bc], a
    add b
    add b
    add b
    add b
    sbc b
    sbc b
    or h
    xor h
    db $f4
    call z, $88f8
    add sp, $18
    ldh a, [rNR10]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ld c, a
    call nz, $c24f
    ld b, a
    pop bc
    ld b, e
    rst $00
    ld b, a
    jp $ff46


    ld a, a
    rst $38
    nop
    ld b, b
    rra
    ld h, c
    ld l, a
    ld b, e
    sbc a
    adc a
    rst $38
    ld [hl], a
    db $fc
    ld a, [hl+]
    ld a, l
    rst $38
    rst $38
    rst $38
    nop
    dec de
    ld a, [$fa3b]
    ei
    ld a, [$faf3]
    jp $83f2


    jp nz, $feff

    rst $38
    nop
    bit 3, [hl]
    sub $5f
    ret


    ld e, a
    pop bc
    ld b, c
    ret nz

    ld b, c
    ret nz

    ld b, b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    cp $39
    rst $28
    add hl, sp
    ld d, l
    sub e
    cp $83
    cp d
    add $ff
    rst $38
    rst $38
    nop
    and e
    ld a, [c]
    db $d3
    ld a, [c]
    inc hl
    ld a, [c]
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    cp $ff
    nop
    jp z, $c65a

    ld c, a
    pop bc
    ld b, e
    pop bc
    ld b, c
    pop bc
    ld b, a
    push bc
    ld c, h
    rst $38
    ld a, a
    rst $38
    nop
    rst $30
    inc b
    rst $38
    nop
    ld l, $89
    set 4, e
    dec a
    ld a, a
    rst $30
    sbc d
    rst $38
    rst $38
    rst $38
    nop
    db $d3
    ld [hl], d
    ld h, e
    ld [hl], d
    add e

jr_006_5775:
    add d
    inc bc
    add d
    inc bc
    add d
    add e
    jp nz, $feff

    rst $38
    nop
    pop de
    ld h, a
    ldh [$7f], a
    reti


    ld a, a
    add $4f
    ret nz

    ld b, b
    ret nz

    ld b, c
    rst $38
    ld a, a
    rst $38
    nop
    ld c, [hl]
    ld bc, $83bb
    ld b, l
    rst $28
    rst $38
    rst $38
    db $76
    ld e, b
    xor c
    ei
    rst $38
    rst $38
    rst $38
    nop
    jp Jump_000_03fe


    cp $4f
    cp $f3
    ld a, [$c283]
    ld b, e
    jp nz, $feff

    rst $38
    nop
    dec b
    ld b, $03

jr_006_57b3:
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp l
    jp Jump_006_7e7e


    nop
    nop
    nop
    nop
    ret nc

    jr nc, jr_006_57b3

    jr nz, jr_006_5775

    ld h, b
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    rra
    rst $38
    ccf
    ldh [$3d], a
    db $fc
    ld a, [bc]
    ld hl, sp-$0b
    pop af
    ld l, e
    inc bc
    rst $38
    nop
    rst $38
    cp $c3
    cp $c3
    ld a, [hl]
    jp $c37e


    ld a, [hl]
    jp $c37e


    ld a, [hl]
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    jp $ff7e


    nop
    rst $38
    rst $38
    rrca
    rst $38
    ld d, $f0
    cpl
    ldh [$3f], a
    and $3f
    and $af
    ldh [rIE], a
    nop
    rst $38
    cp $03
    cp $83
    cp $43
    ld a, [hl]
    jp $c37e


    ld a, [hl]
    ld b, e
    ld a, [hl]
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    add $ff
    dec hl
    add hl, sp
    rst $28
    add hl, sp
    rst $28
    add hl, sp
    rst $30
    ld sp, $31fd
    rst $38
    nop
    rst $38
    cp $03
    cp $03
    cp $63
    cp $f3
    sbc [hl]
    ld [hl], e
    ld e, $db
    ld e, $ff
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add $7f
    rst $08
    ld a, c
    adc $78
    db $db
    ld a, b
    rst $38
    nop
    rst $38
    rst $38
    ld h, e
    rst $38
    call nc, $f79c
    sbc h
    rst $30
    sbc h
    rst $28
    adc h
    cp a
    adc h
    rst $38
    nop
    rst $38
    cp $03
    cp $83
    cp $83
    cp $83
    cp $83
    cp $83
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    add $c6
    dec hl
    db $ed
    rst $28
    add hl, hl
    rst $28
    add hl, hl
    rst $30
    add hl, sp
    db $fd
    inc sp
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
    ldh a, [$90]
    ld [hl], b
    sub b
    ret c

    jr c, jr_006_58e1

jr_006_58e1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, $c37e

    ld a, [hl]
    jp $c27e


    ld a, [hl]
    pop bc
    ld a, a
    jp nz, $cf7f

    ld a, l
    rst $18
    ld [hl], b
    push af
    rlca
    db $fd
    ld h, a
    db $fc
    ld h, a
    db $f4
    rlca
    ld l, b
    rrca
    ldh a, [rIE]
    db $10
    rst $38
    cp a
    rst $28
    jp $837e


    cp $03
    cp $03
    cp $03
    cp $03
    cp $fb
    cp $f7
    ld c, $c1
    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    jp nz, $c37e

    ld a, [hl]
    rst $00
    ld a, a
    rst $08
    ld a, l
    rst $18
    ld [hl], b
    sub $40
    rst $28
    adc a
    ld [hl], b
    rra
    cp b
    cpl
    ld e, h
    ld [hl], a
    adc b
    rst $38
    ld de, $bbff
    xor $83
    cp $03
    cp $03
    cp $03
    cp $03
    cp $83
    cp $d3
    ld a, [hl]
    ei
    ld l, $c1
    ld a, a
    pop bc
    ld a, a
    reti


    ld a, a
    db $ed
    ld h, a
    rst $38
    ld h, e
    reti


    ld a, c
    rst $38
    ld h, l
    rst $38
    db $76
    xor $22
    rst $28
    ld [hl+], a
    ld a, e
    ld [hl-], a
    rst $38
    add [hl]
    rst $38
    nop
    ld [hl], l
    dec b
    xor a
    xor d
    rst $38
    ld e, d
    rst $38
    ld [hl], $bf
    ld h, $d7
    ld b, [hl]
    ld a, e
    ld c, [hl]
    db $eb
    adc $5b
    ld e, $f7
    and $6f
    ld [hl], $ff
    ld l, h
    db $fd
    ld h, h
    db $eb
    ld h, d
    sbc $72
    rst $10
    ld [hl], e
    rst $08
    ld a, a
    rst $08
    ld a, b
    rst $00
    ld a, [hl]
    ld [hl], a
    ld b, h
    rst $30
    ld b, h
    sbc $4c
    rst $38
    ld h, c
    rst $38
    nop
    ld a, e
    inc bc
    or $84
    xor e
    xor b
    add e
    cp $83
    cp $9b
    cp $b7
    and $df
    add $eb
    xor [hl]
    rst $38
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld bc, $0101
    ld bc, $1919
    dec l
    dec [hl]
    cpl
    inc sp
    rra
    ld de, $1817
    rrca

jr_006_59bf:
    ld [$33ee], sp
    rst $28
    ld [hl-], a
    ld a, e
    or [hl]
    rst $38
    add [hl]
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    rst $38
    ld b, b
    db $fc
    inc [hl]
    cp h
    ld h, h
    call nc, Call_006_786c
    ret z

    add sp, -$28
    ldh a, [rNR10]
    ret nc

    jr nc, jr_006_59bf

    jr nz, jr_006_59e1

jr_006_59e1:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, l
    rst $28
    ld h, b
    rst $38
    ld l, l
    ei
    ld l, l
    rst $28
    ld h, d
    rst $18
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $30
    ld h, c
    sbc $c7
    cp $57
    ei
    ld e, c
    ld e, l
    ld b, c
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $28
    and $1b
    cp $9b
    cp $ef
    ld h, [hl]
    ld [hl], a
    ld b, $fb
    cp $ff
    cp $ff
    nop
    rst $18
    ld a, l
    rst $28
    ld h, b
    rst $38
    ld l, l
    ei
    ld l, l
    rst $28
    ld h, d
    rst $18
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    reti


    ld c, a
    db $eb
    sbc $f7
    ld b, [hl]
    rst $38
    ld d, l
    ld [hl], l
    ld d, c
    xor [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    db $76
    ld a, e
    ld l, [hl]
    ei
    adc [hl]
    rst $38
    ld h, [hl]
    ld l, e
    ld c, $f3
    cp $ff
    cp $ff
    nop
    db $db
    ld c, [hl]
    rst $30
    ld e, [hl]
    rst $30
    ld e, [hl]
    xor $4c
    db $dd
    ld b, c
    cp $7f
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    adc a
    cp a
    sbc c
    rst $18
    cp a
    cp $b7
    rst $30
    or c
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $76
    rst $18
    db $76
    ld l, a
    ld h, $f7
    and $6b
    adc $33
    cp $ff
    cp $ff
    nop
    rst $08
    ld a, [hl]
    rst $10
    ld [hl], b
    rst $18
    db $76
    db $dd
    ld [hl], h
    sub $70
    rst $08
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    jp c, $14b6

    rst $38
    rst $08
    or a
    sub l
    db $dd
    cp h
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp e
    ld a, $e3
    cp [hl]
    and e
    ld a, $c3
    cp $e3
    ld a, $c3
    cp $ff
    cp $ff
    nop
    dec bc
    inc c
    rlca
    inc b
    dec b
    ld b, $02
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp l
    jp Jump_006_7e7e


    nop
    nop
    nop
    nop
    and b
    ld h, b
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld a, h
    ld [c], a
    ld a, a
    adc e
    ld hl, $218b
    rst $38
    inc hl
    rst $18
    ld a, a
    adc e
    ld hl, $229e
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    ccf
    ld c, d
    rst $38
    ld l, e
    rst $38
    jr nz, jr_006_5b17

jr_006_5b17:
    nop
    rra
    ld e, [hl]
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop
    ld a, $01
    ldh [rVBK], a
    ld hl, $52f0
    ld de, $8800
    ld c, $80
    call Call_000_2096
    ld hl, $5b00
    ld de, $0404
    call Call_000_0595
    ret


    push af
    push bc
    push de
    push hl
    push af
    push bc
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add l
    ld l, a
    jr nc, jr_006_5b4a

    inc h

jr_006_5b4a:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $80
    add l
    ld l, a
    ld a, h
    adc $5b
    ld h, a
    ld c, $09
    call Call_000_0468
    pop bc
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $00
    add l
    ld l, a
    ld a, h
    adc $60
    ld h, a
    ld d, b
    ld e, $01
    call Call_000_056c
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
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
    nop
    rst $38
    ld a, a
    ret nz

    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, e
    jp nz, $c443

    ld b, a
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    ldh [$f0], a
    ldh a, [$fc]
    cp $f3
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rst $38
    nop
    rst $38
    cp $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    add d
    add e
    jp nz, $e243

    push bc
    ld b, a
    rst $00
    ld b, a
    call nz, $c747
    ld b, a
    push bc
    ld b, l
    push bc
    ld c, h
    ret


    ld c, l
    ret z

    ld c, a
    ld hl, sp-$01
    cp [hl]
    rst $38
    and c
    rst $38
    jr @+$01

    xor h
    rst $28
    cp h
    rst $20
    inc l
    rst $28
    add b
    ei
    inc hl
    ld [c], a
    inc hl
    ld a, [c]
    inc de
    ld a, [c]
    sub e
    ld a, [c]
    db $d3
    ld a, [c]
    db $d3
    ld a, [c]
    or e
    ld a, [$fa5b]
    ret z

    ld c, a
    call nz, $c24f
    ld b, a
    pop bc
    ld b, e
    rst $00
    ld b, a
    jp nz, $ff46

    ld a, a
    rst $38
    nop
    nop
    rst $38
    ld h, c
    rst $38
    inc bc
    rst $38
    adc a
    rst $38
    ld [hl], l
    db $fd
    xor d
    ld a, b
    rst $38
    rst $38
    rst $38
    nop
    dec de
    ld a, [$fa3b]
    di
    ld a, [$f2c3]
    add e
    jp nz, $c283

    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nc

    ld a, b
    ld sp, hl
    ld l, a
    add $4f
    jp nz, $ff77

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, h
    cp $93
    rst $00
    nop
    rst $38
    ld a, e
    rst $38
    rst $38
    nop
    rst $38
    cp $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc hl
    ld [hl], d
    rst $18
    sbc $83
    cp $43
    cp $c2
    ld a, a
    push bc
    ld a, a
    jp z, $fb7e

    ld a, [hl]
    adc $5e
    rst $10
    ld e, d
    rst $18
    ld d, h
    rst $10
    ld d, b
    and h
    adc h
    ld e, $c1
    rst $38
    nop
    ld e, l
    ld b, c
    cp [hl]
    and d
    ld a, a
    db $e3
    dec a
    ld hl, $63ff
    and a
    cp $67
    cp $e7
    ld a, [hl]
    dec sp
    ld a, [hl]
    db $e3
    and d
    inc hl
    or d
    inc de
    ld d, d
    di
    ld d, d
    jp z, $c65a

    ld c, a
    pop bc
    ld b, e
    ret nz

    ld b, c
    pop bc
    ld b, a
    push bc
    ld c, h
    rst $38
    ld a, a
    rst $38
    nop
    rst $30
    inc b
    rst $38
    nop
    ld l, $89
    set 4, e
    dec a
    ld a, a
    rst $30
    sbc d
    rst $38
    rst $38
    rst $38
    nop
    db $d3
    ld [hl], d
    ld h, e
    ld [hl], d
    add e
    add d
    inc bc
    add d
    inc bc
    add d
    add e
    jp nz, $feff

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    jp nz, $c447

    ld b, [hl]
    push bc
    ld b, h
    push bc
    ld b, a
    add $4f
    ret


    ld e, h
    rst $38
    nop
    rst $38
    rst $38
    ld [hl], e
    rlca
    db $fc
    ld bc, $00ff
    db $fc
    cp $03
    ld a, a
    cp $00
    rst $38
    nop
    rst $38
    cp $43
    ld [c], a
    and e
    ld a, [c]
    ld d, e
    ld [hl], d
    di
    ld a, d
    db $eb
    jp c, $ea4b

    db $d3
    ld e, a
    sbc $5f
    push bc
    ld b, l
    add $46
    push bc
    ld c, [hl]
    bit 5, [hl]
    ld [$d27e], a
    ld e, e
    db $fc
    rst $38
    ld [hl], a
    rlca
    ld l, e
    adc d
    or $8b
    cp a
    add e
    ld e, c
    ld b, b
    rst $38
    nop
    rst $28
    jr nc, @-$53

    ld a, [$fa1b]
    adc e
    ld a, [$7e6b]
    rst $10
    ld a, $97
    ld e, [hl]
    db $d3
    ld a, $23
    ld a, [hl]
    pop de
    ld h, a
    ldh [$7f], a
    reti


    ld a, a
    add $4f
    ret nz

    ld b, b
    ret nz

    ld b, c
    rst $38
    ld a, a
    rst $38
    nop
    ld c, [hl]
    ld bc, $83bb
    ld b, l
    rst $28
    rst $38
    rst $38
    db $76
    ld e, b
    xor c
    ei
    rst $38
    rst $38
    rst $38
    nop
    jp Jump_000_03fe


    cp $4f
    cp $f3
    ld a, [$c283]
    ld b, e
    jp nz, $feff

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld b, b
    pop bc
    ld b, e
    jp nz, $c243

    ld b, a
    push bc
    ld b, a
    add $46
    rst $38
    nop
    rst $38
    rst $38

jr_006_5d44:
    ld a, h
    cp $a3
    rst $08
    nop
    rst $08
    add $ff
    ld a, l
    add hl, sp
    cp $00
    rst $38
    nop
    rst $38
    cp $03
    ld [bc], a

jr_006_5d56:
    inc bc
    add d
    add e
    add d
    add e
    jp nz, $c243

    jp $c7c2


    ld b, [hl]
    push bc
    ld b, [hl]
    rst $00
    ld b, a
    rst $08
    ld e, a
    rst $10
    ld d, a
    call c, $db55
    ld d, h
    push de
    ld e, d
    add hl, sp
    add $ff
    nop
    rst $28
    rst $38
    rst $38
    ld a, l
    ld l, l
    ld a, l
    sub $ff
    rst $38
    jr z, jr_006_5d56

    jr c, jr_006_5d44

    jp nz, $c243

    jp $e3c2


    ld a, [c]
    db $d3
    jp nc, $5273

    or e
    ld d, d
    ld d, e
    or d
    bit 3, [hl]
    sub $5f
    ret


    ld e, a
    pop bc
    ld b, c
    ret nz

    ld b, c
    ret nz

    ld b, b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    cp $39
    rst $28
    add hl, sp
    ld d, l
    sub e
    cp $83
    cp d
    add $ff
    rst $38
    rst $38
    nop
    and e
    ld a, [c]
    db $d3
    ld a, [c]
    inc hl
    ld a, [c]
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    rra
    rst $38
    ccf
    ldh [$3d], a
    db $fc
    ld a, [bc]
    ld hl, sp-$0b
    pop af
    ld l, e
    inc bc
    rst $38
    nop
    rst $38
    cp $c3
    cp $c3
    ld a, [hl]
    jp $c37e


    ld a, [hl]
    jp $c37e


    ld a, [hl]
    jp nz, $c37e

    ld a, [hl]
    jp $c27e


    ld a, [hl]
    pop bc
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    push af
    rlca
    db $fd
    ld h, a
    db $fc
    ld h, a
    db $f4
    rlca
    ld l, b
    rrca
    ldh a, [rIE]
    ld [bc], a
    rst $38
    rlca
    db $fd
    jp $837e


    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $df
    ld a, a
    db $dd
    ld [hl], b
    rst $18
    ld [hl], l
    rst $18
    ld [hl], l
    rst $18
    ld [hl], l
    rst $18
    ld [hl], l
    rst $38
    ld a, a
    rst $38
    nop
    cp a
    db $fd
    ld [hl], a
    ld b, l
    rst $38
    ld [hl], l
    rst $18
    ld b, l
    rst $38
    ld d, l
    rst $10
    ld b, l
    rst $38
    rst $38
    rst $38
    nop
    db $e3
    cp $53
    ld e, $f3
    ld e, [hl]
    di
    ld e, $f3
    ld a, [hl]
    ld [hl], e
    ld e, $ff
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    jp $ff7e


    nop
    rst $38
    rst $38
    rrca
    rst $38
    ld d, $f0
    cpl
    ldh [$3f], a
    and $3f
    and $af
    ldh [rIE], a
    nop
    rst $38
    cp $03
    cp $83
    cp $43
    ld a, [hl]
    jp $c37e


    ld a, [hl]
    ld b, e
    ld a, [hl]
    pop bc
    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    jp nz, $c37e

    ld a, [hl]
    pop bc
    ld a, a
    ret nz

    ld a, a
    ldh a, [$7f]
    sub $40
    rst $28
    adc a
    ld [hl], b
    rra
    cp b
    cpl
    ld e, h
    ld [hl], a
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $23
    cp $73
    sbc $de
    ld c, a
    ld [hl], l
    ld d, c
    rst $38
    add l
    ld a, a
    ld d, c
    rst $38
    ld d, a
    rst $30
    ld d, c
    rst $38
    ld a, a
    rst $38
    nop
    ei
    rst $38
    push de
    inc b
    rst $38
    ld d, a
    db $fd
    ld d, h
    rst $38
    ld d, l
    db $fd
    ld d, h
    rst $38
    rst $38
    rst $38
    nop
    cp $de
    ld [hl], l
    ld d, c
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    ld d, a
    ld [hl], a
    ld d, c
    cp $fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    add $ff
    add hl, hl
    db $fd
    xor e
    add hl, sp
    rst $28
    add hl, sp
    push af
    add hl, sp
    push af
    inc sp
    rst $38
    nop
    rst $38
    cp $03
    cp $03
    cp $63
    cp $b3
    sbc [hl]
    ld d, e
    sbc [hl]
    ld e, e
    ld a, $c1
    ld a, a
    pop bc
    ld a, a
    reti


    ld a, a
    push hl
    ld [hl], a
    db $eb
    ld [hl], e
    push de
    ld [hl], c
    jp nc, $cf7a

    ld a, l
    xor $33
    ld l, d
    ld [hl-], a
    ld a, e
    or [hl]
    rst $30
    add [hl]
    ld a, [hl]
    nop
    ld a, a
    add b
    cp a
    ret nz

    ld c, l
    ld c, h
    or a
    ld [hl], $af
    ld h, [hl]
    ld d, a
    ld l, [hl]
    ld c, e
    adc $eb
    sbc $d3
    ld e, $d3
    ld a, $a3
    ld a, $cf
    ld a, l
    rst $00
    ld a, l
    rst $00
    ld a, l
    rst $00
    ld a, l
    rst $00
    ld a, l
    rst $00
    ld a, l
    rst $38
    ld a, a
    rst $38
    nop
    rst $30
    di
    ld e, a
    ld d, $ff
    ld b, b
    rst $38
    ld d, $ff
    db $76
    ld a, a
    ld d, $ff
    rst $38
    rst $38
    nop
    inc hl
    ld a, [hl]
    jp $c3fe


    ld a, [hl]
    add e
    cp $83
    cp $83
    cp $ff
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add $7f
    call $ca79
    ld a, c
    jp c, $ff7c

    nop
    rst $38
    rst $38
    ld h, e
    rst $38
    call nc, $d5bf
    sbc h
    rst $30
    sbc h
    xor a
    sbc h
    xor a
    call z, Call_000_00ff
    rst $38
    cp $03
    cp $83
    cp $83
    cp $83
    cp $83
    cp $83
    cp $ed
    ld l, h
    push hl
    ld h, [hl]
    ld [$d276], a
    ld [hl], e
    rst $10
    ld a, e
    bit 7, b
    bit 7, h
    push bc
    ld a, h
    ld [hl], a
    call z, Call_006_4c56
    sbc $6d
    rst $28
    ld h, c
    ld a, [hl]
    nop
    cp $03
    rst $38
    dec b
    rst $38
    dec b
    add e
    cp $83
    cp $9b
    cp $a7
    xor $c7
    adc $bb
    adc [hl]
    ld l, e
    ld e, $d3
    ld e, $de
    ld a, [hl]
    rst $18
    ld [hl], l
    rst $18
    ld [hl], e
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    db $dd
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    nop
    cp a
    cp l
    rst $10
    ld b, h
    rst $38
    ld d, l
    rst $18
    ld b, l
    rst $38
    ld [hl], l
    rst $30
    ld b, l
    rst $38
    rst $38
    rst $38
    nop
    db $d3
    cp [hl]
    ld a, e
    ld l, [hl]
    rst $38
    ld b, [hl]
    ei
    ld l, [hl]
    ei
    ld l, [hl]
    ei
    ld l, [hl]
    rst $38
    cp $ff
    nop

    db $3f, $4a, $ff, $6b, $df, $18, $00, $00

    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000

    db $9e, $22, $ff, $6b, $1f, $02, $00, $00, $1f, $5e, $ff, $6b, $d8, $7c, $00, $00
    db $3f, $4a, $ff, $6b, $ff, $20, $00, $00, $1f, $5e, $ff, $6b, $d8, $7c, $00, $00
    db $3f, $4a, $ff, $6b, $ff, $20, $00, $00

    push af
    push bc
    push de
    push hl
    push de
    ld d, $00
    dec a
    dec a
    dec a
    ld e, a
    ld a, c
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    add hl, de
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    add hl, de
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    pop hl
    ld a, b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    call Call_006_60e6
    ld a, $1f
    ld hl, $66f6
    call Call_000_23e8
    ld a, $1e
    ld hl, $6a4e
    call Call_000_23e8
    call Call_006_6914
    call Call_006_6d9a
    ld a, $1b
    ld hl, $6e4d
    call Call_000_23e8
    call Call_006_6ade
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $1d
    ld hl, $65d9
    call Call_000_23e8
    ld a, $1c
    ld hl, $6617
    call Call_000_23e8

jr_006_60ad:
    call Call_000_2e3b
    call Call_006_6778
    cp $ff
    jr z, jr_006_60bd

    cp $fe
    jr nz, jr_006_60bd

    jr jr_006_60ad

jr_006_60bd:
    push af
    ld hl, $66f6
    call Call_000_2449
    ld hl, $65d9
    call Call_000_2449
    ld hl, $6a4e
    call Call_000_2449
    ld hl, $6617
    call Call_000_2449
    ld hl, $6e4d
    call Call_000_2449
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


Call_006_60e6:
    push bc
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, l
    ld [$d216], a
    ld a, h
    ld [$d217], a
    xor a
    ldh [$8a], a
    ldh [$8b], a
    call Call_000_0341
    call Call_000_23b6
    call Call_006_68f8
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c3e
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $a200
    ld c, $06
    call Call_000_04db
    ld hl, $4c40
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $a260
    ld c, $06
    call Call_000_04db
    ld hl, $6255
    ld de, $0a01
    call Call_000_0595
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d218
    xor a
    ld c, $08

jr_006_6146:
    ld [hl+], a
    dec c
    jr nz, jr_006_6146

    ld hl, $d218
    push hl
    ld hl, $6255
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    push hl
    ld hl, $6255
    ld de, $0002
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    push hl
    ld hl, $6255
    ld de, $0004
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    or a
    jr nz, jr_006_6187

    ld hl, $4c3a
    jr jr_006_618a

jr_006_6187:
    ld hl, $4c3c

jr_006_618a:
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $8e00
    ld c, $14
    call Call_000_04db
    ld hl, $624d
    ld de, $0801
    call Call_000_0595
    ld hl, $4c42
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_0468
    call Call_006_6347
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $4c48
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $a8b0
    ld c, $06
    call Call_000_04db
    ld hl, $625d
    ld de, $0008
    call Call_000_0595
    ld hl, $4c44
    ld de, $d000
    call Call_000_0234
    call Call_006_63f1
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $4c46
    ld de, $d200
    call Call_000_0234
    call Call_006_6396
    ld hl, $d200
    ld de, $9800
    ld c, $24
    call Call_000_04db
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c4a
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $a920
    ld c, $0c
    call Call_000_04db
    ld hl, $629d
    ld de, $0901
    call Call_000_0595
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d220
    ld [hl], $1f
    ld hl, $d221
    ld [hl], $1f
    ld hl, $d222
    ld [hl], $00
    call Call_000_0371
    ret


    db $80, $7d, $1f, $68, $4c, $68, $00, $00, $08, $25, $ff, $03, $ff, $6b, $00, $00
    db $d6, $00, $ff, $6b, $58, $1e, $00, $00, $de, $7b, $8e, $7f, $80, $7e, $80, $7d
    db $f8, $03, $44, $03, $00, $02, $40, $01, $78, $3a, $ff, $6b, $80, $12, $00, $00
    db $9e, $22, $ff, $6b, $7e, $21, $00, $00, $7f, $32, $ff, $6b, $9f, $01, $00, $00
    db $3f, $4a, $ff, $6b, $ff, $20, $00, $00, $1f, $5e, $ff, $6b, $d8, $7c, $00, $00
    db $ff, $7f, $7b, $3c, $15, $18, $00, $00

Call_006_62a5:
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld c, a
    call Call_006_64f8
    ld c, $00

jr_006_62b8:
    call Call_006_62cf
    call Call_000_2e3b
    inc c
    ld a, c
    cp $03
    jr nz, jr_006_62b8

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_006_62cf:
    push bc
    ld a, c
    add a
    ld hl, $6323
    add l
    ld l, a
    jr nc, jr_006_62da

    inc h

jr_006_62da:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d20a
    ld a, [$d214]
    add l
    ld l, a
    jr nc, jr_006_62f0

    inc h

jr_006_62f0:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld hl, $6465
    add l
    ld l, a
    jr nc, jr_006_62fc

    inc h

jr_006_62fc:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, l
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00

jr_006_6308:
    ld hl, $d000
    add hl, de
    ld [hl], c
    ld hl, $d300
    add hl, de
    ld [hl], b
    inc a
    inc b
    inc de
    cp $03
    jr nz, jr_006_6308

    ld a, b
    pop bc
    ld b, a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $c1, $01, $e1, $01, $01, $02

Call_006_6329:
    push hl
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    ld hl, $d9e0
    ld de, $0000

jr_006_6338:
    add hl, de
    ld de, $0090
    cp c
    inc a
    jr c, jr_006_6338

    ld d, h
    ld e, l
    pop hl
    call Call_000_0234
    ret


Call_006_6347:
    ld c, $00

jr_006_6349:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d20a
    ld a, c
    add l
    ld l, a
    jr nc, jr_006_6358

    inc h

jr_006_6358:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    cp $ff
    jr z, jr_006_6371

    and $0f
    add a
    ld hl, $637e
    add l
    ld l, a
    jr nc, jr_006_636b

    inc h

jr_006_636b:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_006_6329

jr_006_6371:
    inc c
    ld a, c
    cp $0a
    jr nz, jr_006_6349

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld e, $4c
    jr nz, jr_006_63ce

    ld [hl+], a
    ld c, h

    db $24, $4c, $26, $4c

    jr z, jr_006_63d6

    ld a, [hl+]
    ld c, h
    inc l
    ld c, h

    db $2e, $4c, $30, $4c

    inc [hl]
    ld c, h

    db $32, $4c

Call_006_6396:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00

jr_006_639e:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d20a
    ld a, c
    add l
    ld l, a
    jr nc, jr_006_63ad

    inc h

jr_006_63ad:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    cp $ff
    jr z, jr_006_63be

    call Call_006_64f8
    call Call_006_6503
    call Call_006_63cb

jr_006_63be:
    inc c
    ld a, c
    cp $0a
    jr nz, jr_006_639e

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_006_63cb:
    push af
    push bc
    push de

jr_006_63ce:
    push hl
    push hl
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a

jr_006_63d6:
    ld c, $00

jr_006_63d8:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d200
    add hl, de
    ld [hl], b
    pop hl
    inc hl
    inc hl
    push hl
    inc b
    inc c
    ld a, c
    cp $09
    jr nz, jr_006_63d8

    pop hl
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_006_63f1:
    ld c, $00

jr_006_63f3:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d20a
    ld a, c
    add l
    ld l, a
    jr nc, jr_006_6402

    inc h

jr_006_6402:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    cp $ff
    jr z, jr_006_6415

    call Call_006_6503
    push hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_006_6422

jr_006_6415:
    inc c
    ld a, c
    cp $0a
    jr nz, jr_006_63f3

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_006_6422:
    push af
    push bc
    push de
    push hl
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_006_697b
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, l
    ld hl, $6465
    add l
    ld l, a
    jr nc, jr_006_643f

    inc h

jr_006_643f:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, l
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    push hl
    ld c, $00

jr_006_644d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    add hl, de
    ld [hl], b
    pop hl
    inc hl
    inc hl
    push hl
    inc c
    ld a, c
    cp $09
    jr nz, jr_006_644d

    pop hl
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld c, $0c
    inc c

    db $0d, $0d, $0e

    inc c
    rrca

    db $0e, $0b, $0d, $0e, $f5

    push bc
    push de
    push hl
    ld a, [$d214]
    ld c, a
    call Call_006_697b
    ld a, l
    add a
    ld hl, $6494
    add l
    ld l, a
    jr nc, jr_006_6486

    inc h

jr_006_6486:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0701
    call Call_000_056c
    pop hl
    pop de
    pop bc
    pop af
    ret


    ret nz

    ld h, h
    ldh [$64], a
    ldh a, [$64]
    ret nc

    ld h, h
    ret nz

    ld h, h
    ret nc

    ld h, h
    ldh [$64], a
    ldh a, [$64]
    ldh [$64], a
    or b
    ld h, h
    ret nz

    ld h, h
    ldh [$64], a
    nop
    nop
    nop
    nop
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld c, d
    rst $38
    ld l, e
    rst $38
    jr nz, jr_006_64e7

jr_006_64e7:
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
    ld e, [hl]
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop

Call_006_64f8:
    push af
    ld a, c
    add a
    add a
    add a
    add c
    add $9e
    ld b, a
    pop af
    ret


Call_006_6503:
    ld a, c
    add a
    ld hl, $6511
    add l
    ld l, a
    jr nc, jr_006_650d

    inc h

jr_006_650d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    db $25, $65, $37, $65, $49, $65, $5b, $65, $6d, $65, $7f, $65

    sub c
    ld h, l
    and e
    ld h, l
    or l
    ld h, l
    rst $00
    ld h, l

    db $a2, $00, $a3, $00, $a4, $00, $c2, $00, $c3, $00, $c4, $00, $e2, $00, $e3, $00
    db $e4, $00, $a5, $00, $a6, $00, $a7, $00, $c5, $00, $c6, $00, $c7, $00, $e5, $00
    db $e6, $00, $e7, $00, $a8, $00, $a9, $00, $aa, $00, $c8, $00, $c9, $00, $ca, $00
    db $e8, $00, $e9, $00, $ea, $00, $ac, $00, $ad, $00, $ae, $00, $cc, $00, $cd, $00
    db $ce, $00, $ec, $00, $ed, $00, $ee, $00, $af, $00, $b0, $00, $b1, $00, $cf, $00
    db $d0, $00, $d1, $00, $ef, $00, $f0, $00, $f1, $00, $22, $01, $23, $01, $24, $01
    db $42, $01, $43, $01, $44, $01, $62, $01, $63, $01, $64, $01

    dec h
    ld bc, $0126
    daa
    ld bc, $0145
    ld b, [hl]
    ld bc, HeaderCartridgeType
    ld h, l
    ld bc, $0166
    ld h, a
    ld bc, $0128
    add hl, hl
    ld bc, $012a
    ld c, b
    ld bc, HeaderRAMSize
    ld c, d
    ld bc, $0168
    ld l, c
    ld bc, $016a
    dec hl
    ld bc, $012c
    dec l
    ld bc, HeaderOldLicenseeCode
    ld c, h
    ld bc, HeaderComplementCheck
    ld l, e
    ld bc, $016c
    ld l, l
    ld bc, $012f
    jr nc, @+$03

    ld sp, $4f01
    ld bc, $0150
    ld d, c
    ld bc, $016f
    ld [hl], b
    ld bc, $0171

    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld hl, $65fe
    ld bc, $0a20
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_006_68b6
    pop hl
    call Call_000_26ea
    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $00, $00, $00, $00, $00, $08, $02, $00, $00, $10, $04, $00, $08, $00, $06, $00
    db $08, $08, $08, $00, $08, $10, $0a, $00, $80

    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d218
    inc hl
    inc hl
    push hl
    ld hl, $d220
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    inc a
    inc a
    and $3f
    pop hl
    ld [hl], a
    ld hl, $66b6
    add l
    ld l, a
    jr nc, jr_006_6640

    inc h

jr_006_6640:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    and $1f
    push af
    ld hl, $d221
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    inc a
    and $3f
    pop hl
    ld [hl], a
    ld hl, $66b6
    add l
    ld l, a
    jr nc, jr_006_665c

    inc h

jr_006_665c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    and $1f
    ld b, a
    ld hl, $d222
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    inc a
    and $3f
    pop hl
    ld [hl], a
    ld hl, $66b6
    add l
    ld l, a
    jr nc, jr_006_6678

    inc h

jr_006_6678:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    and $1f
    ld d, a
    pop af
    pop hl
    push bc
    sla b
    sla b
    sla b
    sla b
    sla b
    add b
    pop bc
    push af
    ld a, b
    sra a
    sra a
    sra a
    and $03
    ld b, a
    ld a, d
    sla a
    sla a
    add b
    pop bc
    ld [hl], b
    inc hl
    ld [hl], a
    ld hl, $d218
    ld de, $0a01
    call Call_000_056c
    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $14, $15, $15, $16, $16, $17, $18, $18, $19, $19, $1a
    db $1a, $19, $19, $18, $18, $17, $17, $16, $16, $15, $15, $14, $14, $13, $12, $11
    db $10, $0f, $0e, $0d, $0c, $0b, $0a, $09, $08, $07, $06, $05, $04, $03, $02, $01

    ldh a, [$8c]
    and $3f
    ld hl, $670f
    add l
    ld l, a
    jr nc, jr_006_6702

    inc h

jr_006_6702:
    ld d, $00
    ld e, [hl]
    ld hl, $674f
    ld bc, $00e0
    call Call_000_26ea
    ret


    db $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00
    db $00, $00, $00, $ff, $ff, $ff, $fe, $fe, $fe, $fd, $fd, $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fe, $fe, $fe, $ff, $ff, $ff, $00, $00
    db $16, $30, $00, $00, $16, $38, $02, $00, $16, $40, $04, $00, $16, $48, $06, $00
    db $16, $50, $08, $00, $16, $58, $0a, $00, $16, $60, $0c, $00, $16, $68, $0e, $00
    db $16, $70, $10, $00, $16, $78, $12, $00, $80

Call_006_6778:
    ld a, [$d214]
    ld [$d215], a
    ldh a, [$91]
    bit 6, a
    jp z, Jump_006_679f

    push af
    ld e, $00
    call Call_006_6839
    ld a, [$d214]
    ld b, a
    ld a, [$d215]
    cp b
    jr z, jr_006_67ba

    call Call_006_6d9a
    call Call_006_6ade
    pop af
    jp Jump_006_67f9


Jump_006_679f:
    bit 5, a
    jp z, Jump_006_67be

    push af
    ld e, $01
    call Call_006_6839
    ld a, [$d214]
    ld b, a
    ld a, [$d215]
    cp b
    jr z, jr_006_67ba

    call Call_006_6d9a
    call Call_006_6ade

jr_006_67ba:
    pop af
    jp Jump_006_67f9


Jump_006_67be:
    bit 7, a
    jp z, Jump_006_67dd

    push af
    ld e, $02
    call Call_006_6839
    ld a, [$d214]
    ld b, a
    ld a, [$d215]
    cp b
    jr z, jr_006_67d9

    call Call_006_6d9a
    call Call_006_6ade

jr_006_67d9:
    pop af
    jp Jump_006_67f9


Jump_006_67dd:
    bit 4, a
    jp z, Jump_006_67f9

    push af
    ld e, $03
    call Call_006_6839
    ld a, [$d214]
    ld b, a
    ld a, [$d215]
    cp b
    jr z, jr_006_67f8

    call Call_006_6d9a
    call Call_006_6ade

jr_006_67f8:
    pop af

Jump_006_67f9:
    bit 0, a
    jr z, jr_006_680f

    bit 2, a
    jr z, jr_006_680b

    ld a, [$d214]
    cp $03
    jr c, jr_006_680b

    call Call_006_6a01

jr_006_680b:
    bit 0, a
    jr jr_006_6815

jr_006_680f:
    bit 1, a
    jr nz, jr_006_6831

    jr jr_006_6836

jr_006_6815:
    rst $08

    db $5c

    ld a, [$d214]
    ld hl, $d20a
    add l
    ld l, a
    jr nc, jr_006_6822

    inc h

jr_006_6822:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    cp $ff
    jr z, jr_006_6836

    ld a, [$d214]
    ld [$cabe], a
    ret


jr_006_6831:
    rst $08

    db $5d

    ld a, $ff
    ret


jr_006_6836:
    ld a, $fe
    ret


Call_006_6839:
    rst $08

    db $5b

    ld a, e
    cp $01
    jr jr_006_684c

    cp $02
    jr jr_006_6850

    cp $03
    jr jr_006_6854

    ld c, $02
    jr jr_006_6856

jr_006_684c:
    ld c, $0a
    jr jr_006_6856

jr_006_6850:
    ld c, $02
    jr jr_006_6856

jr_006_6854:
    ld c, $0a

jr_006_6856:
    ld hl, $d214
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, l
    ld d, l

jr_006_685e:
    ld a, e
    cp $01
    jr z, jr_006_6879

    cp $02
    jr z, jr_006_6885

    cp $03
    jr z, jr_006_6891

    ld c, $02
    ld a, d
    add $fb
    cp $fb
    jr c, jr_006_689d

    ld a, d
    add $05
    jr jr_006_689d

jr_006_6879:
    ld a, d
    dec a
    cp $ff
    jr z, jr_006_6881

    jr jr_006_689d

jr_006_6881:
    ld a, $09
    jr jr_006_689d

jr_006_6885:
    ld a, d
    add $05
    cp $0a
    jr c, jr_006_689d

    ld a, d
    add $fb
    jr jr_006_689d

jr_006_6891:
    ld a, d
    inc a
    cp $0a
    jr z, jr_006_6899

    jr jr_006_689d

jr_006_6899:
    ld a, $00
    jr jr_006_689d

jr_006_689d:
    ld d, a
    ld hl, $d20a
    add l
    ld l, a
    jr nc, jr_006_68a6

    inc h

jr_006_68a6:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    cp $ff
    ld a, d
    jr nz, jr_006_68b2

    dec c
    jr nz, jr_006_685e

jr_006_68b2:
    ld [$d214], a
    ret


Call_006_68b6:
    ld a, [$d214]
    add a
    add a
    ld hl, $68d0
    add l
    ld l, a
    jr nc, jr_006_68c3

    inc h

jr_006_68c3:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, l
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, l
    ret


    db $18, $00, $38, $00, $30, $00, $38, $00, $48, $00, $38, $00, $68, $00, $38, $00
    db $80, $00, $38, $00, $18, $00, $58, $00

    jr nc, jr_006_68ea

jr_006_68ea:
    ld e, b
    nop
    ld c, b
    nop
    ld e, b
    nop
    ld h, b
    nop
    ld e, b
    nop
    add b
    nop
    ld e, b
    nop

Call_006_68f8:
    ld c, $00

jr_006_68fa:
    call Call_006_697b
    ld b, l
    ld a, c
    ld hl, $d20a
    add l
    ld l, a
    jr nc, jr_006_6907

    inc h

jr_006_6907:
    ld [hl], b
    inc c
    ld a, c
    cp $0a
    jr nz, jr_006_68fa

    ret


    xor a
    ld [$cabe], a
    ret


Call_006_6914:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld a, [$cabe]
    ld b, a
    push de
    push af
    ld a, b
    ld de, $0100
    call Call_000_22a5
    pop af
    pop de

jr_006_692e:
    ld hl, $6971
    ld a, b
    cp $0a
    jr c, jr_006_6938

    sub $0a

jr_006_6938:
    add l
    ld l, a
    jr nc, jr_006_693d

    inc h

jr_006_693d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld hl, $d20a
    add l
    ld l, a
    jr nc, jr_006_6949

    inc h

jr_006_6949:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    cp $ff
    jr nz, jr_006_6958

    inc b
    inc c
    ld a, c
    cp $0a
    jr nz, jr_006_692e

jr_006_6958:
    ld a, b
    ld hl, $6971
    add l
    ld l, a
    jr nc, jr_006_6961

    inc h

jr_006_6961:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$d214], a
    ld [$d215], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $00, $01, $02, $05, $06

    rlca
    ld [$0403], sp
    add hl, bc

Call_006_697b:
    ld hl, $d216
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    ld a, l
    cp $0b
    jr nc, jr_006_6996

    jr jr_006_69a0

jr_006_6996:
    cp $ff
    jr z, jr_006_699e

    ld l, $0b
    jr jr_006_69a0

jr_006_699e:
    ld l, $ff

jr_006_69a0:
    ret


Call_006_69a1:
    ld hl, $d216
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $0002
    add hl, de
    ret


Call_006_69b5:
    ld hl, $d216
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, $00
    ld e, $0d
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    ret


Call_006_69cf:
    ld hl, $d216
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, $00
    ld e, $0e
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld hl, $d216
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, $00
    ld e, $10
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    ret


Call_006_6a01:
    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld c, a
    ld b, $01
    ld hl, $d216
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, $00
    ld e, $10
    add hl, de
    ld a, b
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_006_6a34:
    ld hl, $d216
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, $00
    ld e, $11
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    ret


    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d20a
    ld a, [$d214]
    add l
    ld l, a
    jr nc, jr_006_6a62

    inc h

jr_006_6a62:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    cp $0b
    jr z, jr_006_6a9d

    cp $ff
    jr z, jr_006_6a9d

    ld a, [$d214]
    ld c, a
    call Call_006_6a34
    ld a, l
    or a
    jr z, jr_006_6a8d

    cp $80
    jr nc, jr_006_6a82

    call Call_006_6ac0
    jr jr_006_6a8d

jr_006_6a82:
    and $0f
    xor $0f
    add $01
    call Call_006_6aa3
    jr jr_006_6a8d

jr_006_6a8d:
    ld bc, $0992
    ld d, $84
    ld e, $84
    call Call_000_2798
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


jr_006_6a9d:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_006_6aa3:
    cp $04
    jr c, jr_006_6aa9

    ld a, $04

jr_006_6aa9:
    ld l, a
    ld bc, $299c
    ld d, $7c
    ld e, $84

jr_006_6ab1:
    push af
    push de
    call Call_000_2798
    pop de
    ld a, d
    add $fc
    ld d, a
    pop af
    dec a
    jr nz, jr_006_6ab1

    ret


Call_006_6ac0:
    and $0f
    cp $04
    jr c, jr_006_6ac8

    ld a, $04

jr_006_6ac8:
    ld bc, $099c
    ld d, $8c
    ld e, $84

jr_006_6acf:
    push af
    push de
    call Call_000_2798
    pop de
    ld a, d
    add $04
    ld d, a
    pop af
    dec a
    jr nz, jr_006_6acf

    ret


Call_006_6ade:
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c44
    ld de, $d000
    call Call_000_0234
    ld hl, $4c46
    ld de, $d300
    call Call_000_0234
    ld hl, $4c4e
    ld de, $d600
    call Call_000_0234
    ld hl, $4c4c
    ld de, $d900
    call Call_000_0234
    ld hl, $d600
    ld de, $d1a0
    ld c, $0a
    call Call_000_03eb
    ld hl, $d900
    ld de, $d4a0
    ld c, $0a
    call Call_000_03eb
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d20a
    ld a, [$d214]
    add l
    ld l, a
    jr nc, jr_006_6b32

    inc h

jr_006_6b32:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    cp $0b
    jp z, Jump_006_6cb7

    cp $ff
    jp z, Jump_006_6ce9

    ld a, [$d214]
    ld c, a
    call Call_006_69a1
    push hl
    ld c, $00
    ld b, $00

jr_006_6b4c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    pop hl
    cp $00
    jr z, jr_006_6b98

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld a, b
    ld hl, $d4c5
    add l
    ld l, a
    jr nc, jr_006_6b6c

    inc h

jr_006_6b6c:
    ld a, e
    cp $de
    jr z, jr_006_6b77

    cp $df
    jr z, jr_006_6b7b

    jr jr_006_6b88

jr_006_6b77:
    ld e, $0e
    jr jr_006_6b7d

jr_006_6b7b:
    ld e, $0f

jr_006_6b7d:
    ld a, b
    dec a
    ld hl, $d4a5
    add l
    ld l, a
    jr nc, jr_006_6b87

    inc h

jr_006_6b87:
    dec b

jr_006_6b88:
    ld [hl], e
    pop hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    inc hl
    inc c
    inc b
    ld a, c
    cp $0b
    jr nz, jr_006_6b4c

jr_006_6b98:
    pop hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld c, a
    call Call_006_6a34
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, l
    or a
    jr z, jr_006_6bbe

    bit 7, a
    jr nz, jr_006_6bb9

    ld hl, $d354
    jr jr_006_6bc1

jr_006_6bb9:
    ld hl, $d334
    jr jr_006_6bc1

jr_006_6bbe:
    ld hl, $d314

jr_006_6bc1:
    push hl
    ld de, $d4ee
    ld c, $05

jr_006_6bc7:
    ld a, [hl+]
    push hl
    ld h, d
    ld l, e
    ld [hl], a
    inc de
    pop hl
    dec c
    jr nz, jr_006_6bc7

    pop hl
    ld de, $fd00
    add hl, de
    ld de, $d1ee
    ld c, $05

jr_006_6bdb:
    ld a, [hl+]
    push hl
    ld h, d
    ld l, e
    ld [hl], a
    inc de
    pop hl
    dec c
    jr nz, jr_006_6bdb

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    cp $03
    jr nc, jr_006_6c15

    ld c, a
    call Call_006_69b5
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, l
    cp $0a
    jr c, jr_006_6c08

    ld a, $02
    ld de, $d506
    jr jr_006_6c0d

jr_006_6c08:
    ld a, $01
    ld de, $d507

jr_006_6c0d:
    call Call_000_21f0
    ld hl, $d508
    ld [hl], $20

jr_006_6c15:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld c, a
    call Call_006_69cf
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    or a
    jr nz, jr_006_6c35

    ld a, l
    cp $0a
    jr c, jr_006_6c43

    cp $64
    jr c, jr_006_6c3c

jr_006_6c35:
    ld a, $03
    ld de, $d509
    jr jr_006_6c48

jr_006_6c3c:
    ld a, $02
    ld de, $d50a
    jr jr_006_6c48

jr_006_6c43:
    ld a, $01
    ld de, $d50b

jr_006_6c48:
    call Call_000_21f0
    ld hl, $d50c
    ld [hl], $20
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    cp $03
    jr nc, jr_006_6c73

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d205
    ld [hl], $08
    ld hl, $d505
    ld [hl], $8f

jr_006_6c73:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d20c
    ld [hl], $08
    ld hl, $d20e
    ld [hl], $28
    ld hl, $d20f
    ld [hl], $28
    ld hl, $d210
    ld [hl], $08
    ld hl, $d211
    ld [hl], $08
    ld hl, $d212
    ld [hl], $08
    ld hl, $d50c
    ld [hl], $8e
    ld hl, $d50e
    ld [hl], $8c
    ld hl, $d50f
    ld [hl], $8c
    ld hl, $d510
    ld [hl], $8b
    ld hl, $d511
    ld [hl], $8c
    ld hl, $d512
    ld [hl], $8c
    jr jr_006_6d07

Jump_006_6cb7:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $1a, $03

    ld hl, $10f6
    ld a, $00
    add l
    ld l, a
    jr nc, jr_006_6cca

    inc h

jr_006_6cca:
    ld de, $d4c5
    ld c, $20
    rst $18

    db $22, $05

    ld hl, $10f6
    ld a, $01
    add l
    ld l, a
    jr nc, jr_006_6cdc

    inc h

jr_006_6cdc:
    ld de, $d505
    ld c, $20
    rst $18

    db $22, $05

    rst $18

    db $24, $03

    jr jr_006_6d07

Jump_006_6ce9:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [de]
    inc bc
    ld hl, $10f6
    ld a, $02
    add l
    ld l, a
    jr nc, jr_006_6cfc

    inc h

jr_006_6cfc:
    ld de, $d4e5
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    rst $18
    inc h
    inc bc

jr_006_6d07:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_006_62a5
    call Call_006_6d22
    call Call_000_2e3b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_006_6d22:
    ld hl, $d1a0
    ld de, $b9a0
    ld c, $0a
    call Call_000_0468
    ld hl, $d4a0
    ld de, $99a0
    ld c, $0a
    call Call_000_0468
    ret


jr_006_6d39:
    ld [hl+], a
    dec c
    jr nz, jr_006_6d39

    ret


    call Call_006_60e6
    ld a, $1f
    ld hl, $66f6
    call Call_000_23e8
    ld a, $1e
    ld hl, $6a4e
    call Call_000_23e8
    call Call_006_6914
    call Call_006_6ade
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $1d
    ld hl, $65d9
    call Call_000_23e8
    ld a, $1c
    ld hl, $6617
    call Call_000_23e8

jr_006_6d6f:
    call Call_000_2e3b
    call Call_006_6778
    cp $ff
    jr z, jr_006_6d7f

    cp $fe
    jr nz, jr_006_6d7f

    jr jr_006_6d6f

jr_006_6d7f:
    push af
    ld hl, $66f6
    call Call_000_2449
    ld hl, $65d9
    call Call_000_2449
    ld hl, $6a4e
    call Call_000_2449
    ld hl, $6617
    call Call_000_2449
    pop af
    ret


Call_006_6d9a:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    xor a
    ld [$c4b2], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d20a
    ld a, [$d215]
    push af
    add l
    ld l, a
    jr nc, jr_006_6db7

    inc h

jr_006_6db7:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld hl, $d000
    cp $ff
    jr z, jr_006_6dfe

    ld hl, $6e35
    add a
    add l
    ld l, a
    jr nc, jr_006_6dcb

    inc h

jr_006_6dcb:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d000
    call Call_000_0234
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add l
    ld l, a
    xor a
    adc h
    ld h, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $a9e0
    add hl, de
    ld d, h
    ld e, l
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $09
    call Call_000_0468

jr_006_6dfe:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d20a
    ld a, [$d214]
    add l
    ld l, a
    jr nc, jr_006_6e0f

    inc h

jr_006_6e0f:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    add a
    ld hl, $6e35
    add l
    ld l, a
    jr nc, jr_006_6e1c

    inc h

jr_006_6e1c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d000
    call Call_000_0234
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld [bc], a
    ld c, l
    inc b
    ld c, l
    ld b, $4d

    db $08, $4d, $0a, $4d

    inc c
    ld c, l
    ld c, $4d
    db $10
    ld c, l

    db $14, $4d, $12, $4d

    ld d, $4d

    db $18, $4d

    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, [$c4b2]
    or a
    jp z, Jump_006_6ef0

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add l
    ld l, a
    xor a
    adc h
    ld h, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $a9e0
    add hl, de
    ld d, h
    ld e, l
    push de
    ld a, [$d214]
    ld hl, $d20a
    add l
    ld l, a
    jr nc, jr_006_6e85

    inc h

jr_006_6e85:
    ld a, [hl]
    add a
    add a
    ld hl, $6efe
    add l
    ld l, a
    jr nc, jr_006_6e90

    inc h

jr_006_6e90:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c4b2]
    ld b, a
    ld a, [hl]
    ld c, a
    ld a, b
    cp c
    jr nc, jr_006_6eba

    inc hl
    ld a, [hl]
    ld c, a
    ld a, b
    cp c
    jr nc, jr_006_6eb6

    inc hl
    ld a, [hl]
    ld c, a
    ld a, b
    cp c
    jr nc, jr_006_6eb2

    ld a, $00
    jr jr_006_6ecb

jr_006_6eb2:
    ld a, $01
    jr jr_006_6ecb

jr_006_6eb6:
    ld a, $02
    jr jr_006_6ecb

jr_006_6eba:
    ld a, c
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    add c
    ld c, a
    ld a, b
    cp c
    jr c, jr_006_6ec9

    xor a
    ld [$c4b2], a

jr_006_6ec9:
    ld a, $03

jr_006_6ecb:
    and $03
    ld hl, $6efa
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, $00
    ld e, a
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $d000
    add hl, de
    pop de
    ld c, $09
    call Call_000_0468

Jump_006_6ef0:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $00, $01, $02, $01, $41

    inc hl
    ld e, $05
    ld b, c
    inc hl
    ld e, $05
    ld b, c
    inc hl
    ld e, $05

    db $41, $23, $1e, $05, $41, $23, $1e

    dec b
    ld b, c
    inc hl
    ld e, $05
    ld b, c
    inc hl
    ld e, $05
    ld b, c
    inc hl
    ld e, $05

    db $41, $23, $1e

    dec b

    db $41, $23, $1e

    dec b
    ld b, c
    inc hl
    ld e, $05

    db $32, $23, $1e

    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_006_786c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_006_7e7e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
