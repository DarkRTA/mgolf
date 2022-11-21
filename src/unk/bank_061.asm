INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $061", ROMX[$4000], BANK[$61]

    db $0c, $40, $b8, $49

    ld d, l
    ld d, e
    ld [hl], c
    ld e, e
    ld l, d
    ld h, l
    ld c, l
    ld l, [hl]

    db $14, $40, $31, $44, $06, $49, $21, $49, $3f, $0e, $0e, $0d, $0d, $0d, $0e, $fa
    db $e2, $f9, $e0, $03, $4d, $4d, $fc, $fb, $d6, $e4, $fa, $e8, $c5, $e0, $fd, $e3
    db $b9, $e3, $00, $b6, $e0, $bc, $e1, $f8, $e5, $b0, $e9, $fe, $fc, $7f, $e1, $7e
    db $e2, $7d, $e1, $26, $f8, $e2, $4d, $0d, $fb, $e1, $ef, $e0, $2d, $f8, $e2, $e9
    db $e2, $60, $c9, $f0, $6d, $ec, $c3, $e2, $36, $e0, $c3, $e0, $6d, $6b, $ff, $e3
    db $a0, $bd, $e3, $9b, $e5, $d0, $ed, $7d, $e9, $83, $e7, $0d, $c3, $e1, $0d, $00
    db $bf, $e4, $bd, $e0, $7c, $e1, $38, $fd, $80, $e4, $47, $e1, $c1, $e2, $c0, $e2
    db $02, $bc, $e4, $6d, $fe, $d6, $80, $c7, $00, $e4, $c3, $e4, $43, $e4, $bc, $e3
    db $c1, $0d, $c0, $e1, $62, $c3, $80, $de, $84, $e7, $bc, $e6, $0d, $6d, $c0, $66
    db $c7, $0b, $ec, $40, $ca, $00, $c2, $92, $e0, $04, $e5, $2b, $0b, $c0, $42, $e7
    db $6b, $c3, $c0, $ed, $f3, $a9, $80, $e5, $c8, $c6, $0b, $0b, $03, $2b, $2b, $c1
    db $c4, $68, $c5, $7a, $ce, $e7, $a8, $82, $a3, $10, $c0, $38, $89, $c6, $bf, $e0
    db $7e, $e3, $4d, $2d, $2d, $e8, $a5, $8a, $aa, $f8, $a9, $b0, $bf, $e2, $46, $c0
    db $0b, $0b, $0b, $6b, $4b, $17, $4b, $4b, $0b, $3a, $c0, $0b, $fe, $e0, $3e, $c4
    db $80, $d8, $20, $04, $a6, $8e, $a0, $c0, $e4, $00, $e0, $c0, $e5, $0d, $79, $a3
    db $dc, $83, $1b, $2d, $2d, $00, $ae, $4d, $6d, $9c, $c2, $fe, $83, $81, $e2, $5d
    db $0d, $02, $e0, $4b, $0b, $4b, $38, $c5, $0b, $38, $a0, $18, $fa, $87, $ef, $c0
    db $03, $ec, $6d, $6d, $82, $87, $4d, $e0, $c0, $e1, $b3, $6b, $0b, $40, $e1, $b6
    db $a4, $0b, $0b, $fc, $a5, $2d, $10, $b2, $c0, $c0, $e5, $80, $cf, $7c, $82, $2d
    db $0d, $e0, $82, $c0, $00, $e1, $c0, $3d, $c2, $c0, $e6, $87, $ae, $7e, $d0, $fc
    db $a2, $44, $c0, $0a, $0a, $80, $bf, $c0, $c3, $c0, $34, $c4, $7c, $a0, $fc, $9f
    db $7c, $a5, $c1, $e2, $2a, $02, $40, $e0, $2b, $ff, $c0, $7c, $e1, $c1, $e1, $3d
    db $92, $80, $65, $00, $e9, $1e, $c0, $e0, $0d, $6b, $2a, $0a, $40, $e0, $bb, $a0
    db $c4, $c1, $a0, $5b, $60, $e1, $c4, $7a, $6c, $80, $67, $80, $ca, $6d, $82, $c0
    db $2a, $81, $2a, $00, $e1, $7b, $e0, $84, $c0, $00, $82, $bd, $74, $00, $ae, $0d
    db $53, $4d, $6d, $c3, $a0, $c2, $a2, $4b, $fb, $c0, $6a, $b6, $a0, $20, $83, $e5
    db $00, $bf, $77, $e0, $05, $c1, $ff, $e2, $6b, $7f, $a0, $bf, $e3, $a0, $04, $c2
    db $c6, $c6, $00, $b9, $c1, $e1, $c0, $e4, $2b, $80, $c1, $4b, $8f, $0b, $0a, $0a
    db $0a, $41, $a4, $86, $df, $86, $c1, $0d, $08, $48, $e1, $c1, $e2, $c0, $e4, $2a
    db $37, $e1, $82, $aa, $00, $b7, $86, $c1, $c1, $0b, $89, $a0, $06, $e2, $40, $c1
    db $ff, $a0, $f8, $c1, $0d, $4b, $80, $7e, $63, $59, $44, $00, $4f, $a2, $84, $52
    db $40, $87, $80, $c6, $c1, $6b, $01, $0a, $40, $c1, $bf, $a1, $b1, $e1, $c0, $e3
    db $8b, $b2, $49, $86, $00, $84, $00, $bf, $e0, $91, $e0, $bf, $e1, $40, $a1, $b9
    db $e0, $79, $e2, $82, $a6, $80, $7e, $20, $03, $a0, $c0, $e2, $85, $a0, $80, $a1
    db $c1, $c0, $0a, $c1, $e4, $fc, $24, $8c, $ca, $2a, $7e, $71, $0d, $2d, $06, $c2
    db $c8, $c2, $bf, $e2, $4b, $00, $02, $e0, $00, $65, $7a, $df, $46, $20, $87, $a1
    db $48, $c1, $f8, $a2, $81, $e0, $21, $4b, $7f, $a5, $00, $58, $ca, $08, $01, $e3
    db $2a, $ba, $a3, $71, $c1, $10, $82, $61, $00, $67, $80, $11, $82, $8a, $6d, $4f
    db $c1, $42, $40, $7a, $a3, $40, $c0, $e1, $00, $c1, $46, $ff, $86, $03, $c1, $e1
    db $0f, $c0, $2b, $c0, $e4, $20, $3a, $c2, $bf, $a0, $ba, $04, $bb, $6d, $b0, $0f
    db $0d, $81, $c4, $41, $e5, $00, $bf, $a4, $7c, $a6, $3d, $2a, $34, $0c, $20, $42
    db $41, $c3, $c1, $e6, $bf, $a4, $00, $33, $40, $7e, $7b, $fe, $06, $41, $c0, $46
    db $62, $c0, $c6, $ed, $82, $e8, $80, $00, $7a, $11, $b0, $0d, $00, $42, $7f, $a1
    db $bd, $22, $bf, $c3, $c0, $e4, $7a, $10, $04, $7d, $ed, $d8, $04, $2d, $3f, $a2
    db $01, $e8, $bc, $82, $de, $26, $77, $76, $01, $0d, $1b, $a5, $c6, $84, $c1, $ca
    db $bc, $65, $7a, $c9, $80, $0b, $3c, $02, $80, $fd, $03, $00, $a3, $41, $e6, $fd
    db $e1, $00, $5f, $00, $e4, $39, $82, $4b, $00, $7b, $22, $82, $a3, $42, $e3, $7e
    db $63, $82, $21, $bb, $bf, $3d, $a0, $7c, $03, $00, $01, $e5, $40, $44, $80, $18
    db $7e, $47, $fd, $86, $fa, $42, $c1, $62, $83, $26, $48, $00, $56, $74, $07, $3e
    db $81, $4d, $3c, $a1, $ff, $82, $2b, $b3, $61, $00, $00, $5f, $00, $42, $00, $c5
    db $fe, $82, $80, $e6, $c7, $a2, $00, $46, $46, $0b, $04, $80, $11, $c1, $e5, $0d
    db $7f, $82, $c0, $42, $00, $4a, $bd, $4a, $00, $b0, $00, $c4, $c1, $c0, $e3, $39
    db $41, $82, $84, $00, $45, $42, $65, $00, $b9, $7f, $84, $00, $3e, $a3, $83, $84
    db $00, $48, $88, $8b, $00, $b3, $4f, $83, $46, $01, $43, $85, $00, $00, $42, $c4
    db $42, $80, $78, $fc, $02, $81, $a3, $3d, $42, $78, $81, $01, $a4, $00, $84, $85
    db $00, $54, $00, $a6, $7e, $e7, $3c, $61, $c5, $85, $00, $45, $cb, $0d, $00, $00
    db $af, $7e, $47, $fa, $c4, $41, $22, $81, $a3, $50, $73, $7e, $d0, $7f, $83, $40
    db $84, $e5, $40, $43, $04, $5f, $b6, $29, $bd, $20, $80, $44, $0d, $40, $41, $24
    db $86, $71, $00, $51, $0d, $a2, $80, $fc, $a4, $2b, $77, $00, $ff, $84, $80, $c3
    db $84, $00, $e3, $80, $d9, $62, $86, $c0, $eb, $04, $c7, $80, $dc, $2d, $20, $ff
    db $e1, $fc, $03, $40, $41, $be, $e0, $31, $02, $4d, $6a, $e4, $c4, $02, $04, $00
    db $5b, $fc, $25, $6d, $00, $4a, $cb, $8d, $80, $14, $7a, $07, $bc, $20, $00, $c0
    db $25, $7f, $81, $40, $82, $08, $b5, $f4, $32, $41, $60, $41, $a0, $fe, $80, $c3
    db $6b, $6b, $b8, $a0, $4c, $78, $b0, $cb, $7f, $45, $4d, $0d, $01, $2d, $44, $a7
    db $82, $60, $86, $0f, $80, $d2, $9c, $06, $7c, $61, $ff, $e6, $00, $08, $48, $c9
    db $bd, $20, $46, $ff, $ea, $0c, $4b, $80, $df, $ba, $c5, $4c, $ae, $06, $13, $ec
    db $0e, $0e, $00, $00

    nop

    db $bf, $dd, $de, $a0, $a0, $a0, $dc, $fa, $e2, $a0, $1b, $d8, $d9, $fc, $e7, $d2
    db $d3, $fc, $ef, $e0, $e0, $d6, $e3, $7e, $fa, $e8, $e2, $e3, $e4, $df, $e0, $e1
    db $fa, $e0, $7e, $b9, $e0, $da, $db, $d6, $d7, $da, $db, $f8, $e1, $bf, $d0, $d1
    db $d4, $d5, $a0, $a0, $fc, $eb, $d0, $c7, $d1, $da, $db, $d6, $e2, $d0, $e3, $fa
    db $e4, $e8, $e9, $8f, $ea, $e5, $e6, $e7, $fa, $e0, $7f, $e1, $7e, $e2, $a0, $7b
    db $d0, $d1, $82, $e2, $a0, $a0, $9f, $9d, $ff, $e3, $01, $9f, $e4, $e2, $6e, $e0
    db $d6, $e3, $fa, $ea, $73, $ea, $86, $e2, $45, $e1, $ac, $82, $e0, $c3, $e0, $9c
    db $46, $ff, $e3, $9c, $bd, $e2, $d4, $07, $d5, $d6, $d7, $1a, $e1, $3d, $eb, $73
    db $e9, $9a, $e4, $45, $e1, $0b, $a0, $9f, $c3, $e1, $ae, $bf, $e4, $bd, $e0, $7c
    db $e1, $e0, $c1, $78, $43, $ea, $07, $e0, $6d, $e9, $a0, $a0, $d6, $d7, $c3, $e3
    db $2b, $9d, $a2, $84, $e2, $af, $bc, $e7, $9e, $29, $e0, $e0, $c1, $00, $3d, $ed
    db $80, $c9, $00, $e4, $84, $e3, $85, $e5, $bc, $e3, $80, $e0, $7e, $c4, $80, $3d
    db $ec, $80, $c9, $82, $c1, $c3, $c0, $c1, $e3, $44, $e7, $78, $e0, $9c, $41, $9f
    db $6e, $c3, $5e, $c1, $3d, $eb, $80, $c9, $08, $c4, $9e, $08, $e2, $0e, $44, $e1
    db $46, $45, $45, $42, $e5, $f0, $a0, $68, $c0, $dc, $a2, $c8, $80, $d6, $00, $c1
    db $08, $c0, $9e, $c4, $e3, $83, $c0, $bd, $2c, $03, $2c, $bd, $c1, $c4, $f0, $a0
    db $bd, $e2, $7e, $e2, $80, $d6, $00, $c2, $de, $01, $e7, $2d, $20, $20, $32, $7e
    db $e3, $9c, $a2, $81, $9f, $b1, $a1, $fc, $c5, $80, $d3, $00, $e4, $44, $c1, $46
    db $c3, $45, $0f, $2a, $26, $24, $42, $3a, $c4, $3e, $c2, $fc, $a1, $7a, $cb, $ec
    db $00, $ad, $86, $a2, $9f, $9c, $3e, $e4, $39, $35, $3c, $85, $44, $32, $e4, $ae
    db $fd, $a2, $dc, $86, $00, $b5, $18, $a1, $a0, $fb, $a0, $a1, $7e, $c3, $44, $3a
    db $35, $35, $40, $40, $38, $c6, $bc, $a0, $fc, $a3, $7a, $c9, $00, $af, $86, $81
    db $9e, $c2, $a3, $1f, $40, $35, $35, $35, $39, $82, $e3, $7a, $c6, $5a, $85, $f0
    db $00, $b0, $24, $e3, $96, $81, $be, $a4, $44, $36, $35, $35, $09, $3a, $3d, $c2
    db $32, $c2, $9e, $7a, $84, $5a, $81, $00, $b1, $04, $88, $0e, $7f, $e1, $45, $48
    db $49, $7f, $e0, $ff, $c0, $fc, $89, $f8, $63, $f0, $00, $b3, $00, $83, $04, $82
    db $3f, $e0, $45, $47, $60, $52, $80, $80, $e0, $ff, $c6, $01, $e2, $7e, $c4, $00
    db $b9, $04, $82, $7c, $a0, $45, $7f, $56, $61, $39, $35, $35, $38, $37, $80, $e0
    db $80, $00, $a0, $fa, $62, $e9, $62, $7a, $6b, $00, $af, $86, $61, $42, $80, $af
    db $77, $46, $55, $52, $81, $c1, $5f, $49, $45, $78, $80, $61, $a1, $a9, $62, $6b
    db $60, $5e, $61, $00, $bc, $9f, $a2, $c6, $63, $7b, $45, $43, $c1, $c0, $36, $52
    db $61, $53, $fb, $80, $41, $9e, $e6, $a4, $00, $bc, $08, $61, $c6, $61, $c7, $64
    db $45, $00, $c0, $06, $bf, $e0, $52, $45, $c0, $61, $ee, $41, $86, $c9, $80, $71
    db $82, $e1, $ec, $4a, $61, $bf, $83, $45, $50, $ff, $c0, $35, $39, $5e, $83, $61
    db $5c, $7f, $64, $86, $ca, $00, $b1, $82, $82, $4a, $65, $45, $1b, $47, $5d, $bf
    db $a1, $3a, $53, $3f, $e1, $82, $a5, $80, $79, $10, $82, $42, $42, $86, $40, $c5
    db $ff, $a3, $ae, $82, $a4, $80, $79, $82, $68, $52, $c4, $61, $52, $40, $c1, $3e
    db $c0, $43, $bb, $61, $af, $82, $a2, $b0, $7e, $42, $00, $58, $8a, $21, $86, $46
    db $45, $5b, $c1, $80, $35, $0f, $36, $47, $4c, $47, $40, $e4, $e0, $24, $00, $56
    db $82, $84, $6c, $45, $41, $42, $62, $44, $3c, $c0, $e1, $52, $61, $c0, $c7, $e0
    db $82, $63, $f8, $21, $00, $b5, $7e, $e2, $c6, $22, $45, $48, $48, $03, $37, $38
    db $bf, $e3, $80, $c0, $ff, $a0, $00, $65, $00, $ba, $00, $87, $ef, $51, $5f, $61
    db $5c, $00, $a1, $35, $39, $5b, $c0, $ba, $40, $7f, $a0, $00, $66, $00, $b4, $7a
    db $00, $00, $89, $45, $52, $00, $c1, $82, $3e, $83, $82, $61, $00, $67, $80, $11
    db $7a, $02, $7e, $44, $7d, $a3, $01, $45, $81, $c2, $3e, $83, $82, $62, $7a, $11
    db $b0, $0c, $20, $62, $7d, $a4, $00, $42, $a1, $7f, $e2, $3d, $63, $7d, $86, $80
    db $18, $7e, $23, $7d, $a4, $81, $e4, $b0, $3d, $64, $b4, $01, $fa, $82, $00, $5d
    db $d2, $d3, $bf, $24, $3e, $80, $c0, $e5, $3d, $62, $3e, $64, $00, $59, $7e, $45
    db $c0, $04, $80, $e6, $35, $01, $40, $37, $02, $32, $00, $7a, $0f, $80, $cb, $7e
    db $27, $c1, $00, $00, $e6, $43, $3c, $44, $f3, $02, $3e, $42, $7a, $0d, $80, $cb
    db $e4, $fc, $20, $00, $d8, $01, $bf, $23, $ff, $c5, $7d, $43, $3d, $a1, $62, $61
    db $00, $54, $fa, $87, $20, $1a, $61, $bf, $22, $01, $41, $c0, $c5, $31, $01, $a1
    db $00, $5e, $24, $a2, $00, $ff, $44, $00, $a4, $3e, $41, $ee, $60, $3e, $e0, $82
    db $c4, $00, $5f, $3e, $e3, $1b, $46, $ae, $80, $e4, $3a, $45, $01, $e2, $00, $29
    db $00, $5b, $02, $3d, $24, $af, $bf, $a4, $3e, $23, $40, $81, $e5, $80, $00, $b8
    db $7e, $07, $08, $3d, $41, $fd, $01, $3f, $a3, $42, $83, $a2, $83, $25, $00, $5c
    db $00, $a2, $82, $3d, $85, $42, $02, $c6, $00, $5f, $24, $0a, $c0, $04, $7f, $c3
    db $42, $20, $02, $c0, $00, $5f, $00, $42, $00, $e4, $81, $04, $ae, $80, $e2, $bf
    db $02, $08, $00, $48, $00, $bf, $3c, $45, $af, $3f, $62, $3f, $03, $00, $46, $00
    db $bf, $01, $d5, $c2, $a0, $bf, $24, $bf, $41, $c2, $a4, $00, $44, $5e, $81, $bd
    db $49, $08, $00, $b5, $3c, $23, $7f, $00, $36, $83, $85, $00, $43, $e0, $c2, $80
    db $76, $18, $00, $a1, $00, $61, $7d, $45, $45, $36, $c1, $e2, $ee, $22, $00, $43
    db $80, $e0, $80, $00, $53, $fa, $26, $1b, $c2, $7f, $c3, $3c, $60, $c5, $84, $ae
    db $00, $00, $5f, $00, $a5, $7e, $43, $be, $41, $36, $25, $c2, $61, $81, $a3, $04
    db $e1, $00, $80, $17, $00, $a5, $7e, $45, $37, $24, $b0, $02, $bf, $a0, $81, $a2
    db $80, $19, $78, $00, $a3, $fc, $23, $3a, $21, $45, $43, $41, $43, $fd, $e0, $c0
    db $c3, $61, $82, $02, $82, $81, $80, $18, $00, $44, $fc, $a6, $45, $ae, $07, $3b
    db $35, $3b, $fd, $e0, $7e, $c0, $03, $e1, $86, $6d, $00, $53, $7e, $fc, $a6, $9e
    db $46, $42, $ad, $a4, $64, $ff, $e0, $81, $a5, $00, $40, $08, $61, $86, $6d, $80
    db $76, $fc, $83, $c0, $e0, $35, $bf, $69, $a3, $35, $35, $a3, $6a, $7f, $80, $9c
    db $01, $9f, $86, $6f, $00, $51, $7a, $03, $fc, $61, $3a, $00, $c0, $e0, $c0, $81
    db $86, $c0, $e1, $46, $9e, $86, $6f, $80, $0f, $7a, $09, $bc, $20, $44, $17, $3c
    db $6b, $71, $ff, $e0, $6d, $40, $61, $80, $80, $86, $0d, $e8, $80, $cf, $7a, $09
    db $81, $61, $36, $c0, $c5, $af, $46, $9e, $40, $86, $0f, $00, $53, $7a, $65, $bf
    db $61, $40, $c4, $81, $c0, $9d, $00, $e5, $10, $13, $ed, $00, $4e, $9a, $a3, $fc
    db $82, $9d, $ff, $e6, $08, $46, $13, $ee, $00, $00, $b4, $94, $63, $fc, $e7, $08
    db $44, $13, $ef, $80, $d0, $1c, $41, $fc, $83, $00, $fc, $e7, $08, $43, $43, $ee
    db $87, $40, $00, $00

    nop

    db $c1, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $01, $80
    db $fe, $e0, $ff, $ff, $ff, $ff, $ff, $e8, $00, $00

    nop

    db $02, $00, $1d, $05, $02, $01, $21, $06, $02, $02, $25, $07, $02, $03, $19, $08
    db $02, $04, $15, $09, $02, $05, $17, $0c, $02, $06, $23, $0c, $02, $07, $29, $0d
    db $02, $08, $1b, $0e, $02, $09, $27, $0f, $02, $0a, $19, $13, $02, $0b, $25, $13
    db $02, $0c, $16, $16, $02, $0d, $13, $18, $02, $0e, $28, $19, $02, $0f, $17, $1b
    db $02, $10, $27, $1f, $02, $11, $19, $20, $02, $12, $16, $22, $02, $13, $29, $22
    db $02, $14, $26, $24, $02, $15, $2b, $24, $02, $16, $18, $25, $02, $17, $28, $27
    db $02, $18, $25, $28, $02, $19, $1b, $29, $02, $1a, $24, $2c, $02, $1b, $1c, $2e
    db $02, $1c, $17, $2f, $02, $1d, $26, $30, $02, $1e, $1a, $31, $02, $1f, $1d, $33
    db $02, $20, $27, $33, $02, $21, $23, $35, $02, $22, $1c, $37, $02, $23, $1a, $3b
    db $02, $24, $25, $3b, $ff, $ff, $ff, $c0, $49, $54, $4d, $cf, $52, $ea, $52, $bf
    db $0e, $0e, $0d, $0d, $0d, $0e, $fa, $ed, $4d, $77, $4d, $0e, $0e, $fc, $e7, $0d
    db $0d, $0c, $ff, $f6, $00, $c5, $e0, $fd, $ef, $af, $e1, $f1, $e9, $c0, $ff, $b9
    db $eb, $82, $e0, $6b, $e1, $02, $fc, $e7, $4c, $bf, $f6, $43, $f0, $82, $ec, $c0
    db $e2, $bf, $f6, $83, $f0, $80, $04, $e4, $7e, $e7, $de, $c0, $bf, $f6, $00, $f2
    db $0a, $e4, $c0, $e6, $6d, $91, $6b, $fe, $d6, $86, $d1, $8a, $e6, $4d, $ff, $e0
    db $74, $c0, $6d, $e1, $6b, $c0, $f9, $80, $f7, $c8, $e0, $fe, $e1, $0d, $6b, $6b
    db $89, $2d, $c0, $ff, $37, $c3, $6d, $86, $c8, $89, $e1, $be, $e0, $2d, $0f, $0d
    db $6b, $2d, $2d, $80, $df, $86, $ca, $42, $c2, $85, $e1, $0f, $2d, $0d, $0d, $2d
    db $ff, $e0, $00, $df, $83, $e2, $82, $e0, $e0, $86, $c3, $8c, $c2, $47, $e0, $c4
    db $e0, $3f, $e1, $0c, $0c, $2c, $01, $2c, $c0, $ff, $90, $a8, $c6, $c1, $8b, $c0
    db $80, $e0, $ff, $c2, $81, $f7, $00, $80, $c9, $f9, $80, $82, $e5, $c6, $c4, $05
    db $e0, $c0, $ff, $8b, $e7, $10, $a7, $08, $c3, $e3, $05, $e0, $7c, $e1, $6b, $81
    db $b8, $c0, $ea, $0c, $a7, $4e, $c1, $40, $05, $e2, $c0, $e2, $3f, $f9, $43, $89
    db $80, $e8, $8b, $c0, $0b, $02, $c0, $7f, $2b, $4b, $0b, $0b, $0b, $2b, $0b, $80
    db $9f, $bc, $04, $a8, $50, $a3, $2d, $0a, $2a, $0b, $c2, $e0, $2b, $e2, $c0, $e0
    db $0b, $c0, $e0, $80, $df, $88, $aa, $2d, $0d, $0a, $3b, $0a, $2a, $84, $e0, $4b
    db $6b, $0b, $79, $e0, $82, $b7, $70, $00, $aa, $12, $a0, $92, $83, $c8, $a1, $0a
    db $0a, $0a, $84, $e2, $e1, $4b, $f6, $c1, $80, $df, $48, $84, $82, $c5, $0d, $6b
    db $2a, $06, $c0, $e3, $6b, $4b, $83, $b9, $40, $69, $82, $e2, $08, $83, $d1, $80
    db $03, $2b, $2a, $c1, $e4, $c3, $ba, $80, $d2, $47, $a1, $c2, $c2, $c1, $e2, $30
    db $06, $80, $c4, $d6, $00, $b1, $d2, $63, $6b, $4a, $01, $e1, $47, $c0, $08, $06
    db $80, $c3, $b8, $80, $d3, $6b, $2e, $40, $c2, $c4, $7c, $82, $bf, $fa, $b8, $00
    db $48, $82, $85, $c8, $81, $2a, $4a, $0b, $45, $c0, $2b, $01, $0b, $b4, $e0, $7e
    db $fb, $43, $88, $c4, $60, $43, $42, $4d, $80, $80, $c1, $00, $05, $c0, $85, $a1
    db $38, $81, $40, $ff, $c0, $e2, $00, $e4, $bf, $e0, $03, $80, $e0, $85, $a3, $7e
    db $e1, $c0, $9a, $80, $d1, $bf, $e1, $0a, $2a, $6b, $1e, $04, $a1, $0b, $2b, $2b
    db $4b, $00, $a0, $00, $5f, $00, $aa, $1e, $ff, $c1, $0a, $6a, $0b, $4b, $be, $e2
    db $bd, $e0, $bf, $f8, $08, $06, $53, $7d, $c0, $00, $a0, $0a, $7d, $e3, $7e, $9a
    db $00, $ad, $86, $22, $06, $fe, $c2, $4b, $0a, $7d, $e1, $bf, $e3, $7e, $97, $40
    db $ab, $bf, $06, $0c, $bd, $c1, $fc, $c0, $6a, $6b, $be, $e2, $fe, $d8, $00, $af
    db $fc, $84, $06, $b9, $a1, $2a, $2a, $7e, $a0, $b9, $c2, $3f, $36, $80, $71, $fe
    db $c4, $02, $87, $20, $4b, $a3, $40, $bd, $64, $7d, $d4, $86, $13, $fc, $a2, $84
    db $a2, $00, $c0, $e5, $be, $15, $46, $0d, $fc, $a9, $7c, $e3, $3d, $63, $fc, $55
    db $80, $0d, $00, $fc, $a9, $84, $42, $02, $c0, $bc, $59, $85, $0c, $7e, $e8, $82
    db $ea, $80, $f8, $00, $7f, $4c, $7e, $c9, $78, $60, $c1, $e5, $3c, $55, $80, $0e
    db $7a, $67, $bd, $21, $00, $c0, $fe, $40, $af, $7e, $06, $84, $00, $03, $e3, $00
    db $ff, $fc, $92, $80, $21, $46, $82, $e5, $4b, $4b, $7c, $80, $bb, $31, $80, $cd
    db $0d, $fc, $88, $00, $c3, $c7, $b7, $20, $ba, $14, $c0, $d1, $78, $66, $83, $c6
    db $37, $60, $ba, $14, $c0, $80, $cf, $f8, $28, $43, $c6, $f8, $21, $7a, $13, $80
    db $d3, $2d, $2d, $02, $c0, $ea, $4b, $f8, $21, $80, $ff, $f8, $87, $c1, $e2, $c0
    db $e8, $b4, $c1, $20, $f9, $41, $fe, $e0, $c0, $ff, $80, $e1, $c0, $e3, $6b, $7c
    db $41, $42, $e4, $00, $ea, $21, $2c, $c0, $f6, $4d, $80, $ce, $f1, $82, $fd, $e1
    db $39, $00, $c0, $e3, $2e, $3a, $22, $6b, $0d, $6d, $65, $01, $4d, $bf, $e0, $7b
    db $ea, $20, $09, $ce, $80, $a6, $39, $21, $ff, $00, $82, $e4, $6b, $ee, $c2, $1c
    db $80, $00, $7b, $e3, $2f, $46, $c0, $f1, $7a, $04, $c9, $e2, $3f, $60, $7c, $21
    db $c0, $e2, $00, $e0, $43, $24, $80, $39, $e8, $00, $b8, $ff, $e6, $75, $a2, $6e
    db $c0, $66, $a5, $00, $5c, $21, $c0, $18, $03, $e2, $02, $e1, $44, $87, $2e, $20
    db $01, $e0, $28, $c3, $08, $5e, $63, $ae, $25, $00, $b6, $6b, $44, $86, $39, $01
    db $c2, $c0, $e2, $8a, $00, $b8, $c6, $80, $cf, $7a, $06, $84, $87, $c2, $c0, $66
    db $65, $7e, $e3, $fc, $c1, $78, $33, $c1, $80, $d8, $83, $82, $0d, $0b, $0b, $2d
    db $41, $e2, $00, $02, $e6, $18, $29, $74, $c1, $40, $cf, $00, $e3, $c2, $89, $c0
    db $e3, $82, $e5, $08, $fc, $c7, $d2, $a5, $80, $72, $4d, $84, $66, $3c, $01, $26
    db $00, $96, $d3, $10, $00, $b3, $41, $a3, $c3, $a1, $fd, $e1, $4b, $84, $a2, $aa
    db $85, $5a, $47, $04, $0e, $29, $38, $70, $2d, $86, $a0, $86, $80, $85, $60, $44
    db $c2, $22, $c9, $00, $4d, $af, $7a, $11, $fd, $40, $c9, $82, $82, $e3, $66, $22
    db $1d, $a8, $b6, $ef, $00, $7a, $0d, $5a, $c2, $06, $e0, $18, $f3, $98, $84, $00
    db $54, $9e, $c7, $e8, $07, $00, $3b, $ca, $55, $84, $00, $55, $9e, $d4, $50, $ce
    db $00, $00

    nop

    db $bf, $dd, $de, $a0, $a0, $a0, $dc, $fa, $ee, $a0, $fb, $d8, $d9, $fc, $e7, $a0
    db $9e, $99, $99, $98, $ff, $98, $97, $97, $96, $96, $95, $95, $96, $cf, $96, $97
    db $98, $97, $f8, $e4, $f7, $e0, $96, $e2, $df, $e3, $e4, $df, $e0, $e1, $fa, $ec
    db $a0, $d6, $47, $d7, $da, $db, $fc, $e7, $c0, $e1, $bf, $e3, $95, $bf, $e0, $f4
    db $c0, $e1, $b7, $e1, $97, $b7, $e0, $97, $96, $e8, $e9, $8f, $ea, $e5, $e6, $e7
    db $fa, $ec, $82, $ea, $76, $e0, $9e, $61, $0f, $80, $eb, $7f, $e8, $43, $f1, $82
    db $e1, $d0, $d1, $fc, $e7, $0f, $a0, $9e, $02, $0f, $53, $e2, $41, $e2, $48, $e2
    db $77, $e2, $d8, $36, $e1, $43, $f0, $04, $e2, $d2, $d3, $fc, $e7, $a0, $9e, $c1
    db $7f, $bf, $e0, $8a, $e8, $f6, $e8, $43, $ef, $04, $e3, $d4, $d5, $fb, $a0, $a0
    db $fc, $e5, $9f, $9c, $46, $81, $08, $a0, $7f, $e5, $80, $e3, $f6, $e6, $86, $d7
    db $c8, $e0, $9d, $ff, $e0, $a2, $2f, $9d, $9d, $9c, $46, $c0, $e0, $99, $09, $e6
    db $ff, $c7, $e0, $75, $c0, $80, $cd, $04, $e7, $89, $e1, $ff, $e2, $81, $46, $46
    db $03, $83, $84, $c0, $e0, $fe, $c6, $f6, $e9, $86, $d1, $04, $e3, $c1, $e1, $fd
    db $ae, $be, $e0, $83, $84, $46, $83, $86, $02, $81, $0f, $fd, $a0, $3f, $c5, $7e
    db $c4, $3d, $c2, $86, $d1, $04, $e3, $a1, $7e, $82, $e0, $af, $83, $89, $88, $87
    db $85, $c1, $e4, $e8, $80, $f2, $86, $d3, $7e, $a1, $9e, $82, $e0, $83, $86, $85
    db $3e, $3c, $e0, $8a, $02, $0f, $01, $00, $00, $f4, $86, $d3, $3e, $c6, $c1, $9c
    db $46, $af, $46, $8a, $c1, $e1, $83, $c0, $03, $00, $01, $01, $e6, $80, $d7, $10
    db $a7, $c6, $c5, $05, $e0, $c0, $e3, $48, $41, $a6, $00, $ce, $c9, $a8, $a0, $0c
    db $a3, $86, $c0, $9e, $c3, $e2, $1c, $05, $e1, $be, $c0, $ae, $46, $8c, $81, $a2
    db $0a, $a9, $00, $b0, $18, $0b, $e2, $86, $a4, $c5, $c0, $83, $89, $c3, $e0, $be
    db $c1, $3a, $e0, $50, $02, $c2, $c1, $b3, $00, $aa, $82, $c6, $9e, $c7, $c1, $45
    db $02, $c0, $7f, $45, $3f, $2b, $31, $31, $2b, $45, $3f, $e2, $e2, $c1, $b2, $97
    db $43, $89, $08, $a5, $50, $a0, $8a, $85, $47, $7f, $49, $45, $45, $3f, $36, $24
    db $20, $ff, $e0, $1f, $42, $81, $08, $01, $00, $c1, $b3, $00, $aa, $08, $a4, $fe
    db $11, $a0, $83, $84, $4a, $60, $52, $45, $36, $1b, $35, $35, $c0, $e0, $2c, $2b
    db $82, $a1, $c1, $b4, $80, $ca, $fc, $92, $65, $0e, $c0, $85, $4b, $61, $5c, $39
    db $35, $06, $ff, $e0, $21, $2a, $f6, $c0, $c1, $b7, $00, $a8, $08, $85, $82, $c1
    db $bf, $81, $45, $56, $61, $5c, $3a, $c0, $e0, $36, $05, $41, $44, $a0, $07, $82
    db $a3, $00, $f2, $80, $c9, $08, $84, $c2, $c0, $bf, $84, $43, $55, $56, $44, $3c
    db $c1, $e0, $45, $88, $83, $a1, $c2, $a0, $02, $a1, $96, $49, $63, $80, $d7, $08
    db $84, $a1, $06, $41, $e1, $47, $44, $41, $e0, $c1, $e0, $06, $80, $44, $a0, $02
    db $a3, $a0, $02, $61, $41, $6b, $80, $6b, $8a, $43, $d2, $61, $45, $01, $e0, $3a
    db $07, $35, $3c, $44, $80, $80, $c3, $a0, $82, $41, $83, $89, $b8, $69, $76, $86
    db $6d, $d0, $d1, $c8, $80, $8c, $7d, $4f, $41, $e2, $05, $40, $c4, $a0, $46, $44
    db $61, $43, $40, $03, $88, $b8, $69, $0c, $4d, $f7, $d2, $d3, $9e, $c8, $80, $81
    db $55, $56, $45, $0c, $c1, $c0, $01, $e0, $ae, $ae, $bf, $e4, $03, $41, $41, $6a
    db $ff, $23, $c6, $00, $ad, $d4, $d5, $89, $61, $80, $c0, $41, $c2, $36, $45, $07
    db $af, $af, $ae, $43, $65, $80, $46, $f5, $89, $00, $af, $d1, $41, $9f, $8c, $7d
    db $45, $45, $40, $01, $c1, $7f, $c0, $af, $60, $c0, $85, $3e, $ef, $6b, $20, $00
    db $af, $90, $43, $4a, $4b, $81, $a1, $7f, $35, $35, $38, $37, $3f, $43, $45, $fd
    db $c2, $f0, $7e, $88, $75, $48, $00, $b1, $85, $60, $81, $55, $61, $52, $77, $45
    db $37, $38, $7e, $a1, $35, $3b, $36, $bf, $e1, $e8, $be, $b4, $00, $af, $86, $40
    db $a1, $3f, $e0, $52, $54, $44, $01, $50, $7d, $e3, $b9, $a1, $bd, $64, $7f, $4f
    db $00, $af, $86, $20, $cf, $20, $1f, $7f, $7d, $45, $51, $5f, $bd, $82, $fa, $81
    db $7e, $82, $d8, $7f, $52, $80, $69, $86, $25, $d0, $d1, $8e, $20, $8e, $7c, $cf
    db $7d, $5b, $56, $52, $3d, $80, $ba, $80, $3c, $44, $e0, $ba, $a1, $ff, $32, $00
    db $ad, $fc, $86, $08, $c0, $7d, $55, $54, $0b, $44, $ae, $b9, $c2, $39, $7d, $64
    db $fd, $0f, $00, $ad, $04, $24, $7c, $bb, $a0, $08, $c0, $45, $45, $ae, $af, $ae
    db $b8, $81, $83, $3a, $45, $7f, $e9, $fd, $09, $86, $0f, $7e, $45, $08, $c0, $7d
    db $06, $ba, $e0, $af, $42, $f9, $61, $7f, $e2, $fd, $11, $43, $2a, $7e, $47, $10
    db $8c, $01, $3e, $e1, $fc, $20, $b9, $62, $3a, $7e, $d0, $71, $82, $80, $0d, $02
    db $7e, $26, $a1, $3e, $e2, $bd, $40, $b9, $61, $75, $80, $bb, $23, $7a, $8a, $50
    db $7d, $c1, $80, $0c, $fc, $64, $fc, $22, $ae, $b8, $80, $46, $3e, $c8, $90, $fe
    db $ac, $3d, $c3, $80, $0d, $7a, $68, $af, $49, $00, $be, $a5, $35, $01, $40, $be
    db $ab, $3c, $a0, $6f, $62, $00, $4a, $7a, $6a, $fc, $20, $bd, $20, $80, $bc, $42
    db $80, $e6, $3d, $06, $7a, $61, $ec, $61, $80, $6b, $7a, $09, $a0, $01, $9e, $42
    db $21, $03, $e3, $00, $e8, $7f, $e7, $7e, $e1, $77, $80, $00, $a9, $00, $7a, $69
    db $fc, $03, $bc, $41, $bc, $82, $ff, $a2, $3b, $04, $c5, $82, $be, $e1, $00, $3b
    db $e1, $80, $cd, $fc, $89, $c3, $c6, $7f, $a1, $38, $61, $7a, $43, $78, $61, $c0
    db $be, $e1, $7b, $e2, $43, $ee, $7e, $c6, $bb, $80, $81, $e6, $3c, $44, $00, $39
    db $03, $cb, $c4, $bd, $e6, $00, $48, $7a, $11, $7d, $62, $79, $64, $39, $62, $86
    db $ba, $01, $97, $96, $05, $c4, $39, $e2, $80, $cf, $7a, $01, $a0, $01, $a0, $7a
    db $02, $45, $a2, $82, $a2, $37, $01, $fe, $a3, $89, $c2, $45, $c2, $10, $f1, $22
    db $80, $cf, $fc, $02, $39, $61, $9e, $c1, $c6, $02, $e0, $40, $e1, $0f, $02, $07
    db $07, $07, $37, $61, $bc, $e3, $80, $a3, $80, $cf, $e4, $7a, $01, $3d, $a2, $9e
    db $41, $c5, $42, $e2, $46, $9c, $9d, $02, $ff, $e0, $9c, $37, $61, $7a, $e5, $6f
    db $41, $80, $cf, $f8, $62, $39, $03, $bc, $c4, $83, $3a, $21, $af, $46, $9c, $9f
    db $e5, $c1, $9f, $81, $9c, $7b, $e2, $6f, $21, $7a, $43, $80, $cf, $7e, $84, $7f
    db $82, $45, $db, $36, $3b, $82, $e4, $46, $a1, $66, $41, $d6, $d7, $c1, $9f, $7b
    db $e2, $39, $e0, $74, $c4, $00, $b8, $fe, $60, $46, $45, $93, $43, $3f, $7c, $20
    db $39, $21, $9e, $6a, $81, $e4, $62, $a0, $11, $9f, $39, $e2, $74, $c3, $00, $b6
    db $a1, $cc, $c2, $c7, $c2, $fa, $01, $4f, $46, $9e, $d4, $d5, $62, $63, $7a, $e2
    db $9c, $31, $61, $38, $b7, $21, $00, $b5, $81, $a2, $43, $41, $43, $fd, $e0, $c2
    db $c3, $08, $01, $e0, $62, $65, $e0, $a0, $9e, $b8, $c4, $00, $b6, $bf, $40, $03
    db $e1, $31, $3b, $fd, $e0, $fb, $00, $c2, $c1, $d0, $d1, $e0, $45, $e0, $a0, $78
    db $b8, $c4, $00, $b7, $7a, $00, $44, $3c, $a4, $64, $ff, $e0, $85, $a5, $43, $a1
    db $9e, $6a, $63, $e0, $46, $fc, $c0, $33, $c1, $99, $f9, $99, $00, $b5, $81, $80
    db $42, $35, $69, $a3, $35, $ef, $35, $a3, $6a, $35, $81, $c0, $9e, $d0, $d1, $80
    db $00, $e5, $fc, $c5, $bc, $e3, $00, $b5, $7d, $20, $c0, $e0, $c6, $61, $6a, $05
    db $35, $c0, $c0, $a1, $82, $e9, $7a, $e7, $d2, $81, $00, $b1, $00, $c2, $af, $44
    db $3c, $6b, $71, $ff, $e0, $6d, $83, $80, $9c, $01, $9f, $82, $e9, $7a, $e9, $00
    db $b3, $41, $a2, $c0, $c7, $84, $a2, $82, $ed, $00, $d4, $23, $00, $b3, $fc, $03
    db $40, $c5, $45, $a1, $82, $c5, $e0, $61, $d8, $25, $00, $d4, $21, $00, $b4, $7a
    db $02, $d1, $80, $c9, $82, $06, $a1, $82, $a4, $19, $e6, $10, $56, $25, $00, $b3
    db $fc, $24, $5a, $c1, $9f, $35, $81, $82, $c5, $99, $47, $82, $76, $e4, $df, $00
    db $53, $7a, $26, $86, $e4, $04, $a4, $56, $6e, $a0, $01, $e5, $00, $53, $7e, $e7
    db $08, $c3, $04, $a3, $d6, $2d, $8d, $41, $00, $00

    nop

    db $c1, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $01, $80
    db $fe, $e0, $ff, $ff, $ff, $ff, $ff, $e8, $00, $00

    nop

    db $02, $00, $1e, $09, $02, $01, $1c, $0b, $02, $02, $20, $0e, $02, $03, $22, $0e
    db $02, $04, $1e, $17, $02, $05, $14, $18, $02, $06, $20, $19, $02, $07, $21, $19
    db $02, $08, $22, $1a, $02, $09, $19, $21, $02, $0a, $20, $21, $02, $0b, $1a, $22
    db $02, $0c, $1f, $22, $02, $0d, $21, $22, $02, $0e, $20, $23, $02, $0f, $1b, $24
    db $02, $10, $1c, $25, $02, $11, $1b, $26, $02, $12, $29, $2d, $02, $13, $27, $30
    db $02, $14, $1c, $32, $02, $15, $25, $32, $02, $16, $24, $33, $02, $17, $25, $35
    db $02, $18, $1a, $36, $02, $19, $24, $38, $ff, $ff, $ff, $5d, $53, $9f, $56, $97
    db $5a, $b2, $5a, $3f, $0e, $0e, $0d, $0d, $0d, $0e, $fa, $ff, $f4, $f5, $c0, $dd
    db $e0, $ff, $ff, $ff, $ff, $ff, $ff, $f5, $f4, $5b, $f5, $0e, $0e, $0b, $4d, $4d
    db $60, $e3, $4d, $37, $fb, $9d, $f6, $c0, $e1, $fc, $e5, $50, $ff, $ff, $ff, $ff
    db $3e, $f7, $98, $d0, $4d, $82, $e9, $4d, $3d, $e0, $00, $fc, $e1, $80, $df, $45
    db $e6, $4c, $e2, $62, $c7, $35, $c1, $11, $fc, $c0, $ee, $08, $00, $c2, $c8, $e2
    db $b8, $c4, $4d, $c0, $f1, $86, $d5, $64, $c2, $78, $c2, $00, $ae, $cb, $80, $df
    db $46, $c7, $50, $e2, $7e, $ea, $45, $ff, $a6, $ce, $3e, $e4, $30, $80, $df, $86
    db $c9, $d0, $c4, $c9, $c3, $2d, $2d, $f7, $e4, $76, $c3, $d8, $80, $da, $86, $c4
    db $66, $a3, $4d, $4d, $c6, $e1, $6d, $0d, $f0, $f9, $e1, $12, $cb, $86, $dd, $88
    db $81, $6d, $0b, $0d, $0b, $80, $f9, $a0, $f9, $e0, $bf, $e2, $2e, $a6, $3a, $cb
    db $86, $d3, $48, $80, $6d, $25, $0d, $c7, $e0, $0b, $ff, $e0, $f8, $e0, $0b, $7e
    db $e7, $80, $db, $30, $04, $e8, $82, $e0, $c5, $e2, $f8, $e1, $0b, $0b, $fd, $c1
    db $7e, $df, $00, $2c, $a9, $85, $e1, $c3, $e4, $7a, $e0, $f6, $c0, $80, $de, $9a
    db $c6, $16, $a1, $01, $6d, $c7, $e4, $c0, $e4, $bc, $c0, $7e, $c8, $80, $71, $32
    db $88, $c1, $ec, $38, $fa, $c1, $3a, $c0, $4a, $e3, $6d, $6d, $6d, $d3, $b9, $08
    db $a3, $24, $83, $e4, $3c, $e9, $0d, $3c, $c2, $ee, $40, $6d, $fd, $cb, $8c, $6b
    db $38, $6e, $63, $85, $c0, $03, $e5, $2b, $0a, $2a, $fe, $c9, $c0, $e1, $c0, $7e
    db $e0, $80, $74, $5a, $84, $e1, $e0, $c6, $c4, $c2, $e0, $0a, $0a, $a1, $0a, $fe
    db $c6, $4f, $64, $3d, $f6, $48, $64, $2d, $49, $c6, $0a, $0d, $4a, $82, $e0, $0a
    db $4a, $76, $c4, $7e, $e6, $80, $d5, $cc, $44, $fb, $4d, $2d, $49, $c5, $6b, $0a
    db $2b, $0b, $2b, $c1, $2a, $c0, $e0, $32, $c3, $3e, $e4, $e4, $63, $80, $d8, $4d
    db $2d, $bd, $2d, $02, $c2, $2b, $0a, $4a, $2b, $7b, $e0, $2a, $01, $4b, $b9, $a4
    db $fe, $c2, $78, $a5, $f9, $50, $1c, $a7, $7d, $e0, $81, $e2, $1f, $4a, $4b, $4b
    db $6b, $2b, $be, $c3, $34, $a0, $b1, $82, $70, $6e, $65, $80, $d6, $ea, $22, $bf
    db $e1, $0d, $2b, $2b, $40, $e2, $a0, $80, $e0, $fe, $c9, $ce, $b1, $d8, $4b, $7e

    db $e3
    dec hl
    ret nz

    ldh [rOCPD], a
    sub d
    ld b, b
    ldh [$0b], a
    pop bc
    push hl
    xor a
    add b
    ld l, l
    db $fc
    sbc h
    adc [hl]
    ld c, c
    dec hl
    ld b, b
    rst $38
    ldh [$7c], a
    xor c
    pop bc
    pop hl
    add b
    ld a, a
    add d
    ld h, a
    ret nz

    push hl
    ld c, e
    ld b, c
    pop hl
    and b
    inc a
    and d
    add d
    push hl

