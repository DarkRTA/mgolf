INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $048", ROMX[$4000], BANK[$48]

    ld d, e
    ld b, b
    add c
    ld c, d
    jp Jump_000_274a


    ld c, d
    ld [hl], b
    ld c, l
    ld b, d
    ld e, [hl]
    nop
    ld l, h
    ld bc, $0101
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    ld bc, $0103
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    nop
    ld bc, $0101
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    ld bc, $0103
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    nop
    ld [$0110], sp
    cp l
    cp d
    or c
    jr nz, @+$62

    jr nc, jr_048_4053

Call_048_4053:
jr_048_4053:
    push bc
    push de
    push hl
    ld h, a
    ldh a, [$96]
    push af
    push hl
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    call Call_000_23b6
    rst $18
    nop
    dec b
    rst $18
    ld a, [bc]
    ld bc, $1adf
    inc bc
    call Call_000_0341
    call Call_000_2683
    xor a
    ldh [$8a], a
    ldh [$8b], a
    pop hl
    push hl
    call Call_048_4362
    call Call_048_4639
    pop hl
    ld a, h
    cp $00
    jr nz, jr_048_40af

    call Call_048_458c
    ld a, $0e
    ld hl, $42f7
    call Call_000_23e8
    ld hl, $c800
    ld a, l
    add $34
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $09
    jr z, jr_048_40a9

    call Call_048_4696
    jp Jump_048_42b9


jr_048_40a9:
    call Call_048_480d
    jp Jump_048_42b9


jr_048_40af:
    call Call_048_460e
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    ld b, h
    ldh a, [$96]
    push af
    push hl
    push de
    ld a, b
    call Call_048_4c7d
    ld a, $03
    call Call_048_4c7d
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c800
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $63
    jr z, jr_048_40e5

    ld a, $02
    call Call_048_4c7d
    jr jr_048_40ea

jr_048_40e5:
    ld a, $05
    call Call_048_4c7d

jr_048_40ea:
    rst $18
    inc h
    inc bc
    pop de
    push de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d630
    ld a, e
    ld [hl+], a
    ld [hl], d
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $1c
    ld [hl+], a
    ld a, $6c
    ld [hl+], a
    ld a, $ca
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld de, $0000
    rst $18
    ld a, [hl-]
    ld [bc], a
    ld d, h
    ld e, l
    ld hl, $d63c
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $d642
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $d63e
    ld a, $68
    ld [hl+], a
    ld a, $84
    ld [hl+], a
    ld a, $ca
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    xor a
    ld [$d63b], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $d400
    ld de, $9800
    ld c, $24
    call Call_000_04db
    call Call_000_0804
    ld a, $0f
    ld hl, $4336
    call Call_000_23e8
    call Call_000_0371
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $0f
    ld hl, $4b05
    call Call_000_23e8
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop hl
    push hl
    push de
    ld a, h
    sub $04
    jp z, Jump_048_425c

    ld hl, $d630
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or l
    jp z, Jump_048_425c

Jump_048_418b:
jr_048_418b:
    call Call_048_4c02
    ld a, [$d638]
    and a
    jr nz, jr_048_41f9

    ld a, [$d639]
    and a
    jr nz, jr_048_41a8

    ldh a, [$90]
    and $03
    jr nz, jr_048_41a8

    rst $08
    ld e, e
    call Call_000_2ed5
    inc b
    jr jr_048_418b

jr_048_41a8:
    ld a, $01
    ld [$d639], a
    rst $08
    ld e, h
    call Call_048_4c02
    ld hl, $d630
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fc18
    add hl, de
    jr nc, jr_048_41f4

    ld hl, $d630
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d8f0
    add hl, de
    jr nc, jr_048_41e2

    call Call_048_4c02
    call Call_048_4c02
    call Call_048_4c02
    call Call_048_4c02
    call Call_048_4c02
    call Call_048_4c02
    call Call_048_4c02
    call Call_048_4c02

jr_048_41e2:
    call Call_048_4c02
    call Call_048_4c02
    call Call_048_4c02
    call Call_048_4c02
    call Call_048_4c02
    call Call_048_4c02

jr_048_41f4:
    call Call_000_2e3b
    jr jr_048_418b

jr_048_41f9:
    rst $08
    ld e, h
    ld a, [$caad]
    and a
    jr z, jr_048_425c

    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld a, [$d400]
    and a
    jr nz, jr_048_4212

    ld c, $fc

jr_048_4212:
    ld a, c
    ld hl, $d63a
    ld [hl], a
    ld b, $28

jr_048_4219:
    ld hl, $d63a
    ld a, [hl]
    and a
    jr z, jr_048_4222

    inc a
    ld [hl], a

jr_048_4222:
    call Call_000_2e3b
    dec b
    jr z, jr_048_422d

    ldh a, [$94]
    or a
    jr z, jr_048_4219

jr_048_422d:
    pop af
    call Call_048_4dc4
    rst $08
    ld e, h
    call Call_000_2ed5
    inc d
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $caae
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d630
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d630
    ld a, e
    ld [hl+], a
    ld [hl], d
    xor a
    ld [$caad], a
    ld [$d638], a
    jp Jump_048_418b


Jump_048_425c:
jr_048_425c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld a, [$d400]
    and a
    jr nz, jr_048_426c

    ld c, $fc

jr_048_426c:
    ld a, c
    ld hl, $d63a
    ld [hl], a
    ld b, $f0

jr_048_4273:
    ld hl, $d63a
    ld a, [hl]
    and a
    jr z, jr_048_427c

    inc a
    ld [hl], a

jr_048_427c:
    call Call_000_2e3b
    dec b
    jr z, jr_048_4287

    ldh a, [$94]
    or a
    jr z, jr_048_4273

jr_048_4287:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    ld hl, $4336
    call Call_000_2449
    ld hl, $4b05
    call Call_000_2449
    call Call_000_2e3b
    pop de
    pop hl
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop bc
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d630
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, d
    or e
    ret z

    rst $18
    ld [hl+], a
    ld [bc], a
    ret


Jump_048_42b9:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $d400
    ld de, $9800
    ld c, $24
    call Call_000_04db
    call Call_000_0804
    rst $18
    inc h
    inc bc
    ld a, $0f
    ld hl, $4336
    call Call_000_23e8
    call Call_000_0371
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d251]
    sla a
    sla a
    sla a
    sla a
    ld e, a
    ld d, $00
    ld a, [$d253]
    inc a
    ld [$d253], a
    and $20
    jr nz, jr_048_4323

    ld hl, $4330
    ld bc, $0ac8
    call Call_000_26ea

jr_048_4323:
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    stop
    nop
    add b
    nop
    push af
    push bc
    push de
    push hl
    rst $18
    ld b, $42
    ld hl, $4350
    ld bc, $09c0
    ld de, $7058
    call Call_000_26ea
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0002], sp
    stop
    inc b
    nop
    db $10
    ld [$0006], sp
    add b
    nop

Call_048_4362:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld hl, $4f70
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_0468
    ld hl, $d800
    ld de, $a800
    ld c, $40
    call Call_000_04db
    ld hl, $58a0
    ld de, $0008
    call Call_000_0595
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d504
    ld [hl], $00
    call Call_000_04de
    rst $18
    inc b
    ld b, d
    call Call_000_04de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $78
    ld [$d54c], a
    ld a, $28
    ld [$d54d], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5a90
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $ac00
    ld c, $04
    call Call_000_04db
    ld hl, $5ad0
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $ac40
    ld c, $04

Call_048_43e0:
    call Call_000_04db
    ld hl, $5b19
    ld de, $0901
    call Call_000_0595
    pop hl
    ld a, h
    cp $01
    jr z, jr_048_4425

    ld hl, $5a60
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $ac80
    ld c, $02
    call Call_000_04db
    ld hl, $5a78
    ld de, $0a01
    call Call_000_0595
    ld hl, $5bc0
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $9400
    ld c, $40
    call Call_000_04db
    jr jr_048_4442

jr_048_4425:
    call Call_000_04de
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5b29
    ld de, $de00
    call Call_000_1f2f
    ld hl, $de00
    ld de, $aca0
    ld c, $14
    call Call_000_04db

jr_048_4442:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5660
    ld de, $d000
    ld c, $24
    call Call_000_03eb
    ld hl, $5420
    ld de, $d400
    ld c, $24
    call Call_000_03eb
    ret


    nop
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld [bc], a
    dec bc
    db $10
    dec bc
    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, jr_048_44ae

    ld [de], a

jr_048_44ae:
    dec bc
    db $10
    dec bc
    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, jr_048_44d6

    ld [de], a

jr_048_44d6:
    dec bc
    db $10
    dec bc
    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, jr_048_44fe

    ld [de], a

jr_048_44fe:
    dec bc
    jr nz, jr_048_450c

    ld hl, $210b
    dec bc
    ld hl, $210b
    dec bc
    ld hl, $210b

jr_048_450c:
    dec bc
    ld hl, $210b
    dec bc
    ld hl, $210b
    dec bc
    ld hl, $210b
    dec bc
    ld hl, $210b
    dec bc
    ld hl, $210b
    dec bc
    ld hl, $210b
    dec bc
    ld [hl+], a
    dec bc

Call_048_4527:
    push af
    push bc
    push de
    push hl
    ld c, $00
    ld hl, $445f

jr_048_4530:
    ld a, c
    cp $05
    jr z, jr_048_454b

    ld b, $00

jr_048_4537:
    ld a, b
    cp $14
    jr z, jr_048_4548

    ld a, [hl]
    ld d, a
    inc hl
    ld a, [hl]
    ld e, a
    call Call_048_48cf
    inc hl
    inc b

Jump_048_4546:
    jr jr_048_4537

jr_048_4548:
    inc c
    jr jr_048_4530

jr_048_454b:
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld [bc], a
    dec bc
    db $10
    dec bc
    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, jr_048_4567

    ld [de], a

jr_048_4567:
    dec bc
    db $10
    dec bc
    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, jr_048_4573

    ld [de], a

jr_048_4573:
    dec bc
    db $10
    dec bc
    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$03

    jr nz, jr_048_457f

    ld [de], a

jr_048_457f:
    dec bc
    jr nz, jr_048_458d

    ld hl, $210b
    dec bc
    ld hl, $210b
    dec bc
    ld [hl+], a
    dec bc

Call_048_458c:
    push af

jr_048_458d:
    push bc
    push de
    push hl
    ld bc, $0005
    ld a, $00
    ld hl, $4550

jr_048_4598:
    ld a, c
    cp $0a
    jr z, jr_048_45b3

    ld b, $00

jr_048_459f:
    ld a, b
    cp $06
    jr z, jr_048_45b0

    ld a, [hl]
    ld d, a
    inc hl
    ld a, [hl]
    ld e, a
    call Call_048_48cf
    inc hl
    inc b
    jr jr_048_459f

jr_048_45b0:
    inc c
    jr jr_048_4598

jr_048_45b3:
    ld de, $d4c2
    ld hl, $001a
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld de, $d502
    ld hl, $001a
    ld c, $20
    rst $18
    jr nz, jr_048_45ce

    pop hl
    pop de
    pop bc
    pop af
    ret


jr_048_45ce:
    jr c, @+$0d

    add hl, sp
    dec bc
    ld a, [hl-]
    dec bc
    dec sp
    dec bc
    inc a
    dec bc
    dec a
    dec bc
    ld a, $0b
    ccf
    dec bc
    ld c, b
    dec bc
    ld c, c
    dec bc
    ld c, d
    dec bc
    ld c, e
    dec bc
    ld c, h
    dec bc
    ld c, l
    dec bc
    ld c, [hl]
    dec bc
    ld c, a
    dec bc
    ld e, b
    dec bc
    ld e, c
    dec bc
    ld e, d
    dec bc
    ld e, e
    dec bc
    ld e, h
    dec bc
    ld e, l
    dec bc
    ld e, [hl]
    dec bc
    ld e, a
    dec bc
    ld l, b
    dec bc
    ld l, c
    dec bc
    ld l, d
    dec bc
    ld l, e
    dec bc
    ld l, h
    dec bc
    ld l, l
    dec bc
    ld l, [hl]
    dec bc
    ld l, a
    dec bc

Call_048_460e:
    push af
    push bc
    push de
    push hl
    ld c, $0b
    ld a, $00
    ld hl, $45ce

jr_048_4619:
    ld a, c
    cp $0f
    jr z, jr_048_4634

    ld b, $01

jr_048_4620:
    ld a, b
    cp $09
    jr z, jr_048_4631

    ld a, [hl]
    ld d, a
    inc hl
    ld a, [hl]
    ld e, a
    call Call_048_48cf
    inc hl
    inc b
    jr jr_048_4620

jr_048_4631:
    inc c
    jr jr_048_4619

jr_048_4634:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_4639:
    push af
    push bc
    push de
    push hl
    call Call_048_4673
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d4c7
    ld hl, $149b
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $c800
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld l, a
    ld h, $00
    rst $18
    ld d, [hl]
    dec b
    ld de, $d507
    ld hl, $149c
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_4673:
    push af
    push bc
    push de
    push hl
    ld c, $06

jr_048_4679:
    ld a, c
    cp $09
    jr z, jr_048_4691

    ld b, $06

jr_048_4680:
    ld a, b
    cp $0e
    jr z, jr_048_468e

    ld de, $2000
    call Call_048_48cf
    inc b
    jr jr_048_4680

jr_048_468e:
    inc c
    jr jr_048_4679

jr_048_4691:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_4696:
    push af
    push bc
    push de
    push hl
    call Call_048_4791
    call Call_048_47b4
    ld hl, $c800
    ld a, l
    add $34
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld hl, $14a8
    dec a
    ld d, $00
    ld e, a
    add hl, de
    ld de, $d581
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $c800
    ld a, l
    add $36
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld d, $00
    ld e, a
    ld hl, $0021
    add hl, de
    ld de, $d5c1
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
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
    rst $18
    ld d, [hl]
    dec b
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d601
    ld hl, $14a0
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $c800
    ld a, l
    add $34
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $02
    jr z, jr_048_4724

    ld de, $d608
    ld hl, $14a1
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $c8be
    ld a, [hl]
    ld bc, $0c10
    call Call_048_48f3

jr_048_471f:
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_048_4724:
    ld a, [$c837]
    ld hl, $c96e
    xor b

jr_048_472b:
    cp $00
    jr z, jr_048_4744

    push af
    ld a, [hl]
    cp $01
    jr z, jr_048_473b

    cp $02
    jr z, jr_048_473e

    jr jr_048_473f

jr_048_473b:
    inc b
    jr jr_048_473f

jr_048_473e:
    dec b

jr_048_473f:
    pop af
    inc hl
    dec a
    jr jr_048_472b

jr_048_4744:
    ld a, [$c83a]
    or a
    jr nz, jr_048_477c

    bit 7, b
    jr nz, jr_048_4766

    ld a, b
    cp $00
    jr z, jr_048_477c

    ld h, $00
    ld l, b
    rst $18
    ld d, [hl]
    dec b
    ld de, $d608
    ld hl, $14bb
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    jr jr_048_471f

jr_048_4766:
    ld a, b
    cpl
    inc a
    ld h, $00
    ld l, a
    rst $18
    ld d, [hl]
    dec b
    ld de, $d608
    ld hl, $14bc
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    jr jr_048_471f

jr_048_477c:
    ld de, $d608
    ld hl, $14bd
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    jr jr_048_471f

    ld hl, $4049
    call Call_048_4852
    jr jr_048_471f

Call_048_4791:
    push af
    push bc
    push de
    push hl
    ld c, $0d

jr_048_4797:
    ld a, c
    cp $12
    jr z, jr_048_47af

    ld b, $01

jr_048_479e:
    ld a, b
    cp $14
    jr z, jr_048_47ac

    ld de, $2001
    call Call_048_48cf
    inc b
    jr jr_048_479e

jr_048_47ac:
    inc c
    jr jr_048_4797

jr_048_47af:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_47b4:
    push af
    push bc
    push de
    push hl
    ld c, $0b

jr_048_47ba:
    ld a, c
    cp $0d
    jr z, jr_048_47d2

    ld b, $01

jr_048_47c1:
    ld a, b
    cp $0a
    jr z, jr_048_47cf

    ld de, $2001
    call Call_048_48cf
    inc b
    jr jr_048_47c1

jr_048_47cf:
    inc c
    jr jr_048_47ba

jr_048_47d2:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_47d7:
    push af
    push bc
    push de
    push hl
    ld c, $0d

jr_048_47dd:
    ld a, c
    cp $12
    jr z, jr_048_47f5

    ld b, $01

jr_048_47e4:
    ld a, b
    cp $14
    jr z, jr_048_47f2

    ld de, $2001
    call Call_048_48cf
    inc b
    jr jr_048_47e4

jr_048_47f2:
    inc c
    jr jr_048_47dd

jr_048_47f5:
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld h, $2c
    rst $38

Call_048_480d:
    push af
    push bc
    push de
    push hl
    call Call_048_47d7
    call Call_048_47b4
    ld hl, $c960
    ld a, [hl]
    rst $18
    ld d, [hl]
    ld a, [bc]
    push af
    ld hl, $012c
    ld d, $00
    ld e, a
    add hl, de
    ld de, $d5c1
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    pop af
    ld d, a
    ld hl, $47fa

jr_048_4833:
    ld a, [hl]
    cp $ff
    jr z, jr_048_484d

    cp d
    jr z, jr_048_483e

    inc hl
    jr jr_048_4833

jr_048_483e:
    ld hl, $012c
    ld e, d
    ld d, $00
    add hl, de
    ld de, $d601
    ld c, $20
    rst $18
    jr nz, jr_048_4852

jr_048_484d:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_4852:
jr_048_4852:
    push af
    push bc
    push de
    push hl
    ld a, [hl]
    ld b, a
    inc hl
    ld a, [hl]
    ld c, a
    inc hl
    ld a, [hl]
    ld e, a
    inc hl
    call Call_048_4867
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_4867:
    push af
    push bc
    push de
    push hl

jr_048_486b:
    ld a, [hl]
    cp $00
    jr z, jr_048_48b4

    cp $9e
    jr z, jr_048_4888

    cp $9f
    jr z, jr_048_4888

    cp $de
    jr z, jr_048_4888

    cp $df
    jr z, jr_048_4888

    ld d, a
    call Call_048_48cf
    inc b
    inc hl
    jr jr_048_486b

