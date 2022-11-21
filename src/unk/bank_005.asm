INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    db $7a, $40

    jp nc, $f24a

    ld c, d
    jr nz, @+$4d

    ld h, e
    ld c, e

    db $b0, $4b, $5c, $4c, $46, $5f, $75, $4c

    ld d, c
    ld e, d

    db $49, $49

    rst $28
    ld b, c
    ld [$6f42], sp
    ld b, c

    db $92, $44

    ld [$8a44], sp
    ld h, e

    db $aa, $62, $79, $61

    ld sp, $ad48
    ld b, d
    adc [hl]
    ld h, h
    pop de
    ld h, h
    cp b
    ld h, h
    cpl
    ld h, l
    db $10
    ld h, l
    ld h, h
    ld h, l
    adc c
    ld h, l
    pop af
    ld h, l
    rra
    ld e, l

    db $5d, $61

    call c, $f645
    ld b, l
    inc bc
    ld e, e

    db $96, $5a, $49, $5d, $e5, $5d

    ld [hl], b
    ld e, [hl]
    ld [bc], a
    ld e, a

    db $d7, $4c

    sub a
    ld d, c

    db $2f, $62, $cf, $54, $1f, $55

    ld d, d
    ld d, l
    db $c3
    ld d, a

    db $c2, $40

    ld d, a
    ld l, d
    ld l, $6b
    dec h
    ld l, h
    rst $38
    ld h, l

    db $4f, $41

    ld b, [hl]
    ld h, [hl]
    ld bc, $0867
    ld h, a

    db $29, $67, $9f, $67, $bb, $67

    push bc
    ld h, a
    db $e3
    ld b, h

    db $b0, $60

Call_005_407a:
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld d, $04

jr_005_4088:
    ld bc, $0400

jr_005_408b:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_005_408b

    call Call_000_2e3b
    dec d
    jr nz, jr_005_4088

    ld de, $0004
    ld hl, $d800
    inc hl
    inc hl
    ld bc, $0006

jr_005_40a3:
    ld a, $03
    ld [hl], a
    add hl, de
    dec bc
    ld a, b
    or c
    jr nz, jr_005_40a3

    ld a, $ff
    ld [$d83e], a
    ld [$d824], a
    ld a, $80
    ld [$d84d], a
    rst $18

    db $04, $41

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    call Call_005_61d4
    ld hl, $d880

jr_005_40d5:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $00
    jr nz, jr_005_40d5

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld bc, $0800

jr_005_40f5:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_005_40f5

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$90]
    bit 0, a
    jr nz, jr_005_410a

    jr jr_005_4127

jr_005_410a:
    xor a
    ldh [rVBK], a
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $d000
    ld de, $1800
    ld a, $24
    ld hl, $ff51
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld [hl], a

jr_005_4127:
    ret


Call_005_4128:
    push af
    push de
    push bc
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    call Call_005_414f
    or a
    jr z, jr_005_413a

    ld [de], a

jr_005_413a:
    pop bc
    pop de
    pop af
    ret


    push af
    push de
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    call Call_005_414f
    ld a, [de]
    pop de
    pop af
    ret


Call_005_414f:
    push af
    push bc
    push hl
    ld a, d
    and $1f
    ld d, a
    ld a, e
    and $1f
    ld e, a
    ld bc, $0020
    ld hl, $d000
    or a
    jr z, jr_005_4167

jr_005_4163:
    add hl, bc
    dec a
    jr nz, jr_005_4163

jr_005_4167:
    ld c, d
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, b
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c323]
    and $1f
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld c, l
    ld hl, $9800
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d000
    add hl, bc
    push bc
    ld bc, $0026
    add $12
    sub $20
    jr c, jr_005_41b3

    jr z, jr_005_41b3

    sla a
    push af
    ld b, a
    ld a, c
    sub b
    ld c, a
    ld b, $00
    call Call_000_0468
    pop af
    ld hl, $d000
    ld de, $9800
    ld c, a
    ld b, $00

jr_005_41b3:
    call Call_000_0468
    pop bc
    ld hl, $b800
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d400
    add hl, bc
    ld a, [$c323]
    and $1f
    ld bc, $0026
    add $12
    sub $20
    jr c, jr_005_41e7

    jr z, jr_005_41e7

    sla a
    push af
    ld b, a
    ld a, c
    sub b
    ld c, a
    ld b, $00
    call Call_000_0468
    pop af
    ld hl, $d400
    ld de, $b800
    ld c, a
    ld b, $00

jr_005_41e7:
    call Call_000_0468
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, b
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $9800
    ld c, $40
    call Call_000_0468
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, b
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d400
    ld de, $b800
    ld c, $40
    call Call_000_0468
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    ld a, b
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    and $1f
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    ld hl, $9800
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d000
    add hl, bc
    push bc
    ld c, $02
    call Call_000_0468
    pop bc
    ld hl, $b800
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d400
    add hl, bc
    ld c, $02
    call Call_000_0468
    ret


Call_005_4262:
    ld d, a
    ld a, c
    or a
    jr z, jr_005_42ac

    ld a, b
    ldh [$96], a
    ldh [rSVBK], a
    ld b, d
    ld a, c
    sla a
    push af
    ld a, b
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    ld hl, $9800
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d000
    add hl, bc
    pop af
    push af
    push bc
    ld c, a
    call Call_000_0468
    pop bc
    pop af
    ld hl, $b800
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d400
    add hl, bc
    push de
    ld c, a
    call Call_000_0468
    pop de

jr_005_42ac:
    ret


Call_005_42ad:
    rst $20
    nop
    inc bc
    call Call_000_2e3b
    push af
    push bc
    push de
    push hl
    ld d, a
    ld a, c
    sub $07
    jr c, jr_005_42c7

    jr z, jr_005_42c7

    sub $07
    jr c, jr_005_42c7

    jr z, jr_005_42c7

    jr jr_005_42c9

jr_005_42c7:
    add $07

jr_005_42c9:
    ld e, a
    ld a, c
    ld c, $00

jr_005_42cd:
    inc c
    sub $07
    jr c, jr_005_42d6

    jr z, jr_005_42d6

    jr jr_005_42cd

jr_005_42d6:
    push af
    push bc
    push de
    push hl
    ld a, c
    ld b, c
    ld c, e
    cp $01
    jr z, jr_005_42e3

    ld c, $07

jr_005_42e3:
    ld a, d
    cp $20
    jr nc, jr_005_42fe

    push af
    add c
    cp $20
    jr c, jr_005_42fd

    sub $20
    ld b, a
    push bc
    ld c, a
    xor a
    ld b, $05
    call Call_005_4262
    pop bc
    ld a, c
    sub b
    ld c, a

jr_005_42fd:
    pop af

jr_005_42fe:
    and $1f
    ld b, $05
    call Call_005_4262
    pop hl
    pop de
    pop bc
    pop af
    call Call_000_2e3b
    ld a, d
    add $07
    ld d, a
    dec c
    jr nz, jr_005_42d6

    pop hl
    pop de
    pop bc
    pop af
    rst $28
    nop
    inc bc
    ret


Call_005_431b:
    push af
    push bc
    push de
    push hl
    ld h, a
    ld a, h
    sla a
    sla a
    ld hl, $d800
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld h, d
    ld l, e
    inc hl
    inc hl
    ld a, [hl]
    inc hl
    inc hl
    ld c, [hl]
    ld b, a
    ld a, c
    cp $03
    jr nz, jr_005_4346

    ld c, $07
    dec b
    dec b
    jr jr_005_434d

jr_005_4346:
    cp $05
    jr nz, jr_005_434d

    ld c, $07
    dec b

jr_005_434d:
    ld a, b
    push af
    push bc
    push de
    ld d, a
    add c
    sub $20
    jr c, jr_005_4373

    jr z, jr_005_4373

    ld b, a
    ld e, c
    ld c, a
    ld a, $00
    push af
    push bc
    push de
    push hl
    ld b, $05
    call Call_005_4262
    pop hl
    pop de
    pop bc
    pop af
    ld a, b
    xor $ff
    inc a
    ld b, a
    ld a, e
    add b
    ld c, a

jr_005_4373:
    ld a, d
    ld b, $05
    call Call_005_4262
    pop de
    pop bc
    pop af
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_4384:
    push af
    push bc
    push de
    push hl
    call Call_005_60b0
    inc hl
    inc hl
    ld d, [hl]
    inc hl
    inc hl
    ld a, [hl]
    sub $07
    jr c, jr_005_439f

    jr z, jr_005_439f

    sub $07
    jr c, jr_005_439f

    jr z, jr_005_439f

    jr jr_005_43a1

jr_005_439f:
    add $07

jr_005_43a1:
    ld e, a
    ld a, [hl]
    ld c, $00

jr_005_43a5:
    inc c
    sub $07
    jr c, jr_005_43ae

    jr z, jr_005_43ae

    jr jr_005_43a5

jr_005_43ae:
    push af
    push bc
    push de
    push hl
    ld a, c
    ld b, c
    ld c, e
    cp $01
    jr z, jr_005_43bb

    ld c, $07

jr_005_43bb:
    ld a, d
    cp $20
    jr nc, jr_005_43da

    push af
    add c
    cp $20
    jr c, jr_005_43d9

    sub $20
    ld b, a
    push bc
    ld c, a
    cp $08
    jr nc, jr_005_43f4

    xor a
    ld b, $05
    call Call_005_4262
    pop bc
    ld a, c
    sub b
    ld c, a

jr_005_43d9:
    pop af

jr_005_43da:
    and $1f
    ld b, $05
    call Call_005_4262
    pop hl
    pop de
    pop bc
    pop af
    call Call_000_2e3b
    ld a, d
    add $07
    ld d, a
    dec c
    jr nz, jr_005_43ae

    pop hl
    pop de
    pop bc
    pop af
    ret


jr_005_43f4:
    jr jr_005_43f4

Call_005_43f6:
    push af
    push bc
    ld a, [$d824]
    ld b, a
    ld a, [$d821]
    cp b
    jr nz, jr_005_4405

    call Call_005_431b

jr_005_4405:
    pop bc
    pop af
    ret


Call_005_4408:
    push af
    push bc
    push de
    push hl
    ld h, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    push bc
    ld c, a
    ld b, $00
    sla c
    sla c
    ld hl, $d800
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld h, b
    ld l, c
    inc hl
    inc hl
    inc hl
    ld c, [hl]
    ld b, $00
    inc hl
    inc hl
    push hl
    ld hl, $0000
    ld a, e

jr_005_4435:
    add hl, bc
    dec a
    jr nz, jr_005_4435

    ld c, d
    add hl, bc
    add hl, hl
    ld b, h
    ld c, l
    pop hl
    add hl, bc
    pop bc
    ld a, c
    ld [hl+], a
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


Call_005_444f:
    push af
    push de
    push hl
    ld h, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    ld c, a
    ld b, $00
    sla c
    sla c
    ld hl, $d800
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld h, b
    ld l, c
    inc hl
    inc hl
    inc hl
    ld c, [hl]
    ld b, $00
    inc hl
    inc hl
    push hl
    ld hl, $0000
    ld a, e

jr_005_447a:
    add hl, bc
    dec a
    jr nz, jr_005_447a

    ld c, d
    add hl, bc
    add hl, hl
    ld b, h
    ld c, l
    pop hl
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop af
    ret


Call_005_4492:
    push af
    push bc
    push de
    push hl
    ld a, [$c323]
    and $3f
    ld c, $04

jr_005_449d:
    ld b, $05

jr_005_449f:
    push af
    push bc
    call Call_005_450b
    pop bc
    pop af
    inc a
    and $3f
    dec b
    jr nz, jr_005_449f

    call Call_000_2e3b
    dec c
    jr nz, jr_005_449d

    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld c, a
    ld a, [$c322]
    ld b, a
    ld a, [$c323]
    rl b
    adc $00
    rr c
    jr nc, jr_005_44cd

    add $0b

jr_005_44cd:
    and $3f
    ld b, $07

jr_005_44d1:
    push af
    push bc
    call Call_005_450b
    pop bc
    pop af
    inc a
    and $3f
    dec b
    jr nz, jr_005_44d1

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_44e3:
    push af
    push bc
    push de
    push hl
    call Call_005_60b0
    inc hl
    inc hl
    ld b, [hl]
    inc hl
    inc hl
    ld c, [hl]
    ld a, [$c323]
    cp b
    jr c, jr_005_44fa

    ld a, $20
    add b
    ld b, a

jr_005_44fa:
    ld a, b

jr_005_44fb:
    push af
    push bc
    call Call_005_450b
    pop bc
    pop af
    inc a
    dec c
    jr nz, jr_005_44fb

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_450b:
    and $3f
    ld e, a
    ld hl, $d000
    ld a, $06
    ld bc, $0040
    ld d, e

jr_005_4517:
    rr d
    jr nc, jr_005_451c

    add hl, bc

jr_005_451c:
    sla c
    rl b
    dec a
    jr nz, jr_005_4517

    ld a, [$c321]
    and $3f
    ld d, a
    ld c, d
    ld b, $00
    add hl, bc
    ld b, h
    ld c, l
    push bc
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c7e0
    ld a, c
    and $1f
    add l
    ld l, a
    jr nc, jr_005_4541

    inc h

jr_005_4541:
    ld d, $20

jr_005_4543:
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, c
    and $1f
    jr nz, jr_005_4558

    ld hl, $c7e0
    ld a, c
    and $3f
    jr nz, jr_005_4558

    dec bc
    ld a, c
    and $c0
    ld c, a

jr_005_4558:
    dec d
    jr nz, jr_005_4543

    ld hl, $d000
    ld a, e
    and $1f
    ld d, a
    ld a, $05
    ld bc, $0020

jr_005_4567:
    rr d
    jr nc, jr_005_456c

    add hl, bc

jr_005_456c:
    sla c
    rl b
    dec a
    jr nz, jr_005_4567

    push de
    ld d, h
    ld e, l
    ld hl, $c7e0
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $0002
    call Call_000_03eb
    pop de
    pop bc
    ld hl, $c7e0
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    and $1f
    add l
    ld l, a
    jr nc, jr_005_4598

    inc h

jr_005_4598:
    ld d, $20

jr_005_459a:
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, c
    and $1f
    jr nz, jr_005_45af

    ld hl, $c7e0
    ld a, c
    and $3f
    jr nz, jr_005_45af

    dec bc
    ld a, c
    and $c0
    ld c, a

jr_005_45af:
    dec d
    jr nz, jr_005_459a

    ld hl, $d400
    ld a, e
    and $1f
    ld d, a
    ld a, $05
    ld bc, $0020

jr_005_45be:
    rr d
    jr nc, jr_005_45c3

    add hl, bc

