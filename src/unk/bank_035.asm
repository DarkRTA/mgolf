INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

    inc h
    ld b, b
    cp [hl]
    ld b, e
    ccf
    ld b, l
    ld hl, sp+$47
    cp d
    ld c, [hl]
    dec bc
    ld d, e
    adc e
    ld d, l
    ld l, h
    ld e, c
    ld d, b
    ld e, e
    add sp, $5d
    ld [c], a
    ld l, c
    ld d, h
    ld l, h
    xor h
    ld l, l
    ld d, l
    ld [hl], e
    ei
    ld [hl], h
    cp $75
    ld c, h
    ld a, b
    ld e, h
    ld a, c
    rst $28
    ld b, b
    or $40
    ld [hl-], a
    ld b, b
    rst $38
    ld b, b
    ld l, d
    ld b, c
    and l
    ld b, c
    xor [hl]
    ld b, c
    ld hl, $007b
    dec b
    and b
    ld a, [bc]
    adc b
    add b
    nop
    ld b, b
    ld bc, $2129
    ld a, e
    nop
    dec b
    and b
    ld a, [bc]
    ld [hl], b
    add b
    nop
    ld b, b
    ld bc, $212a
    ld a, e
    nop
    dec b
    and b
    ld a, [bc]
    ld [hl], b
    add b
    nop
    ld b, b
    ld bc, $212b
    ld a, e
    nop
    dec b
    and b
    inc b
    adc c
    add b
    nop
    ld b, b
    ld bc, $2129
    ld a, e
    nop
    dec b
    and b
    inc b
    ld [hl], c
    add b
    nop
    ld b, b
    ld bc, $212a
    ld a, e
    nop
    dec b
    and b
    inc b
    ld [hl], c
    add b
    nop
    ld b, b
    ld bc, $212b
    ld a, e
    nop
    ld de, $0aa0
    adc d
    add b
    nop
    ld b, b
    ld bc, $2129
    ld a, e
    nop
    ld de, $0aa0
    ld [hl], d
    add b
    nop
    ld b, b
    ld bc, $212a
    ld a, e
    nop
    ld de, $0aa0
    ld [hl], d
    add b
    nop
    ld b, b
    ld bc, $212b
    ld a, e
    nop
    ld de, $04a0
    adc e
    add b
    nop
    ld b, b
    ld bc, $2129
    ld a, e
    nop
    ld de, $04a0
    ld [hl], e
    add b
    nop
    ld b, b
    ld bc, $212a
    ld a, e
    nop
    ld de, $04a0
    ld [hl], e
    add b
    nop
    ld b, b
    ld bc, $212b
    ld a, e
    nop
    dec bc
    and b
    ld b, $75
    add b
    nop
    ld b, b
    ld bc, $2129
    ld a, e
    nop
    dec bc
    and b
    ld b, $74
    add b
    nop
    ld b, b
    ld bc, $212a
    ld a, e
    nop
    dec bc
    and b
    ld b, $74
    add b
    nop
    ld b, b
    ld bc, $002b
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
    rrca
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc bc
    rlca
    rst $38
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
    rst $28
    ld b, b
    ld [bc], a
    ret


    rst $30
    nop
    ld c, $28
    ld c, a
    ld a, $01
    ld [$c3e0], a
    ld hl, $0088
    call Call_035_4345
    ret


    rst $30
    jr nz, jr_035_4137

    jr z, jr_035_4169

    ld a, $02
    ld [$c3e0], a
    ld hl, $0089
    call Call_035_4345
    ret


jr_035_4137:
    rst $30
    ld b, b
    ld c, $28
    dec l
    ld a, $03
    ld [$c3e0], a
    ld hl, $008a
    call Call_035_4345
    ret


    rst $30
    ld h, b
    ld c, $28
    inc e
    ld a, $04
    ld [$c3e0], a
    ld hl, $008b
    call Call_035_4345
    ret


    rst $30
    add b
    ld c, $28
    dec bc
    ld a, $05
    ld [$c3e0], a
    ld hl, $0075
    call Call_035_4345

jr_035_4169:
    ret


    ld bc, $00ff
    nop
    dec d
    ld b, c
    ld b, $00
    ld [bc], a
    rst $38
    nop
    nop
    ld h, $41
    ld b, $00
    inc bc
    rst $38
    nop
    nop
    scf
    ld b, c
    ld b, $00
    inc b
    rst $38
    nop
    nop
    ld c, b
    ld b, c
    ld b, $00
    dec b
    rst $38
    nop
    nop
    ld e, c
    ld b, c
    ld b, $00
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
    sub e
    ld b, c
    nop
    nop
    rst $38
    call Call_035_41b2
    ret


Call_035_41b2:
    rst $30
    add b
    ld c, $ca
    inc bc
    ld b, d
    rst $30
    and b
    ld c, $ca
    rst $18
    ld b, c
    ld a, $0f
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $10
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $0e
    ld bc, $0b00
    ld de, $06a0
    rst $18
    jr nz, jr_035_41e9

    ld h, $05
    ld l, $16
    rst $18
    ld c, h
    ld [bc], a
    and a
    jr z, jr_035_41eb

jr_035_41e9:
    jr jr_035_41f8

jr_035_41eb:
    ld a, $0f
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_035_4200

    jr jr_035_4203

jr_035_41f8:
    ld a, $10
    ld bc, $3f00
    ld de, $3f00

jr_035_4200:
    rst $18
    jr nz, @+$0c

jr_035_4203:
    rst $30
    ld h, b
    ld c, $ca
    ld d, h
    ld b, d
    rst $30
    ld h, b
    ld de, $30ca
    ld b, d
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

    ld a, $0b
    ld bc, $1100
    ld de, $04a0
    rst $18
    jr nz, jr_035_423a

    ld h, $04
    ld l, $16
    rst $18
    ld c, h
    ld [bc], a
    and a
    jr z, jr_035_423c

jr_035_423a:
    jr jr_035_4249

jr_035_423c:
    ld a, $0c
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_035_4251

    jr jr_035_4254

jr_035_4249:
    ld a, $0d
    ld bc, $3f00
    ld de, $3f00

jr_035_4251:
    rst $18
    jr nz, jr_035_425e

jr_035_4254:
    rst $30
    ld b, b
    ld c, $28
    ld c, e
    rst $30
    ld b, b
    ld de, $80ca

jr_035_425e:
    ld b, d
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

    ld a, $08
    ld bc, $1100
    ld de, $0aa0
    rst $18
    jr nz, jr_035_428a

    ld h, $03
    ld l, $16
    rst $18
    ld c, h
    ld [bc], a
    and a
    jr z, jr_035_428c

jr_035_428a:
    jr jr_035_4299

jr_035_428c:
    ld a, $09
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_035_42a1

    jr jr_035_42a4

jr_035_4299:
    ld a, $0a
    ld bc, $3f00
    ld de, $3f00

jr_035_42a1:
    rst $18
    jr nz, @+$0c

jr_035_42a4:
    rst $30
    jr nz, @+$10

    jr z, jr_035_42f4

    rst $30
    jr nz, @+$13

    jp z, Jump_035_42d0

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

    ld a, $05
    ld bc, $0500
    ld de, $04a0
    rst $18
    jr nz, jr_035_42da

Jump_035_42d0:
    ld h, $02
    ld l, $16
    rst $18
    ld c, h
    ld [bc], a
    and a
    jr z, jr_035_42dc

jr_035_42da:
    jr jr_035_42e9

jr_035_42dc:
    ld a, $06
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_035_42f1

    jr jr_035_42f4

jr_035_42e9:
    ld a, $07
    ld bc, $3f00
    ld de, $3f00

jr_035_42f1:
    rst $18
    jr nz, jr_035_42fe

jr_035_42f4:
    rst $30
    nop
    ld c, $28
    ld c, e
    rst $30
    nop
    ld de, $20ca

jr_035_42fe:
    ld b, e
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

    ld a, $02
    ld bc, $0500
    ld de, $0aa0
    rst $18
    jr nz, jr_035_432a

    ld h, $01
    ld l, $16
    rst $18
    ld c, h
    ld [bc], a
    and a
    jr z, jr_035_432c

jr_035_432a:
    jr jr_035_4339

jr_035_432c:
    ld a, $03
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_035_4341

    jr jr_035_4344

jr_035_4339:
    ld a, $04
    ld bc, $3f00
    ld de, $3f00

jr_035_4341:
    rst $18
    jr nz, @+$0c

jr_035_4344:
    ret


Call_035_4345:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    call Call_000_2d10
    jr z, jr_035_436d

    ld hl, $083f
    rst $18
    ld c, $0a
    ld a, [$c3e0]
    rst $18
    ld e, d
    dec b
    ld a, [$c3e0]
    cp $05
    jr nz, jr_035_438a

    rst $18
    db $10
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$c90a], sp

jr_035_436d:
    rst $30
    nop
    nop
    jr nz, jr_035_437a

    ld hl, $0843
    rst $18
    ld c, $0a
    jr jr_035_4380

jr_035_437a:
    ld hl, $0841
    rst $18
    ld c, $0a

jr_035_4380:
    ld a, [$c3e0]
    cp $05
    jr nz, jr_035_438a

    rst $18
    db $10
    ld a, [bc]

jr_035_438a:
    call Call_035_4396
    call Call_035_43ae
    ld a, $80
    rst $18
    ld [$c90a], sp

Call_035_4396:
    ld a, [$c3e0]
    ld h, a
    ld l, $16
    rst $18
    ld c, h
    ld [bc], a
    and a
    jr z, jr_035_43a8

    ld a, $02
    ld [$c3e1], a
    ret


jr_035_43a8:
    ld a, $03
    ld [$c3e1], a
    ret


Call_035_43ae:
    ld a, [$c3e0]
    rst $18
    ld e, d
    dec b
    ld a, [$c3e1]
    ld l, a
    ld h, $00
    rst $18
    ld d, [hl]
    dec b
    ret


    ld [bc], a
    ld b, h
    add hl, bc
    ld b, h
    call z, $1243
    ld b, h
    inc de
    ld b, h
    inc d
    ld b, h
    dec d
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld hl, $007b
    dec bc
    nop
    dec b
    nop
    nop
    nop
    ld b, b
    ld bc, $2114
    ld a, e
    nop
    add hl, bc
    nop
    dec b
    nop
    nop
    nop
    ld b, b
    ld bc, $210e
    ld a, e
    nop
    dec c
    nop
    dec b
    nop
    nop
    nop
    ld b, b
    ld bc, $0015
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
    dec bc
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [hl-], a
    ld bc, $ffff
    ret


    rst $38
    ld hl, $0487
    rst $18
    ld c, $0a
    ldh a, [$95]
    ld hl, $43d5
    rst $18
    ld b, $0a
    ld a, $02
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $03
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $04
    ld bc, $0010
    rst $18
    ld d, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $0a
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
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
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
    ld a, $03
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
    ld a, $03
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_035_44bf

    ld a, $03
    rst $18
    ld e, $0a
    push af
    ld a, $0a
    rst $18
    inc b

jr_035_44bf:
    ld a, [bc]
    pop af
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
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
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $04
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_035_4521

    ld a, $04
    rst $18
    ld e, $0a
    push af
    ld a, $0a
    rst $18
    inc b

jr_035_4521:
    ld a, [bc]
    pop af
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_035_453e

    ld a, $02
    rst $18
    ld e, $0a
    ld a, $01
    ld [$c441], a