jr_048_4888:
    push bc
    dec b
    dec c
    push af
    ld a, c
    cp $00
    jr z, jr_048_489a

    pop af
    ld d, a
    call Call_048_48cf
    pop bc
    inc hl
    jr jr_048_486b

jr_048_489a:
    pop af
    push de
    cp $9e
    jr z, jr_048_48a9

    cp $de
    jr z, jr_048_48a9

    ld de, $040b
    jr jr_048_48ac

jr_048_48a9:
    ld de, $030b

jr_048_48ac:
    call Call_048_48cf
    pop de
    pop bc
    inc hl
    jr jr_048_486b

jr_048_48b4:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_48b9:
    push af
    push de
    ld hl, $0020
    ld a, c
    call Call_000_08b9
    ld d, $00
    ld e, b
    add hl, de
    push hl
    pop de
    ld hl, $d000
    add hl, de
    pop de
    pop af
    ret


Call_048_48cf:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_048_48b9
    ld a, e
    ld [hl], a
    push de
    ld de, $0400
    add hl, de
    pop de
    ld a, d
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_48f3:
    push af
    push bc
    push de
    push hl
    ld d, a
    push bc
    push de
    call Call_048_4a08
    push hl
    pop bc
    ld de, $0000
    call Call_048_497e
    cp $00
    jr z, jr_048_4915

    bit 7, h
    jr nz, jr_048_4911

    ld a, $2b
    jr jr_048_4917

jr_048_4911:
    ld a, $2d
    jr jr_048_4917

jr_048_4915:
    ld a, $47

jr_048_4917:
    pop de
    pop bc
    push de
    ld d, a
    ld e, $01
    call Call_048_48cf
    pop de
    inc b
    ld a, d
    cp $00
    jr z, jr_048_494f

    push bc
    push de
    call Call_048_4a08
    bit 7, h
    jr z, jr_048_4938

    push hl
    pop de
    ld hl, $0000
    call Call_000_08ac

jr_048_4938:
    ld de, $0064
    call Call_000_09ae
    pop de
    pop bc
    ld a, l
    cp $00
    jr z, jr_048_494f

    push de
    ld d, $31
    ld e, $01
    call Call_048_48cf
    pop de
    inc b

jr_048_494f:
    ld a, d
    call Call_048_49a2
    cp $00
    jr nz, jr_048_4960

    ld a, d
    sub $64
    bit 7, a
    jr nz, jr_048_496b

    ld a, $00

jr_048_4960:
    add $30
    push de
    ld d, a
    ld e, $01
    call Call_048_48cf
    pop de
    inc b

jr_048_496b:
    ld a, d
    call Call_048_49cf
    add $30
    push de
    ld d, a
    ld e, $01
    call Call_048_48cf
    pop de
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_497e:
    push bc
    push de
    push hl
    push bc
    pop hl
    call Call_000_08ac
    bit 7, h
    jr nz, jr_048_499c

    ld a, h
    cp $00
    jr nz, jr_048_4998

    ld a, l
    cp $00
    jr nz, jr_048_4998

    ld a, $00
    jr jr_048_499e

jr_048_4998:
    ld a, $01
    jr jr_048_499e

jr_048_499c:
    ld a, $02

jr_048_499e:
    pop hl
    pop de
    pop bc
    ret


Call_048_49a2:
    push bc
    push de
    push hl
    call Call_048_4a08
    bit 7, h
    jr z, jr_048_49b4

    push hl
    pop de
    ld hl, $0000
    call Call_000_08ac

jr_048_49b4:
    push hl
    pop bc
    ld de, $0064
    call Call_000_08ac
    bit 7, h
    jr nz, jr_048_49c2

    push hl
    pop bc

jr_048_49c2:
    push bc
    pop hl
    ld de, $000a
    call Call_000_09ae
    ld a, l
    pop hl
    pop de
    pop bc
    ret


Call_048_49cf:
    push bc
    push de
    push hl
    call Call_048_4a08
    bit 7, h
    jr z, jr_048_49e1

    push hl
    pop de
    ld hl, $0000
    call Call_000_08ac

jr_048_49e1:
    push hl
    pop bc
    ld de, $0064
    call Call_000_08ac
    bit 7, h
    jr nz, jr_048_49ef

    push hl
    pop bc

jr_048_49ef:
    push bc
    pop hl
    ld de, $000a
    call Call_000_09ae
    ld a, $0a
    call Call_000_08b9
    push hl
    pop de
    push bc
    pop hl
    call Call_000_08ac
    ld a, l
    pop hl
    pop de
    pop bc
    ret


Call_048_4a08:
    push af
    push bc
    push de
    ld l, a
    ld h, $00
    push hl
    pop bc
    ld d, $00
    ld e, $91
    call Call_000_08ac
    bit 7, h
    jr nz, jr_048_4a21

    push bc
    pop hl
    ld h, $ff
    jr jr_048_4a23

jr_048_4a21:
    push bc
    pop hl

jr_048_4a23:
    pop de
    pop bc
    pop af
    ret


    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d251], a

jr_048_4a34:
    call Call_000_2e3b
    ldh a, [$94]
    or a
    jr z, jr_048_4a34

    push af
    push bc
    push de
    push hl
    rst $08
    ld e, e
    pop hl
    pop de
    pop bc
    pop af
    bit 0, a
    jr nz, jr_048_4a69

    bit 1, a
    jr nz, jr_048_4a76

    bit 6, a
    jr nz, jr_048_4a58

    bit 7, a
    jr nz, jr_048_4a58

    jr jr_048_4a34

jr_048_4a58:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d251]
    inc a
    and $01
    ld [$d251], a
    jr jr_048_4a34

jr_048_4a69:
    rst $08
    ld e, h
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d251]
    jr jr_048_4a7a

jr_048_4a76:
    rst $08
    ld e, h
    ld a, $ff

jr_048_4a7a:
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
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
    call Call_048_4527
    ld hl, $400e
    call Call_048_4852
    ld hl, $4019
    call Call_048_4852
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld c, $08
    call Call_000_0468
    ld hl, $d400
    ld de, $9800
    ld c, $08
    call Call_000_0468
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
    call Call_048_4527
    ld hl, $4029
    call Call_048_4852
    ld hl, $4039
    call Call_048_4852
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld c, $08
    call Call_000_0468
    ld hl, $d400
    ld de, $9800
    ld c, $08
    call Call_000_0468
    pop af
    ldh [$96], a
    ldh [rSVBK], a

Jump_048_4b00:
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d632
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d64e
    ld a, $05
    call Call_000_2326
    ld hl, $d634
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld hl, $d64e
    ld a, $05
    call Call_048_4bd4
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c800
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $63
    ret z

    ld a, [$d400]
    and a
    jp nz, Jump_048_4bb7

    ld a, [$d63b]
    and a
    ret nz

    ld hl, $d642
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or l
    jr z, jr_048_4b69

    ld de, $d644
    ld a, $05
    call Call_000_2326
    ld hl, $d63e
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld hl, $d644
    ld a, $05
    call Call_048_4c54
    ret


jr_048_4b69:
    ld a, [$d63b]
    and a
    ret nz

    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld hl, $d800
    ld b, $40

jr_048_4b7b:
    ld [hl+], a
    dec b
    jr nz, jr_048_4b7b

    ld hl, $d800
    ld de, $b9e0
    ld c, $04
    call Call_000_0468
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $20
    ld hl, $d800
    ld b, $40

jr_048_4b97:
    ld [hl+], a
    dec b
    jr nz, jr_048_4b97

    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $dd00
    ld de, $99e0
    ld c, $04
    call Call_000_0468
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d63b], a

Jump_048_4bb7:
    ld hl, $d63c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d644
    ld a, $05
    call Call_000_2326
    ld hl, $d63e
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld hl, $d644
    ld a, $05
    call Call_048_4c54
    ret


Call_048_4bd4:
jr_048_4bd4:
    push af
    push de
    ld a, [$d63a]
    add d
    ld d, a
    push hl
    push bc
    ld a, [hl]
    sub $20
    jr z, jr_048_4bf4

    sub $10
    add a
    ld b, a
    ld a, [$d636]
    ld c, a
    ld a, b
    add c
    ld c, a
    ld a, [$d637]
    ld b, a
    call Call_000_2798

jr_048_4bf4:
    pop bc
    pop hl
    pop de
    dec bc
    inc hl
    ld a, d
    add $08
    ld d, a
    pop af
    dec a
    jr nz, jr_048_4bd4

    ret


Call_048_4c02:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d638]
    and a
    jr nz, jr_048_4c2e

    ld hl, $d632
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    dec hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $d630
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld a, h
    or l
    jr nz, jr_048_4c2e

    ld a, $01
    ld [$d638], a

jr_048_4c2e:
    ld hl, $d632
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d63c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    bit 7, h
    jr nz, jr_048_4c4d

    ld d, h
    ld e, l
    ld hl, $d642
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


jr_048_4c4d:
    xor a
    ld hl, $d642
    ld [hl+], a
    ld [hl+], a
    ret


Call_048_4c54:
jr_048_4c54:
    push af
    push de
    push hl
    push bc
    ld a, [hl]
    sub $20
    jr z, jr_048_4c6f

    sub $10
    add a
    ld b, a
    ld a, [$d636]
    ld c, a
    ld a, b
    add c
    ld c, a
    ld a, [$d637]
    ld b, a
    call Call_000_2798

jr_048_4c6f:
    pop bc
    pop hl
    pop de
    dec bc
    inc hl
    ld a, d
    add $08
    ld d, a
    pop af
    dec a
    jr nz, jr_048_4c54

    ret


Call_048_4c7d:
    and a
    jr z, jr_048_4c92

    dec a
    jr z, jr_048_4cb1

    dec a
    jr z, jr_048_4ce2

    dec a
    jr z, jr_048_4cfe

    dec a
    jp z, Jump_048_4d12

    dec a
    jp z, Jump_048_4d2e

    ret


jr_048_4c92:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14ae
    ld de, $d442
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $d042
    ld d, $10
    ld a, $01
    call Call_048_4dfa
    call Call_048_4dff
    ret


jr_048_4cb1:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14af
    ld de, $d422
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $d022
    ld d, $10
    ld a, $01
    call Call_048_4dfa
    ld hl, $14b0
    ld de, $d462
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $d062
    ld d, $10
    ld a, $01
    call Call_048_4dfa
    ret


jr_048_4ce2:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14b1
    ld de, $d601
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $d201
    ld d, $10
    ld a, $01
    call Call_048_4dfa
    ret


jr_048_4cfe:
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14b2
    ld de, $dd2b
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    rst $08
    ld h, e
    ret


Jump_048_4d12:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14b3
    ld de, $d442
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $d042
    ld d, $10
    ld a, $01
    call Call_048_4dfa
    ret


Jump_048_4d2e:
    rst $08
    nop
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14b4
    ld de, $d601
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $d201
    ld d, $10
    ld a, $01
    call Call_048_4dfa
    ret


    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    inc h
    dec b
    ld hl, $c600
    ld de, $d800

jr_048_4d5b:
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld b, [hl]
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [de], a
    inc hl
    inc de
    and a
    jr nz, jr_048_4d5b

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
    xor a
    ld [$d400], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    call Call_048_4053
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d63b]
    and a
    jr z, jr_048_4dba

    rst $18
    nop
    ld b, c
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d400], a
    ld a, $01
    ld de, $0000
    ld h, $04
    call Call_048_4053

jr_048_4dba:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_048_4dc4:
    and a
    ret z

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d551]
    and a
    jr z, jr_048_4dd5

    call Call_000_2e3b

jr_048_4dd5:
    ldh a, [$96]
    push af
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $da00
    ld de, $b820
    ld c, $06
    call Call_000_0468
    ld hl, $db00
    ld de, $9820
    ld c, $06
    call Call_000_0468
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_048_4dfa:
jr_048_4dfa:
    ld [hl+], a
    dec d
    jr nz, jr_048_4dfa

    ret


Call_048_4dff:
    ld a, [$caad]
    and a
    ret z

    ldh a, [$96]
    push af
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $db00
    ld de, $4487
    ld c, $14
    call Call_048_4f37
    ld hl, $db20
    ld de, $4487
    ld c, $14
    call Call_048_4f37
    ld hl, $db40
    ld de, $4487
    ld c, $14
    call Call_048_4f37
    ld hl, $da00
    ld de, $4488
    ld c, $14
    call Call_048_4f37
    ld hl, $da20
    ld de, $4488
    ld c, $14
    call Call_048_4f37
    ld hl, $da40
    ld de, $4488
    ld c, $14
    call Call_048_4f37
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$caad]
    cp $01
    jr z, jr_048_4e84

    cp $02
    jr z, jr_048_4ea2

    cp $03
    jr z, jr_048_4ec0

    cp $14
    jp z, Jump_048_4ede

    cp $15
    jp z, Jump_048_4ee7

    cp $16
    jp z, Jump_048_4ef0

    cp $17
    jp z, Jump_048_4ef9

    cp $18
    jp z, Jump_048_4f02

    cp $19
    jp z, Jump_048_4f0b

    jp Jump_048_4f13


jr_048_4e84:
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14b6
    ld de, $db42
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $da42
    ld d, $11
    ld a, $01
    call Call_048_4dfa
    jp Jump_048_4f1b


jr_048_4ea2:
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14b7
    ld de, $db42
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $da42
    ld d, $11
    ld a, $01
    call Call_048_4dfa
    jp Jump_048_4f1b


jr_048_4ec0:
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14b8
    ld de, $db42
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $da42
    ld d, $11
    ld a, $01
    call Call_048_4dfa
    jp Jump_048_4f1b


Jump_048_4ede:
    ld hl, $0047
    call Call_048_4f3f
    jp Jump_048_4f1b


Jump_048_4ee7:
    ld hl, $0048
    call Call_048_4f3f
    jp Jump_048_4f1b


Jump_048_4ef0:
    ld hl, $0049
    call Call_048_4f3f
    jp Jump_048_4f1b


Jump_048_4ef9:
    ld hl, $004a
    call Call_048_4f3f
    jp Jump_048_4f1b


Jump_048_4f02:
    ld hl, $004b
    call Call_048_4f3f
    jp Jump_048_4f1b


Jump_048_4f0b:
    ld hl, $004c
    call Call_048_4f3f
    jr jr_048_4f1b

Jump_048_4f13:
    ld hl, $004d
    call Call_048_4f3f
    jr jr_048_4f1b

Jump_048_4f1b:
jr_048_4f1b:
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14b5
    ld de, $db02
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $da02
    ld d, $11
    ld a, $01
    call Call_048_4dfa
    ret


Call_048_4f37:
jr_048_4f37:
    ld a, [de]
    inc de
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_048_4f37

    ret


Call_048_4f3f:
    push hl
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14b9
    ld de, $db42
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    pop hl
    ld de, $db4a
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld hl, $da42
    ld d, $11
    ld a, $01
    call Call_048_4dfa
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
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    sbc a
    ldh [$b0], a
    rst $08
    rst $38
    and a
    rst $18
    xor h
    call c, $d8a8
    xor b
    ret c

    add a
    rst $38
    rst $38
    nop
    db $fd
    ldh [$fc], a
    ldh [$fb], a
    ldh [$fe], a
    pop hl
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld sp, hl
    rlca
    dec c
    di
    push hl
    ld a, a
    ei
    dec [hl]
    dec sp
    dec d
    dec de
    dec d
    dec de
    ldh [$e9], a
    ld sp, hl
    ld a, [bc]
    rst $38
    ldh [$d0], a
    rst $20
    inc b
    inc b
    ld a, [bc]
    ld a, [bc]
    inc b
    ld bc, $ca04
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    pop hl
    ret nz

    db $fc
    jp hl


    ld bc, $fee0
    ld [$e10c], a
    db $fc
    jp hl


    xor [hl]
    db $ed
    ldh [$e0], a
    ld a, e
    add b
    add b
    sbc d
    jp hl


    rlca
    rlca
    ld bc, $8a01
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $e3
    xor h
    call c, Call_000_3fa7
    rst $18
    or b
    rst $08
    sbc a
    ldh [$c0], a
    ld a, [bc]
    ret z

    ld a, [$fea5]
    inc c
    pop bc
    dec [hl]
    dec sp
    push hl
    ei
    dec c
    di
    ld sp, hl
    db $eb
    rlca
    inc bc
    ld [$7fa1], a
    cp $e0
    ccf
    rra
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    di
    ldh [$d0], a
    call $ffff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    db $e4
    rrca
    jp nz, $a10e

    ld hl, sp-$01
    db $fc
    add sp, -$19
    db $f4
    di
    ld bc, $fefe
    nop
    inc bc
    db $fc
    rst $38
    ld [$10f0], sp
    ldh [$e0], a
    nop
    ld h, b
    add b
    rra
    and b
    nop
    jr nz, jr_048_503b

jr_048_503b:
    ld [hl], c
    or a
    add c
    db $fd
    ld [c], a
    xor d
    ld [c], a
    ld a, [$d0df]
    ccf
    cp h
    pop bc
    rra
    pop af
    ld sp, $2eee
    cp a
    rst $28
    cpl
    add sp, $28
    xor $2e
    add b
    and c
    ld a, a
    cp a
    rst $38
    add $c6
    cp e
    cp e
    xor d
    db $fd
    ldh [$ab], a
    db $fd
    cp d
    ld [hl], b
    and c
    ei
    rst $38
    ld c, $0a
    cp [hl]
    cp d
    cp a
    and d
    cp [hl]
    cp [hl]
    and d
    and d
    cp [hl]
    ld h, b
    and d
    db $fd
    rst $38
    dec d
    rla
    rst $30
    rst $30
    ld a, [$3dfa]
    dec l
    ei
    ld a, [$50fa]
    and c
    db $fc
    rst $38
    ld b, a
    ld b, [hl]
    ld e, d
    ld a, a
    ld e, e
    db $db
    jp c, $dadb

    rst $00
    add $41
    db $e3
    rst $38
    adc h
    adc h
    or a
    or a
    or a
    or l
    or l
    or a
    ei
    adc a
    adc l
    ld sp, $19e3
    add hl, de
    db $76

