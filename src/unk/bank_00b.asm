INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    db $df, $46

    ld a, c
    ld b, l

    db $06, $43

    call nz, Call_000_0044
    ld c, c
    ld h, h
    ld c, b
    ld d, e
    ld b, [hl]
    sbc c
    ld b, [hl]

    db $c9, $45

    dec e
    ld b, [hl]
    db $e3
    ld b, l
    scf
    ld b, [hl]
    sbc $59
    ld d, h
    ld e, a
    rst $08
    ld h, c
    ld [hl-], a
    ld b, a
    ld a, l
    ld c, c

    db $9d, $4d

    ld e, l
    ld c, [hl]
    db $ca
    ld c, [hl]

    db $b7, $4f

    push hl
    ld c, a
    add hl, bc
    ld d, b
    ld l, [hl]
    ld d, b

    db $b6, $50

    db $eb
    ld d, b
    inc sp
    ld d, c
    cp c
    ld d, c
    rst $20
    ld d, c
    dec l
    ld d, d

    db $60, $52

    sub [hl]
    ld d, d

    db $d2, $52

    inc bc
    ld d, e
    sub l
    ld d, e
    or b
    ld e, b

    db $04, $28, $06, $28, $08, $28, $0a, $28, $0c, $28, $0e, $28, $10, $28, $12, $28
    db $14, $28, $16, $28, $18, $28, $1a, $28, $1c, $28, $1e, $28, $20, $28, $22, $28
    db $24, $28, $26, $28, $28, $28, $2a, $28, $2c, $28, $2e, $28, $30, $28, $32, $28
    db $34, $28, $36, $28, $38, $28, $3a, $28, $3c, $28, $3e, $28, $40, $28, $42, $28
    db $44, $28, $46, $28, $48, $28, $4a, $28, $4c, $28, $4e, $28, $50, $28, $52, $28
    db $54, $28, $56, $28, $58, $28, $5a, $28, $5c, $28, $04, $29, $06, $29, $08, $29
    db $0a, $29, $0c, $29, $0e, $29, $10, $29, $12, $29, $14, $29, $16, $29, $18, $29
    db $1a, $29, $1c, $29, $1e, $29, $20, $29, $22, $29, $24, $29, $26, $29, $28, $29
    db $2a, $29, $2c, $29, $2e, $29, $30, $29, $32, $29, $34, $29, $36, $29, $38, $29
    db $04, $2a, $06, $2a, $08, $2a, $0a, $2a, $0c, $2a, $0e, $2a, $10, $2a, $12, $2a
    db $14, $2a, $16, $2a, $18, $2a, $1a, $2a, $1c, $2a, $1e, $2a, $20, $2a, $22, $2a
    db $24, $2a, $26, $2a, $04, $2b, $06, $2b, $08, $2b, $0a, $2b, $0c, $2b, $0e, $2b
    db $10, $2b, $12, $2b, $14, $2b, $16, $2b, $18, $2b, $1a, $2b, $1c, $2b, $1e, $2b
    db $20, $2b, $22, $2b, $24, $2b, $26, $2b, $28, $2b, $2a, $2b, $2c, $2b, $2e, $2b
    db $30, $2b, $32, $2b, $34, $2b, $36, $2b, $38, $2b, $04, $2c, $06, $2c, $08, $2c
    db $0a, $2c, $0c, $2c, $0e, $2c, $10, $2c, $12, $2c, $14, $2c, $16, $2c, $18, $2c
    db $1a, $2c, $1c, $2c, $1e, $2c, $20, $2c, $22, $2c, $24, $2c, $26, $2c, $28, $2c
    db $2a, $2c, $2c, $2c, $2e, $2c, $30, $2c, $32, $2c, $34, $2c, $36, $2c, $38, $2c
    db $3a, $2c, $3c, $2c, $3e, $2c, $40, $2c, $42, $2c, $44, $2c, $46, $2c, $48, $2c
    db $4a, $2c, $4c, $2c, $4e, $2c, $50, $2c, $52, $2c, $54, $2c, $56, $2c, $58, $2c
    db $5a, $2c, $5c, $2c, $04, $2d, $06, $2d, $08, $2d, $0a, $2d, $0c, $2d, $0e, $2d
    db $10, $2d, $12, $2d, $14, $2d, $16, $2d, $18, $2d, $1a, $2d, $1c, $2d, $1e, $2d
    db $20, $2d, $22, $2d, $24, $2d, $26, $2d, $04, $2e, $06, $2e, $08, $2e, $0a, $2e
    db $0c, $2e, $0e, $2e, $10, $2e, $12, $2e, $14, $2e, $16, $2e, $18, $2e, $1a, $2e
    db $1c, $2e, $1e, $2e, $20, $2e, $22, $2e, $24, $2e, $26, $2e, $28, $2e, $2a, $2e
    db $2c, $2e, $2e, $2e, $30, $2e, $32, $2e, $34, $2e, $36, $2e, $38, $2e, $04, $2f
    db $06, $2f, $08, $2f, $0a, $2f, $0c, $2f, $0e, $2f, $10, $2f, $12, $2f, $14, $2f
    db $16, $2f, $18, $2f, $1a, $2f, $1c, $2f, $1e, $2f, $20, $2f, $22, $2f, $24, $2f
    db $26, $2f, $28, $2f, $2a, $2f, $2c, $2f, $2e, $2f, $30, $2f, $32, $2f, $34, $2f
    db $36, $2f, $38, $2f, $04, $72, $06, $72, $08, $72, $0a, $72, $0c, $72, $0e, $72
    db $10, $72, $12, $72, $14, $72, $16, $72, $18, $72, $1a, $72, $1c, $72, $1e, $72
    db $20, $72, $22, $72, $24, $72, $26, $72, $28, $72, $2a, $72, $2c, $72, $2e, $72
    db $30, $72, $32, $72, $34, $72, $36, $72, $38, $72, $04, $73, $06, $73, $08, $73
    db $0a, $73, $0c, $73, $0e, $73, $10, $73, $12, $73, $14, $73, $16, $73, $18, $73
    db $1a, $73, $1c, $73, $1e, $73, $20, $73, $22, $73, $24, $73, $26, $73, $28, $73
    db $2a, $73, $2c, $73, $2e, $73, $30, $73, $32, $73, $34, $73, $36, $73, $38, $73
    db $04, $74, $06, $74, $08, $74, $0a, $74, $0c, $74, $0e, $74, $10, $74, $12, $74
    db $14, $74, $16, $74, $18, $74, $1a, $74, $1c, $74, $1e, $74, $20, $74, $22, $74
    db $24, $74, $26, $74, $28, $74, $2a, $74, $2c, $74, $2e, $74, $30, $74, $32, $74
    db $34, $74, $36, $74, $38, $74, $00, $00

    nop
    nop

    db $01, $00

    ld [bc], a
    nop
    inc bc
    nop
    inc b
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $0200
    ld bc, $0002
    inc bc
    ld bc, $0203
    inc bc
    nop
    inc b
    ld bc, $0204
    inc b
    inc bc
    inc b
    inc b
    inc b
    nop
    dec b
    ld bc, $0005
    ld b, $01
    ld b, $02
    ld b, $00
    rlca
    ld bc, $0207
    rlca
    nop
    ld [$0801], sp
    ld [bc], a
    ld [$0900], sp

    db $01, $09

    ld [bc], a
    add hl, bc
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]

Call_00b_4306:
    push af
    push bc
    push de
    push hl
    or a
    jr z, jr_00b_4318

    ld a, [$c321]
    ld h, a
    ld a, [$c323]
    ld l, a
    jp Jump_00b_431d


jr_00b_4318:
    call Call_00b_49d3
    ld h, b
    ld l, d

Jump_00b_431d:
    push hl
    ld a, l
    and $1f
    ld l, a
    ld a, h
    and $1f
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add l
    ld l, a
    ld de, $9800
    add hl, de
    ld e, l
    ld d, h
    pop hl
    push de
    ld a, h
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add l
    ld l, a
    ld de, $d000
    add hl, de
    pop de
    push hl
    push de
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ldh [rVBK], a
    ld b, $14

jr_00b_4354:
    ld c, $16
    push de
    push hl

jr_00b_4358:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, l
    and $3f
    jr nz, jr_00b_4368

    push de
    ld de, $ffc0
    add hl, de
    pop de
    jr jr_00b_436d

jr_00b_4368:
    ld a, e
    and $1f
    jr nz, jr_00b_4375

jr_00b_436d:
    push hl
    ld hl, $ffe0
    add hl, de
    ld e, l
    ld d, h
    pop hl

jr_00b_4375:
    dec c
    jr nz, jr_00b_4358

    pop hl
    ld a, $40
    add l
    ld l, a
    jr nc, jr_00b_4386

    ld a, h
    inc a
    and $0f
    or $d0
    ld h, a

jr_00b_4386:
    pop de
    ld a, $20
    add e
    ld e, a
    jr nc, jr_00b_4392

    ld a, d
    inc a
    res 2, a
    ld d, a

jr_00b_4392:
    dec b
    jr nz, jr_00b_4354

    pop de
    pop hl
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ldh [rVBK], a
    ld b, $14

jr_00b_43a2:
    ld c, $16
    push de
    push hl

jr_00b_43a6:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, l
    and $3f
    jr nz, jr_00b_43b6

    push de
    ld de, $ffc0
    add hl, de
    pop de
    jr jr_00b_43bb

jr_00b_43b6:
    ld a, e
    and $1f
    jr nz, jr_00b_43c3

jr_00b_43bb:
    push hl
    ld hl, $ffe0
    add hl, de
    ld e, l
    ld d, h
    pop hl

jr_00b_43c3:
    dec c
    jr nz, jr_00b_43a6

    pop hl
    ld a, $40
    add l
    ld l, a
    jr nc, jr_00b_43d4

    ld a, h
    inc a
    and $0f
    or $d0
    ld h, a

jr_00b_43d4:
    pop de
    ld a, $20
    add e
    ld e, a
    jr nc, jr_00b_43e0

    ld a, d
    inc a
    res 2, a

Jump_00b_43df:
    ld d, a

jr_00b_43e0:
    dec b
    jr nz, jr_00b_43a2

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_43e8:
    push af
    push bc
    push de
    ld b, a
    ld a, [$c32e]
    ld h, $00
    ld l, a
    add hl, hl
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ld hl, $4048
    add hl, de
    ld e, b
    sla e
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    pop bc
    pop af
    ret


