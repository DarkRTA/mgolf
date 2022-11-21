INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    db $3c, $41, $6e, $47, $03, $41

    inc c
    ld b, c
    ld b, [hl]
    ld b, b

    db $f7, $41, $24, $42, $8f, $6d, $34, $6e, $69, $6d, $88, $6d

    xor e
    ld c, [hl]
    cpl
    ld b, d
    push hl
    ld hl, $402e
    ld a, d
    add a
    add l
    ld l, a
    jr nc, jr_011_4025

    inc h

jr_011_4025:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    inc d
    pop hl
    ret


    inc e
    rlca
    ret z

    pop af
    ld d, h
    dec d
    sub b
    db $e3
    adc h
    inc hl
    ld e, b
    push de
    call nz, Call_000_2031
    rst $00
    db $fc
    ccf
    add sp, -$48
    inc [hl]
    ld c, [hl]
    or b
    xor d
    rst $18
    ld a, [bc]
    db $10
    push bc
    ld a, [$d4cd]
    cp $06
    jp z, Jump_011_408f

    rst $18
    inc b
    db $10
    push hl
    ld de, $f880
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_011_406c

    rst $18
    inc c
    db $10
    ld h, $3c
    ld l, $00
    ld d, $00
    ld e, $ff
    pop bc
    ret


jr_011_406c:
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
    inc l
    res 0, l
    ld h, l
    ld l, $00
    ld d, $02
    ld e, $ff
    ld a, $0b
    jp Jump_011_4101


Jump_011_408f:
    ld a, $0d
    rst $18
    inc b
    db $10
    push hl
    ld de, $fc40
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_011_40ab

    ld h, $3c
    ld l, $00
    ld d, $01
    ld e, $ff
    ld a, $0d
    jp Jump_011_4101


jr_011_40ab:
    push hl
    ld de, $fec0
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_011_40d9

    add hl, hl
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
    inc l
    res 0, l
    ld h, l
    ld l, $00
    ld d, $01
    ld e, $ff
    ld a, $0d
    jp Jump_011_4101


jr_011_40d9:
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, hl
    srl h

Jump_011_40e0:
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    inc l
    res 0, l
    ld h, l
    ld l, $00
    ld d, $00
    ld e, $ff
    ld a, $0d
    jp Jump_011_4101


Jump_011_4101:
    pop bc
    ret


    ld a, $0c
    ld hl, $4113
    call Call_000_23e8
    ret


    ld hl, $4113
    call Call_000_2449
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d443]
    ld hl, $412c
    and $07
    add a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $61, $43, $70, $49, $bb, $4c

    ld l, [hl]
    ld b, a

    db $95, $47

    sub l
    ld b, a
    sub l
    ld b, a
    ld c, a
    ld c, [hl]

Call_011_413c:
    ld a, [$d438]
    and $0f
    jp nz, Jump_011_4153

    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c320
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    jp Jump_011_41eb


Jump_011_4153:
    cp $01
    jr nz, jr_011_4165

    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    jr jr_011_4199

jr_011_4165:
    cp $02
    jr nz, jr_011_4177

    ld hl, $d428
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d426
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    jr jr_011_4199

jr_011_4177:
    cp $03
    jr nz, jr_011_4189

    ld hl, $d424
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d422
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    jr jr_011_4199

jr_011_4189:
    cp $04
    jr nz, jr_011_4199

    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d43d
    ld a, [hl+]
    ld b, [hl]
    ld c, a

jr_011_4199:
    ld a, d
    ld [$d437], a
    ld a, b
    ld [$d436], a
    push de
    ld hl, $f600
    add hl, bc
    ld a, [$c329]
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr z, jr_011_41b5

    ld h, d
    ld l, $00
    jr jr_011_41c4

jr_011_41b5:
    ld a, [$c32b]
    sub $14
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr nz, jr_011_41c4

    ld h, d
    ld l, $00

jr_011_41c4:
    ld b, h
    ld c, l
    pop de
    ld hl, $f700
    add hl, de
    ld a, [$c32a]
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr z, jr_011_41da

    ld h, d
    ld l, $00
    jr jr_011_41e9

jr_011_41da:
    ld a, [$c32c]
    sub $12
    ld d, a

Jump_011_41e0:
    ld a, h
    sub d
    bit 7, a
    jr nz, jr_011_41e9

    ld h, d
    ld l, $00

jr_011_41e9:
    ld d, h
    ld e, l

Jump_011_41eb:
    ld hl, $d42e
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ret


Call_011_41f7:
    ld a, [$d443]
    or a
    jr nz, jr_011_421d

    push de
    push hl
    ld de, $d42e
    ld hl, $d432
    ld a, [de]
    cp [hl]
    jr nz, jr_011_4220

    inc de
    inc hl
    ld a, [de]
    cp [hl]
    jr nz, jr_011_4220

    inc de
    inc hl
    ld a, [de]
    cp [hl]
    jr nz, jr_011_4220

    inc de
    inc hl
    ld a, [de]
    cp [hl]
    jr nz, jr_011_4220

    pop hl
    pop de

jr_011_421d:
    ld a, $ff
    ret


jr_011_4220:
    pop hl
    pop de
    xor a
    ret


jr_011_4224:
    call Call_011_41f7
    or a
    ret nz

    call Call_000_2e3b
    jr jr_011_4224

    ret


Call_011_422f:
    call Call_011_413c
    ld hl, $d432
    ld a, c
    cp [hl]
    jr nz, jr_011_424b

    inc hl
    ld a, b
    cp [hl]
    jr nz, jr_011_424b

    inc hl
    ld a, e
    cp [hl]
    jr nz, jr_011_424b

    inc hl
    ld a, d
    cp [hl]
    jr nz, jr_011_424b

    jp Jump_011_4360


jr_011_424b:
    ld a, [$d438]
    bit 4, a
    jp nz, Jump_011_432e

    push de
    ld hl, $d432
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, b
    ld e, c
    call Call_000_08ac
    pop de
    push hl
    ld hl, $d434
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    push de
    push hl
    call Call_000_1a03
    ld a, $80
    add b
    ld b, a
    push bc
    ld a, h
    bit 7, a
    jr z, jr_011_427c

    cpl
    inc a

jr_011_427c:
    ld l, a
    ld h, $00

Call_011_427f:
    call Call_000_08b9
    push hl
    ld a, d
    bit 7, a
    jr z, jr_011_428a

    cpl
    inc a

jr_011_428a:
    ld l, a
    ld h, $00
    call Call_000_08b9
    pop de
    add hl, de
    ld a, h
    or a
    jr nz, jr_011_42bb

    ld a, l
    cp $01
    jr nc, jr_011_42a0

    ld hl, $0010
    jr jr_011_42be

jr_011_42a0:
    cp $04
    jr nc, jr_011_42a9

    ld hl, $0018
    jr jr_011_42be

jr_011_42a9:
    cp $09
    jr nc, jr_011_42b2

    ld hl, $0020
    jr jr_011_42be

jr_011_42b2:
    cp $10
    jr nc, jr_011_42bb

    ld hl, $0040
    jr jr_011_42be

jr_011_42bb:
    ld hl, $0080

jr_011_42be:
    pop af
    push af
    call Call_000_0b31
    push hl
    ld hl, $d434
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d434], a
    ld a, h
    ld [$d435], a
    pop de
    ld hl, $d432
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d432], a
    ld a, h
    ld [$d433], a
    pop af
    ld bc, $0001
    add $20
    and $40
    jr z, jr_011_42ee

    inc c

jr_011_42ee:
    ld hl, $d430
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d434
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ld a, h
    or l
    jr nz, jr_011_4303

    set 1, b

jr_011_4303:
    ld a, h
    pop hl
    xor h
    bit 7, a
    jr z, jr_011_430c

    set 1, b

jr_011_430c:
    ld hl, $d42e
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d432
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ld a, h
    or l
    jr nz, jr_011_4321

    set 0, b

jr_011_4321:
    ld a, h
    pop hl
    xor h
    bit 7, a
    jr z, jr_011_432a

    set 0, b

jr_011_432a:
    ld a, b
    and c
    jr z, jr_011_433f

Jump_011_432e:
    ld hl, $d42e
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

jr_011_433f:
    ld a, [$d443]
    or a
    ret nz

    ld hl, $d432
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$c320], a
    ld a, h
    ld [$c321], a
    ld hl, $d434
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$c322], a
    ld a, h
    ld [$c323], a

Jump_011_4360:
    ret


    call Call_011_422f
    ld a, [$d485]
    bit 4, a
    call nz, Call_011_4e5e
    call Call_011_4704
    ld hl, $4375
    jp Jump_011_4d79


    ld c, a
    ld c, [hl]

    db $99, $45, $3b, $45, $85, $43, $4c, $46, $b2, $46, $a1, $44

    ld c, a
    ld c, [hl]

    ld c, $00
    ldh a, [$8c]
    and $02
    jr z, jr_011_43d4

    ld a, [$d404]
    bit 7, a
    jr nz, jr_011_439e

    swap a
    and $07
    ld c, a
    ld a, [$d405]
    jr jr_011_43a9

jr_011_439e:
    swap a
    and $07
    add $08
    ld c, a
    ld a, [$d405]
    inc a

jr_011_43a9:
    and $3f
    ld h, a
    ld l, $00
    srl h
    rr l
    srl h
    rr l
    ld a, [$d402]
    and $3f
    ld d, $d0
    ld e, a
    add hl, de
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $d7
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    bit 7, [hl]
    jr nz, jr_011_43d4

    ld c, $00

jr_011_43d4:
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $15
    jp nc, Jump_011_449e

    ld a, h
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld b, a
    push bc
    ld hl, $d407
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    ld a, l
    cp c
    jr c, jr_011_446a

    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, l
    and $e0
    ld l, a
    push hl
    ld hl, $d407
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    and $e0
    ld e, a
    ld d, h
    sra d
    rr e
    pop hl
    call Call_011_4961
    ld a, h
    cp $10
    jp nc, Jump_011_446a

    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld d, b
    ld e, a
    ld bc, $0878
    ld hl, $d407
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    jr nz, jr_011_4467

    ld a, h
    cp $03
    jr c, jr_011_4464

    ld a, $03

jr_011_4464:
    add a
    add c
    ld c, a

jr_011_4467:
    call Call_000_2798

Jump_011_446a:
jr_011_446a:
    ld hl, $d407
    ld a, [hl+]
    or [hl]
    jr z, jr_011_449f

    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    pop de
    ld a, e
    or a
    jr nz, jr_011_449e

    ld a, h
    cp $10
    jr nc, jr_011_449e

    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld e, a
    ld bc, $084e
    call Call_000_2798

Jump_011_449e:
jr_011_449e:
    ret


jr_011_449f:
    pop de
    ret


    ldh a, [$8c]
    and $02
    jr nz, jr_011_44eb

    ld a, [$d420]
    bit 7, a
    jr nz, jr_011_44b8

    swap a
    and $07
    ld c, a
    ld a, [$d421]
    jr jr_011_44c3

jr_011_44b8:
    swap a
    and $07
    add $08
    ld c, a
    ld a, [$d421]
    inc a

jr_011_44c3:
    and $3f
    ld h, a
    ld l, $00
    srl h
    rr l
    srl h
    rr l
    ld a, [$d41f]
    and $3f
    ld d, $d0
    ld e, a
    add hl, de
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $d7
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    bit 7, [hl]
    ret nz

jr_011_44eb:
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d41e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $14
    jp nc, Jump_011_453a

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
    ld a, e
    and $e0
    ld e, a
    ld hl, $d420
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    cp $10
    jp nc, Jump_011_453a

    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld d, b
    ld e, a
    ld bc, $0878
    call Call_000_2798

Jump_011_453a:
    ret


    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d428
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_4598

    call Call_011_4961
    ld a, h
    cp $10
    jp nc, Jump_011_4598

    ld de, $fea0
    add hl, de
    ld a, h
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld b, a
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d426
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld de, $0020
    add hl, de
    ld a, h
    inc a
    cp $16
    jr nc, jr_011_4598

    ld a, h
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld d, a
    ld e, b
    ld bc, $083a
    call Call_000_2798
    rst $18

    db $28, $12

Jump_011_4598:
jr_011_4598:
    ret


    ld a, [$d4d5]
    or a
    jr z, jr_011_45f1

    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d43f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_45f0

    call Call_011_4961
    ld a, h
    cp $10
    jp nc, Jump_011_45f0

    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld b, a
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d43d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $16
    jr nc, jr_011_45f0

    ld a, h
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld d, a
    ld e, b
    ld bc, $084e
    call Call_000_2798

Jump_011_45f0:
jr_011_45f0:
    ret


jr_011_45f1:
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d43f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_464b

    call Call_011_4961
    ld a, h
    cp $10
    jp nc, Jump_011_464b

    ld de, $fec0
    add hl, de
    ld a, h
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld b, a
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d43d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld de, $0040
    add hl, de
    ld a, h
    inc a
    cp $16
    jr nc, jr_011_464b

    ld a, h
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld d, a
    ld e, b
    ld bc, $084c
    call Call_000_2798

Jump_011_464b:
jr_011_464b:
    ret


    ld a, [$d4d4]
    or a
    ret nz

    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d483
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_46b1

    call Call_011_4961
    ld a, h
    cp $10
    jp nc, Jump_011_46b1

    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld b, a
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d481
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $16
    jr nc, jr_011_46b1

    ld a, h
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld d, a
    ld e, b
    ld bc, $0400
    ld a, [$c835]
    and $01
    or b
    ld b, a
    ld a, [$d333]
    or a
    jr z, jr_011_46ae

    set 5, b

jr_011_46ae:
    call Call_000_26a4

Jump_011_46b1:
jr_011_46b1:
    ret


    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d377
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_4703

    call Call_011_4961
    ld a, h
    cp $10
    jp nc, Jump_011_4703

    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld b, a
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d374
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $16
    jr nc, jr_011_4703

    ld a, h
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld d, a
    ld e, b
    ld bc, $083e
    call Call_000_2798

Jump_011_4703:
jr_011_4703:
    ret


Call_011_4704:
    ld a, [$d438]
    cp $03
    ret nz

    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d424
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_4763

    call Call_011_4961
    ld a, h
    cp $10
    jp nc, Jump_011_4763

    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld b, a
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    and $e0
    ld e, a
    ld hl, $d422
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $16
    jr nc, jr_011_4763

    ld a, h
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld d, a
    ld e, b
    rst $30
    ld h, b
    add hl, bc
    jr nz, jr_011_4764

    call Call_011_4c69
    ld bc, $0b2c
    call Call_000_26a4

Jump_011_4763:
jr_011_4763:
    ret


jr_011_4764:
    ld bc, $082c
    call Call_000_2798
    rst $18
    ld l, $12
    ret


    ld hl, $d401
    ld de, $d456
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $d418
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c000
    call Call_000_08ac
    ld a, l
    ld [$d45a], a
    ld a, h
    ld [$d45b], a
    ret


    ld a, [$d485]
    bit 4, a
    jr z, jr_011_47a2

    call Call_011_4e5e
    call Call_011_48ab

jr_011_47a2:
    ld hl, $d45a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d458
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    ld hl, $d456
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    push de
    push bc
    call Call_000_11ac
    ld b, h
    ld c, l
    ld hl, $d45c
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop bc
    pop hl
    ld a, $40
    add b
    ld b, a
    call Call_000_11ac
    ld a, [$d45c]
    ld c, a
    ld a, [$d45d]
    ld b, a
    add hl, bc
    push hl
    ld hl, $d45e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, h
    ldh [$b6], a
    call Call_000_0c60
    ld a, h
    bit 7, h
    jr z, jr_011_4808

    inc sp
    inc sp
    ld a, $01
    ld [$d331], a
    jp Jump_011_489a


jr_011_4808:
    or a
    jr nz, jr_011_4818

    ld a, l
    cp $08
    jr nc, jr_011_4818

    inc sp
    inc sp
    ld de, $507c
    jp Jump_011_4879


jr_011_4818:
    ld de, $0280
    add hl, de
    ld de, $0002
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld d, h
    ld e, l
    ld hl, $5000
    call Call_000_09ae
    ld b, l
    pop hl
    ld a, b
    call Call_000_0bce
    ld de, $0001
    add hl, de
    srl h
    rr l
    ld a, l
    add $50
    ld c, a
    cp $a0
    jr c, jr_011_4850

    ld a, $01
    ld [$d331], a
    jr jr_011_489a

jr_011_4850:
    ld hl, $d407
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0080
    call Call_000_08ac
    ld a, b
    call Call_000_0bce
    ld de, $0001
    add hl, de
    sra h
    rr l
    ld de, $003c
    add hl, de
    bit 7, l
    jr z, jr_011_4877

    ld a, $01
    ld [$d331], a
    jr jr_011_489a

jr_011_4877:
    ld d, c
    ld e, l

Jump_011_4879:
    ld bc, $0830
    ldh a, [$b6]
    cpl
    inc a
    cp $1f
    jr c, jr_011_4886

    ld a, $1f

jr_011_4886:
    srl a
    srl a
    push hl
    ld hl, $48a3
    add l
    ld l, a
    jr nc, jr_011_4893

    inc h

jr_011_4893:
    ld a, [hl]
    pop hl
    add c
    ld c, a
    call Call_000_2798