jr_048_50a3:
    db $76
    ld d, a
    rst $38
    ld [hl], a
    ld a, c
    ld e, c
    ld a, [hl]
    ld e, [hl]
    db $fc
    nop
    ld a, [$06ff]
    dec a
    ei
    jp hl


    xor a
    xor l
    db $eb
    jp hl


    rst $38
    xor a
    db $ed
    xor e
    xor l
    db $eb
    nop
    rst $38
    ld [bc], a
    rst $28
    db $fc
    db $fc
    nop
    ld hl, sp-$02
    ld [c], a
    and $00
    pop bc
    ld [hl], d
    ld b, $80
    ld b, b
    ld [hl+], a
    ret nz

    inc hl
    pop bc
    ld hl, $6100
    ldh a, [$e2]
    ld hl, sp-$0d
    and d
    jr nz, jr_048_50a3

    ldh a, [$ea]
    rrca
    nop

jr_048_50e0:
    ld bc, $03fe
    xor a
    db $fc
    cp $00
    cp $c4
    ld [c], a
    add b
    cp $e0
    adc a
    ei
    nop
    rlca
    rst $00
    ld h, b
    inc b
    nop
    ld b, $00
    ld c, $f8
    xor d
    ldh [$a0], a
    add $df
    or [hl]
    xor $2e
    ldh a, [$30]
    rst $38
    rst $38
    rra
    db $fc
    inc bc
    db $e3

jr_048_5109:
    inc e
    rst $08
    jr nc, jr_048_5109

    rst $18
    inc bc
    ret nz

    ccf
    cp d
    cp e
    inc a
    ldh [$fc], a
    add hl, de
    sbc a
    and $e7
    jr @-$05

    ld b, $76
    ld h, c
    inc c
    ld [c], a
    db $e3
    cp a
    add hl, sp
    add $cf
    jr nc, jr_048_50e0

    ld b, a
    ld h, [hl]
    ld h, c
    rst $30
    rst $38
    rst $30
    dec d
    rla
    rst $38
    db $fd
    db $fc
    inc bc
    adc a
    rst $30
    ld [hl], b
    ld sp, $56ce
    ld h, c
    ld e, h
    ld e, a
    ld e, a
    ld d, b
    rst $38
    or $f9
    add hl, de
    and $f7
    ld [$32cd], sp
    cp $46
    ld h, c
    cp c
    cp a
    cp a
    and c
    rst $20
    ld sp, hl
    ld hl, sp-$21
    rlca
    rrca
    ldh a, [$9b]
    ld h, h
    ld [hl], $61
    ld d, [hl]
    db $76
    rst $08
    ld a, c
    ld e, c
    rst $08
    rst $38
    ret nz

    pop hl
    ld a, [hl+]
    ld h, d
    nop
    db $fd
    rst $38
    cp e
    jp hl


    xor a
    dec a
    ei
    db $fd
    inc bc
    adc l
    rst $38
    ld [hl], e
    pop af
    rrca
    ld a, l

jr_048_5175:
    add e
    add c
    ld a, a
    ldh [$7f], a
    add b
    ld a, [c]
    ldh [$fe], a
    ld hl, sp-$01
    cp $58
    push bc
    or a
    ld bc, $2300
    ld l, h
    ret nz

    ld e, $00
    di
    add c
    db $f4
    rst $28
    rst $38
    and b
    rst $38
    sbc [hl]
    jr c, jr_048_5175

    ld c, $00
    dec e
    rst $28
    nop
    ld a, b
    nop
    add b
    push hl
    ld h, d
    ld bc, $0800
    cp [hl]
    cp $e0
    jr nc, jr_048_51a7

jr_048_51a7:
    pop hl
    nop
    ld bc, $62d5
    add d
    xor a
    nop
    ld c, [hl]
    nop
    inc a
    ld b, $e0
    jp $c04a


    rla
    rst $30
    rst $38
    ld [bc], a
    rst $38
    ld [c], a
    pop hl
    add hl, de
    nop
    ccf
    ld bc, $ffcb
    ld a, a
    ld b, $c1
    cp a
    cp d
    ld b, l
    add sp, $60
    inc e
    rra
    rst $28
    jr nc, @+$41

    pop hl
    ccf
    adc e
    and l
    ldh [$e0], a
    jr c, @+$01

    ld hl, sp+$5c
    db $fc
    rra
    db $fc
    ld sp, hl
    ld b, $e1
    rst $30
    ld e, $d9
    ld h, $fc
    pop hl
    ld sp, hl
    ld b, $fb
    inc b
    ldh a, [$82]
    ld l, l
    cp $ff
    cp $ff
    ld l, $6b
    db $fd
    inc bc
    call $ff33
    ld sp, hl
    rlca
    push bc
    dec sp
    db $fd
    inc bc
    pop hl
    rra
    ld a, a
    sbc l
    ld h, e
    db $fd
    inc bc
    push af
    rst $38
    xor b
    dec c
    ld h, d
    rst $38
    ld d, b
    xor a
    ld [$fd15], a
    ld [bc], a
    rst $38
    nop
    adc l
    ld b, b
    rst $38
    ld b, [hl]
    add b
    ld a, a
    db $ec
    pop hl
    rra
    sbc [hl]
    rst $08
    ld c, d
    ld a, [bc]
    rst $28
    push af
    ld d, a
    rst $38
    ld a, [bc]
    cp l
    ld b, d
    ld [bc], a
    db $fd
    dec d
    rst $38
    ld [$50af], a
    ld e, a
    and b
    ld h, c
    ld a, a
    ld b, d
    rst $38
    ld a, a
    ret nz

    ld a, a
    ldh [$7f], a
    db $e4
    ccf
    db $ec
    ei
    ccf
    ldh [$f6], a
    ldh [$3e], a
    cp $16
    cp $1f
    rst $28
    cp $4f
    cp $c7
    inc b
    ldh [$3f], a
    cp $af
    set 7, [hl]
    ret nz

    rst $38
    add b
    ccf
    ld [$8ec4], a
    ld hl, $837c
    ld l, h
    add h
    daa
    ld a, [hl]
    ld hl, $1ce3
    ldh a, [$eb]
    ld [hl], b
    adc a
    ld h, h
    ld hl, $01ff
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld bc, $0102
    rst $28
    inc b
    inc b
    ld hl, sp+$07
    ld d, h
    ld hl, $60a0
    jr nz, @+$01

    ldh [$a0], a
    ld h, b
    or b
    jr nc, jr_048_52b0

    xor h
    di
    pop af
    inc c
    ret nz

    db $eb
    inc [hl]
    add hl, hl
    ld l, $21
    ld [hl], c
    adc a
    ld [bc], a
    cp $bc
    rrca
    and b
    ld bc, $fe88
    ld bc, $17e8
    ld a, [bc]
    ld b, a
    ldh a, [$7f]
    rrca
    xor d
    ld d, l
    nop
    rst $38
    ret nz

    ccf
    db $10
    and a
    cp a
    add b
    ld a, a
    ld bc, $0bfe
    db $f4
    nop

jr_048_52b0:
    and a
    ld a, [hl+]
    jp Jump_048_57d5


    call $d6c3
    ld [hl+], a
    db $f4
    jp hl


    add d
    pop de
    jp nz, $ff7f

    and $7f
    ld sp, hl
    ccf
    rst $38
    rrca
    rst $38
    ld bc, $3e0f
    pop hl
    ld [hl], b
    rst $38
    call z, $ffa0
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    rst $38
    and $e5
    add b
    nop
    ldh [rSVBK], a
    ret


    dec l
    call Call_000_22f2
    ld sp, hl
    rlca
    ld b, a
    pop hl
    ldh a, [$e8]
    cp $9f
    ld hl, sp-$61
    ldh a, [$b1]
    cp a
    cp $e2
    ldh [$e4], a
    nop
    ld c, d
    jp Jump_000_02ff


    and b
    rrca
    rst $20
    ei
    rrca
    ld sp, hl
    cp $e0
    inc e
    ld h, d
    ld hl, sp-$01
    ldh [$8f], a
    db $fc
    inc bc
    ldh a, [rIF]
    inc d
    ret nz

    and b
    ld [hl+], a
    rst $08
    ld b, b
    ldh [$7f], a
    rra
    db $fc
    rrca
    rst $38
    inc bc
    rst $38
    dec b
    ldh a, [$e5]
    ld c, $8f
    and d
    rst $38
    ldh [rIE], a
    ld h, [hl]
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    cp $ef
    cp $ff
    db $fc
    rst $38
    ldh a, [$9f]
    rst $38
    add b
    cp $81
    add b
    ld a, l
    ldh [rNR11], a
    and l
    adc a
    and a
    ld a, b
    rla
    cp $42
    add b
    inc b
    ld l, d
    ret nz

    ld d, $40
    sbc a
    cp c
    ldh a, [$fe]
    pop hl
    inc b
    db $e3
    or b
    rst $38
    sub b
    db $e4
    ld b, [hl]
    db $fc
    db $eb
    inc bc
    add b
    di
    ld [bc], a
    ld sp, hl
    ld [$ebe0], sp
    rra
    adc e
    rst $10
    ld a, a
    add hl, bc
    rst $38
    cp $e1
    dec bc
    jp nz, $028a

    rst $38
    ld [hl], l
    dec d
    sbc $60
    dec b
    ld [$0be2], sp
    rst $38
    ld d, a
    ld [c], a
    ld h, b
    add b
    db $db
    ld h, d
    db $fc
    ld_long $ff4e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f5
    sbc [hl]
    rst $38
    pop af
    sbc a
    ldh a, [$b3]
    db $fc
    ld a, [hl]
    rst $38
    adc a
    rst $28
    ld a, a
    ret nc

    cpl
    ld a, [$c041]
    call nc, $fe2b
    cp $f7
    ld b, b
    rra
    ldh [$c3], a
    db $fc
    add hl, hl
    cp $aa
    ld a, a
    ld d, l
    rst $38
    nop
    dec bc
    rst $38
    xor e
    ld e, a
    ld b, $c3
    rst $18
    jp hl


    rra
    srl a
    rst $08
    ld c, $c0
    and b
    ld e, a
    xor [hl]
    cp l
    ld h, e
    rra
    ldh [$81], a
    sub a
    ld b, b
    rra
    db $fc
    add b
    ld d, b
    ld l, c
    xor a
    add $e1
    jr jr_048_53eb

    add b
    xor b
    add b
    rst $38
    ld a, [hl+]
    ret nz

    nop
    rlca
    and b
    ld e, a
    push af
    ret


    ld h, e
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    rst $38
    push af
    db $f4
    db $e3
    rra
    ld hl, sp-$0e
    adc b
    ld [hl], h

jr_048_53eb:
    ld bc, $7c05
    db $10
    and $b5
    ld b, c
    ldh [rIE], a
    db $fd
    rst $38
    ld bc, $c2d6
    cp $a7
    ld b, e
    ld a, a
    add b
    ccf
    ret nz

    ld e, [hl]
    and c
    cp a
    nop
    adc c
    ld b, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    db $10
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld [de], a
    nop
    nop
    nop
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
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld [de], a
    nop
    nop
    nop
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
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$23

    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2221
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    inc d
    ld de, $1111
    ld de, $1111
    dec d
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld de, $1111
    ld de, $1111
    ld de, $4611
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    ld de, $1111
    ld de, $1111
    ld de, $3311
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld d, a
    ld [hl-], a
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld de, $1111
    ld de, $1111
    ld de, $2311
    ld sp, $3232
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    ld b, d
    ld h, [hl]
    ld h, a
    ld h, [hl]
    add b
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $76
    sub b
    sub c
    db $76
    sub b
    db $76
    sub b
    sub c
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
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
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    ld h, b
    ld h, c
    ld h, d
    ld h, d
    ld h, h
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    or l
    or [hl]
    or a
    cp b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
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
    nop
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
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
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
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
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
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
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
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
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
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
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, e
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    dec c
    rrca
    rrca
    rrca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    dec c
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc

Jump_048_57d5:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rst $38
    ld a, a
    rst $38
    ld l, e
    ld e, b
    ld e, $00
    nop
    ld b, h
    inc bc
    ld b, h
    inc bc
    nop
    ld [bc], a
    nop
    nop
    rra
    ld [de], a
    rst $38
    inc bc
    or $00
    ld [hl+], a
    nop
    ld b, h
    inc bc
    rra
    ld [de], a
    or $00
    ld [hl+], a
    nop
    nop
    nop
    ld b, h
    inc bc
    nop
    ld [bc], a
    ld b, b
    ld bc, $6bff
    adc [hl]
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, l
    rst $38
    ld l, e
    adc [hl]
    ld a, a
    nop
    ld [bc], a
    ld b, b
    ld bc, $7e80
    adc [hl]
    ld a, a
    inc b
    ld [bc], a
    ld b, b
    ld bc, $0000
    adc [hl]
    ld a, a
    inc b
    ld [bc], a
    ld b, b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    nop
    ld a, a
    nop
    rst $38
    rra
    pop af
    ld sp, $eeff
    ld l, $ef
    cpl
    add sp, $28
    xor $2e
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    rst $38
    add $c6
    or a
    cp e
    cp e
    xor d
    db $fd
    ldh [$ab], a
    cp d
    ldh a, [$e1]
    ei
    rst $38
    rst $38
    ld c, $0a
    cp [hl]
    cp d
    and d
    cp [hl]
    cp [hl]
    rst $30
    and d
    and d
    cp [hl]
    ldh [$e1], a
    rst $38
    db $fd
    dec d
    rla
    rst $38
    rst $30
    rst $30
    ld a, [$3dfa]
    dec l
    ld a, [$fefa]
    ret nc

    pop hl
    db $fc
    rst $38
    ld b, a
    ld b, [hl]
    ld e, d
    ld e, e
    db $db
    rst $18

jr_048_593d:
    jp c, $dadb

    rst $00
    add $e0
    ld [c], a
    rst $38
    adc h
    rst $38
    adc h
    or a
    or a
    or a
    or l
    or l
    or a
    adc a
    db $fd
    adc l
    ldh a, [$e3]
    add hl, de
    add hl, de
    db $76
    db $76
    ld d, a
    ld [hl], a
    rst $38
    ld a, c
    ld e, c
    ld a, [hl]
    ld e, [hl]
    db $fc
    nop
    ld_long a, $ff06
    dec a
    ei
    jp hl


    xor a
    xor l
    db $eb
    jp hl


    xor a
    rst $38
    db $ed
    xor e
    xor l
    db $eb
    xor $2e
    ldh a, [$30]
    rst $38
    rst $38
    rra
    db $fc
    inc bc
    db $e3
    inc e
    rst $08
    jr nc, jr_048_593d

    db $fc
    inc bc
    ret nz

    ccf
    cp d
    cp e
    cp h
    ldh [$fc], a
    cp a
    add hl, de
    and $e7
    jr @-$05

    ld b, $b7
    ldh [rP1], a
    cp $8c
    ld [c], a
    db $e3
    add hl, sp
    add $cf
    jr nc, @-$46

    ld b, a
    cp $f0
    pop hl
    rst $30
    rst $30
    dec d
    rla
    rst $38
    db $fd
    db $fc
    rst $18
    inc bc
    adc a
    ld [hl], b
    ld sp, $e0ce
    pop hl
    ld e, h
    ld e, a
    rst $38
    ld e, a
    ld d, b
    or $f9
    add hl, de
    and $f7
    ld [$cdfb], sp
    ld [hl-], a
    ret nc

    pop hl
    cp c
    cp a
    cp a
    and c
    rst $20
    ld a, a
    ld sp, hl
    ld hl, sp+$07
    rrca
    ldh a, [$9b]
    ld h, h
    ret nz

    pop hl
    cp a
    ld d, [hl]
    db $76
    ld a, c
    ld e, c
    rst $08
    rst $38
    ret nz

    pop hl
    rst $38
    db $fd
    nop
    or b
    pop hl
    db $fd
    cp e
    jp hl


    xor a
    dec a
    ei
    rst $38
    db $fd
    inc bc
    adc l
    ld [hl], e
    pop af
    rrca
    ld a, l
    add e
    rst $38
    add c
    ld a, a
    ld sp, hl
    ld b, $e1
    ld e, $d9
    ld h, $1e
    db $fc
    pop hl
    ld sp, hl
    ld b, $fb
    inc b
    ld [hl+], a
    ld [c], a
    cp $ff
    cp $ff
    cp $f6
    or $fd
    inc bc
    call $f933
    rlca
    push bc
    rst $38
    dec sp
    db $fd
    inc bc
    pop hl
    rra
    sbc l
    ld h, e
    db $fd
    cp [hl]
    ld c, $e0
    nop
    ld a, a
    ccf
    ccf
    nop
    rst $38
    and $7c
    or c
    add e
    pop bc
    ret nz

    ld d, l

jr_048_5a22:
    ldh [$ee], a
    push hl
    db $e3
    inc e
    ldh a, [$eb]
    ld [hl], b
    db $fd
    adc a
    ldh [$e1], a
    ld bc, $0302
    nop
    ld [bc], a
    ld bc, $02bf
    ld bc, $0404
    ld hl, sp+$07
    ret nc

    pop hl
    and b
    rst $38
    ld h, b
    jr nz, jr_048_5a22

    and b
    ld h, b
    or b
    jr nc, jr_048_5a73

    rst $00
    xor h
    di
    inc c
    ret nz

    db $eb
    ld a, [bc]
    ld [c], a
    or b
    add sp, $71
    adc a
    rrca
    ld [bc], a
    cp $fc
    db $fc
    sub b
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh [$e0], a
    or b
    ldh a, [$98]
    ld hl, sp-$54
    db $fc
    rst $38
    cp [hl]
    ld hl, sp-$44
    ldh a, [$f8]
    ldh [$f0], a
    nop
    nop