Call_00b_440c:
    push af
    push bc
    push de
    push hl
    ld h, $00
    ld l, a
    add hl, hl
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ld hl, $4048
    add hl, de
    inc hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push bc
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ldh [rVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $9000
    ld bc, $0080
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld bc, $0080
    call Call_000_2096
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld de, $d800
    call Call_000_0234
    pop hl
    pop hl
    ld de, $d400
    call Call_000_0234
    pop hl
    ld de, $d000
    call Call_000_0234
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld de, $d000
    call Call_000_0234
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld de, $d000
    call Call_000_0234
    pop hl
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d000
    ld bc, $0040
    call Call_000_021a
    ld hl, $d010
    ld de, $0206
    call Call_000_0595
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_44c4:
    push bc
    push af
    call Call_000_0341
    pop af
    call Call_00b_440c
    ld a, $00
    call Call_00b_43e8
    ld de, $c600
    ld bc, $0010
    call Call_000_021a
    ld hl, $c600
    ld bc, $0002
    add hl, bc
    ld a, [hl+]
    ld [$c329], a
    ld a, [hl+]
    ld [$c32a], a
    ld a, [hl+]
    ld [$c32b], a
    ld a, [hl+]
    ld [$c32c], a
    pop bc
    ld a, b
    call Call_00b_4306
    call Call_000_0371
    call Call_000_2e3b
    call Call_000_2e3b
    ret


Call_00b_4501:
    ldh a, [$94]
    bit 1, a
    ret z

    ld a, [$c32d]
    dec a
    sra a
    sra a
    inc a
    push af
    ld a, [$c32e]
    ld [$c33d], a
    call Call_00b_497d
    pop af
    ld hl, $0123
    rst $18
    ld d, b
    dec b
    ld [$c32e], a
    cp $ff
    jp z, Jump_00b_4533

    ld b, $01
    call Call_00b_44c4
    ld a, [$c32e]
    call Call_00b_4900

Jump_00b_4533:
    ret


    ld hl, $0123
    ld d, $01
    ld e, $01
    rst $18
    ld a, [bc]
    dec b
    ld a, [$d820]
    ld [$d82f], a
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b

jr_00b_454a:
    call Call_000_2e3b
    ldh a, [$90]
    and $02
    jr nz, jr_00b_454a

    rst $18
    ld c, [hl]
    dec b
    ld [$c32e], a
    ld a, [$d82f]
    rst $18
    inc c
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld a, [$c32e]
    cp $ff
    jp z, Jump_00b_4578

    ld a, [$c32e]
    ld b, $01
    call Call_00b_44c4
    rst $18
    inc e
    dec b

Jump_00b_4578:
    ret


    push af
    push hl
    ld a, [$c32d]
    dec a
    sra a
    sra a
    inc a
    push af
    ld a, [$c32e]
    ld [$c33d], a
    call Call_00b_497d
    pop af
    ld hl, $0123
    rst $18
    ld d, b
    dec b
    ld [$c32e], a
    cp $ff
    jp z, Jump_00b_45a8

    ld b, $01
    call Call_00b_44c4
    ld a, [$c32e]
    call Call_00b_4900

Jump_00b_45a8:
    pop hl
    pop af
    ret


Call_00b_45ab:
    push bc
    push de
    sra d
    sla d
    sra e
    sla e
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, $00
    ld c, d
    sra c
    add hl, bc
    ld bc, $d000
    add hl, bc
    pop de
    pop bc
    ret


    push bc
    push de
    push hl
    call Call_00b_45ab
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld b, [hl]
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    push de
    push hl
    call Call_00b_45ab
    ld b, a
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_45ff:
    push bc
    push de
    sra d
    sla d
    sra e
    sla e
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, $00
    ld c, d
    sra c
    add hl, bc
    ld bc, $d400
    add hl, bc
    pop de
    pop bc
    ret


    push bc
    push de
    push hl
    call Call_00b_45ff
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld b, [hl]
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    push de
    push hl
    call Call_00b_45ff
    ld b, a
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    sra h
    sra l
    push hl
    call Call_00b_45ab
    push hl
    ld d, b
    ld e, c
    call Call_00b_45ab
    pop de
    pop bc
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ld c, b
    ld b, $00

jr_00b_4674:
    push af
    push bc
    push de
    push hl
    call MemCopy
    pop hl
    pop de
    pop bc
    pop af
    push bc
    ld bc, $0020
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    add hl, bc
    pop bc
    dec a
    jr nz, jr_00b_4674

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    sra h
    sra l
    push hl
    call Call_00b_45ff
    push hl
    ld d, b
    ld e, c
    call Call_00b_45ff
    pop de
    pop bc
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ld c, b
    ld b, $00

jr_00b_46ba:
    push af
    push bc
    push de
    push hl
    call MemCopy
    pop hl
    pop de
    pop bc
    pop af
    push bc
    ld bc, $0020
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    add hl, bc
    pop bc
    dec a
    jr nz, jr_00b_46ba

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    push af
    and $7f
    ld [$c32e], a
    xor a
    ldh [$8a], a
    ldh [$8b], a
    dec a
    ld [$c33d], a
    ld hl, $4048
    ld bc, $ffff

jr_00b_46f8:
    inc bc
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    or d
    jr nz, jr_00b_46f8

    ld h, b
    ld l, c
    ld de, $0009
    call Call_000_09ae
    ld a, l
    ld [$c32d], a
    pop af
    bit 7, a
    jr nz, jr_00b_4717

    and $7f
    ld b, $00
    call Call_00b_44c4

jr_00b_4717:
    xor a
    ldh [$b9], a
    ldh [$b8], a
    rst $18

    db $00, $05

    ld a, $01
    ld hl, $4784
    call Call_000_23e8
    ld a, [$c32e]
    call Call_00b_4900
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld hl, $4784
    call Call_000_2449
    ret


Call_00b_4739:
    push af
    push bc
    push de
    push hl
    xor a
    ldh [$8a], a
    ldh [$8b], a
    ld hl, $4048
    ld bc, $ffff

jr_00b_4748:
    inc c
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    or d
    jr nz, jr_00b_4748

    ld h, b
    ld l, c
    ld de, $0009
    call Call_000_09ae
    ld a, l
    ld [$c32d], a
    ld a, $00
    ld [$c32e], a
    ld b, $00
    call Call_00b_44c4
    rst $18
    nop
    dec b
    rst $18
    inc e
    dec b
    ld a, [$c32e]
    call Call_00b_4900
    pop hl
    pop de
    pop bc
    pop af
    ret


    call Call_00b_4739

jr_00b_4779:
    call Call_00b_4788
    call Call_00b_4501
    call Call_000_2e3b
    jr jr_00b_4779

    rst $18

    db $3c, $04

    ret


Call_00b_4788:
    ld a, [$c321]
    push af
    ld a, [$c323]
    push af
    call Call_00b_4826
    pop hl
    ld a, [$c323]
    cp h
    jr z, jr_00b_47aa

    jr c, jr_00b_47a4

    ld bc, $fb13
    call Call_000_2a8a
    jr jr_00b_47aa

jr_00b_47a4:
    ld bc, $fb00
    call Call_000_2a8a

jr_00b_47aa:
    pop hl
    ld a, [$c321]
    cp h
    jr z, jr_00b_47c1

    jr c, jr_00b_47bb

    ld bc, $15fa
    call Call_000_2af7
    jr jr_00b_47c1

jr_00b_47bb:
    ld bc, $00fa
    call Call_000_2af7

jr_00b_47c1:
    ld a, [$c322]
    ld c, a
    ld a, [$c323]
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ldh [$8a], a
    ld a, [$c320]
    ld c, a
    ld a, [$c321]
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ldh [$8b], a
    ret


    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    rst $38
    dec l
    nop
    db $d3
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld b, b
    nop
    dec l
    nop
    dec l
    nop
    db $d3
    rst $38
    dec l
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

Call_00b_4826:
    ldh a, [$90]
    rra
    rra
    and $3c
    ld hl, $47e6
    ld d, $00
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    ld a, [$c320]
    ld l, a
    ld a, [$c321]
    ld h, a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    add hl, bc
    ld a, l
    ld [$c320], a
    ld a, h
    ld [$c321], a
    ld a, [$c322]
    ld l, a
    ld a, [$c323]
    ld h, a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    add hl, bc
    ld a, l
    ld [$c322], a
    ld a, h
    ld [$c323], a
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    push de
    push hl
    push hl
    ld h, d
    ld l, e
    call Call_00b_48ea
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    call Call_00b_48ea
    pop bc
    push hl
    push de
    push bc
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ld c, b
    ld b, $00

jr_00b_4888:
    push af
    push bc
    push de
    push hl
    call MemCopy
    pop hl
    pop de
    pop bc
    pop af
    push bc
    ld bc, $0040
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    add hl, bc
    pop bc
    dec a
    jr nz, jr_00b_4888

    pop bc
    pop de
    pop hl
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ld c, b
    ld b, $00

jr_00b_48b0:
    push af
    push bc
    push de
    push hl
    call MemCopy
    pop hl
    pop de
    pop bc
    pop af
    push bc
    ld bc, $0040
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    add hl, bc
    pop bc
    dec a
    jr nz, jr_00b_48b0

    pop hl
    pop de
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    inc e
    dec b
    ld a, e
    ld c, l
    call Call_000_2e3b
    ld b, $05
    rst $18
    jr z, jr_00b_48e5

    pop af
    ldh [$96], a
    ldh [rSVBK], a

jr_00b_48e5:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_48ea:
    push bc
    ld c, $00
    ld b, l
    sra b
    rr c
    sra b
    rr c
    ld l, h
    ld h, $00
    add hl, bc
    ld bc, $d000
    add hl, bc
    pop bc
    ret


Call_00b_4900:
    push af
    push bc
    push de
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $42c0
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    cp $00
    jr nz, jr_00b_491a

    ld a, b
    rst $18

    db $00, $28

    jp Jump_00b_4978


jr_00b_491a:
    cp $01
    jr nz, jr_00b_4924

    ld a, b
    rst $18
    nop
    add hl, hl
    jr jr_00b_4978

jr_00b_4924:
    cp $02
    jr nz, jr_00b_492e

    ld a, b
    rst $18
    nop
    ld a, [hl+]
    jr jr_00b_4978

jr_00b_492e:
    cp $03
    jr nz, jr_00b_4938

    ld a, b
    rst $18
    nop
    dec hl
    jr jr_00b_4978

jr_00b_4938:
    cp $04
    jr nz, jr_00b_4942

    ld a, b
    rst $18
    nop
    inc l
    jr jr_00b_4978

jr_00b_4942:
    cp $05
    jr nz, jr_00b_494c

    ld a, b
    rst $18
    nop
    dec l
    jr jr_00b_4978

jr_00b_494c:
    cp $06
    jr nz, jr_00b_4956

    ld a, b
    rst $18
    nop
    ld l, $18
    ld [hl+], a

jr_00b_4956:
    cp $07
    jr nz, jr_00b_4960

    ld a, b
    rst $18
    nop
    cpl
    jr jr_00b_4978

jr_00b_4960:
    cp $08
    jr nz, jr_00b_496a

    ld a, b
    rst $18
    nop
    ld [hl], d
    jr jr_00b_4978

jr_00b_496a:
    cp $09
    jr nz, jr_00b_4974

    ld a, b
    rst $18

    db $00, $73

    jr jr_00b_4978

jr_00b_4974:
    ld a, b
    rst $18
    nop
    ld [hl], h

Jump_00b_4978:
jr_00b_4978:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_497d:
    push af
    push bc
    push de
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $42c0
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    cp $00
    jr nz, jr_00b_4995

    rst $18
    ld [bc], a
    jr z, jr_00b_49ac

    add hl, sp

jr_00b_4995:
    cp $01
    jr nz, jr_00b_499e

    rst $18
    ld [bc], a
    add hl, hl
    jr jr_00b_49ce

jr_00b_499e:
    cp $02
    jr nz, jr_00b_49a7

    rst $18
    ld [bc], a
    ld a, [hl+]
    jr jr_00b_49ce

jr_00b_49a7:
    cp $03
    jr nz, jr_00b_49b0

    rst $18

jr_00b_49ac:
    ld [bc], a
    dec hl
    jr jr_00b_49ce

jr_00b_49b0:
    cp $04
    jr nz, jr_00b_49b9

    rst $18
    ld [bc], a
    inc l
    jr jr_00b_49ce

jr_00b_49b9:
    cp $05
    jr nz, jr_00b_49c2

    rst $18
    ld [bc], a
    dec l
    jr jr_00b_49ce

jr_00b_49c2:
    cp $06
    jr nz, jr_00b_49cb

    rst $18
    ld [bc], a
    ld l, $18
    inc bc

jr_00b_49cb:
    rst $18
    ld [bc], a
    cpl

jr_00b_49ce:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_49d3:
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c290
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push de
    ld hl, $f610
    add hl, bc
    ld a, [$c329]
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr z, jr_00b_49fe

    ld h, d
    ld l, $00
    jr jr_00b_4a0d

jr_00b_49fe:
    ld a, [$c32b]
    sub $14
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr nz, jr_00b_4a0d

    ld h, d
    ld l, $00

jr_00b_4a0d:
    ld b, h
    ld c, l
    pop de
    ld hl, $f510
    add hl, de
    ld a, [$c32a]
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr z, jr_00b_4a23

    ld h, d
    ld l, $00
    jr jr_00b_4a32

jr_00b_4a23:
    ld a, [$c32c]
    sub $12
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr nz, jr_00b_4a32

    ld h, d
    ld l, $00

jr_00b_4a32:
    ld d, h
    ld e, l
    ld hl, $c320
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ret


    ld a, [$cbf0]
    or a
    jr nz, jr_00b_4a8b

jr_00b_4a46:
    ld hl, $4a90
    ld a, [$cbf1]
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $ff
    jr nz, jr_00b_4a5d

    xor a
    ld [$cbf1], a
    jr jr_00b_4a46

jr_00b_4a5d:
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
    ld bc, $4a9d
    add hl, bc
    pop de
    pop bc
    call Call_000_0468
    ld a, [$cbf1]
    add $04
    ld [$cbf1], a
    pop af

jr_00b_4a8b:
    dec a
    ld [$cbf0], a
    ret


    nop
    db $10
    ld d, b
    ld a, [bc]
    db $10
    db $10
    ld d, b
    ld a, [bc]
    jr nz, jr_00b_4aaa

    ld d, b
    ld a, [bc]
    rst $38
    nop
    nop
    ld b, b
    add b
    jr nz, jr_00b_4ae3

    nop
    jr nc, jr_00b_4aa6

jr_00b_4aa6:
    jr nc, jr_00b_4ac8

    ld b, b
    ld b, b

jr_00b_4aaa:
    add b
    nop
    nop
    nop
    nop
    db $10
    jr nz, jr_00b_4aba

    stop
    inc c
    nop
    inc c
    ld [$1010], sp

jr_00b_4aba:
    jr nz, jr_00b_4abc

jr_00b_4abc:
    nop
    nop
    nop
    inc b
    ld [$0402], sp
    nop
    inc bc
    nop
    inc bc
    ld [bc], a

jr_00b_4ac8:
    inc b
    inc b
    ld [$0000], sp
    nop
    nop
    ld bc, $8002
    ld bc, $c000
    nop
    ret nz

    add b
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00b_4ae3:
    nop
    nop
    ret nz

    jr nc, jr_00b_4b08

    ld d, b
    db $10
    jr nz, jr_00b_4afc

    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00b_4aff

    ld [$0414], sp
    ld [$0004], sp
    nop
    nop
    nop

jr_00b_4afc:
    nop
    inc c
    inc bc

jr_00b_4aff:
    ld [bc], a
    dec b
    ld bc, $0102
    nop
    nop
    nop
    nop

jr_00b_4b08:
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
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
    inc bc
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
    ret nz

    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_00b_4ba3

jr_00b_4ba3:
    nop
    stop
    db $10
    jr nz, jr_00b_4ba9

jr_00b_4ba9:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    stop
    ld [$0000], sp
    inc b
    nop
    inc b
    ld [$1000], sp
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0100
    ld [bc], a
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $8000
    nop
    nop
    ld b, b
    nop
    ld b, b
    add b
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
    ret nz

    jr nc, jr_00b_4be8

jr_00b_4be8:
    db $10
    stop
    stop
    nop
    nop
    nop
    nop
    jr nc, jr_00b_4bff

    nop
    inc b
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    inc c
    inc bc

jr_00b_4bff:
    nop
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00b_4ca3

jr_00b_4ca3:
    nop
    stop
    db $10
    jr nz, jr_00b_4ca9

jr_00b_4ca9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    inc b
    nop
    inc b
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0100
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
    ld bc, $0000
    add b
    nop
    add b
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
    ld b, b
    jr nz, jr_00b_4d0a

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
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
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

jr_00b_4d0a:
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

    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af

Jump_00b_4da4:
jr_00b_4da4:
    rst $18

    db $00, $07

    push de
    push af
    ld a, a
    ld de, $0d0d
    call Call_000_22a5
    pop af
    pop de
    cp $ff
    jp z, Jump_00b_4e3b

    or a
    jr z, jr_00b_4dc7

    cp $01
    jp z, Jump_00b_4df8

    cp $02
    jp z, Jump_00b_4e28

    jp Jump_00b_4e3b


jr_00b_4dc7:
    call Call_00b_4f51
    call Call_00b_4fac
    or a
    jr z, jr_00b_4da4

    call Call_000_2e3b
    ld b, $01
    rst $18

    db $0e, $06

    rst $18

    db $0c, $06

    cp $ff
    jr z, jr_00b_4da4

    ld b, a
    ld hl, $c800
    rst $18

    db $06, $02

    call Call_000_2e3b
    call Call_000_2cde
    ld b, $80
    ld c, $00
    rst $18

    db $1e, $02

    call Call_00b_4eca
    jr jr_00b_4da4

Jump_00b_4df8:
    call Call_00b_4fac
    xor a
    ld [$ca7f], a
    call Call_000_2e3b
    rst $18

    db $08, $0c

    cp $fe
    jr nz, jr_00b_4e25

    rst $18
    inc a
    db $10
    ld c, $10
    call Call_000_258a
    call Call_000_2625
    rst $08
    ld bc, $b6cd
    inc hl
    call Call_000_2683
    ld a, $90
    ldh [rWY], a
    rst $18
    ld a, [bc]
    ld bc, $da18

jr_00b_4e25:
    jp Jump_00b_4da4


Jump_00b_4e28:
    call Call_00b_4e48
    call Call_00b_4fac
    or a
    jp nz, Jump_00b_4da4

    call Call_000_2e3b
    call Call_00b_4e5d
    jp Jump_00b_4da4


Jump_00b_4e3b:
    call Call_00b_4fac
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_4e48:
    push bc
    push de
    push hl
    rst $18
    jr z, jr_00b_4e59

    push af
    or a
    jr z, jr_00b_4e55

    call Call_00b_4f66

jr_00b_4e55:
    call Call_000_2b54
    pop af

jr_00b_4e59:
    pop hl
    pop de
    pop bc
    ret


Call_00b_4e5d:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af

Jump_00b_4e64:
jr_00b_4e64:
    rst $18
    ld [bc], a
    rlca
    cp $ff
    jp z, Jump_00b_4ebd

    or a
    jr z, jr_00b_4e86

    cp $01
    jp z, Jump_00b_4e9a

    cp $02
    jp z, Jump_00b_4ea2

    cp $03
    jp z, Jump_00b_4eab

    cp $04
    jp z, Jump_00b_4eb4

    jp Jump_00b_4ebd


jr_00b_4e86:
    call Call_000_2e3b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d23b], a
    ld c, $01
    rst $18
    inc c
    inc c
    jr jr_00b_4e64