Jump_011_489a:
jr_011_489a:
    ld a, [$d485]
    bit 4, a
    jp z, Jump_011_48a2

Jump_011_48a2:
    ret


    db $00, $02, $04, $04

    ld b, $06
    ld b, $06

Call_011_48ab:
    ld hl, $d45a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d458
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d377
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    ld hl, $d456
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d374
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    push de
    push bc
    call Call_000_11ac
    ld b, h
    ld c, l
    ld hl, $d45c
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop bc
    pop hl
    ld a, $40
    add b
    ld b, a
    call Call_000_11ac
    ld a, [$d45c]
    ld c, a
    ld a, [$d45d]
    ld b, a
    add hl, bc
    push hl
    ld hl, $d45e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    call Call_000_0c60
    ld a, h
    or a
    jr nz, jr_011_4910

    ld a, l
    cp $10
    jr nc, jr_011_4910

    add sp, $02
    ld de, $507c
    jp Jump_011_495a


jr_011_4910:
    ld de, $0280
    add hl, de
    ld de, $0002
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld d, h
    ld e, l
    ld hl, $5000
    call Call_000_09ae
    ld b, l
    pop hl
    ld a, b
    call Call_000_0bce
    ld de, $0001
    add hl, de
    sra h
    rr l
    ld a, l
    add $50
    ld c, a
    ld hl, $d37a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0080
    call Call_000_08ac
    ld a, b
    call Call_000_0bce
    ld de, $0001
    add hl, de
    sra h
    rr l
    ld a, l
    add $3c
    ld d, c
    ld e, a

Jump_011_495a:
    ld bc, $083e
    call Call_000_2798
    ret


Call_011_4961:
    ld a, d
    or e
    ret z

    ld a, e
    cpl
    add $01
    ld e, a
    ld a, d
    sbc $00
    cpl
    ld d, a
    add hl, de
    ret


    call Call_011_422f
    ld a, [$d485]
    bit 4, a
    call nz, Call_011_4e5e
    call Call_011_4c12
    ld hl, $4984
    jp Jump_011_4d79


    ld c, a
    ld c, [hl]

    db $d0, $4a, $7e, $4a, $94, $49, $68, $4b, $c7, $4b, $35, $4a

    ld c, a
    ld c, [hl]

    ld a, [$d441]
    ld d, a
    ld e, $00
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $06
    jp nc, Jump_011_4a32

    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld b, a
    push bc
    ld a, [$d442]
    ld d, a
    ld e, $00
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, l
    and $f8
    ld l, a
    push hl
    ld hl, $d407
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    and $f8
    ld e, a
    ld d, h
    pop hl
    call Call_011_4961
    ld a, h
    cp $04
    jp nc, Jump_011_4a05

    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld d, b
    ld e, a
    ld bc, $0878
    ld hl, $d407
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    jr nz, jr_011_4a02

    ld a, h
    cp $03
    jr c, jr_011_49ff

    ld a, $03

jr_011_49ff:
    add a
    add c
    ld c, a

jr_011_4a02:
    call Call_000_2798

Jump_011_4a05:
    ld hl, $d407
    ld a, [hl+]
    or [hl]
    jr z, jr_011_4a33

    ld a, [$d442]
    ld d, a
    ld e, $00
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    pop de
    ld a, h
    cp $04
    jr nc, jr_011_4a32

    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld e, a
    ld bc, $084e
    call Call_000_2798

Jump_011_4a32:
jr_011_4a32:
    ret


jr_011_4a33:
    pop de
    ret


    ld a, [$d441]
    ld d, a
    ld e, $00
    ld hl, $d41e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $06
    jp nc, Jump_011_4a7d

    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld b, a
    ld a, [$d442]
    ld d, a
    ld e, $00
    ld hl, $d420
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    cp $04
    jp nc, Jump_011_4a7d

    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld d, b
    ld e, a
    ld bc, $0878
    call Call_000_2798

Jump_011_4a7d:
    ret


    ld a, [$d442]
    ld d, a
    ld e, $00
    ld hl, $d428
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_4acf

    call Call_011_4961
    ld a, h
    cp $04
    jp nc, Jump_011_4acf

    ld de, $ffa8
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
    ld hl, $d426
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $06
    jr nc, jr_011_4acf

    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld d, a
    ld e, b
    ld bc, $083a
    call Call_000_2798
    rst $18

    db $28, $12

Jump_011_4acf:
jr_011_4acf:
    ret


    ld a, [$d4d5]
    or a
    jr z, jr_011_4b15

    ld a, [$d442]
    ld d, a
    ld e, $00
    ld hl, $d43f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_4b14

    call Call_011_4961
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
    call Call_011_4961
    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld d, a
    ld e, b
    ld bc, $08de
    call Call_000_2798

jr_011_4b14:
    ret


jr_011_4b15:
    ld a, [$d442]
    ld d, a
    ld e, $00
    ld hl, $d43f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_4b67

    call Call_011_4961
    ld de, $ff30
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
    call Call_011_4961
    ld de, $0008
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
    push de
    ld bc, $08ee
    call Call_000_2798
    pop de
    ld a, e
    add $10
    ld e, a
    ld bc, $08fe
    call Call_000_2798

jr_011_4b67:
    ret


    ld a, [$d4d4]
    or a
    ret nz

    ld a, [$d442]
    ld d, a
    ld e, $00
    ld hl, $d483
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_4bc6

    call Call_011_4961
    ld a, h
    cp $04
    jp nc, Jump_011_4bc6

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
    ld hl, $d481
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $06
    jr nc, jr_011_4bc6

    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld d, a
    ld e, b
    ld bc, $0400
    ld a, [$c835]
    and $01
    or b
    ld b, a
    ld a, [$d333]
    or a
    jr z, jr_011_4bc3

    set 5, b

jr_011_4bc3:
    call Call_000_26a4

Jump_011_4bc6:
jr_011_4bc6:
    ret


    ld a, [$d442]
    ld d, a
    ld e, $00
    ld hl, $d377
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_4c11

    call Call_011_4961
    ld a, h
    cp $04
    jp nc, Jump_011_4c11

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
    ld hl, $d374
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, h
    inc a
    cp $06
    jr nc, jr_011_4c11

    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld d, a
    ld e, b
    ld bc, $083e
    call Call_000_2798

Jump_011_4c11:
jr_011_4c11:
    ret


Call_011_4c12:
    ld a, [$d438]
    cp $03
    ret nz

    ld a, [$d442]
    ld d, a
    ld e, $00
    ld hl, $d424
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_011_4c5e

    call Call_011_4961
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
    ld hl, $d422
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_011_4961
    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld d, a
    ld e, b
    rst $30
    ld h, b
    add hl, bc
    jr nz, jr_011_4c5f

    call Call_011_4c69
    ld bc, $0b2c
    call Call_000_26a4

jr_011_4c5e:
    ret


jr_011_4c5f:
    ld bc, $082c
    call Call_000_2798
    rst $18
    ld l, $12
    ret


Call_011_4c69:
    push hl
    ldh a, [$8c]
    and $3f
    ld hl, $4c7b
    add l
    ld l, a
    jr nc, jr_011_4c76

    inc h

jr_011_4c76:
    ld a, e
    add [hl]
    ld e, a
    pop hl
    ret


    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $ff
    rst $38
    rst $38
    nop
    nop

    ld a, [$d444]
    cp $ff
    ret z

    or a
    jr z, jr_011_4ce8

    ld de, $4c44
    ld bc, $0ace
    call Call_000_2798
    ld de, $5444
    ld bc, $2ace
    call Call_000_2798
    ld de, $4444
    ld bc, $0ae4
    call Call_000_2798
    ld de, $5c44
    ld bc, $2ae4
    call Call_000_2798

jr_011_4ce8:
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    bit 7, h
    call nz, Call_011_4d61
    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ld a, $50
    add l
    ld b, a
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    push hl
    ld hl, $d407
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_08ac
    sra h
    rr l
    ld a, $40
    add l
    ld e, a
    ld d, b
    push bc
    ld bc, $08c6
    call Call_000_2798
    pop bc
    pop hl
    ld a, [$d408]
    bit 7, a
    jr nz, jr_011_4d5a

    sra h
    rr l
    ld a, $40
    add l
    ld e, a
    ld d, b
    ld bc, $08d6
    call Call_000_2798

jr_011_4d5a:
    pop hl
    bit 7, h
    call z, Call_011_4d61
    ret


Call_011_4d61:
    ld a, [$d4d5]
    or a
    ret nz

    ld de, $5025
    ld bc, $08e6
    call Call_000_2798
    ld de, $5035
    ld bc, $08f6
    call Call_000_2798
    ret


Jump_011_4d79:
    ld a, l
    ld [$d47e], a
    ld a, h
    ld [$d47f], a
    ld hl, $d468
    push hl
    xor a
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    ld [hl], a
    pop de
    ld a, [$d485]
    ld b, a
    srl b
    jr nc, jr_011_4dae

    ld hl, $d43f
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    inc de

jr_011_4dae:
    srl b
    jr nc, jr_011_4dbf

    ld hl, $d428
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $02
    ld [de], a
    inc de

jr_011_4dbf:
    srl b
    jr nc, jr_011_4dd0

    ld hl, $d404
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $03
    ld [de], a
    inc de

jr_011_4dd0:
    srl b
    jr nc, jr_011_4de1

    ld hl, $d483
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $04
    ld [de], a
    inc de

jr_011_4de1:
    srl b
    jr nc, jr_011_4df2

    ld hl, $d377
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $05
    ld [de], a
    inc de

jr_011_4df2:
    srl b
    jr nc, jr_011_4e03

    ld hl, $d420
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $06
    ld [de], a
    inc de

jr_011_4e03:
    ld hl, $d468
    xor a
    ld [$d47a], a
    ld [$d47b], a
    ld bc, $0600

jr_011_4e10:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    or a
    jr z, jr_011_4e3a

    push hl
    ld hl, $d47a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    bit 7, h
    pop hl
    jr z, jr_011_4e3a

    ld a, e
    ld [$d47a], a
    ld a, d
    ld [$d47b], a
    dec hl
    ld a, l
    ld [$d47c], a
    ld a, h
    ld [$d47d], a
    ld c, [hl]
    inc hl

jr_011_4e3a:
    dec b
    jr nz, jr_011_4e10

    ld a, c
    or a
    ret z

    push hl
    call Call_011_4e50
    ld hl, $d47c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ld [hl], a
    pop hl
    jr jr_011_4e03

    ret


Call_011_4e50:
    ld b, $00
    ld hl, $d47e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_011_4e5e:
    ld a, [$d480]
    and $1f
    jr nz, jr_011_4e73

    rst $18

    db $3e, $10

    ld a, [$d382]
    or a
    jr z, jr_011_4e7c

    rst $18

    db $2a, $12

    jr jr_011_4e80

jr_011_4e73:
    ld hl, $d382
    ld a, [hl]
    or a
    jr z, jr_011_4e80

    ld [hl], $00

jr_011_4e7c:
    xor a
    rst $18

    db $2c, $12

jr_011_4e80:
    ld a, [$d513]
    or a
    jr nz, jr_011_4e89

    rst $18

    db $40, $10

jr_011_4e89:
    rst $18

    db $1a, $08

    ld hl, $d513
    ld c, [hl]
    ld [hl], a
    or a
    jr z, jr_011_4e9f

    ld a, c
    or a
    jr nz, jr_011_4e9f

    ld a, $01
    rst $18
    inc l
    ld [de], a
    rst $08
    ld d, [hl]

jr_011_4e9f:
    ld a, [$d480]
    or a
    jr nz, jr_011_4ea5

jr_011_4ea5:
    ld hl, $d480
    inc [hl]
    ret


    ret


    ldh a, [$96]
    push af
    call Call_000_0341
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ldh [rVBK], a
    ld b, $00
    sla c
    rl b
    ld hl, $4f02
    add hl, bc
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    call Call_000_1f2f
    pop de
    ld a, e
    sub $08
    ld h, a
    ld l, $00
    ld e, d
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    add hl, de
    ld de, $8800
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d000
    ld bc, $0020
    call Call_000_2096
    call Call_000_0371
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld l, $4f
    ld h, d
    ld d, b
    adc e
    ld d, c
    jp hl


    ld d, d
    dec h
    ld d, h
    sbc b
    ld d, l
    db $eb
    ld d, [hl]
    ld h, d
    ld e, b
    ret nz

    ld e, c
    ld hl, $745b
    ld e, h
    call nc, Call_000_315d
    ld e, a
    rst $10
    ld h, b
    adc h
    ld h, d
    push hl
    ld h, e
    jr nz, jr_011_4f89

    ld a, e
    ld h, [hl]
    ret nz

    ld h, a
    inc [hl]
    ld l, c
    and a
    ld l, d
    ld a, [bc]
    ld l, h
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    ld l, h
    ldh [$fb], a
    ret nc

    or $07
    rrca
    rst $38
    ldh [$1f], a
    rra
    or b
    add sp, $5f
    add b
    ldh a, [$c0]
    ldh a, [$f0]
    add b
    or $01
    cp $e3
    rst $38
    daa
    ccf
    ld b, b
    ld a, a
    adc a
    rst $38
    sbc [hl]
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    ld l, h
    rst $38
    ld e, [hl]
    di
    sbc $f7
    rst $38
    adc b
    ld hl, sp+$04
    db $fc
    ld [c], a
    cp $f2
    cp $ff
    adc c
    rst $38
    ld l, l
    rst $38
    push af
    sbc a
    rst $30
    rst $18
    or $60
    db $ed
    ld c, $03
    cp $e3
    ld sp, hl

Call_011_4f80:
    add hl, de
    db $e4
    inc a
    rst $38
    db $e4
    inc a
    ld [c], a
    ld a, $5e

jr_011_4f89:
    rst $30
    sbc $f7
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    add h
    rst $38
    add e
    rst $38

jr_011_4f95:
    rst $38
    ld b, b
    ld a, a
    jr nc, @+$41

    db $f4
    rst $18
    or $df
    push af
    inc b
    ldh a, [$e0]
    ld b, e
    ldh a, [$e0]
    ld b, $fe
    ld e, $fe
    ld hl, sp+$7a
    ldh [$fe], a
    ld [c], a
    jr jr_011_4f95

    ei
    rra
    ld a, [c]
    rra
    db $ed
    rst $38
    ccf
    db $e3
    ccf
    inc e
    rra
    ld de, $0e1f
    rst $38
    rrca
    rrca
    inc bc
    ld a, h
    ld c, a
    rst $38
    db $e3
    ld a, a
    rst $38
    pop af
    ld a, a
    ei
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    db $fc
    ld hl, sp-$38
    cp $6d
    adc [hl]
    di
    ldh [rIE], a
    ei
    cp $e0
    db $fd
    rst $38
    ldh [$c6], a
    ld e, $b8
    ldh [rSVBK], a
    ret nz

    ld [hl], b
    ldh [$d0], a
    call $e0cd
    jp z, $dfe0

    ret nz

    ld a, a
    ld b, b
    ld a, a
    add b
    jp nz, Jump_011_41e0

    ld a, a
    db $fd
    db $fd
    call z, $ffe0
    rst $38
    ld bc, $31ff
    rst $38
    db $fd
    pop bc
    or d
    ldh [$c2], a
    ld a, [hl]
    ldh a, [$90]
    ldh a, [$d0]
    rst $38
    ldh a, [$b0]
    ld hl, sp-$58
    rst $38
    ld c, b
    rst $38
    ld d, b
    db $fd
    rst $28
    jp nz, $f0e0

    nop
    di
    inc bc
    db $f4
    rlca
    rst $30
    ld hl, sp+$0f
    ld [$c0d1], sp
    ld hl, sp-$01
    rlca
    rlca
    cp $8d
    ldh [$c1], a
    ccf
    ld [c], a
    rra
    cp $12
    cp $ff
    cp $fe
    inc bc
    rst $38
    db $fc
    db $fc
    cp $7e
    ld a, a
    rst $38
    add e
    db $fc
    add a
    ld hl, sp-$01
    adc b
    xor d
    pop hl
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    nop
    rst $08
    ret nz

    cpl
    rst $28
    ldh [$1f], a
    ldh a, [rNR10]
    or l
    ret nz

    rra
    rst $38
    ldh [rSB], a
    ldh [rP1], a
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    call c, $fbe0
    ret nc

    ld a, [$0c03]
    rrca
    or b
    push hl
    db $fc
    inc c
    cp a
    cp $1e
    cp $fe
    ld a, $fe
    add b
    db $fd
    db $10
    rst $38
    rra
    jr nz, jr_011_50c9

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add c
    rst $38
    rst $38
    add e
    rst $38
    add a
    rst $38
    adc a
    rst $38
    inc e
    cp e
    db $fc
    ld b, $c7
    ldh [$6d], a
    rst $38
    reti


    ld a, [c]
    ldh [rIF], a
    rst $30
    ld sp, hl
    rrca
    ei
    ld c, b
    push af
    pop af
    ld bc, $01f1
    rst $38
    ld a, [c]
    inc bc
    ld a, [c]
    inc bc
    sub e
    rst $38
    xor l
    rst $38
    rst $38
    and [hl]
    rst $38
    and d
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    rst $38
    cp $ff
    db $ed
    rst $28
    adc a
    ei
    adc [hl]
    ei
    cp e

