INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $055", ROMX[$4000], BANK[$55]

    db $0c, $40

    inc c
    ld c, [hl]
    jp c, $2f5a

    ld h, e
    nop
    ld a, c
    xor e
    ld [hl], b

    db $12, $40

    db $fa
    ld c, c

    db $fa, $4b, $ff, $42, $41, $00, $05, $01, $03, $01, $02, $ff, $01, $02, $11, $12
    db $00, $02, $02, $01, $ff, $de, $fd, $fc, $f5, $fd, $5f, $fd, $ba, $ff, $fd, $fa
    db $f9, $be, $fc, $d6, $be, $ed, $ff, $0f, $17, $07, $56, $17, $1f, $17, $0d, $fe
    db $fe, $e0, $1b, $27, $37, $0f, $17, $02, $02, $ff, $00, $40, $00, $04, $41, $7b
    db $3a, $e7, $ff, $9d, $bf, $ff, $eb, $ff, $f7, $26, $99, $ff, $88, $66, $ff, $ea
    db $ff, $fd, $f7, $ff, $f7, $7f, $fd, $fd, $f0, $e2, $89, $67, $42, $52, $7f, $00
    db $00, $20, $04, $04, $04, $00, $ff, $e2, $ff, $10, $10, $01, $11, $0c, $07, $13
    db $8c, $ff, $27, $33, $9f, $eb, $7f, $9f, $06, $03, $ff, $19, $2e, $23, $39, $0f
    db $e3, $ff, $35, $ff, $ff, $5f, $ff, $f6, $df, $ff, $02, $03, $ff, $05, $0a, $05
    db $06, $13, $15, $0b, $0d, $ff, $13, $2b, $17, $1b, $2f, $17, $72, $af, $ff, $ad
    db $db, $6f, $f7, $da, $ff, $55, $ff, $ff, $aa, $ff, $9b, $f7, $6d, $ff, $10, $10
    db $fe, $ba, $e0, $04, $01, $01, $04, $17, $23, $bc, $7f, $9b, $e3, $7f, $9f, $02
    db $03, $09, $c0, $e0, $ef, $1f, $e7, $7f, $3b, $dd, $e0, $f7, $df, $fe, $ff, $02
    db $0b, $05, $06, $09, $1d, $47, $4b, $df, $17, $1b, $07, $17, $0f, $60, $e0, $17
    db $0f, $ff, $53, $4f, $17, $5f, $2f, $1d, $2f, $3f, $bf, $96, $bf, $bf, $7f, $7f
    db $f7, $d0, $e0, $0e, $ff, $23, $19, $1f, $27, $4b, $6f, $3f, $5d, $ef, $bf, $cb
    db $7f, $b7, $90, $e0, $12, $15, $16, $ff, $09, $05, $5b, $4d, $67, $3b, $9f, $e7
    db $ff, $5f, $9f, $94, $96, $4a, $6a, $a0, $a0, $ff, $15, $95, $48, $48, $01, $11
    db $a0, $a0, $ff, $48, $48, $fb, $7f, $ff, $ef, $fc, $9b, $ff, $b6, $d8, $b8, $e7
    db $44, $9e, $93, $77, $ff, $24, $fc, $be, $f9, $d9, $c7, $c6, $3f, $ff, $34, $ff
    db $c9, $fb, $22, $fe, $ce, $fe, $f7, $1a, $9b, $ff, $ff, $e0, $fb, $a9, $46, $df
    db $ff, $99, $f7, $ae, $be, $21, $65, $88, $99, $ff, $62, $9d, $99, $7f, $62, $ff
    db $11, $5b, $ff, $4e, $ef, $91, $d5, $8a, $9b, $14, $54, $ff, $2f, $17, $af, $f7
    db $0b, $af, $5f, $6b, $ff, $5f, $e5, $97, $df, $bf, $de, $7f, $bf, $ff, $64, $66
    db $24, $ac, $d2, $d2, $00, $48, $ff, $98, $98, $20, $24, $80, $90, $00, $40, $ff
    db $f4, $ea, $ee, $de, $cd, $d5, $d0, $ba, $ff, $dc, $b4, $a9, $7d, $a8, $51, $74
    db $e4, $ce, $dc, $c0, $02, $01, $03, $81, $c0, $7c, $c0, $05, $0a, $ff, $0b, $0d
    db $bb, $ff, $3f, $af, $7f, $ba, $ff, $7f, $3d, $ff, $7f, $df, $fd, $ff, $eb, $ff
    db $fd, $f7, $17, $4f, $0f, $17, $2f, $1a, $ff, $2f, $3d, $0f, $2f, $5f, $6d, $3f
    db $4b, $ff, $3d, $77, $fb, $ff, $ff, $6f, $ff, $fa, $ff, $ff, $ad, $ff, $df, $df
    db $fe, $fe, $f5, $ff, $fc, $f2, $00, $00, $08, $08, $00, $08, $ee, $bb, $e1, $25
    db $27, $0b, $5c, $c0, $15, $ee, $01, $ff, $bb, $aa, $7d, $3d, $d7, $8b, $7d, $56
    db $ff, $ff, $3b, $af, $dd, $7f, $2f, $37, $5f, $df, $67, $9b, $ef, $3f, $9b, $90
    db $c5, $87, $8f, $7f, $17, $0f, $27, $0f, $6f, $bf, $1f, $37, $e0, $cd, $bf, $33
    db $e0, $40, $40, $2e, $c0, $5c, $c0, $00, $00, $ff, $01, $01, $20, $20, $00, $00
    db $9d, $ff, $ff, $64, $ec, $db, $fb, $90, $da, $48, $48, $ff, $31, $35, $80, $91
    db $04, $44, $50, $72, $ff, $64, $ec, $93, $93, $20, $6a, $c8, $c8, $ff, $24, $34
    db $80, $80, $02, $02, $04, $44, $bf, $00, $88, $91, $91, $00, $4a, $8a, $e0, $00
    db $ff, $40, $40, $04, $04, $ac, $ae, $41, $c9, $ff, $92, $92, $24, $26, $11, $11
    db $80, $80, $ff, $24, $24, $81, $81, $02, $02, $09, $1d, $ff, $85, $c7, $08, $1b
    db $22, $27, $07, $ae, $af, $0f, $1a, $13, $65, $30, $e4, $7d, $30, $e5, $95, $ff
    db $ff, $48, $fc, $75, $f7, $9c, $dc, $52, $7f, $da, $04, $65, $d0, $d8, $ad, $ed
    db $8c, $e0, $fa, $b0, $e1, $40, $ce, $a0, $20, $84, $84, $00, $40, $ff, $b6, $bf
    db $f8, $ef, $d3, $d9, $d3, $bf, $ff, $e4, $f5, $1f, $77, $8b, $df, $5f, $bf, $ff
    db $e8, $da, $ee, $de, $d4, $ed, $d1, $ed, $ff, $d6, $ee, $ec, $d5, $e0, $fa, $e9
    db $dd, $ff, $50, $b8, $49, $eb, $00, $54, $98, $7a, $ff, $aa, $7a, $b8, $59, $b0
    db $e4, $48, $a9, $ef, $20, $20, $08, $88, $a8, $c1, $08, $08, $20, $ff, $20, $80
    db $90, $10, $58, $04, $06, $00, $ff, $08, $11, $11, $00, $0a, $08, $08, $21, $ff
    db $25, $00, $11, $04, $44, $13, $2f, $6f, $ff, $77, $af, $9a, $af, $7d, $4f, $6f
    db $5f, $ff, $ed, $bf, $cb, $9d, $d7, $a6, $fa, $0a, $ff, $fd, $d3, $6b, $2f, $d5
    db $16, $bf, $ab, $7f, $ce, $1f, $b7, $ed, $7f, $ff, $00, $fe, $eb, $ff, $22, $df
    db $00, $af, $50, $da, $25, $fd, $ff, $42, $bf, $22, $fd, $88, $eb, $15, $f7, $ff
    db $f5, $03, $e6, $0e, $d8, $19, $e1, $27, $ff, $a6, $6f, $c8, $5d, $4c, $db, $90
    db $bf, $ff, $fd, $03, $fa, $02, $fa, $06, $f4, $05, $ff, $e4, $0d, $d9, $3b, $62
    db $e7, $84, $9f, $fd, $28, $d0, $e0, $00, $da, $00, $fd, $04, $fb, $ff, $21, $ff
    db $46, $a7, $38, $fe, $4f, $e8, $fe, $fe, $e1, $97, $d8, $97, $d0, $2f, $b0, $5f
    db $f7, $60, $9f, $c0, $a0, $e5, $fe, $01, $f1, $03, $ff, $e6, $0f, $b8, $7e, $c8
    db $6f, $ca, $6d, $ff, $48, $ea, $90, $dd, $90, $df, $28, $b5, $bf, $40, $6b, $80
    db $f7, $ff, $00, $ae, $e0, $03, $fe, $ae, $e0, $0d, $c9, $1b, $b2, $77, $c4, $6f
    db $ff, $c9, $0d, $d2, $1b, $d2, $3b, $e4, $37, $ff, $e4, $37, $a6, $75, $c8, $6f
    db $c8, $6f, $fd, $f9, $80, $e1, $39, $e1, $e7, $06, $1f, $19, $ff, $ff, $e2, $fd
    db $10, $fa, $fb, $00, $f7, $ff, $07, $d8, $1f, $e0, $78, $87, $e7, $1a, $9f, $9d
    db $60, $7a, $80, $fd, $d2, $e0, $d0, $e1, $f7, $ff, $04, $ef, $18, $1d, $e0, $ef
    db $00, $d7, $fe, $e0, $e0, $0f, $d8, $38, $e0, $37, $a7, $6f, $ff, $c8, $5f, $c8
    db $5a, $c8, $5d, $00, $ff, $ff, $10, $fa, $00, $ad, $00, $df, $e4, $ff, $bf, $18
    db $fd, $04, $1f, $e2, $e7, $10, $e5, $ef, $ff, $f0, $1b, $fc, $05, $1e, $e3, $e6
    db $4f, $ff, $e8, $8f, $c8, $2f, $98, $17, $38, $e7, $fd, $f0, $f6, $c3, $c8, $6f
    db $ea, $cd, $48, $9a, $ff, $10, $3d, $e0, $ff, $20, $fd, $12, $eb, $ff, $00, $f7
    db $93, $b8, $2f, $60, $5f, $c0, $fe, $38, $e7, $08, $9f, $30, $7f, $50, $6a, $44
    db $3f, $fd, $80, $ff, $28, $f5, $00, $e0, $e0, $c0, $c3, $ff, $fc, $01, $e3, $07
    db $9c, $3c, $60, $e3, $eb, $83, $9f, $50, $e1, $98, $50, $e2, $18, $fb, $e2, $ff
    db $f5, $00, $ff, $fe, $01, $e7, $0f, $d8, $7f, $3f, $60, $f8, $87, $e7, $18, $9f
    db $50, $e1, $ff, $c1, $f9, $06, $c7, $38, $3a, $c0, $dd, $ef, $04, $fb, $20, $fd
    db $c0, $e5, $fe, $01, $ff, $fb, $01, $f9, $fa, $c1, $07, $f4, $06, $48, $ef, $ff
    db $90, $da, $90, $dd, $24, $ab, $20, $bf, $f3, $50, $7d, $e0, $c3, $5e, $c3, $e7
    db $0f, $98, $38, $ff, $60, $e7, $87, $9f, $08, $ff, $00, $af, $ff, $20, $da, $40
    db $ed, $07, $ff, $18, $f8, $be, $f0, $e1, $0b, $9c, $33, $78, $47, $5e, $e0, $bf
    db $f7, $c0, $7f, $80, $34, $c1, $90, $b7, $24, $6f, $ff, $44, $fb, $80, $ff, $40
    db $bf, $02, $5b, $fd, $22, $80, $e0, $a5, $5a, $50, $ad, $9a, $65, $ff, $25, $da
    db $aa, $15, $55, $aa, $68, $d3, $ff, $9a, $65, $5b, $ff, $af, $ff, $67, $ff, $fe
    db $a0, $63, $d3, $fd, $6d, $ff, $48, $cf, $48, $ff, $df, $94, $b9, $90, $bb, $90
    db $bf, $50, $ff, $fd, $48, $df, $4a, $cf, $90, $9f, $90, $ff, $df, $48, $ea, $4a
    db $6d, $48, $6f, $50, $ff, $f5, $90, $d7, $92, $97, $4b, $c8, $4b, $ff, $d8, $97
    db $b8, $97, $b0, $97, $b0, $57, $ff, $d8, $4b, $d8, $4b, $c8, $97, $90, $97, $fd
    db $d8, $1c, $c0, $68, $4f, $68, $57, $f8, $9f, $f7, $d0, $9f, $90, $c0, $a3, $bd
    db $7e, $c3, $ff, $9f, $00, $c3, $3c, $3c, $c3, $f9, $e0, $52, $e2, $76, $7f, $99
    db $ff, $00, $99, $66, $66, $99, $50, $e0, $bf, $02, $ad, $02, $da, $3c, $fd, $e0
    db $e4, $fb, $be, $f0, $e0, $af, $00, $d9, $76, $ef, $e0, $e4, $df, $ff, $01, $03
    db $06, $0e, $1c, $39, $f9, $e7, $7d, $26, $d0, $c4, $1b, $78, $67, $e0, $df, $36
    db $e2, $fe, $66, $a3, $50, $af, $25, $da, $07, $b8, $07, $ff, $fd, $a2, $5f, $e0
    db $17, $e5, $ba, $42, $df, $fd, $fd, $fd, $df, $ff, $fc, $60, $ff, $7d, $f7, $ff
    db $ef, $ef, $76, $60, $ff, $ad, $ef, $76, $fb, $ff, $e6, $ee, $e0, $e4, $eb, $74
    db $f7, $48, $ff, $ff, $80, $bb, $eb, $ff, $7c, $ff, $50, $f7, $d7, $ac, $eb, $67
    db $e1, $40, $b5, $00, $fb, $ff, $01, $ff, $02, $d7, $10, $ed, $05, $ff, $ff, $03
    db $ff, $2a, $da, $08, $bd, $15, $ff, $ff, $0e, $ff, $45, $f7, $0a, $fe, $25, $ef
    db $ff, $9b, $f7, $1e, $ff, $76, $be, $db, $ff, $ff, $fe, $ff, $f5, $f5, $68, $ef
    db $d4, $ff, $ff, $b8, $af, $d0, $da, $a5, $fd, $52, $ff, $ff, $02, $fb, $45, $af
    db $56, $da, $22, $fe, $ff, $05, $ff, $26, $fd, $03, $bb, $01, $fd, $ff, $b9, $fb
    db $74, $d7, $2a, $ed, $02, $ff, $fb, $20, $da, $ba, $a1, $00, $fb, $dc, $ff, $fa
    db $ff, $fb, $f4, $ff, $e6, $eb, $f4, $f7, $68, $ef, $ff, $d2, $ff, $e8, $f1, $40
    db $fa, $fe, $ad, $3f, $fd, $5b, $df, $88, $f5, $10, $b5, $82, $56, $c0, $ff, $18
    db $db, $3c, $a5, $7e, $c3, $66, $c3, $f7, $66, $99, $42, $a2, $81, $b7, $78, $8b
    db $3c, $ff, $c5, $0e, $c5, $0e, $8b, $3c, $b7, $78, $fe, $92, $81, $df, $3e, $e7
    db $7e, $03, $ce, $33, $7f, $86, $f5, $06, $e7, $0c, $e7, $18, $76, $a0, $ff, $10
    db $d7, $38, $ab, $7c, $c7, $6c, $93, $fd, $44, $74, $85, $d7, $38, $cb, $1c, $e5
    db $0e, $ef, $cb, $1c, $d7, $38, $62, $84, $3c, $87, $7c, $e3, $f7, $0c, $fe, $e0
    db $03, $c0, $44, $a2, $10, $ef, $18, $9f, $f7, $0c, $ef, $18, $ef, $8d, $e3, $1d
    db $a0, $ef, $f7, $38, $93, $6c, $36, $87, $cf, $3c, $ff, $04, $79, $fb, $fe, $e0
    db $24, $81, $f0, $01, $e7, $1f, $80, $a4, $df, $9c, $60, $78, $80, $d8, $80, $a0
    db $c6, $38, $ff, $3c, $c0, $fc, $00, $a4, $00, $24, $00, $ff, $18, $00, $18, $09
    db $1d, $16, $1a, $16, $ff, $3f, $6c, $75, $9c, $e7, $7a, $9d, $60, $ff, $6f, $80
    db $bf, $09, $1d, $12, $1b, $13, $ff, $7a, $65, $f6, $87, $e4, $1b, $98, $67, $ff
    db $70, $af, $c0, $c0, $07, $c7, $1f, $98, $ff, $38, $20, $77, $27, $6f, $4b, $dc
    db $4f, $cf, $d8, $4f, $d8, $f3, $76, $a0, $a0, $84, $5a, $c8, $e7, $5c, $c8, $5c
    db $bc, $e1, $b6, $e0, $a4, $e0, $fc, $ef, $18, $fc, $04, $1e, $a0, $85, $0f, $c0
    db $e7, $ff, $f8, $18, $1e, $06, $e7, $e1, $f9, $90, $fd, $d8, $fe, $e0, $dc, $90
    db $dc, $a0, $f4, $20, $bb, $a4, $40, $80, $e0, $97, $b0, $9f, $fe, $e0, $af, $7d
    db $b0, $aa, $80, $e0, $9f, $c0, $bf, $80, $c0, $e3, $ff, $01, $25, $02, $27, $02
    db $26, $0c, $1f, $fb, $11, $1b, $b0, $e4, $24, $01, $27, $02, $27, $ff, $04, $1e
    db $09, $1d, $48, $cc, $48, $d8, $fb, $90, $b8, $fe, $e1, $50, $f8, $48, $d8, $48
    db $ff, $cc, $90, $b8, $88, $e8, $48, $ec, $48, $d5, $6c, $fe, $e0, $ec, $a4, $e0
    db $98, $80, $e2, $3c, $3c, $e5, $ff, $80, $a0, $e3, $a0, $a1, $70, $e2, $66, $66
    db $ff, $8a, $80, $a5, $e0, $40, $e1, $7f, $00, $e7, $90, $e5, $8e, $e2, $1b, $e3
    db $04, $1e, $90, $e5, $fc, $e2, $f0, $c1, $ed, $12, $fb, $af, $12, $da, $2c, $f6
    db $fe, $e0, $b4, $98, $e0, $ec, $fe, $e0, $e6, $25, $01, $27, $06, $1f, $08, $1e
    db $fd, $e9, $60, $61, $3a, $e4, $36, $e4, $36, $a4, $ef, $74, $c8, $6c, $c8, $7a
    db $e3, $d4, $20, $b4, $ff, $20, $b4, $40, $64, $40, $58, $80, $d8, $ff, $c8, $68
    db $e8, $c8, $48, $9c, $10, $34, $a3, $e0, $e4, $a0, $c3, $a1, $4c, $70, $84, $a5
    db $70, $83, $93, $4e, $f6, $e0, $5a, $58, $b5, $60, $86, $f0, $e0, $5b, $25, $20
    db $de, $60, $85, $9b, $f7, $6d, $ff, $f0, $e5, $57, $fd, $df, $aa, $ff, $93, $ff
    db $6d, $78, $a0, $94, $6d, $ff, $29, $e2, $64, $93, $1a, $ad, $25, $4a, $ff, $64
    db $93, $52, $6d, $04, $fa, $48, $bd, $ff, $0a, $d5, $15, $72, $52, $af, $0d, $da
    db $bf, $64, $93, $5a, $65, $06, $da, $20, $42, $c5, $f4, $20, $45, $f0, $0d, $dc
    db $b6, $e0, $a9, $f7, $9f, $fb, $ff, $66, $bf, $ff, $5b, $2a, $ff, $5d, $b7, $ff
    db $80, $bf, $40, $ff, $60, $df, $20, $ff, $ff, $a0, $bf, $20, $6f, $10, $f7, $50
    db $f7, $7e, $f0, $e3, $a0, $7f, $a0, $6f, $d0, $37, $fe, $e1, $ff, $10, $f7, $08
    db $db, $08, $fb, $44, $ff, $ff, $a4, $bd, $0e, $5b, $02, $f6, $41, $ff, $ff, $bf
    db $c0, $5f, $60, $5f, $60, $2f, $b0, $cf, $2f, $b0, $17, $d8, $fe, $e1, $c0, $e0
    db $df, $b0, $ff, $6f, $e0, $2f, $d4, $33, $ec, $1d, $f2, $df, $0e, $fd, $03, $80
    db $bf, $b2, $e1, $20, $ef, $9f, $10, $b3, $0c, $ed, $22, $27, $60, $03, $45, $0e
    db $af, $ce, $32, $bf, $50, $10, $40, $01, $00, $60, $3c, $2f, $3a, $e5, $dd, $02
    db $38, $60, $50, $88, $e0, $e3, $24, $ff, $f9, $0e, $ef, $31, $be, $4f, $70, $bf
    db $ff, $c0, $01, $fd, $06, $e7, $39, $3e, $c7, $f3, $f8, $3f, $c6, $24, $61, $20
    db $c7, $38, $38, $c7, $58, $a2, $60, $56, $23, $6a, $e1, $e8, $1b, $fe, $e2, $1f
    db $5e, $e1, $fe, $41, $27, $20, $c3, $1c, $1c, $e3, $e3, $80, $fd, $bf, $f5, $40
    db $ff, $40, $5f, $40, $5f, $80, $7d, $bf, $fe, $e1, $e3, $c3, $3e, $bf, $70, $30
    db $20, $fe, $90, $e0, $ff, $08, $eb, $14, $f7, $80, $ff, $ff, $90, $af, $50, $5a
    db $65, $fd, $42, $ff, $bf, $40, $ff, $c8, $ab, $94, $f7, $a0, $a1, $d0, $f1, $b8
    db $fe, $e1, $a0, $a3, $f0, $41, $d4, $b9, $d0, $bb, $39, $d0, $f0, $44, $00, $61
    db $d7, $b8, $d7, $00, $66, $10, $67, $01, $3c, $10, $62, $20, $67, $f0, $e2, $80
    db $a3, $70, $a2, $f0, $e4, $80, $28, $fd, $e4, $80, $20, $80, $f7, $40, $6b, $28
    db $b5, $ff, $90, $df, $90, $dd, $58, $ea, $da, $6d, $ff, $d8, $6f, $80, $d8, $40
    db $78, $20, $a4, $ef, $a0, $f4, $b0, $dc, $fe, $e0, $d8, $b0, $d8, $7b, $48, $ec
    db $fa, $e0, $d4, $60, $b4, $60, $b0, $a4, $fe, $a0, $85, $c0, $fc, $78, $3c, $3e
    db $c6, $c1, $7d, $f9, $90, $0b, $3b, $fc, $d0, $b7, $a4, $10, $4a, $cf, $48, $9f
    db $b0, $3f, $60, $29, $b0, $89, $05, $1e, $ff, $0b, $1d, $0d, $f9, $0d, $fb, $1b
    db $56, $ff, $52, $b6, $12, $f6, $0a, $af, $09, $eb, $fb, $49, $e9, $60, $47, $04
    db $c3, $3f, $3c, $c7, $03, $fb, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $02, $ff, $ff, $00, $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $15, $22, $ff, $e4, $99, $ff, $e4, $22, $fe, $e5, $ec, $e8, $e8, $e2, $c4, $ff
    db $e9, $d8, $e1, $29, $cd, $e3, $f8, $e0, $f6, $e0, $29, $99, $09, $11, $ff, $e4
    db $b0, $e2, $29, $e0, $e1, $fb, $e0, $d8, $e4, $ac, $e5, $e0, $ee, $e1, $d2, $e3
    db $c8, $e5, $a8, $e7, $9b, $e5, $99, $92, $92, $64, $70, $e6, $8c, $eb, $29, $c0
    db $e3, $50, $e5, $22, $92, $fe, $e0, $00, $42, $e4, $74, $e4, $40, $e5, $d6, $e3
    db $2e, $e2, $b3, $e3, $54, $e0, $60, $e5, $00, $e6, $e5, $18, $e1, $28, $ee, $fc
    db $fb, $46, $e4, $f0, $d0, $48, $e2, $6e, $e1, $20, $68, $e1, $c1, $c6, $bb, $f3
    db $64, $e4, $d0, $c5, $66, $ff, $e4, $80, $c5, $7f, $66, $6a, $6a, $aa, $6a, $a9
    db $aa, $f8, $e0, $bf, $66, $aa, $6a, $aa, $aa, $a9, $68, $c4, $aa, $cb, $aa, $66
    db $fe, $e1, $a6, $d1, $e3, $dc, $e0, $aa, $99, $47, $aa, $99, $a9, $fe, $e0, $f2
    db $e1, $d6, $e0, $a9, $fc, $e1, $0c, $fe, $e0, $c0, $e2, $aa, $a9, $e8, $e1, $f8
    db $e4, $b2, $e1, $f0, $e4, $dc, $a6, $e1, $b3, $e2, $99, $aa, $a9, $88, $e1, $aa
    db $a6, $00, $fe, $e0, $a8, $e0, $f4, $e2, $b0, $e0, $97, $e2, $9c, $e4, $a2, $e1
    db $70, $e2, $00, $d7, $e2, $81, $e0, $a8, $e5, $84, $e1, $69, $e0, $65, $e5, $80
    db $e2, $54, $e0, $08, $70, $e8, $d0, $e2, $b0, $a1, $9a, $c8, $e0, $b0, $ed, $d8
    db $a5, $d0, $a5, $00, $38, $e1, $fc, $ea, $18, $e2, $fa, $e7, $81, $e4, $5b, $e2
    db $b1, $e1, $f3, $c3, $0e, $f8, $e7, $00, $00, $00, $48, $e4, $b6, $c3, $a0, $ed
    db $68, $a2, $53, $19, $19, $60, $a1, $1d, $a3, $91, $fe, $e2, $11, $fe, $e1, $1d
    db $91, $e2, $e4, $11, $99, $19, $15, $a9, $60, $c3, $fe, $e5, $e0, $c7, $e4, $58
    db $c5, $ff, $ff, $fd, $fc, $ec, $c1, $a0, $a0, $00, $78, $fb, $e0, $45, $e0, $42
    db $e0, $09, $00, $99, $09, $83, $80, $f7, $00, $aa, $0a, $74, $c0, $a6, $66, $00
    db $0a, $f7, $0a, $aa, $0a, $6c, $c3, $aa, $6a, $a0, $6a, $1e, $dc, $e2, $aa, $00
    db $aa, $a0, $50, $c4, $0f, $e0, $fe, $e1, $08, $c0, $e0, $f0, $a4, $bb, $e2, $0a
    db $dd, $e0, $f8, $e4, $e0, $e3, $fa, $e7, $40, $c0, $e2, $d8, $c3, $f8, $e2, $aa
    db $a2, $85, $e4, $c8, $e0, $0a, $f6, $e4, $37, $00, $99, $90, $fe, $e0, $00, $99
    db $f1, $e5, $7d, $e0, $00, $82, $e0, $fe, $e0, $94, $e1, $d1, $e5, $b4, $e5, $29
    db $c1, $98, $d2, $ff, $ff, $0e, $61, $ce, $9a, $aa, $9a, $fd, $a2, $62, $a1, $1d
    db $a1, $29, $a0, $09, $9a, $fe, $e0, $28, $a0, $a6, $12, $a0, $0a, $a0, $e8, $e3
    db $f5, $80, $00, $d8, $e2, $ad, $a2, $eb, $81, $e5, $85, $70, $e2, $d6, $e1, $e5
    db $84, $d4, $a5, $00, $b9, $a5, $ff, $ed, $17, $ce, $0c, $e0, $fc, $e2, $7f, $86
    db $fe, $e3, $6c, $89, $58, $d9, $e2, $97, $a5, $d6, $ac, $90, $00, $fe, $e3, $99
    db $f8, $e2, $04, $2d, $c3, $f2, $e0, $90, $d4, $f1, $b8, $e5, $0a, $c1, $18, $e2
    db $8b, $45, $0f, $9a, $99, $aa, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ef, $ee, $00
    db $00, $00

    ld [de], a
    ld c, [hl]
    rst $10
    ld d, [hl]
    rst $10
    ld e, b
    push af
    nop
    rst $38
    db $f4
    ld [bc], a
    rst $20
    ldh [rTIMA], a
    ld bc, $1200
    rst $38
    ld e, a
    ccf
    ld d, l
    ccf
    ld e, e
    ccf
    ld l, a
    ld e, a
    rst $38
    dec [hl]
    rra
    jr c, jr_055_4e52

    rrca
    ld [$0000], sp
    rst $38
    ld sp, hl
    ld a, [$f9e7]
    call c, $b0e6
    reti


    rst $38
    and b
    sub h
    ld h, [hl]
    and d
    ld b, b
    and b
    ret z

    ld b, b
    rst $38
    db $fd
    cp $ab
    db $fd
    jp c, $f6fc

    ld a, [c]
    rst $38
    db $e4
    ld hl, sp-$68
    call nz, $9070
    ret nz