Jump_00b_4e9a:
    call Call_000_2e3b
    rst $18
    ld a, [bc]
    inc c
    jr jr_00b_4e64

Jump_00b_4ea2:
    call Call_000_2e3b
    rst $18
    inc b
    inc c
    jp Jump_00b_4e64


Jump_00b_4eab:
    call Call_000_2e3b
    rst $18
    ld [bc], a
    inc c
    jp Jump_00b_4e64


Jump_00b_4eb4:
    call Call_000_2e3b
    rst $18
    nop
    inc c
    jp Jump_00b_4e64


Jump_00b_4ebd:
    call Call_000_2e3b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_4eca:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af

Jump_00b_4ed1:
jr_00b_4ed1:
    rst $18

    db $04, $07

    cp $ff
    jp z, Jump_00b_4eee

    or a
    jr z, jr_00b_4f11

    cp $01
    jp z, Jump_00b_4f1f

    cp $02
    jp z, Jump_00b_4f33

    cp $03
    jp z, Jump_00b_4f3b

    jp Jump_00b_4f44


Jump_00b_4eee:
    call Call_000_2e3b
    ld de, $d658
    push de
    rst $18

    db $50, $02

    pop hl
    ld b, $01
    rst $18

    db $0c, $06

    cp $ff
    jr z, jr_00b_4f44

    ld b, a
    ld hl, $c800
    rst $18
    ld b, $02
    call Call_000_2b54
    call Call_000_2e3b
    jr jr_00b_4ed1

jr_00b_4f11:
    call Call_000_2e3b
    ld a, $01
    ld b, $01
    rst $18

    db $22, $41

    rst $08

    db $01

    jr jr_00b_4ed1

Jump_00b_4f1f:
    call Call_000_2e3b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d23b], a
    rst $18

    db $0c, $0c

    jp Jump_00b_4ed1


Jump_00b_4f33:
    call Call_000_2e3b
    rst $18

    db $06, $0c

    jr jr_00b_4ed1

Jump_00b_4f3b:
    call Call_000_2e3b
    rst $18

    db $58, $0a

    jp Jump_00b_4ed1


Jump_00b_4f44:
jr_00b_4f44:
    call Call_000_2e3b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_4f51:
    push bc
    push de
    ld de, $d658
    push de
    rst $18

    db $50, $02

    pop hl
    push af
    or a
    jr nz, jr_00b_4f62

    call Call_00b_4f66

jr_00b_4f62:
    pop af
    pop de
    pop bc
    ret


Call_00b_4f66:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c38
    ld de, $d000
    call Call_000_0234
    ld hl, $4c36
    ld de, $d080
    call Call_000_0234
    ld hl, $d000
    ld de, $b982
    ld c, $08
    call Call_000_0468
    ld hl, $d080
    ld de, $9982
    ld c, $08
    call Call_000_0468
    call Call_00b_4f98
    ret


Call_00b_4f98:
    push af
    push bc
    push de
    push hl

jr_00b_4f9c:
    call Call_000_2e3b
    ldh a, [$94]
    or a
    jr z, jr_00b_4f9c

    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_4fac:
    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


    push hl
    push de
    push bc
    ldh a, [$96]
    push af
    rst $18

    db $02, $02

    or a
    jr z, jr_00b_4fc7

    ld a, $ff
    jr jr_00b_4fda

jr_00b_4fc7:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $dc00
    ld b, $03
    rst $18

    db $06, $02

    or a
    jr z, jr_00b_4fda

    ld a, $ff

jr_00b_4fda:
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop bc
    pop de
    pop hl
    ret


Call_00b_4fe5:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld h, $00
    ld l, b
    ld a, $32
    call Call_000_08b9
    ld de, $dc00
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d224
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00b_5009:
    push af
    push hl
    push de
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    bit 7, b
    jr z, jr_00b_501d

    ld b, $00
    jr jr_00b_5024

jr_00b_501d:
    ld a, b
    cp $06
    jr c, jr_00b_5024

    ld b, $05

jr_00b_5024:
    bit 7, c
    jr z, jr_00b_502c

    ld c, $00
    jr jr_00b_5033

jr_00b_502c:
    ld a, c
    cp $06
    jr c, jr_00b_5033

    ld c, $05

jr_00b_5033:
    push bc
    ld hl, $dc00
    ld de, $015f
    add hl, de
    ld a, b
    add l
    ld l, a
    jr nc, jr_00b_5041

    inc h

jr_00b_5041:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld c, $06
    ld a, l
    ld b, $00

jr_00b_504a:
    bit 0, a
    jr z, jr_00b_504f

    inc b

jr_00b_504f:
    srl a
    dec c
    jr nz, jr_00b_504a

    ld d, b
    pop hl
    pop bc
    ld a, c

jr_00b_5058:
    or a
    jr z, jr_00b_5060

    dec a
    srl l
    jr jr_00b_5058

jr_00b_5060:
    ld a, l
    and $01
    ld c, a
    ld b, d
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop hl
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $dc00
    ld de, $015e
    add hl, de
    ld a, [hl]
    ld b, a
    ld c, $06
    ld d, $01
    ld a, $00

jr_00b_508a:
    bit 0, b
    jr z, jr_00b_5091

    ld a, d
    jr jr_00b_5098

jr_00b_5091:
    srl b
    inc d
    dec c
    jr nz, jr_00b_508a

    ld a, b

jr_00b_5098:
    bit 7, a
    jr nz, jr_00b_50a2

    cp $06
    jr nc, jr_00b_50a6

    jr jr_00b_50a8

jr_00b_50a2:
    ld a, $00
    jr jr_00b_50a8

jr_00b_50a6:
    ld a, $06

jr_00b_50a8:
    ld hl, $d226
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld b, $01
    rst $30

    db $00, $0e

    jr z, jr_00b_50c5

    inc b

jr_00b_50c5:
    rst $30

    db $20, $0e

    jr z, jr_00b_50cb

    inc b

jr_00b_50cb:
    rst $30

    db $40, $0e

    jr z, jr_00b_50d1

    inc b

jr_00b_50d1:
    rst $30

    db $60, $11

    jr z, jr_00b_50d7

    inc b

jr_00b_50d7:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [$d226], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    ld c, $00
    ld e, $06

jr_00b_50fe:
    ld b, c
    push bc
    call Call_00b_5009
    add b
    pop bc
    inc c
    dec e
    jr nz, jr_00b_50fe

    ld b, $00
    cp $04
    jr c, jr_00b_5124

    inc b
    cp $08
    jr c, jr_00b_5124

    inc b
    cp $0c
    jr c, jr_00b_5124

    inc b
    cp $10
    jr c, jr_00b_5124

    inc b
    cp $14
    jr c, jr_00b_5124

    inc b

jr_00b_5124:
    ld hl, $d226
    ld a, b
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push hl
    push de
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $dc00
    ld de, $0166
    add hl, de
    push hl
    ld hl, $5209
    ld d, $00
    ld e, b
    add hl, de
    ld a, [hl]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l
    pop hl
    add hl, de
    push hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push de
    push hl
    ld hl, $5209
    ld d, $00
    ld e, c
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld c, l
    cp $08
    jr nc, jr_00b_5177

    pop hl
    ld b, l
    jr jr_00b_517b

jr_00b_5177:
    add $f8
    pop hl
    ld b, h

jr_00b_517b:
    bit 7, a
    jr z, jr_00b_5181

    ld a, $00

jr_00b_5181:
    or a
    jr z, jr_00b_5189

    srl b
    dec a
    jr jr_00b_5181

jr_00b_5189:
    pop de
    ld a, b
    and $01
    or a
    jr z, jr_00b_5194

    ld a, $02
    jr jr_00b_51b0

jr_00b_5194:
    ld a, c
    cp $08
    jr nc, jr_00b_519c

    ld b, e
    jr jr_00b_519f

jr_00b_519c:
    add $f8
    ld b, d

jr_00b_519f:
    bit 7, a
    jr z, jr_00b_51a5

    ld a, $00

jr_00b_51a5:
    or a
    jr z, jr_00b_51ad

    srl b
    dec a
    jr jr_00b_51a5

jr_00b_51ad:
    ld a, b
    and $01

jr_00b_51b0:
    ld c, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop hl
    ret


    push bc
    push hl
    push de
    ldh a, [$96]
    push af
    ld a, c
    ld hl, $51f7
    add l
    ld l, a
    jr nc, jr_00b_51c8

    inc h

jr_00b_51c8:
    ld a, [hl]
    add $0e
    ld c, a
    call Call_00b_4fe5
    ld hl, $d224
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    add l
    ld l, a
    jr nc, jr_00b_51db

    inc h

jr_00b_51db:
    ld a, [hl]
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop de
    pop hl
    pop bc
    ret


    push hl
    push af
    ld hl, $521b
    ld a, c
    add l
    ld l, a
    jr nc, jr_00b_51f2

    inc h

jr_00b_51f2:
    ld a, [hl]
    ld c, a
    pop af
    pop hl
    ret


    nop
    ld bc, $0305
    inc b
    ld a, [bc]
    ld b, $07
    ld [$0209], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0100
    dec b
    inc bc
    inc b
    ld a, [bc]
    ld b, $07
    ld [$0209], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0100
    ld a, [bc]
    inc bc
    inc b
    ld [bc], a
    ld b, $07
    ld [$0509], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $c5f5
    push de
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0000
    ld de, $0032

jr_00b_523f:
    ld a, b
    or a
    jr z, jr_00b_5247

    dec b
    add hl, de
    jr jr_00b_523f

jr_00b_5247:
    ld de, $dc00
    add hl, de
    ld a, c
    add a
    add a
    add c
    ld d, $00
    ld e, a
    add hl, de
    ld de, $0020
    add hl, de
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop bc
    pop af
    ret


    push hl
    push de
    push bc
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $dc00
    ld a, $04
    add c
    ld b, a
    rst $18

    db $06, $02

    or a
    jr z, jr_00b_527d

    ld a, $ff
    jr jr_00b_528b

jr_00b_527d:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $dc00
    ld de, $000b
    add hl, de
    ld a, [hl]

jr_00b_528b:
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop bc
    pop de
    pop hl
    ret


    push bc
    push hl
    push de
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ld hl, $0000
    ld de, $0080

jr_00b_52a9:
    or a
    jr z, jr_00b_52b0

    add hl, de
    dec a
    jr jr_00b_52a9

jr_00b_52b0:
    ld de, $0010
    add hl, de
    ld d, h
    ld e, l
    ld hl, $dc00
    add hl, de
    ld a, [hl]
    bit 7, a
    jr nz, jr_00b_52c5

    cp $0b
    jr nc, jr_00b_52c5

    jr jr_00b_52c7

jr_00b_52c5:
    ld a, $ff

jr_00b_52c7:
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop de
    pop hl
    pop bc
    ret


    push af
    push hl
    push de
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ld hl, $0000
    ld de, $0080

jr_00b_52e5:
    or a
    jr z, jr_00b_52ec

    add hl, de
    dec a
    jr jr_00b_52e5

jr_00b_52ec:
    ld de, $0020
    add hl, de
    ld d, h
    ld e, l
    ld hl, $dc00
    add hl, de
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop hl
    pop af
    ret


    push af
    push hl
    push de
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    bit 7, c
    jr z, jr_00b_5317

    ld c, $00
    jr jr_00b_531e

jr_00b_5317:
    ld a, c
    cp $12
    jr c, jr_00b_531e

    ld c, $11

jr_00b_531e:
    ld hl, $d224
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $2f
    add l
    ld l, a
    jr nc, jr_00b_532b

    inc h

jr_00b_532b:
    push hl
    ld d, $02
    ld b, $00

jr_00b_5330:
    ld a, [hl+]

jr_00b_5331:
    bit 0, a
    jr z, jr_00b_5336

    inc b

jr_00b_5336:
    srl a
    or a
    jr nz, jr_00b_5331

    dec d
    jr nz, jr_00b_5330

    ld a, [hl+]
    srl a
    srl a
    srl a
    srl a
    srl a
    srl a
    bit 0, a
    jr z, jr_00b_5350

    inc b

jr_00b_5350:
    srl a
    bit 0, a
    jr z, jr_00b_5357

    inc b

jr_00b_5357:
    pop hl
    ld a, c
    cp $10
    jr nc, jr_00b_5368

    cp $08
    jr nc, jr_00b_5363

    jr jr_00b_536c

jr_00b_5363:
    sub $08
    inc hl
    jr jr_00b_536c

