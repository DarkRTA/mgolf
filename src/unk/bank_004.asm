INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    db $62, $40, $6b, $40, $0d, $41, $39, $41

    ld [$fc41], a
    ld b, c
    ld l, c
    ld c, e
    jp $d845


    ld b, l
    jp hl


    ld b, l
    ld a, c
    ld b, [hl]
    ld [de], a
    ld b, [hl]
    and d
    ld b, [hl]
    ei
    ld b, [hl]
    ld d, [hl]
    ld b, a
    and d
    ld b, a
    ld c, l
    ld c, b
    db $fc
    ld c, b
    or c
    ld c, c
    db $ec
    ld c, c
    ld d, a
    ld c, d
    ld e, e
    ld c, d
    ld [hl], c
    ld c, d

    db $84, $50, $0a, $51

    and $44
    ld sp, hl
    ld b, h
    dec a
    ld c, l

    db $4c, $4e

    ld a, [bc]
    ld c, a

    db $72, $40

    call nz, Call_000_1e55
    ld d, l
    dec d
    ld c, [hl]

    db $36, $4e, $2b, $4d

    ldh [$4e], a
    jp c, $2541

    ld b, l

    db $d0, $51

    ld d, c
    ld b, l
    ld [hl], l
    ld b, l
    db $fd
    ld d, [hl]

    db $ba, $57, $01, $58, $a1, $57, $08, $58

    adc b
    ld b, l
    sub $4c

    ld a, $07
    ld hl, $4072
    call Call_000_23e8
    ret


    ld hl, $4072
    call Call_000_2449
    ret


    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c325]
    ld h, a
    ld a, [$c323]
    sub h
    jr z, jr_004_4094

    bit 7, a
    jr nz, jr_004_408e

    ld bc, $fb13
    call Call_000_2a8a
    jr jr_004_4094

jr_004_408e:
    ld bc, $fb00
    call Call_000_2a8a

jr_004_4094:
    ld a, [$c324]
    ld h, a
    ld a, [$c321]
    sub h
    jr z, jr_004_40b0

    bit 7, a
    jr nz, jr_004_40aa

    ld bc, $15fa
    call Call_000_2af7
    jr jr_004_40b0

jr_004_40aa:
    ld bc, $00fa
    call Call_000_2af7

jr_004_40b0:
    ld a, [$c322]
    ld c, a
    ld a, [$c323]
    ld [$c325], a
    adc $00
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld c, a
    ld a, [$c369]
    add c
    ldh [$8a], a
    ld a, [$c320]
    ld c, a
    ld a, [$c321]
    ld [$c324], a
    adc $00
    sla c
    rla
    sla c
    rla
    sla c
    rla
    ld c, a
    ld a, [$c368]
    add c
    ldh [$8b], a
    ret


    push af
    push bc
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $60
    call Call_000_03a7
    ld a, $05
    ld hl, $4b69
    call Call_000_23e8
    xor a
    ld [$c289], a
    ld [$da00], a
    pop hl
    pop bc
    pop af
    ret


    push af
    push bc
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $60
    call Call_000_03a7
    ld a, $0a
    ld hl, $4234
    call Call_000_23e8
    ld a, $05
    ld hl, $4b69
    call Call_000_23e8
    xor a
    ld [$c289], a
    ld [$da00], a
    pop hl
    pop bc
    pop af
    ret


Call_004_4139:
    push af
    push de
    push bc
    ld hl, $d000
    ld c, $18

jr_004_4141:
    inc hl
    ld a, [hl-]
    or a
    jr z, jr_004_4154

    ld de, $0040
    add hl, de
    dec c
    jr nz, jr_004_4141

    ld hl, $0000
    pop bc
    pop de
    pop af
    ret


jr_004_4154:
    ld e, l
    ld d, h
    ld hl, $002c
    add hl, de
    ld a, $18
    sub c
    ld [hl], a
    ld h, a
    ld l, $00
    srl h
    rr l
    srl h
    rr l
    ld bc, $8000
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $0038
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld l, e
    ld h, d
    push hl
    ld de, $0011
    add hl, de
    ld [hl], $10
    pop hl
    push hl
    ld de, $000e
    add hl, de
    ld [hl], $20
    inc hl
    ld [hl], $00
    pop hl
    push hl
    ld de, $0004
    add hl, de
    push hl
    call Call_000_0a61
    ld a, h
    and $0f
    add $08
    ld h, a
    ld hl, $0800
    ld c, l
    ld b, h
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    push hl
    call Call_000_0a61
    ld a, h
    and $0f
    add $08
    ld h, a
    ld hl, $0800
    ld c, l
    ld b, h
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    pop hl
    push hl
    ld de, $0005
    add hl, de
    ld b, [hl]
    pop hl
    push hl
    ld de, $0018
    add hl, de
    ld [hl], b
    pop hl
    push hl
    ld de, $0007
    add hl, de
    ld b, [hl]
    pop hl
    push hl
    ld de, $0019
    add hl, de
    ld [hl], b
    pop hl
    pop bc
    pop de
    pop af
    jr jr_004_41e2

Call_004_41da:
    push af
    ld a, h
    or a
    jr nz, jr_004_41e1

    pop af
    ret


jr_004_41e1:
    pop af

jr_004_41e2:
    push hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], a
    pop hl
    ret


Call_004_41ea:
    push af
    ld a, h
    or a
    jr nz, jr_004_41f1

    pop af
    ret


jr_004_41f1:
    pop af
    push hl
    push de
    ld de, $0016
    add hl, de
    ld [hl], a
    pop de
    pop hl
    ret


Call_004_41fc:
    push af
    ld a, h
    or a
    jr z, jr_004_420a

    push hl
    ld a, $18
    add l
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl

jr_004_420a:
    pop af
    ret


    db $c1, $45

    db $c3
    ld b, l

    db $d8, $45

    jp hl


    ld b, l
    ld a, c
    ld b, [hl]
    ld [de], a
    ld b, [hl]
    and d
    ld b, [hl]
    ei
    ld b, [hl]
    ld d, [hl]
    ld b, a

    db $a2, $47

    ld c, l
    ld c, b

    db $fc, $48, $a2, $49

    or c
    ld c, c
    db $ec
    ld c, c
    ld d, a
    ld c, d
    ld e, e
    ld c, d
    ld [hl], c
    ld c, d
    ld a, h
    ld c, d

    db $6c, $47

    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $18

Jump_004_423f:
    inc hl
    ld a, [hl-]
    or a
    jp z, Jump_004_44b2

    push af
    push bc
    push de
    push hl
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld c, l
    ld b, h
    ld hl, $001a
    add hl, bc
    ld a, [hl]
    rrca
    jr c, jr_004_4299

    ld hl, $0015
    add hl, bc
    ld a, [hl]
    or a
    jr z, jr_004_4264

    dec [hl]
    jr jr_004_4299