jr_005_45c3:
    sla c
    rl b
    dec a
    jr nz, jr_005_45be

    ld d, h
    ld e, l
    ld hl, $c7e0
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $0002
    call Call_000_03eb
    ret


    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    rst $18
    inc b
    dec b
    ld b, a
    rst $18
    ld [de], a
    dec b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [$d863], a
    pop hl
    pop de
    pop bc
    ret


    push hl
    ldh a, [$96]
    push af
    ld hl, $001a
    rst $18
    ld a, [bc]
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    rst $18
    ld c, [hl]
    dec b
    ld h, a
    ld a, [$d82f]
    call Call_005_4c5c
    ld a, [$d863]
    call Call_005_4c5c
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    pop hl
    ret


Call_005_4624:
    push af
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d822]
    or a
    jr nz, jr_005_464d

    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $00, $03

    rst $18

    db $04, $03

    xor a
    ld hl, $c36a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    jr jr_005_4653

jr_005_464d:
    ld a, [$c36e]
    ld [$c36f], a

jr_005_4653:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop af
    ret


Call_005_465b:
    push af
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d822]
    or a
    jr nz, jr_005_4681

    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    nop
    inc bc
    xor a
    ld hl, $c36a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    jr jr_005_4687

jr_005_4681:
    ld a, [$c36e]
    ld [$c36f], a

jr_005_4687:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop af
    ret


Call_005_468f:
    push de
    push bc
    push af
    ld [hl], $00
    add sp, -$01
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], a
    ld a, b
    sla a
    ld h, $00
    ld l, c
    call Call_000_08b9
    add hl, de
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, h
    cp $e0
    jr c, jr_005_46b4

    ld hl, $ffff
    jr jr_005_46eb

jr_005_46b4:
    call Call_005_46f1
    ld [$d820], a
    ld [$d821], a
    cp $ff
    jr nz, jr_005_46c6

    ld hl, $ffff
    jr jr_005_46eb

jr_005_46c6:
    sla a
    sla a
    ld hl, $d800
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    push hl
    ld hl, sp+$02
    ld a, [hl]
    pop hl
    sla a
    sla a
    sla a
    sla a
    sla a
    or $03
    ld [hl], a
    push de
    pop hl

jr_005_46eb:
    add sp, $01
    pop af
    pop bc
    pop de
    ret


Call_005_46f1:
    push hl
    push bc
    push de
    ld d, $06
    ld bc, $0004
    ld hl, $d800
    inc hl

jr_005_46fd:
    ld a, [hl]
    or a
    jr z, jr_005_4709

    add hl, bc
    dec d
    jr nz, jr_005_46fd

    ld a, $ff
    jr jr_005_4713

jr_005_4709:
    ld de, $2800
    add hl, de
    ld a, l
    dec a
    srl a
    srl a

jr_005_4713:
    pop de
    pop bc
    pop hl
    ret


    push af
    push bc
    push de
    push hl
    ld [hl], a
    and $7f
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld e, b
    ld d, c
    dec d
    dec d
    dec e
    dec e
    ld a, [$d84d]
    ld [hl], $02
    inc hl
    ld [hl], a
    inc hl
    ld b, e
    ld c, $03

jr_005_4738:
    ld [hl], c
    inc hl
    ld [hl], a
    inc hl
    dec b
    jr nz, jr_005_4738

    ld [hl], $04
    inc hl
    ld [hl], a
    inc hl

jr_005_4744:
    ld [hl], $05
    inc hl
    ld [hl], a
    inc hl
    ld b, e
    ld c, $20

jr_005_474c:
    ld [hl], c
    inc hl
    ld [hl], a
    inc hl
    dec b
    jr nz, jr_005_474c

    ld [hl], $06
    inc hl
    ld [hl], a
    inc hl
    dec d
    jr nz, jr_005_4744

    ld [hl], $07
    inc hl
    ld [hl], a
    inc hl
    ld b, e
    ld c, $08

jr_005_4763:
    ld [hl], c
    inc hl
    ld [hl], a
    inc hl
    dec b
    jr nz, jr_005_4763

    ld [hl], $09
    inc hl
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_4773:
    push af
    push bc
    push de
    push hl
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld e, b
    ld d, c
    dec d
    dec d
    dec e
    dec e
    push de
    xor a

jr_005_4788:
    bit 0, d
    jr nz, jr_005_478d

    add e

jr_005_478d:
    dec d
    jr nz, jr_005_4788

    ld e, a
    ld d, $80
    ld a, [$d821]
    or a
    jr z, jr_005_479e

    ld a, [$c36e]
    add d
    ld d, a

jr_005_479e:
    ld a, e
    add d
    ld [$d86b], a
    pop de
    ld a, [$d84d]
    ld [hl], $02
    inc hl
    ld [hl], a
    inc hl
    ld b, e
    ld c, $03

jr_005_47af:
    ld [hl], c
    inc hl
    ld [hl], a
    inc hl
    dec b
    jr nz, jr_005_47af

    ld [hl], $04
    inc hl
    ld [hl], a
    inc hl

jr_005_47bb:
    ld [hl], $05
    inc hl
    ld [hl], a
    inc hl
    ld b, e
    bit 0, d
    jr z, jr_005_47ef

    push af
    push de
    sra d
    inc d
    ld a, [$d86b]

jr_005_47cd:
    dec d
    jr z, jr_005_47d3

    sub e
    jr jr_005_47cd

jr_005_47d3:
    ld c, a
    pop de
    pop af
    ld a, [$d86c]
    or a
    ld a, [$d84d]
    jr z, jr_005_47e5

    ld [hl], $20
    inc hl
    ld [hl], a
    inc hl
    dec b

jr_005_47e5:
    ld [hl], c
    inc c
    inc hl
    ld [hl], a
    inc hl
    dec b
    jr nz, jr_005_47e5

    jr jr_005_47f8

jr_005_47ef:
    ld c, $20

jr_005_47f1:
    ld [hl], c
    inc hl
    ld [hl], a
    inc hl
    dec b
    jr nz, jr_005_47f1

jr_005_47f8:
    ld [hl], $06
    inc hl
    ld [hl], a
    inc hl
    dec d
    jr nz, jr_005_47bb

    ld [hl], $07
    inc hl
    ld [hl], a
    inc hl
    ld b, e
    ld c, $08

jr_005_4808:
    ld [hl], c
    inc hl
    ld [hl], a
    inc hl
    dec b
    jr nz, jr_005_4808

    ld [hl], $09
    inc hl
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_4818:
    push af
    push bc
    push de
    push hl
    call Call_005_60b0
    push hl
    ld a, [hl+]
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    pop hl
    call Call_005_4773
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_4831:
    push af
    push bc
    push de
    push hl
    ld a, [hl+]
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push af

jr_005_483f:
    push de
    push bc
    call Call_005_414f

jr_005_4844:
    ld a, [hl]
    inc hl
    ld [de], a
    ld a, [hl]
    inc hl
    push hl
    ld hl, $0400
    add hl, de
    ld [hl], a
    ld a, e
    and $1f
    cp $1f
    jr nz, jr_005_485c

    ld hl, $ffe0
    add hl, de
    ld d, h
    ld e, l

jr_005_485c:
    inc de
    pop hl
    dec b
    jr nz, jr_005_4844

    ld a, c
    pop bc
    ld c, a
    pop de
    inc e
    dec c
    jr nz, jr_005_483f

    pop af
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    ld a, [hl+]
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl

jr_005_487b:
    push de
    push bc

jr_005_487d:
    ld a, $00
    push de
    call Call_005_414f
    ld [de], a
    pop de
    dec b
    jr z, jr_005_488b

    inc d
    jr jr_005_487d

jr_005_488b:
    ld a, c
    pop bc
    ld c, a
    ld a, e
    pop de
    ld e, a
    inc e
    dec c
    jr nz, jr_005_487b

    pop de
    pop bc
    pop af
    ret


Call_005_4899:
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    push bc
    ld b, a
    ld a, [$d822]
    cp $06
    ld a, b
    pop bc
    jr c, jr_005_48b0

    ld a, $ff
    jr jr_005_48cd

jr_005_48b0:
    call Call_005_468f
    push bc
    ld b, a
    ld a, h
    cp $ff
    ld a, b
    pop bc
    jr z, jr_005_48cb

    ld a, $00
    call Call_005_4773
    ld a, [$d822]
    inc a
    ld [$d822], a
    dec a
    jr jr_005_48cd

jr_005_48cb:
    ld a, $ff

jr_005_48cd:
    ret


Call_005_48ce:
    push hl
    push bc
    push de
    push af
    ld b, a
    call Call_005_4a85
    cp $ff
    jr z, jr_005_4944

    ld a, b
    sla a
    sla a
    ld hl, $d800
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    push hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    push hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $03
    inc hl
    ld [hl+], a
    pop hl
    ld a, [$d822]
    dec a
    ld [$d822], a
    ld a, [de]
    and $02
    jr z, jr_005_4944

    ld a, [$d83e]
    or a
    jr z, jr_005_4918

    dec a
    ld hl, $d832
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and $0f
    ld [$d830], a

jr_005_4918:
    ld a, [$d83e]
    dec a
    ld [$d83e], a
    cp $ff
    jr z, jr_005_4944

    ld a, [$d83e]
    ld hl, $d832
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    sra a
    sra a
    sra a
    sra a
    and $0f
    ld [$d831], a
    inc hl
    ld a, [hl]
    and $0f
    ld [$d82f], a

jr_005_4944:
    pop af
    pop de
    pop bc
    pop hl
    ret


Call_005_4949:
    push af
    push bc
    push de
    push hl
    xor a
    ld [$d83f], a
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $01

Jump_005_4959:
    ld a, $06
    ld b, a
    ld hl, $d800
    inc hl
    inc hl

Jump_005_4961:
    ld a, [hl]
    sra a
    res 7, a
    sra a
    sra a
    sra a
    sra a
    cp c
    jp nz, Jump_005_4a15

    ld d, a
    ld a, $06
    sub b
    ld [$d821], a
    push hl
    push bc
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld bc, $d800
    add hl, bc
    inc hl
    ld a, [hl]
    ld b, a
    and $0f
    or $d0
    ld [hl], a
    ld a, b
    pop bc
    pop hl
    and $f0
    cp $c0
    jr nz, jr_005_49ad

    ld a, $01
    ld [$d85e], a
    ld a, [$d821]
    call Call_005_4384
    xor a
    ld [$d85e], a
    ld a, [$d821]
    call Call_005_48ce
    jp Jump_005_4a15


jr_005_49ad:
    ld a, [$d821]
    ld e, a
    ld a, [$d824]
    cp e
    jr nz, jr_005_49cb

    call Call_005_5b03
    ld a, [$d85f]
    or a
    jr nz, jr_005_49cb

    push af
    ld a, [$d83f]
    inc a
    ld [$d83f], a
    pop af
    jr jr_005_4a15

jr_005_49cb:
    ld a, d
    dec hl
    ld d, [hl]
    dec hl
    ld e, [hl]
    push hl
    ld h, d
    ld l, e
    call Call_005_4831
    ld a, [$d821]
    call Call_005_4384
    ld a, [$d83f]
    inc a
    ld [$d83f], a
    ld a, [hl+]
    ld d, [hl]
    inc d
    and $02
    jr z, jr_005_49eb

    inc d

jr_005_49eb:
    inc hl
    ld e, [hl]
    inc e
    pop hl
    inc hl
    inc hl
    ld a, [hl]
    and $03
    cp $03
    jr z, jr_005_4a15

    push hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    call Call_005_6179
    ld hl, $c600
    call Call_005_5235
    pop hl
    ld a, $01
    ld [$d85e], a
    ld a, [$d821]
    call Call_005_4384
    xor a
    ld [$d85e], a

Jump_005_4a15:
jr_005_4a15:
    ld de, $0004
    add hl, de
    dec b
    jp nz, Jump_005_4961

    inc c
    ld a, $08
    cp c
    jp nc, Jump_005_4959

    ld a, [$d83f]
    ld [$d840], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_4a2f:
    push de
    push bc
    push hl
    add sp, -$01
    ld hl, sp+$00
    ld [hl], a
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    call Call_005_4a61
    cp $ff
    jr z, jr_005_4a5b

    push de
    ld de, $011d
    ld hl, $d900
    or a
    jr z, jr_005_4a52

jr_005_4a4e:
    add hl, de
    dec a
    jr nz, jr_005_4a4e

jr_005_4a52:
    pop de
    push hl
    ld hl, sp+$02
    ld a, [hl]
    pop hl
    call Call_005_4899

jr_005_4a5b:
    add sp, $01
    pop hl
    pop bc
    pop de
    ret


Call_005_4a61:
    push hl
    push bc
    push de
    ld b, $07
    ld a, [$d823]
    ld c, $01

jr_005_4a6b:
    rrca
    jr nc, jr_005_4a77

    sla c
    dec b
    jr nz, jr_005_4a6b

    ld a, $ff
    jr jr_005_4a81

jr_005_4a77:
    ld a, [$d823]
    or c
    ld [$d823], a
    ld a, $07
    sub b

jr_005_4a81:
    pop de
    pop bc
    pop hl
    ret


Call_005_4a85:
    push bc
    push de
    ld d, a
    cp $06
    ld a, $ff
    jr nc, jr_005_4aae

    ld c, d
    inc c
    ld a, $01

jr_005_4a92:
    dec c
    jr z, jr_005_4a99

    sla a
    jr jr_005_4a92

jr_005_4a99:
    ld b, a
    ld a, [$d823]
    and b
    ld a, $ff
    jr z, jr_005_4aae

    ld a, b
    xor $ff
    ld b, a
    ld a, [$d823]
    and b
    ld [$d823], a
    ld a, d

jr_005_4aae:
    pop de
    pop bc
    ret


