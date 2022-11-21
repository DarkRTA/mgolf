; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $050", ROMX[$4000], BANK[$50]

    db $10, $40

    pop bc
    ld e, b

    db $6c, $50

    adc l
    ld l, b

    db $f1, $70, $a4, $71

    and e
    ld [hl], d
    cpl
    ld [hl], a

    db $1a, $40, $4a, $40

    ld b, c
    ld c, e

    db $41, $4d, $30, $4f, $33, $01, $3f, $02, $ea, $03, $a4, $02, $ff, $63, $ef, $03
    db $ea, $03, $a4, $02, $40, $71, $c0, $7e, $d4, $00, $a4, $02, $ff, $7f, $ea, $03
    db $a4, $02, $20, $11, $bf, $00, $86, $3f, $24, $2e, $20, $11, $08, $25, $08, $25
    db $08, $25, $08, $25, $d5, $00, $ff, $e0, $05, $fb, $e0, $0b, $f7, $e1, $00, $02
    db $eb, $00, $28, $ef, $e0, $90, $eb, $e0, $f5, $00, $c8, $fe, $e5, $e0, $80, $00
    db $ec, $ff, $f8, $ff, $e0, $ff, $fe, $42, $f8, $c8, $f0, $80, $e0, $10, $ef, $e0
    db $00, $c0, $ff, $ff, $e2, $f7, $ff, $bc, $7f, $ff, $e8, $ff, $81, $fe, $08, $f0
    db $f8, $e5, $fb, $20, $c0, $bf, $e2, $00, $7f, $ff, $2f, $ff, $ff, $3f, $ff, $1f
    db $ff, $b7, $7f, $1f, $7f, $ff, $0f, $7f, $4f, $3f, $07, $1f, $02, $1f, $ff, $13
    db $0f, $01, $0f, $0b, $07, $01, $07, $ff, $00, $07, $04, $03, $5c, $ff, $00, $ff
    db $e7, $81, $3c, $10, $d3, $e3, $83, $e0, $20, $c0, $80, $bf, $c0, $00, $e0, $90
    db $e0, $80, $fe, $e0, $00, $fb, $c0, $20, $a0, $e0, $7d, $ff, $ef, $ff, $3a, $fa
    db $da, $e2, $08, $63, $e0, $a4, $f8, $e0, $f8, $f0, $ff, $fc, $d0, $fc, $f2, $fc
    db $e0, $fc, $b0, $f7, $f8, $e4, $f8, $80, $e5, $be, $ff, $e3, $ff, $ff, $40, $ff
    db $00, $e7, $fc, $ff, $f6, $ff, $7f, $fc, $ff, $f8, $fe, $e8, $fe, $f8, $f8, $e0
    db $0b, $f4, $ff, $78, $e0, $80, $a3, $e6, $23, $e1, $f0, $e0, $ef, $ea, $e3, $c0
    db $40, $e0, $ea, $d0, $e1, $cf, $e9, $02, $81, $a0, $ff, $c1, $80, $c1, $85, $c3
    db $a1, $c3, $00, $7f, $83, $05, $83, $40, $81, $41, $80, $c0, $e0, $ff, $c0, $a0
    db $c0, $c0, $e0, $68, $f0, $f1, $ff, $fc, $dc, $ff, $1e, $ff, $80, $1e, $12, $7e
    db $d4, $c2, $48, $00, $01, $78, $58, $ff, $b0, $e9, $ff, $02, $01, $00, $03, $00
    db $00, $40, $40, $7f, $00, $20, $00, $10, $08, $00, $04, $b2, $c0, $c0, $a2, $c1
    db $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $f3, $c3, $3c, $e3, $c3, $3c, $fd
    db $e0, $fe, $e2, $f4, $e1, $1b, $e7, $2f, $ff, $dc, $1e, $f1, $3c, $e3, $7c, $c3
    db $7c, $7f, $c3, $e3, $9c, $c3, $bc, $18, $e7, $e2, $e1, $ff, $1a, $e5, $12, $ef
    db $5f, $b8, $7f, $e0, $ff, $f3, $8c, $13, $ef, $1f, $f8, $fc, $63, $bf, $fc, $83
    db $fc, $03, $bc, $43, $c4, $e1, $98, $ff, $e7, $fc, $43, $dc, $63, $f8, $27, $68
    db $ff, $b7, $6c, $93, $fc, $13, $e8, $17, $f8, $ff, $0f, $de, $25, $3c, $c7, $3e
    db $c3, $3f, $ff, $c2, $3e, $c1, $c3, $3d, $c3, $3d, $bb, $f7, $d7, $ff, $00, $a0
    db $e9, $c3, $bc, $c3, $bc, $c9, $7c, $c2, $e0, $be, $e1, $43, $f4, $e0, $a0, $e1
    db $00, $ff, $bf, $dd, $eb, $ff, $00, $7e, $81, $80, $e2, $f4, $ff, $0f, $f0, $1c
    db $e3, $1c, $f3, $1c, $e3, $ff, $0c, $f3, $3f, $d0, $1b, $f4, $57, $ff, $5f, $af
    db $fc, $7e, $f1, $bc, $70, $e0, $fc, $70, $e2, $ff, $fb, $ff, $de, $ff, $f5, $ff
    db $aa, $ff, $b7, $57, $ff, $bf, $67, $a0, $f3, $8c, $f8, $e1, $7c, $fd, $e3, $70
    db $e7, $ef, $ff, $d7, $7f, $ed, $7f, $ff, $f7, $3f, $6b, $bf, $76, $9f, $fb, $1f
    db $ff, $f5, $1f, $fa, $0f, $dd, $27, $3e, $c7, $f3, $3f, $c3, $6e, $e0, $70, $e2
    db $ed, $ff, $d3, $3c, $3b, $7e, $81, $70, $e9, $e3, $9c, $bc, $14, $e0, $69, $e0
    db $eb, $c3, $63, $10, $e0, $57, $a4, $e0, $7d, $ff, $d3, $f9, $ef, $4a, $e1, $e4
    db $c1, $bb, $f4, $5b, $f4, $ac, $ff, $f3, $6c, $f3, $bc, $e3, $6c, $f3, $bb, $ff
    db $f4, $db, $f4, $bd, $c3, $e7, $ff, $ba, $bf, $ff, $55, $ff, $ab, $ff, $fe, $58
    db $a0, $ff, $ef, $ff, $db, $ff, $6f, $8e, $e0, $af, $7f, $b5, $cf, $7f, $ef, $7f
    db $57, $46, $a0, $d0, $c3, $18, $e7, $fe, $f8, $e5, $57, $ff, $ac, $ff, $74, $fb
    db $b8, $6f, $e7, $58, $e7, $fc, $05, $e0, $98, $e7, $40, $e7, $df, $ba, $ff, $ec
    db $f3, $98, $e0, $e0, $ba, $ff, $e9, $6c, $f8, $e0, $c8, $e5, $ef, $26, $e0, $6d
    db $ff, $37, $ff, $ff, $2b, $ff, $16, $ff, $3b, $ff, $15, $ff, $ff, $1a, $ef, $35
    db $cf, $3e, $c7, $1b, $ff, $e7, $1a, $e7, $3d, $c3, $3f, $c3, $19, $db, $e7, $d7
    db $e4, $80, $2c, $d3, $a0, $e7, $98, $e7, $8a, $42, $e1, $d8, $a0, $e0, $bc, $de
    db $c0, $b0, $e1, $40, $e1, $cb, $fe, $78, $e6, $b0, $ff, $54, $fb, $a4, $fb, $78
    db $ff, $f7, $a8, $f7, $64, $fb, $b4, $fb, $d0, $ff, $ff, $c1, $ff, $b7, $ff, $5d
    db $ff, $ea, $54, $3e, $e0, $3a, $81, $ff, $94, $80, $57, $3e, $e0, $35, $3a, $e0
    db $f6, $ae, $c0, $ff, $d7, $21, $83, $ff, $dd, $ff, $77, $5c, $9c, $c0, $dc, $e1
    db $af, $ff, $df, $ce, $e0, $df, $f8, $e6, $14, $ff, $e5, $de, $e5, $5f, $ca, $e0
    db $6f, $c6, $e0, $f8, $e5, $e0, $63, $ca, $f8, $e1, $5f, $96, $e0, $5f, $d0, $e6
    db $c7, $e5, $69, $ff, $ff, $d4, $fc, $81, $f0, $46, $e0, $8b, $c0, $7f, $57, $c0
    db $1d, $80, $af, $80, $fd, $af, $60, $fd, $da, $48, $80, $a0, $fc, $41, $f0, $0b
    db $c0, $fb, $16, $00, $f8, $e1, $0a, $c0, $17, $00, $bd, $f7, $00, $6f, $00, $d5
    db $60, $00, $f8, $fe, $f4, $ff, $fe, $d8, $fc, $f1, $fc, $e2, $f8, $d1, $ff, $f8
    db $63, $f0, $c6, $f0, $8b, $e0, $47, $ff, $e0, $8f, $c0, $1b, $c0, $2f, $80, $1f
    db $ff, $80, $37, $00, $5f, $00, $24, $3c, $42, $bf, $00, $ad, $00, $f7, $00, $7d
    db $d2, $e2, $ff, $f5, $00, $ec, $e1, $bf, $e4, $e0, $2f, $80, $bf, $80, $df, $57
    db $00, $3f, $00, $f5, $3e, $e0, $45, $ff, $ff, $00, $c7, $10, $00, $6d, $00, $bb
    db $00, $ff, $ef, $00, $e7, $f0, $43, $f0, $e5, $f0, $ff, $47, $e0, $8a, $e0, $c7
    db $e0, $a5, $f0, $eb, $c3, $f0, $30, $63, $df, $2e, $60, $ad, $ff, $42, $ff, $ff
    db $00, $c3, $fc, $ff, $fa, $ff, $fc, $de, $8c, $e0, $f8, $fe, $ec, $fe, $f6, $e0
    db $ff, $ff, $ff, $80, $3f, $80, $7f, $c0, $9f, $c0, $4f, $ff, $e0, $87, $f0, $d5
    db $fc, $69, $ff, $3f, $ff, $00, $0f, $c0, $43, $f0, $a0, $fc, $f4, $c6, $4a, $e0
    db $ff, $ff, $42, $e0, $88, $e4, $e8, $e5, $e3, $0f, $ff, $e6, $0f, $cb, $1f, $c7
    db $1f, $8f, $3f, $f7, $9b, $3f, $2f, $fc, $40, $fe, $00, $fe, $00, $ff, $fc, $01
    db $fc, $01, $f8, $03, $f9, $03, $cf, $f2, $07, $f1, $07, $d0, $e5, $24, $e1, $d3
    db $00, $5f, $42, $7e, $fe, $00, $ff, $e2, $e0, $fe, $de, $e0, $cf, $fc, $01, $ff
    db $01, $f2, $e0, $0a, $e2, $3c, $00, $f7, $00, $c7, $45, $84, $c0, $f5, $ff, $e7
    db $0f, $ef, $e2, $0f, $f7, $0f, $c6, $e1, $f3, $07, $e5, $bf, $0f, $e3, $0f, $18
    db $c3, $42, $56, $e0, $f7, $ea, $76, $c6, $3f, $7e, $c0, $3f, $80, $a0, $9f, $7f
    db $37, $fd, $7f, $f6, $e0, $ff, $08, $00, $55, $00, $be, $74, $f0, $c0, $68, $e5
    db $5f, $fc, $c0, $7f, $00, $af, $fc, $e0, $9d, $3f, $f4, $e2, $11, $80, $2a, $d4
    db $c0, $f0, $e5, $bf, $f0, $fa, $e4, $6a, $e9, $f4, $eb, $00, $83, $1b, $e4, $15
    db $ee, $ff, $2d, $d0, $05, $fa, $34, $c0, $57, $aa, $df, $a4, $0a, $4b, $80, $42
    db $e0, $20, $1d, $02, $ff, $bc, $03, $98, $67, $17, $aa, $e4, $0a, $ff, $8b, $20
    db $22, $00, $dd, $00, $bd, $42, $fe, $08, $a1, $16, $a9, $e8, $03, $85, $22, $2a
    db $ff, $07, $db, $00, $bc, $43, $3f, $c0, $19, $fb, $e6, $18, $60, $a0, $3c, $c3
    db $b8, $e7, $08, $ff, $f7, $cc, $fb, $90, $6f, $2a, $ff, $1f, $ff, $e0, $d0, $01
    db $5a, $a1, $48, $07, $f8, $f7, $07, $1c, $03, $c0, $e1, $b0, $0f, $cc, $3f, $ff
    db $79, $86, $12, $ef, $1b, $e0, $3c, $c3, $fe, $d0, $e1, $3d, $c0, $4f, $a0, $30
    db $c9, $52, $ff, $a1, $6d, $c2, $34, $c9, $48, $b3, $1a, $ff, $e5, $15, $bf, $ce
    db $3f, $56, $bf, $6d, $ff, $bf, $9e, $7f, $6a, $bf, $1d, $ff, $4e, $ff, $bf, $35
    db $c0, $4e, $a1, $32, $c9, $57, $ff, $a2, $7f, $c5, $32, $cf, $55, $bf, $2b, $de
    db $90, $82, $bc, $43, $58, $a7, $00, $a0, $e3, $c4, $ff, $f3, $b4, $eb, $9a, $7f
    db $ef, $3f, $3a, $ff, $df, $4d, $ff, $b4, $ff, $7a, $ff, $a8, $fb, $ff, $74, $be
    db $80, $23, $df, $05, $ff, $1a, $fe, $70, $86, $d4, $ff, $bb, $fe, $74, $ff, $ae
    db $fa, $9a, $20, $ae, $3a, $80, $03, $ff, $52, $fc, $aa, $af, $fd, $77, $fb, $a2
    db $b0, $60, $0d, $ac, $60, $0a, $ff, $ff, $67, $88, $cd, $bb, $32, $ef, $eb, $fa
    db $de, $e0, $fe, $1c, $80, $ba, $ff, $27, $c8, $6d, $ff, $9b, $22, $ff, $7b, $ff
    db $b6, $ff, $5e, $fb, $ff, $bb, $84, $60, $0e, $bf, $dd, $3f, $6e, $bb, $bf, $57
    db $70, $e0, $6d, $bf, $1e, $70, $e0, $52, $ff, $fd, $ee, $f9, $49, $f6, $a7, $f8
    db $47, $ff, $f0, $b4, $c9, $4a, $b1, $1b, $e4, $ff, $ff, $1f, $4a, $bf, $69, $97
    db $12, $ef, $19, $f7, $e2, $38, $c7, $00, $e1, $2b, $d0, $aa, $41, $bf, $fe, $01
    db $a8, $07, $78, $87, $10, $e3, $a1, $ff, $1e, $8c, $7a, $57, $a8, $38, $c2, $0d
    db $f7, $f0, $3d, $c2, $d8, $61, $2f, $90, $f9, $00, $ff, $8a, $21, $28, $07, $d8
    db $07, $bc, $43, $fc, $c8, $61, $39, $a3, $02, $fd, $01, $fe, $0d, $f0, $ff, $02
    db $fd, $2a, $d0, $2b, $d6, $f5, $0a, $ff, $5f, $80, $a9, $02, $7f, $80, $10, $0f
    db $ff, $e0, $1f, $80, $7f, $57, $aa, $f5, $0a, $bf, $9f, $20, $b9, $02, $67, $98
    db $0f, $a3, $4a, $ff, $b5, $f4, $0b, $9d, $22, $ba, $07, $7b, $5f, $80, $0c, $f3
    db $07, $f8, $bf, $a1, $80, $9e, $00, $ed, $a0, $9a, $00, $68, $ff, $90, $c1, $17
    db $e8, $d1, $e7, $00, $2e, $d1, $80, $e1, $c0, $e3, $b0, $0f, $c6, $fc, $90, $c4
    db $d0, $e3, $3d, $c0, $5f, $a0, $34, $c9, $d7, $5a, $a1, $7d, $90, $c0, $4c, $90
    db $c0, $55, $bf, $fb, $8e, $7f, $90, $ca, $c8, $5a, $a1, $3c, $c3, $7f, $53, $ae
    db $77, $cd, $42, $bf, $15, $6a, $60, $fe, $6b, $81, $c0, $3f, $40, $bf, $40, $ff
    db $b0, $df, $ef, $cc, $f3, $a4, $fb, $90, $cf, $03, $ff, $a7, $05, $ff, $02, $19
    db $a6, $90, $cd, $53, $90, $c0, $75, $ae, $90, $c8, $77, $88, $cc, $90, $ca, $37
    db $90, $cc, $4e, $6e, $90, $ce, $ae, $f9, $79, $90, $c8, $bf, $5f, $90, $c3, $ef
    db $1d, $e2, $08, $f7, $00, $e1, $2d, $d0, $9a, $ef, $61, $7e, $81, $e8, $10, $e6
    db $61, $1e, $95, $de, $90, $c0, $39, $c2, $0f, $f0, $df, $63, $57, $a8, $ff, $fb
    db $00, $9e, $21, $a8, $07, $70, $8f, $fe, $cf, $63, $0c, $f7, $d9, $6f, $08, $ff
    db $63, $ff, $bd, $d6, $6b, $6a, $df, $30, $df, $53, $ff, $fd, $00, $ff, $5d, $e7
    db $08, $ff, $40, $6f, $bf, $6c, $b7, $48, $bc, $c0, $40, $ff, $24, $05, $dc, $ff
    db $ff, $e4, $e3, $55, $00, $ba, $7e, $80, $ab, $00, $d7, $5d, $00, $ea, $76, $80
    db $ae, $72, $80, $8a, $00, $f7, $54, $00, $aa, $f0, $e0, $aa, $00, $15, $00, $ff
    db $a8, $00, $51, $00, $08, $00, $22, $00, $7f, $94, $00, $29, $00, $44, $00, $10
    db $e4, $e0, $75, $00, $53, $00, $01, $74, $00, $20, $00, $80, $6e, $00, $fe, $a0
    db $f0, $18, $3c, $7e, $7e, $ff, $70, $ff, $ff, $78, $fc, $3c, $fe, $80, $7c, $64
    db $00, $ff, $00, $08, $1c, $3e, $36, $7f, $a6, $7f, $9f, $84, $6f, $40, $0e, $08
    db $30, $01, $3c, $a0, $07, $ff, $fe, $1b, $fc, $1e, $f1, $28, $f7, $7a, $ff, $e5
    db $70, $cf, $3c, $ff, $fb, $e7, $fd, $ff, $42, $e7, $18, $4a, $b5, $00, $ff, $54
    db $fe, $4e, $a0, $8e, $f3, $9a, $e7, $4d, $f3, $97, $ff, $e9, $c7, $f9, $8f, $f3
    db $5e, $e7, $8e, $fb, $f3, $f5, $ea, $80, $e0, $ff, $8a, $f5, $57, $7f, $e8, $8d
    db $f2, $19, $e7, $8f, $f3, $5f, $4d, $ff, $df, $99, $9f, $4d, $27, $17, $a3, $f3
    db $ff, $db, $e1, $ee, $f1, $b4, $fb, $41, $ff, $ff, $df, $9f, $9c, $4f, $26, $17
    db $a2, $f3, $ff, $da, $e1, $ee, $71, $f4, $3b, $f9, $ff, $ff, $e7, $18, $c3, $24
    db $e7, $24, $ff, $3c, $ef, $db, $3c, $e7, $18, $60, $41, $67, $9a, $c4, $ff, $8a
    db $0b, $c0, $42, $a0, $10, $c0, $e9, $ff, $80, $60, $91, $8b, $60, $16, $a9, $e1
    db $ff, $0b, $8a, $27, $27, $0f, $ad, $1f, $d6, $f3, $3f, $7d, $46, $80, $f0, $07
    db $24, $db, $0c, $f7, $ff, $36, $cf, $18, $e7, $d6, $0f, $59, $a6, $ff, $42, $0f
    db $fb, $00, $1c, $03, $bf, $00, $fb, $99, $66, $08, $21, $3d, $c2, $18, $e7, $19
    db $7c, $00, $24, $e0, $61, $56, $a9, $22, $ff, $75, $60, $84, $fe, $50, $a3, $11
    db $ef, $1f, $e0, $3d, $c7, $33, $f7, $cf, $2d, $d7, $b0, $65, $28, $d7, $44, $fb
    db $ff, $b4, $ff, $d0, $ff, $fb, $1c, $ed, $26, $ff, $8b, $46, $db, $66, $c6, $4f
    db $0b, $87, $ff, $9b, $87, $b3, $cf, $af, $9f, $e6, $5f, $ff, $bf, $7e, $eb, $3c
    db $ff, $2e, $ef, $2f, $fe, $f1, $40, $1e, $1c, $ff, $2e, $e7, $4a, $c7, $df, $5a
    db $e7, $47, $cf, $8b, $e0, $e4, $66, $df, $ff, $7e, $ff, $28, $ff, $3e, $ef, $2f
    db $ef, $fc, $e1, $e0, $00, $c0, $d1, $6f, $18, $ff, $67, $a5, $ff, $a4, $67, $7e
    db $ff, $38, $df, $43, $fd, $1a, $78, $02, $db, $1d, $e0, $e7, $7e, $1b, $e0, $70
    db $80, $0d, $cd, $c6, $a6, $80, $18, $ff, $e0, $e3, $ff, $c1, $5c, $21, $e7, $00
    db $e5, $db, $fe, $e0, $81, $f8, $e0, $d1, $af, $ab, $ff, $05, $ff, $fe, $ab, $fc
    db $0d, $fa, $b2, $fd, $55, $ff, $ea, $a8, $d7, $f4, $8b, $b0, $0f, $de, $bf, $7f
    db $29, $fe, $55, $ff, $be, $1e, $e0, $aa, $5f, $ff, $c0, $ff, $98, $67, $30, $e1
    db $58, $60, $66, $fa, $90, $4b, $2b, $d0, $48, $3c, $03, $84, $73, $b4, $f9, $eb
    db $e1, $ae, $28, $62, $19, $e7, $17, $ee, $3f, $bf, $c8, $2f, $d8, $1f, $f0, $fd
    db $2a, $00, $da, $fe, $c8, $20, $af, $fe, $df, $f8, $6f, $f8, $df, $f5, $f0, $43
    db $40, $3c, $a6, $41, $3f, $c3, $3e, $c7, $ef, $dd, $2f, $da, $2f, $f0, $e5, $3d
    db $c3, $3c, $1f, $c7, $d0, $2f, $d8, $2f, $2e, $bf, $ff, $ff, $ff, $ff, $e0, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f0, $ef, $ff, $fc, $fe, $ff, $f9, $fc, $fb
    db $fe, $e1, $f4, $cb, $e0, $fd, $df, $fe, $e1, $bf, $7f, $5f, $bf, $1f, $ff, $ff
    db $37, $cf, $0b, $f7, $63, $ff, $d3, $9f, $ff, $93, $9f, $f8, $87, $d0, $2f, $80
    db $7f, $ff, $8c, $7f, $9a, $73, $52, $b3, $8c, $ff, $ff, $f0, $ef, $6d, $f3, $02
    db $fd, $c0, $3f, $ff, $80, $7f, $02, $ff, $16, $ff, $01, $ff, $ff, $17, $ff, $e8
    db $f7, $f1, $ff, $fe, $fe, $ff, $ff, $fe, $f7, $fe, $ad, $fc, $46, $fe, $df, $eb
    db $ff, $37, $ff, $8f, $b7, $80, $7f, $7f, $ff, $6f, $7f, $3e, $3f, $7b, $7f, $ff
    db $ff, $ff, $fc, $ff, $fa, $fd, $fc, $fb, $e1, $ff, $ff, $d0, $ef, $e5, $df, $ca
    db $ff, $e7, $df, $df, $3f, $ff, $1f, $ff, $bf, $02, $60, $eb, $ff, $f7, $7f, $ff
    db $db, $8d, $80, $8b, $ff, $45, $bf, $ff, $97, $7f, $2b, $ff, $9f, $7f, $2d, $ff
    db $5d, $9f, $ea, $e0, $75, $ff, $fa, $77, $80, $7e, $73, $80, $77, $fe, $ff, $f9
    db $6d, $80, $e5, $ff, $f3, $a0, $e1, $be, $9c, $e0, $ee, $fe, $5e, $fe, $fb, $22
    db $c0, $cf, $e8, $a0, $e2, $fc, $e3, $43, $88, $fe, $95, $e0, $f8, $ff, $f0, $ff
    db $fb, $e7, $f5, $cb, $f2, $8d, $f1, $0e, $db, $f0, $0f, $fe, $e1, $e8, $17, $2a
    db $83, $7f, $ff, $1e, $28, $e1, $2f, $df, $17, $ef, $11, $8c, $a6, $e0, $08, $82
    db $ff, $e0, $fc, $c3, $fc, $83, $fc, $03, $fc, $ff, $03, $ff, $e0, $ef, $d0, $df
    db $a0, $2e, $ff, $d1, $96, $6b, $4c, $b7, $28, $df, $15, $ff, $ef, $c0, $3f, $84
    db $7f, $0a, $ff, $14, $eb, $ff, $2a, $72, $80, $aa, $6e, $80, $0b, $f7, $03, $8b
    db $ff, $fb, $fe, $e0, $ff, $fc, $e2, $3f, $a0, $c0, $6a, $f7, $ff, $0f, $fe, $fd
    db $fd, $fa, $fa, $f5, $f0, $f3, $ef, $c0, $78, $20, $ce, $e1, $fc, $03, $54, $ab
    db $7f, $ac, $57, $1a, $ef, $35, $df, $2a, $0e, $e0, $7f, $ff, $ff, $0a, $f7, $05
    db $fb, $02, $9a, $40, $d5, $7e, $10, $40, $7f, $0c, $42, $57, $54, $a0, $de, $fd
    db $fe, $45, $e0, $ff, $ea, $ff, $d5, $ff, $de, $a1, $ff, $aa, $55, $56, $ab, $0d
    db $f7, $1a, $ef, $a5, $15, $d8, $c0, $7f, $90, $e0, $d0, $e3, $be, $ec, $c0, $bf
    db $fe, $51, $e1, $fe, $ff, $f8, $f9, $e0, $e7, $80, $ff, $99, $00, $e6, $00, $98
    db $00, $e1, $00, $ff, $ff, $7f, $9f, $1f, $87, $07, $81, $01, $ff, $80, $00, $60
    db $00, $18, $00, $c6, $00, $ff, $87, $00, $1e, $00, $7c, $00, $ec, $80, $ff, $c4
    db $80, $c5, $80, $fc, $80, $d4, $80, $7d, $f1, $f2, $e0, $3f, $01, $37, $01, $23
    db $fe, $e0, $0f, $3f, $01, $2b, $01, $ee, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $7d, $33, $ff, $ec, $11, $13, $11, $33, $13, $f8, $e1, $46, $ff, $e1, $13, $13
    db $f0, $e0, $f2, $e1, $f0, $e1, $31, $fe, $e0, $35, $33, $fe, $e1, $31, $fe, $e0
    db $33, $31, $e9, $e3, $c1, $e0, $01, $13, $d0, $e6, $c0, $e2, $fe, $e5, $bf, $e2
    db $b0, $e2, $fe, $e2, $98, $ed, $0c, $88, $ed, $ba, $e0, $31, $13, $a6, $e2, $8c
    db $e0, $7a, $e0, $94, $e0, $44, $72, $e2, $60, $e5, $ff, $ff, $ff, $ff, $ff, $f1
    db $f0, $66, $ff, $e4, $1f, $00, $06, $06, $66, $06, $f8, $e1, $ff, $e1, $f0, $e1
    db $de, $e7, $e4, $60, $00, $60, $00, $f3, $e0, $00, $66, $c1, $60, $fe, $e0, $ff
    db $f0, $d1, $e4, $dd, $e2, $d7, $e1, $99, $96, $37, $96, $66, $96, $ab, $e0, $11
    db $99, $ff, $e0, $a3, $e0, $bc, $fc, $e1, $9c, $e1, $69, $91, $69, $91, $f3, $e0
    db $99, $03, $66, $69, $fe, $e0, $f0, $e1, $db, $e1, $83, $e2, $d0, $e3, $d1, $e4
    db $a8, $dd, $e2, $fc, $e2, $c0, $e0, $19, $7b, $c0, $99, $fe, $e1, $91, $f3, $99
    db $11, $68, $e2, $63, $e0, $99, $90, $90, $00, $e1, $90, $5b, $e0, $a0, $e2, $f0
    db $e1, $e7, $e4, $09, $91, $09, $1d, $91, $f3, $e0, $99, $00, $09, $fe, $e0, $f0
    db $e1, $db, $e1, $60, $33, $e2, $d0, $e3, $d1, $e4, $dd, $e2, $d9, $e1, $90, $09
    db $a0, $e0, $09, $91, $a0, $e1, $c6, $e1, $99, $11, $c2, $4d, $e1, $90, $e2, $8a
    db $e0, $b2, $f0, $f1, $91, $e8, $e4, $d4, $e4, $22, $92, $fe, $e0, $11, $7f, $19
    db $19, $99, $99, $92, $92, $22, $fc, $e1, $fe, $ff, $e1, $11, $99, $19, $92, $19
    db $92, $99, $1d, $22, $e2, $e3, $22, $22, $29, $e9, $e3, $e4, $e0, $f0, $e3, $40
    db $e9, $c1, $d7, $e1, $de, $e1, $da, $e1, $88, $e5, $89, $e4, $99, $ac, $e1, $fc
    db $c2, $e0, $f8, $e0, $99, $92, $19, $99, $11, $19, $1c, $c6, $e3, $f1, $e1, $29
    db $91, $29, $f8, $c0, $ad, $e1, $fe, $e0, $00, $bc, $e2, $a2, $e4, $f0, $e1, $84
    db $e2, $a4, $e2, $a7, $e4, $35, $e2, $c0, $c5, $00, $ba, $c0, $7a, $e5, $fe, $fd
    db $98, $c5, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $e6, $a3, $67
    db $c6, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7a, $9d, $62, $55, $ff
    db $e7, $51, $55, $11, $51, $18, $a6, $f0, $0e, $ed, $c0, $7d, $a0, $75, $38, $60
    db $17, $11, $77, $17, $2f, $77, $11, $11, $77, $ff, $e3, $71, $fe, $e4, $ff, $fc
    db $80, $8e, $df, $ff, $ff, $58, $df, $00, $e7, $30, $d5, $68, $ad, $d0, $c0, $57
    db $e7, $55, $77, $57, $60, $ff, $ea, $e9, $06, $00, $66, $ab, $11, $19, $66, $80
    db $96, $72, $64, $69, $69, $64, $60, $00, $11, $63, $ff, $ff, $ff, $ff, $ff, $ff
    db $f4, $f3, $78, $dd, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $a0, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $00, $a8, $89, $00, $00

    nop

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $00, $0d, $00, $dd, $0d, $dd, $dd, $7b, $dd, $ee, $ff, $e0
    db $de, $ee, $d0, $00, $f8, $e1, $f7, $ee, $ee, $00, $f8, $e3, $ef, $00, $0f, $f0
    db $7f, $00, $ff, $00, $ff, $f0, $ff, $ff, $dd, $e0, $ff, $d0, $dd, $00, $d0, $00
    db $ff, $ff, $0f, $2e, $ef, $e0, $00, $0f, $bb, $ff, $e4, $99, $ff, $e4, $f0, $e3
    db $ff, $0b, $bb, $00, $00, $b0, $00, $bb, $00, $f3, $bb, $b0, $e8, $e5, $ee, $e0
    db $bb, $00, $0b, $00, $7d, $00, $d0, $e5, $bb, $aa, $bb, $aa, $ba, $fe, $e0, $ca
    db $ff, $e5, $9a, $fe, $e0, $99, $fe, $e1, $b8, $ea, $bb, $bb, $db, $88, $88, $98
    db $e3, $cc, $cc, $88, $e4, $fe, $0f, $7b, $ee, $00, $68, $e0, $ed, $dd, $ee, $d0
    db $61, $e0, $00, $48, $ff, $48, $ff, $90, $ea, $48, $ff, $48, $ff, $48, $ff, $ff
    db $ff, $ff, $ff, $f8, $ff, $ff, $ff, $ff, $f8, $f7, $0e, $ee, $cd, $ee, $bc, $ff
    db $d0, $bb, $b0, $ee, $e0, $ee, $f8, $0f, $f7, $89, $09, $99, $db, $a4, $e0, $dd
    db $ef, $dd, $d7, $ef, $d0, $0f, $c0, $e2, $0c, $ba, $e1, $dd, $d0, $b3, $cc, $cc
    db $10, $c1, $f2, $a2, $08, $00, $d8, $e0, $f0, $1f, $00, $88, $00, $99, $90, $9e
    db $ff, $ff, $ff, $f2, $f1, $43, $08, $88, $96, $a2, $a0, $e0, $9d, $e6, $fe, $a0
    db $0c, $e2, $a4, $01, $cc, $bf, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $e6, $00, $00

    nop

    db $70, $50, $70, $58

    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr z, jr_050_5082