jr_061_5512:
    add b
    jr @-$31

    ld b, e
    ld [de], a
    ld b, c
    ld l, l
    add b
    ldh [rOCPD], a
    ld b, c
    ld l, e
    ld b, c
    pop hl
    ld [hl], l
    add l
    jp z, $c0ba

    rst $20
    sbc b
    ld [hl+], a
    ld c, l
    pop bc
    pop hl
    nop
    nop
    ldh [$3e], a
    and b
    nop
    and l
    add d
    jp hl


    add b

jr_061_5535:
    jr jr_061_5535

    add e
    jp $c0c1


    push hl
    jr nc, @-$7b

    db $e3
    sub d
    add hl, bc
    nop
    cp b
    ld c, d
    ld [bc], a
    ld l, l
    dec c
    ret nz

    ld [c], a
    ccf
    ret nz

    nop
    ret nz

    push hl
    push bc
    and e
    ccf
    inc a
    inc e
    ld h, a
    add d
    db $e3
    ret nz

    ld [c], a
    pop bc
    jp nz, $a545

    nop
    add b
    rst $18
    ld [$4143], sp
    db $e4
    cp a
    pop bc
    jp $85a0


    and d
    ld h, $24
    nop
    ld e, h
    jr jr_061_5512

    ld h, d
    call nz, Call_000_00a3
    jp nz, Jump_061_6b6b

    ret nz

    db $e3
    ld a, [hl]
    ld b, [hl]
    ld a, d
    inc e
    ld bc, $7e6d
    add h
    adc b
    add b
    ld bc, $c1e2
    pop hl
    ld b, d
    add [hl]
    ld a, [hl-]
    ld de, $ab00
    nop
    inc hl
    ld h, l
    dec a
    add c
    ld b, b
    and c
    rst $38
    inc h
    ei
    ld [hl+], a
    ld a, [hl]
    ld b, e
    add b
    dec de
    db $e3
    ld b, c
    nop
    db $fc
    ld h, h
    jp $0520


    push bc
    ld [bc], a
    and e
    ld a, $41
    nop
    ld e, l
    and e
    ld b, a
    ld a, $c1
    nop
    inc b
    ld b, h
    cp [hl]
    and d
    ld hl, sp+$01
    add b
    rst $18
    ld a, d
    ld l, b
    add $a5
    ld a, [hl]
    and e
    ld [$0042], a
    ld l, d
    ld [$b600], sp
    jr jr_061_55ec

    add [hl]
    and d
    adc e
    ld h, c
    ld a, b
    inc hl
    add h
    ld h, a
    cp e
    cp d
    nop
    ld a, d
    ld h, $00
    add b
    ld b, d
    add a
    inc b
    ld l, e
    nop
    cp e
    sbc b
    dec b
    inc a
    pop bc
    nop
    push hl
    ldh a, [rLY]
    add h
    ld a, h
    and [hl]
    add b
    sub $7a
    add hl, bc
    dec c
    ld l, e