jr_055_4e52:
    ld b, b
    rst $38
    or $dc
    db $ec
    or b
    reti


    ld l, c
    or b
    ret c

    rst $38
    ld h, h
    or b
    ret nz

    add b
    ret nz

    ld d, b
    ld [$ff08], sp
    rst $38
    rst $38
    xor a
    rst $38
    db $dd
    rst $38
    ld hl, sp-$01
    rst $38
    rst $20
    ld hl, sp-$64
    db $e4
    ld [hl], e
    sbc d
    call nz, $ff60
    ld sp, hl
    cp $f7
    ld sp, hl
    call z, Call_000_30e5
    ret z

    rst $38
    ldh [$32], a
    adc b
    add b
    ld b, b
    ld [$0010], sp
    cp $c0
    ld [c], a
    ld hl, sp-$0a
    ld a, [$f8f4]
    call nc, $f7f0
    db $ec
    db $f4
    add sp, -$02
    ldh [$d9], a
    jp hl


    jp nc, $ffc8

    or b
    ret nc

    and h
    ret nz

    ld h, d
    and d
    ld c, b
    and b
    rst $38
    ret nz

    ld c, b
    ld c, a
    rla
    rla
    ld c, a
    rra
    cpl
    rst $38
    or l
    xor a
    dec hl
    rrca
    rst $28
    ld e, a
    ld e, l
    ccf
    ei
    ld a, a
    ccf
    ld d, b
    ldh [rDIV], a
    add hl, bc
    ld bc, $0201
    rst $38
    inc bc
    ld [bc], a
    ld a, [hl+]
    ld hl, $2502
    ld c, l
    dec bc
    rst $38
    db $fd
    cp a
    cp a
    ccf
    xor a
    ld l, a
    ld a, d
    ld a, a
    rst $38
    ld a, l
    rst $38
    cp $fe
    rst $10
    rst $38
    rst $28
    rst $38
    rst $38
    ld h, $da
    ld a, [bc]
    db $fd
    db $d3
    ld l, e
    cpl
    push bc
    rst $38
    ld d, $bf
    xor e
    adc $1f
    or a
    db $ed
    ld a, a
    rst $38
    ld [hl], d
    xor a
    xor l
    db $db
    ld l, a
    rst $30
    jp c, $ffff

    ld d, l
    rst $38
    xor d
    rst $38
    sbc e
    rst $30
    ld l, l
    rst $38
    cp $10
    db $ed
    ld a, [c]
    db $eb
    ldh [$d2], a
    pop de
    or b
    adc b
    rst $38
    ld c, h
    inc d
    db $10
    ld b, b
    ld b, b
    add b
    jr nz, jr_055_4f24

    rst $18
    nop
    db $eb
    pop af

jr_055_4f18:
    add sp, -$10
    ld h, e

jr_055_4f1b:
    ldh [$e6], a
    jp nz, $e7de

    ret nz

    jr nz, jr_055_4f53

    adc b

jr_055_4f24:
    nop
    ld b, b
    pop hl
    rst $18
    rst $38
    rst $38
    or $ff
    ld sp, hl
    db $fc
    or a
    ld sp, hl
    or $fa
    ei
    db $ec
    db $f4
    jr nc, jr_055_4f18

    ret c

    ei
    rst $30
    ld hl, sp-$54
    ld a, a
    rst $20
    ret nc

    db $e4
    ret nc

    add sp, -$30
    add sp, $20
    db $e3
    cp $ff
    pop hl
    sub $ff
    db $ed
    cp $fa
    db $fc
    sbc h
    rst $38
    db $f4
    ld a, c

jr_055_4f53:
    ret z

    ld h, h
    and b
    call nz, $e284
    rst $38
    ld [hl], b
    sub b
    and b
    nop
    nop
    ld h, b
    ld b, b
    ld a, [$fcff]
    and $fa
    dec e
    db $e4
    ldh a, [rNR23]
    ld [hl+], a
    rst $30
    ld h, $50
    ld b, b
    sub h
    pop bc
    ld [$ecf0], a
    ldh a, [rIE]
    add sp, -$1e
    call c, $d2ec
    ldh [$b0], a
    sub h
    ld l, a
    ld h, h
    and b
    ret nc

    ld b, b
    and b
    db $e3
    db $fc
    cp $e0
    ret nz

    rst $38
    call nz, $9072
    call nz, $f94c
    cp $c7
    rst $38
    reti


    inc a
    push bc
    db $e4
    jr nz, jr_055_4f1b

    add d
    db $10
    ei
    db $10
    jr nz, @-$30

    ldh [$c3], a
    jr nz, jr_055_4fdf

    ld b, d
    rst $30
    xor $7c
    ld [c], a
    db $fd
    rst $38
    rst $30
    sbc b
    ldh [$c3], a
    jr nz, jr_055_4fcc

    rst $38
    ld b, d
    nop
    nop
    ld de, $0001
    ld b, b
    inc b
    db $fd
    inc b
    ld b, h
    jp Jump_000_2022


    ld b, c
    dec b
    ld [$df00], sp
    rst $20
    jr nc, jr_055_5003

    add a
    jp $e078


    ret c

jr_055_4fcc:
    add sp, -$01
    cp c
    add sp, -$20
    ret z

    db $f4
    ret nc

    ldh a, [$d2]
    rst $38
    ldh a, [$e8]
    call nc, $d8e8
    add sp, -$80
    ld b, b

jr_055_4fdf:
    rst $28
    and d
    nop
    ret c

    adc b
    dec h
    ldh [$80], a
    ld b, b
    sub b
    rst $38
    ld h, b
    nop
    adc b
    ld b, b
    cp a
    ld a, a
    xor e
    ccf
    rst $30
    rst $30
    cp a
    ld a, a
    cp $e0
    ld [hl], a
    cp a
    ld l, l
    ccf
    rst $28
    cp a
    ld a, a
    rst $38
    nop
    cp $eb

jr_055_5003:
    ld [hl+], a
    rst $18
    nop
    rst $38
    xor a
    ld d, b
    jp c, $fd25

    ld b, d
    cp a
    ld [hl+], a
    rst $38
    db $fd
    adc b
    db $eb
    dec d
    rst $30
    push af
    inc bc
    and $ff
    ld c, $d8
    add hl, de
    pop hl
    daa
    and [hl]
    ld l, a
    ret z

    rst $38
    ld e, l
    ld c, h
    db $db
    sub b
    cp a

jr_055_5027:
    db $fd
    inc bc
    ld a, [$02ff]
    ld a, [$f406]
    dec b
    db $e4
    dec c
    reti


    cp a
    dec sp
    ld h, d
    rst $20
    add h
    sbc a
    jr z, @-$2e

    ldh [rP1], a
    rst $38
    jp c, $fd00

    inc b
    ei
    ld hl, $46ff
    rst $18
    and a

jr_055_5048:
    jr c, jr_055_5048

    ld c, a
    add sp, -$02
    pop hl
    sub a
    ret c

    rst $38
    sub a
    ret nc

    cpl
    or b
    ld e, a
    ld h, b
    sbc a
    ret nz

    cp $a0
    push hl
    cp $01
    pop af
    inc bc
    and $0f
    cp b
    rst $38
    ld a, [hl]
    ret z

    ld l, a
    jp z, $486d

    ld_long $ff90, a
    db $dd
    sub b
    rst $18
    jr z, jr_055_5027

    ld b, b
    ld l, e
    add b
    rst $10
    rst $30
    rst $38
    nop
    xor [hl]
    ldh [$03], a
    xor [hl]
    ldh [$0d], a
    ret


    rst $38
    dec de
    or d
    ld [hl], a
    call nz, $c96f
    dec c
    jp nc, $1bff

    jp nc, $e43b

    scf
    db $e4
    scf
    and [hl]
    cp a
    ld [hl], l
    ret z

    ld l, a
    ret z

    ld l, a
    ld sp, hl
    add b
    pop hl
    add hl, sp
    rst $38
    pop hl
    rst $20
    ld b, $1f
    add hl, de

jr_055_50a2:
    rst $38
    ld [c], a
    db $fd
    rst $38
    db $10
    ld a, [$00fb]
    rst $30
    rlca
    ret c

    rra
    rst $38

jr_055_50af:
    ldh [$78], a
    add a
    rst $20
    ld a, [de]
    sbc l
    ld h, b
    ld a, d
    di
    add b
    db $fd
    jp nc, $d0e0

    pop hl
    rst $30
    inc b
    rst $28
    jr jr_055_50a2

    dec e
    ldh [$ef], a
    nop
    rst $10
    ldh [$e0], a
    rrca
    ret c

    rst $38
    jr c, jr_055_50af

    scf
    and a
    ld l, a
    ret z

    ld e, a
    ret z

    rst $38
    ld e, d
    ret z

    ld e, l
    nop
    rst $38
    db $10
    ld_long a, $ff00
    xor l

Jump_055_50e0:
    nop
    rst $18
    db $e4

jr_055_50e3:
    rst $38
    jr jr_055_50e3

    inc b

jr_055_50e7:
    rst $30
    rra
    ld [c], a
    rst $20
    db $10
    push hl
    rst $28
    ldh a, [rNR31]
    db $fc
    rst $38
    dec b
    ld e, $e3

jr_055_50f5:
    and $4f
    add sp, -$71
    ret z

    cp a
    cpl
    sbc b
    rla
    jr c, jr_055_50e7

    ldh a, [$f6]
    jp $ffc8


jr_055_5105:
    ld l, a
    ld [$48cd], a
    sbc d
    db $10
    dec a
    ldh [rIE], a

jr_055_510e:
    rst $38
    jr nz, jr_055_510e

    ld [de], a
    db $eb
    nop
    rst $30
    sub e
    rst $18
    cp b
    cpl
    ld h, b
    ld e, a
    ret nz

    jr c, jr_055_5105

    ld [$ff9f], sp

jr_055_5121:
    jr nc, jr_055_51a2

    ld d, b
    ld l, d
    ld b, h
    db $fd
    add b
    rst $38
    rst $20
    jr z, jr_055_5121

    nop
    ldh [$e0], a
    ret nz

    jp Jump_000_01fc


    db $e3
    ld a, a
    rlca
    sbc h
    inc a
    ld h, b
    db $e3
    add e
    sbc a
    ld d, b