jr_035_453e:
    ret


    jp nz, $c945

    ld b, l
    ld c, l
    ld b, l
    inc l
    ld b, [hl]
    ld e, l
    ld b, [hl]
    sub c
    ld b, a
    sbc d
    ld b, a
    ld hl, $007b
    dec e
    nop
    rla
    nop
    nop
    nop
    add b
    ld bc, $2116
    ld a, e
    nop
    add hl, de
    nop
    rla
    nop
    nop
    nop
    nop
    ld bc, $210d
    ld a, e
    nop
    dec de
    nop
    inc de
    nop
    nop
    nop
    ret nz

    ld bc, $210a
    ld a, e
    nop
    dec bc
    nop
    add hl, de
    nop
    nop
    nop
    ret nz

    ld bc, $210d
    ld a, e
    nop
    add hl, bc
    nop
    rla
    nop
    nop
    nop
    ret nz

    ld bc, $210a
    ld a, e
    nop
    rlca
    nop
    add hl, bc
    cp l
    nop
    nop
    nop
    ld bc, $2104
    ld a, e
    nop
    add hl, bc
    nop
    rlca
    cp l
    nop
    nop
    ld b, b
    ld bc, $2105
    ld a, e
    nop
    dec bc
    nop
    rlca
    cp l
    nop
    nop
    ld b, b
    ld bc, $2106
    ld a, e
    nop
    dec c
    nop
    add hl, bc
    cp l
    nop
    nop
    add b
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
    jr jr_035_45c7

jr_035_45c7:
    ld e, $ff
    ld bc, $00ff
    nop
    nop
    nop
    ld bc, $ff01

Call_035_45d2:
    ld a, $02
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $0a
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
    jr z, jr_035_45f4

    ld a, $02
    rst $18
    ld [$c90a], sp

jr_035_45f4:
    rst $18
    db $10
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld hl, $0466
    rst $18
    ld c, $0a
    call Call_035_45d2
    ret


    ld hl, $046b
    rst $18
    ld c, $0a
    call Call_035_45d2
    ret


    ld hl, $0470
    rst $18
    ld c, $0a
    call Call_035_45d2
    ret


    ld hl, $0475
    rst $18
    ld c, $0a
    call Call_035_45d2
    ret


    ld [bc], a
    rst $38
    nop
    nop
    jp hl


    ld bc, $0000
    inc bc
    rst $38
    nop
    nop
    ld [$0001], a
    nop
    inc b
    rst $38
    nop
    nop
    db $eb
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    db $ec
    ld bc, $0001
    ld b, $ff
    nop
    nop
    db $ed
    ld bc, $0003
    dec bc
    rst $38
    nop
    nop
    db $ed
    ld bc, $0003
    rst $38
    ld bc, $00ff
    nop
    ld a, e
    ld a, e
    ld b, $00
    rst $38
    call Call_035_47bf
    ret


Call_035_466a:
    ld a, $00
    ld bc, $0018
    rst $18
    ld d, $0a
    ld bc, $0018
    rst $18
    ld [hl], $0a
    ld a, $00
    ld bc, $1800
    ld de, $1900
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $1800
    ld de, $1900
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $1500
    ld de, $1900
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $1500
    ld de, $1900
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $1500
    ld de, $1600
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $1500
    ld de, $1600
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0b00
    ld de, $1600
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $0b00
    ld de, $1600
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0b00
    ld de, $1400
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $0b00
    ld de, $1400
    rst $18
    jr c, jr_035_46f7

    rst $18
    inc a
    ld a, [bc]
    rst $30
    and b
    rla
    jr z, jr_035_46f6

    ret


jr_035_46f6:
    xor a

jr_035_46f7:
    ld [$c4b3], a
    ld de, $87c0
    ld b, $00
    rst $18
    inc c
    ld bc, $ddcd
    dec b
    ld a, $0f
    ld hl, $4666
    call Call_000_23e8
    ld hl, $01ee
    rst $18
    ld c, $0a
    ld bc, $0020
    rst $18
    ld [hl], $0a
    ld a, $06
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $06
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $06
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
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $05
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
    ld a, $05
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_035_475d

    ld a, $05
    rst $18
    ld e, $0a
    push af
    ld a, $0a
    rst $18
    inc b

jr_035_475d:
    ld a, [bc]
    pop af
    rst $30
    nop
    ld de, $1228
    rst $30
    jr nz, @+$13

    jr z, jr_035_4776

    rst $30
    ld b, b
    ld de, $0828
    rst $30
    ld h, b
    ld de, $0328
    rst $18
    db $10
    ld a, [bc]

jr_035_4776:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    xor a
    ld bc, $0a00
    ld de, $0d00
    rst $18
    jr c, jr_035_4791

    rst $18
    inc a
    ld a, [bc]
    ld hl, $4666
    call Call_000_2449
    ret


jr_035_4791:
    ld bc, $60ff
    nop
    ld l, d
    ld b, [hl]
    nop
    nop
    rst $38
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    call Call_035_466a
    ld a, $01
    ld [$c441], a
    ret


    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    jr nz, jr_035_47b2

jr_035_47b2:
    nop
    ld d, b
    inc d
    jr nz, jr_035_47b7

jr_035_47b7:
    ld d, b
    inc d
    nop
    nop
    jr nc, jr_035_47dd

    jr nz, jr_035_47bf

Call_035_47bf:
jr_035_47bf:
    push af
    push bc
    push de
    push hl
    ld a, [$c4b3]
    add a
    add a
    ld hl, $47ab
    add l
    ld l, a
    jr nc, jr_035_47d0

    inc h

jr_035_47d0:
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld b, [hl]
    ld a, [$c4b2]
    rrca
    and $07
    bit 5, b

jr_035_47dd:
    jr z, jr_035_47e0

    cpl

jr_035_47e0:
    add $00
    add d
    ld d, a
    ld a, [$c4b2]
    rrca
    and $07
    add $08
    add e
    ld e, a
    ld c, $7c
    call Call_000_26a4
    pop hl
    pop de
    pop bc
    pop af
    ret


    or a
    ld c, b
    jp z, Jump_000_0648

    ld c, b
    db $e3
    ld c, b
    db $e4
    ld c, b
    push hl
    ld c, b
    and $48
    ld hl, $007b
    inc bc
    nop
    dec c
    nop
    nop
    nop
    add b
    ld bc, $2116

jr_035_4813:
    ld a, e
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    ret nz

    ld bc, $870d
    ld c, b
    nop
    rla
    nop
    ld de, $0000
    nop
    add b
    ld bc, $2116
    ld a, e
    nop
    dec e
    nop
    dec c
    nop
    nop
    nop
    add b
    ld bc, $210d
    ld a, e
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $211d
    ld a, e
    nop
    add hl, bc
    nop
    ld b, c
    nop
    nop
    nop
    add b
    ld bc, $210c
    ld a, e
    ld b, b
    jr jr_035_4813

    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $2126
    ld a, e
    ld b, b
    ld [hl+], a
    ret nz

    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $2126
    ld a, e
    ld b, b
    ld [hl-], a
    ret nz

    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $2126
    ld a, e
    nop
    daa
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $0d0a
    ld c, $05
    nop
    dec c
    dec de
    ld bc, $0700
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0746
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0746
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $075a
    ld b, b
    nop
    ld bc, $0102
    ld b, [hl]
    rlca
    ret nz

    nop
    ld bc, $0102
    ld e, d
    inc c
    db $e3
    rst $38
    ld bc, $00c0
    add hl, bc
    nop
    dec c
    ld [bc], a
    nop
    nop
    ld hl, $0d00
    inc bc
    ret nz

    nop
    add hl, bc
    nop
    dec c
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc [hl]
    ld bc, $ff02
    nop
    nop
    nop
    nop
    inc [hl]
    ld bc, $ff03
    nop
    nop
    nop
    nop
    inc [hl]
    ld bc, $ffff
    ret


    rst $38
    ld a, [$c46a]
    cp $01
    jp z, Jump_035_492c

    cp $02
    jp z, Jump_035_4ae5

    cp $03
    jp z, Jump_035_4b7d

    ret


    dec c
    ld c, $08
    nop
    inc b
    nop
    dec de
    nop
    dec c
    ld [bc], a
    rlca
    ret nz

    add b
    ld [bc], a
    ld [bc], a
    rlca
    ret nz

    ld b, b
    ld [bc], a
    db $10
    ld a, [bc]
    ld [bc], a
    inc bc
    nop
    dec de
    nop
    ld hl, $0201
    nop
    dec c
    ld c, $08
    nop
    inc b
    nop
    dec de
    nop
    dec c
    ld [bc], a
    rlca
    ret nz

    add b
    ld [bc], a
    ld [bc], a
    rlca
    ret nz

    ld b, b
    ld [bc], a
    ld [bc], a
    nop

Jump_035_492c:
    call Call_035_4d9f
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld de, $000e
    ld a, $07
    ld bc, $1d00
    ld de, $0b00
    rst $18
    jr nz, jr_035_494f

    ld a, [$c450]
    cp $08
    jp nz, Jump_035_4987

    ld a, $02

jr_035_494f:
    ld bc, $1500
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $03
    ld bc, $1700
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld bc, $1b00
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $05
    ld bc, $1900
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $0b
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_035_498e

    jp Jump_035_4a34


Jump_035_4987:
    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]

jr_035_498e:
    ld a, $00
    ld b, $40
    ld de, $0280
    rst $18
    jr z, jr_035_49a2

    ld a, $00
    rst $18
    ld e, $0a
    ldh a, [$95]
    ld b, a
    ld a, $04

jr_035_49a2:
    ld de, $7b22
    rst $18
    jr @+$0c

    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $03
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $04
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $05
    ld bc, $0010
    rst $18
    ld d, $0a
    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld bc, $1580
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_035_49f5

    ld a, $03
    rst $18
    ld e, $0a
    ld a, $03
    ld bc, $1700

jr_035_49f5:
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld bc, $1a00
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    ld bc, $1880
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $0900
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a

Jump_035_4a34:
    ld a, $00
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_035_4a58

    ld bc, $0040
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $1900

jr_035_4a58:
    ld de, $0b00
    rst $18
    jr c, jr_035_4a68

    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $00
    rst $18

jr_035_4a68:
    inc l
    ld a, [bc]
    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $05
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld bc, $000d
    rst $18
    ld d, $0a
    ld a, $00
    ld bc, $1280
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ldh a, [$95]
    ld b, a
    ld a, $05
    ld de, $48f9
    rst $18
    jr jr_035_4aac

    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_035_4aac:
    ld a, $03
    ld de, $48f9
    rst $18
    jr jr_035_4abe

    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_035_4abe:
    ld a, $02
    ld de, $48f9
    rst $18
    jr jr_035_4ad0

    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_035_4ad0:
    ld a, $00
    ld de, $48f9
    rst $18
    jr @+$0c

    push af
    ld a, $aa
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


Jump_035_4ae5:
    ld a, $0b
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    call Call_035_4dd7
    ld c, $04
    call Call_000_25af
    ld bc, $0010
    rst $18
    ld [hl], $0a
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    xor a
    ld bc, $2900
    ld de, $0d00
    rst $18
    jr c, jr_035_4b1a

    ld a, $00
    ld bc, $2b00
    ld de, $0d00
    rst $18
    ld [hl+], a