jr_050_5082:
    nop
    nop
    sub b
    nop
    nop
    nop
    push af
    nop
    ret z

    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    rla
    nop
    ld bc, $0000
    nop
    dec b
    nop
    ld d, b
    nop
    nop
    nop
    ret z

    nop
    nop
    nop
    ld [$9000], a
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
    cpl
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    and b
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    call nc, Call_000_2000
    nop
    nop
    nop
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld e, a
    nop
    ld b, $00
    nop
    nop
    dec b
    nop
    ld b, b
    nop
    nop
    nop
    or d
    nop
    nop
    nop
    xor b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    nop
    inc c

Call_050_50fb:
    nop
    nop
    nop
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    ld d, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$bc]
    rst $38

jr_050_5132:
    add sp, -$01
    add c
    cp $08
    ldh a, [rNR41]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_050_5140:
    ld a, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $0007
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    add c
    inc a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_050_5132

    add b
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    ldh [$80], a
    ldh [rP1], a
    ret nz

    jr nz, jr_050_5140

    rst $38
    rst $38

jr_050_5182:
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    add c
    inc a
    ld [$0000], sp
    nop
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    ld hl, sp-$1c
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38

jr_050_51b2:
    or $ff
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    jr nz, jr_050_5182

    nop
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

jr_050_51ce:
    nop
    nop
    nop
    ret nz

    nop
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
    ret nz

    ld b, b
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
    jr nz, jr_050_51b2

    nop
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
    db $ec
    rst $38
    ld sp, hl
    cp $e6
    ld hl, sp+$48
    ldh a, [$d0]
    ldh [$a8], a
    ret nz

    jr nz, jr_050_51ce

    ld b, b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rla
    rrca
    ld [de], a
    rrca
    dec bc
    rlca
    add hl, bc
    rlca
    rla
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    jp Jump_000_3c3c


    nop
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
    ld b, b
    add b
    ret nz

    add b
    jr nz, @-$3e

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ld d, b
    add b
    ld b, b
    add b
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    jp Jump_000_3c3c


    nop
    ld b, b
    nop
    nop
    nop
    xor b
    ldh a, [$ea]
    ldh a, [$f4]
    ld hl, sp-$2c
    ld hl, sp-$0c
    ld hl, sp-$1c
    ld hl, sp-$48
    ldh a, [$e8]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$f9fc], a
    cp $fd
    cp $f4
    rst $38
    ld c, b
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
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
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
    db $ed
    cp $fe
    ld hl, sp-$18
    ldh a, [rHDMA2]
    ldh [$e8], a
    ret nz

    ret nz

    add b
    ld d, b
    add b
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    jr nz, jr_050_531a

