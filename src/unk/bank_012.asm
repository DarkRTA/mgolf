INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    db $2c, $44

    xor a
    ld b, l
    db $d2
    ld c, a

    db $f4, $45, $5c, $46, $0a, $4a, $81, $4a, $a6, $4c, $8a, $4b, $18, $4c

    and l
    ld c, c
    ld [hl], e
    ld b, [hl]

    db $a6, $46

    ld [hl+], a
    ld b, [hl]
    db $ea
    ld b, l

    db $19, $4b, $1f, $4b, $24, $4b, $29, $4b

    db $f4
    ld c, a

    db $2c, $50, $7e, $50, $8a, $50

    db $dd
    ld l, a
    add hl, de
    ld [hl], b
    ld a, a
    ld l, d
    sbc h
    ld l, d

    db $b1, $4c, $f6, $4a

    add sp, $4d

    db $14, $4f, $1d, $4f, $f0, $6c

    dec a
    ld l, l

    db $8d, $6f

    ld d, d
    ld c, a
    ld h, a
    ld c, a
    ld [hl], e
    ld c, a
    ld a, a
    ld c, a

    db $a0, $50, $68, $49

    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_012_405e:
    ld a, [$d443]
    or a
    jr z, jr_012_4087

    cp $04
    jp z, Jump_012_4087

    ld a, [$d442]
    ld b, a
    ld a, d
    sub b
    ld d, a
    ld a, [$d441]
    ld b, a
    ld a, h
    sub b

jr_012_4076:
    ld h, a
    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d

Jump_012_4087:
jr_012_4087:
    push hl
    push de
    call Call_012_4098
    pop de
    pop hl
    push bc
    call Call_012_40fd
    pop bc
    ret


    xor a
    ld b, a
    ld c, a
    ret


Call_012_4098:
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
    ld hl, $40dd
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
    jr nz, jr_012_4120

    ld h, b
    add b
    and b
    ret nz

    ldh [$80], a
    ld h, b
    ld b, b
    jr nz, jr_012_40ea

jr_012_40ea:
    ldh [$c0], a
    and b
    nop
    ldh [$c0], a
    and b
    add b
    ld h, b
    ld b, b
    jr nz, jr_012_4076

    and b
    ret nz

    ldh [rP1], a
    jr nz, jr_012_413c

    ld h, b

Call_012_40fd:
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

jr_012_4120:
    rla
    sla e
    rla
    ld d, $00
    ld e, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    bit 5, [hl]
    jr z, jr_012_4135

    ld a, $03
    sub c
    ld c, a

jr_012_4135:
    bit 6, [hl]
    jr z, jr_012_413d

    ld a, $03
    sub e

jr_012_413c:
    ld e, a

jr_012_413d:
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
    jr z, jr_012_4154

    inc hl

jr_012_4154:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 0, c
    jr nz, jr_012_4161

    swap a

jr_012_4161:
    and $0f
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ret


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
    jr z, jr_012_418a

    cpl

jr_012_418a:
    ld c, a
    rrca
    rrca
    ld a, e
    bit 6, [hl]
    jr z, jr_012_4193

    cpl

jr_012_4193:
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
    jr nz, jr_012_41b3

    swap a

jr_012_41b3:
    and $0f
    ret


Call_012_41b6:
    ld a, [$d329]
    add a
    ld hl, $41d5
    add l
    ld l, a
    jr nc, jr_012_41c2

    inc h

jr_012_41c2:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_012_4239
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


    db $f1, $41, $09, $42, $09, $42, $21, $42

    ld hl, $2142
    ld b, d
    ld hl, $2142
    ld b, d
    ld hl, $2142
    ld b, d
    db $21
    ld b, d

    db $21, $42, $21, $42, $21, $42, $62, $64, $5d, $5f

    ld [hl-], a
    inc a
    inc d
    ld [hl-], a
    jr z, @+$39

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
    jr z, jr_012_4240

    db $62, $64, $62, $64

    ld [hl-], a
    inc a
    inc d
    ld [hl-], a
    jr z, jr_012_424a

    inc d
    jr z, @+$0c

    ld e, $63
    ld h, h
    ld e, d
    ld h, d

    db $5e, $62, $5a, $5e

    jr z, jr_012_4258

    ld h, d
    ld h, h

    db $62, $64, $50, $5a, $32, $50, $46, $55, $32, $46

    jr z, @+$3e

    db $63, $64, $5a, $62, $5e, $62, $5a, $5e

    ld b, [hl]
    ld d, l

Call_012_4239:
    ld a, [$d445]
    or a
    jr z, jr_012_4241

    xor a

jr_012_4240:
    ret


jr_012_4241:
    ld a, [$d4cd]
    cp $0d
    jr z, jr_012_424c

    cp $02

jr_012_424a:
    jr nz, jr_012_425c

jr_012_424c:
    ld a, [$d446]
    or a
    jr z, jr_012_4281

    cp $01
    jr nz, jr_012_4259

    ld a, $05

jr_012_4258:
    ret


jr_012_4259:
    ld a, $06
    ret


jr_012_425c:
    cp $00
    jr z, jr_012_4264

    cp $0e
    jr nz, jr_012_4274

jr_012_4264:
    ld a, [$d446]
    or a
    jr z, jr_012_4281

    cp $01
    jr nz, jr_012_4271

    ld a, $09
    ret


jr_012_4271:
    ld a, $0a
    ret


jr_012_4274:
    cp $01
    jr nz, jr_012_4281

    ld a, [$d446]
    or a
    jr z, jr_012_4281

    ld a, $0b
    ret


jr_012_4281:
    push hl
    push de
    ld a, [$d4cd]
    ld hl, $4292
    add l
    ld l, a
    jr nc, jr_012_428e

    inc h

jr_012_428e:
    ld a, [hl]
    pop de
    pop hl
    ret


    db $01, $02, $04

    ld [bc], a
    ld [bc], a
    inc bc

    db $07

    ld [bc], a
    ld [bc], a

    db $08

    rlca
    dec bc
    inc bc
    inc b
    ld bc, $2101
    inc b
    call nc, Call_012_562a
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d443]
    or a
    jr z, jr_012_4315

    cp $04
    jr z, jr_012_4315

    ld a, [$d442]
    ld c, a
    ld a, d
    sub c
    ld d, a
    ld a, [$d441]
    ld c, a
    ld a, h
    sub c
    ld h, a
    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d
    push hl
    push de
    call Call_012_4098
    pop de
    pop hl
    swap a
    and $03
    jr z, jr_012_430f

    ld c, a
    push bc
    call Call_012_40fd
    cp $06
    pop bc
    jr nz, jr_012_4307

    ld a, c
    add a
    ld hl, $42ff
    add l
    ld l, a
    jr nc, jr_012_42f7

    inc h

jr_012_42f7:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $00
    ld a, $ff
    ret


    nop
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld b, $00

jr_012_4307:
    ld hl, $0020
    ld c, $00
    ld a, $ff
    ret


jr_012_430f:
    xor a
    ld h, a
    ld l, a
    ld c, a
    ld b, a
    ret


jr_012_4315:
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
    rla
    sla e
    rla
    ld d, $00
    ld e, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld b, [hl]
    bit 5, b
    jr z, jr_012_434e

    ld a, $03
    sub c
    ld c, a

jr_012_434e:
    bit 6, b
    jr z, jr_012_4356

    ld a, $03
    sub e
    ld e, a

jr_012_4356:
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
    jr z, jr_012_436d

    inc hl

jr_012_436d:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 0, c
    jr nz, jr_012_437a

    swap a

jr_012_437a:
    bit 3, a
    jr nz, jr_012_438b

    ld bc, $0000
    ld hl, $0000
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ret


jr_012_438b:
    and $07
    ld c, a
    ld a, b
    rrca
    rrca
    and $18
    add c
    ld hl, $40dd
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, [hl]
    ld c, $00
    ld hl, $0020
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ret


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
    jr z, jr_012_43df

    cp $04
    jr nc, jr_012_43df

    ld a, [$d442]
    ld b, a
    ld a, d
    sub b
    ld d, a
    ld a, [$d441]
    ld b, a
    ld a, h
    sub b
    ld h, a
    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d

jr_012_43df:
    call Call_012_40fd
    add a
    add a
    ld h, $00
    ld l, a
    ld de, $43ec
    add hl, de
    ret


    ld b, b
    ld hl, sp-$50
    nop
    jr nz, @-$1e

jr_012_43f2:
    ld h, b
    nop
    ld [$80f0], sp
    nop
    ld h, b
    ld bc, $00a0
    add b
    cp $f8
    nop
    db $10
    ret nz

    ld b, b
    nop
    ld b, b
    db $fc
    or b
    nop
    nop
    add b

jr_012_440a:
    ld b, b
    nop
    add b
    db $fc
    ld hl, sp+$00

jr_012_4410:
    jr z, jr_012_43f2

    and b
    nop
    jr c, jr_012_4410

    ret nc

    nop
    jr nc, jr_012_440a

    add b
    nop
    db $10
    ret nc

    ld b, b
    nop
    ld [$80f0], sp
    nop
    ld h, b
    cp $c0
    nop
    ld bc, $e0f0
    nop

    call Call_000_0341
    ld hl, $67fd
    ld de, $0002
    call Call_000_056c
    ld hl, $6805
    ld de, $0801
    call Call_000_056c
    call Call_012_45af
    call Call_000_04de
    call Call_012_4fd2
    call Call_000_04de
    call Call_012_45f4
    call Call_012_465c
    call Call_000_04de
    call Call_012_4a0a
    call Call_000_04de
    call Call_012_4a81
    call Call_000_04de
    call Call_012_4ca6
    call Call_000_04de
    call Call_012_4b8a
    call Call_012_4c18
    call Call_000_04de
    call Call_012_49a5
    call Call_012_4673
    call Call_000_04de
    call Call_012_4ff4
    call Call_012_46a6
    call Call_012_45ea
    call Call_000_04de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $f0
    ld [$d44d], a
    ld a, $0f
    ld hl, $449f
    call Call_000_23e8
    ld a, $01
    ld [$d328], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d358]
    or a
    ret nz

    ld a, [$d455]
    or a
    jr nz, jr_012_4506

    ld hl, $0201
    ld de, $8820
    ld bc, $0c5c
    call Call_000_2756
    ld hl, $0201
    ld de, $8832
    ld bc, $0d6c
    call Call_000_2756
    ld c, $03
    ld a, [$d454]
    or a
    jr z, jr_012_44e4

    ldh a, [$8c]
    and $0f
    cp $06
    jr c, jr_012_44e4

    ld a, [$c835]
    or a
    jr nz, jr_012_44e2

    ld c, $02
    jr jr_012_44e4

jr_012_44e2:
    ld c, $01

jr_012_44e4:
    bit 0, c
    jr z, jr_012_44f6

    push bc
    ld hl, $0101
    ld de, $9820
    ld bc, $0860
    call Call_000_2756
    pop bc

jr_012_44f6:
    bit 1, c
    jr z, jr_012_4506

    ld hl, $0101
    ld de, $9832
    ld bc, $0870
    call Call_000_2756

jr_012_4506:
    call Call_012_4f24
    call Call_012_50a0
    call Call_012_6b04
    ldh a, [$8c]
    and $07
    cp $02
    jr c, jr_012_453b

    ld a, [$d44d]
    cp $f0
    jr z, jr_012_453b

    rrca
    rrca
    rrca
    and $1e
    ld hl, $458f
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld de, $9886
    ld a, [hl+]
    add d
    ld d, a
    ld a, [hl+]
    add e
    ld e, a
    ld bc, $0878
    call Call_000_2798

jr_012_453b:
    ld a, [$d451]
    ld h, a
    ld a, [$d44f]
    call Call_012_456e
    ld a, [$d452]
    ld h, a
    ld a, [$d450]
    call Call_012_456e
    ld a, [$c834]
    cp $08
    jr z, jr_012_456d

    ld a, [$d32a]
    cp $01
    jr nz, jr_012_456d

    ld a, [$d329]
    cp $0d
    jr nc, jr_012_456d

    ld bc, $083c
    ld de, $2a84
    call Call_000_2798

jr_012_456d:
    ret


Call_012_456e:
    cp $80
    ret z

    ld bc, $084a
    bit 0, h
    jr z, jr_012_4584

    ld h, a
    ldh a, [$8c]
    and $0f
    bit 3, a
    jr z, jr_012_4583

    ld c, $48

jr_012_4583:
    ld a, h

jr_012_4584:
    ld h, a
    ld a, $6d
    sub h
    ld d, a
    ld e, $86
    call Call_000_2798
    ret


    db $00, $00

    ld [bc], a
    nop
    cp $00
    nop
    nop
    nop
    cp $01
    rst $38
    rst $38
    rst $38
    nop
    cp $00
    ld [bc], a
    ld bc, $ff01
    ld bc, $0200
    nop
    nop
    ld bc, $ff00
    nop

    db $00, $00

Call_012_45af:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $20
    call Call_000_03a7
    ld hl, $5200
    ld de, $bc00
    ld c, $04
    call Call_000_0468
    ld hl, $51c0
    ld de, $9c00
    ld c, $04
    call Call_000_0468
    ld hl, $6020
    ld de, $9100
    ld c, $04
    call Call_000_0468
    ld hl, $5c60
    ld de, $91c0
    ld c, $04
    call Call_000_0468
    ret


Call_012_45ea:
    ld a, $80
    ldh [rWY], a
    ret


    ld a, $90
    ldh [rWY], a
    ret