jr_00b_5368:
    sub $10
    inc hl
    inc hl

jr_00b_536c:
    ld c, a
    ld a, $07
    sub c
    ld c, a
    ld a, [hl]
    ld d, a
    ld a, c
    or a
    jr z, jr_00b_537c

jr_00b_5377:
    srl d
    dec c
    jr nz, jr_00b_5377

jr_00b_537c:
    ld a, d
    and $01
    or a
    jr z, jr_00b_5384

    ld c, $01

jr_00b_5384:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop hl
    pop af
    ret


Call_00b_538d:
jr_00b_538d:
    ld a, b
    ld [hl+], a
    dec de
    ld a, d
    or e
    jr nz, jr_00b_538d

    ret


    push af
    push bc
    push de
    push hl
    ld b, a
    ldh a, [$96]
    push af
    ld a, b
    push af
    ld hl, $5430
    ld de, $8ff0
    ld c, $01
    call Call_000_0468
    ld hl, $5440
    ld de, $bc00
    ld c, $10
    call Call_000_0468
    ld hl, $5540
    ld de, $9c00
    ld c, $10
    call Call_000_0468
    call Call_000_2e3b
    rst $18
    ld e, $0b
    ld a, $90
    ldh [rWY], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d242], a
    ld [$c4b2], a
    pop af
    push af
    ld [$d5fe], a
    ld a, $01
    ld hl, $5640
    call Call_000_23e8

jr_00b_53e4:
    call Call_000_2e3b
    ld a, [$d242]
    or a
    jr z, jr_00b_53e4

    ld a, $20

jr_00b_53ef:
    call Call_000_2e3b
    dec a
    or a
    jr nz, jr_00b_53ef

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld b, $20
    ld de, $0300
    call Call_00b_538d
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld b, $20
    ld de, $0100
    call Call_00b_538d
    call Call_000_2e3b
    pop af
    call Call_00b_56ef
    call Call_00b_57e4
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


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
    add b
    add b
    add b
    add b
    jr nz, jr_00b_5562

    jr nz, jr_00b_5564

    jr nz, jr_00b_5566

    jr nz, jr_00b_5568

    jr nz, jr_00b_556a

    jr nz, jr_00b_556c

    jr nz, jr_00b_556e

    jr nz, jr_00b_5570

    jr nz, jr_00b_5572

    jr nz, jr_00b_5574

    jr nz, jr_00b_5576

    jr nz, jr_00b_5578

    jr nz, jr_00b_557a

    jr nz, jr_00b_557c

    jr nz, jr_00b_557e

    jr nz, jr_00b_5580

    jr nz, jr_00b_5582

jr_00b_5562:
    jr nz, jr_00b_5584

jr_00b_5564:
    jr nz, jr_00b_5586

jr_00b_5566:
    jr nz, jr_00b_5588

jr_00b_5568:
    jr nz, jr_00b_558a

jr_00b_556a:
    jr nz, jr_00b_558c

jr_00b_556c:
    jr nz, jr_00b_558e

jr_00b_556e:
    jr nz, jr_00b_5590

jr_00b_5570:
    jr nz, jr_00b_5592

jr_00b_5572:
    jr nz, jr_00b_5594

jr_00b_5574:
    jr nz, jr_00b_5596

jr_00b_5576:
    jr nz, jr_00b_5598

jr_00b_5578:
    jr nz, jr_00b_559a

jr_00b_557a:
    jr nz, jr_00b_559c

jr_00b_557c:
    jr nz, jr_00b_559e

jr_00b_557e:
    jr nz, jr_00b_55a0

jr_00b_5580:
    jr nz, jr_00b_55a2

jr_00b_5582:
    jr nz, jr_00b_55a4

jr_00b_5584:
    jr nz, jr_00b_55a6

jr_00b_5586:
    jr nz, jr_00b_55a8

jr_00b_5588:
    jr nz, jr_00b_55aa

jr_00b_558a:
    jr nz, jr_00b_55ac

jr_00b_558c:
    jr nz, jr_00b_55ae

jr_00b_558e:
    jr nz, jr_00b_55b0

jr_00b_5590:
    jr nz, jr_00b_55b2

jr_00b_5592:
    jr nz, jr_00b_55b4

jr_00b_5594:
    jr nz, jr_00b_55b6

jr_00b_5596:
    jr nz, jr_00b_55b8

jr_00b_5598:
    jr nz, jr_00b_55ba

jr_00b_559a:
    jr nz, jr_00b_55bc

jr_00b_559c:
    jr nz, jr_00b_55be

jr_00b_559e:
    jr nz, jr_00b_55c0

jr_00b_55a0:
    jr nz, jr_00b_55c2

jr_00b_55a2:
    jr nz, jr_00b_55c4

jr_00b_55a4:
    jr nz, jr_00b_55c6

jr_00b_55a6:
    jr nz, jr_00b_55c8

jr_00b_55a8:
    jr nz, jr_00b_55ca

jr_00b_55aa:
    jr nz, jr_00b_55cc

jr_00b_55ac:
    jr nz, jr_00b_55ce

jr_00b_55ae:
    jr nz, jr_00b_55d0

jr_00b_55b0:
    jr nz, jr_00b_55d2

jr_00b_55b2:
    jr nz, jr_00b_55d4

jr_00b_55b4:
    jr nz, jr_00b_55d6

jr_00b_55b6:
    jr nz, jr_00b_55d8

jr_00b_55b8:
    jr nz, jr_00b_55da

jr_00b_55ba:
    jr nz, jr_00b_55dc

jr_00b_55bc:
    jr nz, jr_00b_55de

jr_00b_55be:
    jr nz, jr_00b_55e0

jr_00b_55c0:
    jr nz, jr_00b_55e2

jr_00b_55c2:
    jr nz, jr_00b_55e4

jr_00b_55c4:
    jr nz, jr_00b_55e6

jr_00b_55c6:
    jr nz, jr_00b_55e8

jr_00b_55c8:
    jr nz, jr_00b_55ea

jr_00b_55ca:
    jr nz, jr_00b_55ec

jr_00b_55cc:
    jr nz, jr_00b_55ee

jr_00b_55ce:
    jr nz, jr_00b_55f0

jr_00b_55d0:
    jr nz, jr_00b_55f2

jr_00b_55d2:
    jr nz, jr_00b_55f4

jr_00b_55d4:
    jr nz, jr_00b_55f6

jr_00b_55d6:
    jr nz, jr_00b_55f8

jr_00b_55d8:
    jr nz, jr_00b_55fa

jr_00b_55da:
    jr nz, jr_00b_55fc

jr_00b_55dc:
    jr nz, jr_00b_55fe

jr_00b_55de:
    jr nz, jr_00b_5600

jr_00b_55e0:
    jr nz, jr_00b_5602

jr_00b_55e2:
    jr nz, jr_00b_5604

jr_00b_55e4:
    jr nz, jr_00b_5606

jr_00b_55e6:
    jr nz, jr_00b_5608

jr_00b_55e8:
    jr nz, jr_00b_560a

jr_00b_55ea:
    jr nz, jr_00b_560c

jr_00b_55ec:
    jr nz, jr_00b_560e

jr_00b_55ee:
    jr nz, jr_00b_5610

jr_00b_55f0:
    jr nz, jr_00b_5612

jr_00b_55f2:
    jr nz, jr_00b_5614

jr_00b_55f4:
    jr nz, jr_00b_5616

jr_00b_55f6:
    jr nz, jr_00b_5618

jr_00b_55f8:
    jr nz, jr_00b_561a

jr_00b_55fa:
    jr nz, jr_00b_561c

jr_00b_55fc:
    jr nz, jr_00b_561e

jr_00b_55fe:
    jr nz, jr_00b_5620

jr_00b_5600:
    jr nz, jr_00b_5622

jr_00b_5602:
    jr nz, jr_00b_5624

jr_00b_5604:
    jr nz, jr_00b_5626

jr_00b_5606:
    jr nz, jr_00b_5628

jr_00b_5608:
    jr nz, jr_00b_562a

jr_00b_560a:
    jr nz, jr_00b_562c

jr_00b_560c:
    jr nz, jr_00b_562e

jr_00b_560e:
    jr nz, jr_00b_5630

jr_00b_5610:
    jr nz, jr_00b_5632

jr_00b_5612:
    jr nz, jr_00b_5634

jr_00b_5614:
    jr nz, jr_00b_5636

jr_00b_5616:
    jr nz, jr_00b_5638

jr_00b_5618:
    jr nz, jr_00b_563a

jr_00b_561a:
    jr nz, jr_00b_563c

jr_00b_561c:
    jr nz, jr_00b_563e

jr_00b_561e:
    jr nz, jr_00b_5640

jr_00b_5620:
    jr nz, jr_00b_5642

jr_00b_5622:
    jr nz, @+$22

jr_00b_5624:
    jr nz, @+$22

jr_00b_5626:
    jr nz, @+$22

jr_00b_5628:
    jr nz, @+$22

jr_00b_562a:
    jr nz, jr_00b_564c

jr_00b_562c:
    jr nz, @+$22

jr_00b_562e:
    jr nz, @+$22

jr_00b_5630:
    jr nz, @+$22

jr_00b_5632:
    jr nz, jr_00b_5654

jr_00b_5634:
    jr nz, @+$22

jr_00b_5636:
    jr nz, jr_00b_5658

jr_00b_5638:
    jr nz, jr_00b_565a

jr_00b_563a:
    jr nz, @+$22

jr_00b_563c:
    jr nz, @+$22

jr_00b_563e:
    jr nz, @+$22

jr_00b_5640:
    ldh a, [$96]

jr_00b_5642:
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d5fe]

jr_00b_564c:
    ld b, a
    cp $07
    jr nz, jr_00b_567b

    ld a, [$c810]

jr_00b_5654:
    and a
    jr z, jr_00b_565f

    dec a

jr_00b_5658:
    jr z, jr_00b_5666

jr_00b_565a:
    dec a
    jr z, jr_00b_566d

    jr jr_00b_5674

jr_00b_565f:
    ld c, $00
    ld de, $0000
    jr jr_00b_568a

jr_00b_5666:
    ld c, $01
    ld de, $0020
    jr jr_00b_568a

jr_00b_566d:
    ld c, $01
    ld de, $0020
    jr jr_00b_568a

jr_00b_5674:
    ld c, $01
    ld de, $0020
    jr jr_00b_568a

jr_00b_567b:
    ld hl, $56c9
    ld a, b
    add a
    add l
    ld l, a
    jr nc, jr_00b_5685

    inc h

jr_00b_5685:
    ld a, [hl+]
    ld c, a
    ld e, [hl]
    ld d, $00

jr_00b_568a:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$8a]
    add c
    ldh [$8a], a
    ld hl, $c322
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$c322], a
    ld a, h
    ld [$c323], a
    ld a, [$c4b2]
    inc a
    ld [$c4b2], a
    and $3f
    ld b, a
    ld a, $90
    sub b
    ldh [rWY], a
    ld a, b
    cp $3f
    jr nz, jr_00b_56c8

    ld hl, $5640
    call Call_000_2449
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d242], a

jr_00b_56c8:
    ret


    ld bc, $0020
    nop
    nop
    nop
    ld bc, $0120
    jr nz, @+$03

    jr nz, jr_00b_56d6

jr_00b_56d6:
    nop
    nop
    nop
    ld bc, $0020
    nop
    ld bc, $0020
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    ld bc, $0020
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00b_56ef:
    push af
    push bc
    push de
    push hl
    ld b, a
    ldh a, [$96]
    push af
    and $0f
    ld a, b
    ld c, a
    add a
    add c
    add a
    add c
    ld hl, $572c
    add l
    ld l, a
    jr nc, jr_00b_5707

    inc h

jr_00b_5707:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    ld [$d243], a
    ld b, a
    inc hl
    ld c, $00

jr_00b_5715:
    call $5795
    call Call_000_2e3b
    inc hl
    inc hl
    inc c
    ld a, c
    cp b
    jr nz, jr_00b_5715

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld [bc], a
    nop
    dec b
    dec bc
    dec b
    nop
    nop
    ld bc, $0716
    nop
    nop
    nop
    nop
    ld bc, $0323
    nop
    nop
    nop
    nop
    inc bc
    add hl, hl
    dec b
    ld l, $05
    ld [hl], $03
    ld bc, $053f
    nop
    nop
    nop
    nop
    ld bc, $0548
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    dec b
    ld d, l
    inc bc
    nop
    nop
    inc bc
    ld e, [hl]
    inc b
    ld h, [hl]
    inc b
    ld l, [hl]
    inc bc
    inc bc
    ld [hl], l
    dec b
    ld a, d
    inc bc
    add c
    inc b
    ld bc, $0389
    nop
    nop
    nop
    nop
    ld bc, $0690
    nop
    nop
    nop
    nop
    ld bc, $039a
    nop
    nop
    nop
    nop
    ld [bc], a
    and c
    inc b
    xor c
    inc b
    nop
    nop
    ld [bc], a
    or c
    dec b
    cp d
    inc b
    nop
    nop
    inc bc
    jp nz, $c705

    dec b
    call z, $f505
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    push hl
    ld hl, $0014
    ld a, c
    or a
    jr nz, jr_00b_57aa

    ld h, $00
    ld l, $00
    jr jr_00b_57ad

jr_00b_57aa:
    call Call_000_08b9

jr_00b_57ad:
    ld de, $d063
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    push af
    ld a, [hl]
    ld b, a
    ld hl, $1900
    pop af
    add l
    ld l, a
    jr nc, jr_00b_57c1

    inc h

jr_00b_57c1:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a

jr_00b_57c7:
    ld c, $50
    call Call_00b_5884
    call Call_000_2e3b
    ld a, $50
    add e
    ld e, a
    jr nc, jr_00b_57d6

    inc d

jr_00b_57d6:
    inc hl
    dec b
    jr nz, jr_00b_57c7

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_57e4:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d243]
    and $03
    jr nz, jr_00b_57fa

    ld a, $01

jr_00b_57fa:
    ld b, a
    ld d, $00
    ld c, $00

jr_00b_57ff:
    call Call_000_2e3b
    ld e, $14

jr_00b_5804:
    call Call_00b_5822
    inc c
    dec e
    jr nz, jr_00b_5804

    ld e, $ff