jr_055_513d:
    pop hl
    db $fd

jr_055_513f:
    sbc b
    ld d, b
    ld [c], a
    jr jr_055_513f

    ld [c], a
    push af
    nop
    rst $38
    rst $38
    cp $01
    rst $20
    rrca
    ret c

    ccf
    ld h, b
    ld hl, sp-$11
    add a
    rst $20
    jr jr_055_50f5

    ld d, b
    pop hl
    pop bc
    ld sp, hl
    ld b, $ff
    rst $00
    jr c, jr_055_5199

    ret nz

    db $dd
    inc b
    ei
    jr nz, jr_055_51e2

    db $fd
    ret nz

    push hl
    cp $01
    rst $38
    ld bc, $faf9

jr_055_516e:
    pop bc
    rst $38
    rlca
    db $f4
    ld b, $48
    rst $28
    sub b
    jp c, Jump_055_7f90

    db $dd
    inc h
    xor e
    jr nz, jr_055_513d

    ld d, b
    ld a, l
    ldh [$c3], a
    cp $5e
    jp $0fe7


    sbc b
    jr c, jr_055_51ea

    rst $20
    add a
    rst $38
    sbc a
    ld [$00ff], sp
    xor a
    jr nz, jr_055_516e

    ld b, b
    rst $18
    db $ed
    rlca
    rst $38

jr_055_5199:
    jr @-$06

    ldh a, [$e1]
    dec bc
    sbc h
    rst $30
    inc sp
    ld a, b

jr_055_51a2:
    ld b, a
    ld e, [hl]
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    cp $34
    pop bc
    sub b
    or a
    inc h
    ld l, a
    ld b, h
    ei
    add b
    cp a
    rst $38
    ld b, b
    cp a
    ld [bc], a
    ld e, e
    ld [hl+], a
    add b
    ldh [$a5], a
    rst $38
    ld e, d
    ld d, b
    xor l
    sbc d
    ld h, l
    dec h
    jp c, $ffaa

    dec d
    ld d, l
    xor d
    ld l, b
    db $d3
    sbc d
    ld h, l
    ld e, e
    or $70
    add b
    ld h, a
    rst $38
    ldh a, [$83]
    db $d3
    db $fd
    ld l, l
    rst $38
    rst $38
    ld c, b
    rst $08
    ld c, b
    rst $18
    sub h
    cp c
    sub b

jr_055_51e2:
    cp e
    rst $38
    sub b
    cp a
    ld d, b
    db $fd
    ld c, b
    rst $18

jr_055_51ea:
    ld c, d
    rst $08
    rst $38
    sub b
    sbc a
    sub b
    rst $18
    ld c, b
    ld [$6d4a], a
    rst $38
    ld c, b
    ld l, a
    ld d, b
    push af
    sub b
    rst $10
    sub d
    sub a
    rst $38
    ld c, e
    ret z

    ld c, e
    ret c

    sub a
    cp b
    sub a
    or b
    rst $38
    sub a
    or b
    ld d, a
    ret c

    ld c, e
    ret c

    ld c, e
    ret z

    rst $28
    sub a
    sub b
    sub a
    ret c

    inc e
    ret nz

    ld l, b
    ld c, a
    ld l, b
    cp a
    ld d, a
    ld hl, sp-$61
    ret nc

    sbc a
    sub b
    ret nz

    and e
    cp l
    rst $38
    ld a, [hl]
    jp Jump_000_00ff


    jp Jump_000_3c3c


    jp $f9fc


    ldh [rHDMA2], a
    ld [c], a
    db $76
    sbc c
    rst $38
    nop
    sbc c
    ld h, [hl]
    ei
    ld h, [hl]
    sbc c
    ld d, b
    ldh [rSC], a
    xor l
    ld [bc], a
    jp c, $f53c

    db $fd
    ldh [$e4], a
    ei
    ldh a, [$e0]
    xor a
    nop
    reti


    db $76
    db $fd
    rst $28
    ldh [$e4], a
    rst $18
    ld bc, $0603
    ld c, $1c
    rst $28
    add hl, sp
    ld sp, hl
    rst $20
    ld h, $d0
    call nz, Call_055_781b
    ld h, a
    di
    ldh [$df], a
    ld [hl], $e2
    ld h, [hl]
    and e
    ld d, b
    xor a
    dec h
    jp c, Jump_000_07ff

    cp b
    rlca
    db $fd
    and d
    ld e, a
    ldh [rNR22], a
    rst $38
    push hl
    cp d
    ld b, d
    db $fd
    db $fd
    db $fd
    rst $18
    rst $38
    ld a, l
    ei
    sub b
    add b
    ld a, l
    rst $38
    rst $28
    rst $28
    rst $38
    or $e0
    rst $18
    xor l
    rst $28
    db $76
    rst $38
    and $ee
    ldh [$e4], a
    db $eb
    rst $38
    ld [hl], h
    rst $30
    ld c, b
    rst $38
    add b
    cp e
    db $eb
    rst $38
    cp a
    ld a, h
    rst $38
    ld d, b
    rst $10
    xor h
    db $eb
    ld h, a
    pop hl
    ld b, b
    rst $38
    or l
    nop
    ei
    ld bc, $02ff
    rst $10
    db $10
    rst $38
    db $ed
    dec b
    rst $38
    inc bc
    rst $38
    ld a, [hl+]
    jp c, $ff08

    cp l
    dec d
    rst $38
    ld c, $ff
    ld b, l
    rst $30
    ld a, [bc]
    rst $38
    cp $25
    rst $28
    sbc e
    rst $30
    ld e, $ff
    db $76
    rst $38
    cp [hl]
    db $db
    rst $38
    cp $ff
    push af
    push af
    ld l, b
    rst $38
    rst $28
    call nc, $b8ff
    xor a
    ret nc

    jp c, $ffa5

    db $fd
    ld d, d
    rst $38
    ld [bc], a
    ei
    ld b, l
    xor a
    ld d, [hl]
    rst $38
    jp c, $fe22

    dec b
    rst $38
    ld h, $fd
    inc bc
    rst $38
    cp e
    ld bc, $b9fd
    ei
    ld [hl], h
    rst $10
    ld a, [hl+]
    rst $18
    db $ed
    ld [bc], a
    rst $38
    jr nz, @-$24

    cp d
    and c
    nop

jr_055_5300:
    ei
    rst $38

jr_055_5302:
    call c, $faff
    ei
    db $f4
    rst $38
    and $eb
    cp a
    db $f4
    rst $30
    ld l, b
    rst $38
    jp nc, Jump_000_01ff

    add b
    rst $38
    rst $38
    ld a, [$adfe]
    db $fd
    ld e, e
    rst $18
    adc b

jr_055_531c:
    push af
    ld sp, hl
    db $10
    or l
    add d
    ld d, [hl]
    ret nz

    jr jr_055_5300

    inc a
    and l
    ld a, [hl]
    cp a
    jp $c366


    ld h, [hl]

jr_055_532d:
    sbc c
    ld b, d
    and d
    add c
    or a
    rst $38
    ld a, b
    adc e
    inc a
    push bc
    ld c, $c5
    ld c, $8b
    rst $30
    inc a
    or a
    ld a, b
    sub d
    add c
    rst $18
    ld a, $e7
    ld a, [hl]
    rst $38
    inc bc
    adc $33
    add [hl]
    push af
    ld b, $e7
    inc c
    ei
    rst $20
    jr jr_055_53c8

    and b
    db $10
    rst $10
    jr c, jr_055_5302

    ld a, h
    rst $28
    rst $00
    ld l, h
    sub e
    ld b, h
    ld [hl], h
    add l
    rst $10
    jr c, jr_055_532d

    ld a, a
    inc e
    push hl
    ld c, $cb
    inc e
    rst $10
    jr c, jr_055_53cd

    add h
    rra
    inc a
    add a
    ld a, h

jr_055_5370:
    rst $30
    inc c
    cp $e0

jr_055_5374:
    inc bc
    ret nz

    ld b, h
    and d
    rst $38
    db $10
    rst $28
    jr jr_055_5374

    inc c
    rst $28
    jr jr_055_5370

    cp h
    adc l
    db $e3
    dec e
    and b
    rst $28
    jr c, jr_055_531c

    ld l, h
    ld [hl], $87
    rst $08
    rst $08
    inc a
    rst $38
    inc b
    ei
    cp $e0
    inc h
    add c
    ldh a, [rSB]
    ei
    rst $20
    rra
    add b
    and h
    sbc h
    ld h, b
    ld a, b
    add b
    ret c

    cp $80
    and b
    add $38
    inc a
    ret nz

    db $fc
    nop
    and h
    rst $38
    nop
    inc h
    nop
    jr jr_055_53b2

jr_055_53b2:
    jr jr_055_53bd

    dec e
    rst $38
    ld d, $1a
    ld d, $3f
    ld l, h
    ld [hl], l
    sbc h

jr_055_53bd:
    rst $20

jr_055_53be:
    rst $38
    ld a, d
    sbc l
    ld h, b
    ld l, a
    add b
    cp a
    add hl, bc
    dec e
    rst $38

jr_055_53c8:
    ld [de], a
    dec de
    inc de
    ld a, d
    ld h, l

jr_055_53cd:
    or $87
    db $e4
    rst $38
    dec de
    sbc b
    ld h, a
    ld [hl], b
    xor a
    ret nz

    ret nz

    rlca
    rst $38
    rst $00
    rra
    sbc b
    jr c, jr_055_53ff

    ld [hl], a
    daa
    ld l, a
    ld a, a
    ld c, e
    call c, $d84f
    ld c, a
    ret c

    di
    db $76
    and b
    ld a, $a0
    add h
    ld e, d
    ret z

    ld e, h
    ret z

    ld e, h
    cp h
    pop hl
    or [hl]
    ldh [$7f], a
    and h

jr_055_53fa:
    ldh [$fc], a
    jr jr_055_53fa

    inc b

jr_055_53ff:
    ld e, $a0
    add l
    rst $38
    rrca
    ret nz

    rst $20
    ld hl, sp+$18
    ld e, $06
    rst $20
    rst $28
    pop hl
    ld sp, hl
    sub b
    ret c

    cp $e0
    call c, $dc90
    rst $18
    and b
    db $f4
    jr nz, jr_055_53be

    ld b, b
    add b
    ldh [$97], a
    or b
    db $ed
    sbc a
    cp $e0
    xor a
    or b
    xor d
    add b
    ldh [$9f], a
    ret nz

    ei
    cp a
    add b
    ret nz

    db $e3
    ld bc, $0225
    daa
    ld [bc], a
    rst $18
    ld h, $0c
    rra
    ld de, $b01b
    db $e4
    inc h
    ld bc, $27ff
    ld [bc], a
    daa
    inc b
    ld e, $09
    dec e
    ld c, b
    rst $18
    call z, $d848
    sub b
    cp b
    cp $e1
    ld d, b
    ld hl, sp-$01
    ld c, b
    ret c

    ld c, b
    call z, $b890
    adc b
    add sp, -$51
    ld c, b
    db $ec
    ld c, b
    ld l, h
    cp $e0
    db $ec
    and h
    ldh [$98], a
    ld l, $80
    ld [c], a
    inc a
    inc a
    rst $38
    add b
    and b
    db $e3
    and b

jr_055_546f:
    and c
    ld [hl], b
    ld [c], a
    ld d, a
    ld h, [hl]
    ld h, [hl]
    rst $38
    add b
    and l
    ldh [rLCDC], a
    pop hl
    ld a, a
    nop
    rst $20
    inc e
    sub b
    push hl
    adc [hl]
    ld [c], a
    dec de
    inc b
    ld e, $90
    push hl
    db $fc
    ld [c], a
    ldh a, [$c1]
    ld a, a
    db $ed
    ld [de], a
    ei
    ld [de], a
    jp c, $f62c

    cp $e0
    push af
    or h
    sbc b
    ldh [$ec], a
    ldh [$e6], a
    dec h
    ld bc, $0627
    rst $28
    rra
    ld [$e91e], sp
    ld h, b
    ld h, c
    ld a, [hl-]
    db $e4
    ld [hl], $7f
    db $e4
    ld [hl], $a4
    ld [hl], h
    ret z

    ld l, h
    ret z

    ld a, d
    db $e3
    rst $38
    call nc, $b420
    jr nz, jr_055_546f

    ld b, b
    ld h, h
    ld b, b
    rst $38
    ld e, b
    add b
    ret c

    ret z

    ld l, b
    add sp, -$38
    ld c, b
    rra
    sbc h
    db $10
    inc [hl]
    ldh [$e4], a
    and b
    jp $4ca1


    ld [hl], b
    add h
    ld [hl], l
    and l
    ld [hl], b
    add e
    sub e
    or $e0
    ld e, d
    ld e, b
    or l
    ld h, b
    add [hl]
    adc [hl]
    ldh a, [$e0]
    ld e, e
    rst $38
    xor l
    ld h, b
    add [hl]
    ld d, b
    ld hl, $e5f0
    ld d, a
    cp a
    db $fd
    xor d
    rst $38
    sub e
    rst $38
    ld l, l
    ld a, b
    and b
    sub h
    rst $38
    ld l, l
    add hl, hl
    ld [c], a
    ld h, h
    sub e
    ld a, [de]
    xor l
    dec h
    rst $38
    ld c, d
    ld h, h
    sub e
    ld d, d
    ld l, l
    inc b
    ld_long a, $ff48
    cp l
    ld a, [bc]
    push de
    dec d
    ld [hl], d
    ld d, d
    xor a
    dec c
    cp a
    jp c, $9364

    ld e, d
    ld h, l
    ld b, $00
    inc l
    dec d
    rst $38
    xor $01
    cp e
    xor d
    ld a, l
    dec a
    rst $10
    adc e
    rst $38
    ld a, l
    ld d, [hl]
    rst $38
    dec sp

jr_055_5529:
    xor a
    db $dd
    ld a, a
    call c, $b6fe
    ldh [$a9], a
    rst $30
    sbc a
    ei
    ld h, [hl]
    cp a
    rst $38
    rst $38
    ld e, e
    ld a, [hl+]
    rst $38
    ld e, l
    or a
    add b
    cp a
    ld b, b
    rst $38
    rst $38
    ld h, b
    rst $18
    jr nz, @+$01

    and b
    cp a
    jr nz, jr_055_5529

    ld l, a
    db $10
    rst $30
    ld d, b
    rst $30
    ldh a, [$e3]
    and b
    ld a, a
    rst $28
    and b
    ld l, a
    ret nc

    scf
    cp $e1
    db $10
    rst $30
    ld [$dbff], sp
    ld [$44fb], sp
    rst $38
    and h
    cp l
    ld c, $ff
    ld e, e
    ld [bc], a
    or $41
    rst $38
    cp a
    ret nz

    ld e, a
    rst $38
    ld h, b
    ld e, a
    ld h, b
    cpl
    or b
    cpl
    or b
    rla
    ld sp, hl
    ret c

    cp $e1
    ret nc

    ldh [$df], a
    or b
    ld l, a
    ldh [$2f], a
    rst $38
    call nc, $ec33
    dec e
    ld a, [c]
    ld c, $fd
    inc bc
    ei
    add b
    cp a
    or d
    pop hl
    jr nz, @-$0f

    db $10
    or e
    inc c

jr_055_5596:
    di
    db $ed
    ld [hl+], a
    daa
    ld h, b
    inc bc
    ld b, l
    ld c, $ce
    ld [hl-], a
    cp a
    push af
    ld d, b
    db $10
    ld b, b
    ld bc, $6000
    inc a
    ld a, [hl-]
    push hl
    db $dd
    push hl
    ld [bc], a
    jr c, jr_055_5610

    ld d, b
    adc b
    ldh [$e3], a
    inc h
    ld sp, hl
    ld c, $ef
    rst $38
    ld sp, $4fbe
    ld [hl], b
    cp a
    ret nz

    ld bc, $7ffd
    ld b, $e7
    add hl, sp
    ld a, $c7
    ld hl, sp+$3f

jr_055_55c9:
    add $24
    ld e, $61
    jr nz, jr_055_5596

    jr c, jr_055_5609

    rst $00
    and d
    ld h, b
    ld d, [hl]
    inc hl
    ld l, d
    pop hl
    set 5, b
    dec de
    cp $e2
    rra
    ld e, [hl]
    pop hl
    ld b, c
    daa
    jr nz, @-$3b

    cp a
    inc e
    inc e
    db $e3
    db $e3
    add b
    cp a
    push af
    ld b, b
    rst $38
    cp a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    add b
    cp a
    cp $e1
    db $e3
    rst $08
    jp $bf3e


    ld [hl], b
    jr nc, jr_055_561f

    sub b
    ldh [rIE], a
    ld [$ebff], sp

jr_055_5605:
    inc d
    rst $30
    add b
    rst $38

jr_055_5609:
    sub b
    xor a
    ld d, b
    rst $38
    ld e, d
    ld h, l
    db $fd

jr_055_5610:
    ld b, d
    rst $38
    ld b, b
    rst $38
    ret z

    scf
    xor e
    sub h
    rst $30
    and b
    and c
    ret nc

    cp b
    cp $e1

jr_055_561f:
    and b
    and e
    ld a, $f0
    ld b, c
    call nc, $d0b9
    cp e
    ret nc

    ldh a, [rLY]
    nop
    ld h, c
    daa
    rst $10
    cp b
    rst $10
    nop
    ld h, [hl]
    db $10
    ld h, a
    inc a
    db $10
    ld h, d
    jr nz, jr_055_56a1

    and b
    ldh a, [$e2]
    add b
    and e
    ld [hl], b
    and d
    ldh a, [$e4]
    add b
    jr z, @-$1a

    add b
    jr nz, jr_055_55c9

    rst $38
    rst $30
    ld b, b
    ld l, e
    jr z, @-$49

    sub b
    rst $18
    sub b
    rst $38
    db $dd
    ld e, b
    ld [$6dda], a
    ret c

    ld l, a
    add b
    rst $38
    ret c

    ld b, b
    ld a, b
    jr nz, jr_055_5605

    and b
    db $f4
    or b
    ld a, l
    call c, $e0fe
    ret c

    or b
    ret c

    ld c, b
    db $ec
    ld a, [$cfe0]
    call nc, $b460
    ld h, b
    or b
    and h
    and b
    add l
    ret nz

    db $fc
    cp a
    ld a, b
    inc a
    ld a, $c6
    pop bc
    ld sp, hl
    sub b
    dec bc
    dec sp
    rst $28
    db $fc
    ret nc

    or a
    and h
    db $10
    ld c, d
    ld c, b
    sbc a
    or b
    ld sp, hl
    ccf
    ld h, b
    add hl, hl
    or b
    adc c
    dec b
    ld e, $0b
    dec e
    dec c
    rst $38
    ld sp, hl
    dec c
    ei
    dec de
    ld d, [hl]
    ld d, d
    or [hl]

