INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    db $2b, $43, $76, $42, $a4, $44

    jr z, jr_013_404d

    db $f6, $55, $ee, $49, $44, $70, $a2, $70

    xor b
    ld b, d
    ld l, l
    ld b, h

Call_013_4014:
    ldh a, [$b0]
    or a
    jp nz, Jump_013_4077

    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0100
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0101
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0102
    call Call_013_49ee
    ld de, $d700

jr_013_404d:
    call Call_000_069a
    ld hl, $0003
    call Call_013_49ee
    ld de, $d800
    call Call_000_069a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0103
    call Call_013_49ee
    ld de, $dc00
    ld c, $20
    call Call_000_0749
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Jump_013_4077:
    cp $01
    jr nz, jr_013_40be

    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0301
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0302
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0303
    call Call_013_49ee
    ld de, $d700
    call Call_000_069a
    ld hl, $0202
    call Call_013_49ee
    ld de, $d800
    call Call_000_069a
    ret


jr_013_40be:
    cp $03
    jr nz, jr_013_40c3

    ret


jr_013_40c3:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_013_40ca:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ldh [rVBK], a
    ldh a, [$b0]
    or a
    jr nz, jr_013_40f4

    ld hl, $0001
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld hl, $0000
    call Call_013_49ee
    ld de, $c600
    ld c, $40
    call Call_000_06c2
    ret


jr_013_40f4:
    cp $01
    jr nz, jr_013_411c

    ld hl, $0200
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld hl, $464b
    ld de, $dc00
    call Call_000_1f2f
    ld hl, $0300
    call Call_013_49ee
    ld de, $c600
    ld c, $40
    call Call_000_06c2
    ret


jr_013_411c:
    ret


Call_013_411d:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$b0]
    or a
    jp z, Jump_013_412f

    ld hl, $0000
    jp Jump_013_416b


Jump_013_412f:
    ld hl, $d42e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld de, $c320
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld [$c324], a
    push hl
    ld hl, $d430
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld de, $c322
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld [$c325], a
    pop de
    ld c, l
    ld a, h
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld c, e
    ld a, d
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld l, h
    ld h, d

Jump_013_416b:
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

jr_013_41a2:
    ld c, $16
    push de
    push hl

jr_013_41a6:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, l
    and $3f
    jr nz, jr_013_41b6

    push de
    ld de, $ffc0
    add hl, de
    pop de
    jr jr_013_41bb

jr_013_41b6:
    ld a, e
    and $1f
    jr nz, jr_013_41c3

jr_013_41bb:
    push hl
    ld hl, $ffe0
    add hl, de
    ld e, l
    ld d, h
    pop hl

jr_013_41c3:
    dec c
    jr nz, jr_013_41a6

    pop hl
    ld a, $40
    add l
    ld l, a
    jr nc, jr_013_41d4

    ld a, h
    inc a
    and $0f
    or $d0
    ld h, a

jr_013_41d4:
    pop de
    ld a, $20
    add e
    ld e, a
    jr nc, jr_013_41e0

    ld a, d
    inc a
    res 2, a
    ld d, a

jr_013_41e0:
    dec b
    jr nz, jr_013_41a2

    pop de
    pop hl
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ldh [rVBK], a
    ld b, $14

jr_013_41f0:
    ld c, $16
    push de
    push hl

jr_013_41f4:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, l
    and $3f
    jr nz, jr_013_4204

    push de
    ld de, $ffc0
    add hl, de
    pop de
    jr jr_013_4209

jr_013_4204:
    ld a, e
    and $1f
    jr nz, jr_013_4211

jr_013_4209:
    push hl
    ld hl, $ffe0
    add hl, de
    ld e, l
    ld d, h
    pop hl

jr_013_4211:
    dec c
    jr nz, jr_013_41f4

    pop hl
    ld a, $40
    add l
    ld l, a
    jr nc, jr_013_4222

    ld a, h
    inc a
    and $0f
    or $d0
    ld h, a

jr_013_4222:
    pop de
    ld a, $20
    add e
    ld e, a
    jr nc, jr_013_422e

    ld a, d
    inc a
    res 2, a
    ld d, a

jr_013_422e:
    dec b
    jr nz, jr_013_41f0

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c320
    ld de, $d432
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
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
    ldh [rSCY], a
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
    ldh [rSCX], a
    xor a
    ldh [$b9], a
    ldh [$b8], a
    ret


    ld a, [$d443]
    or a
    ret nz

    ldh [$b0], a
    rst $18

    db $00, $11

    ld hl, $d42f
    ld a, [$c321]
    cp [hl]
    jr nz, jr_013_4291

    ld hl, $d431
    ld a, [$c323]
    cp [hl]
    ret z

jr_013_4291:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_0341
    call Call_013_411d
    call Call_000_0371
    xor a
    ld [$d36c], a
    call Call_000_2e3b
    ret


    ld a, [$d443]
    ldh [$b0], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_0341
    ldh a, [$b0]
    or a
    jr nz, jr_013_42f3

    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0100
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0101
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0004
    call Call_013_49ee
    ld de, $d800
    call Call_000_069a
    jr jr_013_4317

jr_013_42f3:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0301
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0302
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a

jr_013_4317:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_013_411d
    call Call_000_0371
    xor a
    ld [$d36c], a
    call Call_000_2e3b
    ret


    ldh [$b0], a
    rst $18

    db $00, $11

    xor a
    ld [$d444], a
    xor a
    ld hl, $ca80
    ld [hl+], a
    ld [hl], a
    rst $18

    db $14, $11

    ldh a, [$b0]
    cp $04
    jp nz, Jump_013_43d6

    ld a, [$d443]
    or a
    jr z, jr_013_43a0

    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0100
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0101
    call Call_013_49ee
    ld de, $d000
    call Call_000_069a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0102
    call Call_013_49ee
    ld de, $d700
    call Call_000_069a
    ld hl, $0003
    call Call_013_49ee
    ld de, $d800
    call Call_000_069a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0103
    call Call_013_49ee
    ld de, $dc00
    ld c, $20
    call Call_000_0749

jr_013_43a0:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d328], a
    rst $18

    db $02, $04

    rst $18

    db $00, $15

    rst $18

    db $12, $11

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$b0]
    ld [$d443], a
    call Call_000_0371
    xor a
    ld [$d480], a
    rst $18

    db $0c, $12

    ld c, $10
    call Call_000_25af
    call Call_000_2625
    xor a
    ld [$d328], a
    ret


Jump_013_43d6:
    ldh a, [$b0]
    or a
    jr z, jr_013_43e3

    xor a
    ld hl, $c320
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_013_43e3:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_013_40ca
    call Call_013_4014
    ldh a, [$b0]
    ld [$d443], a
    ld a, $02
    rst $18

    db $56, $10

    call Call_000_0341
    ld a, $01
    ldh [rVBK], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $9000
    ld c, $80
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $80
    call Call_000_2096
    ld hl, $c600
    ld de, $0205
    call Call_000_056c
    ldh a, [$b0]
    cp $01
    jr nz, jr_013_442e

    call Call_013_446d

jr_013_442e:
    call Call_000_05f6
    call Call_013_411d
    ld a, [$d443]
    or a
    call nz, Call_013_70a2
    xor a
    ld [$d36c], a
    ld [$d36b], a
    call Call_000_0371
    ldh a, [$b0]
    or a
    jr nz, jr_013_445c

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0004
    call Call_013_49ee
    ld de, $d800
    call Call_000_069a

jr_013_445c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_2e3b
    ld a, [$d443]
    or a
    call z, Call_013_7076
    ret


Call_013_446d:
    push af
    push bc
    push de
    push hl
    ld a, [$c836]
    ld hl, $45ab
    and $0f
    add l
    ld l, a
    jr nc, jr_013_447e

    inc h

jr_013_447e:
    ld a, [hl]
    ld h, a
    add a
    add h
    add a
    add a
    add a
    ld hl, $45bb
    add l
    ld l, a
    jr nc, jr_013_448d

    inc h

jr_013_448d:
    push hl
    ld de, $0502
    call Call_000_056c
    pop hl
    ld de, $0010
    add hl, de
    ld de, $0a01
    call Call_000_056c
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld de, $c600
    ld hl, $ffb0
    ld a, $4e
    ld [hl+], a
    ld a, $49
    ld [hl], a
    ld b, $02
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a

jr_013_44b8:
    ld hl, $d100
    ld c, $08

jr_013_44bd:
    push bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $000a
    add hl, bc
    push hl
    ld hl, $ffb0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, l
    ldh [$b0], a
    ld a, h
    ldh [$b1], a
    pop hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $002c
    add hl, bc
    ld a, $0c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec c
    jr nz, jr_013_44bd

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    dec b
    jr nz, jr_013_44b8

    jp Jump_013_458e


    ld de, $c600
    ld b, $02
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a

jr_013_4533:
    ld hl, $d100
    ld c, $08

jr_013_4538:
    push bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $002c
    add hl, bc
    ld a, $0c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec c
    jr nz, jr_013_4538

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    dec b
    jr nz, jr_013_4533

