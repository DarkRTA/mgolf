INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

    ld c, $40
    inc h
    ld b, e
    ld h, c
    ld d, [hl]
    xor b
    ld e, l
    sbc h
    ld l, b
    ret nz

    ld [hl], e
    jr c, @+$79

    ld h, c
    ld b, b
    ld l, [hl]
    ld b, b
    inc e
    ld b, b
    ld a, [c]
    ld b, b
    ld c, d
    ld b, d
    xor l
    ld b, d
    or [hl]
    ld b, d
    cp $7c
    nop
    dec d
    nop
    dec c
    nop
    nop
    nop
    ret nz

    ld bc, $fe0a
    ld a, h
    nop
    ld de, $0500
    nop
    nop
    nop
    ret nz

    ld bc, $fe16
    ld a, h
    nop
    rla
    nop
    add hl, bc
    nop
    nop
    nop
    ld b, b
    ld bc, $fe0a
    ld a, h
    nop
    dec b
    nop
    dec c
    nop
    nop
    nop
    ret nz

    ld bc, $fe0d
    ld a, h
    nop
    inc bc
    nop
    dec b
    nop
    nop
    nop
    ret nz

    ld bc, $002d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    add hl, bc
    nop
    ld de, $c002
    nop
    ld de, $1100
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc bc
    inc b
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    dec b
    rst $38
    rst $30
    ldh [rSC], a
    jr nz, jr_034_40a6

    call Call_000_0a61
    ld a, l
    and $03
    and a
    jr nz, jr_034_408f

    ld a, $02

jr_034_408f:
    ld hl, $0813
    add l
    ld l, a
    jr nc, jr_034_4097

    inc h

jr_034_4097:
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$ef0a], sp
    nop
    inc e
    rst $28
    jr nz, @+$1e

    ret


jr_034_40a6:
    rst $30
    jr nz, jr_034_40c5

    jr nz, jr_034_40ce

    rst $30
    nop
    inc e
    jr nz, jr_034_40bf

    ld hl, $0817
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$e70a], sp
    nop
    inc e
    ret


jr_034_40bf:
    ld hl, $0818
    rst $18
    ld c, $0a

jr_034_40c5:
    ld a, $06
    rst $18
    ld [$e70a], sp
    jr nz, @+$1e

    ret


jr_034_40ce:
    ld hl, $0819
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    rst $18
    ld a, $0a
    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    rst $18
    ld a, $0a
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld [bc], a
    rst $38
    nop
    nop
    db $10
    ld [$0003], sp
    inc bc
    rst $38
    nop
    nop
    ld de, $0308
    nop
    inc b
    rst $38
    nop
    nop
    ld [de], a
    ld [$0003], sp
    dec b
    rst $38
    nop
    nop
    inc de
    ld [$0003], sp
    ld b, $ff
    nop
    nop
    ld a, a
    ld b, b
    inc de
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    dec de
    ld [$0003], sp
    inc bc
    rst $38
    nop
    nop
    inc e
    ld [$0003], sp
    inc b
    rst $38
    nop
    nop
    dec e
    ld [$0003], sp
    dec b
    rst $38
    nop
    nop
    ld e, $08
    inc bc
    nop
    ld b, $ff
    nop
    nop
    ld a, a
    ld b, b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    rra
    ld [$0003], sp
    inc bc
    rst $38
    nop
    nop
    jr nz, @+$0a

    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    ld hl, $0308
    nop
    dec b
    rst $38
    nop
    nop
    ld [hl+], a
    ld [$0003], sp
    ld b, $ff
    nop
    nop
    ld a, a
    ld b, b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    inc hl
    ld [$0003], sp
    inc bc
    rst $38
    nop
    nop
    inc h
    ld [$0003], sp
    inc b
    rst $38
    nop
    nop
    dec h
    ld [$0003], sp
    dec b
    rst $38
    nop
    nop
    ld h, $08
    inc bc
    nop
    ld b, $ff
    nop
    nop
    ld a, a
    ld b, b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    daa
    ld [$0003], sp
    inc bc
    rst $38
    nop
    nop
    jr z, @+$0a

    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    add hl, hl
    ld [$0003], sp
    dec b
    rst $38
    nop
    nop
    ld a, [hl+]
    ld [$0003], sp
    ld b, $ff
    nop
    nop
    ld a, a
    ld b, b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    dec hl
    ld [$0003], sp
    inc bc
    rst $38
    nop
    nop
    inc l
    ld [$0003], sp
    inc b
    rst $38
    nop
    nop
    dec l
    ld [$0003], sp
    dec b
    rst $38
    nop
    nop
    ld l, $08
    inc bc
    nop
    ld b, $ff
    nop
    nop
    ld a, a
    ld b, b
    inc bc
    nop
    rst $38

jr_034_41e8:
    rst $28
    ld b, b
    ld [bc], a
    rst $08
    and [hl]
    ld hl, $0204
    ld b, d
    ld c, $1a
    rst $18
    ld a, [bc]
    dec bc
    call Call_000_0a61
    ld a, l
    and $0f
    ld hl, $082f
    add l
    ld l, a
    jr nc, jr_034_4204

    inc h

jr_034_4204:
    rst $18
    ld c, $0a
    ld a, $ff
    rst $18
    ld [$cf0a], sp
    and [hl]
    ld hl, $0204
    ld b, d
    ld c, $1e
    rst $18
    ld a, [bc]
    dec bc
    ret


    ld de, $0402
    jr jr_034_41e8

    ld de, $0602
    jr jr_034_41e8

    ld de, $0802
    jr jr_034_41e8

    ld de, $020a
    jr jr_034_41e8

    ld de, $060a
    jr jr_034_41e8

    ld de, $1202
    jr jr_034_41e8

    ld de, $1402
    jr jr_034_41e8

    ld de, $1602
    jr jr_034_41e8

    ld de, $120a
    jr jr_034_41e8

    ld de, $160a
    jr jr_034_41e8

    ld bc, $0040
    nop
    jr jr_034_4292

    add hl, bc
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    dec e
    ld b, d
    add hl, bc
    nop
    inc bc
    ld b, b
    nop
    nop
    ld [hl+], a
    ld b, d
    add hl, bc
    nop
    inc b
    ld b, b
    nop
    nop
    daa
    ld b, d
    add hl, bc
    nop
    dec b
    ld b, b
    nop
    nop
    inc l
    ld b, d
    add hl, bc
    nop
    ld b, $40
    nop
    nop
    ld sp, $0942
    nop
    rlca
    ld b, b
    nop
    nop
    ld [hl], $42
    add hl, bc
    nop
    ld [$0040], sp
    nop
    dec sp
    ld b, d
    add hl, bc
    nop
    add hl, bc
    ld b, b
    nop
    nop
    ld b, b
    ld b, d
    add hl, bc
    nop

jr_034_4292:
    ld a, [bc]
    ld b, b
    nop
    nop
    ld b, l
    ld b, d
    add hl, bc
    nop
    rst $38
    rst $18
    nop
    ld a, [bc]
    ld hl, $0172
    rst $18
    ld c, $0a
    ld a, $00
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    ret


    ld bc, $00ff
    nop
    sbc e
    ld b, d
    nop
    nop
    rst $38
    rst $30
    ld h, b
    ld de, $0b28
    ld hl, $41bf
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_034_4304

    rst $30
    ld h, b
    ld c, $28
    dec bc
    ld hl, $4196
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_034_4304

    rst $30
    ld b, b
    ld c, $28
    dec bc
    ld hl, $416d
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_034_4304

    rst $30
    jr nz, jr_034_42f7

    jr z, jr_034_42f6

    ld hl, $4144
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_034_4304

jr_034_42f6:
    rst $30

jr_034_42f7:
    nop
    ld c, $28
    add hl, bc
    ld hl, $411b
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]

jr_034_4304:
    ret


    push af
    ld a, [$c321]
    push de
    push af
    ld a, a
    ld de, $0107
    call Call_000_22a5
    pop af
    pop de
    ld a, [$c323]
    push de
    push af
    ld a, a
    ld de, $0108
    call Call_000_22a5
    pop af
    pop de
    pop af
    ret


    dec sp
    ld b, e
    sub b
    ld b, e
    ld [hl-], a
    ld b, e
    ld sp, hl
    ld b, e
    ei
    ld b, e
    and [hl]
    ld b, l
    sub b
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $0040
    dec b
    add b
    dec l
    ld [bc], a
    ld b, b
    nop
    dec b
    add b
    add hl, de
    inc bc
    ld b, b
    nop
    ld hl, $2d80
    inc b
    ld b, b
    nop
    dec e
    add b
    dec d
    dec b
    ld b, b
    nop
    dec d
    add b
    dec d
    ld b, $40
    nop
    dec e
    add b
    dec h
    rlca
    ld b, b
    nop
    rrca
    add b
    dec l
    ld [$0040], sp
    dec bc
    add b
    dec h
    add hl, bc
    ld b, b
    nop
    rrca
    add b
    rla
    dec bc
    ld b, b
    nop
    inc hl
    add b
    dec de
    inc c
    ld b, b
    nop
    dec bc
    add b
    add hl, de
    dec c
    ld b, b
    nop
    dec d
    add b
    ld hl, $c00f
    nop
    dec e
    nop
    add hl, de
    ld c, $c0
    nop
    dec e
    nop
    add hl, de
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc bc
    ld bc, $ff02
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $ff03
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $ff04
    nop
    nop
    nop
    nop
    dec bc
    ld bc, $ff05
    nop
    nop
    nop
    nop
    inc e
    ld bc, $ff06
    nop
    nop
    nop
    nop
    ld h, $01
    rlca
    rst $38
    nop
    nop
    nop
    nop
    daa
    ld bc, $ff08
    nop
    nop
    nop
    nop
    jr z, jr_034_43d1

    add hl, bc

jr_034_43d1:
    rst $38
    nop
    nop
    nop
    nop
    add hl, hl
    ld bc, $ff0b
    nop
    nop
    nop
    nop
    inc l
    ld bc, $ff0c
    nop
    nop
    nop
    nop
    dec l
    ld bc, $ff0d
    nop
    nop
    nop
    nop
    ld l, $01
    rrca
    rst $38
    nop
    nop
    nop
    nop
    dec h
    ld [bc], a
    rst $38
    rst $38
    ret


    ld bc, $00ff
    nop
    inc bc
    inc c
    inc b
    nop
    ld [bc], a
    rst $38
    nop
    nop
    inc b
    inc c
    inc b
    nop
    inc bc
    rst $38
    nop
    nop
    dec b
    inc c
    inc b
    nop
    inc b
    rst $38
    nop
    nop
    ld b, $0c
    inc b
    nop
    dec b
    rst $38
    nop
    nop
    rlca
    inc c
    inc b
    nop
    ld b, $ff
    nop
    nop
    ld [$040c], sp
    nop
    rlca
    rst $38
    nop
    nop
    add hl, bc
    inc c
    inc b
    nop
    ld [$00ff], sp
    nop
    ld a, [bc]
    inc c
    inc b
    nop
    add hl, bc
    rst $38
    nop
    nop
    dec bc
    inc c
    inc b
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    inc c
    inc c
    inc b
    nop
    dec bc
    rst $38
    nop
    nop
    dec c
    inc c
    inc b
    nop
    inc c
    rst $38
    nop
    nop
    ld c, $0c
    inc b
    nop
    dec c
    rst $38
    nop
    nop
    rrca
    inc c
    inc b
    nop
    ld c, $ff
    nop
    nop
    db $10
    inc c
    inc b
    nop
    rrca
    rst $38
    nop
    nop
    ld [de], a
    inc c
    inc b
    nop
    rst $38
    ld a, [$c298]
    rst $18
    ld a, [de]
    ld a, [bc]
    ld a, [$c298]
    ld bc, $0500
    ld de, $2f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, [$c298]
    rst $18
    ld e, $0a
    call Call_034_452a
    ld a, $01
    ld [$c441], a
    rst $08
    sub d
    ret


    ld a, [$c298]
    rst $18
    ld a, [de]
    ld a, [bc]
    ld a, [$c298]
    ld bc, $0500
    ld de, $1b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, [$c298]
    rst $18
    ld e, $0a
    call Call_034_452a
    ld a, $02
    ld [$c441], a
    rst $08
    sub d
    ld c, $08
    call Call_000_25a1
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld a, [$c298]
    rst $18
    ld a, [de]
    ld a, [bc]
    ld a, [$c298]
    ld bc, $2100
    ld de, $2f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, [$c298]
    rst $18
    ld e, $0a
    call Call_034_452a
    ld a, $03
    ld [$c441], a
    rst $08
    sub d
    ld c, $08
    call Call_000_25a1
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    call Call_034_452a
    ld a, $04
    ld [$c441], a
    rst $08
    sub d
    ld c, $08
    call Call_000_25a1
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    call Call_034_544d
    or a
    ret z

    ld a, $05
    ld [$c441], a

Jump_034_4516:
    ldh a, [$95]
    ld b, a
    ld a, $00
    ld de, $55a6
    rst $18
    jr @+$0c

    call Call_034_532e
    ld c, $08
    call Call_000_25a1
    ret


Call_034_452a:
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, [$c298]
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $c0
    ld de, $0080
    rst $18
    jr z, jr_034_454f

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, a
    ld a, $0a

jr_034_454f:
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    ld b, $c0
    ld de, $0100
    rst $18
    jr z, @+$0c

    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, [$c298]
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $c0
    ld de, $0140
    rst $18
    jr z, @+$0c

    ld a, [$c298]
    ld b, $c0
    ld de, $0140
    rst $18
    jr z, @+$0c

    ld a, [$c298]
    rst $18
    ld e, $0a
    ld a, [$c298]
    ld b, $c0
    ld de, $0140
    rst $18
    jr z, jr_034_45ab

    ret


    jp Jump_034_4516


    ret


    ld bc, $0040
    nop
    ld [hl], h