jr_050_531a:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    xor a
    ld a, a
    ld a, a
    ccf
    ld e, a
    ccf
    or a
    rra
    ccf
    rra
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    rlca
    rla
    inc bc
    dec b
    inc bc
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    rst $18
    inc a
    inc a
    nop
    ld b, d
    nop
    nop
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
    nop
    and b
    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    and b
    nop
    add b
    nop
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ei
    inc a
    inc a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    or b
    ldh [$f4], a
    ldh [$f8], a
    ldh a, [$d8]
    ldh a, [$f8]
    ldh a, [$e8]
    ldh a, [$b4]
    ldh [$f0], a

Jump_050_537f:
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    ei
    rst $20
    ld h, [hl]
    add c
    sub c
    nop
    db $fd
    cp $f6
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    db $fc
    cp $fc
    push af
    cp $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    nop
    nop
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
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    nop
    add b
    add b
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld bc, $5878
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $c385


    inc b
    add e
    ld b, c
    add e
    ld [bc], a
    add c
    nop
    add b
    nop
    add b
    and b
    ret nz

    add b
    ret nz

    ret nc

    ldh [$64], a
    ldh a, [$f0]
    db $fc
    call c, Call_000_1eff
    rst $38
    ld b, c
    ld e, $0c
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_050_543c

jr_050_543c:
    add d
    ld a, b
    ld e, b
    rst $38
    nop
    ret nz

    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0300
    ret nz

    nop
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
    ld bc, $0300
    nop
    and b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_050_54e1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_050_553c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $02, $00, $0f, $02, $02, $00, $0f, $04, $02, $00, $0f, $06, $02, $00, $0f
    db $08, $02, $00, $0f, $06, $02, $00, $0f, $04, $02, $00, $0f, $02, $02, $00, $0f
    db $ff, $00, $0a, $0f, $02, $1e, $19, $0f, $02, $1e, $28, $0f, $02, $1e, $19, $0f
    db $02, $1e, $ff, $01, $37, $03, $11, $1e, $3a, $03, $11, $1e, $ff, $02

    dec a
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $3f
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $ff
    ld [bc], a
    cp $cb
    ld e, b
    ei
    ld e, b
    ld l, d
    ld h, e
    ld l, d
    ld h, l
    ld d, c
    ld h, a
    ret c

    add hl, de
    ld e, a
    dec sp
    db $eb
    inc bc
    ret nz

    ld [bc], a
    rst $38
    ld a, a
    ldh a, [$03]
    db $eb
    inc bc
    ret nz

    ld [bc], a
    nop
    ld a, a
    or $7f
    sub b
    ld sp, $02c0
    rst $38
    ld a, a
    db $eb
    inc bc
    ret nz

    ld [bc], a
    jr nz, jr_050_5900

    ld_long a, $ff01
    ld b, e
    ld b, b
    ld b, e
    jr nz, jr_050_5908

    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_050_58fa:
    dec h
    push de

jr_050_58fc:
    nop
    rst $38
    ldh [rTIMA], a

jr_050_5900:
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb

jr_050_5908:
    nop
    jr z, jr_050_58fa

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    cp $e5
    ldh [$80], a
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    cp $42
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    rst $28
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    cp h
    ld a, a
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$f8]
    push hl
    ei
    jr nz, jr_050_58fc

    cp a
    ld [c], a
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rst $38
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    rst $38
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $ff07
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    rst $20
    add c
    inc a
    db $10
    db $d3
    db $e3
    add e
    ldh [rNR41], a
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$e063], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$08
    ldh [$0b], a
    db $f4
    rst $38
    ld a, b
    ldh [$80], a
    and e
    and $23
    pop hl
    ldh a, [$e0]
    rst $28
    ld [$c0e3], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    ld [bc], a
    add c
    and b
    rst $38
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    ld a, a
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    ret nz

    ldh [rIE], a
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    rst $38
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    ld a, [hl]
    call nc, $48c2
    nop
    ld bc, $5878
    rst $38
    or b
    jp hl


    rst $38
    ld [bc], a
    ld bc, $0300
    nop
    nop
    ld b, b
    ld b, b
    ld a, a
    nop
    jr nz, jr_050_5a0e