jr_004_4264:
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $00
    ld l, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_004_4270:
    ld d, [hl]
    ld a, d
    ld h, b
    ld l, c
    call Call_000_0611
    ld hl, $4288
    push hl
    ld hl, $420c
    add a
    add l
    ld l, a
    jr nc, jr_004_4284

    inc h

jr_004_4284:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $00
    ld l, a
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld a, d
    or a
    jr nz, jr_004_4270

jr_004_4299:
    ld hl, $ffe0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $001c
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0008
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    or d
    or e
    jr z, jr_004_42e0

    push hl
    ld hl, $0010
    add hl, de
    ld e, l
    ld d, h
    pop hl
    add hl, de
    bit 7, h
    jr nz, jr_004_42ce

    xor a
    ld hl, $0008
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld hl, $001c
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    jr jr_004_42e0

jr_004_42ce:
    push hl
    ld hl, $001c
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop hl
    ld e, l
    ld d, h
    ld hl, $0008
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d

jr_004_42e0:
    ld hl, $001a
    add hl, bc
    bit 1, [hl]
    jp nz, Jump_004_44ae

    ld hl, $0012
    add hl, bc
    ld a, [hl]
    or a
    jp z, Jump_004_4439

    ld hl, $000a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    call Call_000_08ac
    push hl
    ld hl, $000c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    call Call_000_08ac
    pop de
    push de
    push hl
    call Call_000_0a7b
    add $80
    push af
    ld b, a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $10
    ld l, a
    ld c, [hl]
    ld a, b
    sub c
    ld b, a
    bit 7, a
    jr z, jr_004_4335

    cpl
    inc a

jr_004_4335:
    cp $60
    jr c, jr_004_4349

    ld a, c
    add $80
    ld c, a
    ld a, $80
    sub b
    cpl
    inc a
    ld b, a
    bit 7, a
    jr z, jr_004_4349

    cpl
    inc a

jr_004_4349:
    inc hl
    ld d, [hl]
    cp d
    ld a, b
    jr c, jr_004_4356

    ld a, d
    bit 7, b
    jr z, jr_004_4356

    cpl
    inc a

jr_004_4356:
    add c
    dec hl
    ld [hl], a
    push af
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_000_0b31
    push hl
    ld hl, $ffe0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $001b
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_004_43a1

    push de
    push hl
    push de
    ld e, l
    ld d, h
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    call Call_004_554d
    pop hl
    pop de
    and a
    jr z, jr_004_43a1

    pop af
    pop hl
    pop de
    jp Jump_004_4439


jr_004_43a1:
    ld bc, $0001
    pop af
    add $20
    and $40
    jr z, jr_004_43ac

    inc c

jr_004_43ac:
    push hl
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    push hl
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0c
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_08ac
    ld a, h
    or l
    jr nz, jr_004_43d6

    set 1, b

jr_004_43d6:
    pop de
    ld a, h
    pop hl
    xor h
    bit 7, a
    jr z, jr_004_43e0

    set 1, b

jr_004_43e0:
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    push hl
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0a
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_08ac
    ld a, h
    or l
    jr nz, jr_004_4409

    set 0, b

jr_004_4409:
    ld a, h
    pop hl
    xor h
    bit 7, a
    jr z, jr_004_4412

    set 0, b

jr_004_4412:
    ld e, c
    ld d, b
    ld hl, $ffe0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, d
    and e
    jr z, jr_004_4439

    ld hl, $0012
    add hl, bc
    ld [hl], $00
    ld hl, $0004
    add hl, bc
    push hl
    ld hl, $000a
    add hl, bc
    pop de
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

Jump_004_4439:
jr_004_4439:
    ld hl, $0016
    add hl, bc
    ld a, [hl]
    cp $01
    jr nz, jr_004_44ae

    ld a, [$da00]
    or a
    jr nz, jr_004_44ae

    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $f610
    add hl, de
    ld a, [$c329]
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr z, jr_004_4462

    ld h, d
    ld l, $00
    jr jr_004_4471

jr_004_4462:
    ld a, [$c32b]
    sub $14
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr nz, jr_004_4471

    ld h, d
    ld l, $00

jr_004_4471:
    ld a, l
    and $e0
    ld de, $c320
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $f510
    add hl, de
    ld a, [$c32a]
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr z, jr_004_4495

    ld h, d
    ld l, $00
    jr jr_004_44a4

jr_004_4495:
    ld a, [$c32c]
    sub $12
    ld d, a
    ld a, h
    sub d
    bit 7, a
    jr nz, jr_004_44a4

    ld h, d
    ld l, $00

jr_004_44a4:
    ld a, l
    and $e0
    ld de, $c322
    ld [de], a
    inc de
    ld a, h
    ld [de], a

Jump_004_44ae:
jr_004_44ae:
    pop hl
    pop de
    pop bc
    pop af

Jump_004_44b2:
    ld de, $0040
    add hl, de
    dec c
    jp nz, Jump_004_423f

    ld hl, $c290
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc b
    dec b
    jr z, jr_004_44e5

    ld hl, $0004
    add hl, bc
    ld de, $c2a0
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld hl, $0006
    add hl, bc
    ld de, $c2a2
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld hl, $0029
    add hl, bc
    ld de, $c2a4
    ld a, [hl]
    ld [de], a

jr_004_44e5:
    ret


    push af
    push de
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$95]
    ld de, $5288
    call Call_004_41da
    pop de
    pop af
    ret


    inc h
    dec h
    ret z

    push af
    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$95]
    ld de, $527a
    call Call_004_41da
    ld e, l
    ld d, h
    ld hl, $0017
    add hl, de
    ld [hl], $00
    ld hl, $001e
    add hl, de
    ld [hl], $00
    ld hl, $0033
    add hl, de
    ld [hl], $01
    pop hl
    pop de
    pop af
    ret


Call_004_4525:
    inc h
    dec h
    ret z

    inc d
    dec d
    ret z

    push af
    push de
    push hl
    push de
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$95]
    ld de, $454b
    call Call_004_41da
    pop de
    call Call_004_41fc
    ld de, $0017
    add hl, de
    ld [hl], $00
    pop hl
    pop de
    pop af
    ret


    ld a, [bc]
    ld bc, $0c01
    db $fc
    rst $38

Call_004_4551:
    xor a
    inc h
    dec h
    ret z

    push bc
    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld c, l
    ld b, h
    ld hl, $001c
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0008
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    or d
    or e
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    ld c, $78

jr_004_4579:
    call Call_004_4551
    and a
    jr z, jr_004_4585

    call Call_000_2e3b
    dec c
    jr nz, jr_004_4579

jr_004_4585:
    pop bc
    pop af
    ret


    xor a
    inc h
    dec h
    ret z

    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld e, l
    ld d, h
    ld hl, $0004
    add hl, de
    ld a, $0a
    add e
    ld e, a
    jr nc, jr_004_45a1

    inc d