jr_055_56a1:
    ld [de], a
    ld a, a
    or $0a
    xor a
    add hl, bc
    db $eb
    ld c, c
    jp hl


    ld h, b
    ld b, a
    ld a, a
    inc b
    jp Jump_000_3c3f


    rst $00
    ei
    nop
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
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc sp
    rst $38
    db $ec
    add hl, sp
    sbc c
    cp $e1
    inc sp
    inc sp
    sbc c
    ccf
    sbc c
    sbc c
    sub e
    sbc c
    inc sp
    sub e
    ld hl, sp-$19
    ld a, [c]
    ld [c], a
    add b
    add sp, -$1e
    and $e2
    ldh [$e0], a
    push bc
    ld [c], a
    jp c, $f2e0

    pop hl
    cp $e0
    sub e
    ld b, b
    ldh [$e2], a
    push af
    ld [c], a
    cp [hl]
    ld [c], a
    or e
    pop hl
    or c
    ldh [rIE], a
    db $e4
    ld de, $ecff
    ld bc, $ffff
    db $e4
    xor d
    db $e3
    ret


    db $e3
    or b
    ld [c], a
    and b
    rst $20
    ld hl, sp-$19
    ld [hl], h
    pop hl
    nop
    add b
    push hl
    ld l, d
    ldh [$99], a
    push hl
    adc [hl]
    pop hl
    ld [hl], b
    ld [c], a
    ld e, b
    ld [c], a
    cp b
    db $e4
    adc a
    db $e4
    jr nz, jr_055_5958

    jp hl


    call c, Call_055_5ae3
    db $e3
    db $ec
    ld [$e01b], a
    ld h, [hl]
    rst $38
    db $e4
    ldh a, [$e6]
    ccf
    ld l, d
    ld l, d
    xor d
    ld l, d
    xor c
    xor d
    ld hl, sp-$20
    cp $e0
    ld [hl], a
    xor d
    xor d
    xor c
    ld b, b
    db $e4
    xor d
    xor d
    ld h, [hl]
    cp $e1
    ld sp, hl
    and [hl]
    pop de
    db $e3

jr_055_5958:
    call c, $aae0
    sbc c
    xor d
    sbc c
    xor c
    inc b
    cp $e0
    ld a, [c]
    pop hl
    ld h, [hl]
    adc $e0
    db $fc
    pop hl
    cp $e0
    ret nz

    ld [c], a
    and $e1
    ret nz

    db $db
    ldh [$f8], a
    db $e3
    or d
    ld [c], a
    ldh a, [$e3]
    and [hl]
    pop hl
    or e
    ld [c], a
    sbc c
    xor d
    add hl, bc
    xor c
    adc b
    pop hl
    xor h
    ldh [$a6], a
    xor b
    pop hl
    db $f4
    ld [c], a
    or b
    ldh [$97], a
    ld [c], a
    adc b
    sbc h
    db $e4
    and d
    pop hl
    ld h, b
    and $aa
    add c
    ldh [$a8], a
    push hl
    add h
    pop hl
    xor c
    ld bc, $6fa9
    ldh [$e0], a
    add sp, $54
    ldh [rSVBK], a
    db $e3
    ret nc

    rst $20
    ld c, d
    db $e4
    ld c, b
    ldh [rP1], a
    or b
    db $eb
    ld a, b
    call $e138
    db $fc
    ld [$e218], a
    ld a, [$81e7]
    db $e4
    ld e, e
    ld [c], a
    ld [$e1b1], sp
    xor c
    push hl
    and c
    push hl
    nop
    rst $38
    pop hl
    ld c, b
    ld [c], a
    or [hl]
    jp $cd18


    and [hl]
    ld [$19c2], sp
    add hl, de
    nop
    pop bc
    push af
    and e
    sub c
    cp $e0
    ld de, $fe72
    db $e3
    sub c
    cp $e0
    ld [c], a
    pop hl
    ld de, $1999
    reti


    and l
    add b
    ld hl, sp-$1a
    db $dd
    db $e4
    ret z

    and d
    ld e, b
    ret


    rst $38
    rst $38
    db $fd
    db $fc
    ld a, d
    ret nz

    xor d
    rst $20

jr_055_59f8:
    and b
    and b
    nop
    ei
    ldh [rLYC], a
    ld [c], a
    nop
    add hl, bc
    nop
    cp e
    sbc c
    add hl, bc
    inc de
    and b
    nop
    xor d
    ld a, [bc]
    ld [hl], h
    ret nz

    and [hl]
    ld c, a
    ld h, [hl]
    nop
    ld a, [bc]
    ld a, [bc]
    or $e2
    sub $e3
    ld l, d
    db $db
    ld [c], a
    ld [hl], c
    xor d
    jp nc, Jump_055_50e0

    call nz, $e00f
    xor d
    nop
    and b
    cp $e0
    ld [$a3f2], sp
    ret nc

    ldh [rIE], a
    pop bc
    ld a, [bc]
    db $dd
    ldh [$f8], a
    db $e4
    ldh [$e1], a
    db $fc
    jp hl


    jr nz, jr_055_59f8

    ld [c], a
    ret c

    call nz, $c271
    add b
    db $e4
    ret z

    db $e4
    ld a, [bc]
    ld a, e
    db $e3
    cp l
    ret nz

    xor l
    sub b
    cp $e0
    nop
    sbc c
    pop af
    push hl
    nop
    xor h
    and b
    and b
    nop
    cp $e1
    rst $28
    and $d7
    db $e4
    dec l
    pop bc
    add hl, hl
    pop bc
    sbc b
    jp nc, $ffff

    ld h, c
    adc $17
    xor d
    xor d
    sbc d
    db $fd
    and d
    xor d
    ld h, d
    and c
    ld e, [hl]
    and b
    pop af
    and d
    rrca
    sbc d
    sbc c
    sbc d
    and [hl]
    ld hl, sp-$5b
    ld c, d
    and b
    dec b
    and b
    rrca
    and b
    jp nz, $e2d8

    sbc d
    add b
    ld [c], a
    rst $28
    add c
    ld a, h
    and b
    sbc l
    and l
    xor d
    and [hl]
    nop
    jp nc, $dde0

    and e
    call nc, $c1a6
    and $fe
    db $ec
    rla
    adc $0c
    ldh [$fc], a
    ld [c], a
    ret nz

    ld l, a
    add [hl]
    cp $e3
    ld l, h
    adc c
    reti


    ld [c], a
    sbc c
    and e
    ret c

    xor [hl]
    sub b
    nop
    ld [hl+], a
    cp $e3
    sbc c
    ld hl, sp-$1e
    dec l
    jp $e0f2


    sub b
    call nc, $b8f1
    push hl
    jr c, jr_055_5ac6

    pop bc
    ld a, [de]
    ld [c], a
    ld h, e
    ld h, l
    sbc d
    sbc c
    xor d
    ld [hl], b
    ld h, l

jr_055_5ac6:
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ldh [$5a], a
    ldh a, [$5f]
    ldh a, [$61]
    ei
    rst $38
    nop

Call_055_5ae3:
    cp $eb
    ld [hl+], a
    rst $18
    nop
    xor a
    ld d, b
    rst $38
    jp c, $fd25

    ld b, d
    cp a
    ld [hl+], a
    db $fd
    adc b
    rst $38
    db $eb
    dec d
    rst $30
    push af
    inc bc
    and $0e
    ret c

    rst $38
    add hl, de
    pop hl
    daa
    and [hl]
    ld l, a
    ret z

    ld e, l
    ld c, h
    rst $38
    db $db
    sub b
    cp a

jr_055_5b09:
    db $fd
    inc bc
    ld a, [$fa02]
    rst $38
    ld b, $f4
    dec b
    db $e4
    dec c
    reti


    dec sp
    ld h, d
    rst $28
    rst $20
    add h
    sbc a
    jr z, @-$2e

    ldh [rP1], a
    jp c, $ff00

jr_055_5b22:
    db $fd
    inc b
    ei
    ld hl, $46ff
    and a
    jr c, jr_055_5b22

    cp $4f
    add sp, -$02
    pop hl
    sub a
    ret c

    sub a
    ret nc

    cp a
    cpl
    or b
    ld e, a
    ld h, b
    sbc a
    ret nz

    and b
    push hl
    cp $ff
    ld bc, $03f1
    and $0f
    cp b
    ld a, [hl]
    ret z

    rst $38
    ld l, a
    jp z, $486d

    ld [$dd90], a
    sub b
    rst $38
    rst $18
    jr z, jr_055_5b09

    ld b, b
    ld l, e
    add b
    rst $30
    rst $38
    push af
    nop
    xor [hl]
    ldh [$03], a
    xor [hl]
    ldh [$0d], a
    ret


    dec de
    or d
    rst $38
    ld [hl], a
    call nz, $c96f
    dec c
    jp nc, $d21b

    rst $38
    dec sp
    db $e4
    scf
    db $e4
    scf
    and [hl]
    ld [hl], l
    ret z

    rst $28
    ld l, a
    ret z

    ld l, a
    ld sp, hl
    add b
    pop hl
    add hl, sp
    pop hl
    rst $20
    rst $38
    ld b, $1f
    add hl, de
    rst $38
    ld [c], a
    db $fd
    db $10
    ld a, [$fbff]
    nop
    rst $30
    rlca
    ret c

    rra

jr_055_5b90:
    ldh [$78], a
    rst $38
    add a
    rst $20
    ld a, [de]
    sbc l
    ld h, b
    ld a, d
    add b
    db $fd
    db $fc
    jp nc, $d0e0

    pop hl
    rst $30
    inc b
    rst $28
    jr jr_055_5bc2

    ldh [$f7], a
    rst $28
    nop
    rst $10
    ldh [$e0], a
    rrca
    ret c

    jr c, jr_055_5b90

    rst $38
    scf
    and a
    ld l, a
    ret z

    ld e, a
    ret z

    ld e, d
    ret z

    rst $38
    ld e, l
    nop
    rst $38
    db $10
    ld a, [$ad00]
    nop

jr_055_5bc2:
    rst $38
    rst $18
    db $e4

jr_055_5bc5:
    rst $38
    jr jr_055_5bc5

    inc b

jr_055_5bc9:
    rra
    ld [c], a
    db $fd
    rst $20
    db $10
    push hl
    rst $28
    ldh a, [rNR31]
    db $fc
    dec b
    ld e, $ff
    db $e3

jr_055_5bd7:
    and $4f
    add sp, -$71
    ret z

    cpl
    sbc b
    rst $28
    rla
    jr c, jr_055_5bc9

    ldh a, [$f6]
    jp Jump_055_6fc8


jr_055_5be7:
    ld [$cdff], a
    ld c, b
    sbc d
    db $10
    dec a
    ldh [rIE], a
    jr nz, @+$01

    db $fd
    ld [de], a
    db $eb
    nop
    rst $30
    sub e
    cp b
    cpl
    rst $30
    ld h, b
    ld e, a
    ret nz

    jr c, jr_055_5be7

    ld [$309f], sp
    ld a, a
    rst $38
    ld d, b
    ld l, d
    ld b, h
    db $fd
    add b
    rst $38
    jr z, @-$09

    ld sp, hl
    nop
    ldh [$e0], a
    ret nz

    jp Jump_000_01fc


    db $e3
    rlca
    sbc h
    ld e, a
    inc a
    ld h, b
    db $e3
    add e
    sbc a
    ld d, b

jr_055_5c1f:
    pop hl
    sbc b

jr_055_5c21:
    ld d, b
    ld [c], a
    rst $38
    jr jr_055_5c21

    ld [c], a
    push af
    nop
    rst $38
    cp $01
    rst $38
    rst $20
    rrca
    ret c

    ccf
    ld h, b
    ld hl, sp-$79
    rst $20
    ei
    jr jr_055_5bd7

    ld d, b
    pop hl
    pop bc
    ld sp, hl
    ld b, $c7
    jr c, jr_055_5cbf

    ld a, [hl-]
    ret nz

    db $dd
    inc b

jr_055_5c44:
    ei
    jr nz, jr_055_5c44

    ret nz

    push hl
    rst $18
    cp $01
    rst $38
    ld bc, $faf9

jr_055_5c50:
    pop bc
    rlca
    db $f4
    rst $38
    ld b, $48
    rst $28
    sub b
    jp c, $dd90

    inc h
    sbc a
    xor e
    jr nz, jr_055_5c1f

    ld d, b
    ld a, l
    ldh [$c3], a
    ld e, [hl]
    jp $ffe7


    rrca
    sbc b
    jr c, jr_055_5ccc

    rst $20
    add a
    sbc a
    ld [$ffff], sp
    nop
    xor a
    jr nz, jr_055_5c50

    ld b, b
    db $ed
    rlca
    rst $30
    rst $38
    jr @-$06

    ldh a, [$e1]
    dec bc
    sbc h
    inc sp
    ld a, b
    cp l
    ld b, a
    ld e, [hl]
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    inc [hl]
    pop bc
    sub b
    rst $38
    or a
    inc h
    ld l, a
    ld b, h
    ei
    add b
    rst $38
    ld b, b
    rst $28
    cp a
    ld [bc], a
    ld e, e
    ld [hl+], a
    add b
    ldh [rOBP0], a
    rst $08
    ld c, b
    rst $38
    rst $18
    sub h
    cp c
    sub b
    cp e
    sub b
    cp a
    ld d, b
    rst $38
    db $fd
    ld c, b
    rst $18
    ld c, d
    rst $08
    sub b
    sbc a
    sub b
    rst $38
    rst $18
    ld c, b
    ld [$6d4a], a
    ld c, b
    ld l, a
    ld d, b
    rst $38
    push af
    sub b

jr_055_5cbf:
    rst $10
    sub d
    sub a
    ld c, e
    ret z

    ld c, e
    rst $38
    ret c

    sub a
    cp b
    sub a
    or b
    sub a

jr_055_5ccc:
    or b
    ld d, a
    rst $38
    ret c

    ld c, e
    ret c

    ld c, e
    ret z

    sub a
    sub b
    sub a
    db $fd
    ret c

    inc a
    ret nz

    ld l, b
    ld c, a
    ld l, b
    ld d, a
    ld hl, sp-$61
    rst $30
    ret nc

    sbc a
    sub b
    ldh [$a3], a
    cp l
    ld a, [hl]
    jp $9fff


    nop
    jp Jump_000_3c3c


    jp $e0f9


    ld [hl], d
    ld [c], a
    db $76
    ld a, a
    sbc c
    rst $38
    nop
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c

Call_055_5cfe:
    ld [hl], b
    ldh [$bf], a
    ld [bc], a
    xor l
    ld [bc], a
    jp c, $fd3c

    ldh [$e4], a
    ei
    cp [hl]
    ldh a, [$e0]
    xor a
    nop
    reti


    db $76
    rst $28
    ldh [$e4], a
    rst $18
    rst $18
    ld bc, $0603
    ld c, $18
    ldh a, [$c8]
    dec de
    ld a, b
    rst $20
    ld h, a
    ldh [$df], a
    ld d, [hl]
    ld [c], a
    add [hl]
    and e
    ld d, b
    xor a
    dec h
    rst $38
    jp c, $b807

    rlca
    db $fd
    and d
    ld e, a
    ldh [rIE], a
    rla
    push hl
    cp d
    ld b, d
    db $fd
    db $fd
    db $fd
    rst $18
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    ei
    rst $28
    rst $38
    or $e0
    xor l
    rst $28
    db $76
    rst $38
    and $fe
    xor $e0
    db $e4
    db $eb
    ld [hl], h
    rst $30
    ld c, b
    rst $38
    add b
    rst $38
    cp e
    db $eb
    rst $38
    ld a, h
    rst $38
    ld d, b
    rst $10
    xor h
    db $fd
    db $eb
    ld h, a
    pop hl
    ld b, b
    or l
    nop
    ei
    ld bc, $ffff
    ld [bc], a
    rst $10
    db $10
    db $ed
    dec b
    rst $38
    inc bc
    rst $38
    rst $38
    ld a, [hl+]
    jp c, $bd08

    dec d
    rst $38
    ld c, $ff
    rst $38
    ld b, l
    rst $30
    ld a, [bc]
    cp $25
    rst $28
    sbc e
    rst $30
    rst $38
    ld e, $ff
    db $76
    cp [hl]
    db $db
    rst $38
    cp $ff
    rst $38
    push af
    push af
    ld l, b
    rst $28
    call nc, $b8ff
    xor a
    rst $38
    ret nc

    jp c, $fda5

    ld d, d
    rst $38
    ld [bc], a
    ei
    rst $38
    ld b, l
    xor a
    ld d, [hl]
    jp c, $fe22

    dec b
    rst $38
    rst $38
    ld h, $fd

jr_055_5dae:
    inc bc
    cp e
    ld bc, $b9fd
    ei
    rst $38
    ld [hl], h
    rst $10
    ld a, [hl+]
    db $ed
    ld [bc], a
    rst $38
    jr nz, @-$24

    cp $da
    and c

jr_055_5dc0:
    nop
    ei
    call c, $faff
    ei
    db $f4
    rst $38
    rst $38
    and $eb
    db $f4
    rst $30
    ld l, b
    rst $38
    jp nc, $fffb

    add sp, $76
    ldh [$fa], a
    cp $ad
    db $fd
    ld e, e
    rst $08
    rst $18

jr_055_5ddc:
    adc b
    push af
    db $10
    push de
    add d
    db $76
    ret nz

    jr jr_055_5dc0

    rst $38
    inc a
    and l
    ld a, [hl]
    jp $c366


    ld h, [hl]
    sbc c

jr_055_5dee:
    db $fd
    ld b, d
    jp nz, $b781

    ld a, b
    adc e
    inc a
    push bc
    ld c, $bf
    push bc
    ld c, $8b
    inc a
    or a
    ld a, b
    or d
    add c
    rst $18
    rst $38
    ld a, $e7
    ld a, [hl]
    inc bc
    adc $33
    add [hl]
    push af
    rst $18
    ld b, $e7
    inc c
    rst $20
    jr @-$68

    and b
    db $10
    rst $10
    ld a, a
    jr c, @-$53

    ld a, h
    rst $00
    ld l, h
    sub e
    ld b, h
    sub h
    add l
    rst $38
    rst $10
    jr c, jr_055_5dee

    inc e
    push hl
    ld c, $cb
    inc e
    ei
    rst $10
    jr c, jr_055_5dae

    add h
    inc a
    add a
    ld a, h
    rst $30

jr_055_5e31:
    inc c
    ld hl, sp-$02

jr_055_5e34:
    ldh [rNR44], a
    ret nz

    ld h, h
    and d
    db $10
    rst $28
    jr jr_055_5e34

    inc c
    rst $20
    rst $28
    jr jr_055_5e31

    adc l
    db $e3
    dec a
    and b
    rst $28
    jr c, jr_055_5ddc

    ld a, l
    ld l, h
    ld d, [hl]
    add a
    rst $08
    inc a
    rst $38
    inc b
    ei
    cp $e0
    db $fc
    ld b, h
    add c
    ld b, c
    adc h
    rst $38
    add b
    cp a
    ld b, b
    rst $38
    ld h, b
    rst $38
    rst $18
    jr nz, @+$01

    and b
    cp a
    jr nz, @+$71

    db $10
    rst $30
    rst $30
    ld d, b
    rst $30
    ldh a, [$e3]
    and b
    ld a, a
    and b
    ld l, a
    ei
    ret nc

    scf
    cp $e1
    db $10
    rst $30
    ld [$08db], sp
    rst $38
    ei
    ld b, h
    rst $38
    and h
    cp l
    ld c, $5b
    ld [bc], a
    rst $38
    or $41
    rst $38
    cp a
    ret nz

    ld e, a
    ld h, b
    ld e, a
    ld a, a
    ld h, b
    cpl
    or b
    cpl
    or b
    rla
    ret c

    cp $e1
    cp $c0
    ldh [$df], a
    or b
    ld l, a
    ldh [$2f], a
    call nc, $ff33
    db $ec
    dec e
    ld a, [c]
    ld c, $fd
    inc bc
    add b
    cp a
    cp $b2
    pop hl
    jr nz, @-$0f

    db $10
    or e
    inc c
    db $ed
    ld [hl+], a
    ld a, h
    ld d, a
    and b
    inc sp
    add l
    ld c, $ce
    ld [hl-], a
    cp a
    ld d, b
    ld b, b
    add b
    ld a, l
    ld bc, $a030
    inc a
    ld a, [hl-]
    push hl
    db $dd
    ld [bc], a
    ld l, b
    and b
    ld sp, hl
    ld d, b
    adc b
    ldh [rNR13], a
    add h
    ld sp, hl
    ld c, $ef
    ld sp, $ffbe
    ld c, a
    ld [hl], b
    cp a
    ret nz

    ld bc, $06fd
    rst $20
    sbc a
    add hl, sp
    ld a, $c7
    ld hl, sp+$3f
    or $64
    sub c
    ld h, b
    rst $00
    rst $00
    jr c, jr_055_5f26

    rst $00
    or d
    and b
    add [hl]
    ld h, e
    ld l, d
    pop hl
    add sp, $1b
    ld a, [c]
    cp $e2
    rra
    ld e, [hl]
    pop hl
    ld [hl], c
    ld h, a
    jr nz, @-$3b

    inc e
    inc e
    rst $28
    db $e3
    db $e3
    add b
    cp a
    dec h
    and b
    rst $38
    ld b, b
    ld e, a
    rst $28
    ld b, b
    ld e, a
    add b
    cp a
    cp $e1
    db $e3
    jp $f33e


    cp a
    ld [hl], b
    ld h, b
    ld h, b
    sub b
    ldh [rIE], a
    ld [$14eb], sp
    rst $38
    rst $30
    add b
    rst $38