jr_061_55ec:
    ld c, e
    ld l, e
    and b
    ret nz

    and b
    cp l
    and d
    ld [bc], a
    db $e3
    add e
    xor $7e
    ld a, [de]
    ld l, l
    ld bc, $6b80
    ld hl, $fc0d

Call_061_5600:
    ldh [$c1], a
    ld [c], a
    inc h
    ld h, a
    add b
    call c, $824d
    db $e4
    rst $38
    ld b, e
    nop
    ld b, a
    ld b, l
    add [hl]
    ld [hl], b
    add b
    ld [hl], d
    jp nz, $b9e2

    ld h, e
    ld d, b
    jr nz, jr_061_5654

    add e
    call nz, $0000
    ld d, b
    rst $38
    ret nz

    jp hl


    sbc d
    add b
    ld a, l
    ld b, [hl]
    dec sp
    and c
    ld b, h
    ld bc, $6f86
    add b
    reti


    ld b, b
    dec d
    and e
    inc a
    ld b, c
    ret nz

    ld [c], a
    adc b
    ld b, a
    sub e
    xor h
    ld l, a
    pop af
    dec l
    sub d
    ld [c], a
    nop
    ei
    and h
    ld [hl], a
    ld h, b
    add l
    and e
    ld b, l
    rst $38
    ret nz

    jp hl


    ld a, [hl]
    rst $20
    inc c
    ld b, c
    ld c, b
    ld a, e
    nop
    ld l, l
    rst $28
    ld hl, sp+$43

jr_061_5654:
    ld a, c
    and e
    adc [hl]
    dec h
    add [hl]
    ld l, a
    nop
    ld d, d
    dec a
    db $e4
    push af
    daa
    nop
    ld de, $3d3a
    rst $30
    db $fc
    push bc
    ld [hl], d
    jp nz, $a66e

    add b
    rst $18
    ld a, d
    call $ea80
    nop
    add b
    rst $18
    ld a, d
    adc $f0
    ld [$ff49], sp
    ld a, d
    ret nc

    ldh a, [rTAC]
    call nz, $8036
    pop de
    nop
    and h
    dec b
    db $f4
    and c
    ld [c], a
    push af
    add b
    ret c

    ld a, d
    ret z

    rst $38
    rst $38
    ld a, d
    db $db
    cp e
    db $fd
    nop
    ld b, e
    or $74
    ld h, a
    rra
    rst $30
    or b
    nop
    nop
    nop
    nop
    ccf
    db $dd
    sbc $a0
    and b
    and b
    call c, $fffa
    db $f4
    push af
    ccf
    ld [c], a
    db $e3
    db $e4
    rst $18
    ldh [$e1], a
    ld a, [$f4ff]
    push af
    ccf
    add sp, -$17
    ld [$e6e5], a
    rst $20
    ld a, [$f4ff]
    push af
    adc [hl]
    ld e, e
    push af
    sub $d7
    and b
    db $fc
    and $37
    ld sp, hl
    ld e, e
    push af
    ret c

    rst $00
    reti


    and b
    and b
    db $fc
    push hl
    scf
    ld sp, hl
    ld e, e
    push af
    jp c, $03db

    sub $d7
    db $fc
    push hl
    scf
    ld sp, hl
    sbc [hl]
    call nc, $c083
    ld a, [hl]
    jp hl


    cp $e6
    jr nc, @-$7e

    rst $18
    adc h
    pop bc
    ld b, l
    ret nz

    add d
    pop hl
    and b
    and b
    ld a, d
    push hl
    ld hl, sp-$3c
    add b
    add b
    rst $18
    adc h
    jp $e482


    cp e
    pop bc
    ld a, d
    ld [$df80], a
    add [hl]
    add $da
    rlca
    db $db
    ret nc

    pop de
    cp a
    pop bc
    ld hl, sp-$1f
    db $fc
    db $e3
    ld l, [hl]
    push bc
    add b
    db $dd
    ld b, $86
    push bc
    jp nc, $c3d3

    ld [c], a
    ld hl, sp-$1f
    db $fc
    ld [c], a
    ld l, [hl]
    jp $df80


    ld e, $86
    jp $d1d0


    call nc, Call_000_3ed5
    and b
    cp e
    ldh [$f8], a
    pop hl
    dec de
    call nc, Call_061_7ed5
    db $e3
    jp c, $80db

    sbc $86
    call nz, $e18a
    inc e
    cp $80
    cp e
    ldh [$9f], a
    and d
    sbc a
    or a
    db $e3
    db $76
    rst $00
    nop
    or a
    cp h
    add [hl]
    call nz, $e182
    sbc a
    and d
    sbc l
    sbc l
    add $e0
    sbc a
    rlca
    sbc h
    xor [hl]
    sbc h
    cp a
    ldh [$7e], a
    push hl
    ld a, d
    call $d386
    inc b
    ldh [rIE], a
    sbc a
    sbc h
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    sbc h
    sbc l
    sbc l
    rlca
    sbc h
    ld b, [hl]
    xor a
    cp a
    ld [c], a
    ld a, [hl]
    rst $20
    nop

jr_061_5778:
    or [hl]
    add [hl]
    rst $00
    add d
    ldh [rWX], a
    sbc h
    xor [hl]
    rst $00
    ldh [rDMA], a
    rst $38
    ldh [$f8], a
    ldh [rDMA], a
    ld a, [hl]
    db $e3
    jr jr_061_5778

    and e
    nop
    or a
    add [hl]
    ret z

    and b
    sbc [hl]
    jp z, $c7e0

    ldh [$be], a
    ldh [$8e], a
    ld hl, sp-$20
    ld b, [hl]
    ld b, [hl]
    sbc [hl]
    ld l, [hl]
    and l
    add b
    reti


    add [hl]
    ret


    sbc [hl]
    nop
    add l
    pop hl
    jp $7ae4


    ldh [$fd], a
    ret nz

    db $fc
    and e
    nop
    cp b
    add [hl]
    ret


    ld [bc], a
    ldh [rP1], a
    rst $38
    ld [$c0bc], a
    ld a, [hl]
    ret z

    add b
    ld [hl], c
    add [hl]
    ret z

    ld c, l
    ret nz

    pop bc
    jp hl


    ld a, [$07c1]
    xor a
    xor [hl]
    and c
    db $fc
    and e
    add b
    sub $08
    ret z

    add e
    push hl
    pop bc
    jp nz, $ff02

    call nz, $feaf
    ret nz

    ld l, [hl]
    and b
    xor c
    ld h, c
    add b
    db $76
    inc c
    add c
    rst $08
    and c
    inc a
    add l
    ret nz

    inc bc
    push hl
    ld b, l
    ld c, b
    ld c, b
    ld b, l
    cp $c6
    ld l, [hl]
    and b
    add b
    cp l
    xor [hl]
    ld c, c
    adc e
    adc d
    ld h, c
    rst $08
    and b
    adc l
    pop bc
    ld b, h
    pop bc
    jp nz, $52e0

    add e
    ld h, c
    ld e, h
    cp a
    db $e3
    ei
    and e
    cp l
    xor [hl]
    db $db
    ld c, c
    adc d
    add e
    sbc a
    db $fd
    sbc h
    ld c, c
    add $51
    ld e, [hl]
    ld d, d
    inc l
    dec l
    ld b, a
    ld bc, $7655
    call nz, $c27c
    dec hl
    ld h, c
    ld l, [hl]
    ld l, c
    adc h
    ld l, c
    add [hl]
    and a
    ld c, c
    call nz, $45ff
    ld e, e
    dec l
    jr nz, @+$34

    ld d, [hl]
    ld d, [hl]
    ld b, l
    ld [bc], a
    or $c4
    sbc [hl]
    ld l, h
    add e
    ld a, d
    jp z, $698c

    nop
    db $e3
    ld a, [hl]
    ldh [rWX], a
    and b
    cp $c1
    ld [c], a
    ld b, a
    ld d, l
    ld l, $20
    ld l, $4f
    ld d, d
    add hl, bc
    ld b, l
    or h
    and c
    ld [hl], h
    and b
    and c
    ld [hl], h
    add d
    ld l, [hl]
    ld h, h
    add b
    ret nc

    ld a, [hl]
    call $447f
    ld d, h
    ld d, [hl]
    ld a, [hl+]
    ld h, $21
    ld b, l
    cp [hl]
    jp $7140


    and b
    ld sp, hl
    add d
    ld l, d
    ld b, l
    nop
    or d
    ld a, [hl]
    push hl
    ret nz

    and d
    xor [hl]
    cp a
    ldh [$8f], a
    add hl, sp
    dec [hl]
    inc a
    ld d, l
    add b
    ldh [$f8], a
    and h
    ld a, d
    and [hl]
    jp c, $dbf9

    nop
    cp l
    ei
    jp Jump_000_3a44


    dec [hl]
    dec [hl]
    add hl, sp
    add b
    pop bc
    push hl
    cp c
    add d
    db $76
    ld h, e
    nop
    or l
    adc [hl]
    ld b, c
    add [hl]
    ld h, c
    inc b
    ld h, b
    and c
    ld a, $40
    pop bc
    ld [hl], $35
    dec [hl]
    dec [hl]
    ld a, [hl-]
    rst $38
    and c
    cp b
    add d
    add e
    sbc h
    sbc a
    ld l, d
    ld h, c
    ld a, d
    ld l, e
    ld b, $4f
    db $10
    ld h, h
    cp a
    add c
    ld b, b
    nop
    pop bc
    ldh [$c0], a
    db $e3
    ld a, e
    add c
    add d
    and $80
    ld a, c
    ld a, [hl]
    and d
    inc c
    ld h, b
    cp a
    add d
    dec c
    ld b, l
    ld b, c
    ldh [$35], a
    add hl, sp
    add hl, sp
    and h
    add d
    rst $20
    add b
    ld a, c
    sub d
    inc hl
    cp [hl]
    ld a, $c5
    add hl, sp
    dec [hl]
    dec [hl]
    inc a
    ld b, h
    rst $38
    ld h, d
    sbc h
    ret nz

    inc [hl]
    ld h, b
    ld a, d
    ld b, h
    add b
    jr jr_061_58f2

    ld b, h
    ld b, h
    ld h, d
    ld a, $c2
    inc a
    dec [hl]
    inc bc

jr_061_58f2:
    dec [hl]
    ld b, b
    nop
    add h
    ld a, [hl]
    ld h, l
    add b
    rla
    ld [$4445], sp
    ld h, d
    ld b, [hl]
    ld h, d
    ld d, $ff
    ret nz

    inc a
    ld b, h
    dec sp
    ld h, c
    and c
    ld b, l
    and c
    nop
    ld e, l
    ld a, [hl]
    and l
    ld bc, $bfa1
    add d
    ld b, c
    ld h, c
    add b
    ldh [$81], a
    jp nz, $a345

    db $76
    ld hl, $1d80
    ld [hl], d
    db $10
    ld hl, $089e
    ld h, d
    rst $38
    add d
    ld a, [hl-]
    dec [hl]
    add hl, sp
    cp a
    ld h, d
    add e
    sbc h
    sbc a
    or c
    jr nz, @-$12

    inc h
    nop
    ld e, d
    ld a, [hl]
    add e
    ld [$3966], sp
    ld bc, $0136
    add b
    ld b, e
    call nz, $427e
    nop
    ld e, a
    inc b
    ld b, e
    cp $65
    ld b, h
    xor c
    ret nz

    nop
    ld e, a
    ld c, l
    ld bc, $827e
    jp $8b21


    add e
    nop
    ld h, h
    ld b, [hl]
    xor [hl]
    ldh a, [$bd]
    pop bc
    nop
    ld e, a
    add d
    ld h, $c3
    jr nz, jr_061_59a7

    ld b, e
    xor a
    ld b, e
    rla
    ld b, e
    ld b, c
    ld b, e
    rst $38
    ld [hl+], a
    xor [hl]
    rst $38
    ld b, b
    db $76
    ld bc, $5b00
    cp $fc
    ld h, a
    and c
    ld b, [hl]
    xor a
    ld b, l
    ld [hl], $3b
    dec [hl]
    dec c
    dec sp
    db $fd
    ldh [$36], a
    ld b, l
    cp d
    ld hl, $6200
    nop
    ld e, d
    ld a, d
    ld l, d
    ld e, [hl]
    ret nz

    jr nz, jr_061_59d2

    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    ld a, [hl]
    and c
    ldh a, [$fd]
    inc bc
    nop
    ld e, c
    ld a, d
    ld l, h
    add b
    jr nz, jr_061_59e2

    dec [hl]
    ld l, c
    and e
    ccf
    dec [hl]
    dec [hl]
    and e

jr_061_59a7:
    ld l, d
    dec [hl]
    ld b, d
    ld b, c
    ld b, d
    cp a
    and c
    nop
    add [hl]
    ld l, c
    add b
    dec d
    ld a, d
    ld b, l
    ret nz

    pop hl
    add b
    add c
    ret nz

    ld [c], a
    inc b
    ld h, e
    add h
    ld b, b
    ld a, b
    nop
    cp e
    ld a, d
    ld h, l
    ld a, [hl]
    ld h, d
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [rSTAT], a
    ld l, l
    ld a, $a1
    ld [bc], a
    ld b, [hl]

jr_061_59d2:
    nop
    cp c
    ld a, d
    ld h, a
    db $fc
    ld h, c
    and c
    ret nz

    rst $00
    ret nz

    ld b, $64
    add h
    ld b, c
    add b
    add hl, de

jr_061_59e2:
    ld a, d
    rlca
    ld a, d
    ld [hl+], a
    ld b, b
    ret nz

    ld b, c
    xor [hl]
    nop
    ld b, b
    ret nz

    pop bc
    ld [c], a
    pop bc
    add c
    ld b, e
    ld l, $80
    ld [hl], d
    sbc d
    inc b
    inc a
    add e
    ld b, a
    ld b, l
    ld b, b
    add [hl]
    ld [hl], b
    add b
    push de
    ld a, d
    ld b, c
    sub a
    ld hl, $2478
    add l
    and c
    sbc [hl]
    add [hl]
    ld [hl], c
    nop
    nop
    or l
    ld a, [hl]
    ld h, d
    ld a, l
    ld b, [hl]
    push bc
    and b
    add l
    and b
    add [hl]
    ld [hl], c
    add b
    push de
    db $dd
    ld [bc], a
    add b
    ei
    dec h
    or l
    ld bc, $a085
    add [hl]
    ld [hl], c
    add b
    push de
    ld a, [hl]
    ld [$00ca], a
    sbc l
    ld b, b
    ld b, $60
    add [hl]
    ld [hl], c
    add b
    push de
    ld e, e
    inc b
    ld a, c
    inc h
    inc c
    ld b, c
    and b
    add [hl]
    ld [hl], d
    nop
    nop
    ld d, h
    ld a, d
    ld h, [hl]
    ld a, c
    inc hl
    adc [hl]
    inc hl
    add [hl]
    ld [hl], c
    add b
    ld [hl], d
    ld a, d
    ld h, [hl]
    db $fc
    push bc
    nop
    adc [hl]
    inc hl
    add [hl]
    ld [hl], c
    nop
    ld d, d
    ld a, d
    adc $8e
    inc h
    add [hl]
    ld [hl], b
    nop
    or l
    ld a, d
    jp z, $0c00

    ld b, h
    db $ec
    and d
    sub $f2
    xor d
    db $d3
    ld a, d
    add $f0
    ld h, h
    ld h, [hl]
    ld bc, $df80
    nop
    ld a, d
    ret nc

    ld [hl], d
    and e
    rst $00
    add c
    ld b, e
    pop af
    add b
    sub $7a
    rst $00
    inc c
    or c
    add b
    sbc $00
    ld a, d
    ret z

    inc c
    or c
    add b
    sbc $f4
    adc c
    rra
    push af
    add b
    call c, $85f4
    ld b, e
    ld a, [$4400]
    nop
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
    inc hl
    ld c, $02
    ld bc, $0f1c
    ld [bc], a
    ld [bc], a
    inc h
    rrca
    ld [bc], a
    inc bc
    ld a, [de]
    db $10
    ld [bc], a
    inc b
    dec e
    db $10
    ld [bc], a
    dec b
    ld [hl+], a
    db $10
    ld [bc], a
    ld b, $1f
    ld de, $0702
    daa
    inc de
    ld [bc], a
    ld [$1423], sp
    ld [bc], a
    add hl, bc
    jr z, jr_061_5aee

    ld [bc], a
    ld a, [bc]
    inc e
    dec d
    ld [bc], a
    dec bc
    dec d
    ld d, $02
    inc c
    inc d
    rla
    ld [bc], a
    dec c
    add hl, de
    rla
    ld [bc], a
    ld c, $29
    rla

jr_061_5aee:
    ld [bc], a
    rrca
    ld d, $18
    ld [bc], a
    db $10
    ld h, $19
    ld [bc], a
    ld de, $1a29
    ld [bc], a
    ld [de], a
    dec de
    inc e
    ld [bc], a
    inc de
    dec hl
    inc e
    ld [bc], a
    inc d
    ld a, [hl+]
    dec e
    ld [bc], a
    dec d
    daa
    ld e, $02
    ld d, $23
    jr nz, @+$04

    rla
    jr @+$24

    ld [bc], a
    jr jr_061_5b2b

    inc hl
    ld [bc], a
    add hl, de
    inc e
    inc hl
    ld [bc], a
    ld a, [de]
    dec d
    inc h
    ld [bc], a
    dec de
    rla
    dec h
    ld [bc], a
    inc e
    inc h
    dec h
    ld [bc], a
    dec e
    dec de
    daa
    ld [bc], a

jr_061_5b2b:
    ld e, $27
    daa
    ld [bc], a
    rra
    add hl, de
    jr z, jr_061_5b35

    jr nz, jr_061_5b53

jr_061_5b35:
    jr z, @+$04

    ld hl, $2823
    ld [bc], a
    ld [hl+], a
    add hl, hl
    jr z, jr_061_5b41

    inc hl
    ld a, [de]

jr_061_5b41:
    add hl, hl
    ld [bc], a
    inc h
    jr z, jr_061_5b6f

    ld [bc], a
    dec h
    dec h
    ld a, [hl+]
    ld [bc], a
    ld h, $27
    dec hl
    ld [bc], a
    daa
    rra
    jr nc, jr_061_5b55

jr_061_5b53:
    jr z, jr_061_5b71

jr_061_5b55:
    ld sp, $2902
    ld [hl+], a
    ld sp, $2a02
    ld e, $32
    ld [bc], a
    dec hl
    inc h
    ld [hl-], a
    ld [bc], a
    inc l
    jr nz, jr_061_5b99

    ld [bc], a
    dec l
    inc hl
    inc sp
    ld [bc], a
    ld l, $1f
    inc [hl]
    rst $38

jr_061_5b6f:
    rst $38
    rst $38

jr_061_5b71:
    ld a, c
    ld e, e
    ld l, b
    ld e, a
    or b
    ld h, h
    bit 4, h
    rrca
    dec c
    ld c, $0e
    dec c
    rst $38
    ldh [$fa], a
    ldh [$fd], a
    db $e3
    db $f4
    db $e3
    nop
    ld [$e9e0], a
    pop hl
    ld a, [$e2ff]
    ld [c], a
    ret nc

    ld [c], a
    ret nz

    push hl
    ldh a, [$e1]

jr_061_5b95:
    rst $38
    rst $38
    ld a, b
    rst $20