jr_004_45a1:
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr nz, jr_004_45bc

    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr nz, jr_004_45bc

    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr nz, jr_004_45bc

    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr nz, jr_004_45bc

    xor a
    jr jr_004_45be

jr_004_45bc:
    ld a, $01

jr_004_45be:
    pop hl
    pop de
    ret


    xor a
    ret


    inc bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0611
    dec a
    ld d, a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $15
    ld l, a
    ld [hl], d
    inc bc
    xor a
    ret


    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $12
    ld l, a
    ld a, [hl]
    and $01
    xor $01
    jr z, jr_004_45e8

    inc bc

jr_004_45e8:
    ret


    inc bc
    push bc
    ld a, d
    push af
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld e, l
    ld d, h
    pop af
    ld l, c
    ld h, b
    ld bc, $0004
    call Call_000_0654
    pop bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $12
    ld l, a
    ld [hl], $00
    ld a, $01
    ret


    inc bc
    push bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0626
    push bc
    inc hl
    inc hl
    call Call_000_0626
    push bc
    inc hl
    inc hl
    call Call_000_0611
    push af
    push hl
    ld hl, $ffe0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    push hl
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    call Call_000_0a7b
    pop hl
    ld l, h
    ld h, $00
    call Call_000_0b31
    pop bc
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    add hl, de
    ld e, l
    ld d, h
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0a
    ld l, a
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop bc
    ld hl, $0005
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $12
    ld l, a
    ld a, $01
    ld [hl], a
    ret


    inc bc
    push bc
    ld a, d
    push af
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0a
    ld l, a
    ld e, l
    ld d, h
    pop af
    ld l, c
    ld h, b
    ld bc, $0004
    call Call_000_0654
    pop bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $12
    ld l, a
    ld [hl], $01
    ld a, $01
    ret


    inc bc
    push de
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0626
    ld e, c
    ld d, b
    ld c, l
    ld b, h
    inc bc
    inc bc
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0a
    ld l, a
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0626
    ld e, c
    ld d, b
    ld c, l
    ld b, h
    inc bc
    inc bc
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0c
    ld l, a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $12
    ld l, a
    ld a, $01
    ld [hl], a
    ret


    inc bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0611
    inc bc

Jump_004_4703:
    push af
    push bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0626
    ld l, c
    ld h, b
    pop bc
    inc bc
    inc bc
    pop af
    call Call_000_0af2
    push de
    ld e, l
    ld d, h
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0a
    ld l, a
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0c
    ld l, a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $12
    ld l, a
    ld a, $01
    ld [hl], a
    ret


    inc bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0611
    inc bc
    push af
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $10
    ld l, a
    pop af
    add [hl]
    jp Jump_004_4703


    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $05
    ld l, a
    ld d, [hl]
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $07
    ld l, a
    ld e, [hl]
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $18
    ld l, a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld [hl], $08
    inc hl
    ld [hl], $00
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $1b
    ld l, a
    ld [hl], $01
    inc bc
    ret


    ld e, $04

Jump_004_47a4:
    push bc
    push de
    ld hl, $ffe0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $002f
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_004_47ba

    pop de
    pop bc
    xor a
    jp Jump_004_484c


jr_004_47ba:
    call Call_000_0a61
    ld a, l
    and $3f
    sub $20
    ld hl, $0010
    add hl, bc
    add [hl]
    and $f0
    ld [$c28f], a
    ld hl, $0100
    call Call_004_5332
    push bc
    push de
    push hl
    ld e, d
    ld d, h
    ld hl, $0018
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0202
    call Call_004_552f
    pop hl
    pop de
    pop bc
    and a
    jr nz, jr_004_483d

    push bc
    push de
    push hl
    ld a, [$c28f]
    ld bc, $00e0
    call Call_004_534e
    call Call_004_551e
    pop hl
    pop de
    pop bc
    and a
    jr nz, jr_004_483d

    push bc
    push de
    push hl
    ld a, [$c28f]
    add $20
    ld bc, $00e0
    call Call_004_534e
    call Call_004_551e
    pop hl
    pop de
    pop bc
    and a
    jr nz, jr_004_483d

    push bc
    push de
    push hl
    ld a, [$c28f]
    add $e0
    ld bc, $00e0
    call Call_004_534e
    call Call_004_551e
    pop hl
    pop de
    pop bc
    and a
    jr nz, jr_004_483d

    call Call_004_5289
    ld hl, $0012
    add hl, bc
    ld [hl], $01
    pop de
    pop bc
    inc bc
    ld a, $01
    jr jr_004_484c

jr_004_483d:
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    add $41
    ld [hl], a
    pop de
    pop bc
    dec e
    jp nz, Jump_004_47a4

    xor a

Jump_004_484c:
jr_004_484c:
    ret


    inc bc
    push bc
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $18
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld c, d
    push de
    ld de, $fffd
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld b, d
    push de
    ld de, $000b
    add hl, de
    ld d, [hl]
    push de
    ld e, c
    ld d, b
    ld hl, $ffe0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0005
    add hl, bc
    ld a, d
    sub [hl]
    ld l, a
    ld h, $00
    call Call_000_08b9
    push hl
    ld hl, $0007
    add hl, bc
    ld a, e
    sub [hl]
    ld l, a
    ld h, $00
    call Call_000_08b9
    pop de
    add hl, de
    add l
    cp $08
    jr nc, jr_004_489d

    add sp, $06
    pop bc
    xor a
    ret


jr_004_489d:
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $18
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop af
    add $80
    ld hl, $0200
    call Call_000_0af2
    pop bc
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    call Call_004_551e
    and a
    jr nz, jr_004_48f9

    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0a
    ld l, a
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    call Call_004_4a8d
    jr z, jr_004_48f9

    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $11
    ld l, a
    ld [hl], $40
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $12
    ld l, a
    ld [hl], $01

jr_004_48f9:
    xor a
    pop bc
    ret


    inc bc
    push bc
    ld hl, $ffe0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0018
    add hl, bc
    push bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0004
    add hl, bc
    pop bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld a, $40
    ld [hl], a
    ld hl, $000c
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    ld hl, $000a
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    call Call_004_4a8d
    jr z, jr_004_499f

    ld hl, $000b
    add hl, bc
    ld d, [hl]
    ld hl, $0005
    add hl, bc
    ld a, d
    sub [hl]
    bit 7, a
    jr z, jr_004_4945

    cpl
    inc a

jr_004_4945:
    ld l, a
    ld h, $00
    call Call_000_08b9
    push hl
    ld hl, $000d
    add hl, bc
    ld d, [hl]
    ld hl, $0007
    add hl, bc
    ld a, d
    sub [hl]
    bit 7, a
    jr z, jr_004_495d

    cpl
    inc a

jr_004_495d:
    ld l, a
    ld h, $00
    call Call_000_08b9
    pop de
    add hl, de
    ld a, h
    or a
    jr nz, jr_004_498e

    ld a, l
    cp $01
    jr nc, jr_004_4973

    ld de, $0010
    jr jr_004_4991

