; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    db $06, $40

    and [hl]
    ld d, c

    db $ec, $63

    rst $18

    db $28, $0b

    or a
    jr nz, jr_007_4014

    ld hl, $4040
    ld de, $0301
    jr jr_007_401a

jr_007_4014:
    ld hl, $406a
    ld de, $0201

jr_007_401a:
    ld b, $00
    xor a
    ldh [$8a], a
    ldh [$8b], a
    call Call_007_741e
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$cabb]
    call Call_007_7c00
    bit 7, a
    jr nz, jr_007_403f

    ld [$cabb], a

jr_007_403f:
    ret


    sub h
    ld b, b
    add sp, $47
    dec b
    ld b, c
    ld e, c
    ld c, b
    push de
    ld b, c
    dec e
    ld c, c
    or b
    ld b, d
    db $f4
    ld c, c
    adc b
    ld b, e
    bit 1, d
    ld e, c
    ld b, h
    and c
    ld c, e
    inc [hl]
    ld b, l
    ld a, h
    ld c, h
    dec bc
    ld b, [hl]
    ld d, a
    ld c, l
    bit 0, [hl]
    rla

Call_007_4063:
    ld c, [hl]
    ld [hl], d
    ld b, a
    cp [hl]
    ld c, [hl]
    inc [hl]

jr_007_4069:
    ld c, a
    sub h
    ld b, b

    db $e8, $47, $05, $41, $59, $48, $d5, $41, $1d, $49, $b0, $42, $f4, $49, $88, $43
    db $cb, $4a

    or $4f

    db $f6, $4f

    rst $08
    ld d, b

    db $cf, $50

    dec bc
    ld b, [hl]

    db $57, $4d

    bit 0, [hl]

    db $17, $4e

    ld [hl], d
    ld b, a

    db $be, $4e, $34, $4f

    rst $38
    inc c
    di
    ei
    inc b
    call z, Call_000_3733
    ret z

    rst $38
    ldh a, [rIF]
    rra
    ldh [$e1], a
    ld e, $00
    rst $38
    rst $38
    rst $00
    jr c, jr_007_4069

    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld a, b
    add a
    adc a
    ld [hl], b
    di
    inc c

jr_007_40b6:
    nop
    rst $38
    rst $38
    ld a, $c1
    pop bc
    ld a, $7f
    add b
    add b
    ld a, a
    rst $38
    ld a, a
    add b
    ret nz

    ccf
    ccf
    ret nz

    nop
    rst $38
    rst $38
    ccf
    ret nz

    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_007_40db

jr_007_40db:
    rst $38
    ccf
    adc $31
    add hl, sp
    add $c7
    jr c, jr_007_40b6

    pop hl
    cp [hl]
    pop hl
    rst $38
    nop
    rst $38
    rst $20
    jr @+$3a

    rst $00
    adc a
    ld [hl], b
    rst $38
    ld a, b
    add a
    add a
    ld a, b
    ld hl, sp+$07
    rlca
    ld hl, sp+$03
    nop
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop
    nop

    db $ff, $ff, $00, $3c, $c3, $c7, $38, $f9, $06, $ff, $0e, $f1, $f6, $09, $19, $e6
    db $e7, $18, $ff, $ff, $00, $dc, $23, $67, $98, $b8, $47, $ff, $cf, $30, $f6, $09
    db $39, $c6, $cf, $30, $ff, $ff, $00, $70, $8f, $ce, $31, $31, $cf, $ff, $ff, $02
    db $02, $fe, $ff, $02, $8d, $73, $ff, $bb, $7c, $46, $c5, $ce, $85, $99, $0e, $ff
    db $32, $1d, $37, $39, $1f, $0f, $86, $03, $ff, $ff, $00, $c3, $3c, $d8, $3f, $a6
    db $65, $f7, $e6, $e7, $01, $ff, $e0, $e6, $e7, $ff, $00, $ff, $90, $6f, $00, $ff
    db $06, $ff, $5f, $b9, $ff, $b1, $60, $60, $c0, $c0, $80, $ff, $00, $ff, $0c, $f3
    db $06, $ff, $f9, $09, $39, $f9, $ed, $c0, $ff, $e0, $b9, $f9, $a0, $e3, $38, $c7
    db $8f, $7f, $f0, $7a, $7d, $4c, $47, $85, $c7, $a0, $e1, $ff, $cf, $30, $31, $cf
    db $fb, $06, $06, $fc, $ff, $ec, $f8, $99, $10, $ff, $00, $9a, $65, $ff, $76, $89
    db $8d, $f2, $7b, $44, $76, $49, $ef, $59, $66, $b7, $c8, $a0, $e1, $fc, $03, $9b
    db $ff, $64, $6c, $93, $c7, $38, $f8, $07, $0f, $ff, $f0, $ff, $00, $9e, $61, $71
    db $8e, $8f, $ff, $70, $78, $87, $c7, $38, $3c, $c3, $e3, $01, $1c, $00, $00

    nop

    db $ff, $1e, $e1, $f3, $0c, $0f, $f0, $f8, $07, $ff, $87, $78, $7c, $83, $c3, $3c
    db $00, $ff, $ff, $32, $cd, $fd, $02, $03, $fc, $fe, $01, $ff, $01, $fe, $ff, $00
    db $80, $7f, $00, $ff, $ff, $78, $87, $c6, $39, $bf, $40, $60, $9f, $ff, $9b, $67
    db $74, $8c, $cc, $34, $03, $ff, $ff, $c3, $81, $63, $e1, $e6, $43, $cd, $86, $ff
    db $9b, $0c, $36, $19, $2f, $30, $d8, $e7, $ff, $27, $e5, $65, $a7, $e7, $23, $e3
    db $23, $ff, $b3, $61, $d1, $31, $19, $f1, $0e, $ff, $ff, $98, $08, $18, $18, $18
    db $08, $00, $00, $ff, $c0, $80, $70, $e0, $de, $3c, $0b, $f7, $ff, $99, $e9, $e9
    db $99, $c9, $b8, $98, $e8, $ff, $5c, $68, $64, $5c, $46, $7c, $8b, $f7, $ff, $45
    db $c7, $65, $c7, $a7, $e2, $b2, $e2, $ff, $d0, $70, $78, $50, $4d, $78, $87, $ff
    db $ff, $13, $11, $38, $10, $2c, $38, $24, $3c, $ff, $6c, $38, $c9, $78, $8b, $f9
    db $06, $ff, $ff, $cc, $b3, $fb, $44, $47, $78, $78, $47, $ff, $cf, $70, $b8, $c7
    db $07, $f8, $00, $ff, $ff, $f3, $0c, $3c, $c3, $c7, $38, $78, $87, $ff, $8f, $70
    db $f3, $0c, $1c, $e3, $00, $ff, $ff, $1e, $e1, $e1, $1e, $9f, $60, $60, $9f, $ff
    db $df, $20, $b0, $4f, $7f, $80, $00, $ff, $00, $00, $00, $ff, $fd, $03, $9e, $62
    db $62, $9e, $df, $22, $ff, $21, $df, $df, $21, $31, $cf, $cf, $31, $ff, $f7, $f8
    db $1c, $0f, $07, $03, $01, $00, $ff, $18, $10, $1c, $18, $14, $1c, $1c, $18, $ff
    db $ff, $00, $56, $a9, $69, $96, $af, $d0, $ff, $d0, $6f, $6d, $33, $33, $1e, $36
    db $1c, $ff, $9f, $60, $be, $41, $29, $d6, $36, $c9, $ff, $e1, $ff, $b3, $1e, $1e
    db $0c, $0c, $08, $ff, $ff, $00, $7f, $80, $c3, $3f, $d4, $ec, $f7, $bc, $3c, $20
    db $ff, $e0, $dc, $7c, $60, $9f, $ff, $80, $7f, $1f, $e0, $f6, $89, $dd, $e3, $ff
    db $21, $3f, $21, $3f, $ce, $f1, $1c, $ff, $ff, $22, $e3, $66, $c3, $cd, $86, $98
    db $0f, $ff, $18, $1f, $8e, $07, $c3, $81, $b7, $78, $ff, $ee, $49, $49, $ce, $ce
    db $89, $8d, $8e, $ff, $86, $83, $83, $81, $01, $80, $f9, $06, $ff, $55, $aa, $e8
    db $17, $6c, $93, $b3, $4f, $ff, $cf, $3c, $58, $b0, $b0, $e0, $ff, $00, $ff, $ee
    db $11, $ab, $57, $d4, $2c, $5c, $bc, $bf, $a0, $e0, $e0, $60, $5c, $7c, $a0, $e1
    db $44, $ff, $bb, $bb, $c7, $c6, $fc, $2c, $38, $38, $ff, $30, $d3, $e1, $ff, $00
    db $c7, $38, $38, $ff, $c7, $67, $98, $bc, $c3, $c3, $bc, $fe, $07, $81, $41, $be
    db $00, $00

    nop

    db $ff, $3d, $c3, $e3, $1d, $9f, $61, $71, $8f, $ff, $cf, $31, $33, $cd, $ff, $01
    db $00, $ff, $3d, $00, $ff, $e0, $1c, $18, $1c, $1c, $f8, $e1, $f1, $e0, $ff, $ff
    db $6c, $38, $d8, $70, $70, $30, $38, $ff, $30, $28, $38, $6c, $38, $d7, $ee, $01
    db $ff, $ff, $99, $88, $34, $18, $e6, $7c, $ca, $ff, $f6, $6e, $34, $34, $1c, $15
    db $1c, $e3, $ff, $ff, $e4, $dc, $64, $3c, $2c, $34, $3c, $ff, $24, $7e, $24, $ca
    db $76, $b3, $ce, $41, $ff, $bf, $e7, $98, $84, $fb, $f7, $48, $4e, $ff, $71, $61
    db $3f, $36, $2a, $22, $3e, $d1, $ff, $ef, $61, $c0, $b1, $70, $b3, $61, $66, $ff
    db $c3, $cd, $86, $1a, $0d, $11, $1e, $ee, $7f, $f1, $8c, $88, $8c, $8c, $0c, $8c
    db $ff, $e3, $ff, $74, $fc, $13, $ef, $a6, $e0, $e6, $c6, $ff, $c6, $c6, $86, $c4
    db $e0, $40, $71, $60, $df, $5b, $73, $8c, $ff, $6c, $b4, $e0, $34, $2c, $ff, $6c
    db $34, $5e, $64, $a2, $de, $1f, $e2, $ff, $01, $ff, $a7, $e3, $b1, $e0, $d8, $70
    db $ff, $48, $78, $79, $30, $33, $31, $36, $33, $ff, $cc, $ff, $7f, $80, $8c, $f3
    db $f3, $8c, $ff, $9e, $e1, $e1, $9e, $7f, $80, $9c, $63, $03, $00, $ff, $00, $00

    nop
    rst $38
    sbc $3f
    db $e3
    ld hl, $e031
    ret nc

    jr nc, @+$01

    sub b
    ld [hl], b
    ld [hl], c
    sub b
    pop de
    ld sp, $d131
    rst $38
    rst $30
    rrca
    jr c, @-$36

    adc b
    ld hl, sp+$58
    ld l, b
    rst $38
    ld l, b
    jr c, jr_007_44b0

    jr @-$66

    ld [$8088], sp
    rst $38
    ld [hl], a
    adc a
    xor l
    ret c

    sbc e
    pop af
    jp nc, $ffb3

    or d
    db $e3
    and e
    pop hl
    pop hl
    ret nz

jr_007_448d:
    ret nz

    ret nz

    rst $38
    ld h, e
    sbc a
    db $f4
    adc h
    ld b, h
    cp h
    inc a
    ret z

    rst $38

jr_007_4499:
    adc b
    ld a, b
    jr jr_007_448d

    jp nc, $b6b2

    ld [c], a
    rst $38
    jp c, Jump_000_3ae5

jr_007_44a5:
    dec h
    ld [hl-], a
    dec l
    ld a, [hl-]
    dec h
    rst $38
    ld a, [hl-]
    dec h
    add hl, sp
    ld h, $21

jr_007_44b0:
    ld a, $26
    add hl, sp
    rst $38
    rst $00
    ccf
    adc b
    ld a, b
    sbc c
    ld [hl], b
    or e
    ld h, c
    rst $38
    ld h, [hl]
    jp $c746


    ld h, e
    pop bc
    jr nc, jr_007_44a5

    rst $38
    ld d, e
    xor h
    ret nz

    cp a
    adc e
    rst $30
    inc c
    db $f4
    rst $38
    inc e
    db $fc
    ldh [rNR41], a
    ldh [$e0], a
    call c, $ff7c
    ld e, [hl]
    and c
    ld e, b
    and a
    ld d, c
    xor [hl]
    jp c, $ffa5

    db $db
    rst $20
    ld [hl], $2c
    inc l
    jr c, @-$26

    ldh a, [rIE]
    rst $20
    jr jr_007_4499

    ld d, e
    adc [hl]

Call_007_44ef:
    ld [hl], c
    ret


    rst $30
    rst $38
    rst $20
    ccf
    jr c, jr_007_450f

    jr jr_007_4511

    rla
    rra
    rst $38
    rra
    ldh [$9b], a
    ld h, h
    call z, Call_000_2ff3
    jr nc, @+$01

    jr nc, jr_007_4546

    rrca
    rrca
    add hl, bc
    ld [$3830], sp
    rst $38
    rst $38

jr_007_450f:
    nop
    cp a

jr_007_4511:
    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld a, b
    add a
    ld c, $f1
    db $dd
    cp a
    di
    and d
    rst $38
    rst $38
    nop
    pop bc
    ld a, $7f
    add b
    or b
    ld a, a
    rst $38
    ld l, a
    ret z

    ret z

    adc a
    adc a
    ld [$1f30], sp
    nop
    nop
    nop
    rst $38
    pop af
    ld de, $7191
    ld [hl], c
    sub c
    pop de
    ld sp, $11ff
    pop af
    di
    ld hl, $e326
    inc e
    rst $38

jr_007_4546:
    rst $38
    ld b, b
    add b
    ldh [rLCDC], a
    or b
    ld h, b
    sub b
    ld [hl], b
    rst $38
    ld a, b

jr_007_4551:
    sub b
    ret z

    jr c, jr_007_4551

    ld [$ff07], sp
    rst $38
    call z, $ccc4
    adc h
    adc h
    adc h
    call z, $ff84
    ret nz

    ret nz

    pop hl
    ret nz

    cp e
    pop af
    ld c, $ff
    rst $28
    and $66
    ld h, b
    ld b, b
    rst $38
    pop hl
    cp $7c
    or d
    rst $38
    adc $02
    cp $41
    cp a
    ld [hl], $19
    ld [$0ffd], sp
    cp $e1
    jr nc, @+$21

    jr nc, jr_007_45b4

    jr c, @+$29

    rst $38
    ret nz

    rst $38
    ld e, b
    or b
    ld l, h
    sbc h
    ld c, h
    cp b
    rst $38
    ld e, c
    or b
    ld [hl], e
    pop hl
    add [hl]
    add e
    add h
    add a
    rst $38
    ld a, b
    rst $38
    ld l, h
    inc [hl]
    ld a, h
    inc h
    call nc, $ff6c
    adc h
    db $f4
    ld a, $c4
    ld a, [c]
    ld c, $03
    cp $ff
    ld bc, $f3ff
    and c
    and e
    db $e3
    db $e3
    ld h, c

jr_007_45b4:
    rst $38
    ld b, b
    ld h, b
    ld a, b
    jr nc, jr_007_45e8

    inc a
    dec sp
    daa
    rst $38
    ret nc

    rst $28
    rra
    ld de, $111f
    ld de, $ff1f
    rla
    add hl, de
    add hl, bc
    rrca
    inc c
    dec bc
    ret z

    adc a
    rst $38
    ld [hl], e
    db $fc
    jr z, jr_007_460c

    inc l
    jr c, jr_007_460b

    inc e
    rst $38
    ld d, $1c
    sbc d
    ld c, $8f
    adc d
    ret


    adc a
    rst $38
    ld [hl], b
    rst $38
    and d
    ld [c], a
    rst $20

jr_007_45e7:
    and d

jr_007_45e8:
    push hl
    ld b, a
    rst $38
    inc b
    rlca
    rrca
    dec b
    dec de
    dec c
    or c
    rra
    rst $38
    ldh [rIE], a
    ld a, a
    jr nc, @+$1a

    rrca
    adc a
    ld [$89ff], sp
    adc [hl]
    sbc [hl]
    add hl, bc
    inc sp
    inc e
    ld l, h
    inc sp
    inc bc
    ret nz

    rst $38
    nop
    nop
    nop

jr_007_460b:
    rst $38

jr_007_460c:
    rst $38
    nop
    dec sp
    call nz, Call_000_38c7
    ld a, b
    add a
    rst $38
    adc a
    ld [hl], b
    ld hl, sp+$07
    rlca
    ld hl, sp-$04
    inc bc
    rst $28
    rst $38
    nop
    inc a
    jp $e3f0


    di
    inc c
    inc e
    rst $38
    db $e3
    rst $20
    jr @+$01

    nop
    pop hl
    ld e, $9f
    rst $38
    ld h, b
    ld h, b
    sbc a
    rst $18
    jr nz, jr_007_45e7

    ld c, a
    ld a, a
    rst $38
    add b
    jp $f93c


    ld b, $f1
    ld c, $0c
    rst $38
    di
    ld hl, sp+$07
    add [hl]
    ld a, c
    ld a, h
    add e
    jp Jump_000_3cff


    ld a, $c1
    rst $38
    nop
    db $fd
    ld [bc], a
    inc bc
    rst $38
    db $fc
    cp $01
    ld bc, $3ffe
    ret nz

    add b
    rst $38
    ld a, a
    ld b, e
    cp h
    add b
    ld a, a
    pop bc
    ld a, $9c
    rst $38
    ld h, e
    ld b, c
    cp [hl]
    add e
    ld a, h
    ld h, b
    sbc a
    add $ff
    add hl, sp
    and [hl]
    ld e, c
    ld bc, $83fe
    ld a, h
    dec sp

jr_007_4678:
    rst $38
    call nz, Call_000_0df2
    add e
    ld a, h
    ld b, $f9
    ld h, a

jr_007_4681:
    rst $30
    sbc b
    db $e4
    dec de
    and b
    push hl
    adc [hl]
    ld [hl], c
    ldh a, [rIF]
    rst $38
    ld de, $c3ee
    inc a
    sbc a
    ld h, b
    sub c
    ld l, [hl]
    rst $38
    ccf
    ret nz

    jr nz, jr_007_4678

    ld a, a
    add b
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    jp $ff3c


    nop
    di
    inc c
    cp a
    rrca
    ldh a, [$f8]
    rlca
    add a
    ld a, b
    and b
    db $ed
    rst $38
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    add $ff
    add hl, sp
    cp a
    ld b, b

jr_007_46bd:
    ld h, b
    sbc a
    sbc a
    ld h, b
    ld [hl], b
    rra
    adc a
    rst $08
    jr nc, jr_007_4681

    ld b, l
    nop
    nop
    nop
    rst $38
    sub e
    ld l, h
    xor $11
    xor c
    ld d, [hl]
    ld d, [hl]
    xor c
    rst $38
    pop de
    ld l, $26
    reti


    rst $18
    jr nz, jr_007_46dc

jr_007_46dc:
    rst $38
    rst $38
    sbc b
    ld h, a
    ld a, a
    add b
    call nz, Call_000_3f3b
    ret nz

    rst $38
    jp Jump_007_7d3c


    add d
    add [hl]

jr_007_46ec:
    ld a, c
    nop
    rst $38
    rst $38
    inc a
    jp Jump_000_38c7


    jr c, jr_007_46bd

    rst $20
    jr @+$01

    inc a
    jp Jump_000_3cc3


    ld a, [hl]
    add c
    nop
    rst $38
    rst $38
    pop hl
    ld e, $9e
    ld h, c
    ld h, c
    sbc [hl]
    rst $18
    jr nz, @+$01

    jr nz, jr_007_46ec

    rst $18
    jr nz, jr_007_4740

    rst $08
    nop
    rst $38
    rst $38
    sub c
    ld l, [hl]
    ld a, h
    add e
    ret nz

    ccf
    ld a, $c1
    rst $38
    db $e3
    inc e
    sbc h
    ld h, e
    ld [hl], a
    adc b
    nop
    rst $38