Call_005_4ab1:
    push af
    ldh a, [$8b]
    add $04
    sra a
    res 7, a
    sra a
    sra a
    and $1f
    ld d, a
    ldh a, [$8a]
    add $04
    sra a
    res 7, a
    sra a
    sra a
    and $1f
    ld e, a
    pop af
    ret


    push hl
    ld h, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    ld [$d84d], a
    call Call_005_4af2
    ld h, a
    ld a, $80
    ld [$d84d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    pop hl
    ret


Call_005_4af2:
    push bc
    push de
    push hl
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    call Call_005_4624
    ld h, d
    ld l, e
    call Call_005_4ab1
    ld a, h
    add d
    and $1f
    ld d, a
    ld a, l
    add e
    and $1f
    ld e, a
    ld a, $02
    call Call_005_4a2f
    ld a, [$d820]
    cp $ff
    jr z, jr_005_4b1c

    ld a, [$d820]

jr_005_4b1c:
    pop hl
    pop de
    pop bc
    ret


Call_005_4b20:
    push bc
    push de
    push hl
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    call Call_005_4624
    ld a, b
    ld [$d827], a
    ld a, c
    ld [$d828], a
    push hl
    ld h, d
    ld l, e
    call Call_005_4ab1
    ld a, h
    add d
    and $1f
    ld d, a
    ld a, l
    add e
    and $1f
    ld e, a
    pop hl
    ld a, d
    ld [$d825], a
    ld a, e
    ld [$d826], a
    ld a, $02
    call Call_005_4a2f
    ld a, [$d820]
    cp $ff
    jr z, jr_005_4b5f

    ld a, [$d820]
    ld [$d824], a

jr_005_4b5f:
    pop hl
    pop de
    pop bc
    ret


    push bc
    push de
    push hl
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c372]
    xor $08
    or $80
    ld [$d84d], a
    call Call_005_465b
    ld a, b
    ld [$d827], a
    ld a, c
    ld [$d828], a
    push hl
    ld h, d
    ld l, e
    call Call_005_4ab1
    ld a, h
    add d
    and $1f
    ld d, a
    ld a, l
    add e
    and $1f
    ld e, a
    pop hl
    ld a, d
    ld [$d825], a
    ld a, e
    ld [$d826], a
    ld a, $02
    call Call_005_4a2f
    ld a, [$d820]
    cp $ff
    jr z, jr_005_4bac

    ld a, [$d820]
    ld [$d824], a

jr_005_4bac:
    pop hl
    pop de
    pop bc
    ret


Call_005_4bb0:
    push bc
    push de
    push hl
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    call Call_005_4624
    call Call_005_6179
    push hl
    ld h, d
    ld l, e
    call Call_005_4ab1
    ld a, h
    add d
    and $1f
    ld d, a
    ld a, l
    add e
    and $1f
    ld e, a
    pop hl
    call Call_005_5c3b
    ld a, c
    dec a
    sra a
    ld [$d831], a
    ld a, $02
    ld a, $01
    ld [$d86c], a
    call Call_005_4a2f
    ld a, [$d820]
    push af
    xor a
    ld [$d86c], a
    pop af
    cp $ff
    jp z, Jump_005_4c46

    ld a, [$d820]
    ld b, a
    call Call_005_5a51
    ld a, [$d820]
    ld b, $02
    ld c, $01
    call Call_005_4c9a
    ld a, [$d83e]
    cp $ff
    jr z, jr_005_4c1c

    ld hl, $d832
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$d830]
    ld b, a
    ld a, [hl]
    and $f0
    or b
    ld [hl], a

jr_005_4c1c:
    ld a, [$d83e]
    inc a
    ld [$d83e], a
    ld hl, $d832
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$d831]
    sla a
    sla a
    sla a
    sla a
    ld [hl+], a
    ld a, [$d820]
    ld [$d82f], a
    ld [hl], a
    xor a
    ld [$d830], a
    ld a, [$d820]

Jump_005_4c46:
    pop hl
    pop de
    pop bc
    ret


Call_005_4c4a:
    call Call_005_4bb0
    push af
    push bc
    ld a, [$d820]
    ld b, $03
    ld c, $01
    call Call_005_4c9a
    pop bc
    pop af
    ret


Call_005_4c5c:
    push af
    push bc
    push de
    push hl
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld bc, $d800
    add hl, bc
    inc hl
    ld a, [hl]
    and $0f
    or $c0
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
    ld e, a
    ld d, $00
    sla e
    sla e
    ld hl, $d800
    add hl, de
    inc hl
    inc hl
    ld a, [hl]
    and $1f
    sla b
    sla b
    sla b
    sla b
    sla b
    or b
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_4c9a:
    push af
    push bc
    push de
    push hl
    ld e, a
    ld d, $00
    sla e
    sla e
    ld hl, $d800
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    rr c
    jr nc, jr_005_4cb5

    ld a, [de]
    or b
    ld [de], a
    jr jr_005_4cbc

jr_005_4cb5:
    ld a, b
    xor $ff
    ld b, a
    ld a, [de]
    and b
    ld [de], a

jr_005_4cbc:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_4cc1:
    push de
    push hl
    ld e, a
    ld d, $00
    sla e
    sla e
    ld hl, $d800
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    and $03
    pop hl
    pop de
    ret


Call_005_4cd7:
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d844], a
    ld [$d845], a
    ld a, $ff
    ld hl, $d842
    ld [hl+], a
    ld [hl], a
    ld a, [$d82f]
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, $d800
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld h, b
    ld l, c
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc d
    inc e
    push af
    push bc
    push de
    push hl
    ld a, [$c3f9]
    ld [$d830], a
    xor a
    ld [$c3f9], a
    ld a, [$d830]
    sla a
    add e
    ld e, a
    call Call_005_414f
    xor a
    ld hl, $d841
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $01
    ld hl, $4f20
    call Call_000_23e8
    pop hl
    pop de
    pop bc
    pop af
    push bc
    ld a, [$c3fc]
    bit 6, a
    jr z, jr_005_4d7b

    ld a, [$c3fa]
    bit 7, a
    jr z, jr_005_4d68

    and $7f
    ld b, a
    ld a, [$d830]
    inc a

jr_005_4d4c:
    rrc b
    dec a
    jr nz, jr_005_4d4c

    rlc b
    ld a, [$c3fc]
    and $f0
    or $03
    ld [$c3fc], a

jr_005_4d5d:
    call Call_000_2e3b
    ldh a, [$90]
    and $3b
    jr nz, jr_005_4d5d

    jr jr_005_4d8c

jr_005_4d68:
    ld a, [$c3fc]
    and $f0
    ld [$c3fc], a

jr_005_4d70:
    call Call_000_2e3b
    ldh a, [$90]
    and $0b
    jr nz, jr_005_4d70

    jr jr_005_4d8c

jr_005_4d7b:
    ld a, [$c3fc]
    and $f0
    ld [$c3fc], a

jr_005_4d83:
    call Call_000_2e3b
    ldh a, [$90]
    and $03
    jr nz, jr_005_4d83

jr_005_4d8c:
    pop bc
    ld a, [$d830]
    ld b, a

Jump_005_4d91:
    call Call_000_2e3b
    ldh a, [$91]
    bit 0, a
    jr nz, jr_005_4e05

    bit 6, a
    jr z, jr_005_4daa

    dec b
    bit 7, b
    jr z, jr_005_4dbc

    ld a, [$d831]
    dec a
    ld b, a
    jr jr_005_4dbc

jr_005_4daa:
    ldh a, [$91]
    and $80
    jp z, Jump_005_4e32

    ld a, [$d831]
    ld c, a
    inc b
    ld a, b
    cp c
    jr c, jr_005_4dbc

    ld b, $00

jr_005_4dbc:
    rst $08

    db $5b

    push de
    xor a
    ld [$d841], a
    ld a, b
    sla a
    add e
    ld e, a
    ld a, $20
    call Call_005_4128
    push af
    push bc
    push de
    push hl
    ld hl, $d842
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $3000
    add hl, de
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d844
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    pop de
    push de
    ld a, b
    sla a
    add e
    ld e, a
    push hl
    call Call_005_414f
    ld hl, $d842
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop de
    ld a, b
    ld [$d830], a
    jr jr_005_4e32

jr_005_4e05:
    ld a, b
    ld [$d830], a
    rst $08

    db $5c

    push af
    push bc
    push de
    push hl
    ld hl, $4f20
    call Call_000_2449
    call Call_000_2e3b
    ld a, [$d830]
    sla a
    inc a
    ld e, a
    ld d, $01
    ld a, [$d82f]
    ld c, $0d
    ld b, $80
    call Call_005_4408
    pop hl
    pop de
    pop bc
    pop af
    jp Jump_005_4f15


Jump_005_4e32:
jr_005_4e32:
    ldh a, [$94]
    and $08
    jp z, Jump_005_4e4c

    ld a, [$c3fc]
    bit 7, a
    jr z, jr_005_4e4c

    and $f0
    ld [$c3fc], a
    rst $08

    db $5d

    ld a, $ff
    jp Jump_005_4ed5


Jump_005_4e4c:
jr_005_4e4c:
    ldh a, [$91]
    and $02
    jp z, Jump_005_4e62

    rst $08

    db $5d

    ld a, [$c3fc]
    and $f0
    ld [$c3fc], a
    ld a, $ff
    jp Jump_005_4ed5


Jump_005_4e62:
    push af
    push bc
    push de
    push hl
    ld a, [$c3fa]
    bit 7, a
    jr z, jr_005_4eaa

    and $7f
    ld b, a
    ld a, [$d830]
    inc a

jr_005_4e74:
    rrc b
    dec a
    jr nz, jr_005_4e74

    rlc b
    bit 0, b
    jr z, jr_005_4eaa

    ldh a, [$91]
    and $c0
    jr nz, jr_005_4eaa

    ldh a, [$91]
    and $20
    jp z, Jump_005_4e98

    ld a, [$c3fc]
    and $f0
    or $01
    ld [$c3fc], a
    jr jr_005_4eda

Jump_005_4e98:
    ldh a, [$91]
    and $10
    jr z, jr_005_4eaa

    ld a, [$c3fc]
    and $f0
    or $02
    ld [$c3fc], a
    jr jr_005_4eda

jr_005_4eaa:
    pop hl
    pop de
    pop bc
    pop af
    call Call_005_4cc1
    cp $03
    jp nz, Jump_005_4d91

    ld a, [$c32d]
    dec a
    sra a
    sra a
    jp z, Jump_005_4d91

    ldh a, [$91]
    and $20
    jp z, Jump_005_4ecc

    ld a, $fe
    jr jr_005_4ed5

Jump_005_4ecc:
    ldh a, [$91]
    and $10
    jp z, Jump_005_4d91

    ld a, $fd

Jump_005_4ed5:
jr_005_4ed5:
    ld [$d830], a
    jr jr_005_4ee1

jr_005_4eda:
    pop hl
    pop de
    pop bc
    pop af
    ld a, [$d830]

jr_005_4ee1:
    push af
    push bc
    push de
    push hl
    ld hl, $4f20
    call Call_000_2449
    call Call_000_2e3b
    ld a, [$d83e]
    or a
    jr z, jr_005_4f11

    dec a
    ld hl, $d832
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    and $0f
    sla a
    inc a
    ld e, a
    ld d, $01
    ld a, [hl]
    and $0f
    ld c, $20
    ld b, $80
    call Call_005_4408

jr_005_4f11:
    pop hl
    pop de
    pop bc
    pop af

Jump_005_4f15:
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop hl
    pop de
    pop bc
    ret


    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fa]
    bit 7, a
    jr z, jr_005_4f5d

    and $7f
    ld b, a
    ld a, [$d830]
    inc a

jr_005_4f34:
    rrc b
    dec a
    jr nz, jr_005_4f34

    rlc b
    bit 0, b
    jr z, jr_005_4f5d

    rst $30

    db $00, $06

    jp nz, Jump_005_500a

    rst $30

    db $20, $06

    jp nz, Jump_005_500a

    rst $30

    db $40, $06

    jp nz, Jump_005_500a

    rst $30

    db $60, $06

    jp nz, Jump_005_500a

    rst $30
    add b
    ld b, $c2
    ld a, [bc]
    ld d, b

jr_005_4f5d:
    rst $30

    db $00, $06

    jr nz, jr_005_4f7d

    rst $30

    db $20, $06

    jp nz, Jump_005_4f8f

    rst $30

    db $40, $06

    jp nz, Jump_005_4f99

    rst $30

    db $60, $06

    jp nz, Jump_005_4fa3

    rst $30

    db $80, $06

    jp nz, Jump_005_4fb5

    jp Jump_005_4fc5


jr_005_4f7d:
    ld l, $20
    ld de, $0d01
    rst $18
    jr z, @+$43

    ld l, $20
    ld de, $0d03
    rst $18
    jr z, jr_005_4fce

    jr jr_005_4fc5

Jump_005_4f8f:
    ld l, $20
    ld de, $0e05
    rst $18
    jr z, jr_005_4fd8

    jr jr_005_4fc5

Jump_005_4f99:
    ld l, $20
    ld de, $0e07
    rst $18
    jr z, jr_005_4fe2

    jr jr_005_4fc5

Jump_005_4fa3:
    ld l, $20
    ld de, $0b07
    rst $18

    db $28, $41

    ld l, $20
    ld de, $0b09
    rst $18

    db $28, $41

    jr jr_005_4fc5

Jump_005_4fb5:
    ld l, $20
    ld de, $0b03
    rst $18
    jr z, @+$43

    ld l, $20
    ld de, $0b05
    rst $18
    jr z, jr_005_5006

Jump_005_4fc5:
jr_005_4fc5:
    ld hl, $d841
    ld a, [hl+]
    and $10
    or a
    jr z, jr_005_4fd2

jr_005_4fce:
    ld a, $20
    jr jr_005_4fd4

jr_005_4fd2:
    ld a, $0d

jr_005_4fd4:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d

jr_005_4fd8:
    ld l, e
    ld de, $3000
    add hl, de
    ld de, $9800
    add hl, de
    ld d, h

jr_005_4fe2:
    ld e, l
    ld l, a
    ld h, $80
    push de
    call Call_000_04b4
    pop de
    ld a, [$d841]
    inc a
    ld [$d841], a
    ld a, [$d845]
    or a
    jr z, jr_005_5009

    ld d, a
    ld a, [$d844]
    ld e, a
    ld a, $20
    ld l, a
    ld h, $80
    call Call_000_04b4
    xor a

jr_005_5006:
    ld [$d845], a

jr_005_5009:
    ret


Jump_005_500a:
    ld a, [$d845]
    or a
    jr z, jr_005_5021

    ld d, a
    ld a, [$d844]
    ld e, a
    ld a, $20
    ld l, a
    ld h, $80
    call Call_000_04b4
    xor a
    ld [$d845], a

jr_005_5021:
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d841
    inc [hl]
    rst $30

    db $00, $06

    jr nz, jr_005_504a

    rst $30

    db $20, $06

    jr nz, jr_005_509a

    rst $30

    db $40, $06

    jp nz, Jump_005_50bf

    rst $30

    db $60, $06

    jp nz, Jump_005_50e4

    rst $30
    add b
    ld b, $c2
    ld [hl-], a
    ld d, c
    jp Jump_005_5183


jr_005_504a:
    ld l, $20
    ld de, $0d01
    rst $18

    db $28, $41

    ld l, $20
    ld de, $0d03
    rst $18

    db $28, $41

    ld a, [$d830]
    and a
    jr nz, jr_005_507d

    call Call_005_5184
    and a
    ld de, $0101
    jp z, Jump_005_517e

    ld l, $0c
    ld de, $0101
    rst $18

    db $28, $41

    ld l, $0d
    ld de, $0d01
    rst $18

    db $28, $41

    jp Jump_005_5183