jr_011_50c9:
    nop
    rst $38
    cp $e1
    ld bc, $02ff
    db $fc
    ldh [$f0], a
    rst $38
    add b
    ld [hl], b
    ret nz

    ldh a, [$c0]
    ld [hl], b
    ret nz

    ld c, a
    rst $38
    ret nz

    adc a
    add b
    adc a
    add b
    rrca
    nop
    ld a, [c]
    rst $28
    inc bc
    pop af
    ld bc, $c2f0
    ldh [rIF], a
    inc bc
    rrca
    rst $38
    rlca
    rrca
    rlca
    dec bc
    rrca
    cp $fb
    rst $38
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38

Jump_011_50ff:
    rst $38
    rst $18
    cp $fe
    ldh [$bf], a
    rst $38
    jp nz, $fcfe

    db $fc
    cp $bf
    ld c, [hl]
    rst $38
    rst $28
    rst $38
    rst $38
    ei
    cp $e0
    db $fd
    push af
    rst $38
    ldh [$c8], a
    add b
    cp $e1
    ld [$080f], sp
    rrca
    rst $28
    inc c
    rlca
    rrca
    inc bc
    ret nc

    push bc
    rst $38
    rst $38
    ld a, a
    cp $fe
    ldh [rLCDC], a
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    ld a, a
    xor a
    ld a, a
    ld b, c
    ld a, a
    db $fd
    call z, $ffe0
    add h
    ldh [rNR24], a
    sbc e
    rst $38
    pop hl
    ld hl, sp-$20
    jp nz, $807e

    rst $08
    ld c, b
    pop hl
    db $f4
    rst $38
    rlca
    inc c
    rlca
    rlca
    rlca
    db $fc
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    ld a, a
    rst $38
    pop hl
    rra
    ld a, [c]
    rrca
    ld a, a
    cp $0a
    cp $fe
    cp $03
    rst $38
    add h
    ldh [rIE], a
    ld a, [hl]
    rst $38
    add e
    db $fc
    add a
    ld hl, sp-$01
    adc b
    ld a, [$e0ba]
    ret nz

    xor [hl]
    ldh [rIF], a
    nop
    rst $08
    ret nz

    cpl
    rst $38
    ldh [$1f], a
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$1f]
    rlca
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    cp h
    ldh [$fb], a
    ret nc

    jp hl


    db $fc
    inc e
    di
    rra
    or b
    ld [$bb0e], a
    ld sp, $b03f
    ld [$19e0], a
    ld sp, hl
    sub b
    jp hl


    ld a, a
    rst $38
    ld [hl], b
    sbc a
    ldh a, [$f8]
    rra
    ldh [$3f], a
    ldh a, [rIE]
    rra
    ld hl, sp+$1f
    ld hl, $3f3f
    ccf
    rrca
    rst $38
    ld bc, $030f
    ret nz

    rst $38
    sbc [hl]
    rst $38
    cp a
    ld a, a
    pop hl
    cp a
    ldh [$3f], a
    db $ec
    ld a, a
    ret nz

    cp $e0
    rst $38
    ret c

    ld b, $ff
    ld a, [c]
    rst $38
    ld a, [$fa0f]
    rst $18
    rrca
    ld sp, hl
    ld l, a
    db $fd
    rlca
    cp $e0
    scf
    ccf
    rst $38
    ldh a, [rIF]
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh a, [$08]
    rst $30
    ld hl, sp-$08
    ld hl, sp+$5c
    ldh [$80], a
    rrca
    inc b
    rrca
    db $dd
    dec b
    db $fc
    ldh [rSC], a
    pop af
    ld bc, $e34e
    rst $38
    or h
    rst $38
    rst $38
    inc l
    rst $38
    adc h
    rst $08
    or c
    rst $38
    add b
    rst $38
    ld a, a
    ld b, a
    ld a, $23
    ld a, a
    ld e, c
    rst $38

jr_011_5217:
    ld e, d
    rst $38
    rst $38
    ld l, c
    rst $38
    ld h, d
    rst $20
    ld a, [de]
    rst $38
    inc bc
    rst $38
    db $fc
    call nz, $88f8
    db $fc
    inc [hl]
    ldh a, [rLCDC]
    ld a, [$e2fe]
    add b
    jr jr_011_5217

    pop af
    ld bc, $01f1
    di
    rst $18
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    inc bc
    or h
    ldh [rDIV], a
    rst $38
    rst $38
    call nc, Call_011_53ff
    rst $38
    ld c, d
    rst $38
    ld b, h
    rst $38
    rst $30
    ld b, e
    rst $38
    add b
    cp $e1
    cp $56
    rst $38
    sub l
    ei
    rst $38
    and l
    ldh a, [$e0]
    add h
    rst $38
    inc bc
    rst $38
    ld [bc], a
    dec sp
    rst $38
    ld [bc], a
    ldh [$c3], a
    adc a
    add b
    ldh a, [$fe]
    pop hl
    or h
    ldh [rIE], a
    rrca
    ld [$101f], sp
    ld a, a
    ld h, c
    rst $38
    add c
    cp a
    cp $7a
    rst $38
    dec bc
    push af
    dec b
    add b
    ldh [$80], a
    push af
    rst $38
    rst $00
    ld [c], a
    add h
    db $d3
    ldh [rIE], a
    rst $38
    ld a, a
    ld b, d
    db $76
    call z, $fee0
    inc bc
    push bc
    ldh [rSCY], a
    cp $81
    ldh a, [$e0]
    rst $38
    db $fc
    add h
    ldh a, [rNR41]
    ldh a, [$d0]
    db $fc
    inc c
    rst $38
    cp $02
    rst $38
    cp h
    rst $28
    and b
    ld c, a
    ld b, b
    cp $98
    pop bc
    di
    inc bc
    db $f4
    rlca
    ld hl, sp+$0f
    ld [$0fff], sp
    rrca
    rrca
    ld hl, sp-$01
    rlca
    rlca
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    jp nz, $e23f

    rra
    cp $12
    db $eb
    cp $fe
    ret z

    ldh [$fc], a
    rst $38
    ldh [rIE], a
    add a
    ld hl, sp-$11
    adc a
    ldh a, [rIE]
    sub b
    or d
    ldh [$80], a
    rst $38
    ld a, a
    db $fd
    ld a, a
    add h
    pop hl
    ld c, a
    ret nz

    cpl
    ldh [$30], a
    ldh [$3f], a
    ldh [$e0], a
    ccf
    rst $38
    ret nz

    ret nz

    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    call nc, $fbe0
    ret nc

    db $fc
    ld c, $b0
    db $ec
    ldh [$90], a
    db $ed
    cp $0e
    rst $38
    pop af
    rra
    ldh [$3f], a
    ldh a, [$1f]
    jr nz, jr_011_534c

    rst $38
    add hl, sp
    ccf
    ld de, $171f
    rra
    ld sp, $ff3f
    pop bc
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    cp a
    ldh [rIE], a

jr_011_5320:
    ccf
    ldh [$7f], a
    call nz, $d87f
    jr jr_011_5320

    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld a, [c]
    rst $38
    ld_long a, $ff0f
    ld sp, hl
    rrca
    db $fd
    ld b, a
    db $fd
    scf
    rst $28
    ldh [rIE], a
    rra
    ldh a, [rIF]

jr_011_533e:
    ld hl, sp+$1f
    ldh a, [$08]
    ld hl, sp-$01
    jr c, jr_011_533e

    db $10
    ldh a, [$d0]
    ldh a, [rIF]
    dec c

jr_011_534c:
    rst $38
    rrca
    inc b
    rrca
    dec b
    rrca
    inc bc
    di
    ld [bc], a
    rst $38
    rst $30
    inc b
    rst $38
    ld [$09ff], sp
    ld a, a
    ret nz

    rst $38
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    adc h
    rst $38
    jr c, jr_011_53e7

    rst $38
    ld d, c
    rst $38
    ld h, b
    cp a
    and b
    db $fd
    pop bc
    pop hl
    rst $30
    dec e
    rst $38
    ld h, e
    ldh a, [$e0]
    inc d
    rst $38
    inc c
    ei

jr_011_537b:
    rst $18
    dec bc
    ldh a, [$60]
    ldh a, [rLCDC]
    cp $e0
    add b
    adc a
    rst $38
    add b
    rst $08
    ld b, b
    rst $28
    jr nz, jr_011_537b

    jr nz, @+$01

    db $fd
    ld de, $e0fe
    ld [hl+], a
    rst $38
    ld hl, $213f
    rra
    db $fd
    rra
    inc b
    pop hl
    rst $38
    ld sp, hl
    rst $38
    inc [hl]
    rst $38
    dec hl
    cp a
    rst $38
    ld a, [hl+]
    rst $38
    ld b, h
    rst $38
    ld b, e
    or [hl]
    ldh [$80], a
    rst $38
    rst $38
    ccf
    rst $38
    ld e, c
    rst $38
    xor b
    rst $38
    xor c
    rst $28
    rst $38
    push bc
    rst $38
    add l
    ld [hl], a
    ldh [rSC], a
    rst $38
    ret nc

    rst $38
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    ld [$08f8], sp
    ei
    ldh a, [$f0]
    cp b
    set 6, c
    ld bc, $01f1
    ldh a, [$e9]
    nop
    add d
    ldh [$c9], a
    ld [c], a
    add h
    ld c, d
    ldh [rIE], a
    rst $38
    ld a, a
    db $ed
    ld b, d
    ld b, e
    ldh [$fe], a
    inc bc
    cp $e0
    ld b, d

jr_011_53e7:
    cp $81
    and $f0
    ldh [$fc], a
    add h
    add b
    pop de
    add $e1
    ld c, $03
    inc bc
    rst $38
    inc bc
    cp $ff
    ld bc, $ff01
    db $fc
    rst $38
    rst $28

Call_011_53ff:
    cp h
    jp $817e


    db $fc
    ret nz

    rst $38
    rst $38
    ld bc, $ffff
    cp $fe
    cp $7e
    cp $7a
    add a
    set 7, l
    inc bc
    or d
    ld [c], a
    nop
    xor [hl]
    ldh [$60], a
    add $80
    add b
    ld b, $96
    ldh [rP1], a
    nop
    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    push af
    rst $38
    rst $30
    rlca
    ld hl, sp+$1f
    db $e3
    ccf
    adc $7d
    cp $a8
    push hl
    rst $38
    ldh a, [rIF]
    db $fc
    db $e3
    cp $b9
    ld sp, hl
    ld e, a
    ret z

    push af
    add b
    pop hl
    pop af
    ld bc, $31f1
    sbc $ff
    ld [hl], c
    cp a
    rst $20
    ei
    db $fc
    rst $28
    or e
    rst $38
    rst $38
    call z, $f2ff
    ld a, a
    call z, $d27f
    dec a
    rst $38
    rst $00
    cp $f3
    rst $28
    rra
    ei
    and $ff
    ld a, a
    add hl, de
    rst $38
    daa
    rst $38
    ld bc, $19ff
    ld e, b
    ldh [$f5], a
    add b
    cp $e1
    adc a
    cp $e0
    ld c, a
    ret nz

    ld c, a
    add $ff
    jp nc, $cd73

    ld a, a
    pop bc
    ld a, a
    pop hl
    ccf
    rst $38
    db $10
    rra
    ld c, $0f
    rra
    add hl, de
    ccf
    dec [hl]
    rst $38
    rst $38
    or $ff
    ld d, [hl]
    rst $38
    ld l, $ff
    jr nz, @+$01

    rst $38
    pop hl
    rra
    pop af
    rrca
    ld sp, hl
    rst $00
    cp $ff
    rst $38
    rlca
    rst $38
    dec a
    rst $38
    sbc d
    rst $38
    ld [bc], a
    rst $38
    rst $38
    jp $c77c


    ld a, b
    rst $08
    ld sp, hl
    cp a
    rst $30
    xor l
    rst $20
    reti


    ret nc

jr_011_54bc:
    ldh [$c3], a
    ld a, [hl]
    add h
    db $fc
    rst $38
    jr c, jr_011_54bc

    ld c, b
    ld hl, sp-$3c
    db $fc
    ccf
    ld a, [hl+]
    rst $38
    ccf
    ld hl, $121f
    rra
    ld de, $08ff
    rst $38
    rst $38
    ld [$04f7], sp
    di
    ld [bc], a
    rst $38
    cp a

jr_011_54dc:
    rst $38
    push af
    ld e, a
    rst $30
    sbc [hl]
    rst $20
    inc a
    db $e3
    cp a
    rst $38
    ldh [rIE], a
    ldh a, [$3f]
    ret nc

    ld e, a
    rst $18
    cp $ff
    cpl
    ld a, [$f1df]
    sbc a
    pop af
    rra
    ld a, [c]
    rst $38
    rrca
    db $fc
    rra
    ld hl, sp+$37
    db $e4
    and h
    db $fc
    rst $38
    call nc, $c47c
    ld a, h
    ld hl, sp-$48
    rst $38
    db $10
    rst $38
    rst $28
    jr nz, jr_011_54dc

    ld b, b
    adc a
    add b
    pop af
    ld bc, $d0fe
    res 3, a
    sbc a
    rla

jr_011_5518:
    inc e
    rra
    rra
    jr nz, jr_011_5518

    ccf
    ldh [$fe], a
    ldh [$c4], a
    ld a, a
    jp $f37f


    rst $38
    db $e3
    or b
    ldh [$f0], a
    ldh a, [$08]
    ld hl, sp+$0f
    sbc [hl]
    cp $e0
    add a
    db $fc
    rlca
    db $fc
    nop
    ld sp, hl
    ld a, h
    pop bc
    pop bc
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld hl, $21ff
    ld l, d
    ldh [rIE], a
    inc de
    rra
    ld de, $111f
    rlca
    db $fc
    rst $38
    rst $38
    db $fc
    rst $38
    add d
    ld a, a
    ld b, d
    cp $42
    cp $df
    ld [hl+], a
    cp $22
    rst $38
    ld hl, $d780
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rra
    rra
    rra
    ld de, $7fff
    ld [hl], c
    adc a
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ld a, [hl]
    ld a, [hl]
    rst $38
    rra
    rst $38
    ld de, $ffdf
    rla
    ld hl, sp+$1f
    db $10
    rst $20
    ldh [$f0], a
    rst $38
    db $eb
    rrca
    rrca
    db $10
    jp $bc8f


    ret nz

    add b
    add b
    rst $38
    rlca
    rst $38
    add b
    add b
    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    push af
    rst $38
    rst $30
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    cp $a8
    push hl
    rst $08
    ret nz

    ccf
    ld hl, sp+$37
    db $ec
    ld a, e
    sub l
    rst $00
    sub b
    db $ec
    ldh [$80], a
    ldh [rSB], a
    cp $e1
    add b
    pop hl
    pop af
    rst $38
    ld bc, $03f2
    add b
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rrca
    cp $ff
    ldh a, [rIE]
    add a
    ld hl, sp-$01
    rst $38
    ret nz

    rst $38
    db $fc
    adc a
    rst $30
    cp b
    rst $38
    rst $38
    rst $00
    rst $38
    cp c
    rst $38
    ret


    rst $38
    or c
    cp $7f
    adc d
    rst $38
    sub a
    ldh a, [rNR41]
    ldh a, [$c0]
    ld h, b
    jp hl


    rst $38
    ld a, [c]
    inc sp
    jp hl


    add hl, sp
    and $3f
    ldh a, [$1f]
    rst $38
    db $10
    rra
    ld [$0f0f], sp
    rlca
    rrca
    nop
    rst $38
    add a
    rst $38
    rrca
    ld sp, hl
    rrca
    ld a, [$f80f]
    rst $38
    rlca
    db $fd
    inc bc
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    cp a
    cp $36
    rst $38
    dec d
    rst $38
    dec c
    xor e
    ldh [rP1], a
    cp a
    rst $38
    inc bc

jr_011_5625:
    rst $38
    add d
    ld a, a
    db $e4
    db $10
    db $e3
    adc a
    rst $30
    add b
    ldh a, [$80]
    jr c, jr_011_5625

    cp $13
    rst $38
    ld hl, $fefe
    ldh [rNR44], a
    rra
    inc d
    rra
    jr @+$11

    ld [$0fff], sp
    inc b
    cp a
    db $fc
    ld [hl], a

jr_011_5646:
    rst $38
    ld a, a
    sbc $fb

jr_011_564a:
    cp a
    pop af