jr_034_45ab:
    ld b, h
    nop
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    sub a
    ld b, h
    nop
    nop
    inc bc
    ld b, b
    nop
    nop
    add $44
    nop
    nop
    inc b
    ld b, b
    nop
    nop
    push af
    ld b, h
    nop
    nop
    dec b
    ld b, b
    nop
    nop
    inc c
    ld b, l
    nop
    nop
    ld b, $40
    nop
    nop
    jr @+$48

    nop
    nop
    rlca
    ld b, b
    nop
    nop
    daa
    ld b, [hl]
    nop
    nop
    ld [$0040], sp
    nop
    ld [hl], $46
    nop
    nop
    add hl, bc
    ld b, b
    nop
    nop
    ld b, l
    ld b, [hl]
    nop
    nop
    ld a, [bc]
    ld b, b
    nop
    nop
    ld d, h
    ld b, [hl]
    nop
    nop
    dec bc
    ld b, b
    nop
    nop
    ld h, e
    ld b, [hl]
    nop
    nop
    inc c
    ld b, b
    nop
    nop
    ld [hl], d
    ld b, [hl]
    nop
    nop
    dec c
    ld b, b
    nop
    nop
    add c
    ld b, [hl]
    nop
    nop
    rrca
    ld b, b
    ld a, l
    nop
    dec sp
    ld c, b
    nop
    nop
    rst $38

jr_034_4617:
    ret


    call Call_034_5530
    cp $01
    jr z, jr_034_4617

    ld a, $06
    ld [$c441], a
    rst $08
    sub d
    ret


    call Call_034_5530
    cp $01
    jr z, jr_034_4617

    ld a, $07
    ld [$c441], a
    rst $08
    sub d
    ret


    call Call_034_5530
    cp $01
    jr z, jr_034_4617

    ld a, $08
    ld [$c441], a
    rst $08
    sub d
    ret


    call Call_034_5530
    cp $01
    jr z, jr_034_4617

    ld a, $09
    ld [$c441], a
    rst $08
    sub d
    ret


    call Call_034_5530
    cp $01
    jr z, jr_034_4617

    ld a, $0a
    ld [$c441], a
    rst $08
    sub d
    ret


    call Call_034_5530
    cp $01
    jr z, jr_034_4617

    ld a, $0b
    ld [$c441], a
    rst $08
    sub d
    ret


    call Call_034_5530
    cp $01
    jr z, jr_034_4617

    ld a, $0c
    ld [$c441], a
    rst $08
    sub d
    ret


    call Call_034_5530
    cp $01
    jr z, jr_034_4617

    ld a, $0d
    ld [$c441], a
    rst $08
    sub d
    ret


    rst $28
    ld h, b
    inc c
    call Call_034_5598
    ld a, $00
    ld [$c967], a
    rst $18
    ld e, h
    ld a, [bc]
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    rst $30
    ldh [rIF], a
    jr z, jr_034_46ac

    rst $20
    and b
    rrca

jr_034_46ac:
    rst $28
    ret nz

    ld c, $ef
    ldh [$0e], a
    call Call_034_4719
    call Call_034_4769
    call Call_034_4733
    call Call_034_46e6
    ld a, [$c46a]
    cp $0e
    jp z, Jump_034_5218

    ld a, [$c46a]
    cp $0f
    jp z, Jump_034_5019

    rst $30
    and b
    rrca
    jr z, jr_034_46de

    call Call_034_4fcc
    ld a, $01
    ld hl, $46df
    call Call_000_23e8

jr_034_46de:
    ret


    ld bc, $0230
    call Call_034_50a2
    ret


Call_034_46e6:
    rst $30
    and b
    rrca
    jr z, jr_034_4718

    ld b, $2c
    ld c, $07
    ld d, $14
    ld e, $11
    ld h, $02
    ld l, $0a
    rst $18
    inc c
    dec bc
    ld b, $2c
    ld c, $07
    ld d, $14
    ld e, $11
    ld h, $02
    ld l, $0a
    rst $18
    ld c, $0b
    ld b, $2c
    ld c, $07
    ld d, $14
    ld e, $11
    ld h, $02
    ld l, $0a
    rst $18
    ld a, [bc]
    dec bc

jr_034_4718:
    ret


Call_034_4719:
    rst $30
    and b
    rrca
    jr nz, jr_034_4732

    rst $30
    ld h, b

jr_034_4720:
    ld de, $0f28
    ld b, $2c
    ld c, $1e
    ld d, $1c
    ld e, $18
    ld h, $02
    ld l, $02
    rst $18
    ld c, $0b

jr_034_4732:
    ret


Call_034_4733:
    rst $30
    ld b, b
    ld c, $28
    jr nc, jr_034_4720

    add b
    rrca
    ld b, $2c
    ld c, $16
    ld d, $14
    ld e, $20
    ld h, $04
    ld l, $05
    rst $18
    ld c, $0b
    ld b, $2c
    ld c, $16
    ld d, $14
    ld e, $20
    ld h, $04
    ld l, $05
    rst $18
    inc c
    dec bc
    ld b, $2c
    ld c, $16
    ld d, $14
    ld e, $20
    ld h, $04
    ld l, $05
    rst $18
    ld a, [bc]
    dec bc
    ret


Call_034_4769:
    rst $30
    ret nz

    ld a, [bc]
    jp nz, Jump_034_4833

    ld b, $2c
    ld c, $1c
    ld d, $22
    ld e, $1a
    ld h, $02
    ld l, $02
    rst $18
    ld c, $0b
    ld b, $2c
    ld c, $1c
    ld d, $22
    ld e, $1a
    ld h, $02
    ld l, $02
    rst $18
    inc c
    dec bc
    ld b, $2c
    ld c, $1c
    ld d, $22
    ld e, $1a
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    rst $30
    add b
    ld a, [bc]
    jp nz, Jump_034_4833

    ld b, $2c
    ld c, $1c
    ld d, $0e
    ld e, $16
    ld h, $02
    ld l, $02
    rst $18
    ld c, $0b
    ld b, $2c
    ld c, $1c
    ld d, $0e
    ld e, $16
    ld h, $02
    ld l, $02
    rst $18
    inc c
    dec bc
    ld b, $2c
    ld c, $1c
    ld d, $0e
    ld e, $16
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    rst $30
    ld b, b
    ld a, [bc]
    jr nz, jr_034_4833

    ld b, $2c
    ld c, $1c
    ld d, $0a
    ld e, $24
    ld h, $02
    ld l, $02
    rst $18
    ld c, $0b
    ld b, $2c
    ld c, $1c
    ld d, $0a
    ld e, $24
    ld h, $02
    ld l, $02
    rst $18
    inc c
    dec bc
    ld b, $2c
    ld c, $1c
    ld d, $0a
    ld e, $24
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    rst $30
    nop
    ld a, [bc]
    jr nz, jr_034_4833

    ld b, $2c
    ld c, $1c
    ld d, $0e
    ld e, $2c
    ld h, $02
    ld l, $02
    rst $18
    ld c, $0b
    ld b, $2c
    ld c, $1c
    ld d, $0e
    ld e, $2c
    ld h, $02
    ld l, $02
    rst $18
    inc c
    dec bc
    ld b, $2c
    ld c, $1c
    ld d, $0e
    ld e, $2c
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc

Jump_034_4833:
jr_034_4833:
    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_034_483b:
    rst $30
    ld h, b
    ld de, $8bca
    ld c, b
    rst $30
    and b
    rrca
    jp nz, Jump_034_488b

    rst $30
    ld h, b
    rrca
    jp nz, Jump_034_488c

    ld bc, $0040
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $1d00
    ld de, $1500
    rst $18
    jr c, jr_034_4867

    call Call_034_52c0
    call Call_034_4fb4
    ld bc, $0020
    rst $18

jr_034_4867:
    ld [hl], $0a
    xor a
    ld bc, $1d00
    ld de, $1900
    rst $18
    jr c, @+$0c

    ld a, $00
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    call Call_034_512e
    ld c, $02
    call Call_000_25a1
    call Call_000_2625
    ld a, $0f
    ld [$c441], a

Jump_034_488b:
    ret


Jump_034_488c:
    call Call_034_5019
    ret


    nop
    nop
    nop
    jr jr_034_489d

    inc [hl]
    jr z, jr_034_48ec

    ld l, h
    sub d
    ld l, [hl]
    sub c
    ccf

jr_034_489d:
    ld e, b
    jr c, jr_034_48ff

    rra
    jr nz, jr_034_48a9

    add hl, de
    nop
    ld b, $00
    nop
    nop

jr_034_48a9:
    nop
    nop
    nop
    nop
    nop
    nop

jr_034_48af:
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc de
    rlca
    jr jr_034_48e0

    inc e
    dec c
    inc de

jr_034_48e0:
    rrca
    ld de, $0c03
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_034_48ec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_034_4929

    ret z

    ldh [rNR23], a
    ret nz

    jr c, jr_034_48af

jr_034_48ff:
    ret z

    ldh a, [$88]
    ret nz

    jr nc, jr_034_4905

jr_034_4905:
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
    ld bc, $0201
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop

jr_034_4929:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_034_4945

    inc l
    inc d
    ld a, [hl+]
    ld [hl], $49
    db $76
    adc c
    db $fc
    ld a, [de]
    inc e
    ld a, [$04f8]
    ld h, b
    sbc b
    nop

jr_034_4945:
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_034_4951:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    jr nz, jr_034_49bc

jr_034_49bc:
    stop
    jr z, jr_034_4a00

    inc e
    jr nz, jr_034_4951

    call nc, Call_034_7957
    and a
    cp d
    ld l, e
    ld a, h
    ld d, a
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld d, l
    nop

jr_034_49d1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop

jr_034_49fe:
    nop
    nop

jr_034_4a00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [bc]
    nop
    inc b
    ld b, b
    ld bc, $8014
    adc c
    jr z, jr_034_4a46

    ld [de], a
    inc de
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    ldh a, [rNR10]
    ld a, b
    xor b
    jr c, jr_034_49fe

    inc e
    ldh [rNR32], a
    jr nz, jr_034_49d1

    call nc, Call_034_7957

jr_034_4a46:
    and a
    cp d
    ld l, e
    ld a, h
    ld d, a
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld d, l
    nop

jr_034_4a51:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    nop
    add b
    ld [bc], a
    nop
    dec d
    ld bc, $0a41
    adc d
    jr nz, jr_034_4a9e

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
    ld d, b
    nop
    cp [hl]
    nop
    rrca
    and b
    inc bc
    ld a, h
    ld b, b
    ld e, a
    ld hl, sp-$01
    ld a, $3f

jr_034_4a9e:
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rNR41], a
    ldh a, [$50]
    ld a, b
    xor b
    cp b
    ret nz

    inc e
    ldh [rNR32], a
    jr nz, jr_034_4a51

    call nc, Call_034_7957
    and a
    cp d
    ld l, e
    ld a, h
    ld d, a
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld d, l
    nop

jr_034_4ad1:
    nop
    nop
    nop
    inc bc
    ld [bc], a
    inc bc
    nop
    dec b
    nop
    ld c, $01
    inc d
    inc bc
    ld [$1105], sp
    inc bc
    ld b, b
    inc b
    ld hl, $0001
    ld [$0242], sp
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    db $10
    rst $38
    add b
    ld hl, sp+$07
    ret nz

    ccf
    inc bc
    rst $38
    rra
    rst $38
    ld a, h
    db $fc
    ldh a, [$f0]
    ret z

    ret z

    and b
    and b
    ld b, b
    ld b, b
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
    ld hl, sp+$08
    rst $38
    ld bc, $e01f
    inc bc
    db $fc
    ret nz

    rst $38
    ld hl, sp-$02
    ld a, $3f
    rrca
    rrca
    ld [de], a
    ld [de], a
    dec b
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
    ret z

    ld c, b
    ldh [rNR41], a
    ldh a, [$50]
    ld a, b
    xor b
    cp b
    ret nz

    inc e
    ldh [rNR32], a
    jr nz, jr_034_4ad1

    call nc, Call_034_7957
    and a
    cp d
    ld l, e
    ld a, h
    ld d, a
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld d, l
    nop

jr_034_4b51:
    nop
    nop
    nop
    inc de
    ld [de], a
    rlca
    inc b
    rrca
    ld a, [bc]
    ld e, $15
    dec e
    inc bc
    jr c, jr_034_4b67

    jr c, @+$06

    ld [hl], c
    dec hl
    ld [$e59e], a

jr_034_4b67:
    ld e, l
    sub $3e
    ld [$50ba], a
    ld d, b
    xor d
    xor d
    rra
    db $10
    rst $38
    add b
    ld hl, sp+$07
    ret nz

    ccf
    inc bc
    rst $38
    rra
    rst $38
    ld a, h
    db $fc
    ldh a, [$f0]
    ret z

    ret z

    and b
    and b
    ld b, b
    ld b, b
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
    ld hl, sp+$08
    rst $38
    ld bc, $e01f
    inc bc
    db $fc
    ret nz

    rst $38
    ld hl, sp-$02
    ld a, $3f
    rrca
    rrca
    ld [de], a
    ld [de], a
    dec b
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
    ret z

    ld c, b
    ldh [rNR41], a
    ldh a, [$50]
    ld a, b
    xor b
    cp b
    ret nz

    inc e
    ldh [rNR32], a
    jr nz, jr_034_4b51

    call nc, Call_034_7957
    and a
    cp d
    ld l, e
    ld a, h
    ld d, a
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $0f
    ld c, $0f
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, e
    ld a, e
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    inc bc
    inc b
    rlca
    ld [$0807], sp
    ld c, $11
    dec bc
    inc [hl]
    dec d
    ld a, [hl+]
    inc bc
    ld a, h
    inc d
    db $eb
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld c, $06
    dec c
    dec c
    ld e, $0e
    dec sp
    dec de
    ccf
    rra
    ld a, a
    ccf
    rst $38
    ld l, $ff
    ld e, e
    rst $38
    dec h
    rst $38
    adc e
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld [$00fc], sp
    ldh a, [$08]
    ret nz

    jr nz, jr_034_4c77