jr_005_507d:
    call Call_005_5184
    and a
    ld de, $0103
    jp z, Jump_005_517e

    ld l, $0c
    ld de, $0103
    rst $18

    db $28, $41

    ld l, $0d
    ld de, $0d03
    rst $18

    db $28, $41

    jp Jump_005_5183


jr_005_509a:
    ld l, $20
    ld de, $0e05
    rst $18
    jr z, @+$43

    call Call_005_5184
    and a
    ld de, $0105
    jp z, Jump_005_517e

    ld l, $0c
    ld de, $0105
    rst $18
    jr z, @+$43

    ld l, $0d
    ld de, $0e05
    rst $18
    jr z, @+$43

    jp Jump_005_5183


Jump_005_50bf:
    ld l, $20
    ld de, $0e07
    rst $18
    jr z, @+$43

    call Call_005_5184
    and a
    ld de, $0107
    jp z, Jump_005_517e

    ld l, $0c
    ld de, $0107
    rst $18
    jr z, jr_005_511a

    ld l, $0d
    ld de, $0e07
    rst $18
    jr z, jr_005_5122

    jp Jump_005_5183


Jump_005_50e4:
    ld l, $20
    ld de, $0b07
    rst $18

    db $28, $41

    ld l, $20
    ld de, $0b09
    rst $18

    db $28, $41

    ld a, [$d830]
    sub $03
    jr nz, jr_005_5117

    call Call_005_5184
    and a
    ld de, $0107
    jr z, jr_005_517e

    ld l, $0c
    ld de, $0107
    rst $18

    db $28, $41

    ld l, $0d
    ld de, $0b07
    rst $18

    db $28, $41

    jp Jump_005_5183


jr_005_5117:
    call Call_005_5184

jr_005_511a:
    and a
    ld de, $0109
    jr z, jr_005_517e

    ld l, $0c

jr_005_5122:
    ld de, $0109
    rst $18

    db $28, $41

    ld l, $0d
    ld de, $0b09
    rst $18

    db $28, $41

    jr jr_005_5183

    ld l, $20
    ld de, $0b03
    rst $18
    jr z, @+$43

    ld l, $20
    ld de, $0b05
    rst $18
    jr z, jr_005_5183

    ld a, [$d830]
    dec a
    jr nz, jr_005_5163

    call Call_005_5184
    and a
    ld de, $0103
    jr z, jr_005_517e

    ld l, $0c
    ld de, $0103
    rst $18
    jr z, jr_005_519a

    ld l, $0d
    ld de, $0b03
    rst $18
    jr z, jr_005_51a2

    jr jr_005_5183

jr_005_5163:
    call Call_005_5184
    and a
    ld de, $0105
    jr z, jr_005_517e

    ld l, $0c
    ld de, $0105
    rst $18
    jr z, @+$43

    ld l, $0d
    ld de, $0b05
    rst $18
    jr z, @+$43

    jr jr_005_5183

Jump_005_517e:
jr_005_517e:
    ld l, $20
    rst $18

    db $28, $41

Jump_005_5183:
jr_005_5183:
    ret


Call_005_5184:
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d841]
    and $10
    or a
    jr z, jr_005_5194

    xor a
    ret


jr_005_5194:
    ld a, $01
    ret


    push bc
    push de
    push hl

jr_005_519a:
    ld b, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a

jr_005_51a2:
    ldh [rSVBK], a
    ld a, b
    add sp, -$03
    ld b, h
    ld c, l
    ld hl, sp+$00
    ld [hl], b
    ld hl, sp+$01
    ld [hl], c
    ld hl, sp+$02
    ld [hl], a
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d846], a

Jump_005_51bc:
jr_005_51bc:
    ld hl, sp+$00
    ld b, [hl]
    ld hl, sp+$01
    ld c, [hl]
    ld a, [$d846]
    ld h, $00
    ld l, a
    add hl, bc
    ld d, $01
    ld e, $01
    call Call_005_4c4a
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    call Call_005_4cd7
    push af
    ld a, [$d82f]
    call Call_005_4c5c
    ld a, $ff
    ld [$d82f], a
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    pop af
    cp $7f
    jr nc, jr_005_51fb

    ld b, a
    ld a, [$d846]
    sla a
    sla a
    add b
    jr jr_005_5225

jr_005_51fb:
    cp $ff
    jr z, jr_005_5225

    cp $fe
    jr nz, jr_005_5214

    ld a, [$d846]
    dec a
    cp $ff
    jr nz, jr_005_520f

    ld hl, sp+$02
    ld a, [hl]
    dec a

jr_005_520f:
    ld [$d846], a
    jr jr_005_51bc

jr_005_5214:
    ld a, [$d846]
    inc a
    ld hl, sp+$02
    ld b, [hl]
    cp b
    jr c, jr_005_521f

    xor a

jr_005_521f:
    ld [$d846], a
    jp Jump_005_51bc


jr_005_5225:
    ld [$d830], a
    add sp, $03
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop hl
    pop de
    pop bc
    ret


Call_005_5235:
    push bc
    ld a, [$d84f]
    or a
    jr z, jr_005_5257

    ld a, [$d821]
    ld b, a
    ld a, [$d824]
    cp b
    jr nz, jr_005_5257

    ld bc, $3a00
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $d84e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    xor a
    ld [$d84f], a

jr_005_5257:
    ld a, [$d821]
    or a
    jr nz, jr_005_5264

    xor a
    ld [$c36e], a
    ld [$c36f], a

jr_005_5264:
    rst $18

    db $0a, $03

    call Call_005_43f6
    ld a, d
    and $1f
    ld [$d82a], a
    ld a, e
    and $1f
    ld [$d82b], a
    call Call_005_414f

Jump_005_5279:
jr_005_5279:
    ld a, [$d850]
    or a
    jr z, jr_005_5289

    ld a, l
    ld [$d84e], a
    ld a, h
    ld [$d84f], a
    pop bc
    ret


jr_005_5289:
    ld a, l
    ld [$d869], a
    ld a, h
    ld [$d86a], a
    ld a, [hl]
    inc hl
    ld b, a
    or a
    jr nz, jr_005_529c

    rst $18

    db $10, $03

    pop bc
    ret


jr_005_529c:
    cp $de
    jr z, jr_005_52ae

    cp $df
    jr z, jr_005_52b2

    cp $0e
    jr z, jr_005_52b6

    cp $20
    jr nc, jr_005_52c4

    jr jr_005_52bc

jr_005_52ae:
    ld a, $1e
    jr jr_005_52bc

jr_005_52b2:
    ld a, $1f
    jr jr_005_52bc

jr_005_52b6:
    push af
    ld a, [hl+]
    ld [$c361], a
    pop af

jr_005_52bc:
    call Call_005_58e2
    call Call_005_43f6
    jr jr_005_5279

jr_005_52c4:
    ld a, b
    call Call_005_5885
    rst $18

    db $0c, $03

    rst $18

    db $0e, $03

    ld a, [hl]
    cp $de
    jr z, jr_005_52da

    cp $df
    jr z, jr_005_52da

    call Call_005_5cc2

jr_005_52da:
    inc de
    ld a, e
    and $1f
    jr nz, jr_005_5279

    push hl
    push de
    ld h, d
    ld l, e
    ld de, $ffe0
    add hl, de
    ld d, h
    ld e, l
    pop de
    pop hl
    jp Jump_005_5279


    rst $18

    db $0c, $03

    push af
    ld a, [$d82b]
    inc a
    inc a
    and $1f
    ld [$d82b], a
    ld e, a
    ld a, [$d82a]
    ld d, a
    call Call_005_414f
    pop af
    ret


    push af
    ld a, [$d82b]
    inc a
    and $1f
    ld [$d82b], a
    ld e, a
    ld a, [$d82a]
    ld d, a
    call Call_005_414f
    pop af
    ret


    push af
    push bc
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d864
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c362]
    cpl
    inc a
    sla a
    add l
    ld l, a
    jr nc, jr_005_5339

    inc h

jr_005_5339:
    ld a, l
    ld [$d864], a
    ld a, h
    ld [$d865], a
    ld d, h
    ld e, l
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop bc
    pop af
    ret


    push af
    ld a, [$d829]
    or a
    jr nz, jr_005_535f

    ld a, $01
    ld [$d829], a
    call Call_005_43f6
    xor a
    ld [$d829], a

jr_005_535f:
    ld a, $1e

jr_005_5361:
    call Call_000_2e3b
    dec a
    jr nz, jr_005_5361

    pop af
    ret


    push af
    push bc
    ld a, [$d829]
    or a
    jr nz, jr_005_537d

    ld a, $01
    ld [$d829], a
    call Call_005_43f6
    xor a
    ld [$d829], a

jr_005_537d:
    ld b, $0f

jr_005_537f:
    call Call_000_2e3b
    ldh a, [$91]
    and $f3
    jr nz, jr_005_538b

    dec b
    jr nz, jr_005_537f

jr_005_538b:
    pop bc
    pop af
    ret


    push af
    push de
    ld a, $01
    call Call_005_5885
    call Call_005_53d1
    call Call_005_414f
    ld [de], a
    call Call_005_43f6
    xor a
    ld hl, $d841
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    push af
    push bc
    push de
    push hl
    ld a, $01
    ld hl, $53f9
    call Call_000_23e8
    call Call_005_5433
    ld hl, $53f9
    call Call_000_2449
    rst $20

    db $20, $03

    call Call_000_2e3b
    rst $28

    db $20, $03

    pop hl
    pop de
    pop bc
    pop af
    ld a, $01
    ld [$d850], a
    pop de
    pop af
    ret


Call_005_53d1:
    push af
    push bc
    push hl
    ld a, [$d824]
    ld b, $00
    ld c, a
    sla c
    sla c
    ld hl, $d800
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld h, b
    ld l, c
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl+]
    sra a
    add d
    ld d, a
    ld a, [hl+]
    dec a
    add e
    ld e, a
    pop hl
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d841
    ld a, [hl+]
    and $10
    or a
    jr z, jr_005_5410

    ld a, $08
    jr jr_005_5412

jr_005_5410:
    ld a, $01

jr_005_5412:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    ld de, $3000
    add hl, de
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    ld l, a
    ld h, $80
    call Call_000_04b4
    ld a, [$d841]
    inc a
    ld [$d841], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_5433:
    push af
    push bc
    rst $30

    db $c0, $02

    jr nz, jr_005_5462

    rst $18

    db $10, $03

    ldh a, [$90]
    and $f3
    jr z, jr_005_5451

    ld b, $1e

jr_005_5445:
    call Call_000_2e3b
    ldh a, [$90]
    and $f3
    jr z, jr_005_5451

    dec b
    jr nz, jr_005_5445

jr_005_5451:
    rst $30

    db $c0, $02

    jr nz, jr_005_5462

    call Call_000_0a61
    call Call_000_2e3b
    ldh a, [$91]
    and $f3
    jr z, jr_005_5451

jr_005_5462:
    pop bc
    pop af
    ret


    call Call_000_2ed5
    inc a
    ret


    push af
    push bc
    ld hl, $dfae
    ld a, [$d84a]
    ld b, a
    ld a, [$d847]
    cp b
    jr z, jr_005_54cc

    ld c, a
    sla c
    inc a
    ld [$d847], a
    ld b, $00
    add hl, bc
    ld b, h
    ld c, l
    inc bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or a
    jr z, jr_005_54cc

    xor a
    ld [bc], a
    ld a, h
    sra a
    sra a
    sra a
    sra a
    or a
    jr z, jr_005_54a9

    ld b, a
    ld a, h
    and $0f
    or $d0
    ld h, a
    ld a, b
    ldh [$96], a
    ldh [rSVBK], a
    jr jr_005_54b5

jr_005_54a9:
    ld b, a
    ld a, h
    and $0f
    or $c0
    ld h, a
    ld a, b
    ldh [$96], a
    ldh [rSVBK], a

jr_005_54b5:
    push de
    ld de, $c780
    ld bc, $0020
    call MemCopy
    pop de
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c780
    call Call_005_596c

jr_005_54cc:
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, h
    and $f0
    cp $d0
    jr nz, jr_005_54ec

    ld a, h
    and $0f
    ld b, a
    ldh a, [$96]
    sla a
    sla a
    sla a
    sla a
    or b
    ld h, a
    jr jr_005_54f0

jr_005_54ec:
    ld a, h
    and $0f
    ld h, a

jr_005_54f0:
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld d, h
    ld e, l
    ld a, [$d847]
    cp $10
    jr z, jr_005_5515

    ld b, $00
    ld c, a
    sla c
    inc a
    ld [$d847], a
    ld [$d84a], a
    ld hl, $dfae
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d

jr_005_5515:
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
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld d, h
    ld e, l
    ld a, [$d848]
    cp $10
    jr z, jr_005_5548

    ld b, $00
    ld c, a
    sla c
    inc a
    ld [$d848], a
    ld [$d84b], a
    ld hl, $dfce
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d

jr_005_5548:
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
    ld d, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d849]
    cp $10
    jr z, jr_005_5576

    ld b, $00
    ld c, a
    inc a
    ld [$d849], a
    ld [$d84c], a
    ld hl, $dfee
    add hl, bc
    ld [hl], d

jr_005_5576:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push de
    dec de
    ld h, $ff
    ld l, $e0
    add hl, de
    ld d, h
    ld e, l
    call Call_005_58b1
    ld a, [de]
    cp $03
    jr nz, jr_005_5595

    ld a, $0e
    jr jr_005_5597

jr_005_5595:
    ld a, $de

jr_005_5597:
    ld [de], a
    pop de
    call Call_005_43f6
    call Call_005_5cc2
    ret


    push de
    dec de
    ld h, $ff
    ld l, $e0
    add hl, de
    ld d, h
    ld e, l
    call Call_005_58b1
    ld a, [de]
    cp $03
    jr nz, jr_005_55b5

    ld a, $0f
    jr jr_005_55b7

jr_005_55b5:
    ld a, $df

jr_005_55b7:
    ld [de], a
    pop de
    call Call_005_43f6
    call Call_005_5cc2
    ret


    push af
    push bc
    ld hl, $c800
    call Call_005_596c
    pop bc
    pop af
    ret


Call_005_55cb:
    push bc
    push hl
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d866]
    ld b, $00
    ld c, a
    inc a
    ld [$d866], a
    sla c
    ld hl, $dfae
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    sra a
    res 7, a
    sra a
    sra a
    sra a
    or a
    jr z, jr_005_5602

    ld b, a
    ld a, h
    and $0f
    or $d0
    ld h, a
    ld a, b
    ldh [$96], a
    ldh [rSVBK], a
    jr jr_005_560e

jr_005_5602:
    ld b, a
    ld a, h
    and $0f
    or $c0
    ld h, a
    ld a, b
    ldh [$96], a
    ldh [rSVBK], a

jr_005_560e:
    push de
    ld de, $c780
    ld bc, $0020
    call MemCopy
    pop de
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c780
    ld b, $00