jr_011_564c:
    ld [hl], l
    ldh [$aa], a
    rst $38
    ld d, [hl]
    rst $38
    ld e, c
    db $fc
    ret c

    jp nz, $e0c2

    rst $08
    ld b, b
    rst $28
    jr nz, jr_011_564c

    jr nz, jr_011_564a

    rst $08
    ld b, b
    ret nc

    adc $02
    jr nc, jr_011_5646

    inc bc
    inc c
    rlca
    rst $28
    db $f4
    rlca
    ld hl, sp+$0f
    cp $e1
    rst $38
    inc sp
    db $fd
    cp a
    adc a
    cp $fe
    ld [bc], a
    cp $03
    cp $e0
    dec bc
    sbc a
    cp $0d
    rst $38
    adc a
    add b
    ret z

    db $d3
    add b
    push bc
    db $f4
    rst $38
    rlca
    rst $30
    rlca
    rst $30
    inc b
    rst $30
    inc b
    rrca
    cp l
    inc b
    add d
    ldh [$09], a
    rra
    db $10
    add hl, bc
    inc a
    ldh [rIE], a
    ld a, l
    ld de, $e26c
    ld d, b
    rst $38
    ld c, b
    rst $38
    adc b
    ld h, b
    rst $00
    di
    adc a
    add b
    cp $e1
    ld d, b
    rst $00
    nop
    nop
    rst $38
    rst $38
    rst $28
    nop
    nop
    rra
    rra
    push af
    ret nz

    inc de
    inc e
    rra
    db $fd
    db $f4
    rst $30
    ldh [$f0], a
    rst $38
    rra
    rra
    rst $38
    adc e
    rst $38
    rst $30
    add h
    rst $30
    call nz, $e333
    ld l, $e3
    rst $38
    db $e3
    db $e3
    ld a, $ff
    pop bc
    pop bc
    rst $08
    ld b, b
    rst $38
    rst $38
    ld a, b
    add a
    db $fc
    add a
    db $fc
    ld a, h
    db $fc
    ccf
    call nz, Call_000_3ffc
    rst $38
    ret nz

    ret nz

    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    push af
    rst $38
    pop af
    ld bc, $03f2
    db $fc
    rrca
    di
    rra
    cp $a8
    push hl
    rst $28
    ldh [$1f], a
    ld hl, sp+$07
    cp $19
    ld sp, hl
    rst $38
    ret z

    push af
    add b
    push hl
    rst $30
    inc e
    rst $28
    jr c, @+$01

    rst $38
    inc sp
    rst $38
    jr nc, jr_011_575b

    daa
    dec sp
    ccf
    ld a, e
    rst $38
    ld a, a
    ei
    sbc a
    db $fd
    rst $20
    cp $03
    rst $38
    rst $38
    add hl, de
    rst $38
    ld bc, $1cff
    rst $28
    cp a
    rst $28
    ld d, a
    rst $38
    rst $28
    rst $38
    ld e, b
    ldh [$80], a
    cp $e1
    adc a
    cp $e0
    rst $28
    rst $08
    ret nz

    rst $28
    jr nz, jr_011_578c

    db $e3
    db $fc
    inc e
    ccf
    rst $38
    ld a, [hl+]
    ld a, a
    ld d, l
    ld a, a
    ld l, a
    rst $38
    sub [hl]
    rst $38
    rst $38
    or a
    rst $38
    sub b
    rst $38
    or b
    ld e, a
    ld a, b
    rst $38
    rst $38

jr_011_575b:
    add hl, sp
    rst $38
    ld [$04f7], sp
    rst $30
    add h
    rst $38
    rst $38
    cp l
    rst $38
    and c
    rst $38
    ld b, c

jr_011_5769:
    rst $38
    inc bc
    rst $38
    rst $38
    inc sp
    rst $18
    ld a, [c]
    sbc a
    db $f4
    rst $38
    ld h, h
    rst $28
    ld a, a
    and b
    rst $28
    jr nz, jr_011_5769

    and b
    ld c, a
    ret nz

    cp d
    ldh [$fe], a
    inc c
    ld [c], a
    ld a, a
    ld l, d
    ccf
    inc [hl]
    ccf
    inc h
    ccf
    rst $38
    jr nz, @+$01

jr_011_578c:
    ld de, $1cff
    rst $38
    ld [$f7ff], sp
    ld [$82f3], sp
    cp $e0
    add e
    db $fc
    adc a
    or l
    ld a, a
    cp a
    call $f2ff
    cp a
    ld a, [c]
    rra
    db $ec
    ldh [rIE], a
    inc c
    di
    ld a, $e5
    rst $38
    adc c
    rst $38
    ld d, b
    rst $08
    rst $38
    ld h, b
    rst $38
    add d
    add b
    pop hl
    call nc, $8fc2
    add b
    cp a
    ld c, a
    ret nz

    cpl
    ldh [$2f], a
    ldh [$9c], a
    ldh [rDIV], a
    ei
    di
    inc bc
    ret nc

    rst $00
    ld [c], a
    ccf
    db $e3
    ccf
    ldh [rIE], a
    rst $38
    jr nz, jr_011_5811

    ret nz

    ld a, a
    rst $38
    ld a, a
    db $fc
    xor a
    ld l, a
    rst $38
    ld b, e
    add d
    call z, Call_000_01e0
    cp $e2
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $30
    rst $38
    add b

jr_011_57e8:
    ld a, a
    ret nc

    ld h, b
    ldh [rIE], a
    ld [$88ff], sp
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [$b7]
    jr nz, jr_011_57e8

    ret nz

    add b
    call $40ff
    cp $e0
    ld b, [hl]
    ld l, a
    rst $38
    ld hl, $203f
    cp $e3
    rst $38
    nop
    cp $e0
    ld e, a
    ld bc, $e0ff
    rst $38
    and b

jr_011_5811:
    cp $e2
    ld d, b
    ld [bc], a
    db $e3
    sbc [hl]
    nop
    pop hl
    rst $08
    ld b, b
    rst $08
    ld b, b
    nop
    pop hl
    sub [hl]
    pop bc
    db $f4
    rst $38
    rlca
    inc c
    rlca
    rlca
    rlca
    db $fc
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    ld b, b
    rst $38
    ld hl, sp+$27
    cp $11
    adc $c9
    ldh [rIE], a
    rst $38
    inc b
    adc h
    ldh [rOBP1], a
    ldh [$d7], a
    ld hl, sp-$01
    ld l, a
    ldh a, [rIE]
    ld d, b
    rst $18
    rst $18
    rst $18
    ld [hl], b
    rst $38
    rst $38
    adc a
    adc a
    rst $28
    jr nz, @+$01

    sub b
    ld a, a
    rst $38
    add sp, $1f
    ld hl, sp+$18
    ld hl, sp-$10
    ldh a, [$1f]
    rlca
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    ld a, [c]
    ldh [$ea], a
    rlca
    ret z

    push af
    add b
    db $eb
    or $06
    add hl, bc
    rrca

jr_011_587c:
    ei
    dec bc
    rrca
    rst $38
    pop hl
    jr jr_011_58a2

    jr nc, jr_011_58c4

    ld a, b
    rst $38
    ld c, a
    cp $c7
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    rst $38
    sbc h
    rst $38
    db $e4
    ldh a, [$80]
    ld [hl], b
    ret nz

    ld [hl], b
    rst $38
    ret nz

    jr nc, jr_011_587c

    sbc a
    ldh a, [$df]
    ld [hl], b
    rst $08
    rst $30

jr_011_58a2:
    ld a, b
    rst $08
    ld a, b
    add b
    db $ed
    rra
    dec d
    rra
    add hl, de
    rst $38
    ccf
    dec hl
    ccf
    inc h
    rst $38
    jr nc, @+$01

    jr z, @+$01

    rst $38
    ld d, h
    rst $38
    ld b, h
    sbc a
    ldh a, [$bf]
    ldh a, [rIE]
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    dec e

jr_011_58c4:
    rst $38
    rlca
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc bc
    adc a
    ld hl, sp-$71
    ld hl, sp-$01
    sbc a
    ldh a, [$1f]
    ldh a, [$30]
    ldh [$f0], a
    ldh [$ef], a
    ldh a, [$50]
    ldh a, [$50]
    nop
    rst $20
    pop af
    ld bc, $dff2
    inc bc
    or $07
    rst $38
    ld b, b
    cp $e0
    jr nz, @+$01

    rst $38
    ccf
    set 7, [hl]
    add hl, hl
    rst $38
    ld b, $ff
    ld de, $ffff
    rst $38
    nop
    rst $38
    inc c
    ei
    rra
    db $ed
    rst $38
    ccf
    add sp, $3f
    ret nc

    rst $38
    ld [hl], h
    rst $38
    ld b, l
    db $fd
    rst $38
    call z, $90e0
    ldh a, [rNR41]
    ldh a, [rNR41]
    rst $08
    rst $38
    ret nz

    adc a
    add b
    adc a
    add b
    rrca
    nop
    rst $38
    ld [hl], a
    add hl, bc
    rst $38
    db $10
    reti


    ldh [rNR10], a
    rrca
    ld [$e0fe], sp
    rst $38
    ld b, $0f
    dec b
    ld de, $90ff
    rst $38
    ldh [rIE], a
    ld a, a
    ret nz

    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    rst $38
    rst $38
    rra
    rst $38
    sbc e
    ld b, d
    cp $c2
    cp $02
    rst $30
    cp $01
    rst $38
    cp $e1
    rst $38
    rst $38
    rra
    ei
    cp $c8
    adc $07
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    dec b
    db $db
    di
    inc bc
    ld a, [hl]
    jp Jump_011_50ff


    or b
    ldh [$94], a
    rst $38
    ld a, a
    inc hl
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add e
    db $fc
    ldh [$d5], a
    pop hl
    ld c, d
    ldh [rNR43], a
    ld a, [c]
    ldh [rSB], a
    ldh a, [$e0]
    add b
    rst $38
    db $fd
    ld b, b
    sub b
    ret


    adc a
    add b
    rst $08
    ret nz

    pop af
    ld bc, $f3df
    inc bc
    db $f4
    rlca
    ld hl, sp-$7f
    ldh [rIF], a
    rrca
    rst $28
    db $fc
    rst $38
    inc bc
    inc bc
    sub a
    ldh [$80], a
    ld a, a
    ldh [$f1], a
    rra
    ld l, e
    ldh [rLYC], a
    pop hl
    adc l
    ldh [rLCDC], a
    rst $38
    ret nz

    rst $38
    rst $28
    db $e3
    db $fc
    sbc a
    db $e4
    add d
    ldh [$c0], a
    rst $38
    ccf
    rst $38
    ccf
    rst $28
    jr nz, @+$01

    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    db $fc
    inc b
    db $fc
    db $fc
    db $fc
    rlca
    rst $38
    ld hl, sp+$01
    ld hl, sp+$00
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    push af
    rst $38
    di
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    cp $a8
    push hl
    adc a
    add b
    ld l, a
    ldh [$1f], a
    ld hl, sp+$07
    push af
    db $fc
    ret z

    ldh a, [rSB]
    cp $e1
    ldh a, [rP1]
    pop af
    ld bc, $f3ff
    ld [bc], a
    rst $30
    dec b
    add c
    rst $38
    inc de
    cp $ff
    inc sp
    cp $39
    rst $28
    cp a
    or $ff
    ldh [rIE], a
    rst $38
    ld a, $ff
    push bc
    jp $f1fe


    ccf
    rst $38
    pop af
    rra
    pop af
    ccf
    ld a, [$fe5e]
    ld b, $ef
    cp $fe
    rst $38
    ld b, l
    ld h, b
    db $ed
    rst $38
    ld a, [bc]
    rst $38
    db $fd
    add hl, bc
    db $fc
    pop hl
    rra
    inc de
    ccf
    ld hl, $223f
    rst $38
    ld a, a
    ld b, d
    rst $38
    ld b, l
    rst $38
    and d
    rst $38
    ld e, h
    rst $38
    rst $38
    ld b, h
    rst $38
    jp nz, Jump_000_21ff

    rst $38
    daa
    rst $38
    cp $13
    rst $38
    ld b, [hl]
    rst $38
    adc b
    rst $38
    ld [hl], b
    cp $ea
    ldh [$86], a
    rst $38
    ld [$c8ff], sp
    rst $38
    sub b
    di
    adc a
    add b
    cp $e1
    db $10
    rst $20
    ld a, a
    ld b, l
    ld a, a
    ld b, b
    cp a
    ccf
    jr nz, @+$21

    add hl, de
    rst $30

jr_011_5a5a:
    rlca
    cp $c3
    rst $38
    rst $38
    ld sp, hl
    sbc a
    db $f4
    adc a
    ld a, [$f90f]
    ld b, $ef
    rst $38
    jp nc, $22ff

    xor l
    ldh [rIE], a
    jr nc, @+$01

    rst $38
    ld e, b
    rst $20
    cp h
    db $e3
    ld a, $c1
    rst $38
    sub c
    rst $18
    rst $38
    adc e
    cp $6b
    sbc [hl]
    ldh [$c7], a
    adc a
    add b
    rst $28
    rst $08
    ld b, b
    rst $28
    jr nz, jr_011_5a5a

    call Call_000_3f20
    ld b, b
    db $fd
    ld a, a
    cp $e1
    rst $38
    ld a, a
    ei
    ld l, [hl]
    rst $38
    ld l, a
    rst $38
    rst $38
    ld b, b
    rrca
    db $fc
    rlca
    rst $38
    rlca
    cp $ff
    rlca
    db $fc
    rst $38
    ld a, [$e1bf]
    rst $38
    pop af
    rst $38
    rst $38
    add hl, bc

jr_011_5aad:
    rst $28
    jr nz, @+$01

    db $10
    rst $38
    db $10
    ld l, [hl]
    ret z

    ldh [rLCDC], a
    ldh a, [$80]
    cp b
    pop de
    rst $38
    ld b, b
    cp $e0
    rst $18
    ld b, [hl]
    rst $38
    ld b, e
    ld a, a
    ld b, d
    inc [hl]
    ldh [$82], a
    rst $38
    db $fd
    add h
    jr nz, jr_011_5aad

    ld a, [bc]
    rst $38
    call nz, $84ff
    db $fc
    and $fe
    ld [c], a
    cp $42
    ld h, b
    call $c0ca
    inc bc
    db $f4
    rlca
    rst $38
    ld hl, sp+$0f
    ld [$0f0f], sp
    rrca
    ld hl, sp-$01
    rst $38
    rlca
    rlca
    rst $38
    inc b
    rst $38
    call nz, $f23f
    rst $38
    cpl
    ld a, [$fe16]
    cp $fe
    inc bc
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    ld b, c
    rst $38
    ld c, a
    ld hl, sp-$61
    rst $38
    add sp, -$41
    ret nc

    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ei
    ld a, a
    ld a, a
    ld c, b
    pop hl
    ld c, a
    ret nz

    cpl
    ldh [$30], a
    ld a, a
    ldh [$e0], a
    ldh [$3f], a
    rst $38
    ret nz

    ret nz

    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $30
    cp a
    di
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    or b
    rst $20
    adc a
    rst $18
    add b
    ld l, a
    ldh [$1f], a
    ld hl, sp-$38
    ld a, [c]
    ld bc, $f70f
    ld bc, $01f1
    ld a, [hl]
    db $e3
    ret nz

    ld a, a
    add c
    rst $38
    rst $38
    inc de
    cp $33
    cp $39
    rst $28
    cp a
    and $ff
    rst $38
    ret z

    rst $38
    cp $07
    db $fc
    jp $fffe


    pop af
    ccf
    pop af
    rra
    pop af
    rra
    ld a, [$ef4e]
    cp $26
    cp $fe
    ld h, b
    db $ed
    pop af
    ld bc, $edf3
    ld [bc], a
    cp $e1
    dec c
    ld bc, $e336
    rst $38
    ld d, c
    rst $38
    rst $38
    pop de

jr_011_5b7f:
    rst $38
    ld [hl+], a
    rst $38
    inc e
    rst $38
    ld b, h
    rst $38
    rst $38
    jp nz, Jump_000_21ff

    rst $38
    jr nz, @+$01

    ld b, l
    rst $38
    rst $18
    ld b, [hl]
    rst $38
    adc b
    rst $38
    ld [hl], b
    ld hl, sp-$20
    add [hl]
    rst $38
    and a
    ld [$08ff], sp
    ld a, b

jr_011_5b9e:
    pop hl
    cp $e1
    ld [hl], b
    cp b
    xor $f2
    rst $30
    inc bc
    rst $30
    dec b
    sbc $e0
    inc de
    rst $38
    jr jr_011_5b9e

jr_011_5baf:
    cp a
    ld a, h
    adc a
    ei
    ld b, $ff
    ld [de], a

jr_011_5bb6:
    cp c
    ldh [$a1], a
    rst $38
    rst $38
    rst $38
    sub b
    rst $38
    jr nc, jr_011_5baf

jr_011_5bc0:
    ld a, h
    db $e3
    ld a, e
    cp [hl]
    pop bc
    rst $30
    ldh [$89], a
    rst $38
    ld l, e
    sbc [hl]
    jr nc, jr_011_5bb6

    rst $28
    rst $08
    ld b, b
    rst $28
    jr nz, jr_011_5b7f

    ldh [rNR11], a
    rst $38
    db $10
    xor $a8
    ldh [rDIV], a
    rrca
    inc bc
    jr c, jr_011_5bc0

    ret nz

    ld a, a
    ret nz

    db $fd
    rst $38
    cp $e0
    ld a, a
    rst $38
    ccf
    ei
    ld c, $ff
    rst $38
    rra
    rst $38
    jr nz, jr_011_5c00

    db $fc
    rlca
    rst $38
    rlca
    cp $3a
    ldh [rIE], a

jr_011_5bf9:
    ld a, [$e1bf]
    rst $38
    pop af
    rst $38
    db $fd

