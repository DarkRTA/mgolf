INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    db $ab, $46, $b1, $47, $d1, $50, $b0, $58

    sub b
    ld e, a

    db $00, $08, $10, $18, $20, $28, $30, $38, $40, $48, $50, $58, $60, $68, $70, $78
    db $80, $88, $90, $98, $08, $10, $18, $20, $28, $30, $38, $40, $48, $50, $00, $00
    db $01, $09, $11, $19, $21, $29, $31, $39, $41, $49, $51, $59, $61, $69, $71, $79
    db $81, $89, $91, $99, $09, $11, $19, $21, $29, $31, $39, $41, $49, $51, $00, $00
    db $02, $0a, $12, $1a, $22, $2a, $32, $3a, $42, $4a, $52, $5a, $62, $6a, $72, $7a
    db $82, $8a, $92, $9a, $0a, $12, $1a, $22, $2a, $32, $3a, $42, $4a, $52, $00, $00
    db $03, $0b, $13, $1b, $23, $2b, $33, $3b, $43, $4b, $53, $5b, $63, $6b, $73, $7b
    db $83, $8b, $93, $9b, $0b, $13, $1b, $23, $2b, $33, $3b, $43, $4b, $53, $00, $00
    db $04, $0c, $14, $1c, $24, $2c, $34, $3c, $44, $4c, $54, $5c, $64, $6c, $74, $7c
    db $84, $8c, $94, $9c, $0c, $14, $1c, $24, $2c, $34, $3c, $44, $4c, $54, $00, $00
    db $05, $0d, $15, $1d, $25, $2d, $35, $3d, $45, $4d, $55, $5d, $65, $6d, $75, $7d
    db $85, $8d, $95, $9d, $0d, $15, $1d, $25, $2d, $35, $3d, $45, $4d, $55, $00, $00
    db $06, $0e, $16, $1e, $26, $2e, $36, $3e, $46, $4e, $56, $5e, $66, $6e, $76, $7e
    db $86, $8e, $96, $9e, $0e, $16, $1e, $26, $2e, $36, $3e, $46, $4e, $56, $00, $00
    db $07, $0f, $17, $1f, $27, $2f, $37, $3f, $47, $4f, $57, $5f, $67, $6f, $77, $7f
    db $87, $8f, $97, $9f, $0f, $17, $1f, $27, $2f, $37, $3f, $47, $4f, $57, $00, $00
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, [hl]
    ld b, [hl]
    ld l, [hl]
    ld d, d
    ld l, d
    ld d, [hl]
    ld e, d
    ld a, [hl]
    ld d, [hl]
    db $76
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, [hl]
    ld b, [hl]
    ld l, [hl]
    ld d, d
    ld l, d
    ld d, [hl]
    ld e, d
    ld a, [hl]
    ld d, [hl]
    db $76
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld hl, sp-$28
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, a
    ld b, a
    ld l, a
    ld d, c
    ld l, a
    ld d, c
    ld l, e
    ld d, l
    ld e, e
    ld a, l
    ld d, a
    ld [hl], a
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, a
    ld b, a
    ld l, a
    ld d, c
    ld l, a
    ld d, c
    ld l, e
    ld d, l
    ld e, e
    ld a, l
    ld d, a
    ld [hl], a
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld hl, sp-$08
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, a
    ld b, a
    ld l, a
    ld d, c
    ld l, a
    ld d, c
    ld l, e
    ld d, l
    ld e, e
    ld a, l
    ld d, a
    ld [hl], a
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, a
    ld b, a
    ld l, a
    ld d, c
    ld l, a
    ld d, c
    ld l, e
    ld d, l
    ld e, e
    ld a, l
    ld d, a
    ld [hl], a
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld hl, sp-$08
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, a
    ld b, a
    ld l, a
    ld d, c
    ld l, a
    ld d, c
    ld l, e
    ld d, l
    ld e, e
    ld a, l
    ld d, a
    ld [hl], a
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b

    db $00, $08, $10, $18, $20, $28, $30, $38, $40, $48, $50, $58, $60, $68, $70, $78
    db $80, $88, $90, $98, $08, $10, $18, $20, $28, $30, $38, $40, $48, $50, $00, $00
    db $01, $09, $11, $19, $21, $29, $31, $39, $41, $49, $51, $59, $61, $69, $71, $79
    db $81, $89, $91, $99, $09, $11, $19, $21, $29, $31, $39, $41, $49, $51, $00, $00
    db $02, $0a, $12, $1a, $22, $2a, $32, $3a, $42, $4a, $52, $5a, $62, $6a, $72, $7a
    db $82, $8a, $92, $9a, $0a, $12, $1a, $22, $2a, $32, $3a, $42, $4a, $52, $00, $00
    db $03, $0b, $13, $1b, $23, $2b, $33, $3b, $43, $4b, $53, $5b, $63, $6b, $73, $7b
    db $83, $8b, $93, $9b, $0b, $13, $1b, $23, $2b, $33, $3b, $43, $4b, $53, $00, $00
    db $04, $0c, $14, $1c, $24, $2c, $34, $3c, $44, $4c, $54, $5c, $64, $6c, $74, $7c
    db $84, $8c, $94, $9c, $0c, $14, $1c, $24, $2c, $34, $3c, $44, $4c, $54, $00, $00
    db $05, $0d, $15, $1d, $25, $2d, $35, $3d, $45, $4d, $55, $5d, $65, $6d, $75, $7d
    db $85, $8d, $95, $9d, $0d, $15, $1d, $25, $2d, $35, $3d, $45, $4d, $55, $00, $00
    db $06, $0e, $16, $1e, $26, $2e, $36, $3e, $46, $4e, $56, $5e, $66, $6e, $76, $7e
    db $86, $8e, $96, $9e, $0e, $16, $1e, $26, $2e, $36, $3e, $46, $4e, $56, $00, $00
    db $07, $0f, $17, $1f, $27, $2f, $37, $3f, $47, $4f, $57, $5f, $67, $6f, $77, $7f
    db $87, $8f, $97, $9f, $0f, $17, $1f, $27, $2f, $37, $3f, $47, $4f, $57, $00, $00

Call_015_4570:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d418
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, c
    and $f0
    ld c, a
    ld hl, $c3b0
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $d401
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, b
    add $80
    ld b, a
    push bc
    ld hl, $0280
    call Call_000_11c7
    pop bc
    add hl, de
    ld a, l
    ld [$c3a0], a
    ld a, h
    ld [$c3a1], a
    push hl
    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    ld a, l
    ld [$c3ac], a
    ld a, h
    ld [$c3ad], a
    pop hl
    add hl, hl
    add hl, hl
    xor a
    sla l
    rl h
    rla
    ld [$c3a5], a
    ld a, h
    ld [$c3a4], a
    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0280
    call Call_000_11cb
    add hl, de
    ld a, l
    ld [$c3a2], a
    ld a, h
    ld [$c3a3], a
    push hl
    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    ld a, l
    ld [$c3ae], a
    ld a, h
    ld [$c3af], a
    pop hl
    add hl, hl
    add hl, hl
    xor a
    sla l
    rl h
    rla
    ld [$c3a7], a
    ld a, h
    ld [$c3a6], a
    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c3a8
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c3aa
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$c3b8], a
    add hl, hl
    add hl, hl
    ld d, h
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    ld [$c3b9], a
    add hl, hl
    add hl, hl
    ld e, h
    call Call_015_4f9a
    ld [$c3b7], a
    ret


Call_015_462d:
    ld a, [$c836]
    and $0f
    add a
    ld hl, $463f
    add l
    ld l, a
    jr nc, jr_015_463b

    inc h

jr_015_463b:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, a
    ld b, [hl]

    db $7f, $46

    add e
    ld b, [hl]
    add a
    ld b, [hl]
    adc e
    ld b, [hl]
    adc a
    ld b, [hl]
    sub e
    ld b, [hl]
    sub a
    ld b, [hl]
    ld a, a
    ld b, [hl]
    sub e
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, [hl]
    add e
    ld b, [hl]
    add e
    ld b, [hl]
    add e
    ld b, [hl]
    add a
    ld b, [hl]
    add a
    ld b, [hl]
    add a
    ld b, [hl]
    adc e
    ld b, [hl]
    adc e
    ld b, [hl]
    adc e
    ld b, [hl]
    adc a
    ld b, [hl]
    adc a
    ld b, [hl]
    adc a
    ld b, [hl]
    adc a
    ld b, [hl]

    rst $18

    db $00, $4b

    ret


    rst $18
    nop
    ld c, h
    ret


    rst $18
    nop
    ld c, l
    ret


    rst $18
    nop
    ld c, [hl]
    ret


    rst $18
    nop
    ld c, a
    ret


    rst $18
    nop
    ld c, d
    ret


    ld a, [$c837]
    sub $07
    and $0f
    add a
    ld hl, $465f
    add l
    ld l, a
    jr nc, jr_015_46a7

    inc h

jr_015_46a7:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    push af
    ld a, $50
    ld [$c4bf], a
    pop af
    call Call_000_2e3b

jr_015_46bc:
    ld hl, $ffb9
    ldh a, [$b8]
    or [hl]
    jr z, jr_015_46c6

    jr jr_015_46bc

