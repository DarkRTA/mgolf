; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $040", ROMX[$4000], BANK[$40]

    db $32, $40

    ld h, [hl]
    ld h, [hl]
    or l
    ld h, [hl]

    db $0e, $64, $f6, $66

    xor a
    ld l, a
    ccf
    ld [hl], b
    xor h
    ld [hl], b
    ld d, b
    ld [hl], c
    db $f4
    ld [hl], c
    ld h, b
    ld [hl], d
    rst $08
    ld [hl], d

    db $63, $73

    ret nc

    ld [hl], e
    add hl, sp
    ld [hl], h
    and b
    ld [hl], h
    dec b
    ld [hl], l

    db $96, $75

    ld a, [hl+]
    db $76
    or b
    db $76
    dec d
    ld [hl], a
    adc a
    ld [hl], a
    db $10
    ld a, b
    ld a, e
    ld a, b
    xor $78

    ld b, a
    ldh a, [$9e]
    push af
    xor a
    ldh [$9e], a
    push bc
    ld c, $7f
    call Call_000_25a1
    call Call_000_2625
    pop bc
    ld a, b
    or a
    jp nz, Jump_040_4069

Jump_040_4048:
    call Call_000_23b6
    rst $08

    db $00

    call Call_040_61cb
    jp nz, Jump_040_4069

    rst $08

    db $29

    ld a, $00

jr_040_4057:
    push af
    call Call_040_5c72
    jp nz, Jump_040_4066

    pop af
    inc a
    cp $10
    jr c, jr_040_4057

    jr jr_040_4069

Jump_040_4066:
    rst $08

    db $5c

    pop af

Jump_040_4069:
jr_040_4069:
    rst $08

    db $24

    ldh a, [rLCDC]
    or $40
    ldh [rLCDC], a
    ld a, $07
    ldh [rWX], a
    ld a, $98
    ldh [rWY], a
    rst $18

    db $0a, $01

    call Call_000_0341
    call Call_000_23b6
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $41ce
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
    ld hl, $4b8d
    ld de, $d000
    call Call_000_1f2f
    ld hl, $4c30
    ld de, $d0a0
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a140
    ld c, $12
    call Call_000_04db
    ld hl, $48eb
    ld de, $0107
    call Call_000_0595
    ld hl, $4ca6
    ld de, $0902
    call Call_000_0595
    ld hl, $4a3f
    ld de, $d000
    call Call_000_1f2f
    ld hl, $4aa2
    ld de, $d400
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b800
    ld c, $40
    call Call_000_0468
    ld hl, $d400
    ld de, $9800
    ld c, $40
    call Call_000_04db
    ld hl, $4923
    ld de, $d000
    call Call_000_1f2f
    ld hl, $4976
    ld de, $d400
    call Call_000_1f2f
    ld hl, $d100
    ld de, $bc00
    ld c, $24
    call Call_000_0468
    ld hl, $d500
    ld de, $9c00
    ld c, $24
    call Call_000_04db
    ld a, $40
    ldh [rWY], a
    call Call_000_0371
    ld a, $01
    ld hl, $4d53
    call Call_000_23e8
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    call Call_000_2ed5

    db $3c

    ld a, $01
    ld hl, $4d1d
    call Call_000_23e8
    ld bc, $04b0

jr_040_414c:
    call Call_000_05dd
    call Call_040_4cb6
    call Call_000_2e3b
    push bc
    call Call_000_0a61
    pop bc
    ld a, [$cb40]
    cp $10
    jr nz, jr_040_416d

    ld a, $20
    ld [$cb00], a
    ld a, $01
    call Call_000_3081
    jr jr_040_4187

jr_040_416d:
    ldh a, [$90]
    bit 3, a
    jr nz, jr_040_4187

    bit 0, a
    jr nz, jr_040_4187

    dec bc
    ld a, b
    or c
    jr nz, jr_040_414c

    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    jp Jump_040_4048


jr_040_4187:
    rst $08

    db $5c

    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    ld hl, $4d53
    call Call_000_2449
    ld a, $90
    ldh [rWY], a
    xor a
    ldh [$8b], a
    ldh [$8a], a
    call Call_000_0341
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $24
    call Call_000_03a7
    ld hl, $d000
    ld de, $9c00
    ld c, $24
    call Call_000_04db
    ld hl, $d000
    ld de, $bc00
    ld c, $24
    call Call_000_04db
    call Call_000_0371
    pop af
    ldh [$9e], a
    ret


    db $f3, $ff, $00, $fe, $ff, $e2, $e2, $0f, $f8, $08, $f8, $f7, $08, $fb, $11, $d6
    db $e6, $ff, $1c, $08, $00, $f7, $00, $f7, $f3, $c6, $e6, $e7, $3c, $18, $18, $f7
    db $08, $c3, $81, $b6, $e4, $01, $ff, $c1, $7f, $df, $39, $0e, $06, $e2, $c2, $a6
    db $e2, $c0, $ff, $ff, $30, $ff, $0c, $ff, $c3, $7f, $30, $ff, $fd, $7e, $96, $e6
    db $1f, $f0, $10, $f0, $d0, $f3, $fd, $33, $86, $e6, $fc, $07, $04, $07, $04, $e7
    db $f5, $c5, $76, $ec, $fe, $66, $e6, $03, $fe, $04, $fc, $97, $08, $f9, $10, $80
    db $e7, $00, $ff, $e0, $e0, $e8, $81, $9f, $ff, $41, $7f, $21, $3f, $60, $e8, $e0
    db $e1, $3f, $fd, $3f, $26, $e6, $f8, $0f, $08, $0f, $0f, $c8, $bd, $c0, $b0, $e8
    db $fc, $80, $00, $03, $08, $fe, $12, $ff, $f3, $12, $f2, $13, $f2, $23, $f6, $25
    db $ff, $e6, $25, $e4, $27, $e4, $47, $ec, $ef, $f7, $1c, $f7, $08, $d2, $c9, $42
    db $e7, $a4, $67, $ff, $e4, $3f, $d8, $3f, $f8, $1f, $e8, $1f, $7f, $f8, $0f, $f5
    db $0f, $30, $f2, $10, $d7, $c1, $ff, $fc, $04, $fc, $84, $fe, $82, $fe, $42, $ef
    db $7f, $81, $ff, $80, $fe, $e0, $84, $ff, $86, $fc, $fc, $e0, $f6, $e1, $8f, $fc
    db $67, $fc, $1f, $fc, $fd, $0f, $fe, $e4, $37, $fc, $e6, $27, $e0, $20, $ff, $f1
    db $3b, $ee, $3f, $e8, $2f, $f0, $3f, $fd, $e0, $fe, $e0, $01, $03, $00, $01, $f8
    db $fc, $f7, $04, $fe, $02, $bd, $c0, $01, $ff, $41, $ff, $ff, $f3, $21, $e6, $a2
    db $ec, $45, $08, $0b, $ff, $08, $0f, $18, $0f, $18, $17, $10, $16, $ff, $01, $7d
    db $00, $fe, $00, $ff, $78, $fb, $ff, $64, $45, $cf, $43, $ff, $bf, $a3, $b9, $ff
    db $9f, $0f, $c0, $80, $7f, $5f, $20, $af, $ff, $c0, $5f, $80, $bf, $00, $7f, $82
    db $ba, $ff, $20, $3f, $20, $3f, $e0, $ff, $20, $af, $ff, $10, $d7, $08, $ee, $09
    db $fe, $09, $ff, $ff, $41, $c0, $4f, $4f, $c8, $4f, $c8, $8f, $fd, $88, $fe, $e0
    db $98, $8f, $98, $17, $ff, $ff, $ff, $81, $3f, $01, $fd, $03, $fe, $e2, $ce, $bf
    db $be, $bc, $f8, $f8, $09, $f9, $06, $dc, $01, $f7, $4b, $cc, $4b, $c1, $e1, $d8
    db $97, $98, $97, $ff, $90, $9f, $90, $1f, $90, $de, $21, $ed, $ff, $33, $f2, $3f
    db $ec, $3f, $e1, $21, $e1, $ff, $21, $e0, $21, $e4, $24, $fd, $07, $7a, $ff, $87
    db $be, $c3, $fd, $c3, $7f, $c1, $7d, $3f, $c3, $f6, $cf, $58, $7c, $c1, $48, $e2
    db $44, $e1, $a7, $c1, $ff, $21, $74, $e0, $a7, $a1, $04, $fe, $e0, $06, $ff, $ff
    db $05, $ff, $f8, $fd, $80, $80, $4b, $e7, $ec, $2b, $f8, $d7, $c0, $fe, $e2, $8f
    db $f8, $5f, $f9, $f8, $0c, $e1, $fc, $e3, $f0, $3f, $e8, $3f, $e4, $df, $2f, $e1
    db $ff, $a1, $bf, $bc, $e5, $0e, $ff, $ff, $70, $f8, $11, $1e, $f1, $9f, $71, $6f
    db $ff, $20, $ee, $f0, $d7, $78, $3b, $4c, $05, $ff, $66, $42, $e0, $bf, $c0, $5f
    db $44, $77, $ef, $fc, $bf, $60, $4f, $ed, $a0, $f9, $1f, $ce, $ff, $47, $ff, $45
    db $fd, $47, $fa, $40, $ff, $fe, $fe, $e0, $df, $e0, $ae, $33, $11, $09, $ff, $ff
    db $09, $fd, $0b, $ff, $38, $ff, $44, $d5, $ff, $82, $be, $81, $fd, $31, $f7, $10
    db $17, $f7, $10, $1f, $fc, $7e, $e1, $f7, $08, $fb, $08, $ff, $ef, $f0, $f7, $09
    db $f9, $09, $f9, $e9, $ef, $c9, $f9, $b9, $81, $ff, $e0, $9f, $9f, $9f, $31, $90
    db $0e, $ef, $3f, $e4, $ee, $84, $3f, $1f, $98, $a2, $91, $a0, $3e, $dc, $83, $e6
    db $e4, $07, $06, $07, $35, $e0, $ce, $85, $ff, $71, $60, $07, $03, $9f, $0c, $ff
    db $f0, $6e, $be, $85, $bf, $bf, $80, $ff, $e0, $ff, $7f, $ae, $85, $bf, $83, $82
    db $1f, $1f, $1f, $10, $e0, $e7, $7f, $df, $37, $80, $00, $d8, $90, $e0, $e7, $e7
    db $c3, $bf, $08, $00, $1c, $08, $ff, $f7, $7e, $85, $c3, $e7, $81, $1f, $0e, $d8
    db $80, $58, $a6, $f3, $a1, $f8, $df, $10, $fc, $08, $ff, $07, $5e, $85, $f9, $fd
    db $ef, $0c, $05, $1f, $0f, $90, $e7, $ee, $ce, $3e, $7f, $bb, $05, $75, $e2, $cc
    db $f8, $33, $d1, $c0, $fe, $4a, $e0, $59, $df, $a9, $ad, $53, $5b, $a7, $0f, $34
    db $4f, $a8, $3f, $ba, $e2, $40, $e1, $70, $e0, $40, $e6, $02, $3c, $c0, $10, $70
    db $e9, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $28, $fe, $ff, $fe, $ff
    db $f8, $f8, $f0, $e8, $c1, $3f, $a0, $67, $ce, $e4, $de, $ff, $e9, $01, $03, $02
    db $07, $ef, $e3, $0c, $1e, $5f, $1e, $1f, $7f, $ff, $87, $19, $60, $04, $a9, $60
    db $29, $08, $ad, $c1, $c1, $e2, $30, $10, $a0, $40, $43, $c7, $89, $e0, $ff, $80
    db $80, $40, $c0, $42, $e7, $27, $ed, $ff, $2b, $ef, $2f, $ef, $6f, $ef, $47, $ef
    db $f8, $af, $e4, $db, $a1, $d7, $a0, $00, $80, $28, $7f, $48, $ff, $7f, $46, $7f
    db $41, $7f, $40, $7f, $20, $af, $7f, $10, $3f, $1c, $d0, $80, $01, $13, $c0, $fa
    db $fe, $0f, $c0, $07, $ff, $0f, $f9, $3f, $ff, $a7, $ff, $e7, $25, $e7, $27, $e7
    db $45, $e5, $87, $7f, $c5, $07, $05, $07, $05, $87, $c5, $6f, $ea, $fe, $fd, $40
    db $23, $7f, $4f, $7f, $5b, $ff, $9b, $ff, $ff, $bb, $ff, $5b, $ff, $73, $7f, $57
    db $bb, $ff, $de, $55, $a0, $ff, $ff, $fb, $fe, $e0, $fd, $fe, $fe, $e2, $47, $e5
    db $a7, $f5, $d7, $fd, $ef, $3e, $fe, $e0, $fd, $fd, $f7, $ff, $e3, $c3, $47, $fa
    db $e4, $18, $d1, $60, $cd, $60, $83, $e0, $40, $7f, $bb, $81, $45, $e9, $00, $e4
    db $ec, $fc, $e3, $f6, $e3, $b7, $78, $f0, $e5, $fb, $07, $0c, $57, $1f, $b0, $7f
    db $b1, $40, $01, $f6, $e1, $d0, $8c, $60, $5d, $04, $4e, $62, $78, $ff, $8f, $d5
    db $20, $17, $0f, $40, $f5, $ff, $eb, $80, $ff, $0f, $40, $90, $ff, $df, $ff, $d7
    db $bf, $f8, $ff, $ee, $e4, $e1, $f0, $42, $f0, $ff, $ff, $48, $ff, $7c, $ff, $cc
    db $ff, $3c, $ff, $7f, $80, $c0, $67, $f0, $19, $ff, $16, $5f, $c0, $f1, $02, $d8
    db $60, $19, $a0, $56, $c0, $e0, $f0, $57, $f8, $c9, $0b, $c0, $41, $b9, $20, $cb
    db $c2, $60, $b8, $c2, $ff, $60, $5c, $fe, $e0, $41, $41, $a0, $ff, $c4, $31, $ca
    db $30, $23, $c2, $37, $28, $ff, $70, $69, $23, $ff, $1f, $13, $c0, $d9, $28, $38
    db $f0, $c2, $de, $e3, $d6, $e1, $f8, $ff, $e0, $61, $22, $dc, $e1, $d9, $02, $b9
    db $22, $e4, $a8, $ff, $82, $f0, $eb, $b8, $4f, $e5, $58, $c7, $a3, $31, $79, $27
    db $fe, $e0, $05, $ff, $1d, $ff, $ff, $15, $ff, $14, $ff, $24, $ff, $26, $ec, $79
    db $22, $2a, $80, $80, $7f, $19, $40, $80, $80, $bf, $81, $c0, $60, $cd, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $f6, $f5, $ee, $b7, $ff, $ee, $3b, $fe, $e1, $ff
    db $3b, $dc, $83, $0f, $ff, $b8, $af, $f8, $ef, $f8, $ef, $b8, $ff, $81, $b8, $00
    db $a4, $be, $c4, $ba, $c3, $fc, $e3, $f0, $ff, $f0, $f3, $07, $ab, $fd, $fc, $5e
    db $c2, $3f, $b1, $40, $fe, $ad, $40, $a0, $bc, $f6, $e0, $a5, $41, $f7, $ff, $bd
    db $c3, $c6, $40, $c0, $f9, $7d, $eb, $e0, $4e, $c3, $7f, $ff, $fb, $07, $f7, $f7
    db $0f, $b8, $7f, $a0, $e7, $df, $ff, $b7, $cf, $01, $78, $79, $41, $ff, $ff, $ff
    db $ff, $2a, $88, $e6, $7e, $1c, $e6, $12, $e7, $fc, $f0, $ff, $8c, $a3, $f7, $ff
    db $5e, $e1, $ff, $ff, $ef, $ef, $bc, $8f, $fd, $c0, $20, $a8, $ff, $a9, $ff, $fe
    db $8b, $fe, $8b, $ff, $ff, $fd, $37, $fb, $f1, $bf, $b0, $20, $15, $ff, $95, $7f
    db $d1, $1b, $7f, $d1, $b0, $eb, $ec, $1f, $a0, $fd, $2e, $ff, $ff, $ff, $fc, $ff
    db $ff, $df, $c9, $ff, $ff, $55, $ef, $7f, $c0, $fb, $36, $f9, $ba, $83, $02, $ff
    db $fb, $fc, $2f, $ef, $f0, $9b, $fc, $87, $ed, $04, $d0, $ff, $f5, $fd, $0f, $a2
    db $41, $df, $e0, $ff, $ff, $05, $fe, $7f, $03, $ff, $be, $c1, $eb, $fc, $fa, $52
    db $22, $ff, $df, $e0, $3f, $ff, $60, $9f, $ab, $fe, $af, $ff, $00, $da, $f5, $dc
    db $e1, $bf, $d2, $60, $02, $bb, $fd, $d5, $e6, $00, $5b, $af, $af, $d0, $00, $bf
    db $ff, $c0, $7f, $ff, $80, $7f, $7a, $87, $5f, $f9, $ff, $c4, $80, $78, $c0, $ef
    db $1f, $f2, $ff, $2c, $fd, $df, $95, $01, $c1, $ff, $a6, $7f, $cb, $fc, $3e, $a0
    db $e5, $77, $8f, $fd, $03, $f6, $f4, $a4, $00, $ff, $30, $ff, $ff, $ff, $ff, $df
    db $bf, $f8, $f7, $eb, $f4, $80, $61, $d8, $e7, $7f, $af, $5f, $f0, $ff, $50, $ef
    db $3d, $e6, $c0, $fe, $c4, $e3, $ea, $f5, $1f, $ff, $14, $ef, $b8, $04, $c6, $41
    db $b2, $e2, $70, $f2, $40, $aa, $ff, $6f, $34, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $20, $de, $00, $ff
    db $ed, $80, $dd, $d0, $ef, $f4, $ef, $40, $8a, $f8, $f0, $8b, $70, $60, $06, $00
    db $54, $03, $76, $44, $64, $10, $5e, $05, $fa, $e5, $f8, $e7, $f6, $e9, $f8, $f7
    db $ff, $3c, $7e, $5a, $e7, $bd, $db, $ff, $a7, $ff, $ff, $a7, $bd, $db, $5a, $e7
    db $3c, $7e, $ff, $0f, $1f, $17, $19, $1f, $11, $1f, $19, $ff, $0f, $09, $1f, $19
    db $ff, $10, $1f, $1f, $ef, $bf, $ff, $de, $e1, $57, $00, $cc, $5f, $e0, $cf, $bf
    db $fc, $de, $e1, $47, $61, $54, $40, $99, $ff, $df, $99, $bf, $c1, $fe, $f9, $4a
    db $40, $ff, $fd, $ff, $ff, $7b, $87, $ff, $33, $ff, $33, $7f, $ff, $83, $fe, $f3
    db $7b, $86, $fc, $ff, $0f, $7f, $0f, $0e, $09, $0f, $08, $0f, $08, $fa, $e0, $ff
    db $09, $ff, $09, $0f, $0f, $fe, $fe, $fe, $ff, $92, $7f, $9f, $ff, $12, $ff, $12
    db $7f, $f7, $92, $ff, $92, $40, $41, $07, $07, $ff, $fc, $cf, $ef, $18, $ff, $6c
    db $fe, $e2, $5d, $e0, $bc, $fe, $ff, $db, $e7, $ff, $5a, $ff, $c2, $ff, $de, $df
    db $df, $e2, $ff, $ff, $01, $ff, $e0, $ff, $ff, $7f, $eb, $1c, $ff, $6b, $ff, $6b
    db $fb, $e0, $e0, $ff, $e0, $e0, $e0, $20, $fe, $3f, $ed, $33, $ef, $ff, $2d, $ff
    db $2d, $fa, $e0, $ff, $1c, $1d, $ff, $1d, $37, $3a, $2f, $3b, $6a, $73, $5a, $ff
    db $72, $d3, $ed, $b3, $e0, $e1, $f1, $fb, $ff, $6a, $9f, $f5, $6e, $ff, $7c, $ff
    db $64, $ff, $f7, $6c, $6f, $9c, $f3, $ff, $e7, $ff, $ff, $de, $39, $ef, $d8, $fe
    db $c9, $ff, $c9, $ff, $ff, $09, $ff, $c9, $36, $ff, $77, $ff, $7f, $bf, $c8, $7f
    db $89, $bf, $48, $7f, $ee, $e1, $ff, $48, $37, $7f, $ec, $fe, $fe, $12, $fe, $fd
    db $f2, $fc, $e1, $ff, $f3, $ff, $10, $ef, $ff, $ff, $1e, $3f, $2d, $73, $5e, $6d
    db $7f, $4c, $ff, $7f, $4c, $de, $ed, $ed, $33, $de, $ff, $ff, $7e, $ff, $ff, $81
    db $fe, $e7, $bc, $a4, $1e, $fe, $e1, $7f, $a4, $18, $3c, $be, $df, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $f2, $f1, $00, $00

    nop

    db $8e, $7b, $de, $7b, $9f, $01, $00, $00, $c8, $02, $1f, $03, $9f, $20, $00, $00
    db $c8, $02, $42, $7d, $5a, $6b, $00, $00, $c8, $02, $1f, $03, $4c, $7d, $00, $00
    db $c8, $02, $1f, $03, $42, $7d, $00, $00, $de, $7b, $8e, $7f, $80, $7e, $80, $7d
    db $80, $7e, $de, $7b, $9f, $00, $00, $00, $05, $0d, $ff, $fc, $0b, $ff, $e6, $eb
    db $f2, $f6, $f2, $e0, $ff, $e0, $ff, $28, $e0, $ff, $e0, $ff, $44, $e1, $0e, $ff
    db $e4, $4e, $ff, $e8, $0c, $e9, $c0, $e0, $e5, $f8, $e9, $a1, $e9, $e0, $fd, $a8
    db $e6, $b7, $e6, $4e, $4e, $16, $c0, $ec, $0f, $0f, $c0, $fb, $0f, $ff, $e0, $61
    db $e9, $c0, $ef, $08, $be, $ec, $e0, $ef, $40, $f8, $09, $ff, $ee, $20, $ea, $eb
    db $e6, $00, $f4, $00, $ca, $e7, $e0, $d3, $00, $00

    nop

    db $05, $d0, $ff, $fc, $00, $ff, $e6, $eb, $f2, $f6, $f2, $e0, $ff, $e0, $ff, $48
    db $e0, $ff, $e0, $ff, $44, $e1, $d4, $ff, $f0, $0c, $e9, $d5, $ff, $e5, $ff, $82
    db $83, $84, $85, $86, $87, $88, $89, $d7, $8a, $d5, $d5, $a1, $e9, $d6, $ff, $e5
    db $92, $93, $ff, $94, $95, $96, $97, $98, $99, $9a, $d6, $f5, $d6, $81, $e9, $d7
    db $ff, $e5, $a2, $a3, $a4, $a5, $7f, $a6, $a7, $a8, $a9, $aa, $d7, $d7, $61, $e9
    db $df, $d2, $d2, $d2, $52, $53, $fb, $e0, $d2, $b2, $ff, $b3, $b4, $b5, $b6, $b7
    db $b8, $b9, $ba, $7b, $d2, $d2, $e0, $ec, $54, $55, $56, $57, $de, $e1, $fc, $fc
    db $e6, $21, $e9, $d8, $d8, $d8, $58, $59, $5a, $f1, $5b, $f9, $e0, $fd, $e7, $01
    db $e9, $d9, $d9, $d9, $5c, $c7, $5d, $5e, $5f, $f9, $e0, $fd, $e7, $e1, $c9, $db
    db $e0, $ff, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $ff, $e9, $ea, $eb, $ec, $ed
    db $ee, $ef, $f0, $fb, $f1, $db, $c1, $c9, $62, $63, $64, $65, $66, $cf, $67, $68
    db $69, $dc, $ff, $e8, $a1, $c9, $6a, $6b, $ff, $6c, $6d, $6e, $6f, $72, $73, $74
    db $dd, $00, $ff, $e7, $81, $c9, $00, $00

    nop

    db $85, $0d, $ff, $f0, $0b, $ff, $e9, $e0, $fd, $f3, $ef, $e0, $ed, $0d, $7f, $0a
    db $0a, $0a, $0c, $0c, $0a, $0a, $e0, $f6, $00, $df, $e0, $e0, $f9, $a0, $fd, $80
    db $fa, $20, $fe, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $90, $ff, $ff, $ff, $ff, $ff
    db $ff, $37, $a0, $4e, $ff, $e4, $cc, $b5, $0e, $00, $ff, $e4, $e0, $ff, $e0, $f9
    db $a0, $ff, $60, $ff, $c0, $ff, $e0, $ff, $e6, $8f, $01, $09, $ff, $e3, $c0, $f6
    db $00, $00

    nop

    db $e5, $d0, $ff, $f0, $00, $ff, $e9, $e0, $fd, $00, $01, $02, $ff, $03, $04, $05
    db $06, $07, $08, $09, $0a, $7f, $0b, $0c, $0d, $0e, $0f, $50, $51, $c0, $eb, $ff
    db $10, $11, $12, $13, $14, $15, $16, $17, $ff, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $fb, $60, $61, $a0, $eb, $20, $21, $22, $23, $24, $ff, $25, $26, $27, $28
    db $29, $2a, $2b, $2c, $df, $2d, $2e, $2f, $70, $71, $80, $eb, $30, $31, $ff, $32
    db $33, $34, $35, $36, $37, $38, $39, $ff, $3a, $3b, $3c, $3d, $3e, $3f, $80, $81
    db $fe, $60, $eb, $40, $41, $42, $43, $44, $45, $46, $ff, $47, $48, $49, $4a, $4b
    db $4c, $4d, $4e, $07, $4f, $90, $91, $40, $ea, $20, $fe, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $90, $ff, $ff, $ff, $ff, $ff, $ff, $37, $a0, $d4, $ff, $e4, $d6, $f5
    db $85, $7f, $86, $87, $88, $89, $8a, $d5, $d5, $b6, $f5, $ff, $95, $96, $97, $98
    db $99, $9a, $d6, $d6, $fe, $96, $f5, $a5, $a6, $a7, $a8, $a9, $aa, $d7, $fd, $d7
    db $76, $f5, $b5, $b6, $b7, $b8, $b9, $ba, $4b, $d2, $d2, $56, $f5, $d2, $ff, $e4
    db $36, $f5, $d8, $ff, $e4, $f2, $16, $f5, $d9, $ff, $e4, $f6, $d5, $eb, $ec, $ed
    db $ee, $0f, $ef, $f0, $f1, $db, $d6, $d5, $00, $00

    nop

    db $ff, $00, $01, $01, $02, $03, $00, $0f, $10, $ff, $1f, $20, $3f, $00, $3f, $40
    db $7f, $80, $ff, $9f, $60, $8f, $70, $40, $bf, $20, $5f, $ff, $10, $0f, $08, $17
    db $06, $09, $01, $02, $ff, $c0, $20, $e0, $13, $f3, $04, $f7, $08, $fb, $ff, $00
    db $fe, $e1, $ef, $10, $c6, $39, $80, $fd, $7f, $f5, $e1, $0c, $f3, $12, $ed, $61
    db $92, $ef, $80, $40, $02, $05, $c4, $e0, $a0, $bf, $40, $fe, $e0, $e2, $24, $ff
    db $24, $fd, $02, $f8, $07, $fb, $70, $8f, $d3, $e2, $ff, $c3, $3c, $3c, $42, $ff
    db $00, $00, $81, $42, $c7, $28, $ef, $10, $7e, $c0, $e3, $ff, $00, $be, $41, $1c
    db $e3, $b5, $e1, $ff, $41, $be, $a2, $5d, $14, $aa, $08, $14, $ff, $00, $00, $00
    db $80, $80, $40, $c0, $00, $ff, $e0, $10, $f0, $08, $f8, $00, $fc, $02, $ff, $fa
    db $05, $71, $8e, $01, $fe, $02, $fd, $ff, $0c, $f2, $b0, $48, $40, $a0, $00, $00
    db $00, $00, $00, $fd, $00, $ff, $e3, $01, $01, $00, $1d, $22, $3f, $ff, $40, $7f
    db $80, $fd, $02, $98, $67, $40, $ff, $bf, $20, $5f, $1e, $21, $01, $02, $00, $fd
    db $01, $e2, $e1, $30, $48, $78, $84, $fc, $02, $ef, $fe, $01, $ff, $00, $fe, $e0
    db $02, $f7, $0a, $fb, $e3, $1c, $f7, $e1, $01, $fe, $02, $fd, $cc, $f7, $32, $30
    db $48, $c0, $e1, $02, $05, $0f, $d0, $fb, $df, $20, $e0, $e2, $40, $ff, $40, $7e
    db $81, $ff, $3c, $c3, $00, $ff, $81, $7e, $42, $bd, $fb, $1c, $22, $a2, $e4, $80
    db $80, $40, $c0, $00, $fb, $d8, $24, $ba, $e1, $7f, $80, $39, $c6, $06, $1f, $f9
    db $88, $76, $48, $b4, $c4, $e3, $00, $00

    nop

    db $80, $7e, $1f, $68, $4c, $68, $00, $00, $80, $7e, $d0, $7f, $48, $7f, $a0, $61