Call_012_45f4:
    call Call_012_4239
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $6670
    add hl, de
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d4cd]
    cp $0d
    jr nz, jr_012_460e

    ld hl, $6668

jr_012_460e:
    ld de, $0e01
    call Call_000_056c
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $a440
    ld c, $04
    call Call_000_0468
    call Call_012_41b6
    ld a, e
    ld bc, $7300
    call Call_012_463f
    ld a, d
    ld bc, $7308
    call Call_012_463f
    ld hl, $d1c0
    ld de, $8fc0
    ld c, $04
    call Call_000_0468
    ret


Call_012_463f:
    push de
    cp $64
    jr z, jr_012_4651

    ld h, $00
    ld l, a
    ld a, $02
    ld de, $d000
    call Call_000_28fa
    jr jr_012_465a

jr_012_4651:
    ld hl, $683d
    ld de, $d000
    call Call_000_2962

jr_012_465a:
    pop de
    ret


Call_012_465c:
    ld a, [$d329]
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $5c30
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $a400
    ld c, $04
    call Call_000_0468
    ret


Call_012_4673:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $67dd
    ld de, $0701
    call Call_000_056c
    ld hl, $66b8
    ld de, $d000
    ld bc, $1e03
    call Call_000_2962
    ld hl, $6782
    ld de, $d000
    ld bc, $500e
    call Call_000_2962
    ld hl, $d060
    ld de, $8e60
    ld c, $16
    call Call_000_0468
    ret


Call_012_46a6:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $06
    call Call_000_03a7
    ld a, [$d329]
    cp $0d
    jr nz, jr_012_46dd

    ld a, [$d32b]
    or a
    jr nz, jr_012_46c9

    ld hl, $67ed
    ld de, $6979
    jr jr_012_4709

jr_012_46c9:
    cp $01
    jr nz, jr_012_46d5

    ld hl, $67dd
    ld de, $69b5
    jr jr_012_4709

jr_012_46d5:
    ld hl, $67e5
    ld de, $69a7
    jr jr_012_4709

jr_012_46dd:
    ld a, [$d32a]
    or a
    jr nz, jr_012_46eb

    ld hl, $67dd
    ld de, $695d
    jr jr_012_4709

jr_012_46eb:
    cp $01
    jr nz, jr_012_46f7

    ld hl, $67e5
    ld de, $696b
    jr jr_012_4709

jr_012_46f7:
    cp $02
    jr nz, jr_012_4703

    ld hl, $67ed
    ld de, $6943
    jr jr_012_4709

jr_012_4703:
    ld hl, $67f5
    ld de, $6943

jr_012_4709:
    push de
    ld de, $0701
    call Call_000_056c
    pop hl
    ld de, $d000
    ld bc, $1100
    call Call_000_2962
    ld a, [$d329]
    and $0f
    jr nz, jr_012_473b

    ld a, $31
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6997
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jp Jump_012_48bb


jr_012_473b:
    cp $01
    jr nz, jr_012_4759

    ld a, $33
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6997
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jp Jump_012_48bb


jr_012_4759:
    cp $02
    jr nz, jr_012_4777

    ld a, $34
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6997
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jp Jump_012_48bb


jr_012_4777:
    cp $03
    jr nz, jr_012_4795

    ld a, $32
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6951
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jp Jump_012_48bb


jr_012_4795:
    cp $04
    jr nz, jr_012_47b3

    ld a, $33
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6951
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jp Jump_012_48bb


jr_012_47b3:
    cp $05
    jr nz, jr_012_47d1

    ld a, $34
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6951
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jp Jump_012_48bb


jr_012_47d1:
    cp $06
    jr nz, jr_012_47ef

    ld a, $35
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6951
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jp Jump_012_48bb


jr_012_47ef:
    cp $07
    jr nz, jr_012_480d

    ld a, $36
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6951
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jp Jump_012_48bb


jr_012_480d:
    cp $08
    jr nz, jr_012_482b

    ld a, $37
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6951
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jp Jump_012_48bb


jr_012_482b:
    cp $09
    jr nz, jr_012_4848

    ld a, $38
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6951
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jr jr_012_48bb

jr_012_4848:
    cp $0a
    jr nz, jr_012_4865

    ld a, $39
    ld de, $d000
    ld bc, $0100
    call Call_000_2917
    ld hl, $6951
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jr jr_012_48bb

jr_012_4865:
    cp $0b
    jr nz, jr_012_4883

    ld hl, $696b
    ld de, $d000
    ld bc, $0100
    call Call_000_2962
    ld hl, $6997
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jr jr_012_48bb

jr_012_4883:
    cp $0c
    jr nz, jr_012_48a1

    ld hl, $6979
    ld de, $d000
    ld bc, $0100
    call Call_000_2962
    ld hl, $6997
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jr jr_012_48bb

jr_012_48a1:
    ld hl, $696b
    ld de, $d000
    ld bc, $0100
    call Call_000_2962
    ld hl, $6987
    ld de, $d000
    ld bc, $0700
    call Call_000_2962
    jr jr_012_491b

Jump_012_48bb:
jr_012_48bb:
    rst $18

    db $02, $10

    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    ld a, $03
    ld de, $d000
    ld bc, $0108
    call Call_000_28fa
    ld hl, $6859
    ld de, $d000
    ld bc, $1309
    call Call_000_2962
    ld a, [$d321]
    and $07
    add a
    ld hl, $66a0
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_012_48fb:
    ld de, $d000
    ld bc, $500e
    call Call_000_2962
    ld hl, $d120
    ld de, $8f20
    ld c, $08
    call Call_000_0468
    ld hl, $d000
    ld de, $8e00
    ld c, $08
    call Call_000_0468
    ret


jr_012_491b:
    rst $18

    db $02, $10

    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    ld de, $0008
    add hl, de
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    ld a, $03
    ld de, $d000
    ld bc, $0008
    call Call_000_28fa
    ld hl, $6864
    ld de, $d000
    ld bc, $1208
    call Call_000_2962
    ld hl, $67d0
    jr jr_012_48fb

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $8e00
    ld c, $20
    call Call_000_0468
    ret


    push af
    push hl
    ld a, [$d329]
    cp $0d
    jr nz, jr_012_498a

    ld hl, $c000
    ld a, $a0
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    pop hl
    pop af
    ret


jr_012_498a:
    ld hl, $c000
    ld a, $10
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, $20
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    pop hl
    pop af
    ret


Call_012_49a5:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0201
    ld de, $8c00
    ld bc, $0962
    call Call_000_2756
    ld hl, $0301
    ld de, $8810
    ld bc, $0866
    call Call_000_2756
    ld a, [$d325]
    cp $06
    jr nc, jr_012_49d6

    ld hl, $0302
    ld de, $0000
    ld bc, $0850
    call Call_000_2756

jr_012_49d6:
    ld hl, $0301
    ld de, $0070
    ld bc, $0872
    call Call_000_2756
    ld de, $0484
    ld bc, $0840
    call Call_000_2798
    ld de, $0c84
    ld bc, $0842
    call Call_000_2798
    ld de, $9484
    ld bc, $0e44
    call Call_000_2798
    ld de, $9c84
    ld bc, $0e46
    call Call_000_2798
    call Call_000_269f
    ret


Call_012_4a0a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d325]
    cp $06
    ret nc

    ld hl, $d200
    ld c, $0c
    call Call_000_03a7
    ld a, [$c837]
    ld h, $00
    ld l, a
    ld a, $02
    ld de, $d200
    ld bc, $0600
    call Call_000_28fa
    ld hl, $687a
    ld de, $d200
    ld bc, $1201
    call Call_000_2962
    ld hl, $d323
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $03
    ld de, $d200
    ld bc, $0008
    call Call_000_28fa
    ld hl, $6859
    ld de, $d200
    ld bc, $1209
    call Call_000_2962
    ld hl, $6885
    ld de, $d200
    ld bc, $1901
    call Call_000_2962
    ld a, [$d325]
    ld h, $00
    ld l, a
    ld a, $01
    ld de, $d200
    ld bc, $2900
    call Call_000_28fa
    ld hl, $d200
    ld de, $a500
    ld c, $0c
    call Call_000_0468
    ret


Call_012_4a81:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d200
    ld c, $06
    call Call_000_03a7
    ld a, [$c815]
    and $1f
    push af
    ld de, $d200
    call Call_012_4b60
    ld hl, $68ca
    ld de, $d200
    ld bc, $0801
    call Call_000_2962
    ld hl, $d200
    ld de, $a660
    ld c, $06
    call Call_000_0468
    pop af
    jr nz, jr_012_4aba

    ld hl, $56f0
    jr jr_012_4ae3

jr_012_4aba:
    ld a, [$d443]
    cp $04
    jr nz, jr_012_4ad3

    ld hl, $d418
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0080
    add hl, de
    ld a, [$c816]
    sub h
    add $c8
    jr jr_012_4ad8

jr_012_4ad3:
    ld a, [$c816]
    add $08

jr_012_4ad8:
    and $f0
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $52f0
    add hl, de

jr_012_4ae3:
    ld de, $a620
    ld c, $04
    call Call_000_0468
    xor a
    ld [$d326], a
    ld [$d327], a
    ld [$d328], a
    ret


    push af
    ld hl, $d200
    ld c, $02
    call Call_000_03a7
    pop af
    and $0f
    add $30
    ld de, $d200
    ld bc, $0000
    call Call_000_2917
    ld hl, $d200
    ld de, $a3c0
    ld c, $02
    call Call_000_0468
    ret


    ld a, $01
    ld [$d454], a
    ret


    xor a
    ld [$d454], a
    ret


    xor a
    ld [$d455], a
    ret


    ld a, $01
    ld [$d455], a
    ret


Call_012_4b2f:
    cp $0a
    jr nc, jr_012_4b3c

    add $30
    ld bc, $0008
    call Call_000_2917
    ret


jr_012_4b3c:
    cp $14
    jr nc, jr_012_4b44

    sub $0a
    jr jr_012_4b46

jr_012_4b44:
    ld a, $09

jr_012_4b46:
    push de
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5240
    add hl, de
    pop de
    ld a, $10
    add e
    ld e, a
    jr nc, jr_012_4b5a

    inc d

jr_012_4b5a:
    ld c, $01
    call Call_000_03eb
    ret


Call_012_4b60:
    cp $0a
    jr nc, jr_012_4b6d

    add $30
    ld bc, $0000
    call Call_000_2917
    ret


jr_012_4b6d:
    cp $14
    jr nc, jr_012_4b75

    sub $0a
    jr jr_012_4b77

jr_012_4b75:
    ld a, $09

jr_012_4b77:
    push de
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5240
    add hl, de
    pop de
    ld c, $01
    call Call_000_03eb
    ret


Call_012_4b8a:
    ld a, [wPlayer1_Char_Sprite]
    cp $ff
    jr z, jr_012_4bf9

    and $0f
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5730
    add hl, de
    ld de, $a5c0
    ld c, $04
    call Call_000_0468
    pop hl
    ld de, $5b30
    add hl, de
    ld a, [wPlayer1_Char_AltColor]
    bit 4, a
    jr z, jr_012_4bb9

    ld de, $0080
    add hl, de

jr_012_4bb9:
    ld de, $0c01
    call Call_000_056c

jr_012_4bbf:
    ld hl, $d200
    ld c, $02
    call Call_000_03a7
    ld a, [$c8a0]
    ld de, $d200
    call Call_012_4b2f
    ld hl, $d200
    ld de, $a600
    ld c, $02
    call Call_000_0468
    ret


    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5b30
    add hl, de
    ld de, $0c01
    call Call_000_056c
    ld hl, $56f0
    ld de, $a5c0
    ld c, $04
    call Call_000_0468
    jr jr_012_4bbf

jr_012_4bf9:
    ld hl, $56f0
    ld de, $a5c0
    ld c, $04
    call Call_000_0468
    ld hl, $d200
    ld c, $02
    call Call_000_03a7
    ld hl, $d200
    ld de, $a600
    ld c, $02
    call Call_000_0468
    ret


Call_012_4c18:
    ld a, [$c8d0]
    cp $ff
    jr z, jr_012_4c87

    and $0f
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5730
    add hl, de
    ld de, $a6c0
    ld c, $04
    call Call_000_0468
    pop hl
    ld de, $5b30
    add hl, de
    ld a, [$c8d9]
    bit 4, a
    jr z, jr_012_4c47

    ld de, $0080
    add hl, de

jr_012_4c47:
    ld de, $0d01
    call Call_000_056c

jr_012_4c4d:
    ld hl, $d220
    ld c, $02
    call Call_000_03a7
    ld a, [$c8e0]
    ld de, $d220
    call Call_012_4b2f
    ld hl, $d220
    ld de, $a700
    ld c, $02
    call Call_000_0468
    ret


    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5b30
    add hl, de
    ld de, $0d01
    call Call_000_056c
    ld hl, $56f0
    ld de, $a6c0
    ld c, $04
    call Call_000_0468
    jr jr_012_4c4d

jr_012_4c87:
    ld hl, $56f0
    ld de, $a6c0
    ld c, $04
    call Call_000_0468
    ld hl, $d220
    ld c, $02
    call Call_000_03a7
    ld hl, $d220
    ld de, $a700
    ld c, $02
    call Call_000_0468
    ret


Call_012_4ca6:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [$d322], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d200
    ld c, $06
    call Call_000_03a7
    ld hl, $68a3
    ld de, $d200
    ld bc, $0001
    call Call_000_2962
    rst $18

    db $04, $10

    ld a, [$d329]
    cp $0d
    jr nz, jr_012_4cdf

    push hl
    ld de, $f7cb
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_012_4d16