jr_048_5a73:
    rst $38
    db $ed
    nop
    nop
    nop
    ld b, h
    inc bc
    nop
    ld [bc], a
    rst $18
    ld bc, $03ff
    ld [c], a
    ld l, e
    nop
    ld [bc], a
    rst $18
    ld bc, $03ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push hl
    nop
    rst $38
    db $e4
    ld bc, $e0ff
    ld hl, sp-$1d
    inc bc
    ld [bc], a
    ld b, $ff
    dec b
    rlca
    rlca
    ld b, $05
    inc c
    dec bc
    dec c
    rst $38
    ld a, [bc]
    dec c
    ld a, [bc]
    inc a
    inc a
    ld [hl], d
    ld c, [hl]
    ld b, d
    rst $38
    ld a, [hl]
    ld a, [c]
    cp $ca
    ld a, $0a
    cp $ee
    rst $38
    cp $3e
    ld a, [hl-]
    cp $fe
    pop af
    rrca
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    pop af
    rrca
    pop af
    ld e, l
    rlca
    and e
    sbc l
    ld h, e
    nop
    nop
    nop
    rst $38
    jr jr_048_5aea

    jr jr_048_5aec

    rra
    rra
    inc a
    inc sp
    rst $38
    ccf
    cpl
    ld a, a
    ld b, b
    ld a, a
    ld e, e
    ld a, a
    ld e, a
    rst $38
    ld a, a
    ld d, a
    ld a, a
    ld d, e
    ld a, a
    ld h, b
    rst $18

jr_048_5aea:
    rst $38
    rst $38

jr_048_5aec:
    pop bc
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld [hl], b
    ld [hl], b
    rst $38
    add hl, de
    rst $20
    dec sp
    rst $00
    cp l
    rst $00
    push af
    rst $28
    cp a
    dec h
    rst $38
    xor c
    ld a, a
    xor d
    ld a, [hl]
    cp $e1
    cp [hl]
    rst $38
    ld a, [hl]
    ld [hl], e
    rst $38
    rst $20
    ld sp, hl
    ld l, a
    pop af
    ld l, a
    rra
    pop af
    rst $30
    ei
    ld a, $3e
    nop
    nop
    nop
    ld [c], a
    ld l, e
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    ld l, e
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    cp a
    inc a
    ld a, [hl]
    ld a, d
    jp $99fd


    cp $e1
    cp c
    cp a
    add c
    ld b, d
    jp Jump_048_7e3c


    nop
    rst $38
    db $ec
    inc a
    rst $38
    ld a, h
    ld [hl], h
    ld b, h
    ld d, h
    ld b, h
    ld [hl], h
    ld h, h
    inc [hl]
    ld a, a
    ld h, h
    inc [hl]
    inc h
    inc h
    inc h
    inc a
    inc a
    ldh [$ee], a
    cp $c0
    ldh [$dd], a
    sbc c
    ld a, l
    pop af
    ld [hl], $67
    ld a, l
    rst $18
    pop bc
    add c
    add c
    rst $38
    rst $38
    ldh [$f3], a
    ld a, d
    db $e3
    rst $28
    ld a, l
    ld sp, hl
    cp l
    sbc c
    and b
    ld a, [c]
    ld a, [hl]
    ld e, d
    jp nz, $baff

    sub d
    ld_long a, $ff93
    add c
    adc c
    add c
    rst $28
    ld a, d
    di
    inc c
    ld e, $80
    db $ed
    ld a, [hl]
    ld a, a
    ld a, l
    rst $20
    ld b, c
    ld l, [hl]
    ld c, a
    ld e, h
    ldh [$c0], a
    ld hl, sp-$44
    sbc [hl]
    ld a, [$83f7]
    db $fd
    sbc c
    and b
    di
    ld a, h
    cp $fa
    add d
    rst $38
    adc d
    add d
    ld a, d
    ld [c], a
    ld [hl], h
    ld b, [hl]
    ld [hl], h
    ld b, h
    ld c, a
    ld b, h
    ld b, h
    jr c, jr_048_5c20

    ld h, b
    db $f4
    db $fc
    ret nz

    db $dd
    ld h, b
    db $f4
    cp $e0
    pop bc
    cp l
    sbc c
    ld e, l
    pop bc
    dec a
    ld a, c
    ld e, d
    ld bc, $e043
    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld [hl], b
    rst $08
    cp b
    cp e
    call nz, $c1bf
    cp $fe
    ldh [$c9], a
    ei
    ld [hl], h
    rst $00
    jr c, @+$01

    nop
    cp $fe
    ldh [$e2], a
    sbc a
    ld [hl], e
    db $76
    sbc e
    db $76
    sbc e
    rst $38
    or $eb
    adc [hl]
    ld [hl], c
    rst $38
    ld [bc], a
    cp $03
    rst $38
    rst $38
    rst $00
    cp [hl]
    ld h, e
    ld l, [hl]
    or e
    xor $33
    rst $38
    rst $28
    ld sp, $10ef
    rst $38
    ld [$04fb], sp
    cp a
    rst $38
    add hl, de
    ld a, e
    adc l
    ei
    dec c
    cp $e0
    adc l
    ei
    dec sp
    call nz, $e2d0
    ld h, d
    sbc $b3
    ld [hl], $db
    cp a
    db $76
    sbc e
    ld [hl], a
    sbc c
    ld [hl], a
    adc b
    ret nz

    ld [c], a
    inc hl
    rst $38
    xor $35
    rst $28
    scf
    db $ec
    ld [hl], a
    rst $28
    or e
    ei

jr_048_5c20:
    ld l, $d1
    or b
    ld [c], a
    add b
    ld a, a
    ret nz

    rst $18
    and b
    rst $28
    ccf
    ret nz

    rst $38
    add b
    db $fc
    ldh [rNR23], a
    ei
    inc e
    rst $38
    rst $38
    ld a, [hl]
    ret c

    ccf
    ei
    inc e
    di
    inc c
    rrca
    rst $38
    ld a, [hl]
    ret nz

    ccf
    sub b
    ld [c], a
    cp $ff
    cp $ff
    cp $ff
    cp $f8
    rst $30
    or c
    rst $28
    reti


    sbc e
    db $ed
    ei
    call $bbef
    push af
    and a
    ret c

    nop
    ld [c], a
    ld h, e
    adc $b5
    rst $38
    ccf
    rst $00
    ld a, h
    add a
    ld a, a
    add e
    ld a, [hl]
    add c
    cp $f0
    jp nz, Jump_048_7b88

    call z, $a5df
    dec a
    rst $00
    rst $28
    rst $38
    add d
    ld a, $c1
    nop
    ld [c], a
    sbc b
    cp e
    call $bb3f
    ld c, l
    ld a, e
    adc l
    ld a, e
    adc h
    db $f4
    ret nz

    ret nc

    jp nz, $9ebd

    ret nc

    jp nz, $e9f7

    adc a
    ld [hl], b
    nop
    and $33
    cp a
    xor $71
    rst $28
    or a
    inc l
    db $d3
    or b
    jp nz, $e3c0

    rra
    ldh [$fc], a
    add $a0
    pop bc
    adc h
    pop bc
    call c, Call_048_6dfb
    rst $28
    srl h
    ei
    ld [hl], h
    sub b
    jp nz, $9fe1

    ld [hl], c
    ld a, a
    rst $30
    ld sp, hl
    sub a
    ld a, c
    rst $38
    jp hl


    adc e
    ldh a, [$e3]
    ld a, a
    ld l, b
    rst $38
    or h
    dec h
    cp $6d
    or [hl]
    cp $e0
    db $fd
    sub d
    ld [hl], b
    ret nz

    ld bc, $71ff
    rst $08
    cp b
    ei
    rst $18
    db $f4
    add a
    ld hl, sp-$01
    ld [hl], b
    ld h, b
    ret nz

    ldh [$9f], a
    rst $38
    ld [hl], b
    ld [hl], a
    sbc b
    ld [hl], a
    xor b
    rst $28
    ld d, b
    rst $18
    rlca
    jr nz, @+$01

    ld b, b
    db $fc
    ldh [rNR43], a
    rst $38
    db $fc
    ei
    nop
    jp nz, $a0fa

    rst $20
    jr c, @-$03

    adc l
    nop
    add $70
    pop hl
    ld hl, sp-$69
    ld a, b
    ei
    rst $38
    add sp, $70
    db $e4
    ld de, $9a77
    rst $30
    xor e
    rst $28
    xor [hl]
    di
    rst $28
    ld d, c
    sub b
    db $e4
    jp $e53e


    rst $38
    db $ed
    sub $1d
    and $ff
    jp $e11e


    ld l, d
    ld a, h

jr_048_5d19:
    ldh [$60], a
    cp $e0
    ldh [$fc], a
    db $e3
    ld e, a
    and b
    ldh [$a0], a
    rst $38
    inc c
    ei
    ld l, h
    db $db
    cp h
    cp e
    call z, Call_048_5fbb
    db $dd
    ei
    ld l, h
    swap h
    jr nz, jr_048_5d19

    ld [hl], b
    or b
    and $ff
    add b
    cp a
    ret nz

jr_048_5d3c:
    rst $38
    jp $e19e


    cp a
    rst $10
    jp $c5be


    sbc b
    ret nz

    ld sp, $a6e0
    ldh [$5f], a
    rst $18
    ldh [rIE], a
    and b
    cpl
    ret nc

    add b
    and d
    add d
    cp [hl]
    rst $38
    db $d3
    or [hl]
    db $db
    or [hl]
    db $db
    cp $6d
    ret


    rst $38
    ld [hl], $ff
    ld h, $ee
    inc de
    cp $63
    xor $7d
    inc sp
    cp $e4
    ld de, $60ff
    rst $28

jr_048_5d70:
    jr nc, jr_048_5d70

    add sp, -$4b
    db $10
    ldh a, [$e0]
    ld [hl], b
    cp $e7
    rst $08
    jr nc, jr_048_5dbd

    and d
    call nc, $ffdf
    cp $fe

jr_048_5d83:
    rst $38
    sub $fe
    ldh [$94], a
    ld l, e
    cp $30
    and d
    call c, $fffe
    and $ff
    adc $f7
    rst $28
    sbc $e7
    sbc h
    ld h, e
    jr nz, jr_048_5d3c

    ld a, h
    rst $00
    cp $ff
    sbc $e7
    sbc $e7

jr_048_5da2:
    db $fc
    ld a, a
    pop bc
    ld a, $f6
    ld [hl], b
    pop hl
    cp a
    ldh a, [rP1]
    jp $b4fb


    rst $20
    jr @-$02

    nop
    and d
    sbc h
    ret nz

    rst $30
    add sp, $0f
    ldh a, [rIE]
    ldh [$fe], a

jr_048_5dbd:
    jr nc, jr_048_5d83

    inc e
    di
    ld l, $fe
    dec a
    pop hl
    ld a, $ef
    rst $38
    inc e
    pop af
    ld c, $e0
    add d
    ld e, b
    di
    ld l, h
    ld c, a
    rst $08
    ld [hl], b
    rst $18
    ld h, c
    ld b, $e0
    add b
    jp $d0e0


    call nz, $408e
    push bc
    ldh a, [$87]
    ld a, c
    inc l
    jp nz, $e1bc

    jr nz, @-$3b

    ld [hl], d
    cp a
    or $eb
    ld c, $f3
    rst $38
    pop hl
    ldh [$a0], a
    jr nz, jr_048_5da2

    ld b, b
    ldh [$b0], a
    ld l, a
    ldh a, [$3a]
    ldh [rSVBK], a
    ldh [$82], a
    ld bc, $9efc
    add c
    cp $e3
    rst $38
    ld bc, $807f
    rst $38
    ld [c], a
    ld a, a
    ld e, $f3
    or $1b
    rst $30
    dec de
    or $fe
    pop hl
    rst $30
    db $eb
    ld c, $f1
    or h
    add b
    ld d, l
    db $dd
    and [hl]
    cp l
    ld a, a
    ld b, d
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    ld hl, $8080
    cp [hl]
    or h
    add c
    ld h, b
    rst $18
    and b
    cp a
    ld b, b
    call nc, Call_000_00e0
    rlca
    ld a, a
    add b
    nop
    rst $38
    db $ec
    ld c, $cd
    rst $38
    xor l
    rst $38
    db $ed
    nop
    nop
    nop
    ld c, $7f
    call Call_000_258a
    call Call_000_2625
    call Call_000_23b6
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_0341
    call Call_000_2683
    ld a, $90
    ldh [rWY], a
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld hl, $5f0c
    ld de, $0008
    call Call_000_0595
    ld hl, $5f4c
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $40
    call Call_000_0468
    ld hl, $d400
    ld de, $b400
    ld c, $40
    call Call_000_0468
    ld hl, $d800
    ld de, $a800
    ld c, $40
    call Call_000_04db
    ld hl, $6776
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_04db
    ld hl, $6801
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $9800
    ld c, $24
    call Call_000_04db
    call Call_000_0371
    xor a
    ld [$c0f8], a
    ld a, $01
    ld hl, $5ee9
    call Call_000_23e8
    ld c, $08
    call Call_000_258d
    call Call_000_2625
    ld bc, $0e10

jr_048_5ed7:
    call Call_000_2e3b
    ldh a, [$94]
    or a
    jr z, jr_048_5ee3

    rst $08
    ld e, h
    jr jr_048_5ee8

jr_048_5ee3:
    dec bc
    ld a, b
    or c
    jr nz, jr_048_5ed7

jr_048_5ee8:
    ret


    ld hl, $c0f8
    ld a, [hl]
    push hl
    and $fc
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $6900
    add hl, de
    ld de, $b000
    ld c, $04
    call Call_000_0468
    pop hl
    inc [hl]
    ld a, [hl]
    cp $30
    ret c

    xor a
    ld [hl], a
    ret


    adc [hl]
    ld a, a
    pop de
    inc b
    add hl, bc
    nop
    rra
    nop
    adc [hl]
    ld a, a
    rst $18
    ld [hl-], a
    add hl, bc
    nop
    rra
    nop
    adc [hl]
    ld a, a
    rst $38
    ld h, e
    add hl, bc
    nop
    rra
    nop
    rst $38
    ld h, e
    pop de
    inc b
    add hl, bc
    nop
    rra
    nop
    rst $38
    ld h, e
    rst $18
    ld [hl-], a
    add hl, bc
    nop
    pop de
    inc b
    adc [hl]
    ld a, a
    rst $38
    ld h, e
    pop de
    inc b
    add hl, bc
    nop
    adc [hl]
    ld a, a
    rst $18
    ld [hl-], a
    pop de
    inc b
    add hl, bc
    nop
    adc [hl]
    ld a, a
    rst $38
    inc bc
    sbc a
    ld [bc], a
    add hl, bc
    nop
    rst $38
    ld bc, $7203
    inc bc
    inc bc
    ld b, $05
    ld c, $ff
    ccf
    ld a, h
    ld e, l
    ld h, d
    cpl
    ld [hl], d
    rla
    ld a, [hl-]
    rst $38
    dec bc

jr_048_5f60:
    inc e
    ld a, [bc]
    dec e
    inc d
    dec de
    ld de, $df3f
    ld h, $3f
    jr jr_048_5fa8

    nop
    rst $38
    ldh [$80], a
    ret nz

    rst $38
    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld [hl], b
    db $fc
    ld a, $ff
    cp d
    ld b, [hl]
    db $f4
    ld c, [hl]
    add sp, $5c
    ret nc

    jr c, @+$01

    ld d, b
    cp b
    jr z, jr_048_5f60

    adc b
    db $fc
    ld h, h
    db $fc
    rst $20
    jr jr_048_5fcb

    ld c, $df
    pop hl
    db $fc
    ld hl, sp+$01
    nop
    ld [$07bd], sp

jr_048_5f99:
    db $dd
    jp hl


    add b
    ld a, a
    nop
    rst $38
    ldh a, [$ea]
    nop
    ei
    ld [$daf0], sp
    pop hl
    inc b

jr_048_5fa8:
    inc bc
    ld [$1107], sp
    rst $38
    ld c, $23
    dec e
    rlca
    dec sp
    ld b, a
    ld a, $20
    rst $38
    rra
    nop
    rst $38
    rrca
    rst $30

Call_048_5fbb:
    ld a, a
    cp a
    rst $38
    cp $ff
    ldh [$c1], a
    cp [hl]
    nop
    rst $38
    ld [$01f0], sp
    rst $18
    cp $e0

jr_048_5fcb:
    rst $18
    cp $fd
    ldh a, [$e1]
    rst $38
    rst $38
    ei
    ld a, a
    cp a
    ld l, h
    pop hl
    jr nz, jr_048_5f99

    ld [$c2f0], sp
    ld a, a
    cp h
    ldh a, [$ef]
    db $fc
    ei
    rst $38
    cp $b2
    jp hl


    rst $28
    ld b, b
    add b
    jr nz, @-$3e

    add [hl]
    push hl
    nop
    ld bc, $ff02
    ld bc, $0300
    nop
    inc bc
    jr nz, jr_048_6017

    ld b, e
    rst $38
    inc a
    adc a
    ld [hl], a
    rra
    rst $28
    ccf
    rst $18
    ld a, a
    db $eb
    cp a
    ld a, a
    cp a
    ldh [rP1], a
    and a
    ldh [$81], a
    add c
    nop
    ld a, [$e1f9]
    rst $38
    cp [hl]
    ldh [$83], a
    inc bc
    db $fc

Call_048_6016:
    ret nz

jr_048_6017:
    ccf
    rst $38
    ld hl, sp-$09
    ld e, $1d
    add e
    add e
    ld sp, hl
    ld sp, hl
    rst $38
    cp $7e
    rrca
    rst $30
    adc h
    ld [hl], e
    ld [$ffff], sp
    add hl, bc
    or $00
    cp $80
    ld a, [hl]
    ldh [$df], a
    cp $9e
    pop hl
    ld b, c
    add b
    sbc h
    inc e
    inc a
    inc a
    ld a, h
    db $fd
    ld a, h
    ld [hl], b
    pop hl
    rst $18
    rst $18
    rra
    rst $18
    rra
    rst $28
    rst $38
    ld c, a
    scf
    daa
    rra
    rlca
    dec de
    db $d3
    rst $08
    ccf
    jp $c3cf


    call $c7c9
    ld l, b
    db $e3
    ld_long a, $ffe7
    sub b
    ld h, b
    ret z

    or b
    db $e4
    ret c

    ld a, [c]
    db $ec
    ld a, a
    ld sp, hl
    or $fc
    ei
    cp $fd
    cp $10
    add sp, -$5a
    ld h, b
    pop hl
    nop
    ret nz

    ld l, h
    pop hl
    ld l, b
    pop hl
    ld [bc], a
    ld h, b
    pop hl
    ld bc, $01bf
    nop
    rst $38
    ld a, a
    rst $38
    cp $fe
    ldh [$7e], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $7f
    cp a
    ccf
    rst $38
    di
    rst $38
    ld a, $ee
    ldh [$ab], a
    rst $20
    cp $81
    ld a, [hl]
    ld hl, sp-$59
    rst $20
    cp $f9
    call c, $ffe0
    jp nz, $f63f

    ret nz

    ld a, a
    rst $38
    cp [hl]
    rra
    rst $28
    adc a
    ld [hl], a
    rst $20
    sbc e
    di
    db $fd
    db $ed
    sbc h
    pop hl