jr_007_4725:
    rst $38
    ld d, l
    xor d
    ld d, d
    xor l
    ld l, b
    sub a
    rrca
    ldh a, [rIE]
    add b
    ld a, a
    ldh [$1f], a
    ld l, b
    sub a
    inc bc
    db $fc
    rst $38
    adc a
    ld [hl], b
    adc $31
    jr jr_007_4725

    ldh a, [rIF]

jr_007_4740:
    rst $38
    pop bc
    ld a, $07
    ld hl, sp+$1f
    ldh [$f0], a
    rrca
    rst $38
    adc [hl]
    ld [hl], c
    ccf
    ret nz

    ld h, h
    sbc e
    rst $38
    nop
    db $fc
    and b
    rst $38
    and b
    db $e3
    add c
    ld a, [hl]
    ld a, [hl]
    add c
    pop bc
    ld a, $fe
    and b
    jp hl


    ld d, [hl]
    xor c
    jp hl


    ld d, $6f
    sub b
    or b
    ld a, a
    ld c, a
    rst $18
    jr nz, jr_007_47cd

    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    sbc c
    ld h, [hl]
    db $76
    adc c
    rst $08
    jr nc, @+$01

    jr c, @-$37

    rst $20
    jr jr_007_479d

    db $e3
    di
    inc c
    rst $38
    rst $38
    nop
    di
    inc c
    inc e
    db $e3
    and $19
    rst $38
    dec sp
    call nz, Call_000_33cc
    ld [hl], a
    adc b
    cp b
    ld b, a
    rst $38
    rst $38
    nop
    adc h
    ld [hl], e
    di
    inc c

jr_007_479d:
    ld e, $e1
    rst $38
    pop hl
    ld e, $7f
    add b
    sbc h
    ld h, e
    db $e3
    inc e
    rst $38
    rst $38
    nop
    db $e3
    inc e
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    rst $38
    rst $08
    jr nc, jr_007_47e7

    call Call_000_00ff
    ret nz

    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld bc, $fefe
    ld bc, $03ff
    db $fc
    db $fc
    inc bc
    and a
    ld e, b
    add hl, sp
    add $ff

jr_007_47cd:
    rst $38
    nop
    inc sp
    call z, $23dc
    ld h, e
    sbc h
    rst $38
    cp [hl]
    ld b, c
    rst $00
    jr c, @+$7a

    add a
    sbc a
    ld h, b
    nop
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop

jr_007_47e7:
    nop

    db $ff, $0c, $f3, $fb, $04, $cc, $33, $37, $c8, $ff, $f0, $0f, $1f, $e0, $e1, $1e
    db $00, $ff, $ff, $c7, $38, $bf, $40, $70, $8f, $cf, $30, $ff, $78, $87, $8f, $70
    db $f3, $0c, $00, $ff, $ff, $3e, $c1, $c1, $3e, $7f, $80, $80, $7f, $ff, $7f, $80
    db $c0, $3f, $3f, $c0, $00, $ff, $ff, $3f, $c0, $e0, $1f, $1f, $e0, $f0, $0f, $ff
    db $8f, $70, $70, $8f, $df, $20, $00, $ff, $3f, $ce, $31, $39, $c6, $c7, $38, $d2
    db $e1, $be, $e1, $ff, $00, $ff, $e7, $18, $38, $c7, $8f, $70, $ff, $78, $87, $87
    db $78, $f8, $07, $07, $f8, $03, $00, $ff, $a0, $ff, $a0, $ff, $a0, $f9, $00, $00

    nop

    db $ff, $ff, $00, $3c, $c3, $c7, $38, $f9, $06, $ff, $0e, $f1, $f6, $09, $19, $e6
    db $e7, $18, $ff, $ff, $00, $dc, $23, $67, $98, $b8, $47, $ff, $cf, $30, $f6, $09
    db $39, $c6, $cf, $30, $ff, $ff, $00, $70, $8f, $cf, $30, $31, $ce, $ff, $fe, $01
    db $03, $fc, $fc, $03, $8f, $70, $ff, $ff, $00, $9a, $65, $76, $8f, $cd, $39, $ff
    db $19, $f1, $b3, $61, $66, $c3, $e3, $41, $ff, $ff, $00, $c3, $3c, $fc, $03, $9a
    db $65, $ff, $6c, $9f, $d3, $32, $b2, $73, $41, $c1, $ff, $ff, $00, $90, $6f, $00
    db $ff, $0f, $f0, $ff, $78, $87, $c6, $3f, $1f, $f9, $b1, $60, $ff, $ff, $00, $0c
    db $f3, $01, $fe, $f0, $0f, $7f, $0c, $ff, $f2, $13, $32, $f3, $c1, $e0, $e0, $fe
    db $a0, $e1, $38, $c7, $0f, $f0, $86, $79, $61, $f7, $fe, $91, $9f, $a0, $e7, $0d
    db $fe, $de, $33, $fb, $b3, $e2, $a0, $e2, $89, $cd, $32, $3b, $c4, $f6, $70, $e1
    db $f7, $08, $a0, $e3, $9b, $64, $6c, $93, $ff, $c7, $38, $f8, $07, $0f, $f0, $ff
    db $00, $ff, $9e, $61, $71, $8e, $8f, $70, $78, $87, $3f, $c7, $38, $3c, $c3, $e3
    db $1c, $00, $00

    nop

    db $ff, $1e, $e1, $f3, $0c, $0f, $f0, $f8, $07, $ff, $87, $78, $7c, $83, $c3, $3c
    db $00, $ff, $ff, $32, $cd, $fd, $02, $03, $fc, $fe, $01, $ff, $01, $fe, $ff, $00
    db $80, $7f, $00, $ff, $ff, $79, $86, $c6, $39, $bf, $40, $60, $9f, $ff, $9f, $60
    db $70, $8f, $cf, $30, $00, $ff, $ff, $b1, $60, $18, $f0, $cc, $38, $59, $b0, $ff
    db $73, $e1, $86, $83, $8d, $86, $78, $ff, $ff, $b2, $f3, $f2, $53, $d2, $73, $b3
    db $d1, $ff, $19, $f1, $e9, $18, $1c, $e8, $07, $ff, $ff, $60, $c0, $cc, $8c, $8c
    db $84, $c0, $80, $ff, $60, $c0, $b8, $f0, $ef, $9e, $0d, $f3, $ff, $b2, $f3, $f3
    db $92, $d2, $b3, $93, $f1, $ff, $d9, $71, $69, $58, $4c, $78, $87, $ff, $ff, $96
    db $9a, $9e, $92, $d2, $9e, $5e, $cc, $ff, $61, $c0, $b3, $e1, $de, $b3, $4c, $bf
    db $ff, $67, $42, $4c, $47, $c3, $42, $b2, $e3, $ff, $e7, $c2, $4c, $c7, $db, $4c
    db $32, $fd, $ff, $cc, $33, $3b, $c4, $c7, $38, $78, $87, $ff, $8f, $70, $f8, $07
    db $07, $f8, $00, $ff, $ef, $f3, $0c, $3c, $c3, $f0, $e3, $f3, $0c, $1c, $ff, $e3
    db $00, $ff, $1e, $e1, $e1, $1e, $9f, $ff, $60, $60, $9f, $df, $20, $b0, $4f, $7f
    db $07, $80, $00, $ff, $00, $00

    nop

    db $ff, $ff, $00, $9e, $61, $61, $9e, $df, $20, $ff, $20, $df, $df, $20, $30, $cf
    db $cf, $30, $ff, $ff, $00, $7e, $81, $c3, $3f, $3c, $c4, $ff, $e4, $1c, $9e, $64
    db $62, $9e, $f2, $0e, $ff, $ff, $00, $56, $a9, $e9, $f6, $3b, $1c, $ff, $0e, $07
    db $03, $01, $71, $60, $58, $70, $ff, $9f, $60, $be, $41, $29, $d6, $36, $c9, $ff
    db $71, $8e, $66, $99, $96, $ef, $df, $79, $ff, $ff, $00, $7f, $80, $c4, $3b, $30
    db $cf, $ff, $c3, $3f, $34, $fc, $7c, $cc, $48, $88, $ff, $60, $9f, $80, $7f, $1f
    db $e0, $f7, $08, $ff, $3c, $c3, $80, $ff, $81, $ff, $4f, $71, $ff, $06, $f9, $00
    db $ff, $d8, $3f, $b7, $65, $ff, $65, $c7, $cf, $86, $9a, $0e, $8c, $06, $ff, $ff
    db $00, $fe, $01, $c1, $fe, $ae, $31, $ff, $23, $3c, $30, $2f, $31, $3e, $1c, $0f
    db $ff, $f9, $06, $55, $aa, $e8, $17, $6c, $93, $ff, $b0, $4f, $df, $21, $33, $ff
    db $f8, $cc, $ff, $ff, $00, $ee, $11, $a9, $56, $d6, $29, $ff, $d1, $ee, $23, $3f
    db $27, $3c, $1c, $18, $fe, $a0, $e3, $3f, $c0, $c3, $3c, $7d, $82, $86, $ff, $f9
    db $f9, $86, $ff, $00, $c7, $38, $38, $ff, $c7, $e7, $18, $3c, $c3, $c3, $3c, $7e
    db $07, $81, $c1, $3e, $00, $00

    nop

    db $ff, $3c, $c3, $e3, $1c, $9e, $61, $71, $8e, $ff, $cf, $30, $32, $cd, $ff, $00
    db $00, $ff, $bf, $0e, $f2, $fe, $02, $02, $fe, $fc, $e3, $a6, $ff, $5a, $01, $ff
    db $70, $60, $01, $00, $03, $ff, $01, $79, $60, $78, $70, $01, $00, $07, $ff, $03
    db $fc, $ff, $f1, $60, $ad, $cc, $4b, $ff, $81, $c6, $87, $c6, $c3, $e1, $c1, $39
    db $ff, $f1, $0e, $ff, $9c, $8c, $b4, $9c, $0c, $ff, $8c, $cc, $8c, $9e, $0c, $32
    db $1e, $63, $ff, $3e, $c1, $ff, $a6, $d9, $84, $fb, $b7, $ff, $c8, $ce, $71, $41
    db $7f, $76, $2a, $22, $ff, $3e, $d1, $ef, $c6, $83, $63, $c1, $b3, $ff, $61, $66
    db $c3, $cc, $86, $1a, $0e, $31, $ff, $1f, $ee, $f1, $07, $03, $63, $43, $73, $ff
    db $62, $52, $72, $52, $73, $71, $51, $91, $fe, $c0, $e0, $87, $07, $77, $23, $53
    db $73, $77, $ff, $63, $05, $07, $98, $0f, $f0, $9f, $60, $ff, $ff, $29, $30, $33
    db $31, $20, $30, $3c, $ff, $18, $91, $18, $9b, $89, $ce, $8b, $74, $ff, $ff, $8e
    db $f1, $73, $8c, $9c, $e3, $e6, $ff, $99, $bb, $c4, $4c, $b3, $77, $88, $00, $ff
    db $ff, $7f, $80, $8c, $73, $f3, $0c, $1e, $ff, $e1, $e1, $1e, $7f, $80, $9c, $63
    db $00, $01, $ff, $00, $00

    nop
    rst $38
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, @+$33

    adc $ff
    rst $38
    nop
    add hl, sp
    add $7b
    db $fc
    adc h
    add a
    rst $38
    add $83
    ld b, e
    pop bc
    ld b, c
    ret nz

    call z, $ff40
    ld hl, sp+$07
    add hl, sp
    add $b1
    ld a, a
    ld c, e

Call_007_4bcd:
    adc $ff
    jp z, $4e4e

jr_007_4bd2:
    call z, $cccc
    ld c, h
    ld c, b
    rst $38
    rst $20
    jr jr_007_4bd2

    ld [$fbe4], sp
    dec [hl]
    dec de
    rst $38

jr_007_4be1:
    ld h, e
    ld a, $42
    ld a, [hl]
    ld b, [hl]
    ld a, h
    ld h, h
    inc a
    rst $38
    ld a, d
    add l
    ld a, [hl-]
    push bc
    ld [c], a
    db $fd
    sbc d
    dec d
    rst $38
    ld a, [de]
    dec d
    add hl, de
    ld d, $11
    ld e, $96
    sbc c
    rst $38
    swap h
    add e
    ld a, h
    sub e
    ld l, a
    sub [hl]
    ld l, h
    rst $38
    ld c, h
    cp b
    add hl, de
    ldh a, [$33]
    pop hl
    ld sp, $ffe0
    db $d3
    inc l
    ret nz

    ccf
    add hl, bc
    or $89
    or $ff
    add [hl]
    rst $38
    jp hl


    sbc c
    ld e, c
    cp c
    and b
    ldh [rIE], a
    ld e, [hl]
    and c
    ld e, b
    and a
    ld d, c
    xor [hl]
    ld e, e
    and h
    rst $38
    ret c

    daa
    sub e
    ld l, a
    cpl
    call c, $b0d8
    rst $38
    rst $20
    jr jr_007_4be1

    ld d, e
    adc a
    ld [hl], b
    ld l, b
    sub a
    rst $38
    add [hl]
    ld a, a
    ld c, c
    cp c
    sbc c
    ld sp, hl
    ldh [$60], a
    rst $38
    rra
    ldh [$9b], a
    ld h, h
    call z, Call_000_0f33
    ldh a, [rIE]
    ret z

    scf
    rrca
    ldh a, [$31]
    cp $ce
    ret


    rst $38
    rst $38
    nop
    cp a
    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld a, b
    add a
    add [hl]
    ld a, a
    rst $28
    add hl, de
    reti


    pop af
    rst $38
    rst $38
    nop
    pop bc
    ld a, $7f
    add b
    add b

jr_007_4c6f:
    ld a, a
    rst $38
    ld a, a
    add b
    ret nz

    ccf
    ccf
    ret nz

    ldh [$1f], a
    nop
    nop
    nop
    rst $38
    rst $28
    db $10
    sbc d
    ld h, l
    db $76
    adc c
    call $ff32
    dec sp
    call nz, Call_000_09f6
    add hl, de
    and $00
    rst $38
    rst $38
    ld c, [hl]
    call z, $4ecb
    call $ca4b
    ld c, l
    rst $38
    ld c, h
    set 1, a
    adc b
    sbc b
    adc a
    ld [hl], b
    rst $38
    rst $38
    ld c, b
    ld [$0909], sp
    adc c
    add hl, bc
    adc c
    adc b
    rst $38
    ret z

    adc b
    ld c, h
    ret z

    ld l, a
    adc $31
    rst $38
    rst $38
    dec l
    jr c, jr_007_4c6f

    add hl, de
    sbc b
    sub b
    sub b
    sub b
    rst $38
    ccf
    rra
    ld h, d
    dec a
    jp $827c


    db $fd
    rst $38
    sub [hl]
    sbc c
    sbc b
    sbc a
    inc b
    rlca
    inc b
    rlca
    rst $38
    sbc b
    rra
    sub b
    sbc a
    sbc b
    sub a
    ld h, b
    rst $38
    rst $38
    ld e, b
    or b
    ld l, h
    sbc b
    ld b, [hl]
    cp h

jr_007_4cdd:
    ld l, h
    sbc b
    rst $38
    add hl, sp
    ldh a, [rSCX]
    pop bc
    ld b, [hl]
    jp $ff3c


    rst $38
    reti


    ld a, c
    ld a, c
    add hl, hl
    ld a, c
    add hl, hl
    ret


    ld a, b
    rst $38
    cp h
    ret z

    ld [hl], h
    adc h
    ld b, $fc
    inc bc
    rst $38
    rst $38
    jr nc, jr_007_4cdd

    ld h, [hl]
    add $46
    jp nz, $c0e0

    rst $38
    or b
    ldh [$dc], a
    ld a, b
    ld d, a
    ld l, a
    or b
    rst $08
    rst $38
    ld e, c
    ld a, c
    ld e, c
    ld l, c
    ld e, c
    ld l, c
    ld c, c
    ld a, b
    rst $38
    ld l, h
    jr c, jr_007_4d3d

    inc a
    and [hl]
    inc a
    jp $ffff


    ld c, e
    call $cb4d
    ld l, e
    call $e6af
    rst $38
    or b
    ldh [$d9], a
    ld [hl], b
    ld c, a
    ld a, c
    add [hl]
    rst $38
    rst $38
    inc sp
    ld hl, $2326
    ld h, c
    ld hl, $7159
    rst $38
    di
    ld h, c
    and [hl]