jr_015_46c6:
    xor a
    ld [$c3b6], a
    ld a, $81
    ld hl, $47b8
    call Call_000_23e8
    ld c, $06
    call Call_000_2590
    rst $18

    db $0e, $13

    call Call_000_0684
    xor a
    ldh [$8f], a
    call Call_015_4570
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $00, $16

    call Call_015_47bd
    call Call_015_498f
    call Call_015_49f7
    call Call_015_4ac7
    call Call_015_4dc1
    rst $18

    db $02, $16

    call Call_000_2e3b
    call Call_000_0341
    ld hl, $410a
    ld de, $de00
    ld c, $10
    call Call_000_03eb
    ld hl, $400a
    ld de, $dc00
    ld c, $00

jr_015_4717:
    ld a, [hl+]
    add $40
    ld [de], a
    inc de
    dec c
    jr nz, jr_015_4717

    ld hl, $4470
    ld de, $dd00
    ld c, $10
    call Call_000_03eb
    call Call_015_462d
    ld a, $01
    ldh [rVBK], a
    ld hl, $de00
    ld de, $9800
    ld c, $20
    call Call_000_2096
    xor a
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9400
    ld c, $40
    call Call_000_2096
    ld hl, $d400
    ld de, $8800
    ld c, $60
    call Call_000_2096
    xor a
    ldh [rVBK], a
    ld hl, $dc00
    ld de, $9800
    ld c, $20
    call Call_000_2096
    xor a
    ldh [rVBK], a
    ld hl, $4210
    ld de, $8400
    ld c, $28
    call Call_000_2096
    call Call_000_068a
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld a, $01
    ld hl, $47ad
    call Call_000_23e8
    ld hl, $47b8
    call Call_000_2449
    ld a, [$c3b6]
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0004
    rst $18

    db $0a, $13

    ld de, $d800
    call Call_000_069a
    push af
    ld a, $51
    ld [$c4bf], a
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    call Call_015_4dec
    ret


    ld hl, $47ad
    call Call_000_2449
    ret


    ld hl, $c3b6
    inc [hl]
    ret


Call_015_47bd:
    ldh a, [$96]
    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $dc00
    ld bc, $da00
    xor a
    ld [$c477], a

Jump_015_47d0:
jr_015_47d0:
    ld a, [hl+]
    cp $ff
    jp z, Jump_015_48d3

    ld [$c470], a
    ld a, [hl+]
    ld [$c475], a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [$c3b8]
    cp d
    jr nz, jr_015_47ed

    ld a, [$c3b9]
    cp e
    jr z, jr_015_47d0

jr_015_47ed:
    push hl
    push bc
    ld hl, $c3ae
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld h, e
    ld l, $70
    add hl, bc
    push hl
    ld hl, $c3ac
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld h, d
    ld l, $70
    add hl, bc
    ld e, l
    ld d, h
    pop bc
    push bc
    push de
    ld l, c
    ld h, b
    ld a, l
    sra h
    rra
    sra h
    rra
    sra h
    rra
    sra h
    rra
    sra h
    rra
    ld l, a
    bit 7, h
    jr z, jr_015_4826

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_015_4826:
    ld a, h
    and a
    jp nz, Jump_015_48cc

    ld a, l
    sra h
    rra
    call Call_000_0ee8
    ld c, l
    ld b, h
    ld l, e
    ld h, d
    ld a, l
    sra h
    rra
    sra h
    rra
    sra h
    rra
    sra h
    rra
    sra h
    rra
    ld l, a
    bit 7, h
    jr z, jr_015_4851

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_015_4851:
    ld a, h
    and a
    jp nz, Jump_015_48cc

    ld a, l
    sra h
    rra
    call Call_000_0ee8
    add hl, bc
    ld a, l
    ld [$c473], a
    ld a, h
    ld [$c474], a
    pop de
    pop bc
    ld l, c
    ld h, b
    call Call_000_0a7b
    ld h, a
    ld a, [$c3b1]
    cpl
    inc a
    add h
    add $0c
    cp $18
    jr nc, jr_015_48ce

    ld l, c
    ld h, b
    call Call_000_1a03
    ld l, c
    ld h, b
    ld a, [$c3b0]
    ld c, a
    ld a, [$c3b1]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c471], a
    ld a, h
    ld [$c472], a
    add $0a
    cp $14
    jr nc, jr_015_48ce

    pop bc
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c470
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c477
    inc [hl]
    ld a, [hl]
    pop hl
    cp $55
    jr nc, jr_015_48e2

    jp Jump_015_47d0


Jump_015_48cc:
    pop de
    pop bc

jr_015_48ce:
    pop bc
    pop hl
    jp Jump_015_47d0


Jump_015_48d3:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [bc], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


jr_015_48e2:
    rst $08
    inc hl
    jp Jump_015_47d0


    db $fb, $16, $f5, $17, $f0, $18, $ef, $19, $ee, $1a, $f0, $1b, $f3, $1c, $f6, $1d
    db $fb, $1e, $ff, $1f, $03, $21, $08, $22, $0b, $23, $0e, $24, $10, $25, $0f, $26
    db $0e, $27, $09, $28, $03, $29, $fa, $29, $67, $00, $6a, $00, $6e, $00, $71, $00
    db $75, $00, $79, $00, $7e, $00, $82, $00, $87, $00, $8c, $00, $91, $00, $97, $00
    db $9d, $00, $a3, $00, $aa, $00, $b1, $00, $b9, $00, $c1, $00, $ca, $00, $d3, $00
    db $dd, $00, $e8, $00, $f3, $00, $00, $01, $0d, $01, $1b, $01, $2b, $01, $3c, $01
    db $4e, $01, $62, $01, $78, $01, $90, $01, $aa, $01, $c7, $01, $e7, $01, $0a, $02
    db $31, $02, $5d, $02, $8f, $02, $c7, $02, $06, $03, $4e, $03, $a0, $03, $00, $04
    db $6e, $04, $f0, $04, $89, $05, $40, $06, $1c, $07, $29, $08, $77, $09, $1c, $0b
    db $39, $0d, $00, $10, $5c, $13, $0a, $17, $0a, $1b, $5c, $1f, $00, $24, $f5, $28
    db $3d, $2e, $d7, $33, $c2, $39

    rst $38
    rst $38

Call_015_498f:
    ld hl, $da00

jr_015_4992:
    ld a, [hl+]
    cp $ff
    jr z, jr_015_49f6

    push hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    add $20
    ld d, a
    push hl
    ld hl, $48e7

jr_015_49a2:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, e
    ld b, d
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    inc hl
    inc hl
    jr c, jr_015_49a2

    ld bc, $48e7
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld c, l
    srl c
    dec c
    pop hl
    push bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $490f

jr_015_49c8:
    push hl
    ld c, e
    ld b, d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    inc hl
    inc hl
    jr c, jr_015_49c8

    ld bc, $490f
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld e, l
    srl e
    dec e
    ld a, $3f
    sub e
    ld e, a
    pop bc
    pop hl
    ld a, c
    ld [hl+], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    jr jr_015_4992

jr_015_49f6:
    ret


Call_015_49f7:
    ld bc, $db00
    ld d, $00
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    call Call_015_4a47
    ld a, $ff
    ld [bc], a
    ld hl, $db00
    ld de, $da00
    ld c, $08
    call Call_000_03eb
    ret


Call_015_4a47:
    push bc
    ld hl, $da00
    ld e, $00
    ld c, $ff

jr_015_4a4f:
    ld a, [hl]
    cp $ff
    jr z, jr_015_4a7a

    push hl
    inc hl
    cp $02
    jr z, jr_015_4a5e

    cp $03
    jr nz, jr_015_4a70

jr_015_4a5e:
    ld a, [hl+]
    cp d
    jr nz, jr_015_4a70

    ld a, [hl]
    cp $3f
    jr nc, jr_015_4a70

    cp e
    jr c, jr_015_4a70

    ld a, [hl-]
    ld e, a
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld c, a

jr_015_4a70:
    pop hl
    ld a, $06
    add l
    ld l, a
    jr nc, jr_015_4a78

    inc h

jr_015_4a78:
    jr jr_015_4a4f

jr_015_4a7a:
    pop hl
    ld a, c
    cp $ff
    jr z, jr_015_4a86

    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a

jr_015_4a86:
    ld c, l
    ld b, h
    push bc
    ld hl, $da00
    ld e, $00
    ld c, $ff

jr_015_4a90:
    ld a, [hl]
    cp $ff
    jr z, jr_015_4ab7

    push hl
    inc hl
    cp $01
    jr nz, jr_015_4aad

    ld a, [hl+]
    cp d
    jr nz, jr_015_4aad

    ld a, [hl]
    cp $3f
    jr nc, jr_015_4aad

    cp e
    jr c, jr_015_4aad

    ld a, [hl-]
    ld e, a
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld c, a

jr_015_4aad:
    pop hl
    ld a, $06
    add l
    ld l, a
    jr nc, jr_015_4ab5

    inc h

jr_015_4ab5:
    jr jr_015_4a90

jr_015_4ab7:
    pop hl
    ld a, c
    cp $ff
    jr z, jr_015_4ac3

    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a

jr_015_4ac3:
    ld c, l
    ld b, h
    inc d
    ret


Call_015_4ac7:
    ld a, $ff
    ld [$db00], a
    ld de, $da00

jr_015_4acf:
    ld a, [de]
    cp $ff
    jr z, jr_015_4b0c

    inc de
    inc de
    ld hl, $db00