jr_012_4cdf:
    ld a, [$d322]
    or a
    ret z

    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, $03
    ld de, $d200
    ld bc, $0008
    call Call_000_28fa
    ld hl, $6859
    ld de, $d200
    ld bc, $1309
    call Call_000_2962
    xor a
    ld [$d322], a
    jp Jump_012_4ddc


jr_012_4d16:
    ld a, [$d322]
    cp $01
    ret z

    ld de, $ff96
    push hl
    add hl, de
    bit 7, h
    pop hl
    jr z, jr_012_4da4

    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    push hl
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    push hl
    push hl
    ld hl, $6872
    ld de, $d200
    ld bc, $0908
    call Call_000_2962
    pop hl
    ld a, $01
    ld de, $d200
    ld bc, $0308
    call Call_000_28fa
    pop de
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    pop hl
    call Call_000_08ac
    ld a, $0a
    call Call_000_08b9
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    ld a, $01
    ld de, $d200
    ld bc, $0c08
    call Call_000_28fa
    ld hl, $6864
    ld de, $d200
    ld bc, $1208
    call Call_000_2962
    jr jr_012_4dd7

jr_012_4da4:
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    ld de, $0008
    add hl, de
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    ld a, $03
    ld de, $d200
    ld bc, $0008
    call Call_000_28fa
    ld hl, $6864
    ld de, $d200
    ld bc, $1208
    call Call_000_2962

jr_012_4dd7:
    ld a, $01
    ld [$d322], a

Jump_012_4ddc:
    ld hl, $d200
    ld de, $a720
    ld c, $06
    call Call_000_0468
    ret


    ret


Call_012_4de9:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d329]
    cp $0d
    jr z, jr_012_4e17

    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld d, $00
    call Call_012_4eb1
    ld d, $12
    ld a, $0b
    call Call_012_4eef
    ret


jr_012_4e17:
    ld de, $ff96
    push hl
    add hl, de
    bit 7, h
    pop hl
    jr z, jr_012_4e88

    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    push hl
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    push hl
    ld d, $09
    ld a, $0a
    call Call_012_4eef
    ld d, $03
    ld a, l
    call Call_012_4eef
    pop de
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    pop hl
    call Call_000_08ac
    ld a, $0a
    call Call_000_08b9
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    ld d, $0c
    ld a, l
    call Call_012_4eef
    ld d, $12
    ld a, $0c
    call Call_012_4eef
    ret


jr_012_4e88:
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    ld de, $0008
    add hl, de
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    ld d, $00
    call Call_012_4eb1
    ld d, $12
    ld a, $0c
    call Call_012_4eef
    ret


Call_012_4eb1:
    push af
    push bc
    push de
    push hl
    add sp, -$10
    push de
    push hl
    ld hl, sp+$06
    ld d, h
    ld e, l
    pop hl
    ld a, $03
    call Call_000_21f0
    ld hl, sp+$04
    pop de
    ld a, [hl+]
    cp $20
    jr z, jr_012_4ed0

    sub $30
    call Call_012_4eef

jr_012_4ed0:
    ld a, d
    add $06
    ld d, a
    ld a, [hl+]
    cp $20
    jr z, jr_012_4ede

    sub $30
    call Call_012_4eef

jr_012_4ede:
    ld a, d
    add $06
    ld d, a
    ld a, [hl]
    sub $30
    call Call_012_4eef
    add sp, $10
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_012_4eef:
    push af
    push bc
    push de
    push hl
    ld b, $08
    add a
    add $10
    ld c, a
    ld a, $48
    add d
    ld d, a
    ld e, $74
    call Call_000_2798
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $38, $10

    call Call_012_4de9
    ret


    ld a, $10
    ld hl, $4f07
    call Call_000_23e8
    ret


    ld hl, $4f07
    call Call_000_2449
    ret


Call_012_4f24:
    ld hl, $c0f4
    ld a, [hl+]
    or a
    ret z

    ld a, [hl+]
    or [hl]
    jr nz, jr_012_4f33

    ldh a, [$8c]
    bit 4, a
    ret z

jr_012_4f33:
    ld a, [$c0f7]
    and $0f
    ld d, $00
    call Call_012_4fba
    ld d, $06
    ld a, $0d
    call Call_012_4fba
    ld a, [$c0f6]
    add $64
    ld h, $00
    ld l, a
    ld d, $09
    call Call_012_4f8a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld d, h
    ld e, l
    ld hl, $c0f4
    ld [hl], $01
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$c0f4], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $02
    ld [$c0f4], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$c0f4], a
    ret


Call_012_4f8a:
    push af
    push bc
    push de
    push hl
    add sp, -$10
    push de
    push hl
    ld hl, sp+$06
    ld d, h
    ld e, l
    pop hl
    ld a, $02
    call Call_000_21f0
    ld hl, sp+$05
    pop de
    ld a, [hl+]
    cp $20
    jr z, jr_012_4fa9

    sub $30
    call Call_012_4fba

jr_012_4fa9:
    ld a, d
    add $06
    ld d, a
    ld a, [hl]
    sub $30
    call Call_012_4fba
    add sp, $10
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_012_4fba:
    push af
    push bc
    push de
    push hl
    ld b, $08
    add a
    add $10
    ld c, a
    ld a, $04
    add d
    ld d, a
    ld e, $0c
    call Call_000_2798
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_012_4fd2:
    ld hl, $64c0
    ld de, $a480
    ld c, $08
    call Call_000_0468
    ld hl, $6540
    ld de, $a780
    ld c, $08
    call Call_000_0468
    ld hl, $65c0
    ld de, $a300
    ld c, $08
    call Call_000_0468
    ret


Call_012_4ff4:
    ld hl, $6480
    ld de, $a3a0
    ld c, $02
    call Call_000_0468
    ld hl, $6320
    ld de, $a3e0
    ld c, $02
    call Call_000_0468
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $69c5
    ld de, $d000
    push de
    call Call_000_1f2f
    pop hl
    ld de, $a100
    ld c, $1c
    call Call_000_0468
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld hl, $d36c
    ld e, [hl]
    inc [hl]
    ld a, e
    and $07
    ret nz

    ld a, [$d36b]
    or a
    jr nz, jr_012_5050

    ld a, e
    and $08
    add a
    add a
    ld hl, $6480
    ld d, $00
    ld e, a
    add hl, de

jr_012_5047:
    ld de, $a3a0
    ld c, $02
    call Call_000_0468
    ret


jr_012_5050:
    ld hl, $56f0
    ld a, e
    and $08
    jr nz, jr_012_5047

    ld a, [$d36b]
    ld hl, $506e
    add l
    ld l, a
    jr nc, jr_012_5063

    inc h

jr_012_5063:
    ld a, [hl]
    ld hl, $6380
    add l
    ld l, a
    jr nc, jr_012_506c

    inc h

jr_012_506c:
    jr jr_012_5047

    nop
    nop
    add b
    nop
    ld b, b
    jr nz, jr_012_50d5

    nop

    db $c0

    ldh [$a0], a
    nop
    nop
    nop
    nop
    nop

    ld hl, $6320
    ld de, $a3e0
    ld c, $02
    call Call_000_0468
    ret


    ld hl, $6340
    and $01
    swap a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld de, $a3e0
    ld c, $02
    call Call_000_0468
    ret


    ret


Call_012_50a0:
    ld a, [$d328]
    or a
    ret nz

    ld a, [$c815]
    or a
    ret z

    ld a, [$d326]
    or a
    jp nz, Jump_012_5102

    ld a, [$c815]
    and $1e
    add a
    ld hl, $5110
    add l
    ld l, a
    jr nc, jr_012_50bf

    inc h

jr_012_50bf:
    push hl
    inc hl
    inc hl
    ld a, [hl]
    ld [$d326], a
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cab4
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a

jr_012_50d5:
    inc de
    ld [de], a
    ld a, [$d327]
    and $0f
    add a
    add l
    ld l, a
    jr nc, jr_012_50e2

    inc h

jr_012_50e2:
    ld de, $cab0
    push de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    inc de
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    pop hl
    ld de, $0901
    call Call_000_056c
    ld hl, $d327
    inc [hl]

Jump_012_5102:
    ld hl, $d326
    dec [hl]
    ret


    rr b
    rr b
    rr b
    rr b
    ret


    ld d, b
    ld d, c
    ld a, [bc]
    nop

    db $50, $51, $09

    nop

    db $50, $51, $08

    nop

    db $50, $51, $07

    nop

    db $72, $51, $06

    nop

    db $72, $51, $05

    nop
    ld [hl], d
    ld d, c
    inc b
    nop
    sub h
    ld d, c
    inc bc
    nop
    sub h
    ld d, c
    ld [bc], a
    nop
    sub h
    ld d, c
    ld bc, $9400
    ld d, c
    ld bc, $9400
    ld d, c
    ld bc, $9400
    ld d, c
    ld bc, $9400
    ld d, c
    ld bc, $9400
    ld d, c
    ld bc, $9400
    ld d, c
    db $01
    nop

    db $86, $29, $20, $7e, $40, $72, $60, $66, $81, $5a, $a4, $4e, $c7, $42, $ea, $36
    db $0d, $2b, $30, $1f, $0d, $2b, $ea, $36, $c7, $42, $a4, $4e, $81, $5a, $60, $66
    db $40, $72, $cf, $11, $53, $13, $76, $07, $b9, $03, $dc, $03, $ff, $03, $bf, $03
    db $7f, $03, $3f, $0b, $df, $12, $3f, $0b, $7f, $03, $bf, $03, $ff, $03, $dc, $03
    db $b9, $03, $76, $07

    jp nc, $bf24

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
    ld c, c
    rst $38
    ld d, b
    cp a
    ld e, b
    rst $38
    ld d, b
    ccf
    ld c, c
    ld a, a
    ld b, c
    cp a
    add hl, sp
    rst $38
    ld sp, $2a3f
    ld a, a
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ldh [$e2], a
    db $e4
    and $e8
    ld [$eeec], a
    ldh a, [$f2]
    db $f4
    or $f8
    ld a, [$fefc]
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1f
    pop hl
    db $e3
    push hl
    rst $20
    jp hl


    db $eb
    db $ed
    rst $28
    pop af
    di
    push af
    rst $30
    ld sp, hl
    ei
    db $fd
    rst $38
    ld [de], a
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    cp $fe
    db $ed
    or e
    rst $38
    xor l
    rst $38
    xor l
    rst $38
    xor l
    rst $38
    xor l
    db $ed
    or e
    cp $fe

    db $ee, $ee, $ee, $aa, $ee, $aa, $ee, $aa, $ee, $aa, $ee, $aa, $ee, $aa, $ee, $ee

    cp $fe
    db $ed
    or e
    rst $38
    xor l
    ei
    cp l
    db $ed
    or e
    rst $30
    xor a
    rst $38
    and c
    cp $fe
    cp $fe
    db $fd
    and e
    rst $38
    cp l
    db $fd
    or e
    rst $38
    cp l
    rst $38
    cp l
    db $fd
    and e
    cp $fe
    xor $ee
    or $ba
    xor $b2
    cp $aa
    rst $38
    xor e
    rst $38
    and c
    rst $38
    cp e
    cp $fe
    cp $fe
    rst $38
    and c
    rst $38
    xor a
    db $fd
    and e
    rst $38
    cp l
    rst $38
    xor l
    db $ed
    or e
    cp $fe
    cp $fe
    db $ed
    or e
    rst $38
    xor a
    db $fd
    and e
    rst $38
    xor l
    rst $38
    xor l
    db $ed
    or e
    cp $fe
    cp $fe
    rst $38
    and c
    ei
    cp l
    push af
    cp e
    ld a, [$fcb6]
    or h
    db $fc
    or h
    db $fc
    db $fc
    cp $fe
    db $ed
    or e
    rst $38

jr_012_52c5:
    xor l
    db $ed
    or e
    rst $38
    xor l
    rst $38
    xor l
    db $ed
    or e
    cp $fe
    cp $fe
    db $ed
    or e
    rst $38
    xor l
    rst $38
    xor l
    rst $28
    or c
    rst $38
    cp l
    db $ed
    or e
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    db $fc
    add h
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld a, a
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a

jr_012_5305:
    ld a, a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_5313:
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_012_5305

    jr jr_012_5313

    inc c
    add sp, $18
    ret nc

    jr nc, jr_012_52c5

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
    jr jr_012_534e

    ld h, $3e
    dec a
    inc hl
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    cp a
    ret nz

    ld l, a
    ld [hl], b
    dec de
    inc e
    dec b
    ld b, $03
    ld [bc], a
    dec b
    rlca
    ld b, $06
    nop

jr_012_534d:
    nop

jr_012_534e:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    and b
    ldh [$e0], a
    and b
    ret nc

    jr nc, jr_012_534d

    db $10
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    ret c

    jr c, @+$62

    ldh [$80], a
    add b
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
    ld c, $0a
    rra
    ld de, $203f
    ld a, a
    ld b, b
    ccf
    jr nz, jr_012_539e

    db $10
    rrca
    ld [$0407], sp
    rlca
    inc b
    dec bc
    inc c
    rra

jr_012_5389:
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$9808], sp
    sbc b
    add sp, $78
    ld hl, sp+$08

jr_012_539e:
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    dec de
    inc e
    cpl
    jr nc, @+$31

    jr nc, jr_012_53da

    db $10
    rla
    jr jr_012_53ce

    ld [$181f], sp
    cpl
    jr nc, @+$1d