jr_007_4d3d:
    db $e3
    dec l
    and $18
    rst $38
    rst $38
    sbc a
    ld h, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$33

    adc $ff
    cp $01
    inc bc
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    nop
    nop
    nop

    db $ff, $ff, $00, $3b, $c4, $c7, $38, $78, $87, $ff, $8f, $70, $f8, $07, $07, $f8
    db $fc, $03, $ef, $ff, $00, $3c, $c3, $f0, $e3, $f3, $0c, $1c, $ff, $e3, $e7, $18
    db $ff, $00, $e1, $1e, $9f, $ff, $60, $60, $9f, $df, $20, $b0, $4f, $7f, $ff, $80
    db $c3, $3c, $f9, $06, $f1, $0e, $0c, $ff, $f3, $f8, $07, $86, $79, $7c, $83, $c3
    db $ff, $3c, $3e, $c1, $ff, $00, $fd, $02, $03, $ff, $fc, $fe, $01, $01, $fe, $3f
    db $c0, $80, $ff, $7f, $43, $bc, $80, $7f, $c1, $3e, $9c, $ff, $63, $41, $be, $83
    db $7c, $60, $9f, $c6, $ff, $39, $a6, $59, $01, $fe, $83, $7c, $3b, $ff, $c4, $f2
    db $0d, $83, $7c, $06, $f9, $67, $f7, $98, $e4, $1b, $a0, $e5, $8e, $71, $f0, $0f
    db $ff, $11, $ee, $c3, $3c, $9f, $60, $91, $6e, $ff, $3f, $c0, $20, $df, $7f, $80
    db $f0, $0f, $ff, $ff, $00, $c3, $3c, $ff, $00, $f3, $0c, $bf, $0f, $f0, $f8, $07
    db $87, $78, $a0, $ed, $ff, $ff, $00, $80, $7f, $7f, $80, $ff, $00, $c6, $ff, $39
    db $bf, $40, $60, $9f, $9f, $60, $70, $1f, $8f, $cf, $30, $ba, $45, $00, $00

    nop

    db $ff, $93, $6c, $ee, $11, $a9, $56, $56, $a9, $ff, $d1, $2e, $26, $d9, $df, $20
    db $00, $ff, $ff, $98, $67, $7f, $80, $c4, $3b, $3f, $c0, $ff, $c3, $3c, $7d, $82
    db $86, $79, $00, $ff, $ff, $3c, $c3, $c7, $38, $38, $c7, $e7, $18, $ff, $3c, $c3
    db $c3, $3c, $7e, $81, $00, $ff, $ff, $e1, $1e, $9e, $61, $61, $9e, $df, $20, $ff
    db $20, $df, $df, $20, $30, $cf, $00, $ff, $ff, $91, $6e, $7c, $83, $c0, $3f, $3e
    db $c1, $ff, $e3, $1c, $9c, $63, $77, $88, $00, $ff, $ff, $55, $aa, $52, $ad, $68
    db $97, $0f, $f0, $ff, $80, $7f, $e0, $1f, $68, $97, $03, $fc, $ff, $8f, $70, $ce
    db $31, $18, $e7, $f0, $0f, $ff, $c1, $3e, $07, $f8, $1f, $e0, $f0, $0f, $ff, $8e
    db $71, $3f, $c0, $64, $9b, $ff, $00, $fc, $a0, $ff, $a0, $e3, $81, $7e, $7e, $81
    db $c1, $3e, $fe, $a0, $e9, $56, $a9, $e9, $16, $6f, $90, $b0, $7f, $4f, $df, $20
    db $61, $9e, $00, $ff, $00, $00

    nop

    db $ff, $ff, $00, $99, $66, $76, $89, $cf, $30, $ff, $38, $c7, $e7, $18, $1c, $e3
    db $f3, $0c, $ff, $ff, $00, $f3, $0c, $1c, $e3, $e6, $19, $ff, $3b, $c4, $cc, $33
    db $77, $88, $b8, $47, $ff, $ff, $00, $8c, $73, $f3, $0c, $1e, $e1, $ff, $e1, $1e
    db $7f, $80, $9c, $63, $e3, $1c, $ff, $ff, $00, $e3, $1c, $9e, $61, $71, $8e, $ff
    db $cf, $30, $32, $cd, $ff, $00, $c0, $3f, $ff, $ff, $00, $ff, $00, $01, $fe, $fe
    db $01, $ff, $03, $fc, $fc, $03, $a7, $58, $39, $c6, $ff, $ff, $00, $33, $cc, $dc
    db $23, $63, $9c, $ff, $be, $41, $c7, $38, $78, $87, $9f, $60, $00, $a0, $ff, $a0
    db $ff, $a0, $f9, $00, $00

    nop

    db $f9, $00, $ff, $ff, $fb, $fa, $06, $0f, $0b, $1d, $17, $ff, $39, $2d, $73, $5b
    db $67, $5d, $63, $2e, $ff, $71, $17, $38, $0b, $1c, $16, $39, $6d, $ff, $f3, $fb
    db $87, $f7, $8f, $7e, $ff, $3c, $fd, $7e, $c0, $e2, $80, $8c, $9e, $9e, $93, $be
    db $ff, $f3, $7f, $c1, $bf, $f3, $5f, $f3, $7e, $ff, $f3, $fd, $f3, $d7, $f9, $8e
    db $d9, $0b, $df, $8c, $07, $0f, $03, $07, $ba, $e7, $19, $3f, $ff, $ae, $f1, $df
    db $e0, $bf, $cc, $f7, $8c, $ff, $bf, $c0, $5f, $e0, $b7, $f8, $ce, $ff, $ef, $c5
    db $cf, $80, $c1, $80, $e3, $0c, $1e, $1e, $ff, $13, $3e, $f3, $ff, $c1, $ff, $f3
    db $df, $ff, $f3, $de, $d3, $dd, $d3, $57, $f9, $ee, $7f, $79, $eb, $6c, $e7, $ef
    db $c3, $e7, $60, $e7, $ff, $60, $f0, $f1, $9b, $fb, $9a, $fb, $9a, $ff, $b3, $da
    db $6d, $de, $5e, $e1, $ad, $f3, $bf, $d3, $ff, $cf, $df, $86, $cf, $40, $e5, $0c
    db $ff, $1e, $12, $3f, $af, $f3, $db, $67, $f7, $ff, $4f, $7e, $c3, $ef, $f3, $db
    db $e7, $f7, $7f, $cf, $ee, $df, $3c, $fe, $18, $3c, $20, $ff, $00, $ff, $fd, $00
    db $00

    nop

    db $ff, $ff, $00, $e0, $1f, $1f, $e0, $f0, $0f, $ff, $8f, $70, $70, $8f, $df, $20
    db $31, $ce, $ff, $ff, $00, $39, $c6, $c7, $38, $78, $87, $ff, $8f, $70, $f0, $0f
    db $1f, $e0, $e1, $1e, $ff, $f8, $07, $39, $c6, $83, $7c, $72, $8d, $ff, $83, $7c
    db $f2, $0d, $03, $fc, $f2, $0d, $ff, $e7, $18, $f7, $08, $c4, $3b, $37, $c8, $ff
    db $90, $6f, $03, $fc, $e3, $1c, $00, $ff, $ff, $7a, $85, $3a, $c5, $12, $ed, $da
    db $25, $ff, $1a, $e5, $39, $c6, $a1, $5e, $06, $f9, $ff, $cb, $34, $83, $7c, $93
    db $6c, $90, $6f, $ff, $40, $bf, $07, $f8, $1f, $e0, $30, $cf, $ff, $d3, $2c, $c0
    db $3f, $09, $f6, $09, $f6, $ff, $02, $fd, $e0, $1f, $d8, $27, $30, $cf, $ff, $5e
    db $a1, $58, $a7, $51, $ae, $5b, $a4, $ff, $d8, $27, $90, $6f, $a5, $5a, $60, $9f
    db $ff, $e7, $18, $ac, $53, $8f, $70, $68, $97, $ff, $89, $76, $c3, $3c, $87, $78
    db $80, $7f, $ff, $1f, $e0, $9b, $64, $cc, $33, $0f, $f0, $ff, $c8, $37, $0f, $f0
    db $c9, $36, $0e, $f1, $ff, $ff, $00, $bf, $40, $70, $8f, $cf, $30, $fe, $6e, $e1
    db $f3, $0c, $6e, $91, $ff, $00, $c1, $ff, $3e, $7f, $80, $80, $7f, $7f, $80, $c0
    db $1f, $3f, $3f, $c0, $e0, $1f, $00, $00

    nop

    db $ff, $ef, $10, $9a, $65, $76, $89, $cd, $32, $ff, $3b, $c4, $f6, $09, $19, $e6
    db $00, $ff, $ff, $3e, $c1, $c3, $3c, $fc, $03, $9b, $64, $ff, $6c, $93, $c7, $38
    db $f8, $07, $00, $ff, $ff, $63, $9c, $98, $67, $71, $8e, $8c, $73, $ff, $78, $87
    db $c6, $39, $3c, $c3, $00, $ff, $ff, $d0, $2f, $39, $c6, $c3, $3c, $f3, $0c, $ff
    db $02, $fd, $32, $cd, $03, $fc, $42, $bd, $ff, $46, $b9, $c0, $3f, $40, $bf, $a0
    db $5f, $ff, $c8, $37, $f0, $0f, $38, $c7, $00, $ff, $ff, $7f, $80, $70, $8f, $4f
    db $b0, $71, $8e, $ff, $3e, $c1, $03, $fc, $00, $ff, $00, $ff, $fb, $ee, $11, $a0
    db $e1, $cc, $33, $38, $c7, $f0, $fd, $0f, $f0, $e1, $62, $9d, $43, $bc, $02, $fd
    db $ff, $07, $f8, $1c, $e3, $17, $e8, $18, $e7, $ff, $30, $cf, $0f, $f0, $9e, $61
    db $51, $ae, $ff, $8f, $70, $48, $b7, $cc, $33, $00, $ff, $ff, $03, $fc, $cb, $34
    db $1c, $e3, $97, $68, $ff, $39, $c6, $2e, $d1, $76, $89, $d9, $26, $ff, $80, $7f
    db $b3, $4c, $dc, $23, $67, $98, $ff, $b8, $47, $cf, $30, $f6, $09, $39, $c6, $ff
    db $00, $ff, $9f, $60, $70, $8f, $cf, $30, $ff, $31, $ce, $fe, $01, $03, $fc, $fc
    db $03, $03, $00, $ff, $00, $00

    nop
    ld hl, $51dc
    ld de, $0500
    ld b, $00
    xor a
    ldh [$8a], a
    ldh [$8b], a
    call Call_007_741e
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$cabc]
    call Call_007_7c00
    bit 7, a
    jr nz, jr_007_51d1

    ld [$cabc], a

jr_007_51d1:
    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


    ld b, $52
    ld e, a
    ld e, d
    add $52
    rrca
    ld e, e
    sbc l
    ld d, e
    rst $20
    ld e, e
    ld [hl], l
    ld d, h
    cp l
    ld e, h
    ld c, a
    ld d, l
    sbc b
    ld e, l
    daa
    ld d, [hl]
    ld [hl], e
    ld e, [hl]
    ld [bc], a
    ld d, a
    ld c, h
    ld e, a
    jp c, $2657

    ld h, b
    or d
    ld e, b
    ld bc, $8a61
    ld e, c
    push de
    ld h, c
    xor a
    ld h, d
    rst $38
    inc [hl]
    ei
    rst $18
    ld c, a
    ret nz

    ld b, b
    ld h, b
    ret nz

    rst $38
    or b
    ld h, b
    rra
    rst $38
    pop hl
    rra
    ld bc, $dfff
    rst $00

jr_007_521a:
    jr c, jr_007_521a

    rst $38
    ld bc, $e2ff
    ld a, $3f
    rst $38
    inc sp
    inc l
    jr nz, jr_007_5266

    ld a, $c1
    pop bc
    ld a, $ff
    ld a, a
    add b
    add b
    ld a, a
    ld l, l
    sbc [hl]
    cp [hl]
    ld [hl], e
    rst $38
    ld h, e
    pop bc
    pop bc
    add c
    ccf
    ret nz

    ldh [$1f], a
    rst $38
    rra
    ldh [$f0], a
    rrca
    adc a

jr_007_5243:
    ld [hl], b
    ld [hl], b

jr_007_5245:
    rst $38
    rst $38
    sbc l
    adc e
    dec bc
    adc [hl]
    adc $31
    add hl, sp
    add $ff
    rst $00
    jr c, jr_007_52cb

    add a
    sbc e
    ld a, a
    rst $20
    inc h
    rst $38
    call nz, Call_000_20e0
    jr nz, jr_007_5245

    jr jr_007_5298

    rst $00
    rst $38
    adc a
    ld [hl], b
    ld a, b
    add a

jr_007_5266:
    rlca
    ld hl, sp-$48
    rst $38
    rst $38
    rst $08
    ld b, a
    ld b, c
    ld b, b
    inc c
    di
    ei
    inc b
    rst $38
    call z, Call_000_3533
    set 6, a
    ld c, $0c
    ld hl, sp-$01
    ld e, b
    or b
    or b
    ldh [$c7], a
    jr c, jr_007_5243

    ld b, b
    rst $38
    ld [hl], b
    adc a
    adc a
    ldh a, [$d8]
    ld h, a
    ld l, a
    ccf
    ld sp, hl
    jr nc, @+$01

    ldh [$a0], a
    push hl
    ld a, a
    add b
    or b
    rst $38

jr_007_5298:
    ld a, d
    rst $30
    ld c, l
    dec c
    rlca
    and b
    push hl
    cp e
    ld a, h
    ld l, l
    rst $00
    rst $28
    add $82
    add d
    ld [bc], a
    and b
    push hl
    adc l
    ld [hl], e
    jp nc, $eedf

    ld a, d
    ld a, $0d
    rlca
    and b
    pop hl
    or a
    ld a, b
    rst $38
    ld c, b
    rst $08
    call Call_000_02ce
    inc bc
    inc bc
    ld [bc], a
    inc bc
    call z, Call_000_00cf
    nop
    nop
    rst $38
    rst $38
    ld bc, $c33d

jr_007_52cb:
    rst $00
    ld a, [hl-]
    ld_long a, $ff06
    rrca
    ld a, [c]
    push af
    dec bc
    add hl, de
    rst $20
    and $19
    rst $38
    ld a, $21
    dec a
    inc hl
    daa
    add hl, sp
    add hl, sp
    daa
    rst $38
    cpl
    ld sp, $2936
    add hl, sp
    ld h, $cf
    ldh a, [rIE]
    sbc c
    add b
    sbc b
    jr jr_007_5308

    jr jr_007_530b

    db $10
    rst $38
    add c
    ld bc, $83c6
    ld l, h
    rst $08
    or a
    ld a, b
    rst $38
    adc [hl]
    adc d
    jp z, $ce8e

    call nz, $c0e0
    rst $38
    jr nz, @-$1e

jr_007_5308:
    pop af
    jr nz, jr_007_5326

jr_007_530b:
    pop af
    xor $1f
    rst $38
    inc hl
    ld hl, $2366
    ld b, h
    ld h, a
    ld h, [hl]
    ld h, l
    rst $38
    db $e4
    ld h, a
    and l
    and $67
    and h
    dec de
    db $fc
    rst $38
    add b
    ret nz

    ret nz

    ld b, b
    ld b, [hl]

jr_007_5326:
    call nz, $c646
    rst $38
    ld b, [hl]
    add $c6
    ld b, [hl]
    ld b, [hl]
    add $b9
    ld a, a
    rst $38

Jump_007_5333:
    and $42
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld b, b
    ld b, b
    rst $38
    ld [hl], b
    ld h, b
    ld e, h
    ld a, b
    ld d, a
    ld l, a
    and [hl]
    reti


    ld a, l
    jr nc, @+$01

    ldh [$31], a
    ld sp, $3121
    ld de, $e0ff
    rst $38
    sub c
    ld de, $ffee
    rlca
    ld b, $06
    inc b
    rst $38
    inc b
    inc b
    ld h, $24
    ld h, $26
    daa
    ld h, $ff
    dec h
    daa
    db $db
    db $fc
    ld h, $22
    inc c
    ld b, $ff
    ld a, [hl-]
    ld e, $36
    ld a, [hl-]
    ld a, [de]
    ld c, $0e
    ld b, $ff
    add $86
    ld a, c
    rst $38
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    cp a
    ld [hl-], a
    inc hl
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc sp
    db $fc
    pop hl
    call $feff
    rst $08
    ld c, b
    jp z, $4d4d

    add $c5
    rst $38
    ld b, [hl]
    ld h, [hl]
    jp Jump_007_62a3


    ld [hl-], a
    db $e3
    db $dd
    ld bc, $003e
    nop
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rNR10]
    db $10
    ldh a, [$f8]
    db $10
    rst $38
    adc b
    ld a, b
    ld a, b
    adc b
    ret z

    jr c, jr_007_53b6

    ld hl, sp-$01
    or d
    call $72ed
    dec sp
    inc e

jr_007_53b6:
    inc c
    rlca
    rst $38
    add $83
    db $e3
    pop bc
    and c
    ldh [$e1], a
    ret nz

    rst $38
    ld a, c
    add [hl]
    add $39
    cp a
    ld b, b
    ld h, b
    sbc a
    rst $38
    sub a
    ld l, a
    ld l, l
    sbc b
    ret c

    or b
    or b
    ldh [rIE], a
    call z, Call_000_3a33
    push bc
    call nz, $763b
    adc a
    rst $38
    dec c
    ld sp, hl

jr_007_53df:
    sbc c
    pop af
    pop af
    ld h, c
    ld h, [hl]
    ld b, e
    rst $38
    dec sp
    call nz, $837c
    db $db
    inc a
    db $e4
    daa
    rst $30
    and $e7
    ld bc, $e0ff
    and $e7
    jr jr_007_53df

    rst $38
    or c
    ld c, a
    dec hl
    sub $66
    sbc h
    call c, $ff28
    sbc b
    ld l, b
    db $ec
    jr @+$08

    db $fc
    ld_long $fff5, a
    ld de, $361e
    add hl, de
    ld h, h
    dec sp
    db $d3
    ld l, h
    rst $38
    jp z, $71f5

    ccf
    dec de
    ld c, $34
    set 7, a
    db $fc
    inc bc
    inc bc
    db $fc
    cp $01
    ld sp, $fffe
    xor $c9
    adc c
    rrca
    dec bc
    ld c, $79
    add [hl]
    rst $38
    ld b, [hl]
    cp c
    ccf
    ret nz

    nop
    rst $38
    or l
    ld a, e
    rst $38
    ld a, [$8ece]
    ld b, $04
    ld b, $cc
    inc sp
    rst $38
    dec sp
    call nz, Call_000_38c7
    ld a, b
    add a
    or a
    ld hl, sp-$01
    ld a, b
    ld c, a
    ld c, [hl]
    dec b
    dec b
    rlca
    di
    inc c
    ei
    inc a
    jp $e1f0


    cp e
    ld a, h

jr_007_5459:
    ld l, h
    rst $00
    rst $00
    rst $38
    add e
    add e
    ld [bc], a
    ld e, $e1
    pop hl
    ld e, $9f
    rst $38
    ld h, b
    jr nc, @+$01

    ld l, a
    ret z

    ret z

    adc a
    adc a
    rlca
    ld [$1f30], sp
    nop
    nop
    nop
    rst $38
    ld hl, sp+$08
    sbc b
    ld l, b
    ld l, b
    sbc b
    ret c

    jr z, @+$01

    jr z, jr_007_5459

    ret c

    jr z, jr_007_54bc

    ret z

    rst $00
    ccf
    rst $38
    inc bc
    ld bc, $0306
    db $e3
    pop bc
    pop hl
    pop hl
    rst $38
    ld bc, $0301
    ld bc, $070e
    ld sp, hl
    cp $ff
    ld h, h
    call nz, $80c1
    add a
    add e
    add $87
    rst $38
    ld b, e
    pop bc
    pop hl
    ld b, b
    jr c, @-$0e

    adc a
    ld a, a
    rst $38
    rst $08
    ld b, [hl]
    and e
    pop bc
    ld sp, $11e1
    pop af
    rst $38
    ld [hl], e
    and c
    and $a3
    db $ed
    and [hl]
    ld e, b

jr_007_54bc:
    cp a
    rst $38
    rst $20
    inc h
    ld h, l
    and [hl]
    and $23
    ld [hl+], a
    db $e3
    rst $38
    di
    ld hl, $b151
    sbc c
    ld [hl], c
    ld l, $df
    rst $38
    ld h, e
    sbc [hl]
    add c
    ld a, a
    rra
    pop hl
    di
    ld c, $ff
    xor [hl]
    ld e, h
    db $10
    ldh a, [rNR10]
    ldh a, [rIF]
    rst $38
    rst $38
    ld c, $06
    adc [hl]
    add h
    sbc b
    inc c
    ld [hl], $1c
    rst $38
    ld h, e
    ld a, $c5
    ld a, e
    add b
    rst $38
    ld [hl], b
    adc a
    rst $38
    ld [hl], d
    ld a, $5e
    ld h, h
    ld b, h
    ld a, h
    jr c, jr_007_5538

    rst $38
    ld b, $04
    adc a
    ld b, $f9
    rst $08
    jr nc, @+$01

    rst $30
    ld h, [hl]
    ld [bc], a
    ld h, d
    rst $38
    ldh [$66], a
    ld b, d
    inc b
    ld b, $ff
    ld a, [de]
    ld c, $b2
    ld a, $dd
    db $e3
    dec sp
    ld e, $ff
    ld l, [hl]
    inc [hl]
    ld c, h
    ld [hl], h
    ld d, [hl]
    ld l, h
    ld d, d
    ld l, [hl]
    rst $38
    ld h, a
    ld e, d
    ld e, l
    ld h, e
    or b
    rst $08
    ld h, $22
    rst $38
    rrca
    ld b, $39
    rra
    ld [hl], $39
    dec de
    dec c
    rst $38
    dec c
    rlca
    rst $00
    add l

jr_007_5538:
    ld a, b
    rst $38
    ld a, a
    jr nc, @+$01

    rra
    ld [$0f88], sp
    adc a
    adc b
    sbc h
    dec bc
    ccf
    inc sp
    inc e
    ld l, [hl]
    ld sp, $fec1
    nop
    nop
    nop
    rst $38
    inc a
    rst $38
    rst $00
    ld b, d
    ld [c], a
    ld b, e
    ld [hl+], a
    db $e3
    rst $38
    di
    ld hl, $f111
    ld sp, hl
    db $10
    ld [$fff8], sp
    ld e, $ff
    pop af
    ld hl, $e123
    and d
    ld h, e
    rst $38
    ld h, a
    jp nz, $47c4

    rst $08
    add h
    adc b
    adc a
    rst $38
    xor $1f
    ld de, $b3f1
    ld h, c
    ld h, [hl]
    jp $ccff


    add a
    adc l
    adc [hl]
    rst $00
    add e
    ld h, c
    ret nz

    rst $38
    ld l, [hl]
    sub c
    ld e, b
    and a
    inc [hl]
    sra l
    jp nc, $19ff

    and $80
    ld a, a
    ld [bc], a
    db $fd
    add [hl]
    ld sp, hl
    rst $38
    ccf
    rst $38
    ret nz

    ld b, b
    ldh [rLCDC], a
    and b
    ld h, b
    rst $38
    inc hl
    db $e3
    ld h, e
    and d
    ld h, d
    and e
    ld h, e
    and e
    rst $38
    rst $00
    ld hl, sp+$74
    dec sp
    dec de
    inc c
    inc c
    rlca
    rst $38
    add a
    ld [bc], a
    jp $c6c2


    jp Jump_000_0784


    rst $38
    daa
    ret c

    rst $28
    db $10
    sbc [hl]
    ld h, c
    ld [hl], b
    adc a
    rst $38
    db $dd
    ld a, $36
    db $e3
    ld h, e
    pop bc
    pop bc
    add c
    rst $38
    ld c, $f1
    add a
    ld a, b
    ld de, $58ee
    and a
    rst $38
    inc c
    rst $38
    cp d
    ld [hl], e
    ld h, d
    jp $83c2


    rst $38
    ld l, h
    sub e
    ld [hl], d
    adc l
    inc e
    db $e3
    jr nz, @-$1f

    rst $28
    adc l
    ld a, [hl]
    ld a, $f3
    ldh [$e1], a
    ld l, a
    sub b
    ld e, c
    rst $38
    and [hl]
    or $09
    rst $08
    jr nc, jr_007_5665

    rst $38
    sbc [hl]
    rst $38
    sub e
    sub e
    add c
    ld bc, $0b81
    rst $30
    or $ff
    inc c
    inc e
    add sp, -$18
    jr jr_007_5643

    ret z

    ret z

    rst $38
    jr c, jr_007_5648

    ldh a, [$60]
    ret nz

    ld a, a
    add b
    adc h
    rst $38
    di
    di
    adc h
    adc h
    rst $38
    db $db
    or d
    or e
    inc bc
    ld [c], a
    ld [c], a
    ld l, d
    ldh [rP1], a
    nop
    nop
    rst $38
    ld hl, sp+$08
    db $ec
    jr jr_007_5641

    db $ec
    or $0c
    rst $38
    adc d
    db $76
    ld [hl], e
    adc [hl]
    db $dd
    inc hl
    jr nc, @-$2f

    rst $38
    rrca
    ld [$0e19], sp
    rla
    jr jr_007_5679