jr_011_5c00:
    add hl, bc
    adc $e0
    db $10
    rst $38
    db $10
    rst $28
    jr nz, jr_011_5bf9

    or a
    ld b, b
    ldh a, [$80]
    cp b
    pop de
    rst $38
    and b
    cp $e0
    ld b, [hl]
    rst $38
    rst $38
    ld b, e
    ld a, a
    ld b, d
    ld a, a
    ld b, d
    rst $38
    add d
    rst $28
    rst $38
    add h
    rst $38
    ld a, [bc]
    cp $e0
    call nz, $84ff
    db $ed
    db $fc
    cp $e2
    cp $42
    nop
    ldh a, [$03]
    db $f4
    rlca
    rst $38
    ld hl, sp+$0f
    ld [$0f0f], sp
    rrca
    ld hl, sp-$01
    rst $38
    rlca
    rlca
    rst $38
    inc b
    rst $38
    call nz, $f23f
    rst $38
    cpl
    ld a, [$fe16]
    cp $fe
    inc bc
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    ld b, c
    rst $38
    ld c, a
    ld hl, sp-$61
    rst $38
    add sp, -$41
    ret nc

    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ei
    ld a, a
    ld a, a
    ld a, b
    pop bc
    ld c, a
    ret nz

    cpl
    ldh [$30], a
    ld a, a
    ldh [$e0], a
    ldh [$3f], a
    rst $38
    ret nz

    ret nz

    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    add sp, -$21
    ld bc, $010f
    ld c, $03
    or b
    ldh [rTAC], a
    jr jr_011_5ccc

    rra
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    cp $e2

jr_011_5c95:
    xor b
    ldh [rIE], a
    add b
    ld [hl], b
    ret nz

    jr c, jr_011_5c95

    daa
    cp $01
    or $ee
    ldh [$c0], a
    rst $38
    sub b
    ld [$f080], a
    add b
    ld c, $f7
    inc bc
    inc c
    rlca
    cp $e1
    db $f4
    rlca
    ld a, [c]
    inc bc
    rst $38
    di
    inc bc
    di
    ld [bc], a
    ld bc, $03ff
    cp $ef
    add e
    cp $87
    db $fc
    cp $e1
    ld c, a
    ld hl, sp-$31
    rst $38
    ld hl, sp-$08
    ccf

jr_011_5ccc:
    db $fc
    rlca
    cp $03
    cp $ff
    inc sp
    cp $4b
    cp $03
    rst $38
    dec a
    rst $38
    rst $30
    ld l, c
    ld [hl], b
    ret nz

    cp $e3
    ld c, a
    ret nz

    adc a
    add b
    db $fc
    cp $e1
    call z, $f7e1
    ld b, $ff
    add hl, bc
    rra
    ld de, $3fff
    inc hl
    ccf
    jr nz, @+$21

    db $10
    rst $28
    jr c, @+$01

    rst $28
    cp c
    rst $38
    ld e, b
    db $fc
    bit 7, [hl]
    pop hl
    rst $38
    rst $38
    ret nc

    rst $38
    call z, Call_000_3bff
    rst $38
    ld [hl], d
    cp $77
    ldh [rTIMA], a
    ld a, a
    add a
    db $fd

jr_011_5d11:
    rrca
    rst $38
    ld d, $ef
    rst $28
    ld l, h
    sbc a
    sub b
    jp z, $cfe1

    ld b, b
    rst $28
    rst $38
    jr nz, jr_011_5d11

    sub b
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh a, [$9f]
    ld b, b
    rrca
    inc c
    rrca

jr_011_5d2c:
    ld [bc], a
    ld b, [hl]
    ldh [rP1], a
    and $ff
    rst $38
    jr jr_011_5d2c

    inc a
    di
    sbc a
    ldh a, [$5f]
    ld hl, $3fff
    cpl
    ccf
    rra
    rra
    rrca
    rrca
    rst $38
    rst $38
    ld h, b
    rst $38
    ld sp, $facf
    rlca
    db $fc
    adc b
    cpl
    ld hl, sp-$18
    ld hl, sp-$10
    rst $38
    pop hl
    add b
    nop
    or $b6
    jp $0ffb


    rra
    rst $38
    ldh [$2f], a
    ccf
    rst $20
    ccf
    pop bc
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    ld a, a
    ldh a, [$f0]
    ld hl, sp+$7a
    rst $38
    ld [c], a
    rst $20
    ld l, $e0
    rlca
    db $fc
    rst $38
    db $fc
    ret z

    push af
    ld a, [$e680]
    ld b, c
    cp $e0
    ld b, e
    cp $42
    rst $38
    add h
    cp e
    rst $38
    sub h
    db $fc
    ldh [$88], a
    rst $38
    inc b
    cp $e2
    add h
    rst $08
    db $fc
    add h
    ld hl, sp-$78
    cp $e1
    add b
    rst $08
    pop af
    ld bc, $f3d7
    inc bc
    db $f4
    cp h
    ret nz

    rlca
    and c
    ldh [$03], a
    inc bc
    ld a, a
    rst $38
    ld hl, sp-$01
    ld [$c8ff], sp
    ccf
    inc hl
    ldh [$bf], a
    ldh a, [$f0]
    rra
    rst $38
    ldh [$e0], a
    add d
    ldh [$88], a
    rst $30
    rst $38
    adc a
    ld hl, sp-$49
    ldh [rIE], a
    rst $38
    add b
    rst $38
    db $eb
    ld a, a
    ld a, a
    db $10
    jp $868f


    ret nz

    add b
    add b
    rst $38
    rlca
    rst $38
    nop
    nop
    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    ld [$01f9], a
    cp $e0
    or b
    pop hl
    rlca
    jr jr_011_5e0a

    ldh [$7f], a
    rst $20
    add b
    rst $38
    nop
    cp $e0
    xor b
    ld [c], a
    add b
    ld [hl], b
    ret nz

    sbc a
    ccf
    ld hl, sp+$27
    cp $01
    xor $e0
    sub b
    db $ec
    add b
    rst $38
    ld c, $03
    ld c, $03
    inc c
    rlca

jr_011_5e0a:
    inc c
    rlca
    db $fd
    db $f4
    cp $e0
    ld a, [c]
    inc bc
    di
    inc bc
    nop
    rst $38
    rst $38
    ld bc, $03ff
    cp $83
    cp $87
    db $fc
    cp $fe
    pop hl
    ld c, a
    ld hl, sp-$40
    rst $38
    ld hl, sp+$3f
    db $fc
    ld a, a
    rlca
    cp $03
    cp $13
    cp $63
    ld a, [$e9e0]
    inc bc
    or h
    pop hl
    cp $e1
    ld c, a
    cp $e0
    adc a
    add b
    adc a
    ld e, a
    add b
    di
    ld [bc], a
    di
    inc bc
    db $fc
    ldh [rSC], a
    add h
    push hl
    rst $38
    rst $08
    ld hl, sp-$11
    inc a
    rst $28
    cp c
    rst $38
    ld e, b
    rst $38
    db $fc
    bit 7, l
    ld [c], a
    cp $91
    rst $38
    ld a, h
    rst $28
    rst $38
    dec a
    rst $38
    ld c, d
    ld [hl], a
    ldh [rTIMA], a
    ld a, a
    add a
    cp a
    ld a, l
    adc a
    rst $38
    ld [de], a
    rst $38
    ld a, h
    call z, $8fe1
    ld sp, hl
    add b
    ld c, b
    db $ec
    nop
    db $e4
    pop af
    ld bc, $01f1
    rst $38
    rst $38
    sbc e
    rst $38
    sbc h
    di
    sbc [hl]
    pop af
    sbc a
    ldh a, [rIE]
    sbc a
    di
    sbc a
    rst $38
    rra
    rst $28
    cpl
    rst $38
    rst $38
    or d
    rst $38
    ld [hl-], a
    rst $08
    ld a, d
    adc a
    ld a, [$7f0e]
    ld a, [$face]
    cp $f2
    rst $38
    pop af
    ldh [$cd], a
    cp $84
    pop hl
    rst $30
    inc b
    rst $38
    ld [$0a0f], sp
    rrca
    rst $38
    add hl, bc
    rrca
    inc b
    rrca
    inc bc
    rst $28
    cpl
    rst $18
    rst $38
    ld e, a
    rst $18
    ld e, a
    rst $28
    rst $38
    rst $20
    ld a, a
    pop bc
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    cp $e7
    db $fc
    add a
    rst $08
    db $fd
    rlca
    cp $ff
    nop
    ldh [rWY], a
    pop hl
    rst $08
    ld b, b
    or l
    ldh a, [$fe]
    pop hl
    add b
    cp b
    rst $08
    rst $38
    ld b, c
    cp $e1
    cp $7f
    ld b, d
    ld a, a
    ld b, d
    rst $38
    add d
    rst $38
    add h
    cp $e0
    db $ed
    inc b
    cp $e2
    add h
    db $fc
    cp $e0
    cp $42
    cp $f5
    ld b, d
    add b
    db $d3
    pop af
    add [hl]
    ret nz

    ld bc, $ff01
    rst $38
    rst $28
    nop
    nop
    rst $38
    db $fc
    jp z, $fce0

    ld b, e
    cp $ff
    add d
    cp $fe
    cp $03
    rst $38
    db $fc
    db $fc
    db $db
    cp $7e
    jp z, Jump_011_7ee0

    add [hl]
    xor [hl]
    ret nz

    cp $fe
    rrca
    add e
    rst $38
    ld a, h
    ld a, h
    db $10
    rst $00
    call nc, $d0e0
    ldh [rP1], a
    nop
    nop
    rrc a
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$20
    ld bc, $770f
    inc bc
    rrca
    rrca
    ldh [$ea], a
    add b
    ldh a, [$e0]
    ldh [$e8], a
    call z, $eac8
    cp b
    push hl
    rrca
    ld b, $fe
    ldh [$c8], a
    ldh [$f0], a
    rra
    rst $38
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh a, [$c0]
    db $fc
    cp $e0
    ret z

    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    ei
    rlca
    db $fc
    ret z

    ld a, [c]
    ld bc, $010f
    pop af
    ld bc, $f7ff
    rlca
    ld sp, hl
    rrca
    ei
    rrca
    adc h
    rst $38
    rst $38
    sub d
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld e, $f7
    rst $38
    ld e, $f3
    dec c
    rst $38
    ld b, $ff
    ld h, e
    cp $ff
    sub e
    cp $01
    rst $38
    ld h, c
    rst $38
    pop af
    rst $18
    cp a
    pop af
    sbc a
    ld h, c
    rst $38
    pop bc
    rst $38
    ld h, b
    rst $20
    rst $08
    rst $38
    ret nz

    cpl
    ldh [$af], a
    ldh [$f9], a
    rrca
    db $f4
    rst $38
    rlca
    di
    inc bc
    db $fc
    rrca
    db $10
    rra
    jr nz, @+$01

    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld [$86ff], sp
    rst $38
    rst $38
    add c
    rst $38
    adc h
    rst $38
    ld d, e
    rst $38
    ld b, b
    rst $28
    rst $38
    ld hl, $38ff
    db $fc
    ldh [$c2], a
    rst $38
    inc bc
    rst $38
    rst $38
    ld h, d
    rst $38
    sub h
    rst $38
    inc b
    rst $38
    ld [$f0fe], sp
    ldh [$2f], a
    ldh [rVBK], a
    ret nz

    adc a
    add b
    ld l, a
    rst $38
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc b
    rst $10
    db $fc
    add b
    rst $38
    cp $e1
    ld b, b
    ld d, [hl]
    ldh [$e0], a
    ccf
    rst $38
    ld hl, sp+$1f
    ldh a, [$1f]
    ccf
    rst $28
    ld a, b
    rst $08
    rst $38
    ld a, l
    rst $00
    ld a, a
    jp $c1ff


    ld a, c
    rst $00
    rst $38
    ld a, $e3
    dec a
    ld a, [$eff8]
    inc a
    rst $20
    rst $38
    ld a, h
    rst $00
    db $fc
    add a
    cp $07
    inc a
    rst $00
    cp a
    ld hl, sp-$71
    ld a, b
    cp a
    ld [bc], a
    cp $fe
    pop hl
    inc b
    cp $36
    pop hl
    ld hl, sp+$3f
    ldh a, [$1f]
    ldh a, [$f0]
    rra
    or a
    ld hl, sp+$0f
    ld hl, sp+$7c
    ldh [$0e], a
    inc bc
    ld a, [hl-]
    pop hl
    rrca
    sub c
    ld bc, $e1ec
    ld d, $e2
    adc d
    ldh [$83], a
    ld d, b
    ldh [$ac], a
    pop hl
    ldh [rIE], a
    ccf
    ldh a, [$5f]
    ld hl, sp-$31
    rst $38
    xor a
    rst $38
    ld a, a
    sub e
    rst $38
    rlca
    rra
    ldh a, [$2f]
    ldh [$7c], a
    pop hl
    cp b
    or h
    ret nz

    sbc b
    jp $e2ca


    rrca
    inc bc
    ld a, [c]
    cp $e0
    push af
    cp a
    rlca
    push af
    rlca
    ld b, c
    rst $38
    ld bc, $e050
    rst $08
    ld [hl], l
    rst $38
    rst $38
    ldh [$fe], a
    cp $e0
    db $fc
    rst $38
    dec b
    rst $28
    ldh [$bf], a
    add c
    rst $38
    rst $20
    rst $38
    rst $38
    cp a
    cp $e0
    rst $38
    db $ed
    ld a, a
    ld e, b
    call nz, $8f80
    cp $e0
    rst $08
    ret nz

    rst $08
    ei
    ret nz

    ei
    call z, $f7c0
    rra
    cp $1f
    ld a, [bc]
    sbc $55
    ret nz

    ld hl, sp-$01
    rlca
    rlca
    adc $e0
    db $fc
    rrca
    ei
    cp $07
    ld e, d
    ldh [$fe], a
    cp $03
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    ld a, a
    pop hl
    rst $38
    ret nz

    ld a, [$e01a]
    rst $38
    ld d, $e0
    ld a, a
    ld a, a
    rst $28
    ldh [$ef], a
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$b0]
    ldh [$e0], a
    rra
    ldh [$3f], a
    rst $38
    ret nz

    ret nz

    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret z

    db $e3
    rst $38
    pop af
    ld bc, $070e
    jr jr_011_610b

    jr nz, jr_011_612d

    ei
    ld b, b
    ld a, a
    or b
    pop hl
    rra
    ld e, $e1
    rst $38
    nop
    sbc $fe
    ldh [$08], a
    rst $38
    jr @+$01

    xor b
    db $e4
    add b
    ld a, a
    ld a, a
    ldh a, [$1f]
    db $fc
    dec bc
    rst $38
    add hl, bc
    rst $38

jr_011_610b:
    sub b
    db $ec
    rst $38
    add b
    ld b, b
    ld a, a
    add b
    rst $38
    add c
    rst $38
    ld h, d
    rst $38
    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    pop hl
    rst $38
    ccf
    inc a
    rst $28
    db $76
    rst $18
    push hl
    cp a
    ld b, e
    rst $38
    rst $38
    ld c, [hl]
    rst $38
    sbc a

jr_011_612d:
    pop af
    cp a
    cp $27
    rst $38
    rst $38
    and l
    rst $38
    xor h
    rst $38
    ld a, [hl+]
    rst $38
    ld l, d
    db $eb
    rst $38
    call nc, $e0ae
    add b
    cp $e0
    ld [hl], h
    call nz, $ff3c
    db $ec
    inc a
    db $fc
    ld e, $fe
    rra
    rst $30
    rra
    rst $38
    cp $3f
    db $fc
    cpl
    db $e4
    pop af
    rra
    pop af
    rst $38
    rra
    ld hl, sp+$0f
    db $f4
    rlca
    ld c, $07
    dec c
    rst $38
    rlca
    rrca
    ld b, $0f
    inc b
    inc bc
    rst $38
    ld de, $d8fe
    ld [c], a
    ret nz

    rst $38
    ldh a, [$3f]

jr_011_6170:
    rst $08
    ld a, a
    ret


    rst $28
    ld a, a
    add e
    rst $38
    ld bc, $e078
    inc c
    rst $38
    rra
    rst $38
    di
    ld a, h
    rst $20
    ld hl, sp-$71
    cp $1f
    ld c, a

jr_011_6186:
    db $fd
    ret nz

    cp $e1
    adc a
    add b
    ld [hl], b
    ret nz

    jr nc, jr_011_6170

    cp a
    db $10
    ldh a, [rNR10]
    ldh a, [rIF]
    inc b
    cp $e2
    ld b, $fb
    rst $30
    inc b
    cp $e1
    di
    ld [bc], a
    rst $30
    ld a, $ff
    rst $38
    jr jr_011_6186

    jr nz, jr_011_61b0

    ld hl, sp-$71
    ld [hl], e
    xor a
    rst $38
    ld d, b
    rst $38