jr_035_4b1a:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $0b
    ld bc, $2b00
    ld de, $0700
    rst $18
    jr nz, jr_035_4b3c

    ld a, $0b
    ld b, $40
    ld de, $0100
    rst $18
    jr z, jr_035_4b46

jr_035_4b3c:
    ld a, $0b
    rst $18
    ld e, $0a
    ld a, $0b
    ld de, $ff40

jr_035_4b46:
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $0b
    ld bc, $2700
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0b
    rst $18
    ld e, $0a
    ld a, $0b
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld bc, $2900
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $50
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld [$c441], a
    ret


Jump_035_4b7d:
    call Call_035_4dbb
    ldh a, [$95]
    ld hl, $4d5d
    rst $18
    ld b, $0a
    rst $18
    nop
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625
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
    ld a, $02
    ld b, a
    ld a, $00
    rst $18
    jr nc, jr_035_4bb2

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, a

jr_035_4bb2:
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    rst $18
    db $10
    ld a, [bc]
    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    ld a, $04
    ld b, a
    ld a, $03
    rst $18
    jr nc, jr_035_4c07

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld b, a

jr_035_4c07:
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
    ld a, $04
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $03
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $04
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
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
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $02
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $03
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $04
    ld bc, $0010
    rst $18
    ld d, $0a
    ld bc, $0010
    rst $18
    ld [hl], $0a
    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    xor a
    ld bc, $1d80
    ld de, $0d80
    rst $18
    jr c, jr_035_4c8d

    ld a, $00
    ld bc, $1d80
    ld de, $0d80
    rst $18
    ld [hl+], a

jr_035_4c8d:
    ld a, [bc]
    ld a, $02
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_035_4ca2

    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld bc, $1b00

jr_035_4ca2:
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, @+$0c

    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_035_4ccd

    ld a, $03
    rst $18
    ld e, $0a
    ld a, $03
    ld bc, $1900

jr_035_4ccd:
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld bc, $1700
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    rst $18
    ld e, $0a
    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $80
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
    ldh a, [$95]
    ld b, a
    ld a, $02
    ld de, $48f9
    rst $18
    jr jr_035_4d21

    push af
    ld a, $15
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_035_4d21:
    ld a, $03
    ld de, $48f9
    rst $18
    jr jr_035_4d33

    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_035_4d33:
    ld a, $04
    ld de, $48f9
    rst $18
    jr jr_035_4d45

    push af
    ld a, $64
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_035_4d45:
    ld a, $00
    ld de, $48f9
    rst $18
    jr @+$0c

    push af
    ld a, $5a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld [$c441], a
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    ld hl, $007b
    rlca
    nop
    dec c
    nop
    nop
    nop
    ret nz

    ld bc, $212d
    ld a, e
    nop
    add hl, bc
    nop
    rrca
    nop
    nop
    nop
    ret nz

    ld bc, $210d
    ld a, e
    nop
    rlca
    nop
    rrca
    nop
    nop
    nop
    ret nz

    ld bc, $2116
    ld a, e
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $001d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

Call_035_4d9f:
    rst $18
    inc a
    ld a, [bc]
    ld b, $01
    ld c, $15
    ld d, $01
    ld e, $06
    ld h, $3a
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    ld hl, $4e0a
    ld de, $0206
    call Call_000_0595
    ret


Call_035_4dbb:
    rst $18
    inc a
    ld a, [bc]
    ld b, $01
    ld c, $1a
    ld d, $01
    ld e, $06
    ld h, $3a
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    ld hl, $4e4a
    ld de, $0206
    call Call_000_0595
    ret


Call_035_4dd7:
    rst $18
    inc a
    ld a, [bc]
    ld b, $01
    ld c, $1f
    ld d, $01
    ld e, $06
    ld h, $3a
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    ld hl, $4e8a
    ld de, $0206
    call Call_000_0595
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    add b
    nop
    jr nz, @+$57

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    nop
    dec hl
    rst $18
    ld bc, $4bff
    xor c
    inc [hl]
    rst $38
    ld c, e
    adc [hl]
    ld a, a
    nop
    dec hl
    xor c
    inc [hl]
    rst $38
    ld c, e
    rst $18
    ld bc, $4bff
    xor c
    inc [hl]
    rst $38
    ld a, a
    xor c
    inc [hl]
    jr nz, jr_035_4e56

    nop
    dec hl
    adc [hl]
    ld a, a
    rst $38
    ld a, a
    rra
    ld bc, $44ad
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    add b
    nop
    jr nz, @+$57

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld c, h
    ld [bc], a
    ld e, d
    nop
    call c, $a912
    inc h
    call c, $9f12
    ld [bc], a

jr_035_4e56:
    ld c, h
    ld [bc], a
    xor c
    inc h
    call c, $5a12
    nop
    call c, $a912
    inc h
    rra
    ld h, e
    xor c
    inc h
    jp z, $4c05

    ld [bc], a
    sbc a
    ld [bc], a
    rra
    ld h, e
    rst $18
    nop
    jp z, Jump_000_0828

    dec h
    ld [$0825], sp
    dec h
    ld [$8025], sp
    nop
    jr nz, @+$57

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ldh [rSTAT], a
    db $f4
    inc d
    call nc, $862a
    inc l
    call nc, Call_035_5f2a
    ld h, c
    ldh [rSTAT], a
    add [hl]
    inc l
    call nc, $f42a
    inc d
    call nc, $862a
    inc l
    rst $18
    ld a, [hl]
    add [hl]
    inc l
    dec h
    dec l
    ldh [rSTAT], a
    ld e, a
    ld h, c
    rst $18
    ld a, [hl]
    inc d
    db $10
    ret z

    inc [hl]
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld bc, $204f
    ld c, a
    ret z

    ld c, [hl]
    add hl, hl
    ld c, a
    dec hl
    ld c, a
    inc [hl]
    ld c, a
    dec [hl]
    ld c, a
    ld hl, $007b
    dec bc
    nop
    rrca
    nop
    nop
    nop
    ret nz

    ld bc, $3814
    ld d, c
    nop
    add hl, bc
    ld h, b
    ld c, $00
    nop
    nop
    ld b, b
    ld bc, $3829
    ld d, c
    nop
    add hl, bc
    ld h, b
    ld c, $00
    nop
    nop
    ld b, b
    ld bc, $382a
    ld d, c
    nop
    add hl, bc
    ld h, b
    ld c, $00
    nop
    nop
    ld b, b
    ld bc, $002b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $0040
    dec bc
    nop
    ld a, [bc]
    ld [bc], a
    ld b, b
    nop
    dec bc
    nop
    ld a, [bc]
    inc bc
    ld b, b
    nop
    dec bc
    nop
    ld a, [bc]
    inc b
    ld b, b
    nop
    dec bc
    nop
    ld a, [bc]
    ld a, [bc]
    ld b, b
    nop
    dec bc
    nop
    ld a, [bc]
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [hl-], a
    ld bc, $ffff
    ret


    ld bc, $00ff
    nop
    ld a, e
    ld a, e
    ld b, $00
    rst $38
    rst $38
    ld c, $7f
    call Call_000_25a1
    ld a, $04
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, $05
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    call Call_035_4f51
    ld a, $01
    ld [$c441], a
    ret


Call_035_4f51:
    rst $18
    nop
    ld a, [bc]
    xor a
    ld bc, $0b00
    ld de, $0e00
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0c3c
    rst $18
    ld c, $0a
    call Call_035_5117
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    ld b, $40
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
    push af
    ld a, $0a
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
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, [$c450]
    cp $18
    jr nz, jr_035_4fd2

    ld hl, $0c3e
    rst $18
    ld c, $0a

jr_035_4fd2:
    ld hl, $0c3f
    rst $18
    ld c, $0a
    ld a, $00
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
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
    ld a, $00
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
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af

Call_035_5011:
    ld a, $02
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $03
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $04
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $05
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $02
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld bc, $0a00
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $03
    ld bc, $0a80
    ld de, $0e00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld bc, $0a80
    ld de, $0e00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    ld bc, $0a80
    ld de, $0e00
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $02
    ld bc, $0a80
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $02
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $03
    ld bc, $0b40
    ld de, $0c00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld bc, $0b40
    ld de, $0c00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    ld bc, $0b40
    ld de, $0c00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    ld bc, $0b00
    ld de, $0c80
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
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    rst $18
    nop
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $14
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
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld hl, $0c41
    rst $18
    ld c, $0a
    ld hl, $0000
    ld a, [$c46a]
    sub $01
    add l
    ld l, a
    jr nc, jr_035_5110

    inc h

jr_035_5110:
    rst $18
    ld d, [hl]
    dec b
    call Call_035_5011
    ret


Call_035_5117:
    ld a, [$c450]
    cp $1b
    jr nz, jr_035_5122

    ld a, $04
    jr jr_035_5134

jr_035_5122:
    cp $1a
    jr nz, jr_035_512a

    ld a, $03
    jr jr_035_5134

jr_035_512a:
    cp $19
    jr nz, jr_035_5132

    ld a, $02
    jr jr_035_5134

jr_035_5132:
    ld a, $01

jr_035_5134:
    rst $18
    ld e, d
    dec b
    ret


    db $10
    ld a, [bc]
    ld bc, $0c32
    ei
    rst $38
    ld b, $16
    ld c, $0a
    ld d, $0a
    ld e, $0a
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    ret


    ld b, $19
    ld c, $0a
    ld d, $0a
    ld e, $0a
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    ret


    nop
    add b
    nop
    jr nz, @+$57

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld h, d
    ld a, l
    jp hl


    inc l
    add sp, $7e
    rst $38
    ld a, a
    ld b, b
    inc bc
    sub $01
    ld b, b
    ld [bc], a
    ld e, a
    ld [bc], a
    add sp, $7e
    jp hl


    inc l
    sub $01
    rst $38
    ld a, a
    ld b, b
    inc bc
    ld a, a
    inc hl
    rra
    ld h, h
    ld b, [hl]
    db $10
    ld b, b
    inc bc
    sbc a
    ld [bc], a
    dec e
    nop
    ld b, [hl]
    db $10
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    add b
    nop
    jr nz, @+$57

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    and h
    ld a, l
    ld a, [bc]
    ld sp, $7f2a
    rst $38
    ld a, a
    and $0b
    add hl, de
    ld [bc], a
    and b
    ld [bc], a
    rra
    inc bc
    ld a, [hl+]
    ld a, a
    ld a, [bc]
    ld sp, $0219
    rst $38
    ld a, a
    and $0b
    rst $18
    ld [bc], a
    rra
    ld h, h
    ld b, [hl]
    db $10
    and $0b
    rst $38
    dec sp
    dec e
    nop
    ld b, [hl]
    db $10
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    add b
    nop
    jr nz, jr_035_5239

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld d, c
    ld a, l
    dec hl
    dec [hl]
    ld_long a, $ff7d
    ld a, a
    ld [hl], $03
    ld e, e
    ld bc, $0233
    ld e, a
    ld [de], a
    ld a, [$2b7d]
    dec [hl]
    ld e, e
    ld bc, $7fff
    ld [hl], $03
    ld a, a
    inc hl
    rra
    ld h, h
    ld b, [hl]
    db $10
    ld [hl], $03
    sbc a
    ld [bc], a
    dec e
    nop
    ld b, [hl]
    db $10
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    add b
    nop
    jr nz, jr_035_5279

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    or e
    ld a, h
    swap h
    call c, $9f7d
    ld a, a
    ld b, b