Call_040_4cb6:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$cf]
    or a
    jr nz, jr_040_4cef

    ld hl, $d254
    ld a, [hl]
    ld de, $4cf5
    add e
    ld e, a
    jr nc, jr_040_4cd0

    inc d

jr_040_4cd0:
    ld a, [de]
    cp $ff
    jr z, jr_040_4ce9

    ld d, a
    ldh a, [$90]
    cp d
    jr z, jr_040_4ce6

    or a
    jr z, jr_040_4cef

    ld a, d
    or d
    jr z, jr_040_4cef

    ld [hl], $00
    jr jr_040_4cef

jr_040_4ce6:
    inc [hl]
    jr jr_040_4cef

jr_040_4ce9:
    rst $08
    ld h, e
    ld a, $01
    ldh [$cf], a

jr_040_4cef:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $40

    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_040_4cff

jr_040_4cff:
    stop
    jr nz, jr_040_4d03

jr_040_4d03:
    stop
    ld [bc], a
    nop
    inc b
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_040_4d13

jr_040_4d13:
    stop
    jr nz, jr_040_4d17

jr_040_4d17:
    stop
    ld [bc], a
    nop
    inc b
    rst $38

    ld hl, $4d2a
    ld de, $1854
    ld bc, $0900
    call Call_000_26ea
    ret


    db $1a, $30, $00, $00, $1a, $38, $02, $00, $1a, $40, $04, $00, $1a, $48, $06, $00
    db $1a, $50, $08, $00, $1a, $58, $0a, $00, $1a, $60, $0c, $00, $1a, $68, $0e, $00
    db $1a, $70, $10, $00, $1a, $78, $12, $00, $80

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4eb2
    ldh a, [$8c]
    rrca
    ld a, [$d24f]
    adc $00
    cp $a0
    jr nz, jr_040_4d6a

    sub $78

jr_040_4d6a:
    ld [$d24f], a
    ld de, $0030
    ld d, a
    ld bc, $0014
    call Call_000_26ea
    ld a, [$d24f]
    cp $64
    jr c, jr_040_4d80

    sub $f0

jr_040_4d80:
    add $78
    ld hl, $4eb2
    ld de, $0030
    ld d, a
    ld bc, $0014
    call Call_000_26ea
    ld a, [$d24f]
    ld l, a
    ldh a, [$8c]
    and l
    rrca
    ld hl, $4ec7
    ld a, [$d250]
    adc $00
    cp $a0
    jr nz, jr_040_4da5

    sub $60

jr_040_4da5:
    ld [$d250], a
    ld de, $0030
    ld d, a
    ld bc, $0014
    call Call_000_26ea
    ld a, [$d250]
    cp $64
    jr c, jr_040_4dbb

    sub $c0

jr_040_4dbb:
    add $60
    ld hl, $4ec7
    ld de, $0030
    ld d, a
    ld bc, $0014
    call Call_000_26ea
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4ca6
    ld de, $d200
    ld bc, $0010
    call MemCopy
    ldh a, [$8c]
    and $0f
    add a
    ld hl, $5755
    add l
    ld l, a
    jr nc, jr_040_4de9

    inc h

jr_040_4de9:
    ld de, $d202
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld hl, $d200
    ld de, $0902
    call Call_000_0595
    ld hl, $4ed8
    ldh a, [$8c]
    rrca
    and $1e
    add l
    ld l, a
    jr nc, jr_040_4e07

    inc h

jr_040_4e07:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    call Call_000_1f2f
    ld hl, $4ef8
    ldh a, [$8c]
    rrca
    and $1e
    add l
    ld l, a
    jr nc, jr_040_4e1d

    inc h

jr_040_4e1d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d0a0
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a000
    ld c, $14
    call Call_000_0468
    ldh a, [$90]
    and $f0
    jr nz, jr_040_4e4d

    ldh a, [$8c]
    rrca
    and $3f
    ld hl, $4e72
    add l
    ld l, a
    jr nc, jr_040_4e44

    inc h

jr_040_4e44:
    ld a, [hl]
    add $04
    ldh [$8a], a
    xor a
    ldh [$8b], a
    ret


jr_040_4e4d:
    ldh a, [$8c]
    rrca
    and $3f
    ld hl, $4e72
    add l
    ld l, a
    jr nc, jr_040_4e5a

    inc h

jr_040_4e5a:
    ld a, [hl]
    add $04
    ldh [$8a], a
    ldh a, [$8c]
    rrca
    add $10
    and $3f
    ld hl, $4e72
    add l
    ld l, a
    jr nc, jr_040_4e6e

    inc h