jr_011_61b0:
    inc b
    rst $38
    ld [bc], a
    ldh a, [$1f]
    ldh [rIE], a
    ccf
    db $e4
    ccf
    push hl
    ccf
    ld [$f23f], a
    rst $38
    rst $38
    ld_long a, $ff0f
    rlca
    ld [$08f8], sp
    cp a
    ld hl, sp+$18
    ld hl, sp+$04
    db $fc
    rlca
    cp $e0
    ld c, a
    rst $18
    db $fc
    ld b, a
    db $fc
    di
    ld [bc], a
    cp $e2
    inc bc
    ld c, $ff
    inc bc
    rrca
    inc bc
    dec c
    rlca
    dec bc
    rrca
    rst $38
    db $ed
    ld [bc], a
    dec b
    ld [c], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    ei
    rst $38
    ld a, [$0bff]
    pop af
    ld de, $21f1
    ldh a, [rNR41]
    rst $28
    ld a, a
    ldh [$ef], a
    ldh [rIE], a
    pop af
    rst $38
    ld a, [c]
    ret z

    pop hl
    rst $28
    rlca
    db $fc
    add a
    db $fc
    rst $38
    ldh [$a4], a
    db $fc
    sbc h
    cp a
    db $fc
    inc c
    dec bc
    rrca
    rla
    rra
    cp $e1
    ei
    ld [hl], a
    rrca
    push af
    rlca
    cp $e1
    ei
    rst $38
    rst $30
    cp $e2
    rst $28
    ei
    rst $38
    ei
    rst $30
    cp $e0
    rst $38
    rst $38
    ld a, [c]
    rst $38
    rst $38
    db $f4
    rst $38
    push af
    rst $38
    push af
    ld a, [c]
    ld a, [c]
    cp l
    ld hl, sp-$01
    ldh [$fc], a
    db $fc
    cp $02
    cp $e0
    add d
    rst $38
    rst $38
    ld b, c
    ld a, a
    ld d, l
    rst $38
    sub l
    rst $38
    and [hl]
    rst $38
    rst $18
    ret c

    ld sp, hl
    rrca
    rst $38
    rra
    pop hl
    ccf
    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ret nz

    rst $38
    ei
    ccf
    ccf
    ret z

    ldh [rIE], a
    or $ff
    db $fc
    rst $38
    cp l
    ld b, h
    ld a, a
    ldh [rDIV], a
    rst $38
    ei
    ei
    adc $e0
    cp $36
    ld c, c
    ldh [rIE], a
    dec b
    ld l, a
    ldh [rSB], a
    rst $38
    db $f4
    ldh [rNR10], a
    jp nz, $8fff

    add b
    ldh a, [$80]
    nop
    nop
    rst $38
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    db $fc
    ldh [$fb], a
    ret nc

    pop af
    di
    inc bc
    db $fc
    rrca
    db $10
    rra
    cp a
    jr nz, jr_011_62e7

    ld b, h
    ld a, a
    ld b, e
    ld a, a
    or b
    pop hl
    adc a
    rst $38
    add b
    ld l, a
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$04
    rst $30
    db $fc
    add h
    db $fc
    sub b
    db $ed
    ei
    dec de
    db $fc
    daa
    cp $fe
    ldh [rNR22], a
    ld e, $13
    ld a, a
    ld l, a
    rst $38
    xor b
    rst $38
    rst $38
    call nc, $ffc0
    ldh [$bf], a
    ld hl, sp-$61
    rst $38
    rst $38
    add a
    ld a, a
    ldh [$1f], a
    ld hl, sp-$79
    rst $38
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    ld c, $fb
    ld a, $f3

jr_011_62e7:
    rst $38
    cp $c3
    db $fc
    rrca
    ldh a, [$3f]
    jp $ffff


    rra
    cp $8f
    add b
    ld c, a
    ret nz

    cpl
    ldh [$bf], a
    cpl
    ldh [rSVBK], a
    ret nz

    ldh a, [$80]
    ld e, h
    pop hl
    rst $38
    rst $38
    cp b
    ld a, a
    ld l, c
    ccf
    ld [hl-], a
    rrca
    ld a, [bc]
    rst $38
    rst $38
    add hl, bc
    rst $30
    inc b
    di
    ld [bc], a
    pop af
    ld bc, $ffff
    rst $18
    rst $38
    ld d, [hl]
    rst $38
    call z, $40ff
    rst $38
    rst $38
    ld hl, $e0ff
    rst $38
    ld d, e
    rst $38
    sbc b
    rst $38
    rst $38
    or $ff
    push de
    rst $38
    ld h, [hl]
    rst $38
    inc b
    rst $38
    ld a, a
    add hl, bc
    cp $4e
    ld hl, sp-$68
    cp $36
    jr z, @-$1c

    rst $30
    add b
    ldh a, [$80]
    nop
    push af
    rst $30
    sbc h
    di
    sbc a
    rst $38
    ld a, e
    ld c, [hl]
    ccf
    ld h, $ff
    ld [hl+], a
    rst $38
    inc hl
    cp $ba
    ldh [rLCDC], a
    rst $18
    ld [hl], c
    sbc a
    ldh a, [$bf]
    jp hl


    xor e
    rst $38
    jp z, $e0be

    ld b, $fe
    ldh [rTIMA], a
    ld [hl-], a
    pop hl
    adc a
    rst $18
    add b
    rst $08
    ld b, b
    ldh a, [rNR41]
    cp $e0
    db $10
    ldh a, [$cd]
    ret nc

    ret nc

    push bc
    pop af
    ld bc, $e1fe
    ld [hl], b
    ldh [$7f], a
    rst $28
    rst $28
    ld a, h
    add e
    rst $38
    add b
    adc a
    ldh [$03], a
    rst $38
    ld bc, $ffff
    add c
    rst $38
    cp $ff
    db $ec
    ld a, a
    add l
    cp [hl]
    add c
    ldh [rSCY], a
    rst $38
    add l
    rst $38
    dec b
    db $ec
    ldh [$30], a
    rst $38
    ldh a, [$d0]
    ldh a, [$30]
    ldh [$f0], a
    ret nz

    adc a
    db $fc
    ld a, [hl]
    db $e4
    jp nc, $f4c1

    rlca
    ld hl, sp+$0f
    ld [$bf0f], sp
    rrca
    rrca
    ld hl, sp-$01
    rlca
    rlca
    rst $08
    ldh [$84], a
    rst $38
    ld a, a
    db $e4
    rra
    db $fc
    inc d

jr_011_63bb:
    db $fc
    db $fc
    db $fc
    rst $38
    rlca
    rst $38
    ld hl, sp-$08
    cp $fe
    rst $38
    ld b, e
    rst $38
    db $fc
    ld c, a
    ldh a, [$7f]
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    rst $08
    ret nz

    rst $38
    ccf
    ccf
    or d
    pop bc
    cp $c1
    jr nc, jr_011_63bb

    ccf
    ldh [$e0], a
    ccf
    rst $38
    ret nz

    ret nz

    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    db $fc
    ldh [$fb], a
    ret nc

    or $03
    inc c
    rrca
    db $10
    rra
    inc hl
    db $fd
    ccf
    or b
    and $80
    ld [hl], b
    ldh [rNR10], a
    ldh a, [$88]
    db $fd
    ld hl, sp-$80
    ld a, [$1e0d]
    inc de
    ld c, a
    ld a, h
    ld e, a
    rst $38
    ld [hl], b
    ld a, a
    ld h, e
    db $fc
    adc a
    ldh a, [$bf]
    jp $ffff


    rrca
    rst $38
    rst $38
    rst $38
    db $e4
    ld a, h
    db $f4
    rst $38
    inc e
    db $fc
    adc h
    ld a, [hl]
    ld [c], a
    rra
    ld a, [$df87]
    cp $e1
    rst $38
    cp $ff
    ld h, b
    ld [$9060], a
    rst $38
    ldh a, [rNR33]
    rla
    ccf
    daa
    ccf
    ld [hl+], a
    rra
    rst $18
    ld de, $11ff
    rst $38
    add hl, de
    db $fc
    ldh [rNR43], a
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    call z, Call_000_21ff
    rst $38
    rst $38
    jr nz, @+$01

    db $e3
    rst $38
    sub h
    rst $38
    rla
    rst $18
    ld a, a
    rst $38
    rst $38
    db $fd
    cp $77
    rst $38
    add hl, hl
    cp $e0
    rst $38
    adc a
    rst $38
    ld d, e
    rst $38
    ret nc

    ld d, b
    ldh a, [$c8]
    rst $38
    ld hl, sp-$78
    ld hl, sp+$10
    ldh a, [$1f]
    ldh a, [$3f]
    cp $fc
    ldh [rIE], a
    add sp, -$01
    inc hl
    rst $38
    ld b, h
    rst $38
    rst $18
    ld b, b
    rst $38
    ld b, e
    ccf
    inc a
    ld b, $e3
    rst $38
    ld d, $ff
    rst $38
    adc b
    rst $38
    xor a
    rst $38
    and $ff
    ld [hl+], a
    ei
    rst $38
    ld b, e
    add sp, -$20
    ld b, b
    rst $38
    db $d3
    rst $38
    ld [de], a
    rst $38
    rst $38
    ld [$cfff], a
    rst $38
    ld [$04ff], sp
    ld a, [$e2fe]
    adc b
    ret nc

    ldh [rDIV], a
    rst $38
    add h
    ld hl, sp+$78
    or [hl]
    ret z

    set 6, c
    ld bc, $e1fe
    ldh a, [rP1]
    or h
    ldh [$7f], a
    rst $30
    rst $28
    db $fc
    add b
    db $d3
    ldh [$03], a
    rst $38
    ld bc, $fbff
    add a
    rst $38
    jp z, $fce2

    rlca
    cp $02
    cp $ed
    add c
    ldh a, [$e0]
    jp nz, $80fe

    rst $08
    pop af
    ld bc, $fff2
    inc bc
    db $f4
    rlca
    inc c
    rlca
    rlca
    rlca
    db $fc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, a
    ld a, d
    rst $38
    jp nz, $ff3f

    ld [c], a
    rra
    cp $0a
    cp $fe
    cp $03
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    cp h
    rst $38
    add a
    ld hl, sp-$11
    adc a
    ldh a, [rIE]
    and b
    db $f4
    ret nz

    add b
    rst $38
    ld a, a
    db $fd
    ld a, a
    ld h, b
    pop bc
    adc a
    add b
    ld c, a
    ret nz

    ld [hl], b
    ret nz

    ccf
    ret nz

    ret nz

    ld a, a
    rst $38
    add b
    add b
    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    db $ec
    ldh [$fb], a
    ret nc

    db $eb
    or $06
    or b
    and $01
    ld c, $07
    rst $28
    add hl, bc
    rrca
    ld de, $b01f
    push hl
    db $fc
    db $fc
    ei
    rst $18
    xor a
    db $fc
    rlca
    db $fc
    ld d, a
    sub b
    jp hl


    adc a
    add b
    rst $38
    ld c, a
    ret nz

    rst $38
    ld l, c
    rst $38
    sbc c
    rst $38
    adc c
    rst $38
    rst $38
    ld c, c
    ccf
    daa
    ccf
    add hl, sp
    ld a, a
    ld d, b
    rst $30
    rst $38
    xor l
    ld hl, $e0f7
    ld c, e
    ld a, a
    ld d, a
    ld a, [hl]
    rst $38
    rst $38
    ld a, c
    rst $38
    ld a, [c]
    rst $38
    cp d
    rst $38
    ld a, d
    rst $38
    db $fc
    rst $38
    adc a
    rst $38
    cp $ff
    rst $38
    ld d, e
    rst $38
    rst $38
    adc h
    rst $38
    ld d, d
    rst $38
    jp c, $faff

    rst $38

jr_011_6586:
    cpl
    ldh [$2f], a
    ldh [$9f], a
    ldh a, [$5f]
    ldh a, [$fe]
    rst $38
    ldh [rSVBK], a
    ld hl, sp-$18
    db $fc
    db $f4
    rst $38
    sub l
    rst $38
    rst $38
    reti


    rst $38
    and c
    ld a, a
    ld b, b
    rst $38
    inc a
    rst $38
    rst $30
    inc b
    di
    ld [bc], a
    pop af
    ld bc, $32ff
    rst $38
    rst $38
    ld de, $25ff
    rst $38
    and a
    rst $38
    ld h, e
    rst $38
    rst $38
    jr nc, jr_011_6586

    ld a, b
    adc a
    cp $ff
    adc d
    rst $28
    rst $38
    inc b
    rst $38
    dec b
    cp e
    pop hl
    rst $18
    ld hl, sp-$71
    rst $38
    ld hl, sp-$01
    ld [hl], e
    db $fc
    ld h, h
    db $fc
    ld b, h
    db $fc
    rst $30
    inc h
    ld hl, sp+$28
    ld [c], a
    ldh [rLCDC], a
    xor a
    ldh [$1f], a
    db $fd
    ldh a, [rP1]
    db $ed
    adc c
    rst $38
    ld b, h
    ld a, a
    ld h, d
    ld a, a
    rst $30
    ld b, c
    ld a, a
    ret nz

    cp $e2
    rst $38
    ld a, a
    db $fc
    rlca
    rst $38
    ld sp, hl
    rst $38
    ld l, l
    rst $38
    sub d
    rst $38
    jr z, @+$01

    rst $38
    db $10
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $08
    ld hl, sp-$01
    daa
    db $fc
    cpl
    ld a, [$f13f]
    rra
    pop af
    cp a
    ld e, $f2
    inc e
    db $f4
    ld hl, sp-$08
    ret nc

    call Call_011_7dff
    ld b, b
    cp $e0
    jr nz, @+$01

    jr nz, @+$81

    ld b, b
    cp $e1
    di
    rst $38
    add b
    set 4, b
    cp $e1

jr_011_6624:
    inc b
    rst $38
    jr c, @+$01

    ld a, a
    jr nc, @+$01

    ld d, b
    rst $38
    ld d, b
    ldh a, [rNR10]
    cp $e2
    ei
    jr nz, jr_011_6624

    cp $e4
    ldh a, [rP1]
    di
    inc bc
    db $f4
    rst $38
    rlca
    db $f4
    rlca
    inc c
    rlca
    inc bc
    inc bc
    cp $ff
    rst $38
    ld bc, $ff01
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$4d
    ldh [$94], a
    pop hl
    sub b
    pop hl
    rst $38
    ret nc

    rst $38
    ld h, b
    rst $38
    rst $38
    rst $18
    ld [hl], c
    rst $18
    ld d, b
    rst $18
    rst $18
    rst $18
    ld [hl], b
    rst $30
    rst $38
    adc a
    adc a
    ld a, c
    ldh [$78], a
    add a
    db $fc
    inc bc
    rst $38
    cp $02
    cp $fc
    db $fc
    rlca
    rst $38
    ld hl, sp+$01
    ld hl, sp+$00
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    db $fc
    ldh [$fb], a
    ret nc

    rst $30
    rra
    rra
    ld h, b
    ld a, a

jr_011_6692:
    add b
    rst $38
    cp [hl]
    or b
    add sp, -$40
    jr c, jr_011_6692

    ld d, $fe
    add b
    rst $28
    pop af
    push af
    ld bc, $e1fe
    rrca
    cp $e1
    ld [bc], a
    rrca
    dec b
    add b
    db $db
    rst $38
    nop
    cp $e0
    ldh [rIE], a
    rst $38
    ldh [$fc], a
    rst $38
    rst $38
    ld a, c
    rst $38
    cp b
    ccf
    db $eb
    ld a, a
    ret


    ld a, a
    rst $28
    push de
    rst $38
    rst $38
    ld [hl+], a
    xor $e1
    add e
    rst $38
    add $ef
    rrca
    nop
    adc a
    add b
    cp $e1
    ldh a, [$80]
    ld [hl], b
    ld a, a
    ret nz

    ldh a, [$c0]
    ldh a, [$80]
    rrca
    inc b
    cp $e2
    ld sp, hl
    ld [bc], a
    cp d
    pop hl
    ld c, h
    pop hl
    rst $38
    ld e, l
    rst $38
    db $dd
    rst $38
    db $fd
    ld e, c
    cp e
    ld [c], a
    pop bc
    rst $38
    db $e3
    sbc a
    ldh a, [rIE]
    ld a, a
    add hl, hl
    rst $38
    xor l
    rst $38
    xor a
    rst $38
    ret nz

    xor e
    ld [c], a
    rst $08
    ldh a, [rIE]
    ld a, a
    ldh a, [$c6]
    ldh [$fc], a
    pop hl
    rst $08
    ld b, b
    di
    rst $08
    ld b, b
    or [hl]
    pop hl
    add d
    pop hl
    ld a, [c]
    inc bc
    ld a, [c]
    inc bc
    push af
    ld c, $fe
    ldh [rIF], a
    cp $e0
    rra
    ld hl, sp+$17
    cp $ff
    add hl, bc
    rst $38
    rrca
    rst $38
    dec e
    rst $30
    ccf
    db $e3
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    adc a
    cp $0b
    rst $38
    rst $38
    sub e
    rst $38
    ld h, a
    cp $0b
    cp $87
    rst $28
    cp $03
    rst $38
    rlca
    add b
    pop hl
    ld c, a
    ret nz

    ld c, a
    rst $38
    ret nz

    or b
    ldh [$f0], a
    ldh [$f0], a
    and b
    ldh a, [$f1]
    and b
    ld c, h
    ldh [$fe], a
    pop hl
    inc a
    ld [c], a
    pop af
    ld bc, $02f3
    xor [hl]
    ld b, l
    ldh [rNR23], a
    rst $38
    rlca
    dec sp
    ldh [rSB], a
    scf
    ld [c], a
    nop
    rst $38
    rst $38
    ld [$70ff], sp
    rst $38
    add b
    rst $38
    ld hl, $72fa
    ldh [$81], a
    cp $e1
    ldh a, [$e0]
    or b
    ldh [$d0], a
    ld a, a
    ldh a, [$50]
    ldh a, [$2f]
    ldh [$cf], a
    ret nz

    sub h
    pop bc
    rst $38
    di
    ld [bc], a
    di
    ld [bc], a
    rst $30
    dec b
    or $07
    ld a, a
    ld c, $03
    inc bc
    inc bc
    cp $ff
    ld bc, $e1ca