jr_050_5a0e:
    db $10
    ld [$0400], sp
    or d
    ret nz

    ret nz

    and d
    pop bc
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f3]
    jp $e33c


    jp $fd3c


    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    dec de
    rst $20
    cpl
    rst $38
    call c, $f11e
    inc a
    db $e3
    ld a, h
    jp Jump_050_7f7c


    jp $9ce3


    jp $18bc


    rst $20
    ld [c], a
    pop hl
    rst $38
    ld a, [de]
    push hl
    ld [de], a
    rst $28
    ld e, a
    cp b
    ld a, a
    ldh [rIE], a
    di
    adc h
    inc de
    rst $28
    rra
    ld hl, sp-$04
    ld h, e
    cp a
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    call nz, $98e1
    rst $38
    rst $20
    db $fc
    ld b, e
    call c, $f863
    daa
    ld l, b
    rst $38
    or a
    ld l, h
    sub e
    db $fc
    inc de
    add sp, $17
    ld hl, sp-$01
    rrca
    sbc $25
    inc a
    rst $00
    ld a, $c3
    ccf
    rst $38
    jp nz, $c13e

    jp $c33d


    dec a
    cp e
    rst $30
    rst $10
    rst $38
    nop
    and b
    jp hl


    jp $c3bc


    cp h
    ret


    ld a, h
    jp nz, $bee0

    pop hl
    ld b, e
    db $f4
    ldh [$a0], a
    pop hl
    nop
    rst $38
    cp a
    db $dd
    db $eb
    rst $38
    nop
    ld a, [hl]
    add c
    add b
    ld [c], a
    db $f4
    rst $38
    rrca
    ldh a, [rNR32]
    db $e3
    inc e
    di
    inc e
    db $e3
    rst $38
    inc c
    di
    ccf
    ret nc

    dec de
    db $f4
    ld d, a
    rst $38
    ld e, a
    xor a
    db $fc
    ld a, [hl]
    pop af
    cp h
    ld [hl], b
    ldh [$fc], a
    ld [hl], b
    ld [c], a
    rst $38
    ei
    rst $38
    sbc $ff
    push af
    rst $38
    xor d

Jump_050_5ac8:
    rst $38
    or a
    ld d, a
    rst $38
    cp a
    ld h, a
    and b
    di
    adc h
    ld hl, sp-$1f
    ld a, h
    db $fd
    db $e3
    ld [hl], b
    rst $20
    rst $28
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $38
    rst $30
    ccf
    ld l, e
    cp a
    db $76
    sbc a
    ei
    rra
    rst $38
    push af
    rra
    ld a, [$dd0f]
    daa
    ld a, $c7
    di
    ccf
    jp $e06e


    ld [hl], b
    ld [c], a
    db $ed
    rst $38
    db $d3
    inc a
    dec sp
    ld a, [hl]
    add c
    ld [hl], b
    jp hl


    db $e3
    sbc h
    cp h
    inc d
    ldh [rBCPD], a
    ldh [$eb], a
    jp $1063


    ldh [$57], a
    and h
    ldh [$7d], a
    rst $38
    db $d3
    ld sp, hl
    rst $28
    ld c, d
    pop hl
    db $e4
    pop bc
    cp e
    db $f4
    ld e, e
    db $f4
    xor h
    rst $38
    di
    ld l, h
    di
    cp h
    db $e3
    ld l, h
    di
    cp e
    rst $38
    db $f4
    db $db
    db $f4
    cp l
    jp $ffe7


    cp d
    cp a
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    cp $58
    and b
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    ld l, a
    adc [hl]
    ldh [$af], a
    ld a, a
    or l
    rst $08
    ld a, a
    rst $28
    ld a, a
    ld d, a
    ld b, [hl]
    and b
    ret nc

    jp $e718


    cp $f8
    push hl
    ld d, a
    rst $38
    xor h
    rst $38
    ld [hl], h
    ei
    cp b
    ld l, a
    rst $20
    ld e, b
    rst $20
    db $fc
    dec b
    ldh [$98], a
    rst $20
    ld b, b
    rst $20
    rst $18
    cp d
    rst $38
    db $ec
    di
    sbc b
    ldh [$e0], a
    cp d
    rst $38
    jp hl


    ld l, h
    ld hl, sp-$20
    ret z

    push hl
    rst $28
    ld h, $e0
    ld l, l
    rst $38
    scf
    rst $38
    rst $38
    dec hl
    rst $38
    ld d, $ff
    dec sp
    rst $38
    dec d
    rst $38
    rst $38
    ld a, [de]
    rst $28
    dec [hl]
    rst $08
    ld a, $c7
    dec de
    rst $38
    rst $20
    ld a, [de]
    rst $20
    dec a
    jp $c33f


    add hl, de
    db $db
    rst $20
    rst $10
    db $e4
    add b
    inc l
    db $d3
    and b
    rst $20
    sbc b
    rst $20
    adc d
    ld b, d
    pop hl
    ret c

    and b
    ldh [$bc], a
    sbc $c0
    or b
    pop hl
    ld b, b
    pop hl
    set 7, [hl]
    ld a, b
    and $b0
    rst $38
    ld d, h
    ei
    and h
    ei
    ld a, b
    rst $38
    rst $30
    xor b
    rst $30
    ld h, h
    ei
    or h
    ei
    ret nc

    rst $38
    rst $38
    pop bc
    rst $38
    or a
    rst $38
    ld e, l
    rst $38
    ld [$3e54], a
    ldh [$3a], a
    add c
    rst $38
    sub h
    add b
    ld d, a
    ld a, $e0
    dec [hl]
    ld a, [hl-]
    ldh [$f6], a
    xor [hl]
    ret nz

    rst $38
    rst $10
    ld hl, $ff83
    db $dd
    rst $38
    ld [hl], a
    ld e, h
    sbc h
    ret nz

    call c, $afe1
    rst $38
    rst $18
    adc $e0
    rst $18
    ld hl, sp-$1a
    inc d
    rst $38
    push hl
    sbc $e5
    ld e, a
    jp z, Jump_050_6fe0

    add $e0
    ld hl, sp-$1b
    ldh [$63], a
    jp z, $e1f8

    ld e, a
    sub [hl]
    ldh [$5f], a
    ret nc

    and $c7
    push hl
    ld l, c
    rst $38
    rst $38
    call nc, $81fc
    ldh a, [rDMA]
    ldh [$8b], a
    ret nz

    ld a, a
    ld d, a
    ret nz

    dec e
    add b
    xor a
    add b
    db $fd
    xor a
    ld h, b
    db $fd
    jp c, $8048

    and b
    db $fc
    ld b, c
    ldh a, [$0b]
    ret nz

    ei
    ld d, $00
    ld hl, sp-$1f
    ld a, [bc]
    ret nz

    rla
    nop
    cp l
    rst $30
    nop
    ld l, a
    nop
    push de
    ld h, b
    nop
    ld hl, sp-$02
    db $f4
    rst $38
    cp $d8
    db $fc
    pop af
    db $fc
    ld [c], a
    ld hl, sp-$2f
    rst $38
    ld hl, sp+$63
    ldh a, [$c6]
    ldh a, [$8b]
    ldh [rBGP], a
    rst $38
    ldh [$8f], a
    ret nz

    dec de
    ret nz

    cpl
    add b
    rra
    rst $38
    add b
    scf
    nop
    ld e, a
    nop
    inc h
    inc a
    ld b, d
    cp a
    nop
    xor l
    nop
    rst $30
    nop
    ld a, l
    jp nc, $ffe2

    push af
    nop
    db $ec
    pop hl
    cp a
    db $e4
    ldh [$2f], a
    add b
    cp a
    add b
    rst $18
    ld d, a
    nop
    ccf
    nop
    push af
    ld a, $e0
    ld b, l
    rst $38
    rst $38
    nop
    rst $00
    stop
    ld l, l
    nop
    cp e
    nop
    rst $38
    rst $28
    nop
    rst $20
    ldh a, [rSCX]
    ldh a, [$e5]
    ldh a, [rIE]
    ld b, a
    ldh [$8a], a
    ldh [$c7], a
    ldh [$a5], a
    ldh a, [$eb]
    jp $30f0


    ld h, e
    rst $18
    ld l, $60
    xor l
    rst $38
    ld b, d
    rst $38
    rst $38
    nop
    jp $fffc


    ld a, [$fcff]
    sbc $8c
    ldh [$f8], a
    cp $ec
    cp $f6
    ldh [rIE], a
    rst $38
    rst $38
    add b
    ccf
    add b
    ld a, a
    ret nz

    sbc a
    ret nz

    ld c, a
    rst $38
    ldh [$87], a
    ldh a, [$d5]
    db $fc
    ld l, c
    rst $38
    ccf
    rst $38
    nop
    rrca
    ret nz

    ld b, e
    ldh a, [$a0]
    db $fc
    db $f4
    add $4a
    ldh [rIE], a
    rst $38
    ld b, d
    ldh [$88], a
    db $e4
    add sp, -$1b
    db $e3
    rrca
    rst $38
    and $0f
    rr a
    rst $00
    rra
    adc a
    ccf
    rst $30
    sbc e
    ccf
    cpl
    db $fc
    ld b, b
    cp $00
    cp $00
    rst $38
    db $fc
    ld bc, $01fc
    ld hl, sp+$03

jr_050_5cfb:
    ld sp, hl
    inc bc
    rst $08
    ld a, [c]
    rlca
    pop af
    rlca
    ret nc

    push hl
    inc h
    pop hl
    db $d3
    nop
    ld e, a
    ld b, d
    ld a, [hl]
    cp $00
    rst $38
    ld [c], a
    ldh [$fe], a
    sbc $e0
    rst $08
    db $fc
    ld bc, $01ff
    ld a, [c]
    ldh [$0a], a
    ld [c], a
    inc a
    nop
    rst $30
    nop
    rst $00
    ld b, l
    add h
    ret nz

    push af
    rst $38
    rst $20
    rrca
    rst $28
    ld [c], a
    rrca
    rst $30
    rrca
    add $e1
    di
    rlca
    push hl
    cp a
    rrca
    db $e3
    rrca
    jr jr_050_5cfb

    ld b, d
    ld d, [hl]
    ldh [$f7], a
    ld [$c676], a
    ccf
    ld a, [hl]
    ret nz

    ccf
    add b
    and b
    sbc a
    ld a, a
    scf
    db $fd
    ld a, a
    or $e0
    rst $38
    ld [$5500], sp
    nop
    cp [hl]
    ld [hl], h
    ldh a, [$c0]
    ld l, b
    push hl
    ld e, a
    db $fc
    ret nz

    ld a, a
    nop
    xor a
    db $fc
    ldh [$9d], a
    ccf
    db $f4
    ld [c], a
    ld de, $2a80
    call nc, $f0c0
    push hl
    cp a
    ldh a, [$fa]
    db $e4
    ld l, d
    jp hl


    db $f4
    db $eb
    nop
    add e
    dec de
    db $e4
    dec d
    xor $ff
    dec l
    ret nc

    dec b
    ld a, [$c034]
    ld d, a
    xor d
    rst $18
    and h
    ld a, [bc]
    ld c, e
    add b
    ld b, d
    ldh [rNR41], a
    dec e
    ld [bc], a
    rst $38
    cp h
    inc bc
    sbc b
    ld h, a
    rla
    xor d
    db $e4
    ld a, [bc]
    rst $38
    adc e
    jr nz, @+$24

    nop
    db $dd
    nop
    cp l
    ld b, d
    cp $08
    and c
    ld d, $a9
    add sp, $03
    add l
    ld [hl+], a
    ld a, [hl+]
    rst $38
    rlca
    db $db
    nop
    cp h
    ld b, e
    ccf
    ret nz

    add hl, de
    ei

jr_050_5db1:
    and $18
    ld h, b
    and b
    inc a
    jp $e7b8


    ld [$f7ff], sp
    call z, $90fb
    ld l, a
    ld a, [hl+]
    rst $38
    rra
    rst $38
    ldh [$d0], a
    ld bc, $a15a
    ld c, b
    rlca
    ld hl, sp-$09
    rlca
    inc e
    inc bc
    ret nz

    pop hl
    or b
    rrca
    call z, $ff3f
    ld a, c
    add [hl]
    ld [de], a
    rst $28
    dec de
    ldh [$3c], a
    jp $d0fe


    pop hl
    dec a
    ret nz

    ld c, a
    and b
    jr nc, jr_050_5db1

    ld d, d
    rst $38
    and c
    ld l, l
    jp nz, $c934

    ld c, b
    or e
    ld a, [de]
    rst $38
    push hl
    dec d
    cp a
    adc $3f
    ld d, [hl]
    cp a
    ld l, l
    rst $38
    cp a
    sbc [hl]
    ld a, a
    ld l, d
    cp a
    dec e
    rst $38
    ld c, [hl]
    rst $38
    cp a
    dec [hl]
    ret nz

    ld c, [hl]
    and c
    ld [hl-], a
    ret


    ld d, a
    rst $38
    and d
    ld a, a
    push bc
    ld [hl-], a
    rst $08
    ld d, l
    cp a
    dec hl
    sbc $90
    add d
    cp h
    ld b, e
    ld e, b
    and a
    nop
    and b
    db $e3
    call nz, $f3ff
    or h
    db $eb
    sbc d
    ld a, a
    rst $28
    ccf
    ld a, [hl-]
    rst $38
    rst $18
    ld c, l
    rst $38
    or h
    rst $38
    ld a, d
    rst $38
    xor b
    ei
    rst $38
    ld [hl], h
    cp [hl]
    add b
    inc hl
    rst $18
    dec b
    rst $38
    ld a, [de]
    cp $70
    add [hl]
    call nc, $bbff
    cp $74
    rst $38
    xor [hl]
    ld a, [$209a]
    xor [hl]
    ld a, [hl-]
    add b
    inc bc
    rst $38
    ld d, d
    db $fc
    xor d
    xor a
    db $fd
    ld [hl], a
    ei
    and d
    or b
    ld h, b
    dec c
    xor h
    ld h, b
    ld a, [bc]
    rst $38
    rst $38
    ld h, a
    adc b
    call Call_000_32bb
    rst $28
    db $eb
    ld a, [$e0de]
    cp $1c
    add b
    cp d
    rst $38
    daa
    ret z

    ld l, l
    rst $38
    sbc e
    ld [hl+], a
    rst $38