Jump_013_458e:
    ld hl, $c600
    ld de, $b880
    ld c, $10
    call Call_000_0468
    ld hl, $c700
    ld de, $9880
    ld c, $10
    call Call_000_0468
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


    nop

    db $00

    ld bc, $0302
    inc b
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

    db $f6, $03, $8c, $03, $c8, $02, $00, $00, $c8, $02, $e6, $01, $04, $01, $00, $00
    db $fb, $21, $c8, $02, $e6, $01, $04, $01

    ld a, [$9003]
    inc bc
    jp z, Jump_000_0002

    nop
    jp z, $0802

    ld [bc], a
    ld b, [hl]
    ld bc, $0000
    ei
    ld hl, $02ca
    ld [$4602], sp
    ld bc, $03fc
    ld d, h
    inc bc
    adc [hl]
    ld [bc], a
    nop
    nop
    adc [hl]
    ld [bc], a
    jp z, Jump_000_0601

    ld bc, $0000
    ei
    ld hl, $028e
    jp z, Jump_000_0601

    ld bc, $33f4
    adc h
    dec hl
    add $22
    nop
    nop
    add $22
    db $e4
    add hl, de
    ld [bc], a
    ld de, $0000
    ei
    ld hl, $22c6
    db $e4
    add hl, de
    ld [bc], a
    ld de, $03ff
    sub h
    inc bc
    ld c, $03
    nop
    nop
    ld c, $03
    ld c, d
    ld [bc], a
    add [hl]
    ld bc, $0000
    ei
    ld hl, $030e
    ld c, d
    ld [bc], a
    add [hl]
    ld bc, $2bf4
    adc d
    inc de
    add $0a
    nop
    nop
    add $0a
    inc b
    ld [bc], a
    ld b, d
    ld bc, $0000
    ei
    ld hl, $0ac6
    inc b
    ld [bc], a
    ld b, d
    db $01

    db $ff, $ff, $ff, $ca, $80, $dd, $80, $fe, $80, $ff, $ff, $80, $f7, $88, $e7, $98
    db $fe, $81, $ff, $ff, $ff, $a6, $00, $8d, $00, $ae, $00, $ff, $7a, $00, $d7, $00
    db $df, $00, $fb, $04, $ff, $ff, $ff, $20, $00, $49, $00, $95, $00, $ff, $66, $00
    db $be, $00, $3b, $00, $ea, $00, $ff, $ff, $ff, $22, $00, $2a, $00, $51, $00, $7f
    db $94, $00, $fd, $00, $96, $00, $fb, $f0, $e0, $ff, $28, $00, $55, $00, $0a, $00
    db $a9, $00, $ed, $c5, $e2, $e0, $4d, $00, $ff, $ed, $3c, $3c, $5a, $ff, $66, $bd
    db $c3, $fd, $83, $fd, $83, $b9, $df, $c7, $42, $7e, $3c, $3c, $df, $ed, $d4, $80
    db $ff, $d4, $80, $c9, $80, $98, $80, $aa, $80, $ff, $bb, $80, $d7, $80, $db, $80
    db $24, $00, $77, $64, $00, $40, $b0, $e0, $93, $00, $91, $aa, $e0, $fd, $58, $b0
    db $e2, $42, $00, $c0, $00, $04, $00, $f5, $26, $e8, $e0, $68, $a0, $e4, $10, $00
    db $41, $00, $f7, $28, $00, $88, $da, $e0, $77, $7f, $7f, $3f, $cf, $0f, $1f, $04
    db $03, $87, $ee, $76, $e4, $80, $00, $ff, $80, $40, $f0, $10, $fb, $07, $ff, $00
    db $fe, $fe, $e3, $dd, $22, $5f, $a0, $bb, $44, $95, $ff, $6a, $0d, $f2, $a6, $59
    db $6a, $95, $31, $ff, $ce, $ed, $92, $d9, $a6, $ea, $95, $af, $ff, $d0, $8e, $f1
    db $cd, $b2, $94, $eb, $aa, $fb, $d5, $ff, $0c, $e0, $d3, $2c, $77, $88, $5e, $7f
    db $a1, $f4, $0b, $a3, $5c, $6a, $95, $c8, $e1, $ff, $6f, $90, $de, $21, $cb, $34
    db $db, $24, $ff, $35, $ca, $6b, $94, $bf, $00, $f7, $08, $ff, $76, $89, $ef, $10
    db $c6, $39, $6c, $93, $ff, $4f, $b0, $b7, $48, $7b, $00, $ed, $00, $fd, $ef, $a4
    db $e2, $ed, $12, $6f, $90, $7b, $84, $ff, $bd, $42, $ab, $54, $52, $ad, $45, $ba
    db $ff, $a4, $5b, $90, $6f, $42, $bd, $40, $bf, $ea, $f6, $c9, $7e, $00, $f0, $b7
    db $84, $c0, $f5, $80, $f7, $eb, $80, $ee, $7c, $c0, $db, $7a, $c0, $b5, $00, $a2
    db $eb, $00, $fa, $b8, $c0, $4f, $fa, $e0, $a6, $00, $bf, $ff, $00, $cb, $00, $dd
    db $00, $9f, $00, $bd, $eb, $00, $c9, $f8, $e0, $f7, $ee, $e0, $19, $00, $a8, $ff
    db $00, $75, $00, $de, $00, $4a, $00, $b2, $ff, $00, $b5, $00, $e5, $00, $22, $00
    db $a0, $ff, $00, $44, $00, $6a, $00, $f2, $00, $59, $fa, $5a, $c0, $ce, $f9, $d4
    db $38, $38, $7c, $7c, $38, $7d, $38, $dc, $d1, $89, $f6, $82, $fd, $81, $01, $c0
    db $f3, $84, $fb, $fd, $a0, $fe, $e0, $4f, $b0, $24, $db, $ff, $28, $d7, $42, $bd
    db $08, $f7, $18, $e7, $ff, $00, $ff, $02, $fd, $48, $b7, $c5, $3a, $ff, $a9, $56
    db $22, $dd, $08, $f7, $08, $f7, $ff, $00, $ff, $10, $ef, $a7, $58, $ea, $15, $ff
    db $52, $ad, $65, $9a, $22, $dd, $80, $7f, $ef, $24, $db, $04, $fb, $a8, $c3, $ef
    db $10, $be, $ff, $41, $d7, $28, $77, $88, $6c, $93, $e6, $ff, $19, $57, $a8, $8a
    db $75, $21, $de, $b5, $ff, $4a, $4d, $b2, $4a, $b5, $1a, $e5, $3c, $db, $3c, $2c
    db $fe, $ea, $34, $2c, $fe, $eb, $f7, $88, $ff, $ff, $80, $bf, $c0, $bf, $c0, $ee
    db $91, $7f, $ae, $d1, $bb, $c4, $cb, $b4, $77, $1a, $e0, $ad, $7f, $54, $c2, $7f
    db $80, $4c, $c1, $bd, $7a, $a0, $3f, $ba, $00, $e0, $fd, $9a, $c2, $bf, $40, $de
    db $fa, $c0, $e7, $f0, $84, $a0, $30, $c1, $82, $a0, $e6, $c0, $f7, $00, $a5, $00
    db $d5, $bb, $76, $a0, $de, $1e, $c0, $fd, $80, $ae, $78, $78, $ff, $7f, $47, $6f
    db $51, $6f, $51, $6b, $55, $ff, $5b, $7d, $57, $77, $50, $70, $70, $50, $b8, $fe
    db $e1, $fb, $e2, $f4, $e2, $88, $80, $a0, $fe, $e0, $c4, $ff, $80, $cd, $80, $80
    db $80, $a2, $80, $a8, $75, $80, $3f, $a1, $40, $3a, $a2, $22, $00, $20, $ab, $b5
    db $fe, $1a, $a8, $14, $03, $2f, $1f, $75, $38, $6b, $ff, $74, $65, $fa, $e7, $ff
    db $ff, $ff, $78, $ff, $ff, $28, $c0, $f2, $f8, $0e, $fc, $96, $37, $6e, $c6, $3f
    db $f0, $e1, $1e, $ff, $02, $eb, $00, $ed, $ff, $24, $3c, $9e, $e1, $ab, $d4, $ca
    db $b5, $ef, $94, $eb, $84, $fb, $7a, $c1, $ff, $ff, $fd, $ff, $02, $bf, $40, $95
    db $6a, $e5, $1a, $aa, $d7, $55, $52, $ad, $93, $80, $ff, $70, $a1, $df, $20, $ff
    db $9d, $62, $7d, $82, $d2, $2d, $09, $f6, $fc, $f0, $e1, $36, $a1, $df, $20, $f7
    db $08, $be, $41, $fb, $19, $e6, $f0, $e3, $bd, $42, $bf, $40, $ef, $1f, $10, $fb
    db $04, $35, $ca, $d1, $e0, $7e, $8c, $14, $e9, $1e, $f4, $ed, $f8, $f8, $70, $70
    db $00, $00

    nop

    db $0d, $0d, $0d, $0d, $0d, $2d, $2d, $2d, $2d, $2d, $0d, $0d, $0d, $0d, $0d, $2d
    db $2d, $2d, $2d, $2d, $0d, $0d, $0d, $0d, $0d, $2d, $2d, $2d, $2d, $2d, $0e, $0e
    db $0e, $0e, $0e, $0e, $2e, $2e, $2e, $2e, $0e, $0e, $0e, $0e, $0e, $2e, $2e, $2e
    db $2e, $2e, $0e, $0e, $0e, $0e, $0e, $2e, $2e, $2e, $2e, $2e, $0e, $0e, $0e, $0e
    db $0e, $2e, $2e, $2e, $2e, $2e, $0e, $0e, $0e, $0e, $0e, $2e, $2e, $2e, $2e, $2e
    db $c0, $c1, $c2, $c3, $c4, $c4, $c3, $c2, $c1, $c0, $d0, $d1, $d2, $d3, $d4, $d4
    db $d3, $d2, $d1, $d0, $e0, $e1, $e2, $e3, $e4, $e4, $e3, $e2, $e1, $e0, $f0, $f1
    db $f2, $f3, $f4, $f5, $f3, $f2, $f1, $f0, $c8, $c9, $ca, $cb, $cc, $cc, $cb, $ca
    db $c9, $c8, $d8, $d9, $da, $db, $dc, $dc, $db, $da, $d9, $d8, $e8, $e9, $ea, $eb
    db $ec, $ec, $eb, $ea, $e9, $e8, $f8, $f9, $fa, $fb, $fc, $fc, $fb, $fa, $f9, $f8

Call_013_49ee:
    ld a, l
    push af
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d320]
    ld d, $00
    ld e, h
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, de
    ld de, $4a16
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ret


    inc c
    ld d, h
    ld [bc], a
    ld e, [hl]
    nop
    ld d, l
    nop
    ld d, [hl]
    ld c, $54
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    ld [bc], a
    ld [hl], b
    ld a, [bc]
    ld d, l
    jr jr_013_4a8b

    ld a, [bc]
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, e
    ld [$0a70], sp
    ld d, l
    inc c
    ld l, a
    inc c
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld d, e
    ld [bc], a
    ld [hl], c
    ld a, [bc]
    ld d, l
    inc c
    ld h, h
    ld c, $53
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld b, $71
    ld a, [bc]
    ld d, l
    ld c, $64
    ld [bc], a
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld [$0c54], sp
    ld e, a
    ld c, $70
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc b
    ld d, h
    inc c
    ld e, a
    ld b, $54
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld [$0a53], sp

jr_013_4a8b:
    ld d, l
    ld [$0455], sp
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    inc b
    ld e, a
    inc b
    ld d, l
    ld c, $5e
    ld a, [bc]
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld [$026e], sp
    ld d, l
    jr jr_013_4b07

    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $50, $00, $61, $00, $55, $02, $56, $04, $50

    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $50, $02, $61, $00, $55, $04, $56, $04, $50

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc b
    ld h, c
    nop
    ld d, l
    ld b, $56
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld b, $61
    nop
    ld d, l
    ld [$0456], sp
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld [$0061], sp
    ld d, l
    ld a, [bc]
    ld d, [hl]
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_4b07:
    ld d, b
    ld a, [bc]
    ld h, c
    nop
    ld d, l
    inc c
    ld d, [hl]
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld h, b
    nop
    ld d, l
    ld c, $56
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ld h, d
    nop
    ld d, l
    db $10
    ld d, [hl]
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld [bc], a
    ld h, d
    nop
    ld d, l
    ld [de], a
    ld d, [hl]
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc b
    ld h, d
    nop
    ld d, l
    inc d
    ld d, [hl]
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld b, $62
    nop
    ld d, l
    ld d, $56
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld [$0062], sp
    ld d, l
    jr jr_013_4bc4

    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld h, d
    nop
    ld d, l
    ld a, [de]
    ld d, [hl]
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc c
    ld h, d
    ld [bc], a
    ld d, l
    inc e
    ld d, [hl]
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ld h, e
    nop
    ld d, l
    ld e, $56
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld [bc], a
    ld h, e
    nop
    ld d, l
    nop
    ld d, a
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc b
    ld h, e
    nop
    ld d, l
    ld [bc], a
    ld d, a
    inc b
    ld d, b
    nop
    nop
    nop
    nop

jr_013_4bc4:
    nop
    nop
    nop
    ld d, b
    ld b, $63
    nop
    ld d, l
    inc b
    ld d, a
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld [$0063], sp
    ld d, l
    ld b, $57
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld a, [bc]
    ld h, e
    nop
    ld d, l
    ld [$0657], sp
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    nop
    ld h, h
    nop
    ld d, l
    ld a, [bc]
    ld d, a
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld [bc], a
    ld h, h
    nop
    ld d, l
    inc c
    ld d, a
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    inc b
    ld h, h
    ld [bc], a
    ld d, l
    ld c, $57
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld b, $64
    nop
    ld d, l
    db $10
    ld d, a
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld [$0064], sp
    ld d, l
    ld [de], a
    ld d, a
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld a, [bc]
    ld h, h
    nop
    ld d, l
    inc d
    ld d, a
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    nop
    ld h, l
    nop
    ld d, l
    ld d, $57
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld [bc], a
    ld h, l
    nop
    ld d, l
    jr jr_013_4cc5

    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    inc b
    ld h, l
    nop
    ld d, l
    ld a, [de]
    ld d, a
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld b, $65
    nop
    ld d, l
    nop
    ld e, b
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld [$0065], sp
    ld d, l
    ld [bc], a
    ld e, b
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld [$006a], sp
    ld d, l
    inc b
    ld e, b
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    nop
    ld h, [hl]
    nop
    ld d, l
    ld b, $58
    ld b, $50
    nop
    nop
    nop
    nop
    nop

jr_013_4cc5:
    nop
    ld [bc], a
    ld d, b
    ld [bc], a
    ld h, [hl]
    nop
    ld d, l
    ld [$0658], sp
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    inc b
    ld h, [hl]
    nop
    ld d, l
    ld a, [bc]
    ld e, b
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld b, $66
    nop
    ld d, l
    inc c
    ld e, b
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc b
    ld h, a
    nop
    ld d, l
    ld c, $58
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld b, $67
    nop
    ld d, l
    db $10
    ld e, b
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld [$0067], sp
    ld d, l
    ld [de], a
    ld e, b
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    ld l, b
    nop
    ld d, l
    inc d
    ld e, b
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld [bc], a
    ld l, b
    nop
    ld d, l
    ld d, $58
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc b
    ld l, b
    nop
    ld d, l
    nop
    ld e, c
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld b, $68
    nop
    ld d, l
    ld [bc], a
    ld e, c
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld [$0068], sp
    ld d, l
    inc b
    ld e, c
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    ld l, c
    nop
    ld d, l
    ld b, $59
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld [bc], a
    ld l, c
    nop
    ld d, l
    ld [$0459], sp
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc b
    ld l, c
    nop
    ld d, l
    ld a, [bc]
    ld e, c
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld b, $69
    nop
    ld d, l
    inc c
    ld e, c
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld a, [bc]
    ld h, [hl]
    nop
    ld d, l
    ld c, $59
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    ld l, d
    nop
    ld d, l
    db $10
    ld e, c
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld [bc], a
    ld l, d
    nop
    ld d, l
    ld [de], a
    ld e, c
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc b
    ld l, d
    nop
    ld d, l
    inc d
    ld e, c
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld b, $6a
    nop
    ld d, l
    ld d, $59
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld a, [bc]
    ld h, l
    nop
    ld d, l
    ld c, $52
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    nop
    ld l, e
    nop
    ld d, l
    nop
    ld e, d
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld [bc], a
    ld l, e
    nop
    ld d, l
    ld [bc], a
    ld e, d
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    inc b
    ld l, e
    nop
    ld d, l
    inc b
    ld e, d
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld b, $6b
    nop
    ld d, l
    ld b, $5a
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld [$006b], sp
    ld d, l
    ld [$065a], sp
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld a, [bc]
    ld l, l
    nop
    ld d, l
    ld a, [bc]
    ld e, d
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld b, $53
    nop
    ld d, l
    inc c
    ld e, d
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    nop
    ld l, h
    nop
    ld d, l
    ld c, $5a
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld [bc], a
    ld l, h
    nop
    ld d, l
    db $10
    ld e, d
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    inc b
    ld l, h
    nop
    ld d, l
    ld [de], a
    ld e, d
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld b, $6c
    nop
    ld d, l
    inc d
    ld e, d
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld [$006c], sp
    ld d, l
    ld d, $5a
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld a, [bc]
    ld l, h
    ld [bc], a
    ld d, l
    jr jr_013_4f38

    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    nop
    ld l, l
    nop
    ld d, l
    inc c
    ld d, b
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld [bc], a
    ld l, l
    nop
    ld d, l
    ld c, $50
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    inc b
    ld l, l
    nop
    ld d, l
    inc c
    ld d, c
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld b, $6d
    nop
    ld d, l
    ld c, $51
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld [$006d], sp
    ld d, l
    nop
    ld e, e
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d