jr_007_5641:
    rla
    rst $38

jr_007_5643:
    ld l, $31
    ld [hl], c
    cpl
    ld e, a

jr_007_5648:
    ld h, c
    and b
    rst $18
    rst $38
    or b
    ld h, b
    jr jr_007_5648

    sbc c
    ld [hl], b
    inc sp
    pop hl

jr_007_5654:
    rst $38
    and $c3
    inc c
    rlca
    dec bc
    inc c
    ld a, [c]
    db $fd
    rst $38
    rst $20
    ld e, b
    rst $30
    ld c, b
    add h
    ei
    dec sp

jr_007_5665:
    db $fc
    rst $38
    db $ec
    ld b, a
    ld b, a
    call nz, Call_007_44ef
    jr c, @+$01

    rst $38
    ld h, b
    and b
    jr nz, jr_007_5654

    jr nz, @-$1e

    db $e3
    ld [hl+], a
    rst $38

jr_007_5679:
    inc hl
    db $e3
    daa
    ld [c], a
    and l
    ld h, [hl]
    ld a, [de]
    db $fd
    rst $38
    dec c
    rlca
    dec sp
    ld e, $12
    ld e, $1b
    ld c, $ff
    adc l
    rlca
    rst $08
    add l
    ld a, d
    call $ff30
    rst $38
    sub e
    ld de, $0306
    dec e
    rrca
    add hl, de
    rra
    rst $38
    inc c
    rlca
    add [hl]
    inc bc
    ld [c], a
    jp $ff3c


    rst $38
    sbc h
    adc a
    sub c
    rra
    ld de, $8e1f
    rrca
    rst $38
    pop bc
    add c
    ld h, e
    pop bc
    cp [hl]
    ld [hl], e
    ld l, h
    sbc a
    rst $38
    sbc c
    add b
    sbc b
    jr jr_007_56d5

    jr jr_007_56d8

    db $10
    rst $38
    add c
    ld bc, $83c6
    ld l, l
    adc $b0
    ld a, a
    rst $38
    adc [hl]
    add a
    sbc e
    adc l
    sub l
    sbc e
    sbc a
    sub c
    rst $38
    jr @-$67

jr_007_56d5:
    sbc a
    sub b
    sbc c

jr_007_56d8:
    sub [hl]
    ld l, [hl]
    pop af
    rst $38
    ret nz

    add b
    adc b
    nop
    inc c
    ld [$048c], sp
    rst $38
    ret nz

    add b
    ld h, b
    ret nz

    cp b
    ld a, b
    ld h, a
    sbc a
    rst $38
    sbc a
    adc h
    rst $00
    add d
    db $e3
    jp nz, $e3a2

    rst $38
    rst $20
    jp nz, $c7cc

    db $db
    call z, $ff30
    nop
    nop
    nop
    rst $38
    rst $28
    db $10
    sbc d
    ld h, l
    db $76
    adc c
    call z, $ff33
    dec sp
    push bc
    rst $30
    add hl, bc
    add hl, de
    rst $20
    nop
    rst $38
    rst $38
    inc e
    rst $38
    and e
    ld h, d
    ld h, [hl]
    jp $86cd


    rst $38
    sbc b
    rrca
    dec de
    inc e
    adc [hl]

Call_007_5723:
    rlca
    jp $ff81


    ld h, e
    sbc h
    ld a, b
    rst $38
    adc l
    add [hl]
    add [hl]
    add e
    rst $38
    add e
    add c
    add c
    add c
    adc c
    adc b
    ld c, c
    adc b
    rst $38
    ret nc

    cpl
    add hl, sp
    add $c3
    inc a
    di
    inc c
    rst $38
    rlca
    rst $38
    dec l
    ret c

    sbc b
    ldh a, [$b0]
    ldh [rIE], a
    ld b, [hl]
    cp c
    ret nz

    ccf
    ld b, b
    cp a
    and b
    ld e, a
    rst $38
    ld c, e
    or a
    or [hl]
    call z, Call_007_58ec
    ld e, b
    ld [hl], b
    rst $38
    ld a, a
    add b
    ld [hl], b
    adc a
    ld c, a
    or c
    ld [hl], c
    adc a
    rst $38
    cp a

jr_007_5767:
    pop bc
    pop bc
    ld a, a
    ld h, a
    ld a, $2c
    jr c, @+$01

    ld l, [hl]
    pop af
    jp c, $9695

    add hl, de

jr_007_5775:
    inc e
    inc de
    rst $28
    jr jr_007_5791

    db $10
    rra
    cp $e1
    ld h, e
    sbc a
    ld c, h
    rst $38
    cp h
    jr jr_007_5775

    jr nc, jr_007_5767

    inc hl
    pop hl
    ld h, [hl]
    rst $38
    jp $c744


    call z, $8f87

jr_007_5791:
    ldh a, [$5e]
    rst $38
    ld h, c
    ld d, c
    ld l, [hl]
    ld c, a
    ld [hl], b
    adc b
    rst $30
    set 7, a
    scf
    ld b, $fc
    db $ec
    ld hl, sp-$3a
    ccf
    add hl, de
    rst $38
    jp hl


    sbc c
    ld l, c
    add hl, sp
    ret


    ret


    ld sp, hl
    jp hl


    rst $38
    add hl, sp
    add hl, sp
    add hl, de
    ld de, $b319
    ld c, a
    sub $ff
    inc l
    ld l, h
    sbc b
    sbc b
    ld [hl], b
    ei
    ld hl, $fbe2
    db $e3
    ld bc, $e0ff
    rra
    ldh [$f0], a
    adc a
    rst $08
    rst $38
    or b
    or c
    adc $7e
    add c
    inc bc
    db $fc
    db $fc
    rlca
    inc bc
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    dec sp
    call nz, Call_000_38c7
    ld a, b
    add a
    rst $38
    adc l
    ld [hl], e
    ld a, [$0606]
    ld a, [$03fd]
    rst $38
    ld h, c
    ret nz

    ld sp, $f3f0
    ld hl, $c366
    rst $38
    call $1b86
    inc c
    inc d
    dec de
    rst $20
    ld hl, sp-$01
    jp $c6c1


    jp $c645


    ld c, b
    rst $00
    rst $38
    rst $08

jr_007_5809:
    ld c, b
    ret z

    ld c, a
    ld c, a
    ret z

    or e
    ld a, h
    rst $38
    ld h, h
    call nz, $80c1
    add a
    add e
    add $87
    rst $38
    ld b, e
    pop bc
    ld h, c
    ret nz

    cp b
    ld [hl], b
    cpl
    rst $18
    rst $38
    ld a, [c]
    ld h, d
    and b
    ret nz

    ld b, e
    pop bc
    db $e3
    ld b, e
    rst $38
    ld hl, $b0e0
    ldh [$9c], a
    ld hl, sp+$47
    cp a
    rst $38
    ld a, b
    jr nc, jr_007_5809

    ld h, b
    and c
    pop hl

jr_007_583b:
    ld [hl], c
    and b
    rst $38
    sbc b
    ldh a, [$ec]
    ld e, b
    ld b, a
    ld a, a
    and [hl]
    reti


    rst $38
    db $10
    rra
    inc de
    dec e
    sbc e
    dec d
    sub d
    sbc l
    rst $38
    inc de
    inc e
    ld d, $19
    rla
    jr jr_007_583b

    ei
    rst $38
    adc e
    adc l
    adc l
    dec bc
    adc a
    rlca
    jp $ff81


    ld h, b
    ret nz

    or b
    ld h, b
    ld e, $fc

jr_007_5868:
    jp $ef3f


    add hl, de
    jr jr_007_5887

    ld de, $e1ff
    jr @+$12

    inc e
    rst $38
    jr jr_007_588d

    inc e
    db $e3
    rst $38
    sbc c
    add hl, bc
    adc c
    cp $ff
    ldh [$99], a
    add hl, bc
    ld de, $6919
    add hl, sp
    ret


jr_007_5887:
    rst $38
    ld sp, hl
    ld [hl], $cf
    add $c7

jr_007_588d:
    push hl
    ld b, [hl]
    daa
    rst $38
    db $e4
    and $25
    dec h
    and $e7
    inc h
    and h
    rst $38
    ld h, a
    ld e, e
    cp h
    rst $38
    nop

jr_007_589f:
    add $39
    cp a
    rst $38
    ld b, b
    ld h, b
    sbc a
    sbc a
    ld h, b
    ld [hl], b
    adc a
    rst $08
    rlca
    jr nc, jr_007_5868

    ld b, l
    nop
    nop
    nop
    rst $38
    sub e
    ld l, h
    xor $11
    xor c
    ld d, [hl]
    ld d, [hl]
    xor c
    rst $38
    pop de
    ld l, $26
    reti


    rst $18
    jr nz, jr_007_58c3

jr_007_58c3:
    rst $38
    rst $38
    adc a
    ld a, a
    ld [hl], b
    sub b
    ret c

    jr nc, jr_007_58f4

    ret c

    rst $38
    ret z

    jr c, jr_007_5949

    adc b
    adc b
    ld a, b
    ld [$fff8], sp
    db $f4
    ei
    dec e
    ld c, $06
    inc bc
    inc bc
    ld bc, $e1ff
    ret nz

    ldh a, [$b0]
    or c
    ldh a, [$e1]
    pop bc
    rst $38
    pop hl
    ld e, $9e

Call_007_58ec:
    ld h, c
    ld h, c
    sbc [hl]
    ld l, a
    ldh a, [rIE]
    or b
    sbc a

jr_007_58f4:
    sbc [hl]
    sbc a
    sub e
    sub c
    db $10
    sub b
    rst $38
    sub c
    ld l, [hl]
    ld a, l
    add e
    jp Jump_000_363e


    call z, $ecff
    jr jr_007_589f

    ld [hl], b
    ret c

    ldh a, [$6c]
    jr c, @+$01

    push hl
    ld a, [$1d92]
    jr jr_007_592a

    rra
    db $10
    rst $38
    sub b
    sbc a
    sub b
    sbc a
    sbc b
    sub a
    inc de
    inc e
    rst $38
    adc [hl]
    ld a, a
    pop de
    ld sp, $e133
    ld h, [hl]
    jp $cdff


    add [hl]

jr_007_592a:
    adc l
    adc [hl]
    rst $00
    add e
    ld h, c
    ret nz

    rst $38
    sbc d
    ld a, l
    scf
    db $e4
    inc h
    rst $20
    rst $20
    ld b, h
    rst $38
    add $47
    ld b, e
    pop bc
    ld b, c
    ret nz

    add b
    ret nz

    rst $38
    inc a
    jp Jump_000_38c7


    jr c, @-$37

jr_007_5949:
    rst $20
    jr @+$01

    dec a
    jp $be47


    xor h
    ret c

    ret c

    ld [hl], b
    cp $a0
    ld [c], a
    sbc a
    sbc $22
    xor [hl]
    sbc $d0

jr_007_595d:
    ld [hl], b
    rst $38
    ld [hl], b
    jr nc, jr_007_5990

    ld a, $81
    ld a, [hl]
    ld a, [hl]
    add c
    rst $38
    add c
    cp $7e
    ld b, c
    ld h, e
    ld a, h
    inc e
    inc de

jr_007_5970:
    rst $38
    rla
    jr jr_007_59d4

    ld a, a
    ld d, l
    xor d
    ld d, [hl]
    xor c
    rst $38
    jp hl


    ld d, $6f
    sub b
    or b
    ld c, a
    rst $18
    jr nz, jr_007_5992

    ld h, c
    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop
    rst $38

jr_007_598b:
    rst $38
    nop
    sbc c
    ld h, [hl]
    db $76

jr_007_5990:
    adc c
    rst $08

jr_007_5992:
    jr nc, @+$01

    jr c, jr_007_595d

    rst $20
    jr @+$1e

    db $e3
    di
    inc c
    rst $38
    ld hl, sp+$08
    ld hl, sp+$08
    jr jr_007_598b

    add sp, $18
    rst $38
    jr c, jr_007_5970

    ret


    jr c, jr_007_5a24

    adc c
    or [hl]
    ld c, a
    rst $38
    inc bc
    ld bc, $070e
    dec b
    ld b, $c6
    add e
    rst $38
    db $e3
    pop bc
    di
    and c
    ld e, $f3
    db $ed
    ld e, $f5
    sub b
    rst $38
    ldh [$91], a
    rst $38
    ld [c], a
    pop de
    sub c
    ld d, c
    pop de
    rst $38
    xor [hl]
    ld a, a
    ld [hl], $1c
    dec de
    ld d, $91
    rra

jr_007_59d4:
    rst $38
    sbc l
    sub e
    sub e
    sbc [hl]
    sbc [hl]
    sub d
    sub [hl]
    sbc d
    rst $38
    ld l, c
    rst $30
    rra
    db $10
    inc de
    inc e
    inc a
    inc de
    rst $38
    inc hl
    inc a
    ld a, [hl]
    ld hl, $7947
    cp c
    rst $00
    rst $38
    ld e, $e1
    or b
    ld h, b
    sbc b
    ld a, b
    ld a, c
    sub b
    rst $38
    or e
    ld h, c
    and $c3
    dec c
    ld b, $08
    rrca
    rst $38
    di
    db $fc
    add $44
    add $46
    add [hl]
    add $fd
    ld b, [hl]
    cp $e0
    add $46
    ld a, [hl-]
    cp $b9
    ld b, a
    rst $38
    ld d, e
    ld [hl], b
    ld [hl], e
    ld h, e
    ld h, e
    ld h, e
    ld b, e
    ld h, d
    rst $38
    ld [hl], b
    jr nz, jr_007_5a59

    jr nc, @+$2f

    add hl, sp

jr_007_5a24:
    add $ff
    rst $38
    ld a, $12
    ld [de], a
    ld e, $1e
    ld [de], a
    ld [hl-], a
    ld e, $ff
    cpl
    ld [hl-], a

jr_007_5a32:
    pop de
    ld l, a

jr_007_5a34:
    cp a
    pop bc
    ret nz

    ccf
    rst $38
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld h, c
    ld a, $2e
    ld sp, $33ff
    inc e
    inc e
    inc de
    sub a
    jr jr_007_5a32

    or $ff
    rst $38
    nop
    inc sp
    call z, $23dc
    ld h, e
    sbc h
    rst $38
    cp [hl]
    ld b, c
    rst $00
    jr c, jr_007_5ad1

jr_007_5a59:
    add a
    sbc a
    ld h, b
    nop
    nop
    nop
    rst $38
    inc c
    di
    ei
    inc b
    call Call_000_3633
    jp z, $f2ff

    ld c, $1f
    ld [c], a
    pop hl
    rra
    nop
    rst $38
    rst $38
    rst $00
    jr c, jr_007_5a34

    ld b, b
    or b
    rst $08
    rst $38
    ld a, a
    db $fd
    nop
    rst $38
    ldh [$f3], a
    di
    ld [de], a
    di
    ld a, $c1

jr_007_5a84:
    rst $38
    pop bc
    ld a, $7f
    add b
    ret nz

    rst $38
    ccf
    jr nz, @+$01

    jr nz, jr_007_5acf

    db $db
    rst $20
    rrca
    db $fc
    ccf
    ret nz

    rst $38
    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    adc a
    ld [hl], b
    rst $38
    ld [hl], b
    adc a
    ld e, e
    cp h
    and h
    rst $20
    adc $31
    rst $38
    add hl, sp
    add $c7
    jr c, @+$7a

    add a
    adc a
    ld [hl], b
    rst $38
    ldh a, [rIF]
    dec c
    rst $38
    ld h, a
    ld a, [c]
    rst $20
    jr @+$01

    jr c, jr_007_5a84

    adc a
    ld [hl], b

jr_007_5abf:
    ld a, b
    add a
    add a
    ld a, b
    cp a
    ld hl, sp+$07
    or a
    ld hl, sp-$22
    ld c, a
    and b
    pop hl
    call z, Call_000_33ff

jr_007_5acf:
    scf
    ret z

jr_007_5ad1:
    ldh a, [rIF]
    ld d, $ef
    rst $18
    rst $30
    add hl, sp
    ld sp, $a0e0
    pop hl
    ld [hl], b
    adc a
    rst $08
    jr nc, jr_007_5abf

    adc $e1
    ld [hl], e
    adc h
    cp a
    rst $38
    and b
    db $e3
    add b
    ld a, a
    cp [hl]
    sbc h
    ldh [$3f], a
    dec a
    jp $fe87


    and b
    jp hl


    sbc e
    rst $30
    db $fc
    rst $08
    ld h, a
    and b
    push hl
    adc l
    ld a, [hl]
    ld a, [c]
    inc de
    rst $28
    ld [hl-], a
    di
    ld b, c
    pop bc
    and b
    jp hl


    rlca
    ld hl, sp+$00
    ld bc, $00ff
    nop
    nop
    rst $38
    rst $38
    nop
    inc a
    jp Jump_000_38c7


    ld sp, hl
    ld b, $ff
    ld c, $f1
    or $09
    add hl, de
    and $e7
    jr @+$01

    di
    ld [de], a
    jp nc, Jump_007_5333

    or d
    and d
    ld h, e
    rst $38
    di
    ld [hl+], a
    jp nc, Jump_000_3333

    jp nc, Jump_000_3ecd

    rst $38
    ld hl, sp+$10
    ld d, a
    or d
    rst $30
    dec h
    daa
    and $ff
    ldh a, [rNR41]
    add hl, de
    ldh a, [$ef]
    add hl, de
    add [hl]
    ld a, a
    rst $38
    ld h, a
    ld h, h
    ld h, [hl]
    dec h
    inc [hl]
    daa
    ld [hl], a
    inc sp
    rst $38
    ld e, b
    ld [hl], b
    xor h
    ret c

    rla
    db $ec
    di
    rrca
    rst $38
    sub b
    sub b
    sub e
    sub c
    or d
    sub e
    and d
    inc sp
    rst $38
    ld [hl], d
    inc sp
    db $d3
    ld [hl], d
    sub e
    ld a, [c]
    dec c
    cp $ff
    ld b, e
    ld b, c
    add c
    ret nz

    ld c, [hl]
    call z, $ca4e
    rst $38
    ld c, d
    adc $ce
    ld c, d
    ld c, d
    adc $b1

jr_007_5b7a:
    ld a, a
    rst $38
    ld h, b
    ret nz

    call z, $8c8c
    add h
    ret nz

    add b
    rst $38
    ldh [$c0], a
    cp b
    ldh a, [$8f]
    cp $65
    sbc e
    rst $30
    jp $c0c1


    rst $38
    ldh [$89], a
    ret


    ret


    ld c, c
    cp $ff
    pop hl
    or [hl]
    rst $38
    call z, Call_007_7b78
    inc sp
    ld [hl-], a
    rst $38
    jr nz, jr_007_5bd5

    ld hl, $3031
    jr c, jr_007_5bd9

    ld l, $ff
    inc a
    set 6, a
    ld h, c
    jr nz, jr_007_5c11

    jr nz, jr_007_5b7a

    rst $38
    ld h, [hl]
    and l
    rst $20
    and a
    push hl
    ld h, a
    ld h, l
    ld h, l
    rst $38
    ld h, a
    sbc d
    db $fd
    or d
    di
    db $d3
    ld [hl], d
    ld [hl], d
    rst $38
    ld d, e
    ld d, e
    ld [hl], c
    ld a, c
    ld d, c
    ld c, c
    ld a, b
    ld a, h
    rst $38
    ld c, b
    add a
    rst $38
    rst $38
    nop
    sbc [hl]