jr_034_4c77:
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
    ld b, b
    ld b, b
    inc b
    inc b
    ld d, b
    ld d, b
    xor b
    xor b
    ldh a, [$f0]
    ld [$f0ea], a
    ldh a, [$ea]
    ld [$f5f5], a
    sbc $de
    db $fc
    ld hl, sp-$10
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    ccf
    ccf
    dec a
    dec a
    jr nc, jr_034_4d3e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    nop
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld de, $341f
    ccf
    ld a, [hl+]
    ccf
    ld a, h
    ld a, a
    db $eb
    rst $38
    cp $fe
    ld hl, sp-$08

jr_034_4d3e:
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ld h, b
    nop
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld b, $08
    dec c
    nop
    ld c, $10
    dec de
    jr nz, jr_034_4d7c

    jr nz, @+$41

    ld b, b
    ld l, $d1
    ld e, e
    and h
    dec h
    jp c, $748b

    ld [bc], a
    db $fd
    dec b
    ld a, [$fd02]
    ld [$00f7], sp
    db $fc
    ld [$20f8], sp
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop

jr_034_4d7c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    nop
    ld d, b
    nop
    xor b
    nop
    ldh a, [rP1]
    ld [$f000], a
    nop
    ld [$f500], a
    nop
    sbc $00
    ld hl, sp+$04
    ldh [rNR10], a
    add b
    ld h, b
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
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
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
    ld e, $1e
    jr jr_034_4e24

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_034_4e24:
    ld bc, $0301
    ld bc, $0303
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    ld c, $3f
    dec bc
    ccf
    dec d
    rst $38
    add e
    rst $38
    sub h
    cp $c0
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_034_4e7c

    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec b
    ld [$000e], sp
    dec c
    db $10
    ld e, $20
    dec sp
    jr nz, jr_034_4e9d

    ld b, b
    ld a, a
    pop de
    rst $38
    and h
    rst $38
    jp c, $74ff

    rst $38
    db $fd
    rst $38
    ld a, [$fdff]
    rst $38
    rst $30
    rst $38
    db $fc
    db $fc
    ld hl, sp-$10
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop

jr_034_4e7c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    nop
    ld d, b
    nop
    xor b
    nop
    ldh a, [rP1]

jr_034_4e9d:
    ld [$f000], a
    nop
    ld [$f500], a
    nop
    sbc $04
    db $fc
    db $10
    ldh a, [$60]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld d, d
    stop
    db $10
    jr z, jr_034_4f55

    add d
    db $10
    jr z, jr_034_4eef

    nop
    nop
    db $10
    db $10
    db $10
    ld [bc], a
    ld [de], a
    jr z, jr_034_4f1e

    sub d
    xor $28
    jr c, jr_034_4eeb

jr_034_4eeb:
    db $10
    ld d, b
    ld [de], a
    nop

jr_034_4eef:
    nop
    db $10
    db $10
    ld [bc], a
    ld [de], a
    jr z, jr_034_4f2e

    sub d
    xor $28
    jr c, jr_034_4efb

jr_034_4efb:
    db $10
    ld d, b
    ld [de], a
    nop
    nop
    nop
    nop
    ld c, b
    ld [$0808], sp
    ld [hl], $3e
    ld [$0808], sp
    ld [$4202], sp
    nop
    nop
    nop
    nop
    ld c, b
    ld [$0808], sp
    ld [hl], $3e
    ld [$0808], sp
    ld [$4202], sp

jr_034_4f1e:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    ld b, b
    ld b, b

jr_034_4f2e:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    ld b, b
    ld b, b
    nop
    nop
    db $10
    db $10
    ld [bc], a
    ld [de], a
    jr z, jr_034_4f7e

    sub d
    xor $28
    jr c, jr_034_4f4b

jr_034_4f4b:
    db $10
    ld d, b
    ld [de], a
    nop
    nop
    db $10
    ld [$0000], sp
    db $10

jr_034_4f55:
    db $10
    ld [bc], a
    nop
    db $10
    jr jr_034_4f5f

    nop
    db $10
    jr nz, jr_034_4f65

jr_034_4f5f:
    nop
    add b
    db $10
    ld [$0000], sp

jr_034_4f65:
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    jr nz, jr_034_4f78

    ld [bc], a
    nop
    db $10
    db $10
    inc b
    nop
    jr nz, jr_034_4f88

jr_034_4f78:
    ld b, $00
    db $10
    jr jr_034_4f85

    nop

jr_034_4f7e:
    jr nz, jr_034_4f98

    ld a, [bc]
    nop
    db $10
    jr nz, jr_034_4f91

jr_034_4f85:
    nop
    jr nz, jr_034_4fa8

jr_034_4f88:
    ld c, $00
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10

jr_034_4f91:
    ld [bc], a
    nop
    db $10
    jr jr_034_4f9a

    nop
    db $10

jr_034_4f98:
    jr nz, jr_034_4fa0

jr_034_4f9a:
    nop
    add b
    ret nz

    ld bc, $00df

jr_034_4fa0:
    ld b, b
    ld a, l
    sbc a
    ld [bc], a
    ret nz

    ld bc, $7fff

jr_034_4fa8:
    db $10
    ld b, e
    ld l, d
    ld a, [hl+]
    ret nz

    ld bc, $7fff
    adc a
    dec h
    rra
    nop

Call_034_4fb4:
    xor a
    ldh [rVBK], a
    ld hl, $4890
    ld de, $8100
    ld c, $0c
    call Call_000_0468
    ld hl, $4fac
    ld de, $0a02
    call Call_000_056c
    ret


Call_034_4fcc:
    xor a
    ldh [rVBK], a
    ld hl, $4950
    ld de, $8100
    ld c, $60
    call Call_000_0468
    ld hl, $4f9c
    ld de, $0a02
    call Call_000_056c
    ret


Call_034_4fe4:
    ld h, $0a

jr_034_4fe6:
    push hl
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $1300
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $1080
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop hl
    ld d, h
    ld hl, $4f50
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_034_4fe6

    ret


Call_034_5019:
Jump_034_5019:
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    call Call_034_4fcc
    ld bc, $0040
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $1900
    ld de, $1100
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    call Call_034_51b9
    call Call_034_5396
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    rst $20
    and b
    rrca
    call Call_034_46e6
    ld b, $1c
    ld c, $1a
    ld d, $1c
    ld e, $18
    ld h, $02
    ld l, $02
    rst $18
    ld c, $0b
    ld c, $04
    call Call_000_25af
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    sbc b
    call Call_034_5396
    push af
    ld a, $06
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    and h
    ld bc, $0210
    call Call_034_4fe4
    ld bc, $0218
    call Call_034_4fe4
    ld bc, $0220
    call Call_034_4fe4
    ld bc, $0228
    call Call_034_4fe4
    ld a, $01
    ld hl, $46df
    call Call_000_23e8
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_034_50a2:
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $1300
    call Call_000_1b52
    ld a, h
    inc a
    inc a
    inc a
    inc a
    cp $16
    jp nc, Jump_034_50dd

    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld hl, $c322
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $1080
    call Call_000_1b52
    ld a, h
    inc a
    inc a
    cp $14
    jp nc, Jump_034_50dd

    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    ld hl, $4f50
    pop bc
    call Call_000_26ea
    ret


Jump_034_50dd:
    pop bc
    ret


Call_034_50df:
    ld h, $0c

jr_034_50e1:
    push hl
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $00b8
    ld a, [$c3e2]
    add l
    ld l, a
    jr nc, jr_034_50f4

    inc h

jr_034_50f4:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0080
    ld a, [$c3e2]
    add l
    ld l, a
    jr nc, jr_034_5111

    inc h

jr_034_5111:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop hl
    ld d, h
    ld hl, $4f61
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_034_50e1

    ret


Call_034_512e:
    ld a, $00
    ld [$c3e2], a

jr_034_5133:
    ld bc, $0210
    call Call_034_50df
    ld a, [$c3e2]
    cp $28
    jr nc, jr_034_5169

    add $02
    ld [$c3e2], a
    ld bc, $0214
    call Call_034_50df
    ld a, [$c3e2]
    add $01
    ld [$c3e2], a
    ld bc, $0218
    call Call_034_50df
    ld a, [$c3e2]
    add $02
    ld [$c3e2], a
    ld bc, $0214
    call Call_034_50df
    jr jr_034_5133

jr_034_5169:
    ret


Call_034_516a:
    ld h, $02

jr_034_516c:
    push hl
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $00e0
    ld a, [$c3e1]
    add l
    ld l, a
    jr nc, jr_034_517f

    inc h

jr_034_517f:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0024
    ld a, [$c3e2]
    add l
    ld l, a
    jr nc, jr_034_519c

    inc h

jr_034_519c:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop hl
    ld d, h
    ld hl, $4f6a
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_034_516c

    ret


Call_034_51b9:
    ld a, $00
    ld [$c3e2], a
    ld [$c3e1], a
    rst $08
    sub [hl]

jr_034_51c3:
    ld a, [$c3e2]
    cp $5a
    jr nc, jr_034_520e

    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld bc, $0238
    call Call_034_516a
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld bc, $0248
    call Call_034_516a
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld bc, $0258
    call Call_034_516a
    jr jr_034_51c3

jr_034_520e:
    rst $08
    sub a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Jump_034_5218:
    rst $20
    ld h, b
    ld de, $a0ef
    rrca
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    call Call_034_483b
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
    nop
    nop
    nop
    nop
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    ret nz

    ld a, [hl]
    nop
    jr jr_034_52b5

    ld [bc], a
    rst $38
    ld a, a
    rra
    ld c, h
    nop
    jr jr_034_52bd

    ld [bc], a
    rst $38
    ld a, a
    ccf
    ld [bc], a
    nop
    jr jr_034_52c5

    ld [bc], a
    rst $38
    ld a, a
    cp l
    inc bc
    nop
    jr @+$62

    ld [bc], a
    rst $38
    ld a, a
    ret nz

    ld d, $00
    jr jr_034_52d5

    ld [bc], a
    rst $38
    ld a, a
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    jp hl


    ld a, a
    xor h
    ld b, b
    nop
    inc bc
    rst $38
    ld a, a
    ccf
    ld d, $17
    ld bc, $0300
    ld l, d
    jr c, jr_034_52c0

    inc bc
    inc a
    ld [bc], a
    nop
    inc bc
    di
    inc bc
    rst $38
    ld a, a
    ld b, b
    ld bc, $0300
    di
    inc bc
    ld d, $01
    nop
    ld [bc], a
    nop

jr_034_52b5:
    inc bc
    ld c, c
    inc [hl]
    xor b
    stop
    nop
    xor l

jr_034_52bd:
    dec [hl]
    sub h
    ld c, [hl]

Call_034_52c0:
jr_034_52c0:
    ld a, $00
    ld [$c3e0], a

jr_034_52c5:
    ld hl, $5290
    ld de, $0201
    call Call_000_056c
    rst $08
    sub l
    push af
    ld a, $05
    rst $18
    inc b

jr_034_52d5:
    ld a, [bc]
    pop af
    ld a, [$c3e0]
    cp $05
    jr z, jr_034_532d

    ld hl, $5250
    ld de, $0201
    call Call_000_056c
    rst $08
    sub l
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $5258
    ld de, $0201
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $5260
    ld de, $0201
    call Call_000_056c
    rst $08
    sub l
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $5268
    ld de, $0201
    call Call_000_056c
    rst $08
    sub l
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c3e0]
    inc a
    ld [$c3e0], a
    jr jr_034_52c5

jr_034_532d:
    ret


Call_034_532e:
    rst $08
    sbc c
    ld a, $00
    ld [$c3e0], a

jr_034_5335:
    ld hl, $5290
    ld de, $0201
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c3e0]
    cp $03
    jr z, jr_034_5395

    ld hl, $5250
    ld de, $0201
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $5258
    ld de, $0201
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $5260
    ld de, $0201
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $5268
    ld de, $0201
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c3e0]
    inc a
    ld [$c3e0], a
    jr jr_034_5335

jr_034_5395:
    ret


Call_034_5396:
    ld a, $00
    ld [$c3e2], a
    ld [$c3e1], a

jr_034_539e:
    ld a, [$c3e2]
    cp $10
    jr nc, jr_034_53ff

    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld bc, $0368
    call Call_034_5400
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld bc, $036a
    call Call_034_5400
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld bc, $036c
    call Call_034_5400
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld bc, $036e
    call Call_034_5400
    jr jr_034_539e

jr_034_53ff:
    ret


Call_034_5400:
    ld h, $05

jr_034_5402:
    push hl
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $00a0
    ld a, $00
    add l
    ld l, a
    jr nc, jr_034_5414

    inc h

jr_034_5414:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0090
    ld a, $00
    add l
    ld l, a
    jr nc, jr_034_5430

    inc h

jr_034_5430:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop hl
    ld d, h
    ld hl, $4f8b
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_034_5402

    ret


Call_034_544d:
    call Call_034_5512
    jr nz, jr_034_5455

    ld a, $01
    ret


jr_034_5455:
    ld hl, $0c4f
    call Call_034_54c3
    ld a, [$c298]
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, [$c298]
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jp nz, Jump_034_54b7

    ld a, [$c298]
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld hl, $0c53
    call Call_034_54c3
    ld a, [$c298]
    rst $18
    ld [$fa0a], sp
    sbc b
    jp nz, Jump_000_1adf

    ld a, [bc]
    call Call_034_54fa
    ld a, $00
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld a, $05
    ld [$c441], a
    ld a, $01
    ret


Jump_034_54b7:
    ld a, $00
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_034_54cb

    xor a
    ret


Call_034_54c3:
    rst $30
    nop
    ld [de], a
    jp z, Jump_034_54cd

    ld a, $00

jr_034_54cb:
    jr jr_034_54ee