jr_015_4ad9:
    ld a, [hl]
    cp $ff
    jr z, jr_015_4afd

    inc hl
    inc hl
    ld a, [de]
    cp [hl]
    jr c, jr_015_4ae7

    inc hl
    jr jr_015_4ad9

jr_015_4ae7:
    push de
    ld b, [hl]
    ld [hl-], a
    ld a, b
    ld [de], a
    dec de
    ld a, [de]
    ld b, [hl]
    ld [hl-], a
    ld a, b
    ld [de], a
    dec de
    ld a, [de]
    ld b, [hl]
    ld [hl+], a
    ld a, b
    ld [de], a
    pop de
    inc hl
    inc hl
    jr jr_015_4ad9

jr_015_4afd:
    dec de
    dec de
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld [hl], $ff
    jr jr_015_4acf

jr_015_4b0c:
    ld hl, $db00
    ld de, $da00
    ld c, $08
    call Call_000_03eb
    ret


Call_015_4b18:
    xor a
    ld [$c470], a
    ld hl, $c3ac
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c3a8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c3ae
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $c3aa
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    push bc
    push de
    ld l, c
    ld h, b
    ld a, l
    sra h
    rra
    sra h
    rra
    sra h
    rra
    sra h
    rra
    sra h
    rra
    ld l, a
    bit 7, h
    jr z, jr_015_4b59

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_015_4b59:
    ld a, h
    and a
    jp nz, Jump_015_4bef

    ld a, l
    sra h
    rra
    ld h, $00
    ld l, a
    call Call_000_08b9
    ld c, l
    ld b, h
    ld l, e
    ld h, d
    ld a, l
    sra h
    rra
    sra h
    rra
    sra h
    rra
    sra h
    rra
    sra h
    rra
    ld l, a
    bit 7, h
    jr z, jr_015_4b87

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_015_4b87:
    ld a, h
    and a
    jp nz, Jump_015_4bef

    ld a, l
    sra h
    rra
    ld h, $00
    ld l, a
    call Call_000_08b9
    add hl, bc
    ld a, l
    ld [$c473], a
    ld a, h
    ld [$c474], a
    pop de
    pop bc
    ld a, h
    and a
    ld a, c
    jr z, jr_015_4ba6

jr_015_4ba6:
    ld c, a
    ld a, h
    and a
    ld a, e
    jr z, jr_015_4bac

jr_015_4bac:
    ld e, a
    ld l, c
    ld h, b
    call Call_000_1a03
    ld l, c
    ld h, b
    push hl
    push de
    ld h, h
    ld l, l
    ld de, $020a
    call Call_000_2303
    pop de
    pop hl
    ld a, [$c3b0]
    ld c, a
    ld a, [$c3b1]
    ld b, a
    push hl
    push de
    ld h, b
    ld l, c
    ld de, $020b
    call Call_000_2303
    pop de
    pop hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, l
    ld [$c471], a
    ld a, h
    ld [$c472], a
    add $0a
    cp $14
    jr nc, jr_015_4bf1

    ld a, $01
    ld [$c470], a
    jr jr_015_4bf1

Jump_015_4bef:
    pop de
    pop bc

jr_015_4bf1:
    ret


    db $24, $16, $43, $16, $62, $16, $80, $16, $9f, $16, $be, $16, $dd, $16, $fc, $16
    db $1b, $17, $3a, $17, $59, $17, $79, $17, $98, $17, $b7, $17, $d6, $17, $f6, $17
    db $15, $18, $34, $18, $54, $18, $73, $18, $93, $18, $b2, $18, $d2, $18, $f1, $18
    db $11, $19, $31, $19, $51, $19, $70, $19, $90, $19, $b0, $19, $d0, $19, $f0, $19
    db $0f, $1a, $2f, $1a, $4f, $1a, $6f, $1a, $8f, $1a, $af, $1a, $cf, $1a, $ef, $1a
    db $10, $1b, $30, $1b, $50, $1b, $70, $1b, $90, $1b, $b0, $1b, $d1, $1b, $f1, $1b
    db $11, $1c, $32, $1c, $52, $1c, $72, $1c, $93, $1c, $b3, $1c, $d3, $1c, $f4, $1c
    db $14, $1d, $35, $1d, $55, $1d, $75, $1d, $96, $1d, $b6, $1d, $d7, $1d, $f7, $1d
    db $18, $1e, $38, $1e, $59, $1e, $7a, $1e, $9a, $1e, $bb, $1e, $db, $1e, $fc, $1e
    db $1c, $1f, $3d, $1f, $5e, $1f, $7e, $1f, $9f, $1f, $bf, $1f, $e0, $1f, $00, $20
    db $20, $20, $41, $20, $61, $20, $82, $20, $a2, $20, $c3, $20, $e4, $20, $04, $21
    db $25, $21, $45, $21, $66, $21, $86, $21, $a7, $21, $c8, $21, $e8, $21, $09, $22
    db $29, $22, $4a, $22, $6a, $22, $8b, $22, $ab, $22, $cb, $22, $ec, $22, $0c, $23
    db $2d, $23, $4d, $23, $6d, $23

    adc [hl]
    inc hl
    xor [hl]
    inc hl
    adc $23
    rst $28
    inc hl
    rrca
    inc h
    cpl
    inc h
    ld d, b
    inc h
    ld [hl], b
    inc h
    sub b
    inc h
    or b
    inc h
    ret nc

    inc h
    ldh a, [rNR50]
    ld de, $3125

jr_015_4ce3:
    dec h
    ld d, c
    dec h
    ld [hl], c
    dec h
    sub c
    dec h
    or c
    dec h
    pop de
    dec h
    pop af
    dec h
    db $10
    ld h, $30
    ld h, $50
    ld h, $70
    ld h, $90
    ld h, $af
    ld h, $cf
    ld h, $ef
    ld h, $0f
    daa
    ld l, $27

jr_015_4d04:
    ld c, [hl]
    daa
    ld l, l
    daa
    adc l
    daa
    xor h
    daa
    call z, $eb27
    daa
    ld a, [bc]
    jr z, @+$2c

    jr z, @+$4b

    jr z, jr_015_4d7f

    jr z, @-$77

    jr z, @-$57

    jr z, jr_015_4ce3

    jr z, jr_015_4d04

    jr z, jr_015_4d25

    add hl, hl
    inc hl
    add hl, hl
    ld b, d

jr_015_4d25:
    add hl, hl
    ld h, c
    add hl, hl
    add b
    add hl, hl
    sbc [hl]
    add hl, hl
    cp l
    add hl, hl
    call c, $fb29
    add hl, hl

Call_015_4d32:
    ld hl, $c470
    ld a, [hl+]
    and a
    jr z, jr_015_4d95

    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    add $20
    ld d, a
    push hl
    ld hl, $4bf2

jr_015_4d43:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, e
    ld b, d
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    inc hl
    inc hl
    jr c, jr_015_4d43

    ld bc, $4bf2
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    srl h
    rr l
    ld c, l
    dec c
    pop hl
    push bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $490f

jr_015_4d6b:
    push hl
    ld c, e
    ld b, d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop hl
    inc hl
    inc hl
    jr c, jr_015_4d6b

    ld bc, $490f

jr_015_4d7f:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld e, l
    srl e
    dec e
    ld a, $3f
    sub e
    ld e, a
    pop bc
    ld hl, $c471
    ld a, c
    ld [hl+], a
    ld a, e
    ld [hl+], a

jr_015_4d95:
    ret


Call_015_4d96:
    ld a, [$c471]
    inc a
    rrca
    rrca
    rrca
    and $1f
    ld e, a
    ld hl, $da00

jr_015_4da3:
    ld a, [hl+]
    cp $ff
    jr z, jr_015_4dc0

    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, d
    cp $01
    jr z, jr_015_4da3

    ld a, e
    cp b
    jr nz, jr_015_4da3

    ld a, [$c472]
    cp c
    jr nc, jr_015_4dc0

    xor a
    ld [$c470], a

jr_015_4dc0:
    ret


Call_015_4dc1:
    ld a, $ff
    ld [$c3b2], a
    call Call_015_4b18
    call Call_015_4d32
    call Call_015_4d96
    ld hl, $c470
    ld a, [hl+]
    and a
    jr z, jr_015_4deb

    ld a, [hl+]
    ld [$c3b4], a
    ld a, [hl]
    add $40
    ld [$c3b5], a
    ld a, [hl]
    rrca
    rrca
    rrca
    and $1f
    jr z, jr_015_4deb

    ld [$c3b2], a

jr_015_4deb:
    ret


Call_015_4dec:
    ld a, [$c3b2]
    cp $ff
    jr z, jr_015_4e11

    ld hl, $4e65
    dec a
    add a
    add a
    add l
    ld l, a
    jr nc, jr_015_4dfe

    inc h

jr_015_4dfe:
    ld a, [hl+]
    ld c, a
    ld b, $00
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c3b4]
    ld d, a
    ld a, [$c3b5]
    ld e, a
    call Call_000_26ea