jr_035_5239:
    ld c, e
    ld d, a
    dec e
    ld b, b
    ld a, [hl-]
    rra
    ld a, [hl-]
    call c, $cb7d
    inc [hl]
    ld d, a
    dec e
    sbc a
    ld a, a
    ld b, b
    ld c, e
    rst $18
    ld [bc], a
    rra
    ld h, h
    ld b, [hl]
    db $10
    ld b, b
    ld c, e
    rst $38
    dec sp
    dec e
    nop
    ld b, [hl]
    db $10
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d443]
    cp $02
    jr nc, jr_035_52a2

    add a
    add l
    ld l, a
    jr nc, jr_035_5276

    inc h

jr_035_5276:
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_035_5279:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and e
    cp $ff
    jr z, jr_035_52a2

    call Call_000_2d10
    jr z, jr_035_529a

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
    call Call_035_52a8
    pop hl

jr_035_529a:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_035_5279

jr_035_52a2:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_035_52a8:
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
    call Call_035_52e5
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    call Call_035_52e5
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_035_52e5:
    push af
    push bc
    push de
    push hl

jr_035_52e9:
    push bc
    push hl
    push de

jr_035_52ec:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_035_52ec

    pop de
    ld a, $40
    add e
    ld e, a
    jr nc, jr_035_52fa

    inc d

jr_035_52fa:
    pop hl
    ld a, $40
    add l
    ld l, a
    jr nc, jr_035_5302

    inc h

jr_035_5302:
    pop bc
    dec c
    jr nz, jr_035_52e9

    pop hl
    pop de
    pop bc
    pop af
    ret


    ld a, [hl-]
    ld d, e
    ld b, a
    ld d, e
    add hl, de
    ld d, e
    ld d, b
    ld d, e
    ld d, c
    ld d, e
    xor c
    ld d, h
    or d
    ld d, h
    ld hl, $007b
    rra
    nop
    add hl, hl
    nop
    nop
    nop
    ld b, b
    ld bc, $210d
    ld a, e
    nop
    ld bc, $1900
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
    ld [bc], a
    ret nz

    nop
    add hl, hl
    nop
    dec h
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [hl], $01
    rst $38
    rst $38
    rst $38

Call_035_5352:
    ld b, $3f
    ld c, $26
    ld d, $19
    ld e, $24
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc
    ld b, $3f
    ld c, $24
    ld d, $19
    ld e, $27
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc
    ld b, $3f
    ld c, $26
    ld d, $1c
    ld e, $2a
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc
    ld b, $3f
    ld c, $28
    ld d, $1f
    ld e, $28
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc
    ld c, $04
    call Call_000_25af
    ld bc, $0020
    rst $18
    ld [hl], $0a
    ld hl, $14ea
    rst $18
    ld c, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
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
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    ld bc, $0018
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $1b00
    ld de, $3500
    rst $18
    jr c, jr_035_541c

    ld a, $02
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $1e

jr_035_541c:
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
    ld a, $00
    ld bc, $0014
    rst $18
    ld d, $0a
    ld a, $00
    ld bc, $1b00
    ld de, $3500
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld bc, $0014
    rst $18
    ld [hl], $0a
    ld a, $02
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    xor a
    ld bc, $1f00
    ld de, $3500
    rst $18
    jr c, jr_035_547c

    ld a, $00
    ld bc, $1f00
    ld de, $3500
    rst $18
    ld [hl+], a

jr_035_547c:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    xor a
    ld bc, $1f00
    ld de, $3100
    rst $18
    jr c, jr_035_5496

    ld a, $00
    ld bc, $1f00
    ld de, $2f00
    rst $18
    ld [hl+], a

jr_035_5496:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


    ld bc, $cbff
    nop
    ld d, d
    ld d, e
    nop
    nop
    rst $38
    ld a, [$c46a]
    cp $02
    jr z, jr_035_54bd

    call Call_035_5352
    ret


jr_035_54bd:
    ld a, $02
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld bc, $0010
    rst $18
    ld [hl], $0a
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    ld c, $04
    call Call_000_25af
    xor a
    ld bc, $2500
    ld de, $1f00
    rst $18
    jr c, jr_035_54eb

    ld a, $00
    ld bc, $2900
    ld de, $2100
    rst $18
    ld [hl+], a

jr_035_54eb:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
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
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $2500
    ld de, $1900
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
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
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_035_554b

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18

jr_035_554b:
    ld a, [hl+]
    ld a, [bc]
    ld a, $03
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $03
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_035_5569

    ld a, $03
    rst $18
    ld e, $0a
    ld a, $00
    ld b, a
    ld a, $07

jr_035_5569:
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
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
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


    sbc $55
    db $eb
    ld d, l
    sbc c
    ld d, l
    db $f4
    ld d, l
    cp e
    ld d, [hl]
    cp h
    ld d, [hl]
    cp l
    ld d, [hl]
    ld hl, $007b
    daa
    nop
    ld h, $00
    nop
    nop
    ret nz

    ld bc, $212c
    ld a, e
    nop
    add hl, bc
    nop
    ld de, $0000
    nop
    ld b, b
    ld bc, $212f
    ld a, e
    nop
    ld a, [bc]
    nop
    ld [de], a
    nop
    nop
    nop
    ld b, b
    ld bc, $212e
    ld a, e
    nop
    jr nz, jr_035_55c2

jr_035_55c2:
    jr nz, jr_035_55c4

jr_035_55c4:
    nop
    nop
    ret nz

    ld bc, $2126
    ld a, e
    nop
    ld bc, $2100
    nop
    nop
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
    ld [hl+], a
    ld b, b
    ld hl, $c002
    nop
    ld e, $40
    add hl, de
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    scf
    ld bc, $ffff

Jump_035_55f5:
    call Call_035_5921
    ld bc, $0010
    rst $18
    ld [hl], $0a
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, $04
    ld hl, $56f8
    call Call_000_23e8
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    xor a
    ld bc, $1300
    ld de, $2100
    rst $18
    jr c, jr_035_5638

    ld a, $00
    ld bc, $1300
    ld de, $2100
    rst $18
    ld [hl+], a

jr_035_5638:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld bc, $0b00
    ld de, $2100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    ld bc, $0f00
    ld de, $2100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $06
    ld bc, $0d00
    ld de, $2100
    rst $18
    jr nz, @+$0c

    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_035_569c

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18

jr_035_569c:
    ld a, [hl+]
    ld a, [bc]
    ld a, $06
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $06
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_035_56ba

    ld a, $06
    rst $18
    ld e, $0a
    ld a, $01
    ld [$c441], a

jr_035_56ba:
    ret


    rst $38
    rst $38
    ld a, [$c46a]
    cp $02
    jp z, Jump_035_55f5

    ld a, $04
    ld bc, $2000
    ld de, $1c80
    rst $18
    jr nz, @+$0c

    ld a, $03
    ld bc, $2000
    ld de, $1d00
    rst $18
    jr nz, @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $5808
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $581a
    rst $18
    jr jr_035_56fb

    call Call_035_5921
    call Call_035_56ff
    ret


    ld bc, $0740

jr_035_56fb:
    call Call_035_5939
    ret


Call_035_56ff:
    ld a, $02
    ld bc, $1d00
    ld de, $2500
    rst $18
    jr nz, @+$0c

    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $04
    ld hl, $56f8
    call Call_000_23e8
    ld hl, $1524
    rst $18
    ld c, $0a
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
    jr z, jr_035_573c

    ld de, $0015
    add hl, de
    ld [hl], a

jr_035_573c:
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $5832
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $57ff
    rst $18
    jr jr_035_575c

    xor a
    ld bc, $1f00
    ld de, $2000
    rst $18
    jr c, jr_035_5766

jr_035_575c:
    ld a, $00
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $64

jr_035_5766:
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

jr_035_578e:
    ld a, $02
    rst $18
    ld l, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
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
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld bc, $1b00
    ld de, $1c00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $01
    ld [$c441], a
    ret


    db $10
    inc b
    inc b
    nop
    add hl, bc
    nop
    ld de, $0002
    db $10
    inc bc
    inc b
    nop
    jr nz, jr_035_578e

    inc e
    ld [bc], a
    db $10
    ld bc, $0400
    nop
    add hl, bc
    add b
    ld [de], a
    ld [bc], a
    nop
    inc b
    nop
    jr nz, jr_035_581e

jr_035_581e:
    dec e
    ld [bc], a
    inc bc
    nop
    jr nz, jr_035_5824

jr_035_5824:
    dec e
    ld bc, $0378
    add b
    rra
    nop
    dec e
    ld bc, $0c78
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
    inc bc
    nop
    jr nz, jr_035_5847

jr_035_5847:
    dec e
    ld bc, $0378
    add b
    rra
    nop
    dec e
    ld bc, $0c78
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
    jr z, jr_035_5893

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
    jr nc, jr_035_5880

    inc h

jr_035_5880:
    push hl
    ld hl, $0006
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, $90
    add e
    ld e, a
    jr nc, jr_035_588f

    inc d

jr_035_588f:
    pop hl
    call Call_000_27b4

jr_035_5893:
    ld a, $04
    rst $18
    inc d
    ld a, [bc]
    inc h
    dec h
    jr z, jr_035_58cc

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
    jr nc, jr_035_58b9

    inc h

jr_035_58b9:
    push hl
    ld hl, $0006
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, $90
    add e
    ld e, a
    jr nc, jr_035_58c8

    inc d

jr_035_58c8:
    pop hl
    call Call_000_27b4

jr_035_58cc:
    ret


    nop
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
    jr nz, jr_035_591e

    ld [bc], a
    nop
    add b
    ret nz

    ld bc, $7fff
    ld c, e

jr_035_591e:
    ld b, e
    nop
    nop

Call_035_5921:
    xor a
    ldh [rVBK], a
    ld hl, $58d0
    ld de, $8400
    ld c, $04
    call Call_000_0468
    ld hl, $5919
    ld de, $0f01
    call Call_000_0595
    ret


Call_035_5939:
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
    ld hl, $5910
    pop bc
    call Call_000_26ea
    ret


    pop bc
    ret


    ld hl, sp+$59
    rst $38
    ld e, c
    ld a, d
    ld e, c
    ld [$095a], sp
    ld e, d
    ld a, [bc]
    ld e, d
    dec bc
    ld e, d
    ld hl, $007b
    ld a, [de]
    nop
    jr nz, jr_035_5981

jr_035_5981:
    nop
    nop
    nop
    ld bc, $2d0a
    ld a, e
    nop
    rla
    nop
    jr jr_035_598d