jr_007_5bd5:
    ld h, c
    ld [hl], c
    rst $38
    adc [hl]

jr_007_5bd9:
    adc a
    ld [hl], b
    ld a, b
    add a
    rst $00
    cp b
    cp h
    rlca
    jp $9c63


    nop
    nop
    nop
    rst $38
    ld e, $e1
    di
    inc c
    rrca
    ldh a, [$f8]
    rlca
    rst $38
    add a
    ld a, b
    ld a, h
    add e
    jp Jump_000_003c


    rst $38
    rst $38
    ld [hl-], a
    call Call_000_02fd
    ld a, l
    cp $87
    add e
    rst $38
    add c
    add b
    ret nz

    add b
    ld c, [hl]
    call z, $ce4b
    rst $38
    ld a, c
    add [hl]
    add $39
    cp a

jr_007_5c11:
    ld b, b
    ld h, b
    sbc a
    rst $38
    rst $18
    ldh [$60], a
    ccf
    scf
    jr jr_007_5c35

    rrca
    rst $38
    call z, Call_000_3a33
    push bc
    call nz, $793b
    add [hl]
    rst $38
    add e
    ld a, h
    push hl
    dec de

jr_007_5c2b:
    ld l, e
    or $f6
    sbc h

jr_007_5c2f:
    rst $38
    dec sp
    call nz, $837c
    rst $00

jr_007_5c35:
    jr c, jr_007_5c2f

    rlca
    rst $38
    adc h
    ld a, a
    or d
    db $d3
    ld a, [c]
    ld [hl], e
    ld b, c
    ld b, c
    rst $38
    jr jr_007_5c2b

    or d
    ld c, l
    cpl
    ret nc

    ld l, b
    sub a
    rst $38
    reti


    daa
    sub e
    ld l, [hl]
    and $1c
    ld c, $f4
    rst $38
    ld a, [de]
    push hl
    ld h, c
    sbc [hl]
    ld h, [hl]
    ld sp, hl
    call nc, $ff9b
    sub e
    inc e
    ld a, [hl-]
    dec d
    ld h, e
    inc a
    dec [hl]
    dec de
    rst $38
    inc [hl]
    set 7, h
    inc bc
    inc bc
    db $fc
    cp $01
    rst $38
    ld bc, $7ffe
    add b
    ld [hl], b
    rst $38
    res 1, a
    rst $38
    ld a, c
    add [hl]
    ld b, [hl]
    cp c
    ccf
    ret nz

    nop
    rst $38
    rst $38
    adc a
    ld [hl], b
    ld h, b
    sbc a
    add $ff
    db $eb
    add hl, sp
    rst $38
    call z, Call_000_3b33
    call nz, Call_000_38c7
    ld a, b
    add a
    rst $38
    adc a
    ld [hl], b
    ld hl, sp+$07
    push bc
    ei
    rst $20
    ld a, $ef
    di

jr_007_5c9d:
    inc c
    inc a
    jp $e3f0


    or $0f
    adc a
    rst $38
    ld sp, hl
    reti


jr_007_5ca8:
    ld [hl], c
    ld e, $e1
    pop hl
    ld e, $9f
    db $fd
    ld h, b
    ld [hl], b
    ldh [rNR41], a
    or b
    ld c, a
    ld a, a
    add b
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    rst $38
    nop
    sbc [hl]
    ld h, c
    ld h, c
    sbc [hl]
    rst $18
    jr nz, @+$01

    jr nz, jr_007_5ca8

    rst $18
    jr nz, jr_007_5cfc

    rst $08
    rst $08
    jr nc, @+$01

    adc $4c
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld c, a
    call z, $cfff
    ld c, [hl]
    ret nz

    ld b, b
    ld b, b
    ret nz

    cp a
    ld a, a
    rst $38
    dec de
    ld c, $36
    inc e
    ld l, h
    jr c, @+$3e

    jr @+$01

    inc d
    inc e
    ld a, $14
    db $e3
    ld a, a
    sbc [hl]
    pop hl
    rst $38
    inc e
    ld [$c8d9], sp
    or b
    jr jr_007_5d61

    ld a, h

jr_007_5cfc:
    rst $38
    ld l, h
    jr c, jr_007_5d19

    jr jr_007_5c9d

    add hl, de
    and $ff
    rst $38
    ld a, [c]
    ld [hl], e
    or e
    jp nc, $7352

    ld [hl], e
    ld d, c
    rst $38
    reti


    ld [hl], c
    adc c
    ld hl, sp+$1c
    add sp, $37
    rst $08
    rst $38
    ld h, e

jr_007_5d19:
    sbc [hl]
    add c
    ld a, a
    ld e, $e1
    push af
    dec bc
    rst $38
    scf
    adc $88
    ld hl, sp-$78
    ld hl, sp+$07
    rst $38
    rst $38
    dec de
    ld c, $8e
    ld b, $ce
    add h
    sbc d
    inc c
    rst $38
    inc sp
    ld e, $65
    dec sp
    ret nz

    ld a, a
    or b
    rst $08
    rst $38
    ld c, $0c

jr_007_5d3e:
    ld [hl], l
    inc a
    call $7179
    add hl, sp
    rst $38
    inc c
    ld [$0c8e], sp
    ei
    adc $31
    rst $38
    rst $38
    jr @+$1a

    reti


    adc b
    ret


    ld c, c
    reti


    adc c
    rst $38
    ld de, $6919
    add hl, sp
    ret


    ld a, c
    sub [hl]
    rst $28
    rst $38
    inc l

jr_007_5d61:
    jr c, jr_007_5d3e

    di
    ld [hl-], a
    ldh [$f1], a
    ld hl, $d1ff
    jr nc, jr_007_5da4

    ret nc

    ld c, [hl]
    cp h
    ld [hl], e
    adc a
    rst $38
    ld [hl], e
    ld hl, $2366
    pop hl
    ld h, c
    sbc c
    pop af

jr_007_5d7a:
    rst $38
    or e
    pop hl
    ld h, [hl]
    ld h, e
    ld l, h
    ld h, a
    sbc c
    cp $ff
    rst $38
    nop
    rst $00
    jr c, @+$3a

    rst $00
    rst $20
    jr @+$01

    inc a
    jp Jump_000_3cc3


    ld a, [hl]
    add c
    pop bc
    ld a, $00
    nop
    nop
    rst $38
    inc a
    jp $1ce3


    sbc l
    ld h, e
    ld [hl], d
    adc [hl]
    rst $38
    rst $08
    ld [hl-], a

jr_007_5da4:
    ld sp, $ffcf
    ld bc, $ff00
    rst $38
    ld c, $f1
    rst $38
    nop
    ret nz

    rst $38
    ld a, a
    ld hl, $21ff
    ccf
    ccf
    ld [de], a
    sub [hl]
    ld a, [de]
    sbc [hl]
    adc h

jr_007_5dbc:
    rst $38
    db $ec
    inc de
    ld [hl-], a
    call $f3ec
    sub c
    rra
    rst $38
    dec sp
    ld d, $26
    inc a
    ld a, h
    jr z, jr_007_5e19

    ld a, b
    rst $38
    ld l, [hl]
    sub c
    ld e, b
    and a
    call nc, $adeb
    ld [hl-], a
    rst $38
    add hl, sp
    ld h, $60
    ccf
    jp nz, $667d

    add hl, sp
    rst $38
    ld h, b
    sbc a
    pop hl
    ld e, $8f
    ld a, a
    sub b
    ld [hl], b
    rst $38
    jr c, jr_007_5dbc

    ld l, b
    sbc b
    ld a, c
    adc c
    ld c, c
    cp c
    rst $38
    rst $20
    jr jr_007_5d7a

    ld a, e
    rst $20
    ld hl, sp+$3a
    dec e
    rst $38
    dec c

jr_007_5dfd:
    ld b, $06
    inc bc
    db $e3
    pop bc
    ld [hl], e
    pop af
    rst $38
    daa
    ret c

    rst $28
    db $10
    sbc [hl]
    ld h, c
    ld [hl], b
    adc a
    rst $38
    rst $00
    jr c, jr_007_5e3f

    pop de
    call Call_000_3e3e
    di
    rst $38
    ld c, $f1

jr_007_5e19:
    add a
    ld a, b
    ld de, $58ee
    and a
    rst $38
    db $10
    rst $28
    cp h
    ld b, e
    sbc h
    ld a, a
    ld [hl], d
    db $e3
    rst $38
    ld l, h
    sub e
    ld [hl], d
    adc l
    inc e
    db $e3
    jr nz, @-$1f

    rst $38
    sbc c
    ld h, [hl]
    ld de, $31ee
    rst $38
    ld_long a, $ffce
    ld l, a
    sub b
    ld e, c
    and [hl]

jr_007_5e3f:
    or $09
    rst $08
    jr nc, @+$01

    cp b
    ld b, a
    rst $20
    jr jr_007_5dfd

    ei
    ld sp, hl
    ld c, a
    rst $38
    ld c, $f1
    di
    inc c
    inc d
    ei
    cp [hl]
    ld l, c
    rst $38
    ld l, e
    call z, Call_007_4bcd
    ld c, e
    adc $ce
    adc h
    rst $38
    ld a, a
    add b
    adc h
    ld [hl], e
    di
    inc c
    ld e, $e1
    rst $38
    pop hl
    ld e, $bf
    ret nz

    call c, Call_007_4063
    ld a, a
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_007_5eb5

    adc $ff
    call z, $408c
    ret nz

    pop hl
    ld b, b
    ld hl, $ffe1
    or e
    ld h, c
    jp nc, $1f33

    ld a, [c]
    db $ed
    ld e, $ff
    or $4c
    cp e
    add $81
    rst $38
    ld [hl], e
    adc [hl]
    rst $38
    adc [hl]
    ld a, h
    ldh a, [rNR10]
    ld de, $eff0
    rra
    rst $38

jr_007_5eaa:
    scf
    jr jr_007_5ecc

    ld [$0b9c], sp
    scf
    jr @+$01

    ld h, [hl]
    ccf

jr_007_5eb5:
    ret


    ld a, c
    xor l
    reti


    ld b, $ff
    rst $38
    ld a, c
    adc c
    jr c, @-$36

    jr jr_007_5eaa

    reti


    add hl, hl
    rst $38
    add hl, de
    jp hl


    dec sp
    ret


    xor d
    ld e, e
    inc b

jr_007_5ecc:
    rst $38
    rst $38
    jp nz, $0683

    inc bc
    dec c
    rrca
    adc l
    rlca
    rst $38
    and $c3
    scf
    ld [c], a
    dec e
    or $28
    rst $18
    rst $38
    ld h, e
    pop bc
    db $db
    sbc c
    sub [hl]
    inc bc
    adc l
    rrca
    rst $38
    adc h
    add a
    jp nz, $7283

    db $e3
    inc e
    rst $38
    rst $38
    jp $9d83


    adc a
    or e
    ld e, $9c
    ld c, $ff
    jp Jump_007_6382


    jp $73be


    ld l, h
    sbc a
    rst $38
    add [hl]
    ld b, $76
    ld [hl+], a
    ld d, d
    ld [hl], d
    db $76
    ld h, d
    rst $38
    inc b
    ld b, $9a
    ld c, $f6
    sbc d
    ld h, c
    rst $38
    rst $38
    dec bc
    ld c, $76
    inc a
    ld c, h
    ld a, b
    ld c, h
    ld a, b
    rst $38
    ld b, [hl]
    ld a, h
    ld c, e
    db $76
    ld c, c
    ld [hl], a
    adc [hl]
    pop af
    rst $38
    inc c
    ld [$0809], sp
    ret z

    adc b
    adc $4c
    cp $f8
    pop hl
    res 1, c
    db $76
    rst $38
    rst $38
    ld b, b
    add c
    rst $38
    cp $7f
    ld b, b
    ld b, b
    ld a, a
    rst $38
    ld b, b
    add b
    rra
    rst $38
    ccf
    ret nz

    ldh [$1f], a
    nop
    nop
    nop
    rst $38
    rst $28
    db $10
    sbc d
    ld h, l
    db $76
    adc c
    call $ff32
    dec sp

jr_007_5f57:
    call nz, Call_000_09f6
    add hl, de
    and $00
    rst $38
    rst $38
    ld a, $c1
    jp $fc3c


    inc bc
    sbc c
    ld h, a
    rst $38
    ld l, e
    sub [hl]
    add $3c
    db $fc
    ld [$f80c], sp
    rst $38
    ld h, e
    sbc h
    sbc b
    ld h, a
    pop de
    xor $a7
    ccf
    rst $38
    add hl, sp
    jr z, jr_007_5fe5

    jr c, jr_007_5f57

    ld l, b
    ld l, c
    add hl, sp
    rst $38
    ret nc

    cpl
    add hl, sp
    add $c3
    inc a
    ld [hl], e
    adc h
    rst $38
    add d
    db $fd
    jp nc, Jump_000_226d

    dec a
    or e
    sbc a
    rst $38
    ld b, [hl]
    cp c
    ret nz

    ccf
    ld b, b
    cp a
    and b
    ld e, a
    rst $38
    ret z

    scf
    ldh a, [rIF]
    ret c

    rst $20
    db $e3
    ccf
    rst $38
    ld a, a
    add b
    ld [hl], b
    adc a
    ld c, a
    or b
    ld [hl], c
    adc [hl]
    rst $38
    ld a, $c1
    inc bc
    db $fc
    ret nz

    rst $38
    db $e3
    ccf
    rst $38
    xor $11
    sbc d
    ld h, l
    ld h, $f9
    ld a, h
    db $d3
    rst $28
    ret c

    sub a
    sub b
    sbc a
    cp $e0
    rra
    ld h, d
    sbc l
    rst $38
    ld b, e
    cp h
    rlca
    rst $38
    inc e
    ld hl, sp+$30
    ldh [rIE], a
    ld h, a
    jp $c74c


    ret c

    adc a
    rrca
    ldh a, [rIE]
    sbc [hl]
    ld h, c
    ld d, c
    xor [hl]
    adc a
    ldh a, [$c8]

jr_007_5fe5:
    or a
    rst $38
    call z, Call_000_03b3
    rst $38
    rrca
    db $fc
    swap h
    rst $38
    inc e
    db $e3
    sbc e
    ld a, h
    dec l
    and $26
    push hl
    rst $38
    ld h, [hl]
    and l
    ld h, a
    and a
    and h
    db $e4
    or e
    ld c, h
    rst $38
    call c, Call_007_5723
    cp b
    cp b
    ld l, a
    ld l, a
    ret z

    rst $38
    adc $89
    sub c
    sbc [hl]
    ld [$9f0f], sp
    ld h, b
    rst $38
    ld [hl], b
    adc a
    rst $08
    jr nc, jr_007_604a

    adc $fe
    ld bc, $033f
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    dec sp
    call nz, Call_000_38c7
    ld a, b
    add a
    rst $38
    adc a
    ld [hl], b
    ld hl, sp+$07
    rlca
    ld hl, sp-$04
    inc bc
    rst $38
    or $0c
    dec sp
    add $c5
    dec sp
    ld a, e
    add [hl]
    rst $38
    adc [hl]
    ld a, h
    ldh a, [rNR10]
    ld de, $eff0
    rra

jr_007_604a:
    rst $38
    dec [hl]
    add hl, de
    inc e

jr_007_604e:
    inc c
    sbc h
    inc c
    dec [hl]
    inc e
    rst $38
    ld l, l
    dec [hl]
    push de
    ld l, l
    cp l
    push bc
    ld b, d
    cp a
    rst $38
    or [hl]
    inc e
    ld l, l
    add hl, sp
    ret


    ld [hl], b
    cp b
    ret nc

    rst $38
    ld [$7cf8], sp
    adc b
    rst $00
    ld a, $3d
    jp Jump_000_36ff


    inc e
    cp l
    sbc c
    ld l, c
    jr nc, jr_007_604e

    ldh a, [rIE]
    ret z

    ld a, b
    inc a
    jr z, jr_007_60a4

    ld a, $c1
    rst $38
    rst $38
    ld [hl], $1c
    cp h
    sbc b
    ld l, c
    ld sp, $f0d9
    rst $38
    call z, Call_000_2678
    inc a
    inc hl
    ccf
    add $f9
    rst $38
    db $10
    rra
    inc de
    dec e
    sbc e
    dec d
    sub d
    sbc l
    rst $38
    inc de
    inc e
    ld d, $19
    sub a
    jr @-$1a

    ei

jr_007_60a4:
    rst $38
    sub [hl]
    sbc c
    sbc l
    inc de
    sbc a
    rrca
    jp $ff81


    ld h, b
    ret nz

    or b
    ld h, b
    ld e, $fc
    jp $ff3f


jr_007_60b7:
    ret c

    ldh a, [$37]
    ld [hl-], a
    scf
    dec h
    daa
    ld h, $ff
    jr nc, @+$22

    add hl, sp
    jr nc, jr_007_60f4

    add hl, sp
    add $ff
    rst $38
    ld h, h
    ld h, h
    ld h, a
    ld h, $25
    daa
    ld h, l
    daa
    rst $38
    ld b, a
    ld h, l
    and l
    rst $20
    ld h, a
    and l
    ld a, [de]
    db $fd
    rst $38
    rrca
    ld [$3a35], sp
    inc hl
    inc a
    ld a, $21
    rst $38
    ld hl, $3f3e
    jr nz, jr_007_6109

    ccf
    rst $18
    ldh [rIE], a
    rst $38
    nop
    add $39
    cp a
    ld b, b
    ld h, b

jr_007_60f4:
    sbc a
    rst $38
    sbc a
    ld h, b
    ld [hl], b
    adc a
    rst $08
    jr nc, jr_007_60b7

    ld b, l
    nop
    nop
    nop
    rst $38
    sub e
    ld l, h
    xor $11
    xor c
    ld d, [hl]
    ld d, [hl]

jr_007_6109:
    xor c
    rst $38
    pop de
    ld l, $26
    reti


    rst $18
    jr nz, jr_007_6112

jr_007_6112:
    rst $38
    rst $38
    sbc b
    ld h, a
    ld a, a
    add b
    push bc
    dec sp
    ld a, $c2
    rst $38
    jp Jump_007_7d3e


    add e
    add a
    ld a, c
    ld bc, $ffff
    inc a
    jp Jump_000_38c7


    db $fc
    rst $38
    rlca
    inc bc
    rst $38
    ld bc, $0000
    nop
    inc a
    jr c, jr_007_6164

    ld a, $ff
    pop hl
    ld e, $9e
    ld h, c
    ld h, c
    sbc [hl]
    ld e, a
    and b
    rst $38
    and b
    rst $18
    db $db
    ld a, h
    ld l, a
    daa
    ld h, l
    inc h
    rst $38
    sub c
    ld l, [hl]
    ld a, h
    add e
    ret nz

    ccf
    dec a
    jp $e3ff


    ld e, $96
    ld l, h
    ld a, h
    adc b
    db $ec
    ld hl, sp-$01
    ld d, l

jr_007_615d:
    xor d
    ld d, d
    xor l
    ld l, b
    rst $30
    rst $18
    sub b

jr_007_6164:
    rst $38
    db $10
    rra
    db $10
    rra
    ret c

    ld d, a
    db $d3
    call c, $8fff
    ld [hl], b
    adc $31
    inc c
    rst $38
    jp c, $ff33

    or e
    ld h, d
    ld h, a
    jp nz, $86cd

    add $83
    rst $38
    adc [hl]
    ld [hl], c
    ccf
    ret nz

    inc [hl]
    ei
    rst $28
    ld c, b
    rst $38
    ld c, e
    call z, $8acd
    adc h
    adc a
    add a
    add e
    cp $a0
    pop hl
    jr c, jr_007_615d

    rst $20
    jr jr_007_61d5

    jp $dfc3


    inc a
    db $76
    adc a
    rra
    ld sp, hl
    and b
    db $e3
    rst $18
    jr nz, @+$01

    inc l
    rst $18