jr_015_4e11:
    ret


    ld bc, $0006
    nop
    add b

    db $f9, $06, $00, $00, $09, $06, $02, $00, $80

    pop af
    ld b, $00
    nop
    ld bc, $0206
    nop
    add b

    db $e9, $06, $00, $00, $f9, $06, $02, $00, $09, $06, $04, $00, $80

    pop hl
    ld b, $00
    nop
    pop af
    ld b, $02
    nop
    ld bc, $0406
    nop
    add b
    reti


    ld b, $00
    nop
    jp hl


    ld b, $02
    nop
    ld sp, hl
    ld b, $04
    nop
    add hl, bc
    ld b, $06
    nop
    add b
    pop de
    ld b, $00
    nop
    pop hl
    ld b, $02
    nop
    pop af
    ld b, $04
    nop
    ld bc, $0606
    nop
    add b
    ld b, b
    nop
    ld [de], a
    ld c, [hl]

    db $42

    nop

    db $17, $4e

    ld b, [hl]
    nop
    jr nz, @+$50

    db $4a

    nop

    db $29, $4e

    ld d, b
    nop
    ld [hl], $4e
    ld d, [hl]
    nop
    ld b, e
    ld c, [hl]
    ld e, [hl]
    nop
    ld d, h
    ld c, [hl]
    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d443]
    or a
    jr z, jr_015_4eb6

    cp $04
    jp z, Jump_015_4eb6

    ld a, [$d442]
    ld b, a
    ld a, d
    sub b
    ld d, a
    ld a, [$d441]
    ld b, a
    ld a, h
    sub b

jr_015_4ea5:
    ld h, a
    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d

Jump_015_4eb6:
jr_015_4eb6:
    push hl
    push de
    call Call_015_4ec7
    pop de
    pop hl
    push bc
    call Call_015_4f2c
    pop bc
    ret


    xor a
    ld b, a
    ld c, a
    ret


Call_015_4ec7:
    ldh a, [$96]
    push af
    ld e, h
    ld l, d
    ld h, $00
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $d000
    add hl, de
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    rrca
    rrca
    and $18
    ld b, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $d7
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    ld c, a
    and $07
    add b
    ld hl, $4f0c
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, [hl]
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ret


    nop
    jr nz, jr_015_4f4f

    ld h, b
    add b
    and b
    ret nz

    ldh [$80], a
    ld h, b
    ld b, b
    jr nz, jr_015_4f19

jr_015_4f19:
    ldh [$c0], a
    and b
    nop
    ldh [$c0], a
    and b
    add b
    ld h, b
    ld b, b
    jr nz, jr_015_4ea5

    and b
    ret nz

    ldh [rP1], a
    jr nz, jr_015_4f6b

    ld h, b

Call_015_4f2c:
    ldh a, [$96]
    push af
    push hl
    push de
    ld e, h
    ld l, d
    ld h, $00
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $d000
    add hl, de
    pop de
    pop bc
    xor a
    sla c
    rla
    sla c
    rla
    ld c, a
    xor a
    sla e

jr_015_4f4f:
    rla
    sla e
    rla
    ld d, $00
    ld e, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    bit 5, [hl]
    jr z, jr_015_4f64

    ld a, $03
    sub c
    ld c, a

jr_015_4f64:
    bit 6, [hl]
    jr z, jr_015_4f6c

    ld a, $03
    sub e

jr_015_4f6b:
    ld e, a

jr_015_4f6c:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, de
    ld de, $d800
    add hl, de
    bit 1, c
    jr z, jr_015_4f83

    inc hl

jr_015_4f83:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 0, c
    jr nz, jr_015_4f90

    swap a

jr_015_4f90:
    and $0f
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ret


Call_015_4f9a:
    ld a, e
    and $fc
    swap a
    ld l, a
    and $0f
    ld h, a
    xor l
    ld l, a
    ld c, d
    srl c
    srl c
    ld b, $d0
    add hl, bc
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, d
    bit 5, [hl]
    jr z, jr_015_4fb9

    cpl

jr_015_4fb9:
    ld c, a
    rrca
    rrca
    ld a, e
    bit 6, [hl]
    jr z, jr_015_4fc2

    cpl

jr_015_4fc2:
    rla
    and $07
    ld e, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    xor a
    ld h, a
    ld d, $d8
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 0, c
    jr nz, jr_015_4fe2

    swap a

jr_015_4fe2:
    and $0f
    ret


    ld a, [$d329]
    add a
    ld hl, $5004
    add l
    ld l, a
    jr nc, jr_015_4ff1

    inc h

jr_015_4ff1:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_015_5068
    add a
    ld h, $00
    ld l, a
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    jr nz, jr_015_5056

    jr c, jr_015_5058

    jr c, jr_015_505a

    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld h, d
    ld h, h
    ld e, l
    ld e, a
    ld [hl-], a
    inc a
    inc d
    ld [hl-], a
    jr z, jr_015_5061

    inc d
    jr z, @+$0c

    ld e, $63
    ld h, h
    inc a
    ld b, h
    ld d, a
    ld e, e
    ld d, e
    ld d, a
    jr z, jr_015_506f

    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld [hl-], a
    inc a
    inc d
    ld [hl-], a
    jr z, jr_015_5079

    inc d
    jr z, @+$0c

    ld e, $63
    ld h, h
    ld e, d
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, d
    ld e, [hl]
    jr z, jr_015_5087

    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld d, b
    ld e, d

jr_015_5056:
    ld [hl-], a
    ld d, b

jr_015_5058:
    ld b, [hl]
    ld d, l

jr_015_505a:
    ld [hl-], a
    ld b, [hl]
    jr z, @+$3e

    ld h, e
    ld h, h
    ld e, d

jr_015_5061:
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, d
    ld e, [hl]
    ld b, [hl]
    ld d, l

Call_015_5068:
    ld a, [$d445]
    or a
    jr z, jr_015_5070

    xor a

jr_015_506f:
    ret


jr_015_5070:
    ld a, [$d4cd]
    cp $0d
    jr z, jr_015_507b

    cp $02

jr_015_5079:
    jr nz, jr_015_508b

jr_015_507b:
    ld a, [$d446]
    or a
    jr z, jr_015_50b0

    cp $01
    jr nz, jr_015_5088

    ld a, $05

jr_015_5087:
    ret


jr_015_5088:
    ld a, $06
    ret


jr_015_508b:
    cp $00
    jr z, jr_015_5093

    cp $0e
    jr nz, jr_015_50a3

jr_015_5093:
    ld a, [$d446]
    or a
    jr z, jr_015_50b0

    cp $01
    jr nz, jr_015_50a0

    ld a, $09
    ret


jr_015_50a0:
    ld a, $0a
    ret


jr_015_50a3:
    cp $01
    jr nz, jr_015_50b0

    ld a, [$d446]
    or a
    jr z, jr_015_50b0

    ld a, $0b
    ret


jr_015_50b0:
    push hl
    push de
    ld a, [$d4cd]
    ld hl, $50c1
    add l
    ld l, a
    jr nc, jr_015_50bd

    inc h

jr_015_50bd:
    ld a, [hl]
    pop de
    pop hl
    ret


    ld bc, $0402
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
    ld [$0b07], sp
    inc bc
    inc b
    db $01
    db $01

    db $f0, $50, $b0, $51, $50, $52, $f0, $52, $b0, $53, $70, $54

    jr nc, jr_015_5134

    db $d0, $55, $90, $56, $30, $57

    ldh a, [$57]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0301
    inc bc
    rlca
    ld b, $07
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    ld [$110f], sp
    rra
    ld hl, $313f
    ccf
    ld a, c
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, a
    ld b, c
    ccf
    inc hl
    ccf
    ld hl, $213f
    ccf
    inc hl
    ccf
    ld hl, $233f
    ld a, l
    ld c, [hl]
    ld [hl], b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop

jr_015_5134:
    jr c, jr_015_516e

    add $fe
    ld bc, $00ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $30
    rst $38
    ld h, l

jr_015_5142:
    rst $38
    or e
    rst $38
    ld a, [hl+]
    rst $38
    inc c
    rst $38
    adc $ff
    add a
    ld a, [hl]
    ld [c], a
    db $fc
    db $fc
    jr nc, jr_015_5142

    db $10
    ldh a, [rNR23]
    ld hl, sp-$08
    ld hl, sp-$08
    adc b
    ld hl, sp-$38
    db $fc
    call nz, $447c
    ld a, $36
    rrca
    rrca
    add c
    add c
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    rst $38
    rst $38

jr_015_516e:
    db $fc
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ldh [$80], a
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    add b
    add b
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
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
    ld bc, $0301
    inc bc
    rlca
    ld b, $07
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    ld [$180f], sp
    rra
    daa
    ccf
    scf
    inc a
    ld a, a
    ld c, h
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, e
    ccf
    inc hl
    ccf
    ld hl, $213f
    ccf
    inc hl
    ccf
    ld hl, $233f
    ld a, l
    ld c, [hl]
    ld [hl], b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    jr c, jr_015_522e

    add $fe
    ld bc, $00ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $30
    rst $38
    ld h, l
    rst $38
    or e
    rst $38
    ld a, [hl+]
    rst $38
    inc c
    rst $38
    adc $ff
    add a
    ld a, [hl]
    ld [c], a
    call c, $b8fc
    ld hl, sp-$78
    ld hl, sp-$48
    ld hl, sp-$08
    ld l, b
    ld hl, sp-$68
    db $f4
    inc a
    db $fc
    inc a
    cp $de
    push af
    ei
    rra
    rra
    adc [hl]
    adc [hl]
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe

jr_015_522e:
    db $fc
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ldh [$80], a
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ccf
    ld l, $5f
    ld a, [hl]
    ld a, e
    ld a, e
    ld [hl], e
    ld [hl], e
    ld [hl], $37
    add hl, de
    rra
    rrca
    rrca
    rla
    dec e
    cpl
    ld a, $3f
    jr c, jr_015_52f6

    ld c, l
    ld a, a
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld b, [hl]
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld hl, $233f
    ld a, l
    ld c, [hl]
    ld [hl], b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    jr c, jr_015_52ce

    add $fe
    ld bc, $00ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $30
    rst $38
    ld h, l
    rst $38
    or e
    rst $38
    ld a, [hl+]
    rst $38
    inc c

jr_015_52a8:
    rst $38
    adc $ff
    add a
    ld a, [hl]
    ld [c], a
    call c, Call_015_68fc
    ld hl, sp-$08
    sbc b
    ld hl, sp-$38
    jr nc, jr_015_52a8

    jr nz, @-$1e

    ret nz

    ret nz

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
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe

jr_015_52ce:
    db $fc
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ldh [$80], a
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
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

jr_015_52f6:
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
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
    add e
    add e
    add e
    add e
    add a
    add [hl]
    adc a
    adc l
    rst $08
    call z, Call_015_767f
    ccf
    dec sp
    ccf
    inc hl
    ld a, a
    ld d, e
    ld a, l
    ld b, a
    jr c, @+$41

    jr z, @+$41

    ld [hl], l
    ld a, a
    ld a, [hl]
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld b, [hl]
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld hl, $233f
    ld a, l
    ld c, [hl]
    ld [hl], b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    adc h
    db $fc

jr_015_5358:
    ld [bc], a
    cp $01
    rst $38
    ld hl, sp-$01
    cp $ef
    rst $38
    set 7, a
    ld h, a
    rst $38
    ld d, l
    rst $38
    jr @+$01

    adc h
    rst $38
    rlca
    db $fc
    db $ec
    ret c

    ld a, b
    add sp, -$48
    ld hl, sp-$48
    ldh a, [$f0]
    jr nz, jr_015_5358

    jr nz, @-$1e

    ret nz

    ret nz

    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
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
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
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
    inc bc
    inc bc
    rlca
    dec b
    dec b
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add d
    add e
    jp Jump_015_7bc3


    ld a, e
    ccf
    ld h, $3f
    inc hl
    rra
    ld d, $19
    rra
    jr c, jr_015_5419

    ld a, c
    ld c, a
    ld a, a
    ld b, [hl]
    add hl, sp
    cpl
    db $10
    rra
    jr nz, jr_015_5433

    jr nc, jr_015_5435

    ld a, b
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld b, [hl]
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld hl, $233f
    ld a, l
    ld c, [hl]
    ld [hl], b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    adc h
    db $fc
    ld [bc], a

jr_015_5419:
    cp $01
    rst $38
    ld hl, sp-$01
    cp $ef
    rst $38
    set 7, a
    ld h, a
    rst $38
    ld d, l
    rst $38
    jr @+$01

    call c, Call_000_2fff
    db $fc
    inc d
    add sp, $38
    ret z

    ld hl, sp-$78

jr_015_5433:
    ld hl, sp+$70

jr_015_5435:
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
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
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    rlca
    ld b, $07
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld b, $07
    add hl, bc
    rrca
    ld de, $221f
    ccf
    ld [hl-], a
    ccf
    ld a, d
    ld c, a
    ld a, a
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld d, c
    ccf
    jr z, @+$41

    jr z, jr_015_54c2

    jr jr_015_54c4

    db $10
    rra
    ld de, $263f
    ld a, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_015_54f0

    add $fe
    ld bc, $00ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $30

jr_015_54c2:
    rst $38
    ld h, l

jr_015_54c4:
    rst $38
    or e
    rst $38
    ld a, [hl+]
    rst $38
    inc c
    rst $38
    adc $ff
    add a

jr_015_54ce:
    ld a, [hl]
    ld [c], a

jr_015_54d0:
    sbc h
    db $fc
    jr nc, jr_015_54c4

    jr z, jr_015_54ce

    jr c, jr_015_54d0

    db $fc
    db $e4
    db $fc
    inc d
    ld a, [$fe0e]
    add $fe
    ld h, d
    rst $18
    db $db
    push bc
    ld b, l
    add b
    add b
    ld b, b
    ret nz

    ld a, h
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc

jr_015_54f0:
    nop
    nop
    nop
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
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ldh [$80], a
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    add b
    add b
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
    nop
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
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0701
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    db $10
    rra
    jr nz, jr_015_5593

    jr nz, jr_015_5595

    ld a, b
    ld e, a
    ld a, [hl]
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld d, b
    ccf
    jr z, jr_015_55a0

    inc h
    rra
    inc d
    rra
    jr jr_015_5586

    jr jr_015_5588

    rra
    ld a, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_015_55b0

    add $fe
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    db $ed

jr_015_5586:
    rst $38
    reti


jr_015_5588:
    rst $38
    jp z, $e3ff

    rst $38
    rst $00
    ld a, [hl]
    ld [c], a
    sbc h
    db $fc
    ld l, b

jr_015_5593:
    ld hl, sp-$78

jr_015_5595:
    ld hl, sp-$68
    ld hl, sp-$08
    add sp, -$02
    adc [hl]
    db $fd
    ld e, e
    rst $38
    rst $38

jr_015_55a0:
    adc $4e
    ret nz

    ld b, b

jr_015_55a4:
    ret nz

    ld b, b
    ret nz

    ret nz

    and b
    ld h, b
    inc a
    db $fc
    cp $fe
    db $fc
    db $fc

jr_015_55b0:
    nop
    nop
    nop
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
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_015_55a4

    ldh [$e0], a
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    ld [bc], a
    ld [bc], a
    inc bc
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
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    pop bc
    pop bc
    pop bc
    pop bc
    add e
    add e
    jp Jump_015_63c3


    ld h, e
    ccf
    ccf
    rra
    rla
    dec de
    rra
    ld [hl-], a
    ccf
    ld hl, $103f
    rra
    db $10
    rra
    jr nz, jr_015_5653

    jr nz, jr_015_5655

    ld a, b
    ld e, a
    ld a, [hl]
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld c, b
    ccf

jr_015_561f:
    ld h, $3f
    inc h
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    dec d
    ld e, $1f
    ld [hl], e
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_015_5670

    add $fe
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld a, [c]
    ld a, a
    ld sp, hl
    rst $38
    di
    ld e, $fe
    db $10

jr_015_5653:
    ldh a, [rNR10]

jr_015_5655:
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_015_561f

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$d0]
    or b
    ld [hl], b
    call c, $fefc
    cp $fc
    db $fc

jr_015_5670:
    nop
    nop
    nop
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
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    add hl, de
    ld h, $3f
    ld b, [hl]
    ld a, a
    ld c, a
    ld a, c
    rst $18
    ldh a, [rIE]
    cp c
    rst $38
    sub a
    rst $38
    sbc e
    db $ed
    cp a
    ld b, a
    ld a, a
    ld b, d
    ld a, a
    ld hl, $103f
    rra
    db $10
    rra
    jr nz, jr_015_56f3

    jr nz, jr_015_56f5

    jr c, jr_015_56f7

    ccf
    daa
    ccf
    jr nz, jr_015_56fc

    inc h
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    dec d
    ld e, $17
    ld a, $2f
    ld [hl], e
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    add b
    rst $38
    pop af
    rst $38
    rst $38
    ld a, a
    rst $38
    cp l
    rst $38
    db $dd
    rst $38
    rst $28
    db $fd
    ei
    ccf
    rst $38
    adc $fe
    ld [$08f8], sp

jr_015_56f3:
    ld hl, sp+$10

jr_015_56f5:
    ldh a, [rNR10]

jr_015_56f7:
    ldh a, [$f0]
    ldh a, [$f0]
    db $10

jr_015_56fc:
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$d0]
    or b
    ld [hl], b
    ret nc

    ldh a, [$fc]
    db $fc
    cp $fe
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    rlca
    ld b, $07
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    ld [$110f], sp
    rra
    ld hl, $313f
    ccf
    ld a, c
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, a
    ld b, c
    ccf
    inc hl
    ccf
    ld hl, $213f
    ccf
    inc hl
    ccf
    ld hl, $233f
    ld a, l
    ld c, [hl]
    ld [hl], b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop

jr_015_5772:
    nop
    nop
    jr c, jr_015_57ae

    add $fe
    ld bc, $00ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $30
    rst $38
    ld h, l
    rst $38
    or e
    rst $38
    ld a, [hl+]
    rst $38
    inc c
    rst $38
    adc $ff
    add a
    ld a, [hl]
    jp nz, $fcfc

    jr nz, jr_015_5772

    db $10
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f8]
    adc b
    ld hl, sp-$78
    db $fc
    call nz, $447c
    ld a, $36
    rrca
    rrca
    add c
    add c
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    rst $38
    rst $38

jr_015_57ae:
    db $fc
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ldh [$80], a
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    add b
    add b
    call z, $b6cc
    ld a, [$7e62]
    db $fc
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    rlca
    ld b, $07
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld b, $07
    add hl, bc
    rrca
    ld de, $221f
    ccf
    ld [hl-], a
    ccf
    ld a, d
    ld c, a
    ld a, a
    ld b, a
    ld a, a
    ld b, c
    ld a, a
    ld d, c
    ccf
    jr nc, @+$41

    jr z, jr_015_5842

    jr jr_015_5844

    db $10
    rra
    ld de, $263f
    ld a, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_015_5870

    add $fe
    ld bc, $00ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $30