jr_005_5624:
    ld a, [hl+]
    or a
    jr z, jr_005_5630

    rst $18
    ld b, $03
    ld a, c
    add b
    ld b, a
    jr jr_005_5624

jr_005_5630:
    ld a, b
    pop hl
    pop bc
    ret


Call_005_5634:
    push bc
    push hl
    ld hl, $c800
    ld b, $00

jr_005_563b:
    ld a, [hl+]
    cp $00
    jr z, jr_005_5648

    rst $18

    db $06, $03

    ld a, c
    add b
    ld b, a
    jr jr_005_563b

jr_005_5648:
    ld a, b
    pop hl
    pop bc
    ret


    push af
    push bc
    ld a, [$d84c]
    ld b, a
    ld a, [$d849]
    cp b
    jr z, jr_005_5676

    ld b, $00
    ld c, a
    inc a
    ld [$d849], a
    ld hl, $dfee
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld b, h
    ld c, l
    ld hl, $0000
    add hl, bc
    call Call_005_61d4
    ld hl, $d880
    call Call_005_596c

jr_005_5676:
    pop bc
    pop af
    ret


Call_005_5679:
    push bc
    push hl
    ld a, [$d868]
    ld b, $00
    ld c, a
    inc a
    ld [$d868], a
    ld hl, $dfee
    add hl, bc
    ld a, [hl]
    ld l, a
    ld h, $00
    ld b, h
    ld c, l
    ld hl, $0000
    add hl, bc
    call Call_005_61d4
    ld hl, $d880
    ld b, $00

jr_005_569b:
    ld a, [hl+]
    cp $00
    jr z, jr_005_56a7

    rst $18
    ld b, $03
    ld a, c
    add b
    jr jr_005_569b

jr_005_56a7:
    ld a, b
    pop hl
    pop bc
    ret


    push bc
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d84b]
    ld b, a
    ld a, [$d848]
    cp b
    jr z, jr_005_56db

    ld b, $00
    ld c, a
    sla c
    inc a
    ld [$d848], a
    ld hl, $dfce
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld h, b
    ld l, c
    call Call_005_5a13
    jr jr_005_56e0

jr_005_56db:
    pop af
    ldh [$96], a
    ldh [rSVBK], a

jr_005_56e0:
    pop bc
    ret


Call_005_56e2:
    push hl
    push bc
    push de
    ld a, [$d867]
    ld b, $00
    ld c, a
    sla c
    inc a
    ld [$d867], a
    ld hl, $dfce
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    ld bc, $d8f0
    ld de, $2710
    add hl, bc
    ld a, $05
    bit 7, h
    jr z, jr_005_574c

    add hl, de

jr_005_5708:
    add hl, bc
    bit 7, h
    jr z, jr_005_5708

    add hl, de
    ld bc, $fc18
    ld de, $03e8
    add hl, bc
    ld a, $04
    bit 7, h
    jr z, jr_005_574c

    add hl, de

jr_005_571c:
    add hl, bc
    bit 7, h
    jr z, jr_005_571c

    add hl, de
    ld bc, $ff9c
    ld de, $0064
    add hl, bc
    ld a, $03
    bit 7, h
    jr z, jr_005_574c

    add hl, de

jr_005_5730:
    add hl, bc
    bit 7, h
    jr z, jr_005_5730

    add hl, de
    ld bc, $fff6
    ld de, $000a
    add hl, bc
    ld a, $02
    bit 7, h
    jr z, jr_005_574c

    add hl, de

jr_005_5744:
    add hl, bc
    bit 7, h
    jr z, jr_005_5744

    add hl, de
    ld a, $01

jr_005_574c:
    ld b, $00

jr_005_574e:
    push af
    push hl
    dec a
    add a
    ld hl, $577c
    add l
    ld l, a
    jr nc, jr_005_575a

    inc h

jr_005_575a:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    xor a

jr_005_575f:
    call Call_000_08ac
    bit 7, h
    jr nz, jr_005_5769

    inc a
    jr jr_005_575f

jr_005_5769:
    add hl, de
    ld c, $30
    add c
    rst $18
    ld b, $03
    ld a, c
    add b
    ld b, a
    pop af
    dec a
    jr nz, jr_005_574e

    ld a, b
    pop de
    pop bc
    pop hl
    ret


    ld bc, $0a00
    nop
    ld h, h
    nop
    add sp, $03
    db $10
    daa
    push af
    push bc
    ld a, [$d85d]
    ld b, $00
    ld c, a
    ld hl, $003c
    add hl, bc
    call Call_005_61d4
    ld hl, $d880
    call Call_005_596c
    pop bc
    pop af
    ret


Call_005_579e:
    push bc
    push hl
    ld a, [$d85d]
    ld b, $00
    ld c, a
    ld hl, $003c
    add hl, bc
    call Call_005_61d4
    ld hl, $d880
    ld b, $00

jr_005_57b2:
    ld a, [hl+]
    cp $00
    jr z, jr_005_57bf

    rst $18
    ld b, $03
    ld a, c
    add b
    ld b, a
    jr jr_005_57b2

jr_005_57bf:
    ld a, b
    pop hl
    pop bc
    ret


    push af
    push bc
    push de
    push hl
    ld b, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [$d85d], a
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
    ld a, [$c361]
    push de
    ld hl, $0043
    add l
    ld l, a
    jr nc, jr_005_57ed

    inc h

jr_005_57ed:
    ld de, $c780
    rst $18
    ld e, h
    dec b
    pop de
    ld hl, $c780
    call Call_005_596c
    pop bc
    pop af
    ret


Call_005_57fd:
    push bc
    push de
    push hl
    ld a, [$c361]
    ld hl, $0043
    add l
    ld l, a
    jr nc, jr_005_580b

    inc h

jr_005_580b:
    ld de, $c780
    rst $18
    ld e, h
    dec b
    ld hl, $c780
    ld b, $00

jr_005_5816:
    ld a, [hl+]
    cp $00
    jr z, jr_005_5823

    rst $18
    ld b, $03
    ld a, c
    add b
    ld b, a
    jr jr_005_5816

jr_005_5823:
    ld a, b
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $dfce
    ld a, [hl]
    and $03
    push de
    ld hl, $1ca3
    add l
    ld l, a
    jr nc, jr_005_5842

    inc h

jr_005_5842:
    ld de, $c780
    rst $18
    ld e, h
    dec b
    pop de
    ld hl, $c780
    call Call_005_596c
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop bc
    pop af
    ret


Call_005_5857:
    push bc
    push de
    push hl
    ld hl, $dfce
    ld a, [hl]
    and $03
    ld hl, $1ca3
    add l
    ld l, a
    jr nc, jr_005_5868

    inc h

jr_005_5868:
    ld de, $c780
    rst $18
    ld e, h
    dec b
    ld hl, $c780
    ld b, $00

jr_005_5873:
    ld a, [hl+]
    cp $00
    jr z, jr_005_5880

    rst $18
    ld b, $03
    ld a, c
    add b
    ld b, a
    jr jr_005_5873

jr_005_5880:
    ld a, b
    pop hl
    pop de
    pop bc
    ret


Call_005_5885:
    push af
    push hl
    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    sra l
    res 7, l
    sra l
    sra l
    ld a, [$d82b]
    cp l
    jr z, jr_005_58a7

    ld a, e
    sub $20
    ld e, a
    jr nc, jr_005_58a7

    ld e, a
    dec d

jr_005_58a7:
    ld a, d
    and $03
    ld h, a
    or $d0
    ld d, a
    pop hl
    pop af
    ret


Call_005_58b1:
    push af
    push hl
    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    sra l
    res 7, l
    sra l
    sra l
    ld a, [$d82b]
    dec a
    and $1f
    cp l
    jr z, jr_005_58d8

    ld a, e
    sub $20
    ld e, a
    jr nc, jr_005_58d8

    and $3f
    ld e, a
    dec d

jr_005_58d8:
    ld a, d
    and $03
    ld h, a
    or $d0
    ld d, a
    pop hl
    pop af
    ret


Call_005_58e2:
    push hl
    ld hl, $58fe
    push hl
    push af
    push bc
    push de
    sla a
    ld hl, $592c
    ld c, a
    ld b, $00
    add hl, bc
    ld d, h
    ld e, l
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    pop de
    pop bc
    pop af
    jp hl


    pop hl
    ret


    ld a, $0a
    ld [de], a
    inc de
    call Call_005_43f6
    call Call_005_5cc2
    ret


    ld a, $0b
    ld [de], a
    inc de
    call Call_005_43f6
    call Call_005_5cc2
    ret


    ld a, $0c
    ld [de], a
    inc de
    call Call_005_43f6
    call Call_005_5cc2
    ret


    ld a, $0d
    ld [de], a
    inc de
    call Call_005_43f6
    call Call_005_5cc2
    ret


    rst $28
    ld d, d

    db $ef, $52, $8e, $53, $33, $54, $6a, $54

    ld c, h
    ld d, e
    ld l, c
    ld d, e

    db $c0, $55

    ld c, h
    ld d, [hl]

    db $ab, $56

    rlca
    ld d, e
    add [hl]
    ld d, a
    ld h, l
    ld d, h
    dec de
    ld d, e
    rst $18
    ld d, a
    jr z, @+$5a

    nop
    ld e, c
    dec bc
    ld e, c
    ld d, $59
    ld hl, $ef59
    ld d, d
    rst $28
    ld d, d
    rst $28
    ld d, d
    rst $28
    ld d, d
    rst $28
    ld d, d
    rst $28
    ld d, d
    rst $28
    ld d, d
    rst $28
    ld d, d
    rst $28
    ld d, d
    rst $28
    ld d, d
    add b
    ld d, l
    and b
    ld d, l

Call_005_596c:
    push af
    ld a, [$d86a]
    cp $c6
    jr nz, jr_005_597a

    ld a, [$d869]
    or a
    jr z, jr_005_5990

jr_005_597a:
    dec de
    ld a, [de]
    inc de
    cp $05
    jr z, jr_005_5990

    ld a, e
    and $1f
    jr nz, jr_005_5990

    push hl
    ld h, d
    ld l, e
    ld de, $ffe0
    add hl, de
    ld d, h
    ld e, l
    pop hl

jr_005_5990:
    ld a, [hl]
    cp $00
    jr z, jr_005_59cf

    rst $18

    db $18, $03

    rst $18

    db $0e, $03

    inc hl
    ld a, [hl]
    cp $de
    jr z, jr_005_59a5

    cp $df
    jr nz, jr_005_59ba

jr_005_59a5:
    push hl
    push bc
    ld h, d
    ld l, e
    ld bc, $ffe0
    add hl, bc
    ld b, a
    ld a, [hl]
    cp $03
    ld a, b
    jr nz, jr_005_59b6

    sub $d0

jr_005_59b6:
    ld [hl], a
    pop bc
    pop hl
    inc hl

jr_005_59ba:
    call Call_005_5cc2
    inc de
    ld a, e
    and $1f
    jr nz, jr_005_5990

    push hl
    ld h, d
    ld l, e
    ld de, $ffe0
    add hl, de
    ld d, h
    ld e, l
    pop hl
    jr jr_005_5990

jr_005_59cf:
    pop af
    ret


    push af
    push bc
    push hl
    add sp, -$0a
    ld hl, sp+$00
    push de
    ld d, h
    ld e, l
    ld b, h
    ld c, l
    ld h, $00
    ld l, a
    call Call_000_20e0
    jp Jump_005_5a45


    push af
    push bc
    push hl
    ld b, h
    ld c, l
    add sp, -$0a
    ld hl, sp+$00
    push de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    ld b, d
    ld c, e
    call Call_000_20e0
    jp Jump_005_5a45


    push af
    push bc
    push hl
    add sp, -$0a
    ld hl, sp+$00
    push de
    ld d, h
    ld e, l
    ld b, h
    ld c, l
    ld h, $00
    ld l, a
    ld a, $04
    call Call_000_21f0
    jp Jump_005_5a45


Call_005_5a13:
    push af
    push bc
    push hl
    ld b, h
    ld c, l
    add sp, -$0a
    ld hl, sp+$00
    push de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    ld b, d
    ld c, e
    ld a, $00
    call Call_000_21f0
    ld a, [$c360]
    or a
    jr z, jr_005_5a45

    push bc
    ld h, b
    ld l, c
    ld d, $00
    ld e, $05

jr_005_5a35:
    ld a, [hl+]
    or a
    jr z, jr_005_5a3c

    dec e
    jr nz, jr_005_5a35

jr_005_5a3c:
    pop bc
    pop hl
    add hl, de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    jr jr_005_5a48

Jump_005_5a45:
jr_005_5a45:
    ld h, b
    ld l, c
    pop de

jr_005_5a48:
    call Call_005_596c
    add sp, $0a
    pop hl
    pop bc
    pop af
    ret


Call_005_5a51:
    push af
    push bc
    push de
    push hl
    ld a, $06
    dec a
    cp b
    jr c, jr_005_5a70

    ld d, $00
    ld e, b
    sla e
    sla e
    ld b, h
    ld c, l
    ld hl, $d800
    add hl, de
    inc hl
    inc hl
    ld a, [hl]
    and $e0
    or b
    ld [hl+], a
    ld [hl], c

jr_005_5a70:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    ld a, $06
    dec a
    cp b
    jr c, jr_005_5a92

    ld d, $00
    ld e, b
    sla e
    sla e
    ld hl, $d800
    add hl, de
    inc hl
    inc hl
    ld a, [hl+]
    and $1f
    ld b, a
    ld c, [hl]
    ld h, b
    ld l, c

jr_005_5a92:
    pop de
    pop bc
    pop af
    ret


Call_005_5a96:
    push af
    push bc
    xor a
    call Call_005_622f
    push hl
    ld a, [$d824]
    ld b, a
    call Call_005_5a51
    pop hl
    pop bc
    pop af
    ret


Call_005_5aa8:
    push af
    push bc
    push de
    push hl
    ld a, $06
    dec a
    cp b
    jr c, jr_005_5a70

    ld d, $00
    ld e, b
    sla e
    sla e
    ld hl, $d800
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, b
    and $1f
    ld b, a
    ld a, [$d850]
    or a
    jr z, jr_005_5ad2

    xor a
    ld [$d850], a

jr_005_5ad2:
    ld a, b
    cp $03
    ld a, $01
    ld [$d85f], a
    jr z, jr_005_5afe

    xor a
    ld [$d85f], a
    ld h, d
    ld l, e
    push hl
    push hl
    ld h, b
    ld l, c
    call Call_005_6179
    pop hl
    call Call_005_5b3b
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    inc d
    inc e
    pop hl
    call Call_005_4831
    ld hl, $c600
    call Call_005_5235