jr_040_4e6e:
    ld a, [hl]
    ldh [$8b], a
    ret


    db $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00
    db $00, $00, $00, $ff, $ff, $ff, $fe, $fe, $fe, $fd, $fd, $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fe, $fe, $fe, $ff, $ff, $ff, $00, $00
    db $14, $e0, $00, $0a, $14, $e8, $02, $0a, $14, $f0, $04, $0a, $14, $f8, $06, $0a
    db $14, $00, $08, $0a, $80, $24, $e8, $0a, $0a, $24, $f0, $0c, $0a, $24, $f8, $0e
    db $0a, $24, $00, $10, $0a, $80, $18, $4f, $9b, $4f, $1e, $50, $a0, $50, $24, $51
    db $ad, $51, $33, $52, $b7, $52, $18, $4f, $18, $4f, $18, $4f, $18, $4f, $18, $4f
    db $18, $4f, $18, $4f, $18, $4f, $3c, $53, $3c, $53, $3c, $53, $3c, $53, $3c, $53
    db $3c, $53, $3c, $53, $3c, $53, $3c, $53, $bc, $53, $3c, $54, $bb, $54, $42, $55
    db $cb, $55, $4e, $56, $d3, $56, $fd, $00, $ff, $e0, $3f, $3f, $3e, $21, $3f, $20
    db $eb, $3f, $22, $fe, $e0, $20, $f6, $e0, $23, $3f, $23, $f1, $3e, $ff, $e0, $e6
    db $e1, $fc, $e3, $7e, $ff, $fd, $c3, $bf, $7e, $c1, $ff, $44, $ff, $44, $fa, $e0
    db $c1, $ff, $ff, $c4, $7f, $c4, $7f, $7f, $7b, $7f, $de, $e0, $e7, $ff, $ff, $ff
    db $81, $fe, $e0, $8f, $ff, $c5, $83, $fe, $e0, $8f, $f4, $e2, $ed, $e0, $c0, $e7
    db $78, $fd, $ff, $b5, $cf, $7a, $87, $ff, $32, $6e, $9f, $ff, $db, $e7, $ff, $32
    db $7a, $87, $b7, $cf, $ef, $fd, $ff, $78, $fd, $a0, $e7, $f0, $f8, $68, $ff, $9c
    db $f4, $0c, $fc, $64, $dc, $3c, $b4, $ff, $cc, $fc, $64, $f4, $0c, $6c, $9c, $f8
    db $07, $fc, $f0, $f8, $80, $e3, $00, $00

    nop

    db $ff, $00, $00, $3f, $3f, $3e, $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20, $f6
    db $e0, $23, $3f, $23, $f5, $3e, $ff, $e0, $00, $ff, $e7, $80, $fe, $ff, $7d, $ff
    db $c3, $fe, $41, $ff, $44, $7f, $c4, $fe, $ff, $c1, $ff, $c1, $7f, $c4, $7f, $44
    db $7f, $f7, $7f, $7b, $7f, $de, $e7, $ff, $ff, $ff, $81, $2e, $fe, $e0, $8f, $ff
    db $83, $fe, $e0, $8f, $f4, $e2, $ed, $e0, $fe, $be, $e7, $78, $fd, $b5, $cf, $7a
    db $87, $ff, $ff, $32, $6e, $9f, $db, $e7, $ff, $32, $7a, $7f, $87, $b7, $cf, $fd
    db $ff, $78, $fd, $9e, $e7, $ff, $f0, $f8, $68, $9c, $f4, $0c, $fc, $64, $ff, $dc
    db $3c, $b4, $cc, $fc, $64, $f4, $0c, $3f, $6c, $9c, $f8, $fc, $f0, $f8, $7e, $e3
    db $00, $00

    nop

    db $ff, $3f, $3f, $3e, $21, $3f, $20, $3f, $22, $7a, $fe, $e0, $20, $f6, $e0, $23
    db $3f, $23, $3e, $ff, $e0, $fd, $00, $ff, $e7, $80, $fe, $ff, $7d, $c3, $fe, $ff
    db $41, $ff, $44, $7f, $c4, $fe, $c1, $ff, $ff, $c1, $7f, $c4, $7f, $44, $7f, $7f
    db $7b, $7d, $7f, $de, $e8, $00, $ff, $ff, $ff, $81, $fe, $e0, $17, $8f, $ff, $83
    db $fe, $e0, $8f, $f4, $e2, $ed, $e0, $bc, $e7, $ff, $78, $fd, $b5, $cf, $7a, $87
    db $ff, $32, $ff, $6e, $9f, $db, $e7, $ff, $32, $7a, $87, $bf, $b7, $cf, $fd, $ff
    db $78, $fd, $9c, $e7, $f0, $ff, $f8, $68, $9c, $f4, $0c, $fc, $64, $dc, $ff, $3c
    db $b4, $cc, $fc, $64, $f4, $0c, $6c, $1f, $9c, $f8, $fc, $f0, $f8, $9e, $e3, $00
    db $00

    nop

    db $ff, $00, $00, $3f, $3f, $3e, $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20, $f6
    db $e0, $23, $3f, $23, $f5, $3e, $ff, $e0, $00, $ff, $e4, $7e, $7f, $7d, $c3, $ff
    db $fe, $c1, $7f, $c4, $ff, $44, $fe, $41, $ff, $7f, $c1, $ff, $c4, $ff, $c4, $7f
    db $ff, $f3, $7b, $7f, $e2, $e5, $da, $e1, $ff, $ff, $ff, $81, $2e, $fe, $e0, $8f
    db $ff, $83, $fe, $e0, $8f, $f4, $e2, $ed, $e0, $fe, $de, $e9, $78, $fd, $b5, $cf
    db $7a, $87, $ff, $ff, $32, $6e, $9f, $db, $e7, $ff, $32, $7a, $7f, $87, $b7, $cf
    db $fd, $ff, $78, $fd, $bc, $e7, $ff, $f0, $f8, $68, $9c, $f4, $0c, $fc, $64, $ff
    db $dc, $3c, $b4, $cc, $fc, $64, $f4, $0c, $3f, $6c, $9c, $f8, $fc, $f0, $f8, $9c
    db $e3, $00, $00

    nop

    db $fd, $00, $ff, $e0, $3f, $3f, $3e, $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20
    db $f6, $e0, $23, $3f, $23, $f1, $3e, $ff, $e0, $e6, $e1, $e2, $e1, $7e, $7f, $7d
    db $c3, $ff, $fe, $c1, $7f, $c4, $ff, $44, $fe, $41, $ff, $7f, $c1, $ff, $c4, $ff
    db $c4, $7f, $ff, $7b, $7b, $7f, $e2, $e5, $ff, $ff, $ff, $81, $fe, $e0, $17, $8f
    db $ff, $83, $fe, $e0, $8f, $f4, $e2, $ed, $e0, $c4, $e5, $fe, $a2, $e1, $78, $fc
    db $b4, $cf, $7b, $87, $fe, $ff, $33, $6f, $9e, $da, $e7, $ff, $33, $7b, $ff, $86
    db $b6, $cf, $fd, $ff, $79, $fd, $00, $fd, $01, $dc, $e7, $f0, $f8, $68, $9c, $f4
    db $0c, $ff, $fc, $64, $dc, $3c, $b4, $cc, $fc, $64, $ff, $f4, $0c, $6c, $9c, $f8
    db $fc, $f0, $f8, $00, $bc, $e3, $00, $00

    nop

    db $fd, $00, $ff, $e0, $3f, $3f, $3e, $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20
    db $f6, $e0, $23, $3f, $23, $f1, $3e, $ff, $e0, $e6, $e1, $fc, $e3, $7e, $ff, $fd
    db $c3, $bf, $7e, $c1, $ff, $44, $ff, $44, $fa, $e0, $c1, $ff, $ff, $c4, $7f, $c4
    db $7f, $7f, $7b, $7f, $de, $e0, $e5, $ff, $ff, $ff, $81, $fe, $e0, $8f, $ff, $75
    db $83, $fe, $e0, $8f, $f4, $e2, $ff, $7f, $ff, $c2, $e5, $ff, $78, $fc, $b4, $cf
    db $7b, $87, $fe, $33, $ff, $6f, $9e, $da, $e7, $ff, $33, $7b, $86, $ff, $b6, $cf
    db $fd, $ff, $79, $fd, $00, $01, $fe, $a2, $e7, $f0, $f8, $68, $9c, $f4, $0c, $fc
    db $ff, $64, $dc, $3c, $b4, $cc, $fc, $64, $f4, $7f, $0c, $6c, $9c, $f8, $fc, $f0
    db $f8, $82, $e5, $00, $00, $00, $fd, $00, $ff, $e0, $3f, $3f, $3e, $21, $3f, $20
    db $eb, $3f, $22, $fe, $e0, $20, $f6, $e0, $23, $3f, $23, $f1, $3e, $ff, $e0, $e6
    db $e1, $fc, $e3, $7e, $ff, $fd, $c3, $bf, $7e, $c1, $ff, $44, $ff, $44, $fa, $e0
    db $c1, $ff, $ff, $c4, $7f, $c4, $7f, $7f, $7b, $7f, $de, $e0, $e7, $ff, $ff, $ff
    db $81, $fe, $e0, $8f, $ff, $c5, $83, $fe, $e0, $8f, $f4, $e2, $ed, $e0, $c0, $e4
    db $01, $79, $ff, $ff, $b6, $cf, $7b, $86, $fe, $33, $6f, $ff, $9f, $db, $e6, $fe
    db $33, $7b, $87, $b7, $df, $cf, $fc, $ff, $78, $fc, $a2, $e5, $f0, $f8, $ff, $68
    db $9c, $f4, $0c, $fc, $64, $dc, $3c, $ff, $b4, $cc, $fc, $64, $f4, $0c, $6c, $9c
    db $0f, $f8, $fc, $f0, $f8, $84, $e7, $00, $00

    nop

    db $fd, $00, $ff, $e0, $3f, $3f, $3e, $21, $3f, $20, $eb, $3f, $22, $fe, $e0, $20
    db $f6, $e0, $23, $3f, $23, $f1, $3e, $ff, $e0, $e6, $e1, $fc, $e3, $7e, $ff, $fd
    db $c3, $bf, $7e, $c1, $ff, $44, $ff, $44, $fa, $e0, $c1, $ff, $ff, $c4, $7f, $c4
    db $7f, $7f, $7b, $7f, $de, $e0, $e7, $ff, $ff, $ff, $81, $fe, $e0, $8f, $ff, $75
    db $83, $fe, $e0, $8f, $f4, $e2, $ff, $7f, $ff, $c0, $e6, $ff, $01, $79, $ff, $b6
    db $cf, $7b, $86, $fe, $ff, $33, $6f, $9f, $db, $e6, $fe, $33, $7b, $7f, $87, $b7
    db $cf, $fc, $ff, $78, $fc, $a0, $e5, $ff, $f0, $f8, $68, $9c, $f4, $0c, $fc, $64
    db $ff, $dc, $3c, $b4, $cc, $fc, $64, $f4, $0c, $3f, $6c, $9c, $f8, $fc, $f0, $f8
    db $82, $e5, $00, $00

    nop

    db $fd, $00, $ff, $e0, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b
    db $3c, $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fc, $e6, $e1, $fc
    db $e3, $7f, $ff, $ff, $c0, $7f, $c0, $ff, $ff, $73, $ff, $f3, $5e, $d2, $de, $52
    db $be, $fc, $e0, $d2, $9e, $de, $1e, $9e, $e0, $e7, $bd, $7f, $ff, $db, $e7, $bd
    db $c3, $ff, $89, $fe, $e0, $b9, $81, $fe, $e0, $f8, $e1, $ff, $f7, $ff, $c0, $e7
    db $fb, $ff, $ff, $f7, $0e, $fb, $06, $ff, $13, $ff, $7f, $13, $fa, $06, $fe, $06
    db $fe, $12, $fe, $e0, $f7, $fe, $ee, $fe, $a0, $e7, $fc, $fc, $fc, $04, $3e, $fe
    db $e0, $9c, $fc, $9c, $f0, $90, $fe, $e4, $ff, $e0, $00, $80, $e3, $00, $00

    nop

    db $ff, $00, $00, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b, $3c
    db $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fd, $00, $ff, $e7, $80
    db $ff, $ff, $7f, $c0, $ff, $ff, $40, $ff, $f3, $7f, $f3, $de, $52, $5e, $ff, $d2
    db $de, $d2, $9e, $d2, $1e, $9e, $1e, $fd, $1e, $de, $e7, $bd, $ff, $db, $e7, $bd
    db $c3, $cb, $ff, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $f7, $fd, $ff, $be
    db $e7, $fb, $ff, $f7, $0e, $fb, $06, $ff, $ff, $13, $ff, $13, $fa, $06, $fe, $06
    db $bb, $fe, $12, $fe, $e0, $fe, $ee, $fe, $9e, $e7, $fc, $f7, $fc, $fc, $04, $fe
    db $e0, $9c, $fc, $9c, $f0, $01, $90, $fe, $e4, $ff, $e0, $7e, $e3, $00, $00

    nop

    db $ff, $0f, $1f, $16, $39, $2f, $30, $3f, $26, $ff, $2d, $33, $3b, $3c, $3f, $26
    db $2f, $30, $7f, $36, $39, $1f, $3f, $0f, $1f, $00, $ff, $e7, $ff, $80, $ff, $ff
    db $7f, $c0, $ff, $40, $ff, $ff, $f3, $7f, $f3, $de, $52, $5e, $d2, $de, $7f, $d2
    db $9e, $d2, $1e, $9e, $1e, $1e, $df, $e8, $ff, $80, $bd, $ff, $db, $e7, $bd, $c3
    db $ff, $e5, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $f7, $ff, $fe, $bc, $e7
    db $fb, $ff, $f7, $0e, $fb, $06, $ff, $ff, $13, $ff, $13, $fa, $06, $fe, $06, $fe
    db $dd, $12, $fe, $e0, $fe, $ee, $fe, $9c, $e7, $fc, $fc, $fb, $fc, $04, $fe, $e0
    db $9c, $fc, $9c, $f0, $90, $00, $fe, $e4, $ff, $e0, $7c, $e3, $00, $00

    nop

    db $ff, $00, $00, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b, $3c
    db $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fd, $00, $ff, $e4, $7f
    db $7f, $7f, $c0, $ff, $c0, $ff, $7f, $f3, $ff, $73, $de, $d2, $5e, $d2, $fb, $de
    db $52, $fc, $e0, $de, $9e, $de, $00, $80, $fe, $e0, $e5, $80, $80, $bc, $fe, $db
    db $e7, $bd, $97, $c3, $ff, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $ef, $f7
    db $ff, $01, $01, $be, $e5, $00, $00, $fb, $ff, $ff, $f7, $0e, $fb, $06, $ff, $13
    db $ff, $7f, $13, $fa, $06, $fe, $06, $fe, $12, $fe, $e0, $f7, $fe, $ee, $fe, $e0
    db $e7, $fc, $fc, $fc, $04, $3e, $fe, $e0, $9c, $fc, $9c, $f0, $90, $fe, $e4, $ff
    db $e0, $00, $c0, $e3, $00, $00

    nop

    db $fd, $00, $ff, $e0, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b
    db $3c, $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fc, $e6, $e1, $e2
    db $e1, $7f, $7f, $7f, $c0, $ff, $c0, $ff, $7f, $f3, $ff, $73, $de, $d2, $5e, $d2
    db $fb, $de, $52, $fc, $e0, $de, $9e, $de, $00, $80, $fe, $e0, $e3, $3c, $7e, $db
    db $e7, $bd, $c3, $ff, $e5, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $f7, $ff
    db $fb, $01, $01, $c2, $e5, $00, $00, $f8, $fc, $f7, $ff, $0f, $fb, $06, $ff, $12
    db $ff, $13, $fb, $df, $07, $fe, $06, $fe, $12, $fe, $e0, $fe, $ee, $fd, $fe, $e0
    db $e7, $00, $00, $fc, $fc, $fc, $04, $3e, $fe, $e0, $9c, $fc, $9c, $f0, $90, $fe
    db $e4, $ff, $e0, $00, $de, $e3, $00, $00

    nop

    db $fd, $00, $ff, $e0, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b
    db $3c, $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fc, $e6, $e1, $fc
    db $e3, $7f, $ff, $ff, $c0, $7f, $c0, $ff, $ff, $73, $ff, $f3, $5e, $d2, $de, $52
    db $be, $fc, $e0, $d2, $9e, $de, $1e, $9e, $e0, $e3, $01, $ff, $01, $3d, $7f, $db
    db $e7, $bd, $c3, $ff, $e5, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $f6, $fe
    db $fe, $c2, $e5, $f8, $fc, $f7, $0f, $fb, $06, $ff, $ff, $12, $ff, $13, $fb, $07
    db $fe, $06, $fe, $cd, $12, $fe, $e0, $fe, $ee, $e2, $e6, $82, $e1, $fc, $fc, $fb
    db $fc, $04, $fe, $e0, $9c, $fc, $9c, $f0, $90, $00, $fe, $e4, $ff, $e0, $de, $e5
    db $00, $00

    nop

    db $fd, $00, $ff, $e0, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b
    db $3c, $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fc, $e6, $e1, $fc
    db $e3, $7f, $ff, $ff, $c0, $7f, $c0, $ff, $ff, $73, $ff, $f3, $5e, $d2, $de, $52
    db $be, $fc, $e0, $d2, $9e, $de, $1e, $9e, $e0, $e5, $01, $ff, $01, $bd, $ff, $db
    db $e7, $bd, $c3, $ff, $e5, $89, $fe, $e0, $81, $fe, $e0, $f8, $e1, $ff, $f6, $fe
    db $fe, $c0, $e3, $03, $03, $fb, $fe, $f7, $0e, $fb, $ff, $07, $ff, $13, $fe, $12
    db $fa, $06, $fe, $b7, $06, $fe, $12, $fe, $e0, $fe, $ee, $e2, $e4, $00, $df, $00
    db $fc, $fc, $fc, $04, $fe, $e0, $9c, $fc, $07, $9c, $f0, $90, $fe, $e4, $ff, $e0
    db $84, $e7, $00, $00

    nop

    db $fd, $00, $ff, $e0, $0f, $1f, $16, $39, $2f, $30, $ff, $3f, $26, $2d, $33, $3b
    db $3c, $3f, $26, $ff, $2f, $30, $36, $39, $1f, $3f, $0f, $1f, $fc, $e6, $e1, $fc
    db $e3, $7f, $ff, $ff, $c0, $7f, $c0, $ff, $ff, $73, $ff, $f3, $5e, $d2, $de, $52
    db $be, $fc, $e0, $d2, $9e, $de, $1e, $9e, $e0, $e7, $bd, $7f, $ff, $db, $e7, $bd
    db $c3, $ff, $89, $fe, $e0, $b9, $81, $fe, $e0, $f8, $e1, $ff, $f7, $ff, $c0, $e5
    db $03, $ff, $03, $fb, $fe, $f7, $0e, $fb, $07, $ff, $ff, $13, $fe, $12, $fa, $06
    db $fe, $06, $fe, $dd, $12, $fe, $e0, $fe, $ee, $fe, $a0, $e5, $fc, $fc, $fb, $fc
    db $04, $fe, $e0, $9c, $fc, $9c, $f0, $90, $00, $fe, $e4, $ff, $e0, $82, $e5, $00
    db $00

    nop

    db $1f, $68, $5f, $70, $9f, $7c, $df, $7c, $1f, $7d, $5f, $7d, $9f, $7d, $df, $7d
    db $1f, $7e, $df, $7d, $9f, $7d, $5f, $7d, $1f, $7d, $df, $7c, $9f, $7c, $5f, $70

Call_040_5775:
    push bc
    push de
    cpl
    ld d, a
    ld a, l
    cpl
    ld c, a
    ld a, h
    cpl
    ld b, a
    and c
    and d
    inc a
    jp z, Jump_040_593c

    add sp, -$10
    ld hl, sp+$04
    ld [hl], d
    ld de, $4000
    ld l, e
    ld h, d
    xor a
    add hl, bc
    jr c, jr_040_579d

    ld c, l
    ld b, h
    set 3, a
    ld hl, $8000
    add hl, de
    ld e, l
    ld d, h