Jump_034_54cd:
    rst $30
    jr nz, jr_034_54e2

    jp z, Jump_034_54d7

    ld a, $01
    jr jr_034_54ee

Jump_034_54d7:
    rst $30
    ld b, b
    ld [de], a
    jp z, Jump_034_54e1

    ld a, $02
    jr jr_034_54ee

Jump_034_54e1:
    rst $30

jr_034_54e2:
    ld h, b
    ld [de], a
    jp z, Jump_034_54eb

    ld a, $03
    jr jr_034_54ee

Jump_034_54eb:
    ld a, $05
    ret


jr_034_54ee:
    ld [$c4bc], a
    add l
    ld l, a
    jr nc, jr_034_54f6

    inc h

jr_034_54f6:
    rst $18
    ld c, $0a
    ret


Call_034_54fa:
    ld de, $0090
    ld a, [$c4bc]
    ld h, $00
    ld l, a
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    call Call_000_2d49
    rst $28
    ret nz

    ld c, $c9

Call_034_5512:
    rst $30
    nop
    ld [de], a
    jp nz, Jump_034_552d

    rst $30
    jr nz, jr_034_552d

    jp nz, Jump_034_552d

    rst $30
    ld b, b
    ld [de], a
    jp nz, Jump_034_552d

    rst $30
    ld h, b
    ld [de], a
    jp nz, Jump_034_552d

    ld a, $00
    ret


Jump_034_552d:
jr_034_552d:
    ld a, $01
    ret


Call_034_5530:
    call Call_034_5512
    cp $01
    jr z, jr_034_553a

    ld a, $00
    ret


jr_034_553a:
    ld a, $00
    ld b, a
    ld a, [$c298]
    rst $18
    ld l, $0a
    ld hl, $0c46
    call Call_034_54c3
    ld a, [$c299]
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, [$c298]
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr nz, jr_034_5595

    ld hl, $0c4a
    call Call_034_54c3
    ld a, [$c299]
    rst $18
    ld [$3e0a], sp
    nop
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    call Call_034_54fa
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    ld a, [$c298]
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_034_559c

    ld a, $00
    ret


jr_034_5595:
    ld a, $01
    ret


Call_034_5598:
    rst $30
    ret nz

    jr jr_034_55c4

jr_034_559c:
    ld [$40f7], sp
    ld c, $28
    inc bc
    rst $20
    add b
    ld a, [de]
    ret


    ld bc, $0d0a
    ld c, $06
    nop
    rlca
    ret nz

    ld b, b
    ld [bc], a
    ld bc, $100a
    ld a, [bc]
    ld [bc], a
    nop

Jump_034_55b6:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d443]
    cp $02

jr_034_55c4:
    jr nc, jr_034_55f8

    add a
    add l
    ld l, a
    jr nc, jr_034_55cc

    inc h

jr_034_55cc:
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_034_55cf:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and e
    cp $ff
    jr z, jr_034_55f8

    call Call_000_2d10
    jr z, jr_034_55f0

    push hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    pop hl
    call Call_034_55fe
    pop hl

jr_034_55f0:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_034_55cf

jr_034_55f8:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_034_55fe:
    push hl
    ld h, e
    ld l, $00
    ld e, d
    ld d, $d0
    srl h
    rr l
    srl h
    rr l
    add hl, de
    pop de
    push hl
    ld h, e
    ld l, $00
    ld e, d
    ld d, $d0
    srl h
    rr l
    srl h
    rr l
    add hl, de
    pop de
    ldh a, [$96]
    push af
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    call Call_034_563b
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    call Call_034_563b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_034_563b:
    push af
    push bc
    push de
    push hl

jr_034_563f:
    push bc
    push hl
    push de

jr_034_5642:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_034_5642

    pop de
    ld a, $40
    add e
    ld e, a
    jr nc, jr_034_5650

    inc d

jr_034_5650:
    pop hl
    ld a, $40
    add l
    ld l, a
    jr nc, jr_034_5658

    inc h

jr_034_5658:
    pop bc
    dec c
    jr nz, jr_034_563f

    pop hl
    pop de
    pop bc
    pop af
    ret


    sub b
    ld d, [hl]
    or l
    ld d, [hl]
    ld l, a
    ld d, [hl]
    push hl
    ld d, [hl]
    ld h, [hl]
    ld d, a
    rla
    ld e, b
    jr nz, jr_034_56c7

    cp $7c
    nop
    rra
    nop
    add hl, hl
    nop
    nop
    nop
    ld b, b
    ld bc, $fe0d
    ld a, h
    nop
    dec h
    nop
    add hl, de
    nop
    nop
    nop
    ld b, b
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    rla
    nop
    dec sp
    dec b
    ret nz

    nop
    dec e
    nop
    add hl, hl
    ld b, $c0
    nop
    dec e
    nop
    add hl, hl
    dec bc
    ret nz

    nop
    dec de
    nop
    dec l
    inc c
    ret nz

    nop
    dec de
    nop
    dec l
    dec c
    ret nz

    nop
    dec de
    nop
    dec l
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    daa
    dec c
    rst $38
    rst $30

jr_034_56c7:
    ld b, b
    add hl, de
    jp z, Jump_034_584b

    ld hl, $14fc
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ret


    ld [bc], a
    rst $38
    nop
    nop
    add $56
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld e, h
    inc c
    inc bc
    nop
    rst $38
    ret


    ld a, [$c810]
    cp $01
    jr z, jr_034_5765

    rst $20
    and b
    ld de, $5821
    inc c
    rst $18
    ld c, $0a
    ld a, $03
    ld bc, $2500
    ld de, $1700
    rst $18
    jr nz, @+$0c

    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    rst $08
    adc d
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_034_5737

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18

jr_034_5737:
    ld a, [hl+]
    ld a, [bc]
    rst $08
    adc d
    ld a, $03
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $03
    ld b, $40
    ld de, $0200
    rst $18
    jr z, @+$0c

    ld a, $03
    rst $18
    ld e, $0a
    ld a, $03
    rst $18
    ld [$210a], sp
    ld e, h
    inc c
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$cd0a], sp
    ld [de], a
    ld a, [hl]

jr_034_5765:
    ret


    rrca
    rst $38
    nop
    nop
    rst $30
    ld d, [hl]
    ld b, $00
    rst $38
    ld hl, $14ea
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
    ld a, [bc]
    ld a, $02
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$e70a], sp
    ld h, b
    add hl, de
    ld a, $02
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ret


    ld bc, $cbff
    nop
    ld l, a
    ld d, a
    nop
    nop
    rst $38
    rst $30
    and b
    ld de, $0b20
    ld a, $03
    ld bc, $0100
    ld de, $0100
    rst $18
    jr nz, @+$0c

    ld a, [$c46a]
    cp $01
    jr z, jr_034_584a

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    ld a, [$c46a]
    cp $05
    jp z, Jump_034_590d

    cp $06
    jp z, Jump_034_597d

jr_034_584a:
    ret


Jump_034_584b:
    ld hl, $14ec
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_034_5873

    ld a, $02
    rst $18
    ld [$c90a], sp

jr_034_5873:
    rst $18
    db $10
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld a, $07
    ld [$c82c], a
    ld a, $27
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld hl, $58d6
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4e00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0801
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1f60
    ld de, $2880
    rst $18
    jr nz, jr_034_58cf

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $58e6
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_034_58cf:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_034_58e5

    ret


    nop
    ld h, b
    rra
    nop
    add b
    jr z, jr_034_58dd

jr_034_58dd:
    cp b
    inc c
    ld [bc], a
    ld e, $00
    ld bc, $0000

jr_034_58e5:
    nop
    ld b, $59
    rlca
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_034_5900:
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld a, $82
    rst $18
    ld l, $10
    ret


Jump_034_590d:
    rst $20
    nop
    inc e
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    jr nc, @+$0c

    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $14ef
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    nop
    ld [$c3e0], a
    ld [$c3e1], a
    rst $18
    inc e
    db $10
    call Call_034_5d9e
    ld a, $28
    ld [$c82c], a
    rst $18
    inc h
    db $10
    ld a, $27
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0b
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0801
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $5c61
    rst $18
    ld a, [de]
    db $10
    ld a, $0a
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, @+$12

    ret


Jump_034_597d:
    ld a, $00
    ld bc, $2100
    ld de, $2900
    rst $18
    jr nz, @+$0c

    ld a, $02
    ld bc, $1f00
    ld de, $2700
    rst $18
    jr nz, @+$0c

    ld a, $00
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    call Call_034_5ae9
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, [$c3e1]
    cp $63
    jr z, jr_034_59c3

    cp $0a
    jr z, jr_034_59f9

    cp $08
    jr nc, @+$16

    jr jr_034_59c4

jr_034_59c3:
    ret


jr_034_59c4:
    ld hl, $14f4
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld bc, $41ea
    call nz, Call_000_21c9
    push af
    inc d
    rst $18
    ld c, $0a
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$cd0a], sp
    sbc c
    ld e, d
    ret


jr_034_59f9:
    ld hl, $14f6
    rst $18
    ld c, $0a
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    rst $08
    adc d
    ld a, $02
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $02
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_034_5a3b

    ld a, $02
    rst $18
    ld [$cd0a], sp
    sbc c
    ld e, d
    ret


jr_034_5a3b:
    rst $18
    db $10
    ld a, [bc]
    rst $08
    adc d
    ld a, $02
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    nop
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld bc, $1f00
    ld de, $3300
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld bc, $2100
    ld de, $2b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    rst $18
    ld [$cd0a], sp
    sbc c
    ld e, d
    ret


    rst $30
    ld b, b
    add hl, de
    jr nz, jr_034_5ae2

    ld de, $0032
    ld a, [$c3e1]
    cp $0a
    jr nz, jr_034_5ab5

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_034_5ab5:
    push de
    rst $18
    ld [hl+], a
    ld [bc], a
    pop hl
    rst $18
    ld d, [hl]
    dec b
    rst $08
    jr c, @-$17

    ld b, b
    add hl, de
    ld hl, $011b
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_034_7dd8
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $01
    ld [$c441], a

jr_034_5ae2:
    ret


    ld a, $0a
    ld [$c3e0], a
    ret


Call_034_5ae9:
    rst $30
    ld b, b
    add hl, de
    jr z, jr_034_5afa

    ld a, $0a
    ld [$c3e0], a
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_034_5afa:
    ld a, [$c3e0]
    cp $0a
    jp z, Jump_034_5b30

    cp $09
    jp z, Jump_034_5b3f

    cp $08
    jp z, Jump_034_5b4e

    cp $07
    jp z, Jump_034_5b5d

    cp $06
    jp z, Jump_034_5b6c

    cp $05
    jp z, Jump_034_5b7b

    cp $04
    jp z, Jump_034_5b8a

    cp $03
    jp z, Jump_034_5b99

    cp $02
    jp z, Jump_034_5ba8

    cp $01
    jp z, Jump_034_5bb7

    ret


Jump_034_5b30:
    ld b, $3f
    ld c, $24
    ld d, $2a
    ld e, $24
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc

Jump_034_5b3f:
    ld b, $3f
    ld c, $26
    ld d, $23
    ld e, $20
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc

Jump_034_5b4e:
    ld b, $3f
    ld c, $24
    ld d, $16
    ld e, $25
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc

Jump_034_5b5d:
    ld b, $3f
    ld c, $26
    ld d, $19
    ld e, $24
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc

Jump_034_5b6c:
    ld b, $3f
    ld c, $24
    ld d, $19
    ld e, $27
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc

Jump_034_5b7b:
    ld b, $3f
    ld c, $26
    ld d, $1c
    ld e, $2a
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc

Jump_034_5b8a:
    ld b, $3f
    ld c, $26
    ld d, $1d
    ld e, $2d
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc

Jump_034_5b99:
    ld b, $3f
    ld c, $2a
    ld d, $1c
    ld e, $27
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc

Jump_034_5ba8:
    ld b, $3f
    ld c, $28
    ld d, $20
    ld e, $2e
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc

Jump_034_5bb7:
    ld b, $3f
    ld c, $28
    ld d, $1f
    ld e, $28
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc
    ret


    ld a, [$c3e0]
    cp $09
    jp z, Jump_034_5bfd

    cp $08
    jp z, Jump_034_5c07

    cp $07
    jp z, Jump_034_5c11

    cp $06
    jp z, Jump_034_5c1b

    cp $05
    jp z, Jump_034_5c25

    cp $04
    jp z, Jump_034_5c2f

    cp $03
    jp z, Jump_034_5c39

    cp $02
    jp z, Jump_034_5c43

    cp $01
    jp z, Jump_034_5c4d

    cp $00
    jp z, Jump_034_5c57

    ret


Jump_034_5bfd:
    ld hl, $2a80
    ld de, $2440
    rst $18
    jr nz, @+$12

    ret


Jump_034_5c07:
    ld hl, $23a0
    ld de, $2060
    rst $18
    jr nz, @+$12

    ret


Jump_034_5c11:
    ld hl, $10c0
    ld de, $2540
    rst $18
    jr nz, @+$12

    ret


Jump_034_5c1b:
    ld hl, $1980
    ld de, $2460
    rst $18
    jr nz, @+$12

    ret


Jump_034_5c25:
    ld hl, $1980
    ld de, $2780
    rst $18
    jr nz, @+$12

    ret


Jump_034_5c2f:
    ld hl, $1d80
    ld de, $2d00
    rst $18
    jr nz, @+$12

    ret


Jump_034_5c39:
    ld hl, $1ca0
    ld de, $2a40
    rst $18
    jr nz, @+$12

    ret


Jump_034_5c43:
    ld hl, $1c80
    ld de, $2700
    rst $18
    jr nz, @+$12

    ret


Jump_034_5c4d:
    ld hl, $20a0
    ld de, $20e0
    rst $18
    jr nz, jr_034_5c66

    ret