jr_012_53c5:
    inc e
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop

jr_012_53ce:
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    and b
    ld h, b

jr_012_53da:
    db $ec
    inc l
    call nc, $f83c
    ld [$18e8], sp
    ldh a, [rNR10]
    ret nc

    jr nc, @-$1e

    jr nz, jr_012_5389

    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$787f], sp
    cpl
    jr nc, jr_012_541a

    jr jr_012_5410

    inc c
    dec b
    ld b, $02
    inc bc
    ld bc, $0001
    nop
    nop
    nop

jr_012_5410:
    nop
    nop
    ldh [$e0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a

jr_012_541a:
    ldh [rNR41], a
    ldh [rNR41], a
    db $fc
    inc a
    add sp, $18
    ret nc

    jr nc, jr_012_53c5

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
    ld bc, $0201
    inc bc
    dec b
    ld b, $07
    inc b
    dec bc
    inc c
    ld l, a
    ld l, b
    ld d, a
    ld a, b
    ccf

jr_012_543f:
    jr nz, jr_012_5470

    jr nc, @+$21

    db $10
    rla
    jr jr_012_5455

    add hl, bc
    dec bc
    rrca
    inc b

jr_012_544b:
    inc b
    nop
    nop
    nop
    nop
    nop

jr_012_5451:
    nop
    ret nz

    ret nz

    or b

jr_012_5455:
    ld [hl], b
    add sp, $18
    add sp, $18
    ldh a, [rNR10]
    ret nc

    jr nc, jr_012_543f

    jr nz, jr_012_5451

    jr nc, jr_012_544b

    jr @-$4e

    ld [hl], b
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

jr_012_5470:
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $3321
    ld [hl-], a
    cpl
    inc a
    ccf
    jr nz, jr_012_54be

    jr nz, @+$41

    jr nz, @+$41

    jr nz, jr_012_54c4

    jr nz, @+$41

    jr nz, @+$41

    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ldh [$a0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    ld h, b
    ldh a, [$f0]
    nop
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
    ld a, [bc]
    ld c, $0f
    dec bc
    rla
    jr jr_012_54dc

    db $10

jr_012_54be:
    cpl
    jr nc, jr_012_5500

    jr nz, jr_012_5522

    ld h, b

jr_012_54c4:
    scf
    jr c, jr_012_54d4

    ld c, $03
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

jr_012_54d4:
    jr nc, jr_012_5506

    ret z

    ld hl, sp+$78
    adc b
    db $f4
    inc c

jr_012_54dc:
    db $fc
    inc b
    ld a, [$ec06]
    inc e
    or b
    ld [hl], b
    ld b, b
    ret nz

    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

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
    add hl, bc
    rrca
    rla
    jr jr_012_552c

    jr nc, jr_012_555e

    ld h, b

jr_012_5500:
    cpl
    jr nc, jr_012_551a

    jr jr_012_5510

    dec c

jr_012_5506:
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop

jr_012_5510:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc

jr_012_551a:
    db $f4
    inc c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b

jr_012_5522:
    db $fc
    inc b
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_552c:
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
    dec c
    ld c, $37
    jr c, jr_012_559a

    ld h, b
    ccf
    jr nz, jr_012_556e

    jr nc, @+$21

    db $10
    rla
    jr jr_012_5554

    dec bc
    ld a, [bc]
    ld c, $04
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

jr_012_5554:
    ld b, b
    ret nz

    add b
    add b
    ld b, b
    ret nz

    or b
    ld [hl], b
    db $ec
    inc e

jr_012_555e:
    ld a, [$fc06]
    inc b
    db $f4
    inc c
    ld a, b
    adc b
    ret z

    ld hl, sp+$30
    jr nc, jr_012_556b

jr_012_556b:
    nop
    nop
    nop

jr_012_556e:
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ccf
    jr nz, jr_012_55b8

    jr nz, @+$41

    jr nz, jr_012_55bc

    jr nz, @+$41

    jr nz, @+$41

    jr nz, jr_012_55b2

    inc a
    inc sp
    ld [hl-], a
    ld hl, $0021
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    and b
    ld h, b
    ret nz

    ld b, b

jr_012_559a:
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$a0], a
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_55b2:
    inc b
    inc b
    dec bc
    rrca
    ld c, $09

jr_012_55b8:
    rla
    jr jr_012_55da

    db $10

jr_012_55bc:
    cpl
    jr nc, @+$41

    jr nz, jr_012_5618

    ld a, b
    ld l, a
    ld l, b
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

jr_012_55d3:
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b

jr_012_55da:
    add sp, $18
    ldh a, [$30]
    ldh [rNR41], a
    ret nc

    jr nc, jr_012_55d3

    db $10
    add sp, $18
    add sp, $18
    or b
    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld b, $0b
    inc c
    rla
    jr jr_012_562c

    jr nc, @+$81

    ld a, b
    rrca
    ld [$080f], sp
    rrca

jr_012_5605:
    ld [$080f], sp
    rrca
    ld [$0f0f], sp
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

jr_012_5618:
    and b
    ld h, b
    ret nc

jr_012_561b:
    jr nc, jr_012_5605

    jr jr_012_561b

    inc a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a

Call_012_562a:
    ldh [$e0], a

jr_012_562c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_012_565c

    jr @+$11

    ld [$1817], sp
    rra
    db $10
    cpl
    jr nc, jr_012_5676

    jr nc, jr_012_5664

    inc e
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop
    ld b, b
    ld b, b
    and b
    ldh [$e0], a
    jr nz, @-$2e

    jr nc, @-$0e

    db $10

jr_012_565c:
    add sp, $18
    ld hl, sp+$08
    call nc, $ec3c
    inc l

jr_012_5664:
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
    rra
    rra

jr_012_5676:
    dec bc
    inc c
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_012_5702

    ld b, b
    ccf
    jr nz, jr_012_56a6

    ld de, $0a0e
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
    ld hl, sp-$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    add sp, $78
    sbc b
    sbc b

jr_012_56a6:
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
    ld b, $06
    dec b
    rlca
    inc bc
    ld [bc], a
    dec b
    ld b, $1b
    inc e
    ld l, a
    ld [hl], b
    cp a
    ret nz

    ld a, a
    ld b, b
    ld e, a
    ld h, b
    dec a

jr_012_56c5:
    inc hl
    ld h, $3e
    jr jr_012_56e2

    nop
    nop
    nop
    nop
    nop

jr_012_56cf:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$d8], a
    jr c, jr_012_56cf

    inc c
    ld hl, sp+$08
    add sp, $18
    ldh a, [rNR10]

jr_012_56e2:
    ret nc

    jr nc, jr_012_56c5

    and b
    and b
    ldh [rLCDC], a
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

jr_012_5702:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    rra
    rra
    inc e
    rra
    inc l
    ccf

jr_012_5738:
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ld [hl], e
    ld a, a
    ld d, d
    ld l, l
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    ld e, [hl]
    adc b
    rst $38
    add b
    rst $38
    ld c, h
    ld a, a
    jr nz, jr_012_578b

    add hl, de
    rra
    ld b, $06
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_012_5738

    db $10
    ldh a, [rNR10]
    ldh a, [$c8]
    ld hl, sp+$68
    ld hl, sp+$34
    db $fc
    inc a
    db $fc
    ld c, h
    db $fc
    inc l
    db $fc
    inc e
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    jr nc, jr_012_57a2

    ld c, a
    ld a, a
    sub h
    rst $38
    cp a
    rst $38
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld [hl], e
    ld a, a
    ld d, d
    ld l, l
    ld d, d
    rst $38
    adc b
    rst $38
    add b
    ld a, a
    ld b, [hl]
    ccf
    jr nz, jr_012_57aa

jr_012_578b:
    add hl, de
    ld b, $06
    nop
    nop
    ld [$9608], sp
    sbc [hl]
    ld h, d
    cp $a1
    rst $38
    and c
    rst $38
    sbc $7e
    ret z

    ld a, b
    ld hl, sp-$48
    db $fc
    and h

jr_012_57a2:
    db $fc
    inc d
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ld b, b

jr_012_57aa:
    add b
    add b
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$1f0f], sp
    rra
    ccf
    jr nz, jr_012_57f8

    jr nz, jr_012_57fa

    ccf
    ld a, a
    ld b, b
    rst $38
    cp a
    rst $38
    pop af
    xor [hl]
    pop af
    cp a
    add sp, -$41
    ldh [$5f], a
    ld [hl], h
    ccf
    jr c, @+$09

    rlca
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [$c8]
    ld a, b
    add sp, $38
    ld hl, sp-$48
    db $fd
    ld h, l
    ei
    ccf
    pop af
    rst $38
    reti


    cpl
    ld a, [$f20e]
    ld a, $cc
    ld a, h
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc de
    rra
    jr nz, jr_012_5835

    inc sp
    ccf

jr_012_57f8:
    ccf
    inc l

jr_012_57fa:
    ld a, a
    ld b, b
    ld e, c
    ld h, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld h, [hl]
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ccf
    inc l
    ccf
    jr nz, jr_012_582c

    ld de, $0e0e
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_012_57f8

    sub b
    ldh a, [$90]
    ldh a, [$d0]
    ld [hl], b
    ret nc

    ldh a, [$f0]
    ld [hl], b
    ld hl, sp+$48
    ld hl, sp+$28
    ld hl, sp+$18
    db $f4
    ld a, h
    db $e4
    db $fc

jr_012_582c:
    inc e
    inc e
    nop
    nop
    rra
    rra
    ld h, b
    ld a, a
    add b

jr_012_5835:
    rst $38
    add a
    rst $38
    ld h, a
    ld a, h
    ld a, a
    ld e, b
    ld a, a
    ld a, [hl]
    rst $38
    push de
    rst $38
    xor c
    ld a, a
    ld c, [hl]
    ld a, a
    ld c, b
    ccf
    jr nc, @+$41

    inc l
    rra
    db $10
    rrca
    add hl, bc
    ld b, $06
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$70
    ldh a, [$d0]
    ld [hl], b
    ldh a, [$f0]
    ld hl, sp+$48
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr @+$21

    jr nz, jr_012_58b5

    ld b, b
    ld a, a
    ld d, b
    ld a, a
    sbc b
    rst $38
    cp h
    rst $20
    ld a, [hl]
    ld [hl], e
    ld a, [hl]
    ld d, e
    cpl
    ld sp, $293f
    ccf
    jr nz, @+$21

    inc d
    rrca
    add hl, bc
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $0a
    cp $1c
    db $f4
    inc e
    db $f4
    cp b
    add sp, -$4c
    db $fc
    ret z

    ret z

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca

jr_012_58b5:
    rlca
    jr jr_012_58d7

    jr nz, jr_012_58f9

    ld [hl], $3f
    db $76
    ld c, c
    db $76
    ld e, l
    sub b
    rst $38
    xor b
    rst $38
    sub b
    rst $38
    add c
    rst $38
    and $ff
    sbc b
    rst $38
    ld b, c
    ld a, a
    ld a, $3e
    jr @+$1a

    inc e
    inc e
    db $fc
    db $ec
    ld [hl], b

jr_012_58d7:
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$38
    ld hl, sp+$48
    ld hl, sp+$28
    ld hl, sp+$08
    ld hl, sp+$70
    ldh a, [$80]
    add b
    nop
    nop
    rlca
    rlca
    jr jr_012_5913

    jr nz, @+$41

    jr nz, jr_012_5937

    ld [hl], b

jr_012_58f9:
    ld a, a
    cp a
    rst $28
    cp a
    ldh a, [$8f]
    rst $38
    ld b, b
    ld a, a
    ccf
    ccf
    ccf
    jr nc, jr_012_5926

    inc d
    rra
    db $10
    rrca
    dec bc
    rlca
    inc b
    inc bc
    inc bc
    ldh [$e0], a
    db $10

jr_012_5913:
    ldh a, [$08]
    ld hl, sp+$1e
    cp $f9
    rst $28
    pop af
    rra
    ld [c], a
    cp $1c
    db $fc
    db $fc
    db $f4
    cp h
    call nc, $847c

jr_012_5926:
    ld hl, sp+$18
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    rlca
    rlca
    ld c, $0b
    ld a, $3f
    ld b, e

jr_012_5937:
    ld a, a
    ld a, h
    ld a, a
    ccf
    inc hl
    ccf
    dec [hl]
    ld a, a
    ld [hl], h
    rst $38
    add b
    rst $38
    add a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, h
    ccf
    jr nz, jr_012_596a

    add hl, de
    ld b, $06
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [$88]
    ld hl, sp+$44
    db $fc
    call nz, $f4fc
    inc a
    ld hl, sp+$78
    db $fc
    db $e4
    db $fc
    ld d, h
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$78

jr_012_596a:
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    rrca
    rrca
    inc e
    rla
    ld a, $3f
    ld b, c
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld [hl+], a
    ccf
    inc [hl]
    ccf
    inc [hl]
    ld a, a
    ld b, b
    rst $38
    add d
    rst $38
    adc [hl]
    ld a, a
    ld a, [hl]
    ccf
    inc a
    rra
    db $10
    rrca
    ld [$0707], sp
    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$18
    ld a, b
    ld hl, sp+$78
    ld hl, sp-$38
    ld hl, sp-$58
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ld b, b
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rra
    rra
    inc h
    dec sp
    ld c, [hl]
    ld [hl], c
    ld e, a
    ld a, a
    ld h, b
    ld a, a
    sbc a
    rst $38
    rst $38
    di
    ld a, a
    ld e, [hl]
    ld [hl], e
    ld e, [hl]
    jp hl


    rst $30
    ld [hl], e
    ld a, a
    rst $38
    cp a
    rst $38
    or e
    ld a, a
    ld b, b
    ccf
    inc h