jr_061_5b99:
    and $90
    db $e4
    cp $e6
    ld c, l
    ld c, $0e
    ld c, l
    db $fc
    ldh [rBCPS], a
    rst $38
    rst $38
    cp [hl]
    rst $20
    ld a, $e2
    ld c, l
    rst $38
    ld [c], a
    dec l
    dec l
    jr nc, jr_061_5b95

    cp h
    dec a
    rst $38
    ld b, e
    jp hl


    dec c
    dec c
    ld l, l
    ld c, e
    rst $38
    ldh [$0d], a
    add $fb
    ldh [rKEY1], a
    dec l
    ld [hl], h
    ld [c], a
    adc d
    rst $38
    ld a, $ea
    ld l, l
    dec c
    ld [hl], a
    ld c, e
    dec hl
    dec bc
    ret nz

    ld [c], a
    dec c
    ld c, l
    dec l
    ld b, c
    rst $38
    cp $00
    db $ec
    dec c
    dec c
    ld c, e
    dec c
    dec hl
    ld a, [bc]
    ld l, d
    rst $00
    dec bc
    dec hl
    dec bc
    cp h
    ldh [$bf], a
    ldh [$6d], a
    jp nz, $4d4d

    inc a
    ld b, e
    rst $38
    jp nz, $4bc7

    dec hl
    ld a, [bc]
    ld a, [bc]
    pop bc
    ldh [$7b], a
    ld [c], a
    di
    ld c, l
    dec l
    db $76
    rst $18
    jp nz, Jump_000_0bcd

    ld l, e
    ld a, [bc]
    ld a, [hl+]
    inc e
    add c
    ldh [$be], a
    pop hl
    dec bc
    ld c, e
    ld l, l
    ld a, d
    jp nz, $c176

    rst $38
    rst $38
    db $fc
    call z, $c6a3
    ldh [rOCPD], a
    ld c, e
    dec hl
    ld c, e
    ld c, e
    ld l, e
    dec c
    ld c, e
    add hl, sp
    ldh [rWX], a
    ld l, l
    ld b, h
    ldh [$3a], a
    ret nz

    and a
    and l
    add b
    rst $18
    sbc a
    dec c
    dec bc
    dec c
    dec bc
    ld c, e
    cp [hl]
    ret nz

    cp $c0
    ld a, [bc]
    ld b, a
    ld a, [hl+]
    ld c, e
    ld c, e
    inc a
    add $b6
    rst $18
    ret nz

    rst $20
    dec c
    pop bc
    pop bc
    add l
    dec hl
    ld a, d
    ret nz

    dec hl
    ret nz

    ld [c], a
    jp nz, $fdc0

    rst $18
    ld a, [hl]
    and l
    ld c, l
    rra
    dec l
    dec bc
    dec bc
    dec c
    dec c
    nop
    ld [c], a
    cp a
    jp z, $df7a

    ld [$84c5], sp
    cp a
    ldh [$c0], a
    push hl
    dec bc
    cp b
    ldh [$bb], a
    and c
    db $eb
    add h
    ld a, l
    cp $10
    ld d, h
    and e
    adc c
    and d
    ret nz

    db $e3
    ld a, c
    and b
    dec hl
    db $fc
    and h
    ret nz

    rst $38
    jp c, Jump_061_66e6

    ld c, b
    and b
    ld l, e
    ld l, e
    ld bc, $7fe0
    pop hl
    ld c, e
    dec c
    ld a, [hl]
    db $e4
    jr nc, jr_061_5cae

    and l
    sbc a
    add l
    jp Jump_000_08b3


    add l
    ld c, e
    ld l, e
    rst $38
    jp nz, $a137

    ld b, e
    ld l, e
    ld l, e
    ld a, [hl]
    jp hl


    db $dd
    ld h, [hl]
    ld b, b
    or $bc
    and h
    ld c, e
    cp a
    db $e3
    rrca
    dec hl
    dec bc
    ld l, e
    ld l, e
    db $fc
    ret nz

jr_061_5cae:
    ld b, b
    jp $e4fd


    ld [hl], $da
    nop
    cp h
    and e
    ld a, e
    and b
    ld a, [hl]
    db $e3
    cp [hl]
    ld [c], a
    db $ed
    jp $eb5d


    dec hl
    jp nz, $8cee

    nop
    cp l
    add l
    cp h
    and b
    ld a, [hl-]
    and b
    ld a, l
    jp $a1f8


    db $fc
    pop bc
    rst $28
    ld h, c
    db $f4
    and d
    nop
    dec h
    ld h, l
    di
    or e
    ld d, [hl]
    and d
    dec a
    pop bc
    dec sp
    and b
    dec a
    db $e3
    or [hl]
    and e
    inc sp
    pop bc
    nop
    ldh a, [$63]
    or b
    and d
    ld [hl], h
    db $d3
    and b
    add $bb
    and e
    db $fc
    pop bc
    ld sp, hl
    add $aa
    and b
    pop bc
    dec bc
    ld l, d
    ld h, h
    xor [hl]
    add d
    xor $91
    add e
    ld b, a
    cp e
    and d
    dec c
    ld l, e
    nop
    or $80
    ld a, [hl-]
    and $72
    push hl
    xor a
    and h
    ld l, $b1
    sub h
    add d
    cp e
    and l
    adc a
    pop hl
    rlca
    dec hl
    dec l
    dec c
    dec sp
    push hl
    cp l
    rst $20
    xor e
    ld h, e
    xor [hl]
    sub e
    ccf
    and d
    ld a, h
    ld a, [hl-]
    ld b, d
    inc de
    and b
    dec l
    dec hl
    dec l
    dec l
    dec l
    ld sp, hl
    rst $00
    ld b, b
    xor $63
    or e
    jp nz, $485c

    add b
    call z, $a99b
    ld a, [hl]
    ld b, b
    dec l
    ld sp, $0080
    cp [hl]
    jp hl


    add hl, hl
    ld h, b
    sbc a
    ld h, b
    add sp, $43
    dec a
    db $f4
    db $e3
    add $0c
    add b
    ld a, [$00c2]
    or b
    ld h, c
    cp a
    ld [$e83d], a
    dec hl
    adc e
    sbc [hl]
    ld h, e
    cp b
    dec h
    ld [hl], h
    add h
    ret nc

    pop hl
    nop
    ld [hl], d
    and d
    ld l, [hl]
    and l
    ld a, h
    pop hl
    ld l, [hl]
    and d
    sub h
    ld h, $43
    daa
    ld a, b
    add hl, hl
    sbc d
    and h
    nop
    dec a
    pop hl
    ld [hl], b
    and c
    ld [hl], h
    ret z

    db $fc
    rst $00
    ld a, d
    call nc, Call_000_2938
    ld a, h
    db $e3
    ld l, h
    ld b, b
    ld bc, $396a
    and $a2
    ld b, c
    ld a, d
    db $d3
    or [hl]
    ld h, a
    inc [hl]
    rst $00
    ld l, [hl]
    ld h, c
    ld l, h
    ld b, b
    nop
    ld l, e
    ld b, h
    xor b
    ld h, e
    ld e, d
    ld b, b
    ld a, [hl-]
    call nz, $ce80
    ld a, [hl-]
    and d
    call Call_000_2d66
    ld h, [hl]
    ld sp, $ec6b
    jr nz, jr_061_5dda

    and h
    cp $c2
    dec c
    dec l
    jr z, @+$5a

    ld h, c
    jp nz, $4b00

    ld b, d
    ld sp, $29a5
    ld b, b
    add c
    rst $20
    add hl, hl
    and c

jr_061_5dbf:
    add sp, -$40
    xor l
    ld c, [hl]
    or [hl]
    jp z, Jump_061_6d08

    daa
    scf
    jp nz, $216f

    ld l, e
    ld l, e
    add [hl]
    dec de
    ld b, b
    ret nz

    db $e3
    cp c
    push hl
    nop
    inc hl
    ld [hl], h
    ldh a, [$86]

jr_061_5dda:
    ld [hl], d
    and b
    jp nz, $b4e0

    ld h, b
    jp hl


    ld h, h
    nop
    db $e3
    ld h, [hl]
    ld hl, $b200
    ld a, e
    ld l, [hl]
    ld h, [hl]
    daa
    ld b, c
    ld a, e
    jp nz, $85f0

    xor c
    ld b, [hl]
    add b
    jp nc, $0992

    nop
    jr nc, jr_061_5dbf

    ret nz

    pop hl
    and [hl]
    ld bc, $03e5
    and l
    ld [bc], a
    rrca
    ld b, d
    add sp, $26
    dec hl
    dec d
    nop
    and $05
    dec sp
    ret nz

    ret nz

    rst $20
    cp c
    add e
    inc a
    add $64
    ld [hl], $42
    inc hl
    and a
    inc hl
    nop
    dec sp
    pop bc
    ld a, [hl]
    push bc
    cp [hl]
    jp $a555


    add b
    call Call_000_0a92
    jp hl


    ld b, h
    cp $c1
    nop
    inc [hl]
    add a
    ld h, $a1
    jr z, jr_061_5e79

    ldh [rNR24], a
    ld a, $e7
    xor d
    inc hl
    inc hl
    inc h
    or a
    ld h, l
    nop
    cp d
    adc $c0
    rst $30
    ld [hl], $88
    dec [hl]
    ld h, d
    ret nz

    db $ed
    sbc [hl]
    dec d
    add sp, $26
    db $eb
    ld b, c
    ld b, d
    ld a, h
    and [hl]
    dec l
    and e
    inc b
    xor a
    inc hl
    pop hl
    ld a, [de]
    add sp, $26
    dec hl
    xor b
    dec h
    ld [bc], a
    cp $a0
    dec l
    cp a
    ld [c], a
    xor b
    rra
    xor [hl]
    add l
    dec h
    ld [bc], a
    ld h, $25
    cp $80
    nop
    ld [hl+], a
    ld h, b
    ld [hl], e
    ld b, l
    add b
    jp c, Jump_000_2644

    jp z, $e562

    ld [bc], a

jr_061_5e78:
    ld a, c

jr_061_5e79:
    ld h, d
    ld a, [$0083]
    ld l, a
    dec sp
    xor b
    dec b
    call z, $8923
    ld h, d
    ccf
    ld h, b
    pop bc
    db $e3
    inc sp
    ld c, b
    add b
    rst $18
    nop
    dec hl
    ld h, e
    ld c, b
    ld h, d
    or c
    inc hl
    ld [hl], $a3
    ld a, d
    and a
    add b
    db $db
    or e
    ld l, b
    and $04
    ld h, b
    rst $30
    call nz, $28f2
    add hl, hl
    dec e
    ld sp, $7c65
    ret nz

    ld c, e
    ld c, e
    cp b
    call nz, $b500
    ld b, e
    rst $38
    call c, $6516
    ld sp, $7c64
    add c
    db $ec
    dec h
    or c
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld hl, $800d
    ret c

    push af
    ld l, d
    xor a
    ld b, d
    or $22
    dec hl
    inc h
    nop
    or c
    ld [hl+], a
    nop
    cp h
    rst $18
    dec a
    jp hl


    ld l, l
    jr nz, jr_061_5e78

    ld bc, $c178
    ld [$bc43], a
    jp z, $b97d

    ld c, $f8
    add l
    dec bc
    dec hl
    dec c
    or l
    add e
    or c
    ld h, e
    or $67
    dec a
    cp $00
    ld c, d
    ld [hl+], a
    ret nz

    and l
    and $20
    add b
    db $e4
    cp a
    sbc $7a
    ret


    rst $38
    and d
    ld a, e
    and [hl]
    nop
    db $f4
    ld b, l
    ei
    sbc a
    dec a
    ret


    cp [hl]
    ld b, c
    cp [hl]
    pop bc
    and l
    nop
    ld [hl], h
    daa
    add b
    db $db
    jr jr_061_5f8a

    add $3d
    ret nz

    ei
    add l
    ld l, e
    ld c, e
    or d
    ld bc, $02b3
    add c
    rst $38
    jr nz, @+$79

    add d
    ld l, [hl]
    inc h
    dec l
    ld bc, $e3c1
    inc hl
    jr nz, @+$6f

    db $76
    inc de
    dec a
    ld a, [$7e00]
    ldh [$82], a
    pop hl
    db $f4
    ld bc, $e0c1
    or $47
    dec a
    ei
    rst $08
    nop
    db $e3
    ld [bc], a
    nop
    dec a
    ld [c], a
    ld a, h
    ld [c], a
    add d
    pop hl
    ld [bc], a
    rst $20
    cp d
    ld a, h
    call nz, $aae3
    ld h, $6a
    ld h, d
    nop
    ld b, e
    db $e4
    ld [hl], h
    dec d
    ret nz

    ldh a, [$79]
    and l
    add a
    adc b
    sbc $62
    add b
    rst $18
    xor $27
    nop
    db $10
    add sp, $02
    ld b, [hl]
    nop
    nop
    nop
    ld l, a
    and b
    ret c

    reti


    and b
    rst $38
    ldh [$d2], a
    db $d3
    rst $30
    pop hl
    jr c, @-$04

    ldh [$f3], a
    ldh [$ee], a
    pop hl
    call c, $dedd
    jp hl


    ldh [$fa], a
    rst $38
    rst $38
    and b
    and b
    jp c, $d0db

    pop de
    and b
    and b

jr_061_5f8a:
    di
    call nc, $f7d5
    ldh [$fa], a
    pop hl
    and b
    ret nc

    pop de
    jp c, $db7f

    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    ld a, [$f0ff]
    call c, $84e0
    db $e3
    rst $38
    add sp, $7c
    pop hl
    push hl
    and $e7
    add sp, -$4d
    jp hl


    ld_long $fffa, a
    call c, $d6e0
    rst $10
    add h
    pop hl
    sbc a
    ld e, e
    and d
    sbc l
    rst $38
    ld [c], a
    and d
    sbc a
    ld a, h
    ld [c], a
    and b
    ld [$b8e0], a
    ld b, e
    rst $38
    ld [c], a
    ld [c], a
    ld bc, $9fe2
    sbc h
    ld b, [hl]
    rst $38
    ldh [$ae], a
    ld [hl], $fb
    ldh [$9c], a
    sbc a
    ld [hl], h
    ld [c], a
    ret c

    reti


    ld b, e
    rst $38
    ld [c], a
    db $e3
    db $fc
    ld a, [bc]
    ldh [$c1], a
    ldh [$ae], a
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, [hl]
    xor a
    ret nz

    cp h
    pop hl
    cp a
    pop hl
    db $fd
    pop bc
    ld b, e
    rst $38
    ld [c], a
    db $e3
    add e
    pop bc
    sbc [hl]
    ld b, [hl]
    ld a, a
    xor a
    ld b, l
    ld b, a
    ld d, d
    ld b, l
    ld b, l
    ld b, c
    cp h
    ldh [$f0], a
    cp a
    pop hl
    rst $28
    add $3d
    rst $38
    sub b
    pop bc
    and b
    sbc [hl]
    xor [hl]
    ld b, [hl]
    ld a, a
    ld b, h
    ld c, l
    ld e, b
    ld b, l
    ld a, [hl+]
    jr nz, jr_061_6041

    ld a, e
    pop hl
    add e
    sbc h
    sbc a
    ld [hl], e
    ret nz

    rst $38

jr_061_601f:
    pop bc
    ld b, e
    rst $38
    add b
    pop bc
    ld b, $c0
    sbc [hl]
    rst $38
    xor a
    ld b, [hl]
    ld b, l
    ld d, d
    ld d, d
    ld b, d
    jr nz, jr_061_6050

    dec de
    jr nz, jr_061_6075

    add hl, sp
    ldh [rDMA], a
    sbc [hl]
    db $fc
    and h
    ld b, e
    rst $38
    rra
    ldh [$fa], a
    ld b, $c1
    sbc [hl]

jr_061_6041:
    jp nz, $45c0

    ld b, l
    ld b, d
    ld hl, $8126
    ld a, [hl+]
    add hl, sp
    pop hl
    ret nz

    ld [c], a
    di
    and b

jr_061_6050:
    ld a, h
    pop bc
    dec a
    rst $38
    ld d, [hl]
    pop bc
    sbc [hl]
    ld e, $85
    jp nz, Jump_000_3c44

    dec [hl]
    ld [hl], $79
    ldh [$c0], a
    pop hl
    xor [hl]
    and c
    add sp, $67
    and d
    dec a
    rst $38
    ld b, c
    and c
    and c
    add l
    ret nz

    xor [hl]
    ld b, [hl]
    ld b, d
    ld e, a
    dec [hl]
    dec [hl]
    dec [hl]

jr_061_6075:
    ld [hl], $44
    ld b, b
    ldh [$a1], a
    jr c, jr_061_601f

    ret z

    ld h, [hl]
    pop bc
    dec a
    rst $38
    ld b, b
    jp $8746


    ret nz

    add b
    ldh [$35], a
    dec [hl]
    add c
    add hl, sp
    ld a, [$bfa0]
    jp nz, $e27d

    ld a, d
    rst $18
    ld a, a
    jp $a0c0


    xor [hl]
    dec e
    xor a
    add b
    pop hl
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld a, [$bba0]
    and c
    or l
    add c
    ld hl, sp-$02
    jp nz, $be00

    adc e
    add c
    sbc a
    sbc h
    xor a
    ld a, c
    ld a, d
    rrca
    ld h, h
    ld h, h
    ld h, l
    ld h, [hl]
    ld a, a
    ld [c], a
    ld a, d
    and c
    or l
    add c
    ld h, l
    add d
    db $fc
    add b
    db $dd
    rrca
    and e
    sbc a
    sbc h
    ld a, [hl]
    ld b, l
    ld a, [hl-]
    dec [hl]

Jump_061_60ca:
    rlca
    dec [hl]
    ld l, b
    ld h, [hl]
    ld a, a
    pop hl
    dec a
    pop hl
    ld [hl], a
    add e
    ld a, [hl-]
    db $e3
    db $76
    jp Jump_061_7428


    db $d3
    call nc, $bc82
    and e
    add hl, sp
    cp a
    ret nz

    ld l, d
    ld a, h
    ret nz

    scf
    and c
    ldh [$7a], a
    and h
    rst $28
    ld h, a
    ld [hl], h
    push de
    pop de
    ld h, d
    cp h
    and h
    ld [hl], $35
    dec [hl]
    rra
    ld [hl], l
    ld h, [hl]
    dec [hl]
    jr c, jr_061_6132

    cp h
    and b
    ld a, d
    and e
    jp hl


    ld h, c
    ld l, h
    ld [c], a
    ld h, b
    call c, $d681
    rst $10
    ld [hl], h
    db $d3
    db $dd
    sbc $c8
    ld h, e
    inc b
    db $fc
    and c
    ld a, $e1
    ld [hl], a
    db $fc
    ret nz

    cp [hl]
    pop hl
    or a
    add d
    ldh a, [$65]
    sbc [hl]
    ld h, b
    nop
    ld e, c
    ld h, e
    xor $8f
    ld e, $a0
    jp nz, $fc62

    and b
    ld a, $e3
    db $fc
    ret nz

    ld hl, sp-$60
    ld [bc], a
    ld a, c
    ret nz

jr_061_6132:
    sbc h
    db $ec
    ld h, c
    ldh a, [$63]
    ld [hl+], a
    ld h, b
    ld e, b
    add c
    or c
    or c
    ld e, $a0
    ld e, b
    jp nc, $fd62

    ld h, b
    ld a, [$3780]
    jr c, @-$02

    jp nz, Jump_000_3b35

    db $e4
    ld h, b
    ld a, d
    push hl
    xor h
    ld h, d
    ld [hl], h
    db $d3
    ldh [$c6], a
    cp h
    ld h, c
    xor [hl]
    xor [hl]
    db $fc
    pop bc
    nop
    ret nz

    pop hl
    cp [hl]
    db $e4
    ld [hl], d
    add b
    ld l, d
    ld h, e
    ld e, b
    add d
    xor $91
    add e
    ld b, c
    add $40
    ld a, [hl]
    cp e
    and e
    xor a
    xor a
    xor [hl]
    ld b, l
    ccf
    ld [hl], $c0
    db $e3
    ld [bc], a
    ld a, h
    pop hl
    ccf
    ld a, e
    ld [c], a
    xor a
    and [hl]
    xor $91
    inc de
    ld h, h
    cp e
    and e
    adc a
    pop hl
    rlca
    ld b, [hl]
    add e
    add h
    ld a, b
    ret nz

    cp l
    db $ec
    xor a
    and e
    xor $91
    sbc [hl]
    ld h, b
    or $fe
    ld hl, $d5d4
    add hl, sp
    and c
    sbc l
    sbc l
    sbc h
    ld b, [hl]
    rlca
    add e
    add [hl]
    add l
    ld sp, hl
    jp $e47a


    ldh a, [$a0]
    xor a
    and h
    ld e, d
    ld b, a
    ld hl, sp-$80
    res 4, l
    jp nz, Jump_000_24c4

    sbc a
    sbc h
    add [hl]
    add l
    xor [hl]
    inc bc
    ld b, [hl]
    xor [hl]
    cp [hl]
    jp hl


    xor a
    and c
    ld l, [hl]
    and l
    ld l, b
    ld l, a
    add b
    pop bc
    ld d, b
    ld b, d
    ld d, $48
    ld b, d
    ret nc

    pop de
    ld a, b
    pop bc
    xor [hl]
    or [hl]
    ld b, b
    or e
    and c
    cp a
    add sp, $00
    ld l, [hl]
    and l
    ld l, b
    ld l, [hl]
    sbc [hl]
    ld h, e
    dec sp
    ld [hl+], a
    push af
    jr nz, jr_061_621d

    jr nz, jr_061_621d

    jp nz, $4035

    ld a, [bc]
    cp a
    ld [c], a
    dec sp
    dec a
    db $e3
    ld b, c
    and [hl]
    ld b, b
    ld h, [hl]
    ld b, b
    db $fd
    call nz, $8a2b
    ret nz

    sbc [hl]
    ld h, e
    ld [c], a
    and d
    or $00
    ccf
    ld hl, $c1fa
    or b
    ld h, c
    xor [hl]
    ccf
    rlca
    ld b, c
    ccf
    ld b, e
    or l
    push bc
    xor a
    and d
    db $e4
    inc hl
    and l
    ld c, e
    sbc [hl]
    ld h, e
    jr nc, jr_061_6256

    ld [hl+], a
    and h
    and $b3
    and e
    inc l

jr_061_621d:
    ld b, b
    ld c, h
    ld d, d
    add hl, sp
    and $b9
    pop bc
    add b
    and e
    jr nz, jr_061_625e

    and h
    add b
    jp z, Jump_061_66b6

    ld b, a
    inc h
    xor a
    ld h, e
    xor l
    ld b, b
    ld d, d
    db $fd
    ld h, c
    ret nz

    push hl
    ld h, d
    ld h, e
    ld h, h
    ld a, e
    ld a, h
    ld a, l
    add b
    ld h, $63
    sbc b
    nop
    nop
    xor e
    db $db
    ld b, e
    dec bc
    inc hl
    ld [hl-], a
    ld bc, $a5f4
    xor [hl]
    ei
    ld b, l
    ld e, e
    pop bc
    push hl
    ld h, a
    dec [hl]
    dec [hl]

jr_061_6256:
    ld b, d
    ld b, [hl]
    rlca
    ld a, a
    ld a, l
    sbc [hl]
    ld e, [hl]
    ld [bc], a

jr_061_625e:
    nop
    xor l
    dec a
    push hl
    sbc l
    add c
    ld sp, $7421
    xor a
    ld h, h
    jr nc, jr_061_628c

    ld b, d
    db $ec
    ld b, c
    dec [hl]
    dec [hl]
    ld l, c
    and $42
    inc bc
    ld b, [hl]
    ld a, a
    and $21
    scf
    adc h
    ld e, $48
    ld h, a
    and $ae
    ld h, d
    xor h
    ld [bc], a
    ld [hl], c
    ld b, b
    ld a, [hl]
    ret nz

    ld a, h
    ret nz

    ret nz

    pop hl
    ld a, [hl-]
    ld b, l

jr_061_628c:
    xor [hl]
    and [hl]
    ld h, $f0
    add b
    adc $18
    ld c, c
    xor [hl]
    ld h, l
    ld [hl], d
    and c
    ld b, l
    ccf
    ld b, e
    ld b, c
    ld e, a
    ld b, e
    ccf
    ld a, [hl-]
    ld l, e
    ld l, h
    ld h, l
    ld b, c
    xor a
    and $22
    ret nz

    scf
    adc h
    ld e, $4f
    add e
    ld [hl+], a
    ld c, [hl]
    add e
    jr z, jr_061_62b2

jr_061_62b2:
    ld a, e
    pop bc
    add hl, sp
    ld l, [hl]
    add c
    ld [hl], h
    ld h, l
    ld b, d
    ld h, $20
    ld l, c
    ld b, h
    add b
    jp nc, $4a2a

    and [hl]
    inc bc
    and c
    sbc $a7
    nop
    ld h, c
    ld d, [hl]
    ld b, h
    inc a
    rst $38
    pop bc
    inc a
    ld b, h
    and b
    dec hl
    ld h, h
    ld [hl], l
    ld h, h
    add b
    call z, $eb3d
    ld [hl], e
    and h
    sbc [hl]
    dec sp
    pop bc
    ld d, l
    ld bc, $bf42
    jp nz, $c07e

    cp l
    and e
    db $e4
    inc bc
    add b
    call $eb3d
    ld [hl], e
    and h
    ld c, h
    ccf