jr_004_4973:
    cp $04
    jr nc, jr_004_497c

    ld de, $0018
    jr jr_004_4991

jr_004_497c:
    cp $09
    jr nc, jr_004_4985

    ld de, $0020
    jr jr_004_4991

jr_004_4985:
    cp $10
    jr nc, jr_004_498e

    ld de, $0040
    jr jr_004_4991

jr_004_498e:
    ld de, $0080

jr_004_4991:
    ld hl, $000e
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $0012
    add hl, bc
    ld a, $01
    ld [hl], a

jr_004_499f:
    xor a
    pop bc
    ret


    inc bc
    push bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0626
    pop hl
    add hl, bc
    ld c, l
    ld b, h
    ld a, $01
    ret


    inc bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0611
    inc bc
    push af
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0626
    ld e, c
    ld d, b
    ld c, l
    ld b, h
    inc bc
    inc bc
    pop af
    push af
    ld hl, $ffe0
    add [hl]
    inc hl
    ld h, [hl]
    ld l, a
    pop af
    push hl
    add $31
    ld l, a
    ld a, $4a
    adc $00
    ld h, a
    ld a, [hl]
    pop hl
    cp $02
    jr nz, jr_004_49e4

    ld a, e
    ld [hl+], a
    ld [hl], d
    jr jr_004_49e9

jr_004_49e4:
    cp $01
    jr nz, jr_004_49e9

    ld [hl], e

jr_004_49e9:
    ld a, $01
    ret


    inc bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0611
    inc bc
    push af
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0626
    ld e, c
    ld d, b
    ld c, l
    ld b, h
    inc bc
    inc bc
    pop af
    push af
    ld hl, $ffe0
    add [hl]
    inc hl
    ld h, [hl]
    ld l, a
    pop af
    push hl
    add $31
    ld l, a
    ld a, $4a
    adc $00
    ld h, a
    ld a, [hl]
    pop hl
    cp $02
    jr nz, jr_004_4a27

    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    jr jr_004_4a2e

jr_004_4a27:
    cp $01
    jr nz, jr_004_4a2e

    ld a, [hl]
    add e
    ld [hl], a

jr_004_4a2e:
    ld a, $01
    ret


    ld [bc], a
    nop
    ld bc, $0201
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    ld [bc], a
    nop
    ld bc, $0301
    ld a, $01
    ret


    inc bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0611
    inc bc
    push af
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    call Call_004_4e4c
    ld a, $01
    ret


    inc bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0611
    inc bc
    ld a, $01
    ret


    inc bc
    push bc
    ld a, d
    ld l, c
    ld h, b
    call Call_000_0626
    ld l, c
    ld h, b
    call Call_000_015e
    pop bc
    inc bc
    inc bc
    ret


Call_004_4a8d:
    push hl
    push de
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    push hl
    ld de, $0006
    add hl, de
    pop de
    ld a, [de]
    cp [hl]
    jr nz, jr_004_4ab7

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_004_4ab7

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_004_4ab7

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_004_4ab7

    pop de
    pop hl
    xor a
    ret


jr_004_4ab7:
    pop de
    pop hl
    ld a, $01
    or a
    ret


    db $00, $00, $40, $40, $40, $40, $40, $80, $80, $80

    ret nz

    ret nz

    db $c0, $c0, $c0, $00

Call_004_4acd:
    ld hl, $0034
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_004_4b49

jr_004_4ad5:
    ld hl, $002a
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_004_4b49

    ld hl, $0026
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c286]
    call Call_000_0626
    ld a, c
    cp $f0
    jr c, jr_004_4b34

    ld a, c
    cp $ff
    jr z, jr_004_4b04

    cp $fe
    jr z, jr_004_4b1a

    cp $fc
    jr z, jr_004_4b22

    ld hl, $002a
    add hl, de
    ld [hl], $ff
    jr jr_004_4ad5

jr_004_4b04:
    ld c, b
    ld b, $00
    ld hl, $0024
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $0026
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    jr jr_004_4ad5

jr_004_4b1a:
    ld a, b
    ld l, e
    ld h, d
    call Call_004_4e51
    jr jr_004_4ad5

jr_004_4b22:
    ld a, b
    call Call_000_2c19
    ld hl, $0026
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc bc
    inc bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    jr jr_004_4ad5

jr_004_4b34:
    ld hl, $002a
    add hl, de
    ld [hl], b
    push bc
    ld hl, $0026
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc bc
    inc bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    pop bc
    jr jr_004_4b4e

jr_004_4b49:
    ld hl, $0028
    add hl, de
    ld c, [hl]

jr_004_4b4e:
    ld hl, $0012
    add hl, de
    ld a, [hl]
    ld hl, $0035
    and a
    jr z, jr_004_4b5c

    ld hl, $0036

jr_004_4b5c:
    add hl, de
    ld b, [hl]
    ld hl, $002a
    add hl, de
    ld a, [hl]
    sub b
    jr nc, jr_004_4b67

    xor a

jr_004_4b67:
    ld [hl], a
    ret


    rst $30

    db $80, $02

    ret nz

    push af
    push bc
    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [$c368]
    ld l, a
    ld h, $00
    bit 7, l
    jr z, jr_004_4b89

    ld h, $ff

jr_004_4b89:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld c, l
    ld b, h
    ld hl, $c29a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [$c369]
    ld l, a
    ld h, $00
    bit 7, l
    jr z, jr_004_4ba9

    ld h, $ff

jr_004_4ba9:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld c, l
    ld b, h
    ld hl, $c29c
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld de, $d000
    ld a, $18
    ld [$c288], a

Jump_004_4bbf:
    inc e
    ld a, [de]
    dec e
    or a
    jp z, Jump_004_4cc4

    ld hl, $0016
    add hl, de
    ld a, [hl]
    cp $02
    jp nz, Jump_004_4cc4

    ld hl, $002e
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_004_4bdc

    dec [hl]
    jp Jump_004_4cc4


jr_004_4bdc:
    ld hl, $002b
    add hl, de
    ld a, [hl]
    ld [$c286], a
    ld hl, $002f
    add hl, de
    ld [hl], $00
    ld hl, $c29c
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0008
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    jr z, jr_004_4c05

    call Call_000_0c60
    srl h
    rr l
    add hl, bc
    ld c, l
    ld b, h

jr_004_4c05:
    ld hl, $0006
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld bc, $0090
    add hl, bc
    ld a, h
    cp $14
    jp nc, Jump_004_4cb9

    add hl, hl
    add hl, hl
    add hl, hl
    ld a, h
    ld [$c285], a
    ld hl, $c29a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0004
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld bc, $0010
    add hl, bc
    ld a, h
    inc a
    cp $16
    jp nc, Jump_004_4cb9

    add hl, hl
    add hl, hl
    add hl, hl
    ld a, h
    ld [$c284], a
    ld hl, $002f
    add hl, de
    ld [hl], $01
    ld hl, $002c
    add hl, de
    ld a, [hl]
    add a
    add a
    ld c, a
    ld hl, $002d
    add hl, de
    ld b, [hl]
    push de
    ld a, [$c284]
    ld d, a
    ld a, [$c285]
    ld e, a
    call Call_000_26a4
    pop de
    call Call_004_4acd
    ld hl, $0033
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_004_4c7d

    ld hl, $0010
    add hl, de
    ld a, [hl]
    ld hl, $0032
    add hl, de
    ld [hl], a