jr_00b_580d:
    call Call_000_2e3b
    dec e
    jr nz, jr_00b_580d

    inc d
    ld a, d
    cp b
    jr nz, jr_00b_57ff

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_5822:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld hl, $d000
    ld a, c
    add l
    ld l, a
    jr nc, jr_00b_5832

    inc h

jr_00b_5832:
    ld b, $08
    ld de, $d000

jr_00b_5837:
    ld c, $14
    push hl
    push de

jr_00b_583b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    push hl
    ld h, d
    ld l, e
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld [hl], a
    inc de
    pop hl
    dec c
    jr nz, jr_00b_583b

    pop de
    pop hl
    ld a, $50
    add l
    ld l, a
    jr nc, jr_00b_585c

    inc h

jr_00b_585c:
    ld a, $20
    add e
    ld e, a
    jr nc, jr_00b_5863

    inc d

jr_00b_5863:
    dec b
    jr nz, jr_00b_5837

    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $9c00
    ld c, $10
    call Call_000_0468
    call Call_000_2e3b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_5884:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    rst $18
    inc h
    dec b
    ld hl, $c600
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $14

jr_00b_5899:
    ld a, [hl+]
    or a
    jr z, jr_00b_58a6

    push hl
    ld h, d
    ld l, e
    ld [hl], a
    pop hl
    inc de
    dec c
    jr nz, jr_00b_5899

jr_00b_58a6:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $0240
    ld b, $80
    call Call_00b_538d
    ld hl, $d300
    ld de, $0240
    ld b, $20
    call Call_00b_538d
    ld hl, $19da
    ld de, $d3c0
    call Call_00b_5884
    inc hl
    inc hl
    ld a, $40
    add e
    ld e, a
    jr nc, jr_00b_58e5

    inc d

jr_00b_58e5:
    call Call_00b_5884
    inc hl
    inc hl
    ld a, $40
    add e
    ld e, a
    jr nc, jr_00b_58f1

    inc d

jr_00b_58f1:
    call Call_00b_5884
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $d300
    ld de, $9800
    ld c, $24
    call Call_000_0468
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld [$c320], a
    ld [$c321], a
    ld [$c322], a
    ld [$c323], a
    call Call_000_2e3b
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld c, $84

jr_00b_5928:
    call Call_000_2e3b
    dec c
    jr nz, jr_00b_5928

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $dd
    ld e, c
    nop
    ld bc, $0600
    nop
    nop
    nop
    nop
    ld bc, $dd20
    ld e, c
    nop
    ld bc, $0800
    nop
    nop
    nop
    nop
    ld bc, $dd21
    ld e, c
    nop
    ld bc, $0a00
    nop
    nop
    nop
    nop
    ld bc, $dd22
    ld e, c
    nop
    ld bc, $0c00
    nop
    nop
    nop
    nop
    ld bc, $dd20
    ld e, c
    nop
    ld bc, $0e00
    nop
    nop
    nop
    nop
    ld bc, $dd21
    ld e, c
    nop
    ld bc, $1000
    nop
    nop
    nop
    nop
    ld bc, $dd22
    ld e, c
    nop
    dec b
    add b
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc hl
    db $dd
    ld e, c
    nop
    rlca
    add b
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $dd23
    ld e, c
    nop
    add hl, bc
    add b
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    inc hl
    db $dd
    ld e, c
    nop
    dec b
    add b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc h
    db $dd
    ld e, c
    nop
    rlca
    add b
    dec b
    nop
    nop
    nop
    nop
    ld bc, $dd24
    ld e, c
    nop
    add hl, bc
    add b
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    inc h
    db $dd
    ld e, c
    nop
    inc c
    add b
    ld [$0000], sp
    nop
    add b
    ld bc, $0025
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    push af
    push bc
    push de
    push hl
    call Call_000_2e3b
    ld [$c3e0], a
    push af
    ld hl, $c878
    ld a, [hl]
    cp $01
    jr nz, jr_00b_59f7

    pop af
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_00b_59f7:
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    call Call_000_0341
    call Call_000_23b6
    ld a, $90
    ldh [rWY], a
    call Call_000_2683
    ld a, [$c96c]
    cp $04
    jr nc, jr_00b_5a16

    call Call_00b_666e

jr_00b_5a16:
    call Call_000_0371
    call Call_000_2e3b
    rst $18
    inc b
    inc b
    rst $18
    jr nc, @+$06

    ldh a, [$96]
    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $0000
    ld hl, $c290
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0004
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $c290
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0006
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $c290
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0016
    add hl, bc
    ld a, $00
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld [$c320], a
    ld [$c321], a
    ld [$c322], a
    ld [$c323], a
    ld a, $0a
    rst $18
    nop
    dec bc
    ld hl, $5938
    ld a, $0b
    rst $18
    ld l, $04
    rst $18
    ld b, [hl]
    inc b
    ld hl, $6527
    ld d, $0b
    ld e, $01
    call Call_000_0595
    pop af
    cp $01
    jr z, jr_00b_5b00

    push af
    ld a, [$c96c]
    cp $02
    jr z, jr_00b_5a9c

    cp $03
    jr z, jr_00b_5aa2

    ld c, $00
    ld e, $01
    jr jr_00b_5aa6

jr_00b_5a9c:
    ld c, $01
    ld e, $00
    jr jr_00b_5aa6

jr_00b_5aa2:
    ld c, $01
    ld e, $01

jr_00b_5aa6:
    ld a, [$c890]
    ld b, a
    ld a, [$c899]
    and $10
    or b
    ld b, a
    ld a, [$c8d0]
    ld d, a
    ld a, [$c8d9]
    and $10
    or d
    ld d, a
    pop af
    call Call_00b_5f54
    rst $18
    inc e
    dec b
    xor a
    ld b, $05
    ld c, $04
    rst $18
    jr z, @+$07

    ld a, $04
    ld b, $05
    ld c, $04
    rst $18
    jr z, @+$07

    ld a, $08
    ld b, $05
    ld c, $05
    rst $18
    jr z, @+$07

    ld a, $0d
    ld b, $05
    ld c, $05
    rst $18
    jr z, @+$07

    call Call_00b_6402
    xor a
    ld [$c3f4], a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, $01
    ld hl, $648f
    call Call_000_23e8
    jp Jump_00b_5bb9


jr_00b_5b00:
    ld a, [$c890]
    ld b, a
    ld a, [$c96c]
    ld c, a
    call Call_00b_61cf
    push hl
    ld b, $14
    ld c, $00
    ld d, $00
    ld e, $00
    ld h, $14
    ld l, $12
    call Call_00b_6dc7
    pop hl
    call Call_000_2ed5
    ld bc, $1cdf
    dec b
    xor a
    ld b, $05
    ld c, $04
    rst $18
    jr z, @+$07

    ld a, $04
    ld b, $05
    ld c, $04
    rst $18
    jr z, @+$07

    ld a, $08
    ld b, $05
    ld c, $05
    rst $18
    jr z, @+$07

    ld a, $0d
    ld b, $05
    ld c, $05
    rst $18
    jr z, jr_00b_5b4b

    ld a, $08
    ld bc, $3f00

jr_00b_5b4b:
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $09
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $0a
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $0b
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $0c
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $0d
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $0e
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    call Call_00b_6402
    xor a
    ld [$c3f4], a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, [$c96c]
    cp $04
    jr nc, jr_00b_5bb9

    ld a, $01
    ld hl, $648f
    call Call_000_23e8
    ld a, $01
    ld hl, $6694
    call Call_000_23e8

Jump_00b_5bb9:
jr_00b_5bb9:
    call Call_000_2e3b
    ldh a, [$91]
    and $0b
    jr z, jr_00b_5bb9

    ld hl, $648f
    call Call_000_2449
    ld hl, $6694
    call Call_000_2449
    ld a, $00
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_00b_5be3

    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    pop hl
    pop de

jr_00b_5be3:
    pop bc
    pop af
    ret


Call_00b_5be6:
    push af
    push bc
    push de
    push hl
    ld e, a
    ldh a, [$96]
    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $02
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    dec a
    ld [hl], a
    inc hl
    ld a, $cc
    ld [hl], a
    call Call_000_0a61
    call Call_000_0a61
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $03
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    ld [hl], a
    inc hl
    ld a, $99
    ld [hl], a
    call Call_000_0a61
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $04
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    ld [hl], a
    inc hl
    ld a, $66
    ld [hl], a
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $05
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    dec a
    ld [hl], a
    inc hl
    ld a, $33
    ld [hl], a
    call Call_000_0a61
    call Call_000_0a61
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $06
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    ld [hl], a
    inc hl
    ld a, $00
    ld [hl], a
    call Call_000_0a61
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $07
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    ld [hl], a
    inc hl
    ld a, $00
    ld [hl], a
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $08
    ld [hl+], a
    xor a
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_5d2c:
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $ffe0
    ld a, [hl+]

Jump_00b_5d3f:
    ld h, [hl]
    add $19
    ld l, a
    ld b, [hl]
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    ld a, l
    add b
    ld hl, $0180
    call Call_000_0af2
    push hl
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $18
    ld l, a
    ld d, [hl]
    ld e, $00
    pop hl
    add hl, de
    ld b, h
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$c3e0]
    cp $01
    jr z, jr_00b_5dac

    ld a, d
    cp $0f
    jr c, jr_00b_5de0

    jr jr_00b_5db1

jr_00b_5dac:
    ld a, d
    cp $11
    jr c, jr_00b_5de0

jr_00b_5db1:
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld a, [$c3f5]
    or a
    jr nz, jr_00b_5dc7

    ld a, $80
    ld [hl+], a
    ld a, $06
    ld [hl], a
    jr jr_00b_5dcc

jr_00b_5dc7:
    xor a
    ld [hl+], a
    ld a, $06
    ld [hl], a

jr_00b_5dcc:
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a

jr_00b_5de0:
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $02
    call Call_00b_5d2c
    ld a, $03
    call Call_00b_5d2c
    ld a, $04
    call Call_00b_5d2c
    ld a, $05
    call Call_00b_5d2c
    ld a, $06
    call Call_00b_5d2c
    ld a, $07
    call Call_00b_5d2c
    call Call_00b_652f
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_5e13:
    ldh a, [$96]
    push af
    ld l, c
    ld h, $00
    ld a, $10
    push bc
    call Call_000_08b9
    pop bc
    ld c, b
    ld b, $00
    add hl, bc
    push hl
    ld l, e
    ld h, $00
    ld a, $40
    push de
    call Call_000_08b9
    pop de
    ld e, d
    ld d, $00
    add hl, de
    pop bc
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d000
    add hl, de
    ld a, c
    ld de, $003c
    ld c, $08

jr_00b_5e44:
    ld b, $04

jr_00b_5e46:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_00b_5e46

    add hl, de
    dec c
    jr nz, jr_00b_5e44

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00b_5e55:
    ldh a, [$96]
    push af
    ld l, e
    ld h, $00
    ld a, $40
    push de
    call Call_000_08b9
    pop de
    ld e, d
    ld d, $00
    add hl, de
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d000
    add hl, de
    ld de, $003c
    ld c, $08

jr_00b_5e75:
    ld b, $04

jr_00b_5e77:
    ld a, [hl]
    and $f8
    or $01
    ld [hl+], a
    dec b
    jr nz, jr_00b_5e77

    add hl, de
    dec c
    jr nz, jr_00b_5e75

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    xor $6b
    rst $38
    ld a, a
    adc $39
    nop
    nop
    sbc $7b
    jr @+$65

    ld d, d
    ld c, d
    adc h
    ld sp, $00df
    rra
    inc bc
    ld [$000b], sp
    nop
    ld d, h
    ld h, d
    rst $38
    ld l, e
    inc b
    ld a, a
    nop
    nop
    ld d, h
    ld h, d
    rst $38
    ld l, e
    sbc a
    jr nz, jr_00b_5eb1

jr_00b_5eb1:
    nop
    ld d, h
    ld h, d
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    ld d, h
    ld h, d
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    ld d, h
    ld h, d
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    ld b, $04
    inc b
    dec b
    dec b
    ld b, $04
    rlca
    ld b, $03
    dec b
    nop

Call_00b_5ed6:
    push af
    push bc
    push de
    push hl
    push de
    push af
    and $0f
    ld h, a
    ld l, c
    push bc
    sla a
    add b
    ld c, a
    ld d, $00
    ld a, $09
    add l
    add l
    ld e, a
    push hl
    rst $18
    ld d, $11
    pop hl
    call Call_000_2e3b
    call Call_00b_5f40
    pop bc
    ld b, $00
    ld a, $09
    add l
    add l
    ld c, a
    push de
    call Call_00b_5e13
    pop de
    pop af
    bit 4, a
    jr z, jr_00b_5f2d

    push de
    push af
    call Call_00b_5e55
    pop af
    and $0f
    ld hl, $5eca
    add l
    ld l, a
    jr nc, jr_00b_5f19

    inc h

jr_00b_5f19:
    ld a, [hl]
    ld hl, $5e8a
    add a
    add a
    add a
    add l
    ld l, a
    jr nc, jr_00b_5f25

    inc h

jr_00b_5f25:
    ld d, $01
    ld e, $01
    call Call_000_0595
    pop de

jr_00b_5f2d:
    pop hl
    push hl
    ld b, d
    ld c, e
    ld d, h
    ld e, l
    ld h, $04
    ld l, $08
    call Call_00b_6dc7
    pop hl
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_5f40:
    ld e, $30
    ld a, h
    cp $06
    jr c, jr_00b_5f4b

    sub $06
    ld e, $38

jr_00b_5f4b:
    sla a
    add l
    sla a
    sla a
    ld d, a
    ret