jr_055_5f26:
    sub b
    xor a
    ld d, b
    ld e, d
    ld h, l
    rst $38
    db $fd
    ld b, d
    rst $38
    ld b, b
    rst $38
    ret z

    xor e
    sub h
    rst $38
    rst $30
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ld a, a
    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    add c
    rst $38
    ld hl, sp+$07
    db $e4
    rra
    call nz, $c43f
    ccf
    db $fd
    cp h
    ldh a, [$e2]
    ld a, a
    add b
    rra
    ldh [rTAC], a
    db $fc
    sbc $fe
    pop hl
    dec a
    cp $01
    cp $ce
    jp nz, $847f

    db $fd
    ld a, a
    ldh [$e1], a
    db $fc
    ccf
    ld hl, sp+$07
    cp $01
    cp a
    nop
    rst $38
    ld bc, $05fe
    cp $de
    pop hl
    ccf
    rlca
    db $fc
    rra
    ldh [$ac], a
    add b
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
    rst $30
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_055_60e0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push af
    ld h, [hl]
    rst $38
    db $e4
    sbc c
    rst $38
    db $e4
    ld h, [hl]
    ld l, d
    ld l, d
    xor d
    rst $30
    ld l, d
    xor c
    xor d
    ld hl, sp-$20
    ld h, [hl]
    xor d
    ld l, d
    xor d
    cp e
    xor d
    xor c
    add sp, -$1c
    xor d
    xor d
    ld h, [hl]
    cp $e1
    and [hl]
    ld a, h
    pop de
    db $e3
    call c, $aae0
    sbc c
    xor d
    sbc c
    xor c
    cp $e0
    call nz, $e1f2
    sub $e0
    xor c
    db $fc
    pop hl
    cp $e0
    ret nz

    ld [c], a
    xor d
    xor a
    inc bc
    xor a
    rst $38
    db $db
    ldh [$c2], a
    ldh [$e0], a
    ldh [$b2], a
    pop hl
    ld hl, sp-$1f
    ldh a, [$e0]
    ld a, [hl-]
    and [hl]
    ldh [$af], a
    or e
    ld [c], a
    sbc c
    xor d
    xor c
    adc b
    pop hl
    xor h
    ldh [rSB], a
    and [hl]
    xor b
    pop hl
    db $f4
    ld [c], a
    or b
    ldh [$97], a
    ld [c], a
    sbc h
    db $e4
    and d
    pop hl
    ld [hl], b
    ld [c], a
    nop
    rst $10
    ld [c], a
    add c
    ldh [$8c], a
    pop hl
    or b
    pop hl
    add h
    pop hl
    ld l, c
    ldh [$65], a
    push hl
    add b
    ld [c], a
    db $10
    ld d, h
    ldh [rSVBK], a
    add sp, -$7a
    pop hl
    or e
    ld [c], a
    sbc d
    ret z

    ldh [$b0], a
    db $ed
    ld c, b
    pop hl
    nop
    db $fc
    ld [$e228], a
    ld a, [$91e7]
    db $e4
    ld l, e
    ld [c], a
    pop bc
    pop hl
    inc bc
    db $e3
    ld hl, sp-$19
    and a
    nop
    nop
    nop
    ld e, b
    db $e4
    add $c3
    ld de, $f1ff
    add hl, de
    ld d, e
    add hl, de
    sbc c
    ei
    ldh [$ad], a
    push bc
    sub c
    cp $e0
    ld de, $e1fe
    dec c
    sub c
    ld [c], a
    db $e4
    ld de, $e499
    and $f8
    and $ea
    ldh [$e8], a
    ld [c], a
    ld b, b
    or b

Jump_055_62b1:
    pop hl
    ld [$ffe6], sp
    rst $38
    rst $38
    cp $fd
    pop bc
    ld sp, hl
    pop bc
    sbc d
    cp $e0
    sub b
    add a
    pop bc
    ld a, d
    pop bc
    dec [hl]
    pop bc
    ld b, c
    ret nz

    sbc d
    cp $e0
    ld b, b
    ret nz

    and [hl]
    nop
    cp $c3
    add sp, -$1d
    dec c
    ret nz

    ret c

    ld [c], a
    push bc
    pop bc
    ld b, d
    ret nz

    rlca
    pop bc
    rst $38
    and l
    ld [bc], a
    ld a, e
    ret nz

    or $d4
    ldh [rNR51], a
    pop bc
    call c, $c1c8
    push bc
    rst $38
    db $ed
    rra
    db $ed
    inc b
    ld d, [hl]
    rst $38
    db $76
    and e
    rst $38
    rst $38
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
    ei
    ld a, [$0000]
    nop
    scf
    ld h, e
    rst $18
    ld l, b
    ld b, l
    ld [hl], b
    ld h, b
    ld [hl], b
    push bc
    ld l, h
    rst $38
    ldh [$0c], a
    rst $38
    ld a, [$e1de]
    jp c, $2ce2

    ld l, $1f
    dec c
    dec c
    ld c, $0e
    dec c
    rst $38
    db $eb
    db $e4
    db $e4
    jp nz, $c5ff

    inc c
    ret nz

    rst $20
    ld c, $ba
    add sp, -$20
    add sp, -$3e
    ei
    inc c
    ld l, h
    dec c
    ld c, h
    ret nz

jr_055_6360:
    db $eb
    ld c, $0e
    ld [hl], b
    ldh [$c0], a
    and $3b
    ld a, [c]
    ld b, [hl]
    push hl
    rst $38
    ld l, h
    ld l, h
    ld c, h
    ld c, h
    ld c, h
    ld l, h
    ld c, $6e
    add b
    ld b, h
    db $e4
    add b
    push hl
    cp [hl]
    pop hl
    jr nz, jr_055_6360

    ld [c], a
    ldh [rTMA], a
    or $fe
    pop bc
    dec c
    rlca
    dec c
    dec bc
    dec bc
    pop bc
    db $e3
    ld b, h

Jump_055_638b:
    pop hl
    ld b, b
    db $e4
    add b
    ld [c], a
    and a
    ldh [rNR11], a
    ld c, h
    db $dd
    jp $d2c7


    jp nz, $0bc3

    rst $00
    pop bc
    add d
    ldh [$4e], a
    ldh [$3c], a
    inc b
    jp hl


    or d
    pop bc
    ld c, $2e
    dec hl
    ld c, h
    push de
    db $e4
    adc b
    db $d3
    jp nz, $c390

    dec bc
    inc d
    pop hl
    ld b, h
    rst $20
    rst $00
    ld [c], a
    ld [hl], d
    jp nz, Jump_000_0e2d

    push hl
    dec hl
    ld a, a
    di
    inc l
    ld b, $e3
    ld b, [hl]
    ldh [$2b], a
    ld a, [bc]
    ld l, d
    rlca
    dec c
    dec c
    ld c, [hl]
    cp a
    db $e4
    ret nz

    and $80
    db $e4
    rst $20
    ldh [$7f], a
    push hl
    db $fc
    ld hl, sp-$55
    add sp, -$5d
    ld l, h
    dec c
    ld l, e
    dec bc
    dec bc
    dec bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, a
    pop hl
    inc b
    ret z

    ld sp, hl
    and c
    ld a, [hl-]
    call nz, $e17f
    ret nz

    pop bc
    jr c, @-$20

    and d
    ld [bc], a
    db $ed
    ret nz

    db $e3
    dec hl
    ld a, [bc]
    ld c, d
    ret nz

    db $e4
    ld c, h
    jp Jump_055_7a8e


    ret


    dec l
    dec l
    ld c, [hl]
    scf
    ret nz

    inc a
    ldh [rPCM34], a
    xor l
    ld l, h
    inc a
    ccf
    pop hl
    ld b, b
    pop hl
    ld c, e
    ld c, e
    ld c, e
    ld c, d
    add b
    rst $20
    ld a, [bc]
    jp Jump_000_03c0


    db $e3
    ret nz

    db $e3
    cp $e0
    inc a
    ldh [$78], a
    xor a
    nop
    push hl
    dec hl
    dec bc
    db $e3
    dec bc
    dec c
    ld a, a
    ret nz

jr_055_642c:
    rst $38
    jp $eb80


    ld c, l
    ld c, l
    ld c, l
    ld [c], a
    ld [hl], e
    and c
    dec l
    cp e
    ret nz

    db $fd
    rst $08
    inc c
    and e
    inc l
    dec c
    ld l, e
    inc bc
    ld c, e
    ld c, e
    ret nz

    pop hl
    cp [hl]
    ret nz

    adc $e2
    jp nz, $c2c7

    ldh [$c0], a
    rst $20
    add hl, de
    inc l
    ld d, h
    xor d
    ld a, a
    ld [$4b6b], a
    nop
    ret nz

    ld a, h
    ldh [$c0], a
    pop hl
    ld b, b
    jp nz, $b2c8

    add b
    add b
    ld [$8697], a
    ld [hl], b
    add l
    xor h
    pop bc
    ld c, h
    nop
    pop bc
    push bc
    dec l
    add c
    and b
    dec l
    ret nz

    db $ec
    nop
    and d
    ld b, b
    and $4e
    ld l, $90
    ld a, b

jr_055_647c:
    and c
    ld a, e
    jp nz, $8830

    inc h
    add c
    inc l

jr_055_6484:
    ld l, h
    ret nz

    ld e, c
    jp nz, Jump_000_032d

    ld c, $6e
    adc b
    add l
    ld c, b
    db $e3
    add b
    db $e4
    db $e3
    db $e3
    ld a, e
    call nz, $a70c
    ld h, b
    ld b, $86
    ld c, b
    add b
    add hl, hl
    ret nz

    ei
    and b
    ld b, [hl]
    add $0e
    ld c, [hl]
    rst $38
    pop hl
    jr nc, jr_055_642c

    pop hl
    cp [hl]
    ret nz

    rst $30
    add h
    cp e
    ret nz

    ld c, [hl]
    ld c, $7b
    pop hl
    add hl, sp
    add sp, -$50
    dec b
    adc c
    ld [bc], a
    add b
    jp z, $c2e3

    ldh [$6e], a
    dec bc
    adc a
    ld h, b
    dec bc
    jr nc, jr_055_6484

    pop hl
    ld a, [hl]
    ret nz

    ld [hl], l
    add [hl]
    dec de
    ldh [$0e], a
    dec hl
    ld sp, hl
    pop bc
    cp a
    db $eb
    ld l, b
    add hl, sp
    and b
    jr nc, jr_055_647c

    rst $38
    ldh [$0b], a
    jp z, $6ee0

    dec bc
    pop bc
    pop hl
    rrca
    inc l
    inc c
    inc l
    dec bc
    ld l, a
    pop bc
    ret nz

    pop hl
    ld l, l
    add e
    db $db
    ret nz

    ld [de], a
    ld a, [hl]
    ld [c], a
    ld l, h
    ld [hl], c
    add h
    cp [hl]
    rst $20
    inc l
    ld [bc], a
    add b
    ld a, [hl-]
    ld h, b
    cp l
    db $e3
    inc b
    dec l
    ld h, h

jr_055_6500:
    ld l, l
    pop hl
    dec bc
    dec a
    db $e3
    ld [hl], c
    ld h, [hl]
    or a
    and d
    cp b
    jp nz, $a773

    ld [bc], a
    inc bc
    ld h, e
    dec bc
    and h
    push bc
    add sp, -$36
    dec a
    ldh [$aa], a
    add d
    ld sp, $7262
    ld h, d
    add c
    dec l
    ld a, l
    ldh [$2f], a
    add b
    or a
    jp nz, Jump_055_638b

    db $e4
    ld h, c
    ld a, a
    and b
    dec hl
    ld b, b
    dec c
    ldh [$73], a
    jp nz, $e073

    xor l
    ld h, h
    ld h, [hl]
    ret nz

    and [hl]
    add b
    ld c, [hl]
    pop af
    ld b, a
    cp b
    db $e4
    add l
    ldh a, [$81]
    inc sp
    jp nz, Jump_000_2b2b

    dec hl
    add a
    ldh [$6c], a
    inc de
    dec c
    dec hl
    add e
    ld h, b
    ld a, [hl]
    ldh [$2c], a
    or e
    ld h, h
    cp d
    ld [c], a
    ld l, c
    ld b, c
    add $25
    ret nz

    inc l
    dec bc
    ld l, [hl]
    ld b, [hl]
    and [hl]
    adc b
    inc l
    add c
    dec hl
    dec hl
    jr c, jr_055_6500

    ld b, b
    db $dd
    ld b, b
    add l
    ld h, b
    dec hl
    dec c
    ld a, [bc]
    ld a, a
    ldh [$bf], a
    ld [c], a
    nop
    xor c
    add c
    xor $a1
    ld a, b
    db $e3
    dec h
    pop bc
    ld a, [hl+]
    sub e
    ld l, h
    add b
    ld de, $c064
    add d
    ld [$60fd], sp
    ld d, $60
    ret nz

    pop hl
    ld l, h
    dec e
    add [hl]
    rrca
    and c
    ld l, e
    ldh [$73], a
    and [hl]
    ld d, b
    xor $62
    inc h
    ld c, d
    db $db
    ld h, d
    pop bc
    db $e3
    ld a, [bc]
    ld a, h
    add b
    ld c, h
    inc b
    pop hl
    nop
    add h
    db $e3
    ld a, h
    db $e3
    ld h, c
    and d
    ld l, l
    ld c, c
    xor d
    ld h, [hl]
    dec de
    add h
    sub [hl]
    ld b, b
    ld c, l
    ld b, b
    inc c
    ld b, c
    add c
    ld a, e

jr_055_65b7:
    ld h, b
    dec c
    ld c, h
    dec l
    ld h, b
    ld b, l
    and $04
    pop hl
    ld e, $62
    ldh [$2d], a
    ld c, h
    or e
    ret


    ld d, [hl]
    ld b, c
    ld b, a
    ld b, c
    ld b, e
    ld h, b
    dec bc
    ld l, e
    ld c, e
    nop
    ret nz

    db $e4
    ld a, a
    jp $82e9


    ld [hl], e
    jp nz, $e694

    adc c
    and $d9
    ld l, c
    ld b, c
    ldh [rSC], a
    add e
    ld [c], a
    ld a, [bc]
    add b
    add b
    ld b, b
    pop hl
    adc c
    and b
    xor $24
    or [hl]
    and d
    and l
    and b
    jr nz, @+$49

    ret z

    ld l, h
    dec h
    ret c

    ld c, c
    ld [$0281], sp
    ret nz

    dec bc
    ld e, c
    ld h, b
    ccf
    ret nz

    nop
    ret nz

    db $e3
    xor e
    inc bc
    ld a, b
    jp $8064


    db $ed
    ld b, e
    rst $20
    inc bc
    push af
    and $99
    ld [hl+], a
    nop
    jp nc, $4120

    pop hl
    cp a
    ld b, c
    dec bc
    and c
    ret nz

    and $bf
    and [hl]
    xor h
    nop
    ld l, [hl]
    ld c, c
    jr nc, jr_055_6688

    ld c, [hl]
    ld c, $20
    dec b
    ldh [rP1], a
    ld h, b
    ld l, e
    ld c, e
    ld c, a
    jp nz, $a1ce

    jr jr_055_65b7

    and e
    ld a, l
    db $e4
    db $e4

jr_055_6638:
    ld h, b
    ld c, $6e
    ld l, c
    add e
    ld hl, sp-$79
    sbc c
    jr z, jr_055_6642

jr_055_6642:
    ld [$0321], sp
    pop bc
    add d
    pop hl
    ld b, d
    call nz, Call_000_242d
    ld a, a
    and l
    ld [hl], b
    add c
    ld l, c
    add b
    nop
    cp h
    call $e8c0
    inc b
    ret nz

    ld c, l
    add d
    cpl
    ld b, b
    ld c, e
    jp nz, Jump_000_25e6

    ld a, h
    jp Jump_000_3482


    add e
    inc l
    ld h, c
    ld hl, $0769
    ld a, b
    push hl
    ld b, c
    jp nz, Jump_000_217f

    dec bc
    nop
    inc bc
    jp nz, $e7c0

    cp a
    push bc
    ld sp, hl
    and d
    add hl, hl
    add d

jr_055_667d:
    ret nz

    xor $82
    and e
    ld b, b
    ld [c], a
    nop
    cp $20
    add e
    and e

jr_055_6688:
    pop bc
    ret


    di
    ld h, d
    xor [hl]
    and b
    ld [hl], d
    and e
    ld a, a
    ld [c], a
    and a
    ld a, [hl+]
    add b
    ret nz

    jp hl


    ld a, b
    add b
    add d

jr_055_669a:
    jp $c3c1


    dec [hl]
    add h
    sbc e
    dec b
    sbc e
    ld b, d
    ld c, e
    jr nc, jr_055_669a

    ld h, e

jr_055_66a7:
    sbc l
    dec bc
    ld a, b
    add c
    jp nz, Jump_055_6b81

    ld c, e
    jp Jump_000_01a2


    db $e3
    jr nz, jr_055_6638

    and $74
    and d
    inc h
    ld h, [hl]
    ld a, l
    and $39
    add h
    dec l
    ld a, [bc]
    ld b, b
    xor $40
    nop
    add h
    nop
    ld b, e
    and b
    add c
    jp nz, $e7c0

    add e
    db $e4
    add d
    db $e4
    ld l, c
    add h
    cp e
    pop bc
    nop
    ld h, l
    ld b, d
    rst $18
    ld [bc], a
    sub e
    ld b, h
    ret nz

    pop hl
    add e
    ld h, c
    ld bc, $01e5
    jp $e644


    jr jr_055_66a7

    jp $8228


    and b
    ld b, c
    ld c, [hl]
    ld l, [hl]
    jr @-$3e

    add hl, hl
    ld h, c
    ld e, h
    ld b, b
    nop
    add d
    ld h, b
    sub e
    ld b, b
    inc bc
    jr nz, jr_055_667d

    pop hl
    jp nz, $c2c4

    and h
    ld b, h
    push hl
    or c
    ld b, c
    ld h, b
    adc c
    jr nz, jr_055_6735

    rst $20
    ld e, c
    ld b, e
    rst $08
    ld [hl+], a
    dec bc
    ld b, e
    inc c
    inc l
    inc bc
    jr nz, jr_055_6775

    add h
    and c
    ld [hl], $41
    cp h