Call_048_60b2:
    inc bc
    db $e3
    inc bc
    di
    jp $ffbb


    db $e3
    db $dd
    pop af
    xor $f0
    rst $38
    ld hl, sp-$09
    xor a
    db $fc
    ld a, e
    pop bc
    rst $00
    cp $e1
    ret


    cp $e0
    jp $cdff


    ld d, e
    adc l
    inc hl
    rst $18
    rst $38
    cp $cf
    rst $38
    rst $08
    rst $20
    rst $20
    db $e3
    db $e3
    di
    di
    pop af
    or $ff
    ldh [$f0], a
    ldh a, [$de]
    ret nz

    ldh [$90], a
    ld h, b
    add b
    rst $38
    ldh a, [$c8]
    or b
    ret nz

    ld hl, sp-$40
    ld hl, sp-$1c
    rst $38
    ret c

    ccf
    rst $18
    sbc a
    ld l, a
    ld e, a
    cpl
    rrca
    rst $38
    scf
    daa
    dec de
    inc de
    inc c
    add hl, bc
    ld b, $04
    rst $38
    inc bc
    db $fc
    ei
    ld hl, sp-$09
    ldh a, [$ef]
    ldh [rIE], a
    rst $18
    ret nz

    cp a
    jp nz, $843c

    ld a, b
    ld [$f07f], sp
    rra
    rst $28
    rrca
    rst $30
    rlca
    ei
    ld c, b
    ret nz

    ld a, a
    rst $38
    jr nz, jr_048_6143

    db $10
    inc c
    nop
    inc c
    db $76
    ret nz

    db $fd
    db $fc
    ld d, b
    pop hl
    ccf
    sbc $0f
    db $f4
    add e
    ld a, h
    rst $38
    ld hl, $7e1e
    cp l
    ccf
    sbc $9f
    ld l, a
    rst $38
    adc a
    ld a, a
    rst $08
    scf
    rst $00

jr_048_6143:
    ccf
    rst $20
    dec de
    rst $38
    db $e3
    rra
    rlca
    ei
    rlca
    rst $38
    adc a
    ld [hl], a
    rst $38
    adc a
    rst $30
    rst $00
    cp a
    rst $20
    db $db
    db $e3
    rst $38
    rst $10
    di
    rst $28
    ld hl, sp-$01
    and $fc
    rst $38
    ld [c], a
    db $e4
    ret c

    ei
    ldh [$fc], a
    cp $e1
    ld a, [c]
    db $ec
    ld a, [c]
    db $ec
    ldh a, [$fb]
    cp $f0
    ld b, b
    ret z

    nop
    ld bc, $0703
    rlca
    db $dd
    rrca
    xor l
    and e
    rlca
    rrca
    ccf
    ld d, e
    ret nz

    rst $28
    ldh a, [$ef]
    ld a, a
    add b
    ld bc, $3303
    pop bc
    add b
    pop bc
    pop af
    rst $38
    ld sp, hl
    db $fd
    rst $38
    sbc a
    ld a, a
    ei
    rlca
    xor $ff
    pop af
    ei
    rst $20
    sub $ef
    db $ed
    sbc $bb
    rst $38
    call c, $b856
    db $fc
    ldh a, [$e8]
    ldh a, [$37]
    rst $38
    call z, $e4db
    cpl
    ldh a, [$df]
    jr nc, jr_048_61e7

    ei
    jr @+$19

    cp $e0
    ld [hl], a
    ld hl, sp+$18
    rrca
    inc c
    rst $38
    rlca
    ld [$100f], sp
    rrca
    db $10
    rra
    daa
    ccf
    inc e
    jr c, jr_048_61d7

    jr nz, jr_048_61c9

jr_048_61c9:
    ld bc, $e046
    cp $e3
    rst $38
    ldh a, [$3f]
    inc e
    rlca
    ld b, $03

jr_048_61d5:
    di
    db $fd

jr_048_61d7:
    rst $38
    ld a, c
    or a
    add hl, sp
    sbc $1c
    ei
    inc e
    rst $28
    cp a
    inc c
    rst $38
    ld c, $fd
    ld c, $f5

jr_048_61e7:
    ld b, b
    jp z, $b37f

    ld a, a
    rst $38
    ld e, d
    db $e3
    ld a, [$f0e7]
    ld a, [hl]
    cp $eb
    dec c
    rst $38
    ld e, $1b
    inc a
    ccf
    jr c, jr_048_6234

    ld a, b
    ld a, a
    ld a, a
    ld [hl], b
    ld l, a
    ldh a, [$7f]
    ldh [rIE], a
    ldh [$a1], a

Jump_048_6208:
    and $f2
    sbc c
    db $e4
    cp $8f
    rst $20
    add a
    ld [c], a
    add sp, -$0f
    ld [hl], c
    pop af
    cp a
    or c
    ld [hl], e
    db $db
    dec sp
    rst $28
    rra
    add hl, hl
    and b
    rrca
    rst $38
    rst $38
    rlca
    ld [$40f0], sp
    ldh a, [rNR10]
    or b
    rst $18
    db $10
    and b
    jr nz, @-$1e

    jr nz, jr_048_61d5

    add c
    add b
    rst $38
    rst $38
    nop

jr_048_6234:
    db $fc
    inc bc
    rst $30
    rrca
    xor $1f
    db $db
    rst $38
    inc a
    or a
    ld a, b
    ld l, [hl]
    ldh a, [$dc]
    ldh [$fe], a
    db $fd
    ld bc, $e01e
    db $fc
    db $ed
    ld e, $f7
    ld c, $82
    ei
    rlca
    inc bc
    rst $38
    ldh [$0e], a
    rst $30
    ld c, $f7
    adc [hl]
    rst $38
    ld [hl], e
    adc a
    ld [hl], d
    rlca
    ld a, b
    inc bc
    ld a, h
    inc bc
    rla
    ld a, h
    ld de, $d86e
    and b
    cp a
    ret c

    and c
    cp $e5
    ld d, b
    push hl
    pop hl
    ld sp, hl
    rst $38
    ldh [$2c], a
    and d
    xor h
    ret nz

    xor b
    pop bc
    ld a, [c]
    db $ec
    ld [c], a
    ret c

    sbc b
    jp nz, $e05e

    ld e, d
    ldh [$ef], a
    ldh a, [rHDMA2]
    ldh [$f0], a
    ld a, a
    rst $38
    ld [hl], b
    ld [hl], a
    ld a, b
    ld bc, $0507
    ld b, $04
    xor e
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    add [hl]
    add c
    ret c

    add b
    ld [bc], a
    ret c

    add b
    inc b
    rst $38
    inc bc
    dec b
    rlca
    ld bc, $0007
    ld b, $b8
    rst $38
    ret nz

    or b
    ret nz

    ldh a, [$80]
    ld h, b
    add c
    pop hl
    rst $38
    inc bc

jr_048_62b1:
    jp $c303


    rlca
    add e
    rlca
    dec bc
    rst $28
    rra
    ccf
    ld a, a
    ld a, [hl]
    ld a, b
    and b
    db $dd
    xor $ff
    rst $38
    call z, $dceb
    rst $38
    ld hl, sp-$47
    ld l, a
    ld hl, sp-$01
    ld b, a
    ld a, h
    rlca
    db $fc
    inc bc
    ld a, [hl]
    inc bc
    cp $e3
    ld bc, $a37f
    ret nz

    db $76
    rst $20
    ld l, h
    ldh [$df], a
    rra
    rst $38
    cp $8a
    ldh [$df], a
    ldh [$df], a
    db $ec
    db $db
    rst $38
    adc $fc
    ld c, [hl]
    add e
    ld a, [de]
    add c
    jr nz, jr_048_62b1

    db $10
    ldh [$08], a
    ldh a, [rIE]
    add h
    ld a, b
    ret nz

    cp h
    ld [c], a
    call c, Call_048_783f
    rst $38
    dec sp
    inc a
    rra
    inc a
    dec c
    ld e, $1e
    ccf
    push af
    rra
    cp $e1
    rra
    cp l
    ld h, l
    sub l
    nop
    ld [$ef80], a
    ccf
    ldh [rIF], a
    ld hl, sp-$53
    ld h, e
    ld [bc], a
    nop
    ld d, l
    ei
    nop
    cp a
    ld b, a
    jp nz, Jump_000_0001

    dec bc
    nop
    ld d, a
    cp $f4
    db $e4
    cp $03
    ld hl, sp+$0f
    nop
    ld b, $01
    rst $38
    rlca
    inc b
    rlca
    add h
    inc bc
    add d
    inc bc
    pop bc
    ld a, a
    add c
    ld b, b
    add b
    ld h, b
    ret nz

    add a
    rlca
    cp $e1
    rst $38
    ld b, e
    add a
    and c
    jp $ffe7


    cp l
    ld a, [hl]
    rst $38
    rst $38
    nop
    add hl, bc
    ld hl, sp+$00
    ldh a, [$15]
    ldh a, [rIE]
    inc hl
    ldh [rLYC], a
    ret nz

    adc e
    add b
    rlca
    nop
    ei
    ccf
    jr nc, @+$03

    call nz, $fe01
    inc bc
    db $fc
    rlca
    rst $08
    pop af
    rra
    add a
    rst $38
    ld d, h
    and c
    cp $e0
    ld [hl], a
    rlca
    db $ed
    rst $38
    ld d, d
    and c
    di
    dec c
    ld b, b
    adc c
    ldh a, [$ef]
    ret nz

    rst $38
    cp a
    db $e3
    db $e3
    pop bc
    pop bc
    pop af
    pop af
    ld sp, hl
    ei
    ld sp, hl
    db $fd
    adc [hl]
    ld h, c
    ld a, a
    ccf
    rst $08
    ldh [$fe], a
    cp e
    ldh a, [$ee]
    and h
    add b
    rst $28
    ld hl, sp-$39
    cp $e0
    add a
    ld l, l
    ld hl, sp+$58
    ld h, b
    nop
    rrca
    ld a, [hl+]
    ld h, b
    rlca
    inc b
    call z, $ffc2
    nop
    rlca
    ld b, c
    rst $38
    jr c, @+$01

    ld e, $ff
    rst $38
    ld a, [bc]
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    rst $28
    ret nz

    ccf
    rst $38
    add b
    call nc, $a081
    rst $38
    dec b
    db $eb
    rst $38
    ld [bc], a
    add [hl]
    and d
    ldh [$0c], a
    ld h, b
    ld bc, $17ff
    cp a
    rst $38
    db $fd
    rst $38
    xor d
    rst $38
    ld d, b
    cp d
    add b
    jr @+$01

    ldh [$83], a
    db $fc
    ld b, b
    rst $38
    xor b
    rst $38
    ld b, b
    adc $68
    and h
    inc bc
    ld bc, $0e30
    ld h, b
    ld e, h
    and l
    rlca
    cp $ff
    rra
    pop af
    ld e, $f3
    inc e
    di
    inc e
    db $e3
    rst $28
    ld a, $e3
    ld a, a
    pop bc
    xor l
    ldh [rP1], a
    ccf
    db $fc
    rst $18
    ld h, a
    pop hl
    ld a, a
    jp $107f


    ret nz

    rra
    rst $38
    rst $18
    sbc [hl]
    ld a, a
    sub l
    rst $38
    ldh a, [$8d]
    and b
    ret nz

    rst $38
    rst $38
    db $e3
    cp $87
    db $fc
    ld b, a
    db $fc
    adc a
    ld hl, sp-$32
    ret nc

    ret nz

    rst $38
    ccf
    ldh [$d8], a
    pop hl
    add hl, de
    and e
    rst $00
    ld a, h
    rst $38
    rrca
    rst $38
    add a
    rst $38
    db $e3
    ccf
    ld sp, hl
    rrca
    push af
    db $fc
    ld e, h
    ret nz

    cp $5c
    ret nz

    ld sp, hl
    ld b, $f0
    ld c, $ff
    ldh a, [$0e]
    ld [c], a
    inc e
    ldh [rNR32], a
    call nz, $4d38
    nop
    db $e4
    ret nz

    ld b, $07
    cp $e3
    rst $38
    pop hl
    inc bc
    sbc [hl]
    and b
    ld a, a
    ldh [$3f], a
    or b
    rra
    ld e, h
    rrca
    add a
    push de
    ld b, b
    rst $20
    add b

Jump_048_6460:
    nop
    add b
    db $fd
    ldh [rNR21], a
    add c
    ld hl, sp-$31
    db $fc
    adc a
    rlca
    sbc a
    inc bc
    rlca
    cp d
    ld b, c
    rst $10
    ld b, b
    ld h, [hl]
    db $e4
    db $fc
    ld a, [c]
    and l
    and b
    inc bc
    ld d, h
    rst $20
    adc l
    pop hl
    ld l, b
    rst $00
    ret z

    adc a
    cp e
    ccf
    ldh [$fe], a
    pop hl
    dec hl
    ret nz

    ld d, l
    sub b
    ret nz

    ld bc, $48fa
    ret nz

    ld [$e2e4], sp
    pop bc
    ld a, a
    rst $20
    ccf
    rst $38
    db $fd
    inc e
    add l
    add c
    rra
    pop af
    ld a, $f3
    ld a, h
    db $e3
    rst $38
    db $fc
    rst $00
    ld hl, sp+$07
    ld hl, sp+$0f
    pop af
    rrca
    rst $08
    di
    rrca
    inc bc
    cp $ca
    add b
    push de
    ret nz

    ccf
    ldh [rIE], a
    rra
    ldh a, [$ef]
    or b
    rst $38
    nop
    rst $20
    ld bc, $e3af
    nop
    db $d3
    nop
    db $fc
    pop hl
    rst $20
    db $f4
    ldh [$cf], a
    ld h, a
    ld bc, $e000
    call c, $fe40
    and $40
    add b
    jp c, $fe43

    sub a
    daa

jr_048_64d8:
    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$6f], a
    rst $28
    ldh a, [$37]
    ld a, b
    dec de
    cp d
    and b
    rlca
    ld c, $1b
    rst $38
    ld [hl], c
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$3e

    jr nz, @+$01

    ld e, $10
    rra
    db $10
    rrca
    ld [$020f], sp
    rst $28
    db $fc
    db $10
    ldh [$80], a
    xor h
    ld [hl+], a
    pop hl
    ld e, $03
    rst $38
    db $fd
    rra
    rst $28
    db $10
    rrca
    ld hl, $991e
    rst $38
    ld h, [hl]
    jr c, jr_048_64d8

    ld a, b
    or [hl]
    ld a, [$f2f4]
    ld d, a
    db $fc
    ldh a, [$ec]
    ld e, h
    pop hl
    dec b
    rst $20
    jr nz, jr_048_6526

    xor b
    and b
    db $fd
    rlca
    and h

jr_048_6526:
    and b
    di
    ld c, $f3
    inc c
    ei
    ld c, $5f
    db $fd
    ld b, $bf
    nop
    jp z, $e085

    ldh a, [$d3]
    ld h, d
    ld a, a
    ei
    nop
    jp hl


    nop
    ld b, c
    nop
    add e
    ldh [$e0], a
    cp $73
    jr nz, jr_048_6547

    db $fd

jr_048_6547:
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    ei
    rlca
    or $0f
    db $ec
    ld e, $d8
    inc a
    ld b, a
    add b
    ret nz

    add b
    rst $38
    ldh [rLYC], a
    jr nz, @+$06

    inc h
    ld b, $ba
    jp nz, $01d3

    inc bc
    dec [hl]
    ld b, b
    pop de
    jp nz, Jump_048_6208

    and c
    add e
    ld [bc], a
    rst $18
    add e
    ld b, b
    pop bc
    ld hl, $96e0
    ld b, b
    ldh a, [$27]
    rst $18
    rst $20
    ld c, a
    rst $08
    ld c, a
    rst $08
    ld [hl+], a
    ld b, b
    cp [hl]
    inc a
    cp a
    db $db
    nop
    ld a, a
    ld [hl+], a
    inc e
    ldh [$fe], a
    ld b, b
    ret nz

    rst $08
    cp b
    adc b
    ld [hl], b
    stop
    add b
    cp e
    pop hl
    rla
    nop
    db $fd
    cpl
    db $fc
    ld [c], a
    ld e, a
    nop
    ccf
    nop
    ld a, [hl]
    rlca
    ei
    ldh [$3f], a
    ld d, c
    ld h, l
    db $fd
    inc bc
    rst $08
    ccf
    cp $ff
    rst $38
    ldh a, [$f8]
    ld sp, hl
    ld b, $f2
    rrca
    rst $28
    ld a, a
    rra
    cp l
    ld a, a
    ldh a, [$f8]
    ret nz

    ldh [$71], a
    push bc
    cp e
    cp a
    ret nz

    and $40
    rst $38
    rra
    ccf
    ld h, c
    jp $fffe


    ld bc, $07fb
    sbc a
    ld a, a
    db $fc
    cp $c0
    ld a, [hl]
    or h
    nop
    nop
    nop
    or b
    ld a, b
    ldh [$f0], a
    sub $e0
    inc a
    ld h, b
    and $d8
    pop bc
    ld c, $1f
    rlca
    rrca
    cp b
    ld b, b
    ld d, d
    ld [bc], a
    ret z

    pop af
    ld b, e
    cp d
    ret nz

    add a

jr_048_65f0:
    jr nz, jr_048_6601

    cp [hl]
    ldh [$c0], a
    db $e3
    rst $18
    ccf
    rst $28
    db $fc
    cp $f0
    ld hl, sp+$62
    jr nz, jr_048_6600

jr_048_6600:
    cp a

jr_048_6601:
    ld a, a
    adc a
    ldh [$f0], a
    add b
    ret nz

    jr nz, jr_048_65f0

    db $f4
    ldh [rNR43], a
    ld a, [bc]
    rra
    rst $38
    rra
    dec l
    inc sp
    dec a
    inc hl
    ld d, [hl]
    ld l, c
    ld l, d
    sbc a
    ld e, l
    ld l, a
    ld e, h
    xor a
    call c, $a012
    jp z, $bfa0

    ei
    cp a
    rst $28
    ld l, c
    and b
    ld h, a