jr_007_61a8:
    db $d3
    ld [hl-], a
    ld [hl-], a
    di
    ld b, c
    pop bc
    rst $38
    add c
    ld a, [hl]
    ld a, [hl]
    add c
    pop bc
    ld a, $3e
    pop bc
    rst $38
    db $e3
    inc e
    sbc h
    ld h, e
    ld [hl], a
    adc b
    nop
    rst $38
    rst $38
    ld d, l
    xor d
    ld d, [hl]
    xor c
    jp hl


    ld d, $6f
    sub b
    rst $38
    or b
    ld c, a
    rst $18
    jr nz, jr_007_6230

    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop

jr_007_61d5:
    rst $38
    rst $38
    nop
    sbc c
    ld h, [hl]
    db $76
    adc c
    rst $08
    jr nc, @+$01

    jr c, jr_007_61a8

    rst $20
    jr @+$1e

    db $e3
    di
    inc c
    rst $38
    rst $38
    ld bc, $0df3
    dec e
    db $e3
    rst $20
    add hl, de
    rst $38
    dec sp
    push bc
    call $7733
    adc c
    cp b
    ld b, a
    rst $38
    jr c, @+$32

    nop
    nop
    ld bc, $3101
    jr nz, @+$01

    inc a
    jr c, jr_007_626c

    inc a
    ld e, e
    ld h, [hl]
    and c
    rst $18
    rst $38
    ld b, h
    ld h, h
    db $e4
    ld h, h
    and h
    db $e4
    and h
    db $e4
    db $fd
    db $e4
    ld hl, sp-$20
    or h
    db $e4
    ld e, e
    cp a
    ld [hl], $1c
    rst $38
    dec de
    ld c, $e9
    rst $08
    db $ed
    xor e
    xor e
    xor $ff
    xor $aa
    xor [hl]
    ld_long $ff11, a
    rra
    db $10

jr_007_6230:
    rst $38
    inc de
    inc e
    inc a
    inc de
    inc hl
    inc a
    ld a, [hl]
    ld hl, $47ff
    ld a, c
    ld sp, hl
    ld b, a
    sbc [hl]
    pop hl
    ld h, e
    pop bc
    rst $38
    or c
    ld h, b
    ld e, c
    or b
    or e
    ld h, c
    and $c3
    rst $38
    dec c
    ld b, $18
    rrca
    di
    db $fc
    ld bc, $ff80
    sbc b
    sub b
    sbc h
    sbc b
    inc d
    sbc h
    sbc h
    sub h
    rst $38
    sbc h
    sub h
    ld h, h
    db $fc
    cp e
    ld b, a
    ldh a, [$a0]
    rst $38
    xor [hl]
    db $e4
    ld [$cece], a

jr_007_626c:
    call z, $c0a0
    rst $38
    ld [hl], e
    ld h, c
    ld e, [hl]
    ld [hl], e
    xor l
    sbc $b2
    di
    rst $38
    di
    ld d, d
    ld d, d
    ld [hl], e
    di
    ld d, c
    sbc c
    pop af
    rst $38
    add hl, hl
    ret c

    db $fc
    ld [$3fc7], sp
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld bc, $fefe
    ld bc, $fc03
    rst $38
    db $fc
    add e
    and a
    ret c

    add hl, sp
    add $ff
    nop
    rst $38
    inc sp
    call z, $23dc
    ld h, e
    sbc h

Jump_007_62a3:
    cp [hl]
    ld b, c
    ccf
    rst $00
    jr c, jr_007_6321

    add a
    sbc a
    ld h, b
    nop
    nop
    nop
    rst $38
    jr c, @+$7e

    ld a, h
    ld b, [hl]
    ld e, d
    ld h, a
    dec a
    ld h, e
    rst $38
    ld a, $21
    dec sp
    inc h
    dec a
    ld h, $3e
    daa
    db $fd
    ccf
    cp $e0
    ld a, $67
    ld e, [hl]
    ld h, [hl]
    db $76
    ld c, [hl]
    rst $38
    ld a, $7e
    inc e
    ld a, $00
    nop
    ld h, a
    rst $38
    rst $38
    ei
    sbc h
    cp $99
    rst $30
    sbc c
    rst $38
    sub c
    rst $38
    cp $91
    ld a, a
    sub b
    db $fd
    ld d, $ff
    ld d, $ff
    ld a, e
    sub [hl]
    rst $38
    sub b
    cp $91
    cp c
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    nop
    nop
    adc [hl]
    rst $18
    rst $38
    ld d, a
    ld sp, hl
    rst $28
    pop af
    cp a
    pop hl
    ld e, a
    pop hl
    rst $38
    rst $38
    ret


    xor a
    reti


    ld a, a
    reti


    rst $38
    ld b, b
    rst $38
    rst $38
    ld b, b
    ld [hl], a
    ld sp, hl
    rst $38
    ld sp, hl
    rst $08
    jp hl


    ld e, a
    add a
    rst $08
    inc bc
    add a
    nop
    rst $38
    pop hl
    add b
    rst $38
    ldh [$fd], a
    add c
    rst $38

jr_007_6321:
    pop hl
    add b
    add c
    add b
    ret nz

    ret nz

    ld b, b
    rst $38
    ret nz

    ld b, b
    pop bc
    jp $c283


    add e
    add d
    rst $38
    add c
    add e
    nop
    add c
    nop
    nop
    jr jr_007_6376

    rst $38
    inc l
    db $76
    ld e, [hl]
    and $b6
    adc $6e
    sbc a
    rst $38
    ld [hl], l
    adc a
    cp d
    rst $00
    ld e, l
    db $e3
    dec l
    ld [hl], e
    rst $38
    ld e, e
    rst $20
    or a
    rst $08
    xor $1f
    call c, $ef3e
    ld hl, sp-$04
    ldh a, [$f8]
    ret nz

    ld [c], a
    nop
    jr nc, @+$7a

    rst $38
    ld a, b
    ld c, h
    ld hl, sp-$34
    cp $07
    rst $38
    rst $08
    rst $38
    ld a, [hl]
    rst $08
    ei
    adc $f6
    rst $08
    ld e, l
    rst $20
    rst $38
    ld a, [hl-]
    ld h, a
    cpl
    inc sp

jr_007_6376:
    rra
    ccf
    ld c, $1f
    db $fc
    ldh [$e3], a
    cp d
    pop hl
    ld h, h
    rst $38
    cp e

Jump_007_6382:
    rst $00
    ld a, a
    add e
    rst $38
    rst $38
    inc sp
    rst $18
    inc sp
    rst $38
    inc bc
    ld a, l
    add e
    rst $38
    rst $18
    pop hl
    dec sp
    db $fd
    rla
    ccf
    inc bc
    rlca
    cp $c0
    rst $20
    ld sp, hl
    rst $08
    rst $38
    ld b, $ff
    adc $7f
    rst $38
    adc $7a
    ld c, a
    ld [hl], l
    ld c, a
    ld e, l
    rst $20
    cp d
    ld a, a
    rst $20
    xor a
    or e
    sbc a
    cp a
    ld c, $9f
    ret nz

    push hl
    cp $5b
    ldh [$c0], a
    add $6f
    rst $28
    ld l, c
    rst $28
    ld l, c
    rst $38
    call $b76b
    ld a, e
    ld a, e
    add a
    or a
    rst $08
    cp a
    ld c, a
    rst $38
    inc a
    ld a, a
    jr jr_007_640a

    and b
    push hl
    jr nc, @+$01

    ld a, b
    ld c, b
    db $fc
    cp h
    call z, $9c6c
    call c, Call_000_3cf7
    ld hl, sp+$0c
    ld hl, sp-$1d
    cp b
    ld a, h
    ldh a, [$f8]
    rrca
    ld h, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop

    ld hl, $6422
    ld de, $0401
    ld b, $00
    xor a
    ldh [$8a], a
    ldh [$8b], a
    call Call_007_741e
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a

jr_007_640a:
    ld a, [$cabd]
    call Call_007_7c00
    bit 7, a
    jr nz, jr_007_6417

    ld [$cabd], a

jr_007_6417:
    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af

jr_007_6421:
    ret


    ld c, h
    ld h, h

    db $d2, $6b, $bd, $64, $43, $6c, $90, $65, $0d, $6d, $64, $66, $e7, $6d, $38, $67
    db $bb, $6e, $04, $68, $8e, $6f, $de, $68, $68, $70, $b2, $69, $42, $71, $81, $6a
    db $10, $72

    ld e, h
    ld l, e

    db $e6, $72, $5c, $73

    rst $38
    inc c
    di
    ei
    inc b
    call z, Call_000_3733
    ret z

    rst $38
    ldh a, [rIF]
    rra
    ldh [$e1], a
    ld e, $00
    rst $38
    rst $38
    rst $00
    jr c, jr_007_6421

    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld a, b
    add a
    adc a
    ld [hl], b
    di
    inc c

jr_007_646e:
    nop
    rst $38
    rst $38
    ld a, $c1
    pop bc
    ld a, $7f
    add b
    add b
    ld a, a
    rst $38
    ld a, a
    add b
    ret nz

    ccf
    ccf
    ret nz

    nop
    rst $38
    rst $38
    ccf
    ret nz

    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_007_6493

jr_007_6493:
    rst $38
    ccf
    adc $31
    add hl, sp
    add $c7
    jr c, jr_007_646e

    pop hl
    cp [hl]
    pop hl
    rst $38
    nop
    rst $38
    rst $20
    jr @+$3a

    rst $00
    adc a
    ld [hl], b
    rst $38
    ld a, b
    add a
    add a
    ld a, b
    ld hl, sp+$07
    rlca
    ld hl, sp+$03
    nop
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop
    nop

    db $ff, $ff, $00, $3c, $c3, $c7, $38, $f9, $06, $ff, $0e, $f1, $f6, $09, $19, $e7
    db $e7, $1a, $ff, $ed, $1e, $de, $33, $33, $e1, $63, $c1, $ff, $c6, $83, $9d, $8f
    db $91, $1f, $1f, $11, $ff, $6f, $f0, $d0, $9f, $9f, $90, $91, $1e, $ff, $1a, $1d
    db $0d, $06, $06, $03, $03, $01, $ff, $ff, $00, $9a, $65, $76, $89, $cb, $37, $ff
    db $2f, $dc, $d8, $30, $30, $e0, $60, $c0, $ff, $ff, $00, $c3, $3c, $fc, $03, $1a
    db $e5, $ff, $9b, $ff, $e7, $64, $64, $60, $60, $60, $ff, $ff, $00, $90, $6f, $00
    db $ff, $0f, $f0, $ff, $78, $87, $87, $f8, $f8, $47, $63, $5c, $ff, $bc, $7f, $47
    db $c3, $61, $c0, $a0, $60, $ff, $20, $e0, $e3, $22, $23, $e3, $e2, $23, $ff, $ff
    db $00, $5c, $a3, $c7, $f8, $68, $37, $ff, $37, $18, $1a, $0d, $8d, $07, $87, $86
    db $ff, $ff, $00, $70, $8f, $cf, $30, $19, $fe, $ff, $7c, $e7, $c7, $83, $83, $03
    db $02, $03, $fe, $a0, $e1, $5a, $bd, $e5, $26, $e6, $e7, $01, $f6, $ff, $e0, $e6
    db $e7, $a0, $e3, $96, $6f, $5f, $b9, $ff, $b1, $60, $60, $c0, $c0, $80, $ff, $00
    db $ff, $9e, $61, $71, $8e, $8f, $70, $78, $87, $3f, $c7, $b8, $bc, $c3, $e3, $9c
    db $00, $00

    nop

    db $ff, $1f, $e2, $f1, $0f, $0f, $f1, $f8, $07, $ff, $87, $78, $7c, $83, $c3, $3c
    db $00, $ff, $ff, $13, $1d, $1d, $13, $9e, $0f, $c1, $81, $ff, $61, $c1, $b1, $61
    db $99, $71, $0e, $ff, $f7, $19, $11, $19, $ff, $e3, $18, $18, $18, $e8, $ff, $f8
    db $07, $ff, $cc, $84, $8c, $8c, $8c, $ff, $84, $00, $80, $e0, $c0, $b8, $f0, $8f
    db $ff, $fe, $19, $e7, $63, $61, $66, $63, $65, $ff, $66, $44, $67, $26, $25, $26
    db $25, $24, $ff, $27, $d8, $ff, $98, $e7, $b2, $4d, $2f, $ff, $d0, $38, $ff, $ee
    db $45, $c6, $45, $ef, $ff, $44, $38, $ff, $22, $e3, $63, $a3, $e3, $ff, $22, $a0
    db $60, $20, $e0, $e0, $20, $e3, $ff, $21, $1e, $ff, $86, $84, $8c, $04, $18, $ff
    db $0c, $34, $1c, $63, $3e, $dd, $63, $80, $ff, $ff, $40, $bf, $63, $22, $62, $63
    db $63, $ff, $22, $02, $03, $01, $01, $c1, $81, $79, $ff, $f1, $0e, $ff, $e5, $27
    db $25, $e7, $e7, $ff, $23, $62, $a3, $b3, $61, $d1, $31, $19, $f6, $f0, $e0, $98
    db $08, $87, $e0, $08, $00, $00, $c0, $ff, $80, $70, $e0, $1e, $fc, $03, $ff, $9e
    db $ff, $e1, $e1, $9e, $9f, $e0, $a0, $df, $5f, $7f, $60, $70, $4f, $7f, $40, $80
    db $ff, $00, $00

    nop

    db $ff, $ed, $1e, $97, $73, $70, $90, $d8, $30, $ff, $2c, $d8, $d7, $2f, $30, $cf
    db $cf, $30, $df, $ff, $00, $ff, $ff, $00, $ff, $e2, $cf, $cf, $ff, $4f, $c8, $c9
    db $4e, $ff, $00, $96, $e9, $ff, $69, $56, $6f, $50, $76, $4f, $9f, $f9, $ff, $31
    db $e0, $e0, $40, $9f, $60, $be, $41, $ff, $29, $d6, $36, $c9, $71, $8e, $76, $f9
    db $ff, $9d, $8b, $8b, $ce, $ff, $00, $7f, $80, $ff, $c4, $3b, $30, $cf, $b6, $7f
    db $4f, $c9, $ff, $c9, $e0, $20, $20, $60, $9f, $80, $7f, $ff, $1f, $e0, $f7, $08
    db $bc, $43, $60, $ff, $ff, $bc, $9f, $86, $83, $06, $f9, $00, $ff, $ff, $f8, $07
    db $cd, $3e, $3e, $f3, $63, $c1, $ff, $c1, $81, $81, $01, $ff, $00, $fe, $01, $ff
    db $01, $fe, $0e, $f1, $c3, $3c, $fb, $ff, $ff, $07, $04, $00, $00, $f9, $06, $55
    db $aa, $ff, $e8, $17, $6c, $93, $b7, $4f, $4d, $b8, $ff, $98, $f0, $f0, $60, $ff
    db $00, $ee, $11, $ff, $a9, $56, $d6, $29, $50, $af, $b7, $f9, $ef, $de, $4f, $43
    db $41, $a0, $e1, $d8, $3f, $27, $ef, $e4, $e6, $e7, $01, $ff, $e0, $66, $e7, $ff
    db $ff, $00, $c7, $38, $38, $c7, $b7, $78, $6c, $7f, $cb, $cb, $8c, $8e, $09, $31
    db $1e, $00, $00

    nop

    db $ff, $3c, $c3, $e3, $1c, $9e, $61, $71, $8e, $ff, $cf, $30, $32, $cd, $ff, $00
    db $00, $ff, $ff, $4e, $c9, $4f, $c8, $c9, $8e, $8e, $89, $ff, $cb, $8c, $4c, $cb
    db $cf, $48, $30, $ff, $ef, $4c, $c0, $cc, $8c, $ff, $e0, $88, $c0, $80, $ff, $63
    db $c1, $36, $e7, $18, $ff, $ce, $4a, $ff, $4a, $4e, $4e, $44, $e0, $40, $a0, $e0
    db $ff, $31, $e0, $1b, $f1, $0e, $ff, $27, $23, $ff, $6d, $27, $4b, $6d, $4b, $4d
    db $c9, $4f, $ff, $8d, $cb, $49, $cf, $32, $fd, $03, $81, $df, $01, $01, $19, $11
    db $19, $ff, $e4, $e6, $ff, $ff, $31, $11, $31, $31, $31, $11, $01, $01, $7f, $80
    db $00, $e0, $c0, $bc, $78, $07, $9d, $e0, $bf, $00, $00, $10, $10, $12, $92, $ff
    db $e3, $6d, $ff, $ff, $64, $44, $41, $40, $47, $43, $46, $ff, $47, $43, $41, $61
    db $40, $78, $70, $8f, $ff, $ff, $c1, $40, $80, $c0, $0c, $88, $8c, $fb, $8c, $0c
    db $8a, $e1, $8c, $73, $ff, $a6, $e6, $ff, $e5, $a6, $a7, $e3, $e2, $a3, $b3, $e1
    db $ff, $d1, $b1, $f1, $91, $0e, $ff, $7f, $30, $ff, $1c, $0b, $8b, $0c, $8e, $89
    db $99, $0e, $3f, $37, $18, $6c, $33, $c0, $ff, $00, $00

    nop

    db $ff, $ef, $1f, $fb, $12, $12, $f0, $f0, $20, $ff, $a0, $60, $20, $e0, $e5, $40
    db $45, $c5, $ff, $ef, $f0, $39, $16, $17, $18, $10, $1f, $ff, $1f, $08, $88, $0f
    db $8a, $8d, $cd, $87, $ff, $f8, $07, $39, $c6, $83, $7c, $6c, $9f, $ff, $be, $73
    db $63, $c1, $c1, $81, $81, $01, $ff, $e7, $18, $f7, $08, $d8, $3f, $27, $e4, $f7
    db $e6, $e7, $01, $ff, $e0, $e6, $e7, $79, $87, $ff, $3b, $c6, $12, $ee, $de, $24
    db $18, $fc, $ff, $74, $e4, $c4, $84, $84, $04, $8b, $f4, $ff, $43, $7c, $53, $6c
    db $50, $6f, $60, $7f, $ff, $37, $18, $1b, $0c, $0c, $07, $d3, $2c, $ff, $c1, $3f
    db $0b, $f6, $0e, $f4, $04, $fc, $ff, $ec, $18, $c8, $38, $39, $d0, $76, $f9, $ff
    db $88, $8f, $09, $0e, $0b, $0c, $70, $3f, $ff, $d0, $6f, $a5, $db, $dd, $be, $e7
    db $18, $ff, $ac, $53, $8f, $70, $58, $bf, $7d, $e6, $ff, $c7, $83, $82, $02, $02
    db $02, $1f, $e0, $ff, $9b, $64, $cc, $33, $0f, $f0, $c8, $37, $ff, $f6, $ff, $0f
    db $09, $01, $00, $ff, $00, $ff, $bf, $40, $70, $8f, $cf, $30, $6e, $9f, $ff, $9b
    db $71, $31, $e0, $e0, $c0, $ff, $00, $ff, $c1, $3e, $7f, $80, $8c, $7f, $5b, $b2
    db $3f, $32, $e3, $e3, $c2, $cc, $87, $00, $00

    nop

    db $ff, $47, $c5, $ce, $87, $8e, $89, $8d, $8a, $ff, $8b, $8c, $ce, $89, $69, $ce
    db $30, $ff, $ff, $47, $c6, $c4, $46, $e6, $42, $a2, $62, $ff, $73, $a3, $d2, $33
    db $fa, $13, $0c, $ff, $ff, $31, $11, $31, $31, $31, $11, $01, $01, $ff, $80, $00
    db $e0, $c0, $3c, $f8, $07, $ff, $ff, $e5, $27, $25, $e6, $e6, $22, $62, $a3, $ff
    db $b3, $e1, $91, $f1, $91, $f1, $4e, $bf, $ff, $38, $1c, $24, $3c, $24, $3c, $1c
    db $1e, $ff, $82, $02, $c6, $82, $7d, $e7, $18, $ff, $ff, $67, $44, $64, $67, $67
    db $64, $65, $66, $ff, $66, $63, $63, $62, $a2, $e3, $1c, $ff, $ff, $d1, $31, $b1
    db $61, $71, $a0, $d8, $30, $ff, $2c, $d8, $f6, $0c, $03, $ff, $00, $ff, $ff, $62
    db $a2, $62, $a2, $e2, $e2, $62, $22, $ff, $03, $02, $03, $03, $c2, $83, $7c, $ff
    db $ff, $62, $22, $62, $62, $62, $22, $02, $03, $ff, $01, $01, $c1, $81, $79, $f1
    db $0e, $ff, $dd, $00, $ff, $e0, $20, $20, $24, $ff, $e4, $db, $ff, $ff, $c9, $88
    db $83, $81, $8e, $87, $8c, $8f, $ff, $86, $83, $c3, $81, $f1, $e1, $1e, $ff, $ff
    db $9f, $8c, $46, $83, $63, $c2, $23, $e2, $ff, $e6, $43, $4d, $c6, $d8, $4f, $30
    db $ff, $00, $00, $00, $ff, $ff, $00, $3b, $c4, $c7, $38, $78, $87, $ff, $8f, $70
    db $f8, $07, $07, $f8, $fc, $03, $ef, $ff, $00, $3c, $c3, $f0, $e3, $f3, $0c, $1c
    db $ff, $e3, $e7, $18, $ff, $00, $e1, $1e, $9f, $ff, $60, $60, $9f, $df, $20, $b0
    db $4f, $7f, $ff, $80, $c3, $3c, $f8, $07, $f1, $0f, $0b, $ff, $f6, $f6, $0c, $8c
    db $78, $78, $88, $cc, $ff, $38, $36, $cc, $ef, $f0, $1d, $12, $33, $ff, $1c, $6e
    db $31, $c3, $7f, $dc, $e4, $74, $ff, $3c, $1b, $0f, $80, $7f, $c1, $3e, $6c, $ff
    db $f3, $91, $9e, $9b, $9c, $04, $07, $05, $ff, $07, $9b, $9e, $01, $fe, $83, $7c
    db $3b, $ff, $c4, $da, $3d, $7c, $e7, $c7, $83, $83, $fb, $03, $03, $a0, $e6, $da
    db $fd, $3c, $27, $27, $ff, $03, $03, $02, $9f, $60, $91, $6e, $3f, $ff, $c0, $30
    db $ff, $6f, $c8, $c8, $8f, $8f, $ff, $08, $33, $1c, $ff, $00, $f3, $0c, $0f, $ff
    db $f0, $f8, $07, $87, $78, $7c, $83, $c3, $ff, $3c, $3e, $c1, $ff, $00, $fd, $02
    db $03, $ff, $fc, $fe, $01, $01, $fe, $ff, $00, $80, $ff, $7f, $7f, $80, $ff, $00
    db $c6, $39, $bf, $ff, $40, $60, $9f, $9f, $60, $70, $8f, $cf, $07, $30, $ba, $45
    db $00, $00

    nop

    db $ff, $93, $6c, $ee, $11, $a9, $56, $56, $a9, $ff, $d1, $2e, $26, $d9, $df, $20
    db $00, $ff, $ff, $98, $67, $7f, $80, $c4, $3b, $3f, $c0, $ff, $c3, $3c, $7d, $82
    db $86, $79, $00, $ff, $ff, $3c, $c3, $c7, $38, $38, $c7, $e7, $18, $ff, $3c, $c3
    db $c3, $3c, $7e, $81, $00, $ff, $ff, $e3, $1e, $9d, $63, $61, $9f, $db, $26, $ff
    db $2e, $dc, $d0, $30, $30, $d0, $0f, $ff, $ff, $0d, $06, $8c, $87, $98, $0f, $36
    db $19, $ff, $63, $3c, $dc, $63, $b7, $c8, $00, $ff, $ff, $96, $9c, $94, $9c, $9c
    db $8c, $88, $8c, $ff, $cf, $86, $45, $c7, $64, $c7, $3b, $fc, $ff, $63, $23, $63
    db $63, $63, $23, $02, $03, $ff, $01, $01, $c1, $81, $79, $f1, $ee, $1f, $ff, $1e
    db $0e, $37, $1a, $25, $3b, $3e, $21, $ff, $23, $3d, $3d, $23, $27, $39, $c0, $ff
    db $ff, $7c, $33, $1f, $08, $88, $0f, $8f, $88, $ff, $9c, $0b, $33, $1c, $6e, $31
    db $c0, $ff, $ff, $e1, $1e, $9e, $61, $61, $9e, $df, $20, $ff, $20, $df, $df, $20
    db $30, $cf, $00, $ff, $ff, $81, $7e, $7e, $81, $c1, $3e, $3e, $c1, $ff, $e3, $1c
    db $9c, $63, $77, $88, $00, $ff, $ff, $55, $aa, $56, $a9, $e9, $16, $6f, $90, $ff
    db $b0, $4f, $df, $20, $61, $9e, $00, $ff, $00, $00, $00

    rst $38
    rst $38
    nop
    sbc c
    ld h, [hl]
    db $76
    adc c
    rst $08
    jr nc, @+$01

    jr c, @-$37

    rst $20
    jr jr_007_6b87

    db $e3
    di
    inc c
    rst $38
    rst $38
    nop
    di
    inc c
    inc e
    db $e3
    and $19
    rst $38
    dec sp
    call nz, Call_000_33cc
    ld [hl], a
    adc b
    cp b
    ld b, a
    rst $38
    rst $38
    nop
    adc h
    ld [hl], e
    di
    inc c