Call_00b_5f54:
    ld l, a
    ld a, [$c878]
    cp $01
    ret z

    push af
    push bc
    push de
    push hl
    push bc
    push de
    ld a, l
    cp $02
    jr nz, jr_00b_5fdc

    bit 0, c
    jr z, jr_00b_5fdc

    bit 0, e
    jr z, jr_00b_5fdc

    rst $08
    ld [hl+], a
    push af
    push bc
    push de
    push hl
    call Call_00b_6c79
    push hl
    ld b, $18
    ld c, $15
    ld d, $04
    ld e, $03
    ld h, $0e
    ld l, $02
    call Call_00b_6dc7
    pop hl
    ld a, $08
    ld bc, $0100
    ld de, $0100
    rst $18
    jr nz, @+$0c

    ld a, $09
    ld bc, $0100
    ld de, $0100
    rst $18
    jr nz, @+$0c

    ld a, $0a
    ld bc, $0100
    ld de, $0100
    rst $18
    jr nz, @+$0c

    ld a, $0b
    ld bc, $0100
    ld de, $0100
    rst $18
    jr nz, @+$0c

    ld a, $0c
    ld bc, $0100
    ld de, $0100
    rst $18
    jr nz, @+$0c

    ld a, $0d
    ld bc, $0100
    ld de, $0100
    rst $18
    jr nz, @+$0c

    ld a, $0e
    ld bc, $0100
    ld de, $0100
    rst $18
    jr nz, @+$0c

    pop hl
    pop de
    pop bc
    pop af
    jp Jump_00b_607f


jr_00b_5fdc:
    bit 0, c
    jr nz, jr_00b_5fef

    ld a, [$c893]
    cp $03
    jr z, @+$06

    rst $08
    jr nz, jr_00b_6002

    ld de, $21cf
    jr @+$0f

jr_00b_5fef:
    ld a, [$c893]
    cp $03
    jr z, jr_00b_5ffa

    rst $08
    ld hl, $0218

jr_00b_5ffa:
    rst $08
    jr nz, jr_00b_6076

    or a
    jp z, Jump_00b_607f

    push af

jr_00b_6002:
    push bc
    push de
    push hl
    push hl
    ld b, $05
    ld c, $24
    ld d, $04
    ld e, $03
    ld h, $05
    ld l, $02
    call Call_00b_6dc7
    pop hl
    push hl
    ld b, $00
    ld c, $24
    ld d, $0c
    ld e, $03
    ld h, $05
    ld l, $02
    call Call_00b_6dc7
    pop hl
    ld a, $08
    ld bc, $0d00
    ld de, $0380
    rst $18
    jr nz, @+$0c

    ld a, $09
    ld bc, $0f00
    ld de, $0380
    rst $18
    jr nz, @+$0c

    ld a, $0a
    ld bc, $1100
    ld de, $0380
    rst $18
    jr nz, @+$0c

    ld a, $0b
    ld bc, $0d00
    ld de, $0580
    rst $18
    jr nz, @+$0c

    ld a, $0c
    ld bc, $0f00
    ld de, $0580
    rst $18
    jr nz, @+$0c

    ld a, $0d
    ld bc, $1100
    ld de, $0580
    rst $18
    jr nz, @+$0c

    ld a, $0e
    ld bc, $0800
    ld de, $0780
    rst $18
    jr nz, jr_00b_607e

    ld a, $0e

jr_00b_6076:
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    pop hl
    pop de
    pop bc

jr_00b_607e:
    pop af

Jump_00b_607f:
    push de
    ld a, b
    and $0f
    cp $0b
    jr c, jr_00b_609a

    push hl
    ld b, $30
    ld c, $30
    ld d, $04
    ld e, $06
    ld h, $04
    ld l, $08
    call Call_00b_6dc7
    pop hl
    jr jr_00b_60a5

jr_00b_609a:
    ld a, b
    ld b, c
    ld c, $00
    ld d, $04
    ld e, $06
    call Call_00b_5ed6

jr_00b_60a5:
    pop de
    ld a, d
    and $0f
    cp $0b
    jr c, jr_00b_60c0

    push hl
    ld b, $30
    ld c, $30
    ld d, $0c
    ld e, $06
    ld h, $04
    ld l, $08
    call Call_00b_6dc7
    pop hl
    jr jr_00b_60cb

jr_00b_60c0:
    ld a, d
    ld b, e
    ld c, $01
    ld d, $0c
    ld e, $06
    call Call_00b_5ed6

jr_00b_60cb:
    pop de
    pop bc
    ld a, l
    cp $02
    jr nz, jr_00b_60dc

    bit 0, c
    jr z, jr_00b_60dc

    bit 0, e
    jr z, jr_00b_60dc

    jr jr_00b_60f9

jr_00b_60dc:
    push bc
    ld a, c
    or a
    jr nz, jr_00b_60e5

    ld a, $07
    jr jr_00b_60e7

jr_00b_60e5:
    ld a, $0e

jr_00b_60e7:
    call Call_00b_5be6
    push hl
    ld a, $01
    ld hl, $5de1
    call Call_000_23e8
    pop hl
    xor a
    ld [$c3f5], a
    pop bc

jr_00b_60f9:
    ld a, l
    cp $02
    jr z, jr_00b_6143

    ld a, c
    ld b, $05
    ld c, $0e
    or a
    jr z, jr_00b_612c

    push hl
    ld b, $12
    ld c, $2d
    ld d, $0f
    ld e, $0f
    ld h, $04
    ld l, $01
    call Call_00b_6dc7
    pop hl
    push hl
    ld b, $12
    ld c, $2e
    ld d, $06
    ld e, $0f
    ld h, $04
    ld l, $01
    call Call_00b_6dc7
    pop hl
    ld b, $05
    ld c, $0e

jr_00b_612c:
    call Call_00b_65ae
    cp $0a
    jr c, jr_00b_6135

    dec b
    dec c

jr_00b_6135:
    ld d, b
    ld e, $0f
    call Call_00b_65fe
    ld d, c
    ld e, $0f
    call Call_00b_65fe
    jr jr_00b_61a4

jr_00b_6143:
    push hl
    ld b, $00
    ld c, $00
    ld d, $05
    ld e, $0f
    ld h, $04
    ld l, $01
    call Call_00b_6dc7
    pop hl
    push hl
    ld b, $14
    ld c, $00
    ld d, $0e
    ld e, $0f
    ld h, $05
    ld l, $01
    call Call_00b_6dc7
    pop hl
    push hl
    ld b, $0a
    ld c, $2d
    ld d, $07
    ld e, $0f
    ld h, $05
    ld l, $01
    call Call_00b_6dc7
    pop hl
    ld a, [$c8be]
    ld d, $03
    ld e, $0f
    call Call_00b_6646
    cp $ca
    jr c, jr_00b_6186

    cpl
    inc a

jr_00b_6186:
    ld d, $04
    ld e, $0f
    call Call_00b_65fe
    ld a, [$c8fe]
    ld d, $0e
    ld e, $0f
    call Call_00b_6646
    cp $ca
    jr c, jr_00b_619d

    cpl
    inc a

jr_00b_619d:
    ld d, $0f
    ld e, $0f
    call Call_00b_65fe

jr_00b_61a4:
    ld hl, $c897
    ld a, [hl+]
    ld d, $04
    ld e, $10
    call Call_00b_65fe
    ld a, [hl]
    ld d, $04
    ld e, $11
    call Call_00b_65fe
    ld hl, $c8d7
    ld a, [hl+]
    ld d, $0f
    ld e, $10
    call Call_00b_65fe
    ld a, [hl]
    ld d, $0f
    ld e, $11
    call Call_00b_65fe
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_61cf:
    push af
    push bc
    push de
    push hl
    rst $08
    jr nz, @-$31

    db $d3
    ld h, a
    ld a, c
    cp $04
    jr nc, jr_00b_61fd

    push bc
    ld a, c
    cp $01
    jr z, jr_00b_61fc

    sub $02
    ld c, a
    sla c
    ld a, $0a
    add c
    ld c, a
    push hl
    ld b, c
    ld c, $24
    ld d, $17
    ld e, $0e
    ld h, $02
    ld l, $02
    call Call_00b_6dc7
    pop hl

jr_00b_61fc:
    pop bc

jr_00b_61fd:
    push bc
    ld a, c
    cp $01
    jr z, jr_00b_6275

    cp $02
    jr nz, jr_00b_622b

    push hl
    ld b, $22
    ld c, $2b
    ld d, $1f
    ld e, $0c
    ld h, $04
    ld l, $05
    call Call_00b_6dc7
    pop hl
    push hl
    ld b, $00
    ld c, $2b
    ld d, $21
    ld e, $06
    ld h, $02
    ld l, $01
    call Call_00b_6dc7
    pop hl
    jr jr_00b_6275

jr_00b_622b:
    cp $03
    jr nz, jr_00b_6253

    push hl
    ld b, $26
    ld c, $2b
    ld d, $1f
    ld e, $0c
    ld h, $04
    ld l, $05
    call Call_00b_6dc7
    pop hl
    push hl
    ld b, $00
    ld c, $2c
    ld d, $21
    ld e, $06
    ld h, $02
    ld l, $01
    call Call_00b_6dc7
    pop hl
    jr jr_00b_6275

jr_00b_6253:
    push hl
    ld b, $23
    ld c, $0c
    ld d, $1f
    ld e, $0c
    ld h, $04
    ld l, $05
    call Call_00b_6dc7
    pop hl
    push hl
    ld b, $00
    ld c, $2d
    ld d, $21
    ld e, $06
    ld h, $02
    ld l, $01
    call Call_00b_6dc7
    pop hl

jr_00b_6275:
    pop bc
    push bc
    ld a, [$c836]
    cp $01
    jr z, jr_00b_62f1

    cp $02
    jr nz, jr_00b_6295

    push hl
    ld b, $0a
    ld c, $28
    ld d, $14
    ld e, $03
    ld h, $14
    ld l, $01
    call Call_00b_6dc7
    pop hl
    jr jr_00b_62f1

jr_00b_6295:
    cp $03
    jr nz, jr_00b_62ac

    push hl
    ld b, $0a
    ld c, $29
    ld d, $14
    ld e, $03
    ld h, $14
    ld l, $01
    call Call_00b_6dc7
    pop hl
    jr jr_00b_62f1

jr_00b_62ac:
    cp $04
    jr nz, jr_00b_62c3

    push hl
    ld b, $0a
    ld c, $2a
    ld d, $14
    ld e, $03
    ld h, $14
    ld l, $01
    call Call_00b_6dc7
    pop hl
    jr jr_00b_62f1

jr_00b_62c3:
    cp $05
    jr nz, jr_00b_62da

    push hl
    ld b, $0a
    ld c, $2b
    ld d, $14
    ld e, $03
    ld h, $14
    ld l, $01
    call Call_00b_6dc7
    pop hl
    jr jr_00b_62f1

jr_00b_62da:
    cp $06
    jr nz, jr_00b_62f1

    push hl
    ld b, $0a
    ld c, $2c
    ld d, $14
    ld e, $03
    ld h, $14
    ld l, $01
    call Call_00b_6dc7
    pop hl
    jr jr_00b_62f1

jr_00b_62f1:
    pop bc
    push bc
    ld a, c
    cp $01
    jr z, jr_00b_6353

    cp $04
    jr nc, jr_00b_6320

    push hl
    ld b, $07
    ld c, $1c
    ld d, $1b
    ld e, $0a
    ld h, $0d
    ld l, $02
    call Call_00b_6dc7
    pop hl
    push hl
    ld b, $02
    ld c, $13
    ld d, $16
    ld e, $01
    ld h, $0d
    ld l, $01
    call Call_00b_6dc7
    pop hl
    jr jr_00b_6353

jr_00b_6320:
    push hl
    ld b, $14
    ld c, $00
    ld d, $1b
    ld e, $0a
    ld h, $0d
    ld l, $02
    call Call_00b_6dc7
    pop hl
    push hl
    ld b, $0e
    ld c, $25
    ld d, $1b
    ld e, $0b
    ld h, $0d
    ld l, $02
    call Call_00b_6dc7
    pop hl
    push hl
    ld b, $16
    ld c, $00
    ld d, $16
    ld e, $01
    ld h, $10
    ld l, $01
    call Call_00b_6dc7
    pop hl

jr_00b_6353:
    pop bc
    push bc
    ld a, [$c8be]
    ld d, $23
    ld e, $08
    call Call_00b_6646
    cp $ca
    jr c, jr_00b_6365

    cpl
    inc a

jr_00b_6365:
    ld d, $24
    ld e, $08
    call Call_00b_65fe
    pop bc
    push bc
    ld a, c
    cp $04
    jr nc, jr_00b_637c

    ld a, b
    ld b, $00
    ld d, $16
    ld e, $06
    jr jr_00b_639c

jr_00b_637c:
    push af
    push bc
    push de
    push hl
    push hl
    ld b, $08
    ld c, $06
    ld d, $16
    ld e, $06
    ld h, $04
    ld l, $02
    call Call_00b_6dc7
    pop hl
    pop hl
    pop de
    pop bc
    pop af
    ld a, b
    ld b, $01
    ld d, $16
    ld e, $08

jr_00b_639c:
    ld c, $00
    call Call_00b_5ed6
    pop bc
    ld a, c
    cp $04
    jr nc, jr_00b_63bb

    ld a, $01
    ld [$c3f5], a
    ld a, $04
    call Call_00b_5be6
    ld a, $01
    ld hl, $5de1
    call Call_000_23e8
    jr jr_00b_63fd

jr_00b_63bb:
    ld a, $02
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $03
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $05
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $06
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $07
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

jr_00b_63fd:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_6402:
    push af
    push bc
    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $08
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    ld a, $09
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    ld a, $0a
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    ld a, $0b
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    ld a, $0c
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    ld a, $0d
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, [$c3f4]
    cp $27
    jr c, jr_00b_649e

    xor a
    ld [$c3f4], a

jr_00b_649e:
    sla a
    ld hl, $64c9
    ld e, a
    ld d, $00
    add hl, de
    push hl
    ld d, $0a
    ld e, $01
    call Call_000_056c
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld d, $0c
    ld e, $01
    call Call_000_056c
    ld a, [$c3f4]
    inc a
    ld [$c3f4], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    jr nz, jr_00b_6549

    ld b, b
    ld [hl], d
    ld h, b
    ld h, [hl]
    add c
    ld e, d
    and h
    ld c, [hl]
    rst $00
    ld b, d
    ld [$0d36], a
    dec hl
    jr nc, jr_00b_64fa

    ld d, e
    inc de
    db $76
    rlca
    cp c
    inc bc
    call c, $ff03
    inc bc
    cp a
    inc bc
    ld a, a
    inc bc
    ccf
    dec bc
    rst $18
    ld [de], a
    cp a
    ld a, [de]
    ld a, a
    ld [hl+], a
    ccf
    ld a, [hl+]
    rst $38
    ld sp, $39bf
    ld a, a
    ld b, c
    ccf