jr_061_62f1:
    pop hl
    dec sp
    ret nz

    ld h, d
    db $76
    and h
    ld hl, $2164
    and c
    sbc l
    and e
    jr nz, jr_061_62f1

    ld b, b
    add b
    rst $08
    sub d
    ld a, [bc]
    rla
    and h
    cp $c1
    ld [hl], $01
    pop bc
    ld h, h
    inc hl
    ld bc, $24ae
    nop
    and e
    ld bc, $85f9
    add b
    pop de
    or c
    xor b
    add sp, $21
    inc a
    ret nz

    inc b
    ld b, d
    ld [c], a
    db $e3
    ld [bc], a
    xor a
    add sp, $23
    sub [hl]
    and c
    dec a
    db $e4
    sbc [hl]
    dec d
    add sp, $26
    nop
    jp hl


    jr nz, jr_061_62f1

    push hl
    ld a, [hl]
    ret nz

    and e
    inc bc
    inc sp
    ld b, c
    dec a
    db $e4
    and h
    rla
    add sp, $26
    inc sp
    ld a, c
    ld a, [hl]
    ld h, $20
    ld a, a
    db $e4
    ld b, [hl]
    add e
    ld a, d
    add c
    ld c, e
    ld bc, $da23
    db $db
    add b
    rst $10
    ld a, d

jr_061_6351:
    add $e8
    ld [hl+], a
    add b
    add sp, $23
    ld h, d
    ld [bc], a
    ret nz

    ld [hl+], a
    ld h, b
    add hl, sp
    add h
    add b
    reti


    dec hl
    add l
    xor [hl]
    ld h, b
    db $76
    add b
    add d
    add e
    ld e, $73
    ld h, h
    ld l, h
    ld [hl], d
    adc b
    add a
    ld [hl+], a
    ld h, b
    cp h
    jp $dc80


    db $ec
    ld e, c
    push bc
    dec [hl]
    add b

Jump_061_637a:
    add l
    add [hl]
    cp a
    db $e3
    ld l, h
    ld l, a
    ld l, [hl]
    add d
    cp e
    add b
    xor a
    inc a
    pop bc
    cp h
    call nz, $dd80
    rst $20
    ld [hl+], a
    cp a
    ld [c], a
    ld b, h
    ld bc, $c13c
    pop hl
    cp [hl]
    jp nz, $4433

    rst $28
    nop
    add b
    sbc $c1
    inc bc
    ld a, [hl]
    ldh [$3f], a
    add a
    adc b
    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    inc a
    and d
    or c
    inc h
    nop
    cp c
    ld h, c
    add b
    db $dd
    xor a
    ld h, c
    xor $42
    cp c
    add b
    db $ed
    inc hl
    di
    ld hl, $e5bf
    ldh a, [rNR13]
    ld h, e
    add b
    reti


    ld c, h
    inc bc
    ld sp, $4564
    ccf
    scf
    jr c, jr_061_63ca

jr_061_63ca:
    pop bc
    db $e4
    ld a, [c]
    ld h, $31
    jr nz, jr_061_6351

    reti


    rst $10
    add e
    dec h
    dec h
    dec l
    ld b, b
    pop af
    inc b
    nop
    or c
    inc hl
    adc a
    ld [hl+], a
    add b
    ret c

    ld l, [hl]
    jp nz, $442c

    cp a
    db $e4
    xor e
    ld b, c
    push af
    jr nz, jr_061_63ec

jr_061_63ec:
    or c
    inc hl
    rst $28
    nop
    ld a, c
    add a
    ld a, [$2495]
    inc hl
    ld hl, sp-$7e
    ld c, b
    pop hl
    xor d
    jr nz, jr_061_63fe

    and [hl]

jr_061_63fe:
    db $fc
    call nz, $8176
    ld a, c
    add a
    ld a, [$f696]
    ld h, a
    adc c
    pop hl
    dec [hl]
    add b
    inc bc
    and a
    ld h, [hl]
    cp e
    jp $41f4


    dec [hl]
    ld b, b
    ld b, e
    ld sp, hl
    dec a
    jp hl


    add b
    pop hl
    add [hl]
    dec [hl]
    add d
    and e
    ld l, b
    cp a
    db $e3
    db $f4
    ld b, c
    add b
    db $db
    dec a
    ld [$cca1], a
    pop bc
    db $e4
    ld a, [hl-]
    and b
    or a
    cp b
    db $76
    ld h, b
    db $f4
    ld b, e
    sub $d7
    jr c, jr_061_6438

jr_061_6438:
    cp b
    dec a
    ld [$62b7], a
    cp c
    cp d
    and e
    ld a, [hl-]
    and c
    ld l, $00
    ldh [$34], a
    ld b, c
    scf
    add h
    ld b, e
    ld a, [$c67a]
    dec l
    jr nz, jr_061_6495

    ld [hl], $6e
    inc bc
    ld l, a
    ld l, h
    pop bc
    db $e3
    ld a, [$5683]
    ld b, c
    ld b, e
    ei
    ld a, d
    ret


    cp a
    db $e3
    nop
    pop bc
    db $e3
    or [hl]
    ld b, e
    rrca
    ld hl, $fb43
    ld h, d
    rlca
    xor e
    ld [bc], a
    ld a, [hl]
    ldh [$c1], a
    add sp, $30
    scf
    ld b, d
    ld b, e
    rst $38
    and a
    inc bc
    xor e
    inc bc
    ld b, l
    ld [hl], $82
    and $5a
    nop
    db $10
    db $d3
    ld bc, $ff43
    ld l, e
    inc bc
    xor e
    inc bc
    sbc l
    rst $38
    db $e4
    ret nz

    add b
    ld b, c
    and d
    nop
    nop
    cp d
    db $f4

jr_061_6495:
    ld h, $52
    ld b, l
    adc $82
    add [hl]
    add l
    ld b, c
    and e
    nop
    cp l
    ld l, b
    ld l, b
    di
    sub $d7
    inc bc
    inc h
    or a
    and $d8
    reti


    call c, Call_000_00dd
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
    dec bc
    dec b
    ld [bc], a
    ld bc, $0606
    ld [bc], a
    ld [bc], a
    rrca
    ld b, $02
    inc bc
    db $10
    rlca
    ld [bc], a
    inc b
    dec b
    ld [$0502], sp
    ld b, $0b
    ld [bc], a
    ld b, $08
    inc c
    ld [bc], a
    rlca
    add hl, bc
    dec c
    ld [bc], a
    ld [$0d11], sp
    ld [bc], a
    add hl, bc
    ld [$020e], sp
    ld a, [bc]
    ld [de], a
    rrca
    ld [bc], a
    dec bc
    inc d
    db $10
    ld [bc], a
    inc c
    add hl, bc
    ld de, $0d02
    ld a, [bc]
    inc de
    ld [bc], a
    ld c, $18
    inc de
    ld [bc], a
    rrca
    dec bc
    inc d
    ld [bc], a
    db $10
    ld e, $15
    ld [bc], a
    ld de, $160d
    ld [bc], a
    ld [de], a
    ld c, $16
    ld [bc], a
    inc de
    rrca
    rla
    ld [bc], a
    inc d
    dec h
    add hl, de
    ld [bc], a
    dec d
    inc de
    ld a, [de]
    ld [bc], a
    ld d, $15
    ld a, [de]
    ld [bc], a
    rla
    ld h, $1a
    ld [bc], a
    jr jr_061_6542

    dec de
    ld [bc], a
    add hl, de
    ld d, $1c
    ld [bc], a
    ld a, [de]
    add hl, hl
    inc e
    ld [bc], a
    dec de
    jr jr_061_6558

    ld [bc], a
    inc e
    ld a, [de]
    dec e
    ld [bc], a
    dec e
    dec de

jr_061_6542:
    jr nz, jr_061_6546

    ld e, $2b

jr_061_6546:
    ld [hl+], a
    ld [bc], a
    rra
    dec l
    daa
    ld [bc], a
    jr nz, jr_061_657c

    jr z, @+$04

    ld hl, $2b22
    ld [bc], a
    ld [hl+], a
    ld sp, $022d

jr_061_6558:
    inc hl
    inc [hl]
    ld [hl-], a
    ld [bc], a
    inc h
    dec [hl]
    inc sp
    ld [bc], a
    dec h
    inc l
    dec [hl]
    ld [bc], a
    ld h, $37
    add hl, sp
    rst $38
    rst $38
    rst $38
    ld [hl], d
    ld h, l
    db $f4
    ld l, b
    ld [hl], a
    ld l, l
    sub d
    ld l, l
    cp a
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $fa
    db $ed
    ld c, l

jr_061_657c:
    ld bc, $e84d
    pop hl
    db $fc
    rst $20
    ldh a, [$e1]
    db $ec
    ld [c], a
    sub $ee
    push bc
    ldh [$fd], a
    rst $28
    ld bc, $ea2d
    ld a, [c]
    rst $38
    rst $38
    or e
    push hl
    add d
    db $ec
    ld a, d
    and $93
    ldh a, [rSCX]
    ldh a, [$82]
    ld l, h
    ld [$742d], a
    ld [$e014], a
    sub $f6
    add e
    and $04
    ld [$f12d], a
    dec l
    db $76
    db $ed
    rst $38
    rst $38
    add [hl]
    rst $20
    dec c
    ld l, l
    ld l, l
    ld l, l
    ld d, b
    ld a, [hl]
    pop hl
    ld a, d
    db $eb
    ld a, $ed
    add [hl]
    db $d3
    dec l
    jp Jump_000_0be1


    rst $38
    ldh [rSB], a
    ld c, l
    cp h
    pop hl
    ld a, d
    push bc
    ld a, $e1
    add b
    ret c

    ld [hl], b
    add $48
    ldh [$c3], a
    ld [c], a
    add [hl]
    db $fc
    db $e3
    ld c, l
    dec l
    ld hl, sp-$39
    dec a
    ld a, [$c608]
    ld b, [hl]
    ldh [$0b], a
    inc bc
    dec bc
    dec c
    add c
    ldh [$fc], a
    db $e3
    ret nz

    ldh [$f0], a
    and [hl]
    add b
    db $db
    ld l, d
    jp $8480


    db $e3
    ret nz

    rst $20
    ld a, a
    ldh [$0d], a
    db $f4
    add [hl]
    jp nc, $e484

    db $fd
    add sp, $4d
    nop
    xor h
    and b
    ld l, d
    and c
    rst $38
    rst $38
    add c
    and b
    ld c, b
    db $e4
    ld b, l
    ret nz

    inc hl
    and b
    ld a, $c0
    ldh [$ba], a
    pop bc
    ld l, h
    or [hl]
    nop
    and [hl]
    sbc [hl]
    add $cf
    db $e4
    dec c
    dec l
    inc c
    ld b, $ff
    ld [c], a
    inc l
    dec c
    or e
    db $e4
    add d
    call nz, $b300
    adc b
    and [hl]
    add [hl]
    jp nz, $ce34

    pop bc
    jp nz, Jump_000_2ce4

    ret nz

    ld [c], a
    dec c
    ld l, l
    reti


    db $ec
    ld sp, hl
    or b
    or h
    adc [hl]
    and [hl]
    add [hl]
    pop bc
    dec c
    add e
    ldh [$6c], a
    ld c, h
    rst $38
    pop hl
    ld l, h
    add d
    ld a, c
    pop bc
    dec l
    nop
    rst $00
    nop
    or [hl]
    ld b, $c6
    ld de, $43e1
    ldh [$6c], a
    add hl, bc
    ld l, h
    ld d, b
    db $e3
    ld a, [hl-]
    pop bc
    ld l, l
    ld l, h
    add h
    nop
    cp e
    ld [$8a83], sp
    and c
    ld [$e081], sp
    pop bc
    ldh [$81], a
    and b
    dec hl
    nop
    call $df82
    ld b, c
    db $e3
    ld [$c0e0], sp
    call nz, $bfe1
    pop hl
    ret nz

    and d
    add b
    rst $18
    ld [$01a5], sp
    db $e4
    inc l
    dec c
    rlca
    dec c
    ld c, e
    ld c, e
    ld a, a
    db $e3
    add d
    jp $ba00


    add b
    rst $00
    add $a2
    cp $c0
    pop hl
    inc l
    dec c
    ld l, e
    ld c, e
    ld c, e
    ld c, e
    ld l, e
    ld h, c
    ld c, e
    push af
    and c
    db $dd
    sub b
    ld a, c
    sub b
    ld [$4d62], sp
    dec l
    nop
    db $e3
    ld a, [bc]
    rlca
    ret nz

    dec hl
    jp nz, $4be0

Jump_061_66b6:
    ld b, d
    call nz, $46ec
    add b
    call c, $40ae
    inc c
    db $10
    pop bc
    ld b, a
    jp $0b6b


    add c

jr_061_66c6:
    jp nz, $8c00

    nop
    cp l
    add a
    add c
    ld b, $47
    jp $4b4b


    ld b, b
    jp nz, Jump_061_637a

    cp d
    ld a, c
    db $ec
    ld c, d
    adc c
    jp nz, $4b01

    ld b, [hl]
    pop bc
    ld b, e
    ld [c], a
    ld [bc], a
    rst $00
    add b
    ld a, d

Jump_061_66e6:
    inc e
    ld b, l
    rst $08
    and d
    adc c
    jp $c44c


    ret nz

    pop bc
    and b
    dec c
    ld l, l
    add d
    ld h, [hl]
    nop
    ld d, a
    ld c, l
    ld h, d
    add l
    ld [bc], a
    ld bc, $2ba3
    add d
    ld [c], a
    ld b, d
    ldh [$c3], a
    ld h, d
    ld c, h
    rst $38
    ret nz

    pop hl
    add d
    add a
    inc b
    ret nz

    ldh [$82], a
    ld h, c
    ld l, e
    pop bc
    ld [c], a
    add c
    ldh [$72], a
    inc hl
    cp c
    pop af
    nop
    or b
    nop
    ld b, c
    push hl
    ret nz

    push hl
    inc b
    ld l, c
    nop
    ld e, h
    ld [$8b22], sp
    ld b, d
    add a
    and b
    ld a, $62
    ld h, b
    db $fd
    ld b, b
    jp $8240


    ld b, a
    scf
    rst $38
    ld b, d
    add c
    dec l
    dec c
    nop
    ld [c], a
    nop
    pop bc
    ld b, h
    add d
    ld c, c
    add b
    reti


    add d
    add $89
    jr nz, jr_061_66c6

    db $e3
    pop bc
    and b
    ld b, h
    ld h, d
    ld [$5f00], sp
    add b
    rst $00
    ld c, e
    ld b, d
    dec c
    ld b, b
    db $e4
    cp c
    ld b, e
    add d
    ld c, d
    dec a
    db $f4
    ld [$c240], sp
    ld a, [hl]
    and d
    add hl, bc
    ld [c], a
    ld l, e
    add b
    db $e4
    ld a, $e5
    db $76
    ld [$7c80], sp
    ld b, b
    pop bc
    add c
    ret nz

    ldh [$bf], a
    jp $8203


    add d
    ld c, [hl]
    nop
    ld e, d
    dec l
    cp a
    ld [c], a
    ld bc, $7f6b
    db $e3
    cp b
    and d
    add d
    ld b, l
    nop
    ld e, a
    nop
    ld h, [hl]
    ccf
    push hl
    ccf
    ld h, d
    nop
    cp a
    add d
    add b
    ld a, a
    nop
    xor c
    ccf
    ld [c], a
    cp h
    push bc
    ld a, [hl]
    rst $00
    nop
    ld e, b
    nop
    and [hl]
    add b
    cp $a3
    dec c
    ld b, c
    db $fc
    call nz, $ca7e
    nop
    ld d, [hl]
    nop
    and h
    ld a, d
    jp nz, Jump_000_002d

    ld [bc], a
    add d
    ld a, e
    ret nz

    ld a, d
    jp nz, $c0b5

    cp a
    ld bc, $5f00
    ld a, [hl]
    ld b, [hl]
    cp a
    rst $20
    nop
    dec sp
    call nz, $47fe
    nop
    cp e
    ld a, [hl]
    jr z, jr_061_6845

    ld h, d
    ld a, [hl-]
    jp nz, $c335

    ld a, [hl]
    rst $18
    nop
    ld a, [hl]
    res 0, h
    and d
    rst $38
    ld [hl+], a
    dec sp
    ld b, c
    add b
    rra
    daa
    ld b, h
    ld a, [hl]
    ld h, a
    ld a, [$0001]
    ld a, [$75a2]
    add e
    ld a, [hl]
    and [hl]
    add b
    dec e
    ld a, h
    and [hl]
    inc bc
    and c
    ret nz

    dec h
    ld a, e
    ld h, b
    nop
    nop
    ld e, a
    add d
    ld b, e
    ld a, d
    ld b, e
    add d
    and a
    ld [hl], $a2
    ld a, a
    pop bc
    db $fc
    ld c, b
    nop
    ld e, e
    nop
    ld a, h
    ld h, $c3
    ld [bc], a
    rst $30
    ld h, h
    db $fc
    add hl, hl
    nop
    cp b
    inc e
    inc h
    ld a, h
    ld h, d
    ret nz

    jp $c100


    jp $25fc


    cp l
    ld e, e
    or [hl]
    ld h, $04
    and [hl]
    ld [hl], $62
    cp e
    ld h, h
    add b
    call c, $3000
    ld b, h
    db $fc
    ld h, h
    rst $00
    ld h, d
    ld a, [hl-]
    add b
    scf
    add c
    cpl
    and d
    nop
    db $e3
    db $f4
    ld b, c
    nop
    nop
    ld d, d
    ld a, [hl+]
    and e
    ret c

    nop
    cp $86
    cp a
    ld [hl+], a
    db $fc
    add l
    ld a, [$f525]
    ld e, d

jr_061_6845:
    ld [bc], a
    ret nz

    ldh [$6d], a
    sub [hl]
    nop
    ld a, [hl]
    inc h
    cp h
    push hl
    or l
    db $e4
    db $fc
    dec b
    or l
    ld l, l
    add b
    ld l, l
    dec l
    ld a, h
    ld h, l
    ret nz

    db $ec
    db $fc
    inc b
    nop
    ld e, e
    ld a, d
    rlca
    add l
    ld h, d
    dec hl
    nop
    add hl, sp
    ld hl, $e1fe
    nop
    cp a
    ld a, h
    ld l, h
    dec a
    ld bc, $c507
    or [hl]
    ld bc, $a880
    nop
    add b
    db $db
    ld a, [hl]
    add h
    ret nz

    ld a, [c]
    nop
    ld e, d
    ld a, [$bc8a]
    ld b, d
    add $44
    scf
    inc h
    nop
    ld h, [hl]
    call nz, Call_061_5600
    cp d
    add [hl]
    ld a, [hl]
    and e
    cp [hl]
    ret nz

    ld b, a
    and l
    jp nz, Jump_000_00c4

    and c
    ld l, h
    nop
    ld e, e
    ld a, d
    ld a, [bc]
    ld c, l
    dec l
    nop
    rst $20
    dec c
    dec l
    pop bc
    ldh [$08], a
    nop
    ld e, a
    ld a, [hl]
    bit 7, [hl]
    ld b, b
    ld l, e
    ret nz

    and b
    cp l
    and c
    nop
    jr z, @+$01

    rst $38
    ld [hl], $ef
    ld h, [hl]
    dec hl
    ld l, e
    rst $38
    db $e3
    ld c, e
    dec hl
    add b
    rra
    ld a, d
    ld h, a
    nop
    sub $22
    ld a, d
    ld b, h
    inc bc
    and $82
    ld b, $d0
    sub b
    add e
    inc l
    sub [hl]
    and $38
    jr nz, jr_061_68d4

jr_061_68d4:
    rst $38
    db $e4
    add l
    add $ff
    rst $38
    ld e, b
    ld [hl+], a
    ld d, d
    ld bc, $427a
    db $fc
    and $04
    db $e3
    ld h, b
    dec sp
    pop af
    add b
    push de
    cp d
    db $e3
    or d
    push hl
    sub e
    or l
    ld c, $0e
    nop
    nop
    nop
    cp a
    db $dd
    sbc $a0
    and b
    and b
    call c, $eefa
    and b
    di
    ret c

    reti


    db $fc
    ld a, [c]
    sub $ee
    ld [c], a
    db $e3
    db $e4
    rst $18
    ei
    ldh [$e1], a
    ld a, [$a0ec]
    sub $d7
    jp c, $c3db

    ret nc

    pop de
    db $fc
    rst $20
    ldh a, [$e1]
    db $ec
    pop hl
    sub $ee
    rst $18
    add sp, -$61
    jp hl


    ld [$e6e5], a
    rst $20
    ld a, [$82ec]
    ld [c], a
    jp nc, $d391

    db $fc
    rst $20
    ld [hl], d
    db $e4
    sub $ef
    push hl
    ld b, e
    pop af
    add d
    db $e3
    call nc, $d50d
    db $fc
    pop hl
    and b
    and b
    ld hl, sp-$1f
    ld a, d
    push hl
    ld h, $e1
    inc de
    db $eb
    nop
    ld b, e
    ldh a, [$82]
    ld [$c1f4], a
    ld a, d
    jp hl


    inc de
    db $ed
    ld b, e
    rst $28
    add d
    push hl
    add [hl]
    pop hl
    cp a
    sbc a
    sbc l
    sbc l
    sbc l
    and d
    sbc a
    ld a, d
    rst $20
    sub $61
    rst $10
    inc de
    db $ed
    add [hl]
    db $d3
    add [hl]
    ld [c], a
    jp $9ce0


    ld b, [hl]
    rst $38
    ldh [rIF], a
    sbc h
    sbc l
    sbc l
    sbc a
    ld a, d
    db $e4
    ld l, d
    pop bc
    add b
    jp c, $e604

    ld l, b
    pop bc
    ldh [$c3], a
    ld [c], a
    db $fc
    db $e3
    sbc h
    cp a
    ldh [$d4], a
    push de
    ld a, d
    jp Jump_000_3d2c


    db $eb
    add [hl]

jr_061_698f:
    call nc, $a29f
    add h
    pop hl
    xor [hl]
    add c
    ldh [$fc], a
    db $e3
    ld hl, $ec9e
    xor b
    add b
    ret c

    add [hl]
    push bc
    add h
    db $e4
    xor a
    db $fc
    and $7f
    ldh [$c0], a
    ld hl, sp-$5b
    add b
    rst $10
    add [hl]
    add $45
    pop hl
    add h
    pop hl
    db $fd
    add sp, -$64
    sbc a
    add sp, -$08
    and e
    add b
    reti


    add [hl]
    add $9e
    add h
    db $e3
    add e
    adc c
    adc b
    ld l, $ff
    ldh [$89], a
    adc c
    add e
    cp d
    pop bc
    sbc [hl]

jr_061_69cd:
    nop
    db $e3
    add b
    ret c

    db $fc
    add [hl]
    rst $00
    ret nz

    pop hl
    ld b, [hl]
    add e
    adc b
    add a
    ld [bc], a
    rlca
    ld b, $ff
    pop hl
    ld [bc], a
    adc e
    rst $30
    pop bc
    cp $c0
    add d
    call nz, $b300
    cp c
    add b
    db $fc
    jr jr_061_698f

    add [hl]
    call nz, $46ae
    add e
    add [hl]
    ld [bc], a
    rlca
    rst $38
    rrca
    nop
    ld bc, $9a98
    sbc e
    ld [$c080], sp
    rst $38
    jp nz, $a67e

    nop
    or e
    sub l
    and d
    jr nz, jr_061_69cd

    ld b, c
    ldh [$af], a
    ld b, [hl]
    ld e, a
    adc d
    ld [bc], a
    rrca
    sbc c
    rrca
    add b
    db $e3
    adc l
    ld b, c
    pop hl
    ldh a, [rP1]
    rst $00
    nop
    or [hl]
    adc d
    add e
    ld b, c
    db $e3
    add e
    add a
    ld [$2f98], sp
    rrca
    ld [bc], a
    ld a, d
    ld a, e
    rst $38
    ldh [$8f], a
    rst $38
    and e
    nop
    jp Jump_000_00f8


    cp c
    add d
    ret z

    add c
    pop hl
    rrca
    ld [bc], a
    ld a, [hl]
    dec hl
    ld sp, $3117
    dec hl
    ld b, l
    ld hl, sp-$5f
    and c
    db $ec
    ld h, l
    nop
    cp c
    nop
    db $e4
    db $fd
    and c
    rst $00
    and c
    adc d
    ld [$0898], sp
    add b
    ld b, h
    ccf
    jr nc, @+$22

    jr nz, jr_061_6a7a

    ld a, [hl+]
    ld b, l
    ld hl, sp-$60
    ret nz

    and b
    ld hl, sp+$00
    cp [hl]
    nop
    push hl
    ld bc, $08e3
    sub a
    ld [$8382], sp
    ccf
    ld a, [hl+]
    cpl
    jr nz, @+$22

    jr nc, jr_061_6ab7

    ld bc, $00e2
    cp l
    ld hl, sp+$08
    add [hl]