jr_004_4c7d:
    ld hl, $0032
    add hl, de
    ld a, [hl]
    add $08
    swap a
    and $0f
    add $bd
    ld l, a
    adc $4a
    sub l
    ld h, a
    ld b, [hl]
    ld hl, $0028
    add hl, de
    ld a, [hl+]
    cp c
    jr nz, jr_004_4c9c

    ld a, [hl]
    cp b
    jr z, jr_004_4cb7

jr_004_4c9c:
    ld a, b
    ld [hl-], a
    ld [hl], c
    ld hl, $0020
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push de
    push hl
    ld hl, $0038
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, [$c286]
    rst $18

    db $00, $26

    pop de

jr_004_4cb7:
    jr jr_004_4cc4

Jump_004_4cb9:
    ld hl, $0037
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_004_4cc4

    call Call_004_4acd

Jump_004_4cc4:
jr_004_4cc4:
    ld hl, $0040
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c288
    dec [hl]
    jp nz, Jump_004_4bbf

    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld e, l
    ld d, h
    ld hl, $0028
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $002b
    add hl, de
    ld a, [hl]
    and a
    jr z, @+$17

    push af
    ld hl, $0020
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $0038
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    pop af
    rst $18
    nop
    ld h, $e1
    pop de
    pop bc
    pop af
    ret


    db $9e, $22, $ff, $6b, $5f, $01, $00, $00, $7f, $32, $ff, $6b, $1f, $02, $00, $00
    db $3f, $4a, $ff, $6b, $df, $18, $00, $00, $1e, $5e, $ff, $6b, $d8, $7c, $00, $00

    push af
    push bc
    push de
    push hl
    ld hl, $4d0b
    ld de, $0c04
    call Call_000_0595
    pop hl
    pop de
    pop bc
    pop af
    ret


    inc h
    dec h
    jr nz, jr_004_4d42

    ret


Call_004_4d42:
jr_004_4d42:
    push af
    push bc
    push de
    push hl
    ld e, l
    ld d, h
    ld hl, $0030
    add hl, de
    ld [hl], a
    add a
    add $1c
    ld l, a
    adc $4f
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $2b
    add e
    ld c, a
    ld b, d
    ld a, h
    ld [bc], a
    push de
    ld de, $c400
    ld bc, $0010
    call Call_000_021a
    pop de
    ld a, [$c400]
    ld hl, $002d
    add hl, de
    ld [hl], a
    ld hl, $c402
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0020
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c404
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0022
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $002d
    add hl, de
    ld a, [hl]
    cp $63
    jr nz, jr_004_4dc5

    push de
    ld hl, $c406
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $2b
    add e
    ld c, a
    ld b, d
    ld a, [bc]
    ld de, $c410
    ld bc, $0008
    call Call_000_0654
    pop de
    ld b, $03
    ld hl, $c289
    ld a, [hl]
    inc [hl]
    and a
    jr z, jr_004_4dbd

    dec b

jr_004_4dbd:
    ld hl, $c410
    call Call_004_4e02
    jr jr_004_4de0

jr_004_4dc5:
    rst $30

    db $a0, $02

    jr z, jr_004_4de0

    ld hl, $002d
    add hl, de
    ld a, [hl]
    sub $04
    add a
    add a
    add a
    add $0b
    ld l, a
    adc $4d
    sub l
    ld h, a
    ld b, $03
    call Call_004_4e02

jr_004_4de0:
    ld hl, $0028
    add hl, de
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld hl, $0035
    add hl, de
    ld a, $01
    ld [hl], a
    ld hl, $0036
    add hl, de
    ld a, $04
    ld [hl], a
    ld l, e
    ld h, d
    ld a, $00
    call Call_004_4e51
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_004_4e02:
    push hl
    ld hl, $002d
    add hl, de
    ld [hl], b
    pop hl
    push de
    ld a, b
    add $08
    ld d, a
    ld e, $01
    call Call_000_0595
    pop de
    ret


Call_004_4e15:
    xor a
    inc h
    dec h
    ret z

    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $0031
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_004_4e32

    cp $01
    jr z, jr_004_4e32

    ld a, $01
    jr jr_004_4e33

jr_004_4e32:
    xor a

jr_004_4e33:
    pop hl
    pop de
    ret


    push af
    push bc
    ld bc, $00f0

jr_004_4e3b:
    call Call_004_4e15
    and a
    jr z, jr_004_4e49

    call Call_000_2e3b
    dec bc
    ld a, b
    or c
    jr nz, jr_004_4e3b

jr_004_4e49:
    pop bc
    pop af
    ret


Call_004_4e4c:
    inc h
    dec h
    jr nz, jr_004_4e51

    ret


Call_004_4e51:
jr_004_4e51:
    push af
    push bc
    push de
    push hl
    ld e, l
    ld d, h
    ld c, a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0031
    add hl, de
    ld [hl], c
    ld b, $00
    ld a, c
    add a
    ld c, a
    ld hl, $0022
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    push hl
    ld hl, $002b
    add hl, de
    ld a, [hl]
    pop hl
    call Call_000_0626
    ld hl, $0024
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $0026
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $002a
    add hl, de
    ld [hl], $00
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_004_4e93:
    inc h
    dec h
    ret z

    push af
    push bc
    push de
    push hl
    ld e, l
    ld d, h
    ld c, $03
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0031
    add hl, de
    ld [hl], c
    ld b, $00
    ld a, c
    add a
    ld c, a
    ld hl, $0022
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    push hl
    ld hl, $002b
    add hl, de
    ld a, [hl]
    pop hl
    call Call_000_0626
    ld hl, $0024
    add hl, de
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $0026
    add hl, de
    ld a, $08
    add c
    ld c, a
    jr nc, jr_004_4ed2

    inc b

jr_004_4ed2:
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $002a
    add hl, de
    ld [hl], $00
    pop hl
    pop de
    pop bc
    pop af
    ret


    inc h
    dec h
    ret z

    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    push de
    push hl
    ld de, $0035
    add hl, de
    ld [hl], a
    pop de
    pop hl
    ret


    inc h
    dec h
    ret z

    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    push de
    push hl
    ld de, $0036
    add hl, de
    ld [hl], a
    pop de
    pop hl
    ret


    push bc
    push hl
    ld hl, $4f1c
    ld c, $ff