jr_00b_64fa:
    ld c, c
    rst $38
    ld d, b
    cp a
    ld e, b
    cp h
    ld e, h
    reti


    ld h, b
    or $64
    inc de
    ld l, c
    jr nc, @+$6f

    ld c, l
    ld [hl], c
    ld l, d
    ld [hl], l
    add a
    ld a, c
    and h
    ld a, l
    pop bc
    ld a, l
    ldh [$7d], a
    nop
    ld a, [hl]
    jr nz, jr_00b_6597

    ld b, b
    ld [hl], d
    ld h, b
    ld h, [hl]
    add c
    ld e, d
    and h
    ld c, [hl]
    rst $00
    ld b, d
    ld [$0d36], a
    dec hl
    ld d, h
    ld h, d
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop

Call_00b_652f:
    ld a, $0e
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $18
    ld l, a
    ld a, [hl]

jr_00b_6549:
    ld b, a
    bit 7, a
    jr nz, jr_00b_6552

    ld c, $02
    jr jr_00b_6554

jr_00b_6552:
    ld c, $04

jr_00b_6554:
    add c
    ld [hl], a
    ld a, b
    ld hl, $0040
    call Call_000_0af2
    ld hl, $0800
    add hl, de
    ld d, h
    ld e, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    push bc
    push hl
    ld b, $12
    ld c, $00
    ld d, $00

jr_00b_6577:
    push af
    call Call_00b_65de
    add d
    ld d, a
    pop af
    inc c
    dec b
    jr nz, jr_00b_6577

    pop hl
    pop bc
    ret


    push bc
    push hl
    ld c, $12
    ld de, $0000

jr_00b_658c:
    xor a
    call Call_00b_65de
    ld b, a
    ld a, $01
    call Call_00b_65de
    cp b

jr_00b_6597:
    jr z, jr_00b_659f

    jr c, jr_00b_659e

    inc d
    jr jr_00b_659f

jr_00b_659e:
    inc e

jr_00b_659f:
    dec c
    jr nz, jr_00b_658c

    ld a, e
    cp d
    jr c, jr_00b_65a9

    xor a
    jr jr_00b_65ab

jr_00b_65a9:
    ld a, $01

jr_00b_65ab:
    pop hl
    pop bc
    ret


Call_00b_65ae:
    push bc
    push de
    push hl
    ld a, [$c83a]
    or a
    ld a, $01
    jr nz, jr_00b_65da

    ld c, $12
    ld d, $00
    ld e, $00
    ld hl, $c96e

jr_00b_65c2:
    ld a, [hl+]
    cp $01
    jr nz, jr_00b_65ca

    inc d
    jr jr_00b_65cf

jr_00b_65ca:
    cp $02
    jr nz, jr_00b_65cf

    inc e

jr_00b_65cf:
    dec c
    jr nz, jr_00b_65c2

    ld a, e
    sub d
    cp $ca
    jr c, jr_00b_65da

    cpl
    inc a

jr_00b_65da:
    pop hl
    pop de
    pop bc
    ret


Call_00b_65de:
    push bc
    push hl
    or a
    jr nz, jr_00b_65e8

    ld hl, $c8ac
    jr jr_00b_65eb

jr_00b_65e8:
    ld hl, $c8ec

jr_00b_65eb:
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld b, a
    and $0f
    sra b
    sra b
    sra b
    sra b
    add b
    pop hl
    pop bc
    ret


Call_00b_65fe:
    push af
    push bc
    push de
    push hl
    ld c, $ff
    ld hl, $ffff
    ld b, $64

jr_00b_6609:
    inc c
    sub b
    jr nc, jr_00b_6609

    add b
    ld b, $0a

jr_00b_6610:
    inc h
    sub b
    jr nc, jr_00b_6610

    add b
    ld l, a
    ld a, c
    or a
    jr z, jr_00b_6628

    push hl
    ld b, c
    ld c, $29
    ld hl, $0101
    call Call_00b_6dc7
    pop hl
    inc d
    jr jr_00b_662c

jr_00b_6628:
    ld a, h
    or a
    jr z, jr_00b_6638

jr_00b_662c:
    push hl
    ld b, h
    ld c, $29
    ld hl, $0101
    call Call_00b_6dc7
    pop hl
    inc d

jr_00b_6638:
    ld b, l
    ld c, $29
    ld hl, $0101
    call Call_00b_6dc7
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00b_6646:
    or a
    jr nz, jr_00b_6654

    ld b, $03
    ld c, $2a
    ld hl, $0101
    call Call_00b_6dc7
    ret


jr_00b_6654:
    cp $ca
    jr c, jr_00b_6663

    ld b, $01
    ld c, $2a
    ld hl, $0101
    call Call_00b_6dc7
    ret


jr_00b_6663:
    ld b, $00
    ld c, $2a
    ld hl, $0101
    call Call_00b_6dc7
    ret


Call_00b_666e:
    dec a
    sla a
    ld hl, $66b9
    add l
    ld l, a
    jr nc, jr_00b_6679

    inc h

jr_00b_6679:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8600
    ld c, $08
    call Call_000_04db
    ret


    ld bc, $0260
    ld de, $5c22
    call Call_000_2798
    ld bc, $0262
    ld de, $6422
    call Call_000_2798
    ld bc, $0464
    ld de, $5c32
    call Call_000_2798
    ld bc, $0466
    ld de, $6432
    call Call_000_2798
    ret


    cp a
    ld h, [hl]
    inc de
    ld h, a
    ld [hl], c
    ld h, a
    db $fd
    nop
    rst $38
    add sp, $03
    nop
    inc b
    nop
    ld [$ff00], sp
    ld de, $2300
    nop
    nop
    daa
    nop
    ld hl, $00bf
    ld hl, $1919
    add hl, bc
    add hl, bc
    ldh [$e9], a
    ldh a, [$4e]
    ld [c], a
    ldh [$08], a
    nop
    ret z

    cp $e0
    ei
    ld [c], a
    ret z

    rst $38
    pop hl
    db $eb
    add hl, bc
    nop
    db $dd
    ldh [$09], a
    set 4, b
    ld hl, $2323
    scf
    daa
    daa
    jr nz, @+$01

    ldh [$1f], a
    rra
    xor h
    jp hl


    jp nc, $ffe4

    call nz, $c200
    ld [c], a
    ld [c], a
    ld a, [c]
    ld a, [c]
    ld [bc], a
    ld b, $ff
    ldh [$fc], a
    db $fc
    adc h
    jp hl


    nop
    nop
    nop
    db $fd
    nop
    rst $38
    add sp, $0f
    nop
    jr nc, jr_00b_671b

jr_00b_671b:
    ld b, b
    nop
    rst $38
    add a
    nop
    sbc a
    nop
    nop
    sbc h
    nop
    sbc b
    rst $20
    nop
    sbc b
    add b
    rst $38
    ldh [$e0], a
    jp hl


    ldh a, [rP1]
    inc c
    rst $38
    nop
    ld [bc], a
    nop
    pop hl
    nop
    ld sp, hl
    nop
    nop
    rst $38
    add hl, sp
    nop
    add hl, de
    nop
    add hl, de
    add hl, sp
    add hl, sp
    ld a, c
    rst $38
    ld a, c
    ld [hl], c
    nop
    inc hl
    nop
    nop
    ld b, a
    nop
    rst $08
    ld c, [hl]
    nop
    adc [hl]
    sbc a
    rst $38
    ldh [$ce], a
    pop hl
    ld a, a
    ld a, a
    ld a, [hl]
    xor h
    jp hl


    pop hl
    nop
    add d
    nop
    nop
    ld bc, $e0fe
    ld l, e
    add hl, de
    ld sp, hl
    rst $38
    ldh [rSB], a
    rst $38
    ldh [$fe], a
    cp $8c
    jp hl


    nop
    nop
    nop
    db $fd
    nop
    rst $38
    add sp, $0f
    nop
    jr nc, jr_00b_6779

jr_00b_6779:
    ld b, b
    nop
    rst $38
    add a
    nop
    sbc a
    nop
    nop
    sbc h
    nop
    sbc b
    cp a
    nop
    add b
    add b
    add b
    ld a, c
    ld a, c
    ldh [$e9], a
    ldh a, [rIE]
    nop
    inc c
    nop
    ld [bc], a
    nop
    pop hl
    nop
    ld sp, hl
    rst $38
    nop
    nop
    add hl, sp
    nop
    add hl, de
    nop
    add hl, de
    add hl, sp
    ld a, a
    add hl, sp
    pop af
    pop af
    ld a, c
    nop
    add b
    nop
    db $fd
    ldh [rIE], a
    sbc b
    nop
    sbc h
    sbc a
    sbc a
    add a
    add a
    ld b, b
    ld e, a
    ld b, b
    jr nc, jr_00b_67e7

    rrca
    rrca
    xor h
    jp hl


    pop af
    push de
    ldh [$fe], a
    call nc, Call_000_00e1
    add hl, sp
    ld sp, hl
    ld sp, hl
    pop hl
    pop hl
    ld [bc], a
    rra
    ld [bc], a
    inc c
    inc c
    ldh a, [$f0]
    adc h
    jp hl


    nop
    nop
    nop
    push af
    push bc
    push de
    push hl
    call Call_000_0341
    ld a, c
    ld hl, $ffff
    ld b, $0a

jr_00b_67e0:
    inc h
    sub b
    jr nc, jr_00b_67e0

    add b
    ld l, a
    ld a, h

jr_00b_67e7:
    or a
    jr nz, jr_00b_67fa

    push hl
    ld bc, $1b04
    ld de, $1d04
    ld hl, $0203
    call Call_00b_6dc7
    pop hl
    jr jr_00b_683e

jr_00b_67fa:
    push af
    push hl
    ld hl, $688a
    add a
    add l
    ld l, a
    jr nc, jr_00b_6805

    inc h

jr_00b_6805:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ldh [rVBK], a
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $9320
    ld bc, $0002
    call Call_000_2096
    ld hl, $d020
    ld de, $9420
    ld bc, $0002
    call Call_000_2096
    ld hl, $d040
    ld de, $9520
    ld bc, $0002
    call Call_000_2096
    pop hl
    pop af

jr_00b_683e:
    ld a, l
    ld hl, $688a
    add a
    add l
    ld l, a
    jr nc, jr_00b_6848

    inc h

jr_00b_6848:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ldh [rVBK], a
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $9300
    ld bc, $0002
    call Call_000_2096
    ld hl, $d020
    ld de, $9400
    ld bc, $0002
    call Call_000_2096
    ld hl, $d040
    ld de, $9500
    ld bc, $0002
    call Call_000_2096
    call Call_000_0371
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    ret


    sbc [hl]
    ld l, b
    rst $30
    ld l, b
    ld e, l
    ld l, c
    add $69
    ld a, [hl+]
    ld l, d
    adc a
    ld l, d
    ld hl, sp+$6a
    ld d, a
    ld l, e
    cp l
    ld l, e
    inc e
    ld l, h
    rst $38
    jp $5a3c


    and l
    inc a
    jp $c33c


    rst $38
    cpl
    rst $18
    or a
    ld [hl], b
    ld e, a
    rst $00
    cp b
    sbc b
    cp $f0
    push hl
    db $f4
    ei
    db $ed
    ld c, $fa
    db $e3
    dec e
    rst $38
    add hl, de
    ldh [$a0], a
    db $e3
    and e
    push hl
    and h
    rst $20
    db $fd
    and l
    cp $e5
    rlca
    dec b
    rst $00
    push bc
    and a
    dec h
    cp $f0
    rst $20
    rst $20
    and l
    push hl
    and h
    db $e3
    and e
    ldh [rIE], a
    and b
    cp b
    sbc b
    ld e, a
    rst $00
    or a
    ld [hl], b
    rst $08
    rst $38
    ccf
    rst $20
    and l
    and a
    dec h
    rst $00
    push bc
    rlca
    rst $38
    dec b
    dec e
    add hl, de
    ld a, [$ede3]
    ld c, $f3
    ld bc, $00fc
    nop
    nop
    rst $38
    jp $5a3c


    and l
    inc a
    jp $c33c


    rst $38
    dec sp
    rst $00
    and l
    ld e, h
    srl c
    sub $32
    cp $f0
    push hl
    db $f4
    ei
    db $ed
    ld a, [bc]
    ei
    db $ec
    dec sp
    rst $38
    inc l
    db $ec
    inc h
    ld a, b
    xor b
    ld a, $ee
    ld l, $ff
    ld [c], a
    ld a, $da
    xor [hl]
    ld e, d
    adc $3a
    adc $7f

jr_00b_6926:
    ld a, [hl-]
    dec sp
    inc l