jr_040_579d:
    ld hl, $e000
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_040_57b4

    ld c, l
    ld b, h
    set 2, a
    ld hl, $2000
    add hl, de
    ld e, l
    ld d, h

jr_040_57b4:
    ld hl, $f800
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_040_57cb

    ld c, l
    ld b, h
    set 1, a
    ld hl, $0800
    add hl, de
    ld e, l
    ld d, h

jr_040_57cb:
    ld hl, $fe00
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_040_57e2

    ld c, l
    ld b, h
    set 0, a
    ld hl, $0200
    add hl, de
    ld e, l
    ld d, h

jr_040_57e2:
    ld hl, $ff80
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_040_57f9

    ld c, l
    ld b, h
    set 7, a
    ld hl, $0080
    add hl, de
    ld e, l
    ld d, h

jr_040_57f9:
    ld hl, $ffe0
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_040_5810

    ld c, l
    ld b, h
    set 6, a
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h

jr_040_5810:
    ld hl, $fff8
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_040_5827

    ld c, l
    ld b, h
    set 5, a
    ld hl, $0008
    add hl, de
    ld e, l
    ld d, h

jr_040_5827:
    ld hl, $fffe
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_040_583e

    ld c, l
    ld b, h
    set 4, a
    ld hl, $0002
    add hl, de
    ld e, l
    ld d, h

jr_040_583e:
    ld hl, sp+$03
    ld [hl], a
    srl d
    rr e
    ld hl, sp+$00
    ld [hl], d
    ld d, e
    ld e, $80
    rr e
    ld hl, sp+$02
    ld [hl], $00
    ld hl, sp+$01
    ld [hl], b
    ld b, c
    ld hl, sp+$04
    ld c, [hl]
    ld hl, sp+$01
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [hl]
    ld l, e
    ld h, d
    add hl, bc
    push hl
    push af
    ld hl, sp+$05
    pop af
    adc [hl]
    jr c, jr_040_587b

    ld [hl+], a
    set 3, [hl]
    pop bc
    ld hl, $0060
    add hl, de
    ld e, l
    ld d, h
    jr nc, jr_040_5887

    ld hl, sp+$00
    inc [hl]
    jr jr_040_5887

jr_040_587b:
    pop hl
    ld hl, $ffe0
    add hl, de
    ld e, l
    ld d, h
    jr c, jr_040_5887

    ld hl, sp+$00
    dec [hl]

jr_040_5887:
    ld hl, sp+$00
    srl [hl]
    rr d
    rr e
    ld hl, sp+$00
    ld a, [hl]
    ld l, e
    ld h, d
    add hl, bc
    push hl
    push af
    ld hl, sp+$05
    pop af
    adc [hl]
    jr c, jr_040_58ae

    ld [hl+], a
    set 2, [hl]
    pop bc
    ld hl, $0018
    add hl, de
    ld e, l
    ld d, h
    jr nc, jr_040_58ba

    ld hl, sp+$00
    inc [hl]
    jr jr_040_58ba

jr_040_58ae:
    pop hl
    ld hl, $fff8
    add hl, de
    ld e, l
    ld d, h
    jr c, jr_040_58ba

    ld hl, sp+$00
    dec [hl]

jr_040_58ba:
    ld hl, sp+$00
    srl [hl]
    rr d
    rr e
    ld hl, sp+$00
    ld a, [hl]
    ld l, e
    ld h, d
    add hl, bc
    push hl
    push af
    ld hl, sp+$05
    pop af
    adc [hl]
    jr c, jr_040_58e1

    ld [hl+], a
    set 1, [hl]
    pop bc
    ld hl, $0006
    add hl, de
    ld e, l
    ld d, h
    jr nc, jr_040_58ed

    ld hl, sp+$00
    inc [hl]
    jr jr_040_58ed

jr_040_58e1:
    pop hl
    ld hl, $fffe
    add hl, de
    ld e, l
    ld d, h
    jr c, jr_040_58ed

    ld hl, sp+$00
    dec [hl]

jr_040_58ed:
    ld hl, sp+$00
    srl [hl]
    rr d
    rr e
    ld hl, sp+$00
    ld a, [hl]
    ld l, e
    ld h, d
    add hl, bc
    push hl
    push af
    ld hl, sp+$05
    pop af
    adc [hl]
    jr c, jr_040_5914

    ld [hl+], a
    set 0, [hl]
    pop bc
    ld hl, $0002
    add hl, de
    ld e, l
    ld d, h
    jr nc, jr_040_5920

    ld hl, sp+$00
    inc [hl]
    jr jr_040_5920

jr_040_5914:
    pop hl
    ld hl, $0000
    add hl, de
    ld e, l
    ld d, h
    jr c, jr_040_5920

    ld hl, sp+$00
    dec [hl]

jr_040_5920:
    ld hl, sp+$00
    srl [hl]
    rr d
    rr e
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$02
    ld b, [hl]
    ld h, a
    and $f0
    ld l, a
    xor h
    ld h, a
    ld a, b
    or l
    ld l, a
    add sp, $10

jr_040_5939:
    pop de
    pop bc
    ret


Jump_040_593c:
    ld hl, $0000
    jr jr_040_5939

    ld a, h
    bit 7, a
    jr z, jr_040_5948

    cpl
    inc a

jr_040_5948:
    ld b, a
    ld a, d
    bit 7, a
    jr z, jr_040_5950

    cpl
    inc a

jr_040_5950:
    cp b
    jr nc, jr_040_5954

    ld a, b

jr_040_5954:
    ld b, $01
    cp $20
    jr nc, jr_040_596f

    inc b
    cp $10
    jr nc, jr_040_596f

    inc b
    cp $08
    jr nc, jr_040_596f

    inc b
    cp $04
    jr nc, jr_040_596f

    inc b
    cp $02
    jr nc, jr_040_596f

    inc b

jr_040_596f:
    push bc

jr_040_5970:
    sla e
    rl d
    sla l
    rl h
    dec b
    jr nz, jr_040_5970

    push de
    ld d, h
    ld e, l
    call Call_000_0c8e
    pop de
    push hl
    ld h, d
    ld l, e
    call Call_000_0c8e
    pop de
    add hl, de
    call Call_000_0f04
    ld h, a
    ld l, $00
    pop bc

jr_040_5991:
    srl h
    rr l
    dec b
    jr nz, jr_040_5991

    pop de
    pop bc
    pop af
    ret


    push bc
    ldh [$ac], a
    xor a
    sub e
    ld c, a
    sbc a
    sub d
    ld b, a
    or c
    jr nz, jr_040_59ae

    ld a, $ff
    ld h, a
    ld l, a
    pop bc
    ret


jr_040_59ae:
    ld a, l
    push af
    ldh a, [$ac]
    push hl
    scf
    ld hl, $0000
    adc a
    rl l
    add hl, bc
    jr c, jr_040_59bf

    dec a
    add hl, de

jr_040_59bf:
    adc a
    rl l
    add hl, bc
    jr c, jr_040_59c7

    dec a
    add hl, de

jr_040_59c7:
    adc a
    rl l
    add hl, bc
    jr c, jr_040_59cf

    dec a
    add hl, de

jr_040_59cf:
    adc a
    rl l
    add hl, bc
    jr c, jr_040_59d7

    dec a
    add hl, de

jr_040_59d7:
    adc a
    rl l
    add hl, bc
    jr c, jr_040_59df

    dec a
    add hl, de

jr_040_59df:
    adc a
    rl l
    add hl, bc
    jr c, jr_040_59e7

    dec a
    add hl, de

jr_040_59e7:
    adc a
    rl l
    add hl, bc
    jr c, jr_040_59ef

    dec a
    add hl, de

jr_040_59ef:
    adc a
    rl l
    add hl, bc
    jr c, jr_040_59f7

    dec a
    add hl, de

jr_040_59f7:
    ldh [$ae], a
    pop af
    ld h, $00
    scf
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a07

    dec a
    add hl, de

jr_040_5a07:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a11

    dec a
    add hl, de

jr_040_5a11:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a1b

    dec a
    add hl, de

jr_040_5a1b:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a25

    dec a
    add hl, de

jr_040_5a25:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a2f

    dec a
    add hl, de

jr_040_5a2f:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a39

    dec a
    add hl, de

jr_040_5a39:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a43

    dec a
    add hl, de

jr_040_5a43:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a4d

    dec a
    add hl, de

jr_040_5a4d:
    ldh [$ad], a
    pop af
    scf
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a5b

    dec a
    add hl, de

jr_040_5a5b:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a65

    dec a
    add hl, de

jr_040_5a65:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a6f

    dec a
    add hl, de

jr_040_5a6f:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a79

    dec a
    add hl, de

jr_040_5a79:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a83

    dec a
    add hl, de

jr_040_5a83:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a8d

    dec a
    add hl, de

jr_040_5a8d:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5a97

    dec a
    add hl, de

jr_040_5a97:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_040_5aa1

    dec a
    add hl, de

jr_040_5aa1:
    ld l, a
    ldh a, [$ad]
    ld h, a
    ldh a, [$ae]
    pop bc
    ret


    push de
    push bc
    ld c, d
    ld a, e
    ld b, $00
    push hl
    add a
    jr c, jr_040_5ad1

    jr z, jr_040_5acc

    ld e, l
    ld d, h
    add a
    jr c, jr_040_5ad9

    add a
    jr c, jr_040_5adf

    add a
    jr c, jr_040_5ae5

    add a
    jr c, jr_040_5aeb

    add a
    jr c, jr_040_5af1

    add a
    jr c, jr_040_5af7

    xor a
    jr jr_040_5afd

jr_040_5acc:
    ld hl, $0000
    jr jr_040_5afd

jr_040_5ad1:
    ld e, l
    ld d, h
    add hl, hl
    adc a
    jr nc, jr_040_5ad9

    add hl, de
    adc b

jr_040_5ad9:
    add hl, hl
    adc a
    jr nc, jr_040_5adf

    add hl, de
    adc b

jr_040_5adf:
    add hl, hl
    adc a
    jr nc, jr_040_5ae5

    add hl, de
    adc b

jr_040_5ae5:
    add hl, hl
    adc a
    jr nc, jr_040_5aeb

    add hl, de
    adc b

jr_040_5aeb:
    add hl, hl
    adc a
    jr nc, jr_040_5af1

    add hl, de
    adc b

jr_040_5af1:
    add hl, hl
    adc a
    jr nc, jr_040_5af7

    add hl, de
    adc b

jr_040_5af7:
    add hl, hl
    adc a
    jr nc, jr_040_5afd

    add hl, de
    adc b

jr_040_5afd:
    ld e, h
    ld d, a
    ld a, c
    ld c, l
    pop hl
    push de
    add a
    jr c, jr_040_5b24

    jr z, jr_040_5b1f

    ld e, l
    ld d, h
    add a
    jr c, jr_040_5b2c

    add a
    jr c, jr_040_5b32

    add a
    jr c, jr_040_5b38

    add a
    jr c, jr_040_5b3e

    add a
    jr c, jr_040_5b44

    add a
    jr c, jr_040_5b4a

    xor a
    jr jr_040_5b50

jr_040_5b1f:
    ld hl, $0000
    jr jr_040_5b50

jr_040_5b24:
    ld e, l
    ld d, h
    add hl, hl
    adc a
    jr nc, jr_040_5b2c

    add hl, de
    adc b

jr_040_5b2c:
    add hl, hl
    adc a
    jr nc, jr_040_5b32

    add hl, de
    adc b

jr_040_5b32:
    add hl, hl
    adc a
    jr nc, jr_040_5b38

    add hl, de
    adc b

jr_040_5b38:
    add hl, hl
    adc a
    jr nc, jr_040_5b3e

    add hl, de
    adc b

jr_040_5b3e:
    add hl, hl
    adc a
    jr nc, jr_040_5b44

    add hl, de
    adc b

jr_040_5b44:
    add hl, hl
    adc a
    jr nc, jr_040_5b4a

    add hl, de
    adc b

jr_040_5b4a:
    add hl, hl
    adc a
    jr nc, jr_040_5b50

    add hl, de
    adc b

jr_040_5b50:
    pop de
    add hl, de
    adc b
    ld b, a
    ld a, c
    ldh [$a8], a
    ld a, l
    ldh [$a9], a
    ld a, h
    ld l, h
    ldh [$aa], a
    ld a, b
    ld h, b
    ldh [$ab], a
    pop bc
    pop de
    ret


jr_040_5b65:
    ld l, $00
    ret


Call_040_5b68:
    or a
    jr z, jr_040_5b65

    rra
    jr c, jr_040_5bb1

    rra
    jr c, jr_040_5b87

    rra
    jr c, jr_040_5b8e

    rra
    jr c, jr_040_5b95

    rra
    jr c, jr_040_5b9c

    rra
    jr c, jr_040_5ba3

    rra
    jr c, jr_040_5baa

    ld l, a
    ld a, h
    or a
    jr nz, jr_040_5be0

    jr jr_040_5b65

jr_040_5b87:
    ld l, a
    ld a, h
    or a
    jr nz, jr_040_5bbc

    jr jr_040_5b65

jr_040_5b8e:
    ld l, a
    ld a, h
    or a
    jr nz, jr_040_5bc2

    jr jr_040_5b65

jr_040_5b95:
    ld l, a
    ld a, h
    or a
    jr nz, jr_040_5bc8

    jr jr_040_5b65

jr_040_5b9c:
    ld l, a
    ld a, h
    or a
    jr nz, jr_040_5bce

    jr jr_040_5b65

jr_040_5ba3:
    ld l, a
    ld a, h
    or a
    jr nz, jr_040_5bd4

    jr jr_040_5b65

jr_040_5baa:
    ld l, a
    ld a, h
    or a
    jr nz, jr_040_5bda

    jr jr_040_5b65

jr_040_5bb1:
    ld l, a
    ld a, h
    or a
    jr z, jr_040_5b65

    rra
    rr l
    jr nc, jr_040_5bbc

    add h

jr_040_5bbc:
    rra
    rr l
    jr nc, jr_040_5bc2

    add h

jr_040_5bc2:
    rra
    rr l
    jr nc, jr_040_5bc8

    add h

jr_040_5bc8:
    rra
    rr l
    jr nc, jr_040_5bce

    add h

jr_040_5bce:
    rra
    rr l
    jr nc, jr_040_5bd4

    add h

jr_040_5bd4:
    rra
    rr l
    jr nc, jr_040_5bda

    add h

jr_040_5bda:
    rra
    rr l
    jr nc, jr_040_5be0

    add h

jr_040_5be0:
    rra
    rr l
    ret


    push de
    ld e, a
    ld d, l
    call Call_040_5b68
    ld h, d
    ld d, a
    ld a, e
    ld e, l
    call Call_040_5b68
    ld h, a
    ld a, l
    ld l, h
    ld h, $00
    add hl, de
    pop de
    ret


Call_040_5bf9:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld de, $d000
    ld a, $00
    ld c, $04
    call Call_000_0749
    ld hl, $d000
    ld de, $0008
    call Call_000_0595
    pop hl
    push hl
    ld de, $d000
    ld a, $01
    call Call_000_069a
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_0468
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    pop hl
    push hl
    ld de, $d000
    ld a, $02
    call Call_000_069a
    ld hl, $d000
    ld de, $b800
    ld c, $40
    call Call_000_04db
    pop hl
    push hl
    ld de, $d000
    ld a, $03
    call Call_000_069a
    ld hl, $d000
    ld de, $9800
    ld c, $40
    call Call_000_04db
    pop hl
    call Call_000_0371
    ret


Call_040_5c62:
jr_040_5c62:
    ldh a, [$a2]
    or a
    jr z, jr_040_5c71

    call Call_000_2e3b
    call Call_040_6217
    jr nz, jr_040_5c71

    jr jr_040_5c62

jr_040_5c71:
    ret


Call_040_5c72:
    call Call_040_664b
    ld de, $5d9f
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or l
    jp z, Jump_040_5c9b

    call Call_040_5bf9
    jr jr_040_5cc9

Jump_040_5c9b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld bc, $0040
    call Call_000_03bc
    ld hl, $d000
    ld de, $b800
    ld c, $40
    call Call_000_04db
    ld hl, $d000
    ld bc, $0040
    call Call_000_03bc
    ld hl, $d000
    ld de, $9800
    ld c, $40
    call Call_000_04db

jr_040_5cc9:
    pop hl
    call Call_000_0699
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d24c], a
    call Call_000_0371
    pop hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    ld [$d24d], a
    ld a, l
    ld [$d24e], a
    ld a, $01
    call Call_000_23e8
    ld c, $10
    call Call_000_25af
    pop bc
    call Call_040_5c62
    jp nz, Jump_040_5d8a

Jump_040_5cfa:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$8c]
    push de
    push af
    ld a, a
    ld de, $0503
    call Call_000_22a5
    pop af
    pop de
    ld h, a
    ldh a, [rDIV]
    push de
    push af
    ld a, a
    ld de, $0504
    call Call_000_22a5
    pop af
    pop de
    ld l, a
    ld a, [$d24c]
    push de
    push af
    ld a, a
    ld de, $0505
    call Call_000_22a5
    pop af
    pop de
    ld d, a
    call Call_040_5775
    push de
    push af
    ld a, h
    ld de, $0508
    call Call_000_22a5
    pop af
    pop de
    push de
    push af
    ld a, l
    ld de, $0509
    call Call_000_22a5
    pop af
    pop de
    push de
    push af
    ld a, a
    ld de, $050a
    call Call_000_22a5
    pop af
    pop de
    call Call_000_2e3b
    call Call_040_6217
    jr nz, jr_040_5d8a

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d24c]
    inc a
    ld [$d24c], a
    push de
    push af
    ld a, a
    ld de, $0501
    call Call_000_22a5
    pop af
    pop de
    dec bc
    ld a, c
    or b
    jp nz, Jump_040_5cfa

    rst $18

    db $0e, $05

    ld c, $10
    call Call_000_25a1
    ldh a, [$a2]
    or $80
    ldh [$a2], a
    call Call_040_5c62
    jr nz, jr_040_5d8a

    xor a
    ret