jr_048_6628:
    ld hl, sp+$7b
    db $fc
    cp a
    ld a, l
    ld a, h
    jr nc, jr_048_6630

jr_048_6630:
    ld bc, $f9f9
    jp hl


    add hl, de
    cp $e1
    rst $08

jr_048_6638:
    ld [$78f8], sp
    ld hl, sp+$4c
    nop
    ld a, [hl-]
    and c
    ret nz

    ret c

    rst $38
    rst $20
    ei
    rst $20
    ld a, e
    ld h, a
    dec sp
    daa
    ret nz

    cp [hl]
    ld a, [bc]
    ld h, b
    ld e, [hl]
    sbc $7b

jr_048_6651:
    rst $20
    ld a, e
    ldh a, [$e0]
    jp c, $e7f7

    ld a, a
    ld b, b
    inc d
    ld b, b
    rlca
    rst $38
    ld hl, sp-$11
    rst $38
    jr jr_048_6651

    add hl, de
    xor $19
    rst $28
    jr jr_048_6638

    rst $38
    jr c, jr_048_666c

jr_048_666c:
    nop
    pop af
    pop af
    pop de
    ld sp, $fbd1
    ld sp, $5111
    jr nz, jr_048_6628

    ld [hl], b
    and b
    ld h, b
    ret nz

    rst $38
    ret nz

    ld h, b
    ldh [$60], a
    ldh [$7c], a
    db $fc
    ld [hl], a
    ei
    rst $08
    rst $30
    cp $e0
    ld [hl], a
    ld c, a
    nop
    nop
    rrca
    rst $38
    rrca
    rra
    db $10
    rst $38
    ldh a, [$dc]
    inc sp
    db $dd
    cp $fe
    ldh [$df], a
    jr nc, jr_048_669e

jr_048_669e:
    nop
    ldh [$e0], a
    or a
    rst $38
    ld [hl], a
    reti


    ccf
    ld l, [hl]
    sbc c
    rst $30
    adc h
    ld [hl], a
    rst $30
    adc h
    rst $28
    inc e
    sub [hl]
    ld bc, $0e0e
    sbc e
    sub a
    rst $38
    db $db
    rst $10
    ld l, e
    rst $30
    cp e
    ld h, a
    db $db
    daa
    rst $38
    di
    adc h
    db $ed
    sbc [hl]
    db $ed
    sbc [hl]
    rst $28
    sbc [hl]
    db $fd
    adc [hl]

jr_048_66c9:
    ld h, e
    nop
    ld a, c
    ld a, c
    nop
    nop
    xor a
    ld l, h
    rst $38
    and a
    ld h, h
    xor e
    ld l, h
    xor a
    ld l, b
    jr z, jr_048_66c9

    rst $38
    rst $28
    rst $28
    rst $20
    rst $20
    nop
    nop
    ld [hl], b
    ldh a, [$dc]
    and b
    pop hl
    sbc h
    pop hl
    ldh [$e0], a
    ret nz

    inc d
    ldh [$3b], a
    daa
    rst $38
    dec sp
    daa
    ld e, e
    ld h, a
    ld a, e
    ld b, a
    ld b, e

jr_048_66f7:
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, $3e
    nop
    nop
    ld a, a
    ld b, b
    ld a, a

jr_048_6702:
    ld [hl], b
    ld c, a
    or a
    rst $08
    rst $30
    adc a

jr_048_6708:
    add a
    inc hl
    nop
    db $fd
    ld a, h

jr_048_670d:
    ld [hl+], a
    ldh [$de], a
    add hl, sp
    sbc $39

jr_048_6713:
    rst $18
    jr c, jr_048_670d

    rst $18
    jr c, jr_048_6731

    ret nc

    jr nz, jr_048_6713

    rst $30
    nop
    nop
    rst $38
    jr nz, jr_048_6702

    ldh a, [$f0]
    ret nc

    jr nc, jr_048_66f7

    jr nc, jr_048_6708

    db $10
    ldh a, [$f0]
    ldh a, [$e0]
    ld e, [hl]
    ret nz

    db $76

jr_048_6731:
    ld c, a
    rst $38
    ld d, l
    ld l, [hl]
    ld l, e
    ld [hl], h
    scf
    jr c, jr_048_6752

    rra
    rst $38
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    rst $18
    jr nc, @+$81

    sbc h
    ld [hl], e
    cp l
    ld [hl], e
    dec a
    di
    ld [hl], c
    and b
    jr nz, @+$01

    rst $08
    rst $08
    nop

jr_048_6752:
    nop
    ld [$de1d], a
    add hl, sp
    sbc a
    ld l, [hl]
    sbc c
    xor l
    db $db
    ret


    ld [hl-], a
    ld bc, $c03e
    ld a, e
    rst $38
    add a
    cp e
    rst $00
    db $db
    rst $20
    db $eb
    rst $30
    or e
    ld a, a
    cp a
    sbc a
    sbc a
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    ld b, l
    dec c
    rst $38
    ldh a, [rIF]
    rst $38
    add sp, -$0d
    ldh [$dd], a
    ldh [$08], a
    rst $38
    db $e4
    inc e
    db $e3
    ld [c], a
    ldh [$ef], a
    ld [$0b08], sp
    rst $38
    pop hl
    rst $18
    ld [c], a
    ldh [$ed], a
    inc h
    sbc a
    pop hl
    ldh [$e5], a
    dec bc
    cp a

jr_048_6799:
    pop hl
    and b
    db $eb
    ld c, l
    rst $38
    ldh [$e0], a
    jp hl


    ld e, b
    ldh a, [$e1]
    ldh [$ee], a
    ld e, e
    pop hl
    inc c
    inc c
    ret nz

    ldh [$0a], a
    ldh [$f6], a
    ld d, a
    inc c
    dec c
    dec c
    and b
    pop hl
    ld [$f4c0], sp
    inc c
    ldh [$e0], a
    add hl, bc
    inc c
    ld e, [hl]
    pop hl
    and b
    ld a, [c]
    inc c
    rst $38
    ldh [$9f], a
    ldh [$3a], a
    ldh [$c0], a
    ld a, [c]
    pop de
    ld [$e1e0], sp
    db $fc
    db $e3
    and b
    ld a, [c]
    ld c, $e0
    db $ec
    cpl
    cpl
    jr jr_048_6799

    db $ec
    add l
    pop hl
    cp h
    ld [c], a
    ld c, $0e
    ldh [$f1], a
    ld h, l
    ld [c], a
    db $e4
    ldh [rNR23], a
    cp $e1
    ret nz

    db $ed
    ld h, b
    add $0e
    ld c, $60
    sub $f0
    rst $38
    ldh a, [$f8]
    nop
    rrca
    bit 4, b
    jp nc, $edfc

    ldh [$a9], a
    nop
    nop
    nop
    ld [hl], l
    inc b
    rst $38
    ldh a, [rP1]
    rst $38
    add sp, $04
    nop
    ld [bc], a
    db $dd
    ldh [rIE], a
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld a, [$e1e3]
    ld [bc], a
    ldh [$eb], a
    ld bc, $0403
    inc b
    dec c
    rst $38
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    db $e3
    ld d, $04
    ldh a, [$e1]
    ret nz

    ld [$e19f], a
    rla
    jr jr_048_684f

    ld a, a
    ld a, [de]
    dec de
    inc e
    dec e
    inc d
    ld e, $1f
    and b
    rst $28
    cp $7f
    ld [c], a
    jr nz, jr_048_6866

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc d
    ei
    ld h, $27
    ldh [$f2], a

jr_048_684f:
    jr z, jr_048_687a

    ld a, [hl+]
    dec hl
    inc l
    cp a
    dec l
    ld l, $2f
    jr nc, jr_048_688b

    ld [hl-], a
    ret nz

    ld a, [c]
    inc sp
    rst $38
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_048_689e

    ld a, [hl-]

jr_048_6866:
    dec sp
    ei
    inc a
    dec a
    and b
    ld a, [c]
    ld a, $34
    inc [hl]
    ccf
    ld b, b
    ld a, a
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc d
    ld b, l
    ld b, [hl]
    add b

jr_048_687a:
    pop af
    rst $38
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    rst $28
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld h, b
    pop af

jr_048_688b:
    ld d, e
    ld d, h
    ld d, l
    rst $38
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    db $fd
    ld e, [hl]
    ld b, b
    pop af

jr_048_689b:
    ld e, a
    ld h, b
    ld h, c

jr_048_689e:
    ld h, d
    ld h, e
    ld h, h
    cp a
    inc [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    jr nz, jr_048_689b

    ld l, d
    rst $38
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    inc [hl]
    inc [hl]
    ld [hl], b
    rst $30
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    ld a, [c]
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    cp a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ldh [$d4], a
    ld a, [hl]
    rst $28
    ld a, a
    add b
    add c
    add d
    ld h, b
    sub $83
    add h
    add l
    rst $38
    add [hl]
    add a
    adc b
    adc c
    add [hl]
    adc d
    adc e
    adc h
    db $fd
    adc l
    ld h, b
    pop de
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    ccf
    sub h
    sub c
    sub l
    sub [hl]
    sub a
    sbc b
    ld h, b
    jp nc, $d900

    nop
    ldh [$bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0203
    inc bc
    inc bc
    ld b, $05
    ld c, $3f
    ld a, h
    ld e, l
    ld h, d
    cpl
    ld [hl], d

jr_048_690e:
    rla
    ld a, [hl-]
    dec bc
    inc e
    ld a, [bc]
    dec e
    inc d
    dec de
    ld de, $263f
    ccf
    jr jr_048_6958

    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld [hl], b
    db $fc
    ld a, $ba
    ld b, [hl]
    db $f4
    ld c, [hl]
    add sp, $5c
    ret nc

    jr c, @+$52

    cp b
    jr z, jr_048_690e

    adc b
    db $fc
    ld h, h
    db $fc
    jr @+$3e

    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    ld c, $1f
    inc de
    inc e
    inc de
    inc e
    dec c
    ld e, $06
    rrca
    ld [bc], a
    rlca
    dec b
    ld c, $0a
    dec c

jr_048_6958:
    add hl, bc
    rrca
    ld c, $0e
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld [hl], b
    ld hl, sp+$3c
    ld e, h
    and h
    db $f4
    xor h
    add sp, -$44
    ldh a, [rNR23]
    or b
    ld d, b
    db $10
    ld hl, sp-$38
    ld hl, sp+$28
    ld hl, sp+$18
    jr c, jr_048_697d

jr_048_697d:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    rlca
    dec c
    ld c, $0f
    ld [$0c0b], sp
    dec c
    ld c, $07
    ld c, $03
    ld b, $07
    inc b

jr_048_6996:
    ld b, $05
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld h, b
    ld d, b
    or b
    ret nc

    or b
    ldh [$b0], a
    ldh [rNR41], a
    and b
    ld h, b
    jr nz, jr_048_6996

    ld d, b
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld b, $07
    inc b
    dec b
    ld b, $06
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0003
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$a0], a
    ld h, b
    ldh [rNR41], a
    and b
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [rNR41], a
    and b
    ld h, b
    and b
    ld h, b
    ret nz

    ld h, b
    ld b, b
    ret nz

    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc

jr_048_6a08:
    ld [bc], a
    inc bc
    dec b
    ld b, $05
    ld b, $03
    ld b, $03
    ld [bc], a
    ld [bc], a

jr_048_6a13:
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    ld b, $07
    nop
    nop
    nop
    nop
    add b

jr_048_6a21:
    ret nz

    ld b, b

jr_048_6a23:
    ret nz

    ld b, b
    ldh [$a0], a
    ld [hl], b
    ret c

    jr c, jr_048_6a23

    ld [$18e8], sp
    ret c

    jr c, jr_048_6a21

    jr c, jr_048_6a13

    jr nc, jr_048_6aa5

    sub b
    jr nc, jr_048_6a08

    sub b
    ldh a, [rSVBK]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    rlca
    rrca
    ld e, $1f
    db $10
    rla
    jr jr_048_6a5a

    inc e
    rlca
    inc c
    ld b, $05
    inc b
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rrca

jr_048_6a5a:
    inc c
    ld c, $00
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    ldh [rSVBK], a
    cp b
    ld a, h
    db $e4
    inc e
    db $e4
    inc e
    ret c

    inc a
    or b
    ld a, b
    and b
    ld [hl], b
    ld d, b
    cp b
    xor b
    ret c

    ld c, b
    ld hl, sp+$38
    jr c, jr_048_6a7d

jr_048_6a7d:
    nop
    nop
    nop
    ld bc, $0203
    inc bc
    inc bc
    ld b, $05
    ld c, $3f
    ld a, h
    ld e, a
    ld h, b
    cpl
    ld [hl], b

jr_048_6a8e:
    rla
    jr c, jr_048_6a9c

    inc e
    ld a, [bc]
    dec e
    inc d
    dec de
    ld de, $263f
    ccf
    jr jr_048_6ad8

jr_048_6a9c:
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

jr_048_6aa5:
    ld h, b
    and b
    ld [hl], b
    db $fc
    ld a, $fa
    ld b, $f4
    ld c, $e8
    inc e
    ret nc

    jr c, @+$52

    cp b
    jr z, jr_048_6a8e

    adc b
    db $fc
    ld h, h
    db $fc
    jr @+$3e

    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    ld c, $1f
    inc de
    inc e
    inc de
    inc e
    dec c
    ld e, $06
    rrca
    ld [bc], a

jr_048_6ad3:
    rlca
    dec b
    ld c, $0a
    dec c

jr_048_6ad8:
    add hl, bc
    rrca
    ld c, $0e
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld [hl], b
    ld hl, sp+$3c
    db $fc
    inc b
    db $f4
    inc c
    add sp, $1c
    ldh a, [rNR23]
    or b
    ld d, b
    db $10
    ld hl, sp-$38
    ld hl, sp+$28
    ld hl, sp+$18
    jr c, jr_048_6afd

jr_048_6afd:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    rlca
    dec c
    ld c, $0f
    ld [$0c0b], sp
    dec c

jr_048_6b0f:
    ld c, $07

jr_048_6b11:
    ld c, $03
    ld b, $07
    inc b

jr_048_6b16:
    ld b, $05
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    nop

jr_048_6b1f:
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    and b
    ld h, b
    ret nc

    jr nc, jr_048_6afd

    jr nc, jr_048_6b0f

    jr nc, jr_048_6b11

    jr nz, jr_048_6ad3

    ld h, b
    jr nz, jr_048_6b16

    ld d, b
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0103
    ld bc, $0100
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR10]
    ret nc

    jr nc, jr_048_6b1f

    ld [hl], b
    ldh [rSVBK], a
    ldh [$60], a
    and b
    ld h, b
    ldh [rNR41], a
    ld h, b
    and b
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc

jr_048_6b88:
    ld [bc], a
    inc bc
    dec b
    ld b, $05
    ld b, $03
    ld b, $03
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    ld b, $07
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$a0], a
    ld [hl], b
    ret c

    jr c, @+$7a

    adc b
    add sp, -$68
    ret c

    cp b
    ldh a, [$38]
    ldh [$30], a
    ld [hl], b
    sub b
    jr nc, jr_048_6b88

    sub b
    ldh a, [rSVBK]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    rlca
    rrca
    ld e, $1d
    ld [de], a
    rla
    ld a, [de]
    dec bc
    ld e, $07
    inc c
    ld b, $05
    inc b
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    inc c
    ld c, $00
    nop
    nop
    nop
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, b
    ldh [rSVBK], a
    cp b
    ld a, h
    ld h, h
    sbc h
    db $e4
    sbc h
    ret c

    cp h
    or b
    ld a, b
    and b
    ld [hl], b
    ld d, b
    cp b
    xor b
    ret c

    ld c, b

jr_048_6bf9:
    ld hl, sp+$38
    jr c, jr_048_6bfd

jr_048_6bfd:
    nop
    nop
    nop
    ld [$c26c], sp
    ld [hl], b
    ld bc, $1c77
    ld [hl], a
    cp a
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $fa
    ld [$0b4d], a
    ld c, $0e
    db $fd
    pop hl
    ld c, l
    ei
    db $e3
    pop hl
    ldh [$f5], a
    db $e4
    sub $ef
    nop
    call nz, $fde2
    xor $c0
    db $e3
    and a
    ldh [$fd], a
    add sp, -$63
    pop hl
    call nc, $c0f1
    pop af
    jr jr_048_6bf9

    push hl
    ld a, [hl]
    ldh [$fd], a
    db $e3
    dec l
    dec l
    ld a, e
    ld [c], a
    ret nc

    ld hl, sp+$3d
    push hl
    ld l, [hl]
    sub e
    rst $20
    dec c
    ld l, l
    ld l, e
    rst $38
    rst $20
    ld c, l
    dec l
    or c
    pop hl
    ret nz

    ld [hl], a
    db $e4
    inc de
    db $eb
    adc c
    jp hl


    inc b
    pop hl
    adc e
    pop hl
    nop
    ldh [$0d], a
    ld l, l
    inc c
    call Call_000_3ce1
    db $e4
    dec l
    dec c
    cp a
    db $e3
    ld a, l
    rst $30
    add hl, bc
    ld [c], a
    dec bc
    ld [c], a
    cp [hl]
    cp b
    db $e4
    ld l, l
    dec l
    dec l
    dec l
    inc c
    rst $38
    ldh [$2c], a
    nop
    db $fc
    pop hl
    inc [hl]
    pop hl
    ld a, [hl]
    ldh [$92], a
    ld [$f043], a
    ld a, d
    pop bc
    add h
    ld [c], a
    dec b
    ldh [rNR13], a
    dec bc
    dec c
    pop bc
    ld [c], a
    db $fc
    ld [c], a
    inc l
    cp [hl]
    pop hl
    dec a
    ldh [rNR42], a
    rst $20
    ret nz

    add b
    push de
    ld [hl], c
    jp nz, $c1c7

    ld b, d
    ldh [$c1], a
    and $7e
    db $e3
    ld l, e
    ld l, l
    nop
    add b
    db $e3
    ld a, d
    jp c, $c214

    add $c1
    ld b, d
    db $e4
    ld a, [hl]
    and $7f
    ld [c], a
    xor $a3
    nop
    add b
    ret c

    call nc, $c6a2