jr_004_4f11:
    inc c
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    or b
    jr nz, jr_004_4f11

    ld a, c
    pop hl
    pop bc
    ret


    db $02, $20, $04, $20

    ld b, $20
    ld [$0a20], sp
    jr nz, @+$04

    ld hl, $2104
    ld b, $21

    db $08, $21, $0a, $21

    ld [bc], a
    ld [hl+], a
    inc b
    ld [hl+], a
    ld b, $22
    db $08
    ld [hl+], a

    db $0a, $22, $0c, $22

    ld c, $22
    ld [bc], a
    inc hl
    inc b
    inc hl

    db $06, $23, $08, $23, $0a, $23

    inc c
    inc hl
    ld c, $23
    ld [bc], a
    inc h
    inc b
    inc h
    ld b, $24
    ld [$0a24], sp
    inc h

    db $0c, $24

    ld c, $24
    db $10
    inc h
    ld [bc], a
    dec h
    inc b
    dec h
    ld b, $25
    ld [$0a25], sp
    dec h
    inc c
    dec h
    ld c, $25
    db $10
    dec h
    ld [bc], a
    ld h, $04
    ld h, $06
    ld h, $08
    ld h, $0a
    ld h, $0c
    ld h, $0e
    ld h, $10
    ld h, $00
    nop

Call_004_4f7e:
    push de
    push hl
    ld a, $ff
    inc h
    dec h
    jr z, jr_004_4f8f

    ld de, $d000
    call Call_000_08ac
    add hl, hl
    add hl, hl
    ld a, h

jr_004_4f8f:
    pop hl
    pop de
    ret


Call_004_4f92:
    inc b
    dec b
    jr nz, jr_004_4f97

    ret


jr_004_4f97:
    push de
    push hl
    push hl
    ld hl, $0006
    add hl, bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld hl, $000c
    add hl, bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop de
    ld hl, $0004
    add hl, bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld hl, $000a
    add hl, bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop hl
    pop de
    ret


Call_004_4fbe:
    bit 7, d
    jr nz, jr_004_4fda

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
    call Call_000_2d10
    ret


jr_004_4fda:
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
    call Call_000_2d10
    jr z, jr_004_4ff7

    ld d, $01
    dec d
    ret


jr_004_4ff7:
    ld d, $00
    dec d
    ret


Call_004_4ffb:
    push af
    push bc
    push de
    ld b, a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, b
    push hl
    rst $18

    db $06, $04

    ld c, l
    ld b, h
    pop hl
    inc b
    dec b
    jr z, jr_004_507e

    ld a, $04
    add c
    ld e, a
    ld d, b
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl-]
    ld [de], a
    ld a, $0a
    add c
    ld e, a
    ld d, b
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $06
    add c
    ld e, a
    ld d, b
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl-]
    ld [de], a
    ld a, $0c
    add c
    ld e, a
    ld d, b
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, e
    or d
    jr z, jr_004_504c

    call Call_004_4fbe
    jr z, jr_004_504c

    jr jr_004_507e

jr_004_504c:
    inc hl
    ld a, $10
    add c
    ld e, a
    ld d, b
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld l, c
    ld h, b
    call Call_004_4d42
    ld a, e
    call Call_004_4e51
    ld hl, $0017
    add hl, bc
    ld [hl], $01
    ld hl, $001e
    add hl, bc
    ld [hl], $01
    ld hl, $0016
    add hl, bc
    ld [hl], $02
    ld hl, $002c
    add hl, bc
    ld a, [hl]
    and $0f
    ld hl, $002e
    add hl, bc
    ld [hl], a

jr_004_507e:
    ld l, c
    ld h, b
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl

jr_004_5088:
    push af
    ld de, $c400
    ld bc, $000c
    call Call_000_0654
    ld de, $c408
    ld a, [de]
    inc a
    jr z, jr_004_50a4

    pop af
    push hl
    ld hl, $c400
    call Call_004_4ffb
    pop hl
    jr jr_004_5088

jr_004_50a4:
    pop af
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $88, $52, $00, $01, $00, $01, $00, $00

    nop

    db $40, $01, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    adc b
    ld d, d
    nop
    ld bc, $0100
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
    adc b
    ld d, d
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld b, b
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

    db $88, $52, $00, $01, $00, $01, $00, $00

    nop

    db $40, $01, $01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

    db $aa, $50

    cp a
    ld d, b
    db $d4
    ld d, b

    db $e9, $50, $0b, $0c, $fe, $ff

    push af
    push bc
    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld a, [$c810]
    and $03
    add a
    ld hl, $50fe
    add l
    ld l, a
    jr nc, jr_004_5123

    inc h

jr_004_5123:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$95]
    call Call_004_4ffb
    ld a, l
    ld [$c290], a
    ld a, h
    ld [$c291], a
    call Call_004_4f7e
    ld [$c296], a
    ld a, c
    ld c, l
    ld b, h
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld [$c28a], a
    pop hl
    call Call_004_4f92
    push de
    push hl
    ldh a, [$95]
    ld de, $5106
    call Call_004_4139
    ld a, $01
    call Call_004_41ea
    ld bc, $c290
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    call Call_004_41fc
    ld c, l
    ld b, h
    pop hl
    pop de
    call Call_004_4f92
    ld hl, $c292
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld l, c
    ld h, b
    call Call_004_4f7e
    ld [$c297], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    adc b
    ld d, d
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld b, b
    ld bc, $0004
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    adc b
    ld d, d
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld b, b
    ld bc, $0005
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    adc b
    ld d, d
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld b, b
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    adc b
    ld d, d
    nop
    ld bc, $0100
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

    push af
    push bc
    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [$c298], a
    ld [$c299], a
    xor a
    ld hl, $c294
    ld [hl+], a
    ld [hl+], a
    ld hl, $517c
    ld a, $04
    rst $30

    db $00, $12

    jr nz, jr_004_5212

    ld hl, $5191
    ld a, $05
    rst $30

    db $20, $12

    jr nz, jr_004_5212

    ld hl, $51a6
    ld a, $06
    rst $30

    db $40, $12

    jr nz, jr_004_5212

    ld hl, $51bb
    ld a, $07
    rst $30

    db $60, $12

    jr nz, jr_004_5212

    jr jr_004_5254

jr_004_5212:
    ld [$c299], a
    ldh a, [$95]
    call Call_004_4ffb
    inc h
    dec h
    jr z, jr_004_5254

    ld c, l
    ld b, h
    call Call_004_4f7e
    ld [$c298], a
    ld hl, $c294
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c290
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld l, c
    ld h, b
    call Call_004_4525
    ld hl, $0010
    add hl, de
    ld a, [hl]
    ld hl, $0010
    add hl, bc
    ld [hl], a
    ld hl, $0004
    add hl, de
    push hl
    ld hl, $0006
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_004_4f92