jr_007_6b87:
    ld e, $e1
    rst $38
    pop hl
    ld e, $7f
    add b
    sbc h
    ld h, e
    db $e3
    inc e
    rst $38
    rst $38
    nop
    db $e3
    inc e
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    rst $38
    rst $08
    jr nc, jr_007_6bd1

    call Call_000_00ff
    ret nz

    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld bc, $fefe
    ld bc, $03ff
    db $fc
    db $fc
    inc bc
    and a
    ld e, b
    add hl, sp
    add $ff
    rst $38
    nop
    inc sp
    call z, $23dc
    ld h, e
    sbc h
    rst $38
    cp [hl]
    ld b, c
    rst $00
    jr c, @+$7a

    add a
    sbc a
    ld h, b
    nop
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop

jr_007_6bd1:
    nop

    db $ff, $0c, $f3, $fb, $04, $cc, $33, $37, $c8, $ff, $f0, $0f, $1f, $e0, $e1, $1e
    db $00, $ff, $ff, $c7, $38, $bf, $40, $70, $8f, $cf, $30, $ff, $78, $87, $8f, $70
    db $f3, $0c, $00, $ff, $ff, $3e, $c1, $c1, $3e, $7f, $80, $80, $7f, $ff, $7f, $80
    db $c0, $3f, $3f, $c0, $00, $ff, $ff, $3f, $c0, $e0, $1f, $1f, $e0, $f0, $0f, $ff
    db $8f, $70, $70, $8f, $df, $20, $00, $ff, $3f, $ce, $31, $39, $c6, $c7, $38, $d2
    db $e1, $be, $e1, $ff, $00, $ff, $e7, $18, $38, $c7, $8f, $70, $ff, $78, $87, $87
    db $78, $f8, $07, $07, $f8, $03, $00, $ff, $a0, $ff, $a0, $ff, $a0, $f9, $00, $00

    nop

    db $ff, $ff, $00, $3c, $c3, $c7, $38, $f9, $06, $ff, $0e, $f1, $f6, $09, $19, $e6
    db $e7, $18, $ff, $ff, $00, $dc, $23, $65, $9b, $bb, $46, $ff, $c6, $3c, $fc, $08
    db $29, $d8, $db, $31, $ff, $ff, $00, $70, $8f, $cd, $fe, $7b, $32, $ff, $32, $33
    db $33, $22, $c3, $e3, $21, $e0, $ff, $ff, $00, $9a, $65, $76, $89, $cd, $32, $ff
    db $3b, $c4, $f6, $09, $1b, $e7, $d6, $ec, $ff, $ff, $00, $c3, $3c, $fc, $03, $9a
    db $65, $ff, $68, $97, $c1, $fe, $e6, $3f, $3b, $19, $ff, $ff, $00, $90, $6f, $00
    db $ff, $0f, $f0, $ff, $78, $87, $c7, $38, $d8, $e7, $e3, $3c, $ff, $ff, $00, $0c
    db $f3, $3e, $ff, $c3, $41, $ff, $61, $c0, $a0, $60, $26, $e4, $e7, $26, $fe, $a0
    db $e1, $67, $98, $38, $c7, $8f, $f0, $c6, $df, $79, $61, $3f, $33, $1e, $a0, $e1
    db $cf, $30, $ff, $31, $ce, $fe, $01, $63, $fd, $f3, $9f, $fb, $1c, $0c, $a0, $e5
    db $db, $e4, $36, $29, $29, $f3, $37, $13, $e0, $e0, $a0, $e1, $9b, $64, $6c, $93
    db $ff, $67, $f8, $f0, $9f, $1f, $08, $ff, $00, $bf, $9e, $61, $71, $8e, $8f, $70
    db $a0, $e1, $3c, $07, $c3, $e3, $1c, $00, $00

    nop

    db $ff, $1e, $e1, $f3, $0c, $0f, $f0, $f8, $07, $ff, $87, $78, $7c, $83, $c3, $3c
    db $00, $ff, $ff, $32, $e3, $f2, $23, $1b, $f1, $ec, $18, $ff, $06, $fc, $fb, $06
    db $81, $7f, $00, $ff, $ff, $60, $a0, $e6, $24, $c7, $e6, $65, $27, $ff, $27, $25
    db $25, $27, $bb, $3d, $c0, $ff, $ff, $6c, $38, $39, $31, $31, $30, $38, $30, $ff
    db $2c, $38, $17, $1e, $1d, $13, $e8, $f7, $ff, $18, $18, $99, $98, $99, $99, $11
    db $19, $fd, $09, $ff, $e0, $e9, $c9, $36, $ff, $38, $27, $ff, $d2, $ed, $2f, $d0
    db $68, $97, $da, $3d, $ff, $a6, $65, $f7, $24, $18, $ff, $27, $e5, $ff, $65, $a7
    db $e7, $26, $a6, $64, $20, $e0, $ff, $e0, $20, $e3, $21, $1e, $ff, $9e, $0c, $ff
    db $8c, $08, $18, $08, $3c, $18, $66, $3c, $ff, $db, $67, $80, $ff, $40, $bf, $0b
    db $0f, $ff, $cf, $c9, $cf, $49, $09, $0f, $0f, $05, $ff, $84, $07, $f7, $e4, $1a
    db $fd, $26, $3c, $ff, $3c, $28, $28, $38, $3c, $18, $96, $1c, $ff, $9b, $8f, $ce
    db $89, $70, $ff, $0b, $0c, $ff, $cc, $cb, $cf, $48, $08, $0f, $0f, $04, $ff, $87
    db $04, $f4, $e7, $18, $ff, $1e, $e1, $ff, $e1, $1e, $9f, $60, $60, $9f, $df, $20
    db $3f, $b0, $4f, $7f, $80, $00, $ff, $00, $00

    nop

    db $ff, $ff, $00, $9e, $61, $61, $9e, $df, $20, $ff, $20, $df, $df, $20, $30, $cf
    db $cf, $30, $ff, $ff, $00, $7e, $81, $b1, $7e, $5f, $cf, $ff, $c0, $40, $e0, $40
    db $3e, $fe, $f2, $0e, $ff, $ff, $00, $56, $a9, $e9, $16, $fb, $fc, $ff, $04, $07
    db $06, $05, $78, $7f, $5b, $67, $ff, $9f, $60, $be, $41, $29, $d6, $36, $c9, $ff
    db $71, $8e, $66, $99, $cd, $fe, $e2, $33, $ff, $ff, $00, $7f, $80, $c4, $3b, $30
    db $cf, $ff, $c3, $3c, $4e, $b1, $8d, $7f, $37, $fa, $ff, $60, $9f, $80, $7f, $1f
    db $e0, $f7, $08, $ff, $bc, $43, $00, $ff, $a0, $ff, $fc, $5f, $bf, $06, $f9, $00
    db $ff, $f8, $07, $a0, $e1, $18, $ff, $ff, $7c, $e7, $c7, $83, $ff, $00, $fe, $ff
    db $01, $01, $fe, $0e, $f1, $c3, $3c, $10, $ff, $ef, $21, $de, $fc, $ff, $f9, $06
    db $55, $ff, $aa, $e8, $17, $6c, $93, $b0, $4f, $de, $ff, $21, $5b, $bf, $7d, $e6
    db $ff, $00, $ee, $ff, $11, $a9, $56, $d6, $29, $d3, $2f, $24, $df, $dc, $4c, $bc
    db $e0, $f0, $a0, $e3, $3f, $c0, $ff, $43, $bc, $ed, $9e, $9e, $f3, $73, $62, $ff
    db $ff, $00, $c7, $38, $38, $c7, $e7, $18, $ff, $3c, $c3, $c3, $3c, $7e, $81, $c1
    db $3e, $00, $00, $00, $ff, $3c, $c3, $e3, $1c, $9e, $61, $71, $8e, $ff, $cf, $30
    db $32, $cd, $ff, $00, $00, $ff, $ff, $0e, $f2, $fe, $02, $02, $fe, $fc, $04, $ff
    db $06, $fc, $fa, $06, $a6, $5a, $01, $ff, $ff, $6e, $54, $75, $4c, $5d, $69, $69
    db $59, $ff, $7c, $48, $46, $7c, $7b, $46, $81, $ff, $ff, $12, $13, $da, $8b, $4a
    db $cb, $db, $89, $ff, $14, $18, $66, $3c, $c3, $7e, $85, $fb, $ff, $48, $c8, $cb
    db $49, $da, $4b, $d2, $9b, $ff, $32, $13, $63, $32, $d3, $72, $8d, $fe, $ff, $46
    db $43, $83, $c1, $9d, $99, $9d, $95, $fb, $95, $9d, $fe, $e1, $62, $ff, $82, $02
    db $32, $ff, $32, $32, $12, $02, $03, $81, $01, $e1, $ff, $c1, $bd, $79, $07, $ff
    db $1e, $0b, $03, $ef, $01, $01, $01, $49, $ff, $e4, $b6, $ff, $c6, $ff, $82, $b6
    db $32, $2c, $06, $18, $1c, $18, $ff, $0c, $84, $04, $e4, $c4, $3b, $ff, $34, $ff
    db $1c, $1c, $0c, $ec, $cc, $ec, $ac, $ae, $ff, $ec, $ea, $ae, $af, $ea, $11, $ff
    db $a6, $ff, $c3, $cd, $c6, $82, $c3, $f2, $63, $47, $ff, $62, $6c, $27, $3b, $2c
    db $d0, $ff, $7f, $ff, $80, $8c, $73, $f3, $0c, $1e, $e1, $e1, $7f, $1e, $7f, $80
    db $9c, $63, $00, $ff, $00, $00

    nop

    db $ff, $ff, $00, $e0, $1f, $1f, $e0, $f0, $0f, $ff, $8f, $70, $70, $8f, $de, $21
    db $31, $cf, $ff, $ff, $00, $39, $c6, $b7, $7f, $7d, $c8, $ff, $48, $c0, $c0, $80
    db $80, $80, $92, $02, $ff, $f8, $07, $39, $c6, $03, $fc, $f2, $8d, $ff, $83, $fc
    db $b1, $cf, $c7, $7e, $6c, $58, $ff, $e7, $18, $f7, $08, $c4, $3b, $37, $c8, $ff
    db $96, $6f, $89, $f9, $d9, $79, $60, $20, $ff, $7a, $85, $3a, $c5, $12, $ed, $db
    db $25, $ff, $19, $e7, $3b, $c6, $2e, $df, $b9, $f1, $ff, $cb, $34, $83, $7c, $d3
    db $ec, $b0, $2f, $ff, $20, $3f, $27, $38, $37, $38, $1c, $0f, $ff, $d3, $2c, $c0
    db $3f, $09, $f6, $09, $f7, $ff, $03, $fe, $e6, $1c, $d4, $2c, $3d, $c8, $ff, $5e
    db $a1, $58, $a7, $71, $fe, $cb, $8c, $ff, $08, $0f, $78, $3f, $c4, $7b, $a1, $df
    db $ff, $e7, $18, $ac, $53, $8f, $70, $68, $97, $ff, $89, $76, $b3, $7c, $fb, $cc
    db $8f, $07, $ff, $1f, $e0, $9b, $64, $cc, $33, $0f, $f0, $ff, $c8, $37, $0f, $f0
    db $c9, $36, $fa, $fd, $ff, $ff, $00, $bf, $40, $70, $8f, $cf, $30, $ff, $78, $87
    db $8d, $73, $b3, $7e, $fa, $cc, $ff, $ff, $00, $c1, $3e, $7f, $80, $80, $7f, $3e
    db $fc, $e0, $ff, $ff, $40, $60, $5f, $00, $00

    nop

    db $ff, $ef, $11, $99, $67, $77, $8a, $ce, $32, $ff, $3a, $c6, $f7, $0a, $19, $e7
    db $00, $ff, $ff, $16, $12, $1d, $17, $39, $1f, $3b, $25, $ff, $2d, $33, $26, $39
    db $b8, $27, $c0, $ff, $ff, $58, $70, $73, $23, $23, $21, $20, $30, $ff, $b8, $10
    db $9e, $9c, $9b, $97, $60, $ff, $ff, $39, $39, $39, $29, $29, $39, $29, $38, $ff
    db $3c, $18, $14, $1c, $d6, $9c, $63, $ff, $ff, $61, $c1, $4e, $c6, $5a, $8e, $ce
    db $87, $ff, $a1, $c1, $f1, $61, $5f, $79, $86, $ff, $ff, $07, $02, $62, $43, $73
    db $62, $53, $72, $ff, $72, $53, $51, $71, $91, $f1, $0e, $ff, $ff, $e9, $19, $99
    db $71, $79, $90, $cc, $38, $ff, $36, $cc, $f3, $0e, $01, $ff, $00, $ff, $ff, $6d
    db $9e, $52, $b2, $f2, $f2, $32, $12, $ff, $03, $02, $03, $03, $e2, $c3, $3c, $ff
    db $ff, $04, $04, $64, $64, $64, $24, $04, $06, $ff, $06, $02, $c2, $82, $7a, $f2
    db $0d, $ff, $7f, $3d, $17, $07, $02, $02, $02, $92, $ff, $e0, $ff, $93, $92, $93
    db $93, $6c, $ff, $8c, $04, $ff, $6d, $64, $58, $0c, $36, $3c, $34, $18, $ff, $09
    db $08, $cb, $89, $76, $ff, $df, $60, $ff, $b0, $cf, $4f, $70, $71, $4e, $fe, $41
    db $3f, $83, $fc, $7c, $83, $00, $ff, $00, $00

    nop

    db $ff, $ff, $00, $3b, $c4, $c7, $38, $78, $87, $ff, $8f, $70, $f8, $07, $07, $f8
    db $fc, $03, $ef, $ff, $00, $3c, $c3, $f0, $e3, $f3, $0c, $1c, $ff, $e3, $e7, $18
    db $ff, $00, $e1, $1e, $9f, $ff, $60, $60, $9f, $df, $20, $b0, $4f, $7f, $ff, $80
    db $c3, $3c, $f9, $06, $f1, $0e, $0c, $ff, $f3, $f8, $07, $86, $79, $7d, $83, $c3
    db $ff, $3e, $3f, $c2, $ff, $00, $fd, $02, $33, $ff, $fc, $6e, $c9, $c9, $8e, $9f
    db $08, $31, $ff, $1f, $1a, $0e, $80, $7f, $c1, $3e, $9c, $ff, $63, $41, $be, $63
    db $fc, $90, $9f, $96, $ff, $99, $0d, $0b, $01, $fe, $83, $7c, $3b, $ff, $c4, $f2
    db $0d, $83, $7c, $36, $f9, $f9, $f7, $cf, $8e, $06, $a0, $e5, $8e, $71, $f1, $0f
    db $ff, $b3, $fe, $fe, $4c, $9f, $60, $91, $6e, $ff, $3f, $c0, $20, $df, $7f, $80
    db $b0, $cf, $ff, $ff, $40, $43, $7c, $ff, $00, $f3, $0c, $ff, $0f, $f0, $f8, $07
    db $87, $78, $7c, $83, $ef, $c3, $3c, $3e, $c1, $a0, $e1, $03, $fc, $fe, $ff, $01
    db $01, $fe, $ff, $00, $80, $7f, $7f, $ff, $80, $ff, $00, $c6, $39, $bf, $40, $60
    db $ff, $9f, $9f, $60, $70, $8f, $cf, $30, $ba, $01, $45, $00, $00

    nop

    db $ff, $93, $6c, $ee, $11, $a9, $56, $56, $a9, $ff, $d1, $2e, $26, $d9, $df, $20
    db $00, $ff, $ff, $98, $67, $7f, $80, $c4, $3b, $3f, $c0, $ff, $c3, $3c, $7d, $82
    db $86, $79, $00, $ff, $ff, $3c, $c3, $c7, $38, $38, $c7, $e7, $18, $ff, $3c, $c3
    db $c3, $3c, $7e, $81, $00, $ff, $ff, $e1, $1f, $9e, $61, $61, $9e, $de, $21, $ff
    db $23, $df, $dc, $24, $34, $cc, $03, $ff, $ff, $8d, $07, $c6, $83, $66, $c3, $cc
    db $87, $ff, $9b, $0c, $34, $1b, $67, $38, $c0, $ff, $ff, $93, $9e, $96, $9c, $94
    db $9c, $9e, $8c, $ff, $cb, $8e, $4d, $c7, $64, $c7, $3b, $fc, $ff, $06, $06, $66
    db $66, $66, $26, $04, $06, $ff, $06, $02, $c2, $82, $7a, $f2, $dd, $2f, $ff, $0c
    db $08, $79, $38, $48, $78, $76, $4c, $ff, $4c, $78, $79, $48, $4b, $79, $86, $ff
    db $ff, $fc, $43, $87, $f8, $78, $47, $67, $58, $af, $fc, $43, $83, $fc, $a0, $e2
    db $1e, $a0, $e1, $df, $ff, $20, $20, $df, $df, $20, $30, $cf, $00, $ff, $ff, $81
    db $7e, $7e, $81, $c1, $3e, $3e, $ff, $c1, $e3, $1c, $9c, $63, $77, $88, $00, $ff
    db $ff, $55, $aa, $56, $a9, $e9, $16, $6f, $ff, $90, $b0, $4f, $df, $20, $61, $9e
    db $00, $01, $ff, $00, $00

    nop

    db $ff, $ff, $00, $99, $66, $76, $89, $cf, $30, $ff, $38, $c7, $e7, $18, $1c, $e3
    db $f3, $0c, $ff, $ff, $00, $f3, $0c, $1c, $e3, $e6, $19, $ff, $3b, $c4, $cc, $33
    db $77, $88, $b8, $47, $ff, $ff, $00, $8c, $73, $f3, $0c, $1e, $e1, $ff, $e1, $1e
    db $7f, $80, $9c, $63, $e3, $1c, $ff, $ff, $00, $e3, $1c, $9e, $61, $71, $8e, $ff
    db $cf, $30, $32, $cd, $ff, $00, $c0, $3f, $ff, $ff, $00, $ff, $00, $01, $fe, $fe
    db $01, $ff, $03, $fc, $fc, $03, $a7, $58, $39, $c6, $ff, $ff, $00, $33, $cc, $dc
    db $23, $63, $9c, $ff, $be, $41, $c7, $38, $78, $87, $9f, $60, $00, $a0, $ff, $a0
    db $ff, $a0, $f9, $00, $00

    nop

    db $f9, $00, $ff, $ff, $fb, $fa, $06, $0f, $0b, $1d, $17, $ff, $39, $2d, $73, $5b
    db $67, $5d, $63, $2e, $ff, $71, $17, $38, $0b, $1c, $16, $39, $6d, $ff, $f3, $fb
    db $87, $f7, $8f, $7e, $ff, $3c, $fd, $7e, $c0, $e2, $80, $8c, $9e, $9e, $93, $be
    db $ff, $f3, $7f, $c1, $bf, $f3, $5f, $f3, $7e, $ff, $f3, $fd, $f3, $d7, $f9, $8e
    db $d9, $0b, $df, $8c, $07, $0f, $03, $07, $ba, $e7, $19, $3f, $ff, $ae, $f1, $df
    db $e0, $bf, $cc, $f7, $8c, $ff, $bf, $c0, $5f, $e0, $b7, $f8, $ce, $ff, $ef, $c5
    db $cf, $80, $c1, $80, $e3, $0c, $1e, $1e, $ff, $13, $3e, $f3, $ff, $c1, $ff, $f3
    db $df, $ff, $f3, $de, $d3, $dd, $d3, $57, $f9, $ee, $7f, $79, $eb, $6c, $e7, $ef
    db $c3, $e7, $60, $e7, $ff, $60, $f0, $f1, $9b, $fb, $9a, $fb, $9a, $ff, $b3, $da
    db $6d, $de, $5e, $e1, $ad, $f3, $bf, $d3, $ff, $cf, $df, $86, $cf, $40, $e5, $0c
    db $ff, $1e, $12, $3f, $af, $f3, $db, $67, $f7, $ff, $4f, $7e, $c3, $ef, $f3, $db
    db $e7, $f7, $7f, $cf, $ee, $df, $3c, $fe, $18, $3c, $20, $ff, $00, $ff, $fd, $00
    db $00

    nop