jr_013_4f38:
    ld a, [bc]
    ld l, e
    nop
    ld d, l
    ld [bc], a
    ld e, e
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld b, $55
    nop
    ld d, l
    inc b
    ld e, e
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    nop
    ld l, [hl]
    nop
    ld d, l
    ld b, $5b
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld [$0071], sp
    ld d, l
    ld [$045b], sp
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld [bc], a
    ld l, [hl]
    nop
    ld d, l
    ld a, [bc]
    ld e, e
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld a, [bc]
    ld [hl], c
    ld [bc], a
    ld d, l
    inc c
    ld e, e
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    inc b
    ld l, [hl]
    nop
    ld d, l
    ld c, $5b
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld b, $6e
    ld [bc], a
    ld d, l
    db $10
    ld e, e
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld [$006f], sp
    ld d, l
    ld [de], a
    ld e, e
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    nop
    ld l, a
    nop
    ld d, l
    inc d
    ld e, e
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld [bc], a
    ld l, a
    nop
    ld d, l
    ld d, $5b
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    inc b
    ld l, a
    nop
    ld d, l
    jr @+$5d

    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld b, $5f
    ld [bc], a
    ld d, l
    inc c
    ld h, e
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld b, $6f
    nop
    ld d, l
    ld a, [bc]
    ld e, [hl]
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld [$005f], sp
    ld d, l
    inc c
    ld e, [hl]
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld a, [bc]
    ld l, a
    nop
    ld d, l
    inc c
    ld d, d
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    inc b
    ld e, [hl]
    ld [bc], a
    ld d, l
    nop
    ld e, h
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld b, $5e
    nop
    ld d, l
    ld [bc], a
    ld e, h
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    inc b
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld b, $5c
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    inc b
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld b, $5c
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld [$065c], sp
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld a, [bc]
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld [$065c], sp
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld a, [bc]
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$025e], sp
    ld d, l
    ld c, $5c
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    inc c
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$025e], sp
    ld d, l
    ld c, $5c
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    inc c
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$025e], sp
    ld d, l
    inc d
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld [de], a
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$025e], sp
    ld d, l
    inc d
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    db $10
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld [de], a
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    db $10
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld [$0266], sp
    ld d, l
    ld [bc], a
    ld d, [hl]
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld [$0069], sp
    ld d, l
    inc b
    ld d, [hl]
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    ld h, a
    nop
    ld d, l
    ld b, $56
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld [bc], a
    ld h, a
    nop
    ld d, l
    ld [$0656], sp
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    inc b
    ld h, b
    nop
    ld d, l
    nop
    ld e, [hl]
    inc b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld b, $60
    nop
    ld d, l
    ld a, [bc]
    ld e, a
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld [$0060], sp
    ld d, l
    nop
    ld e, l
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    ld d, l
    ld [bc], a
    ld e, l
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    ld [bc], a
    ld [hl], b
    inc b
    ld d, l
    inc b
    ld e, l
    ld a, [bc]
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    inc b
    ld [hl], b
    nop
    ld d, l
    ld b, $5d
    ld b, $50
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, b
    ld b, $70
    nop
    ld d, l
    ld [$065d], sp
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, e
    ld [$0470], sp
    ld d, l
    ld a, [bc]
    ld e, l
    inc c
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld a, [bc]
    ld [hl], b
    nop
    ld d, l
    inc c
    ld e, l
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    ld [hl], c
    nop
    ld d, l
    ld c, $5d
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld d, e
    ld [bc], a
    ld [hl], c
    inc b
    ld d, l
    db $10
    ld e, l
    ld c, $53
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld [$006e], sp
    ld d, l
    ld [de], a
    ld e, l
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    inc b
    ld [hl], c
    nop
    ld d, l
    inc d
    ld e, l
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld b, $71
    inc b
    ld d, l
    ld d, $5d
    ld [bc], a
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc b
    ld d, h
    inc c
    ld e, a
    inc c
    ld [hl], b
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc c
    ld c, b
    ld [bc], a
    ld d, l
    ld a, [bc]
    ld l, b
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc c
    ld c, b
    ld [bc], a
    ld d, l
    ld a, [bc]
    ld l, b
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    inc b
    ld e, a
    inc b
    ld d, l
    ld c, $5e
    ld a, [bc]
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    inc b
    ld e, a
    inc b
    ld d, l
    ld c, $5e
    ld a, [bc]
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    inc b
    ld e, a
    inc b
    ld d, l
    ld c, $5e
    ld a, [bc]
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    inc b
    ld e, a
    inc b
    ld d, l
    ld c, $5e
    ld a, [bc]
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    inc b
    ld e, a
    inc b
    ld d, l
    ld c, $5e
    ld a, [bc]
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    inc b
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld b, $5c
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld [$065c], sp
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld a, [bc]
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    inc c
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$025e], sp
    ld d, l
    ld c, $5c
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    ld [de], a
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$025e], sp
    ld d, l
    inc d
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, d
    ld [$005e], sp
    ld d, l
    db $10
    ld e, h
    ld b, $52
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld a, [bc]
    ld d, h
    inc c
    ld e, a
    ld a, [de]
    ld e, e
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, e
    ld [$0470], sp
    ld d, l
    ld a, [bc]
    ld e, l
    inc c
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, e
    ld [$0470], sp
    ld d, l
    ld a, [bc]
    ld e, l
    inc c
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld a, [bc]
    ld [hl], b
    nop
    ld d, l
    inc c
    ld e, l
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    ld [hl], c
    nop
    ld d, l
    ld c, $5d
    inc b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld d, e
    ld [bc], a
    ld [hl], c
    inc b
    ld d, l
    db $10
    ld e, l
    ld c, $53
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    ld [$006e], sp
    ld d, l
    ld [de], a
    ld e, l
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    inc b
    ld [hl], c
    nop
    ld d, l
    inc d
    ld e, l
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld b, $71
    inc b
    ld d, l
    ld d, $5d
    ld [bc], a
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc c
    ld c, b
    ld [bc], a
    ld d, l
    ld a, [bc]
    ld l, b
    inc b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, e
    ld [$0a70], sp
    ld d, l
    inc c
    ld l, a
    inc c
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, e
    ld [$0a70], sp
    ld d, l
    inc c
    ld l, a
    inc c
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, e
    ld [$0a70], sp
    ld d, l
    inc c
    ld l, a
    inc c
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, e
    ld [$0a70], sp
    ld d, l
    inc c
    ld l, a
    inc c
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, e
    ld [$0a70], sp
    ld d, l
    inc c
    ld l, a
    inc c
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld d, e
    ld [bc], a
    ld [hl], c
    ld a, [bc]
    ld d, l
    inc c
    ld h, h
    ld c, $53
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld d, e
    ld [bc], a
    ld [hl], c
    ld a, [bc]
    ld d, l
    inc c
    ld h, h
    ld c, $53
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld d, e
    ld [bc], a
    ld [hl], c
    ld a, [bc]
    ld d, l
    inc c
    ld h, h
    ld c, $53
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld d, e
    ld [bc], a
    ld [hl], c
    ld a, [bc]
    ld d, l
    inc c
    ld h, h
    ld c, $53
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld d, e
    ld [bc], a
    ld [hl], c
    ld a, [bc]
    ld d, l
    inc c
    ld h, h
    ld c, $53
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld b, $71
    ld a, [bc]
    ld d, l
    ld c, $64
    ld [bc], a
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld b, $71
    ld a, [bc]
    ld d, l
    ld c, $64
    ld [bc], a
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld b, $71
    ld a, [bc]
    ld d, l
    ld c, $64
    ld [bc], a
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld b, $71
    ld a, [bc]
    ld d, l
    ld c, $64
    ld [bc], a
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld b, $71
    ld a, [bc]
    ld d, l
    ld c, $64
    ld [bc], a
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, c
    inc b
    ld [hl], c
    nop
    ld d, l
    inc d
    ld e, l
    ld b, $51
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld b, $71
    inc b
    ld d, l
    ld d, $5d
    ld [bc], a
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop

    ld a, [$d320]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5884
    add hl, de
    ld a, [hl+]
    ld [$d325], a
    inc hl
    inc hl
    inc hl
    ld de, $d323
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld de, $c329
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld de, $d441
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld de, $d439
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [$c838]
    inc a

jr_013_563c:
    dec a
    jr z, jr_013_5645

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_013_563c

jr_013_5645:
    ld de, $d43d
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [$d4de]
    or a
    jr z, jr_013_566a

    ld hl, $d4df
    ld de, $d439
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a

jr_013_566a:
    ld a, [$c836]
    and $0f
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5684
    add hl, de
    ld de, $d4f3
    ld c, $02
    call Call_000_03eb
    ret


    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $11, $11, $11, $11, $40, $40, $50, $50, $50, $40, $40, $30, $30, $20, $20, $10
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    ld de, $1111
    ld de, $1111
    ld de, $4011
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
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
    ld de, $1111
    ld de, $4010
    ld b, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    jr nc, jr_013_5722

    jr nc, jr_013_5704

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_5704:
    ld de, $1111
    ld de, $5050
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    jr nc, jr_013_5741

    jr nz, jr_013_5723

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

jr_013_5722:
    nop

jr_013_5723:
    nop
    ld de, $1111
    ld de, $5020
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    jr nc, jr_013_5753

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

jr_013_5741:
    nop
    nop
    nop
    ld de, $1111
    ld de, $5030
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    jr nc, jr_013_5773

jr_013_5753:
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
    ld sp, $3131
    ld sp, $3131
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    ld b, b

jr_013_5773:
    jr nz, jr_013_5775

jr_013_5775:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3131
    ld sp, $3131
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    ld b, b
    jr nz, jr_013_5795

jr_013_5795:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3131
    ld sp, $3131
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    ld b, b
    jr nz, jr_013_57b5

jr_013_57b5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3131
    ld sp, $3131
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    ld b, b
    jr nz, jr_013_57d5

jr_013_57d5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3131
    ld sp, $3131
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    ld b, b
    jr nz, jr_013_57f5

jr_013_57f5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3131
    ld sp, $3131
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    ld b, b
    jr nz, jr_013_5815

jr_013_5815:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3131
    ld sp, $3131
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    ld b, b
    jr nz, jr_013_5835

jr_013_5835:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3131
    ld sp, $3131
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    ld b, b

jr_013_5853:
    jr nz, jr_013_5855

jr_013_5855:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3131
    ld sp, $3131
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    ld b, b
    jr nz, jr_013_5875

jr_013_5875:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$01
    stop
    jr nc, @+$44

    stop
    nop
    jr nz, jr_013_5893

jr_013_5893:
    ccf
    nop
    jr nz, jr_013_5897

jr_013_5897:
    nop
    nop
    jr nz, jr_013_589b

jr_013_589b:
    nop
    nop
    jr nz, jr_013_589f

jr_013_589f:
    nop
    nop
    jr nz, jr_013_58a3

jr_013_58a3:
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_013_58de

    rra
    dec e
    nop
    ld [hl+], a
    nop
    ld e, $e0
    ld hl, $1ec0
    ldh [rNR42], a
    ret nz

    ld e, $e0
    ld hl, $1ec0
    ldh [rNR42], a
    ret nz

    ld e, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec e
    ld e, $80

jr_013_58d1:
    jr nz, jr_013_5853

    jr nz, jr_013_5915

    rra
    ld b, b
    jr nz, jr_013_5919

    rra
    ld b, b
    jr nz, jr_013_591d

    rra

jr_013_58de:
    ld b, b
    jr nz, jr_013_5921

    rra
    ld b, b
    jr nz, jr_013_58ec

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_58ec:
    ld b, b
    ld b, b
    inc h
    rra
    add b
    dec h
    nop
    ld [hl+], a
    ret nz

    ld h, $00
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    inc e
    nop
    inc h
    nop
    rra
    add b

jr_013_5915:
    dec h
    ret nz

    dec e
    add b

jr_013_5919:
    dec h
    ret nz

    dec e
    add b

jr_013_591d:
    dec h
    ret nz

    dec e
    add b

jr_013_5921:
    dec h
    ret nz

    dec e
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld e, $04
    nop
    jr nz, jr_013_5933

jr_013_5933:
    jr c, jr_013_5935

jr_013_5935:
    jr nz, jr_013_5937

jr_013_5937:
    ld b, $00
    jr nz, jr_013_593b