jr_050_5e75:
    ld a, e
    rst $38
    or [hl]
    rst $38
    ld e, [hl]
    ei
    rst $38
    cp e
    add h
    ld h, b
    ld c, $bf
    db $dd
    ccf
    ld l, [hl]
    cp e
    cp a
    ld d, a
    ld [hl], b

jr_050_5e88:
    ldh [$6d], a
    cp a
    ld e, $70
    ldh [rHDMA2], a
    rst $38
    db $fd
    xor $f9
    ld c, c
    or $a7
    ld hl, sp+$47
    rst $38
    ldh a, [$b4]
    ret


    ld c, d
    or c
    dec de
    db $e4
    rst $38
    rst $38
    rra
    ld c, d
    cp a
    ld l, c
    sub a
    ld [de], a
    rst $28
    add hl, de
    rst $30
    ld [c], a
    jr c, jr_050_5e75

    nop
    pop hl
    dec hl
    ret nc

    xor d
    ld b, c
    cp a
    cp $01
    xor b
    rlca
    ld a, b
    add a
    db $10
    db $e3

jr_050_5ebd:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_050_5e88

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_050_61d8

    cpl
    sub b
    ld sp, hl
    nop
    rst $38
    adc d
    ld hl, $0728
    ret c

    rlca
    cp h
    ld b, e
    db $fc
    ret z

    ld h, c
    add hl, sp
    and e
    ld [bc], a
    db $fd
    ld bc, $0dfe
    ldh a, [rIE]
    ld [bc], a
    db $fd
    ld a, [hl+]
    ret nc

    dec hl
    sub $f5
    ld a, [bc]
    rst $38
    ld e, a
    add b
    xor c
    ld [bc], a
    ld a, a
    add b
    db $10
    rrca
    rst $38
    ldh [$1f], a
    add b
    ld a, a
    ld d, a
    xor d
    push af
    ld a, [bc]
    cp a
    sbc a
    jr nz, jr_050_5ebd

    ld [bc], a
    ld h, a
    sbc b
    rrca
    and e
    ld c, d
    rst $38
    or l
    db $f4
    dec bc
    sbc l
    ld [hl+], a
    cp d
    rlca
    ld a, e
    ld e, a
    add b
    inc c
    di
    rlca
    ld hl, sp-$41
    and c
    add b
    sbc [hl]
    nop
    db $ed
    and b
    sbc d
    nop
    ld l, b
    rst $38
    sub b
    pop bc
    rla
    add sp, -$2f
    rst $20
    nop
    ld l, $d1
    add b
    pop hl
    ret nz

    db $e3
    or b
    rrca
    add $fc
    sub b
    call nz, $e3d0
    dec a
    ret nz

    ld e, a
    and b
    inc [hl]
    ret


    rst $10
    ld e, d
    and c
    ld a, l
    sub b
    ret nz

    ld c, h
    sub b
    ret nz

    ld d, l
    cp a
    ei
    adc [hl]
    ld a, a
    sub b
    jp z, Jump_050_5ac8

    and c
    inc a
    jp Jump_050_537f


    xor [hl]
    ld [hl], a
    call $bf42
    dec d
    ld l, d
    ld h, b
    cp $6b
    add c
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    rst $38
    or b
    rst $18
    rst $28
    call z, $a4f3
    ei
    sub b
    rst $08
    inc bc
    rst $38
    and a
    dec b
    rst $38
    ld [bc], a
    add hl, de
    and [hl]
    sub b
    call $9053
    ret nz

    ld [hl], l
    xor [hl]
    sub b
    ret z

    ld [hl], a
    adc b
    call z, $ca90
    scf
    sub b
    call z, Call_050_6e4e
    sub b
    adc $ae
    ld sp, hl
    ld a, c
    sub b
    ret z

    cp a
    ld e, a
    sub b
    jp Jump_000_1def


    ld [c], a
    ld [$00f7], sp
    pop hl
    dec l
    ret nc

    sbc d
    rst $28
    ld h, c
    ld a, [hl]
    add c
    add sp, $10
    and $61
    ld e, $95
    sbc $90
    ret nz

    add hl, sp
    jp nz, $f00f

    rst $18
    ld h, e
    ld d, a
    xor b
    rst $38
    ei
    nop
    sbc [hl]
    ld hl, $07a8
    ld [hl], b
    adc a
    cp $cf
    ld h, e
    inc c
    rst $30
    reti


    ld l, a
    ld [$63ff], sp
    rst $38
    cp l
    sub $6b
    ld l, d
    rst $18
    jr nc, @-$1f

    ld d, e
    rst $38
    db $fd
    nop
    rst $38
    ld e, l
    rst $20
    ld [$40ff], sp
    ld l, a
    cp a
    ld l, h
    or a
    ld c, b
    cp h
    ret nz

    ld b, b
    rst $38
    inc h
    dec b
    call c, $ffff
    db $e4
    db $e3
    ld d, l
    nop
    cp d
    ld a, [hl]
    add b
    xor e
    nop
    rst $10
    ld e, l
    nop
    ld [$8076], a
    xor [hl]
    ld [hl], d
    add b
    adc d
    nop
    rst $30
    ld d, h
    nop
    xor d
    ldh a, [$e0]
    xor d
    nop
    dec d
    nop
    rst $38
    xor b
    nop
    ld d, c
    nop
    ld [$2200], sp
    nop
    ld a, a
    sub h
    nop
    add hl, hl
    nop
    ld b, h
    nop
    db $10
    db $e4
    ldh [$75], a
    nop
    ld d, e
    nop
    ld bc, $0074
    jr nz, jr_050_6022

jr_050_6022:
    add b
    ld l, [hl]
    nop
    cp $a0
    ldh a, [rNR23]
    inc a
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    rst $38
    ld a, b
    db $fc
    inc a
    cp $80
    ld a, h
    ld h, h
    nop
    rst $38
    nop
    ld [$3e1c], sp
    ld [hl], $7f
    and [hl]
    ld a, a
    rst $18
    add h
    ld l, a
    ld b, b
    ld c, $08
    jr nc, jr_050_6049

jr_050_6049:
    ld [bc], a
    rst $38
    rst $38
    rlca
    db $fd
    rlca
    db $fc
    ld d, $fd
    dec a
    xor $ff
    ld a, [hl-]
    rst $20
    or a
    add sp, $68
    rst $30
    call z, $ffff
    xor $bb
    rst $38
    sbc c
    cp e
    ld d, l
    sbc c
    ld h, [hl]
    rst $38
    ld d, l
    xor $66
    rst $38
    xor $ff
    sbc a
    rst $20
    cp a
    rst $20
    ld sp, hl
    adc $f3
    inc a

jr_050_6075:
    rst $08
    ld hl, sp-$1b
    cp $fe
    ld c, b
    jr nz, jr_050_6075

    rst $38
    db $e3
    db $fc
    ld sp, hl
    rst $38
    jp nz, $fdcf

    dec e
    ld [c], a
    rr a
    ld h, b
    ld e, l
    ld c, e
    rst $18
    sub d
    rst $38
    sbc l
    ld c, e
    dec h
    rla
    and d
    di
    db $db
    pop hl
    rst $38
    xor $f1
    ld [hl], h
    ei
    sbc c
    rst $38
    sub $9f
    ld a, a
    sbc [hl]
    ld c, a
    dec h
    ld d, $a3
    ld a, [c]
    jp c, $e0f0

    rst $38
    or h
    ei
    ld e, c
    rst $38
    rst $20
    jr jr_050_6075

    inc h
    rst $38
    rst $20
    inc h
    rst $38
    inc a
    db $db
    inc a
    rst $20

jr_050_60bb:
    jr jr_050_60bb

    ld h, b
    ld b, c
    ld h, a
    sbc d
    call nz, $0b8a
    ret nz

    ld b, d
    rst $38
    and b
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    adc e
    rst $38
    ld h, b
    ld d, $a9

jr_050_60d3:
    pop hl
    dec bc
    adc d
    daa
    daa
    ccf
    rrca
    xor l
    rra
    sub $3f
    ld a, l
    ld b, [hl]
    add b
    ldh a, [rTAC]
    rst $38
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf
    jr jr_050_60d3

    rst $38
    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    nop
    cp a
    inc e
    inc bc
    cp a

jr_050_60f9:
    nop
    sbc c
    ld h, [hl]
    ld [$3d21], sp
    rst $08
    jp nz, $e718

    add hl, de
    nop
    inc h
    ldh [$61], a
    ld d, [hl]
    xor c
    rst $20
    ld [hl+], a
    rst $38
    ld [hl], l
    ld h, b
    add h
    ld d, b

jr_050_6111:
    and e
    ld de, $1fef
    ld a, a
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    dec l
    rst $10
    or b
    ld h, l
    rst $38
    jr z, jr_050_60f9

    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    rst $38
    ei
    inc a
    rst $10
    ld d, [hl]
    rst $20
    and l
    or a
    db $ed
    rst $38
    db $fd
    rst $28

jr_050_6134:
    db $eb
    cp a
    rst $38
    ld a, [hl-]
    rst $28
    jr c, @+$81

    rst $38
    jr c, @+$01

    jr z, @+$01

    jr c, jr_050_6111

    db $fc
    pop hl
    rst $38
    ld l, $ef
    ccf
    rst $38
    ld e, $38
    rst $38
    ld d, [hl]
    ld h, l
    rst $10
    ldh [$e3], a
    xor e
    add $00
    push hl
    ldh [rIE], a
    jr c, jr_050_6134

    ldh [$81], a
    jr z, jr_050_6134

    ldh [$e1], a
    ld [c], a
    jr nz, @-$1f

    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    add sp, -$50
    rst $38
    rrca
    sbc $7f
    add hl, hl
    cp $55
    rst $38
    cp [hl]
    ld a, [hl]
    ld e, $e0
    xor d
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    jr nc, @-$1d

    jp hl


    ld e, b
    ld h, b
    ld h, [hl]
    sub b
    ld c, e
    dec hl
    ret nc

    ld c, b
    inc a
    inc bc
    add h
    rst $20
    ld [hl], e
    or h
    db $eb
    pop hl
    xor [hl]
    jr z, jr_050_61f3

    add hl, de
    rst $20
    rla
    rst $38
    xor $3f
    ret z

    cpl
    ret c

    rra
    ldh a, [$fd]
    ld a, [$002a]
    jp c, $20c8

    xor a
    cp $df
    ld hl, sp+$6f
    rst $10
    ld hl, sp-$21
    ldh a, [rSCX]
    ld b, b
    inc a
    and [hl]
    ld b, c
    ccf
    jp Jump_000_3ebf


    rst $00
    db $dd
    cpl
    jp c, $f02f

    push hl
    dec a
    ld a, a
    jp $c73c


    ret nc

    cpl
    ret c

    cpl
    ld c, [hl]
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$ef]
    rst $28
    rst $38

Jump_050_61d8:
    ldh a, [$b8]
    rst $00
    ld d, $f9
    db $fc
    db $e3
    db $db
    rst $38
    rst $20
    di
    adc $e6
    sbc $8f
    rst $38
    ld a, a
    rst $38
    rst $38
    ld d, e
    rst $28
    sbc c
    rst $20
    ld sp, hl
    rst $38
    xor [hl]
    rst $38