jr_004_5254:
    pop hl
    pop de
    pop bc
    pop af
    ret


    dec b
    nop
    ld bc, $8100
    ld b, b
    ld [bc], a
    dec b
    nop
    ld bc, $0100
    ld b, b
    ld [bc], a
    dec b
    nop
    add c
    nop
    ld bc, $0240
    dec b
    nop
    add c
    nop
    add c
    ld b, b
    ld [bc], a
    add hl, bc
    ld [bc], a
    inc c
    pop hl
    rst $38
    ld [de], a
    adc h
    ld d, e
    inc c
    db $fc
    rst $38
    dec bc
    inc c
    cp $ff
    ld a, [bc]
    inc c
    db $fa
    rst $38

    db $00

Call_004_5289:
    push hl
    ld hl, $000c
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de
    ld hl, $000a
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


    jr nz, jr_004_529d

    nop

jr_004_529d:
    nop
    rlc b
    rlc b
    nop
    nop
    jr nz, jr_004_52a7

    dec [hl]

jr_004_52a7:
    rst $38
    rlc b
    ldh [$fe], a
    nop
    nop
    dec [hl]
    rst $38
    dec [hl]
    rst $38
    nop
    nop
    ldh [$fe], a
    rlc b
    dec [hl]
    rst $38
    jr nz, jr_004_52bd

    nop

jr_004_52bd:
    nop
    rlc b
    rlc b
    nop
    nop
    jr nz, jr_004_52c7

    dec [hl]

jr_004_52c7:
    rst $38
    rlc b
    ldh [$fe], a
    nop
    nop
    dec [hl]
    rst $38
    dec [hl]
    rst $38
    nop
    nop
    ldh [$fe], a
    rlc b
    dec [hl]
    rst $38
    ld b, b
    ld bc, $0000
    ld [c], a
    nop
    ld [c], a
    nop
    nop
    nop
    ld b, b
    ld bc, $ff1e
    ld [c], a
    nop
    ret nz

    cp $00
    nop
    ld e, $ff
    ld e, $ff
    nop
    nop
    ret nz

    cp $e2
    nop
    ld e, $ff

Call_004_52fa:
    rrca
    rrca
    rrca
    and $1c
    ld hl, $52ba
    rst $30
    jr nz, jr_004_5307

    jr z, jr_004_530a

jr_004_5307:
    ld hl, $52da

jr_004_530a:
    add l
    ld l, a
    jr nc, jr_004_530f

    inc h

jr_004_530f:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    pop hl
    push hl
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    push de
    ld e, l
    ld d, h
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    ret


Call_004_5332:
    call Call_000_0af2
    push hl
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    push de
    ld e, l
    ld d, h
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    ret


Call_004_534e:
    push de
    push hl
    ld l, c
    ld h, b
    call Call_000_0af2
    pop bc
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    add hl, de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ret


Call_004_5360:
    push af
    push de
    ld e, d
    ld d, h
    rst $18
    ld [de], a
    dec bc
    ld d, a
    and $0f
    cp $01
    jr z, jr_004_5375

    cp $03
    jr z, jr_004_537f

    xor a
    jr jr_004_5389

jr_004_5375:
    ld a, d
    swap a
    and $0f
    ld [$c440], a
    jr jr_004_5389

jr_004_537f:
    ld a, d
    swap a
    and $0f
    rst $08
    sub d
    ld [$c441], a

jr_004_5389:
    pop de
    pop af
    ret


    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    call Call_004_5658
    ld hl, $ffe0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    xor a
    ld [$c2ab], a
    ldh a, [$94]
    bit 0, a
    jr z, jr_004_53aa

    ld hl, $c442
    ld [hl], $01

jr_004_53aa:
    ldh a, [$94]
    bit 3, a
    jr z, jr_004_53b5

    ld hl, $c444
    ld [hl], $01

jr_004_53b5:
    ldh a, [$90]
    bit 1, a
    jr z, jr_004_53be

    rst $20
    jr nz, jr_004_53c0

jr_004_53be:
    ld d, $01

jr_004_53c0:
    ldh a, [$90]
    and $f0
    jr z, jr_004_53c8

    ld d, $03

jr_004_53c8:
    ld hl, $0035
    add hl, bc
    ld [hl], d
    ld a, [$c28c]
    ld [$c28d], a
    xor a
    ld [$c28c], a
    ldh a, [$90]
    and $f0
    jr nz, jr_004_53e4

    xor a
    ld [$c28e], a
    jp Jump_004_54c0


jr_004_53e4:
    ld hl, $5500
    swap a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    cp $ff
    jr nz, jr_004_53f5

    jp Jump_004_54c0


jr_004_53f5:
    push bc
    ld [$c28a], a
    ld hl, $ffe0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0032
    add hl, bc
    ld a, [$c28a]
    ld [hl], a
    ld hl, $0011
    add hl, bc
    ld [hl], $40
    ld hl, $0005
    add hl, bc
    ld d, [hl]
    ld hl, $0007
    add hl, bc
    ld e, [hl]
    rst $18
    db $10
    dec bc
    and $0f
    ld de, $0020
    cp $0b
    jr nz, jr_004_5426

    ld de, $0010

jr_004_5426:
    rst $30
    jr nz, jr_004_542b

    jr z, jr_004_542e

jr_004_542b:
    ld de, $0040

jr_004_542e:
    ld hl, $000e
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    rst $30
    nop
    ld [bc], a
    ld d, $00
    jp nz, Jump_004_548f

    ld a, [$c28a]
    call Call_004_52fa
    call Call_004_5510
    and a
    jr nz, jr_004_547d

    ld a, [$c28a]
    add $20
    call Call_004_52fa
    call Call_004_5510
    and a
    jr nz, jr_004_546b

    ld a, [$c28a]
    add $e0
    call Call_004_52fa
    call Call_004_5510
    and a
    ld d, $00
    jr z, jr_004_548f

    ld d, $20
    jr jr_004_548f

jr_004_546b:
    ld a, [$c28a]
    add $e0
    call Call_004_52fa
    call Call_004_5510
    and a
    jr nz, jr_004_5485

    ld d, $e0
    jr jr_004_548f

jr_004_547d:
    ld [$c28c], a
    ld hl, $c443
    ld [hl], $01

jr_004_5485:
    ld hl, $0010
    add hl, bc
    ld a, [$c28a]
    ld [hl], a
    jr jr_004_54ae

Jump_004_548f:
jr_004_548f:
    ld hl, $000e
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c28a]
    add d
    call Call_004_5332
    call Call_004_5360
    call Call_004_5289
    ld hl, $0012
    add hl, bc
    ld [hl], $01
    ld a, $01
    ld [$c2ab], a

jr_004_54ae:
    ld hl, $c28e
    inc [hl]
    ld a, [$c28c]
    and a
    jr nz, jr_004_54ba

    ld [hl], $00

jr_004_54ba:
    rst $28
    jr nz, jr_004_54bf

    pop bc
    xor a

jr_004_54bf:
    ret