jr_012_59ce:
    ccf
    ccf
    add b
    add b
    ld b, b
    ret nz

    jr c, jr_012_59ce

    inc d
    db $fc
    rst $00
    rst $38
    rst $20
    db $fd
    rst $38
    cp c
    rst $28
    cp l
    rst $38
    ld de, $7afe
    cp $f2
    db $fc
    call z, $88f8
    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    rlca
    rlca
    jr jr_012_5a13

    jr nz, @+$41

    ld c, b
    ld a, a
    sub e
    rst $38
    and a
    db $fc
    xor a
    ld hl, sp-$41
    di
    cp a
    ld a, [c]
    ld l, l
    ld d, d
    ld a, a
    ld c, b
    ld a, a
    ld b, b
    ccf
    inc h
    rra
    ld de, $0e0e
    nop
    nop
    sbc h
    sbc h
    ld h, d

jr_012_5a13:
    cp $12
    cp $91
    rst $38
    add hl, bc
    rst $38
    adc c
    rst $38
    ret


    ld a, a
    reti


    ld a, a
    db $fd
    and a
    db $dd
    scf
    cp $06
    ld a, [$cc3e]
    ld c, h
    adc h
    adc h
    ld [$0008], sp
    nop
    rrca
    rrca
    db $10
    rra
    jr nz, jr_012_5a75

    ld d, e
    ld a, a
    ld a, a
    ld l, h
    ld a, a
    ld h, b
    ld a, a
    ld e, c
    ld a, a
    ld l, c
    db $76
    ld c, c
    ld a, a
    ld b, b

jr_012_5a44:
    ld a, a
    ld b, h
    ccf
    jr nz, jr_012_5a88

    ld h, $1f
    db $10
    rrca
    ld [$0707], sp
    ret nz

    ret nz

    jr nc, jr_012_5a44

    ld [$c4f8], sp
    db $fc
    db $e4
    inc a
    db $e4
    inc a
    db $f4
    sbc h
    db $fc
    ld e, h
    cp $12
    cp $0a
    cp $02
    db $fc
    inc e
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    rrca
    rrca
    jr nc, @+$41

    ld b, b

jr_012_5a75:
    ld a, a
    add b
    rst $38
    add a
    rst $38
    xor a
    ld hl, sp+$7f
    ld [hl], e
    ld a, a
    ld d, d
    ld l, l
    ld d, d
    rst $38
    adc b
    rst $38
    add b
    ld a, l
    ld b, [hl]

jr_012_5a88:
    ccf
    jr nz, jr_012_5aaa

    add hl, de
    ld b, $06
    nop
    nop
    or b
    or b
    ld a, h
    db $ec
    sub d
    cp $92
    cp $c9
    rst $38
    ret


    ld a, a
    ld sp, hl
    ccf
    db $fd
    and a
    db $dd
    or a
    db $fd
    rlca
    ld sp, hl
    rra
    ld a, [$ca3e]
    ld c, [hl]

jr_012_5aaa:
    add [hl]
    add [hl]
    nop
    nop
    nop
    nop
    rrca
    rrca
    jr nc, jr_012_5af3

    ld b, b
    ld a, a
    add b
    rst $38
    add a
    rst $38
    xor a
    ld hl, sp+$7f
    ld [hl], e
    ld a, a
    ld d, d
    ld l, l
    ld d, d
    rst $38
    adc b
    rst $38
    add b
    ld a, l
    ld b, [hl]
    ccf
    jr nz, jr_012_5aea

    add hl, de
    ld b, $06
    nop
    nop
    or b
    or b
    ld a, h
    db $ec
    sub d
    cp $92
    cp $c9
    rst $38
    ret


    ld a, a
    ld sp, hl
    ccf
    db $fd
    and a
    db $dd
    or a
    db $fd
    rlca
    ld sp, hl
    rra
    ld a, [$ca3e]
    ld c, [hl]

jr_012_5aea:
    add [hl]
    add [hl]
    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10

jr_012_5af3:
    rra
    jr nz, jr_012_5b35

    ld d, e
    ld a, a
    ld a, a
    ld l, h
    ld a, a
    ld h, b
    ld a, a
    ld e, c
    ld a, a
    ld l, c
    db $76
    ld c, c
    ld a, a
    ld b, b

jr_012_5b04:
    ld a, a
    ld b, h
    ccf
    jr nz, @+$41

    ld h, $1f
    db $10
    rrca
    ld [$0707], sp
    ret nz

    ret nz

    jr nc, jr_012_5b04

    ld [$c4f8], sp
    db $fc
    db $e4
    inc a
    db $e4
    inc a
    db $f4
    sbc h
    db $fc
    ld e, h
    cp $12
    cp $0a
    cp $02
    db $fc
    inc e
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    ccf
    ld c, d
    rst $38
    ld l, e
    rst $18

jr_012_5b35:
    jr jr_012_5b37

jr_012_5b37:
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000

    db $7f, $32, $ff, $6b, $1f, $02, $00, $00

    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    ccf
    ld c, d
    rst $38
    ld l, e
    rst $18
    jr jr_012_5b5f

jr_012_5b5f:
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    ld e, $5e
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop

    db $3f, $4a, $ff, $6b, $df, $18, $00, $00, $78, $3a, $df, $6b, $80, $12, $00, $00

    rst $38
    ld bc, $6bdf
    ld e, a
    inc bc
    nop
    nop
    ld a, b
    ld a, [hl-]
    rst $18
    ld l, e
    add b
    ld [de], a
    nop
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rra
    ld c, d
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    sbc a
    jr nz, jr_012_5bbf

jr_012_5bbf:
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    sbc a
    jr nz, jr_012_5bc7

jr_012_5bc7:
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rra
    ld c, d
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    sbc a
    jr nz, jr_012_5be7

jr_012_5be7:
    nop
    ld e, $5e
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    rra
    ld c, d
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    inc b
    ld a, a
    nop
    nop
    rst $38
    ld bc, $6bff
    nop
    ld a, d
    nop
    nop
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    inc b
    ld a, a
    nop
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    sbc a
    jr nz, jr_012_5c1f

jr_012_5c1f:
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    sbc a
    jr nz, jr_012_5c27

jr_012_5c27:
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop

    db $a0, $5c, $e0, $5c, $20, $5d, $60, $5d

    and b
    ld e, l
    ldh [$5d], a
    jr nz, jr_012_5c9c

    ld h, b
    ld e, [hl]
    and b
    ld e, [hl]
    ldh [$5e], a
    jr nz, jr_012_5ca5

    db $60, $5f, $a0, $5f, $e0, $5f

    ld h, b
    ld h, b
    and b
    ld h, b
    ld h, b
    ld h, c
    jr nz, jr_012_5cb6

    ldh [$62], a
    ld b, b
    ld h, [hl]
    ld c, b
    ld h, [hl]
    ld d, b
    ld h, [hl]
    ld e, b
    ld h, [hl]
    ld h, b
    ld h, [hl]
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff

jr_012_5c9c:
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    add b
    add b
    add b

jr_012_5ca5:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add e
    add e
    adc d
    adc l
    sbc a
    sbc a
    cp a
    cp a

jr_012_5cb6:
    cp a
    cp a
    sbc a
    sbc a
    adc a
    adc a
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $3151
    ld sp, $7171
    ld [hl], c
    pop af
    pop af
    ld a, c
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    ld bc, $ff01
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
    add e
    add e
    adc l
    adc [hl]
    sbc a
    sbc a
    sbc a
    sbc a
    adc a
    adc a
    add a
    add a
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $3151
    ld sp, $7171
    ld [hl], c
    ld [hl], c
    ld [hl], c
    pop af
    pop af
    ld a, c
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    ld bc, $ff01
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
    add e
    add e
    add l
    add [hl]
    adc a
    adc a
    adc a
    adc a
    add a
    add a
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $3151
    ld sp, $7171
    ld [hl], c
    ld [hl], c
    ld [hl], c
    pop af
    pop af
    pop af
    pop af
    ld a, c
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add e
    add e
    add d
    add e
    add e
    add d
    add d
    add e
    add d
    add e
    add e
    add d
    add e
    add d
    add e
    add d
    add d
    add e
    add c
    add c
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $7131
    or c
    pop af
    pop de
    or c
    sub c
    pop af
    sub c
    pop af
    ld d, c
    pop af
    pop de
    ld [hl], c
    pop hl
    ld h, c
    ld h, c
    pop hl
    pop bc
    pop bc
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add e
    add e
    add d
    add e
    add e
    add d
    add d
    add e
    add d
    add e
    add e
    add d
    add e
    add d
    add e
    add d
    add d
    add e
    add c
    add c
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $7131
    or c
    pop af
    pop de
    or c
    sub c
    pop af
    ld d, c
    pop af
    ld d, c
    pop af
    pop hl
    ld h, c
    and c
    ld h, c
    ld hl, $c1e1
    pop bc
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add [hl]
    add [hl]
    add l
    add a
    add a
    add l
    add h
    add a
    add h
    add a
    add e
    add d
    add e
    add d
    add e
    add d
    add d
    add e
    add c
    add c
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $7131
    ld sp, $5171
    ld sp, $f191
    pop de
    pop af
    ld [hl], c
    pop af
    pop hl
    ld h, c
    and c
    ld h, c
    ld hl, $c1e1
    pop bc
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add h
    add h
    adc d
    adc [hl]
    adc c
    adc a
    add a
    add l
    add h
    add a
    add l
    add [hl]
    add e
    add d
    add d
    add e
    add d
    add e
    add c
    add c
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $7131
    ld sp, $5171
    ld sp, $f191
    sub c
    pop af
    ld [hl], c
    pop af
    pop hl
    ld h, c
    and c
    ld h, c
    ld hl, $c1e1
    pop bc
    ld bc, $ff01
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
    sbc b
    sbc b
    sub h
    sbc h
    sub d
    sbc [hl]
    adc l
    adc e
    adc d
    adc l
    add a
    add h
    add l
    add [hl]
    add d
    add e
    add c
    add c
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $7131
    ld sp, $5171
    ld sp, $b1d1
    sub c
    pop af
    or c
    pop af
    ld h, c
    pop hl
    and c
    ld h, c
    ld de, $e1f1
    pop hl
    ld bc, $ff01
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
    or b
    or b
    xor b
    cp b
    sub [hl]
    sbc [hl]
    sub l
    sbc e
    adc d
    adc l
    add l
    add [hl]
    add d
    add e
    add c
    add c
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $7131
    ld sp, $5171
    ld sp, $b1d1
    sub c
    pop af
    or c
    pop af
    pop hl
    pop hl
    and c
    ld h, c
    ld de, $e1f1
    pop hl
    ld bc, $ff01
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
    or b
    or b
    xor h
    cp h
    sub e
    sbc a
    adc d
    adc l
    add l
    add [hl]
    add e
    add e
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $7131
    ld sp, $5171
    ld sp, $b1d1
    sub c
    pop af
    or c
    pop af
    pop hl
    pop hl
    and c
    ld h, c
    ld de, $e1f1
    pop hl
    ld bc, $ff01
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
    cp b
    cp b
    and a
    cp a
    sub [hl]
    sbc c
    adc c
    adc [hl]
    add [hl]
    add a
    add c
    add c
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $7131
    ld sp, $5171
    ld sp, $b1d1
    sub c
    pop af
    or c
    pop af
    pop hl
    pop hl
    and c
    ld h, c
    ld de, $e1f1
    pop hl
    ld bc, $ff01
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
    or b
    or b
    xor a
    cp a
    sub l
    sbc e
    adc e
    adc h
    add [hl]
    add a
    add c
    add c
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $7131
    ld sp, $5171
    ld sp, $b1d1
    sub c
    pop af
    or c
    pop af
    pop hl
    pop hl
    and c
    ld h, c
    ld de, $e1f1
    pop hl
    ld bc, $ff01
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
    sbc b
    sbc b
    and a
    cp a
    sub [hl]
    sbc c
    adc l
    adc [hl]
    add d
    add e
    add c
    add c
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c
    ld sp, $3151
    ld d, c
    ld sp, $3151
    ld sp, $5171
    ld sp, $b1d1
    sub c
    pop af
    ld sp, $e1f1
    pop hl
    and c
    ld h, c
    ld de, $e1f1
    pop hl
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    add c
    add c
    add c
    add c
    add c
    add c
    add d
    add e
    add e
    add d
    add e
    add e
    add e
    add d
    add e
    add d
    add l
    add [hl]
    sbc e
    sbc h
    sub b
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add e
    rst $38
    add l
    cp $8b
    db $fc
    adc a
    ld hl, sp-$71
    ld hl, sp-$75
    db $fc
    rst $38
    rst $38
    ld bc, $c1ff
    rst $38
    and c
    ld a, a
    pop de
    ccf
    pop de
    ccf
    sub c
    ld a, a
    ld de, $bcff
    rst $38
    sbc e
    rst $38
    sub l
    rst $38
    add d
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    jp hl


    rst $38
    ld sp, $c1ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, h
    inc bc
    ld a, a
    ld bc, $7f7f
    ld bc, $007f
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld a, $00
    ld e, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld e, $00
    ld a, $c0
    cp [hl]
    add b
    ld a, [hl]
    cp $00
    cp $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, h
    ld a, a
    ld c, b
    ld a, a
    dec h
    ld a, a
    ld d, d
    ld a, a
    inc d
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld a, $00
    ld e, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld e, $00
    ld a, $fe
    inc d
    cp $4a
    cp $54
    cp $a4
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    db $10
    ld h, b
    ld a, d
    jr nz, jr_012_6172

    ld a, [hl+]
    ld a, a
    ld c, c
    ld a, a
    dec h
    ld a, a
    ld d, d
    ld a, a
    inc d
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld a, $00
    ld e, $00
    ld c, $00
    ld c, $00
    ld c, $08
    ld b, $9e
    ld a, [bc]
    cp $aa
    cp $14
    cp $4a
    cp $54
    cp $a4
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    ld b, b
    jr nc, @+$42

    nop
    ld h, b
    jr nz, jr_012_619f

    ld b, b
    ld a, l
    inc h
    ld a, a
    ld d, d
    ld a, a
    inc d
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld a, $00
    ld e, $00
    ld c, $00
    ld c, $00
    ld c, $02
    inc c
    ld [bc], a
    nop
    ld b, $02
    ld c, $04
    ld a, $0a
    cp $54
    cp $a4
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    jr nz, @+$5a