jr_050_61f3:
    rst $18
    ld e, a
    ld h, a
    ld c, e
    ld [hl], a
    rst $20
    ei
    sbc a
    cp a
    ld sp, hl
    cp l
    ld sp, hl
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    rst $38
    cp $fd
    db $fd
    rst $38
    cp $f1
    rst $38
    sbc c
    ccf
    sbc a
    cp l
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    ldh [$fa], a
    pop hl
    inc a
    ld [$e4e3], a
    db $e3
    ld hl, sp-$08
    cp $fe
    ld [$e4e3], a
    db $e3
    rst $38
    rra
    rra
    ld a, a
    ld a, a
    db $ec
    di
    adc a
    rst $38
    rst $38
    ld a, c
    rst $38
    add sp, -$09
    di
    rst $28
    add $fe
    ei
    sbc $fe
    rst $00
    ldh [rIE], a
    ld h, a
    rst $38
    db $d3
    rst $28
    rst $38
    db $fd
    rst $38
    rst $08
    rst $38
    ld h, a
    ld a, a
    rst $30
    rst $38
    ccf
    ei
    rst $38
    db $fd
    ld sp, hl
    ei
    ei
    add [hl]
    add e
    sbc [hl]
    ldh [$0e], a
    sbc b
    ldh [$fb], a
    rst $38
    cp a
    db $db
    pop hl
    ld l, d
    add [hl]
    ld [$e4e3], a
    db $e4
    jp hl


    ei
    call c, Call_050_54e1
    adc b
    rst $18
    ld c, h
    add b
    db $fc
    rst $38
    ld hl, sp+$7f
    cp $f8
    or $f0
    cp $f0
    db $fc
    db $fc
    ld [c], a
    rst $38
    sbc a
    rra
    rst $08
    rrca
    sbc a
    rra
    sbc a
    rra
    rst $38
    rra
    rra
    sbc h
    inc e
    ld e, $1e
    inc e
    inc e
    ldh [rNR42], a
    add a
    ld d, b
    ldh [$fe], a
    pop hl
    sub l
    ld [c], a
    ld c, [hl]
    ld [c], a
    db $fc
    cp $fe
    rst $38
    db $ed
    pop hl
    db $fc
    ldh a, [rBCPS]
    nop
    call c, $f710
    ld [$8c00], sp
    ld l, b
    ld h, b
    inc [hl]
    jr nz, jr_050_62c4

    nop
    rst $38
    ld e, $1e
    dec a
    dec a
    ld [hl], $06
    ld h, e
    inc bc
    rst $38
    add $86
    ld h, a
    rlca
    ld b, a
    rlca
    ld h, a
    rlca
    rst $28
    ccf
    ccf
    ld a, a
    ccf

jr_050_62c4:
    rst $38
    pop hl
    cp a
    cp a
    rra
    rst $38
    rra
    sbc a
    sbc a
    ld e, a
    ld e, a
    ld a, [$e1c0]
    rst $38
    pop bc
    pop af
    pop bc
    db $e3
    jp $8083


    and $ff
    ret nz

    adc h
    adc b
    sub b
    sub b
    or b
    and b
    xor c
    rst $38
    and c
    ldh a, [$e0]
    pop hl
    pop hl
    ld [hl], d
    ld h, d
    pop bc
    rst $38
    pop bc
    ld [c], a
    ld [c], a
    push de
    push de
    ld b, a
    rlca
    rst $00
    rst $38
    rlca
    push bc
    inc b
    add a
    nop
    ld c, l
    ld [$fe82], sp
    jr nc, jr_050_6362

    sub b
    db $10
    rst $38
    rst $38
    sbc a
    sbc a
    rst $08
    rst $38
    rrca
    add a
    rlca
    ld c, e
    dec bc
    add a
    rlca
    inc bc
    rst $38
    inc bc
    dec b
    dec b
    adc d
    adc d
    ld d, l
    ld d, l
    cp [hl]
    xor a
    cp [hl]
    db $eb
    rst $38
    pop af
    ld [bc], a
    and b
    ld d, a
    nop
    ldh [$eb], a
    cp l
    db $eb
    xor d
    ret nz

    rst $38
    xor a
    rst $38
    push bc
    ld a, [c]
    add b
    ld e, l
    cp $50
    ld h, b
    ld [hl+], a
    ld [hl+], a
    ld d, l
    ld d, l
    cp a
    cp a
    ld l, e
    push af
    ld a, a
    ldh [$e1], a
    rst $10
    ldh [$c0], a
    inc hl
    inc hl
    ld d, l
    ld d, l
    ld e, a
    cp e
    cp e
    rst $38
    rst $38
    ld [hl], a
    jp nc, Jump_050_7780

    ld e, l
    ld h, b
    nop
    ld l, $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_050_6362:
    nop
    rst $38
    rst $38
    db $fc
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    inc sp
    rst $38
    db $ec
    ld de, $1113
    inc sp
    inc de
    ld hl, sp-$1f
    ld b, [hl]
    rst $38
    pop hl
    inc de
    inc de
    ldh a, [$e0]
    ld a, [c]
    pop hl
    ldh a, [$e1]
    ld sp, $e0fe
    dec [hl]
    inc sp
    cp $e1
    ld sp, $e0fe
    inc sp
    ld sp, $e3e9
    pop bc
    ldh [rSB], a
    inc de
    ret nc

    and $c0
    ld [c], a
    cp $e5
    cp a
    ld [c], a
    or b
    ld [c], a
    cp $e2
    sbc b
    db $ed
    inc c
    adc b
    db $ed
    cp d
    ldh [$31], a
    inc de
    and [hl]
    ld [c], a
    adc h
    ldh [$7a], a
    ldh [$94], a
    ldh [rLY], a
    ld [hl], d
    ld [c], a
    ld h, b
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ldh a, [$66]
    rst $38
    db $e4
    rra
    nop
    ld b, $06
    ld h, [hl]
    ld b, $f8
    pop hl
    rst $38
    pop hl
    ldh a, [$e1]
    sbc $e7
    db $e4
    ld h, b
    nop
    ld h, b
    nop
    di
    ldh [rP1], a
    ld h, [hl]
    pop bc
    ld h, b
    cp $e0
    rst $38
    ldh a, [$d1]
    db $e4
    db $dd
    ld [c], a
    rst $10
    pop hl
    sbc c
    sub [hl]
    scf
    sub [hl]
    ld h, [hl]
    sub [hl]
    xor e
    ldh [rNR11], a
    sbc c
    rst $38
    ldh [$a3], a
    ldh [$bc], a
    db $fc
    pop hl
    sbc h
    pop hl
    ld l, c
    sub c
    ld l, c
    sub c
    di
    ldh [$99], a
    inc bc
    ld h, [hl]
    ld l, c
    cp $e0
    ldh a, [$e1]
    db $db
    pop hl
    add e
    ld [c], a
    ret nc

    db $e3
    pop de
    db $e4
    xor b
    db $dd
    ld [c], a
    db $fc
    ld [c], a
    ret nz

    ldh [rNR24], a
    ld a, e
    ret nz

    sbc c
    cp $e1
    sub c
    di
    sbc c
    ld de, $e268
    ld h, e
    ldh [$99], a
    sub b
    sub b
    nop
    pop hl
    sub b
    ld e, e
    ldh [$a0], a
    ld [c], a
    ldh a, [$e1]
    rst $20
    db $e4
    add hl, bc
    sub c
    add hl, bc
    dec e
    sub c
    di
    ldh [$99], a
    nop
    add hl, bc
    cp $e0
    ldh a, [$e1]
    db $db
    pop hl
    ld h, b
    inc sp
    ld [c], a
    ret nc

    db $e3
    pop de
    db $e4
    db $dd
    ld [c], a
    reti


    pop hl
    sub b
    add hl, bc
    and b
    ldh [$09], a
    sub c
    and b
    pop hl
    add $e1
    sbc c
    ld de, $4dc2
    pop hl
    sub b
    ld [c], a
    adc d
    ldh [$b2], a
    ldh a, [$f1]
    sub c
    add sp, -$1c
    call nc, Call_000_22e4
    sub d
    cp $e0
    ld de, $197f
    add hl, de
    sbc c
    sbc c
    sub d
    sub d
    ld [hl+], a
    db $fc
    pop hl
    cp $ff
    pop hl
    ld de, $1999
    sub d
    add hl, de
    sub d
    sbc c
    dec e
    ld [hl+], a
    ld [c], a
    db $e3
    ld [hl+], a
    ld [hl+], a
    add hl, hl
    jp hl


    db $e3
    db $e4
    ldh [$f0], a
    db $e3
    ld b, b
    jp hl


    pop bc
    rst $10
    pop hl
    sbc $e1
    jp c, $88e1

    push hl
    adc c
    db $e4
    sbc c
    xor h
    pop hl
    db $fc
    jp nz, $f8e0

    ldh [$99], a
    sub d
    add hl, de
    sbc c
    ld de, $1c19
    add $e3
    pop af
    pop hl
    add hl, hl
    sub c
    add hl, hl
    ld hl, sp-$40
    xor l
    pop hl
    cp $e0
    nop
    cp h
    ld [c], a
    and d
    db $e4
    ldh a, [$e1]
    add h
    ld [c], a
    and h
    ld [c], a
    and a
    db $e4
    dec [hl]
    ld [c], a
    ret nz

    push bc
    nop
    cp d
    ret nz

    ld a, d
    push hl
    cp $fd
    sbc b
    push bc
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
    and $a3
    ld h, a
    add $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, d
    sbc l
    ld h, d
    ld d, l
    rst $38
    rst $20
    ld d, c
    ld d, l
    ld de, $1851
    and [hl]
    ldh a, [$0e]
    db $ed
    ret nz

    ld a, l
    and b
    ld [hl], l
    jr c, jr_050_675a

    rla
    ld de, $1777
    cpl
    ld [hl], a
    ld de, $7711
    rst $38
    db $e3
    ld [hl], c
    cp $e4
    rst $38
    db $fc
    ld [$df8e], sp
    rst $38
    rst $38
    ld e, b
    rst $18
    ld de, $f610
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    and $5f
    ld b, $00
    ld h, [hl]
    ld de, $6619
    add b
    sub [hl]
    ld [hl], d
    ld h, h
    dec b
    ld l, c
    ld l, c
    ld h, h
    ld h, b
    ld de, $ff63
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    di
    nop
    ld a, b
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

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
    xor b
    adc c
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

jr_050_675a:
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
    rst $38
    nop
    nop
    dec c
    nop
    db $dd
    dec c
    db $dd
    db $dd
    ld a, e
    db $dd
    xor $ff
    ldh [$de], a
    xor $d0
    nop
    ld hl, sp-$1f
    rst $30
    xor $ee
    nop
    ld hl, sp-$1d
    rst $28
    nop
    rrca
    ldh a, [$7f]
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    db $dd
    ldh [rIE], a
    ret nc

    db $dd
    nop
    ret nc

    nop
    rst $38
    rst $38
    rrca
    ld l, $ef
    ldh [rP1], a
    rrca
    cp e
    rst $38
    db $e4
    sbc c
    rst $38
    db $e4
    ldh a, [$e3]
    rst $38
    dec bc
    cp e
    nop
    nop
    or b
    nop
    cp e
    nop
    di
    cp e
    or b
    add sp, -$1b
    xor $e0
    cp e
    nop
    dec bc
    nop
    ld a, l
    nop
    ret nc

    push hl
    cp e
    xor d
    cp e
    xor d
    cp d
    cp $e0
    jp z, $e5ff

    sbc d
    cp $e0
    sbc c
    cp $e1
    cp b
    ld [$bbbb], a
    db $db
    adc b
    adc b
    sbc b
    db $e3
    call z, $88cc
    db $e4
    cp $0f
    ld a, e
    xor $00
    ld l, b
    ldh [$ed], a
    db $dd
    xor $d0
    ld h, c
    ldh [rP1], a
    ld c, b
    rst $38
    ld c, b
    rst $38
    sub b
    ld_long $ff48, a
    ld c, b
    rst $38
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    ld c, $ee
    call $bcee
    rst $38
    ret nc

    cp e
    or b
    xor $e0
    xor $f8
    rrca
    rst $30
    adc c
    add hl, bc
    sbc c
    db $db
    and h
    ldh [$dd], a
    rst $28
    db $dd
    rst $10
    rst $28
    ret nc

    rrca
    ret nz

    ld [c], a
    inc c
    cp d
    pop hl
    db $dd
    ret nc

    or e
    call z, Call_000_10cc
    pop bc
    ld a, [c]
    and d
    ld [$d800], sp
    ldh [$f0], a
    rra
    nop
    adc b
    nop
    sbc c
    sub b
    sbc [hl]
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    ld b, e
    ld [$9688], sp
    and d
    and b
    ldh [$9d], a
    and $fe
    and b
    inc c
    ld [c], a
    and h
    ld bc, $bfcc
    rst $38
    rst $38
    rst $38
    rst $38
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
    and $00
    nop
    nop
    and b
    ld l, b
    and b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr z, jr_050_68b2

jr_050_68b2:
    nop
    nop
    sub b
    nop
    nop
    nop
    push af
    nop
    ret z

    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    rla
    nop
    ld bc, $0000
    nop
    dec b
    nop
    ld d, b
    nop
    nop
    nop
    ret z

    nop
    nop
    nop
    ld [$9000], a
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
    cpl
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    and b
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    call nc, Call_000_2000
    nop
    nop
    nop
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld e, a
    nop
    ld b, $00
    nop
    nop
    dec b
    nop
    ld b, b
    nop
    nop
    nop
    or d
    nop
    nop
    nop
    xor b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    nop
    inc c
    nop
    nop
    nop
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    ld d, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$bc]
    rst $38

jr_050_6962:
    add sp, -$01
    add c
    cp $08
    ldh a, [rNR41]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_050_6970:
    ld a, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $0007
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    add c
    inc a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_050_6962

    add b
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    ldh [$80], a
    ldh [rP1], a
    ret nz

    jr nz, jr_050_6970

    rst $38
    rst $38

jr_050_69b2:
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    add c
    inc a
    ld [$0000], sp
    nop
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    ld hl, sp-$1c
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38

jr_050_69e2:
    or $ff
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    jr nz, jr_050_69b2

    nop
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

jr_050_69fe:
    nop
    nop
    nop
    ret nz

    nop
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
    ret nz

    ld b, b
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
    jr nz, jr_050_69e2

    nop
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