Jump_004_54c0:
    push bc
    ld hl, $ffe0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0010
    add hl, de
    ld a, l
    and $e0
    ld l, a
    push hl
    ld hl, $0006
    add hl, bc
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0010
    add hl, de
    ld a, l
    and $e0
    ld l, a
    push hl
    ld hl, $0004
    add hl, bc
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $0012
    add hl, bc
    ld [hl], $00
    pop bc
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
    jr nz, jr_004_556b

    ld b, b
    rst $38
    nop
    add b
    rst $38

Call_004_5510:
    call Call_004_551e
    and a
    jr nz, jr_004_551b

    call Call_004_55c4
    jr jr_004_551d

jr_004_551b:
    or $80

jr_004_551d:
    ret


Call_004_551e:
    push de
    ld e, d
    ld d, h
    rst $18

    db $10, $0b

    and $0f
    jr z, jr_004_552d

    cp $0f
    jr z, jr_004_552d

    xor a

jr_004_552d:
    pop de
    ret


Call_004_552f:
    ld a, b
    dec a
    sub h
    cp d
    jr nc, jr_004_554a

    ld a, b
    dec a
    add h
    cp d
    jr c, jr_004_554a

    ld a, c
    dec a
    sub l
    cp e
    jr nc, jr_004_554a

    ld a, c
    dec a
    add l
    cp e
    jr c, jr_004_554a

    xor a
    jr jr_004_554c

jr_004_554a:
    ld a, $ff

jr_004_554c:
    ret


Call_004_554d:
    push bc
    push de
    push hl
    push hl
    ld hl, $c290
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    push hl
    ld hl, $000c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr z, jr_004_5570

    xor a

jr_004_556b:
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_004_5570:
    ld a, h
    and $fe
    jr nz, jr_004_55be

    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    pop hl
    push de
    ld e, l
    ld d, h
    ld hl, $000a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr z, jr_004_5595

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_004_5595:
    ld a, h
    and $fe
    jr nz, jr_004_55be

    add hl, hl
    add hl, hl
    add hl, hl
    pop de
    push hl
    ld l, e
    ld h, d
    call Call_000_0cb5
    ld e, l
    ld d, h
    pop hl
    push de
    ld e, l
    ld d, h
    call Call_000_0cb5
    pop de
    add hl, de
    ld de, $00c0
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr nc, jr_004_55bf

    ld a, $01
    jr jr_004_55c0

jr_004_55be:
    pop hl

jr_004_55bf:
    xor a

jr_004_55c0:
    pop hl
    pop de
    pop bc
    ret


Call_004_55c4:
    push bc
    push de
    push hl
    ld c, l
    ld b, h
    ld hl, $c470
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld hl, $cac0

Jump_004_55d7:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    and a
    jr z, jr_004_5653

    push hl
    ld hl, $c472
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr z, jr_004_55fc

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_004_55fc:
    ld a, h
    and $fe
    jr nz, jr_004_564f

    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c470
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr z, jr_004_5622

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_004_5622:
    pop de
    ld a, h
    and $fe
    jr nz, jr_004_564f

    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld l, e
    ld h, d
    call Call_000_0cb5
    ld e, l
    ld d, h
    pop hl
    push de
    ld e, l
    ld d, h
    call Call_000_0cb5
    pop de
    add hl, de
    ld de, $0050
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr nc, jr_004_564f

    pop hl
    ld l, c
    ld h, b
    call Call_004_4f7e
    jr jr_004_5654

jr_004_564f:
    pop hl
    jp Jump_004_55d7


jr_004_5653:
    xor a

jr_004_5654:
    pop hl
    pop de
    pop bc
    ret


Call_004_5658:
    push af
    push bc
    push de
    push hl
    ld hl, $c290
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0004
    add hl, bc
    ld de, $c470
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
    ld a, $18
    ld [de], a
    ld hl, $cac0
    ld bc, $d000

Jump_004_567e:
    push hl
    inc c
    ld a, [bc]
    dec c
    or a
    jr z, jr_004_56e7

    ld hl, $002f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_56e7

    ld hl, $0017
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_56e7

    ld hl, $c472
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr z, jr_004_56b2

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_004_56b2:
    ld a, h
    cp $03
    jr nc, jr_004_56e7

    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c470
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr z, jr_004_56d8

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_004_56d8:
    pop de
    ld a, h
    cp $03
    jr nc, jr_004_56e7

    add hl, hl
    add hl, hl
    add hl, hl
    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    push hl

jr_004_56e7:
    ld hl, $0040
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $c474
    dec [hl]
    pop hl
    jp nz, Jump_004_567e

    xor a
    ld [hl+], a
    ld [hl+], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, $18
    ld [$c470], a
    ld hl, $cac0
    ld bc, $d000

Jump_004_570c:
    push hl
    inc c
    ld a, [bc]
    dec c
    or a
    jr z, jr_004_5729

    ld hl, $002f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_5729

    ld hl, $001e
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_5729

    pop hl
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    push hl

jr_004_5729:
    ld hl, $0040
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $c470
    dec [hl]
    pop hl
    jp nz, Jump_004_570c

    xor a
    ld [hl+], a
    ld [hl+], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d000
    ld hl, $002b
    add hl, de
    ld a, [hl]
    ld [$c286], a
    call Call_004_4acd
    ld hl, $0033
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_004_5765

    ld hl, $0010
    add hl, de
    ld a, [hl]
    ld hl, $0032
    add hl, de
    ld [hl], a

jr_004_5765:
    ld hl, $0032
    add hl, de
    ld a, [hl]
    add $08
    swap a
    and $0f
    ld hl, $4abd
    add l
    ld l, a
    jr nc, jr_004_5778

    inc h

jr_004_5778:
    ld b, [hl]
    ld hl, $0028
    add hl, de
    ld a, [hl+]
    cp c
    jr nz, jr_004_5785

    ld a, [hl]
    cp b
    jr z, jr_004_57a0

jr_004_5785:
    ld a, b
    ld [hl-], a
    ld [hl], c
    ld hl, $0020
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push de
    push hl
    ld hl, $0038
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, [$c286]
    rst $18

    db $00, $26

    pop de

jr_004_57a0:
    ret


    push de
    ld d, a
    ldh a, [$96]
    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, d
    ld hl, $d000
    call Call_004_4e51
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    ret


    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d332]
    ld hl, $57f1
    add l
    ld l, a
    jr nc, jr_004_57ce

    inc h

jr_004_57ce:
    ld d, [hl]
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $d000
    ld l, c
    ld h, b
    ld a, d
    call Call_004_4d42
    ld a, $02
    call Call_004_4e51
    ld a, $01
    ld hl, $573f
    call Call_000_23e8
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $00

    ld [bc], a
    inc bc

    db $01

    inc b
    dec b
    ld b, $07

    db $08, $09

    jr jr_004_582a

    ld d, $0d
    dec c
    db $16

    ld hl, $573f
    call Call_000_2449
    ret


    ldh a, [$96]
    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    call Call_004_4e93
    pop af
    ldh [$96], a
    ldh [rSVBK], a
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

jr_004_582a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