jr_035_598d:
    nop
    nop
    nop
    ld bc, $2116
    ld a, e
    nop
    ld hl, $1b00
    nop
    nop
    nop
    ld b, b
    ld bc, $2116
    ld a, e
    nop
    ld h, $00
    rra
    nop
    nop
    nop
    add b
    ld bc, $210e
    ld a, e
    nop
    inc e
    nop
    dec h
    nop
    nop
    nop
    ret nz

    ld bc, $ef16
    ld e, c
    nop
    ld hl, $2080
    nop
    nop
    nop
    ret nz

    ld bc, $2128
    ld a, e
    nop
    rra
    nop
    inc d
    nop
    nop
    nop
    ret nz

    ld bc, $212d
    ld a, e
    nop
    dec e
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    ld bc, $210d
    ld a, e
    nop
    ld hl, $1200
    nop
    nop
    nop
    add b
    ld bc, $0016
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec c
    dec de
    nop
    nop
    dec c
    rla
    nop
    nop
    nop
    ld bc, $0000
    rla
    nop
    dec d
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc sp
    inc bc
    rst $38
    rst $38
    ret


    rst $38
    rst $18
    nop
    ld a, [bc]
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    ld bc, $0010
    rst $18
    ld [hl], $0a
    ld c, $08
    call Call_000_25af
    xor a
    ld bc, $1d00
    ld de, $1600
    rst $18
    jr c, jr_035_5a35

    ld a, $00
    ld bc, $1d00
    ld de, $1380
    rst $18
    ld [hl+], a

jr_035_5a35:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, a
    ld a, $08
    rst $18
    ld l, $0a
    ld a, $08
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $08
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $09
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld l, $0a
    ld hl, $152c
    rst $18
    ld c, $0a
    ld a, $08
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    db $10
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    db $10
    ld a, [bc]
    ld a, $08
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $08
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $09
    ld b, a
    ld a, $0a
    rst $18
    jr nc, jr_035_5aa1

    ld a, $0a
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a

jr_035_5aa1:
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $09
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $09
    rst $18
    inc [hl]
    ld a, [bc]
    ld hl, $1808
    rst $18
    ld c, $0a
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $1809
    ld de, $0101
    ld hl, $180b
    rst $18
    ld c, $0a
    jr jr_035_5ad2

    ld hl, $180a
    rst $18
    ld c, $0a

jr_035_5ad2:
    ld a, $0a
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $08
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $09
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $09
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $01
    ld [$c441], a
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    ld a, $08
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $09
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $0a
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $08
    rst $18
    inc [hl]
    ld a, [bc]
    ret


    ld a, $08
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $08
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $09
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $0a
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ret


    ld a, $01
    ld [$c441], a
    ret


    sub a
    ld e, e
    sbc [hl]
    ld e, e
    ld e, [hl]
    ld e, e
    and a
    ld e, e
    xor b
    ld e, e
    xor c
    ld e, e
    xor d
    ld e, e
    ld hl, $007b
    add hl, bc
    nop
    ld bc, $0000
    nop
    ld b, b
    ld bc, $2104
    ld a, e
    nop
    dec bc
    nop
    ld bc, $0000
    nop
    ld b, b
    ld bc, $2105
    ld a, e
    nop
    dec c
    nop
    ld bc, $0000
    nop
    ld b, b
    ld bc, $2106
    ld a, e
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
    ld c, $ff
    ld bc, $00ff
    nop
    nop
    nop
    ld [hl-], a
    ld bc, $ffff
    ret


    rst $38
    call Call_035_5bb3
    ld a, $01
    ld [$c441], a
    ret


Call_035_5bb3:
    call Call_035_5dcc
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
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
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
    ld a, $05
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
    ld a, $1e
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
    ld a, $28
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
    ld a, $05
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
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $04
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
    ld a, $05
    ld bc, $0700
    ld de, $0500
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


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

Call_035_5dcc:
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
    ld hl, $5d9c
    ld de, $0206
    call Call_000_0595
    ret


    rst $38
    ld e, l
    ld b, $5e
    or $5d
    rrca
    ld e, [hl]
    db $10
    ld e, [hl]
    ld de, $125e
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    rrca
    nop
    inc hl
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [hl-], a
    ld bc, $ffff
    ret


    rst $38
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $08
    call Call_000_25af
    ld a, $00
    ld bc, $0018
    rst $18
    ld d, $0a
    ld bc, $0018
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $0f00
    ld de, $1b00
    rst $18
    jr c, jr_035_5e40

    ld a, $00
    ld bc, $0f00
    ld de, $1b00
    rst $18
    ld [hl+], a

jr_035_5e40:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    xor a
    ld bc, $1d00
    ld de, $1b00
    rst $18
    jr c, jr_035_5e5a

    ld a, $00
    ld bc, $1d00
    ld de, $1b00
    rst $18
    ld [hl+], a

jr_035_5e5a:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    xor a
    ld bc, $1d00
    ld de, $1900
    rst $18
    jr c, jr_035_5e74

    ld a, $00
    ld bc, $1d00
    ld de, $1900
    rst $18
    ld [hl+], a

jr_035_5e74:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld bc, $0040
    rst $18
    ld [hl], $0a
    call Call_035_6890
    call Call_035_65d4
    ld bc, $0020
    rst $18
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
    call Call_035_6731
    call Call_035_6639
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
    jr jr_035_5ebd

    inc [hl]
    jr z, jr_035_5f0c

    ld l, h
    sub d
    ld l, [hl]
    sub c
    ccf

jr_035_5ebd:
    ld e, b
    jr c, jr_035_5f1f

    rra
    jr nz, jr_035_5ec9

    add hl, de
    nop
    ld b, $00
    nop
    nop

jr_035_5ec9:
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_5ecf:
    nop
    nop
    nop
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
    jr jr_035_5f00

    inc e
    dec c
    inc de

jr_035_5f00:
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

jr_035_5f0c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_035_5f49

    ret z

    ldh [rNR23], a
    ret nz

    jr c, jr_035_5ecf

jr_035_5f1f:
    ret z

    ldh a, [$88]
    ret nz

    jr nc, jr_035_5f25

jr_035_5f25:
    ret nz

    nop
    nop
    nop
    nop

Call_035_5f2a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_035_5f49:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_035_5f65

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

jr_035_5f65:
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

jr_035_5f71:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_035_5fdc

jr_035_5fdc:
    stop
    jr z, jr_035_6020

    inc e
    jr nz, jr_035_5f71

    call nc, $7957
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

jr_035_5ff1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_035_601e:
    nop
    nop

jr_035_6020:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr z, jr_035_6066

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
    jr c, jr_035_601e

    inc e
    ldh [rNR32], a
    jr nz, jr_035_5ff1

    call nc, $7957

jr_035_6066:
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

jr_035_6071:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_035_60be

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

jr_035_60be:
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
    jr nz, jr_035_6071

    call nc, $7957
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

jr_035_60f1:
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
    jr nz, jr_035_60f1

    call nc, $7957
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

jr_035_6171:
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
    jr c, jr_035_6187

    jr c, @+$06

    ld [hl], c
    dec hl
    ld [$e59e], a

jr_035_6187:
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
    jr nz, jr_035_6171

    call nc, $7957
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

    jr nz, jr_035_6297

jr_035_6297:
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
    jr nc, jr_035_635e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_035_635e:
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
    jr nz, jr_035_639c

    jr nz, @+$41

    ld b, b
    ld l, $d1
    ld e, e
    and h
    dec h
    jp c, Jump_035_748b

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

jr_035_639c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_035_6444

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_6444:
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
    jr nc, jr_035_649c

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
    jr nz, jr_035_64bd

    ld b, b
    ld a, a
    pop de
    rst $38
    and h
    rst $38
    jp c, Jump_035_74ff

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

jr_035_649c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_035_64bd:
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
    jr z, jr_035_6575

    add d
    db $10
    jr z, jr_035_650f

    nop
    nop
    db $10
    db $10
    db $10
    ld [bc], a
    ld [de], a
    jr z, jr_035_653e

    sub d
    xor $28
    jr c, jr_035_650b

jr_035_650b:
    db $10
    ld d, b
    ld [de], a
    nop

jr_035_650f:
    nop
    db $10
    db $10
    ld [bc], a
    ld [de], a
    jr z, jr_035_654e

    sub d
    xor $28
    jr c, jr_035_651b

jr_035_651b:
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

jr_035_653e:
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

jr_035_654e:
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
    jr z, jr_035_659e

    sub d
    xor $28
    jr c, jr_035_656b

jr_035_656b:
    db $10
    ld d, b
    ld [de], a
    nop
    nop
    db $10
    ld [$0000], sp
    db $10

jr_035_6575:
    db $10
    ld [bc], a
    nop
    db $10
    jr jr_035_657f

    nop
    db $10
    jr nz, jr_035_6585

jr_035_657f:
    nop
    add b
    db $10
    ld [$0000], sp

jr_035_6585:
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    jr nz, jr_035_6598

    ld [bc], a
    nop
    db $10
    db $10
    inc b
    nop
    jr nz, jr_035_65a8

jr_035_6598:
    ld b, $00
    db $10
    jr jr_035_65a5

    nop

jr_035_659e:
    jr nz, jr_035_65b8

    ld a, [bc]
    nop
    db $10
    jr nz, jr_035_65b1

jr_035_65a5:
    nop
    jr nz, jr_035_65c8

jr_035_65a8:
    ld c, $00
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10

jr_035_65b1:
    ld [bc], a
    nop
    db $10
    jr jr_035_65ba

    nop
    db $10

jr_035_65b8:
    jr nz, jr_035_65c0

jr_035_65ba:
    nop
    add b
    ret nz

    ld bc, $00df

jr_035_65c0:
    ld b, b
    ld a, l
    sbc a
    ld [bc], a
    ret nz

    ld bc, $7fff

jr_035_65c8:
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

Call_035_65d4:
    xor a
    ldh [rVBK], a
    ld hl, $5eb0
    ld de, $8100
    ld c, $0c
    call Call_000_0468
    ld hl, $65cc
    ld de, $0a02
    call Call_000_056c
    ret


Call_035_65ec:
    xor a
    ldh [rVBK], a
    ld hl, $5f70
    ld de, $8100
    ld c, $60
    call Call_000_0468
    ld hl, $65bc
    ld de, $0a02
    call Call_000_056c
    ret


Call_035_6604:
    ld h, $0a

jr_035_6606:
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
    ld hl, $6570
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_035_6606

    ret


Call_035_6639:
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    call Call_035_65ec
    ld bc, $0040
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $1900
    ld de, $1380
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    call Call_035_67bc
    call Call_035_68f6
    call Call_035_69ad
    ld b, $1c
    ld c, $1a
    ld d, $1c
    ld e, $18
    ld h, $02
    ld l, $02
    rst $18
    ld c, $0b
    ld c, $08
    call Call_000_25af
    call Call_035_68f6
    ld bc, $0210
    call Call_035_6604
    ld bc, $0218
    call Call_035_6604
    ld bc, $0220
    call Call_035_6604
    ld bc, $0228
    call Call_035_6604
    ld a, $01
    ld hl, $69db
    call Call_000_23e8
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_035_66a5:
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
    jp nc, Jump_035_66e0

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
    jp nc, Jump_035_66e0

    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    ld hl, $6570
    pop bc
    call Call_000_26ea
    ret


Jump_035_66e0:
    pop bc
    ret


Call_035_66e2:
    ld h, $0c

jr_035_66e4:
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
    jr nc, jr_035_66f7

    inc h

jr_035_66f7:
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
    jr nc, jr_035_6714

    inc h

jr_035_6714:
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
    ld hl, $6581
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_035_66e4

    ret


Call_035_6731:
    ld a, $00
    ld [$c3e2], a