Jump_040_5d8a:
jr_040_5d8a:
    ld hl, $5e26
    call Call_000_2449
    call Call_000_068a
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    ld a, $ff
    or a
    ret


    db $52, $00, $3d, $5e, $2d, $5e, $04, $78, $52, $00, $5f, $5e, $50, $5e, $06, $78

    cp d
    nop
    ld e, a
    ld e, [hl]
    inc l
    ld e, [hl]
    ld [bc], a
    ld a, d
    ld d, d
    nop
    db $76
    ld e, [hl]
    ld h, [hl]
    ld e, [hl]
    nop
    ld a, c
    ld d, d
    nop
    rra
    ld e, [hl]
    xor $5e
    ld [bc], a
    ld a, c
    cp d
    nop
    rra
    ld e, [hl]
    inc l
    ld e, [hl]
    inc b
    ld a, d
    ld d, d
    nop
    dec a
    ld e, [hl]
    dec l
    ld e, [hl]
    ld [$5278], sp
    nop
    rra
    ld e, [hl]
    xor $5e
    ld a, [bc]
    ld a, b
    ld d, d
    nop
    rra
    ld e, [hl]
    inc l
    ld e, [hl]
    ld b, $7a
    ld d, d
    nop
    db $76
    ld e, [hl]
    ld h, [hl]
    ld e, [hl]
    nop
    ld a, b
    jr c, jr_040_5df1

jr_040_5df1:
    ld l, e
    ld h, c
    ld b, e
    ld h, c
    ld a, [bc]
    ld a, d
    jr c, jr_040_5df9

jr_040_5df9:
    xor c
    ld h, c
    sub h
    ld h, c
    inc c
    ld a, d
    ld d, d
    nop
    ld l, e
    ld h, c
    ld b, e
    ld h, c
    ld [$867a], sp
    nop
    sbc a
    ld e, [hl]
    adc d
    ld e, [hl]
    ld [bc], a
    ld a, b
    ld d, d
    nop
    call nc, $c05e
    ld e, [hl]
    inc b
    ld a, c
    xor d
    nop
    ld de, $c05f
    ld e, [hl]
    nop
    ld a, d
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld a, [$d24b]
    ldh [rWX], a
    ret


    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $78
    ld [$d247], a
    xor a
    ld [$d248], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d247
    ld a, [hl]
    or a
    jr z, jr_040_5e4f

    sub $06
    ld [hl], a
    ldh [$8b], a

jr_040_5e4f:
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d247], a
    xor a
    ld [$d248], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ec
    ld [$d247], a
    xor a
    ld [$d248], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d247
    ld a, [hl]
    cp $58
    jr z, jr_040_5e89

    add $06
    ld [hl], a
    ldh [$8b], a

jr_040_5e89:
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $70
    ld [$d247], a
    ldh [$8b], a
    ld a, $70
    ld [$d248], a
    ldh [$8a], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d24c]
    cp $3c
    jr c, jr_040_5ebf

    ld hl, $d247
    ld a, [hl]
    or a
    jr z, jr_040_5ebf

    sub $01
    ld [hl], a
    ldh [$8b], a
    ld hl, $d248
    dec [hl]
    ld a, [hl]
    ldh [$8a], a

jr_040_5ebf:
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $28
    ld [$d247], a
    ld a, $28
    ld [$d248], a
    call Call_000_0684
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d247
    ld a, [hl]
    or a
    jr z, jr_040_5eed

    sub $01
    ld [hl], a
    ldh [$8b], a
    ld hl, $d248
    dec [hl]
    ld a, [hl]
    ldh [$8a], a

jr_040_5eed:
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d247], a
    ld [$d248], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d247
    inc [hl]
    ld a, [hl]
    ldh [$8b], a
    ld hl, $d248
    inc [hl]
    ld a, [hl]
    ldh [$8a], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d24c]
    cp $32
    jr nz, jr_040_5f4a

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7906
    push hl
    ld de, $d000
    ld a, $01
    call Call_000_069a
    ld hl, $d000
    ld de, $9000
    ld c, $20
    call Call_000_0468
    ld hl, $d800
    ld de, $8800
    ld c, $20
    call Call_000_0468
    pop hl
    jp Jump_040_613c


jr_040_5f4a:
    cp $33
    jr nz, jr_040_5f7e

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7906
    push hl
    ld de, $d000
    ld a, $01
    call Call_000_069a
    ld hl, $d200
    ld de, $9200
    ld c, $20
    call Call_000_0468
    ld hl, $da00
    ld de, $8a00
    ld c, $20
    call Call_000_0468
    pop hl
    jp Jump_040_613c


    cp $32
    jr nz, jr_040_5fde

jr_040_5f7e:
    cp $34
    jr nz, jr_040_5fae

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7906
    push hl
    ld de, $d000
    ld a, $01
    call Call_000_069a
    ld hl, $d400
    ld de, $9400
    ld c, $20
    call Call_000_0468
    ld hl, $dc00
    ld de, $8c00
    ld c, $20
    call Call_000_0468
    pop hl
    jp Jump_040_613c


jr_040_5fae:
    cp $35
    jr nz, jr_040_5fde

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7906
    push hl
    ld de, $d000
    ld a, $01
    call Call_000_069a
    ld hl, $d600
    ld de, $9600
    ld c, $20
    call Call_000_0468
    ld hl, $de00
    ld de, $8e00
    ld c, $20
    call Call_000_0468
    pop hl
    jp Jump_040_613c


jr_040_5fde:
    cp $3c
    jr nz, jr_040_6018

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7906
    push hl
    ld de, $d000
    ld a, $02
    call Call_000_069a
    ld hl, $d000
    ld de, $b8c0
    ld c, $12
    call Call_000_0468
    pop hl
    push hl
    ld de, $d6c0
    ld a, $03
    call Call_000_069a
    ld hl, $d6c0
    ld de, $98c0
    ld c, $12
    call Call_000_0468
    pop hl
    jp Jump_040_613c


jr_040_6018:
    cp $41
    jr nz, jr_040_6052

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7906
    push hl
    ld de, $d000
    ld a, $02
    call Call_000_069a
    ld hl, $d120
    ld de, $b8c0
    ld c, $12
    call Call_000_0468
    pop hl
    push hl
    ld de, $d6c0
    ld a, $03
    call Call_000_069a
    ld hl, $d7e0
    ld de, $98c0
    ld c, $12
    call Call_000_0468
    pop hl
    jp Jump_040_613c


jr_040_6052:
    cp $69
    jr nz, jr_040_608c

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7906
    push hl
    ld de, $d000
    ld a, $02
    call Call_000_069a
    ld hl, $d240
    ld de, $b8c0
    ld c, $12
    call Call_000_0468
    pop hl
    push hl
    ld de, $d6c0
    ld a, $03
    call Call_000_069a
    ld hl, $d900
    ld de, $98c0
    ld c, $12
    call Call_000_0468
    pop hl
    jp Jump_040_613c


jr_040_608c:
    cp $6e
    jr nz, jr_040_60c6

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7906
    push hl
    ld de, $d000
    ld a, $02
    call Call_000_069a
    ld hl, $d360
    ld de, $b8c0
    ld c, $12
    call Call_000_0468
    pop hl
    push hl
    ld de, $d6c0
    ld a, $03
    call Call_000_069a
    ld hl, $da20
    ld de, $98c0
    ld c, $12
    call Call_000_0468
    pop hl
    jp Jump_040_613c


jr_040_60c6:
    cp $73
    jr nz, jr_040_6100

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7906
    push hl
    ld de, $d000
    ld a, $02
    call Call_000_069a
    ld hl, $d480
    ld de, $b8c0
    ld c, $12
    call Call_000_0468
    pop hl
    push hl
    ld de, $d6c0
    ld a, $03
    call Call_000_069a
    ld hl, $db40
    ld de, $98c0
    ld c, $12
    call Call_000_0468
    pop hl
    jp Jump_040_613c


jr_040_6100:
    cp $70
    jr nz, jr_040_613c

    rst $08
    and l
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7906
    push hl
    ld de, $d000
    ld a, $02
    call Call_000_069a
    ld hl, $d5a0
    ld de, $b8c0
    ld c, $12
    call Call_000_0468
    pop hl
    push hl
    ld de, $d7e0
    ld a, $03
    call Call_000_069a
    ld hl, $dd80
    ld de, $98c0
    ld c, $12
    call Call_000_0468
    pop hl
    jp Jump_040_613c


Jump_040_613c:
jr_040_613c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $78
    ld [$d247], a
    ld a, $48
    ld [$d248], a
    ld a, $48
    ldh [rWY], a
    ld a, $78
    ld [$d24b], a
    ld a, $01
    ld hl, $5e26
    call Call_000_23e8
    ldh a, [rLCDC]
    and $bf
    ldh [rLCDC], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d24b]
    sub $06
    jr c, jr_040_6181

    cp $07
    jr nc, jr_040_617e

    ld a, $07

jr_040_617e:
    ld [$d24b], a

jr_040_6181:
    ld hl, $d247
    ld a, [hl]
    or a
    jr z, jr_040_618d

    sub $06
    ld [hl], a
    ldh [$8b], a

jr_040_618d:
    ld hl, $d248
    ld a, [hl]
    ldh [$8a], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    ld [$d247], a
    ldh [$8b], a
    ld a, $00
    ld [$d248], a
    ldh [$8a], a
    ret


    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d24c]
    cp $3c
    jr c, jr_040_61ca

    ld hl, $d247
    ld a, [hl]
    or a
    jr z, jr_040_61ca

    sub $01
    ld [hl], a
    ldh [$8b], a
    ld hl, $d248
    dec [hl]
    ld a, [hl]
    ldh [$8a], a

jr_040_61ca:
    ret


Call_040_61cb:
    call Call_040_664b
    ld hl, $4908
    call Call_040_5bf9
    ld c, $7f
    call Call_000_258d
    rst $08

    db $5e

    ld c, $3c

Jump_040_61dd:
    call Call_000_2e3b
    call Call_040_6238
    jr nz, jr_040_6208

    dec c
    jp nz, Jump_040_61dd

    ld a, $80
    ldh [$8a], a
    ld c, $3c

Jump_040_61ef:
    call Call_000_2e3b
    call Call_040_6238
    jr nz, jr_040_6208

    dec c
    jp nz, Jump_040_61ef

    ld c, $08
    call Call_000_25a1
    call Call_040_5c62
    jp nz, Jump_040_6208

    xor a
    ret


Jump_040_6208:
jr_040_6208:
    ld a, $80
    ldh [$8a], a
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    xor a
    inc a
    ret


Call_040_6217:
    ld a, [$cb40]
    cp $10
    jr z, jr_040_622a

    ldh a, [$90]
    bit 3, a
    jr nz, jr_040_6234

    bit 0, a
    jr nz, jr_040_6234

    xor a
    ret


jr_040_622a:
    ld a, $20
    ld [$cb00], a
    ld a, $01
    call Call_000_3081

jr_040_6234:
    ld a, $01
    or a
    ret


Call_040_6238:
    ld a, [$cb40]
    cp $10
    jr z, jr_040_624b

    ldh a, [$90]
    bit 3, a
    jr nz, jr_040_6255

    bit 0, a
    jr nz, jr_040_6255

    xor a
    ret


jr_040_624b:
    ld a, $20
    ld [$cb00], a
    ld a, $01
    call Call_000_3081

jr_040_6255:
    xor a
    ret


    rst $38
    ld a, a
    rst $38
    ld l, e
    ld e, b
    ld e, $00
    nop
    ld h, b
    ld bc, $7fff
    rst $28
    dec a
    nop
    nop
    add a
    ld h, l
    rst $38
    ld a, a
    sub h
    ld d, d
    nop
    nop
    ld e, a
    ld c, d
    cp a
    ld e, a
    rst $18
    jr z, jr_040_6276

jr_040_6276:
    nop
    ld a, [c]
    inc bc
    ld c, e
    inc bc
    ret z

    ld [de], a
    ldh [rNR24], a
    jr nz, jr_040_6282

    db $10

jr_040_6282:
    ld [bc], a
    jr jr_040_62a8

    rst $38
    ld d, e
    jr nz, jr_040_628a

    rrca

jr_040_628a:
    nop
    jr @+$23

    sbc a
    ld d, d
    jr nz, jr_040_6292

    nop

jr_040_6292:
    ld b, b
    add h
    ld d, c
    db $f4
    ld a, a

Call_040_6297:
    ld a, h
    xor d
    add a
    jr c, jr_040_62a1

    ld a, $ff
    ld h, a
    ld l, a
    ret


jr_040_62a1:
    bit 7, h
    jr z, jr_040_62ab

    xor a
    sub l
    ld l, a

jr_040_62a8:
    sbc a
    sub h
    ld h, a

jr_040_62ab:
    bit 7, d
    jr z, jr_040_62b5

    xor a
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a

jr_040_62b5:
    ld a, h
    ld h, l
    ld l, $00
    jp Jump_000_0ddb


Call_040_62bc:
    ld hl, $d418
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    rst $18

    db $02, $10

    call Call_000_11ba
    ret


    xor a
    ld [$d36b], a
    call Call_040_62bc

Jump_040_62d0:
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, [$d443]
    cp $01
    jp z, Jump_040_637c

    cp $02
    jp z, Jump_040_637c

    push hl
    ld a, [$c329]
    ld h, a
    ld l, $00
    ld de, $0080
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr nz, jr_040_630e

    ld hl, $d36b
    set 1, [hl]
    ld h, b
    ld l, c
    jr jr_040_632c

jr_040_630e:
    push hl
    ld a, [$c32b]
    ld h, a
    ld l, $00
    ld de, $ff80
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr z, jr_040_632c

    ld hl, $d36b
    set 0, [hl]
    ld h, b
    ld l, c

jr_040_632c:
    ld a, l
    ld [$d426], a
    ld a, h
    ld [$d427], a
    pop hl
    push hl
    ld a, [$c32a]
    ld h, a
    ld l, $00
    ld de, $0080
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr nz, jr_040_6355

    ld hl, $d36b
    set 3, [hl]
    ld h, b
    ld l, c
    jr jr_040_6373

jr_040_6355:
    push hl
    ld a, [$c32c]
    ld h, a
    ld l, $00
    ld de, $fd80
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr z, jr_040_6373

    ld hl, $d36b
    set 2, [hl]
    ld h, b
    ld l, c

jr_040_6373:
    ld a, l
    ld [$d428], a
    ld a, h
    ld [$d429], a
    ret


Jump_040_637c:
    push hl
    ld a, [$d441]
    ld h, a
    ld l, $00
    ld de, $0020
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr nz, jr_040_639c

    ld hl, $d36b
    set 1, [hl]
    ld h, b
    ld l, c
    jr jr_040_63bc

jr_040_639c:
    push hl
    ld a, [$d441]
    add $05
    ld h, a
    ld l, $00
    ld de, $ffe0
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr z, jr_040_63bc

    ld hl, $d36b
    set 0, [hl]
    ld h, b
    ld l, c

jr_040_63bc:
    ld a, l
    ld [$d426], a
    ld a, h
    ld [$d427], a
    pop hl
    push hl
    ld a, [$d442]
    ld h, a
    ld l, $00
    ld de, $0020
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr nz, jr_040_63e5

    ld hl, $d36b
    set 3, [hl]
    ld h, b
    ld l, c
    jr jr_040_6405

jr_040_63e5:
    push hl
    ld a, [$d442]
    add $04
    ld h, a
    ld l, $00
    ld de, $ffe0
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr z, jr_040_6405

    ld hl, $d36b
    set 2, [hl]
    ld h, b
    ld l, c

jr_040_6405:
    ld a, l
    ld [$d428], a
    ld a, h
    ld [$d429], a
    ret


    add sp, -$10
    xor a
    ld [$d36b], a
    call Call_040_62bc
    push de
    push hl
    ld hl, sp+$06
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de
    ld hl, sp+$02
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld l, e
    ld h, d
    pop de
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld a, [$d443]
    cp $01
    jp z, Jump_040_6591

    cp $02
    jp z, Jump_040_6591

    ld a, [$c329]
    ld h, a
    ld l, $00
    ld bc, $0080
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr nz, jr_040_6465

    call Call_040_6491
    ld hl, $d36b
    set 1, [hl]
    jr jr_040_64b4

jr_040_6465:
    ld a, [$c32b]
    ld h, a
    ld l, $00
    ld bc, $ff80
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr z, jr_040_6489

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    call Call_040_6491
    ld hl, $d36b
    set 0, [hl]
    jr jr_040_64b4

jr_040_6489:
    ld hl, sp+$06
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_040_64b4

Call_040_6491:
    ld a, h
    ld h, l
    ld l, $00
    push af
    push hl
    ld hl, sp+$08
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    bit 7, d
    jr z, jr_040_64a6

    xor a
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a

jr_040_64a6:
    pop hl
    pop af
    call Call_000_0ddb
    ld e, l
    ld d, h
    ld hl, sp+$0a
    ld [hl-], a
    ld a, d
    ld [hl-], a
    ld [hl], e
    ret


jr_040_64b4:
    ld a, [$c32a]
    ld h, a
    ld l, $00
    ld bc, $0080
    add hl, bc
    pop de
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr nz, jr_040_64d3

    call Call_040_64ff
    ld hl, $d36b
    set 3, [hl]
    jr jr_040_6522

jr_040_64d3:
    ld a, [$c32c]
    ld h, a
    ld l, $00
    ld bc, $fd80
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr z, jr_040_64f7

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    call Call_040_64ff
    ld hl, $d36b
    set 2, [hl]
    jr jr_040_6522

jr_040_64f7:
    ld hl, sp+$07
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_040_6522

Call_040_64ff:
    ld a, h
    ld h, l
    ld l, $00
    push af
    push hl
    ld hl, sp+$08
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    bit 7, d
    jr z, jr_040_6514

    xor a
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a

jr_040_6514:
    pop hl
    pop af
    call Call_000_0ddb
    ld e, l
    ld d, h
    ld hl, sp+$0b
    ld [hl-], a
    ld a, d
    ld [hl-], a
    ld [hl], e
    ret