jr_013_593b:
    ld b, $00
    jr nz, jr_013_593f

jr_013_593f:
    ld b, $00
    jr nz, jr_013_5943

jr_013_5943:
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    rrca
    jr nz, jr_013_58d1

    ld [hl+], a
    and b
    dec e
    nop
    db $10
    ret nz

    ld hl, $1000
    ret nz

    ld hl, $1000
    ret nz

    ld hl, $1000
    ret nz

    ld hl, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec e
    inc e
    and b
    rra
    jr nz, @+$22

    add b
    rra
    nop
    ld e, $80
    rra
    nop
    ld e, $80
    rra
    nop
    ld e, $80
    rra
    nop
    ld e, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    rra
    dec e
    nop
    ld [hl+], a
    nop
    ld e, $80
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, d
    inc h
    dec bc
    nop
    jr nz, jr_013_59b3

jr_013_59b3:
    ld a, [hl-]
    nop
    ld h, $00
    dec c
    nop
    ld h, $00
    dec c
    nop
    ld h, $00
    dec c
    nop
    ld h, $00
    dec c

    db $04

    nop
    nop
    nop

    db $76, $01, $08, $00, $36, $42, $1d, $09, $00, $20, $00, $39, $80, $1e, $00, $0a
    db $40, $1f, $c0, $0a

    add b
    ld e, $00
    ld a, [bc]
    ld b, b

jr_013_59e1:
    rra
    ret nz

    ld a, [bc]

    db $04

    nop
    nop
    nop

    db $3e, $01, $08, $00, $36, $42, $1f, $0f, $00, $20, $00, $38, $80, $22, $80, $10

    nop
    ld hl, $1100
    add b
    ld [hl+], a
    add b
    stop
    ld hl, $1100

    db $03

    nop
    nop
    nop

    db $a0, $00

    inc c
    ld b, $36
    inc a
    ld e, $17
    nop
    jr nz, jr_013_5a13

jr_013_5a13:
    inc l
    add b
    jr nz, jr_013_5a17

jr_013_5a17:
    jr @-$3e

    rra
    ret nz

    add hl, de
    add b
    jr nz, jr_013_5a1f

jr_013_5a1f:
    jr jr_013_59e1

    rra
    ret nz

    add hl, de

    db $05

    nop
    nop
    nop

    db $e0, $01

    nop
    nop
    ld b, b
    ld b, d
    ld a, [bc]
    ld b, $00
    ld sp, $3780
    ret nz

jr_013_5a35:
    inc c
    ret nz

    rlca
    nop
    inc c
    add b
    ld [$0cc0], sp
    ret nz

    rlca
    nop
    inc c
    add b
    db $08

    db $04

    nop
    nop
    nop

    db $34, $01

    ld [$3200], sp
    ld b, d
    ld e, $10
    nop
    jr nz, jr_013_5a53

jr_013_5a53:
    jr c, jr_013_5a55

jr_013_5a55:
    rra
    and b
    ld de, $2180
    ret nz

    ld de, $1f00
    and b
    ld de, $2180
    ret nz

    db $11

    db $04

    nop
    nop
    nop

    db $41, $01

    ld [$3604], sp
    ld b, h
    dec d
    dec c
    nop
    jr nz, jr_013_5a73

jr_013_5a73:
    inc sp
    ld b, b
    jr jr_013_5ab7

    ld c, $c0
    ld d, $40

jr_013_5a7b:
    rrca
    ld b, b
    jr jr_013_5abf

    ld c, $c0
    ld d, $40

jr_013_5a83:
    rrca

    db $05

    nop
    nop
    nop

    db $cd, $01

    ld [$3400], sp
    ld b, d
    ld [hl+], a
    rlca
    nop
    jr z, jr_013_5a93

jr_013_5a93:
    add hl, sp
    add b
    inc h
    nop
    ld [$2300], sp
    add b
    add hl, bc
    add b
    inc h
    nop
    ld [$2300], sp
    add b
    add hl, bc

    db $03

    nop
    nop
    nop

    db $88, $00

    inc c
    ld [$3630], sp
    dec e
    dec d
    nop
    jr nz, jr_013_5ab3

jr_013_5ab3:
    jr z, jr_013_5a35

    ld e, $00

jr_013_5ab7:
    rla
    ret nz

    jr nz, jr_013_5a7b

    ld d, $80
    ld e, $00

jr_013_5abf:
    rla
    ret nz

    jr nz, jr_013_5a83

    db $16

    db $04

    nop
    nop
    nop

    db $72, $01

    inc c
    nop
    ld [hl], $42
    jr nz, jr_013_5ad9

    nop
    add hl, de
    nop
    scf
    nop
    ld [hl+], a
    ld h, b
    dec bc
    nop

jr_013_5ad9:
    inc hl
    ld b, b
    ld a, [bc]
    nop
    ld [hl+], a
    ld h, b
    dec bc
    nop
    inc hl
    ld b, b
    ld a, [bc]

    db $04

    nop
    nop
    nop

    db $5f, $01

    ld [$3400], sp
    ld a, $1b
    inc c
    nop
    inc e
    nop
    inc sp
    add b
    inc e
    ld b, b
    ld c, $80
    dec e
    ld b, b
    rrca
    add b
    inc e
    ld b, b
    ld c, $80
    dec e
    ld b, b
    rrca

    db $05

    nop
    nop
    nop

    db $df, $01

    ld b, $00
    ld b, b
    ld b, d
    inc e
    dec b
    nop
    dec hl
    ret nz

    jr c, jr_013_5b55

    ld e, $40
    ld b, $c0
    rra
    ret nz

jr_013_5b1b:
    ld b, $40
    ld e, $40
    ld b, $c0
    rra
    ret nz

jr_013_5b23:
    db $06

    db $03

    nop
    nop
    nop

    db $95, $00

    inc c
    ld [bc], a
    ld [hl-], a
    jr c, jr_013_5b4d

    ld d, $00
    jr nz, jr_013_5b33

jr_013_5b33:
    dec hl
    ret nz

    rra
    nop
    rla
    ld b, b
    ld hl, $1880
    ret nz

    rra
    nop
    rla
    ld b, b
    ld hl, $1880

    db $04

    nop
    nop
    nop

    db $70, $01

    ld [$3400], sp

jr_013_5b4d:
    ld b, d
    rra
    add hl, bc
    nop
    dec e
    nop
    ld [hl], $80

jr_013_5b55:
    ld hl, $0a40
    nop
    jr nz, jr_013_5b1b

    ld a, [bc]
    add b
    ld hl, $0a40
    nop
    jr nz, jr_013_5b23

    ld a, [bc]

    db $04

    nop
    nop
    nop

    db $86, $01

    stop
    jr nc, jr_013_5bb0

    ld e, $07
    nop
    jr nz, jr_013_5b73

jr_013_5b73:
    add hl, sp
    add b
    ld hl, $0900
    nop
    rra
    ret nz

    ld [$2180], sp
    nop
    add hl, bc
    nop
    rra
    ret nz

    db $08

    db $04

    nop
    nop
    nop

    db $58, $01

    ld [$3200], sp
    ld b, d
    add hl, de
    dec c
    nop
    dec e
    nop
    ld a, [hl-]
    add b

jr_013_5b95:
    inc e
    nop
    ld c, $00
    ld a, [de]
    nop
    rrca
    add b
    inc e
    nop
    ld c, $00
    ld a, [de]
    nop
    rrca

    db $04

    nop
    nop
    nop

    db $5c, $01

    ld [$3800], sp
    ld b, b
    inc hl
    inc c

jr_013_5bb0:
    nop
    inc hl
    nop
    dec [hl]
    ret nz

    inc h
    ret nz

    ld c, $80
    ld h, $40
    ld c, $c0
    inc h
    ret nz

    ld c, $80
    ld h, $40
    db $0e

    db $03

    nop
    nop
    nop

    db $aa, $00

    inc c
    ld [bc], a
    inc [hl]
    ld a, $1e
    dec d
    nop
    jr nz, jr_013_5bd3

jr_013_5bd3:
    inc l
    ret nz

    rra
    and b
    ld d, $60
    ld hl, $1700
    ret nz

    rra
    and b
    ld d, $60
    ld hl, $1700

    db $05

    nop
    nop
    nop

    db $f3, $01

    ld b, $00
    inc a
    ld b, d
    add hl, de
    dec b
    nop
    rla
    ret nz

    jr c, jr_013_5bf5

jr_013_5bf5:
    ld a, [de]
    ldh [rTMA], a
    ret nz

    dec de
    ldh [rTMA], a
    nop
    ld a, [de]
    ldh [rTMA], a
    ret nz

    dec de
    ldh [rTMA], a
    inc b
    nop
    nop
    nop
    ld l, l
    ld bc, $0000
    ld b, b
    ld b, b
    rra
    ld [$2000], sp
    nop
    jr c, jr_013_5b95

    ld hl, $0a80
    and b
    ld [hl+], a
    ldh [$09], a
    add b
    ld hl, $0a80
    and b
    ld [hl+], a
    ldh [$09], a
    inc b
    nop
    nop
    nop
    ld [hl], l
    ld bc, $0000
    ld b, b
    ld a, $2d
    ld c, $00
    rrca
    nop
    ld sp, $3140
    add b
    db $10
    ret nz

    cpl
    ld b, b
    db $10
    ld b, b
    ld sp, $1080
    ret nz

    cpl
    ld b, b
    db $10
    dec b
    nop
    nop
    nop
    call c, Call_000_0201
    nop
    ld b, b
    ld b, d
    inc d
    add hl, bc
    nop
    dec [hl]
    nop
    add hl, sp
    add b
    dec d
    jr nz, jr_013_5c63

    nop
    rla
    ret nz

    ld a, [bc]
    add b
    dec d
    jr nz, @+$0d

    nop
    rla
    ret nz

jr_013_5c63:
    ld a, [bc]
    inc b
    nop
    nop
    nop
    ld h, l
    ld bc, $0008
    ld [hl], $42
    add hl, de
    dec bc
    nop
    dec de
    nop
    ld [hl], $00
    inc e
    ld b, b
    inc c
    add b
    ld a, [de]
    ldh [$0d], a
    nop
    inc e
    ld b, b
    inc c
    add b
    ld a, [de]
    ldh [$0d], a
    inc bc
    nop
    nop
    nop
    adc b
    nop
    ld [$3200], sp
    ld b, d
    inc hl
    jr jr_013_5c91

jr_013_5c91:
    add hl, de
    nop
    daa
    ld b, b
    inc h
    nop
    ld a, [de]
    nop
    ld h, $80
    ld a, [de]
    ld b, b
    inc h
    nop
    ld a, [de]
    nop
    ld h, $80
    ld a, [de]
    inc b
    nop
    nop
    nop
    ld h, a
    ld bc, $000c
    jr nc, jr_013_5cf0

    inc e
    ld a, [bc]
    nop
    ld e, $00
    add hl, sp
    ldh [rNR34], a
    nop
    dec bc
    ld h, b
    ld e, $00
    dec c
    ldh [rNR34], a
    nop
    dec bc
    ld h, b
    ld e, $00
    dec c
    dec b
    nop
    nop
    nop
    cp a
    ld bc, $0000
    ld b, b
    ld b, b
    dec l
    inc c
    ld b, b
    dec bc
    nop
    add hl, sp
    add b
    jr nc, jr_013_5cd7

jr_013_5cd7:
    dec c
    ret nz

    ld l, $c0
    ld c, $80
    jr nc, jr_013_5cdf

jr_013_5cdf:
    dec c
    ret nz

    ld l, $c0
    ld c, $03
    nop
    nop
    nop
    and b
    nop
    inc c
    inc b
    inc [hl]
    ld b, b
    dec e
    inc d

jr_013_5cf0:
    nop
    rra
    nop
    ld a, [hl+]
    add b
    rra
    nop
    dec d
    ld b, b
    ld e, $c0
    dec d
    add b
    rra
    nop
    dec d
    ld b, b
    ld e, $c0
    dec d
    inc b
    nop
    nop
    nop
    ld h, b
    ld bc, $0000
    inc [hl]
    ld b, b
    dec d
    dec c
    nop
    ld a, [de]
    nop
    dec [hl]
    ret nz

    ld d, $00
    rrca
    ld b, b
    jr jr_013_5d1b

jr_013_5d1b:
    rrca
    ret nz

    ld d, $00
    rrca
    ld b, b
    jr jr_013_5d23

jr_013_5d23:
    rrca
    inc b
    nop
    nop
    nop
    ld l, h
    ld bc, $0008
    inc [hl]
    ld b, d
    ld e, $08
    nop
    jr nz, jr_013_5d33

jr_013_5d33:
    jr c, jr_013_5d35

jr_013_5d35:
    rra
    add b
    ld a, [bc]
    add b
    ld hl, $0a40
    nop
    rra
    add b
    ld a, [bc]
    add b
    ld hl, $0a40
    inc b
    nop
    nop
    nop
    add a
    ld bc, $0008
    jr c, jr_013_5d90

    dec e
    rlca
    nop
    jr nz, jr_013_5d53

jr_013_5d53:
    ld a, [hl-]
    ld b, b
    ld e, $00
    ld a, [bc]
    add b
    rra
    jr nz, jr_013_5d65

    ld b, b
    ld e, $00
    ld a, [bc]
    add b
    rra
    jr nz, jr_013_5d6d

    inc bc