jr_035_6736:
    ld bc, $0210
    call Call_035_66e2
    ld a, [$c3e2]
    cp $28
    jr nc, jr_035_676c

    add $02
    ld [$c3e2], a
    ld bc, $0214
    call Call_035_66e2
    ld a, [$c3e2]
    add $01
    ld [$c3e2], a
    ld bc, $0218
    call Call_035_66e2
    ld a, [$c3e2]
    add $02
    ld [$c3e2], a
    ld bc, $0214
    call Call_035_66e2
    jr jr_035_6736

jr_035_676c:
    ret


Call_035_676d:
    ld h, $02

jr_035_676f:
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
    jr nc, jr_035_6782

    inc h

jr_035_6782:
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
    jr nc, jr_035_679f

    inc h

jr_035_679f:
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
    ld hl, $658a
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_035_676f

    ret


Call_035_67bc:
    ld a, $00
    ld [$c3e2], a
    ld [$c3e1], a

jr_035_67c4:
    ld a, [$c3e2]
    cp $5a
    jr nc, jr_035_680f

    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld bc, $0238
    call Call_035_676d
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld bc, $0248
    call Call_035_676d
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld bc, $0258
    call Call_035_676d
    jr jr_035_67c4

jr_035_680f:
    ret


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
    jr jr_035_6885

    ld [bc], a
    rst $38
    ld a, a
    rra
    ld c, h
    nop
    jr jr_035_688d

    ld [bc], a
    rst $38
    ld a, a
    ccf
    ld [bc], a
    nop
    jr jr_035_6895

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
    jr jr_035_68a5

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
    jr c, jr_035_6890

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

jr_035_6885:
    inc bc
    ld c, c
    inc [hl]
    xor b
    stop
    nop
    xor l

jr_035_688d:
    dec [hl]
    sub h
    ld c, [hl]

Call_035_6890:
jr_035_6890:
    ld a, $00
    ld [$c3e0], a

jr_035_6895:
    ld hl, $6860
    ld de, $0201
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_035_68a5:
    ld a, [$c3e0]
    cp $05
    jr z, jr_035_68f5

    ld hl, $6820
    ld de, $0201
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $6828
    ld de, $0201
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $6830
    ld de, $0201
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $6838
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
    jr jr_035_6895

jr_035_68f5:
    ret


Call_035_68f6:
    ld a, $00
    ld [$c3e2], a
    ld [$c3e1], a

jr_035_68fe:
    ld a, [$c3e2]
    cp $10
    jr nc, jr_035_695f

    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld bc, $0368
    call Call_035_6960
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld bc, $036a
    call Call_035_6960
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld bc, $036c
    call Call_035_6960
    ld a, [$c3e1]
    add $fe
    ld [$c3e1], a
    ld a, [$c3e2]
    add $03
    ld [$c3e2], a
    ld bc, $036e
    call Call_035_6960
    jr jr_035_68fe

jr_035_695f:
    ret


Call_035_6960:
    ld h, $05

jr_035_6962:
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
    jr nc, jr_035_6974

    inc h

jr_035_6974:
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
    jr nc, jr_035_6990

    inc h

jr_035_6990:
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
    ld hl, $65ab
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_035_6962

    ret


Call_035_69ad:
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
    ret


    ld bc, $0230
    call Call_035_66a5
    ret


    dec [hl]
    ld l, d
    inc a
    ld l, d
    ldh a, [rBCPD]
    ld b, l
    ld l, d
    ld b, [hl]
    ld l, d
    ld b, a
    ld l, d
    ld c, b
    ld l, d
    ld hl, $007b
    dec b
    nop
    dec e
    nop
    nop
    nop
    nop
    ld bc, $2113
    ld a, e
    nop
    rlca
    nop
    dec d
    nop
    nop
    nop
    nop
    ld bc, $2113
    ld a, e
    nop
    dec c
    nop
    dec d
    nop
    nop
    nop
    add b
    ld bc, $2113
    ld a, e
    ret nz

    ld [$0d80], sp
    nop
    nop
    nop
    ld b, b
    ld bc, $2119
    ld a, e
    nop
    dec bc
    nop
    dec c
    nop
    nop
    nop
    ld b, b
    ld bc, $0026
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
    ret nz

    ld de, $01ff
    rst $38
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld bc, $ffff
    ret


    rst $38
    ld a, $05
    ld bc, $000c
    rst $18
    ld d, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $00
    ld bc, $0b00
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    ld bc, $0b00
    ld de, $0dc0
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
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
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    ld bc, $000c
    rst $18
    ld d, $0a
    ld a, $05
    ld bc, $0900
    ld de, $1040
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    ld a, $05
    ld bc, $0b00
    ld de, $1080
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    xor a
    ld bc, $0b00
    ld de, $0700
    rst $18
    jr c, @+$0c

    call Call_035_6b28
    rst $18
    inc a
    ld a, [bc]
    ld a, $05
    ld bc, $0b00
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    call Call_035_6b97
    push af
    ld a, $2d
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


Call_035_6b28:
    ld b, $15
    ld c, $0b
    ld d, $09
    ld e, $0b
    ld h, $04
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $1a
    ld c, $0b
    ld d, $09
    ld e, $0b
    ld h, $04
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $1f
    ld c, $0b
    ld d, $09
    ld e, $0b
    ld h, $04
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $24
    ld c, $0b
    ld d, $09
    ld e, $0b
    ld h, $04
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $29
    ld c, $0b
    ld d, $09
    ld e, $0b
    ld h, $04
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_035_6b97:
    ld b, $15
    ld c, $10
    ld d, $09
    ld e, $09
    ld h, $04
    ld l, $06
    rst $18
    ld a, [bc]
    dec bc
    ld a, $00
    ld bc, $0b00
    ld de, $0a80
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $001a
    rst $18
    ld d, $0a
    ld a, $05
    ld bc, $001a
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $02
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, $00
    ld bc, $0b00
    ld de, $0100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld b, $1a
    ld c, $10
    ld d, $09
    ld e, $09
    ld h, $04
    ld l, $06
    rst $18
    ld a, [bc]
    dec bc
    ld b, $1f
    ld c, $10
    ld d, $09
    ld e, $09
    ld h, $04
    ld l, $06
    rst $18
    ld a, [bc]
    dec bc
    ld a, $05
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $05
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $05
    ld bc, $0b00
    ld de, $1200
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld b, $24
    ld c, $10
    ld d, $09
    ld e, $09
    ld h, $04
    ld l, $06
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $29
    ld c, $10
    ld d, $09
    ld e, $09
    ld h, $04
    ld l, $06
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    cp a
    ld l, h
    add $6c
    ld h, d
    ld l, h
    rst $08
    ld l, h
    ret nc

    ld l, h
    pop de
    ld l, h
    jp nc, $216c

    ld a, e
    nop
    rra
    nop
    dec h
    nop
    nop
    nop
    ret nz

    ld bc, $210a
    ld a, e
    nop
    rra
    nop
    dec de
    nop
    nop
    nop
    ld b, b
    ld bc, $2116
    ld a, e
    nop
    jr jr_035_6c7f

jr_035_6c7f:
    jr nz, jr_035_6c81

jr_035_6c81:
    nop
    nop
    nop
    ld bc, $2116
    ld a, e
    nop
    add hl, de
    nop
    dec de
    nop
    nop
    nop
    ld b, b
    ld bc, $210e
    ld a, e
    nop
    ld h, $00
    jr nz, jr_035_6c99

jr_035_6c99:
    nop
    nop
    add b
    ld bc, $2116
    ld a, e
    nop
    ld [bc], a
    nop
    jr nz, jr_035_6ca5

jr_035_6ca5:
    nop
    nop
    add b
    ld bc, $2116
    ld a, e
    nop
    ld bc, $1c00
    nop
    nop
    nop
    add b
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    add hl, hl
    nop
    dec h
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc sp
    inc bc
    rst $38
    rst $38
    ret


    rst $38
    ld bc, $0010
    rst $18
    ld [hl], $0a
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    xor a
    ld bc, $2d00
    ld de, $1f00
    rst $18
    jr c, jr_035_6cfc

    ld a, $00
    ld bc, $2d00
    ld de, $1f00
    rst $18
    ld [hl+], a

jr_035_6cfc:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    xor a
    ld bc, $3100
    ld de, $1f00
    rst $18
    jr c, jr_035_6d2b

    ld a, $00
    ld bc, $3100
    ld de, $1c00
    rst $18
    ld [hl+], a

jr_035_6d2b:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
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
    ld a, $08
    ld bc, $3300
    ld de, $1c00
    rst $18
    jr nz, @+$0c

    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    ld b, $80
    ld de, $0200
    rst $18
    jr z, jr_035_6d74

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18

jr_035_6d74:
    ld a, [hl+]
    ld a, [bc]
    ld a, $08
    ld b, $80
    ld de, $0200
    rst $18
    jr z, jr_035_6d8a

    ld a, $08
    rst $18
    ld e, $0a
    ld a, $00
    ld b, a
    ld a, $07

jr_035_6d8a:
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $08
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


    ld l, e
    ld l, [hl]
    ld [hl], d
    ld l, [hl]
    cp d
    ld l, l
    ld a, e
    ld l, [hl]
    ld a, h
    ld l, [hl]
    ld a, l
    ld l, [hl]
    ld a, [hl]
    ld l, [hl]
    ld hl, $007b
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $2111
    ld a, e
    nop
    ld de, $1300
    nop
    nop
    nop
    ret nz

    ld bc, $2113
    ld a, e
    nop
    rla
    nop
    inc de
    nop
    nop
    nop
    ret nz

    ld bc, $2113
    ld a, e
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $2113
    ld a, e
    nop
    rra
    nop
    add hl, bc
    nop
    nop
    nop
    ld b, b
    ld bc, $2113
    ld a, e
    nop
    ld [de], a
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $2108
    ld a, e
    nop
    stop
    inc c
    nop
    nop
    nop
    nop
    ld bc, $2109
    ld a, e
    nop
    jr jr_035_6e13

jr_035_6e13:
    inc c
    nop
    nop
    nop
    add b
    ld bc, $211a
    ld a, e
    nop
    ld a, [de]
    nop
    stop
    nop
    nop
    add b
    ld bc, $2112
    ld a, e
    nop
    ld a, [de]
    nop
    ld c, $00
    nop
    nop
    add b
    ld bc, $211b
    ld a, e
    nop
    ld c, $00
    rrca
    nop
    nop
    nop
    nop
    ld bc, $211c
    ld a, e
    nop
    ld [de], a
    nop
    dec e
    nop
    nop
    nop
    ret nz

    ld bc, $2119
    ld a, e
    nop
    dec d
    nop
    dec e
    nop
    nop
    nop
    ret nz

    ld bc, $2126
    ld a, e
    nop
    ld bc, $2500
    nop
    nop
    nop
    ret nz

    ld bc, $0010
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $0040
    inc d
    nop
    add hl, bc
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc a
    ld bc, $ffff
    rst $38
    rst $38
    ld a, [$c46a]
    cp $0a
    jp nz, Jump_035_6e91

    ld c, $04
    call Call_000_25af
    call Call_000_2625
    jp Jump_035_7045