Jump_040_6522:
jr_040_6522:
    ld hl, sp+$06
    ld a, [hl+]
    inc hl
    inc hl
    cp [hl]
    jr c, jr_040_6576

    jr nz, jr_040_654b

    ld hl, sp+$05
    ld a, [hl+]
    inc hl
    inc hl
    cp [hl]
    jr c, jr_040_6576

    jr nz, jr_040_654b

    ld hl, sp+$04
    ld a, [hl+]
    inc hl
    inc hl
    cp [hl]
    jr c, jr_040_6576

    jr nz, jr_040_654b

    inc hl
    or [hl]
    inc hl
    or [hl]
    jp z, Jump_040_6582

    ld hl, sp+$06
    jr jr_040_6555

jr_040_654b:
    ld a, [$d36b]
    and $f3
    ld [$d36b], a
    ld hl, sp+$06

jr_040_6555:
    ld a, [hl-]
    or [hl]
    jr nz, jr_040_6582

    dec hl
    xor a
    sub [hl]
    ld b, a
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    call Call_000_0bce
    push hl
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    call Call_000_0bce
    pop de
    add sp, $10
    jp Jump_040_62d0


jr_040_6576:
    ld a, [$d36b]
    and $fc
    ld [$d36b], a
    ld hl, sp+$09
    jr jr_040_6555

Jump_040_6582:
jr_040_6582:
    ld hl, sp+$02
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add sp, $10
    jp Jump_040_62d0


Jump_040_6591:
    ld a, [$d441]
    ld h, a
    ld l, $00
    ld bc, $0020
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr nz, jr_040_65af

    call Call_040_65d7
    ld hl, $d36b
    set 1, [hl]
    jr jr_040_65ec

jr_040_65af:
    ld a, [$d441]
    add $05
    ld h, a
    ld l, $00
    ld bc, $ffe0
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr z, jr_040_65cf

    call Call_040_65d7
    ld hl, $d36b
    set 0, [hl]
    jr jr_040_65ec

jr_040_65cf:
    ld hl, sp+$06
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_040_65ec

Call_040_65d7:
    ld c, l
    ld b, h
    ld hl, sp+$04
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld l, c
    ld h, b
    call Call_040_6297
    ld e, l
    ld d, h
    ld hl, sp+$0a
    ld [hl-], a
    ld a, d
    ld [hl-], a
    ld [hl], e
    ret


jr_040_65ec:
    pop de
    ld a, [$d442]
    ld h, a
    ld l, $00
    ld bc, $0020
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr nz, jr_040_660c

    call Call_040_6636
    ld hl, $d36b
    set 3, [hl]
    jp Jump_040_6522


jr_040_660c:
    ld a, [$d442]
    add $04
    ld h, a
    ld l, $00
    ld bc, $ffe0
    add hl, bc
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr z, jr_040_662d

    call Call_040_6636
    ld hl, $d36b
    set 2, [hl]
    jp Jump_040_6522


jr_040_662d:
    ld hl, sp+$07
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jp Jump_040_6522


Call_040_6636:
    ld c, l
    ld b, h
    ld hl, sp+$04
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld l, c
    ld h, b
    call Call_040_6297
    ld e, l
    ld d, h
    ld hl, sp+$0b
    ld [hl-], a
    ld a, d
    ld [hl-], a
    ld [hl], e
    ret


Call_040_664b:
    push af
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
    pop af
    ret


    call Call_040_664b
    and $07
    ld hl, $66a5
    add a
    add l
    ld l, a
    jr nc, jr_040_6674

    inc h

jr_040_6674:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_040_5bf9
    ld c, $04
    call Call_000_258d
    call Call_000_2625
    call Call_000_2ed5
    inc a
    ld c, $02

jr_040_6688:
    xor a
    ldh [$8a], a
    call Call_000_2e3b
    xor $80
    ldh [$8a], a
    call Call_000_2e3b
    dec c
    jr nz, jr_040_6688

    call Call_000_2ed5
    or h
    ld c, $04
    call Call_000_258a
    call Call_000_2625
    ret


    nop
    ld a, e
    ld [bc], a
    ld a, e
    inc b
    ld a, e
    ld b, $7b
    ld [$0849], sp
    ld c, c
    ld [$0849], sp
    ld c, c
    call Call_040_664b
    and $03
    ld hl, $66ee
    add a
    add l
    ld l, a
    jr nc, jr_040_66c3

    inc h

jr_040_66c3:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_040_5bf9
    ld c, $04
    call Call_000_258d
    call Call_000_2625
    ld bc, $0e10

jr_040_66d4:
    call Call_000_2e3b
    ldh a, [$94]
    and $0f
    jr nz, jr_040_66e2

    dec bc
    ld a, b
    or c
    jr nz, jr_040_66d4

jr_040_66e2:
    ld c, $04
    call Call_000_258a
    call Call_000_2625
    call Call_000_2e3b
    ret


    nop
    ld c, c
    ld [bc], a
    ld c, c
    inc b
    ld c, c
    ld b, $49

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
    db $c0, $e0, $e2, $00, $00, $07, $03, $1f, $ff, $0c, $33, $1c, $26, $39, $7c, $23
    db $7c, $ff, $43, $5e, $61, $00, $00, $e0, $c0, $f8, $ff, $30, $cc, $38, $64, $9c
    db $3e, $c4, $3e, $ff, $c2, $7a, $86, $4f, $70, $4f, $70, $7f, $ff, $67, $7a, $3f
    db $32, $1f, $10, $1f, $18, $ff, $0f, $0f, $07, $f2, $0e, $f2, $0e, $fe, $ff, $e6
    db $5e, $fc, $4c, $f8, $08, $f8, $18, $f7, $f0, $f0, $e0, $10, $e9, $f7, $87, $f8
    db $8f, $fe, $f0, $c9, $f7, $f0, $0f, $f8, $ff, $80, $fd, $ff, $81, $f6, $87, $e9
    db $8f, $f6, $9e, $d7, $ff, $9c, $eb, $b8, $ef, $b8, $ff, $00, $df, $ff, $c0, $37
    db $f0, $cb, $f8, $b7, $3c, $f5, $ff, $1c, $eb, $0e, $fb, $0e, $ff, $80, $fe, $ff
    db $80, $ff, $81, $fd, $81, $fe, $83, $de, $ff, $9f, $e0, $bf, $d1, $9f, $ff, $00
    db $bf, $ff, $80, $7f, $c0, $5f, $c0, $3f, $e0, $3d, $ff, $fc, $03, $fe, $45, $fc
    db $ff, $f8, $87, $ff, $ff, $b5, $ff, $8d, $ff, $b7, $ff, $b5, $f7, $b5, $85, $85
    db $af, $a0, $07, $fd, $ff, $11, $ff, $ff, $55, $ff, $75, $ff, $75, $55, $71, $f7
    db $51, $ff, $df, $90, $a0, $f8, $47, $fc, $d7, $7f, $fc, $47, $fc, $5f, $5c, $47
    db $44, $8f, $a0, $ef, $fc, $87, $ff, $bc, $72, $a0, $bd, $ff, $bd, $77, $bd, $84
    db $84, $95, $a3, $62, $ff, $6a, $fc, $e0, $ef, $7a, $7a, $22, $22, $85, $a2, $f0
    db $8f, $f8, $ff, $af, $f8, $8f, $f8, $bf, $b8, $8f, $88, $f0, $c0, $a8, $ba, $a5
    db $ff, $ff, $eb, $ea, $f8, $8f, $f7, $87, $de, $30, $c9, $0f, $f8, $f7, $f0, $f0
    db $a9, $eb, $b8, $6f, $d7, $9c, $f6, $9e, $00, $e0, $87, $fd, $e1, $82, $ff, $eb
    db $0e, $f5, $1c, $b7, $3c, $cb, $f8, $ef, $37, $f0, $df, $c0, $f5, $81, $e9, $8f
    db $f4, $7e, $ca, $c0, $f8, $8f, $fb, $8f, $f5, $84, $c1, $81, $f7, $4b, $f8, $17
    db $ca, $c0, $8f, $f8, $6f, $78, $7b, $d7, $10, $d5, $82, $1f, $e1, $3f, $ed, $fe
    db $e2, $ff, $e1, $21, $ed, $2d, $ff, $3f, $ff, $f0, $67, $5f, $ff, $44, $00, $e0
    db $fe, $e0, $55, $44, $10, $e1, $eb, $38, $ef, $f0, $e0, $6d, $fe, $e1, $6d, $25
    db $25, $fc, $a5, $83, $e0, $e1, $d4, $ff, $d7, $57, $c4, $44, $69, $ff, $10, $a1
    db $e4, $c0, $df, $e0, $c0, $77, $74, $e0, $c0, $bf, $fc, $ff, $fc, $b7, $ff, $b4
    db $52, $80, $b5, $b6, $b0, $c0, $b4, $b4, $75, $82, $fe, $51, $b0, $c0, $51, $df
    db $ff, $57, $57, $51, $51, $65, $82, $7f, $d1, $ff, $7f, $f5, $ff, $55, $df, $d5
    db $d5, $d5, $fd, $55, $3f, $80, $7e, $c3, $7f, $da, $7f, $da, $7f, $ff, $5a, $ff
    db $da, $da, $c2, $42, $45, $82, $ff, $fc, $23, $fe, $ab, $fe, $a3, $fe, $af, $bf
    db $ae, $a3, $a2, $ff, $fe, $c0, $24, $80, $90, $8f, $ff, $88, $ff, $84, $a0, $80
    db $00, $81, $13, $af, $81, $ff, $ff, $87, $ff, $8f, $ff, $97, $f8, $98, $df, $f7
    db $b9, $f6, $b6, $f9, $ff, $81, $e0, $ff, $ff, $f0, $ff, $e8, $1f, $18, $ef, $9c
    db $6f, $ff, $1c, $ef, $8e, $8e, $8f, $8f, $8e, $8f, $ff, $96, $9f, $a0, $bf, $bf
    db $bf, $b9, $bf, $ff, $a9, $b6, $00, $00, $80, $80, $60, $e0, $ff, $10, $f0, $08
    db $f8, $88, $f8, $e4, $fc, $7f, $34, $fc, $98, $98, $a7, $bf, $ca, $19, $c0, $ef
    db $bf, $b0, $bf, $a0, $df, $e1, $04, $04, $cb, $ff, $cf, $31, $ff, $d0, $ff, $d0
    db $7f, $ef, $ff, $3f, $e4, $bc, $fc, $5c, $83, $83, $84, $df, $87, $8f, $8f, $9f
    db $90, $fe, $e0, $9f, $bf, $ff, $a0, $ff, $df, $c0, $c0, $30, $f0, $c8, $ff, $f8
    db $e4, $3c, $f4, $1c, $fc, $dc, $fe, $ff, $32, $fd, $9f, $c6, $c6, $89, $8f, $90
    db $ff, $9f, $99, $9f, $9f, $96, $bf, $a0, $ac, $fd, $b3, $20, $c1, $c0, $c0, $20
    db $e0, $90, $f0, $ff, $c8, $78, $c8, $78, $e8, $38, $e8, $f8, $ff, $8f, $8f, $b6
    db $bf, $c4, $ff, $ac, $df, $af, $9e, $f7, $bf, $e3, $ad, $60, $e3, $82, $e3, $28
    db $ff, $d8, $64, $9c, $84, $fc, $ce, $7e, $f9, $ff, $3f, $8b, $8b, $9f, $94, $9d
    db $92, $af, $fb, $bf, $c0, $1a, $60, $93, $fe, $bf, $ec, $60, $ff, $60, $e0, $a0
    db $f0, $30, $c8, $f8, $04, $7f, $fc, $04, $fc, $82, $fe, $c2, $7e, $31, $8c, $ff
    db $ff, $40, $ff, $20, $ff, $10, $ff, $08, $bf, $ff, $04, $ff, $02, $ff, $01, $00
    db $60, $be, $ff, $fd, $9f, $fc, $9e, $fd, $8d, $fe, $87, $fe, $fa, $c2, $ff, $ff
    db $6c, $9f, $f8, $3f, $78, $ef, $bf, $b0, $7f, $e0, $fa, $c2, $ff, $ff, $b9, $ef
    db $af, $b9, $af, $c4, $34, $60, $a6, $bf, $90, $fb, $9f, $8c, $df, $e0, $9a, $7e
    db $9e, $7e, $26, $ff, $fe, $16, $fe, $0e, $fe, $3c, $fc, $f8, $ee, $2e, $80, $b6
    db $a9, $ff, $e1, $e0, $bf, $a3, $9f, $ef, $90, $8f, $8c, $83, $42, $80, $fe, $52
    db $fe, $ff, $0a, $fc, $04, $f8, $18, $e0, $20, $c0, $fb, $c0, $00, $b5, $41, $f8
    db $d7, $f8, $df, $f4, $bf, $df, $f0, $af, $ba, $9f, $9c, $e0, $e1, $f8, $ff, $ff
    db $6c, $97, $fd, $07, $f9, $1f, $e6, $ef, $3e, $f8, $78, $80, $6f, $e1, $ff, $bf
    db $b3, $3f, $bf, $a8, $bf, $a0, $9f, $96, $be, $e0, $10, $a0, $ff, $f8, $b8, $fc
    db $24, $fc, $14, $fc, $0c, $bf, $fa, $3e, $f2, $7e, $8e, $8e, $5f, $40, $a2, $ab
    db $dd, $a2, $b1, $c0, $cc, $de, $e0, $91, $f0, $e1, $fd, $ff, $a7, $fd, $97, $f9
    db $0f, $f5, $3f, $db, $f7, $5b, $80, $80, $a0, $e2, $f3, $ff, $d2, $ad, $ff, $b2
    db $bf, $a0, $db, $f4, $cf, $f9, $d6, $fd, $f6, $50, $a0, $bf, $e9, $bf, $ff, $37
    db $fe, $ff, $1e, $f2, $7e, $e1, $ff, $49, $7f, $ff, $fb, $ff, $8f, $44, $c0, $af
    db $b9, $bf, $bf, $e0, $ee, $5c, $c1, $b5, $9f, $9d, $a2, $c1, $10, $f0, $98, $ff
    db $f8, $44, $fc, $a4, $fc, $fc, $7c, $fc, $ff, $34, $81, $81, $82, $83, $83, $83
    db $87, $ef, $84, $87, $85, $9f, $1c, $c0, $d4, $ff, $f0, $ff, $f0, $88, $f8, $e8
    db $f8, $f4, $9c, $f4, $ff, $fc, $f4, $dc, $f4, $fc, $02, $fe, $87, $6d, $87, $48
    db $c1, $b3, $ac, $44, $60, $ff, $be, $92, $e0, $ff, $e0, $e0, $18, $f8, $84, $fc
    db $e2, $7e, $ff, $fa, $3e, $fe, $e6, $3f, $f3, $fd, $ff, $df, $87, $87, $88, $8f
    db $8c, $3e, $c0, $a3, $bf, $bf, $ff, $dc, $ff, $e3, $bf, $bd, $e2, $a1, $30, $fe
    db $e2, $a0, $84, $fc, $c6, $7e, $cf, $79, $df, $bf, $75, $be, $be, $c5, $ff, $a0
    db $62, $c0, $c5, $ff, $ff, $ef, $fa, $be, $b1, $ad, $b3, $60, $bb, $60, $98, $64
    db $c0, $02, $fe, $01, $68, $20, $79, $ef, $ff, $f3, $9f, $8f, $02, $c0, $a7, $bf
    db $af, $b7, $b8, $af, $b8, $80, $e1, $df, $ff, $60, $e5, $96, $7f, $fe, $81, $ff
    db $41, $ff, $f3, $bf, $a0, $e1, $57, $8f, $88, $bf, $20, $c0, $ef, $9c, $a1, $a6
    db $c0, $a1, $ff, $08, $f8, $c4, $fc, $74, $fc, $8e, $fe, $ef, $f3, $ff, $fd, $7f
    db $a0, $a1, $88, $8f, $9f, $7b, $9f, $a1, $fe, $a0, $ff, $ff, $9f, $99, $62, $a5
    db $ff, $84, $fc, $42, $fe, $f2, $fe, $de, $be, $fe, $8c, $a0, $c0, $ff, $c3, $bf
    db $bf, $9f, $9e, $f7, $8f, $88, $87, $90, $60, $fe, $2a, $fe, $82, $ff, $fc, $84
    db $f8, $18, $fc, $3c, $f8, $38, $fb, $c0, $40, $f1, $27, $c0, $ff, $b0, $bf, $8f
    db $fa, $ff, $a0, $01, $ea, $a0, $2d, $f3, $3f, $e1, $7e, $f7, $f2, $fc, $c4, $20
    db $c1, $ff, $d1, $ee, $d1, $9f, $bf, $a8, $ff, $e6, $df, $e6, $00, $50, $c1, $f1
    db $ff, $5f, $f1, $5f, $e3, $3f, $e3, $3f, $c2, $ef, $7e, $9c, $fc, $f0, $d2, $00
    db $bf, $a6, $ff, $75, $e9, $15, $20, $fc, $9c, $e0, $b8, $9f, $90, $af, $00, $fd
    db $f5, $79, $a0, $0a, $fc, $6c, $f8, $88, $f0, $63, $30, $c0, $fd, $00, $22, $c0
    db $20, $c2, $bf, $ac, $de, $a0, $fe, $9f, $a0, $f7, $5f, $ff, $09, $ff, $05, $fe
    db $df, $12, $fc, $1c, $f0, $70, $e0, $e1, $ff, $f0, $3f, $9f, $94, $9f, $9c, $bf
    db $a2, $fe, $a0, $e0, $a2, $bf, $fe, $1e, $fe, $92, $fe, $aa, $be, $a2, $60, $f6
    db $e0, $a1, $bf, $b2, $b7, $00, $c8, $ff, $f0, $bf, $f9, $ac, $fe, $a1, $4f, $00
    db $47, $fc, $14, $f8, $08, $5a, $a4, $e0, $40, $00, $c3, $9f, $91, $88, $80, $a0
    db $84, $e1, $f7, $91, $9e, $89, $3f, $a0, $ce, $32, $ce, $3a, $e3, $dc, $24, $80
    db $a2, $de, $e0, $00, $c7, $a0, $bf, $de, $be, $13, $60, $bf, $ba, $80, $80, $40
    db $fe, $a6, $e4, $7f, $fc, $fc, $3c, $91, $91, $bb, $aa, $64, $e0, $ff, $97, $b9
    db $bf, $f3, $de, $ff, $ed, $bf, $ff, $be, $c2, $c2, $f7, $75, $ff, $1d, $ff, $ff
    db $b9, $fe, $ea, $fe, $66, $de, $fa, $c6, $ff, $7e, $8f, $8f, $92, $9d, $a7, $b8
    db $af, $bb, $bf, $f0, $e2, $81, $f9, $bf, $af, $62, $81, $1c, $ff, $fc, $8a, $fe
    db $63, $ff, $f3, $fe, $ff, $bf, $dc, $f7, $5e, $8f, $8f, $b0, $84, $80, $c3, $77
    db $ff, $b3, $be, $5e, $e0, $bf, $ff, $ea, $60, $c3, $ef, $84, $fc, $c4, $7c, $40
    db $81, $f8, $f8, $83, $f5, $83, $e2, $a1, $a0, $1d, $a0, $cc, $ff, $de, $f3, $43
    db $bf, $b9, $c0, $a1, $00, $c1, $fe, $a1, $94, $c1, $80, $ff, $e0, $fe, $dc, $e3
    db $9b, $9f, $bb, $a4, $bb, $ae, $0c, $ff, $0c, $0e, $0e, $fe, $f6, $38, $f8, $18
    db $5c, $40, $20, $3c, $81, $87, $87, $98, $84, $60, $a0, $80, $e0, $7f, $bf, $ef
    db $bf, $f0, $8f, $ff, $e0, $84, $62, $ff, $1e, $fe, $f9, $ef, $f1, $1f, $e2, $fe
    db $c3, $1c, $fc, $60, $fd, $02, $c1, $9c, $80, $f8, $a0, $9f, $98, $fb, $87, $87
    db $81, $20, $74, $fe, $aa, $fe, $02, $ee, $5e, $80, $38, $f0, $f0, $60, $81, $fb
    db $fe, $fd, $97, $c7, $ff, $aa, $0b, $60, $d3, $dc, $a0, $40, $c0, $f2, $ff, $fe
    db $fa, $0e, $fc, $64, $fc, $a4, $f8, $df, $c8, $f0, $30, $e0, $20, $00, $81, $f4
    db $fb, $ab, $b9, $bf, $38, $20, $d9, $5c, $80, $92, $50, $80, $08, $8e, $45, $20
    db $f9, $fe, $e6, $e2, $a0, $7a, $c0, $40, $80, $d4, $ff, $bf, $a7, $bf, $a4, $9f
    db $98, $9f, $96, $f0, $a0, $a3, $a9, $80, $60, $c4, $80, $c3, $bf, $a9, $97, $98
    db $be, $1e, $c0, $90, $8f, $8a, $87, $84, $e0, $61, $05, $ff, $ff, $8e, $fa, $8e
    db $fa, $dc, $74, $da, $af, $7e, $e4, $e4, $40, $80, $a0, $c8, $f6, $20, $c8, $ee
    db $bf, $a0, $f3, $ff, $cc, $d8, $80, $ff, $ff, $04, $6b, $fc, $1c, $ff, $60, $94
    db $42, $60, $38, $f8, $e0, $a1, $ab, $c0, $ff, $87, $40, $b0, $be, $e2, $8b, $a0
    db $e2, $f4, $37, $bc, $d4, $7c, $40, $a0, $f0, $10, $1e, $c1, $60, $ff, $f4, $24
    db $80, $26, $80, $a1, $ff, $c0, $9f, $91, $9f, $9a, $eb, $bf, $ba, $80, $41, $48
    db $c0, $80, $22, $fe, $e2, $ff, $fe, $fa, $9e, $fc, $3c, $87, $87, $8e, $31, $8b
    db $06, $81, $de, $80, $e0, $e0, $9f, $9a, $e0, $e3, $40, $c0, $7f, $fc, $f4, $3c
    db $fc, $3c, $fc, $64, $80, $0c, $80, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fe
    db $ff, $1d, $25, $02, $82, $bf, $25, $be, $60, $46, $72, $00, $c3, $00, $80, $f8
    db $60, $41, $6c, $20, $37, $c1, $ff, $c7, $e0, $67, $fc, $54, $42, $40, $a0, $80
    db $3f, $e0, $20, $f0, $70, $e0, $60, $80, $02, $fe, $ff, $00, $fe, $ff, $fe, $ff
    db $fe, $ff, $fe, $ff, $f0, $f0, $00, $00

    nop
    ei
    rst $38
    nop
    cp $ec
    inc bc
    cp $03
    rst $38
    inc bc
    cp $ea
    add sp, -$08
    rrca
    rst $38
    cp b
    rst $38
    cp d
    rst $28
    cp $fe
    ldh [$aa], a
    cp b
    xor b
    rst $38
    rst $28
    rst $38
    ld bc, $ffdf
    rst $38
    adc h
    rst $38
    xor l
    cp $e1
    xor l
    add h
    rst $38
    add h
    rst $38
    rst $38
    rst $38
    rst $18
    ld [hl], b
    rst $18
    ld a, l
    rst $30
    rst $18
    ld a, l
    rst $00
    cp $e0
    ld h, l
    dec a
    dec h
    rst $38
    rst $38
    rst $20
    rst $38
    ret nz

    ld a, a
    rst $38
    push bc
    rst $38
    push de
    ld a, l
    ld a, a
    cp $e0
    ld d, l
    call nz, $ff44
    ld a, a
    and b
    ldh [rIE], a
    rst $38
    ld b, h
    rst $38
    ld d, l
    rst $38
    ld e, l
    rst $38
    ld e, l
    rst $18
    ld d, l
    ld e, l
    ld d, l
    rst $38
    rst $30
    ldh a, [$e1]
    ld b, [hl]
    rst $38
    sbc l
    ld d, [hl]
    cp $e1
    ld d, [hl]
    ld b, d
    ld b, d
    ret nz

    ldh [$e0], a
    ldh [$08], a
    rst $38
    rst $38
    xor d
    rst $38
    xor b
    rst $38
    xor e
    xor e
    xor b
    cp l
    xor b
    or b
    ldh [rTAC], a
    db $fd
    rst $38
    adc b
    and b
    db $e4
    xor h
    dec b
    xor h
    ldh [$e2], a
    add b
    cp $e2
    ld hl, sp-$19
    ld c, [hl]
    ld [$0000], a
    nop
    di
    rst $38
    nop
    cp $ff
    ld [$0fea], a
    ei
    rrca
    ld a, [$0ffb]
    ld hl, sp-$02
    ldh [$fa], a
    ld a, [bc]
    ei
    dec bc
    rst $38
    rst $38
    rrca
    rst $38
    ldh [$3f], a
    rst $38
    ld h, d
    rst $38
    ld [$fe7e], a
    ldh [rOCPS], a
    ld l, d
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    cp [hl]
    ldh [$ef], a
    rst $38
    ld [hl+], a
    rst $38
    xor d
    cp $e0
    and d
    and d
    ld l, $ff
    ld l, $ff
    ei
    rst $38
    rlca
    db $fc
    rst $20
    dec a
    ei
    rst $20
    cp l
    cp $e1
    or l
    inc e
    inc d
    rst $38
    rst $30
    rst $38
    rst $38
    ldh a, [$1f]
    rst $38
    push de
    rst $38
    push de
    ld a, a
    cp a
    push af
    ld a, a
    push de
    push de
    ld de, $d011
    ld [c], a
    ldh a, [$f7]
    rra
    ldh a, [$5f]
    cp $e0
    rra
    db $10
    ld a, a
    ld [hl], b
    inc bc
    rst $38
    ret nz

    ld a, [hl]
    rst $38
    db $ec
    db $eb
    nop
    nop
    nop
    rst $20
    rst $38
    inc bc
    cp $fe
    ld [c], a
    ld hl, sp-$20
    ld [bc], a
    cp $02
    rst $38
    rst $38
    inc bc
    rst $38
    cp $0b
    rst $38
    add sp, -$01
    rst $38
    ld a, [de]
    rst $38
    ld [$eaff], a
    ld [$0a0a], a
    db $db
    rst $38
    rst $38
    ldh [$e0], a
    ei
    xor [hl]
    cp $e0
    adc [hl]
    ei
    rst $38
    xor $ea
    adc [hl]
    adc d
    rst $38
    ei
    rst $38
    ld hl, sp-$23
    rrca
    db $e4
    ldh [$fa], a
    rst $38
    adc d
    ldh [$e0], a
    ld [$fe08], sp
    ldh [$e3], a
    xor a
    ei
    xor a
    ld sp, hl
    adc a
    ld sp, hl
    rst $28
    db $fd
    db $eb
    ldh [$e2], a
    pop hl
    ccf
    rst $38
    ld h, d
    rst $38
    ld l, e
    xor $fe
    pop hl
    ld l, e
    dec hl
    dec hl
    ret nz

    ldh [$c0], a
    ld a, a
    rst $38
    rst $30
    ld [hl+], a
    rst $38
    ld l, d
    db $ec
    ldh [$6e], a
    ld l, [hl]
    ld [hl+], a
    ld [hl+], a
    sub $b0
    ldh [rP1], a
    rst $38
    ldh a, [$e0]
    xor d
    and b
    pop hl
    xor d
    ld [$aabf], a
    rst $38
    cp a
    rst $38
    inc e
    rst $30
    ldh [$e0], a
    or a
    ld a, a
    rst $38
    or [hl]
    rst $38
    or [hl]
    or [hl]
    ld [de], a
    ld [de], a
    ldh [$e3], a
    cp c
    adc b
    ldh [$e0], a
    cp $e0
    xor d
    adc d
    adc d
    add b
    ldh [rTAC], a
    rst $18
    db $fd
    rst $38
    adc l
    rst $38
    xor l
    cp $e1
    xor l
    add l
    ld bc, $c085
    ld [c], a
    cp $ea
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $ec
    ld c, $fb
    ld c, $fb
    rrca
    rst $38
    db $fd
    rrca
    cp $07
    cp $02
    cp $02
    rst $38
    rst $38
    inc bc
    rst $38
    ldh [$bf], a
    rst $38