Jump_034_5c57:
    ld hl, $1f60
    ld de, $2880
    rst $18
    jr nz, jr_034_5c70

    ret


    add c
    ld e, h
    add d
    ld e, h
    ld b, b

jr_034_5c66:
    ld e, l
    sbc [hl]
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_034_5c70:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld hl, $c800
    ld a, l
    add $37
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld l, a
    ld h, $00
    ld de, $00e0
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    call Call_000_2d2e
    ld a, [$c834]
    cp $00
    jr z, jr_034_5cc3

    ld hl, $003c
    call Call_034_7d93
    or a
    jr nz, jr_034_5cce

    ld a, $01
    ld [$c8aa], a
    ld a, [$c3e0]
    inc a
    ld [$c3e0], a
    ld a, [$c3e1]
    inc a
    ld [$c3e1], a
    ret


jr_034_5cc3:
    ld a, $00
    ld [$c3e0], a
    ld a, $63
    ld [$c3e1], a
    ret


jr_034_5cce:
    ld a, [$d4dc]
    cp $03
    jr z, jr_034_5d1a

    cp $07
    jr z, jr_034_5d1a

    ld hl, $c0f6
    ld a, [hl+]
    or [hl]
    jr nz, jr_034_5d0c

    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c3e0]
    inc a
    ld [$c3e0], a
    cp $0a
    jr z, jr_034_5d0d

    ld a, $80
    ld de, $0a03
    ld hl, $14f0
    rst $18
    ld c, d
    dec b
    ld a, $80
    ld de, $0a03
    ld hl, $14f1
    rst $18
    ld c, d
    dec b

jr_034_5d04:
    ld a, $01
    ld [$c8aa], a
    rst $18
    inc l
    db $10

jr_034_5d0c:
    ret


jr_034_5d0d:
    ld a, $80
    ld de, $0a03
    ld hl, $14f3
    rst $18
    ld c, d
    dec b
    jr jr_034_5d04

jr_034_5d1a:
    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c3e0]
    inc a
    ld [$c3e0], a
    cp $0a
    jr z, jr_034_5d0d

    ld a, $80
    ld de, $0a03
    ld hl, $14f2
    rst $18
    ld c, d
    dec b
    ld a, $80
    ld de, $0a03
    ld hl, $14f1
    rst $18
    ld c, d
    dec b
    jr jr_034_5d04

    ld hl, $5d46
    jp Jump_034_55b6


    ld c, d
    ld e, l
    sbc h
    ld e, l
    nop
    inc e
    jr z, @+$41

    jr z, jr_034_5d6f

    ld bc, $2001
    inc e
    jr z, jr_034_5d95

    ld l, $20
    ld bc, $4001
    inc e
    ld a, [hl+]
    ccf
    daa
    inc e
    ld bc, $6001
    inc e
    ld h, $3f
    dec l
    dec e
    ld bc, $8001
    inc e
    ld h, $3f
    ld a, [hl+]

jr_034_5d6f:
    inc e
    ld bc, $a001
    inc e
    inc h
    ccf
    daa
    add hl, de
    ld bc, $c001
    inc e
    ld h, $3f
    inc h
    add hl, de
    ld bc, $e001
    inc e
    inc h
    ccf
    dec h
    ld d, $01
    ld bc, $1d00
    ld h, $3f
    jr nz, jr_034_5db3

    ld bc, $2001
    dec e
    inc h

jr_034_5d95:
    ccf
    inc h
    ld a, [hl+]
    ld bc, $ff01
    rst $38
    rst $38
    rst $38

Call_034_5d9e:
    ld hl, $000a
    rst $18
    ld b, [hl]
    ld [de], a
    rst $18
    ld c, d
    ld [de], a
    ret


    rst $10
    ld e, l
    db $fc
    ld e, l
    or [hl]
    ld e, l
    dec e
    ld e, [hl]
    ccf
    ld e, [hl]
    ld b, d

jr_034_5db3:
    ld e, [hl]
    ld d, e
    ld e, [hl]
    cp $7c
    nop
    add hl, de
    nop
    rra
    jp nc, $0000

    ret nz

    ld bc, $fe16
    ld a, h
    nop
    rla
    nop
    ld hl, $00d2
    nop
    ret nz

    ld bc, $000e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    dec bc
    nop
    dec sp
    dec b
    ret nz

    nop
    dec bc
    nop
    dec sp
    ld b, $c0
    nop
    add hl, de
    nop
    ld hl, $c00d
    nop
    add hl, de
    nop
    ld hl, $c00e
    nop
    add hl, de
    nop
    ld hl, $c00f
    nop
    add hl, de
    nop
    ld hl, $01ff
    rst $38
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [$ff0d], sp
    nop
    nop
    nop
    nop
    jr z, jr_034_5e19

    ld c, $ff
    nop
    nop
    nop
    nop
    jr z, jr_034_5e22

    rrca
    rst $38
    nop
    nop
    nop

jr_034_5e19:
    nop
    jr z, jr_034_5e2b

    rst $38
    ld [bc], a
    rst $38
    jp c, Jump_034_5900

jr_034_5e22:
    ld h, b
    inc bc
    nop
    ld [bc], a
    rst $38
    nop
    nop
    dec bc
    dec d

jr_034_5e2b:
    inc bc
    nop
    inc bc
    rst $38
    jp c, $6400

    ld h, b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    jr jr_034_5e9b

    inc bc
    nop
    rst $38
    ret


    rst $38
    ret


    ret


    ld bc, $d3ff
    nop
    pop hl
    ld e, [hl]
    nop
    nop
    rrca
    rst $38
    nop
    nop
    add [hl]
    ld e, [hl]
    ld bc, $ff00
    rst $20
    ld b, b
    ld a, [bc]
    ld a, [$c46a]
    cp $01
    jr z, jr_034_5e63

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a

jr_034_5e63:
    ld a, $00
    ld [$c967], a
    ld a, [$c46a]
    cp $05
    jp z, Jump_034_5fbe

    cp $06
    jp z, Jump_034_6568

    cp $0d
    jp z, Jump_034_62c0

    cp $0e
    jp z, Jump_034_6412

    cp $0f
    jp z, Jump_034_6362

    ret


    ret


    ld hl, $14fd
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [de], a
    ld a, [bc]

jr_034_5e9b:
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_034_5ea9

    ret


jr_034_5ea9:
    ld a, $0a
    ld [$c967], a
    rst $18
    inc e
    db $10
    ld a, $07
    ld [$c82c], a
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld a, $00
    rst $18
    ld e, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ld hl, $0a01
    rst $18
    db $10
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_034_5ef0

    ret


    rst $20
    ld h, b
    ld a, [de]
    ld hl, $14fe
    rst $18
    ld c, $0a
    ld a, $82
    rst $18
    ld [$010a], sp

jr_034_5ef0:
    ld c, b
    nop
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $1900
    ld de, $1f00
    rst $18
    jr c, jr_034_5f09

    rst $18
    inc a
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a

jr_034_5f09:
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld a, $07
    ld [$c82c], a
    ld a, $28
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $05
    ld [$c834], a
    ld hl, $5f83
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4f00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $080d
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $18c0
    ld de, $1ec0
    rst $18
    jr nz, jr_034_5f7c

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $5f93
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_034_5f7c:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_034_5f92

    ret


    nop
    ret nz

    jr jr_034_5f87

jr_034_5f87:
    ret nz

    ld e, $40
    call z, $0000
    inc a
    ld [bc], a
    nop
    nop
    nop

jr_034_5f92:
    nop
    or e
    ld e, a
    or h
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    call Call_000_2ed5
    ld e, $3e
    add d
    rst $18
    ld l, $10
    ret


Jump_034_5fbe:
    ld hl, $1500
    rst $18
    ld c, $0a
    ld bc, $007f
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $1900
    ld de, $1f00
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $03
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$af0a], sp
    ld bc, $0b00
    ld de, $3b00
    rst $18
    jr c, jr_034_6017

    rst $18
    inc a
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_034_6017:
    ret


    ld hl, $150c
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_034_6050

    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_034_6050:
    ld a, $03
    rst $18
    ld [$cd0a], sp
    or c
    ld h, h
    ret


    ld hl, $1502
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$210a], sp
    inc bc
    dec d
    rst $18
    ld c, $0a
    ld a, $03
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$3e0a], sp
    nop
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr nz, jr_034_6108

    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_034_6108:
    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$cd0a], sp
    or c
    ld h, h
    ret


Call_034_6114:
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $03
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld hl, $150f
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$e70a], sp
    ld b, b
    dec de
    ret


Call_034_6159:
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $03
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld hl, $1511
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    call Call_034_6586
    ld a, $0e
    ld [$c441], a
    ret


Call_034_61bb:
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $03
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld hl, $1514
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    nop
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ret nz

    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $03
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_034_6233

    ld a, $03
    rst $18
    ld e, $0a
    rst $18
    inc e
    db $10
    rst $18
    inc h

jr_034_6233:
    db $10
    ld a, $28
    ld [$c82c], a
    ld a, $28
    ld b, a
    ld a, $0d
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld hl, $6289
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4f00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $080d
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $18c0
    ld de, $1ec0
    rst $18
    jr nz, jr_034_6282

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $6299
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_034_6282:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_034_6298

    ret


    nop
    ret nz

    jr jr_034_628d

jr_034_628d:
    ret nz

    ld e, $40
    call z, $0103
    add hl, sp
    nop
    nop
    nop
    nop

jr_034_6298:
    nop
    cp c
    ld h, d
    cp d
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld a, $82
    rst $18
    ld l, $10
    ret


Jump_034_62c0:
    ld hl, $1517
    rst $18
    ld c, $0a
    ld a, $03
    ld bc, $1700
    ld de, $1f00
    rst $18
    jr nz, jr_034_62db

    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $03

jr_034_62db:
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $03
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $03
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$f50a], sp
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    call Call_034_6586
    ld a, $0f
    ld [$c441], a
    ret


Jump_034_6362:
    ld a, $03
    ld bc, $1700
    ld de, $1f00
    rst $18
    jr nz, jr_034_6377

    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $00

jr_034_6377:
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    rst $20
    ld b, b
    ld a, [de]
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $151a
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $00
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_034_63dd

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18

jr_034_63dd:
    ld a, [hl+]
    ld a, [bc]
    ld a, $02
    ld bc, $1900
    ld de, $2900
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    ld bc, $1900
    ld de, $2100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    rst $18
    ld e, $0a
    ld a, $03
    ld bc, $1900
    ld de, $2900
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


Jump_034_6412:
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    rst $20
    ld b, b
    ld a, [de]
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $03
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $00
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_034_647c

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18

jr_034_647c:
    ld a, [hl+]
    ld a, [bc]
    ld a, $03
    ld bc, $1900
    ld de, $2100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    rst $18
    ld e, $0a
    ld a, $03
    ld bc, $1900
    ld de, $2900
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    ld bc, $1900
    ld de, $2900
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


    rst $28
    nop
    inc e
    ld a, $00
    ld [$c3e1], a
    ld [$c3e0], a
    rst $18
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld hl, $18c0
    ld de, $1ec0
    rst $18
    jr nz, @+$12

    ld a, $28
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $05
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $080d
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $6507
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_034_6516

    ret


    daa
    ld h, l
    jr z, jr_034_6570

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_034_6516:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld a, [$c834]
    cp $05
    jp z, Jump_034_6539

    rst $20
    nop
    inc e
    ld a, $80
    rst $18
    ld l, $10
    ret


Jump_034_6539:
    ld a, [$c8aa]
    or a
    jr z, jr_034_6544

    ld a, $01
    ld [$c3e0], a

jr_034_6544:
    ld a, [$d4dc]
    cp $06
    jr nz, jr_034_6550

    ld a, $01
    ld [$c3e0], a

jr_034_6550:
    ld a, [$d48e]
    bit 0, a
    jr nz, jr_034_655d

    ld a, $80
    rst $18
    ld l, $10
    ret


jr_034_655d:
    ld a, $01
    ld [$c3e1], a
    ld a, $80
    rst $18
    ld l, $10
    ret


Jump_034_6568:
    rst $30
    nop
    inc e
    jr nz, jr_034_6576

    ld a, [$c3e0]

jr_034_6570:
    or a
    jr nz, jr_034_6577

    call Call_034_6114

jr_034_6576:
    ret


jr_034_6577:
    ld a, [$c3e1]
    cp $01
    jr nz, jr_034_6582

    call Call_034_61bb
    ret


jr_034_6582:
    call Call_034_6159
    ret


Call_034_6586:
    ld de, $008c
    ld a, [$c3e1]
    cp $01
    jr nz, jr_034_659d

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_034_659d:
    push de
    rst $18
    ld [hl+], a
    ld [bc], a
    pop hl
    rst $18
    ld d, [hl]
    dec b
    rst $08
    jr c, @+$23

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_034_7dd8
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ret


    rst $30
    ret nz

    add hl, de
    jr nz, jr_034_65db

    ld hl, $65e0
    ld de, $8200
    ld c, $0c
    call Call_000_0468
    ld a, $13
    ld hl, $66a0
    call Call_000_23e8

jr_034_65db:
    ret


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
    ld b, $0b
    rrca
    inc d
    rra
    inc de
    rra
    inc de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rla
    rra
    dec c
    rrca
    ccf
    inc sp
    dec sp
    cpl
    inc a
    inc a
    ret nz

    ret nz

    ldh [$a0], a
    and b
    ldh [$e0], a
    ld h, b
    ret nc

    ldh a, [$28]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$21
    rst $38
    rst $28
    rst $38
    or e
    di
    db $fd
    call $f4dc
    ld a, h
    ld a, h
    inc bc