Jump_050_6a30:
    db $ec
    rst $38
    ld sp, hl
    cp $e6
    ld hl, sp+$48
    ldh a, [$d0]
    ldh [$a8], a
    ret nz

    jr nz, jr_050_69fe

    ld b, b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rla
    rrca
    ld [de], a
    rrca
    dec bc
    rlca
    add hl, bc
    rlca
    rla
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    jp Jump_000_3c3c


    nop
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
    ld b, b
    add b
    ret nz

    add b
    jr nz, @-$3e

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ld d, b
    add b
    ld b, b
    add b
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    jp Jump_000_3c3c


    nop
    ld b, b
    nop
    nop
    nop
    xor b
    ldh a, [$ea]
    ldh a, [$f4]
    ld hl, sp-$2c
    ld hl, sp-$0c
    ld hl, sp-$1c
    ld hl, sp-$48
    ldh a, [$e8]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$f9fc], a
    cp $fd
    cp $f4
    rst $38
    ld c, b
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
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
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
    db $ed
    cp $fe
    ld hl, sp-$18
    ldh a, [rHDMA2]
    ldh [$e8], a
    ret nz

    ret nz

    add b
    ld d, b
    add b
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    jr nz, jr_050_6b4a

jr_050_6b4a:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    xor a
    ld a, a
    ld a, a
    ccf
    ld e, a
    ccf
    or a
    rra
    ccf
    rra
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    rlca
    rla
    inc bc
    dec b
    inc bc
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    rst $18
    inc a
    inc a
    nop
    ld b, d
    nop
    nop
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
    nop
    and b
    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    and b
    nop
    add b
    nop
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ei
    inc a
    inc a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    or b
    ldh [$f4], a
    ldh [$f8], a
    ldh a, [$d8]
    ldh a, [$f8]
    ldh a, [$e8]
    ldh a, [$b4]
    ldh [$f0], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    ei
    rst $20
    ld h, [hl]
    add c
    sub c
    nop
    db $fd
    cp $f6
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    db $fc
    cp $fc
    push af
    cp $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    nop
    nop
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
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    nop
    add b
    add b
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld bc, $5878
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $c385


    inc b
    add e
    ld b, c
    add e
    ld [bc], a
    add c
    nop
    add b
    nop
    add b
    and b
    ret nz

    add b
    ret nz

    ret nc

    ldh [$64], a
    ldh a, [$f0]
    db $fc
    call c, Call_000_1eff
    rst $38
    ld b, c
    ld e, $0c
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_050_6c6c

jr_050_6c6c:
    add d
    ld a, b
    ld e, b
    rst $38
    nop
    ret nz

    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0300
    ret nz

    nop
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
    ld bc, $0300
    nop
    and b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_050_6e4e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_050_6fd5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_050_6fe0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld b, $02
    nop
    rrca
    ld [$0002], sp
    rrca
    ld b, $02
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    rst $38
    nop
    ld a, [bc]
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $28
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $ff
    ld bc, $0337
    ld de, $3a1e
    inc bc
    ld de, $ff1e
    ld [bc], a
    dec a
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $3f
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $ff
    ld [bc], a
    db $fe

    push af
    push bc
    push de
    push hl
    ld a, $ff
    ld b, $01
    ld hl, $c330
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $0401
    rst $18

    db $0a, $13

    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_050_712b

    jp Jump_050_719f


jr_050_712b:
    add sp, -$02
    ld de, $c332
    push hl
    ld hl, sp+$02
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    ld d, h
    ld e, l
    ld b, $ff
    ld c, $03
    xor a
    ld hl, $c330
    ld [hl], a
    ld hl, $c338
    ld [hl], a
    inc hl

jr_050_7147:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_050_7183

    cp $ff
    jr nz, jr_050_7147

    inc b
    ld a, b
    inc a
    ld [hl], a
    push de
    push hl
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld [de], a
    inc de
    inc de
    push hl
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop de
    ld a, [de]
    inc a
    inc de
    push hl
    push de
    ld d, a
    ld a, $04
    sub c
    ld hl, $c330
    ld e, a
    ld a, d
    ld d, $00
    add hl, de
    add hl, de
    inc hl
    ld [hl], a
    pop de
    pop hl
    inc hl
    dec c
    jr nz, jr_050_7147

jr_050_7183:
    ld a, c
    or a
    jr z, jr_050_7195

    ld a, $ff
    dec hl
    ld [hl], a
    push hl
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    dec de
    dec de
    ld [de], a

jr_050_7195:
    ld a, $01
    ld hl, $71b3
    call Call_000_23e8
    add sp, $02

Jump_050_719f:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $71b3
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30

    db $80, $03

    jr nz, jr_050_71bc

    rst $30

    db $00, $03

    ret nz

jr_050_71bc:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld hl, $c338

jr_050_71ce:
    ld a, [hl]
    cp $ff
    jr z, jr_050_71f7

    push hl
    ld l, c
    ld h, $00
    add hl, hl
    ld de, $c330
    add hl, de
    inc hl
    ld a, [hl]
    dec a
    ld [hl], a
    pop hl
    inc hl
    ld b, c
    inc c
    ld d, a
    ld a, c
    cp $04
    jr z, jr_050_71f7

    ld a, d
    or a
    jr nz, jr_050_71ce

    ld a, b
    call Call_050_7201
    ld a, c
    cp $04
    jr nz, jr_050_71ce

jr_050_71f7:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_050_7201:
    push af
    push bc
    push de
    push hl
    push af
    add sp, -$01
    ld hl, sp+$00
    ld [hl], a
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $c330
    add hl, bc
    ld a, [hl]
    ld [$c33c], a

jr_050_7217:
    ld hl, $0401
    rst $18

    db $0a, $13

    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33c]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_050_7249

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_050_7217

jr_050_7249:
    ld b, a
    inc hl
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl]
    push af
    push bc
    ld l, e
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $b000
    add hl, de
    push hl
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld c, l
    ld hl, $0400
    rst $18

    db $0a, $13

    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    pop de
    pop bc
    call Call_000_0468
    ld a, [$c33c]
    add $04
    ld [$c33c], a
    pop af
    ld d, a
    add sp, $01
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $c330
    add hl, bc
    ld a, [$c33c]
    ld [hl+], a
    ld [hl], d
    pop hl
    pop de
    pop bc
    pop af
    ret


    xor e
    ld [hl], d
    db $db
    ld [hl], d
    add hl, sp
    ld [hl], l
    ei
    db $76
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
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
    ld [$0825], sp
    dec h
    rst $30
    ld c, e
    ld c, e
    dec bc
    rst $38
    pop hl
    dec hl
    dec hl
    ld a, [bc]
    ld c, e
    ld l, $ff
    ldh [$2b], a
    dec bc
    inc c
    rst $38
    pop hl
    ld c, h
    rst $38
    ldh [$f9], a
    pop hl
    nop
    db $fd
    ld [c], a
    ld hl, sp-$1d
    db $f4
    push hl
    db $fc
    db $ed
    pop bc
    db $e3
    cp [hl]
    ld [c], a
    ret nz

    rst $20
    ret nc

    ld [c], a
    call c, $e5fd
    or l
    db $e3
    ld c, h
    inc c
    inc l
    ret nz

    ld a, [c]
    dec bc
    dec bc
    inc sp
    ld l, e
    ld l, e
    add [hl]
    pop hl
    ld a, c
    ldh [$2b], a
    dec hl
    ld [hl], l
    ldh [$c0], a
    db $ec
    ld [hl], h
    cp c
    ldh [$b2], a
    db $e4
    inc l
    ret nz

    db $f4
    ld l, e
    ld l, e
    dec hl
    rst $38
    pop hl
    db $10
    cp l
    db $e3
    ret nz

    and $7e
    push hl

jr_050_7330:
    ld b, a
    push hl
    ld c, h
    ret nz

    rst $30
    pop bc
    ld [c], a
    db $fd
    pop bc
    jr nz, jr_050_7330

    jp nz, $e506

    add d
    db $e4
    ld b, b
    add sp, $00
    and $2c
    ld sp, hl
    jp hl


    add c
    db $e4
    add b

jr_050_734a:
    ld b, h
    ld [c], a
    cp a
    ld [$c4c7], a
    pop af

jr_050_7351:
    rst $00
    jp nz, $c0d1

    ldh [$c2], a
    and $0b
    ld bc, $bf2b
    push hl
    dec a
    and $b7
    push hl
    ld a, a
    call nz, $d2c0
    ret nz

    add sp, -$41
    push hl
    ld e, b
    ret nz

    srl a
    ld [$ce38], a
    ld l, e
    ld c, e
    pop bc
    ret nz

    ld l, e

jr_050_7375:
    rst $38
    ldh [rP1], a
    inc bc
    ret nz

    cp a
    push hl
    ld c, $c5
    add c
    jp $c435


    jr z, jr_050_734a

    jr c, jr_050_7351

    dec bc
    ldh [rP1], a
    cp a

jr_050_738a:
    pop hl
    call nz, $40a1
    ret nz

    dec a
    db $e3
    ld c, h
    call nz, $e4fe
    ld [hl], l
    add $38
    jp nc, $ca00

    pop bc
    add b
    ld [c], a
    ld a, h
    ldh [$fe], a
    and d
    ret nz

    pop hl
    adc $c7
    adc c
    rst $20
    jr c, jr_050_7375

    nop
    ld a, h
    call nz, $a1c0
    ld a, [hl]
    ld [c], a
    ld sp, hl
    jp nz, $a2be

    cp e
    and b
    ld c, l
    xor e
    rlca
    rst $20
    nop
    jr c, jr_050_738a

    ret nz

    push hl
    ld c, b
    ret nz

    ei
    pop bc
    ld a, b
    add $40
    ldh [$3f], a
    push hl
    adc b
    push bc
    nop
    ld b, b
    push bc

jr_050_73cf:
    jr c, @-$2f

    ld bc, $bda5
    add c
    cp b
    pop bc
    ld a, h
    and l
    dec b
    and l
    ld a, l
    jp $4004


    call nz, $c638
    inc l
    rst $38
    ldh [$c0], a
    db $ed
    rst $38
    add h
    db $fc
    add e
    add [hl]

jr_050_73ec:
    and e
    nop
    adc b
    add h
    ld a, a
    xor c
    ret nz

    or $ba

jr_050_73f5:
    add b
    ld [hl], l
    add l
    ld b, b
    and $c0
    add sp, $79
    xor d
    nop
    add c
    rst $20
    ld e, b
    add sp, $50
    and $03
    sub [hl]
    jr c, jr_050_73cf

jr_050_7409:
    ret nz

    ld [$72d5], a
    inc bc
    sub h
    jr nz, jr_050_7409

    sub c
    push de
    ld [hl], d
    inc bc
    sub b
    ccf
    and a
    jp nz, Jump_000_2cc1

    db $fd
    and [hl]
    push de
    ld [hl], d
    nop
    inc bc
    adc a
    jr c, jr_050_73ec

    ret nz

    db $eb
    push de
    ld [hl], e
    inc bc
    adc [hl]
    jr c, jr_050_73f5

    cp a
    jp z, Jump_050_75d5

    nop
    inc bc
    adc [hl]
    or a
    ld h, [hl]
    ld b, h
    ldh [$7f], a
    rst $00
    push de
    ld [hl], l
    inc bc
    adc a
    rst $20
    ld h, [hl]
    ld b, [hl]
    rst $20
    nop
    ld [de], a
    ld h, a
    push de
    ld l, h
    inc bc
    adc a
    adc [hl]
    add sp, -$01
    xor d
    push de
    ld [hl], l
    inc bc
    adc a
    dec sp
    ld l, b
    nop
    nop
    ld [$71d5], a
    inc bc
    adc a
    db $76
    xor d
    add h
    ret z

    push de
    ld [hl], a
    inc bc
    adc [hl]
    cp $d4
    nop
    push de
    ld [hl], c
    adc a
    dec h
    ld a, [bc]
    ld [hl], h
    push bc
    call z, Call_050_6fd5
    cp d
    and h
    dec bc
    sub h
    ld b, d
    xor e
    nop
    push de
    ld [hl], d
    adc h
    and e
    ld a, e
    inc l
    add hl, sp
    ld d, e
    push de
    ld [hl], e
    inc bc
    adc l
    cp c
    ld [hl], $d5
    ld [hl], e
    nop
    ret nc

    adc c
    ld e, b
    and a
    cp c
    ld h, $00
    adc c
    push de
    ld [hl], d
    sub a
    add [hl]
    ld d, $ed
    nop
    push bc
    nop
    ld [hl-], a
    cpl
    jp nc, $4fea

    ld l, b
    and h
    rst $28
    add c
    rst $20
    nop
    push af
    ret nc

    dec c
    and h
    db $eb
    nop
    ret nz

    ld [$52d5], a
    adc a
    dec h
    ld a, c
    ld e, $d5
    ld d, h
    ld c, a
    add hl, bc
    ld a, c
    ld c, $73
    db $ec
    nop
    nop
    rst $30
    and h
    sub e
    ret nz

    ldh a, [$8f]
    inc [hl]
    ld a, c
    ld d, $77
    or e
    adc a
    cpl
    ld a, c
    inc de
    nop
    ld a, [$8c96]
    xor a
    and h
    sub d
    ld a, [$8f97]
    ld l, $79
    inc d
    ei
    ld hl, sp-$1b
    ld c, l
    nop
    ld a, c
    ld de, $ffff
    sbc h
    ld h, l
    ld_long $ffd4, a
    rst $38
    ld_long $ffda, a
    rst $38
    and h
    sbc e
    nop
    rst $38
    rst $38
    and h
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], e
    inc [hl]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    rst $38
    call c, $ffff
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
    nop
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
    ld e, h
    ld [hl], e
    nop
    nop
    nop
    rst $38
    ld e, e
    ld e, e
    ld e, h
    ld e, l
    ld sp, $3131
    ld e, l
    rst $30
    ld e, h
    ld e, d
    ld e, e
    rst $38
    ldh [$61], a
    ld sp, $2c2b
    ld h, a
    jr nz, @+$22

    nop
    rst $38
    rst $38
    rst $20
    and $5b
    ld h, b
    jp nz, $e6e0

    db $fd
    pop hl
    ld e, l
    ld e, h
    ret nz

    rst $38
    pop af
    ldh a, [$60]
    ld sp, $3f47
    ld b, [hl]
    ld d, h
    ld d, l
    ld d, h
    ld b, [hl]
    ld b, a
    ld a, h
    pop hl
    or h
    ldh [$bc], a
    ret nz

    rst $38
    db $ec
    db $eb
    ld sp, $4849
    ld l, e
    rst $38
    pop hl
    ld [hl], $47
    ld d, h
    ld b, [hl]
    ld c, l
    db $76
    pop hl
    ret nz

    rst $38
    ret nz

    db $ec
    add hl, sp
    pop bc
    pop hl
    cp a
    ld h, a
    ld h, l
    ld l, b
    ld l, d
    ld l, e
    ld [hl-], a
    cp a
    pop hl
    add hl, hl
    db $e3