jr_040_716a:
    and d
    rst $38
    rst $38
    ld l, d
    rst $38
    ld [$ebff], a
    xor e
    ld [c], a
    and d
    rst $38
    rst $38
    cp a
    rst $38
    jr c, jr_040_716a

    rst $38
    ld [hl+], a
    rst $38
    rst $38
    db $eb
    rst $38
    ld a, [hl+]
    rst $38
    xor d
    xor d
    ld a, [hl+]
    ld a, [hl+]
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ldh [$bf], a
    xor $bf
    rst $38
    xor $bb
    rst $28
    cp e
    xor $ae
    ldh [$a0], a
    call c, $e0e0
    ret nc

    ldh [$88], a
    rst $38
    xor d
    cp $e1
    xor d
    xor b
    db $fd
    xor b
    ldh [$e0], a
    nop
    rst $38
    rst $38
    pop bc
    rst $38
    push de
    xor $fe
    pop hl
    push de
    ld d, l
    ld d, l
    ldh a, [$e3]
    inc d
    rst $38
    ld e, l
    rst $38
    rst $38
    ld d, l
    rst $38
    dec d
    dec d
    ld [hl], h
    ld [hl], h
    rst $38
    push af
    rst $18
    ldh [$e1], a
    ld b, h
    ld a, [c]
    ldh [rHDMA4], a
    rst $38
    ld d, a
    ld d, a
    ei
    ld d, h
    ld d, h
    or b
    ldh [rSVBK], a
    rst $18
    rst $38
    ld b, l
    rst $38
    push hl
    rst $10
    ldh [$e0], a
    ld d, l
    rst $38
    ldh [$c0], a
    ld [c], a
    ldh a, [$1f]
    ldh a, [$fd]
    ld e, a
    cp $e0
    rra
    db $10
    ld a, a
    ld [hl], b
    rst $38
    ret nz

    nop
    ld d, b
    db $ed
    nop
    nop
    nop
    di
    rst $38
    nop
    cp $ff
    ld [$3fea], a
    ldh [$3f], a
    xor $fb
    ccf
    pop hl
    db $fc
    ldh [$ee], a
    ld l, $e0
    jr nz, @+$01

    rst $38
    ccf
    rst $38
    add b
    rst $38
    rst $38
    adc b
    rst $38
    xor d
    cp [hl]
    cp $e1
    xor d
    adc b
    adc b
    rst $38
    rst $38
    ldh [$e0], a
    cp a
    rst $38
    xor $bf
    xor $bb
    rst $28
    cp e
    xor $ae
    rst $38
    ldh [$a0], a
    rst $38
    cp a
    rst $38
    ldh [$bf], a
    rst $38
    ld [hl], a
    and e
    rst $38
    xor e
    cp $e1
    xor e
    and c
    and c
    ldh [$e0], a
    cp a
    nop
    rst $38
    rst $38
    ld de, $77ff
    db $fc
    ldh [$dd], a
    rst $30
    db $dd
    ld de, $f011
    ld [c], a
    db $fc
    ld b, a
    db $fc
    rst $18
    rst $38
    db $fc
    ld e, a
    ldh a, [$5f]
    ld e, h
    ld b, a
    ld b, h
    rst $38
    ld bc, $7efc
    rst $38
    db $ec
    db $eb
    nop
    nop
    nop
    di
    rst $38
    nop
    cp $ff
    ld [$1dea], a
    rst $30
    rra
    ld a, [c]
    rst $38
    rra
    ldh a, [$1f]
    push af
    rra
    rst $30
    rla
    rst $30
    rst $38
    dec d
    rst $38
    dec e
    rst $38
    ret nz

    ld a, a
    rst $38
    ld b, [hl]
    ei
    rst $38
    ld d, [hl]
    cp $e1
    ld d, [hl]
    ld b, d
    ld b, d
    rst $38
    rst $38
    cp $be
    ldh [rIE], a
    jr z, @+$01

    cp d
    rst $38
    ld_long $ffff, a
    ld [$e8aa], a
    xor b
    rst $38
    cp a
    rst $38
    ccf
    cp a
    ldh [$bf], a
    xor $bf
    xor $bb
    cp $e0
    xor [hl]
    ei
    ldh [$a0], a
    ldh a, [$e0]
    add b
    rst $38
    rst $38
    adc b
    rst $38
    rst $38
    xor d
    rst $38
    xor b
    rst $38
    adc e
    adc e
    cp b
    cp b
    ld a, e
    rst $38
    rst $28
    adc [hl]
    ldh [$f8], a
    adc a
    ld hl, sp-$51
    cp $e1
    rra
    xor b
    xor a
    xor b
    rst $38
    ld hl, sp+$7e
    rst $38
    db $ec
    db $eb
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $ec
    inc bc
    cp $03
    rst $38
    inc bc
    cp $ea
    add sp, -$08
    rrca
    rst $38
    cp b
    rst $38
    cp d
    rst $28
    cp [hl]
    cp $e0
    xor d
    cp b
    xor b
    rst $38
    rst $28
    ret nc

    ldh [rIE], a
    rst $38
    xor b
    rst $38
    xor d
    rst $38
    xor e
    rst $38
    xor e
    xor d
    cpl
    adc e
    adc d
    rst $38
    cp $f0
    pop hl
    adc b
    ldh a, [$e0]
    cp $e0
    rst $18
    xor d
    xor b
    xor b
    rst $38
    rst $38
    ldh [$e1], a
    pop bc
    rst $38
    db $dd
    push de
    cp $e1
    push de
    ld d, l
    ld d, l
    ldh a, [$e3]
    ld de, $ffff
    ld d, l
    rst $38
    dec d
    rst $38
    ld [hl], l
    ld [hl], l
    dec d
    dec d
    cp $e0
    ldh [$e7], a
    cp h
    rst $30
    rra
    rst $30
    cp a
    pop af
    rst $38
    cp a
    pop hl
    cp a
    or c
    sbc a
    sub c
    rst $38
    pop af
    rst $38
    rst $38
    ldh a, [$1f]
    rst $38
    ld [hl], c
    rst $38
    ld [hl], l
    rst $18
    cp $fe
    ldh [rHDMA5], a
    ld [hl], c
    ld d, c
    rst $38
    rst $18
    rst $38
    ldh [$75], a
    cp a
    ret nc

    ldh [$b5], a
    cp $e1
    or l
    sub b
    sub b
    or b
    ldh [$fb], a
    ldh [$bf], a
    cp $e5
    and b
    cp a
    and b
    rst $38
    ldh [rP1], a
    ld d, b
    db $ed
    nop
    nop
    nop

    db $f3, $ff, $00, $fe, $ff, $ea, $ea, $3b, $ee, $3f, $e4, $ff, $3f, $e0, $3f, $ea
    db $3f, $ee, $2e, $ee, $ff, $2a, $ff, $3b, $ff, $80, $ff, $ff, $8c, $fb, $ff, $ad
    db $fe, $e1, $ad, $85, $85, $ff, $ff, $fe, $be, $e0, $ff, $51, $ff, $75, $ff, $d5
    db $ff, $ff, $d5, $55, $d1, $51, $ff, $7f, $ff, $07, $df, $fc, $f7, $1d, $f7, $5d
    db $fe, $e1, $55, $5c, $bf, $54, $ff, $f7, $ff, $fc, $17, $e4, $e1, $7f, $bf, $f5
    db $7f, $d5, $d5, $14, $14, $d0, $e2, $f0, $ff, $5f, $fc, $47, $fc, $57, $fc, $57
    db $54, $0f, $47, $44, $ff, $fc, $7e, $ff, $ec, $eb, $00, $00

    nop
    di
    rst $38
    nop
    cp $ff
    ld [$07ea], a
    db $fc
    rlca
    db $fd
    db $fc
    cp $e0
    ld a, [$05e0]
    db $fd
    dec b
    rst $38
    rlca
    rst $38
    rst $38
    ldh a, [$1f]
    rst $38
    pop de
    rst $38
    push de
    rst $38
    dec d
    rst $38
    rst $38
    push af
    push af
    ldh a, [rNR10]
    rst $38
    rra
    rst $38
    ccf
    ldh [$bf], a
    rst $38
    and b
    rst $38
    xor d
    cp $e1
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    ccf
    ldh [$bf], a
    xor $bf
    rst $38
    xor $bb
    rst $28
    cp e
    xor $ae
    ldh [$a0], a
    ld h, e
    rst $38
    cp a
    ldh [$e1], a
    ld [c], a
    ld [c], a
    ldh [$e0], a
    and d
    and d
    ldh [$e0], a
    rst $18
    nop
    rst $38
    add b
    rst $38
    ldh [$db], a
    ldh [$e0], a
    cp a
    rra
    and b
    ccf
    jr nz, @+$01

    ldh [$7e], a
    rst $38
    db $ec
    db $eb
    nop
    nop
    nop
    di
    rst $38
    nop
    cp $ff
    ld [$07ea], a
    db $fc
    rlca
    db $fd
    cp $fe
    db $e3
    dec b
    db $fc
    inc b
    rst $38
    rlca
    rst $38
    ldh [$bf], a
    ccf
    rst $38
    push de
    rst $38
    push de
    ld a, a
    cp $e0
    push de
    rst $28
    ld sp, $ff31
    rst $38
    cp [hl]
    ldh [rIE], a
    ld de, $ffff
    ld d, l
    rst $38
    ld d, c
    rst $38
    ld d, a
    ld d, a
    ld d, c
    ld d, c
    cp $f0
    ldh [$7f], a
    pop bc
    ld a, a
    db $dd
    ld a, a
    db $dd
    ld [hl], a
    rst $38
    rst $18
    ld [hl], a
    db $dd
    ld e, l
    pop bc
    ld b, c
    rst $38
    ld a, a
    rst $10
    rst $38
    ret nz

    ld a, a
    ld [c], a
    ldh [rHDMA4], a
    sbc $e0
    ld d, l
    ld d, l
    bit 0, h
    ld b, h
    ret nc

    ld [c], a
    nop
    db $ec
    ldh [$fe], a
    pop hl
    ld b, b
    ld a, a
    rlca
    ld b, b
    rst $38
    ret nz

    ld a, [hl]
    rst $38
    db $ec
    db $eb
    nop
    nop
    nop
    or e
    rst $38
    nop
    cp $ff
    ld [$07ea], a
    db $fd
    cp $e5
    dec b
    rst $28
    db $fc
    inc b
    rst $38
    rlca
    adc $e0
    ccf
    add sp, $3f
    rst $38
    ld a, [$ea3f]
    ccf
    ld [$2aea], a
    ld a, [hl+]
    ei
    rst $38
    rst $38
    cp [hl]
    ldh [rIE], a
    xor b
    rst $38
    adc e
    rst $38
    cp a
    sbc b
    rst $38
    adc [hl]
    adc [hl]
    xor b
    xor b
    ldh a, [$e0]
    ccf
    rst $38
    ldh [$bf], a
    xor $bf
    xor $bb
    rst $28
    cp e
    rst $38
    xor $ae
    ldh [$a0], a
    rst $38
    cp a
    rst $38
    ldh [rPCM34], a
    cp a
    rst $38
    xor d
    cp $e3
    xor d
    and d
    and d
    ret nc

    ld [c], a
    rst $30
    add b
    rst $38
    ldh [$db], a
    ldh [$e0], a
    cp a
    and b
    ccf
    rlca
    jr nz, @+$01

    ldh [$7e], a
    rst $38
    db $ec
    db $eb
    nop
    nop
    nop
    ld a, e
    rst $38
    nop
    cp $fc
    rrca
    ld hl, sp+$0f
    ei
    cp $e0
    cp $fa
    ldh [$0b], a
    ei
    ld a, [bc]
    rst $38
    ld c, $ff
    ldh [rIE], a
    ccf
    rst $38
    and d
    rst $38
    xor d
    rst $38
    ld [hl+], a
    rst $38
    rst $38
    xor $ee
    ld [c], a
    ld [hl+], a
    rst $38
    ccf
    rst $38
    ld bc, $ffff
    rst $38
    ld sp, $b5ff
    rst $38
    or a
    rst $38
    rst $38
    or l
    or l
    ld de, $ff11
    rst $38
    rst $38
    call c, $77ff
    rst $38
    inc d
    rst $30
    ld e, l
    rst $38
    ld e, h
    rst $30
    rst $38
    ld e, a
    ld d, a
    ld e, h
    ld d, h
    rst $38
    rst $30
    rst $38
    rra
    rst $38
    ldh a, [$df]
    ld [hl], a
    rst $18
    rst $30
    db $dd
    ld [hl], a
    db $dd
    rst $38
    ld [hl], a
    ld d, a
    ld [hl], b
    ld d, b
    rst $38
    rst $18
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    ld b, [hl]
    rst $38
    ld d, [hl]
    rst $38
    sub $ff
    ld l, a
    ld d, a
    ld d, a
    ld b, d
    ld b, d
    ret nc

    ldh [$1f], a
    or $b4
    ldh [rIE], a
    or $ff
    ld [hl], $ff
    or [hl]
    or [hl]
    ld [hl-], a
    ld [hl-], a
    ld a, [hl]
    ret nz

    ldh [$80], a
    rst $38
    ld hl, sp-$71
    ld hl, sp-$51
    db $fc
    ldh [$3f], a
    cp a
    cp b
    adc a
    adc b
    rst $38
    ld hl, sp+$60
    db $fd
    nop
    nop
    nop

    db $fb, $ff, $00, $fe, $ec, $03, $fe, $03, $ff, $03, $fe, $ea, $e8, $f8, $0f, $ff
    db $b8, $ff, $ba, $ef, $be, $fe, $e0, $aa, $b8, $a8, $ff, $ef, $d0, $e0, $ff, $ff
    db $a8, $ff, $aa, $ff, $ab, $ff, $ab, $aa, $2f, $8b, $8a, $ff, $fe, $f0, $e1, $88
    db $f0, $e0, $fe, $e0, $df, $aa, $a8, $a8, $ff, $ff, $e0, $e1, $c1, $ff, $dd, $d5
    db $fe, $e1, $d5, $55, $55, $f0, $e3, $11, $ff, $ff, $55, $ff, $15, $ff, $75, $75
    db $15, $15, $fe, $e0, $e0, $e7, $bc, $f7, $1f, $f7, $bf, $f1, $ff, $bf, $e1, $bf
    db $b1, $9f, $91, $ff, $f1, $ff, $ff, $f0, $1f, $ff, $71, $ff, $75, $df, $fe, $fe
    db $e0, $55, $71, $51, $ff, $df, $ff, $e0, $75, $bf, $d0, $e0, $b5, $fe, $e1, $b5
    db $90, $90, $b0, $e0, $fb, $e0, $bf, $fe, $e5, $a0, $bf, $a0, $ff, $e0, $00, $50
    db $ed, $00, $00

    nop
    ei
    rst $38
    nop
    cp $ec
    ccf
    ldh [$3f], a
    ei
    ccf
    ei
    ei
    ld c, $fe
    ldh [$0a], a
    ei
    ld a, [bc]
    rst $38
    ld c, $7f
    rst $38
    add b
    rst $38
    rst $38
    adc b
    rst $38
    xor d
    cp $e1
    rst $38
    xor d
    adc b
    adc b
    rst $38
    rst $38
    rst $38
    inc e
    rst $30
    rst $28
    db $fc
    rst $00
    db $fc
    rst $10
    cp $e1
    sub $43
    ld b, d
    rst $38
    rst $38
    cp $ff
    xor $bb
    rst $28
    cp d
    rst $38
    rst $38
    add e
    rst $38
    cp d
    rst $38
    cp d
    xor d
    cp d
    xor d
    rst $18
    rst $38
    rst $28
    rst $38
    ld c, $fb
    ret nc

    ld [c], a
    adc d
    rst $38
    rst $28
    ld [$8aea], a
    adc d
    ret nc

    ldh [$e0], a
    cp a
    rst $38
    ld [hl], a
    and e
    rst $38
    xor e
    cp $e1
    xor e
    and c
    and c
    ret nz

    ldh [$bf], a
    rlca
    db $fd
    rst $38
    ld de, $55ff
    cp $e1
    ld d, l
    ei
    ld d, b
    ld d, b
    or b
    ldh [rP1], a
    rst $38
    ld hl, sp-$71
    ld hl, sp-$03
    cp a
    db $fc
    ldh [$ef], a
    add sp, -$71
    adc b
    rst $38
    ld hl, sp+$00
    ld [hl], b
    db $ed
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $fc
    ccf
    db $ec
    ccf
    jp hl


    ccf
    db $fd
    db $e3
    cp $e0
    jp hl


    add hl, hl
    db $ec
    inc l
    rst $38
    ccf
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    adc b
    rst $38
    xor d
    cp $e1
    sbc a
    xor d
    adc b
    adc b
    rst $38
    rst $38
    ret nz

    ldh [$f0], a
    db $e4
    adc d
    rst $38
    adc d
    cp b
    cp b
    rst $38
    rst $28
    rst $38
    rra
    ldh a, [$f3]
    sbc a
    rst $30
    cp $e0
    ld a, [$d7e0]
    ld [hl], a
    ld d, h
    rst $38
    rst $38
    call c, $c0ff
    ld a, a
    rst $38
    ld b, [hl]
    rst $38
    ld d, [hl]
    ld a, [hl]
    cp $e0
    sub $d6
    jp nz, $ff42

    ld a, a
    sub b
    ldh [rIE], a
    cp $2b
    cp $a3
    cp $e7
    cp $e3
    rra
    and d
    db $eb
    xor d
    rst $38
    cp [hl]
    add b
    db $fd
    nop
    nop
    nop
    ld a, e
    rst $38
    nop
    cp $ec
    rra
    ldh a, [$1f]
    rst $30
    db $fc
    ldh [rIE], a
    rst $38
    rra
    rst $30
    rla
    ldh a, [rNR10]
    rst $38
    rra
    rst $38
    rst $38
    ldh a, [$5f]
    rst $38
    ld b, l
    rst $38
    push de
    rst $38
    rst $38
    ld d, h
    rst $38
    ld d, a
    ld d, a
    ld d, h
    ld d, h
    rst $38
    rst $38
    or $e0
    ldh [$df], a
    ld [hl], a
    cp $e0
    ld [hl], h
    rst $18
    ld [hl], a
    ld d, a
    rst $38
    ld [hl], b
    ld d, b
    rst $38
    rst $18
    rst $38
    ret nz

    ld a, a
    rst $38
    dec l
    ld d, l
    ldh [$e4], a
    ld b, h
    ld b, h
    ldh [$e6], a
    db $dd
    cp $e0
    ldh [$e3], a
    rst $28
    add b
    rst $38
    rst $38
    ld b, h
    sbc $e0
    ld b, h
    rst $38
    ld e, a
    ld d, a
    ld e, a
    call nz, $c0c4
    ldh [rP1], a
    ldh a, [$e1]
    push de
    xor h
    ldh [$ef], a
    ld e, l
    ld e, l
    ld b, l
    ld b, l
    or b
    ldh [$38], a
    rst $28
    db $fc
    rst $38
    ld b, a
    db $fc
    ld l, a
    db $fc
    rst $28
    ld hl, sp-$11
    inc l
    rrca
    rst $20
    inc h
    rst $38
    inc a
    ld [hl], b
    db $ed
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $ec
    ld c, $fb
    ld c, $fb
    rrca
    rst $38
    db $fd
    rrca
    cp $07
    cp $02
    cp $02
    rst $38
    rst $38
    inc bc
    rst $38
    ldh [$bf], a
    rst $38