jr_061_6a7a:
    ld b, d
    jp $e080


    rrca
    ld [bc], a
    adc e
    ld b, l
    ld b, c
    rrca
    ld a, [hl+]
    cpl
    ld a, [hl+]
    ld b, l
    ld b, d
    pop bc
    ldh a, [$61]
    nop
    cp d
    add [hl]
    add a
    xor $c7
    add d
    add c
    ld [$3f9b], sp
    ldh [rLYC], a
    ccf
    ld b, l
    pop hl
    ld b, c
    ld b, c
    pop hl
    add d
    and l
    nop
    cp e
    nop
    jp $d1d0


    sbc [hl]
    ld a, [$80c7]
    adc h
    call nz, Call_000_02a0
    adc l
    ld [hl], $3c
    ld b, h
    push hl
    xor [hl]
    cp e
    add c

jr_061_6ab7:
    sbc [hl]
    add d
    add [hl]
    nop
    cp a
    jp nc, $9ed3

    ld a, [$81c7]
    adc [hl]
    ld b, a
    ret nz

    ld [hl], $35
    ld a, [hl-]
    ld b, l
    xor a
    or c
    xor a
    add e
    and e
    ld l, [hl]
    ld b, h
    nop
    cp a
    call nc, $41d5
    and d
    ld b, l
    ccf
    ccf
    ld b, e
    ld [hl], $35
    dec [hl]
    add hl, sp
    inc a
    add b
    add d
    adc d
    db $fc
    nop
    cp a
    ld bc, $39a4
    dec [hl]
    dec sp
    dec [hl]
    dec [hl]
    ld [hl], $03
    ld b, l
    xor [hl]
    add c
    ldh [$c2], a
    ld h, c
    ld a, d
    ld b, h
    nop
    ld d, a
    nop
    and a
    ld bc, $6fa2
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld b, d
    ldh [$ae], a
    xor a
    inc bc
    jp nz, $82f8

    push bc
    nop
    ld e, b
    nop
    call z, Call_000_3c44
    dec [hl]
    xor h
    dec [hl]
    pop bc
    ld a, $c1
    ldh [$81], a
    ld [c], a
    db $fc
    inc h
    nop
    ld e, h
    nop
    ret


    add hl, sp
    dec [hl]
    cpl
    dec [hl]
    xor l
    dec [hl]
    ld a, $c4
    ret nz

    xor a

jr_061_6b29:
    ld b, h
    and c
    add d
    ld b, l
    ld [$5b00], sp
    adc d
    inc hl
    ret z

    ld b, e
    ld a, $41
    ldh [$82], a
    pop bc
    db $fd
    ld b, b
    jp $f841


    nop
    ld e, a
    nop
    and [hl]
    ld bc, $83a1
    adc c
    ld [hl], c
    ld [hl], d
    ld l, h
    jp nz, $c0ff

    add hl, sp
    db $fd
    ld b, d
    add d
    ld c, c
    nop
    cp a
    ld [bc], a
    add c
    adc d
    add l
    rla
    ld a, $6e
    ld [hl], h
    cp a
    ret nz

    ld a, $f9
    ld b, e
    add d
    ld c, c
    nop
    cp [hl]
    ld a, $03
    ld h, c
    adc d
    xor [hl]
    ld a, $35

Jump_061_6b6b:
    ld l, c
    ccf
    db $e3
    ld bc, $7844
    ld a, d
    rlca
    nop
    cp l
    ret nz

    ld [c], a
    xor a
    add hl, sp
    dec [hl]
    ld l, e
    ccf
    ldh [$c1], a
    inc a
    add h
    add b
    ei
    ld hl, $bf00
    nop
    and a
    adc b
    ld hl, $7d8c
    dec bc
    ld b, d
    dec [hl]
    ccf
    ld [c], a
    ld [hl], $03
    add c
    add d
    ld b, e
    nop
    ld e, a
    jr nz, jr_061_6bbd

    ld a, [c]
    ld b, a
    ld hl, $c08a
    and b
    ccf
    pop hl
    dec [hl]
    jr c, jr_061_6bdb

    ld b, l
    jr c, jr_061_6b29

    ld b, h
    nop
    ld e, a
    nop
    ld l, b
    adc d
    xor [hl]
    add hl, sp
    ret nz

    db $e3
    inc a
    and c
    ldh a, [$79]
    jr nz, jr_061_6bf7

    jr nz, jr_061_6bb9

jr_061_6bb9:
    ld e, a
    nop
    xor b
    adc d

jr_061_6bbd:
    xor a
    ld b, l
    scf
    dec bc
    ld l, c
    jr c, @-$3f

    db $e3
    add hl, sp
    ld a, e
    nop
    nop
    ld h, [hl]
    nop
    ld e, a
    ld a, [hl]
    jp nz, $810d

    call nz, $8000
    ld b, l
    ld a, a
    add b
    ld a, [$7e82]
    ret z

    nop

jr_061_6bdb:
    ld e, a
    ld a, [hl]
    ld a, [hl]
    and d

jr_061_6bdf:
    adc h
    ld a, l
    xor a
    ld a, c
    adc l
    xor [hl]
    cp e
    add d
    add a
    dec [hl]
    dec [hl]
    ld b, d
    ei
    add d
    nop
    ld e, a
    sbc [hl]
    ld h, e
    ld a, [hl]
    add e
    adc [hl]
    inc bc
    ld a, e
    adc a

jr_061_6bf7:
    ld b, l
    add b
    ld a, [$3b80]
    jp nz, $c1fe

    nop
    ld e, a
    sbc [hl]
    and a
    inc c
    dec a
    ld b, b
    ld b, d
    nop
    xor [hl]
    xor a
    ld a, d
    add b
    add b
    ld [c], a
    ld a, [hl]
    ld b, e
    nop
    cp a
    inc b
    ld a, [hl]
    add hl, hl
    ld a, [hl-]
    add c
    ld b, d
    nop
    push hl
    ld a, [hl]
    ld b, d
    nop
    cp a
    ld a, [hl]
    ld l, c
    ret z

    ld b, b
    ld h, b
    rst $38
    jp $c180


    ld b, b
    nop
    nop
    ld e, a
    nop
    push hl
    ret nc

    pop de
    inc a
    add c
    ld [bc], a
    add [hl]
    add b
    xor a
    add hl, sp
    add c
    inc a
    and c
    dec sp
    and b
    ld a, [hl]
    and [hl]
    nop
    ld e, e
    db $fc
    inc b

Call_061_6c41:
    nop
    ccf
    db $e3
    ld a, [hl-]
    ld h, e
    ld bc, $bce1
    ld b, d
    ld a, d
    ld [hl], c
    nop
    ld c, l
    db $fc
    ld b, h
    rst $38
    jp nz, $ae01

    nop
    ld [c], a
    add b
    ld [c], a
    db $fc
    jr z, jr_061_6c5b

jr_061_6c5b:
    ld e, l
    jr jr_061_6bdf

    ld a, h
    ld h, e
    ld a, [$0042]
    pop bc
    call nz, $25fc
    add b
    ld a, c
    ld a, [hl]
    ld b, e
    db $fc
    ld h, l
    ld a, [$8001]
    pop bc
    ld b, c
    and b
    nop
    cp e
    ld h, h
    db $fc
    ld h, c
    nop
    cp b
    ld a, [$fc82]
    ld h, [hl]
    add a
    ld h, d
    ld a, $a0
    ld a, $80
    nop
    dec sp
    ld h, c
    cp a
    ret nz

    db $e4
    add d
    nop
    or [hl]
    dec a
    inc h
    db $fc
    inc hl
    dec a
    ld b, d
    ld a, d
    ld [hl+], a
    nop
    pop bc
    nop
    db $f4
    and h
    db $fc
    inc bc
    nop
    or [hl]
    ld a, d
    ld a, [bc]
    add b
    and d
    ld c, b
    db $e4
    ld sp, hl
    push hl
    nop
    ld a, l
    add c
    nop
    cp e
    ld a, d
    dec b
    nop
    jp $a27f


    ld sp, hl
    rst $20
    db $fc
    ld b, h
    nop
    ld e, c
    inc a
    ld a, d
    dec b
    nop
    push bc
    ld b, l
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [$80], a
    jp Jump_061_7ee0


    ld h, h
    nop
    ld e, c
    ld a, d
    dec b
    nop
    jp nz, Jump_000_00fd

    ld [hl], $3b
    dec [hl]
    ld bc, $fd3b
    ldh [$be], a
    pop bc
    add b
    and b
    db $fc
    inc bc
    add b

jr_061_6cdd:
    db $dd
    db $fc
    ld b, $fd
    ld bc, $a40b
    ld h, h
    rst $38
    ldh [$a5], a
    ld a, e
    ld b, c
    cp e
    nop
    nop
    cp h
    ld a, d
    ld [$7efc], sp
    add b
    dec sp
    ld hl, $3542
    ld l, c
    and e
    dec [hl]
    dec [hl]
    dec de
    and e
    ld l, d
    ld b, b
    add d
    sbc h
    sbc a
    ld a, [hl]
    dec h
    add b
    db $dd
    db $fc

Call_061_6d07:
    ld b, e

Jump_061_6d08:
    nop
    dec sp
    nop
    ret nz

    ldh [$fb], a
    ld bc, $e2c0
    db $fc
    ld [bc], a
    nop
    ld e, l
    ld a, d
    dec b
    db $fc
    ld b, c
    sbc $7c
    ld h, b
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    rlca
    ld b, h
    sbc h
    sbc l
    cp l
    nop
    nop
    ld e, a
    ld a, d
    add hl, bc
    ld hl, sp+$00
    ret nz

    rst $00
    jr c, jr_061_6d34

jr_061_6d34:
    ld [hl+], a
    nop
    ld e, a
    ld a, d
    add hl, bc
    ret nc

    pop de
    and c
    ld b, b
    rst $00
    ld b, d
    ld b, b
    nop
    add d
    jp $bf00


    ld a, d
    ld c, d
    cp d
    add h
    ld b, b
    ld bc, $2400
    sub e
    xor l
    add b
    ret nc

    ld a, [bc]
    ld a, d
    ld b, a
    sbc l
    rst $38
    db $e4
    sbc a
    db $ec
    jr nz, jr_061_6cdd

    ld b, e
    sub e
    xor [hl]
    nop
    or h
    nop
    sub [hl]
    ld h, $8f
    inc h
    add [hl]
    ld [hl], c
    nop
    or a
    jr @-$3a

    adc [hl]
    jr nz, @-$02

    push hl
    add [hl]
    ld [hl], c
    nop
    rlca
    inc hl
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
    dec e
    add hl, bc
    ld [bc], a
    ld bc, $0921
    ld [bc], a
    ld [bc], a
    dec h
    add hl, bc
    ld [bc], a
    inc bc
    add hl, de
    dec bc
    ld [bc], a
    inc b
    ld h, $0d
    ld [bc], a
    dec b
    rla
    ld c, $02
    ld b, $25
    ld de, $0702
    ld d, $12
    ld [bc], a
    ld [$1424], sp
    ld [bc], a
    add hl, bc
    ld d, $16
    ld [bc], a
    ld a, [bc]
    ld hl, $0216
    dec bc
    ld [hl+], a
    ld d, $02
    inc c
    inc hl
    rla
    ld [bc], a
    dec c
    ld hl, $0218
    ld c, $20
    add hl, de
    ld [bc], a
    rrca
    ld [hl+], a
    add hl, de
    ld [bc], a
    db $10
    ld d, $1a
    ld [bc], a
    ld de, $1a1f
    ld [bc], a
    ld [de], a
    dec de
    dec de
    ld [bc], a
    inc de
    ld e, $1b
    ld [bc], a
    inc d
    ld hl, $021b
    dec d
    rra
    inc e
    ld [bc], a
    ld d, $20
    dec e
    ld [bc], a
    rla
    dec d
    ld e, $02
    jr jr_061_6e15

    rra
    ld [bc], a
    add hl, de
    rla
    jr nz, jr_061_6dfd

    ld a, [de]
    ld [hl+], a

jr_061_6dfd:
    ld hl, $1b02
    inc h
    inc hl
    ld [bc], a
    inc e
    jr jr_061_6e2a

    ld [bc], a
    dec e
    add hl, de
    ld h, $02
    ld e, $1c
    daa
    ld [bc], a
    rra
    ld h, $27
    ld [bc], a
    jr nz, jr_061_6e30

jr_061_6e15:
    jr z, @+$04

    ld hl, $281d
    ld [bc], a
    ld [hl+], a
    inc e
    add hl, hl
    ld [bc], a
    inc hl
    ld a, [de]
    dec hl
    ld [bc], a
    inc h
    dec e
    dec hl
    ld [bc], a
    dec h
    daa
    inc l

jr_061_6e2a:
    ld [bc], a
    ld h, $1c
    ld l, $02
    daa

jr_061_6e30:
    dec h
    jr nc, jr_061_6e35

    jr z, jr_061_6e4e

jr_061_6e35:
    ld sp, $2902
    jr z, jr_061_6e6b

    ld [bc], a
    ld a, [hl+]
    dec e
    inc sp
    ld [bc], a
    dec hl
    inc h
    inc sp
    ld [bc], a
    inc l
    add hl, de
    ld [hl], $02
    dec l
    daa
    ld [hl], $ff
    rst $38
    rst $38
    ld d, l

jr_061_6e4e:
    ld l, [hl]
    rst $18
    ld [hl], c
    sbc b
    db $76
    or e
    db $76
    ccf
    ld c, $0e
    dec c

jr_061_6e59:
    dec c
    dec c
    ld c, $fa
    rst $38
    db $f4
    push af
    nop
    db $dd
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    db $f4

jr_061_6e6b:
    ld e, e
    jp hl


    ld [hl], b
    db $e3
    db $fc
    pop af

Call_061_6e71:
    inc bc
    ld c, l
    ld c, l
    sub $eb
    dec h
    add sp, -$63
    ld [$e5d8], a
    ret nz

    pop af
    rst $38
    rst $38
    ret z

    rst $38
    rst $38
    ld a, $f3
    sbc b
    call nz, $824d
    push af
    ld a, $e3
    ld c, l
    ld c, l
    nop
    add b
    jp c, $e2c2

    db $ec
    rst $00
    or $c5
    inc h
    jp hl


    dec sp
    ld a, [$e282]
    ret c

    jp Jump_061_74c2


    ld [c], a
    dec l
    ld hl, sp-$1e
    ld a, [hl]
    db $eb
    add b
    sbc $30
    db $e4
    ld l, l
    ld l, e

Jump_061_6ead:
    inc bc
    ld l, e

Jump_061_6eaf:
    ld l, e
    ld [hl-], a
    ldh [$bd], a
    pop hl
    call c, Call_061_7aa9
    jp nc, $ce82

    pop bc
    ld [c], a
    add hl, bc
    dec c
    cp [hl]
    ldh [$bd], a
    ldh [$2d], a
    cp d
    ld [$df7a], a
    xor $a2
    add d
    pop hl
    rra
    dec c
    dec hl
    ld a, [bc]
    ld a, [hl+]
    dec bc
    cp h
    pop hl
    cp d
    ld [c], a
    ld e, d
    cp d
    jr jr_061_6e59

    rst $00
    ret c

    and h
    push bc
    ldh [$2b], a
    dec hl
    ret nz

    ldh [$bf], a
    ld [c], a
    ld [hl], a
    pop hl
    or b
    db $f4
    pop bc
    cp b
    and l
    db $eb
    call nz, $d880
    dec c
    ld a, [bc]
    add l
    ldh [$0b], a
    sbc a
    dec bc
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld a, [hl-]
    ldh [$37], a
    db $e3
    dec l
    ld [hl], c
    dec l
    ld [de], a
    res 0, b
    db $d3
    add d
    call nz, $0a0a
    dec hl
    ret nz

    pop hl
    rlca
    dec bc
    ld a, [hl+]
    ld a, [bc]
    ld a, [$7dc2]
    push hl
    ld [hl+], a
    and l
    adc l
    adc e
    add b
    ret nc

    rst $38
    ld a, [hl+]
    ld a, [bc]
    ld l, e
    dec bc
    dec bc
    ld c, e
    ld l, e
    dec hl
    add c
    ld c, e
    db $fc
    ldh [rPCM34], a
    ldh [$b4], a
    jp $c5fc


    nop
    cp a
    push bc
    ret nz

    ld c, d
    rst $08
    ld c, e
    ld l, e
    ld c, e
    ld c, e
    ld a, [hl]
    ldh [rIE], a
    pop hl
    dec hl
    dec hl
    ret nc

    cp [hl]
    ld [c], a
    inc [hl]
    jp $df7e


    adc $60
    ld l, e
    ld a, a
    ldh [$0d], a
    dec c
    dec bc
    ld l, e
    ld c, e
    pop bc
    ld [c], a
    dec c
    ld [hl], $e1
    ret nz

    ld [c], a
    add b
    rst $18
    ld e, d
    add e
    inc bc
    ld c, l
    dec l
    ld [bc], a
    ret nz

    add e
    ld h, b
    cp a
    db $e3
    ret nz

    ldh [$3d], a
    ldh [$7c], a
    pop bc
    stop
    and $80
    db $dd
    jp nz, $47e0

    jp $ff4b


    ldh [$3c], a
    ld [c], a
    or $a1
    jr nz, @+$80

    rst $00
    nop
    cp [hl]
    add hl, bc
    call nz, $a17d
    ld sp, hl
    ret nz

    dec c
    ccf
    db $e3
    cp d
    and d

jr_061_6f88:
    ld [hl], b
    cp b
    ld h, d
    nop
    cp l
    add b
    and d
    rst $08
    jp nz, $2d0d

    dec c
    inc bc
    ldh [$8c], a
    ld a, [$7ec1]
    ret z

    ld c, $0e
    add sp, -$7d
    add b
    ld l, a
    jr nz, jr_061_6f88

    dec l
    sub [hl]
    sub b
    pop bc
    dec l

jr_061_6fa8:
    inc c
    rst $38
    ldh [$2c], a
    ret nz

    ldh [rIE], a
    jp Jump_000_000d


    ld a, d
    and h
    ld [hl], $61
    or d
    and a
    xor $52
    jp z, $86e0

    ldh [$c1], a
    pop hl
    ret nz

    pop hl
    ret nz

    or h
    and d
    xor a
    add d
    ld a, h
    and [hl]
    ret nz

    db $eb
    jr jr_061_7013

    ret c

    ld b, l
    ld c, h
    ld c, h
    inc c
    call nz, $80e2
    ldh [$6c], a
    ld l, h
    add b
    pop hl
    ld [hl], d
    and b
    ld l, [hl]
    pop hl
    cp [hl]
    pop bc
    ld b, b
    ld a, [hl]
    and a
    nop
    ld c, [hl]
    or d
    ld b, [hl]
    ret z

    jr nz, jr_061_6fa8

    push hl
    add c
    push hl
    ld c, e
    ld l, h
    jp nz, $fc00

    add h
    call $9234
    ld h, [hl]
    res 0, c
    ld a, l
    db $e3
    add c
    db $e3
    rst $38
    and d
    inc l
    pop bc
    nop
    ld a, [hl]
    call nz, $be00
    ld bc, $0281
    db $e4
    rst $30
    add b
    or l
    add d
    db $fc
    adc c
    and $46
    nop

jr_061_7013:
    nop
    ld d, h
    add b
    and b
    ret nz

    and $c2
    jp nz, $82bc

    ld hl, sp+$6b
    ld l, [hl]
    dec sp
    sub e
    add b
    ld [bc], a
    ld b, c
    db $eb
    dec hl
    ldh a, [$81]
    ld a, [hl]
    ret


    nop
    ld e, c
    ld b, b
    and c
    ld b, c
    ld [$c6ff], a
    nop
    inc a
    and c
    ld a, [hl]
    and l
    nop
    cp e
    ld b, c
    db $ec
    rst $38
    add $00
    ld e, a
    ret nz

    ld b, d
    ld b, c
    ld [$f920], a
    ld h, d
    cp e
    ld h, l
    or h
    ld bc, $df80
    add c
    ret nz

    inc l
    add d
    push bc
    or l
    ld b, b
    inc b
    ld a, a
    jp $802b


    ld l, l
    sbc d
    inc b
    nop
    ld e, e
    ld b, c
    call nz, $c742
    rst $38
    and l
    nop
    ld a, [hl]
    add l
    scf
    inc a
    ret nz

    ld h, b
    dec a
    and c
    ld [bc], a
    jp $a4bf


    dec hl
    add d
    ld hl, sp+$25
    nop
    ld a, [hl-]
    ld l, e
    nop
    ld c, [hl]
    ld a, a
    db $e4
    call nz, $4581
    ldh [$fa], a
    ld b, e
    ld bc, $00e5
    or a
    inc h
    nop
    ld b, a
    ld a, a
    db $e3
    ld c, h
    call nz, Call_000_3f85
    ld h, d
    ld c, e
    add b
    xor b
    nop
    ld e, l
    nop
    cp $42
    rst $38
    ld b, c
    inc bc
    and h
    ccf
    and d
    ld a, h
    ld b, e
    nop
    cp a
    cp h
    add e
    ld b, d
    ld h, h
    nop
    ret nz

    and l
    or $20
    ret nz

    push hl
    nop
    cp l
    ld a, h
    add d
    db $fd
    add c
    ld a, l
    ld bc, $e680
    ld [bc], a
    ld a, b
    inc hl
    ld l, l
    jr nc, jr_061_70c9

    inc [hl]
    or c
    ld l, $a4
    ret nz

    db $eb
    ld [bc], a
    ld [c], a
    jp nz, Jump_000_00a3

    nop

jr_061_70c9:
    cp b
    ld bc, $1e82
    ld b, h
    ld b, b
    ld [$c1c2], a
    jp nz, $5ea1

    ld h, [hl]
    add b
    ld [hl], h
    nop
    ret nz

    push hl
    inc a
    add e
    ld b, c
    ld b, d
    add e
    add $c2
    and e
    ld c, c
    sbc d
    ld b, e
    and $fc
    and h
    nop
    nop
    ld b, e
    push af
    nop
    push af
    inc hl
    nop
    ld b, l
    add e
    ld c, e
    or b
    dec bc
    ld a, $e3
    ret nz

    add sp, $00
    cp d
    inc hl
    ld a, [hl]
    ld a, [bc]
    add b
    rla
    sbc l
    inc bc
    ld l, [hl]
    ld b, d
    cp h
    ld hl, $ecc0
    nop
    ld b, e
    inc b
    dec a
    rst $38
    cp h
    ld b, l
    ld l, e
    ret nz

    and a
    pop af
    inc bc
    jp z, Jump_000_3034

    ld c, l
    add b
    call nz, $8108
    and a
    add d
    and c
    add d
    ld h, [hl]
    dec l
    ld b, e
    ld a, [hl+]
    ld l, [hl]
    xor $1c
    ld b, d
    ld b, c
    db $e4
    inc d
    ret nz

    ld [$057e], a
    dec l
    ld b, e
    dec sp
    dec l
    ld a, [hl]
    ld b, $41
    ld [c], a
    call nz, Boot
    dec l
    add d
    ld h, l
    nop
    jp $edc0


    add b
    set 4, [hl]
    inc bc
    ld bc, $01ed
    ld b, e
    nop
    ld [bc], a
    and a
    add b
    push de
    ld h, h
    ldh [rNR32], a
    ld [hl+], a
    pop bc
    call z, $e440
    add d
    ld h, l
    ld b, e
    ld hl, sp+$4c
    inc hl
    db $e4
    ret nz

    add l
    ld c, e
    ld l, e
    ld c, b
    add b
    ld b, l
    add b
    ld c, e
    ld b, c
    db $e4
    ld c, b
    add b
    rst $18
    ei
    ld hl, $e2fa
    dec c
    cp h
    ld h, b
    dec sp