Jump_035_6e91:
    ld a, $02
    ld bc, $1400
    ld de, $0700
    rst $18
    jr nz, @+$0c

    ld a, $06
    ld bc, $1f00
    ld de, $0b00
    rst $18
    jr nz, @+$0c

    ld a, $00
    ld de, $ff00
    rst $18
    ld b, b
    ld a, [bc]
    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $04
    call Call_000_25af
    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    xor a
    ld bc, $1400
    ld de, $1300
    rst $18
    jr c, @+$0c

    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $1400
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]
    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    rst $18
    ld b, d
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $03
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $03
    ld bc, $1280
    ld de, $1100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    rst $18
    ld e, $0a
    ld a, $00
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $03
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $02
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    ld a, $03
    ld bc, $1100
    ld de, $1300
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    rst $18
    ld e, $0a
    ld a, $03
    ld b, $00
    rst $18
    ld a, [hl+]
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
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
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
    ld a, $0a
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
    ld bc, $1400
    ld de, $0a00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
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
    push af
    ld a, $1e
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
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
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
    ld a, $0c
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0c
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $0c
    ld bc, $1000
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0c
    rst $18
    ld e, $0a
    ld a, $0c
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0c
    rst $18
    inc [hl]
    ld a, [bc]

Jump_035_7045:
    call Call_035_7122
    ld a, $0a
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $0a
    ld bc, $1800
    ld de, $1000
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0a
    rst $18
    ld e, $0a
    ld a, $0a
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $0a
    ld de, $70e1
    rst $18
    jr jr_035_7082

    call Call_035_716f
    ld a, $0a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a

jr_035_7082:
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $0a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $0a
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $0a
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    call Call_035_716f
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $0a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    call Call_035_716f
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $0f
    ld bc, $1800
    ld de, $0e00
    rst $18
    jr nz, @+$0c

    ld a, $0f
    ld b, a
    ld a, $00
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


    ld c, $35
    ld [bc], a
    nop
    ld bc, $0005
    ld c, $35
    ld bc, $0100
    dec b
    nop
    rst $30
    ldh [rIF], a
    jr z, jr_035_7121

    ld b, $2a
    ld c, $06
    ld d, $1a
    ld e, $06
    ld h, $08
    ld l, $05
    rst $18
    ld a, [bc]
    dec bc
    ld b, $2a
    ld c, $06
    ld d, $1a
    ld e, $06
    ld h, $08
    ld l, $05
    rst $18
    inc c
    dec bc
    ld b, $2a
    ld c, $06
    ld d, $1a
    ld e, $06
    ld h, $08
    ld l, $05
    rst $18
    ld c, $0b

jr_035_7121:
    ret


Call_035_7122:
    xor a
    ldh [rVBK], a
    ld hl, $71c0
    ld de, $8500
    ld c, $18
    call Call_000_0468
    ld hl, $734d
    ld de, $0f01
    call Call_000_056c
    ret


Call_035_713a:
    ld h, $06

jr_035_713c:
    push hl
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $1600
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0c80
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop hl
    ld d, h
    ld hl, $7340
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_035_713c

    ret


Call_035_716f:
    ld bc, $0750
    call Call_035_713a
    ld bc, $0756
    call Call_035_713a
    ld bc, $075c
    call Call_035_713a
    ld bc, $0750
    call Call_035_713a
    ld bc, $0756
    call Call_035_713a
    ld bc, $075c
    call Call_035_713a
    ld bc, $0750
    call Call_035_713a
    ld bc, $0756
    call Call_035_713a
    ld bc, $075c
    call Call_035_713a
    ld bc, $0750
    call Call_035_713a
    ld bc, $0756
    call Call_035_713a
    ld bc, $075c
    call Call_035_713a
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
    rrca
    rrca
    rra
    jr jr_035_71ea

    db $10
    rra
    db $10
    ld a, a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, e
    ld a, h
    rrca
    ld c, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

jr_035_71ea:
    ret nz

    ld b, b
    ldh a, [rSVBK]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    or b
    ld [hl], b
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, a
    ld h, e
    ld a, a
    ld b, c
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    ld a, [hl+]
    ld [hl], $3e
    ld [hl], $14
    inc e
    inc e
    inc e
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
    ret nz

    ret nz

    ldh [$60], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$60], a
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
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    rrca
    ld c, $1f
    jr jr_035_72d0

    db $10
    rra
    db $10
    rra
    jr jr_035_72c4

    ld c, $07
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_035_72c4:
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    cp $0e

jr_035_72d0:
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    sbc $3e
    ldh a, [rSVBK]
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
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, a
    ld h, e
    ld a, a
    ld b, c
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    ld a, [hl+]
    ld [hl], $3e
    ld [hl], $14
    inc e
    inc e
    inc e
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
    ret nz

    ret nz

    ldh [$60], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$60], a
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
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    db $10
    jr @+$06

    nop
    add b
    ret nz

    ld bc, $7fff
    ld c, e
    ld b, e
    nop
    nop
    db $e4
    ld [hl], e
    db $eb
    ld [hl], e
    ld h, e
    ld [hl], e
    db $f4
    ld [hl], e
    push af
    ld [hl], e
    or $73
    rst $30
    ld [hl], e
    ld hl, $007b
    ld hl, $2100
    nop
    nop
    nop
    add b
    ld bc, $210c
    ld a, e
    nop
    ld hl, $1f00
    nop
    nop
    nop
    add b
    ld bc, $210b
    ld a, e
    nop
    dec e
    nop
    ld hl, $0000
    nop
    nop
    ld bc, $210a
    ld a, e
    nop
    dec e
    nop
    rra
    nop
    nop
    nop
    ld b, b
    ld bc, $210d
    ld a, e
    nop
    rla
    nop
    inc de
    nop
    nop
    nop
    add b
    ld bc, $2116
    ld a, e
    nop
    dec d
    nop
    inc de
    nop
    nop
    nop
    nop
    ld bc, $2d0d
    ld a, e
    nop
    rla
    nop
    dec c
    nop
    nop
    nop
    nop
    ld bc, $b80a
    ld [hl], h
    nop
    dec e
    nop
    dec c
    nop
    nop
    nop
    nop
    ld bc, $2116
    ld a, e
    nop
    add hl, de
    nop
    add hl, de
    nop
    nop
    nop
    ret nz

    ld bc, $2117
    ld a, e
    nop
    ld hl, $1300
    nop
    nop
    nop
    add b
    ld bc, $000b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    ld a, [de]
    nop
    add hl, hl
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld a, $01
    rst $38
    rst $38
    ret


    rst $38
    ld c, $08
    call Call_000_25af
    ld a, $00
    ld bc, $0018
    rst $18
    ld d, $0a
    ld bc, $0018
    rst $18
    ld [hl], $0a
    ld a, $00
    ld bc, $1a00
    ld de, $1c00
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $1a00
    ld de, $1c00
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $1c00
    ld de, $1c00
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $1c00
    ld de, $1c00
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $1c00
    ld de, $1600
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $1c00
    ld de, $1600
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $2600
    ld de, $1600
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $2600
    ld de, $1600
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $2600
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $2600
    ld de, $0f00
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $2600
    ld de, $0700
    rst $18

Jump_035_748b:
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $2600
    ld de, $0800
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $2a00
    ld de, $0700
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $2a00
    ld de, $0800
    rst $18
    jr c, jr_035_74b9

    rst $18
    inc a
    ld a, [bc]
    ld a, $01
    ld [$c441], a
    ret


    dec c

jr_035_74b9:
    ld c, $08
    nop
    dec c
    dec de
    ld bc, $0700
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0c28
    rst $00
    rst $38
    ld [de], a
    ld [hl], l
    add hl, de
    ld [hl], l

Jump_035_74ff:
    add hl, bc
    ld [hl], l
    ld [hl+], a
    ld [hl], l
    inc hl
    ld [hl], l
    inc h
    ld [hl], l
    dec h
    ld [hl], l
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
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld sp, $ff01
    rst $38
    ret


    rst $38
    ld c, $08
    call Call_000_25af
    ld a, $00
    ld bc, $0018
    rst $18
    ld d, $0a
    ld bc, $0018
    rst $18
    ld [hl], $0a
    ld a, $00
    ld bc, $0500
    ld de, $2f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $0500
    ld de, $2f00
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0b00
    ld de, $2f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $0b00
    ld de, $2f00
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0b00
    ld de, $2700
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $0b00
    ld de, $2700
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0f00
    ld de, $2700
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $0f00
    ld de, $2700
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0f00
    ld de, $2500
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $0f00
    ld de, $2500
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $1900
    ld de, $2500
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $1900
    ld de, $2500
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $1900
    ld de, $2700
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $1900
    ld de, $2700
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $1c00
    ld de, $2700
    rst $18
    ld [hl+], a
    ld a, [bc]
    xor a
    ld bc, $1c00
    ld de, $2a00
    rst $18
    jr c, jr_035_75ff

    rst $18
    inc a
    ld a, [bc]
    ld a, $01
    ld [$c441], a
    ret


    cp l

jr_035_75ff:
    db $76
    call nz, $0c76
    db $76
    jp nz, Jump_000_3477

    ld a, b
    ld a, $78
    ld b, a
    ld a, b
    ld hl, $007b
    add hl, bc
    nop
    inc bc
    nop
    nop
    nop
    ld b, b
    ld bc, $2108
    ld a, e
    nop
    add hl, bc
    nop
    dec b
    nop
    nop
    nop
    ld b, b
    ld bc, $2109
    ld a, e
    nop
    add hl, bc
    nop
    rlca
    nop
    nop
    nop
    ld b, b
    ld bc, $2112
    ld a, e
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    nop
    nop
    ld b, b
    ld bc, $2113
    ld a, e
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $2111
    ld a, e
    nop
    add hl, bc
    nop
    dec c
    nop
    nop
    nop
    ld b, b
    ld bc, $2118
    ld a, e
    nop
    add hl, bc
    nop
    rrca
    nop
    nop
    nop
    ld b, b
    ld bc, $211b
    ld a, e
    nop
    dec c
    nop
    inc bc
    nop
    nop
    nop
    ld b, b
    ld bc, $2108
    ld a, e
    nop
    dec c
    nop
    dec b
    nop
    nop
    nop
    ld b, b
    ld bc, $2109
    ld a, e
    nop
    dec c
    nop
    rlca
    nop
    nop
    nop
    ld b, b
    ld bc, $2112
    ld a, e
    nop
    dec c
    nop
    add hl, bc
    nop
    nop
    nop
    ld b, b
    ld bc, $2113
    ld a, e
    nop
    dec c
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $2111
    ld a, e
    nop
    dec c
    nop
    dec c
    nop
    nop
    nop
    ld b, b
    ld bc, $2118
    ld a, e
    nop
    dec c
    nop
    rrca
    nop
    nop
    nop
    ld b, b
    ld bc, $001b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $0080
    dec bc
    nop
    add hl, bc
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    jr nz, jr_035_76cd

    ld [bc], a

jr_035_76cd:
    rst $38
    nop
    nop
    nop
    nop
    jr nz, jr_035_76d9

    inc bc
    rst $38
    nop
    nop
    nop

jr_035_76d9:
    nop
    ld b, $02
    inc b
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $ff05
    nop
    nop
    nop
    nop
    inc b
    ld bc, $ff06
    nop
    nop
    nop
    nop
    rlca
    ld bc, $ff07
    nop
    nop
    nop
    nop
    ld [$0802], sp
    rst $38
    nop
    nop
    nop
    nop
    jr nz, jr_035_7705

    add hl, bc