jr_040_77a9:
    and d
    rst $38
    rst $38
    ld l, d
    rst $38
    ld [$ebff], a
    xor e
    ld [c], a
    and d
    rst $38
    rst $38
    cp a
    rst $38
    jr c, jr_040_77a9

    rst $38
    ld [hl+], a
    rst $38
    rst $38
    db $eb
    rst $38
    ld a, [hl+]
    rst $38
    xor d
    xor d
    ld a, [hl+]
    ld a, [hl+]
    ei
    rst $38
    rst $38
    ldh [$e0], a
    cp $a3
    cp [hl]
    rst $28
    cp $ff
    db $e3
    cp [hl]
    ei
    cp d
    db $e3
    and d
    rst $38
    cp [hl]
    rst $38
    rst $38
    ld hl, sp-$71
    rst $38
    ret c

    rst $38
    db $db
    ld a, a
    cp a
    ret c

    ld a, a
    sbc $de
    adc b
    adc b
    ldh [$e2], a
    rst $38
    ld [hl], a
    and e
    rst $38
    xor e
    cp $e1
    xor e
    and c
    and c
    ret nc

    ldh [$bf], a
    rlca
    db $fd
    rst $38
    ld de, $55ff
    cp $e1
    ld d, l
    inc de
    ld d, b
    ld d, b
    ret nz

    ldh [$80], a
    rst $20
    add b
    cp $e2
    ld [hl], b
    db $ec
    nop
    nop
    nop
    ld a, e
    rst $38
    nop
    cp $fc
    rrca
    ld hl, sp+$0f
    ei
    db $fc
    ld [c], a
    rst $38
    ei
    dec bc
    ld hl, sp+$08
    rst $38
    rrca
    rst $38
    ldh [rIE], a
    ccf
    rst $38
    and d
    rst $38
    ld l, d
    rst $38
    xor d
    rst $38
    rst $38
    xor d
    xor d
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld c, $ff
    ei
    xor $3b
    xor $bb
    rst $28
    cp l
    rst $28
    rst $38
    cp l
    and l
    inc a
    inc h
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    cp a
    rst $38
    and e
    rst $38
    xor e
    rst $38
    ld l, e
    rst $38
    rst $28
    ld l, e
    ld l, e
    ld h, c
    ld h, c
    ldh [$e0], a
    ldh a, [$5f]
    rst $38
    rst $30
    ld d, c
    rst $38
    ld d, l
    db $fc
    ldh [$57], a
    ld d, a
    ld d, c
    ld d, c
    ld a, [c]
    ret nc

    ldh [rP1], a
    xor $e0
    cp $e0
    rra
    ldh a, [$df]
    ret nc

    rrca
    rra
    db $10
    rst $38
    ldh a, [$80]
    db $fd
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $fc
    xor $bb
    rst $38
    sub d
    rst $38
    rst $38
    add d
    rst $38
    xor d
    rst $38
    cp d
    cp d
    cp d
    xor d
    ei
    rst $38
    rst $28
    ret nc

    ldh [rIE], a
    ld sp, $b5ff
    rst $38
    rst $38
    or a
    rst $38
    or a
    or l
    rla
    dec d
    rst $38
    db $fd
    cp $f0
    pop hl
    ld b, l
    rst $38
    push de
    db $fd
    ld d, a
    rst $38
    ld d, a
    rst $30
    ld d, l
    ld b, a
    ld b, l
    ldh a, [$e0]
    rlca
    db $fc
    rst $30
    dec e
    rst $38
    rst $30
    ld a, h
    rst $30
    rra
    rst $30
    db $dd
    push de
    inc e
    rst $38
    inc d
    rst $38
    rst $30
    rst $38
    cp $1b
    rst $38
    pop de
    rst $38
    rst $38
    dec sp
    rst $38
    db $db
    rst $38
    db $db
    db $db
    add hl, de
    rst $30
    add hl, de
    rst $38
    rst $38
    ret nz

    pop hl
    jr @+$01

    ld e, d
    rst $38
    rst $38
    ld e, e
    rst $38
    ld e, e
    ld e, d
    dec bc
    ld a, [bc]
    rst $38
    cp $02
    add b
    ldh [$80], a
    cp $e4
    db $76
    ld a, [c]
    nop
    nop
    nop
    rst $38
    rst $38
    inc bc
    cp $03
    rst $38
    inc bc
    rst $38
    nop
    cp $fe
    and $f8
    rrca
    rst $38
    cp b
    rst $38
    cp d
    rst $28
    cp [hl]
    cp $e0
    xor d
    cp b
    xor b
    rst $38
    rst $28
    and $e0
    rst $38
    rst $38
    xor b
    rst $38
    xor d
    rst $38
    xor e
    rst $38
    xor e
    xor d
    cpl
    adc e
    adc d
    rst $38
    cp $f0
    pop hl
    adc b
    ldh a, [$e0]
    cp $e0
    rst $18
    xor d
    xor b
    xor b
    rst $38
    rst $38
    ldh [$e1], a
    pop bc
    rst $38
    db $dd
    push de
    cp $e1
    push de
    ld d, l
    ld d, l
    ldh a, [$e3]
    ld de, $ffff
    ld d, l
    rst $38
    dec d
    rst $38
    ld [hl], l
    ld [hl], l
    dec d
    dec d
    cp $e0
    ldh [$e7], a
    cp h
    rst $30
    rra
    rst $30
    cp a
    pop af
    rst $38
    cp a
    pop hl
    cp a
    or c
    sbc a
    sub c
    rst $38
    pop af
    rst $38
    rst $38
    ldh a, [$1f]
    rst $38
    ld [hl], c
    rst $38
    ld [hl], l
    rst $18
    cp $fe
    ldh [rHDMA5], a
    ld [hl], c
    ld d, c
    rst $38
    rst $18
    rst $38
    ldh [$75], a
    cp a
    ret nc

    ldh [$b5], a
    cp $e1
    or l
    sub b
    sub b
    or b
    ldh [$fb], a
    ldh [$bf], a
    cp $e5
    and b
    cp a
    and b
    rst $38
    ldh [rP1], a
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