jr_055_671a:
    and d
    ld b, a
    push bc
    ld h, l
    inc h
    inc c
    ld l, $65
    jp Jump_055_6e00


    push bc
    jp c, $0fc2

    ld b, l
    ei
    push hl
    add h
    and [hl]
    call $c363
    ld h, h
    adc [hl]
    nop
    nop

jr_055_6735:
    ld e, b
    ld b, b
    ld b, $21
    dec a
    db $e3
    xor $42
    db $e3
    add b
    and b
    ld h, e
    sub b
    jp nz, $e478

    jr nc, @-$15

    db $e3
    pop bc
    and $48
    jp $4177


    dec bc
    dec bc
    ld [bc], a
    ld b, b
    inc hl
    ld b, c
    nop
    ld h, h
    ld h, c
    inc b
    inc h
    sbc h
    db $e4
    sbc c
    add d
    ld e, d
    push bc
    add sp, $01
    adc a
    ld h, h
    adc d
    and e
    jr jr_055_671a

    and d
    jp nz, Jump_055_60e0

    ld h, b
    ld c, [hl]
    ld l, $21
    and e
    rst $28
    call nz, $e33d
    nop

jr_055_6775:
    ldh [rNR42], a
    ld d, h
    ld b, [hl]
    sub d
    add e
    call z, $47c6
    call nz, Call_000_2131
    adc $a2
    db $10
    ld b, l
    nop
    ld l, e
    ld b, d
    ld [hl], l
    ld [c], a
    reti


jr_055_678b:
    inc hl
    ld a, [$39e5]
    ld h, $3f
    dec h
    ld sp, $fee4
    nop
    nop
    ld e, l
    ld b, d
    db $10
    ld b, d
    rst $18
    ld hl, $2005
    ld l, $e0
    rst $38
    nop
    or h
    db $e3
    sub l
    ld b, [hl]
    nop
    pop af
    add $63
    jp nz, $e4c1

    ld b, c
    ld b, c
    dec e
    ld b, e
    adc h
    dec h
    add hl, de
    ld b, c
    adc $22
    nop
    or h
    ld [c], a
    db $fd
    ld [bc], a
    jr c, jr_055_67e1

    sbc c
    ret nz

    xor a
    and $0c
    ld h, e
    ld a, [$ea21]
    ld bc, $d248
    ld c, d
    ld hl, sp-$40
    call z, Call_000_2d21
    push bc

jr_055_67d2:
    ld hl, $e2b3
    dec l
    or a
    db $e3
    ld b, b
    ld c, e
    jr nz, jr_055_678b

    db $e3
    adc a
    add e
    ld b, d
    ld b, [hl]

jr_055_67e1:
    jp $cfc1


    ld a, [hl+]
    ld c, [hl]
    ld [hl], c
    rst $20
    ld [de], a
    xor e
    pop bc
    dec l
    ret nz

    pop hl
    ld [$6c21], sp
    jr c, jr_055_6816

    jr c, jr_055_67f6

    inc b

jr_055_67f6:
    ld b, [hl]
    nop
    xor e
    pop hl
    sub [hl]
    ld b, h
    adc a
    inc l
    jp z, Jump_000_2a42

    pop bc
    pop bc
    ld [c], a
    ld a, h
    pop hl
    scf
    ld [hl+], a
    rlca
    ld c, [hl]
    ld l, $6c
    add b
    ld [hl+], a
    pop bc
    rst $20
    and l
    ld hl, $2f8f
    ld hl, sp+$05

jr_055_6816:
    ld bc, $0b0e
    ld [hl+], a
    inc a
    ldh [$f8], a
    ld bc, $21de
    sbc b
    and e
    ld [hl], b
    jp Jump_000_006b


    jr z, jr_055_67d2

    db $e3
    adc a
    jr nc, @-$06

    inc b
    ld c, $42
    db $e3
    dec l
    call c, Call_055_75c4
    ld bc, $bc80
    ld b, d
    add c
    ld hl, $c298
    and d
    ld bc, $269a
    inc d
    ld b, d
    ld b, c
    ld a, [hl+]
    ld l, [hl]
    ld [$e5c0], sp
    add d
    ldh [$aa], a
    inc bc
    ld c, [hl]
    ld e, $c0
    dec de
    and d
    ld e, e
    pop bc
    sub $c7
    nop
    inc b
    ld c, [hl]
    ld [$4b43], sp
    inc bc
    ld b, h
    ld h, b
    ret nz

    rst $20
    sub [hl]
    add b
    ld a, [hl+]
    pop bc
    ld b, [hl]
    rst $20
    nop
    rst $08
    ld c, b
    ld c, d
    ld l, b
    ld b, h
    ld h, d
    call $c041
    db $ec
    rla
    and e
    or c
    call nz, $094b
    nop
    ld b, [hl]
    db $eb
    ld [hl], d
    inc bc
    adc l
    ld b, b
    ld c, b
    nop
    cp $a1
    ld d, [hl]
    add sp, -$1a
    and d
    ret z

    jp $8b08


    ld [$ea86], sp
    ld a, d
    ld [hl+], a
    ld l, $c8
    ld b, c
    ld b, b
    db $e4
    ret c

    jp $ca62


    nop
    sub [hl]
    rlca
    ret nz

    ld a, [c]
    cp l
    inc hl
    nop
    push hl
    xor l
    ld c, b
    ld [hl+], a
    ret z

    add l
    rst $00
    ld b, [hl]
    db $ec
    ld c, $fa
    dec b
    ld c, [hl]
    ld l, $6b
    rst $38
    ld [c], a
    inc bc
    pop bc
    xor b
    push hl
    ld l, c
    ld b, $00
    jp c, $f7a6

    jp hl


    ld [$0224], sp
    ld b, l
    inc d
    db $e3
    sbc h
    and e
    ld l, b
    jp hl


    ret nz

    pop af
    nop
    cp d
    adc c
    jp hl


    ldh a, [$c0]
    db $ed
    pop bc
    push bc
    ret nz

    db $ed
    dec hl
    adc $b0
    db $eb
    adc [hl]
    ret


    nop
    sub l
    xor b
    nop
    nop
    nop
    db $dd
    sbc b
    rst $38
    ldh [$99], a
    sbc c
    sbc c
    ld sp, hl
    ldh [$97], a
    sub a
    rst $28
    sub a
    sub [hl]
    sub [hl]
    sub l
    rst $38
    pop hl
    sub [hl]
    sub [hl]
    sub [hl]
    ldh [$f3], a
    ldh [$e6], a
    pop hl
    push hl
    db $e3
    add sp, -$20
    ld a, [c]
    ldh [$99], a
    ld a, [bc]
    sbc [hl]
    rra
    and b
    and b
    ld [c], a
    db $e3
    and b
    rst $38
    db $eb
    rst $10
    db $e3
    reti


    db $e3
    or b
    cp a
    push hl
    pop bc
    ld [c], a
    jp hl


    jp hl


    or e
    ldh [rP1], a
    ld bc, $e2c0
    db $e4
    dec e
    push hl
    ret nz

    ldh [$d6], a
    rst $10
    ret c

    cp d
    and $e1
    ld [c], a
    ld a, h
    ld [c], a
    ldh [$7e], a
    pop hl
    ret nz

    rst $20
    ld l, b
    db $e3
    jp nz, $5ee3

    ld [c], a
    sbc c
    rrca
    dec b
    db $76
    add b
    ldh [$e6], a
    rst $20
    add b
    ldh [$d9], a
    jp c, Jump_055_7adb

    ldh [rTAC], a
    call nc, $d4d5
    ret nz

    pop hl
    db $dd
    and $3e
    and $42
    push hl
    ld a, [hl+]
    ldh [$fe], a
    ld h, d
    db $e4
    rrca
    inc b
    add hl, bc
    add hl, bc
    inc b
    ld [bc], a
    ret nc

    dec e
    sbc a
    ld b, h
    db $e4
    call c, $dedd
    ld a, [hl-]
    ld [c], a
    cp [hl]
    pop hl
    dec b
    ld [c], a
    ldh [rDIV], a
    ldh [$93], a
    push hl
    ret nz

    db $e4
    pop bc
    push hl
    ld [c], a
    jp nz, Jump_000_020f

    xor [hl]
    sbc a
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    ret nc

    db $d3
    dec b
    pop hl
    ld b, h
    pop hl
    rst $18
    di
    ldh [$e1], a
    pop bc
    ld [c], a
    add b
    pop hl
    inc bc
    add hl, bc
    inc b
    rrca
    ret nz

    inc b
    ld [c], a
    ld a, a
    pop hl
    ld a, $e3
    jp $c1c3


    db $e3
    add l
    ld [c], a
    inc bc
    ld b, [hl]
    rrca
    xor a
    xor a
    ret nc

    pop de
    pop bc
    ldh [$ce], a
    ldh [rLY], a
    db $e3
    cp e
    call nz, $b27e
    ret nz

    pop de
    ret nc

    ld b, [hl]
    ld [$0100], sp
    ld a, a
    rst $20
    ld hl, sp-$7c
    ret nz

    add e
    jp nz, $e482

    dec c
    ld [bc], a
    ld a, c
    ld a, d
    ld a, e
    rra
    ld a, e
    ld a, h
    ld a, l
    ld b, [hl]
    jp nc, $ea44

    ld a, c
    ret nz

    add d
    pop hl
    ld c, $b2
    pop bc
    jp nc, Jump_000_0246

    ld a, a
    ldh [$8e], a
    db $e4
    cp a
    db $e3
    pop af
    push bc
    cp $26
    ret nz

    ld [$7e79], sp
    dec hl
    dec hl
    ld d, h
    ld d, d
    add a
    ld a, a
    ld a, l
    sbc h
    inc bc
    db $e4
    ld b, h
    db $e3
    ld a, c
    jp nz, $c3b2

    sbc a
    or b
    ld a, a
    ldh [$15], a
    db $e4
    ld a, $e5
    or c
    jp $9797


    ld c, h
    ret nz

    ld [$80ff], sp
    ld b, h
    jr nc, jr_055_6a23

    dec l
    ld e, [hl]
    ld e, h
    add c
    ld h, e
    ld b, [hl]
    sbc [hl]
    inc b
    ret


    ld a, c
    pop bc
    ld a, [hl-]
    push bc
    jp nc, $fc46

    ret nz

    pop bc
    ld c, $bd
    push bc
    cp a
    db $e3
    ret nz

    db $e3
    and a
    and b
    ret nz

    ld [c], a
    ld [hl-], a
    ld e, [hl]
    pop bc

jr_055_6a23:
    ld d, l
    ret nz

    pop hl
    inc b
    ret nz

    ld c, h
    jp $a3bd


    or $c5
    sbc a
    pop de
    and $fc
    ret nz

    ld [bc], a
    rrca
    cp a
    add sp, $40
    jp hl


    add d
    add e
    ld a, [hl+]
    rlca
    ld h, $2d
    ld c, e
    ret nz

    ld [c], a
    inc b
    jp nz, $c30a

    add l
    pop bc
    ld a, [hl-]
    push bc
    ld e, $6f
    and b
    db $d3
    ret nc

    ld b, [hl]

jr_055_6a50:
    ld b, $fd
    add $31
    add $2b
    pop bc
    rst $38
    ld [$8b85], sp
    ld b, b
    dec [hl]
    add hl, sp
    xor [hl]
    ld b, [hl]
    pop hl
    adc h
    rst $38
    call nz, $c24c
    or $c9
    ld [hl], e
    and e
    jp nc, Jump_000_0a46

    ldh a, [$bc]
    push bc
    db $f4
    add e
    cp a
    call nz, $c005
    add b
    ld b, l
    ld [hl], $39
    add a
    xor a
    ld b, [hl]
    xor [hl]
    cp [hl]
    pop bc
    ld c, b
    and l
    ei
    adc d
    ld [hl], e
    and d
    sbc [hl]
    db $e3
    ld b, [hl]
    ld b, $fb
    and e
    or d
    add [hl]
    ld a, a
    and $82
    add e
    ld b, l
    rra
    ld b, l
    ld b, [hl]
    xor [hl]
    xor a
    ld b, [hl]
    cp [hl]
    ret nz

    inc b
    push bc
    ei
    add c
    call nz, $c6f6
    ld [hl], e
    and d
    sbc [hl]
    ld a, h
    jp nz, $89f4

    ld a, $c5
    ld [$ff85], sp
    add a
    adc b
    adc c
    add e
    xor a
    ld b, [hl]
    add e
    add h
    jp $9e46


    ld c, b
    and l
    ei
    add d
    or h
    push bc
    ld [hl], e
    and d
    sbc a
    ret nc

    add $78
    and b
    rlca
    rrca
    ld a, [hl-]
    add e
    jr nc, jr_055_6a50

    ld b, b
    and e
    rrca
    ld [bc], a
    ei
    dec bc
    dec bc
    cp l
    ldh [$88], a
    add a
    add l
    ret nc

    sbc a
    nop
    ld c, b
    and h
    ld a, $83
    or $c8
    cp [hl]
    pop bc
    ld a, e
    jp $a076


    ld sp, hl
    add $2d
    add e
    sbc $01
    and d
    dec bc
    dec bc
    ld b, [hl]
    ld b, [hl]
    ld a, [hl]
    and [hl]
    and b
    sbc a
    pop bc
    sbc l
    rst $38
    pop hl
    or e
    add c
    ld a, [c]
    ld h, h
    rst $30
    add b
    add sp, $60
    db $d3
    pop de
    adc a
    ret nc

    ld [bc], a
    rlca
    rrca
    jp z, $fd85

    db $e3
    ld b, e
    add l
    dec c
    rst $28
    rlca
    rlca
    ld [bc], a
    sbc h
    jp z, $9fe3

    sbc l
    sbc h
    dec bc
    ld b, [hl]
    dec bc
    xor a
    ldh [$9c], a
    cp [hl]
    ldh [$f2], a
    ld h, b
    xor a
    ld h, h
    add sp, $62
    inc bc
    jp nc, Jump_055_7546

    and b
    di
    add d
    add e
    ld h, b
    ret


    ld h, d
    ld l, l
    ld h, b
    push bc
    ld h, d
    and $ea
    ldh [$0d], a
    inc b
    cp b
    add b
    jp z, $9ce0

    ld b, [hl]
    ld b, [hl]
    ld a, e
    ld [bc], a
    dec c
    xor a
    ldh [rSC], a
    ld b, [hl]
    sbc h
    sbc a
    ld a, [c]
    ld h, b
    add sp, -$51
    ld h, b
    or c
    ld h, c
    add sp, $62
    sbc a
    ld a, [hl]
    ldh [rNR10], a
    rrca
    dec c
    inc a
    adc h
    ld h, [hl]
    ld h, $82
    sbc b
    ld bc, $0f00
    ld l, c
    ldh [$38], a
    add d
    ld a, [hl]
    cp l
    ldh [$0b], a
    inc bc
    inc b
    rlca
    dec c
    sbc b
    ld [hl], c
    ld h, b
    db $e3
    ld c, $05
    dec l
    and b
    xor a
    ld h, d
    ld l, l
    adc b
    db $d3
    ret nc

    dec bc
    rra
    dec bc

Jump_055_6b81:
    ld [bc], a
    rlca
    rlca
    db $10
    ld [$8941], a
    pop hl
    add sp, $41
    rra
    dec c
    ld [bc], a
    dec bc
    ld b, e
    dec bc
    ld h, b
    and b
    sub $44
    ld e, a
    pop hl
    ld [bc], a
    ret nc

    ld h, d
    ld b, $3d
    ldh [$fa], a
    jp nz, Jump_055_62b1

    ld h, $a4
    cp b
    jp nz, $816e

    ei
    nop
    ld bc, $628b
    rrca
    sbc c
    dec c

jr_055_6baf:
    ld [bc], a
    ld b, l

jr_055_6bb1:
    sbc a
    ld [hl], $3b
    ld [hl], $45
    ld [$c8e8], sp
    xor $43
    dec c
    dec b
    ld [bc], a
    xor e
    ret nz

    sbc h
    ld [hl], a
    and a
    db $e4
    add l
    ld [hl], l
    pop bc
    ld a, h
    ldh [$1f], a
    ldh [$fe], a
    adc e
    ret nz

    ld [bc], a
    rlca
    ld [bc], a
    xor [hl]
    ld b, h
    xor h
    dec [hl]
    rlca
    dec [hl]
    ld b, b
    ld [bc], a
    sbc [hl]
    add b
    xor c
    ld b, d
    ld h, a
    ld b, e
    cp a
    ld [c], a
    xor $c1
    ld d, b
    ld l, [hl]
    ld b, [hl]
    jr nc, jr_055_6bb1

    ldh a, [$80]
    ld d, b
    ld h, b
    pop de
    rst $38
    ldh [$d0], a
    add l
    and b
    rst $38
    ld b, l
    xor l
    jp Jump_000_3635


    ld b, l
    ld [bc], a
    dec c
    jr nc, jr_055_6c35

    ld b, c
    scf
    ld b, c
    ld e, b
    add l
    ld [$0d40], sp
    ld [bc], a
    push af
    ld h, l
    jr z, jr_055_6baf

    ldh [$64], a
    ld b, e
    pop af
    and b
    ld d, b
    ld h, c
    and d
    ld h, b
    pop bc
    ldh [$36], a
    ld h, d
    ld h, e
    rra
    ld h, h
    ld h, h
    ld a, h
    ld a, l
    ld [$23f8], sp
    push hl
    and e
    db $e3
    ld b, e
    ld b, b
    ld l, d
    ret nz

    ld [hl], e
    and h
    dec l
    ld b, d
    inc hl
    ld b, c
    jr nz, jr_055_6c97

    call nc, $9e21
    pop bc
    pop hl
    ld a, a

jr_055_6c35:
    ld h, a
    rst $08
    jp $4035


    add c
    ld [$4699], sp
    add [hl]
    pop hl
    add a
    sbc b
    sbc b
    di
    ld l, c
    inc hl
    ld b, c
    or e
    ret z

    call nc, $9f20
    rst $38
    sbc h
    ld a, c
    ld a, d
    ld h, h
    ld a, b
    xor h
    adc $cf
    nop
    ret nz

    pop hl
    ld sp, $de40
    ld h, [hl]
    db $10
    ld b, l
    ret nz

    push hl
    di
    ld h, [hl]
    or e
    ret z

    call nc, $ff20
    sbc [hl]
    ld a, c
    ld a, [hl]
    ld [hl], $cf
    jp Jump_000_35ad


    nop
    nop
    ldh [$c0], a
    db $e4
    db $e4
    and [hl]
    inc c
    inc h
    cp c
    inc h
    dec l
    ld b, d
    ld h, d
    ld h, a
    reti


    ld h, l
    rst $30
    sbc [hl]
    add b
    add hl, sp
    add e
    pop hl
    dec [hl]
    jp $8340


    ld bc, $4084
    pop hl
    jp hl


    ld b, d
    sbc $45
    push hl
    ld [bc], a
    ld b, a
    ret z

    ld l, h