Call_061_7174:
    add l
    ld c, e
    ld [hl], l
    and c
    nop
    add e
    add d
    nop
    ld [c], a
    add b
    rst $18
    cp b
    ld [c], a
    cp $84
    ld a, a
    and h
    add d
    ld [c], a
    push bc
    jp $8000


    db $db
    ld a, d
    ld b, [hl]
    ld e, e
    ld b, c
    db $fd
    and $06
    add e
    rst $38
    and c
    nop
    cp e
    ld l, b
    ld l, e
    nop
    db $fc
    db $ed
    cp a
    and b
    ld h, b
    db $e3
    nop
    or [hl]
    ld b, d
    add h
    inc e
    ld b, h
    ld hl, sp-$15
    ld b, e
    rst $38
    nop
    ldh [$9b], a
    add d
    pop hl
    add e
    or c
    nop
    xor a
    ld hl, sp-$0c
    add e
    ret nz

    jp Jump_061_6ead


    adc [hl]
    nop
    db $fc
    dec b
    ret c

    ld c, b
    ld [bc], a
    and $05
    cp h
    ld [hl], e
    daa
    add [hl]
    rst $00
    db $f4
    jp hl


    ld b, $c0
    nop
    inc c
    push af
    dec a
    adc d
    dec hl
    add hl, hl
    rra
    add hl, hl
    rst $00
    add d
    inc de
    adc e
    or b
    ld h, b
    nop
    nop
    nop
    ccf
    db $dd
    sbc $a0
    and b
    and b
    call c, $fffa
    db $f4
    push af
    ccf
    ld [c], a
    db $e3
    db $e4
    rst $18
    ldh [$e1], a
    ld a, [$f4ff]
    push af
    ccf
    add sp, -$17
    ld [$e6e5], a
    rst $20
    ld a, [$f4ff]
    push af
    adc [hl]
    ld e, e
    jp hl


    sub $d7
    and b
    db $fc
    ld a, [$f131]
    ld e, e
    jp hl


    ret c

    rst $00
    reti


    and b
    and b
    db $fc
    rst $30
    ld sp, $5bf3
    jp hl


    jp c, Jump_000_3fdb

    sub $d7
    jp c, $d0db

    pop de
    db $fc
    rst $28
    add sp, -$1f
    jr nc, jr_061_7257

    di
    sbc [hl]
    ret z

    adc a
    ret nz

    ld a, [hl]
    pop hl
    jp nc, $fcd3

    rst $28
    ld h, [hl]
    pop hl
    ldh a, [$de]
    ld [c], a
    add b
    rst $10
    ld d, c
    ret nz

    add d
    db $e3
    call nc, $a0d5
    and b
    ret nz

    db $fc
    rst $20
    ldh a, [$e1]
    ld a, [hl]
    db $e3
    jr nc, @-$3e

    add b
    reti


    add d
    add sp, -$60
    sbc a
    rrca
    and d
    sbc l
    sbc l
    sbc a
    ld l, [hl]
    db $e3

jr_061_7256:
    ld a, [hl]

jr_061_7257:
    ld [$dc80], a
    nop
    pop hl
    ld a, [hl]
    add d
    pop hl
    sbc a
    sbc h
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    sbc h
    cp l
    db $e3
    ld b, b
    ld a, d
    push hl
    ld a, [hl]
    db $e3
    ld a, d
    rst $08
    db $db
    xor c
    jr jr_061_7256

    pop bc
    pop hl
    xor [hl]
    cp [hl]
    ldh [rP1], a
    cp l
    ldh [$78], a
    ldh [rPCM34], a
    ld [c], a
    db $fc
    push bc
    ld a, d
    rst $08
    db $db
    xor c
    add d
    jp $e282


    sbc a
    xor a
    ld b, l
    ld c, b
    ld c, b
    ld b, l
    cp h
    pop hl
    ld [hl], a
    pop hl
    sbc a
    ret nc

    ld a, [hl]
    and $7a
    rst $08
    add b
    ret


    add d
    jp $c59e


    ldh [rSCX], a
    ld b, e
    ld c, a
    ld b, e
    ld d, h
    ld h, b
    ld b, a
    cp a
    pop hl
    ld [hl], a
    pop hl
    sbc h
    db $f4
    ret nz

    ld hl, sp+$7a
    push de
    add b
    ret


    nop
    db $e3
    sbc [hl]
    ld c, d
    ld h, b
    ld d, d
    ld a, [hl+]
    cp a
    cpl
    cpl
    ld a, [hl+]
    ld d, d
    ld h, c
    ld d, l
    ld a, [hl-]
    ldh [$af], a
    add $37
    ld [c], a
    and d
    sbc a
    ld a, d
    push de
    add b
    ret


    add d
    and e
    sbc [hl]
    ld c, a
    rst $38
    ld h, c
    dec l
    jr nz, jr_061_72f5

    jr nz, jr_061_7307

    ld b, h
    ld d, [hl]
    pop bc
    ld d, l
    jp $7de2


    push hl
    ld a, d
    db $d3
    nop
    xor e
    add d
    and c
    sbc [hl]
    ld d, l
    cp $c0
    pop hl
    ld h, $21
    ld [hl], $43
    ld b, l
    ld b, [hl]
    ld b, l
    sub a
    ld b, e
    ld b, c
    ld b, l

jr_061_72f5:
    ld a, l
    db $e3
    sbc [hl]
    ld a, d
    call nz, $bd00
    jp nc, $d3ff

    and c
    ld b, h
    ld e, [hl]
    ld d, l
    dec hl
    dec hl
    scf
    rst $38

jr_061_7307:
    jr c, jr_061_733e

    jr c, jr_061_7348

    dec a
    jr c, jr_061_7349

    dec [hl]
    rla
    jr c, jr_061_7349

    ld b, l
    ld [hl], d
    pop bc
    sbc [hl]
    db $f4
    and h
    nop
    cp l
    nop
    ldh [rIE], a
    ld b, l
    ld d, [hl]
    ld d, l
    ld b, [hl]
    xor [hl]
    xor [hl]
    ld b, l
    ld [hl], $7d
    dec [hl]
    rst $38
    pop hl
    xor h
    dec [hl]
    dec [hl]
    ld [hl], $45
    ei
    ret nz

    db $db
    sbc [hl]
    and b
    ld h, [hl]
    and c
    sub $d7
    nop
    cp a
    sbc a
    sbc h
    ld e, a
    ld b, l
    xor [hl]

jr_061_733e:
    ld b, [hl]
    xor a
    xor a
    cp a
    db $e4
    xor l
    cp d
    ldh [$b1], a
    add hl, sp

jr_061_7348:
    ld a, h

jr_061_7349:
    jp nz, $88f8

    nop
    cp d
    and b
    sbc [hl]
    adc e
    jp nz, $a7af

    ld b, [hl]
    ld b, l
    scf
    ld b, b
    pop hl
    ld a, d
    ldh [$3a], a
    or $a1
    sbc [hl]
    db $e4
    ld hl, sp-$7a
    nop
    cp l
    sbc [hl]
    add hl, bc
    call nz, $a03b
    ld b, l
    ld b, e
    ld [hl], $86
    ld a, $e0
    inc a
    ld b, h
    ld [hl], c
    and b
    ld a, [hl]
    rst $00
    nop
    cp h
    add b
    and e
    ld b, [hl]
    rst $38
    add e
    adc c
    adc b
    adc b
    adc b
    adc c
    add e
    ld b, h
    dec d
    inc a
    ld a, $e0
    ld b, d
    ld a, [$a1a1]
    ld l, d
    add b
    ldh [$61], a
    db $76
    add d
    ld a, [$b800]
    sbc [hl]
    jp z, $46e0

    ld b, [hl]
    add e
    add [hl]
    ld [bc], a
    ccf
    rlca
    rlca
    rlca
    ld [bc], a
    adc e
    ld b, d
    cp d
    pop bc
    rst $38
    ret nz

    pop af
    xor [hl]
    ld a, d
    and d
    ld e, [hl]
    ld h, l
    nop
    cp c
    sbc [hl]
    rlca
    ld [bc], a
    add a
    rst $38
    adc b
    adc b
    add a
    ld [bc], a
    rrca
    sbc b
    nop
    ld bc, $0857
    add b
    ld b, b
    ld a, d
    pop bc
    ld a, $78
    and d
    sbc [hl]
    db $76
    ld h, l
    ldh a, [$37]
    adc c
    nop
    or b
    adc b
    ldh [$85], a
    ldh [rIF], a
    sbc b
    sub a
    sbc b
    rst $38
    rrca
    ld [bc], a
    adc l
    add hl, sp
    dec [hl]
    dec [hl]
    ld l, h
    ld [hl], d
    call Call_061_6e71
    pop hl
    ld b, [hl]
    sbc [hl]
    db $76
    ld h, [hl]
    nop
    cp d
    and c
    ld a, e
    rst $38
    ld a, h
    ld [bc], a
    rrca
    nop
    ld bc, $9a98
    sub a
    rst $38
    sbc b
    ld [$4580], sp
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld [hl], e
    adc a
    ld l, [hl]
    add hl, sp
    add l
    adc e
    ld l, $80
    ld a, [hl]
    call nz, $be00
    ld b, [hl]
    db $eb
    ld b, [hl]
    ld a, a
    ld b, e
    ldh [$97], a
    add c
    push hl
    dec [hl]
    ld l, d
    dec [hl]
    add a
    ld b, d
    ld b, [hl]
    add b
    or a
    add b
    db $fc
    add h
    nop
    cp [hl]
    add e
    ld h, b
    add c
    ld l, a
    ld [$9b98], sp
    sbc b
    add c
    ldh [rDMA], a

Jump_061_7428:
    ld a, $c0
    pop hl
    inc bc
    inc a
    ld b, h
    ret nz

    ldh [$fc], a
    add h
    db $f4
    dec l
    nop
    xor a
    ld b, d
    ld h, c
    ret nz

    ldh [$38], a
    jp nz, $41c2

    pop hl
    add b
    ldh [$39], a
    ld b, [hl]
    add d
    rst $38
    pop bc
    ld a, [hl]
    rst $00
    sbc h
    nop
    cp c
    add b
    and b
    add e
    add h
    ld [$c6c2], sp
    ld b, b

jr_061_7453:
    pop hl
    ld a, $8d
    ld b, [hl]
    rst $38
    jp nz, $a146

    db $f4
    cpl
    nop
    ld c, a
    ld b, b
    and b
    adc d
    add b
    nop
    pop hl
    ld b, c
    push hl
    nop
    ldh [$3f], a
    and b
    rst $38
    pop bc
    ld a, [hl]
    add $00
    cp l
    add c
    ld bc, $8008
    ret nz

    add d
    call nz, $c1c0
    rst $38
    add $7e
    and e
    nop
    ld e, e
    ld b, d
    ld b, b
    adc h
    ld bc, $41e1
    and $6c
    ld l, l
    ccf
    and b
    cp a
    push bc
    nop
    cp a
    push de
    jr c, jr_061_7453

    add b
    add c
    jp nz, $c482

    ld l, h
    ld l, a
    ld l, [hl]
    add b
    db $e3
    ld a, $a1
    ld h, h
    db $76
    ld h, $00
    ld e, b
    and c
    ld b, c
    jp nz, $e601

    ld [hl], e
    ld l, [hl]
    cp b
    ld h, b
    dec h
    ld b, b
    rst $38
    and d
    sbc [hl]
    db $f4
    ld b, $00
    ld e, h
    adc h
    inc bc
    and b
    ld [bc], a
    call nz, $420c
    pop hl
    cp [hl]
    ld h, b
    ld a, c
    adc l
    nop

Jump_061_74c2:
    add $00
    cp l
    nop
    add c
    cp a
    pop bc
    xor $43
    and c
    ld l, h
    ld [hl], d
    ld [hl], b
    add c
    pop hl
    ld h, d
    ld h, e
    adc a
    call nc, $e401
    nop
    cp a
    push de
    ld bc, $8c21
    ld b, e
    add b
    ld [bc], a
    adc l
    cp l
    ld b, d
    ld b, e
    db $e3
    dec [hl]
    ld h, d
    ld h, a
    ld [hl], $74
    ld [hl+], a
    and c
    ld hl, sp-$04
    ld b, b
    nop
    cp a
    ret nz

    ld [bc], a
    adc [hl]
    ld a, e
    ld a, e
    adc a
    ld b, [hl]
    rla
    ld b, h
    inc a
    ld l, d
    cp h
    ld b, d
    ld l, c
    ccf
    and b
    ld a, h
    ld b, e
    nop
    cp a
    ld [hl], c
    and b
    sbc b
    ld b, b
    ld a, $62
    ld b, d
    ld h, c
    ld a, [hl-]
    ld [hl], l
    ld h, [hl]
    ld b, d
    pop hl
    add c
    db $76
    rst $38
    ld b, c
    ld a, h
    ld b, d
    nop
    cp a
    cp $c2
    ccf
    ld [bc], a
    ld a, l
    nop
    ld a, $3f
    dec [hl]
    ld [hl], a
    ld h, h
    ld h, h
    ld h, h
    ld a, b
    ret nz

    ld h, c
    ld sp, hl
    inc b
    nop
    nop
    cp h
    ld a, h
    ld b, c
    cp $c0
    cp l
    ld b, d
    ld b, $20
    ld b, c
    and d
    ccf
    ld b, h
    cp l
    ld [hl+], a
    nop
    nop
    cp h
    pop hl
    nop
    sbc h
    inc bc
    db $fc
    and b
    ld b, l
    ld bc, $82c1
    cp a

Jump_061_754b:
    ld hl, $6500
    nop
    nop
    cp e
    ccf
    pop bc

jr_061_7553:
    cp $c3
    ccf
    ld [c], a
    ld b, c
    ld b, b
    ld a, h
    ld [hl+], a
    add e
    jp nz, $a1c2

    add b
    ld a, [hl]
    inc hl
    nop
    or a
    ccf
    jp nz, $2318

jr_061_7568:
    db $fc
    jr nz, jr_061_7568

    ld hl, $20bd
    dec a
    nop
    nop
    jr nz, jr_061_75b4

    db $e4
    nop
    ld e, l
    cp l
    and e
    jr jr_061_759b

    cp h
    ld hl, $0343
    ld a, $06
    nop
    nop
    ld b, [hl]
    add b
    rla
    ld a, [hl]
    ld [c], a
    inc e
    jp nz, $e440

    cp [hl]
    push hl
    or l
    ld [c], a
    nop
    ld b, e
    ldh a, [$80]
    add hl, de
    cp l
    jp $c480


    ld a, $20
    ld b, l

jr_061_759b:
    ld b, e
    ld b, c
    ld b, e
    nop
    db $fd
    ldh [$84], a
    and d
    dec a

jr_061_75a4:
    ld bc, $a182
    add b
    jr jr_061_75a4

    ld [hl+], a
    ld a, [hl]
    and e
    ld b, c
    ld [c], a
    rra
    ld b, l
    ld [hl], $3b
    dec [hl]

jr_061_75b4:
    dec sp
    db $fd
    ldh [$c0], a
    call nz, $4300
    ld [hl], b
    add b
    ld d, $7a
    inc b
    ld a, [hl]
    ld [bc], a
    add c
    jp Jump_000_3c44


    and h
    jp nz, Jump_000_03a0

    ld h, h
    and l
    ld b, d
    and c
    add d
    ld h, [hl]
    sub d
    jr nz, jr_061_7553

    inc de
    ld a, d
    ld b, $7e
    inc b
    rst $38
    ld b, [hl]
    ld b, [hl]
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    ld bc, $01a3
    ld b, c
    ld [hl], c
    ld bc, $2500
    add b
    jp c, $a380

    cp l
    ld h, b
    ccf
    nop
    inc b
    ret nz

jr_061_75f3:
    ldh [$81], a
    ld b, e
    ld b, d
    cp a
    jp nz, $c100

    ld e, [hl]
    and c
    add b
    jp c, $457e

    ld e, [hl]
    ld b, d
    and c
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    db $e4
    ld [$c300], sp
    add b
    db $dd
    nop
    rst $20
    xor [hl]
    ret nz

    rst $00
    ld b, c
    db $e4
    add d
    ld h, c
    add b
    db $dd
    ld c, $1c
    and e
    sbc a
    sbc l
    sbc h
    ld a, a
    pop bc
    ld b, b
    push bc
    or l
    and b
    add e
    add d
    ldh [$e0], a
    ld h, h
    add b
    reti


    ld a, [hl]
    ld h, c
    db $fc
    jr nz, jr_061_75f3

    xor h
    sbc h
    sbc l
    sbc a
    nop
    add sp, $61
    rra
    and e
    add b
    jp c, $44fc

    ld a, l
    pop hl
    rst $38
    add sp, $06
    add c
    add h
    ld h, b
    nop
    ld h, b
    add e
    nop
    cp b
    ld a, [hl]
    ld hl, $e57e
    db $fc
    db $ed
    and $40
    ld h, b
    add d
    nop
    cp c
    nop
    and d
    inc bc
    jr @-$7b

    db $fc
    db $ed
    ld hl, $0063
    cp e
    and d
    ld h, e
    ld a, d
    ld b, c
    db $fc
    rst $28
    nop
    jp Jump_000_00b0


    or h
    db $fc
    db $f4
    jp Jump_000_00af


    or d
    sbc [hl]
    inc hl
    db $fc
    db $e3
    db $f4
    jp hl


    nop
    call nz, $4381
    adc h
    nop
    or d
    inc e
    call nz, $28f0
    ldh a, [$e6]
    ld b, e
    db $ed
    add b
    ld l, [hl]
    nop
    ld a, d
    inc bc
    db $f4
    di
    ld a, [$00f3]
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
    rla
    dec bc
    ld [bc], a
    ld bc, $0d20
    ld [bc], a
    ld [bc], a
    dec e
    ld c, $02
    inc bc
    inc hl
    rrca
    ld [bc], a
    inc b
    dec h
    ld de, $0502
    rla
    ld [de], a
    ld [bc], a
    ld b, $18
    ld [de], a
    ld [bc], a
    rlca
    jr nz, jr_061_76e5

    ld [bc], a
    ld [$1315], sp
    ld [bc], a
    add hl, bc
    add hl, de
    inc de
    ld [bc], a
    ld a, [bc]
    rla
    dec d
    ld [bc], a
    dec bc
    ld [hl+], a
    dec d
    ld [bc], a
    inc c

jr_061_76e5:
    ld h, $15
    ld [bc], a
    dec c
    jr z, @+$19

    ld [bc], a
    ld c, $29
    ld a, [de]
    ld [bc], a
    rrca
    ld a, [hl+]
    ld e, $02
    db $10
    ld a, [hl+]
    ld [hl+], a
    ld [bc], a
    ld de, $2729
    ld [bc], a
    ld [de], a
    ld a, [de]
    add hl, hl
    ld [bc], a
    inc de
    jr z, jr_061_772e

    ld [bc], a
    inc d
    ld a, [de]
    dec l
    ld [bc], a
    dec d
    dec h
    ld l, $02
    ld d, $19
    jr nc, @+$04

    rla
    jr z, jr_061_7743

    ld [bc], a
    jr jr_061_773c

    inc sp
    ld [bc], a
    add hl, de
    jr jr_061_774f

    ld [bc], a
    ld a, [de]
    ld a, [de]
    ld [hl], $02
    dec de
    dec h
    ld [hl], $ff
    rst $38
    rst $38
    ld l, $77
    ld l, d
    ld a, d
    ld c, h
    ld a, a
    ld h, a
    ld a, a

jr_061_772e:
    ccf
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $fa
    rst $38
    db $f4
    rst $30
    nop
    rst $38
    rst $38

jr_061_773c:
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$5b

jr_061_7743:
    rst $38
    db $f4
    ld hl, sp-$5f
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld b, e
    rst $38

jr_061_774f:
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    nop
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    db $f4
    ld b, [hl]
    ldh [rSCX], a
    ld [c], a
    nop
    ld a, [$80e3]
    rst $18
    xor e
    xor $03
    db $e4
    ld h, b
    rst $18
    ret nz

    rst $30
    jp c, $80ff

    ret nc

    nop
    ld c, c
    push hl
    ld a, [hl-]
    db $e4
    ld sp, hl
    and $80
    rst $18
    jp z, Jump_000_09e4

    and $80
    db $e4
    ld a, c
    rst $38
    inc c
    ret nz

    ld [$e6ba], a
    ld c, l
    dec l
    ld a, e
    db $e4
    jp z, $9eff

    ret


    add l
    call nz, Call_061_6d07
    dec bc
    dec bc
    cp a
    ldh [$75], a
    rst $00
    ld l, [hl]
    rst $00
    add b
    db $db
    ld b, l
    jp nz, $4d0b

    ld c, l
    pop bc
    ldh [$0b], a
    ld a, [hl]
    ld [c], a
    ld hl, sp-$35
    ld [hl], e
    rst $38
    add h
    ld [c], a
    dec bc
    dec c
    dec c
    pop bc
    ldh [$0b], a
    dec a
    db $e3
    ld hl, sp-$37
    ret nz

    or $c9
    xor d
    ld hl, sp-$3f
    ldh [$c0], a
    ldh [$bf], a
    and c
    dec bc
    ld c, l
    ld c, l
    ld c, l
    dec l
    inc bc
    ld c, l
    dec l
    cp d
    ret z

    or c
    or c
    add c
    db $ed
    add d
    ld [c], a
    ld a, l
    ldh [$7a], a
    db $e3
    nop
    ld hl, sp-$37
    or c
    cp a
    ld b, a
    and e
    pop bc
    ld [c], a
    ld a, l
    db $e3
    ld a, d
    ld [c], a
    ld hl, sp-$3d
    ld e, [hl]
    rst $00
    inc b
    ld b, e
    sub e
    nop
    push bc
    dec bc
    ld b, d
    pop hl
    add l
    db $e3
    ld sp, hl
    jp $e3bf


    or c
    cp b
    nop
    ld c, $a7
    ret nz

    db $e4

jr_061_7808:
    ld b, l
    push hl
    cp a
    rst $20
    inc sp
    jp $dabc


    adc e
    add h
    ret z

    and b
    add b
    add c
    ld [c], a
    add h
    jp $e0f3


    rst $30
    jp $a3b1


    inc a
    call nc, $a8c3
    ld c, $f7
    ld c, $4d
    dec l
    ld b, c
    ld [c], a
    dec c
    dec l
    dec hl
    ld a, [bc]
    ld hl, $796a
    pop bc
    or [hl]
    ldh [$f2], a
    and h
    db $e4
    ldh [rKEY1], a
    nop
    cp d
    dec b
    add h
    sbc $c0
    db $e3
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    jr c, jr_061_7808

    dec l
    dec l
    ret nc

    ld a, [c]
    and d
    ld [hl], c

jr_061_784c:
    and c
    ld c, e
    sbc a
    cp [hl]
    push bc
    dec l
    ret nz

    ldh [$2a], a
    dec hl
    add e
    dec hl
    dec hl
    cp b
    rst $00
    ld a, d
    rst $00
    add b

jr_061_785e:
    db $db
    inc b
    and b
    adc h
    pop hl
    dec l
    inc bc
    dec bc
    ld l, e
    cp $e0
    ret nz

    ld [c], a
    cp e
    db $e3
    add b
    db $e3
    add b
    rst $18
    push bc
    add b
    inc b
    ld c, h
    db $e4
    ei
    add b
    ld c, e
    cp [hl]
    pop hl
    jr c, jr_061_785e

    ret nz

    db $e3
    ret nc

    jr c, jr_061_784c

    ld h, l
    cp h
    push bc
    add c
    ld a, a
    and e
    dec bc
    ld c, e
    ld c, e
    ld l, e