jr_034_6621:
    inc bc
    rlca
    dec b
    dec e
    rra
    rra
    inc de
    rrca
    rrca
    inc d
    rra
    inc de
    rra
    inc de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rla
    rra
    dec c
    rrca
    rra
    add hl, de
    dec e
    rla
    ld e, $1e
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    or b
    ldh a, [rBCPS]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$27
    ld sp, hl
    db $db
    ei
    rst $18
    rst $38
    rst $28
    rst $38
    or b
    ldh a, [$fc]
    call z, $f4dc
    ld a, h
    ld a, h
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $0f
    dec bc
    dec bc
    inc c
    dec e
    ld a, [de]
    dec hl
    inc a
    ld c, b
    ld [hl], a
    ld d, h
    ld l, e
    ld l, e
    ld [hl], h
    daa
    jr c, jr_034_6692

    ld e, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$e8]
    jr jr_034_6621

    add sp, -$08
    ld [$0cfc], sp
    ld [$0d1e], a
    di

jr_034_6692:
    rra
    pop hl
    db $fd
    inc bc
    ld a, [c]
    ld c, $cc
    inc a
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld a, [$d443]
    cp $01
    ret nz

    ld a, [$d442]
    ld d, a
    ld e, $00
    ld hl, $d43f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_034_6703

    call Call_000_08ac
    ld de, $0004
    add hl, de
    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld b, a
    ld a, [$d441]
    ld d, a
    ld e, $00
    ld hl, $d43d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ld de, $0004
    add hl, de
    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld d, a
    ld e, b
    ld hl, $6704
    ldh a, [$8c]
    add l
    ld l, a
    jr nc, jr_034_66f0

    inc h

jr_034_66f0:
    ld a, [hl]
    ld hl, $6804
    add a
    add l
    ld l, a
    jr nc, jr_034_66fa

    inc h

jr_034_66fa:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0020
    call Call_000_26ea

jr_034_6703:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    inc d
    ld l, b
    dec h
    ld l, b
    ld [hl], $68
    ld b, a
    ld l, b
    ld e, b
    ld l, b
    ld l, c
    ld l, b
    ld a, d
    ld l, b
    adc e
    ld l, b
    pop af
    nop
    ld [$f100], sp
    ld [$000a], sp
    xor $00
    nop
    nop
    xor $08
    ld [bc], a
    nop
    add b
    pop af
    cp $08
    nop
    pop af
    ld b, $0a
    nop
    xor $00
    inc b
    nop
    xor $08
    ld b, $00
    add b
    pop af
    db $fc
    ld [$f100], sp
    inc b
    ld a, [bc]
    nop
    xor $00
    inc b
    nop
    xor $08
    ld b, $00
    add b
    pop af
    ei
    ld [$f100], sp
    inc bc
    ld a, [bc]
    nop
    xor $00
    inc b
    nop
    xor $08
    ld b, $00
    add b
    pop af
    db $fc
    ld [$f100], sp
    inc b
    ld a, [bc]
    nop
    xor $00
    inc b
    nop
    xor $08
    ld b, $00
    add b
    pop af
    cp $08
    nop
    pop af
    ld b, $0a
    nop
    xor $00
    nop
    nop
    xor $08
    ld [bc], a
    nop
    add b
    pop af
    nop
    ld [$f100], sp
    ld [$000a], sp
    xor $00
    nop
    nop
    xor $08
    ld [bc], a
    nop
    add b
    pop af
    ld bc, $0008
    pop af
    add hl, bc
    ld a, [bc]
    nop
    xor $00
    nop
    nop
    xor $08
    ld [bc], a
    nop
    add b
    rst $28
    ld l, b
    ld [bc], a
    ld l, c
    xor d
    ld l, b
    dec de
    ld l, c
    sbc e
    ld l, c
    ld d, $6b
    scf
    ld l, e
    cp $7c
    nop
    daa
    nop
    ld h, $cf
    nop
    nop
    ret nz

    ld bc, $fe2c
    ld a, h
    nop
    add hl, bc
    nop
    ld de, $00cf
    nop
    ld b, b
    ld bc, $fe2f
    ld a, h
    nop
    ld a, [bc]
    nop
    ld [de], a
    rst $08
    nop
    nop
    ld b, b
    ld bc, $fe2e
    ld a, h
    nop
    jr nz, jr_034_68d3

jr_034_68d3:
    jr nz, jr_034_68d5

jr_034_68d5:
    nop
    nop
    ret nz

    ld bc, $fe26
    ld a, h
    nop
    rrca
    nop
    ld hl, $0000
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    inc d
    nop
    cpl
    ld b, $c0
    nop
    ld [hl+], a
    nop
    ld hl, $8007
    nop
    ld [hl+], a
    nop
    ld hl, $01ff
    rst $38
    nop
    nop
    nop
    nop
    ld [bc], a
    add hl, bc
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    add hl, hl
    ld b, $03
    rst $38
    nop
    nop
    nop
    nop
    add hl, hl
    rlca
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    push af
    ld l, h
    inc bc
    nop
    ld b, $ff
    nop
    nop
    ld e, [hl]
    inc c
    inc bc
    nop
    rst $38
    ld a, [$c810]
    cp $03
    jr z, jr_034_699a

    rst $20
    ldh [rNR11], a
    ld hl, $0c5a
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$3e0a], sp
    ld b, $01
    nop
    dec c
    ld de, $2100
    rst $18
    jr nz, @+$0c

    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    rst $08
    adc d
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_034_6971

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18

jr_034_6971:
    ld a, [hl+]
    ld a, [bc]
    rst $08
    adc d
    ld a, $06
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $06
    ld b, $00
    ld de, $0200
    rst $18
    jr z, @+$0c

    ld a, $06
    rst $18
    ld e, $0a
    ld hl, $0c5e
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$cd0a], sp
    ld [de], a
    ld a, [hl]

jr_034_699a:
    ret


    rrca
    rst $38
    nop
    nop
    inc l
    ld l, c
    ld b, $00
    rst $38
    rst $30
    ldh [rNR24], a
    jp nz, Jump_034_6aba

    rst $30
    ret nz

    add hl, de
    jp nz, Jump_034_6ab6

    ld hl, $151d
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    inc d
    ld a, [bc]
    inc h
    dec h
    jr z, jr_034_69e7

    ld de, $0015
    add hl, de
    ld [hl], a
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7114
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $70fc
    rst $18
    jr jr_034_69e4

    xor a
    ld bc, $1700
    ld de, $1d00
    rst $18
    jr c, @+$0c

jr_034_69e4:
    rst $18
    inc a
    ld a, [bc]

jr_034_69e7:
    ld hl, $6bf7
    call Call_000_2449
    ld a, $07
    ld hl, $6bf7
    call Call_000_23e8
    rst $30
    and b
    add hl, de
    jp nz, Jump_034_6aba

    rst $20
    and b
    add hl, de
    push af
    ld a, $5a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    rst $18
    ld [$af0a], sp
    ld bc, $2500
    ld de, $2700
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld hl, $6bf7
    call Call_000_2449
    ld a, $04
    ld hl, $6bf7
    call Call_000_23e8
    ld hl, $6bf7
    call Call_000_2449
    ld a, $07
    ld hl, $6bf7
    call Call_000_23e8
    ld a, $02
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    rst $08
    adc c
    ld a, $02
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    rst $08
    adc c
    ld a, $02
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$af0a], sp
    ld bc, $2100
    ld de, $2100
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    call Call_034_7011
    rst $08
    adc d
    call Call_034_7070
    ld a, $02
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    nop
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    rst $20
    ret nz

    add hl, de
    ret


Jump_034_6ab6:
    call Call_034_732c
    ret


Jump_034_6aba:
    rst $20
    ret nz

    add hl, de
    ret


    rst $30
    ldh [rNR24], a
    jr nz, jr_034_6b04

    rst $30
    ret nz

    add hl, de
    jr z, jr_034_6b04

    ld hl, $1522
    rst $18
    ld c, $0a
    xor a
    ld bc, $1f00
    ld de, $1f00
    rst $18
    jr c, @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $711b
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7109
    rst $18
    jr @+$0c

    ld hl, $6bf7
    call Call_000_2449
    ld a, $04
    ld hl, $6bf7
    call Call_000_23e8
    ld a, $02
    rst $18
    ld [$ef0a], sp
    ret nz

    add hl, de

jr_034_6b04:
    call Call_034_732c
    ret


    rst $30
    add b
    add hl, de
    jr nz, jr_034_6b12

    call Call_034_6bfe
    jr jr_034_6b15

jr_034_6b12:
    call Call_034_732c

jr_034_6b15:
    ret


    ld bc, $00ff
    nop
    and h
    ld l, c
    ld [bc], a
    nop
    ld [bc], a
    rst $38
    nop
    nop
    cp [hl]
    ld l, d
    ld [bc], a
    nop
    inc bc
    rst $38
    nop
    nop
    ld [$026b], sp
    nop
    rrca
    rst $38
    nop
    nop
    ld b, h
    ld [hl], c
    ld bc, $ff00
    ld a, $04
    rst $18
    inc d
    ld a, [bc]
    ld b, $40
    ld c, $02
    rst $18
    ld h, b
    inc b
    ld a, $04
    rst $18
    inc d
    ld a, [bc]
    inc h
    dec h
    jr z, jr_034_6b52

    ld de, $0037
    add hl, de
    ld [hl], $01

jr_034_6b52:
    ld a, [$c46a]
    cp $01
    jr z, jr_034_6b5f

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a

jr_034_6b5f:
    call Call_034_72e1
    rst $30
    ret nz

    add hl, de
    jr nz, jr_034_6b93

    ld a, $03
    ld bc, $1fc0
    ld de, $1ce0
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld bc, $2000
    ld de, $1c80
    rst $18
    jr nz, @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $711b
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7109
    rst $18
    jr jr_034_6b9d

jr_034_6b93:
    rst $30
    ldh [rNR11], a
    jr nz, jr_034_6ba3

    ld a, $06
    ld bc, $0100

jr_034_6b9d:
    ld de, $3d00
    rst $18
    jr nz, @+$0c

jr_034_6ba3:
    ld a, [$c46a]
    cp $06
    jp nz, Jump_034_6bae

    call Call_034_6d46

Jump_034_6bae:
    cp $07
    jp z, Jump_034_6e5f

    ld a, [$c46a]
    cp $fa
    jr nz, jr_034_6bce

    ld a, [$c967]
    cp $14
    jr nz, jr_034_6bce

    ld a, [$c3e1]
    cp $01
    jr nz, jr_034_6bce

    ld a, $02
    ld [$c441], a
    ret


jr_034_6bce:
    rst $30
    ldh [rNR24], a
    jr nz, jr_034_6bdb

    ld a, $06
    ld hl, $7347
    call Call_000_23e8

jr_034_6bdb:
    ld a, $00
    ld [$c967], a
    rst $30
    ret nz

    add hl, de
    jr nz, jr_034_6bee

    ld a, $04
    ld hl, $6bf7
    call Call_000_23e8
    ret


jr_034_6bee:
    ld a, $07
    ld hl, $6bf7
    call Call_000_23e8
    ret


    ld bc, $0740
    call Call_034_72f9
    ret


Call_034_6bfe:
    rst $08
    and c
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    and c
    ld bc, $0020
    rst $18
    ld [hl], $0a
    ld a, $03
    rst $18
    inc d
    ld a, [bc]
    inc h
    dec h
    jr z, jr_034_6c1d

    ld de, $0015
    add hl, de
    ld [hl], a

jr_034_6c1d:
    ld a, $03
    ld bc, $1fc0
    ld de, $1ce0
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld bc, $2000
    ld de, $1c80
    rst $18
    jr nz, @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $711b
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7109
    rst $18
    jr @+$0c

    ld hl, $151b
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$af0a], sp
    ld bc, $2100
    ld de, $1f00
    rst $18
    jr c, jr_034_6c68

    rst $18
    inc a
    ld a, [bc]
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_034_6c68:
    xor a
    ld bc, $2700
    ld de, $2300
    rst $18
    jr c, jr_034_6c7c

    rst $18
    inc a
    ld a, [bc]
    rst $08
    adc c
    ld a, $02
    ld de, $ff80

jr_034_6c7c:
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    rst $08
    adc c
    ld a, $02
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    rst $08
    adc c
    ld a, $02
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    nop
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
    ld a, [bc]
    ld bc, $0020
    rst $18
    ld [hl], $0a
    ld a, $03
    rst $18
    inc d
    ld a, [bc]
    inc h
    dec h
    jr z, jr_034_6cc5

    ld de, $0015
    add hl, de
    ld [hl], a

jr_034_6cc5:
    ld a, $03
    ld bc, $1fc0
    ld de, $1ce0
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld bc, $2000
    ld de, $1c80
    rst $18
    jr nz, @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $711b
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7109
    rst $18
    jr jr_034_6cfb

    rst $20
    add b
    add hl, de
    ret


    ld bc, $0040
    rst $18
    ld [hl], $0a

jr_034_6cfb:
    ld a, $02
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
    ld a, [bc]
    ld hl, $1521
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $02
    ld de, $6d2d
    rst $18
    jr jr_034_6d2c

    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
    ld a, [bc]

jr_034_6d2c:
    ret


    db $10
    inc bc
    ld bc, $10a0
    ld bc, $0401
    db $10
    inc bc
    ld bc, $10a0
    ld bc, $0401
    db $10
    inc bc
    ld bc, $10a0
    ld bc, $0201
    nop

Call_034_6d46:
    rst $30
    ret nz

    add hl, de
    jr z, jr_034_6d4c

    ret


jr_034_6d4c:
    rst $30
    ldh [rNR24], a
    jp nz, Jump_034_6e5e

    ld a, $02
    ld bc, $1d00
    ld de, $2500
    rst $18
    jr nz, jr_034_6d67

    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $04

jr_034_6d67:
    ld hl, $6bf7
    call Call_000_23e8
    ld hl, $1524
    rst $18
    ld c, $0a
    rst $08
    and c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    rst $18
    inc d
    ld a, [bc]
    inc h
    dec h
    jr z, jr_034_6d8a

    ld de, $0015
    add hl, de
    ld [hl], a