jr_055_6c97:
    dec h
    call c, Call_055_7708
    sbc [hl]
    add b
    ld a, $83
    ldh [$6c], a
    ld [hl], d
    ld [hl], c
    add b
    add b
    nop
    ret nz

    ret nz

    ret nz

    db $e3
    dec e
    ld b, e
    inc c
    inc h
    ld l, l
    ld h, l
    and a
    ld [bc], a
    ld h, d
    ld h, e
    call c, $f001
    db $dd
    ld bc, $20a0
    ret nz

    ldh [$c4], a
    ret nz

    ld [hl], e
    ld l, [hl]
    jp $0740


    ld b, [hl]
    ld [bc], a
    db $10
    ret nz

    and $1d
    ld h, $48
    nop
    ld [hl], c
    dec b
    add hl, sp
    ret z

    cp h
    call c, $dd01
    inc bc
    sbc a
    sbc h
    add b
    ld a, $c4
    ret nz

    ld l, d
    dec e
    xor h
    ld bc, $0ec0

jr_055_6ce2:
    sbc b
    sbc c
    add hl, hl
    ld b, e
    ld e, h
    ld [bc], a
    jp c, $c525

    sbc c
    ld [hl-], a
    add e
    sbc a
    and a
    ld bc, $0969
    db $dd
    inc bc
    sbc [hl]
    ld a, c
    rst $38
    adc l
    ld a, $35
    dec [hl]
    dec [hl]
    ld l, d
    xor l
    ld b, b
    ld h, d
    jp nz, $9aa0

    ld l, d
    inc h
    ld e, l
    ld [bc], a
    ld e, h
    inc b
    sbc c
    sbc b
    ld [hl], b
    add c
    and b
    ld l, c
    add b
    and l
    ld bc, $0269
    ld l, d
    ld l, c
    pop bc
    ret nz

    xor [hl]
    ld b, b
    pop hl
    ld [hl], l
    add e
    ld h, [hl]
    ld b, h
    inc e
    jr nz, jr_055_6d58

    add c
    sbc h
    ld bc, $e2c0
    cp l
    push bc
    sbc b
    adc [hl]
    ld c, b
    ld h, c
    rlca
    inc b
    inc bc
    ld h, c
    ld hl, $0569
    ld a, b
    rst $20
    sbc [hl]
    dec sp
    add b
    xor a
    ld b, b
    pop hl
    dec [hl]
    ld l, d
    ld b, b
    pop bc
    add c
    ret nz

    add sp, $3c
    ld e, l
    dec b
    ld c, h
    inc hl
    ld bc, $0e00
    dec b
    inc [hl]
    add b
    ld hl, $ec65
    sbc c
    ld b, e
    add d
    and d
    add d
    add e

jr_055_6d58:
    ld b, b
    pop hl
    ld l, h
    ld l, l
    ld b, b
    jr nz, jr_055_6ce2

    and e
    pop bc
    ret


    sbc l
    ld b, e
    sub a
    ld h, c
    db $76
    pop bc
    ld a, [bc]
    ldh [rDIV], a
    and a
    daa
    sbc $6e
    ld h, c
    sbc [hl]
    add l
    add a
    ld [hl], c
    rst $38
    ldh [rSVBK], a
    ld l, [hl]
    add hl, de
    ld b, h

Call_055_6d7a:
    ld b, c

jr_055_6d7b:
    add e
    ld bc, $96e2
    sub l
    add e
    jp $a2ff


    ld l, [hl]
    add l
    jr nc, jr_055_6d7b

    ld h, c
    sbc [hl]
    inc b
    ld a, b
    db $e4
    and h
    inc bc
    ld b, l
    ld a, [hl-]
    ret nz

    ret nz

    add d
    add b

jr_055_6d95:
    nop
    jp Jump_000_01a2


    db $e3
    add e
    and $51
    dec b
    ld l, e
    add c
    ld h, l
    ld h, c
    ld e, l
    dec b
    and e
    jr z, jr_055_6e06

    jp nc, Jump_000_3c44

    jp z, $43cb

    add c
    ld c, $c0
    ld [$c178], a
    rst $20
    call c, $6943
    add d
    rrca
    ld [bc], a
    sbc h
    sbc a
    inc sp
    call nz, Call_055_5cfe
    ld b, h
    sbc a
    and b
    sbc [hl]
    ld b, b
    dec [hl]
    ret z

    ret


    inc bc
    inc a
    ld b, h
    pop bc
    ld [c], a
    add b
    and $43
    and l
    sbc b
    dec b
    jr z, jr_055_6d58

    reti


    ld b, b
    adc a
    ld [bc], a
    sbc h
    sbc h
    inc bc
    xor l
    ld h, b
    ld d, a
    ld b, c
    ld a, [hl+]
    jp $419d


    sbc h
    ld b, h
    ld h, b
    ld b, d
    db $e4
    ld d, c
    jp $a604


    ld [de], a
    inc h
    sbc c
    adc d
    ld hl, $2cc6
    push hl
    rrca
    rlca
    ld a, l
    jr nz, jr_055_6d95

    ld b, e
    ld a, [hl+]
    jp nz, $0909

    ccf

Jump_055_6e00:
    add hl, bc
    inc bc
    ld b, l
    ld b, e
    ccf
    ld b, l

jr_055_6e06:
    inc hl
    ld [bc], a
    ld [hl+], a
    inc bc
    jr jr_055_6e48

    ld h, c
    add a
    jp $84bd


    ret nc

    ld b, [hl]
    add sp, $62
    ld l, [hl]
    push bc
    add [hl]

jr_055_6e18:
    ld [bc], a
    inc c
    sbc e
    ld b, d
    ld c, [hl]
    ld b, d
    sbc c
    ld c, $bb
    ld b, c
    ld b, d
    db $e3
    rst $18
    dec bc
    ld [hl], d
    pop bc
    dec c
    dec c
    rst $00
    and b
    db $d3
    ret nc

    ld h, l
    ld b, d
    xor c
    push bc
    ret nc

    ld hl, $2584
    jp nz, Jump_000_007a

    sbc d
    or a
    db $e3
    call nz, $70a6
    dec h
    inc sp
    pop bc
    dec c
    inc b
    ld [bc], a
    or b
    jr nz, jr_055_6e18

jr_055_6e48:
    adc e
    jr nz, @-$39

    nop
    add $00
    ld a, [hl+]
    add d
    cp $e5
    ld h, [hl]
    jp nz, $5c70

    add [hl]
    sbc [hl]
    call nz, Call_000_2431
    call $97c3
    sbc b
    ld [$419d], sp
    ld bc, $1cd3
    ret nz

    db $e4
    nop
    ld hl, $efa0
    call nz, $e387
    ld b, a
    ld [hl+], a
    ld d, h
    ld b, a
    nop
    adc b
    ld b, d
    call z, Call_000_38c5
    db $e4
    nop
    ld b, c
    xor l
    ld [bc], a
    db $10
    ld b, h
    ld e, l
    ld hl, $c3be
    ld b, b
    add $04
    ld a, [$6de5]
    and $c5
    ld b, e
    cp d
    call nz, Call_000_203e
    ld [$223f], sp
    nop
    db $10
    ld b, l
    jr z, jr_055_6eb8

    sbc $02
    add l
    pop bc
    or h
    ld [c], a
    sub l
    ld b, [hl]
    pop af
    add $14
    pop bc
    inc c
    pop bc
    push hl
    jp nz, $02c0

    ret nc

    adc a
    and [hl]
    ld c, c
    inc hl
    call z, $c522
    ld hl, $4126
    pop bc
    inc b
    inc bc

jr_055_6eb8:
    push af
    nop
    jr c, @+$23

    sbc c
    add hl, hl
    pop bc
    add l
    db $e4

jr_055_6ec1:
    inc b
    inc c
    ld h, e
    ld a, [$0f21]
    jp nz, $41c0

    ld [c], a
    ld c, c
    ld h, l
    adc h
    jr nz, jr_055_6ec1

    pop bc
    inc h
    push bc
    ld [hl+], a
    or e
    ld [c], a
    xor [hl]
    or a
    pop hl
    rst $38
    nop
    rrca
    jr jr_055_6efe

    sbc l
    jp $c514


    push bc
    jp $0841


    ld h, b
    jr nz, @-$5f

    adc a
    daa
    adc h
    ld [hl+], a
    adc [hl]
    ld [hl+], a
    and [hl]
    ccf
    dec h
    xor [hl]
    xor a
    nop
    ld hl, $c063
    inc bc
    scf
    ld hl, $03d0
    ld b, [hl]

jr_055_6efe:
    ld b, $56
    add e
    jr z, jr_055_6f05

    ld b, d
    nop

jr_055_6f05:
    jp $8fc2


    jr nc, jr_055_6f48

    add c
    and [hl]
    ld a, a
    ld b, b
    jp nc, $c146

    ld [c], a
    ld a, h
    pop hl
    ret nc

    scf
    ld hl, $03d3
    ret nc

    dec b
    db $fc
    add d
    ret


    ld b, h
    pop bc
    ldh [$03], a
    pop hl
    adc a
    cpl
    or h
    ld b, l
    ld bc, $839e
    ld [c], a
    cp e
    ldh [rNR33], a
    pop bc
    db $eb
    ld h, c
    sbc b
    and e
    ld a, [de]
    and d
    jr z, jr_055_6f37

jr_055_6f37:
    ld bc, $aa03
    db $e3
    adc a
    cpl
    cp h
    ld b, d
    add a
    ld hl, $e102
    db $fc
    pop bc
    call c, Call_000_06c3

jr_055_6f48:
    ld sp, $d240
    ld b, [hl]
    ccf
    jr nz, jr_055_6f6c

    pop bc
    jr z, @+$03

    sub $c2
    ld c, l
    ld b, $58
    rst $08
    jr nz, @+$44

    dec b
    pop bc
    inc b
    sbc a
    sbc h
    ld [bc], a
    db $e3
    xor a
    dec e
    ret nz

    inc a
    or c
    ld hl, $00aa
    sbc [hl]
    ld b, [hl]
    ld [bc], a

jr_055_6f6c:
    ld c, $ef
    add c

jr_055_6f6f:
    ld b, [hl]
    ldh [$f0], a
    ld h, h
    inc b
    sbc d
    ld h, $04
    ld c, b
    ld hl, sp+$03
    sbc a
    sbc h
    ld b, l
    ld b, e
    ld [bc], a
    rst $38
    ld [c], a
    ld b, l
    db $dd
    and b
    and $21
    pop hl
    nop
    ld e, b
    and b
    db $dd
    and c
    ld b, [hl]
    add sp, -$10
    rrca
    ld b, [hl]
    dec a
    ld [bc], a
    ld [bc], a
    ld b, e
    ld c, b
    ld b, h
    ld b, [hl]
    ld b, h
    and h
    ld h, h
    ld b, $ff
    ldh [$a5], a
    ld b, h
    sbc l
    and b
    scf
    ld h, c
    and l
    ld b, c
    sbc e
    and c
    or c
    push bc
    ld hl, sp+$4b
    ld [$ec46], sp
    ld c, b
    ld b, e
    ld b, [hl]
    ld b, b
    ld l, c
    and e
    dec [hl]
    rlca
    dec [hl]
    and e
    ld l, d
    ret nz

    pop hl
    dec hl
    rst $00
    and $a1
    dec de
    jp $23da


    ldh [rWX], a
    inc b
    adc b

Jump_055_6fc8:
    inc hl
    ld a, $02
    or $c1
    cp a
    jr nz, jr_055_6f6f

    ret nc

    ld b, b
    dec c
    ld l, c
    ret z

    ld b, c
    ld l, d
    ld b, h
    ld e, l
    and d
    xor h
    inc hl
    xor c
    ld [$0496], sp
    ld [hl], b
    rrca
    ld b, h
    call z, Call_000_02c3
    ld b, d
    ld a, [$d205]
    ld b, h
    ld l, e
    ld b, a
    ld b, c
    inc bc
    ld l, l
    ld b, h
    ld e, l
    and l
    sbc $08
    sub [hl]
    ld [$c9cc], sp
    push bc
    dec b
    ld a, [$0302]
    sbc a
    ret nc

    ret nz

    jp $80de


    ld [$2d02], a
    ld bc, $412f
    ld l, c
    ld bc, $9600
    dec b
    pop de
    ld b, $88
    ld [hl+], a
    ld [$3e24], sp
    push bc
    inc d
    db $e3
    ld l, $a1
    ld l, $c2
    nop
    ld h, d
    dec b
    ld hl, $92c1
    jp nz, $cccf

    cp d
    add [hl]
    ld [hl], d
    ld [$c72e], a
    call z, Call_000_00e5
    db $dd
    inc b
    sbc e
    ld [bc], a
    rst $10
    db $ed
    ld [hl], b
    xor e
    ld l, a
    and $f0
    and $68
    ld bc, $05dd
    nop
    ld b, a
    and a
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
    ld h, $05
    ld [bc], a
    ld bc, $0527
    ld [bc], a
    ld [bc], a
    dec h
    inc c
    ld [bc], a
    inc bc
    daa
    dec c
    ld [bc], a
    inc b
    ld h, $0e
    ld [bc], a
    dec b
    ld [hl+], a
    rla
    ld [bc], a
    ld b, $24
    rla
    ld [bc], a
    rlca
    ld hl, $0218
    ld [$1920], sp
    ld [bc], a
    add hl, bc
    inc h
    dec de
    ld [bc], a
    ld a, [bc]
    ld hl, $021d
    dec bc
    dec h
    jr nz, jr_055_7093

    inc c
    rra

jr_055_7093:
    ld [hl+], a
    ld [bc], a
    dec c
    ld a, [de]
    ld [hl-], a
    ld [bc], a
    ld c, $19
    inc sp
    ld [bc], a
    rrca
    ld e, $34
    ld [bc], a
    db $10
    jr jr_055_70da

    ld [bc], a
    ld de, $361e
    rst $38
    rst $38
    rst $38
    or c
    ld [hl], b
    pop bc
    ld [hl], l
    pop bc
    ld [hl], a
    ei
    rst $38
    nop
    cp $eb
    ld [hl+], a
    rst $18
    nop
    xor a
    ld d, b
    rst $38
    jp c, $fd25

    ld b, d
    cp a
    ld [hl+], a
    db $fd
    adc b
    rst $38
    db $eb
    dec d
    rst $30
    push af
    inc bc
    and $0e
    ret c

    rst $38
    add hl, de
    pop hl
    daa
    and [hl]
    ld l, a
    ret z

    ld e, l
    ld c, h
    rst $38
    db $db
    sub b
    cp a

jr_055_70da:
    db $fd
    inc bc
    ld a, [$fa02]
    rst $38
    ld b, $f4
    dec b
    db $e4
    dec c
    reti


    dec sp
    ld h, d
    rst $28
    rst $20
    add h
    sbc a
    jr z, @-$2e

    ldh [rP1], a
    jp c, $ff00

jr_055_70f3:
    db $fd
    inc b
    ei
    ld hl, $46ff
    and a
    jr c, jr_055_70f3

    cp $4f
    add sp, -$02
    pop hl
    sub a
    ret c

    sub a
    ret nc

    cp a
    cpl
    or b
    ld e, a
    ld h, b
    sbc a
    ret nz

    and b
    push hl
    cp $ff
    ld bc, $03f1
    and $0f
    cp b
    ld a, [hl]
    ret z

    rst $38
    ld l, a
    jp z, $486d

    ld [$dd90], a
    sub b
    rst $38
    rst $18
    jr z, jr_055_70da

    ld b, b
    ld l, e
    add b
    rst $30
    rst $38
    push af
    nop
    xor [hl]
    ldh [$03], a
    xor [hl]
    ldh [$0d], a
    ret


    dec de
    or d
    rst $38
    ld [hl], a
    call nz, $c96f
    dec c
    jp nc, $d21b

    rst $38
    dec sp
    db $e4
    scf
    db $e4
    scf
    and [hl]
    ld [hl], l
    ret z

    rst $28
    ld l, a
    ret z

    ld l, a
    ld sp, hl
    add b
    pop hl
    add hl, sp
    pop hl
    rst $20
    rst $38
    ld b, $1f
    add hl, de
    rst $38
    ld [c], a
    db $fd
    db $10
    ld a, [$fbff]
    nop
    rst $30
    rlca
    ret c

    rra

jr_055_7161:
    ldh [$78], a
    rst $38
    add a
    rst $20
    ld a, [de]
    sbc l
    ld h, b
    ld a, d
    add b
    db $fd
    db $fc
    jp nc, $d0e0

    pop hl
    rst $30
    inc b
    rst $28
    jr jr_055_7193

    ldh [$f7], a
    rst $28
    nop
    rst $10
    ldh [$e0], a
    rrca
    ret c

    jr c, jr_055_7161

    rst $38
    scf
    and a
    ld l, a
    ret z

    ld e, a
    ret z

    ld e, d
    ret z

    rst $38
    ld e, l
    nop
    rst $38
    db $10
    ld a, [$ad00]
    nop

jr_055_7193:
    rst $38
    rst $18
    db $e4

jr_055_7196:
    rst $38
    jr jr_055_7196

    inc b

jr_055_719a:
    rra
    ld [c], a
    db $fd
    rst $20
    db $10
    push hl
    rst $28
    ldh a, [rNR31]
    db $fc
    dec b
    ld e, $ff
    db $e3

jr_055_71a8:
    and $4f
    add sp, -$71
    ret z

    cpl
    sbc b
    rst $28
    rla
    jr c, jr_055_719a

    ldh a, [$f6]
    jp Jump_055_6fc8


jr_055_71b8:
    ld [$cdff], a
    ld c, b
    sbc d
    db $10
    dec a
    ldh [rIE], a
    jr nz, @+$01

    db $fd
    ld [de], a
    db $eb
    nop
    rst $30
    sub e
    cp b
    cpl
    rst $30
    ld h, b
    ld e, a
    ret nz

    jr c, jr_055_71b8

    ld [$309f], sp
    ld a, a
    rst $38
    ld d, b
    ld l, d
    ld b, h
    db $fd
    add b
    rst $38
    jr z, @-$09

    ld sp, hl
    nop
    ldh [$e0], a
    ret nz

    jp Jump_000_01fc


    db $e3
    rlca
    sbc h
    ld e, a
    inc a
    ld h, b
    db $e3
    add e
    sbc a
    ld d, b

jr_055_71f0:
    pop hl
    sbc b

jr_055_71f2:
    ld d, b
    ld [c], a
    rst $38
    jr jr_055_71f2

    ld [c], a
    push af
    nop
    rst $38
    cp $01
    rst $38
    rst $20
    rrca
    ret c

    ccf
    ld h, b
    ld hl, sp-$79
    rst $20
    ei
    jr jr_055_71a8

    ld d, b
    pop hl
    pop bc
    ld sp, hl
    ld b, $c7
    jr c, jr_055_7290

    ld a, [hl-]
    ret nz

    db $dd
    inc b

jr_055_7215:
    ei
    jr nz, jr_055_7215

    ret nz

    push hl
    rst $18
    cp $01
    rst $38
    ld bc, $faf9

jr_055_7221:
    pop bc
    rlca
    db $f4
    rst $38
    ld b, $48
    rst $28
    sub b
    jp c, $dd90

    inc h
    sbc a
    xor e
    jr nz, jr_055_71f0

    ld d, b
    ld a, l
    ldh [$c3], a
    ld e, [hl]
    jp $ffe7


    rrca
    sbc b
    jr c, jr_055_729d

    rst $20
    add a
    sbc a
    ld [$ffff], sp
    nop
    xor a
    jr nz, jr_055_7221

    ld b, b
    db $ed
    rlca
    rst $30
    rst $38
    jr @-$06

    ldh a, [$e1]
    dec bc
    sbc h
    inc sp
    ld a, b
    cp l
    ld b, a
    ld e, [hl]
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    inc [hl]
    pop bc
    sub b
    rst $38
    or a
    inc h
    ld l, a
    ld b, h
    ei
    add b
    rst $38
    ld b, b
    rst $28
    cp a
    ld [bc], a
    ld e, e
    ld [hl+], a
    add b
    ldh [rOBP0], a
    rst $08
    ld c, b
    rst $38
    rst $18
    sub h
    cp c
    sub b
    cp e
    sub b
    cp a
    ld d, b
    rst $38
    db $fd
    ld c, b
    rst $18
    ld c, d
    rst $08
    sub b
    sbc a
    sub b
    rst $38
    rst $18
    ld c, b
    ld [$6d4a], a
    ld c, b
    ld l, a
    ld d, b
    rst $38
    push af
    sub b