jr_011_6793:
    cpl
    rra
    ldh [rIE], a
    jr nz, jr_011_6793

    ret nz

    rst $38
    db $fc
    ld [c], a
    call nz, $bfe0
    inc bc
    db $fc
    rst $38
    ld c, b
    rst $38
    ld b, b
    push af
    ld [c], a
    ld a, a
    rst $38
    ld a, a
    adc a
    add b
    rst $08
    ret nz

    cpl
    ldh [$1f], a
    rst $38
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$3f], a
    rst $38
    ret nz

    ld bc, $00c0
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    push af
    rst $38
    rst $30
    rlca
    rst $38
    dec e
    rst $20
    ld a, l
    add a
    db $fc
    cp $a8
    push hl
    rst $08
    ret nz

    ccf
    ldh a, [$8f]
    db $fc
    jp Jump_011_7ee5


    ret z

    xor $01
    cp $e2
    add b
    ldh [$f1], a
    ld bc, $fff3
    ld [bc], a
    di
    ld [bc], a
    rrca
    rst $38
    inc a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    call z, $d2ff
    rst $38
    rst $38
    ld d, [hl]
    rst $38
    rst $10
    pop hl
    rst $38
    ld a, c
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    sbc [hl]
    cp $66
    rst $38
    sub a
    rst $38
    rst $30
    call nc, $d6ff
    ld h, b
    jp hl


    cp a
    cp b
    rst $20
    db $fc
    or $cc
    pop hl
    pop af
    ld bc, $e750
    rst $38
    inc [hl]
    rst $38
    jr z, @+$01

    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    ld a, $ff
    inc h
    rst $38
    rst $38
    inc de
    rst $38
    db $10
    rst $38
    ld d, h
    rst $38
    add hl, hl
    ei
    rst $38
    ld a, a
    ldh a, [$e0]
    ld sp, hl
    rst $38
    ld c, c
    rst $38
    sub c
    rst $38
    rst $38
    ld [de], a
    xor e
    cp $51
    rst $38
    dec [hl]
    rst $38
    rst $38
    dec e
    rst $38
    ld hl, $82ff
    cp $1c
    db $fc
    ei
    ret z

    ld hl, sp+$00
    db $eb
    pop af
    ld bc, $09ff
    rst $38
    rst $38
    ld [$0cff], sp
    di
    rra
    ld sp, $4e3f
    rst $38
    ld a, a
    and d
    rst $38
    ld [hl+], a
    rst $38
    rst $28
    inc h
    db $eb
    rst $28
    ld l, $f1
    ld a, a
    adc b
    or a
    ldh [$e1], a
    rst $38
    adc d
    rst $38
    cp $8c
    db $fc
    ldh a, [$30]
    ldh a, [rNR41]
    ldh a, [$df]
    ld b, b
    ldh a, [$80]
    adc a
    add b
    add $c3
    pop af
    ld bc, $f2ff
    inc bc
    di
    inc bc
    rst $30
    inc b
    rrca
    inc b
    rst $38
    rrca
    ld [$111f], sp
    rra
    db $10
    ld b, e
    rst $38
    rra
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    cp $e0
    ld a, h
    ldh [$f9], a
    ldh [$f7], a
    add h
    db $fc
    inc b
    cp $e0
    ld [bc], a
    cp $03
    cp $bf
    rst $38
    cp $ff
    ld [bc], a
    rst $38
    ld [bc], a
    sub b
    call Call_011_7f1f
    inc d
    rra
    inc de
    rrca
    add hl, bc
    rrca
    ld b, $00
    pop hl
    db $fc
    cp $c1
    jp Jump_011_40e0


    rst $38
    add h
    rst $38
    add e
    rst $38
    xor c
    add c
    jp nc, $cee1

    ldh [rDIV], a
    cp $e0
    ld b, d
    ld d, e
    ldh [rSC], a
    xor $ee
    ldh [$81], a
    rst $38
    add b
    ld h, b
    res 1, a
    add b
    di
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    jr nz, @+$01

    ccf
    ccf
    ccf
    ldh a, [rIE]
    rrca
    rrca
    rst $38
    rst $38
    add d
    ld a, a
    pop hl
    rra
    pop af
    rra
    cp $04
    rst $38
    db $fc
    db $fc
    db $fc
    rlca
    rst $38
    ld hl, sp-$08
    rst $38
    db $fd
    add e
    ldh [$e1], a
    ldh a, [rIE]
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ret nz

    rst $38
    ccf
    ccf
    adc a
    add b
    ld l, a
    ldh [rIE], a
    rra
    ldh a, [rIF]
    ld hl, sp+$08
    ld hl, sp-$08
    ld hl, sp+$0f
    rra
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $30
    cp a
    pop af
    ld bc, $07f6
    db $fc
    ld a, a
    or b
    rst $20
    rst $38
    rst $18
    db $fc
    ld a, e
    rst $08
    ld hl, sp-$61
    sub b
    db $ec
    ret nz

    rrca
    rst $38
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b
    rst $30
    rst $30
    inc b
    rst $30
    dec b
    db $fc
    ldh [rDIV], a
    rst $38
    sub e
    db $fd
    rst $38
    ld c, a
    ei

jr_011_696c:
    cpl
    rst $38
    cp [hl]
    rst $38
    ld l, [hl]
    rst $38
    rst $38
    ld c, c
    rst $38
    sbc l
    rst $38
    dec a
    db $fc
    rst $20
    inc a
    rst $38
    rst $38
    sub h
    rst $38
    ld_long a, $ff7f
    rra
    rst $38
    rst $38
    add hl, bc
    rst $38
    ld h, h
    rst $38
    sub c
    jr nc, jr_011_696c

    db $10
    rst $38
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$0f
    ld hl, sp-$71
    ld e, a
    ld hl, sp-$31
    ld hl, sp-$01
    ldh a, [$ce]
    ldh [$08], a
    and $e0
    ei
    db $10
    rra
    cp $e0
    rrca
    ld [$080f], sp
    rst $38
    rst $30
    ld b, [hl]
    rst $38
    add b
    cp $e0
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    sbc a
    di
    sbc a
    db $fc
    rst $38
    pop de
    rst $38
    ld a, a
    db $d3
    rst $38
    ld h, a
    rst $38
    add [hl]
    rst $38
    add c
    cp $e0
    rst $18
    inc b
    rst $38
    rlca
    rst $28
    ldh [$fe], a
    ldh [rNR41], a
    rst $38
    rst $38
    ret nc

    ldh a, [$90]
    ldh a, [rNR41]
    ldh a, [rLCDC]
    ldh a, [rPCM34]
    add b
    rrca
    dec b
    add d
    ldh [rSB], a
    rrca
    ld bc, $e500
    rst $30
    ccf
    ld [c], a
    rra
    and h
    ldh [rNR22], a
    db $fc
    sub e
    rst $38
    rst $30
    ld c, [hl]
    ld a, a
    ld b, l
    cp $e0
    rst $38
    ld [$1cf7], sp
    rst $38
    rst $20
    ld a, a
    adc b
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    ld sp, hl
    nop
    sub l
    ldh [$d8], a
    call nz, Call_011_4f80
    ret nz

    cpl
    ldh [$2f], a
    cpl
    ldh [$7f], a
    ret nc

    ret z

    jp $bef1


    ldh [$fe], a
    db $e3
    push bc
    add [hl]
    add c
    ld [c], a
    nop
    call nc, Call_011_7ee0
    ldh [$f9], a
    ldh [$08], a
    rst $38
    rst $38
    rlca
    rst $38
    dec b
    db $fd
    rra
    rst $38
    ld h, c
    rst $38
    cp a
    ret nz

    rst $38
    ld a, [c]
    ccf
    pop af
    rra
    or a
    ldh [$08], a
    cp a
    rst $38
    adc b
    rst $38
    ld [$08f8], sp
    ld a, [hl]
    ldh [$a0], a
    ld hl, sp+$00
    ldh [$80], a
    call z, $e242
    adc b
    rst $38
    ld b, a
    ld a, a
    ld b, c
    rst $38
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    pop hl
    ccf
    rst $38
    push bc
    ld a, a
    db $eb
    ld a, $ff
    ld e, $fe
    ld [bc], a
    ld a, [$e23e]
    ld b, b
    ld h, b
    res 1, a
    add b
    ldh a, [rP1]
    di
    rst $28
    inc bc
    db $f4
    rlca
    ld hl, sp+$05
    ldh [rIF], a
    rrca
    ld hl, sp-$01
    rst $38
    rlca
    rlca
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    di
    ld hl, sp+$17
    add b
    ld [c], a
    ld a, h
    ld [c], a
    ld e, h
    db $e3
    cp [hl]
    pop bc
    ld a, [$c2ed]
    rst $38
    rst $20
    ret nz

    ld a, a
    ld a, a
    rst $08
    ld b, b
    rst $28
    db $fd

jr_011_6a97:
    jr nz, jr_011_6a97

    ldh [$e0], a
    or b
    ldh [rLCDC], a
    ret nz

    ld a, a
    rlca
    rst $38
    add b
    add b
    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    db $fc
    ldh [$fb], a
    ret nc

    or $07
    dec de
    inc e
    cpl
    ld sp, $fd4f
    ld [hl], l
    or b
    and $e0
    ld e, b
    cp b
    db $e4
    ld e, h
    ld [c], a
    db $fd
    ld e, [hl]
    add b
    rst $28
    rst $30
    rlca
    rst $38
    add hl, de
    cp $27
    rst $38
    ld a, [hl]
    ld b, e
    ld a, [hl]
    ld c, e
    ld a, a
    ld d, a
    ld a, [hl]
    ld d, e
    rst $38
    ld c, a
    ld [hl], a
    sub a
    ld_long a, $ff9f
    jr nc, @+$01

    rst $38
    ld b, b
    rst $38
    sbc a
    rst $38
    cp a
    cp $ff
    di
    rst $38
    pop hl
    rst $18
    pop de
    cp a
    ld hl, sp-$01
    inc b
    rst $38
    cp e
    ld a, $ff
    rst $38
    ldh [rOCPD], a
    rst $38
    ld b, l
    ld h, b
    pop hl
    rst $08
    rst $38
    ret nz

    cpl
    ldh [$38], a
    add sp, $3c
    db $f4
    db $fc
    rst $38
    db $e4
    db $fc
    call nc, $b5ff
    rst $38
    sub e
    ld a, a
    rst $38
    ld c, e
    ld a, a
    ld l, l
    rst $18
    ld a, c
    rst $08
    ld a, d
    rst $00
    rst $38
    ld a, [hl]
    db $e3
    ld a, $7f
    push de
    ld a, a
    rst $18
    ld a, [$cfff]
    ldh a, [rIE]
    ld hl, sp+$3f
    cp $5f
    rst $38
    rst $38
    ld d, a
    rst $38
    ld h, h
    rst $38
    push de
    ld a, a
    push af
    cpl
    rst $38
    ld sp, hl
    rlca
    rst $38
    rrca

jr_011_6b3e:
    cp $3f
    db $fd
    rst $38
    rst $38
    push af
    rst $38
    sub e
    ld a, h
    db $e4
    ld a, h
    db $e4
    ld hl, sp-$01
    ret z

    ld hl, sp-$28
    rst $38
    ld c, b
    rst $38
    jr z, @+$01

    rst $38
    jr c, jr_011_6b3e

    inc a
    pop hl
    ccf
    db $e3
    ccf
    rst $30
    rst $28
    rra
    rst $30
    rra
    rrca
    rst $38
    ldh [$1f], a
    inc de
    rra
    db $fd
    inc de
    add l
    ldh [$8e], a
    rst $38
    pop bc
    rst $38
    ldh a, [$8f]
    rst $28
    ld hl, sp+$07
    rst $38
    jp $e18c


    add [hl]
    rst $38
    jr c, jr_011_6bfb

    rst $38
    pop bc
    cp $07
    db $fc
    adc a
    db $fd
    ld a, [hl]
    pop hl
    rst $38
    sbc h
    jp $837e


    cp $01
    rst $38
    ld b, c
    rst $38
    rst $38
    pop hl
    rst $38
    ld sp, hl
    rra
    db $fd
    rst $00
    rst $38
    ld e, e
    inc hl
    ccf
    rst $38
    db $e4
    rst $38
    rra
    cp $e0
    rrca
    inc [hl]
    ldh [$fe], a
    rst $38
    db $ed
    sbc b
    rst $38
    or $ff
    db $e4
    rst $38
    add sp, -$41
    rst $38
    pop af
    rst $38
    cp $ff
    db $fc
    dec sp
    ldh [rSB], a
    rst $38
    rst $38
    ld h, l
    cp $32
    cp $12
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld b, d
    rst $38
    sub h
    rst $38
    inc l
    rst $30
    rlca
    rst $38
    rst $30
    rlca
    di
    inc sp
    call z, Call_011_427f
    ld a, a
    cp a
    ld b, b
    ld a, a
    ldh [rIE], a
    rra
    rra
    ret nz

    ld [c], a
    db $fc
    rst $38
    ld a, a
    ld hl, sp+$3c
    db $fc
    ld [bc], a
    cp $43
    rst $38
    db $fd
    db $fc
    adc $e1
    rst $38
    rst $38
    rra
    rst $30
    rlca
    ld c, $ff
    rlca
    ld [$f90f], sp
    rst $38
    rlca
    rlca
    rst $38
    cp l
    ld hl, sp-$02

jr_011_6bfb:
    ldh [$fc], a
    sbc e
    cp $61
    or a
    ldh [rSB], a
    rlca
    rst $38
    cp $fe
    nop
    nop
    nop
    dec bc
    rrca
    nop
    cp $e3
    ldh a, [$fe]
    db $ec
    add sp, -$1b
    ldh [$fd], a
    ret nc

    rst $38
    db $fc
    ldh [$fb], a
    ret nc

    or $03
    inc c
    rrca
    inc de
    inc e

jr_011_6c22:
    daa
    db $fd
    dec sp
    or b
    and $e0
    jr jr_011_6c22

    ld d, h
    xor h
    ld a, [$56fd]
    add b
    di
    rst $30
    rlca
    add hl, bc
    rrca
    ld a, b
    ld a, a
    rst $38
    db $fc
    adc a
    cp $83
    ld b, e
    ld a, l
    add l
    cp $ff
    add a
    rst $38
    jr @+$01

    ld l, $ff
    ccf
    rst $38
    rst $38
    ld a, a
    ld sp, hl
    ld a, a
    ret nc

    db $fd
    cp e
    ld sp, hl
    rst $30
    rst $38
    dec c
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    rst $38
    ld e, a
    rst $28
    rst $38
    push de
    rst $38
    db $eb
    ld h, b
    pop hl
    cpl
    jr nz, jr_011_6ce4

    rst $38
    ld d, b
    ldh a, [$90]
    ld [hl], b
    ret nc

    ldh a, [$d0]
    ldh a, [rIE]
    jr nz, jr_011_6cf0

    ld c, c
    ccf
    dec h
    rra
    inc de
    rrca
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $30
    inc b
    rst $30
    rst $38
    rlca
    rst $38
    jp nc, $c97f

    cp a
    rst $20
    ld a, a
    rst $38
    db $fd
    sbc a
    rst $38
    rst $38
    ld h, a
    rst $38
    adc h
    rst $38
    rst $38
    adc [hl]
    rst $38
    or e
    rst $08
    cp $05
    rst $38
    ld b, c
    rst $38
    rst $38
    db $e3
    rst $38
    rst $38
    db $fd
    rst $38
    and [hl]
    rst $38
    rst $38
    add hl, de
    ld hl, sp-$58
    ldh a, [rSVBK]
    ldh a, [$60]
    ldh a, [rIE]
    ret nc

    rst $38
    sub b
    rst $38
    db $10
    rst $28
    jr nz, @+$01

    rst $38
    ld [hl], b
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    rst $38
    ld a, a
    add b
    rst $38
    sbc [hl]
    rst $38
    rst $38
    pop hl
    rst $38
    rst $38
    add b
    rst $38
    adc h
    ld a, a
    jp $e43f


    ccf
    rst $30
    cp $1f
    rst $38
    cp [hl]
    ldh [rIE], a
    rst $38
    ld a, c
    rst $38
    db $fd
    ld h, b
    db $ec
    ldh [$09], a
    rst $38
    rra
    ldh [rIE], a

jr_011_6ce4:
    nop
    ei
    rst $38
    pop bc
    xor $e0
    rst $08
    ld hl, sp-$19
    db $fc
    rst $30
    rst $38