jr_013_5d65:
    nop
    nop
    nop
    and h
    nop
    ld [$3604], sp

jr_013_5d6d:
    ld b, h
    add hl, de
    dec e
    nop
    ld a, [de]
    nop
    inc [hl]
    add b
    inc e
    ret nz

    ld e, $00
    dec de
    ld h, b
    rra
    add b
    inc e
    ret nz

    ld e, $00
    dec de
    ld h, b
    rra
    dec b
    nop
    nop
    nop
    rlc c
    nop
    nop
    ld b, b
    ld b, b
    ld a, [hl+]
    rlca

jr_013_5d90:
    nop
    add hl, de
    nop
    jr c, jr_013_5dd5

jr_013_5d95:
    dec hl
    ret nz

    ld [$2e00], sp
    add b
    add hl, bc
    ld b, b
    dec hl
    nop
    ld [$2e00], sp
    add b
    add hl, bc
    inc b
    nop
    nop
    nop
    ld a, b
    ld bc, $0004
    jr nc, jr_013_5df0

    inc e
    ld [$2000], sp
    nop
    ld [hl], $80
    dec e
    nop

jr_013_5db7:
    dec bc
    ret nz

    ld e, $c0
    add hl, bc
    add b
    dec e
    nop

jr_013_5dbf:
    dec bc
    ret nz

    ld e, $c0
    add hl, bc
    inc bc
    nop
    nop
    nop
    sub l
    nop
    ld [$3600], sp
    ld b, d
    ld [hl+], a
    jr jr_013_5dd1

jr_013_5dd1:
    jr jr_013_5dd3

jr_013_5dd3:
    jr z, jr_013_5d95

jr_013_5dd5:
    dec h
    ld b, b
    ld a, [de]
    ret nz

    inc hl
    ld b, b
    ld a, [de]
    ret nz

    dec h
    ld b, b
    ld a, [de]
    ret nz

    inc hl
    ld b, b
    ld a, [de]
    inc b
    nop
    nop
    nop
    ld h, h
    ld bc, $0008
    ld [hl], $42
    ld a, [de]
    dec bc

jr_013_5df0:
    nop
    jr nz, jr_013_5df3

jr_013_5df3:
    scf
    jr nz, jr_013_5e13

    jr nz, jr_013_5e05

    ld h, b
    dec de
    ldh [$0c], a
    jr nz, @+$1f

    jr nz, jr_013_5e0d

    ld h, b
    dec de
    ldh [$0c], a
    dec b

jr_013_5e05:
    nop
    nop
    nop
    ld bc, $0402
    nop
    inc a

jr_013_5e0d:
    ld b, d
    ld de, $0008
    cpl
    nop

jr_013_5e13:
    jr c, jr_013_5e15

jr_013_5e15:
    inc d
    nop
    ld a, [bc]
    ret nz

    inc d
    jr nz, jr_013_5e27

    nop
    inc d
    nop
    ld a, [bc]
    ret nz

    inc d
    jr nz, jr_013_5e2f

    inc b
    nop
    nop

jr_013_5e27:
    nop
    ld e, a
    ld bc, $0008
    inc [hl]
    ld b, d
    dec e

jr_013_5e2f:
    add hl, bc
    nop
    rra
    nop
    scf
    nop
    jr nz, jr_013_5db7

    dec bc
    ldh [rNR34], a
    nop
    ld a, [bc]
    nop
    jr nz, jr_013_5dbf

    dec bc
    ldh [rNR34], a
    nop
    ld a, [bc]
    inc b
    nop
    nop
    nop
    ld a, h
    ld bc, $0000
    ld b, b
    ld b, b
    inc e
    dec b
    nop
    ld e, $00
    jr c, jr_013_5e55

jr_013_5e55:
    ld e, $c0

jr_013_5e57:
    dec b
    jr nz, jr_013_5e79

    ldh [rTAC], a
    nop
    ld e, $c0
    dec b
    jr nz, jr_013_5e81

    ldh [rTAC], a
    inc b
    nop
    nop
    nop
    ld [hl], c
    ld bc, $0000
    ld b, b
    ld b, b
    inc h
    add hl, bc
    nop
    inc e
    nop
    jr c, jr_013_5eb5

    daa
    nop
    ld a, [bc]
    ret nz

jr_013_5e79:
    dec h
    add b
    ld a, [bc]
    ld b, b
    daa
    nop
    ld a, [bc]
    ret nz

jr_013_5e81:
    dec h
    add b
    ld a, [bc]
    dec b
    nop
    nop
    nop
    inc c
    ld [bc], a
    nop
    nop
    ld b, b
    ld b, b
    inc c
    add hl, bc
    nop
    ld sp, $3800
    and b

jr_013_5e95:
    rrca
    ret nz

    ld a, [bc]
    ret nz

    dec c
    add b
    dec bc
    and b
    rrca
    ret nz

    ld a, [bc]
    ret nz

    dec c
    add b
    dec bc
    inc bc
    nop
    nop
    nop
    ld [hl], h
    nop
    nop
    nop
    ld b, b
    ld b, b
    rra
    dec d
    nop
    jr nz, jr_013_5eb3

jr_013_5eb3:
    ld h, $20

jr_013_5eb5:
    jr nz, jr_013_5e57

    rla
    ldh [rNR43], a
    jr nz, jr_013_5ed3

    jr nz, jr_013_5ede

    and b
    rla
    ldh [rNR43], a
    jr nz, jr_013_5edb

    inc b
    nop
    nop
    nop
    sub a
    ld bc, $0000
    ld b, b
    ld b, b
    dec h
    rlca
    nop
    jr nz, jr_013_5ed3

jr_013_5ed3:
    dec [hl]
    nop

jr_013_5ed5:
    daa
    jr nz, jr_013_5ee1

    and b
    jr z, @-$1e

jr_013_5edb:
    rlca
    nop
    daa

jr_013_5ede:
    jr nz, jr_013_5ee9

    and b

jr_013_5ee1:
    jr z, @-$1e

    rlca
    inc b
    nop
    nop
    nop
    ld a, b

jr_013_5ee9:
    ld bc, $0000
    ld b, b
    ld b, b
    ld d, $08
    nop
    dec e
    nop
    ld [hl], $00
    rla
    nop
    add hl, bc
    add b
    add hl, de
    add b
    ld a, [bc]
    nop
    rla
    nop
    add hl, bc
    add b
    add hl, de
    add b
    ld a, [bc]
    inc b
    nop
    nop
    nop
    sub c
    ld bc, $0000
    ld b, b
    ld b, b
    rra
    dec b
    nop
    ld [hl+], a
    nop
    jr c, jr_013_5e95

    ld hl, $07c0
    add b
    ld hl, $0640
    add b
    ld hl, $07c0
    add b
    ld hl, $0640
    inc bc
    nop
    nop
    nop
    xor e
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld e, $11
    nop
    jr nz, jr_013_5f33

jr_013_5f33:
    jr z, jr_013_5ed5

    jr nz, jr_013_5f57

    inc de
    nop
    ld [hl+], a
    ld b, b
    ld [de], a
    and b
    jr nz, jr_013_5f5f

    inc de
    nop
    ld [hl+], a
    ld b, b
    ld [de], a
    dec b
    nop
    nop
    nop
    db $eb
    ld bc, $0000
    ld b, b
    ld b, b
    ld hl, $0009
    dec hl
    nop
    add hl, sp
    jr nz, jr_013_5f7a

    nop

jr_013_5f57:
    ld a, [bc]
    add b
    ld [hl+], a
    add b
    ld a, [bc]
    jr nz, jr_013_5f82

    nop

jr_013_5f5f:
    ld a, [bc]
    add b
    ld [hl+], a
    add b
    ld a, [bc]
    inc b
    nop
    nop
    nop
    add d
    ld bc, $0000
    ld b, b
    ld b, b
    add hl, de
    ld [$1c00], sp
    nop
    ld a, [hl-]
    ret nz

    ld a, [de]
    ld b, b
    add hl, bc
    and b
    inc e

jr_013_5f7a:
    jr nz, jr_013_5f86

    ret nz

    ld a, [de]
    ld b, b
    add hl, bc
    and b
    inc e

jr_013_5f82:
    jr nz, jr_013_5f8e

    inc bc
    nop

jr_013_5f86:
    nop
    nop
    and h
    nop
    nop
    nop
    ld b, b
    ld b, b

jr_013_5f8e:
    dec e
    ld [de], a
    nop
    ld h, $00
    jr z, jr_013_5f95

jr_013_5f95:
    rra
    jr nz, @+$15

    add b
    rra
    nop
    inc d
    nop
    rra
    jr nz, @+$15

    add b
    rra
    nop
    inc d
    inc b
    nop
    nop
    nop
    ld h, l
    ld bc, $0000
    ld b, b
    ld b, b
    inc hl
    add hl, bc
    nop
    ld hl, $3700
    nop
    ld h, $40
    dec bc
    ld b, b
    dec h
    ret nz

jr_013_5fbb:
    add hl, bc
    nop
    ld h, $40
    dec bc
    ld b, b
    dec h
    ret nz

jr_013_5fc3:
    add hl, bc
    dec b
    nop
    nop
    nop
    ldh a, [rSB]
    nop
    nop
    ld b, b
    ld b, b
    dec hl
    inc b
    nop
    inc de
    nop
    jr c, jr_013_6035

    inc l
    jr nz, jr_013_5fde

    ldh [$2e], a
    and b
    ld b, $60
    inc l

jr_013_5fde:
    jr nz, jr_013_5fe6

    ldh [$2e], a
    and b
    ld b, $04
    nop

jr_013_5fe6:
    nop
    nop
    and d
    ld bc, $0000
    ld b, b
    ld b, b
    ld [de], a
    dec c
    nop
    dec e
    nop
    scf
    and b

jr_013_5ff5:
    dec d
    and b
    rrca
    ld h, b
    inc d
    jr nz, jr_013_600b

    and b
    dec d
    and b
    rrca
    ld h, b
    inc d
    jr nz, @+$11

    inc bc
    nop
    nop
    nop
    sub e
    nop
    nop

jr_013_600b:
    nop
    ld b, b
    ld b, b
    ld e, $15
    nop
    ld hl, $2900
    ld b, b
    ld hl, $1600
    ld b, b
    jr nz, jr_013_601b

jr_013_601b:
    rla
    ld b, b
    ld hl, $1600
    ld b, b
    jr nz, jr_013_6023

jr_013_6023:
    rla
    inc b
    nop
    nop
    nop
    adc a
    ld bc, $0000
    ld b, b
    ld b, b
    ld h, $08
    nop
    inc e
    nop
    add hl, sp
    and b

jr_013_6035:
    jr z, jr_013_6097

    add hl, bc
    add b
    jr z, jr_013_5fbb

    ld a, [bc]
    and b
    jr z, jr_013_609f

    add hl, bc
    add b
    jr z, jr_013_5fc3

    ld a, [bc]
    dec b
    nop
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    ld b, b
    ld b, b
    inc h
    ld [$0b00], sp
    nop
    add hl, sp
    ld b, b
    ld h, $c0
    add hl, bc
    jr nz, jr_013_6081

    and b
    ld a, [bc]
    ld b, b
    ld h, $c0
    add hl, bc
    jr nz, jr_013_6089

    and b
    ld a, [bc]
    inc b
    nop
    nop
    nop
    add d
    ld bc, $0000
    ld b, b
    ld b, b
    rra
    ld b, $00
    ld e, $00
    jr c, jr_013_5ff5

    ld hl, $0700
    add b
    ld hl, $0900
    add b
    ld hl, $0700
    add b

jr_013_6081:
    ld hl, $0900
    inc b
    nop
    nop
    nop
    add d

jr_013_6089:
    ld bc, $0000
    ld b, b
    ld b, b
    inc e
    dec b
    nop
    ld a, [de]
    nop
    add hl, sp
    nop
    jr nz, @+$42

jr_013_6097:
    rlca
    add b
    ld e, $80
    rlca
    nop
    jr nz, @+$42

jr_013_609f:
    rlca
    add b
    ld e, $80
    rlca
    dec b
    nop
    nop
    nop
    dec bc
    ld [bc], a
    nop
    nop
    ld b, b
    ld b, b
    inc c
    dec b
    nop
    jr nc, jr_013_60b3

jr_013_60b3:
    ld a, [hl-]
    ld h, b
    ld c, $60
    ld b, $60
    dec c
    nop
    rlca
    ld h, b
    ld c, $60
    ld b, $60
    dec c
    nop
    rlca
    inc bc
    nop
    nop
    nop
    sbc [hl]
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld e, $16
    nop
    inc e
    nop
    dec hl
    jr nz, jr_013_60f6

    jr nz, @+$1a

    ldh [rNR42], a
    and b
    rla
    jr nz, jr_013_60fe

    jr nz, jr_013_60f8

    ldh [rNR42], a
    and b
    rla
    inc b
    nop
    nop
    nop
    sub a
    ld bc, $0000
    ld b, b
    ld b, b
    ld hl, $000c
    ld d, $00
    add hl, sp
    ld b, b
    inc hl

jr_013_60f6:
    add b
    dec c