jr_012_6172:
    ld a, [hl+]
    ld d, [hl]
    ld a, a
    ld d, h
    ld a, a
    dec e
    ld a, a
    ld l, e
    ld a, a
    ld l, $7f
    ld a, a
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld a, $00
    ld e, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $04
    ld a, [de]
    ld d, h
    ld a, [hl+]
    cp $ac
    cp $6a
    cp $54
    cp $d6
    cp $fe
    nop

jr_012_619f:
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    jr nz, jr_012_61fc

    ld a, [hl+]
    ld d, b
    ld a, d
    ld d, b
    ld a, d
    ld [hl-], a
    ld a, a
    dec l
    ld a, a
    ld l, l
    ld a, a
    ld d, [hl]
    ld a, a
    dec sp
    ld a, a
    ld l, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld a, $00
    ld e, $00
    ld c, $04
    ld a, [bc]
    inc d
    ld a, [de]
    ld e, [hl]
    ld a, [bc]
    ld e, [hl]
    inc d
    cp $36
    cp $6a
    cp $aa
    cp $54
    cp $76
    cp $fe
    nop
    nop
    nop
    nop
    nop
    ld a, a
    jr nz, jr_012_6262

    ld d, h
    inc l
    ld a, [hl]
    ld a, [hl-]
    ld a, l
    ld d, h
    ld a, a
    ld d, l
    ld a, a
    ld d, l
    ld a, a
    scf
    ld a, a
    dec l
    ld a, a
    ld l, l
    ld a, a
    ld d, [hl]
    ld a, a
    dec sp
    ld a, a
    ld l, a

jr_012_61fc:
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    cp $08
    ld a, $1a
    inc d
    cp [hl]
    inc l
    ld e, [hl]
    ld d, h
    ld e, [hl]
    ld a, [de]
    ld a, [hl]
    ld a, [hl+]
    cp $b4
    cp $b6
    cp $6a
    cp $aa
    cp $54
    cp $76
    cp $fe
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, b
    ld a, h
    inc c
    ld a, a
    inc hl
    ld a, a
    ld [$207f], sp
    ld a, a
    ld bc, $7f7f
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld a, $00
    ld e, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld e, $3e

jr_012_6253:
    jr nc, jr_012_6253

    db $e4
    cp $90
    cp $04
    cp $20
    cp $fe
    nop
    nop
    nop
    nop

jr_012_6262:
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    jr jr_012_62e8

    ld a, h
    inc h
    ld a, a
    ld bc, $207f
    ld a, a
    nop
    ld a, a
    jr z, jr_012_62fa

    ld bc, $7f7f
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld a, $00
    ld e, $00
    ld c, $00
    ld c, $00
    ld c, $18
    ld e, $3e
    inc [hl]
    cp $e0
    cp $10
    cp $80
    cp $04
    cp $00
    cp $fe
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    db $10
    ld [hl], b
    ld a, b
    ld l, b
    ld a, a
    inc hl
    ld a, a
    ld c, b
    ld a, a
    rlca
    ld a, a
    ld [hl+], a
    ld a, a
    ld b, b
    ld a, a
    ld [$527f], sp
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld a, $00
    ld e, $00
    ld c, $08
    ld c, $1e
    ld d, $fe
    db $ec
    cp $08
    cp $32
    cp $00
    cp $90
    cp $04
    cp $4a
    cp $fe
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b

jr_012_62e8:
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_012_62fa:
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld a, $00
    ld e, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld e, $00
    ld a, $fe
    ld e, $fe
    cp $fe
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    nop
    jr c, jr_012_635c

    jr c, jr_012_634e

    cp $ee
    cp $92
    cp $ee
    jr c, jr_012_6356

    jr c, jr_012_6368

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_012_635f

    inc h
    jr jr_012_636e

    nop
    jr jr_012_634d

jr_012_634d:
    nop

jr_012_634e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_6356:
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_635c:
    nop
    nop
    nop

jr_012_635f:
    nop
    ld h, [hl]
    ld h, [hl]
    rst $38
    sbc c
    rst $38
    sub c
    ld a, [hl]
    ld h, d

jr_012_6368:
    ld a, [hl]
    ld b, [hl]
    rst $38
    adc c
    rst $38
    sbc c

jr_012_636e:
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ret nz

    ldh a, [$b0]
    db $fc
    adc h
    cp $82
    db $fc
    adc h
    ldh a, [$b0]
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
    jr jr_012_63cc

    jr c, jr_012_63de

    ld a, h
    ld b, h
    db $fc
    add h
    cp $c2
    ld a, $32
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
    nop
    nop

jr_012_63cc:
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    cp $82
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    jr c, jr_012_6404

    jr c, jr_012_6406

jr_012_63de:
    db $10
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
    jr nc, jr_012_6424

    jr c, jr_012_641e

    ld a, h
    ld b, h
    ld a, [hl]
    ld b, d
    cp $86
    ld hl, sp-$68
    ldh [$e0], a
    nop
    nop
    nop
    nop

jr_012_6404:
    nop
    nop

jr_012_6406:
    nop
    nop
    nop
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
    ld e, $1a
    ld a, [hl]
    ld h, d
    cp $82
    ld a, [hl]
    ld h, d
    ld e, $1a

jr_012_641e:
    ld b, $06
    nop
    nop
    nop
    nop

jr_012_6424:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$68
    cp $86
    ld a, [hl]
    ld b, d
    ld a, h
    ld b, h
    jr c, jr_012_6466

    jr nc, jr_012_6470

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    jr c, jr_012_647e

    jr c, jr_012_6480

    ld a, h
    ld b, h
    ld a, h
    ld b, h
    cp $82
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_6466:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_6470:
    nop
    nop
    ld c, $0e
    ld a, $32
    cp $c2
    db $fc
    add h
    ld a, h
    ld b, h
    jr c, @+$2a

jr_012_647e:
    jr jr_012_6498

jr_012_6480:
    nop
    nop
    jr c, jr_012_64bc

    ld d, h
    ld l, h
    cp d
    add $fa
    add [hl]
    or d
    adc $44
    ld a, h
    jr c, jr_012_64c8

    nop
    nop
    jr c, jr_012_64cc

    jr c, jr_012_64be

    cp $ee

jr_012_6498:
    cp $82
    ld a, h
    ld b, h
    jr c, jr_012_64c6

    db $10
    db $10
    jr c, jr_012_64da

    ld d, h
    ld l, h
    cp d
    add $fa
    add [hl]
    or d
    adc $44
    ld a, h
    jr c, jr_012_64e6

    nop
    nop
    nop
    nop
    jr c, jr_012_64ec

    jr c, jr_012_64de

    cp $ee
    cp $82
    ld a, h
    ld b, h

jr_012_64bc:
    jr c, jr_012_64e6

jr_012_64be:
    db $10
    db $10
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [$60]

jr_012_64c6:
    ldh a, [$60]

jr_012_64c8:
    ldh a, [$60]
    ldh a, [$60]

jr_012_64cc:
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [rP1]
    nop
    nop

jr_012_64da:
    nop
    nop
    nop
    nop

jr_012_64de:
    nop
    nop
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$90]

jr_012_64e6:
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]

jr_012_64ec:
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$f0]
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
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_012_6540

    jr jr_012_6542

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_6540:
    nop
    nop

jr_012_6542:
    nop
    nop
    jr jr_012_655e

    inc a
    inc h
    inc [hl]
    inc l
    jr jr_012_6564

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_655e:
    nop
    nop
    nop
    nop
    jr jr_012_657c

jr_012_6564:
    inc l
    inc [hl]
    ld e, d
    ld h, [hl]
    ld [hl], d
    ld c, [hl]
    inc h
    inc a
    jr jr_012_6586

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_657c:
    nop
    nop
    nop
    nop
    jr jr_012_659a

    inc a
    inc h
    ld e, d
    ld h, [hl]

jr_012_6586:
    db $fd
    add e
    ld sp, hl
    add a
    ld d, d
    ld l, [hl]
    inc h
    inc a
    jr jr_012_65a8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_659a:
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld e, d
    ld h, [hl]
    cp l
    jp $83fd


jr_012_65a8:
    ld sp, hl
    add a
    or c
    rst $08
    ld b, d
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_012_65de

    inc a
    inc h
    inc a
    inc h
    jr jr_012_65e4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_65de:
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_65e4:
    nop
    nop
    db $10
    db $10
    jr c, jr_012_6612

    db $10
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
    db $10
    db $10
    jr z, jr_012_660b

jr_012_660b:
    stop
    nop
    nop
    nop
    nop
    nop

jr_012_6612:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    db $cd, $19, $c0, $09, $86, $7a, $19, $1a, $cd, $19, $c0, $02, $86, $7a, $ed, $03
    db $cd, $19, $c0, $09, $86, $7a, $20, $01, $cd, $19, $bf, $2b, $86, $7a, $df, $12
    db $cd, $19, $c0, $02, $86, $7a, $ed, $03

    call $f119
    nop
    add [hl]
    ld a, d
    adc l
    nop

    db $40, $66, $60, $60, $48, $66, $a0, $60, $50, $66, $60, $61

    ld d, b
    ld h, [hl]
    ldh [$61], a

    db $58, $66, $20, $62

    ld e, b
    ld h, [hl]
    ld h, b
    ld h, d
    ld e, b
    ld h, [hl]
    and b
    ld h, d

    db $60, $66, $e0, $62, $48, $66, $e0, $60, $48, $66, $e0, $60

    ld c, b
    ld h, [hl]
    jr nz, @+$63

    ld d, b
    ld h, [hl]
    and b
    ld h, c
    add d
    ld h, a
    adc a
    ld h, a

    db $9c, $67, $a9, $67, $b6, $67, $c3, $67

    jp $c367


    ld h, a
    jp $8f67


    ld h, a
    adc a
    ld h, a
    sbc h
    ld h, a

    db $50, $0a, $50, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $f0, $00, $00, $00, $00, $61, $45, $14, $50, $05, $14, $51, $40, $14, $51
    db $45, $00, $51, $45, $14, $d1, $45, $14, $51, $45, $61, $86, $18, $61, $46, $18
    db $61, $85, $18, $61, $86, $14, $61, $86, $18, $d1, $86, $18, $61, $86, $61, $86
    db $18, $61, $86, $18, $61, $86, $18, $61, $86, $18, $61, $86, $18, $d1, $86, $18
    db $61, $86, $61, $86, $18, $61, $86, $18, $61, $86, $18, $61, $86, $18, $61, $86
    db $18, $d1, $86, $18, $61, $86, $61, $86, $18, $61, $86, $18, $61, $86, $18, $61
    db $86, $18, $61, $86, $18, $d1, $86, $18, $61, $86, $61, $86, $18, $61, $86, $18
    db $61, $86, $18, $61, $86, $18, $61, $86, $18, $d1, $86, $18, $61, $86, $61, $86
    db $18, $61, $86, $18, $61, $86, $18, $61, $86, $18, $61, $86, $18, $d1, $86, $18
    db $61, $86, $61, $86, $18, $60, $06, $18, $61, $80, $18, $61, $86, $00, $61, $86
    db $18, $d1, $86, $18, $61, $86, $60, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $d0, $00, $00, $00, $00, $16, $02, $00, $00, $0f, $00
    db $00, $00, $00, $00, $d0, $00, $00

    ld d, $02
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    dec c
    ld d, l
    nop
    nop

    db $16, $02, $00, $0f, $ff, $ff, $00, $00, $00, $d5, $55, $50, $00, $16, $02, $00
    db $ff, $ff, $ff, $f0, $00, $0d, $55, $55, $55, $00, $16, $02, $0f, $ff, $ff, $ff
    db $ff, $00, $d5, $55, $55, $55, $50, $16, $02, $ff, $ff, $ff, $ff, $ff, $fd, $55
    db $55, $55, $55, $55, $16, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $80, $01, $10, $02, $5a, $23, $ff, $63, $80, $01, $5f, $08, $df, $39, $1f
    db $63, $80, $01, $4a, $7d, $52, $7e, $18, $7f, $80, $01, $82, $0a, $f0, $43, $f8
    db $63, $ff, $7f, $ff, $6b, $58, $1e, $00, $00, $60, $01, $ff, $7f, $ef, $3d, $00
    db $00

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
    jr z, jr_012_681c