jr_005_5afe:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_5b03:
    push af
    push bc
    ld a, [$d824]
    ld b, a
    call Call_005_5aa8
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld c, a
    ld a, $06
    dec a
    cp b
    jr c, jr_005_5b36

    ld d, $00
    ld e, b
    sla e
    sla e
    ld hl, $d800
    add hl, de
    inc hl
    inc hl
    ld a, [hl]
    and $1f
    sla c
    sla c
    sla c
    sla c
    sla c
    or c
    ld [hl], a

jr_005_5b36:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_5b3b:
    push af
    push bc
    push de
    push hl
    ld hl, $c600
    ld a, [$d84f]
    or a
    jr z, jr_005_5b4e

    ld hl, $d84e
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_005_5b4e:
    xor a
    ld b, a
    ld d, a
    ld e, a

Jump_005_5b52:
jr_005_5b52:
    ld a, [hl+]
    cp $00
    jp z, Jump_005_5bd2

    cp $02
    jp z, Jump_005_5bd2

    cp $01
    jr z, jr_005_5b63

    jr jr_005_5b6e

jr_005_5b63:
    inc e
    ld a, d
    cp b
    ld a, b
    ld b, $00
    jr nc, jr_005_5b52

    ld d, a
    jr jr_005_5b52

jr_005_5b6e:
    cp $08
    jr nz, jr_005_5b79

    call Call_005_5679
    add b
    ld b, a
    jr jr_005_5b52

jr_005_5b79:
    cp $09
    jr nz, jr_005_5b84

    call Call_005_56e2
    add b
    ld b, a
    jr jr_005_5b52

jr_005_5b84:
    cp $07
    jr nz, jr_005_5b8f

    call Call_005_5634
    add b
    ld b, a
    jr jr_005_5b52

jr_005_5b8f:
    cp $04
    jr nz, jr_005_5b9a

    call Call_005_55cb
    add b
    ld b, a
    jr jr_005_5b52

jr_005_5b9a:
    cp $0b
    jr nz, jr_005_5ba5

    call Call_005_579e
    add b
    ld b, a
    jr jr_005_5b52

jr_005_5ba5:
    cp $0e
    jr nz, jr_005_5bb4

    ld a, [hl+]
    ld [$c361], a
    call Call_005_57fd
    add b
    ld b, a
    jr jr_005_5b52

jr_005_5bb4:
    cp $0f
    jr nz, jr_005_5bbf

    call Call_005_5857
    add b
    ld b, a
    jr jr_005_5b52

jr_005_5bbf:
    cp $20
    jp c, Jump_005_5b52

    cp $7b
    jp nc, Jump_005_5b52

    rst $18

    db $06, $03

    ld a, c
    add b
    ld b, a
    jp Jump_005_5b52


Jump_005_5bd2:
    inc e
    ld a, d
    cp b
    jr nc, jr_005_5bd8

    ld d, b

jr_005_5bd8:
    ld a, d
    and $07
    jr z, jr_005_5bdf

    ld a, $01

jr_005_5bdf:
    sra d
    res 7, d
    sra d
    sra d
    add d
    ld d, a
    ld a, d
    ld [$d854], a
    push de
    push af
    ld a, a
    ld de, $0a0c
    call Call_000_22a5
    pop af
    pop de
    inc d
    inc d
    sla e
    inc e
    push de
    ld a, [$d824]
    cp $ff
    jr nz, jr_005_5c06

    xor a

jr_005_5c06:
    sla a
    sla a
    ld b, $00
    ld c, a
    ld hl, $d800
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld h, b
    ld l, c
    pop bc
    ld a, [$d827]
    sub b
    sra a
    ld d, a
    ld a, [$d825]
    add d
    ld d, a
    ld a, [$d828]
    sub c
    sra a
    ld e, a
    ld a, [$d826]
    add e
    ld e, a
    ld a, [hl]
    call Call_005_4773
    ld [$d867], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_5c3b:
    push af
    push de
    push hl
    ld hl, $c600
    xor a
    ld b, a
    ld d, a
    ld e, a

Jump_005_5c45:
jr_005_5c45:
    ld a, [hl+]
    cp $00
    jr z, jr_005_5c9f

    cp $01
    jr nz, jr_005_5c59

    inc e
    ld a, d
    cp b
    ld a, b
    ld b, $00
    jr nc, jr_005_5c45

    ld d, a
    jr jr_005_5c45

jr_005_5c59:
    cp $08
    jr nz, jr_005_5c64

    call Call_005_5679
    add b
    ld b, a
    jr jr_005_5c45

jr_005_5c64:
    cp $09
    jr nz, jr_005_5c6f

    call Call_005_56e2
    add b
    ld b, a
    jr jr_005_5c45

jr_005_5c6f:
    cp $10
    jr nz, jr_005_5c77

    inc b
    jp Jump_005_5c45


jr_005_5c77:
    cp $11
    jr nz, jr_005_5c7f

    inc b
    jp Jump_005_5c45


jr_005_5c7f:
    cp $12
    jr nz, jr_005_5c87

    inc b
    jp Jump_005_5c45


jr_005_5c87:
    cp $13
    jr nz, jr_005_5c8f

    inc b
    jp Jump_005_5c45


jr_005_5c8f:
    cp $20
    jr c, jr_005_5c45

    cp $7b
    jr nc, jr_005_5c45

    rst $18

    db $06, $03

    ld a, c
    add b
    ld b, a
    jr jr_005_5c45

jr_005_5c9f:
    inc e
    ld a, d
    cp b
    jr nc, jr_005_5ca5

    ld d, b

jr_005_5ca5:
    ld a, d
    and $07
    jr z, jr_005_5cac

    ld a, $01

jr_005_5cac:
    sra d
    res 7, d
    sra d
    sra d
    add d
    ld d, a
    inc d
    inc d
    inc d
    sla e
    inc e
    push de
    pop bc
    pop hl
    pop de
    pop af
    ret


Call_005_5cc2:
    push af
    push bc
    push de
    push hl
    ld c, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d821]
    ld b, a
    ld a, [$d824]
    cp b
    jr nz, jr_005_5d15

    ld a, c
    jr jr_005_5ce5

    cp $20
    jr nz, jr_005_5ce5

    ld b, $04
    jr jr_005_5cec

jr_005_5ce5:
    ld a, [$d829]
    or a
    ld b, a
    jr z, jr_005_5d15

jr_005_5cec:
    ld a, [$d862]
    cp $08
    jr z, jr_005_5d04

    ld e, a
    sla e
    sla e
    ld d, $69
    ld a, c
    and $03
    add e
    add d
    push bc
    call Call_000_2c19
    pop bc

jr_005_5d04:
    ldh a, [$90]
    and $f3
    jr z, jr_005_5d0f

    call Call_000_2e3b
    jr jr_005_5d15

jr_005_5d0f:
    call Call_000_2e3b
    dec b
    jr nz, jr_005_5d0f

jr_005_5d15:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_5d1f:
    push af
    ld a, [$c82d]
    bit 7, a
    jr z, jr_005_5d2d

    xor a
    ld [$d829], a
    jr jr_005_5d47

jr_005_5d2d:
    or a
    jr nz, jr_005_5d37

    ld a, $00
    ld [$d829], a
    jr jr_005_5d47

jr_005_5d37:
    cp $01
    jr nz, jr_005_5d42

    ld a, $02
    ld [$d829], a
    jr jr_005_5d47

jr_005_5d42:
    ld a, $04
    ld [$d829], a

jr_005_5d47:
    pop af
    ret


    push af
    push bc
    push de
    ld b, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    call Call_005_622f
    ld a, b
    cp $ff
    jr nz, jr_005_5d74

    ld a, [$c296]

jr_005_5d74:
    ld [$d851], a
    call Call_005_5d1f
    bit 7, a
    ld b, $08
    jr nz, jr_005_5d84

    call Call_005_667b
    ld b, a

jr_005_5d84:
    ld a, b
    ld [$d862], a
    ld a, [$d824]
    cp $ff
    jr nz, jr_005_5d95

    ld a, [$d851]
    call Call_005_5f62

jr_005_5d95:
    ldh a, [$96]
    push af
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $00, $03

    rst $18

    db $04, $03

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    call Call_005_5a96
    call Call_005_4492
    rst $18

    db $14, $05

    ld a, [$d850]
    or a
    jr nz, jr_005_5d95

    ld a, [$d824]
    call Call_005_4c5c
    ld a, $ff
    ld [$d824], a
    call Call_005_4492
    rst $18

    db $14, $05

    xor a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    ld b, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    call Call_005_622f
    ld a, b
    cp $ff
    jr nz, jr_005_5e10

    ld a, [$c296]

jr_005_5e10:
    ld [$d851], a
    call Call_005_5d1f
    bit 7, a
    ld b, $08
    jr nz, jr_005_5e20

    call Call_005_667b
    ld b, a

jr_005_5e20:
    ld a, b
    ld [$d862], a
    ld a, [$d824]
    cp $ff
    jr nz, jr_005_5e31

    ld a, [$d851]
    call Call_005_5f62

jr_005_5e31:
    ldh a, [$96]
    push af
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $00, $03

    rst $18

    db $04, $03

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    call Call_005_5a96
    call Call_005_4492
    rst $18

    db $14, $05

    ld a, [$d850]
    or a
    jr nz, jr_005_5e31

    xor a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    ld b, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    call Call_005_622f
    ld a, b
    bit 7, a
    ld b, $08
    jr nz, jr_005_5e9e

    call Call_005_667b
    ld b, a

jr_005_5e9e:
    ld a, b
    ld [$d862], a
    call Call_005_5d1f
    ld a, [$d824]
    cp $ff
    jr nz, jr_005_5eb2

    call Call_005_605f
    call Call_000_2e3b

jr_005_5eb2:
    ldh a, [$96]
    push af
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    nop
    inc bc
    rst $18
    inc b
    inc bc
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    call Call_005_5a96
    call Call_005_4492
    rst $18
    inc d
    dec b
    ld a, [$d850]
    or a
    jr nz, jr_005_5eb2

    ld a, [$d824]
    call Call_005_4c5c
    ld a, $ff
    ld [$d824], a
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    xor a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    ld a, d
    sub $0a
    ld d, a
    ld a, e
    sub $09
    ld e, a
    ld b, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    bit 7, a
    ld a, $08
    jr nz, jr_005_5f21

    call Call_005_667b

jr_005_5f21:
    ld [$d862], a
    ld a, [$d824]
    cp $ff
    jr nz, jr_005_5f2e

    call Call_005_605f

jr_005_5f2e:
    call Call_005_5a96
    call Call_005_4492
    rst $18
    inc d
    dec b
    ld a, [$d850]
    or a
    jr nz, jr_005_5f2e

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop bc
    pop af
    ret


    push af
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d824]
    rst $18

    db $0c, $05

    ld a, $ff
    ld [$d824], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ret


Call_005_5f62:
    push af
    push bc
    push de
    push hl
    push hl
    ld b, a
    ldh a, [$96]
    push af
    ld a, b
    and $3f
    ld e, a
    rl b
    jr nc, jr_005_5f75

    jr jr_005_5fb1

jr_005_5f75:
    call Call_005_6472
    ld a, [$c323]
    ld b, a
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
    inc hl
    ld a, [hl]
    sub b
    cp $0a
    jr c, jr_005_5fa5

    ld e, $00
    ld b, $00
    ld a, [$c322]
    bit 7, a
    jr nz, jr_005_5fa3

    inc e

jr_005_5fa3:
    jr jr_005_5fb1

jr_005_5fa5:
    ld e, $0b
    ld b, $01
    ld a, [$c322]
    bit 7, a
    jr z, jr_005_5fb1

    dec e

jr_005_5fb1:
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [$d85c], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld b, $14
    ld c, $07
    ld d, $00
    call Call_005_4b20
    pop hl
    call Call_005_6179
    call Call_005_5b3b
    xor a
    ld [$d866], a
    ld [$d868], a
    ld a, [$d824]
    ld l, a
    ld h, $00
    ld bc, $d800
    add hl, hl
    add hl, hl
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$d858], a
    ld a, h
    ld [$d859], a
    ld de, $c600
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
    ld hl, $c600
    inc hl
    ld a, [$d825]
    add $08
    ld d, a
    ld a, [$d826]
    add $02
    ld e, a
    ld b, $03
    ld c, $03
    ld a, $08
    inc hl
    inc hl
    ld a, [hl]
    rr a
    jr c, jr_005_601e

    inc b

jr_005_601e:
    dec hl
    dec hl
    call Call_005_4492

jr_005_6023:
    push af
    push hl
    ld hl, $d858
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    call Call_005_4773
    call Call_005_4949
    pop hl
    dec d
    ld a, d
    cp [hl]
    jr nc, jr_005_603a

    ld a, [hl]
    ld d, a

jr_005_603a:
    inc hl
    dec e
    ld a, e
    sub [hl]
    bit 7, a
    jr z, jr_005_6044

    ld a, [hl]
    ld e, a

jr_005_6044:
    inc hl
    inc b
    inc b
    ld a, [hl]
    cp b
    jr nc, jr_005_604c

    ld b, a

jr_005_604c:
    inc hl
    inc c
    ld a, [hl]
    cp c
    jr nc, jr_005_6053

    ld c, a

jr_005_6053:
    dec hl
    dec hl
    dec hl
    pop af
    dec a
    jr nz, jr_005_6023

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_605f:
    push af
    push bc
    push de
    push hl
    push de
    push hl
    ld de, $0000
    ld b, $14
    ld c, $07
    call Call_005_4b20
    pop hl
    call Call_005_6179
    call Call_005_5b3b
    pop de
    ld a, [$d824]
    call Call_005_60b0
    inc hl
    inc hl
    inc hl
    ld a, d
    ld d, [hl]
    sra d
    sub d
    ld d, a
    inc hl
    ld a, e
    ld e, [hl]
    sra e
    sub e
    ld e, a
    dec hl
    dec hl
    ld [hl-], a
    ld [hl], d
    ld a, [$c323]
    ld b, a
    sra b
    sra b
    sra b
    ld a, e
    sub b
    dec hl
    push hl
    ld a, [hl+]
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    pop hl
    call Call_005_4773
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_60b0:
    push af
    sla a
    sla a
    ld hl, $d800
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d850]
    or a
    jr z, jr_005_60f5

    call Call_005_6179
    call Call_005_5b3b
    ld hl, $d858
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld hl, $d856
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $80
    call Call_005_4773

jr_005_60f5:
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
    jr jr_005_614d

    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d856
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, $08

jr_005_611e:
    call Call_005_4492
    push af
    ld hl, $d856
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $80
    call Call_005_4773
    call Call_005_4949
    inc d
    dec b
    dec b
    ld a, b
    cp $03
    jr nc, jr_005_613e

    pop af
    jr jr_005_614d

    ld b, $03
    dec d