jr_061_788c:
    add d
    pop hl
    dec hl
    rst $00
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    add b
    jp hl


    nop
    cp h
    ret nz

    rst $20
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld l, d
    cp a
    pop hl
    ld hl, sp-$20
    ld c, e
    cpl
    call nz, Call_061_7174
    nop
    or d
    ld b, c
    and e
    dec de
    ld c, e
    ld a, [bc]
    ld a, a
    ld [c], a
    ld a, [bc]
    ld c, d
    ld hl, sp-$7c
    ccf
    sbc a
    ld [bc], a
    ret nz

    inc l
    ret z

    add h
    cp [hl]
    add d
    dec c
    ld l, e
    add [hl]
    pop hl
    ld a, [hl+]
    add b
    ld [c], a
    xor a
    ld h, e
    ld b, b
    ld b, e
    sbc e
    ld c, l
    jr nz, jr_061_788c

    and b
    nop
    push hl
    db $fc
    ld h, c
    ccf
    jp nz, Jump_061_754b

    add e
    ld b, b
    inc a
    and [hl]
    scf
    db $ec
    inc c

jr_061_78db:
    ld b, a
    ld a, [hl]
    db $e3
    jp nz, $c262

    add h
    ld l, e
    cp $c2
    nop
    xor [hl]
    ld h, e
    cp [hl]
    and a
    ld a, [hl-]
    or e
    ld c, b
    ld b, h
    ld a, [hl]
    ld [c], a
    adc $e5
    ld a, [$fba0]
    and b
    add b
    ld l, [hl]
    ld h, e
    cp $c7
    ld a, [bc]
    ld l, l
    or [hl]
    dec bc
    dec a
    pop hl
    ld a, e
    ld h, d
    cp d
    and d
    ld c, e
    nop
    add e
    ret nz

    or l
    ld l, d
    ld e, d
    ld c, b
    nop
    ld d, c
    db $fc
    pop bc
    add a
    add c
    ld b, $a5
    ld a, b
    and b
    nop
    pop bc
    jp nz, $c57c

    sbc [hl]
    daa
    nop
    ld d, e
    ld l, a
    inc hl
    cp c
    call nz, $edfb
    rst $28
    ld b, c
    nop
    ld a, b

jr_061_792a:
    call z, $4f00
    dec l
    ld [hl+], a
    ld hl, sp+$61
    rst $30
    and [hl]
    rst $30
    ld h, b
    cp e
    jp hl


    and l
    inc hl
    jr jr_061_792a

    ld d, c
    ld a, [hl]
    add sp, $76
    and [hl]
    ld l, l
    dec c
    ld a, l
    ld b, b
    ld [hl], b
    jp hl


    db $f4
    ld h, e
    jr nc, @-$0a

    sub d
    jp nz, $f707

    and h
    ld [hl], l
    jr nz, jr_061_7960

    ld c, $3d
    ld b, b
    db $ec
    ld [hl+], a
    nop
    jr nc, jr_061_78db

    ld l, $80
    ld [c], a
    jp $eb93


jr_061_7960:
    add b
    ld h, a
    or [hl]
    rlca
    ld c, d
    add e
    ld h, l
    nop
    nop
    ret nz

    pop hl
    ld l, l
    ld hl, $60f2
    rst $28
    ld h, c
    or h
    ld h, l
    add b
    ld [hl], l
    ld a, [hl]
    and $c0
    and $c4
    ld [$f323], a
    ld h, h
    dec hl
    ld e, l
    ld hl, $7980
    ld [hl], $06
    dec bc
    dec bc
    dec b
    ld l, l
    cp e
    ld bc, $402d
    ld [c], a
    ld [hl], h
    ld h, d
    dec [hl]
    ld h, b
    or d
    and b
    dec l
    ldh [rNR41], a
    or h
    daa
    xor d
    ld de, $6378
    add hl, sp
    ld hl, $650a
    dec c
    ld [hl], l
    ld h, d
    cpl
    ld h, e
    add b
    or [hl]
    ld h, a
    dec l
    ld [hl], l
    ld a, b
    ld h, d
    ld a, d
    ld b, e
    ld b, $26
    inc l
    ld b, c
    rst $28
    ld b, b
    dec hl
    inc bc
    ld l, e
    ld c, e
    daa
    inc b
    or a
    ld e, e
    ld a, e
    inc b
    or d
    ld bc, $03e8
    cp h
    ld h, c
    ld [bc], a
    pop bc
    ld [c], a
    dec hl
    ld [hl], c
    inc h
    cp l
    or h
    cp d
    dec b
    cp c
    ld [bc], a
    rst $10
    pop bc
    ccf
    ld b, b
    nop
    ld [$f521], a
    ld h, c
    add d

jr_061_79db:
    pop hl

jr_061_79dc:
    or $46
    add b
    db $10
    ld b, d
    ret


    ld a, e
    inc h
    ld h, h
    dec h
    nop
    cp a
    ld [c], a
    pop bc
    ld [c], a
    xor e
    db $e3
    dec a
    db $fd
    ret nz

    ld h, c
    add d
    ret nz

    ld c, e
    daa
    ld a, [hl]
    pop hl
    nop
    pop bc
    db $e3
    inc d
    rst $00
    ld b, e
    di
    cp [hl]
    add h
    call z, $7e24
    add sp, -$01
    ld [c], a
    dec l
    ld [c], a
    nop
    push af
    ld b, h
    jr nc, jr_061_7a5d

jr_061_7a0d:
    ld [hl+], a
    add h
    ld b, b
    ld [c], a
    ld c, h
    ld [hl+], a
    ld d, l
    and a
    ld c, b
    adc c
    ld a, b
    ld e, $02
    ld [bc], a
    pop bc
    dec l
    adc h
    jr z, @+$68

    xor d
    ld c, c
    ld c, a
    jr nc, @+$4d

    jp $82a1


    and l

jr_061_7a29:
    nop
    jr jr_061_79db

    ld c, d
    ld [hl], e
    add d
    call z, $e240
    inc c
    ld c, c
    ld a, [hl]
    jp hl


    db $76
    ld e, $00
    db $e4
    nop
    ld d, $83
    ret nz

    ei
    jp Jump_061_7aad


    jr z, jr_061_79dc

    ld h, b
    call nc, $d6a6
    sub h
    add b
    rst $10
    jr nz, jr_061_7a0d

    inc hl
    ld d, $88
    rst $38
    rst $38
    ld a, [hl]
    ld l, b
    ld b, h
    add c
    ld c, l
    nop
    ld b, b
    sub [hl]
    ld l, h
    jr nz, jr_061_7a29

jr_061_7a5d:
    ld hl, sp-$80
    rlc d
    ld [c], a
    add b
    adc b
    ld b, e
    or $0d
    nop
    nop
    nop
    ccf
    and b
    and b
    and b
    call c, $dedd
    ld a, [$f4ff]
    push af
    ccf
    db $e4
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [$f4ff]
    push af
    ccf
    ld [$e6e5], a
    rst $20
    add sp, -$17
    ld a, [$f4ff]
    push af
    nop
    ld e, e
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    add b
    rst $18
    nop
    ld d, l
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18

Call_061_7aa9:
    ld a, [$80ff]
    rst $18

Jump_061_7aad:
    inc c
    ld a, [$80ff]
    jp c, $d7d6

    ld b, [hl]
    ldh [rSCX], a
    ldh [$f8], a
    db $e3
    add b
    rst $18
    ld a, $5b
    db $ed
    ret c

    reti


    and b
    ret nc

    pop de
    add $e0
    ld hl, sp-$20
    ld sp, hl
    and b
    add b
    rst $18
    ld e, e
    rst $28
    jp c, $a0db

    jp nc, Jump_000_1ed3

    cp l
    ldh [$da], a
    db $db
    sub $d7
    add b
    rst $18
    sbc b
    ret z

    ld b, a
    db $e3
    ld b, $84
    pop hl
    call nc, $bdd5
    pop hl
    ld a, [hl]
    pop hl
    inc sp
    pop hl
    add b
    rst $18
    sbc b
    pop bc
    ld [hl-], a
    ld c, a
    db $e3
    and b
    rst $00
    ld [c], a
    ld [$d4e0], sp
    push de
    ld a, [hl]
    pop hl
    dec sp
    ldh [$ec], a
    add b
    rst $18
    ld [hl], $a5
    jp c, $84db

    db $e4
    sbc a
    and d
    sbc l
    pop bc
    sbc a
    or a
    ld [c], a
    dec sp
    pop hl
    add b
    rst $18
    push de
    and a
    add h
    db $e3
    sbc a
    sbc h
    rrca
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc a
    dec sp
    push hl
    db $76
    add $80
    rst $18
    add h
    ld [c], a
    dec de
    sbc l
    sbc l
    pop bc
    ldh [rDMA], a
    xor [hl]
    cp a
    ldh [$f8], a
    jp nz, $c175

    ret c

    ld hl, sp-$3d
    add b
    rst $18
    add h
    ld [c], a
    xor [hl]
    xor [hl]
    pop bc
    ldh [rDMA], a
    xor a
    adc b
    cp a
    db $e3
    pop af
    pop bc
    ld hl, sp-$3c
    and b
    nop
    cp h
    ret


    and d
    pop bc
    ldh [$af], a
    rst $38
    xor a
    ld b, [hl]
    ld b, [hl]
    ld a, c
    ld a, d
    ld a, l
    xor a
    ld b, [hl]
    scf
    sbc h
    sbc l
    sbc l
    ld hl, sp-$40
    call nc, Call_000_33d5
    add $b1
    or c
    sbc $c9
    xor d
    and b
    and b
    sbc [hl]
    xor [hl]
    jp nz, $46e0

    ld a, c
    rrca
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld a, l
    ld a, d
    pop hl
    ld hl, sp-$37
    or c
    or e
    ret


    xor c
    and $8a
    and b
    and c
    xor a
    ld b, d
    ldh [$c1], a
    ldh [rDMA], a
    ld b, [hl]
    adc [hl]
    dec c
    ld a, e
    rst $38
    ldh [$7c], a
    ld a, l
    or a
    pop bc
    inc sp
    add $3d
    ldh a, [rNR34]
    and l
    inc l
    dec bc
    and c
    adc d
    and b
    sbc [hl]
    ld b, [hl]
    ld b, d
    ldh [$80], a
    add l
    db $e3

jr_061_7ba0:
    ld sp, hl
    pop bc
    nop
    ld a, c
    ldh [$f8], a
    jp $a1b1


    rst $20
    add b
    or c
    xor [hl]
    jp Jump_000_13a5


    and c
    adc d
    and b
    ccf
    sbc [hl]
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld a, c
    adc l
    ret nz

    rst $20
    cp a
    ld [c], a
    add b
    ld a, [c]
    and c
    ld l, [hl]
    and b
    rst $28
    add c
    or c
    xor [hl]
    ld sp, hl
    ld b, l
    ld h, d
    pop hl
    dec b
    jp nz, Jump_061_6eaf

    add c
    ld [c], a
    add e
    adc c
    adc b
    rst $38
    ldh [$89], a
    add e
    ld a, [hl]
    ld [c], a
    ld h, b
    ld a, [c]
    and d
    rst $28
    add d
    sbc l
    and b
    add b
    ld [hl], a
    ld c, b
    add b
    ret nc

    pop de
    call nz, $fea0
    ld b, c
    pop hl
    adc d
    add l
    ld b, l
    ld c, b
    ld d, e
    ld b, l

jr_061_7bf2:
    add l
    rra
    add [hl]
    add e
    ld b, [hl]
    add e
    add h
    ld a, [c]
    and h
    jr z, jr_061_7ba0

    nop
    cp b
    ld hl, sp+$48
    add b
    cp $c2
    ld bc, $81e1
    ld b, l
    ld c, b
    ld h, b
    ld d, h
    ld a, a
    ld b, h
    ld b, [hl]
    add l
    add a
    adc b
    add a
    add l
    ld a, [c]
    and d
    adc l
    sbc [hl]
    xor h
    add b
    sub $d7
    nop
    cp d
    ld c, b
    add b
    adc b
    add b
    and c
    cp $c1
    pop bc
    add e
    add h
    ld b, h
    ld d, h
    ld d, h
    dec l
    inc l
    dec c
    cp l
    or a
    add $af
    sbc [hl]
    rst $28
    ld h, d
    add b
    db $db
    jp z, Jump_000_0461

    and b
    rst $38
    add d
    add e
    add e
    add [hl]
    add l
    ld b, [hl]
    ld b, l
    cp l
    rst $38
    cp [hl]
    jr nz, jr_061_7c79

    ld b, e
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld c, $fc
    ldh [rDMA], a
    ld b, [hl]
    sbc [hl]
    nop
    db $e3
    add b
    jp c, Jump_061_60ca

    push bc
    add c
    ei
    add l
    add a
    ld c, h
    ld [c], a
    ld [hl-], a
    jr nz, @+$22

    inc h
    dec sp
    ld e, a
    ld [hl], $45
    ld b, [hl]
    ld c, d
    ld b, a
    cp a
    pop hl
    and c
    jr z, jr_061_7bf2

    add $80
    jp c, $d5d4

    add [hl]
    add c
    ld [bc], a
    and c
    db $fc

jr_061_7c79:
    add c
    cp l
    ld sp, $2bff
    inc a
    dec [hl]
    dec [hl]
    jr c, jr_061_7cba

    ld d, l
    ld h, c
    ld hl, $805c
    ld [c], a
    nop
    pop hl
    add b
    reti


    ret


    ld b, c
    sbc [hl]
    call nz, $c282
    add b
    cp [hl]
    db $fc
    add b
    ld d, c
    ld e, a
    ld d, h
    ld a, [hl-]
    dec [hl]
    rst $38
    ldh [rWY], a
    add c
    ld d, [hl]
    ccf
    pop hl
    nop
    db $e3
    nop
    cp l
    ld b, c
    and b
    cp [hl]
    db $e4
    cp [hl]
    add b
    ld b, e
    sbc e
    ld e, e
    add hl, sp
    ret nz

    ldh [$3c], a
    ld c, a
    ret nz

    ld [c], a
    ld sp, $da81

jr_061_7cba:
    pop hl
    db $db
    nop
    cp l
    pop bc
    and b
    ret nz

    add c
    cp [hl]
    add d
    adc [hl]
    ld a, h
    ld a, l
    bit 0, l
    ld [hl], $7f
    ldh [rHDMA5], a
    add b
    ld [c], a

jr_061_7ccf:
    xor a
    ld h, c
    ret nc

    pop de
    and b
    nop
    ld d, [hl]
    inc c
    ld b, d
    ret nz

    call nz, $837f
    inc bc
    and d
    ld b, h
    cp $c0
    add hl, sp
    dec b
    ld b, e
    dec hl
    db $e3
    sbc [hl]
    db $fc
    add l
    and $23
    add b
    dec bc
    sub [hl]
    ld b, d
    call Call_061_6c41
    cp [hl]
    jp $84be


    add c
    ld b, l
    cp $c0
    ld a, [hl-]
    ld b, l
    ld l, h
    add c
    inc c
    ld a, [hl]
    pop bc
    xor l
    ld b, c
    ret c

    reti


    db $e4
    jr nz, @-$53

    ld c, b
    inc c
    ld b, a
    ld a, $c8
    jr nc, @-$01

    and b
    ld a, h
    ld h, c
    ld b, l
    and b
    cp $c0
    inc a
    ld b, h
    db $ec
    ld h, d
    scf
    add d
    rrca
    jp nc, $dad3

    db $db
    db $e4
    jr nz, jr_061_7ccf

    ld c, b
    sbc [hl]
    rlca
    pop de
    ld hl, $7ef4
    push hl
    rlca
    and c
    ld b, [hl]
    cp d
    and d
    scf
    jr c, jr_061_7d69

    ld b, d
    nop
    db $ed
    jp $44ad


    daa
    ld b, d
    dec a
    rst $20
    nop
    ld c, l
    cp h
    and c
    cp [hl]
    ld b, b
    rlca
    and b
    ld c, $06
    and e
    ld b, [hl]
    ld b, l
    ccf
    add b
    and d
    ld a, [hl]
    push hl
    sbc $25
    add sp, $25
    jr nz, jr_061_7d56

jr_061_7d56:
    ld c, e

jr_061_7d57:
    db $fc
    pop bc
    pop bc
    ld bc, $a5b8
    ld a, [$9cec]
    rst $28
    ld b, b
    db $f4
    ld h, d
    nop
    add sp, $27
    sbc [hl]
    dec bc

jr_061_7d69:
    call $de01
    jp nz, $4079

    call z, $ffe6
    ldh [$b1], a
    jp hl


    nop
    ld hl, sp-$3d
    ld a, d
    push bc
    nop
    ld c, e
    call $de01
    jp nz, $40f7

    ld c, h
    rst $20
    ld l, d
    push bc
    ret nz

    inc h
    and h
    ld hl, sp-$3c
    dec h
    inc hl
    nop
    ld c, l
    jr c, jr_061_7df5

    rst $30
    and h
    sbc h
    sbc l
    ld de, $359f
    nop
    add sp, $42
    push af
    pop bc
    ld b, c
    ld [hl], l
    add c
    db $f4
    ld h, c
    sub h
    ld [bc], a
    nop
    dec h
    ld [hl+], a
    add b
    ld l, e
    add d
    pop hl
    ld [hl], $84
    adc $e2
    ld a, [bc]
    add b
    dec [hl]
    nop
    xor b
    add h
    scf
    ld b, l
    ld [hl], $a6
    ld [hl], c
    add b
    ld b, [hl]
    xor [hl]
    db $f4
    ld h, b
    ld hl, sp-$5f
    adc b
    add b
    ld [hl], c
    nop
    db $e3
    db $76
    ld b, e
    sub c
    ld c, d
    add d
    ld d, l
    db $e3
    xor b
    add c
    ld b, l
    cpl
    ld [hl], $62
    and a
    ld h, [hl]
    jr nc, jr_061_7d57

    xor a
    inc [hl]
    ld h, d
    db $f4
    add l
    ld hl, sp-$80
    ld l, e
    inc e
    ld b, c
    ld [hl], $83
    and b
    sbc [hl]
    sub b
    ld b, [hl]
    ld b, [hl]
    pop hl
    sub c
    jp z, $a861

    ld h, c
    ld a, [c]
    ret nz

    pop bc
    ldh [$67], a
    and e
    ld l, b

jr_061_7df5:
    ld [bc], a
    cp a
    ldh [$9c], a
    dec l
    ldh [$72], a
    ld b, c
    add b
    ld de, $039e
    ld a, b
    ld h, e
    add b
    ldh [$7d], a
    sub b
    inc c
    and c
    sub $d7
    jp nc, $9ed3

jr_061_7e0e:
    pop bc
    ld [c], a
    ccf
    dec [hl]
    dec [hl]
    ld l, h
    or a
    cp b
    ld b, d
    ld hl, sp-$7d
    add b
    ld [de], a
    ldh a, [$7a]
    inc b
    ld a, b
    ld h, d
    ld b, c
    pop hl
    ret nz

    ldh [$d4], a
    push de
    ret c

    reti


    rst $38
    call nc, $9ed5
    xor [hl]
    ld [hl], $b9
    cp d
    and e
    ccf
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    ld [hl], $45
    or [hl]
    ld b, c
    scf
    daa
    ldh [$b0], a
    dec c
    ld a, d
    ld bc, $e442
    adc a
    and h
    ld c, b
    ld hl, $af9e
    ld [hl], $07
    ld l, [hl]
    ld l, a
    ld l, h
    pop bc
    ld [c], a
    db $ec
    pop bc
    scf
    jr z, @-$4e

    ld l, l
    sbc d
    inc bc
    db $10
    ret nz

    db $e3
    dec c
    add d
    adc b
    ld b, b
    ld [$4521], a
    cp a
    ldh [$c1], a
    ld [c], a
    or [hl]
    ld b, d
    nop
    jr c, jr_061_7e0e

    add b
    ld l, e
    ld a, d
    ld h, a
    cp b
    ld bc, $c182
    ld b, d
    jp nz, $0029

    xor b
    ld b, d
    nop
    cp a
    ldh [$c1], a
    ld [c], a
    or [hl]
    inc hl
    dec de
    and b
    add b
    dec c
    ld a, d
    dec b
    ret nc

    pop bc
    ret nc

    and d
    nop
    add d
    ret nz

    ld bc, $82e2
    ld [bc], a
    ld a, [hl]
    pop hl
    pop bc
    db $e3
    add d
    jp nz, Jump_000_0033

    add b
    ret nc

    ld [$e243], sp
    ret nc

    pop bc
    ld [bc], a
    jp nz, Jump_000_1690

    ld [c], a
    xor a
    and d
    ld l, d
    add e
    or $81
    ld b, $38
    inc h
    jp c, $80db

    pop de
    ld a, d
    ld h, d
    or [hl]
    ld [bc], a
    ld [bc], a
    pop bc
    ld b, d
    ret nz

    nop
    ld bc, $7ee2
    db $e4
    and b
    inc hl
    inc b
    pop bc
    ld b, e
    and $00
    xor l
    ld a, d
    ld h, h
    ld [bc], a
    and c
    nop
    jp nz, Jump_000_01a3

    ld [c], a
    ld h, l
    ld [bc], a
    inc c
    add c
    db $fc

Call_061_7ed5:
    push hl
    ld b, e
    and $80
    ret nc

    ld a, d
    ld b, c
    nop
    ld b, d
    add c
    add d

Jump_061_7ee0:
    and e
    ld bc, $4fe2
    ld [hl+], a
    jp nz, $fc01

    push hl
    ld b, e
    and $80
    ret nc

    ld b, $04
    and e
    xor [hl]
    xor a
    ld b, b
    pop hl
    inc c
    ld c, c
    db $e4
    ld h, l
    dec a
    dec l
    jr nc, jr_061_7f49

    inc b
    ld a, d
    ld b, c
    pop de
    and b
    sub b
    ld b, d
    and c
    cp a
    pop hl
    inc c
    ld b, l
    add sp, -$7d
    ldh [$83], a
    ret c

    add b
    ld de, $253d
    nop
    ld [c], a
    sbc [hl]
    sub b
    add c
    and c
    sub c
    sub b
    jr nz, jr_061_7f1b

jr_061_7f1b:
    and d
    push de
    and [hl]
    ld a, [$c3f2]
    xor l
    nop
    ld [c], a
    and c
    add c
    pop hl
    ld a, a
    pop hl
    ld b, d
    jp z, $a004

    call c, $808e
    sub $04
    add e
    ld b, h
    add c
    sub c
    ld a, a
    ldh [rP1], a
    jp z, $4904

    cpl
    nop
    cp b
    inc b
    add h
    dec a
    pop hl
    cp [hl]
    and b
    sub d
    res 0, b
    rrca

jr_061_7f49:
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
    jr jr_061_7f7f

    ld [bc], a
    ld bc, $1512
    ld [bc], a
    ld [bc], a
    inc de
    dec d
    ld [bc], a
    inc bc
    add hl, de
    dec d
    ld [bc], a
    inc b
    ld de, $0216
    dec b
    db $10
    rla

jr_061_7f7f:
    ld [bc], a
    ld b, $11
    jr @+$04

    rlca
    ld de, $021a
    ld [$1c26], sp
    ld [bc], a
    add hl, bc
    daa
    dec e
    ld [bc], a
    ld a, [bc]
    ld d, $21
    ld [bc], a
    dec bc
    rla
    ld hl, $0c02
    rrca
    ld [hl+], a
    ld [bc], a
    dec c
    db $10
    inc hl
    ld [bc], a
    ld c, $11
    inc hl
    ld [bc], a
    rrca
    inc h
    dec h
    ld [bc], a
    db $10
    dec h
    ld h, $02
    ld de, $2724
    ld [bc], a
    ld [de], a
    add hl, de
    dec hl
    ld [bc], a
    inc de
    ld [hl-], a
    inc l
    ld [bc], a
    inc d
    inc sp
    dec l
    ld [bc], a
    dec d
    ld [hl-], a
    ld l, $02
    ld d, $27
    cpl
    ld [bc], a
    rla
    daa
    ld [hl-], a
    ld [bc], a
    jr jr_061_7fe1

    ld a, [hl-]
    ld [bc], a
    add hl, de
    ld d, $3b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_061_7fe1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