jr_012_681c:
    nop
    ld a, [c]
    inc bc
    ld c, e
    inc bc
    ret z

    ld [de], a
    ldh [rNR24], a
    jr nz, jr_012_6828

    db $10

jr_012_6828:
    ld [bc], a
    jr @+$25

    rst $38
    ld d, e
    jr nz, jr_012_6830

    rrca

jr_012_6830:
    nop
    jr @+$23

    sbc a
    ld d, d
    jr nz, jr_012_6838

    nop

jr_012_6838:
    ld b, b
    add h
    ld d, c
    db $f4
    ld a, a

    db $0d, $08, $f3, $fc, $ff, $3b, $69, $da, $7e, $ef, $bb, $ef, $bb, $ee, $fb, $ee
    db $fb, $be, $fb, $be, $ef, $be, $da, $76, $9f, $cf, $f3, $fc, $05, $07, $ff, $fb
    db $be, $ef, $67, $3b, $0e, $c3, $f0, $06, $08, $ff, $0d, $bc, $ee, $fa, $ab, $ee
    db $fe, $ef, $ed, $bf, $ff, $03, $08, $00, $00, $00, $03, $fe, $ff, $05, $07, $ff
    db $fb, $be, $ef, $ab, $ee, $fb, $bf, $fc, $10, $07, $ff, $ff, $ff, $ff, $ea, $76
    db $9e, $a7, $ef, $bb, $ee, $fb, $ea, $7a, $ae, $a7, $ef, $fb, $ee, $fb, $ec, $3b
    db $ee, $fb, $fc, $3f, $ff, $ff, $15, $07, $ff, $ff, $ff, $ff, $ff, $fa, $9e, $ab
    db $69, $ea, $be, $fb, $bf, $ef, $ff, $bf, $a9, $ea, $b6, $9c, $ec, $ef, $bb, $ff
    db $fb, $3b, $3b, $ee, $ab, $69, $ce, $cf, $ff, $ff, $ff, $f3, $f0, $0f, $07, $ff
    db $ff, $ff, $ff, $aa, $7a, $7b, $be, $ee, $ee, $ee, $fb, $bb, $a7, $ab, $ee, $ee
    db $fe, $ef, $bb, $bb, $fb, $bf, $ff, $ff, $ff, $c0

    ld de, $0007
    nop
    rst $38
    rst $38
    ret nz

    nop
    ld a, [hl-]
    sbc l
    and b
    nop
    ld c, $fb
    cp h
    nop
    inc bc
    xor c
    rst $28
    nop
    nop
    rst $28
    ei
    ret nz

    nop
    dec sp
    dec c
    and b
    nop
    rrca
    jp Jump_000_10fc


    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    or [hl]
    sbc [hl]
    and a
    jp hl


    cp e
    xor $fb
    and $bb
    xor $a7
    db $ed
    cp e
    xor $fb
    rst $28
    or [hl]
    sbc [hl]
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, $9e7a

    and a
    rst $28
    cp e
    xor $fb
    ld [$9eba], a
    and a
    rst $28
    cp e
    cp $fb
    rst $28
    cp e
    ld c, $fb
    rst $38
    rst $38
    rrca
    rst $38

    db $06, $08, $ff, $fd, $a7, $ef, $be, $fb, $ea, $be, $fb, $ef, $bf, $ff, $05, $08
    db $ff, $fa, $bf, $bc, $ec, $3b, $3e, $fe, $af, $ff, $06, $08, $ff, $fe, $fb, $eb
    db $be, $9b, $e6, $be, $eb, $ef, $bf, $ff, $06, $08, $ff, $fe, $a7, $ef, $be, $fb
    db $ea, $7e, $ff, $ec, $0f, $c0, $06, $08, $ff, $fd, $a7, $ef, $fd, $a7, $ff, $be
    db $fb, $da, $7f, $ff, $07, $08, $ff, $ff, $aa, $bf, $ef, $c3, $b0, $0e, $c0, $3b
    db $00, $ec, $03, $f0, $07, $08, $ff, $ff, $bb, $be, $ee, $fb, $bb, $e6, $6f, $66
    db $7f, $bb, $cf, $fc, $06, $08, $fc, $0e, $c0, $ec, $0e, $c0, $ec, $0e, $ff, $ea
    db $bf, $ff, $07, $08, $ff, $ff, $9d, $be, $9a, $fa, $ab, $e6, $6f, $bb, $be, $ee
    db $ff, $ff, $fd, $00, $ff, $ec, $78, $78, $b4, $cc, $fc, $b4, $de, $fe, $e3, $b4
    db $cc, $78, $78, $e0, $ed, $38, $38, $ff, $58, $68, $78, $48, $78, $68, $38, $28
    db $bf, $7c, $6c, $7c, $44, $7c, $7c, $c0, $f3, $ec, $ff, $f4, $b4, $cc, $dc, $bc
    db $fc, $84, $fc, $fd, $fc, $a0, $ed, $f8, $f8, $f4, $8c, $fc, $f4, $ff, $74, $4c
    db $7c, $74, $fc, $f4, $f4, $8c, $fb, $f8, $f8, $a0, $f1, $b8, $c8, $f8, $a8, $fc
    db $dd, $ac, $c2, $e0, $ec, $38, $38, $60, $ed, $fc, $fc, $02, $aa, $e0, $bc, $bc
    db $e1, $60, $f3, $40, $e2, $e0, $e1, $40, $f4, $c0, $e1, $ff, $ec, $f4, $54, $6c
    db $68, $58, $70, $50, $c2, $fe, $e0, $70, $00, $f3, $fc, $c3, $a0, $f6, $e0, $c0
    db $bc, $c4, $f1, $fc, $1c, $e0, $e0, $cf, $b0, $c7, $e0, $e0, $e0, $a0, $fb, $e0
    db $e0, $e0, $ef, $f8, $f8, $f8, $a8, $f8, $f7, $a8, $a8, $d8, $80, $f5, $5c, $6c
    db $fe, $d6, $ff, $fe, $82, $fe, $d6, $7e, $56, $76, $5a, $fb, $7e, $7e, $a0, $ef
    db $60, $60, $60, $20, $60, $01, $60, $f8, $e5, $00, $00

    nop
    push af
    push bc
    push de
    push hl
    ld hl, $6bb0
    ld de, $8200
    ld c, $10
    call Call_000_0468
    ld hl, $6ba7
    ld de, $0f01
    call Call_000_056c
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld a, [$d443]
    cp $04
    ret z

    call $6ab8
    xor a
    ld bc, $6aad
    call Call_012_6adc
    ret


    nop
    inc b
    ld bc, $0204
    inc b
    inc bc
    ld b, $04
    ld [$faff], sp
    ld b, e
    call nc, $c8b7
    push de
    ld a, [$d441]
    ld d, a
    ld e, $00
    call Call_000_08ac
    add hl, hl
    add hl, hl
    pop de
    push hl
    ld h, d
    ld l, e
    ld a, [$d442]
    ld d, a
    ld e, $00
    call Call_000_08ac
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l
    pop hl
    ret


Call_012_6adc:
    push de
    push hl
    push af
    and $07
    ld h, a
    add a
    add a
    add h
    add a
    ld hl, $ca80
    add l
    ld l, a
    jr nc, jr_012_6aee

    inc h

jr_012_6aee:
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    pop af
    swap a
    ld [hl+], a
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ret


Call_012_6b04:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $ca80
    call Call_012_6b11
    ret


Call_012_6b11:
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld a, d
    or e
    ret z

    inc hl
    inc hl
    ld a, [hl]
    push hl
    or a
    jr nz, jr_012_6b46

    dec hl
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    inc [hl]
    add a
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    cp $ff
    jr nz, jr_012_6b3a

    xor a
    dec hl
    dec hl
    ld [hl+], a
    ld [hl+], a
    pop hl
    ret


jr_012_6b3a:
    push af
    inc de
    ld a, [de]
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    pop af
    ld [hl], a

jr_012_6b46:
    pop hl
    dec [hl]
    inc hl
    ld a, [hl+]
    or a
    jr z, jr_012_6b4e

    ret


jr_012_6b4e:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl]
    push af
    push bc
    push de
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_08ac
    ld de, $0010
    add hl, de
    ld a, h
    inc a
    cp $14
    jp nc, Jump_012_6ba4

    ld a, h
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld b, a
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_08ac
    ld de, $ff10
    add hl, de
    ld a, h
    cp $10
    jp nc, Jump_012_6ba5

    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld d, b
    ld e, a
    pop af
    add $20
    ld c, a
    ld b, $07
    call Call_000_2798
    jr jr_012_6ba6

Jump_012_6ba4:
    pop hl

Jump_012_6ba5:
    pop hl

jr_012_6ba6:
    ret


    and b
    ld c, b
    rst $38
    ld a, a
    adc $7e
    and e
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_012_6bda

    jr jr_012_6bdc

    inc h
    inc a
    nop
    inc a
    jr @+$26

    jr jr_012_6bf0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, c
    ld [bc], a
    ld [bc], a
    db $10
    db $10

jr_012_6bda:
    adc h
    adc h

jr_012_6bdc:
    nop
    ld h, $20
    ld d, b
    ld b, d
    ld a, [bc]
    ld [hl-], a
    dec hl
    jr nc, @+$0a

    ld c, h
    jr nz, jr_012_6bfb

    ld a, [bc]
    ld e, b
    ld h, h
    nop
    jr jr_012_6bef

jr_012_6bef:
    nop

jr_012_6bf0:
    nop
    nop
    db $10
    db $10
    ld bc, $2201
    ld [hl+], a
    nop
    nop
    nop

jr_012_6bfb:
    jr nc, jr_012_6bfd

jr_012_6bfd:
    inc bc
    db $10
    jr nc, jr_012_6c03

    ld [bc], a
    nop

jr_012_6c03:
    jr z, jr_012_6c05

jr_012_6c05:
    ld [hl+], a
    inc e
    db $10
    ld e, d
    ld b, d
    adc c
    and c
    ld b, d
    ld h, d
    jr jr_012_6c28

    nop
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
    stop
    nop
    inc b
    dec d
    ld b, b
    ld b, b
    nop
    ld [$3200], sp
    db $10
    ld [de], a

jr_012_6c28:
    inc c
    ld c, h
    or c
    add l
    ld c, d
    ld c, d
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
    nop
    nop
    nop
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
    inc d
    jr nz, jr_012_6c74

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_6c74:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_012_6c8c

jr_012_6c8c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_012_6cab

jr_012_6cab:
    inc h
    nop
    jr jr_012_6caf

jr_012_6caf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_012_6ce0

    ld b, d
    ld b, d
    add c
    add c
    ld b, d
    ld b, d
    jr jr_012_6ce8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_6ce0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_6ce8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    cp $ff
    ret z

    push af
    push bc
    push de
    push hl
    push af
    push bc
    ld h, a
    ld l, $00
    srl h
    rr l
    srl h
    rr l
    ld bc, $5730
    add hl, bc
    xor a
    ldh [rVBK], a
    ld a, d
    cp $a0
    jr c, jr_012_6d18

    ld a, $01
    ldh [rVBK], a
    ld a, d
    sub $20
    ld d, a

jr_012_6d18:
    ld c, $04
    call Call_000_2096
    pop bc
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $5b30
    add hl, de
    bit 4, c
    jr z, jr_012_6d31

    ld de, $0080
    add hl, de

jr_012_6d31:
    ld a, b
    ld d, a
    ld e, $01
    call Call_000_05a8
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld hl, $7300
    ld de, $0b01
    call Call_000_056c
    ld hl, $7040
    ld de, $a2c0
    ld c, $04
    call Call_000_0468
    call Call_000_2e3b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4d4
    ld b, [hl]
    ld [hl], $00
    ld a, [$d438]
    ld c, a
    push bc
    ld hl, $d426
    ld de, $d422
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
    ld a, $03
    ld [$d438], a

Jump_012_6d7b:
    call Call_012_6eb8
    call Call_000_2e3b
    ldh a, [$94]
    bit 0, a
    jp z, Jump_012_6db5

    ldh a, [$9e]
    or a
    jp z, Jump_012_6e8a

    ld hl, $d424
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d403
    ld [hl], $00
    inc hl
    ld a, e
    and $e0
    ld [hl], a
    inc hl
    ld [hl], d
    ld hl, $d422
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d400
    ld [hl], $00
    inc hl
    ld a, e
    and $e0
    ld [hl], a
    inc hl
    ld [hl], d
    jp Jump_012_6e8a


Jump_012_6db5:
    bit 0, a
    jp nz, Jump_012_6e9d

    bit 1, a
    jp nz, Jump_012_6e91

    bit 3, a
    jp nz, Jump_012_6e91

    ldh a, [$90]
    and $f0
    jp z, Jump_012_6e8a

    ld hl, $6ea8
    swap a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    push af
    ld a, [$d486]
    srl a
    srl a
    srl a
    add $08
    ld h, $00
    ld l, a
    ld a, [$d443]
    or a
    jr nz, jr_012_6dec

    add hl, hl
    add hl, hl

jr_012_6dec:
    pop af
    call Call_000_0b31
    push hl
    ld hl, $d424
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
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
    jr nz, jr_012_6e13

    ld h, b
    ld l, c
    jr jr_012_6e2c

jr_012_6e13:
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
    jr z, jr_012_6e2c

    ld h, b
    ld l, c

jr_012_6e2c:
    ld a, l
    ld [$d424], a
    ld a, h
    ld [$d425], a
    pop de
    ld hl, $d422
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
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
    jr nz, jr_012_6e57

    ld h, b
    ld l, c
    jr jr_012_6e70