jr_034_6d8a:
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7133
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $70fc
    rst $18
    jr @+$0c

    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    xor a
    ld bc, $1b00
    ld de, $1d00
    rst $18
    jr c, jr_034_6dbb

    rst $20
    ret nz

    add hl, de
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_034_6dbb:
    rst $08
    and c
    push af
    ld a, $78
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld bc, $1d00
    ld de, $2100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$110a], sp
    ret z

    nop
    rst $30
    ld h, b
    inc c
    jr z, jr_034_6e3e

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_034_6e3e:
    push de
    rst $18
    ld [hl+], a
    ld [bc], a
    pop hl
    rst $18
    ld d, [hl]
    dec b
    rst $08
    jr c, jr_034_6e6a

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_034_7dd8
    ld a, $03
    ld [$c441], a

Jump_034_6e5e:
    ret


Jump_034_6e5f:
    ld a, $02
    ld bc, $1d00
    ld de, $2100
    rst $18
    jr nz, @+$0c

jr_034_6e6a:
    ld a, $03
    ld bc, $1b00
    ld de, $1b00
    rst $18
    jr nz, jr_034_6e7f

    rst $20
    ldh [rNR24], a
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]

jr_034_6e7f:
    rst $18
    inc [hl]
    ld [bc], a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $07
    ld hl, $6bf7
    call Call_000_23e8
    ld a, $02
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld hl, $1527
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld bc, $1b00
    ld de, $1c00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    sub h
    ld a, $03
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld bc, $1400
    ld de, $2f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    ld b, $40
    rst $18
    inc l
    ld a, [bc]

jr_034_6f17:
    push af
    ld a, $5a
    rst $18
    inc b
    ld a, [bc]
    pop af
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    ld a, $01
    ld [$c441], a
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
    nop
    nop
    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_034_6fc6

    ld b, b
    cp a
    rst $00
    ld hl, sp-$78
    add sp, -$68
    ld [hl], b
    ld [hl], b
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    dec b
    ld b, $03

jr_034_6f59:
    inc bc
    dec b
    ld b, $07
    inc b
    inc bc
    inc bc
    ldh [$e0], a
    ret c

    jr c, jr_034_6f59

    inc c
    cp $02
    db $fd
    db $e3
    rra
    ld de, $111f
    ld a, l
    ld h, e
    cp $82
    db $f4
    inc c
    ret c

    jr c, jr_034_6f17

    ld h, b
    ret nz

    ret nz

    ldh [rNR41], a
    and b
    ld h, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_034_6fba

    inc sp
    inc a
    inc h
    inc l
    inc [hl]
    jr jr_034_6faa

    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18

jr_034_6faa:
    db $f4
    call z, Call_000_243c
    inc a
    inc h
    db $f4
    call z, Call_000_18e8
    or b
    ld [hl], b
    ld b, b
    ret nz

    add b
    add b

jr_034_6fba:
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

jr_034_6fc6:
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    add hl, bc
    ld c, $0a
    ld a, [bc]
    ld c, $04
    inc b
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$90]
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ldh a, [$90]
    ldh [rNR41], a
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    ret nz

    ld bc, $7fff
    ld c, e
    ld b, e
    nop
    nop

Call_034_7011:
    xor a
    ldh [rVBK], a
    ld hl, $6f40
    ld de, $8500
    ld c, $18
    call Call_000_0468
    ld hl, $7009
    ld de, $0f01
    call Call_000_056c
    ret


Call_034_7029:
    ld h, $06

jr_034_702b:
    push hl
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c2a0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ld de, $0100
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c2a2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ld de, $03c0
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop hl
    ld d, h
    ld hl, $7000
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_034_702b

    ret


Call_034_7070:
    ld a, $00
    ld [$c3e0], a
    ld bc, $0758
    call Call_034_7029
    ld bc, $0758
    call Call_034_7029
    ld bc, $0754
    call Call_034_7029
    ld bc, $0754
    call Call_034_7029

jr_034_708d:
    ld a, [$c3e0]
    cp $03
    jr z, jr_034_70b2

    inc a
    ld [$c3e0], a
    ld bc, $0750
    call Call_034_7029
    ld bc, $0754
    call Call_034_7029
    ld bc, $0758
    call Call_034_7029
    ld bc, $0754
    call Call_034_7029
    jr jr_034_708d

jr_034_70b2:
    ret


    ld a, $00
    ld [$c3e0], a

jr_034_70b8:
    ld a, [$c3e0]
    cp $08
    jr z, jr_034_70d1

    inc a
    ld [$c3e0], a
    ld bc, $0754
    call Call_034_7029
    ld bc, $0758
    call Call_034_7029
    jr jr_034_70b8

jr_034_70d1:
    ret


    ld hl, $c2a0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0200
    call Call_000_08ac
    ld c, l
    ld b, h
    ld hl, $c2a2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0200
    call Call_000_08ac
    ld e, l
    ld d, h
    ld a, $02
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ret


    rst $08
    and d
    ret


    db $10
    inc bc
    ld bc, $040a
    nop
    dec bc
    nop
    dec d
    ld [bc], a
    db $10
    ld bc, $1000
    inc bc
    inc b
    nop
    jr nz, @-$7e

    inc e
    ld [bc], a
    db $10
    ld bc, $0400
    ld b, b
    dec bc
    ld b, b
    dec d
    ld [bc], a
    nop
    inc b
    ret nz

    rra
    ldh [rNR32], a
    ld [bc], a
    ld bc, $0378
    add b
    rra
    ldh [rNR32], a
    ld bc, $0378
    nop
    jr nz, @-$1e

    inc e
    inc c
    pop af
    rst $38
    nop
    inc b
    nop
    rra
    nop
    ld a, [de]
    ld [bc], a
    dec c
    ld c, $08
    nop
    inc b
    nop
    dec de
    nop
    dec de
    ld [bc], a
    nop

Call_034_7144:
    rst $18
    nop
    ld a, [bc]
    ld hl, $1523
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_034_7164

    jr jr_034_7167

jr_034_7164:
    call Call_034_716b

jr_034_7167:
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_034_716b:
    ld a, $14
    ld [$c967], a
    ld a, $00
    ld [$c3e1], a
    rst $18
    inc e
    db $10
    rst $18
    inc h
    db $10
    rst $30
    ldh [rNR24], a
    jp nz, Jump_034_7194

    rst $30
    ret nz

    add hl, de
    jp nz, Jump_034_7194

    ld a, $05
    ld [$c834], a
    ld a, $28
    ld [$c82c], a
    jp Jump_034_719e


Jump_034_7194:
    ld a, $07
    ld [$c834], a
    ld a, $07
    ld [$c82c], a

Jump_034_719e:
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0008
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    call Call_034_7254
    call Call_034_7215
    ldh a, [$95]
    ld hl, $71cc
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_034_71db

    ret


    db $ec
    ld [hl], c
    db $ed
    ld [hl], c
    nop
    nop
    nop
    nop
    jp Jump_000_0065


    nop
    nop
    nop
    nop

jr_034_71db:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld a, [$d48e]
    bit 1, a
    jr nz, jr_034_71fe

    bit 2, a
    jr nz, jr_034_71fe

    ld a, $80
    rst $18
    ld l, $10
    ret


jr_034_71fe:
    ld a, $01
    ld [$c3e1], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_034_720f

    rst $20
    ld h, b
    inc c

jr_034_720f:
    ld a, $80
    rst $18
    ld l, $10
    ret


Call_034_7215:
    call Call_000_0a61
    ld a, l
    and $03
    and a
    jr nz, jr_034_7220

    ld a, $01

jr_034_7220:
    add $05
    ld [$c3e3], a
    call Call_000_0a61
    ld a, l
    and $07
    ld hl, $0000
    add l
    ld l, a
    jr nc, jr_034_7233

    inc h

jr_034_7233:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $0010
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c3e3]
    add l
    ld l, a
    jr nc, jr_034_724e

    inc h

jr_034_724e:
    ld e, l
    ld d, h
    rst $18
    ld [hl+], a
    db $10
    ret


Call_034_7254:
    ld de, $1d40
    ld hl, $c2a2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    sra h
    rr l
    sra h
    rr l
    push hl
    ld de, $1d40
    pop hl
    add hl, de
    push hl
    ld de, $1f80
    ld hl, $c2a0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    sra h
    rr l
    sra h
    rr l
    push hl
    ld de, $1f80
    pop hl
    add hl, de
    pop de
    rst $18
    jr nz, jr_034_729d

    ret


    nop
    nop
    ld a, b
    ld a, b
    ld [hl], a
    ld e, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld e, a
    ld d, c
    ld a, a
    ld e, c
    ld a, a
    ld d, a

jr_034_729d:
    ld [hl], a
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
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
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
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
    ld d, b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ret c

    ld hl, sp-$08
    ld hl, sp+$70
    ld [hl], b
    db $10
    ld [$0000], sp
    jr nz, jr_034_72de

    ld [bc], a
    nop
    add b
    ld e, $5e
    rst $38
    ld l, e
    ret c

jr_034_72de:
    ld a, h
    nop
    nop

Call_034_72e1:
    xor a
    ldh [rVBK], a
    ld hl, $7290
    ld de, $8400
    ld c, $04
    call Call_000_0468
    ld hl, $7009
    ld de, $0f01
    call Call_000_0595
    ret


Call_034_72f9:
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $1fa0
    call Call_000_1b52
    ld a, h
    inc a
    inc a
    inc a
    inc a
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld hl, $c322
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $1c60
    call Call_000_1b52
    ld a, h
    inc a
    inc a
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    ld hl, $72d0
    pop bc
    call Call_000_26ea
    ret


    pop bc
    ret


Call_034_732c:
    ldh a, [$90]
    and $01
    jr z, jr_034_7335

    call Call_034_7144

jr_034_7335:
    ret


    ld bc, $0378
    add b
    rra
    nop
    dec e
    ld bc, $0378
    nop
    jr nz, jr_034_7343

jr_034_7343:
    dec e
    inc c
    pop af
    rst $38
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $03
    rst $18
    inc d
    ld a, [bc]
    inc h
    dec h
    jr z, jr_034_7386

    ld e, l
    ld d, h
    ld hl, $002c
    add hl, de
    ld a, [hl]
    add a
    add a
    ld c, a
    ld hl, $002d
    add hl, de
    ld b, [hl]
    ld hl, $0004
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $10
    add l
    ld l, a
    jr nc, jr_034_7373

    inc h

jr_034_7373:
    push hl
    ld hl, $0006
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, $90
    add e
    ld e, a
    jr nc, jr_034_7382

    inc d

jr_034_7382:
    pop hl
    call Call_000_27b4

jr_034_7386:
    ld a, $04
    rst $18
    inc d
    ld a, [bc]
    inc h
    dec h
    jr z, jr_034_73bf

    ld e, l
    ld d, h
    ld hl, $002c
    add hl, de
    ld a, [hl]
    add a
    add a
    ld c, a
    ld hl, $002d
    add hl, de
    ld b, [hl]
    ld hl, $0004
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $10
    add l
    ld l, a
    jr nc, jr_034_73ac

    inc h

jr_034_73ac:
    push hl
    ld hl, $0006
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, $90
    add e
    ld e, a
    jr nc, jr_034_73bb

    inc d

jr_034_73bb:
    pop hl
    call Call_000_27b4

jr_034_73bf:
    ret


    db $e3
    ld [hl], e
    or $73
    adc $73
    ld h, l
    ld [hl], h
    or e
    ld [hl], h
    or h
    ld [hl], h
    or l
    ld [hl], h
    cp $7c
    nop
    dec e
    nop
    rra
    nop
    nop
    nop
    ld b, b
    ld bc, $0017
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    ld e, $00
    ld h, $06
    ret nz

    nop
    dec e
    nop
    ld [hl+], a
    rlca
    ret nz

    nop
    dec e
    nop
    ld [hl+], a
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [bc], a
    dec bc
    rrca
    rst $38
    nop
    nop
    nop
    nop
    inc l
    rlca
    rst $38
    rst $30
    nop
    ld a, [de]
    jr nz, jr_034_746e

    rst $20
    jr nz, jr_034_7429

    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld hl, $154f
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_034_7429:
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr nz, jr_034_7448

    ld a, $02
    rst $18
    ld [$ef0a], sp
    jr nz, jr_034_745f

    rst $28
    nop
    ld e, $cd
    ld b, a
    ld [hl], l
    ret


jr_034_7448:
    rst $18
    db $10
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]

jr_034_745f:
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld [bc], a
    rst $38
    nop
    nop
    rlca
    ld [hl], h
    stop
    rst $38

jr_034_746e:
    rst $30
    add b
    rra
    jr nz, @+$15

    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld hl, $155d
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$cd0a], sp
    and $74
    ret


    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld hl, $1555
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld hl, $155c
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp
    ret


    rst $38
    rst $38
    ld a, [$c46a]
    cp $01
    jr z, jr_034_74e0

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    ld a, [$c46a]
    cp $fa
    jr z, jr_034_74e5

    cp $06
    jr nz, jr_034_74d6

    rst $30
    nop
    ld a, [de]
    jr nz, jr_034_74e0

    call Call_034_75f6
    ret


jr_034_74d6:
    ld a, [$c46a]
    cp $07
    jr nz, jr_034_74e0

    call Call_034_770f

jr_034_74e0:
    ld a, $00
    ld [$c967], a

jr_034_74e5:
    ret


    rst $20
    add b
    rra
    rst $18
    nop
    ld a, [bc]
    ld hl, $155e
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_034_7509

    jr jr_034_7512

jr_034_7509:
    rst $28
    jr nz, jr_034_752a

    rst $28
    nop
    ld e, $cd
    ld b, a
    ld [hl], l

jr_034_7512:
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_034_7516:
    rst $30
    nop
    ld a, [de]
    jr nz, jr_034_7531

    ld a, $28
    ld [$c82c], a
    ld a, $0a
    ld [$c834], a
    ld hl, $0901
    rst $18
    db $10