Call_007_741e:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [$d205], a
    ld a, l
    ld [$d200], a
    ld a, h
    ld [$d201], a
    ld a, d
    ld [$d202], a
    ld a, e
    ld [$d203], a
    push de
    call Call_000_23b6
    rst $18

    db $06, $01

    call Call_000_0341
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld hl, $d200
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0028
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8e00
    ld c, $14
    call Call_000_04db
    ld hl, $74e2
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_0468
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $7739
    ld de, $0206
    call Call_000_0595
    ld hl, $7769
    ld de, $0c01
    call Call_000_0595
    ld hl, $7780
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $79c0
    ld de, $9800
    ld c, $24
    call Call_000_04db
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0100
    ld c, $0a

jr_007_74bd:
    push bc
    push hl
    call Call_007_7d36
    call Call_000_04de
    pop hl
    ld c, $0b
    push hl
    call Call_007_7d69
    call Call_000_04de
    pop hl
    pop bc
    inc l
    dec c
    jr nz, jr_007_74bd

    ld a, $01
    ld hl, $7db0
    call Call_000_23e8
    call Call_000_0371
    pop de
    ret


    db $15, $00, $ff, $ec, $ff, $ff, $fc, $00, $fe, $ed, $ff, $ff, $9d, $e2, $7f, $82
    db $00, $12, $00, $36, $00, $66, $91, $e2, $ff, $04, $00, $08, $00, $19, $00, $13
    db $00, $87, $33, $00, $37, $90, $ee, $a0, $e7, $a5, $e0, $fa, $e1, $ff, $ff, $d0
    db $ef, $9f, $ff, $a0, $ff, $af, $f0, $f0, $fe, $e3, $7e, $e1, $fc, $e2, $d9, $e6
    db $07, $ff, $f3, $ff, $0f, $0b, $ff, $fb, $0f, $fe, $e3, $d8, $e5, $d0, $e5, $e8
    db $e5, $ae, $e0, $ed, $9f, $ff, $c0, $15, $e4, $80, $fd, $e0, $c8, $f1, $b7, $fa
    db $e0, $f4, $e3, $86, $e2, $ad, $52, $40, $bf, $6e, $12, $e3, $ff, $ff, $01, $fd
    db $e0, $6b, $95, $fa, $e0, $3c, $02, $e4, $ce, $e1, $a3, $dc, $de, $a1, $ce, $e3
    db $72, $e3, $cf, $2d, $d2, $f2, $0d, $c5, $c3, $ce, $e3, $1b, $e5, $eb, $f5, $0b
    db $ce, $e3, $6e, $cf, $cc, $77, $00, $7f, $fc, $fe, $e0, $b9, $c1, $f7, $08, $f3
    db $0c, $f9, $06, $80, $8f, $c9, $26, $e3, $06, $e5, $fe, $c3, $f1, $c8, $65, $c2
    db $18, $e3, $eb, $f3, $1f, $f3, $08, $e0, $54, $c2, $c6, $fe, $e7, $fe, $ff, $f7
    db $de, $ff, $de, $ef, $de, $e7, $de, $77, $e7, $9c, $63, $5f, $c2, $7c, $c7, $fe
    db $f2, $e1, $ef, $fc, $7f, $c1, $3e, $4f, $ce, $f8, $cf, $fc, $fb, $df, $e6, $d4
    db $e1, $dc, $ef, $f9, $fe, $83, $ff, $7c, $bc, $c3, $e3, $9c, $9f, $e0, $f0, $ff
    db $8f, $8f, $f0, $f0, $8f, $df, $a0, $80, $ff, $ff, $ce, $31, $39, $c6, $c7, $38
    db $78, $ff, $87, $8f, $70, $f0, $0f, $1f, $e0, $00, $ff, $ff, $cc, $33, $3b, $c4
    db $c6, $39, $79, $bd, $86, $f0, $e5, $1d, $e3, $e7, $19, $22, $e1, $0f, $df, $f1
    db $f9, $07, $07, $f9, $ea, $c1, $c9, $f7, $ff, $ca, $f5, $cb, $f4, $c9, $f6, $cb
    db $f4, $fc, $fe, $e1, $c0, $a1, $7f, $ff, $1f, $ff, $4f, $bf, $ff, $4f, $bf, $2b
    db $df, $6b, $df, $df, $20, $ff, $cf, $30, $67, $98, $67, $98, $23, $dc, $ff, $23
    db $dc, $01, $fe, $01, $fe, $f8, $07, $ff, $fc, $03, $9c, $63, $cc, $33, $66, $99
    db $3f, $66, $99, $22, $dd, $02, $fd, $9a, $c5, $02, $eb, $fc, $a7, $a2, $93, $a5
    db $7c, $c6, $3f, $fe, $7f, $e6, $ef, $ff, $ee, $f7, $fe, $30, $e1, $30, $f7, $38
    db $bf, $ff, $fc, $f1, $3e, $f7, $38, $f8, $e0, $3c, $e3, $e1, $1e, $6f, $af, $fe
    db $ff, $3b, $aa, $80, $9b, $e4, $ff, $f6, $89, $cd, $b2, $bb, $c4, $e6, $99, $ff
    db $99, $e6, $f7, $88, $ff, $00, $cf, $30, $ff, $70, $8f, $8f, $70, $76, $89, $99
    db $66, $ff, $e6, $19, $38, $c7, $ff, $00, $c3, $3c, $ff, $fc, $03, $03, $fc, $fc
    db $03, $27, $d8, $ff, $dc, $23, $33, $cc, $ff, $01, $9f, $61, $ff, $71, $8f, $8f
    db $71, $79, $87, $c7, $39, $ef, $3d, $c3, $e3, $1d, $0a, $e1, $cd, $f2, $cd, $df
    db $f6, $c9, $f6, $cd, $f2, $fe, $c1, $6b, $df, $ef, $2b, $df, $4b, $bf, $fe, $e3
    db $0b, $ff, $4b, $9d, $bf, $d0, $87, $01, $ff, $03, $54, $a0, $c0, $81, $10, $fb
    db $ff, $60, $82, $a0, $80, $ff, $88, $ff, $18, $00, $0c, $c6, $04, $c7, $a5, $89
    db $91, $9f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ee, $f6, $f5, $0f, $ff, $9e
    db $fe, $e0, $be, $ff, $3c, $fb, $ff, $7d, $fe, $e0, $ff, $ff, $30, $ff, $70, $ff
    db $ff, $71, $ff, $e3, $ff, $e7, $ff, $ef, $00, $b0, $63, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $e6, $00, $00

    nop

    db $f8, $03, $44, $03, $00, $02, $40, $01, $96, $4a, $1f, $12, $d6, $00, $00, $00
    db $ff, $03, $1f, $12, $d6, $00, $00, $00, $de, $7b, $8e, $7f, $80, $7e, $80, $7d
    db $de, $7b, $18, $63, $52, $4a, $8c, $31, $de, $7b, $18, $63, $52, $4a, $8c, $31
    db $80, $7d, $1f, $68, $4c, $68, $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

    db $0d, $0d, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b
    db $8b, $8b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0a, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0a, $0a, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0a, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0a, $0a, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0a, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0a, $0a, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_007_7a3a

    jr jr_007_7a3c

    jr jr_007_7a3e

    jr jr_007_7a40

    jr jr_007_7a42

    jr @+$1a

    jr jr_007_7a46

    jr @+$1a

    jr @+$1a

    jr jr_007_7a4c

    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7a3a:
    nop
    nop

jr_007_7a3c:
    nop
    nop

jr_007_7a3e:
    nop
    nop

jr_007_7a40:
    jr z, jr_007_7a6a

jr_007_7a42:
    db $10
    ld de, $1111

jr_007_7a46:
    ld de, $1111
    ld de, $1111

jr_007_7a4c:
    ld de, $1111
    ld de, $1211
    jr z, jr_007_7a7c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_007_7a9a

    jr nz, jr_007_7a85

    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_007_7a6a:
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld [hl+], a
    inc hl
    jr c, jr_007_7aac

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7a7c:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    jr nc, jr_007_7ab5

    ld [hl], b

jr_007_7a85:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld [hl-], a
    inc sp
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7a9a:
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    jr nz, jr_007_7ac5

    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a

jr_007_7aac:
    adc b
    adc c
    adc d
    adc e
    ld [hl+], a
    inc hl
    add hl, bc
    add hl, bc
    nop

jr_007_7ab5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    add hl, de
    jr nc, jr_007_7af5

    sub b

jr_007_7ac5:
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld [hl-], a
    inc sp
    add hl, de
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    add hl, hl
    jr nz, jr_007_7b05

    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    ld [hl+], a
    inc hl
    add hl, hl
    add hl, hl
    nop

jr_007_7af5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    add hl, sp
    jr nc, jr_007_7b35

    or b

jr_007_7b05:
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ld [hl-], a
    inc sp
    add hl, sp
    add hl, sp
    nop
    nop
    nop
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
    jr nz, jr_007_7b45

    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, Jump_000_22cb

    inc hl
    inc b
    inc b
    nop

jr_007_7b35:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    jr nc, jr_007_7b75

    ret nc

jr_007_7b45:
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_000_32db

    inc sp
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr nz, @+$23

    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$22eb], a
    inc hl
    ld d, $17
    nop

jr_007_7b75:
    nop
    nop
    nop

Call_007_7b78:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $27
    jr nc, jr_007_7bb5

    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$32fb]
    inc sp
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    inc de
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    ld [hl], $37
    nop

jr_007_7bb5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    inc h
    dec h
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
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
    ld bc, $0101
    inc [hl]
    dec [hl]
    ld bc, $0101
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
    nop
    nop

Call_007_7c00:
    ld b, a

Jump_007_7c01:
    ld a, $ff
    ld [$d204], a
    ld c, $0c
    ld l, b
    call Call_007_7d19

Jump_007_7c0c:
    ld hl, $d204
    ld a, [hl]
    inc [hl]
    xor [hl]
    bit 4, a
    jr z, jr_007_7c20

    ld a, [hl]
    swap a
    and $01
    ld h, a
    ld l, b
    call Call_007_7cfe

jr_007_7c20:
    call Call_000_2e3b
    ld a, [$d205]
    or a
    jr z, jr_007_7c59

    ld a, [$cb40]
    cp $10
    jr nz, jr_007_7c59

Jump_007_7c30:
    ld a, $20
    ld [$cb00], a
    ld a, $01
    call Call_000_3081
    ld h, $01
    ld l, b
    call Call_007_7cfe
    ld c, $0b
    ld l, b
    call Call_007_7d19
    ld h, $00
    ld l, $01
    call Call_007_7cfe
    ld c, $0c
    ld l, $01
    call Call_007_7d19
    ld b, $11
    jp Jump_007_7ce0


jr_007_7c59:
    ldh a, [$91]
    bit 1, a
    jp nz, Jump_007_7ced

    bit 0, a
    jr nz, jr_007_7ca2

    bit 6, a
    jr z, jr_007_7c77

    xor a
    cp b
    jr nz, jr_007_7c73

    ld a, [$d202]
    dec a
    ld d, a
    jr jr_007_7c8e

jr_007_7c73:
    ld d, $ff
    jr jr_007_7c8e

jr_007_7c77:
    bit 7, a
    jr z, jr_007_7c8b

    ld a, [$d202]
    dec a
    cp b
    jr nz, jr_007_7c87

    cpl
    inc a
    ld d, a
    jr jr_007_7c8e

jr_007_7c87:
    ld d, $01
    jr jr_007_7c8e

jr_007_7c8b:
    jp Jump_007_7c0c


jr_007_7c8e:
    rst $08

    db $5b

    ld h, $01
    ld l, b
    call Call_007_7cfe
    ld c, $0b
    ld l, b
    call Call_007_7d19
    ld a, b
    add d
    ld b, a
    jp Jump_007_7c01


jr_007_7ca2:
    ld a, [$d205]
    or a
    jr z, jr_007_7ce0

    ld a, b
    cp $01
    jr nz, jr_007_7ce0

    call Call_000_306e
    call Call_000_2e3b
    ldh a, [$c2]
    cp $02
    jp z, Jump_007_7c30

    cp $01
    jp nz, Jump_007_7cd8

    ld a, $10
    ld [$cb00], a
    ld a, $10
    call Call_000_3081
    ld c, $0a

jr_007_7ccb:
    call Call_000_2e3b
    ld a, [$cb40]
    cp $20
    jr z, jr_007_7ce0

    dec c
    jr nz, jr_007_7ccb

Jump_007_7cd8:
    rst $08
    ld e, l
    call Call_000_304d
    jp Jump_007_7c0c


Jump_007_7ce0:
jr_007_7ce0:
    rst $08

    db $5c

    ld h, $00
    ld a, b
    and $0f
    ld l, a
    call Call_007_7cfe
    ld a, b
    ret


Jump_007_7ced:
    rst $08

    db $5d

    ld h, $01
    ld l, b
    call Call_007_7cfe
    ld c, $0b
    ld l, b
    call Call_007_7d19
    ld a, $ff
    ret


Call_007_7cfe:
    push af
    push bc
    push de
    push hl
    ld a, [$d203]
    add l
    add l
    ld l, a
    push hl
    call Call_007_7d36
    pop hl
    inc l
    call Call_007_7d36
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_007_7d19:
    push af
    push bc
    push de
    push hl
    ld a, [$d203]
    add l
    add l
    ld l, a
    push hl
    push bc
    call Call_007_7d69
    pop bc
    pop hl
    inc l
    call Call_007_7d69
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_007_7d36:
    push hl
    ld b, l
    ld a, l
    add a
    add h
    add a

Jump_007_7d3c:
    ld d, $00

Jump_007_7d3e:
    ld e, a
    ld hl, $d200
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    bit 0, b
    jr z, jr_007_7d51

    inc d

jr_007_7d51:
    push de
    call Call_000_1f2f
    ld a, b
    add $a6
    bit 3, a
    jr nz, jr_007_7d5e

    or $10

jr_007_7d5e:
    pop hl
    ld d, a
    ld e, $00
    ld c, $10
    call Call_000_0468
    pop hl
    ret


Call_007_7d69:
    push hl
    ld b, l
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld de, $7820
    add hl, de
    ld de, $d000
    bit 0, b
    jr z, jr_007_7d80

    inc d

jr_007_7d80:
    push hl
    push de
    push bc
    ld c, $02
    call Call_000_03eb
    pop bc
    pop de
    pop hl
    pop hl
    push de
    ld de, $b8a0
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, c
    push hl
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld c, $02
    call Call_000_0468
    pop hl
    ret


    ldh a, [$8c]
    and $3f
    ld hl, $7dc9
    add l
    ld l, a
    jr nc, jr_007_7dbc

    inc h

jr_007_7dbc:
    ld d, $00
    ld e, [hl]
    ld hl, $7e09
    ld bc, $04e0
    call Call_000_26ea
    ret


    db $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00
    db $00, $00, $00, $ff, $ff, $ff, $fe, $fe, $fe, $fd, $fd, $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fe, $fe, $fe, $ff, $ff, $ff, $00, $00
    db $1a, $30, $00, $00, $1a, $38, $02, $00, $1a, $40, $04, $00, $1a, $48, $06, $00
    db $1a, $50, $08, $00, $1a, $58, $0a, $00, $1a, $60, $0c, $00, $1a, $68, $0e, $00
    db $1a, $70, $10, $00, $1a, $78, $12, $00, $80

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