jr_035_7705:
    rst $38
    nop
    nop
    nop
    nop
    ld hl, $0a01
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec bc
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff0c
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $ff0d
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rst $38
    nop
    nop
    nop
    nop
    inc h
    ld bc, $3eff
    ld bc, $41ea
    call nz, Call_000_3ec9
    ld [bc], a
    ld [$c441], a
    ret


    ld a, $03
    ld [$c441], a
    ret


    ld a, $04
    ld [$c441], a
    ret


    ld a, $05
    ld [$c441], a
    ret


    ld a, $06
    ld [$c441], a
    ret


    ld a, $07
    ld [$c441], a
    ret


    rst $18
    ld [bc], a
    ld a, $3e
    ld [$41ea], sp
    call nz, $cdc9
    or [hl]
    inc hl
    rst $18
    ld l, b
    ld [bc], a
    ld a, $09
    ld [$c441], a
    ret


    call Call_000_23b6
    rst $18
    nop
    inc c
    ld a, $0a
    ld [$c441], a
    ret


    call Call_000_23b6
    rst $18
    inc c
    inc c
    ld a, $0b
    ld [$c441], a
    ret


    call Call_000_23b6
    rst $18
    ld [bc], a
    inc c
    ld a, $0c
    ld [$c441], a
    ret


    rst $18
    ld e, [hl]
    ld a, [bc]
    ld b, $ff
    ld c, $ff
    ld d, $3c
    rst $18
    ld h, b
    ld a, [bc]
    rst $18
    ld h, d
    ld a, [bc]
    call Call_000_2ed5
    inc a
    ld b, $1e

jr_035_77ad:
    rst $08
    ld e, h
    call Call_000_2ed5
    ld a, [bc]
    dec b
    jr nz, jr_035_77ad

    ld a, $0d
    ld [$c441], a
    ret


    ld a, $0e
    ld [$c441], a
    ret


    ld [bc], a
    rst $38
    nop
    nop
    dec [hl]
    ld [hl], a
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    dec sp
    ld [hl], a
    nop
    nop
    inc b
    rst $38
    nop
    nop
    ld b, c
    ld [hl], a
    nop
    nop
    dec b
    rst $38
    nop
    nop
    ld b, a
    ld [hl], a
    nop
    nop
    ld b, $ff
    nop
    nop
    ld c, l
    ld [hl], a
    nop
    nop
    rlca
    rst $38
    nop
    nop
    ld d, e
    ld [hl], a
    nop
    nop
    ld [$00ff], sp
    nop
    ld e, c
    ld [hl], a
    nop
    nop
    add hl, bc
    rst $38
    nop
    nop
    ld e, a
    ld [hl], a
    nop
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    ld l, b
    ld [hl], a
    nop
    nop
    dec bc
    rst $38
    nop
    nop
    ld [hl], h
    ld [hl], a
    nop
    nop
    inc c
    rst $38
    nop
    nop
    add b
    ld [hl], a
    nop
    nop
    dec c
    rst $38
    nop
    nop
    adc h
    ld [hl], a
    nop
    nop
    ld c, $ff
    nop
    nop
    sbc b
    ld [hl], a
    nop
    nop
    rrca
    rst $38
    nop
    nop
    cp h
    ld [hl], a
    nop
    nop
    rst $38
    ret


    ld bc, $00ff
    nop
    ld a, e
    ld a, e
    ld b, $00
    rst $38
    ret


    ld bc, $00ff
    nop
    dec a
    ld a, b
    nop
    nop
    rst $38
    ret


    rst $18
    ld a, [bc]
    ld a, c
    ret


    sub e
    ld a, b
    sbc d
    ld a, b
    ld e, d
    ld a, b
    rst $20
    ld a, b
    add hl, bc
    ld a, c
    inc de
    ld a, c
    inc e
    ld a, c
    ld hl, $007b
    add hl, bc
    nop
    inc bc
    nop
    nop
    nop
    ld b, b
    ld bc, $2108
    ld a, e
    nop
    dec c
    nop
    inc bc
    nop
    nop
    nop
    ld b, b
    ld bc, $2118
    ld a, e
    nop
    add hl, bc
    nop
    rlca
    nop
    nop
    nop
    ld b, b
    ld bc, $2113
    ld a, e
    nop
    dec c
    nop
    rlca
    nop
    nop
    nop
    ld b, b
    ld bc, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $0040
    dec bc
    nop
    inc bc
    rst $38
    rst $38
    ld hl, $c3f0
    ld a, [hl]
    dec a
    ld hl, $c3f1
    bit 7, a
    jr z, jr_035_78ab

    ld a, [hl]
    dec a
    jr jr_035_78af

jr_035_78ab:
    cp [hl]
    jr c, jr_035_78af

    xor a

jr_035_78af:
    ld hl, $c3f0
    ld [hl], a
    call Call_035_793f
    ret


    ld hl, $c3f0
    ld a, [hl]
    inc a
    ld hl, $c3f1
    bit 7, a
    jr z, jr_035_78c7

    ld a, [hl]
    dec a
    jr jr_035_78cb

jr_035_78c7:
    cp [hl]
    jr c, jr_035_78cb

    xor a

jr_035_78cb:
    ld hl, $c3f0
    ld [hl], a
    call Call_035_793f
    ret


    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld [hl-], a
    ld a, [bc]
    ret


    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld [hl-], a
    ld a, [bc]
    ret


    ld [bc], a
    rst $38
    nop
    nop
    sbc e
    ld a, b
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    or a
    ld a, b
    nop
    nop
    inc b
    rst $38
    nop
    nop
    db $d3
    ld a, b
    nop
    nop
    dec b
    rst $38
    nop
    nop
    db $dd
    ld a, b
    nop
    nop
    rst $38
    ret


    ld bc, $00ff
    nop
    ld a, e
    ld a, e
    ld b, $00
    rst $38
    ret


    ld bc, $00ff
    nop
    ld [de], a
    ld a, c
    nop
    nop
    rst $38
    xor a
    ld [$c3f0], a
    rst $18
    ld a, [hl-]
    inc b
    ld [$c3f1], a
    ld a, $01
    ld hl, $792f
    call Call_000_23e8
    ret


    ldh a, [$94]
    and $f0
    jr z, jr_035_793e

    ld a, [$c296]
    ld b, a
    ld a, $01
    rst $18
    ld [hl-], a
    ld a, [bc]

jr_035_793e:
    ret


Call_035_793f:
    ld hl, $c289
    ld [hl], $00
    push af
    ld hl, $c290
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    rst $18
    ld [hl], $04
    call Call_000_05dd
    ld a, [$c296]
    ld b, a
    ld a, $01
    rst $18
    ld [hl-], a
    ld a, [bc]
    ret


    ld [hl], e
    ld a, c
    or [hl]
    ld a, c
    ld l, d
    ld a, c
    rst $08
    ld a, c
    ret nc

    ld a, c
    pop de
    ld a, c
    jp nc, Jump_000_0079

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $0080
    inc sp
    nop
    add hl, bc
    ld [bc], a
    add b
    nop
    add hl, bc
    nop
    add hl, bc
    inc bc
    add b
    nop
    add hl, bc
    nop
    add hl, bc
    ld b, $80
    nop
    inc sp
    nop
    add hl, bc
    rlca
    add b
    nop
    inc sp
    nop
    add hl, bc
    ld [$0080], sp
    inc sp
    nop
    add hl, bc
    add hl, bc
    add b
    nop
    inc sp
    nop
    add hl, bc
    ld a, [bc]
    add b
    nop
    inc sp
    nop
    add hl, bc
    dec bc
    add b
    nop
    inc sp
    nop
    add hl, bc
    inc c
    add b
    nop
    inc sp
    nop
    add hl, bc
    dec c
    add b
    nop
    inc sp
    nop
    add hl, bc
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    dec b
    ld bc, $ff02
    nop
    nop
    nop
    nop
    ld [bc], a
    rrca
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$c46a]
    cp $01
    jp z, Jump_035_79e5

    cp $02
    jp z, Jump_035_7a29

    cp $03
    jp z, Jump_035_7aa5

    ret


Jump_035_79e5:
    ld a, $00
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, [$c298]
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $c82d
    set 7, [hl]
    ld hl, $0486
    rst $18
    ld c, $0a
    ld a, $86
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $6e
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    inc c
    ld a, [bc]
    ld hl, $c82d
    res 7, [hl]
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    ld a, $01
    ld [$c441], a
    ret


Jump_035_7a29:
    ld hl, $1442
    rst $18
    ld c, $0a
    ld a, $00
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, [$c298]
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld bc, $0080
    rst $18
    ld [hl], $0a
    ld a, $01
    ld bc, $0800
    ld de, $0800
    rst $18
    jr c, @+$0c

    ld c, $02
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $8a
    rst $18
    ld [$0e0a], sp
    inc b
    call Call_000_25a1
    call Call_000_2625
    xor a
    ld bc, $0900
    ld de, $2100
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld c, $02
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $8a
    rst $18
    ld [$0e0a], sp
    inc b
    call Call_000_25a1
    call Call_000_2625
    rst $20
    ld h, b
    rrca
    push de
    ld de, $01e0
    rst $18
    ld b, h
    ld [bc], a
    pop de
    ld a, $02
    ld [$c441], a
    ret


Jump_035_7aa5:
    ld hl, $1442
    rst $18
    ld c, $0a
    ld a, $00
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, [$c298]
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld bc, $0080
    rst $18
    ld [hl], $0a
    ld a, $01
    ld bc, $0800
    ld de, $0800
    rst $18
    jr c, @+$0c

    ld c, $02
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $8a
    rst $18
    ld [$0e0a], sp
    inc b
    call Call_000_25a1
    call Call_000_2625
    xor a
    ld bc, $0900
    ld de, $2100
    rst $18
    jr c, @+$0c

    rst $18
    inc a
    ld a, [bc]
    ld c, $02
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $8a
    rst $18
    ld [$0e0a], sp
    inc b
    call Call_000_25a1
    call Call_000_2625
    rst $20
    ld h, b
    rrca
    push de
    ld de, $01e0
    rst $18
    ld b, h
    ld [bc], a
    pop de
    ld a, $03
    ld [$c441], a
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
    jr z, jr_035_7bb3

    ld a, $40
    add e
    ld e, a

jr_035_7bb3:
    add hl, de
    pop de
    ret


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
    jr nz, jr_035_7bca

    xor a

jr_035_7bca:
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


Call_035_7bfb:
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
    jr z, jr_035_7c19

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_035_7c19:
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
    call Call_035_7bfb
    ret


    ld a, [$c810]
    cp $00
    jr z, jr_035_7c41

    rst $30
    add b
    ld de, $6828

jr_035_7c41:
    ld a, [$c810]
    cp $01
    jr z, jr_035_7c4d

    rst $30
    and b
    ld de, $5c28

jr_035_7c4d:
    ld a, [$c810]
    cp $02
    jr z, jr_035_7c59

    rst $30
    ret nz

    ld de, $5028

jr_035_7c59:
    ld a, [$c810]
    cp $03
    jr z, jr_035_7c65

    rst $30
    ldh [rNR11], a
    jr z, jr_035_7ca9

jr_035_7c65:
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
    jr c, jr_035_7c94

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_035_7bfb
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

jr_035_7c94:
    ld [$c46a], a
    ld hl, $c2a0
    ld de, $c466
    ld bc, $0004
    call MemCopy
    ld a, [$c2a4]
    ld [$c465], a

jr_035_7ca9:
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