jr_055_7290:
    rst $10
    sub d
    sub a
    ld c, e
    ret z

    ld c, e
    rst $38
    ret c

    sub a
    cp b
    sub a
    or b
    sub a

jr_055_729d:
    or b
    ld d, a
    rst $38
    ret c

    ld c, e
    ret c

    ld c, e
    ret z

    sub a
    sub b
    sub a
    db $fd
    ret c

    inc a
    ret nz

    ld l, b
    ld c, a
    ld l, b
    ld d, a
    ld hl, sp-$61
    rst $30
    ret nc

    sbc a
    sub b
    ldh [$a3], a
    cp l
    ld a, [hl]
    jp $9fff


    nop
    jp Jump_000_3c3c


    jp $e0f9


    ld [hl], d
    ld [c], a
    db $76
    ld a, a
    sbc c
    rst $38
    nop
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld [hl], b
    ldh [$bf], a
    ld [bc], a
    xor l
    ld [bc], a
    jp c, $fd3c

    ldh [$e4], a
    ei
    cp [hl]
    ldh a, [$e0]
    xor a
    nop
    reti


    db $76
    rst $28
    ldh [$e4], a
    rst $18
    rst $18
    ld bc, $0603
    ld c, $18
    ldh a, [$c8]
    dec de
    ld a, b
    rst $20
    ld h, a
    ldh [$df], a
    ld d, [hl]
    ld [c], a
    add [hl]
    and e
    ld d, b
    xor a
    dec h
    rst $38
    jp c, $b807

    rlca
    db $fd
    and d
    ld e, a
    ldh [rIE], a
    rla
    push hl
    cp d
    ld b, d
    db $fd
    db $fd
    db $fd
    rst $18
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    ei
    rst $28
    rst $38
    or $e0
    xor l
    rst $28
    db $76
    rst $38
    and $fe
    xor $e0
    db $e4
    db $eb
    ld [hl], h
    rst $30
    ld c, b
    rst $38
    add b
    rst $38
    cp e
    db $eb
    rst $38
    ld a, h
    rst $38
    ld d, b
    rst $10
    xor h
    db $fd
    db $eb
    ld h, a
    pop hl
    ld b, b
    or l
    nop
    ei
    ld bc, $ffff
    ld [bc], a
    rst $10
    db $10
    db $ed
    dec b
    rst $38
    inc bc
    rst $38
    rst $38
    ld a, [hl+]
    jp c, $bd08

    dec d
    rst $38
    ld c, $ff
    rst $38
    ld b, l
    rst $30
    ld a, [bc]
    cp $25
    rst $28
    sbc e
    rst $30
    rst $38
    ld e, $ff
    db $76
    cp [hl]
    db $db
    rst $38
    cp $ff
    rst $38
    push af
    push af
    ld l, b
    rst $28
    call nc, $b8ff
    xor a
    rst $38
    ret nc

    jp c, $fda5

    ld d, d
    rst $38
    ld [bc], a
    ei
    rst $38
    ld b, l
    xor a
    ld d, [hl]
    jp c, $fe22

    dec b
    rst $38
    rst $38
    ld h, $fd

jr_055_737f:
    inc bc
    cp e
    ld bc, $b9fd
    ei
    rst $38
    ld [hl], h
    rst $10
    ld a, [hl+]
    db $ed
    ld [bc], a
    rst $38
    jr nz, @-$24

    cp $da
    and c

jr_055_7391:
    nop
    ei
    call c, $faff
    ei
    db $f4
    rst $38
    rst $38
    and $eb
    db $f4
    rst $30
    ld l, b
    rst $38
    jp nc, $fffb

    add sp, $76
    ldh [$fa], a
    cp $ad
    db $fd
    ld e, e
    rst $08
    rst $18

jr_055_73ad:
    adc b
    push af
    db $10
    push de
    add d
    db $76
    ret nz

    jr jr_055_7391

    rst $38
    inc a
    and l
    ld a, [hl]
    jp $c366


    ld h, [hl]
    sbc c

jr_055_73bf:
    db $fd
    ld b, d
    jp nz, $b781

    ld a, b
    adc e
    inc a
    push bc
    ld c, $bf
    push bc
    ld c, $8b
    inc a
    or a
    ld a, b
    or d
    add c
    rst $18
    rst $38
    ld a, $e7
    ld a, [hl]
    inc bc
    adc $33
    add [hl]
    push af
    rst $18
    ld b, $e7
    inc c
    rst $20
    jr @-$68

    and b
    db $10
    rst $10
    ld a, a
    jr c, @-$53

    ld a, h
    rst $00
    ld l, h
    sub e
    ld b, h
    sub h
    add l
    rst $38
    rst $10
    jr c, jr_055_73bf

    inc e
    push hl
    ld c, $cb
    inc e
    ei
    rst $10
    jr c, jr_055_737f

    add h
    inc a
    add a
    ld a, h
    rst $30

jr_055_7402:
    inc c
    ld hl, sp-$02

jr_055_7405:
    ldh [rNR44], a
    ret nz

    ld h, h
    and d
    db $10
    rst $28
    jr jr_055_7405

    inc c
    rst $20
    rst $28
    jr jr_055_7402

    adc l
    db $e3
    dec a
    and b
    rst $28
    jr c, jr_055_73ad

    ld a, l
    ld l, h
    ld d, [hl]
    add a
    rst $08
    inc a
    rst $38
    inc b
    ei
    cp $e0
    db $fc
    ld b, h
    add c
    ld b, c
    adc h
    rst $38
    add b
    cp a
    ld b, b
    rst $38
    ld h, b
    rst $38
    rst $18
    jr nz, @+$01

    and b
    cp a
    jr nz, @+$71

    db $10
    rst $30
    rst $30
    ld d, b
    rst $30
    ldh a, [$e3]
    and b
    ld a, a
    and b
    ld l, a
    ei
    ret nc

    scf
    cp $e1
    db $10
    rst $30
    ld [$08db], sp
    rst $38
    ei
    ld b, h
    rst $38
    and h
    cp l
    ld c, $5b
    ld [bc], a
    rst $38
    or $41
    rst $38
    cp a
    ret nz

    ld e, a
    ld h, b
    ld e, a
    ld a, a
    ld h, b
    cpl
    or b
    cpl
    or b
    rla
    ret c

    cp $e1
    cp $c0
    ldh [$df], a
    or b
    ld l, a
    ldh [$2f], a
    call nc, $ff33
    db $ec
    dec e
    ld a, [c]
    ld c, $fd
    inc bc
    add b
    cp a
    cp $b2
    pop hl
    jr nz, @-$0f

    db $10
    or e
    inc c
    db $ed
    ld [hl+], a
    ld a, h
    ld d, a
    and b
    inc sp
    add l
    ld c, $ce
    ld [hl-], a
    cp a
    ld d, b
    ld b, b
    add b
    ld a, l
    ld bc, $a030
    inc a
    ld a, [hl-]
    push hl
    db $dd
    ld [bc], a
    ld l, b
    and b
    ld sp, hl
    ld d, b
    adc b
    ldh [rNR13], a
    add h
    ld sp, hl
    ld c, $ef
    ld sp, $ffbe
    ld c, a
    ld [hl], b
    cp a
    ret nz

    ld bc, $06fd
    rst $20
    sbc a
    add hl, sp
    ld a, $c7
    ld hl, sp+$3f
    or $64
    sub c
    ld h, b
    rst $00
    rst $00
    jr c, jr_055_74f7

    rst $00
    or d
    and b
    add [hl]
    ld h, e
    ld l, d
    pop hl
    add sp, $1b
    ld a, [c]
    cp $e2
    rra
    ld e, [hl]
    pop hl
    ld [hl], c
    ld h, a
    jr nz, @-$3b

    inc e
    inc e
    rst $28
    db $e3
    db $e3
    add b
    cp a
    dec h
    and b
    rst $38
    ld b, b
    ld e, a
    rst $28
    ld b, b
    ld e, a
    add b
    cp a
    cp $e1
    db $e3
    jp $f33e


    cp a
    ld [hl], b
    ld h, b
    ld h, b
    sub b
    ldh [rIE], a
    ld [$14eb], sp
    rst $38
    rst $30
    add b
    rst $38

jr_055_74f7:
    sub b
    xor a
    ld d, b
    ld e, d
    ld h, l
    rst $38
    db $fd
    ld b, d
    rst $38
    ld b, b
    rst $38
    ret z

    xor e
    sub h
    rst $38
    rst $30
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ld a, a
    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    add c
    rst $38
    ld hl, sp+$07
    db $e4
    rra
    call nz, $c43f
    ccf
    db $fd
    cp h
    ldh a, [$e2]
    ld a, a
    add b
    rra
    ldh [rTAC], a
    db $fc
    sbc $fe
    pop hl
    dec a
    cp $01
    cp $ce
    jp nz, $847f

    db $fd
    ld a, a
    ldh [$e1], a
    db $fc
    ccf
    ld hl, sp+$07
    cp $01
    cp a
    nop
    rst $38
    ld bc, $05fe

Jump_055_7546:
    cp $de
    pop hl
    ccf
    rlca
    db $fc
    rra
    ldh [$ac], a
    add b
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
    rst $30
    or $00
    nop
    nop
    nop
    nop
    nop

Call_055_75c4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_055_7708:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push af
    ld h, [hl]
    rst $38
    db $e4
    sbc c
    rst $38
    db $e4
    ld h, [hl]
    ld l, d
    ld l, d
    xor d
    rst $30
    ld l, d
    xor c
    xor d
    ld hl, sp-$20
    ld h, [hl]
    xor d
    ld l, d
    xor d
    cp e
    xor d
    xor c
    add sp, -$1c
    xor d
    xor d
    ld h, [hl]
    cp $e1
    and [hl]
    ld a, h
    pop de
    db $e3
    call c, $aae0
    sbc c
    xor d
    sbc c
    xor c
    cp $e0
    call nz, $e1f2
    sub $e0
    xor c
    db $fc
    pop hl
    cp $e0
    ret nz

    ld [c], a
    xor d
    xor a
    inc bc
    xor a
    rst $38
    db $db
    ldh [$c2], a
    ldh [$e0], a
    ldh [$b2], a
    pop hl
    ld hl, sp-$1f
    ldh a, [$e0]
    ld a, [hl-]
    and [hl]
    ldh [$af], a
    or e
    ld [c], a
    sbc c
    xor d
    xor c
    adc b
    pop hl
    xor h
    ldh [rSB], a
    and [hl]
    xor b
    pop hl

Call_055_781b:
    db $f4
    ld [c], a
    or b
    ldh [$97], a
    ld [c], a
    sbc h
    db $e4
    and d
    pop hl
    ld [hl], b
    ld [c], a
    nop
    rst $10
    ld [c], a
    add c
    ldh [$8c], a
    pop hl
    or b
    pop hl
    add h
    pop hl
    ld l, c
    ldh [$65], a
    push hl
    add b
    ld [c], a
    db $10
    ld d, h
    ldh [rSVBK], a
    add sp, -$7a
    pop hl
    or e
    ld [c], a
    sbc d
    ret z

    ldh [$b0], a
    db $ed
    ld c, b
    pop hl
    nop
    db $fc
    ld [$e228], a
    ld a, [$91e7]
    db $e4
    ld l, e
    ld [c], a
    pop bc
    pop hl
    inc bc
    db $e3
    ld hl, sp-$19
    and a
    nop
    nop
    nop
    ld e, b
    db $e4
    add $c3
    ld de, $f1ff
    add hl, de
    ld d, e
    add hl, de
    sbc c
    ei
    ldh [$ad], a
    push bc
    sub c
    cp $e0
    ld de, $e1fe
    dec c
    sub c
    ld [c], a
    db $e4
    ld de, $e499
    and $f8
    and $ea
    ldh [$e8], a
    ld [c], a
    ld b, b
    or b
    pop hl
    ld [$ffe6], sp
    rst $38
    rst $38
    cp $fd
    pop bc
    ld sp, hl
    pop bc
    sbc d
    cp $e0
    sub b
    add a
    pop bc
    ld a, d
    pop bc
    dec [hl]
    pop bc
    ld b, c
    ret nz

    sbc d
    cp $e0
    ld b, b
    ret nz

    and [hl]
    nop
    cp $c3
    add sp, -$1d
    dec c
    ret nz

    ret c

    ld [c], a
    push bc
    pop bc
    ld b, d
    ret nz

    rlca
    pop bc
    rst $38
    and l
    ld [bc], a
    ld a, e
    ret nz

    or $d4
    ldh [rNR51], a
    pop bc
    call c, $c1c8
    push bc
    rst $38
    db $ed
    rra
    db $ed
    inc b
    ld d, [hl]
    rst $38
    db $76
    and e
    rst $38
    rst $38
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
    ei
    ld a, [$0000]
    nop
    ld [$3879], sp
    ld a, c
    call nz, Call_055_6d7a
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
    rst $38
    ld a, a
    ld [$4403], a
    ld [bc], a
    ld b, b
    dec d
    cp a
    nop
    add [hl]
    ccf
    inc h
    ld l, $40
    dec d
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    dec hl
    dec hl
    ld a, [bc]
    cp $e1
    ld c, e
    cp $ea
    dec c
    rst $38
    rst $38
    rst $20
    and $0a
    pop bc
    ldh [$0b], a
    rst $38
    rst $20

jr_055_794b:
    dec hl
    or a
    ld [c], a
    jp z, $e8ff

    rst $20
    pop bc
    ld [$bf30], a
    db $e4
    jp z, $80ff

    add sp, -$7e
    ldh [rOCPD], a
    ld c, e
    rst $38
    push hl
    ld a, [hl]
    db $e3
    ld a, h
    jp z, $80ff

    add sp, $2b
    dec bc
    ld l, e
    dec bc
    dec hl
    rst $38
    db $e3
    ld b, b
    ld b, c
    ldh [$3d], a
    ld [c], a
    jp z, Jump_000_00ff

    jp hl


    rlca
    db $e3
    cp l
    ldh [rOCPD], a
    cp a
    push hl
    jr c, jr_055_794b

    rst $38
    add b
    ld [$c2c7], a
    ld l, e
    ld c, e
    ld l, e
    rst $38
    ldh [$7e], a
    ld [c], a
    ld d, h
    ret nz

    rst $38
    add b
    ret


    ld l, e
    nop
    ldh [rOCPD], a
    pop bc
    ldh [rWX], a
    cp a
    ldh [$0d], a
    dec hl
    dec [hl]
    ldh [$0b], a
    ld c, e
    ret nz

    rst $38
    add b
    db $ec
    pop bc
    jp nz, $e040

    sub b
    ld a, [hl]
    pop hl
    ld sp, $00e0
    rst $38
    nop
    db $eb
    dec hl
    ret nz

    db $e3
    ld b, b
    pop hl
    ld c, e
    add b
    ld [hl], d
    ldh [rLCDC], a
    rst $38
    ld [$4fe9], a
    ldh [$bf], a
    db $e3
    add c
    pop hl
    or [hl]
    and d
    ld l, e
    inc b
    ret nz

    rst $38
    add b
    xor c
    ld c, e
    cp a
    db $e4
    pop bc
    rst $20
    ld b, b
    rst $38
    jp hl


    add sp, $06
    and b
    inc d
    ld a, [hl]
    pop hl
    inc a
    and h
    ld l, e
    pop bc
    pop hl
    dec bc
    jp z, $80ff

    jp hl


    ld a, [hl]
    pop hl
    nop
    ld a, a
    and h
    add h
    ldh [rLCDC], a
    cp a
    add b
    xor $3d
    ldh [$c1], a
    ld_long $ff00, a
    add b
    db $ec
    inc de
    ld a, [bc]
    ld c, e
    ld b, b
    sbc a
    or $f5
    ld c, l
    rst $38
    pop af
    ret


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

Jump_055_7a8e:
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
    or $00
    nop
    nop
    adc e
    add hl, hl

jr_055_7ac6:
    jr z, jr_055_7ac6

    rst $28
    ld d, c
    rst $38
    rst $38
    rst $20
    and $c1
    ldh [$2e], a
    add l
    jr nc, @+$01

    and $2e
    or c
    ld [c], a
    jp z, $e8ff

Jump_055_7adb:
    rst $20
    pop bc
    ldh [rSB], a

jr_055_7adf:
    ldh [rIE], a
    add sp, -$41
    ld [c], a
    jp z, $80ff

    add sp, -$3f
    ldh [$0c], a
    inc hl
    ld [hl+], a
    dec de
    inc hl
    ld [hl+], a
    db $fd
    ldh [rNR44], a
    inc c
    cp a
    db $e3
    jp z, $80ff

    add sp, -$01
    cpl
    ld bc, $120c
    nop
    nop
    scf
    scf
    rra
    scf
    inc [hl]
    nop
    add hl, sp
    ld [de], a
    cp a
    db $e3
    jp z, Jump_000_00ff

    add sp, -$01
    cpl
    ld bc, $3b20
    ld [hl], $36
    dec sp
    jr c, jr_055_7adf

    ret nz

    ldh [rP1], a
    dec sp
    cp a
    db $e3
    jp z, $80ff

    ld [$3820], a
    ld a, a
    ld [hl], $36
    jr c, jr_055_7b2a

jr_055_7b2a:
    jr c, jr_055_7b64

    dec [hl]
    cp a
    db $e3
    ld a, c
    cpl
    ret nz

    rst $38
    add b
    ret


    inc l
    ld bc, $0020
    rst $38
    ldh [$3c], a
    cp h

jr_055_7b3d:
    pop hl
    cp a
    ldh [$3a], a
    jr nz, jr_055_7b44

    inc l

jr_055_7b44:
    ret nz

    rst $38
    add b
    db $ec
    ld [hl], c
    inc sp
    rst $38
    pop hl
    cp l
    ldh [$7e], a
    pop hl
    jr nz, jr_055_7b53

    cpl

jr_055_7b53:
    nop
    rst $38
    xor $00
    db $eb
    inc c
    ld [de], a
    ld [hl], $ff
    ldh [rP1], a
    nop
    dec [hl]
    daa
    jr c, jr_055_7b9b

    inc sp

jr_055_7b64:
    ld b, b
    rst $38
    nop
    call $402d
    ret nz

    cp a
    pop hl
    rrca
    nop
    dec [hl]
    dec [hl]
    ld [de], a
    ld a, $c4
    jp z, $80ff

    xor c
    cp a
    db $e4
    jr nz, jr_055_7b3d

    ldh [rSB], a
    ret nz

    ld b, b
    rst $18
    add b
    xor [hl]
    ld a, [hl]
    ld [c], a
    inc hl
    rst $38
    ldh [$c2], a
    and b
    ld hl, $c02b
    cp a
    nop
    xor a
    dec a
    pop hl
    inc a
    and e
    ld a, [hl+]
    ret nz

    sbc a
    add b
    ldh a, [$30]
    dec a

jr_055_7b9b:
    ldh [$c2], a
    adc c
    add b
    rst $38
    add b
    db $ed
    jr z, jr_055_7bcd

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
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_055_7bcd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld d, c
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_055_7f90:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