jr_011_6cf0:
    db $fc
    ei
    cp $7a
    cp $7f
    rst $20
    rst $38
    db $dd
    push hl
    db $dd
    ldh [$b1], a
    ld a, a
    ld b, b
    jp z, $94e0

    rst $38
    db $fd
    xor d
    call nz, $c0e0
    rst $38
    ld l, d
    rst $38
    cp c
    rst $38
    dec h
    ld a, a
    ld b, l
    ldh [$1f], a
    ld d, d
    ldh [$bf], a
    pop hl
    ld a, a
    cp e
    pop hl
    db $fc
    ld [$fdbd], a
    cp $e1
    cp $fe
    rst $38
    db $fc
    cp $e0
    ld hl, sp-$02
    add hl, hl
    ldh [$1f], a
    rst $30
    rlca
    rst $30
    rlca
    ld sp, hl
    rst $08
    or a
    cp h
    rst $38
    sub d
    pop bc
    ldh [$3f], a
    ccf
    ret nc

    ld [c], a
    cp $ff
    rst $38
    ld hl, sp+$70
    ldh a, [$08]
    ld hl, sp+$0f
    rst $38
    ei
    ldh a, [$f0]
    ret nz

    ld [c], a
    rra
    rst $38
    rrca
    ld c, $0f
    sbc a
    db $10
    rra
    pop af
    rst $38
    rrca
    db $ed
    ldh [$fe], a
    pop hl
    cpl
    ld l, a
    ld [c], a
    ld a, l
    rst $38
    ld de, $c0ea
    db $fc
    db $fc
    nop
    nop
    nop

Call_011_6d65:
    ld a, [$d332]
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_011_6d65
    ld h, a
    ld l, $00
    ld de, $a000
    call Call_011_6e1e
    xor a
    call Call_011_6d8f
    ld a, $0f
    ld hl, $6e3e
    call Call_000_23e8
    ret


    ld hl, $6e3e
    call Call_000_2449
    ret


Call_011_6d8f:
    push hl
    push bc
    ld b, a
    ld a, [$d329]
    ld h, $00
    ld l, a
    ld de, $6dee
    add hl, de
    ld c, [hl]
    ld a, b
    and $03
    add a
    ld h, $00
    ld l, a
    ld a, [$d32a]
    cp $02
    jr nz, jr_011_6dac

    inc hl

jr_011_6dac:
    ld de, $6dfe
    add hl, de
    ld a, [hl]
    add c
    pop bc
    push af
    call Call_011_6d65
    ld h, $00
    ld l, a
    add hl, hl
    ld de, $6ecd
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    add a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$d462], a
    ld a, h
    ld [$d463], a
    xor a
    ld [$d464], a
    ld [$d467], a
    inc a
    ld [$d466], a
    ld a, $ff
    ld [$d465], a
    ld a, [$d443]
    cp $04
    jr nz, jr_011_6dec

jr_011_6dec:
    pop hl
    ret


    db $00, $00, $00, $08

    ld [$0808], sp
    ld [$1010], sp
    db $10

    db $10, $10, $18

    jr jr_011_6e16

    db $00, $00, $01, $02, $03, $04, $05

    ld b, $07
    rlca

Call_011_6e08:
    ld a, l
    push af
    push de
    ld l, h
    ld h, $00
    add hl, hl
    ld de, $6eef
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_011_6e16:
    pop de
    ld c, $10
    pop af
    call Call_000_06f1
    ret


Call_011_6e1e:
    ld a, l
    push af
    push de
    ld l, h
    ld h, $00
    add hl, hl
    ld de, $6eef
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld c, $10
    pop af
    call Call_000_071d
    ret


jr_011_6e34:
    call Call_000_2e3b
    ld a, [$d464]
    or a
    jr z, jr_011_6e34

    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d466]
    dec a
    ld [$d466], a
    jr nz, jr_011_6e99

jr_011_6e4d:
    ld a, [$d465]
    inc a
    ld [$d465], a
    ld d, $00
    ld e, a
    ld hl, $d462
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    cp $fe
    jr nz, jr_011_6e6b

    ld a, $01
    ld [$d464], a
    jr jr_011_6e4d

jr_011_6e6b:
    cp $ff
    jr nz, jr_011_6e82

    ld a, $01
    ld [$d464], a
    ld a, $ff
    ld [$d466], a
    ld a, [$d465]
    dec a
    ld [$d465], a
    jr jr_011_6e99

jr_011_6e82:
    ld [$d467], a
    ld a, [hl]
    ld [$d466], a
    call Call_011_6d65
    ld h, a
    ld a, [$d467]
    ld l, a
    ld de, $a000
    ld c, $10
    call Call_011_6e08

jr_011_6e99:
    call Call_011_6d65
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $6f0f
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d467]
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $507c
    ld bc, $0c00
    ld a, [$d333]
    or a
    jr z, jr_011_6ec0

    set 5, b

jr_011_6ec0:
    ld a, [$c835]
    and $01
    jr z, jr_011_6ec9

    set 0, b

jr_011_6ec9:
    call Call_000_26ea
    ret


    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    ld l, a

    db $2f, $6f

    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    ld l, a

    db $2f, $6f, $2f, $6f

    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    ld l, a
    nop
    inc d
    inc b
    inc d
    ld b, $14

    db $02, $14

    ld [$0a14], sp
    inc d
    inc c
    inc d
    ld c, $14

    db $04, $15, $06, $15

    ld [$0415], sp
    dec d
    inc b
    dec d
    inc b
    dec d
    inc b
    dec d
    inc b
    dec d
    ccf
    ld [hl], b
    ld hl, $1e72
    ld [hl], e

    db $34, $71

    inc sp
    ld [hl], h
    inc l
    ld [hl], l
    ld b, l
    db $76
    ld d, d
    ld [hl], a

    db $6f, $78, $88, $79

    add c
    ld a, d
    ld l, a
    ld a, b
    ld l, a
    ld a, b
    ld l, a
    ld a, b
    ld l, a
    ld a, b
    ld l, a
    ld a, b

    db $67, $6f, $6a, $6f

    ld [hl], e
    ld l, a

    db $7a, $6f

    adc c
    ld l, a
    sub [hl]
    ld l, a
    sbc a
    ld l, a
    and h
    ld l, a

    db $a7, $6f, $aa, $6f

    or e
    ld l, a

    db $ba, $6f

    ret


    ld l, a
    sub $6f
    rst $18
    ld l, a
    db $e4
    ld l, a

    db $a7, $6f, $aa, $6f, $b3, $6f, $ba, $6f, $c9, $6f, $d6, $6f

    rst $18
    ld l, a
    db $e4
    ld l, a
    ld h, a
    ld l, a

    db $67, $6f

    ld h, a
    ld l, a

    db $67, $6f, $00, $ff

    rst $38

    db $00, $48, $01, $08, $02, $0c, $03, $ff

    rst $38
    nop
    ld d, l
    ld bc, $020f
    rst $38
    rst $38

    db $04, $14, $03, $06, $02, $05, $fe

    db $01

    db $05, $04, $07, $06, $08, $ff

    rst $38
    ld [bc], a
    ld a, [bc]
    ld bc, $fe06
    ld bc, $0405
    ld b, $08
    rlca
    rst $38
    rst $38
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld bc, $000a
    rst $38
    rst $38
    ld bc, $000f
    rst $38
    rst $38
    nop
    rst $38
    rst $38

    db $09, $ff

    rst $38

    db $09, $48, $01, $08, $02, $0c, $03, $ff

    rst $38

    db $09, $55, $01, $0f, $02, $ff

    rst $38

    db $04, $10, $03, $06, $02, $05, $fe

    db $01

    db $0a, $04, $07, $06, $08, $ff

    rst $38

    db $02, $08, $01, $06, $fe

    db $01

    db $0a, $04, $06, $08, $07, $ff

    rst $38

    db $03, $08, $02, $08, $01, $08, $09, $ff

    rst $38
    ld bc, $090c
    rst $38
    rst $38
    add hl, bc
    rst $38
    rst $38
    cp [hl]
    ld [hl+], a
    rst $38
    ld l, e
    rst $18
    jr jr_011_6fee

jr_011_6fee:
    nop
    ld a, a
    ld [hl-], a
    rst $18
    ld e, a
    sbc a
    ld bc, $0000
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
    ccf
    ld c, d
    rst $38
    ld l, e
    rst $18
    jr jr_011_7016

jr_011_7016:
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
    ccf
    ld c, d
    rst $18
    ld e, a
    rst $38
    jr nz, jr_011_702e

jr_011_702e:
    nop
    ld a, b
    ld a, [hl-]
    rst $18
    ld e, e
    add b
    ld [de], a
    nop
    nop
    ld a, a
    ld [hl-], a
    rst $18
    ld e, a
    sbc a
    ld bc, $0000
    ld d, l
    ld [hl], b
    ld l, d
    ld [hl], b
    ld a, e
    ld [hl], b
    adc h
    ld [hl], b
    and l
    ld [hl], b
    cp [hl]
    ld [hl], b
    db $d3
    ld [hl], b
    db $e4
    ld [hl], b
    ld sp, hl
    ld [hl], b
    ld a, [bc]
    ld [hl], c
    rra
    ld [hl], c
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld [bc], a
    db $eb
    ld [bc], a
    nop
    ld a, [c]
    di
    inc b
    nop
    ld [bc], a
    di
    ld b, $00
    ld a, [c]
    ei
    ld [$0200], sp
    ei
    ld a, [bc]
    nop
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld [bc], a
    db $eb
    ld [bc], a
    nop
    ld a, [c]
    di
    inc b
    nop
    ld [bc], a
    di
    ld b, $00
    ld a, [c]
    ei
    ld [$0200], sp
    ei
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp

    db $4a, $71, $5f, $71, $70, $71, $81, $71, $96, $71, $ab, $71

    ret nz

    ld [hl], c

    db $d1, $71, $e6, $71, $f7, $71, $0c, $72, $f2, $f3, $00, $00, $02, $f3, $02, $00
    db $f2, $fb, $04, $00, $02, $fb, $06, $00, $02, $03, $08, $00, $80, $f2, $f3, $00
    db $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $80, $f2, $f3
    db $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $80, $f2
    db $eb, $00, $00, $f2, $f3, $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00, $02
    db $fb, $08, $00, $80, $f2, $eb, $00, $00, $f2, $f3, $02, $00, $02, $f3, $04, $00
    db $f2, $fb, $06, $00, $02, $fb, $08, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02
    db $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $02, $03, $08, $00, $80

    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b

    db $f2, $eb, $00, $00, $f2, $f3, $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00
    db $02, $fb, $08, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04
    db $00, $02, $fb, $06, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb
    db $04, $00, $02, $fb, $06, $00, $02, $03, $08, $00, $80, $f2, $f3, $00, $00, $02
    db $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $02, $03, $08, $00, $80

    scf
    ld [hl], d
    ld c, h
    ld [hl], d
    ld e, l
    ld [hl], d
    ld l, [hl]
    ld [hl], d
    add a
    ld [hl], d
    sbc h
    ld [hl], d
    or l
    ld [hl], d
    jp z, $df72

    ld [hl], d
    ldh a, [$72]
    dec b
    ld [hl], e
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld [bc], a
    db $eb
    ld [bc], a
    nop
    ld a, [c]
    di
    inc b
    nop
    ld [bc], a
    di
    ld b, $00
    ld a, [c]
    ei
    ld [$0200], sp
    ei
    ld a, [bc]
    nop
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    inc [hl]
    ld [hl], e
    ld c, l
    ld [hl], e
    ld h, d
    ld [hl], e
    ld [hl], a
    ld [hl], e
    sub b
    ld [hl], e
    xor c
    ld [hl], e
    jp nz, $d773

    ld [hl], e
    ldh a, [$73]
    ld bc, $1a74
    ld [hl], h
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$f200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$f200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$f200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld c, c
    ld [hl], h
    ld e, [hl]
    ld [hl], h
    ld l, a
    ld [hl], h
    add h
    ld [hl], h
    sbc l
    ld [hl], h
    or d
    ld [hl], h
    rst $00
    ld [hl], h
    ret c

    ld [hl], h
    db $ed
    ld [hl], h
    ld [bc], a
    ld [hl], l
    rla
    ld [hl], l
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld [bc], a
    db $eb
    ld [bc], a
    nop
    ld a, [c]
    di
    inc b
    nop
    ld [bc], a
    di
    ld b, $00
    ld a, [c]
    ei
    ld [$0200], sp
    ei
    ld a, [bc]
    nop
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld b, d
    ld [hl], l
    ld e, e
    ld [hl], l
    ld [hl], b
    ld [hl], l
    add l
    ld [hl], l
    sbc d
    ld [hl], l
    or e
    ld [hl], l
    call z, $e575
    ld [hl], l
    cp $75
    inc de
    db $76
    inc l
    db $76
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$f200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$f200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld e, e
    db $76
    ld [hl], h
    db $76
    adc c
    db $76
    sbc [hl]
    db $76
    or e
    db $76
    ret z

    db $76
    pop hl
    db $76
    or $76
    dec bc
    ld [hl], a
    jr nz, jr_011_76d0

    add hl, sp
    ld [hl], a
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop

jr_011_76d0:
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld [bc], a
    inc bc
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld l, b
    ld [hl], a
    add c
    ld [hl], a
    sub [hl]
    ld [hl], a
    xor e
    ld [hl], a
    call nz, $dd77
    ld [hl], a
    or $77
    rrca
    ld a, b
    jr z, jr_011_77dc

    dec a
    ld a, b
    ld d, [hl]
    ld a, b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$f200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$f200], sp
    inc bc
    ld a, [bc]
    nop

jr_011_77dc:
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$f200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$8000], sp
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b

    db $85, $78, $9e, $78, $b3, $78, $c8, $78, $e1, $78, $fa, $78

    inc de
    ld a, c

    db $28, $79, $41, $79, $56, $79

    ld l, a
    ld a, c

    db $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00
    db $f2, $03, $08, $00, $02, $03, $0a, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02
    db $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $f2, $03, $08, $00, $80, $f2, $f3
    db $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $f2, $03
    db $08, $00, $80, $f2, $eb, $00, $00, $f2, $f3, $02, $00, $02, $f3, $04, $00, $f2
    db $fb, $06, $00, $02, $fb, $08, $00, $f2, $03, $0a, $00, $80, $f2, $eb, $00, $00
    db $f2, $f3, $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00, $02, $fb, $08, $00
    db $f2, $03, $0a, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04
    db $00, $02, $fb, $06, $00, $f2, $03, $08, $00, $02, $03, $0a, $00, $80

    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$8000], sp

    db $f2, $eb, $00, $00, $f2, $f3, $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00
    db $02, $fb, $08, $00, $f2, $03, $0a, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02
    db $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $f2, $03, $08, $00, $80, $f2, $f3
    db $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $f2, $03
    db $08, $00, $02, $03, $0a, $00, $80

    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b

    db $9e, $79, $b3, $79, $c4, $79, $d9, $79, $f2, $79, $07, $7a, $1c, $7a, $2d, $7a
    db $42, $7a, $57, $7a, $6c, $7a, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb
    db $04, $00, $02, $fb, $06, $00, $02, $03, $08, $00, $80, $f2, $f3, $00, $00, $02
    db $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $80, $f2, $eb, $00, $00
    db $f2, $f3, $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00, $02, $fb, $08, $00
    db $80, $f2, $eb, $00, $00, $02, $eb, $02, $00, $f2, $f3, $04, $00, $02, $f3, $06
    db $00, $f2, $fb, $08, $00, $02, $fb, $0a, $00, $80, $f2, $eb, $00, $00, $f2, $f3
    db $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00, $02, $fb, $08, $00, $80, $f2
    db $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $02
    db $03, $08, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00
    db $02, $fb, $06, $00, $80, $f2, $eb, $00, $00, $f2, $f3, $02, $00, $02, $f3, $04
    db $00, $f2, $fb, $06, $00, $02, $fb, $08, $00, $80, $f2, $eb, $00, $00, $f2, $f3
    db $02, $00, $02, $f3, $04, $00, $f2, $fb, $06, $00, $02, $fb, $08, $00, $80, $f2
    db $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00, $02, $fb, $06, $00, $02
    db $03, $08, $00, $80, $f2, $f3, $00, $00, $02, $f3, $02, $00, $f2, $fb, $04, $00
    db $02, $fb, $06, $00, $02, $03, $08, $00, $80

    sub a
    ld a, d
    or b
    ld a, d
    ret


    ld a, d
    ld [c], a
    ld a, d
    inc bc
    ld a, e
    jr nz, jr_011_7b08

    add hl, sp
    ld a, e
    ld d, d
    ld a, e
    ld l, e
    ld a, e
    add h
    ld a, e
    sbc l
    ld a, e
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld [bc], a
    db $eb
    ld [bc], a
    nop
    ld a, [c]
    di
    inc b
    nop
    ld [bc], a
    di
    ld b, $00
    ld a, [c]
    ei
    ld [$0200], sp
    ei
    ld a, [bc]
    nop
    ld a, [c]
    inc bc
    inc c
    nop
    ld [bc], a
    inc bc
    ld c, $00
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]

jr_011_7b08:
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$f200], sp
    inc bc
    ld a, [bc]
    nop
    ld [bc], a
    inc bc
    inc c
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    db $eb
    nop
    nop
    ld a, [c]
    di
    ld [bc], a
    nop
    ld [bc], a
    di
    inc b
    nop
    ld a, [c]
    ei
    ld b, $00
    ld [bc], a
    ei
    ld [$f200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
    add b
    ld a, [c]
    di
    nop
    nop
    ld [bc], a
    di
    ld [bc], a
    nop
    ld a, [c]
    ei
    inc b
    nop
    ld [bc], a
    ei
    ld b, $00
    ld a, [c]
    inc bc
    ld [$0200], sp
    inc bc
    ld a, [bc]
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_011_7dff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_011_7ee0:
Jump_011_7ee0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_011_7ee5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_011_7f1f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