jr_015_5842:
    rst $38
    ld h, l

jr_015_5844:
    rst $38
    or e
    rst $38
    ld a, [hl+]
    rst $38
    inc c
    rst $38
    adc $ff
    add a

jr_015_584e:
    ld a, [hl]
    ld [c], a

jr_015_5850:
    sbc h
    db $fc
    jr nc, jr_015_5844

    jr z, jr_015_584e

    jr c, jr_015_5850

    db $fc
    db $e4
    db $fc
    inc d
    ld a, [$fe0e]
    add $fe
    ld h, d
    rst $38
    ei
    rst $00
    ld b, a
    add b
    add b
    ld h, b
    ldh [$7c], a
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc

jr_015_5870:
    nop
    nop
    nop
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
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ldh [$80], a
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    add b
    add b
    call z, $b6cc
    ld a, [$7e62]
    db $fc
    db $fc
    nop
    nop

    db $d0, $58, $70, $59, $f0, $59, $90, $5a, $50, $5b, $f0, $5b, $90, $5c, $10, $5d
    db $b0, $5d, $50, $5e, $f0, $5e

    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    rlca
    rlca
    inc bc
    inc bc
    ld b, $07
    add hl, bc
    rrca
    ld [de], a
    rra
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld sp, $7d3f
    ld c, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld b, [hl]
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38

jr_015_590e:
    ld a, a
    ld a, a
    nop
    nop
    ldh [$e0], a

jr_015_5914:
    jr jr_015_590e

    inc b
    db $fc
    add $fe
    ld sp, hl
    rst $38
    rst $38
    sub a
    db $fc
    adc h
    db $fc
    inc c
    cp $32
    cp $3a
    db $fc
    inc e
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_015_5914

    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp-$78
    ld a, h
    ld l, h
    ld e, $1e
    inc bc
    inc bc
    ld bc, $8001
    add b
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    add b
    add b
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    rlca
    rlca
    inc bc
    inc bc
    ld b, $07
    add hl, bc
    rrca
    add hl, de
    rra
    add hl, hl
    ccf
    cpl
    ccf
    ccf
    add hl, sp
    ld a, a
    ld c, b
    ld a, a
    ld b, h
    ld a, a
    ld b, [hl]
    ccf
    inc hl
    ccf
    inc hl
    ccf
    ld [hl+], a
    ld a, a
    ld b, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38

jr_015_59ae:
    ld a, a
    ld a, a
    nop
    nop
    ldh [$e0], a
    jr jr_015_59ae

    inc b
    db $fc
    add $fe
    ld sp, hl
    rst $38
    rst $38
    sub a
    db $fc
    adc h
    db $fc
    inc c
    cp $32
    cp $3a
    db $fc
    inc e
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ldh [$a0], a
    ldh [$e0], a
    ret nc

    ld [hl], b
    ldh a, [$30]
    ld hl, sp+$78
    call nc, $fc6c
    db $fc
    jr c, jr_015_5a1c

    nop
    nop
    add b
    add b
    add b
    add b
    db $fc
    db $fc
    cp $fe
    db $fc
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
    nop
    nop
    nop
    nop
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
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_015_5a1c:
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    rst $00
    call nz, Call_015_62e3
    ld h, a
    rst $20
    ld l, a
    rst $28
    ld a, [c]
    rst $38
    ld h, e
    ld a, a
    ld a, $3f
    ld a, [hl]
    ld d, e
    ld a, a
    ld l, c
    ld a, [hl]
    ld [hl], e
    ld a, h
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, a
    ld b, a
    ccf
    dec h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ld a, a
    ld b, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38

jr_015_5a4e:
    ld a, a
    ld a, a
    nop
    nop
    ldh [$e0], a
    jr jr_015_5a4e

    inc b
    db $fc
    add $fe
    ld sp, hl
    rst $38
    rst $38
    sub a
    db $fc
    adc h
    db $fc
    inc c
    cp $32
    cp $3a
    db $fc
    inc e
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    and b
    ldh [$d0], a
    ldh a, [$d0]
    ld [hl], b
    ldh [$a0], a
    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    db $fc
    db $fc
    cp $fe
    db $fc
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
    ld b, $06
    ld c, $0a
    ld a, [bc]
    ld c, $0e
    ld c, $06
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    ld [$0407], sp
    rst $28
    xor $fb
    sbc $fd
    rst $08
    or $9f
    db $e3
    ld a, a
    di
    ld a, $cf
    db $fc
    ld [hl], e
    ld a, [hl]
    ld a, a
    ld c, a
    ld a, a
    ld b, e
    ld a, a
    ld b, l
    ld a, a
    ld b, h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ld a, a
    ld b, a
    ld a, a
    ld b, e

jr_015_5b06:
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_015_5b06

    ld [$8cf8], sp

jr_015_5b19:
    db $fc
    ld a, [c]
    cp $fe
    ld l, $f8

jr_015_5b1f:
    jr jr_015_5b19

    jr jr_015_5b1f

    ld h, h
    db $fc
    ld [hl], h
    ld hl, sp+$38
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
    jr @+$1a

    jr c, jr_015_5b7e

    jr z, jr_015_5b90

    jr c, jr_015_5b92

    jr @+$1a

    inc c
    inc c
    ld b, $06
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_015_5b7e:
    rlca
    dec b
    rrca
    ld a, [bc]
    rst $08
    ret z

    rst $20
    and h
    rst $38
    ld e, $eb
    cp [hl]
    rst $00
    ld a, a
    rst $30
    inc a
    rst $28
    inc a

jr_015_5b90:
    rst $20
    cp [hl]

jr_015_5b92:
    ld h, c
    ld a, a
    ld [hl], b
    ld a, a
    ld a, h
    ld c, a
    ld a, a
    ld b, e
    ld a, a
    ld c, l
    ld a, a
    ld b, h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ld a, a
    ld b, a
    ld a, a
    ld b, e

jr_015_5ba6:
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_015_5ba6

    ld [$8cf8], sp

jr_015_5bb9:
    db $fc
    ld a, [c]
    cp $fe
    ld l, $f8

jr_015_5bbf:
    jr jr_015_5bb9

    jr jr_015_5bbf

    ld h, h
    db $fc
    ld [hl], h
    ld hl, sp+$38
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    ldh [$60], a
    and b
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    add b
    add b
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
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    dec b
    rlca
    ld a, [bc]
    rrca
    ld de, $201f
    ccf
    ld [hl+], a
    ccf
    inc hl
    ccf
    ld a, e
    ld e, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld d, c
    ccf
    jr z, @+$41

    jr z, jr_015_5c60

    inc l
    ccf
    jr z, jr_015_5c64

    jr nc, jr_015_5c66

    ccf
    ld a, [hl+]
    dec a
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_015_5c30:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_015_5c30

    inc b
    db $fc
    add $fe
    ld sp, hl
    rst $38
    rst $38
    sub a
    db $fc
    adc h
    db $fc
    inc c
    cp $32
    cp $3a
    db $fc
    inc e
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    ld b, b
    ret nz

    ld h, b
    ldh [$f0], a
    ret nc

    ld hl, sp+$48
    db $f4
    inc a
    db $fc
    inc c
    db $fc
    call nz, Call_015_64fc

jr_015_5c60:
    sbc $56
    adc e
    adc e

jr_015_5c64:
    add c
    add c

jr_015_5c66:
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    rst $38
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    add b
    add b
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
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
    rlca
    rlca
    ld b, $07
    add hl, bc
    rrca
    db $10
    rra
    db $10
    rra
    jr nz, jr_015_5cf3

    jr nz, jr_015_5cf5

    ld a, b
    ld e, a
    ld a, a
    ld b, a
    ld a, a
    ld d, b
    ccf
    jr z, jr_015_5cfe

    inc l
    ccf
    jr z, jr_015_5d02

    jr z, jr_015_5d04

    jr nc, jr_015_5d06

    ccf
    ld a, [hl+]
    dec a
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_015_5cd0:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_015_5cd0

    inc b
    db $fc
    ld [bc], a
    cp $c2
    cp $fc
    db $fc
    db $fc
    db $e4
    cp $e6
    cp $d2
    cp $de
    db $fc
    db $ec
    ld hl, sp-$68
    ld h, b
    ldh [$e0], a
    ldh [rNR10], a
    ldh a, [rNR10]

jr_015_5cf3:
    ldh a, [$b0]

jr_015_5cf5:
    ldh a, [$f6]
    sub $fd
    adc e
    rst $38
    rst $08
    cp $7e

jr_015_5cfe:
    ret nz

    ld b, b
    ret nz

    ld b, b

jr_015_5d02:
    add b
    add b

jr_015_5d04:
    add b
    add b

jr_015_5d06:
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld b, $06
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld c, $06
    ld b, $03
    inc bc
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
    nop
    nop
    nop
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
    inc bc
    inc bc
    add a
    add l
    jp Jump_015_63c3


    ld h, e
    scf
    scf
    ld a, $2f
    add hl, de
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr nz, jr_015_5d93

    jr nc, jr_015_5d95

    ld a, h
    ld c, a
    ld a, a
    ld b, e
    ld a, a
    ld c, b
    ccf
    jr z, jr_015_5d9e

    ld h, $3f
    inc h
    ccf
    jr z, jr_015_5da4

    ld l, $7b
    ld e, l
    ld l, [hl]
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    adc h
    db $fc
    ld [bc], a
    cp $81
    rst $38
    pop hl
    rst $38
    ld sp, hl
    rst $38
    cp $fe
    cp $fe
    cp $f2
    db $fc
    db $f4
    ld hl, sp-$28
    ld [hl], b
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]