jr_013_60f8:
    jr nz, jr_013_611d

    ldh [$0e], a
    ld b, b
    inc hl

jr_013_60fe:
    add b
    dec c
    jr nz, jr_013_6125

    ldh [$0e], a
    inc b
    nop
    nop
    nop
    and b
    ld bc, $0000
    ld b, b
    ld b, b
    ld hl, $0004
    ld a, [de]
    nop
    add hl, sp
    ret nz

    inc hl
    ld b, b
    dec b
    nop
    inc hl
    ret nz

    dec b
    ret nz

jr_013_611d:
    inc hl
    ld b, b
    dec b
    nop
    inc hl
    ret nz

    dec b
    inc bc

jr_013_6125:
    nop
    nop
    nop
    rst $00
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    inc d
    nop
    ld a, [de]
    nop
    dec l
    ret nz

    dec h
    ret nz

    ld d, $40
    inc h
    ret nz

    dec d
    ret nz

    dec h
    ret nz

    ld d, $40
    inc h
    ret nz

    dec d
    inc b
    nop
    nop
    nop
    or c
    ld bc, $0000
    ld b, b
    ld b, b
    inc hl
    ld [$2900], sp
    nop
    jr c, @+$42

    dec h
    nop
    ld a, [bc]
    ldh [rNR52], a
    ldh [$0a], a
    ld b, b
    dec h
    nop
    ld a, [bc]
    ldh [rNR52], a
    ldh [$0a], a
    dec b
    nop
    nop
    nop
    inc b
    ld [bc], a
    nop
    nop
    ld b, b
    ld b, b
    cpl
    dec b
    nop
    ld c, $00
    add hl, sp
    add b
    ld sp, $0780
    add b
    ld [hl-], a
    add b
    ld b, $80
    ld sp, $0780
    add b
    ld [hl-], a
    add b
    ld b, $04
    nop
    nop
    nop
    sbc h
    ld bc, $0000
    ld b, b
    ld b, b
    ld e, $04
    nop
    dec h
    nop
    add hl, sp
    jr nz, @+$22

    ldh [rDIV], a
    ret nz

    ld hl, $0600
    jr nz, @+$22

    ldh [rDIV], a
    ret nz

    ld hl, $0600
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld b, b
    ld b, b
    dec e
    dec d
    nop
    jr nz, jr_013_61b3

jr_013_61b3:
    cpl
    nop
    ld hl, $1800
    and b
    ld e, $20
    ld d, $00
    ld hl, $1800
    and b
    ld e, $20
    ld d, $04
    nop
    nop
    nop
    adc c
    ld bc, $0000
    ld b, b
    ld b, b
    rra
    dec b
    nop
    ld h, $00
    jr c, @-$3e

    ld [hl+], a
    and b
    rlca
    add b
    jr nz, jr_013_621b

    rlca
    ret nz

    ld [hl+], a
    and b
    rlca
    add b
    jr nz, jr_013_6223

    rlca
    dec b
    nop
    nop
    nop
    jr jr_013_61ec

    nop
    nop

jr_013_61ec:
    ld b, b
    ld b, b
    add hl, bc
    inc b
    nop
    inc [hl]
    nop
    add hl, sp
    jr nz, jr_013_6203

    ldh [rTIMA], a
    ret nz

    dec bc
    ld b, b
    ld b, $20
    dec c
    ldh [rTIMA], a
    ret nz

    dec bc
    ld b, b

jr_013_6203:
    ld b, $04
    nop
    nop
    nop
    ld e, e
    ld bc, $0000
    ld b, b
    ld b, b
    dec d
    ld a, [bc]
    nop
    inc e
    nop
    ld [hl-], a
    nop
    jr @+$42

    inc c
    add b
    rla
    and b

jr_013_621b:
    dec bc
    nop
    jr @+$42

    inc c
    add b
    rla
    and b

jr_013_6223:
    dec bc
    inc b
    nop
    nop
    nop
    xor b
    ld bc, $0000
    ld b, b
    ld b, b
    dec l
    inc c
    nop
    rrca
    nop
    jr c, jr_013_6275

    jr nc, jr_013_6277

    ld c, $40
    cpl
    ret nz

    dec c
    ld b, b
    jr nc, jr_013_627f

    ld c, $40
    cpl
    ret nz

    dec c
    inc bc
    nop
    nop
    nop
    or b
    nop
    nop
    nop
    ld b, b
    ld b, b
    jr jr_013_626c

    nop
    ld a, [hl+]
    nop
    ld l, $a0
    add hl, de
    ldh [rNR34], a
    nop
    dec de
    ldh [rNR33], a
    and b
    add hl, de
    ldh [rNR34], a
    nop
    dec de
    ldh [rNR33], a
    dec b
    nop
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop

jr_013_626c:
    ld b, b
    ld b, b
    ld sp, $0009
    ld c, $00
    jr c, jr_013_6275

jr_013_6275:
    inc [hl]
    add b

jr_013_6277:
    ld a, [bc]
    add b
    inc sp
    ld b, b
    dec bc
    nop
    inc [hl]
    add b

jr_013_627f:
    ld a, [bc]
    add b
    inc sp
    ld b, b
    dec bc
    inc b
    nop
    nop
    nop
    sbc b
    ld bc, $0000
    ld b, b
    ld b, b
    ld [hl+], a
    dec b
    nop
    ld hl, $3a00
    ld h, b
    inc h
    jr nz, @+$09

    ret nz

    dec h
    ret nz

    ld b, $60
    inc h
    jr nz, jr_013_62a7

    ret nz

    dec h
    ret nz

    ld b, $04
    nop
    nop

jr_013_62a7:
    nop
    or b
    ld bc, $0000
    ld b, b
    ld b, b
    ld c, $0e
    nop
    inc [hl]
    nop
    jr c, jr_013_62f5

    rrca
    nop
    ld de, $1080
    ld b, b
    rrca
    ld b, b
    rrca
    nop
    ld de, $1080
    ld b, b
    rrca
    inc bc
    nop
    nop
    nop
    or [hl]
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec e
    dec de
    nop
    ld a, [hl+]
    nop
    ld [hl-], a
    ld b, b
    rra
    and b
    inc e
    nop
    rra
    nop
    ld e, $40
    rra
    and b
    inc e
    nop
    rra
    nop
    ld e, $04
    nop
    nop
    nop
    sub c
    ld bc, $0000
    ld b, b
    ld b, b
    ld hl, $0007
    dec de
    nop
    ld a, [hl-]
    ret nz

jr_013_62f5:
    inc hl
    ld b, b
    add hl, bc
    nop
    inc hl
    add b
    add hl, bc
    ret nz

    inc hl
    ld b, b
    add hl, bc
    nop
    inc hl
    add b
    add hl, bc
    dec b
    nop
    nop
    nop
    ld a, [$0001]
    nop
    ld b, b
    ld b, b
    dec bc
    inc bc
    nop
    dec hl
    nop
    scf
    ld b, b
    ld c, $c0
    inc b
    add b
    dec c
    add b
    dec b
    ld b, b
    ld c, $c0
    inc b
    add b
    dec c
    add b
    dec b
    inc b
    nop
    nop
    nop
    or d
    ld bc, $0000
    ld b, b
    ld b, d
    ld de, $0007
    ld sp, $3800
    add b
    inc de
    and b
    ld [$1240], sp
    nop
    add hl, bc
    add b
    inc de
    and b
    ld [$1240], sp
    nop
    add hl, bc
    inc b
    nop
    nop
    nop
    ld h, b
    ld bc, $0000
    ld b, b
    ld b, d
    add hl, de
    dec c
    nop
    inc de
    nop
    ld a, [hl-]
    nop
    inc e
    nop
    rrca
    and b
    dec de
    jr nz, @+$10

    nop
    inc e
    nop
    rrca
    and b
    dec de
    jr nz, jr_013_6372

    inc b
    nop
    nop
    nop
    sbc l
    ld bc, $0000
    ld b, b
    ld b, d
    dec e
    ld b, $00
    rra

jr_013_6372:
    nop
    dec sp
    add b
    rra
    nop
    ld [$2080], sp
    nop
    ld [$1f80], sp
    nop
    ld [$2080], sp
    nop
    ld [$0005], sp
    nop
    nop
    or a
    ld bc, $0000
    ld b, b
    ld b, b
    inc c
    ld de, $3400
    nop
    inc [hl]
    add b
    rrca
    nop
    inc de
    ldh [$0d], a
    nop
    inc de
    add b
    rrca
    nop
    inc de
    ldh [$0d], a
    nop
    inc de
    inc b
    nop
    nop
    nop
    sbc b
    ld bc, $0000
    ld b, b
    ld b, d
    ld hl, $000d
    inc hl
    nop
    ld a, [hl-]
    add b

jr_013_63b5:
    inc hl
    nop
    ld c, $00
    inc hl
    ret nz

    rrca
    add b
    inc hl
    nop
    ld c, $00
    inc hl
    ret nz

    rrca
    inc bc
    nop
    nop
    nop
    xor [hl]
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld e, $13
    nop
    jr nz, jr_013_63d3

jr_013_63d3:
    inc l
    nop
    ld [hl+], a
    add b
    ld d, $a0
    rra
    ld b, b
    dec d
    nop
    ld [hl+], a
    add b
    ld d, $a0
    rra
    ld b, b
    dec d
    dec b
    nop
    nop
    nop
    rst $20
    ld bc, $0000
    ld b, b
    ld b, b
    ld c, $04
    nop
    dec h
    nop
    jr c, jr_013_63b5

    db $10
    ret nz

    ld b, $20
    rrca
    ldh [rTMA], a
    ret nz

    db $10
    ret nz

    ld b, $20
    rrca
    ldh [rTMA], a
    inc b
    nop
    nop
    nop
    adc e
    ld bc, $0000
    ld b, b
    ld b, b
    inc de
    ld b, $00
    ld [de], a
    nop
    add hl, sp
    jr nz, @+$16

    ldh [rTMA], a
    ld h, b
    dec d
    and b
    ld [$1420], sp
    ldh [rTMA], a
    ld h, b
    dec d
    and b
    ld [$0004], sp
    nop
    nop
    cp b
    ld bc, $0000
    ld b, b
    ld b, b
    ld c, $07
    nop
    inc de
    nop
    inc sp
    nop
    ld de, $0800
    nop

jr_013_6439:
    ld de, $0940
    nop
    ld de, $0800
    nop

jr_013_6441:
    ld de, $0940
    inc bc
    nop
    nop
    nop
    sub d
    nop
    nop
    nop
    ld b, b
    ld b, d
    dec e
    rla
    nop
    add hl, de
    nop
    ld a, [hl+]
    ret nz

    rra
    and b
    jr jr_013_6439

    rra
    jr nz, jr_013_6475

    ret nz

    rra
    and b
    jr jr_013_6441

    rra
    jr nz, jr_013_647d

    inc b
    nop
    nop
    nop
    adc b
    ld bc, $0000
    ld b, b
    ld b, d
    dec l
    inc c
    nop
    inc c
    nop
    dec l
    ret nz

jr_013_6475:
    jr nc, @+$42

    dec c
    ld h, b
    jr nc, @+$22

    ld c, $c0

jr_013_647d:
    jr nc, @+$42

    dec c
    ld h, b
    jr nc, @+$22

    ld c, $04
    nop
    nop
    nop
    sbc [hl]
    ld bc, $0000
    ld b, b
    ld b, b
    inc d
    ld [$2200], sp
    nop
    add hl, sp
    jr nz, jr_013_64ad

    ld h, b
    ld a, [bc]
    add b
    dec d
    ldh [$08], a
    jr nz, jr_013_64b5

    ld h, b
    ld a, [bc]
    add b
    dec d
    ldh [$08], a
    inc bc
    nop
    nop
    nop
    add $00
    nop
    nop
    ld b, b

jr_013_64ad:
    ld b, b
    inc de
    inc de
    nop
    dec l
    nop
    dec e
    and b

jr_013_64b5:
    inc d
    jr nz, jr_013_64ce

    add b
    dec d
    ret nz

    inc d
    and b
    inc d
    jr nz, jr_013_64d6

    add b
    dec d
    ret nz

    inc d
    dec b
    nop
    nop
    nop
    inc c
    ld [bc], a
    nop
    nop
    ld b, b
    ld b, b

jr_013_64ce:
    ld hl, $0004
    dec bc
    nop
    scf
    ret nz

    inc h

jr_013_64d6:
    ld b, b
    ld b, $80
    inc hl
    ld h, b
    dec b
    ret nz

    inc h
    ld b, b
    ld b, $80
    inc hl
    ld h, b
    dec b
    inc b
    nop
    nop
    nop
    add [hl]
    ld bc, $0000
    ld b, b
    ld b, b
    dec e
    rrca
    nop
    stop
    jr c, jr_013_64b5

    rra
    nop
    ld de, $1fc0
    nop
    ld [de], a
    ret nz

    rra
    nop
    ld de, $1fc0
    nop
    ld [de], a
    inc bc
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec d
    ld l, $20
    dec d
    ldh [$37], a
    jr nz, jr_013_652e

    ldh [$30], a
    jr nz, jr_013_6532

    ldh [$30], a
    jr nz, @+$1a

    ldh [$30], a
    jr nz, @+$1a

    ldh [$30], a
    inc bc
    nop
    nop
    nop
    xor b
    nop
    nop
    nop
    ld b, b
    ld b, b