jr_048_6cba:
    jp nz, $e5c1

    ld bc, $7fe1
    db $e4
    db $fd
    push bc
    ld a, d
    call z, Call_000_0978
    res 3, e
    and c
    dec b
    rst $20
    ld l, h
    ld c, h
    ld c, h
    ld c, h
    db $fd
    jp z, $7150

    and c
    adc e
    or h
    adc h
    and e
    ld b, d
    and c
    dec bc
    dec b
    ldh [$2c], a
    adc b
    pop bc
    rst $28
    ld l, h
    ld l, h
    dec hl
    dec bc
    cp [hl]
    rst $20
    dec c
    dec c
    ld c, e
    nop
    cp l
    jp nz, $cc3a

    nop
    and [hl]
    ld h, b
    call nz, $e3c0
    add d
    ld [c], a
    pop bc
    ldh [$fe], a
    ldh [$84], a
    ld a, l
    db $e4
    db $fd
    ret nz

    ld c, e
    cp l
    call nz, $acb7
    inc bc
    add $c0
    db $ec
    inc l
    ld e, $c2
    ldh [$0b], a
    dec bc
    ld l, e
    ld c, e
    ld a, h
    add $7d
    ret z

    ret z

    adc [hl]
    jr c, @-$7b

    and [hl]
    add a
    and c
    adc e
    push bc
    ld l, e
    ld c, e
    ld c, e
    pop bc
    and $ff
    call nz, $5a00
    push hl
    nop
    xor a
    ld [hl+], a
    jp $a187


    ret z

    xor b
    rst $30
    jp $c97d


    jr nz, jr_048_6cba

    nop
    nop
    or d
    ld c, e
    add c
    add a
    xor e
    jp $fce6


    and h
    cp $c3
    scf
    sub h
    ret nz

    add e
    nop
    jp nz, $fac5

    rst $28
    cp [hl]
    add $43
    ldh a, [$a4]
    add e
    rlca
    and e
    pop bc
    or $7e
    jp nz, $d800

    db $e4
    add b
    ld l, l
    add hl, sp
    ld h, d
    ld d, e
    ld h, b
    add b
    ld hl, sp+$78
    add b
    ret nz

    db $e4
    scf
    sub b
    add b
    jp nz, $c065

    cp $d6
    jp $f13d


    nop
    and $c9
    jp z, $8779

    ld l, h
    ld h, c
    ld l, h
    cp [hl]
    and h
    or a
    ld c, d
    ret


    ld c, b
    db $db
    ld b, d
    dec bc
    dec c
    inc c
    and l
    add b
    ei
    add a
    pop bc
    push hl
    dec hl
    ld h, b
    ld b, b
    rst $00
    add b
    call nc, Call_048_6016
    adc d
    db $ec
    ld c, e
    inc b
    cp e
    add e
    ld a, d
    ld h, c
    ld l, l
    ld a, [de]
    and l
    nop
    or d
    inc de
    ld b, c
    sub e
    ld b, b
    ld a, a
    db $eb
    ld bc, $3b2c
    and b
    ld a, d
    add d
    ld b, b
    and b
    ld a, l
    ld h, d
    sbc a
    ld h, d
    nop
    xor a
    ld b, l
    ld h, h
    inc b
    ld a, [hl]
    adc $c0
    pop hl
    dec bc
    nop
    xor e
    jp c, Jump_000_0ce1

    ld d, b
    ret


    inc h
    dec b
    ld h, b
    ld e, $fe
    ret


    inc l
    inc l
    ld c, e
    ld l, e
    nop
    and a
    cp c
    inc hl
    or $2c
    nop
    dec a
    dec h
    nop
    add [hl]
    ld a, l
    jp z, $85fe

    inc a
    ld h, e
    sbc [hl]
    ld b, d
    rst $10
    dec h
    add b
    call z, Call_048_7c00
    and e
    reti


    ld hl, $6088
    add h
    ld h, b
    add c
    ld h, c
    db $76
    jp hl


    ld l, l
    inc hl
    ld a, h
    pop hl
    ld [$b2bd], sp
    rst $00

Call_048_6dfb:
    inc h
    reti


    nop
    ld c, e
    cp [hl]
    ldh [rHDMA2], a
    pop bc
    and h
    nop
    call nz, Call_000_0a41
    cp b
    ld [c], a
    ld c, h
    cp e
    ld b, d
    dec c
    ld [hl], h
    ld hl, $c19a
    push bc
    ld b, $73
    inc l
    ld c, $0a
    jr nz, @+$4d

    dec bc
    dec bc
    cp a
    ldh [$c1], a
    inc b
    rst $38
    ld b, b
    rlca
    jp nz, $eae0

    and c
    ld hl, sp+$22
    ld [hl], h
    ld [hl+], a
    and c
    rlca
    add d
    db $10
    dec l
    dec bc
    ld c, e
    ld [hl+], a
    cp l
    ldh [$0b], a
    ld sp, hl
    ret nz

    db $76
    pop hl
    add c
    ld [hl+], a
    dec hl
    db $ec
    call nz, $22b6
    nop
    or l
    inc hl
    dec de
    ld [hl+], a
    cp l
    or h
    jp nz, $bee1

    db $e3
    or h
    ld b, b
    ld c, c
    and b
    ld hl, sp+$41
    ret nz

    ld l, c
    and e
    cp h
    pop hl
    cp b
    ld b, h
    ld l, $07
    xor d
    dec b
    and [hl]
    push bc
    ld c, l
    dec l
    dec l
    ld c, e
    rst $38
    ldh [$0b], a
    ld c, e
    ld [hl], a
    ret nz

    ld c, e
    rst $30
    jp nz, $41f8

    nop
    db $76
    pop hl
    ld a, [hl-]
    adc c
    ld d, d
    ld b, e
    add b
    ld c, $77
    and e
    ld d, c
    nop
    ei
    ret nz

    add b
    pop hl
    db $10
    ld a, [hl-]
    pop hl
    cp c
    ld b, c
    ret nz

    push hl
    or d
    ld bc, $fa0b
    ld h, c
    ld a, [$fe2f]
    ld h, d
    jr jr_048_6f0d

    ld [hl+], a
    sbc [hl]
    add c
    ret nz

    db $e3
    ld c, e
    dec hl
    ld a, c
    ldh [$3a], a
    ld b, c
    pop af
    ret nz

    jr jr_048_6f1a

    adc h
    add b
    pop de
    db $fc
    dec h
    dec c
    ld l, e
    ld [bc], a
    db $e3
    ld a, $42
    or h
    pop bc
    rrca
    ld l, e
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [hl], l
    ld [hl+], a
    ld a, d
    add [hl]
    ld d, h
    ld b, d
    ld [hl], l
    dec l
    ld b, $2a
    db $e4
    dec c
    ld l, l
    dec a
    ret nz

    ei
    and b
    add d
    ldh [rLYC], a
    ld [c], a
    ei
    jr nz, @+$06

    ret nz

    ldh [$f7], a
    ld b, $6d
    ld d, $82
    or a
    ld d, c
    ld a, e
    ld h, h
    pop bc
    pop hl
    ld a, $c1
    ld a, h
    ret nz

    ld hl, $0046
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld l, e
    ret nz

    push bc
    jr nz, jr_048_6f61

    ld hl, $819a
    ld b, b
    ret z

    add b
    ld l, b
    pop hl
    ld [bc], a

jr_048_6ef0:
    ld l, l
    add d
    pop bc
    ret nz

    rst $20
    ld b, $c2
    ldh [$2a], a
    ld a, [hl+]
    inc b
    jr nz, @+$3e

    ld l, c
    ld a, a
    and b
    add b
    adc $80
    ld h, e
    ld b, b
    pop bc
    pop hl
    add d
    pop bc
    add c
    pop hl
    ld [bc], a
    push hl

jr_048_6f0d:
    push bc
    ld bc, $042f
    ld l, h
    add d
    pop bc
    jr z, @-$6a

    dec b
    add b
    rst $08
    ld h, d

jr_048_6f1a:
    ld h, c
    ld l, e
    ld c, b
    jp nz, Jump_000_034b

    db $e4
    cp b
    and l
    nop
    inc l
    inc b
    cp d
    ld [$d080], sp
    ld a, [hl]
    ld [hl+], a
    ld a, [bc]
    jr nz, jr_048_6ef0

    ld [$c03d], a
    or l
    and b
    nop
    inc a
    ld b, a
    ld bc, $fba0
    ld h, $80
    call $e380
    inc bc
    and $81
    jp $a172


    nop
    ld l, d
    ld b, b
    cp d
    rlca
    scf
    add d
    ld c, h
    dec b
    cp l
    xor d
    add hl, sp
    ld h, c
    ld b, b
    db $e3
    inc bc
    and $00
    ld [hl], $c2
    add b
    rst $20
    cp d
    ld h, e
    ld d, l
    ld h, e
    dec a
    adc l

jr_048_6f61:
    cp [hl]
    ld b, e
    ld d, l
    ret nz

    add $a8
    nop
    inc b
    ret nz

    ret nz

    jp hl


    dec a
    add c
    cp $c5
    nop
    xor [hl]
    ld a, l
    inc hl
    ld b, b
    db $e3
    add [hl]
    and l
    ld [bc], a
    or a
    add c
    ld c, e
    ld b, d
    push bc
    cp d
    ld d, $7d
    ld b, h
    or c
    ld h, c
    add h
    and b
    ld c, [hl]
    and d
    nop
    ld sp, hl
    call nz, Call_048_60b2
    db $ed
    jr nz, @+$2e

    rlca
    ret nz

    add e
    rst $38
    jp Jump_048_4b00


    ld b, l
    and [hl]
    ld a, [bc]
    adc $c2
    dec bc
    cp c
    jp nz, $426b

    ldh [rTIMA], a
    push bc
    cp d
    rlca
    cp c
    ld b, d
    add b
    add b
    ld l, e
    ret nz

    ld b, $11
    ldh [$83], a
    and e
    ld [$c2e0], sp
    pop hl
    add $a0
    dec l
    inc c
    xor $0a
    ld a, $a0
    ld c, e
    ld l, l
    push de
    ld h, h
    add b
    db $10
    jp nz, $c7a3

    call nz, $c10c
    db $e4
    cpl
    dec hl
    dec c
    dec bc
    cp a
    ret


    nop
    xor h
    add d
    and e
    nop
    ld h, c
    ld h, b
    add hl, bc
    jp nz, $efc1

    add b
    db $e3
    ld a, [$8006]
    dec c
    ld c, l
    ld l, e
    rlca
    rst $00
    ld b, b
    nop
    ld h, e
    inc [hl]
    dec c
    ld a, [hl]
    add b
    cp b
    ld [bc], a
    jp $bdaf


    ld h, b
    dec l
    ret nz

    ldh [rP1], a
    ld c, c
    and a

jr_048_6ff8:
    add b
    ld b, e
    add b
    xor $80
    jp nz, Jump_000_053a

    ld b, $a5
    or c
    ld h, e
    ret nz

    jp hl


    nop
    ld a, d
    add d
    add b
    xor $40
    ld h, c
    ld b, b
    ld b, d
    add b
    jp nc, $e380

    jp Jump_000_3c40


jr_048_7016:
    ld b, b
    ld b, b
    ld [bc], a
    ld h, b
    ld [$f8a1], sp
    inc c
    add b
    and l
    nop
    xor h
    ret nz

    push hl
    dec c
    ld b, b
    and $24
    ld [$c883], sp
    add e
    ld l, h
    db $f4
    ld b, $c1
    ld b, b
    dec bc
    ccf
    ld h, b
    nop
    ld d, c
    ld [bc], a
    inc h
    inc bc
    dec l
    nop
    ld [$0334], a
    ld a, $23
    inc [hl]
    dec h
    ccf
    ld h, c
    sub c
    and l
    inc c
    nop
    xor [hl]
    and b
    nop
    ld c, e
    ld l, e
    ld b, e
    and c
    add [hl]
    and b
    jp z, Jump_048_7422

    ld [bc], a
    ret nz

    push af
    jp Jump_000_0069


    pop bc
    pop hl
    ret nz

jr_048_705d:
    db $e4
    nop
    or b
    pop bc
    ld h, d
    ld c, l
    dec l
    ld bc, $ff6b
    ld [c], a
    cp c
    nop
    jp nc, $fa00

    ld [bc], a
    ld [hl], l
    inc bc
    add hl, bc
    add c
    xor b
    ld [hl+], a
    jr nz, jr_048_6ff8

    and c
    ld b, b
    ld b, $00
    ld c, e
    db $76
    jp nz, $0683

    ld l, l
    ld e, b
    ld bc, $c2b6
    nop
    or $e0
    ld h, b
    jp Jump_000_01a8


    ld b, d
    and d
    ld c, d
    rlca
    ld a, l
    add hl, hl
    jr z, jr_048_7016

    ld a, d
    ld hl, $b600
    ld h, c
    jr z, jr_048_705d

    jp nz, $cee3

    inc hl
    inc e
    pop bc
    xor d
    ldh [rWY], a
    rrca
    ld b, b
    ld h, [hl]
    nop
    xor b
    ld h, h
    pop hl
    inc h
    db $fc
    xor $b6
    db $e3
    inc bc
    dec hl
    ld b, e
    inc hl
    ld c, b
    push hl
    ret nz

    ei
    ld [$c307], sp
    ld d, l
    ld h, e
    ld bc, $0d61
    nop
    nop
    nop
    cp a
    and b
    and b
    and b
    call c, $dedd
    ld a, [$d8eb]
    ld l, a
    reti


    and b
    jp nc, $e7d3

    ldh [$d4], a
    push de
    ld [c], a
    ldh [$e6], a
    ld a, [$d0e3]
    pop de
    push af
    pop hl
    sub $ee
    and b
    call c, $dfe4
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [$a0ea]
    jp c, $dbc1

    push bc
    db $e4
    db $fc
    rst $20
    or b
    pop hl
    sub $ef
    call nz, $eae0
    push hl
    rst $08
    and $e7
    add sp, -$17
    ld a, [$c6ea]
    db $e3
    sbc a
    and d
    dec c
    sbc l
    rst $38
    push hl
    and d
    sbc a
    ld [hl], l
    ld [c], a
    sub $ef
    call nz, Call_048_43e0
    jp hl


    ld [hl], e
    sub $d7
    adc e
    db $e3
    ld d, e
    pop hl
    sbc a
    sbc h
    ld b, [hl]
    rst $38
    rst $20
    add e
    sbc h
    sbc a
    ld [hl], d
    and $13
    db $ed
    ld c, c
    add sp, $08
    pop hl
    ld d, e
    push hl
    sbc a
    ld l, a
    sbc h
    add e
    adc c
    adc b
    rst $38
    push hl
    adc c
    add e
    cp a
    push hl
    or b
    inc de
    rst $28
    ld c, c
    jp hl


    ld [$d7e0], sp
    jp nz, $d5d4

    pop bc
    ldh [$86], a
    cp a
    add l
    ld [bc], a
    rlca
    rlca
    rlca
    ld [bc], a
    ei
    ldh [rSC], a
    add e
    add l
    add [hl]
    cp a
    ld [c], a
    cp h
    ret nz

    inc de
    ld a, [c]
    add b
    ret


    add a
    jp $ffa0


    sbc [hl]
    ld b, [hl]
    adc d
    add l
    ld [bc], a
    rrca
    sbc c
    nop
    rst $38
    ld bc, $9899
    sbc b
    sbc b
    rrca
    rlca
    ld [bc], a
    ldh [$bf], a
    ld [c], a
    push hl
    db $e3
    add b
    reti


    cp $c0
    ld c, h
    ret nz

    sbc a
    sbc l
    sbc l
    rst $38
    sbc h
    add e
    add h
    ld [bc], a
    rrca
    sbc b
    sbc b
    sbc c
    ld a, [$e0c1]
    sub a
    cp [hl]
    ldh [$08], a
    add l
    adc e
    ld b, [hl]
    sbc [hl]
    ld b, b
    ld sp, $dec1
    ret nz

    add b
    reti


    cp $c2
    add $c1
    ld b, d
    ldh [$08], a
    add [hl]
    ldh [$fd], a
    sbc b
    ret nz

    pop hl
    sub a
    sub a
    sbc b
    rrca
    ld [bc], a

jr_048_71ac:
    add d
    jr nz, jr_048_71ac

    jp $a0e6


    add b
    ret c

    cp $c2
    add $c2
    add a
    ld b, d
    ldh [$c1], a
    pop hl
    ld bc, $409a
    pop hl
    ld a, a
    ld [c], a
    db $fd
    jp $c1de


    or a
    xor e
    add b
    ret


    call $2da2
    and c
    dec b
    pop hl
    rlca
    rlca
    pop bc
    pop hl
    rrca
    ld sp, hl
    ld [c], a
    dec sp
    pop hl
    ldh [$fd], a
    push bc
    ld a, d
    rst $08
    ret


    xor b
    ld bc, $59c0
    and b
    sbc [hl]
    ld b, [hl]
    add c
    rst $28
    ld [bc], a
    rrca
    ld bc, $cb00
    pop hl
    ld [bc], a
    ld b, l
    ld b, l
    daa
    ld [bc], a
    rlca
    rrca
    cp e
    jp $c1fd


    and c
    add hl, sp
    and h
    add b
    jp nc, Jump_000_09ec

    and l
    ret nz

    ldh [$08], a
    sbc c
    adc h
    ld [c], a
    ld [bc], a
    ld b, l
    ld a, [hl+]
    rst $20
    inc l
    ld sp, $792b
    ret nz

jr_048_7211:
    cp e
    pop bc
    rrca
    ld [bc], a
    add b
    nop
    cp l
    ret nz

    jp hl


    add b
    sbc e
    and l
    nop
    xor e
    add e
    and c
    add hl, bc
    and e
    ret nz

    pop hl
    inc c
    db $e3
    ld a, a
    ld b, [hl]
    inc [hl]
    jr nz, @+$22

    jr nz, jr_048_7258

    ld b, l
    or a
    ret nz

    ld b, $bd
    ret nz

    sbc b
    ld [$e1c0], sp
    xor [hl]
    add b
    and e
    add b
    ld a, d
    ret


    inc c
    and [hl]
    db $ec
    add e
    and h
    add a
    and b
    add h
    ld [$c48b], sp
    ld b, l
    dec hl
    ld sp, $2b73
    ld b, l
    jr c, jr_048_7211

    ld a, l
    ret nz

    sub a
    sbc b
    ld [$c47d], sp