jr_012_6e57:
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
    jr z, jr_012_6e70

    ld h, b
    ld l, c

jr_012_6e70:
    ld a, l
    ld [$d422], a
    ld a, h
    ld [$d423], a
    call Call_012_6f16
    ld a, [$d486]
    cp $40
    jp nc, Jump_012_6d7b

    inc a
    ld [$d486], a
    jp Jump_012_6d7b


Jump_012_6e8a:
    xor a
    ld [$d486], a
    jp Jump_012_6d7b


Jump_012_6e91:
    pop bc
    ld b, a
    ld [$d4d4], a
    ld c, a
    ld [$d438], a
    xor a
    dec a
    ret


Jump_012_6e9d:
    pop bc
    ld b, a
    ld [$d4d4], a
    ld c, a
    ld [$d438], a
    xor a
    ret


    rst $38
    nop
    add b
    rst $38
    ret nz

    ldh [$a0], a
    ret nz

    ld b, b
    jr nz, jr_012_6f13

    ld b, b
    rst $38
    nop
    add b
    rst $38

Call_012_6eb8:
    call Call_012_6ed5
    ld a, [$d443]
    cp c
    jr z, jr_012_6ed4

    xor a
    ld hl, $d426
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, c
    rst $18
    nop
    inc de
    xor a
    ld [$d36c], a
    rst $18
    ld e, d
    db $10

jr_012_6ed4:
    ret


Call_012_6ed5:
    ld c, $00
    ld a, [$d442]
    ld b, a
    ld hl, $d424
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ffc0
    add hl, de
    ld d, b
    ld e, $00
    call Call_000_08ac
    bit 7, h
    ret nz

    ld de, $fc80
    add hl, de
    bit 7, h
    ret z

    ld a, [$d441]
    ld b, a
    ld hl, $d422
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ffc0
    add hl, de
    ld d, b
    ld e, $00
    call Call_000_08ac
    bit 7, h
    ret nz

    ld de, $fb80
    add hl, de
    bit 7, h
    ret z

jr_012_6f13:
    ld c, $01
    ret


Call_012_6f16:
    ldh a, [$9e]
    cp $02
    ret c

    ld hl, $d424
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d422
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_012_405e
    ld h, a
    ld l, c
    ld de, $0006
    call Call_000_22bc
    ld hl, $d422
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    ld de, $0504
    call Call_000_22a5
    ld hl, $d424
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    ld de, $0505
    call Call_000_22a5
    ld hl, $d422
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld de, $0004
    call Call_000_22bc
    ld hl, $d424
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld de, $0005
    call Call_000_22bc
    ret


    ld a, [$c815]
    cp $0c
    ret c

    ld hl, $7308
    ld de, $0b01
    call Call_000_056c
    ld hl, $70c0
    ld de, $a2c0
    ld c, $04
    call Call_000_0468
    call Call_000_2e3b
    rst $08
    sbc h
    ld bc, $a63d

jr_012_6faf:
    push bc
    ld l, b
    call Call_000_08a5
    ld a, [$c816]
    ld b, a
    ld c, $00
    call Call_000_11ac
    ld a, e
    add $48
    bit 7, a
    jr nz, jr_012_6fd2

    ld e, a
    ld a, l
    add $50
    ld d, a
    ld bc, $0b2c
    call Call_000_26a4
    call Call_012_7019

jr_012_6fd2:
    call Call_000_2e3b
    pop bc
    inc b
    inc b
    inc b
    dec c
    jr nz, jr_012_6faf

    ret


    rst $30
    ld h, b
    add hl, bc
    jr nz, jr_012_6ffe

    ldh a, [$8c]
    and $0f
    ret nz

    ldh a, [$8c]
    and $10
    add a
    add a
    ld hl, $7040
    add l
    ld l, a
    jr nc, jr_012_6ff5

    inc h

jr_012_6ff5:
    ld de, $a2c0
    ld c, $04
    call Call_000_0468
    ret


jr_012_6ffe:
    ldh a, [$8c]
    and $0f
    ret nz

    ldh a, [$8c]
    and $10
    add a
    ld hl, $72c0
    add l
    ld l, a
    jr nc, jr_012_7010

    inc h

jr_012_7010:
    ld de, $a2c0
    ld c, $04
    call Call_000_0468
    ret


Call_012_7019:
    ldh a, [$8c]
    and $07
    ret nz

    ldh a, [$8c]
    and $38
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $70c0
    add hl, de
    ld de, $a2c0
    ld c, $04
    call Call_000_0468
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
    ld bc, $0700
    nop
    add hl, bc
    rlca
    inc de
    inc c
    rla
    dec bc
    rra
    ld [bc], a
    ccf
    inc bc
    daa
    jr @+$62

    rra
    ld [hl], e
    inc c
    ld a, h
    inc sp
    ei
    ld a, h
    xor [hl]
    ld a, a
    ld b, a
    ccf
    jr c, jr_012_7065

    rlca
    nop
    nop
    nop
    ret nz

    nop
    and b

jr_012_7065:
    ret nz

    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp-$30
    ld hl, sp-$50
    cp d
    ld b, b
    ld c, $f0
    jp c, $aa20

    ret nc

    ccf
    ret nz

    rst $18
    ld h, $6f
    or $1f
    ldh [$e0], a
    nop
    ld bc, $0700
    nop
    add hl, bc
    rlca
    inc de
    inc c
    rla
    dec bc
    rra
    ld [bc], a
    ccf
    inc bc
    daa
    jr @+$62

    rra
    ld [hl], e
    inc c
    ld c, h
    inc sp
    xor e
    ld a, h
    xor [hl]
    ld a, a
    ld d, a
    cpl
    jr c, jr_012_70a5

    rlca
    nop
    nop
    nop
    ret nz

    nop

jr_012_70a4:
    and b

jr_012_70a5:
    ret nz

    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp-$30
    ld hl, sp-$50
    cp d
    ld b, b
    ld c, $f0
    jp c, $aa20

    ret nc

    ccf
    ret nz

    rst $18
    ld h, $6f
    or $9f
    ld h, b
    ld h, b
    nop
    rlca
    nop
    ld [$1707], sp
    dec bc
    rra
    rlca
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    rrca
    cpl
    ld d, $47
    dec sp
    ld c, a
    jr nc, jr_012_7116

    inc bc
    jr nz, @+$21

    ld e, h
    inc hl
    ccf
    ld [$001e], sp
    ret nz

    nop
    jr nz, jr_012_70a4

    ret nc

    and b
    ldh a, [$c0]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [$e0]
    add sp, -$30
    call nz, $e4b8
    jr @-$06

    add b
    ld [$74f0], sp
    adc b
    ld hl, sp+$20
    ldh a, [rP1]
    rlca
    nop
    ld [$1f07], sp
    ld c, $3f
    rra
    ccf
    add hl, bc
    ccf
    add hl, bc
    ccf
    add hl, bc
    ccf
    rra
    ccf
    ld d, $5e
    dec l
    ccf
    nop

jr_012_7116:
    rra
    inc c
    db $10
    rrca
    add hl, sp
    ld b, $3f
    db $10
    ld e, $00
    ldh [rP1], a
    jr @-$1e

    inc b
    ld hl, sp-$78
    ld [hl], b
    ldh a, [rP1]
    ldh [rLCDC], a
    ldh a, [rP1]
    sub b
    ld h, b
    ret z

    jr nc, jr_012_713b

    ldh a, [$88]

jr_012_7135:
    ld [hl], b
    ldh a, [rP1]
    ld [$c4f0], sp

jr_012_713b:
    jr c, jr_012_7135

    add b
    ldh a, [rP1]
    rlca
    nop
    ld [$1c07], sp
    dec bc
    ld a, $1d
    ccf
    inc c
    ccf
    dec c
    ccf
    inc c
    ld a, $1d
    ccf
    jr jr_012_718b

    rla
    rra
    nop
    rra
    ld [$0f10], sp
    jr c, jr_012_7163

    ccf
    db $10
    rra
    nop
    ldh a, [rP1]
    inc c

jr_012_7163:
    ldh a, [rNR43]
    call c, $e01c
    ldh a, [rP1]
    ldh [$c0], a
    ldh a, [rP1]
    db $10
    ldh [$90], a
    ld h, b
    ld [$08f0], sp
    ldh a, [$f0]
    nop
    ld [$04f0], sp
    ld hl, sp-$08
    nop
    ret nz

    nop
    rlca
    nop
    ld [$1007], sp
    rrca
    jr c, jr_012_719f

    ccf
    db $10
    ccf

jr_012_718b:
    rla
    ccf
    db $10
    jr c, jr_012_71a7

    inc a
    inc bc
    ld b, b
    ccf
    jr nc, jr_012_71a5

    rra
    nop
    db $10
    rrca
    jr nz, jr_012_71bb

    ccf
    nop
    rra

jr_012_719f:
    nop
    ldh a, [rP1]
    ld [$84f0], sp

jr_012_71a5:
    ld a, b
    ld a, b

jr_012_71a7:
    add b
    ldh a, [rP1]
    ldh [$c0], a
    ldh a, [rP1]
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$f0]
    nop
    ld [$04f0], sp

jr_012_71bb:
    ld hl, sp-$08
    nop
    ld [hl], b
    nop
    rlca
    nop
    ld [$1407], sp
    dec bc
    inc de
    inc c
    rra
    nop
    rra
    rlca
    rra
    nop
    jr nz, @+$21

    jr nz, jr_012_71f1

    ld b, b
    ccf
    ld b, b
    ccf
    ccf
    nop
    jr nz, @+$21

    ld b, b
    ccf
    ccf
    nop
    ld e, $00
    ret nz

    nop
    jr nz, @-$3e

jr_012_71e4:
    ld d, b
    and b
    sub b
    ld h, b
    ldh a, [rP1]
    ldh a, [$c0]
    ldh a, [rP1]
    ld [$08f0], sp

jr_012_71f1:
    ldh a, [rDIV]
    ld hl, sp+$04
    ld hl, sp-$08
    nop
    ld [$04f0], sp
    ld hl, sp-$08
    nop
    ldh a, [rP1]

jr_012_7200:
    rra
    nop
    jr nz, @+$21

    ld b, d
    dec a
    inc a
    inc bc
    rra
    nop
    rrca
    rlca
    rra
    nop
    db $10
    rrca
    jr nz, jr_012_7231

    jr nz, jr_012_7233

    jr nz, jr_012_7235

    rra
    nop
    jr nz, jr_012_7239

    ld b, b
    ccf
    ccf
    nop
    dec e
    nop
    ret nz

    nop
    jr nz, jr_012_71e4

jr_012_7224:
    db $10
    ldh [$38], a
    ret nc

    ld hl, sp+$10
    ld hl, sp-$30
    ld hl, sp+$10
    jr c, jr_012_7200

    ld a, b

jr_012_7231:
    add b
    inc b

jr_012_7233:
    ld hl, sp+$18

jr_012_7235:
    ldh [$f0], a
    nop
    db $10

jr_012_7239:
    ldh [$08], a
    ldh a, [$f8]
    nop
    ldh a, [rP1]
    rra
    nop
    ld h, b
    rra

jr_012_7244:
    adc b
    ld [hl], a
    ld [hl], b
    rrca
    rra
    nop
    rrca
    rlca
    rra
    nop
    db $10
    rrca
    inc de
    inc c
    jr nz, @+$21

    ld hl, $1f1e
    nop
    jr nz, jr_012_7279

    ld b, b
    ccf
    ccf
    nop
    rlca
    nop
    ret nz

    nop
    jr nz, jr_012_7224

jr_012_7264:
    ld [hl], b
    and b
    ld hl, sp+$70
    ld hl, sp+$60
    ld hl, sp+$60
    ld hl, sp+$60
    ld hl, sp+$70
    ld hl, sp+$30
    jr c, jr_012_7244

    ldh a, [rP1]
    ldh a, [rNR41]
    db $10

jr_012_7279:
    ldh [$38], a
    ret nz

    ld hl, sp+$10
    ldh a, [rP1]
    rrca
    nop
    jr nc, jr_012_7293

    ld b, c
    ld a, $23
    dec e
    rra
    ld bc, $050f
    rra
    ld bc, $0d13
    daa
    jr jr_012_72b3

jr_012_7293:
    rra
    inc hl
    inc e
    rra
    nop
    jr nz, jr_012_72b9

    ld b, a
    jr c, jr_012_72dc

    ld [bc], a
    ld e, $00
    ret nz

    nop
    jr nz, jr_012_7264

    ldh a, [$e0]
    ld hl, sp-$10
    ld hl, sp+$20
    ld hl, sp+$20
    ld hl, sp+$20
    ld hl, sp-$10
    ld hl, sp-$30
    db $f4

jr_012_72b3:
    ld l, b
    ld hl, sp+$00
    ldh a, [$60]
    db $10

jr_012_72b9:
    ldh [$38], a
    ret nz

    ld hl, sp+$10
    ldh a, [rP1]
    nop
    nop
    db $ec
    ld [bc], a
    add h
    ld l, d
    add h
    ld b, d
    nop
    nop
    add h
    ld b, d
    db $ec
    ld [bc], a
    nop
    xor $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_72dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    inc b
    ld c, b
    inc [hl]
    ld c, b
    inc h
    ld a, b
    inc b
    nop
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
    jr nz, jr_012_736c

    nop
    nop
    cp a
    ld [bc], a
    rst $38
    ld a, a
    jr nz, jr_012_7374

    nop
    nop
    ld e, $00
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_012_736c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_012_7374:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