jr_015_5d93:
    ldh [rLCDC], a

jr_015_5d95:
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_015_5d9e:
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b

jr_015_5da4:
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
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
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
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
    ld bc, $0201
    inc bc
    inc [hl]
    scf
    ld c, h
    ld a, a
    adc a
    rst $38
    rst $18
    di
    rst $38
    ld [hl], a
    rst $28
    dec hl
    rst $30
    ld [hl], a
    rst $38
    rra
    db $eb
    ccf
    push bc
    rst $38
    ld b, e
    ld a, a
    jr nc, @+$41

    jr nz, @+$41

    jr nz, jr_015_5e31

    jr nz, @+$41

    jr nc, jr_015_5e35

    ld a, a
    ld c, a
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    ld l, $3f
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    dec hl

jr_015_5e06:
    ld a, l
    ld e, [hl]
    ld l, l
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_015_5e06

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $e4
    db $fc

jr_015_5e1e:
    ld hl, sp-$08
    ld hl, sp-$18
    ld hl, sp-$18
    ldh a, [$d0]
    ldh [$e0], a

jr_015_5e28:
    ret nz

    ret nz

    ldh [$e0], a
    jr nc, jr_015_5e1e

    jr c, jr_015_5e28

    ld e, h

jr_015_5e31:
    call nc, $de56
    sbc [hl]

jr_015_5e35:
    sbc [hl]
    adc h
    adc h
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    cp h
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    rlca
    rlca
    inc bc
    inc bc
    ld b, $07
    add hl, bc
    rrca
    ld [de], a
    rra
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld sp, $7d3f
    ld c, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld b, [hl]
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38

jr_015_5e8e:
    ld a, a
    ld a, a
    nop
    nop
    ldh [$e0], a

jr_015_5e94:
    jr jr_015_5e8e

    inc b
    db $fc
    add $fe
    ld sp, hl
    rst $38
    rst $38
    sub a
    db $fc
    adc h
    db $fc
    inc c
    cp $32
    cp $3a
    db $fc
    inc e
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_015_5e94

    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp-$78
    ld a, b
    ld l, b
    inc e
    inc e
    ld b, $06
    inc bc
    inc bc
    add c
    add c
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $b6cc
    ld a, [$7e62]
    db $fc
    db $fc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    dec b
    rlca
    ld a, [bc]
    rrca
    ld de, $201f
    ccf
    ld [hl+], a
    ccf
    inc hl
    ccf
    ld a, e
    ld e, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld d, c
    ccf
    jr z, @+$41

    inc h
    ccf
    jr z, @+$41

    jr z, jr_015_5f64

    jr nc, jr_015_5f66

    ccf
    ld a, [hl+]
    dec a
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_015_5f30:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_015_5f30

    inc b
    db $fc
    add $fe
    ld sp, hl
    rst $38
    rst $38
    sub a
    db $fc
    adc h
    db $fc
    inc c
    cp $32
    cp $3a
    db $fc
    inc e
    db $fc
    inc c
    ldh a, [$90]
    ldh [$e0], a
    ld b, b
    ret nz

    ld h, b
    ldh [$f0], a
    ret nc

    ld hl, sp+$48
    db $f4
    inc a
    db $fc
    inc c
    db $fc
    call nz, Call_015_64fc
    call c, $8e54
    adc [hl]

jr_015_5f64:
    add e
    add e

jr_015_5f66:
    ld b, c
    pop bc
    ret nz

    ret nz

    ld a, h
    db $fc
    rst $38
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $b6cc
    ld a, [$7e62]
    db $fc
    db $fc
    nop
    nop
    or b
    ld e, a
    ld [hl], b
    ld h, b
    jr nc, jr_015_5ff7

    ldh a, [$61]
    ldh a, [$62]
    ret nc

    ld h, e
    sub b
    ld h, h
    ld d, b
    ld h, l
    db $10
    ld h, [hl]
    ret nc

    ld h, [hl]
    sub b
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    rlca
    dec b
    rlca
    rlca
    ld b, $03
    ld [bc], a
    rlca
    ld b, $1b
    rra
    inc sp
    ccf
    inc h
    ccf
    ld c, b
    ld a, a
    ld e, b
    ld a, a
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld [hl], l
    ld a, [hl]
    ldh a, [rIE]
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc e

jr_015_5ff7:
    rra
    ld h, b
    ld a, a
    add b
    rst $38
    jp $df7f


    ld a, a
    rst $20
    dec a
    rst $28
    cp c
    rst $38
    or h
    rst $38
    ld e, [hl]
    rst $38
    adc l
    rst $38
    push bc
    ld a, a
    db $e3
    ccf
    pop af
    rra
    db $fc
    rla
    rst $38
    ld [de], a
    cp $0a
    cp $0c
    db $fc

jr_015_601a:
    ld a, $f2
    cp $ca
    db $fc
    add h
    cp $86
    rst $38
    rst $30
    ret


    ret


    ret nz

    ret nz

    and b
    ldh [$fc], a
    db $fc
    ld a, a
    rst $38

jr_015_602e:
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    jr nz, jr_015_601a

    ldh [$e0], a
    jr nc, jr_015_602e

    ret z

    ld hl, sp-$10
    ldh a, [$e0]
    ld h, b
    ldh a, [$f0]
    ret c

    ld a, b
    ret z

    ld hl, sp-$10
    ld [hl], b
    ldh a, [$50]
    ldh [$e0], a
    ldh [rNR41], a
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
    nop
    nop
    nop
    nop
    add b
    add b
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
    nop
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
    dec b
    rlca
    dec b
    rlca
    rlca
    ld b, $03
    ld [bc], a
    rlca
    ld b, $1b
    rra
    scf
    ccf
    jr z, jr_015_60cd

    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ldh a, [rIE]
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $38
    cp $7f
    ld a, h
    ld a, a
    ld a, [hl]
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld [hl], l
    ld a, [hl]
    ldh a, [rIE]
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    ld h, b
    ld a, a
    add b
    rst $38
    jp $df7f


    ld a, a
    rst $20
    dec a
    rst $28
    cp c
    rst $38
    or h
    rst $38
    ld e, [hl]
    rst $38
    adc l
    rst $38
    push bc
    rst $38

jr_015_60cd:
    db $e3
    ld a, a
    pop af
    ld e, a
    db $fc
    ld d, e
    rst $38
    ld h, d
    cp $fa
    cp $fc
    ld h, h

jr_015_60da:
    db $fc
    inc h
    ld hl, sp+$78
    ld hl, sp-$08
    call c, $fcfc
    db $ec
    ld hl, sp-$08
    ret nz

    ret nz

    and b
    ldh [$fc], a
    db $fc
    ld a, [hl]
    cp $fc
    db $fc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    jr nz, jr_015_60da

    ldh [$e0], a
    jr nc, @-$0e

    ret z

    ld hl, sp-$10
    ldh a, [$e0]
    ld h, b
    ldh a, [$f0]
    ret c

    ld a, b
    ret z

    ld hl, sp-$10
    ld [hl], b
    ldh a, [$50]
    ldh [$e0], a
    ldh [rNR41], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    ld b, $0b
    ld c, $0b
    ld c, $0f
    dec c
    rlca
    dec b
    ld l, a
    ld l, h
    cp a
    rst $38
    ld sp, hl
    cp a
    ld a, [$7dff]
    ld a, a
    ld a, a
    ld [hl], e
    rst $38
    pop hl
    rst $38
    ld [c], a
    rst $38
    db $fc
    rst $38
    ld hl, sp+$7f
    ld a, h
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld [hl], l
    ld a, [hl]
    ldh a, [rIE]
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr c, jr_015_61b7

    ret nz

    rst $38
    ld bc, $86ff
    rst $38
    cp a
    rst $38
    rst $08
    ld a, e
    rst $18
    ld [hl], d
    rst $38
    ld l, c
    rst $38
    cp h
    rst $38
    dec de
    rst $38
    adc d
    rst $38
    add $bf
    db $e3
    ccf
    ld hl, sp-$39
    rst $38
    add h
    db $fc
    call nz, $c87c
    ld a, b
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    and b
    ldh [$fc], a
    db $fc
    ld a, [hl]
    cp $fc
    db $fc
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b

jr_015_61b7:
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    or b
    ldh a, [$90]
    ldh a, [$e0]
    ldh [$e0], a
    and b
    ret nz

    ret nz

    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    add a
    add [hl]
    set 1, [hl]
    set 1, [hl]
    rst $08
    call $8587
    rst $08
    call z, Call_015_7f7f
    ld sp, hl
    rst $08
    ld a, [hl]
    rst $00
    ld a, a
    ret


    ccf
    ldh a, [$9f]
    pop af
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld [hl], l
    ld a, [hl]
    ldh a, [rIE]
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr c, jr_015_62b7

    ret nz

    rst $38
    ld bc, $86ff
    rst $38
    cp a
    rst $38
    rst $08
    ld a, e
    rst $18
    ld [hl], d
    rst $38
    ld l, c
    rst $38
    cp h
    rst $38
    dec de
    rst $38
    adc d
    rst $38
    add $ff
    db $e3
    sbc a
    ld hl, sp+$07
    rst $38
    inc b
    db $fc
    inc b
    db $fc
    ret z

    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    and b
    ldh [$fc], a
    db $fc
    ld a, [hl]
    cp $fc
    db $fc
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b