jr_048_7258:
    add b
    and e
    add b
    ld a, d
    ret


    ld b, e
    add [hl]
    adc e
    add b
    ld e, e
    add b
    add a
    and c
    adc $e1
    sub [hl]
    sbc $09
    ret nz

    rrca
    rlca
    inc b
    inc b
    or a
    jp nz, $9697

    sbc b
    pop af
    ldh [$7d], a
    call nz, $8137
    jp c, Jump_000_00db

    or e
    ld [bc], a
    ld [c], a
    adc d
    inc e
    ld b, $c1
    ret nz

    ldh [$97], a
    sbc b
    sbc c
    cp d
    jp nz, $a1fe

    ld a, [c]
    pop hl
    inc bc
    rrca
    ld [bc], a
    cp e
    and d
    scf
    adc l
    ld c, c
    adc c
    ld [bc], a
    db $e3
    ld c, a
    ld [c], a
    adc [hl]
    pop hl
    ld bc, $4098
    and d
    ret nz

    and b
    di
    db $e3
    cp [hl]
    jp $8d37


    ld b, $a7
    ld b, d
    add d
    db $10
    jp nz, $c0c3

    ld [c], a
    cp a
    pop hl
    ld b, b
    and c
    sub [hl]
    rst $38
    ldh [$73], a
    ld [c], a
    cp [hl]
    jp nz, $1a80

    add [hl]
    add b
    call $8342
    add d
    call nz, $e5bf
    or l
    db $e3
    ld [hl], e
    db $e3
    sbc c
    nop
    ret nz

    db $e4
    ld a, [de]
    add d
    add b
    rst $08
    ld h, h
    and e
    ld [bc], a
    jp $e38a


    adc c
    pop bc
    db $fc
    and $8c
    cp d
    add c
    cp $a1
    ret nc

    pop de
    inc a
    and d
    add b
    ld [hl], d
    add d
    and e
    ld [$8304], sp
    and c
    ccf
    ld [c], a
    sub a
    rlca
    jp nz, $c2be

    ld [hl], c
    pop bc
    cp [hl]
    and l
    add b
    db $76
    ld [bc], a
    adc e
    ld b, b
    and c
    ld b, d
    and c
    ld a, [bc]
    ld [c], a
    push bc
    db $e4
    ld [bc], a
    add b
    ld a, $c1
    ld a, h
    add c
    db $e3
    ld a, c
    adc l
    jr c, @+$62

    ld l, h
    ld b, c
    add b
    ret c

    sbc a
    sbc h
    adc h
    add hl, sp
    ld a, l
    rst $38
    jp $c4c1


    rrca
    ld [bc], a
    ccf
    or $61
    ret nz

    and b
    ld b, e
    ld a, c
    ld a, [hl]
    ld sp, hl
    ld b, d
    db $db
    ld b, b
    nop
    or h
    add b
    and h
    ld a, a
    ld c, $a3
    inc a
    nop
    ret nz

    add c
    ld h, c
    ld [$3540], sp
    add hl, sp
    ld a, l
    and c
    ld b, b
    and c
    add b
    ret nz

    add d
    db $db
    ld b, l
    add b
    adc $81
    ld b, h
    ret nz

    add c
    add hl, bc
    add c
    ld b, c
    call nz, Call_000_0708
    ld b, d
    dec [hl]
    ld a, [hl-]
    db $fd
    add c
    nop
    and e

jr_048_7359:
    xor c
    jr nz, jr_048_7359

    ld h, e
    add b
    ret nc

    ld [hl], b
    adc c
    ld hl, $8540
    ld b, a
    ld h, c
    ld bc, $02e4
    ld [hl], $36
    add b
    db $e3
    jr jr_048_73ec

    ld h, c
    ld l, [hl]
    ld hl, $2075
    sub $d7
    nop
    ld d, c
    adc c
    jr nz, jr_048_73bb

    add d
    ld e, b
    cp $c0
    nop
    add d
    cp e
    db $e3
    rrca
    ld [bc], a
    nop
    db $e3
    rrca
    cp [hl]
    ld h, l
    ld [hl], b
    dec h
    jr nz, jr_048_73a5

    ld b, h
    add b
    ld l, a
    ld b, b
    add c
    xor [hl]
    xor [hl]
    ld a, a
    jp z, Jump_048_6460

    add h
    ld h, b
    ld b, h
    ld b, c
    rrca
    cp h
    ld b, b
    inc a
    ld l, c
    sbc l
    sbc l
    ld a, h

jr_048_73a5:
    pop hl
    ld hl, sp+$39
    ld h, d
    nop
    ld c, a
    ld a, a
    ld [hl+], a
    sbc [hl]
    xor a
    xor a
    ld b, [hl]
    ld a, a
    rst $38
    ld a, l
    ld [bc], a
    ld [bc], a
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    ld a, h

jr_048_73bb:
    jp $087d


    cp e
    add b
    add hl, sp
    ld h, b
    jr nc, jr_048_7425

    cp a
    add b
    add [hl]
    add e
    add sp, $74
    jr z, jr_048_73cc

jr_048_73cc:
    ld d, b
    ld a, a
    ld hl, $489e
    ld hl, $7b8e
    ld a, e
    db $e3
    adc a
    xor [hl]
    rst $38

jr_048_73d9:
    ldh [$74], a
    pop bc
    rlca
    ret nz

    ld a, d
    ld a, h
    ld a, l
    adc [hl]
    rst $30
    pop hl
    rlca
    ld [bc], a
    add a
    ld [hl], h
    inc h
    ld [hl], c
    inc bc
    add b

jr_048_73ec:
    ld c, $da
    sub a
    db $db
    ret nc

    pop de
    rlca
    ld h, $af
    rst $38
    ldh [$34], a
    ld h, b
    sbc e
    ld c, $07
    ret nz

    ld b, l
    ld b, l
    ld a, a
    db $ec
    jp nz, Jump_000_20b6

    ld [hl], h
    inc hl
    jr c, jr_048_746c

    sbc b
    nop
    ld c, [hl]
    dec b
    inc hl
    add $05
    xor [hl]
    xor [hl]
    db $f4
    ld b, b
    rlca
    ld h, b
    ld b, l
    scf
    ld [hl], $36
    ld b, l
    ld [$99a2], a
    sbc e
    ld [hl], h
    jr nz, jr_048_73d9

    ld b, c

Jump_048_7422:
    ld h, b
    jr c, jr_048_7488

jr_048_7425:
    ld l, [hl]
    ld bc, $0c80
    ld e, b
    ld bc, $e87e
    ld b, [hl]
    adc h
    rst $30
    ret nz

    rra
    adc l
    ld b, h
    inc a
    dec [hl]
    ld b, b
    ld [$3a43], a
    add a
    ld d, d
    pop bc
    add $80
    dec d
    sbc a
    sbc h
    add [hl]
    ldh [$80], a
    db $e3
    or $c0
    adc a
    ld b, l
    inc bc
    ld [hl], $35
    ret nz

    db $e4
    rst $28
    ld bc, $e5c0
    add b
    ret nc

    and d
    inc hl
    db $fc
    ld hl, $7cfc
    ret nz

    add b
    db $e3
    ld b, l
    ld b, e
    ccf
    scf
    jr c, jr_048_7499

    rrca
    dec [hl]
    inc a
    ld b, h
    ld b, e
    add b
    db $e3
    ld a, d

jr_048_746c:
    ld h, h
    ret nz

    pop bc
    add b
    ld [de], a
    ld a, b
    inc a
    and b
    ld a, d
    add d
    add d
    db $e4
    ld b, l
    ld [hl], $3b
    dec [hl]
    rst $38
    pop hl
    rra
    ld [hl], $4a
    ld e, d
    add c
    ld [bc], a
    ld [hl], h
    ld [bc], a
    ld a, d
    add e

jr_048_7488:
    ld [hl], l
    dec b
    adc h
    add b
    dec c
    cp h
    ld hl, $d5d4
    ld a, l
    jp $e182


    ld b, [hl]
    ldh [$35], a
    ld a, a

jr_048_7499:
    dec [hl]
    dec sp
    dec [hl]
    ld [hl], $45
    ld c, a
    ld d, l
    ret nz

    pop hl
    ret nz

    ld a, d
    add [hl]
    ld [hl], l
    inc bc
    add b
    ret nc

    and e
    ld h, c
    ld a, $c6
    rlca
    pop hl
    xor h
    xor h
    ld a, a
    ld [hl], $50
    ccf
    ld c, b
    ld c, [hl]
    ld b, e
    ld b, l
    add sp, $42
    and b
    cp d
    inc hl
    ld d, d
    dec h
    add b
    ret nc

    cp [hl]
    ld [hl+], a
    ld b, b
    push bc
    add hl, sp
    ld b, h
    ldh [$ad], a
    ld a, a
    xor l
    add hl, sp
    ld d, h
    ld c, h
    ld d, h
    ld d, e
    ld b, l
    xor d
    ld hl, $3c70
    ld h, a
    add b
    ret c

    ld b, e
    ldh [$82], a
    jp Jump_048_4546


    ld a, [hl-]
    inc b
    ld [c], a
    inc bc
    ld a, [hl-]
    ld b, l
    ld hl, sp-$60
    xor d
    ld hl, $81ad
    ld a, [$8008]
    pop de
    add b
    ld [bc], a
    ld [$c108], sp
    ld b, d
    db $e4
    jp $40c2


    xor $80
    xor d
    jr nz, @+$7a

    ld bc, $e3c0
    ld h, b
    ld a, [$8003]
    pop de
    add b
    ld [bc], a
    inc bc
    rst $20
    add h
    jp nz, $443c

    ld [hl], b
    and b
    nop
    db $ec
    ld h, l
    ld a, d
    ld h, d
    ld d, e
    ld b, l
    add b
    rst $08
    add b
    ld [bc], a
    inc bc
    rst $20
    ld b, b
    db $e4
    ret nz

    pop hl
    nop
    ld l, h
    ld h, h
    cp d
    dec b
    ld d, d
    ld h, e
    nop
    xor a
    add b
    add d
    ld b, $c2
    inc bc
    db $e3
    ld [bc], a
    ret nz

    ld bc, $f839
    add e
    db $ec
    ld b, e
    cp d
    ld h, h
    ld hl, sp+$44
    nop
    ld c, h
    cp d
    ld b, d
    nop
    db $e4
    adc h
    inc c
    and b
    ld bc, $36e3
    ld b, l
    ld hl, sp-$7f
    ld a, [hl+]
    inc hl
    cp d
    jr nz, jr_048_7558

    ld [hl], b
    cp d
    dec b
    nop
    or b
    add hl, hl
    add d
    add h

jr_048_7558:
    and d
    ld b, [hl]
    ld b, [hl]
    ld b, b
    ld b, d
    jp hl


    add c
    ld b, [hl]
    ld b, d
    pop bc
    ld a, c
    dec b
    cp d
    dec b
    add b
    ld [hl], b
    ld b, d
    adc b
    ld b, b
    push hl
    add hl, sp
    ld c, $c3
    ldh [$89], a
    adc b
    add a
    ld l, e
    ld bc, $03f8
    ret nz

    add [hl]
    add b
    db $10
    inc e
    ld b, l
    and l
    ret nz

    add $38
    scf
    ld b, l
    dec b
    pop bc
    ld b, c
    ld h, c
    ld l, l
    jr nz, jr_048_758b

    sub l

jr_048_758b:
    ld l, e
    ld bc, $4038
    dec a
    ld h, [hl]
    add b
    ld de, $65c3
    push bc
    add b
    jp nz, $02e1

    add $a0
    add l
    xor $03
    ret nz

    ld [c], a
    ld hl, sp+$22
    ld a, a
    add e
    cp l
    and e
    add b
    ld c, $00
    add d
    and l
    ld b, l
    add b
    ld b, a
    pop bc
    pop bc
    ldh [$f1], a
    inc hl
    ld l, $00
    ret nz

    pop hl
    ld a, [hl]
    and c
    nop
    cp c
    inc bc
    cp l
    and e
    add b
    ld c, $82
    and h
    inc a
    ld h, h
    pop bc
    ld [c], a
    ld a, l
    inc bc
    ld bc, $f0e0
    ret nz

    rst $20
    dec sp
    ld b, d
    add b
    db $10
    ld b, d
    and b
    ld b, l
    ld b, e
    ld b, c
    ld b, e
    ld [$e0fd], sp
    jp z, Jump_000_00a0

    ld h, b
    adc d
    push af
    jr nz, jr_048_7623

    ld [bc], a
    db $fd
    ld [c], a
    ret nz

    call nz, Call_000_3d14
    ld b, e
    add b
    ld [de], a
    sbc [hl]
    call Call_000_3b62
    db $fd
    ldh [$08], a
    push bc
    cp e
    ld bc, $06f0
    jp nz, $a5ff

    add b
    push de
    jp nz, $44a4

    inc a
    and h
    ld h, h
    ld b, $ff

jr_048_7606:
    ldh [$a5], a
    inc a
    db $fc
    ld b, d
    adc b
    and b
    or h
    inc bc
    inc sp
    ld [bc], a
    nop
    call nz, Call_048_78f8
    ld [bc], a
    add b
    adc $81
    ld [bc], a
    sbc [hl]
    ld b, [hl]
    ld b, d
    dec [hl]
    ld l, c
    ccf
    and e
    dec [hl]
    dec [hl]

jr_048_7623:
    and e
    ld l, d
    dec [hl]
    db $fc
    ld b, d
    ld c, b
    and d
    jr jr_048_7633

    ld h, d
    ld a, h
    jp nz, $203a

    ld a, c
    adc l

jr_048_7633:
    ld a, $86
    add b
    res 0, d
    ld b, d
    cp c
    and c
    ret nz

    pop hl
    dec c
    ld h, c
    ld l, d
    dec [hl]
    ld b, d
    nop
    ld b, e
    sbc e
    nop
    add hl, bc

jr_048_7647:
    ld h, b
    ret z

    jr nz, jr_048_7647

    and e
    add c
    and d
    ld a, $20
    nop
    ld d, c
    add c
    nop
    add d
    ld hl, $442f
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld c, c
    add b
    add b
    ld hl, $0207
    rrca
    sbc d
    ld a, $22
    db $f4
    nop
    ld a, b
    nop
    pop bc
    ld b, c
    ld b, c
    ld b, h
    or b
    nop
    or c
    add d
    ld [hl+], a
    ret nz

    rst $00
    ld a, b
    jr nz, jr_048_7606

    ld a, l
    ld a, e
    nop
    ld [bc], a
    inc bc
    ld a, c
    ld a, [hl]
    ld l, l
    jr nz, @-$53

    nop
    or $e3
    rst $38
    ld b, h
    add b
    db $10
    add d
    inc hl
    adc [hl]
    ld b, b
    add $9c
    sbc l
    sbc h
    or [hl]
    ld bc, $00b4
    ld c, b
    nop
    sbc l
    add l
    sbc h
    push af
    pop hl
    adc a
    inc h
    jr nz, @+$01

    ld b, h
    nop
    ld d, c
    cp h
    pop bc
    sbc a
    inc h
    call nc, $fde0
    db $e3
    sbc a
    db $f4
    pop hl
    or c
    nop
    sbc h
    or $e0
    add sp, -$1d
    nop
    and h
    ld bc, $4401
    add a
    and h
    nop
    ld c, e
    db $eb
    ret nz

    ld h, l
    ld b, $5a
    inc b
    or c
    ldh [rP1], a
    pop de
    add c
    ld c, [hl]
    inc bc
    and h
    pop hl
    ld bc, $4a42
    ld b, $80
    dec bc
    cp h
    ret nz

    and l
    ld hl, $3500
    ret nz

    ld e, $c1
    sbc d
    ld hl, $c116
    db $f4
    jp hl


    or [hl]
    db $e4
    ld c, d
    ld h, [hl]
    add b
    ld l, [hl]
    nop
    push hl
    ld h, c
    ld h, h
    ret nz

    ld e, [hl]
    ld hl, $61da
    ld d, [hl]
    ld hl, $e8f4
    jr nz, jr_048_771c

    ld b, e
    dec h
    nop
    call nz, Call_000_0080
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

jr_048_771c:
    ld [bc], a
    nop
    ld [de], a
    dec e
    ld [bc], a
    ld bc, $1d13
    ld [bc], a
    ld [bc], a
    ld a, [de]
    rra
    ld [bc], a
    inc bc
    dec de
    rra
    ld [bc], a
    inc b
    inc e
    rra
    ld [bc], a
    dec b
    dec e
    rra
    ld [bc], a
    ld b, $1c
    ld hl, $0702
    dec e
    ld hl, $0802
    ld d, $23
    ld [bc], a
    add hl, bc
    rla
    inc hl
    ld [bc], a
    ld a, [bc]
    inc e
    inc hl
    ld [bc], a
    dec bc
    dec e
    inc hl
    ld [bc], a
    inc c
    ld a, [de]
    dec h
    ld [bc], a
    dec c
    dec de
    dec h
    ld [bc], a
    ld c, $20
    daa
    ld [bc], a
    rrca
    ld hl, $0227
    db $10
    inc d
    add hl, hl
    ld [bc], a
    ld de, $2915
    ld [bc], a
    ld [de], a
    inc h
    add hl, hl
    ld [bc], a
    inc de
    dec h
    add hl, hl
    ld [bc], a
    inc d
    inc d
    dec l
    ld [bc], a
    dec d
    dec d
    dec l
    ld [bc], a
    ld d, $24
    dec l
    ld [bc], a
    rla
    dec h
    dec l
    ld [bc], a
    jr jr_048_7791

    inc sp
    ld [bc], a
    add hl, de
    inc de
    inc sp
    ld [bc], a
    ld a, [de]
    inc e
    dec [hl]
    ld [bc], a
    dec de
    dec e
    dec [hl]
    ld [bc], a
    inc e
    ld a, [de]
    scf
    ld [bc], a

jr_048_7791:
    dec e
    dec de
    scf
    ld [bc], a
    ld e, $1c
    add hl, sp
    ld [bc], a
    rra
    dec e
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_048_783f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_048_78f8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_048_7b88:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_048_7c00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_048_7e3c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