jr_013_652e:
    inc c
    ld [hl+], a
    jr nz, jr_013_6547

jr_013_6532:
    ldh [$37], a
    nop
    ld c, $00
    inc h
    nop
    ld c, $00
    inc h
    nop
    ld c, $00
    inc h
    nop
    ld c, $00
    inc h
    inc bc
    nop
    nop

jr_013_6547:
    nop
    sbc b
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec d
    ld l, $e0
    ld b, $40
    add hl, sp
    jr nz, jr_013_656e

    ldh [$30], a
    jr nz, jr_013_6572

    ldh [$30], a
    jr nz, @+$1a

    ldh [$30], a
    jr nz, @+$1a

    ldh [$30], a
    inc bc
    nop
    nop
    nop
    or b
    nop
    nop
    nop
    ld b, b
    ld b, b

jr_013_656e:
    inc c
    ld [hl+], a
    ld b, b
    rlca

jr_013_6572:
    nop
    add hl, sp
    nop
    ld c, $00
    inc h
    nop
    ld c, $00
    inc h
    nop
    ld c, $00
    inc h
    nop
    ld c, $00
    inc h
    inc bc
    nop
    nop
    nop
    ld h, d
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec de
    ld d, $20
    rla
    jr nz, @+$24

    nop
    ld e, $00
    jr jr_013_6599

jr_013_6599:
    ld e, $00
    jr jr_013_659d

jr_013_659d:
    ld e, $00
    jr jr_013_65a1

jr_013_65a1:
    ld e, $00
    jr jr_013_65a8

    nop
    nop
    nop

jr_013_65a8:
    sbc d
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec c
    ld c, $20
    rla
    nop
    ld [hl+], a
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    inc bc
    nop
    nop
    nop
    sub d
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec de
    ld d, $00
    dec d
    ldh [rTAC], a
    nop
    ld e, $00
    jr jr_013_65d9

jr_013_65d9:
    ld e, $00
    jr jr_013_65dd

jr_013_65dd:
    ld e, $00
    jr jr_013_65e1

jr_013_65e1:
    ld e, $00
    jr jr_013_65e8

    nop
    nop
    nop

jr_013_65e8:
    ld c, e
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec c
    ld c, $e0
    inc d
    ldh [rTAC], a
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    inc bc
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld l, $10
    nop
    jr z, jr_013_6633

    dec e
    nop
    ld sp, $1200
    nop
    ld sp, $1200
    nop
    ld sp, $1200
    nop
    ld sp, $1200
    inc bc
    nop
    nop
    nop
    ld e, e
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld sp, $0018
    jr z, jr_013_6633

jr_013_6633:
    dec e
    nop
    inc sp
    nop
    ld a, [de]
    nop
    inc sp
    nop
    ld a, [de]
    nop
    inc sp
    nop
    ld a, [de]
    nop
    inc sp
    nop
    ld a, [de]
    inc bc
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld l, $10
    and b
    jr c, @-$7e

    ld b, $00
    ld sp, $1200
    nop
    ld sp, $1200
    nop
    ld sp, $1200
    nop
    ld sp, $1200
    inc bc
    nop
    nop
    nop
    sbc [hl]
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld sp, $6018
    jr c, jr_013_6633

    ld b, $00
    inc sp
    nop
    ld a, [de]
    nop
    inc sp
    nop
    ld a, [de]
    nop
    inc sp
    nop
    ld a, [de]
    nop
    inc sp
    nop
    ld a, [de]
    inc bc
    nop
    nop
    nop
    ld c, d
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    dec l
    ret nz

    inc hl
    nop
    ld h, $00
    ld h, $00
    cpl
    nop
    ld h, $00
    cpl
    nop
    ld h, $00
    cpl
    nop
    ld h, $00
    cpl
    inc bc
    nop
    nop
    nop
    ld l, h
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc l
    dec l
    ret nz

    inc hl
    nop
    ld h, $00
    ld l, $00
    cpl
    nop
    ld l, $00
    cpl
    nop
    ld l, $00
    cpl
    nop
    ld l, $00
    cpl
    inc bc
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    dec l
    nop
    add hl, hl
    ldh [$37], a
    nop
    ld h, $00
    cpl
    nop
    ld h, $00
    cpl
    nop
    ld h, $00
    cpl
    nop
    ld h, $00
    cpl
    inc bc
    nop
    nop
    nop
    adc b
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec l
    ld h, $00
    add hl, hl
    jr nz, jr_013_672c

    nop
    cpl
    nop
    jr z, jr_013_66f9

jr_013_66f9:
    cpl
    nop
    jr z, jr_013_66fd

jr_013_66fd:
    cpl
    nop
    jr z, jr_013_6701

jr_013_6701:
    cpl
    nop
    jr z, jr_013_6708

    nop
    nop
    nop

jr_013_6708:
    ld e, [hl]
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc l
    dec l
    jr nz, @+$3a

    jr nz, jr_013_6749

    nop
    ld l, $00

jr_013_6717:
    cpl
    nop
    ld l, $00

jr_013_671b:
    cpl
    nop
    ld l, $00

jr_013_671f:
    cpl
    nop
    ld l, $00

jr_013_6723:
    cpl
    inc bc
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop

jr_013_672c:
    ld b, b
    ld b, b
    dec l
    ld h, $00
    jr c, jr_013_6733

jr_013_6733:
    dec [hl]
    nop
    cpl
    nop
    jr z, jr_013_6739

jr_013_6739:
    cpl
    nop
    jr z, jr_013_673d

jr_013_673d:
    cpl
    nop
    jr z, jr_013_6741

jr_013_6741:
    cpl
    nop
    jr z, jr_013_6749

    nop
    nop
    nop
    add [hl]

jr_013_6749:
    ld bc, $0010
    jr nc, jr_013_6790

    ld e, $07
    nop
    jr nz, jr_013_6753

jr_013_6753:
    add hl, sp
    nop
    ld hl, $0880
    nop
    ld hl, $0880
    nop
    ld hl, $0880
    nop
    ld hl, $0880
    dec b
    nop
    nop
    nop
    dec [hl]
    ld [bc], a
    ld [$3400], sp
    ld b, d
    ld [hl+], a
    rlca
    nop
    jr z, jr_013_6773

jr_013_6773:
    add hl, sp
    ret nz

    inc h
    nop
    ld [$24c0], sp
    nop
    ld [$24c0], sp
    nop
    ld [$24c0], sp
    nop
    ld [$0004], sp
    nop
    nop
    db $76
    ld bc, $0008
    ld [hl], $42
    dec e
    add hl, bc

jr_013_6790:
    nop
    jr nz, jr_013_6793

jr_013_6793:
    add hl, sp
    nop
    jr nz, jr_013_6717

    ld a, [bc]
    nop
    jr nz, jr_013_671b

    ld a, [bc]
    nop
    jr nz, jr_013_671f

    ld a, [bc]
    nop
    jr nz, jr_013_6723

    ld a, [bc]
    inc b
    nop
    nop
    nop
    ld [hl], d
    ld bc, $000c
    ld [hl], $42
    jr nz, jr_013_67b9

    nop
    add hl, de
    nop
    scf
    nop
    ld [hl+], a
    add b
    ld a, [bc]
    nop

jr_013_67b9:
    ld [hl+], a
    add b
    ld a, [bc]
    nop
    ld [hl+], a
    add b
    ld a, [bc]
    nop
    ld [hl+], a
    add b
    ld a, [bc]
    inc b
    nop
    nop
    nop
    ld [hl], d
    ld bc, $000c
    ld [hl], $42
    jr nz, jr_013_67d9

    nop
    add hl, de
    nop
    scf
    nop
    ld [hl+], a
    add b
    ld a, [bc]
    nop

jr_013_67d9:
    ld [hl+], a
    add b
    ld a, [bc]
    nop
    ld [hl+], a
    add b
    ld a, [bc]
    nop
    ld [hl+], a
    add b
    ld a, [bc]
    inc b
    nop
    nop
    nop
    ld [hl], d
    ld bc, $000c
    ld [hl], $42
    jr nz, jr_013_67f9

    nop
    add hl, de
    nop
    scf
    nop
    ld [hl+], a
    add b
    ld a, [bc]
    nop

jr_013_67f9:
    ld [hl+], a
    add b
    ld a, [bc]
    nop
    ld [hl+], a
    add b
    ld a, [bc]
    nop
    ld [hl+], a
    add b
    ld a, [bc]
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    stop
    jr nc, jr_013_6850

    inc e
    ld [hl+], a
    nop
    inc d
    add b
    add hl, sp
    add b
    ld e, $80
    inc hl
    add b
    ld e, $80
    inc hl
    add b
    ld e, $80
    inc hl
    add b
    ld e, $80
    inc hl
    add hl, bc
    nop
    nop
    nop
    and a
    nop
    ld [$3a0a], sp
    ld a, [hl-]
    ld a, [de]
    dec e
    ld h, b
    dec e
    add b

jr_013_6833:
    rra
    ld b, b
    dec de
    add b
    rra
    ld b, b
    dec de
    add b
    rra
    ld b, b
    dec de
    add b
    rra
    ld b, b
    dec de
    add b
    rra
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_013_687e

    rra
    dec e

jr_013_6850:
    nop
    ld [hl+], a
    nop
    ld e, $80
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    stop
    jr nc, @+$44

    dec d
    dec h
    ret nz

    rla
    ld b, b
    ld a, [hl-]
    ld b, b
    rla
    add b
    ld h, $40
    rla
    add b
    ld h, $40
    rla

jr_013_687e:
    add b
    ld h, $40
    rla
    add b
    ld h, $09
    nop
    nop
    nop
    and a
    nop
    ld [$3a0a], sp
    ld b, b
    inc e
    dec e
    nop
    inc d
    nop
    inc [hl]
    nop
    jr nz, jr_013_6897

jr_013_6897:
    ld e, $00
    jr nz, jr_013_689b

jr_013_689b:
    ld e, $00
    jr nz, jr_013_689f

jr_013_689f:
    ld e, $00
    jr nz, jr_013_68a3

jr_013_68a3:
    ld e, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec e
    ld e, $80
    jr nz, jr_013_6833

    jr nz, jr_013_68f5

    rra
    ld b, b
    jr nz, jr_013_68f9

    rra
    ld b, b
    jr nz, jr_013_68fd

    rra
    ld b, b
    jr nz, jr_013_6901

    rra
    ld b, b
    jr nz, jr_013_68ce

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_013_6910

jr_013_68ce:
    inc hl
    dec l
    nop
    db $10
    add b
    dec l
    nop
    dec h
    add b
    cpl
    nop
    dec h
    add b
    cpl
    nop
    dec h
    add b
    cpl
    nop
    dec h
    add b
    cpl
    add hl, bc
    nop
    nop
    nop
    and a
    nop
    ld [$3a0a], sp
    ld a, [hl-]
    rra
    dec de
    nop
    ld hl, $3000
    add b

jr_013_68f5:
    ld hl, $1c00
    add b

jr_013_68f9:
    ld hl, $1c00
    add b

jr_013_68fd:
    ld hl, $1c00
    add b

jr_013_6901:
    ld hl, $1c00
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc h
    rra

jr_013_6910:
    add b
    dec h
    nop
    ld [hl+], a
    ret nz

jr_013_6915:
    ld h, $00
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $0009
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, d
    ld d, $17
    nop
    jr nz, jr_013_6933

jr_013_6933:
    ld a, [hl-]
    nop
    jr jr_013_6937

jr_013_6937:
    add hl, de
    nop
    jr jr_013_693b

jr_013_693b:
    add hl, de
    nop
    jr jr_013_693f

jr_013_693f:
    add hl, de
    nop
    jr jr_013_6943

jr_013_6943:
    add hl, de
    add hl, bc
    nop
    nop
    nop
    and a
    nop
    ld [$3a0a], sp
    ld b, b
    dec e
    jr nz, jr_013_6951

jr_013_6951:
    add hl, hl
    nop
    dec [hl]
    ret nz

    rra
    add b
    ld [hl+], a
    nop
    jr nz, jr_013_695b

jr_013_695b:
    ld [hl+], a
    nop
    jr nz, jr_013_695f

jr_013_695f:
    ld [hl+], a
    nop
    jr nz, jr_013_6963

jr_013_6963:
    ld [hl+], a
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    inc e
    nop
    inc h
    nop
    rra
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    inc e
    inc h
    ld h, b
    rra
    add b
    jr z, jr_013_6915

    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    inc e
    inc h
    and b
    jr nz, jr_013_6a13

    ld l, $80
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    inc e
    inc h
    add b
    inc e
    nop
    daa
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    inc e
    inc h
    and b
    inc e
    ld b, b
    ld a, [hl+]
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    inc e
    inc h
    add b
    dec e
    nop

jr_013_6a13:
    dec l
    add b

jr_013_6a15:
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    inc e
    inc h
    add b
    add hl, de
    add b
    daa
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    inc e
    inc h
    add b