jr_015_62b7:
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    or b
    ldh a, [$90]
    ldh a, [$e0]
    ldh [$e0], a
    and b
    ret nz

    ret nz

    ret nz

    ld b, b
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

Call_015_62e3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    rlca
    rlca
    dec b
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
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
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    inc bc
    inc bc
    add a
    add [hl]
    db $eb
    xor $fb
    sbc [hl]
    rst $38
    adc l
    rst $38
    sbc l
    ld a, a
    or $3f
    db $e3
    ld a, $e3
    inc a
    rst $30
    ld c, b
    rst $38
    add h
    rst $38
    adc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld [hl], l
    ld a, [hl]
    ldh a, [rIE]
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr c, jr_015_6397

    ret nz

    rst $38
    ld bc, $86ff
    rst $38
    cp a
    rst $38
    rst $08
    ld a, e
    rst $18
    ld [hl], d
    rst $38
    ld l, c
    rst $38
    cp h
    rst $38
    dec de
    rst $38
    adc d
    ld a, a
    add $3f
    di
    rrca
    db $fc
    inc bc
    rst $38
    ld [bc], a
    cp $c4
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    and b
    ldh [$fc], a
    db $fc
    ld a, [hl]
    cp $fc
    db $fc
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b

jr_015_6397:
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    or b
    ldh a, [$90]
    ldh a, [$e0]
    ldh [$e0], a
    and b
    ret nz

    ret nz

    ret nz

    ld b, b
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

Jump_015_63c3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    rlca
    dec b
    rlca
    rlca
    ld b, $03
    ld [bc], a
    rlca
    ld b, $0b
    rrca
    inc sp
    ccf
    ld h, h
    ld a, a
    ld c, h
    ld a, a
    ret z

    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld [hl], l
    ld a, [hl]
    ldh a, [rIE]
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    ld h, b
    ld a, a
    add b
    rst $38
    jp $df7f


    ld a, a
    rst $20
    dec a
    rst $28
    cp c
    rst $38
    or h
    rst $38
    ld e, [hl]
    rst $38
    adc l
    rst $38
    push bc
    ld a, a
    db $e3
    ccf
    pop af
    ccf
    ld hl, sp+$17
    rst $38
    ld d, $fe
    inc c
    db $fc

jr_015_643a:
    ld a, [bc]
    cp $3a
    cp $fc
    call z, $84fc
    cp $86
    rst $38
    rst $30
    jp hl


    jp hl


    ret nz

    ret nz

    db $fc
    db $fc
    ld a, a
    rst $38
    db $fc
    db $fc

jr_015_6450:
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_015_643a

    jr nz, @-$1e

    ldh [$e0], a
    jr nc, jr_015_6450

    ret z

    ld hl, sp-$10
    ldh a, [$e0]
    ld h, b
    ldh a, [$f0]
    ret c

    ld a, b
    ret z

    ld hl, sp-$10
    ld [hl], b
    ldh a, [$50]
    ldh [$e0], a
    ldh [rNR41], a
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
    nop
    nop
    nop
    nop
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    add hl, bc
    rrca
    db $10
    rra
    jr nc, jr_015_64ef

    ld hl, $793f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rla
    rra
    ld l, [hl]
    ld a, a
    cp $ff
    ld a, a

jr_015_64cf:
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_015_64f9

    ld h, b
    ld a, a
    or b
    rst $38
    jr c, jr_015_64cf

    dec sp
    rst $28
    inc a
    rst $20
    ld a, l
    rst $10
    rst $38
    sub $ff
    call $f2ff
    ld a, a
    ld a, [c]
    rst $38

jr_015_64ef:
    ld sp, hl
    rst $00
    db $fc
    add e
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    di

jr_015_64f9:
    rst $38
    cp $fe

Call_015_64fc:
jr_015_64fc:
    ld hl, sp-$08
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    cp h
    db $fc
    ld e, $fe
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_015_64fc

    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$f0], a
    or b
    ret z

    ld hl, sp-$18
    ld a, b
    ldh a, [$b0]
    ldh [$a0], a
    ret nz

    ret nz

    ret nz

    ld b, b
    and b
    ldh [$e0], a
    and b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add c
    jp nz, $c4c3

    rst $00
    ret z

    rst $08
    adc b
    adc a
    ret z

    rst $08
    ld l, h
    ld l, a
    scf
    scf
    rra
    rra
    daa
    ccf
    add hl, hl
    ccf
    ld e, b
    ld a, a
    ld d, b
    ld a, a
    ld a, h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rla
    rra
    ld h, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, e
    ld a, a
    add c
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rrca
    ei
    ld c, $fb
    rra
    ld sp, hl
    rra
    push af
    ccf
    push af
    rst $38
    ld a, [$ecff]
    rst $38
    pop af
    ld a, [hl]
    cp $e4
    db $fc
    ld [c], a
    cp $c2
    cp $e4
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    sub b
    ldh a, [$4c]
    db $fc
    cp $fe
    db $fc
    db $fc
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
    ret nz

    ret nz

    ld b, b
    ret nz

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
    scf
    scf
    ld a, [hl]
    ld c, e
    ld a, a
    ld d, c
    ccf
    ld sp, $7f4f
    ld b, e
    ld a, [hl]
    add l
    rst $38
    add [hl]
    rst $38
    add e
    rst $38
    ld b, e
    ld a, a
    ld b, a
    ld a, a
    ld h, $3f
    inc l
    ccf
    inc a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rla
    rra
    ld h, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    cp $01
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    pop hl
    cp a
    di
    rst $18
    cp $ee
    rst $38
    rst $30
    cp $ff
    ccf
    db $fd
    ccf
    rst $38
    or a
    rst $38
    db $f4
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    xor b
    ret c

    ld [hl], h
    db $fc
    db $fc
    db $fc
    cp $fe
    db $fc
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
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    rlca
    dec b
    rlca
    rlca
    ld b, $03
    ld [bc], a
    rlca
    ld b, $1b
    rra
    inc sp
    ccf
    inc h
    ccf
    ld c, b
    ld a, a
    ld e, b
    ld a, a
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld [hl], l
    ld a, [hl]
    ldh a, [rIE]
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    ld h, b
    ld a, a
    add b
    rst $38
    jp $df7f


    ld a, a
    rst $20
    dec a
    rst $28
    cp c
    rst $38
    or h
    rst $38
    ld e, [hl]
    rst $38
    adc l
    rst $38
    push bc
    ld a, a
    db $e3
    ccf
    pop af
    rra
    db $fc
    rla
    rst $38
    ld [de], a
    cp $0a
    cp $0c
    db $fc

jr_015_673a:
    ld a, $f2
    cp $ca
    db $fc
    add h
    cp $86
    rst $38
    rst $30
    ret


    ret


    ret nz

    ret nz

    and b
    ldh [$fc], a
    db $fc
    ld a, a
    rst $38

jr_015_674e:
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    jr nz, jr_015_673a

    ldh [$e0], a
    jr nc, jr_015_674e

    ret z

    ld hl, sp-$10
    ldh a, [$e0]
    ld h, b
    ldh a, [$f0]
    ret c

    ld a, b
    ret z

    ld hl, sp-$10
    ld [hl], b
    ldh a, [$50]
    ldh [$e0], a
    ldh [rNR41], a
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
    nop
    nop
    nop
    nop
    add b
    add b
    and $e6
    ld e, e
    ld a, l
    ld sp, $fe3f
    cp $00
    nop
    nop
    nop
    nop
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
    dec b
    rlca
    dec b
    rlca
    rlca
    ld b, $03
    ld [bc], a
    rlca
    ld b, $0b
    rrca
    inc sp
    ccf
    ld h, h
    ld a, a
    ld c, h
    ld a, a
    ret z

    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld [hl], l
    ld a, [hl]
    ldh a, [rIE]
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    ld h, b
    ld a, a
    add b
    rst $38
    jp $df7f


    ld a, a
    rst $20
    dec a
    rst $28
    cp c
    rst $38
    or h
    rst $38
    ld e, [hl]
    rst $38
    adc l
    rst $38
    push bc
    ld a, a
    db $e3
    ccf
    pop af
    ccf
    ld hl, sp+$17
    rst $38
    ld d, $fe
    inc c
    db $fc

jr_015_67fa:
    ld a, [bc]
    cp $3a
    cp $fc
    call z, $84fc
    cp $86
    rst $38
    rst $30
    jp hl


    jp hl


    ret nz

    ret nz

    db $fc
    db $fc
    ld a, a
    rst $38
    db $fc
    db $fc

jr_015_6810:
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_015_67fa

    jr nz, @-$1e

    ldh [$e0], a
    jr nc, jr_015_6810

    ret z

    ld hl, sp-$10
    ldh a, [$e0]
    ld h, b
    ldh a, [$f0]
    ret c

    ld a, b
    ret z

    ld hl, sp-$10
    ld [hl], b
    ldh a, [$50]
    ldh [$e0], a
    ldh [rNR41], a
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
    nop
    nop
    add b
    add b
    and $e6
    ld e, e
    ld a, l
    ld sp, $fe3f
    cp $00
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

Call_015_68fc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_015_767f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_015_7bc3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_015_7f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