jr_005_613e:
    inc e
    dec c
    dec c
    ld a, c
    cp $03
    jr nc, jr_005_6149

    ld c, $03
    dec e

jr_005_6149:
    pop af
    dec a
    jr nz, jr_005_611e

jr_005_614d:
    ld a, [$d855]
    call Call_005_4c5c
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push bc
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    call Call_005_6179
    call Call_005_5b3b
    ld a, [$d854]
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop bc
    ret


Call_005_6179:
    push af
    push bc
    push de
    push hl
    ld d, h
    ld e, l
    ld b, d
    ld a, d
    and $03
    ld d, a
    ld a, b
    sra a
    res 7, a
    sra a
    and $07
    cp $00
    jr nz, jr_005_6196

    rst $18

    db $00, $18

    jr jr_005_61cf

jr_005_6196:
    cp $01
    jr nz, jr_005_619f

    rst $18

    db $00, $19

    jr jr_005_61cf

jr_005_619f:
    cp $02
    jr nz, jr_005_61a8

    rst $18

    db $00, $1a

    jr jr_005_61cf

jr_005_61a8:
    cp $03
    jr nz, jr_005_61b1

    rst $18
    nop
    dec de
    jr jr_005_61cf

jr_005_61b1:
    cp $04
    jr nz, jr_005_61ba

    rst $18

    db $00, $1c

    jr jr_005_61cf

jr_005_61ba:
    cp $05
    jr nz, jr_005_61c3

    rst $18

    db $00, $1d

    jr jr_005_61cf

jr_005_61c3:
    cp $06
    jr nz, jr_005_61cc

    rst $18

    db $00, $1e

    jr jr_005_61cf

jr_005_61cc:
    rst $18

    db $00, $1f

jr_005_61cf:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_61d4:
    push af
    push bc
    push de
    push hl
    ld d, h
    ld e, l
    ld b, d
    ld a, d
    and $03
    ld d, a
    ld a, b
    sra a
    res 7, a
    sra a
    and $07
    cp $00
    jr nz, jr_005_61f1

    rst $18

    db $02, $18

    jr jr_005_61cf

jr_005_61f1:
    cp $01
    jr nz, jr_005_61fa

    rst $18
    ld [bc], a
    add hl, de
    jr jr_005_61cf

jr_005_61fa:
    cp $02
    jr nz, jr_005_6203

    rst $18
    ld [bc], a
    ld a, [de]
    jr jr_005_61cf

jr_005_6203:
    cp $03
    jr nz, jr_005_620c

    rst $18
    ld [bc], a
    dec de
    jr jr_005_61cf

jr_005_620c:
    cp $04
    jr nz, jr_005_6215

    rst $18
    ld [bc], a
    inc e
    jr jr_005_61cf

jr_005_6215:
    cp $05
    jr nz, jr_005_621e

    rst $18
    ld [bc], a
    dec e
    jr jr_005_61cf

jr_005_621e:
    cp $06
    jr nz, jr_005_6227

    rst $18
    ld [bc], a
    ld e, $18
    xor b

jr_005_6227:
    rst $18
    ld [bc], a
    rra
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_622f:
    push af
    push bc
    push de
    add sp, -$02
    push hl
    ld b, $00
    ld c, a
    ld a, h
    ld e, h
    and $03
    ld h, a
    add hl, bc
    ld b, h
    ld c, l
    ld a, e
    and $1c
    ld e, a
    ld a, h
    or e
    ld d, a
    ld e, l
    ld hl, sp+$02
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    ld a, h
    and $1c
    sra a
    ld e, a
    ld d, $00
    ld hl, $629a
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    xor $ff
    ld b, a
    ld a, c
    xor $ff
    ld c, a
    inc bc
    ld h, d
    ld l, e
    add hl, bc
    push hl
    ld hl, sp+$02
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    ld a, l
    or h
    jr z, jr_005_6278

    bit 7, h
    jr z, jr_005_6292

jr_005_6278:
    ld a, b
    and $1c
    add $04
    ld d, a
    ld a, b
    and $e0
    or d
    ld b, a
    ld a, h
    xor $ff
    ld h, a
    ld a, l
    xor $ff
    ld l, a
    inc hl
    ld a, h
    and $03
    or b
    ld b, a
    ld c, l

jr_005_6292:
    ld h, b
    ld l, c
    add sp, $02
    pop de
    pop bc
    pop af
    ret


    db $00, $02, $d8, $00, $fc, $00

    dec e
    db $01

    db $08, $01, $f1, $01, $00, $03, $a9, $00

    push af
    push bc
    push de
    push hl
    push bc
    push de
    rst $18

    db $1e, $03

    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    call Call_005_622f
    xor a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    ld a, e
    ld [$d864], a
    ld a, d
    ld [$d865], a
    ld b, $ff
    ld a, c
    cpl
    inc a
    ld c, a
    ld [$c362], a
    call Call_005_6179
    ld hl, $c600
    pop af
    ldh [$96], a
    ldh [rSVBK], a

Jump_005_62ef:
jr_005_62ef:
    ld a, [hl]
    or a
    jp z, Jump_005_6359

    cp $03
    jr z, jr_005_6359

    cp $01
    jp z, Jump_005_6359

    cp $07
    jr z, jr_005_6324

    cp $04
    jr z, jr_005_6324

    cp $09
    jr z, jr_005_6324

    cp $08
    jr z, jr_005_6324

    cp $0b
    jr z, jr_005_6324

    cp $0e
    jr nz, jr_005_631e

    inc hl
    push af
    ld a, [hl]
    ld [$c361], a
    pop af
    jr jr_005_6324

jr_005_631e:
    cp $01
    jr nz, jr_005_632a

    ld a, $0d

jr_005_6324:
    call Call_005_58e2
    inc hl
    jr jr_005_62ef

jr_005_632a:
    rst $18

    db $18, $03

    inc hl
    ld a, [hl]
    cp $de
    jr z, jr_005_6337

    cp $df
    jr nz, jr_005_6349

jr_005_6337:
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld b, a
    ld a, [hl]
    cp $03
    ld a, b
    ld b, $ff
    jr nz, jr_005_6346

    sub $d0

jr_005_6346:
    ld [hl], a
    pop hl
    inc hl

jr_005_6349:
    inc de
    ld a, e
    and $3f
    jr nz, jr_005_62ef

    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    jp Jump_005_62ef


Jump_005_6359:
jr_005_6359:
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$c362], a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    rst $18

    db $22, $03

    pop bc
    rst $18

    db $20, $03

    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    push bc
    push de
    rst $18
    ld e, $03
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    call Call_005_622f
    xor a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    ld a, e
    ld [$d864], a
    ld a, d
    ld [$d865], a
    ld b, $ff
    ld a, c
    cpl
    inc a
    ld c, a
    ld [$c362], a
    call Call_005_6179
    ld hl, $c600

jr_005_63ca:
    ld a, [hl]
    cp $00
    jr z, jr_005_63d7

    cp $01
    jr z, jr_005_63d6

    inc hl
    jr jr_005_63ca

jr_005_63d6:
    inc hl

jr_005_63d7:
    pop af
    ldh [$96], a
    ldh [rSVBK], a

Jump_005_63dc:
jr_005_63dc:
    ld a, [hl]
    or a
    jp z, Jump_005_6441

    cp $03
    jr z, jr_005_6441

    cp $07
    jr z, jr_005_640c

    cp $04
    jr z, jr_005_640c

    cp $09
    jr z, jr_005_640c

    cp $08
    jr z, jr_005_640c

    cp $0b
    jr z, jr_005_640c

    cp $0e
    jr nz, jr_005_6406

    inc hl
    push af
    ld a, [hl]
    ld [$c361], a
    pop af
    jr jr_005_640c

jr_005_6406:
    cp $01
    jr nz, jr_005_6412

    ld a, $0d

jr_005_640c:
    call Call_005_58e2
    inc hl
    jr jr_005_63dc

jr_005_6412:
    rst $18
    jr @+$05

    inc hl
    ld a, [hl]
    cp $de
    jr z, jr_005_641f

    cp $df
    jr nz, jr_005_6431

jr_005_641f:
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld b, a
    ld a, [hl]
    cp $03
    ld a, b
    ld b, $ff
    jr nz, jr_005_642e

    sub $d0

jr_005_642e:
    ld [hl], a
    pop hl
    inc hl

jr_005_6431:
    inc de
    ld a, e
    and $3f
    jr nz, jr_005_63dc

    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    jp Jump_005_63dc


Jump_005_6441:
jr_005_6441:
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$c362], a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    rst $18
    ld [hl+], a
    inc bc
    pop bc
    rst $18
    jr nz, jr_005_6470

    pop hl
    pop de
    pop bc

jr_005_6470:
    pop af
    ret


Call_005_6472:
    ld hl, $0000
    cp $ff
    ret z

    ld hl, $d000
    cp $18
    jr nc, jr_005_648d

    push bc
    ld c, $00
    ld b, a
    sra b
    rr c
    sra b
    rr c
    add hl, bc
    pop bc

jr_005_648d:
    ret


Call_005_648e:
    push af
    push bc
    push de
    push hl
    push hl
    ld a, d
    and $1f
    ld d, a
    ld a, e
    and $1f
    ld e, a
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, $00
    ld c, d
    add hl, bc
    ld bc, $d000
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    push de
    call Call_005_648e
    pop de
    dec e
    ld a, e
    and $1f
    ld b, $05
    ld c, $03
    call Call_005_42ad
    pop hl
    pop de
    pop bc
    pop af
    ret


    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    ld b, $05
    ld c, $08
    call Call_005_42ad
    call Call_000_2e3b
    ld a, $08
    ld b, $05
    ld c, $08
    call Call_005_42ad
    call Call_000_2e3b
    ld a, $10
    ld b, $05
    ld c, $08
    call Call_005_42ad
    call Call_000_2e3b
    ld a, $18
    ld b, $05
    ld c, $08
    call Call_005_42ad
    call Call_000_2e3b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    push af
    push bc
    push de
    push hl
    call Call_005_4492
    ld a, [$d860]
    ld hl, $d900
    ld bc, $011d

jr_005_6520:
    or a
    jr z, jr_005_6527

    add hl, bc
    dec a
    jr jr_005_6520

jr_005_6527:
    call Call_005_4831
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_652f:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld a, [$d860]
    ld hl, $d900
    ld bc, $011d

jr_005_6546:
    or a
    jr z, jr_005_654d

    add hl, bc
    dec a
    jr jr_005_6546

jr_005_654d:
    inc hl
    ld a, [hl+]
    inc a
    add d
    ld d, a
    ld a, [hl]
    inc a
    add e
    ld e, a
    pop hl
    call Call_005_648e
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$c360], a
    rst $18
    ld d, [hl]
    dec b
    ld hl, $0118
    call Call_005_652f
    xor a
    ld [$c360], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop af
    ret


    push af
    push hl
    rst $18
    ld d, h
    dec b
    ld hl, $0019
    call Call_005_652f
    pop hl
    pop af
    ret


Call_005_6597:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld a, [$d860]
    ld hl, $d900
    ld bc, $011d

jr_005_65ae:
    or a
    jr z, jr_005_65b5

    add hl, bc
    dec a
    jr jr_005_65ae

jr_005_65b5:
    inc hl
    ld a, [hl+]
    inc a
    add d
    ld d, a
    ld a, [hl]
    inc a
    add e
    ld e, a
    pop hl
    rst $18
    ld l, $05
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$c360], a
    rst $18
    ld d, [hl]
    dec b
    ld hl, $0118
    call Call_005_6597
    xor a
    ld [$c360], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop af
    ret


    push af
    push hl
    rst $18
    ld d, h
    dec b
    ld hl, $0019
    call Call_005_6597
    pop hl
    pop af
    ret


Call_005_65ff:
    push af
    push bc
    push de
    push hl

jr_005_6603:
    ld b, a
    ld a, [hl]
    or a
    jr z, jr_005_6641

    cp $de
    jr z, jr_005_6612

    cp $df
    jr z, jr_005_6612

    jr jr_005_6636

jr_005_6612:
    push bc
    ld a, b
    dec d
    dec e
    call Call_005_444f
    inc d
    inc e
    ld b, a
    ld a, c
    cp $03
    ld a, [hl]
    jr nz, jr_005_6624

    sub $d0

jr_005_6624:
    pop bc
    push bc
    ld c, a
    ld a, b
    ld b, $80
    dec d
    dec e
    call Call_005_4408
    inc d
    inc e
    inc hl
    pop bc
    ld a, b
    jr jr_005_6603

jr_005_6636:
    inc hl
    ld c, a
    ld a, b
    ld b, $80
    call Call_005_4408
    inc d
    jr jr_005_6603

jr_005_6641:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    call Call_005_6179
    ld hl, $c600
    call Call_005_65ff
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    rst $18
    ld d, [hl]
    dec b
    ld b, a
    ld a, $01
    ld [$c360], a
    ld a, b
    ld hl, $0118
    call Call_005_6179
    ld hl, $c600
    call Call_005_65ff
    xor a
    ld [$c360], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_667b:
    push bc
    push de
    push hl
    call Call_005_6472
    ld a, h
    ld b, $08
    or l
    jr z, jr_005_66bb

    ldh a, [$96]
    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $30
    ld l, a
    ld a, [hl]
    ld c, a
    ld hl, $66c0

jr_005_66a3:
    ld a, [hl+]
    cp $ff
    jr z, jr_005_66b6

    cp c
    jr z, jr_005_66ae

    inc hl
    jr jr_005_66a3

jr_005_66ae:
    ld a, [hl]
    cp $08
    jr c, jr_005_66b5

    ld a, $08

jr_005_66b5:
    ld b, a

jr_005_66b6:
    pop af
    ldh [$96], a
    ldh [rSVBK], a

jr_005_66bb:
    ld a, b
    pop hl
    pop de
    pop bc
    ret


    db $00

    db $08

    db $01

    db $08

    db $02

    db $08

    db $03

    db $08

    db $04

    inc b

    db $05

    inc bc

    db $06

    db $06

    db $07

    ld [bc], a

    db $08

    dec b

    db $09

    ld [bc], a

    db $0a

    ld [bc], a

    db $0b

    inc bc

    db $0c

    inc b

    db $0d

    inc bc

    db $0e, $06, $2c

    db $06

    db $11

    db $01

    db $12

    ld [bc], a

    db $13

    nop

    db $14, $06, $15, $01

    ld d, $04
    rla
    rlca
    dec l
    inc bc
    jr jr_005_66f8

    add hl, de
    ld [bc], a
    ld a, [de]
    nop
    dec de
    rlca

jr_005_66f8:
    inc e
    ld b, $1d
    inc b
    ld e, $05
    rra
    rlca
    rst $38
    call Call_005_407a
    rst $18
    inc e
    dec b
    ret


    push bc
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    call Call_005_4af2
    bit 7, h
    jr nz, jr_005_671d

    ld b, a
    call Call_005_5a51