jr_034_752a:
    db $10
    ld a, $09
    rst $18
    ld [de], a
    db $10
    ret


jr_034_7531:
    ld a, $07
    ld [$c82c], a
    ld a, $03
    ld [$c834], a
    ld hl, $0601
    rst $18
    db $10
    db $10
    ld a, $12
    rst $18
    ld [de], a
    db $10
    ret


    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $1d00
    ld de, $2300
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld bc, $2100
    ld de, $2300
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld bc, $2100
    ld de, $2100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $14
    ld [$c967], a
    rst $18
    inc e
    db $10
    ld a, $0a
    ld [$c834], a
    ld a, $2c
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld a, $00
    rst $18
    ld e, $10
    ldh a, [$95]
    ld hl, $75c8
    rst $18
    ld a, [de]
    db $10
    call Call_034_7516
    rst $18
    jr nc, jr_034_75d7

    ret


    add sp, $75
    jp hl


    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_034_75d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld a, [$c834]
    cp $00
    jr nz, jr_034_75f5

    ld a, $00
    ld [$c967], a

jr_034_75f5:
    ret


Call_034_75f6:
    ld a, [$c967]
    cp $14
    jr z, jr_034_75fe

    ret


jr_034_75fe:
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $1553
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$210a], sp
    xor h
    ret z

    ld b, $00
    ld c, $09

jr_034_7618:
    ld a, [hl]
    swap a
    and $0f
    ld [$c3e0], a
    cp $01
    jr z, jr_034_762b

    cp $00
    jr z, jr_034_762b

    call Call_034_765d

jr_034_762b:
    ld a, [$c3e0]
    ld b, a
    ld a, [hl+]
    and $0f
    sub b
    cp $01
    jr z, jr_034_763a

    call Call_034_7659

jr_034_763a:
    dec c
    jr nz, jr_034_7618

    ld a, [$c8be]
    add $1b
    ld [$c3e2], a
    sub $13
    jr nc, jr_034_7661

    rst $30
    jr nz, @+$20

    jr nz, jr_034_7669

    rst $30
    nop
    ld e, $20
    ld e, $f7
    nop
    ld a, [de]
    jr z, jr_034_76b5

    ret


Call_034_7659:
    rst $20
    nop
    ld e, $c9

Call_034_765d:
    rst $20
    jr nz, jr_034_767e

    ret


jr_034_7661:
    ld hl, $1554
    rst $18
    ld c, $0a
    jr jr_034_7683

jr_034_7669:
    ld hl, $1556
    rst $18
    ld c, $0a
    jr jr_034_7683

    ld hl, $1558
    rst $18
    ld c, $0a
    ld a, [$c3e2]
    ld l, a
    ld h, $00
    rst $18

jr_034_767e:
    ld d, [hl]
    dec b
    jr jr_034_7683

    ret


jr_034_7683:
    ld a, $00
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_034_76b5:
    ld hl, $155a
    rst $18
    ld c, $0a
    ld a, [$c3e2]
    ld l, a
    ld h, $00
    rst $18
    ld d, [hl]
    dec b
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    rst $18
    ld [$f70a], sp
    nop
    ld a, [de]
    jr nz, jr_034_770e

    ld de, $012c
    push de
    rst $18
    ld [hl+], a
    ld [bc], a
    pop hl
    rst $18
    ld d, [hl]
    dec b
    rst $08
    jr c, @-$17

    nop
    ld a, [de]
    rst $20
    ldh [rNR13], a
    push de
    ld de, $0200
    rst $18
    ld b, h
    ld [bc], a
    pop de
    ld hl, $011b
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_034_7dd8
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $0f
    ld [$c441], a

jr_034_770e:
    ret


Call_034_770f:
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld hl, $155c
    rst $18
    ld c, $0a
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld a, a
    ld [hl], a
    or [hl]
    ld [hl], a
    ld b, [hl]
    ld [hl], a
    rst $18
    ld [hl], a
    pop hl
    ld [hl], a
    ld [$eb77], a
    ld [hl], a
    cp $7c
    nop
    add hl, bc
    nop
    ld bc, $0000
    nop
    ld b, b
    ld bc, $fe04
    ld a, h
    nop
    dec bc
    nop
    ld bc, $0000
    nop
    ld b, b
    ld bc, $fe05
    ld a, h
    nop
    dec c
    nop
    ld bc, $0000
    nop
    ld b, b
    ld bc, $fe06
    ld a, h
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    dec bc
    nop
    ld c, $02
    ret nz

    nop
    dec bc
    nop
    ld c, $03
    ret nz

    nop
    dec bc
    nop
    ld c, $04
    ret nz

    nop
    dec bc
    nop
    ld c, $05
    ret nz

    nop
    dec bc
    nop
    ld c, $0b
    ret nz

    nop
    dec bc
    nop
    ld c, $0c
    ret nz

    nop
    dec bc
    nop
    ld c, $0d
    ret nz

    nop
    dec bc
    nop
    ld c, $0e
    ret nz

    nop
    dec bc
    nop
    ld c, $ff
    ld bc, $00ff
    nop
    nop
    nop
    ld [$0206], sp
    rst $38
    nop
    nop
    nop
    nop
    add hl, bc
    ld b, $03
    rst $38
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld b, $04
    rst $38
    nop
    nop
    nop
    nop
    dec bc
    ld b, $05
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rst $38
    rst $38
    ret


    ld bc, $00ff
    nop
    ld e, b
    ld a, l
    ld b, $00
    rst $38
    rst $38
    ld a, [$c46a]
    cp $0c
    jr nc, jr_034_77f4

    jr jr_034_7816

jr_034_77f4:
    rst $20
    nop
    ld a, [bc]
    rst $20
    ld b, b
    ld a, [bc]
    rst $20
    add b
    ld a, [bc]
    rst $20
    ret nz

    ld a, [bc]
    rst $28
    add b
    rla
    ld a, $1e
    ld [$c967], a
    ld a, $01
    ld [$c96c], a
    ld a, [$c46a]
    sub $0a
    ld [$c441], a
    ret


jr_034_7816:
    ld a, [$c96c]
    cp $01
    jr z, jr_034_7824

    ld a, [$c46a]
    ld [$c441], a
    ret


jr_034_7824:
    rst $20
    add b
    rla
    call Call_034_7ced
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $05
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $03
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $02
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $04
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $00
    ld bc, $0008
    rst $18
    ld d, $0a
    rst $30
    ld h, b
    ld de, $0828
    ld hl, $15d9
    rst $18
    ld c, $0a
    jr jr_034_786d

    ld hl, $15c6
    rst $18
    ld c, $0a

jr_034_786d:
    ld a, $05
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$3e0a], sp
    nop
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$f50a], sp
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld bc, $0900
    ld de, $0500
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld bc, $0b00
    ld de, $0500
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld bc, $0d00
    ld de, $0500
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $04
    rst $18
    ld e, $0a
    ld a, $03
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02

Call_034_7957:
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $05
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld bc, $0700
    ld de, $0700
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $05
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $05
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld a, $03
    ld bc, $0b00
    ld de, $0700
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    rst $18
    ld e, $0a
    ld a, $05
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $03
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld l, $0a
    ld a, $05
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $05
    rst $18
    ld [$f70a], sp
    ldh [rIF], a
    jr z, jr_034_7a42

    rst $20
    and b
    rla
    ld hl, $15ec
    rst $18
    ld c, $0a

jr_034_7a42:
    ld a, $05
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $05
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $04
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$f70a], sp
    ldh [rIF], a
    jr z, jr_034_7ab4

    ld a, $05
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_034_7ab4:
    ld a, $05
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$3e0a], sp
    dec b
    ld bc, $0700
    ld de, $0500
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $05
    ld bc, $0700
    ld de, $0100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    ld a, $05
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_034_7b02

    ld a, $03
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02

jr_034_7b02:
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$3e0a], sp
    nop
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld a, $04
    ld bc, $0d00
    ld de, $0700
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    rst $18
    ld e, $0a
    ld a, $04
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$3e0a], sp
    nop
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld bc, $0700
    ld de, $0100
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld bc, $0700
    ld de, $0100
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld bc, $0900
    ld de, $0100
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $0700
    ld de, $0500
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, [$c46a]
    ld [$c441], a
    push af
    ld a, $5a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    add sp, $29
    ld hl, sp+$46
    rst $08
    add hl, hl
    nop
    nop
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ldh a, [$03]
    ld c, l
    rrca
    ld b, b
    ld [bc], a
    ret nz

    nop
    ldh a, [$03]
    push af
    inc bc
    ld c, b
    rrca
    ld b, b
    ld [bc], a
    ld e, a
    dec sp
    jr c, @+$10

    ld sp, $4819
    rrca
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
    add sp, $29
    ld hl, sp+$46
    rst $08
    add hl, hl
    nop
    nop
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld hl, sp+$03
    ld c, h
    inc bc
    ld d, e
    ld bc, $008a
    ldh a, [$03]
    ld hl, sp+$03
    ld c, h
    inc bc
    ld d, e
    ld bc, $47ff
    ldh a, [rP1]
    ld e, l
    add hl, de
    ld c, h
    inc bc
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
    ldh [$29], a
    ld hl, sp+$46
    rst $08
    add hl, hl
    nop
    nop
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
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

Jump_034_7c99:
    rst $18
    inc a
    ld a, [bc]
    ld b, $1a
    ld c, $00
    ld d, $00
    ld e, $00
    ld h, $14
    ld l, $14
    rst $18
    ld a, [bc]
    dec bc
    ld hl, $7be9
    ld de, $0206
    call Call_000_0595
    ret


jr_034_7cb5:
    rst $18
    inc a
    ld a, [bc]
    ld b, $00
    ld c, $18
    ld d, $00
    ld e, $00
    ld h, $14
    ld l, $14
    rst $18
    ld a, [bc]
    dec bc
    ld hl, $7c29
    ld de, $0206
    call Call_000_0595
    ret


jr_034_7cd1:
    rst $18
    inc a
    ld a, [bc]
    ld b, $1a
    ld c, $18
    ld d, $00
    ld e, $00
    ld h, $14
    ld l, $14
    rst $18
    ld a, [bc]
    dec bc
    ld hl, $7c69
    ld de, $0206
    call Call_000_0595
    ret


Call_034_7ced:
    ld a, [$c46a]
    cp $02
    jp z, Jump_034_7c99

    cp $03
    jr z, jr_034_7cb5

    cp $04
    jr z, jr_034_7cd1

    ret


    nop
    dec c
    dec de
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $0c01
    db $fc
    rst $38
    inc de
    add hl, bc
    ld [bc], a
    ld bc, $0c28
    ei
    rst $38
    inc bc
    nop
    dec d
    nop
    dec d
    ld bc, $0414
    nop
    rla
    nop
    dec d
    ld [bc], a
    ld bc, $0614
    nop
    nop
    nop
    cp $02
    ld bc, $0714
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0814
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0d14
    ld a, [bc]
    nop
    add hl, de
    dec c
    ld [de], a
    ld bc, $0200
    ld bc, $0e14
    inc c
    nop
    cp $0d
    ld [de], a
    ld bc, $0200
    ld bc, $1014
    inc bc
    ld bc, $1078
    ld bc, $1401
    inc c
    cp h
    rst $38
    ret


    db $10
    inc bc
    ld bc, $10a0
    ld [bc], a
    ld bc, $0c04
    rst $30
    rst $38
    ld bc, $1028
    inc bc
    ld bc, $0c78
    ld sp, hl
    rst $38
    ld bc, $1050
    inc bc
    ld bc, $0c78
    ld sp, hl
    rst $38
    ld bc, $108c
    inc bc
    ld bc, $0c78
    ld sp, hl
    rst $38
    push de
    ld hl, wPlayer1
    ld d, $00
    ld e, a
    ld a, [$c835]
    or a
    jr z, jr_034_7d90

    ld a, $40
    add e
    ld e, a

jr_034_7d90:
    add hl, de
    pop de
    ret


Call_034_7d93:
    push bc
    push de
    push hl
    push hl
    rst $18
    inc b
    db $10
    ld d, h
    ld e, l
    pop hl
    call Call_000_08ac
    bit 7, h
    ld a, $01
    jr nz, jr_034_7da7

    xor a

jr_034_7da7:
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    ld hl, $c290
    ld a, [hl+]
    ld h, [hl]
    ld l, a
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
    add $06
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    pop af
    ret


Call_034_7dd8:
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    rst $18
    nop
    ld b, c
    ret


    rst $30
    ld h, b
    inc c
    jr z, jr_034_7df6

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_034_7df6:
    push de
    rst $18
    ld [hl+], a
    ld [bc], a
    pop hl
    rst $18
    ld d, [hl]
    dec b
    rst $08
    jr c, @+$23

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_034_7dd8
    ret


    ld a, [$c810]
    cp $00
    jr z, jr_034_7e1e

    rst $30
    add b
    ld de, $6828

jr_034_7e1e:
    ld a, [$c810]
    cp $01
    jr z, jr_034_7e2a

    rst $30
    and b
    ld de, $5c28

jr_034_7e2a:
    ld a, [$c810]
    cp $02
    jr z, jr_034_7e36

    rst $30
    ret nz

    ld de, $5028

jr_034_7e36:
    ld a, [$c810]
    cp $03
    jr z, jr_034_7e42

    rst $30
    ldh [rNR11], a
    jr z, jr_034_7e86

jr_034_7e42:
    ld de, $012c
    push de
    rst $18
    ld [hl+], a
    ld [bc], a
    pop hl
    rst $18
    ld d, [hl]
    dec b
    rst $08
    jr c, jr_034_7e71

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_034_7dd8
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $fa
    ld [$c441], a
    ld a, $fa

jr_034_7e71:
    ld [$c46a], a
    ld hl, $c2a0
    ld de, $c466
    ld bc, $0004
    call MemCopy
    ld a, [$c2a4]
    ld [$c465], a

jr_034_7e86:
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