jr_013_6a51:
    add hl, de
    ld h, b
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    inc e
    inc h
    ret nz

    ld d, $40
    dec h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    inc e
    inc h
    and b
    inc hl
    ld h, b

jr_013_6a93:
    jr nz, jr_013_6a15

    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    inc e
    inc h
    add b
    ld a, [hl+]
    ld b, b
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    rrca
    jr nz, jr_013_6a51

    ld [hl+], a
    and b
    dec e
    add b
    ld de, $2240
    add b
    ld de, $2240
    add b
    ld de, $2240
    add b
    ld de, $2240
    rlca
    nop
    nop
    nop
    add h
    ld bc, $0000
    ld b, b
    ld b, b
    inc e
    dec bc
    nop
    ld d, $00
    jr c, jr_013_6b35

    ld e, $00
    dec c
    ld b, b
    ld e, $00
    dec c
    ld b, b
    ld e, $00
    dec c
    ld b, b
    ld e, $00
    dec c
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc e
    dec bc
    add b
    jr jr_013_6a93

    rra
    ld b, b
    ld e, $00
    dec c
    ld b, b
    ld e, $00
    dec c
    ld b, b
    ld e, $00
    dec c
    ld b, b
    ld e, $00
    dec c
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    rra
    dec e
    jr nz, jr_013_6b54

    jr nz, @+$20

    add b

jr_013_6b35:
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    rra
    dec e
    nop
    jr nz, @+$22

    rra

jr_013_6b54:
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    rra
    dec e
    ld b, b
    ld hl, $1e00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    rra
    dec e
    ld b, b
    ld [hl+], a
    ldh [$1f], a
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_013_6bde

    rra
    dec e
    nop
    jr nz, jr_013_6bf3

    jr nz, jr_013_6b35

    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    add b
    ld hl, $1f00
    inc bc
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec d
    ld l, $20
    dec d
    ldh [$37], a
    jr nz, jr_013_6bee

    ldh [$30], a
    jr nz, jr_013_6bf2

    ldh [$30], a
    jr nz, @+$1a

jr_013_6bde:
    ldh [$30], a
    jr nz, @+$1a

    ldh [$30], a
    inc bc
    nop
    nop
    nop
    or b
    nop
    nop
    nop
    ld b, b
    ld b, b

jr_013_6bee:
    inc c
    ld [hl+], a
    ld b, b
    rlca

jr_013_6bf2:
    nop

jr_013_6bf3:
    add hl, sp
    nop
    ld c, $00
    inc h
    nop
    ld c, $00
    inc h
    nop
    ld c, $00
    inc h
    nop
    ld c, $00
    inc h
    inc bc
    nop
    nop
    nop
    ld h, d
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec de
    ld d, $20
    rla
    jr nz, @+$24

    nop
    ld e, $00
    jr jr_013_6c19

jr_013_6c19:
    ld e, $00
    jr jr_013_6c1d

jr_013_6c1d:
    ld e, $00
    jr jr_013_6c21

jr_013_6c21:
    ld e, $00
    jr jr_013_6c28

    nop
    nop
    nop

jr_013_6c28:
    ld c, e
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec c
    ld c, $e0
    inc d
    ldh [rTAC], a
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    db $10
    inc bc
    nop
    nop
    nop
    ld e, e
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld sp, $0018
    jr z, jr_013_6c53

jr_013_6c53:
    dec e
    nop
    inc sp
    nop
    ld a, [de]
    nop
    inc sp
    nop
    ld a, [de]
    nop
    inc sp
    nop
    ld a, [de]
    nop
    inc sp
    nop
    ld a, [de]
    inc bc
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld l, $10
    and b
    jr c, jr_013_6bf3

    ld b, $00
    ld sp, $1200
    nop
    ld sp, $1200
    nop
    ld sp, $1200
    nop
    ld sp, $1200
    inc bc
    nop
    nop
    nop
    ld l, h
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc l
    dec l
    ret nz

    inc hl
    nop
    ld h, $00
    ld l, $00
    cpl
    nop
    ld l, $00
    cpl
    nop
    ld l, $00
    cpl
    nop
    ld l, $00
    cpl
    inc bc
    nop
    nop
    nop
    ld b, e
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    dec l
    nop
    add hl, hl
    ldh [$37], a
    nop
    ld h, $00
    cpl
    nop
    ld h, $00
    cpl
    nop
    ld h, $00
    cpl
    nop
    ld h, $00
    cpl
    inc bc
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec l
    ld h, $00
    jr c, jr_013_6cd3

jr_013_6cd3:
    dec [hl]
    nop
    cpl
    nop
    jr z, jr_013_6cd9

jr_013_6cd9:
    cpl
    nop
    jr z, jr_013_6cdd

jr_013_6cdd:
    cpl
    nop
    jr z, jr_013_6ce1

jr_013_6ce1:
    cpl
    nop
    jr z, jr_013_6ce8

    nop
    nop
    nop

jr_013_6ce8:
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc e
    inc h
    add b
    ld a, [hl+]
    ld b, b
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc e
    inc h
    add b
    ld a, [hl+]
    ld b, b
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    add b
    ld e, $c0
    inc h
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec e
    ld e, $80
    jr nz, @-$7e

    jr nz, jr_013_6d75

    rra
    ld b, b
    jr nz, jr_013_6d79

    rra
    ld b, b
    jr nz, jr_013_6d7d

    rra
    ld b, b
    jr nz, jr_013_6d81

    rra
    ld b, b
    jr nz, jr_013_6d48

    nop
    nop
    nop

jr_013_6d48:
    nop
    nop
    nop
    nop
    jr nc, jr_013_6d90

    inc hl
    dec h
    nop
    db $10
    add b
    dec l
    add b
    dec h
    ld b, b
    daa
    add b
    dec h
    ld b, b
    daa
    add b
    dec h
    ld b, b
    daa
    add b
    dec h
    ld b, b
    daa
    inc bc
    nop
    nop
    nop
    and a
    nop
    ld [$3a0a], sp
    ld a, [hl-]
    rra
    dec de
    nop
    ld hl, $3000
    add b

jr_013_6d75:
    ld hl, $1c00
    add b

jr_013_6d79:
    ld hl, $1c00
    add b

jr_013_6d7d:
    ld hl, $1c00
    add b

jr_013_6d81:
    ld hl, $1c00
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc h
    rra

jr_013_6d90:
    add b
    dec h
    nop
    ld [hl+], a
    ret nz

    ld h, $00
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $0003
    nop
    nop
    nop
    nop
    stop
    jr nc, jr_013_6df0

    daa
    inc b
    nop
    ld hl, $3000
    nop
    ld a, [hl+]
    ret nz

    dec b
    nop
    ld a, [hl+]
    ret nz

    dec b
    nop
    ld a, [hl+]
    ret nz

    dec b
    nop
    ld a, [hl+]
    ret nz

    dec b
    inc bc
    nop
    nop
    nop
    and a
    nop
    ld [$3a0a], sp
    ld a, [hl-]
    dec e
    jr nz, jr_013_6dd1

jr_013_6dd1:
    add hl, hl
    nop
    dec [hl]
    ret nz

    rra
    add b
    ld [hl+], a
    ret nz

    rra
    add b
    ld [hl+], a
    ret nz

    rra
    add b
    ld [hl+], a
    ret nz

    rra
    add b
    ld [hl+], a
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    inc e

jr_013_6df0:
    nop
    inc h
    nop
    rra
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    inc b
    nop
    nop
    nop
    add h
    ld bc, $0000
    ld b, b
    ld b, b
    inc e
    dec bc
    nop
    ld d, $00
    jr c, jr_013_6e55

    ld e, $00
    dec c
    ld b, b
    ld e, $00
    dec c
    ld b, b
    ld e, $00
    dec c
    ld b, b
    ld e, $00
    dec c
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec e
    ld e, $60
    jr nz, jr_013_6e93

    rra
    ld b, b
    rra
    ld b, b
    jr nz, jr_013_6e79

    rra
    ld b, b
    jr nz, jr_013_6e7d

    rra
    ld b, b
    jr nz, jr_013_6e81

    rra
    ld b, b
    jr nz, jr_013_6e4c

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6e4c:
    ld b, b
    ld b, b
    dec e
    ld e, $00
    ld e, $80
    jr nz, jr_013_6e95

jr_013_6e55:
    rra
    ld b, b
    jr nz, jr_013_6e99

    rra
    ld b, b
    jr nz, jr_013_6e9d

    rra
    ld b, b
    jr nz, jr_013_6ea1

    rra
    ld b, b
    jr nz, jr_013_6e6c

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6e6c:
    ld b, b
    ld b, b
    dec e
    ld e, $20
    jr nz, jr_013_6ed3

    ld hl, $1f40
    ld b, b
    jr nz, jr_013_6eb9

jr_013_6e79:
    rra
    ld b, b
    jr nz, jr_013_6ebd

jr_013_6e7d:
    rra
    ld b, b
    jr nz, jr_013_6ec1

jr_013_6e81:
    rra
    ld b, b
    jr nz, jr_013_6e8c

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6e8c:
    ld b, b
    ld b, b
    dec e
    ld e, $40
    ld e, $80

jr_013_6e93:
    ld e, $40

jr_013_6e95:
    rra
    ld b, b
    jr nz, @+$42

jr_013_6e99:
    rra
    ld b, b
    jr nz, @+$42

jr_013_6e9d:
    rra
    ld b, b
    jr nz, @+$42

jr_013_6ea1:
    rra
    ld b, b
    jr nz, jr_013_6eac

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6eac:
    ld b, b
    ld b, b
    dec e
    ld e, $40
    ld hl, $2060
    ld b, b
    rra
    ld b, b
    jr nz, @+$42

jr_013_6eb9:
    rra
    ld b, b
    jr nz, @+$42

jr_013_6ebd:
    rra
    ld b, b
    jr nz, @+$42

jr_013_6ec1:
    rra
    ld b, b
    jr nz, jr_013_6ecc

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_013_6ecc:
    ld b, b
    ld b, b
    inc h
    rra
    ld h, b
    ld h, $e0

jr_013_6ed3:
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc h
    rra
    jr nz, jr_013_6f1a

    ret nz

    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc h
    rra
    ld b, b
    jr z, jr_013_6e93

    jr nz, @-$3e

    ld h, $00
    ld hl, $26c0

jr_013_6f1a:
    nop
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc h
    rra
    ldh [rNR51], a
    ldh [$1f], a
    ret nz

    ld h, $00
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc h
    rra
    add b
    dec h
    ld h, b
    ld [hl+], a
    ret nz

    ld h, $00
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $26c0
    nop
    ld hl, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    inc e
    ldh [rNR50], a
    ret nz

    ld e, $80
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    inc e
    nop
    inc h
    add b
    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    inc e
    ld h, b
    ld h, $c0
    inc e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    inc e
    jr nz, jr_013_6ff9

    ld h, b
    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    inc e
    ret nz

    inc hl
    ldh [rNR34], a
    add b
    dec h
    ret nz

    dec e
    add b

jr_013_6ff9:
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    add b
    dec h
    ret nz

    dec e
    inc bc
    nop
    nop
    nop
    and a
    nop
    ld [$3a0a], sp
    ld a, [hl-]
    dec e
    jr nz, jr_013_7011

jr_013_7011:
    add hl, hl
    nop
    dec [hl]
    ret nz

    rra
    add b
    ld [hl+], a
    nop
    jr nz, jr_013_701b

jr_013_701b:
    ld [hl+], a
    ldh [rNR43], a
    ld b, b
    ld h, $e0
    ld [hl+], a
    ld b, b
    ld h, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc hl
    inc e
    nop
    inc h
    nop
    rra
    add b
    dec h
    ret nz

    dec e
    nop
    ld a, [hl+]
    ret nz

    dec b
    nop
    ld a, [hl+]
    ret nz

    dec b
    nop
    ld a, [hl+]
    ret nz

    dec b

    push bc
    push de
    dec l
    ld d, h
    ld e, l
    ld a, d
    or a
    ld a, e
    jr z, jr_013_705a

    add $0a
    dec d

jr_013_7051:
    dec d
    bit 7, d
    jr nz, jr_013_705a

    add $12
    jr jr_013_7051

jr_013_705a:
    ld hl, $0020
    call Call_000_08b9
    ld de, $5884
    add hl, de
    push hl
    ld de, $0000
    add hl, de
    ld b, [hl]
    pop hl
    ld de, $0004
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    pop de
    pop bc
    ret


Call_013_7076:
    ld hl, $0400
    rst $18

    db $0a, $13

    ld a, h
    sub $50
    or a
    jr nz, jr_013_7086

    rst $18

    db $08, $50

    ret


jr_013_7086:
    cp $01
    jr nz, jr_013_708e

    rst $18
    ld [$c951], sp

jr_013_708e:
    cp $02
    jr nz, jr_013_7096

    rst $18
    ld [$c952], sp

jr_013_7096:
    cp $03
    jr nz, jr_013_709e

    rst $18
    db $10
    ld d, e
    ret


jr_013_709e:
    rst $18
    db $10
    ld d, h
    ret


Call_013_70a2:
    rst $18

    db $0a, $50

    rst $18

    db $0a, $51

    rst $18

    db $0a, $52

    rst $18

    db $12, $53

    rst $18

    db $12, $54

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