jr_050_7593:
    daa
    db $10
    ret nz

    rst $38
    jp hl


    add sp, -$7f
    ld [c], a
    ld h, a
    ld h, a
    ld l, h
    rrca
    ld l, h
    ld l, d
    ld l, d
    jr nc, @-$3f

    push hl
    jp z, $e8ff

    rst $20
    add c
    ld [c], a
    ld a, a
    ld h, [hl]
    ld l, e
    jr nc, jr_050_75e0

    ld l, e
    ld l, c

jr_050_75b2:
    ld l, e
    cp a
    push hl
    add h
    jp z, $e8ff

    rst $20
    ld d, d
    ret nz

    add sp, -$41
    push hl
    jp z, $e8ff

    rst $20
    ld [hl], h
    pop bc
    ld [hl], c
    ld b, b
    and $b8
    ret nz

    dec a
    db $e3
    jp z, $e8ff

    rst $20
    add b
    ld a, c
    jr jr_050_7593

    ld [c], a

Jump_050_75d5:
    ret nz

    pop bc
    add b
    ldh [rOCPS], a
    ld l, b
    cp e
    pop bc
    jp z, $c0ff

jr_050_75e0:
    add sp, -$04
    cp a
    db $e3
    inc a
    jp nz, Jump_050_6a30

    ld l, d
    ld l, h
    ld l, h
    add hl, sp
    sbc b
    ret nz

    rst $38
    ret nz

    db $eb
    ld a, [hl]
    ld [c], a
    ld c, d

jr_050_75f4:
    ld [hl], $42
    pop hl
    cp l
    ret nz

    jr nc, jr_050_75f4

    ld d, d
    ret nz

    rst $38
    ret nz

    db $ec
    add b
    ld a, c
    ld a, l
    ld a, h
    xor a
    add a
    ld b, a
    ld b, [hl]
    ld [hl], $c0
    db $e3
    add b
    rst $38
    ret nz

    xor $7c
    ldh [$a1], a
    push af
    ld sp, $a038
    ld [hl], $40
    ldh [$36], a
    scf
    ld sp, $285e
    jp z, $c0ff

    pop af
    cp [hl]
    pop hl
    ld d, l
    ld hl, sp-$7f
    ld e, a
    jp z, $80ff

    ldh a, [rNR24]
    ld h, b
    jr c, jr_050_75b2

    dec [hl]
    add b
    ld e, [hl]
    ld e, e
    jp z, $ffff

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
    rst $38
    rst $38
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
    jr nc, jr_050_775a

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
    scf
    ld [hl], a
    ld h, a
    ld [hl], a
    add e
    ld a, c
    add hl, sp
    ld a, e
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_050_775a:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $db
    ld a, [hl+]
    ld a, [bc]
    rst $38
    rst $28
    inc c
    ld c, h
    rst $38
    ldh [$0c], a
    inc c
    ld b, c
    inc c
    db $fc
    ldh [$f9], a
    pop hl
    ld hl, sp-$1e
    db $f4
    push hl
    db $fc
    db $ed
    ld c, d
    cp a

Jump_050_7780:
    rst $28
    push hl
    ld l, d
    push bc
    pop hl
    ld c, h
    db $fd
    and $b5
    db $e3
    ld c, h
    inc c
    inc l
    ld d, [hl]
    or h
    ld [c], a
    inc l
    inc l
    cp d
    db $eb
    ld a, [bc]
    cp a
    xor $6a
    ret nz

    jp hl


    sub h
    cp c
    ldh [$b2], a
    db $e4
    inc l
    ret nz

    ld [c], a
    inc l
    ret nz

    xor $bf
    db $ed
    ld l, d
    adc b
    ret nz

    ld [c], a
    ld a, [hl]
    push hl
    ld b, a
    push hl
    ld c, h
    ret nz

    and $40
    db $ed
    rst $38
    ldh [$0b], a
    ld [hl], $ff
    ldh [rWX], a
    ld l, e
    ld a, [$2be2]
    ld c, d
    ret nz

    ld [c], a
    add d
    and $40
    ld b, b
    add sp, -$0c
    jp nz, $e841

    scf
    db $e3
    ret nz

    pop hl
    push bc
    ldh [rWX], a
    cp [hl]
    ldh [rIF], a
    ld c, e
    ld c, e
    ld l, e
    ld c, e
    cp a
    ld [c], a
    push bc
    jp $e6fa


    pop af
    call nz, $c2dc
    pop de
    ret nz

    push hl
    ld c, e
    dec hl
    dec hl
    pop bc
    ldh [rWX], a
    ld l, e
    rlca
    ld l, e
    ld c, e
    dec bc
    ld a, [hl]
    ldh [$ca], a
    and $b7
    push hl
    ld a, a
    call nz, $e102
    ld d, b
    ld b, b
    ld a, [c]
    jp z, $c1e0

    pop hl
    ld a, a
    ldh [$2b], a
    inc [hl]
    ldh [rWY], a
    ret nz

    set 4, h
    ccf
    rst $20
    ret nz

    push af
    dec hl
    add d
    db $e3
    ld a, [hl]
    pop hl
    dec bc
    dec bc
    ld l, h
    nop
    ld c, $c7
    add c
    jp $c435


    ld b, c
    di
    ret nz

    jp nz, $e1c9

    ld bc, $f8e1
    ld [c], a
    add b
    ld b, a
    and $ff
    push hl
    ld [hl], l
    add $00
    or $4b
    pop hl
    pop bc
    jp nz, $c077

    ld l, h
    nop
    add h
    pop bc
    adc $c7
    adc h
    and h
    ret nz

    adc $ba
    and [hl]
    ld b, b
    ld [c], a
    ld b, h
    pop bc
    add d
    db $e3
    nop
    add c
    ld [c], a
    ld c, l
    xor e
    rst $38
    and l
    add b
    ld hl, sp+$04
    jp $e404


    db $d3
    push bc
    ld b, h
    and $06
    ld b, b
    sbc $2b
    ld l, e
    jp $bfa1


    and b
    rst $18
    adc b
    dec b
    and l
    ld a, l
    jp $8000


    db $ed
    or l
    add a
    add b
    jp nz, $c007

    ld a, l
    and c
    add c
    push hl
    adc l
    add l
    adc b
    add l
    nop
    ld b, b
    add $85
    and [hl]
    or l
    add a
    ld b, b
    and d
    cp a
    jp nz, $e881

    ld b, b
    push hl
    ret nz

    add sp, $00
    jp nz, $b5cb

    add a
    ld e, b
    rst $20
    ld d, b
    and $18
    adc d
    adc l
    or b
    ret nz

    and $99
    add e
    nop
    push de
    ld a, a
    ret z

    ld l, a
    ld [hl], l
    adc c
    adc e
    ldh a, [rIE]
    rst $38
    sub [hl]
    call $ef5c
    ld a, [hl]
    db $fc
    nop
    or l
    adc c
    ld h, b
    cp c
    ret nz

    cp $17
    ld h, e
    add b
    or $00
    db $d3
    db $f4
    or e
    sub $d4
    nop
    nop
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    xor e
    ld d, $fa
    ld e, a
    rst $38
    ld h, l
    rst $10
    ld c, [hl]
    ld c, a
    nop
    or $af
    ld [bc], a
    jp c, $fc81

    and e
    ld d, d
    sub d
    ld l, c

jr_050_78da:
    ret nz

    cp $63
    jp c, $dfc2

    nop
    ld h, e
    call c, $284f
    or l
    sub d
    db $e3
    daa
    pop hl
    di
    pop bc
    call c, $d97f
    add $df
    nop
    ld b, b
    rst $38
    rst $38
    rst $38
    adc b
    rst $38
    rst $38
    rst $38
    ld h, e

jr_050_78fb:
    ld a, [$85b9]
    ld a, c
    inc d
    rst $38
    rst $38
    nop
    sub $b9
    rst $38
    rst $38
    ld c, a
    ld c, b
    ld a, c
    jr jr_050_78da

    ld e, l
    ld a, c
    ld d, $55
    ld c, h
    rst $08
    ld d, a
    nop
    ld a, c
    dec de
    and b
    cp c
    ld l, $25
    add hl, de
    ld a, a
    jr c, jr_050_78fb

    ret nz

    rst $18
    ld e, c
    cp e
    sub [hl]
    cp a
    nop
    or $bb
    add b
    rst $38
    ld a, c
    ld e, a
    call nc, $82ff
    ld c, l
    ld a, c
    ld d, $8b
    rst $38
    ld a, c
    dec de
    nop
    rst $38
    rst $38
    inc h
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    ret nc

    ld sp, hl
    db $dd
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, c
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
    nop
    cp a
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
    ld e, h
    ld h, e
    nop
    nop
    nop
    sbc e
    adc e
    adc b
    rst $38
    xor $8b
    nop
    rst $38
    rst $38
    rst $20
    and $87
    add $bf
    xor $8b
    ld c, [hl]
    jp z, $c0ff

    add sp, -$41
    db $ed
    adc e
    ld c, [hl]
    ret nz

    ret nz

    rst $38
    ret nz

    ld [$eb7e], a
    pop bc
    ldh [$c0], a
    rst $38
    ret nz

    db $eb
    add a
    ld e, e
    rst $38
    ld e, h
    ld e, l
    ld sp, $979e
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    rst $08
    ld d, a
    ld b, a
    ld h, b
    adc h
    ret nz

    rst $38
    ret nz

    xor $5f
    ld sp, $31ff
    sub l
    sbc b
    sbc c
    ld l, d
    ld l, b
    ld l, b
    ld l, d
    db $e3
    ld [hl], $37
    cp a
    pop hl
    jp z, $80ff

    db $eb
    ld e, [hl]
    ld sp, $7795
    sbc l
    jr nc, jr_050_7a42

    ret nz

    pop hl
    ld l, d
    add hl, sp
    ld sp, $e07e
    db $fc
    jp z, $40ff

    db $eb
    ld sp, $9c95
    sub h
    ld l, d
    ld l, d
    db $fd
    ld l, l
    rst $38
    ldh [rOCPS], a
    ld d, e
    ld sp, $5b61
    adc h
    call z, $ffca
    nop
    db $eb
    sbc a

jr_050_79fa:
    sub c
    add d
    ldh [$c1], a
    pop hl
    ld l, l
    ld l, l
    sbc a
    add hl, sp
    ld sp, $1415
    inc d
    jp z, $c0ff

    res 2, d
    rst $28
    sub e
    jr nc, jr_050_7a79

    ld l, c
    ret nz

    ld [c], a
    ld [hl], $49
    ld sp, $17b3
    inc h
    set 7, a
    add b
    call z, Call_000_3051
    ret nz

    db $e3
    ld b, d
    ccf
    ld b, [hl]
    ld b, a
    ld sp, $1615
    jr nz, @-$33

    rst $38
    ld b, b
    call z, Call_050_50fb
    ld l, l
    ld b, b
    db $e3
    add hl, sp
    ld sp, $3131
    rla
    reti


    jr z, jr_050_79fa

    rst $38
    add b
    xor $6d
    jr nc, @+$01

    pop bc
    ld c, b

jr_050_7a42:
    ld c, c
    and [hl]
    inc b
    ldh [rNR21], a
    jr nz, @-$3e

    rst $38
    ret nz

    rst $28
    ld l, l
    rst $38
    ret nz

    ld b, d
    call Call_000_043c
    ldh [rNR50], a
    jr nz, @-$3e

    rst $38
    add b
    xor [hl]
    ld c, c
    ld b, d
    rra
    ld l, l
    ld l, l
    ld l, c
    ld [hl], $3c
    inc b
    pop hl
    rst $38
    pop hl
    set 7, a
    ld c, $00
    call Call_050_553c
    ld d, h
    push bc
    ret nz

    inc b
    pop hl
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38

jr_050_7a79:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp+$00
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
    jr nc, jr_050_7b98

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_050_7b98:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_050_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