jr_005_671d:
    ld a, [$d820]
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop bc
    ret


Call_005_6729:
    push af
    push bc
    push de
    push hl
    ld b, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d824]
    cp b
    jr nz, jr_005_6765

    ld [$d821], a

jr_005_6740:
    ldh a, [$96]
    push af
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    nop
    inc bc
    rst $18
    inc b
    inc bc
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d824]
    call Call_005_44e3
    call Call_005_5b03
    ld a, [$d850]
    or a
    jr nz, jr_005_6740

    jr jr_005_6795

jr_005_6765:
    ld a, b
    sla a
    sla a
    ld hl, $d800
    add l
    ld l, a
    jr nc, jr_005_6772

    inc h

jr_005_6772:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_005_4831
    ld a, [hl+]
    ld d, [hl]
    inc d
    and $02
    jr z, jr_005_6781

    inc d

jr_005_6781:
    inc hl
    ld e, [hl]
    inc e
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld l, [hl]
    and $1f
    ld h, a
    call Call_005_6179
    ld hl, $c600
    call Call_005_5235

jr_005_6795:
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
    ld b, a
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    call Call_005_4384
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_67bb:
    call Call_005_44e3
    call Call_005_4384
    call Call_005_4c5c
    ret


    push af
    push bc
    push de
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    call Call_005_622f
    call Call_005_5d1f
    ld a, [$d824]
    cp $ff
    jr nz, jr_005_67f4

    call Call_005_682d

jr_005_67f4:
    call Call_005_5a96
    ld a, [$d824]
    call Call_005_6729
    call Call_005_4384
    ld a, [$d850]
    or a
    jr nz, jr_005_67f4

    ld a, [$d824]
    call Call_005_67bb
    ld a, $ff
    ld [$d824], a
    xor a
    ld [$d847], a
    ld [$d866], a
    ld [$d848], a
    ld [$d867], a
    ld [$d849], a
    ld [$d868], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop bc
    pop af
    ret


Call_005_682d:
    push af
    push bc
    push de
    push hl
    push de
    push hl
    ld de, $0000
    ld b, $14
    ld c, $07
    call Call_005_4b20
    pop hl
    call Call_005_6179
    call Call_005_5b3b
    pop de
    ld a, [$d824]
    call Call_005_60b0
    inc hl
    inc hl
    inc hl
    ld a, d
    ld d, [hl]
    sra d
    sub d
    ld d, a
    inc hl
    ld a, e
    ld e, [hl]
    sra e
    sub e
    ld e, a
    dec hl
    dec hl
    ld [hl-], a
    ld [hl], d
    ld a, [$c323]
    ld b, a
    sra b
    sra b
    sra b
    ld a, e
    sub b
    dec hl
    push hl
    ld a, [hl+]
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    pop hl
    call Call_005_4773
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_687e:
    push af
    push bc
    push de
    push hl
    ld a, [$c484]
    add a
    add a
    add a
    add a
    add a
    add a
    ld l, a
    ld a, [$c486]
    add a
    add a
    add a
    add l
    ld l, a
    ld a, [$c485]
    add l
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    call Call_000_2d10
    jr z, jr_005_68ac

    call Call_000_2d49
    jr jr_005_68af

jr_005_68ac:
    call Call_000_2d2e

jr_005_68af:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_68b4:
    push af
    push bc
    push de
    push hl
    ld hl, $c488
    ld b, [hl]
    ld a, [$c484]
    add a
    add a
    add a
    add a
    add a
    add a
    ld de, $0101
    call Call_005_6945
    ld de, $0401
    call Call_005_6967
    add $08
    ld de, $0402
    call Call_005_6967
    add $08
    ld de, HeaderLogo
    call Call_005_6945
    ld de, $0404
    call Call_005_6967
    add $08
    ld de, $0405
    call Call_005_6967
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_68f4:
    push af
    push bc
    push de
    push hl
    ld hl, $c489
    ld b, [hl]
    ld a, [$c484]
    add a
    inc a
    add a
    add a
    add a
    add a
    add a
    ld de, $0101
    call Call_005_6945
    ld de, $0401
    call Call_005_6967
    add $08
    ld de, $0402
    call Call_005_6967
    add $08
    ld de, HeaderLogo
    call Call_005_6945
    ld de, $0404
    call Call_005_6967
    add $08
    ld de, $0405
    call Call_005_6967
    pop hl
    pop de
    pop bc
    pop af
    ret


    jr nc, jr_005_6968

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_005_6978

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

Call_005_6945:
    push af
    push bc
    push de
    push hl
    ld hl, $6935
    swap a
    and $0f
    add l
    ld l, a
    jr nc, jr_005_6955

    inc h

jr_005_6955:
    ld c, [hl]
    ld a, b
    ld b, $80
    rst $18
    ld e, $05
    inc d
    ld c, $3f
    rst $18
    ld e, $05
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_6967:
    push af

jr_005_6968:
    push bc
    push de
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld c, $08

jr_005_6975:
    push de
    ld e, l
    ld d, h

jr_005_6978:
    call Call_000_2d10
    pop de
    push bc
    ld c, $65
    jr z, jr_005_6983

    ld c, $40

jr_005_6983:
    ld a, b
    ld b, $80
    rst $18
    ld e, $05
    ld bc, $0020
    add hl, bc
    inc d
    inc d
    pop bc
    dec c
    jr nz, jr_005_6975

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_6998:
    push af
    push bc
    push de
    push hl
    ld a, [$c485]
    add a
    add $03
    ld d, a
    ld a, [$c486]
    and $03
    add $01
    cp $03
    jr c, jr_005_69af

    inc a

jr_005_69af:
    ld e, a
    ld hl, $c488
    ld a, [$c486]
    bit 2, a
    jr z, jr_005_69bd

    ld hl, $c489

jr_005_69bd:
    ld a, [hl]
    ld bc, $800d
    rst $18
    ld e, $05
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_69c9:
    push af
    push bc
    push de
    push hl
    ld a, [$c485]
    add a
    add $03
    ld d, a
    ld a, [$c486]
    and $03
    add $01
    cp $03
    jr c, jr_005_69e0

    inc a

jr_005_69e0:
    ld e, a
    ld hl, $c488
    ld a, [$c486]
    bit 2, a
    jr z, jr_005_69ee

    ld hl, $c489

jr_005_69ee:
    ld a, [hl]
    ld b, $80
    ld c, $20
    rst $18
    ld e, $05
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_69fb:
    push af
    push bc
    push de
    push hl
    ld a, [$c485]
    ld d, a
    ld a, [$c486]
    ld e, a
    ldh a, [$90]
    bit 5, a
    jr nz, jr_005_6a1b

    bit 4, a
    jr nz, jr_005_6a1e

    bit 6, a
    jr nz, jr_005_6a21

    bit 7, a
    jr nz, jr_005_6a24

    jr jr_005_6a25

jr_005_6a1b:
    dec d
    jr jr_005_6a25

jr_005_6a1e:
    inc d
    jr jr_005_6a25

jr_005_6a21:
    dec e
    jr jr_005_6a25

jr_005_6a24:
    inc e

jr_005_6a25:
    ld a, d
    and $07
    ld [$c485], a
    ld a, e
    and $07
    ld [$c486], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ret


    jr nc, jr_005_6a59

    ld sp, $3220
    jr nz, @+$35

    jr nz, jr_005_6a74

    jr nz, @+$37

    jr nz, @+$38

    jr nz, @+$39

    nop
    jr c, @+$22

    add hl, sp
    jr nz, @+$43

    jr nz, @+$44

    jr nz, jr_005_6a93

    jr nz, @+$46

    jr nz, @+$47

    jr nz, @+$48

    nop

Call_005_6a57:
    push af
    push bc

jr_005_6a59:
    push de
    push hl
    rst $30
    ldh [$03], a
    jr z, jr_005_6a6d

    rst $20
    ldh [$03], a
    xor a
    ld [$c485], a
    ld [$c486], a
    ld [$c484], a

jr_005_6a6d:
    ld de, $0000
    ld bc, $1404
    rst $18

jr_005_6a74:
    inc b
    dec b
    ld [$c487], a
    ld hl, $6a37
    ld de, $0401
    call Call_005_65ff
    ld hl, $6a47
    ld de, $0402
    call Call_005_65ff
    ld de, $0004
    ld bc, $1407
    rst $18
    inc b

jr_005_6a93:
    dec b
    ld [$c488], a
    ld de, $000b
    ld bc, $1407
    rst $18
    inc b
    dec b
    ld [$c489], a
    call Call_005_68b4
    call Call_005_68f4
    call Call_005_6998
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld a, $0f
    ld hl, $6a36
    call Call_000_23e8

Jump_005_6aba:
    ldh a, [$94]
    bit 1, a
    jr nz, jr_005_6b0b

    ldh a, [$94]
    bit 0, a
    jr z, jr_005_6ad5

    call Call_005_687e
    call Call_005_68b4
    call Call_005_68f4
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b

jr_005_6ad5:
    ldh a, [$94]
    bit 3, a
    jr z, jr_005_6af0

    ld a, [$c484]
    inc a
    and $03
    ld [$c484], a
    call Call_005_68b4
    call Call_005_68f4
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b

jr_005_6af0:
    ldh a, [$90]
    and $f0
    jr z, jr_005_6b05

    call Call_005_69c9
    call Call_005_69fb
    call Call_005_6998
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b

jr_005_6b05:
    call Call_000_2e3b
    jp Jump_005_6aba


jr_005_6b0b:
    ld a, [$c487]
    rst $18
    inc c
    dec b
    ld a, [$c488]
    rst $18
    inc c
    dec b
    ld a, [$c489]
    rst $18
    inc c
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld hl, $6a36
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl

jr_005_6b32:
    ld hl, $0084
    ld de, $0c01
    rst $18
    ld a, [bc]
    dec b
    ld [$c470], a
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld a, [$c470]
    rst $18
    ld c, [hl]
    dec b
    push af
    ld a, [$c470]
    rst $18
    inc c
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    pop af
    cp $ff
    jr z, jr_005_6b69

    ld hl, $6b6e
    add a
    add l
    ld l, a
    jr nc, jr_005_6b65

    inc h

jr_005_6b65:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_005_6b69:
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $76
    ld l, e
    ld a, e
    ld l, e
    add e
    ld l, e
    adc b
    ld l, e
    rst $18
    ld h, d
    dec b
    jr jr_005_6b32

    rst $18
    ld [bc], a
    dec bc
    call Call_000_05dd
    jr jr_005_6b32

    rst $18
    ld [bc], a
    ld b, h
    jr jr_005_6b32

    call Call_005_6a57
    jr jr_005_6b32

Call_005_6b8d:
    ld a, [$c471]
    call Call_005_4818
    ld a, [$c470]
    ld h, $00
    ld l, a
    ld de, $0d02
    ld a, [$c471]
    ld a, [$c470]
    ld hl, $012c
    add l
    ld l, a
    jr nc, jr_005_6baa

    inc h

jr_005_6baa:
    ld de, $0102
    ld a, [$c471]
    ld b, a
    call Call_005_5a51
    ld hl, $6c18
    ld de, $c600
    ld c, $10
    call Call_000_03eb
    ld hl, $c600
    ld de, HeaderLogo
    ld a, [$c471]
    call Call_005_65ff
    ld de, $c600
    ld a, [$c470]
    ld h, $00
    ld l, a
    ld a, $02
    call Call_000_21f0
    ld hl, $c600
    ld de, $1102
    ld a, [$c471]
    call Call_005_65ff
    ld de, $c600
    ld a, [$c474]
    ld h, $00
    ld l, a
    ld a, $02
    call Call_000_21f0
    ld hl, $c600
    ld de, $1104
    ld a, [$c471]
    call Call_005_65ff
    ld d, $10
    ld a, [$c473]
    add a
    add $02
    ld e, a
    ld bc, $800d
    ld a, [$c471]
    rst $18
    ld e, $05
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ret


    dec l
    jr nz, @+$47

    ld c, [hl]
    ld d, h
    ld b, l
    ld d, d
    jr nz, jr_005_6c6f

    ld c, a
    jr nz, jr_005_6c51

    nop
    push af
    push bc
    push de
    push hl
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$c473], a
    ld [$c474], a
    ld a, [$c450]
    rst $18
    ld d, [hl]
    ld a, [bc]
    ld [$c470], a
    rst $18
    ld d, d
    ld a, [bc]
    ld [$c472], a
    ld de, $0000
    ld bc, $1406
    rst $18
    inc b
    dec b
    ld [$c471], a

jr_005_6c51:
    call Call_005_6b8d
    call Call_000_2e3b

jr_005_6c57:
    ldh a, [$94]
    and $02
    jr nz, jr_005_6cbb

    ldh a, [$94]
    and $01
    jr z, jr_005_6c79

    ld a, [$c470]
    rst $18
    ld d, h
    ld a, [bc]
    ld [$c450], a
    ld a, [$c474]

jr_005_6c6f:
    ld [$c46a], a
    ld a, $fa
    ld [$c441], a
    jr jr_005_6cbb

jr_005_6c79:
    ldh a, [$91]
    and $c0
    jr z, jr_005_6c89

    ld hl, $c473
    ld a, [hl]
    xor $01
    ld [hl], a
    call Call_005_6b8d

jr_005_6c89:
    ld a, [$c473]
    cp $01
    jr z, jr_005_6ca4

    ld a, [$c472]
    ld d, a
    ld hl, $c470
    ld a, [hl]
    call Call_005_6ccc
    cp [hl]
    jr z, jr_005_6cb6

    ld [hl], a
    call Call_005_6b8d
    jr jr_005_6cb6

jr_005_6ca4:
    ld d, $10
    ld hl, $c474
    ld a, [hl]
    call Call_005_6ccc
    cp [hl]
    jr z, jr_005_6cb6

    ld [hl], a
    call Call_005_6b8d
    jr jr_005_6cb6

jr_005_6cb6:
    call Call_000_2e3b
    jr jr_005_6c57

jr_005_6cbb:
    ld a, [$c471]
    rst $18
    inc c
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_005_6ccc:
    push bc
    ld b, a
    ldh a, [$91]
    bit 4, a
    jr nz, jr_005_6cdb

    bit 5, a
    jr nz, jr_005_6cde

    ld a, b
    pop bc
    ret


jr_005_6cdb:
    inc b
    jr jr_005_6ce1

jr_005_6cde:
    dec b
    jr jr_005_6ce1

jr_005_6ce1:
    ld a, b
    bit 7, a
    jr z, jr_005_6cea

    ld a, d
    dec a
    jr jr_005_6cee

jr_005_6cea:
    cp d
    jr c, jr_005_6cee

    xor a

jr_005_6cee:
    pop bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