jr_00b_6929:
    ld a, [hl-]
    dec l
    inc a
    dec hl
    cp $e1
    rst $38
    dec a
    ld a, [hl+]
    dec sp
    inc l
    dec sp
    inc l
    adc $3a
    rst $38
    ld e, [hl]
    cp d
    ld l, $e6
    inc a
    db $ec
    jr c, jr_00b_6929

    rst $38
    cp a
    ld l, a
    rst $28
    jr nz, jr_00b_6926

    ccf
    dec sp
    inc l
    rst $38
    inc a
    cpl
    ld a, [hl-]
    inc sp
    ld e, $1b
    ld c, $0b
    ccf
    rst $38
    ld a, [$02fb]
    db $fd
    cp $00
    nop
    nop
    rst $38
    jp $5a3c


    and l
    inc a
    jp $c33c


    rst $38
    cpl
    rst $18
    or a
    ld [hl], b
    ld e, a
    rst $00
    cp b
    sbc b
    cp $f0
    push hl
    db $f4
    ei
    db $ed
    ld c, $fa
    db $e3
    dec e
    rst $38
    add hl, de
    ldh [$a0], a
    db $e3
    and e
    rst $20
    and h
    rst $20
    rst $38
    and l
    rst $38
    cp h
    cp a
    add c
    db $76
    ld a, [c]
    xor h
    rst $38
    ld h, h
    rlca
    dec b
    rst $00
    push bc
    rst $20
    dec h
    ld h, a
    rst $38
    dec h
    rst $00
    ld b, l
    add a
    add l
    dec e
    add hl, de
    ld a, d
    rst $38
    ld h, e
    ret c

    ld c, b
    ld [hl], c
    pop de
    or c
    sub c
    ldh [rIE], a
    and b
    ldh [$a0], a
    rst $38
    cp a
    cp a
    add b
    ld a, a
    rst $38
    rst $38
    db $fd
    add c
    rst $38
    dec a
    rst $20
    push hl
    rlca
    rst $38
    dec b
    rlca
    dec b
    rst $38
    db $fd
    db $fd
    ld bc, $01fe
    rst $38
    nop
    nop
    nop
    rst $38
    jp $5a3c


    and l
    inc a
    jp $c33c


    rst $38
    cpl
    rst $18
    or a
    ld [hl], b
    ld e, a
    rst $00
    cp b
    sbc b
    cp $f0
    push hl
    db $f4
    ei
    db $ed
    ld c, $fa
    db $e3
    dec e
    rst $38
    add hl, de
    ldh [$a0], a
    db $e3
    and e
    rst $20
    and h
    rst $38
    rst $38
    cp h
    cp l
    add c
    ld a, [hl]
    ld a, [$fa7e]
    cp l
    rst $38
    add c
    rlca
    dec b
    rst $00
    push bc
    rst $20
    dec h
    rst $20
    rst $38
    dec h
    rst $00
    push bc
    rrca
    add hl, bc
    dec c
    add hl, bc
    rst $00
    rst $38
    push bc
    rst $38
    cp h
    rst $20
    and h
    db $e3
    and e
    ldh [rIE], a
    and b
    cp b
    sbc b
    ld e, a
    rst $00
    or a
    ld [hl], b
    rst $08
    db $fd
    ccf
    db $e4
    db $e3
    rlca
    dec b
    dec e
    add hl, de
    ld a, [$0fe3]
    db $ed
    ld c, $f3
    db $fc
    nop
    nop
    nop
    rst $38
    jp $5a3c


    and l
    inc a
    jp $c33c


    rst $38
    ccf
    jp $5ca5


    srl c
    adc $3a
    cp $f0
    push hl
    ld hl, sp-$01
    push af
    ld b, $ff
    db $f4
    rra
    rst $38
    inc d
    sub $32
    ld e, h
    or h
    inc l
    db $e4
    jr c, @+$01

    add sp, $59
    ret


    ld [hl], c
    pop de
    or e
    sub e
    db $e3
    ld a, a
    and e
    rra
    inc d
    ld e, $15
    inc e
    rla
    cp $e1
    rst $38
    ld e, $17
    dec e
    ld de, $1d1f
    ldh [$a0], a
    rst $38
    ldh [$a0], a
    rst $38
    cp a
    cp a
    add c
    rst $38
    db $fd
    rst $30
    and a
    ld e, l
    push bc
    cp c
    ldh [rTAC], a
    dec b
    rlca
    dec b
    rst $38
    rra
    dec e
    dec e
    ld de, $131a
    db $fd
    or $0f
    rst $30
    inc b
    ei
    db $fc
    nop
    nop
    nop
    rst $38
    jp $5a3c


    and l
    inc a
    jp $c33c


    rst $38
    ld a, a
    rst $38
    cp a
    add b
    rst $38
    cp a
    ldh [$a0], a
    cp $f0
    push hl
    cp $ff
    db $fd
    ld bc, $fdff
    rlca
    rst $38
    dec b
    ldh [$a0], a
    rst $20
    and a
    rst $20
    and h
    rst $20
    rst $38
    and a
    ldh [$a0], a
    ldh [$a0], a
    cp a
    sbc a
    cp a
    rst $38
    add b
    rlca
    dec b
    rst $38
    db $fd
    db $fd
    ld bc, $fffa
    db $e3
    dec e
    add hl, de
    rlca
    dec b
    rst $00
    push bc
    rst $20
    rst $38
    dec h
    rst $38
    cp h
    rst $20
    and h
    db $e3
    and e
    ldh [rIE], a
    and b
    cp b
    sbc b
    ld e, a
    rst $00
    or a
    ld [hl], b
    rst $08
    rst $38
    ccf
    rst $20
    dec h
    rst $20
    dec h
    rst $00
    push bc
    rlca
    rst $38
    dec b
    dec e
    add hl, de
    ld a, [$ede3]
    ld c, $f3
    ld bc, $00fc
    nop
    nop
    rst $38
    jp $5a3c


    and l
    inc a
    jp $c33c


    rst $38
    cpl
    rst $18
    or a
    ld [hl], b
    ld e, a
    rst $00
    cp b
    sbc b
    cp $f0
    push hl
    db $f4
    ei
    db $ed
    ld c, $fa
    db $e3
    dec e
    ld a, a
    add hl, de
    ldh [$a0], a
    db $e3
    and e
    rst $20
    and h
    cp $e0
    rst $30
    and a
    db $e4
    and h
    db $f4
    pop hl
    rlca
    dec b
    rst $00
    push bc
    rra
    rst $38
    dec a
    db $fd
    ld bc, $e4fb
    ldh [$f4], a
    pop hl
    db $e4
    pop hl
    rst $38
    db $e3
    and e
    ldh [$a0], a
    cp b
    sbc b
    ld e, a
    rst $00
    rst $38
    or a
    ld [hl], b
    rst $08
    ccf
    rst $20
    dec h
    rst $20
    dec h
    rst $38
    rst $00
    push bc
    rlca
    dec b
    dec e
    add hl, de
    ld a, [$0fe3]
    db $ed
    ld c, $f3
    db $fc
    nop
    nop
    nop
    rst $38
    jp $5a3c


    and l
    inc a
    jp $c33c


    rst $38
    ld a, a
    rst $38
    cp a
    add b
    rst $38
    cp a
    ldh [$a0], a
    cp $f0
    push hl
    cp $ff
    db $fd
    ld bc, $fdff
    rlca
    rst $38
    dec b
    ldh [$a0], a
    db $e3
    and e
    db $e3
    and d
    rst $38
    rst $38
    cp [hl]
    cp a
    add b
    ld a, a
    db $fd
    rst $00
    dec a
    set 7, a
    add hl, sp
    rlca
    dec b
    rst $00
    push bc
    rst $00
    ld b, l
    adc l
    rst $38
    adc c
    sbc d
    sub e
    dec e
    ld d, $37
    inc h
    dec sp
    ld a, a
    inc l
    adc $3a
    ld e, [hl]
    xor d
    ld a, $ca
    cp $e1
    rst $38
    xor a
    ld e, e
    srl b
    rst $00
    ccf
    dec sp
    inc l
    rst $38
    ld l, d
    ld c, l
    ld [hl], h
    ld e, e
    ld a, h
    ld d, e
    ld a, h
    ld d, e
    ccf
    push af
    jp c, $1cd3

    db $e3
    db $fc
    nop
    nop
    nop
    rst $38
    jp $5a3c


    and l
    inc a
    jp $c33c


    rst $38
    cpl
    rst $18
    or a
    ld [hl], b
    ld e, a
    rst $00
    cp b
    sbc b
    cp $f0
    push hl
    db $f4
    ei
    db $ed
    ld c, $fa
    db $e3
    dec e
    rst $38
    add hl, de
    ldh [$a0], a
    db $e3
    and e
    rst $20
    and h
    rst $20
    rst $38
    and h
    db $e3
    and e
    ldh a, [$90]
    or b
    sub b
    db $e3
    rst $38
    and e
    rlca
    dec b
    rst $00
    push bc
    rst $20
    dec h
    rst $20
    ld a, a
    dec h
    rst $00
    push bc
    rrca
    add hl, bc
    dec c
    add hl, bc
    db $f4
    ldh [$fe], a
    db $e4
    ld [c], a
    ldh [$a0], a
    cp b
    sbc b
    ld e, a
    rst $00
    or a
    rst $30
    ld [hl], b
    rst $08
    ccf
    db $e4
    db $e3
    rlca
    dec b
    dec e
    add hl, de
    ccf
    ld a, [$ede3]
    ld c, $f3
    db $fc
    nop
    nop
    nop
    rst $38
    jp $5a3c


    and l
    inc a
    jp $c33c


    rst $38
    cpl
    rst $18
    or a
    ld [hl], b
    ld e, a
    rst $00
    cp b
    sbc b
    cp $f0
    push hl
    db $f4
    ei
    db $ed
    ld c, $fa
    db $e3
    dec e
    rst $38
    add hl, de
    ldh [$a0], a
    db $e3
    and e
    rst $20
    and h
    rst $20
    rst $38
    and h
    db $e3
    and e
    ldh [$a0], a
    cp b
    sbc b
    rst $18
    rst $38
    rst $00
    rlca
    dec b
    rst $00
    push bc
    rst $20
    dec h
    rst $20
    rst $38
    dec h
    rst $00
    push bc
    rlca
    dec b
    daa
    dec h
    rst $20
    rst $18
    push hl
    cp a
    add b
    rst $38
    cp h
    db $e4
    db $e3
    ld e, a
    rst $00
    rst $28
    or a
    ld [hl], b
    rst $08
    ccf
    db $e4
    push hl
    dec e
    add hl, de
    ld a, [$e31f]
    db $ed
    ld c, $f3
    db $fc
    nop
    nop
    nop

Call_00b_6c79:
    call Call_000_0341
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $6cae
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $9100
    ld bc, $0008
    call Call_000_2096
    ld hl, $d080
    ld de, $9200
    ld bc, $0008
    call Call_000_2096
    call Call_000_0371
    call Call_000_2e3b
    ret


    rst $38
    cp a
    ld a, a
    ld a, [hl]
    ret nz

    ld e, a
    ret nz

    ccf
    ldh [rIE], a
    ccf
    ldh [$bf], a
    ld h, e
    cp $23
    rst $38
    ld [hl+], a
    rst $38
    ld b, e
    cp h
    sbc d
    push hl
    ld l, h
    ld [hl], e
    call nc, $ff1b
    add sp, $0f
    ld [hl], l
    ld b, $bb
    add d
    ld a, a
    jp nz, Jump_00b_7fff

    rst $38
    rst $38
    add b
    cp a
    add b
    ld a, a
    ret nz

    rst $38
    ld a, a
    rst $00
    db $fc
    ld b, a
    db $fd
    ld b, a
    cp $46
    rst $38
    jp $b2fc


    dec a
    add sp, $0f
    db $f4
    rlca
    rst $38
    ld a, d
    inc bc
    rst $38
    jp nz, $c2fb

    db $fd
    ld b, $ff
    jp Jump_00b_5d3f


    and h
    scf
    call z, $c83b
    rst $38
    cpl
    ret c

    or a
    ld d, b
    rst $18
    ld sp, $21ed
    rst $38
    jp $bafc


    dec h
    db $ec
    inc sp
    call c, $ff13
    db $f4
    dec de
    db $ed
    ld a, [bc]
    ei
    adc h
    rst $30
    add h
    rst $38
    ld [hl], e
    db $fc
    ld [$f88d], a
    adc a
    db $f4
    add a
    rst $38
    cp h
    add a
    ld a, e
    jp nz, Jump_00b_43df

    cp [hl]
    ld h, d
    cp a
    adc $3f
    ld d, a
    or c
    ccf
    pop de
    cp $e1
    sbc a
    rst $38
    ld [hl], c
    ld l, l
    and c
    cp [hl]
    db $e3
    rst $38
    ld [hl+], a
    ld a, [hl]
    rst $30
    and e
    ccf
    db $e3
    add b
    ld [c], a
    ld h, b
    cp $20
    rst $18
    rst $38
    ccf
    ld a, a
    jp nz, $83ba

    ld [hl], h
    rlca
    add sp, -$01
    rrca
    call nc, $a51b
    ld a, [hl-]
    jp $43fc


    rst $30
    cp h
    rst $38
    ld b, b
    add h
    ldh [$c0], a
    ld a, l
    call nz, $ff7f
    rst $00
    db $f4
    ld b, a
    ei
    ld c, h
    or e
    ld a, h
    rst $30
    rst $28
    inc b
    jp c, $f41d

    ld h, d
    ldh [$74], a
    rlca
    or l
    rst $38
    add [hl]
    ld c, e
    call z, Call_00b_7cb3
    cp [hl]
    ld h, d
    ld e, a
    cp $e0
    ldh [$7e], a
    ret nz

    or a
    add a
    db $fd
    adc d
    db $eb
    rst $38
    adc h
    ld [hl], e
    db $fc
    db $fd
    ld b, $fa
    inc bc
    cp $ff
    inc bc
    db $fd
    pop hl
    cpl
    pop hl
    sbc a
    ld [hl], c
    rst $10
    rst $38
    ld sp, $3fce
    rst $38
    ld [hl+], a
    ld a, a
    and b
    cpl
    rst $38
    ldh [$1f], a
    ldh a, [$3f]
    ret nc

    or a
    ld d, b
    jp z, Jump_000_38ff

    rst $00
    ccf
    ld a, a
    ld h, d
    sbc $03
    ld a, [$03ff]
    db $fc
    rlca
    db $fc
    rlca
    ld [hl], l
    ld b, $ab
    nop
    ret nc

    ldh [rP1], a
    nop
    nop

Call_00b_6dc7:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    push de
    push hl
    push hl
    ld h, d
    ld l, e
    call Call_00b_48ea
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    call Call_00b_48ea
    pop bc
    push hl
    push de
    push bc
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ld c, b
    ld b, $00

jr_00b_6deb:
    push af
    push bc
    push de
    push hl
    call MemCopy
    pop hl
    pop de
    pop bc
    pop af
    push bc
    ld bc, $0040
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    add hl, bc
    pop bc
    dec a
    jr nz, jr_00b_6deb

    pop bc
    pop de
    pop hl
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ld c, b
    ld b, $00

jr_00b_6e13:
    push af
    push bc
    push de
    push hl
    call MemCopy
    pop hl
    pop de
    pop bc
    pop af
    push bc
    ld bc, $0040
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    add hl, bc
    pop bc
    dec a
    jr nz, jr_00b_6e13

    pop hl
    pop de
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, e
    ld c, l
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00b_7cb3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00b_7fff:
    rst $38
