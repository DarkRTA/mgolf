; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $041", ROMX[$4000], BANK[$41]

    ld a, [hl+]
    ld b, b
    db $f4
    ld l, a

    db $7c, $70

    ld c, c
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    sub [hl]
    ld l, [hl]

    db $bb, $6e, $e0, $6e

    ld [$306f], sp
    ld l, a

    db $55, $6f

    ld a, d
    ld l, a
    sbc a
    ld l, a
    call nz, $b36f
    ld a, l
    db $f4
    ld a, l
    db $ea
    ld [hl], a

    db $06, $65, $84, $67

    rlca
    ld a, [hl]

    db $b4, $7b

    rst $18
    inc h
    ld [bc], a
    ret nz

    call Call_000_23b6
    rst $18
    ld a, [bc]
    ld bc, $00df
    dec b
    call Call_000_0341
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld [$c320], a
    ld [$c321], a
    ld [$c322], a
    ld [$c323], a
    ld a, $90
    ldh [rWY], a
    call Call_000_2683
    call Call_041_5669
    call Call_041_4366
    call Call_041_48f4
    xor a
    call Call_041_49ed
    call Call_041_43c0
    call Call_041_446d
    call Call_041_508c
    call Call_000_04de
    rst $18
    inc b
    ld b, d
    call Call_000_04de
    xor a
    call Call_041_4bab
    call Call_041_4cc1
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_4c4a
    call Call_041_51e4
    call Call_000_04de
    call Call_000_0371
    ld a, $03
    ld hl, $4dfc
    call Call_000_23e8
    ld a, $04
    ld hl, $50b3
    call Call_000_23e8
    ld a, $05
    ld hl, $5088
    call Call_000_23e8
    ld a, $02
    ld hl, $4d2f
    call Call_000_23e8
    ld a, $01
    ld hl, $4cd1
    call Call_000_23e8
    ld a, $01
    ld hl, $4d79
    call Call_000_23e8
    ld a, $01
    ld hl, $53b8
    call Call_000_23e8
    ld a, $01
    ld hl, $5694
    call Call_000_23e8
    rst $08
    nop
    rst $08
    dec de
    ld c, $10
    call Call_000_258d
    call Call_000_2625
    jr jr_041_40e0

Jump_041_40da:
    call Call_041_508c
    call Call_041_51e4

Jump_041_40e0:
jr_041_40e0:
    ld a, [$d4a4]
    and a
    jr z, jr_041_412f

    call Call_041_42fa
    call Call_041_50d2
    call Call_000_2e3b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4a0
    ld a, [hl]
    cp $00
    jr nz, jr_041_40e0

    ldh a, [$94]
    and a
    jr z, jr_041_4105

    ld [$d633], a

jr_041_4105:
    ld a, [$d551]
    and a
    jr nz, jr_041_40e0

    ld a, [$d548]
    and a
    jr nz, jr_041_40e0

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d633]
    bit 6, a
    jr nz, jr_041_4135

    bit 7, a
    jr nz, jr_041_4171

    bit 0, a
    jp nz, Jump_041_41ad

    bit 1, a
    jp nz, Jump_041_4288

    jp Jump_041_40e0


jr_041_412f:
    call Call_000_2e3b
    jp Jump_041_40e0


jr_041_4135:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d633], a
    ld a, [$d632]
    cp $02
    jr z, jr_041_415f

    cp $01
    jr z, jr_041_414d

    jp Jump_041_40e0


jr_041_414d:
    rst $08
    ld e, e
    ld hl, $d630
    ld a, [hl]
    dec a
    and $03
    ld [hl], a
    ld hl, $d631
    ld [hl], $1f
    jp Jump_041_40da


jr_041_415f:
    rst $08
    ld e, e
    ld hl, $d40a
    ld a, [hl]
    dec a
    and $01
    ld [hl], a
    ld hl, $d631
    ld [hl], $1f
    jp Jump_041_40e0


jr_041_4171:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d633], a
    ld a, [$d632]
    cp $02
    jr z, jr_041_419b

    cp $01
    jr z, jr_041_4189

    jp Jump_041_40e0


jr_041_4189:
    rst $08
    ld e, e
    ld hl, $d630
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    ld hl, $d631
    ld [hl], $1f
    jp Jump_041_40da


jr_041_419b:
    rst $08
    ld e, e
    ld hl, $d40a
    ld a, [hl]
    inc a
    and $01
    ld [hl], a
    ld hl, $d631
    ld [hl], $1f
    jp Jump_041_40e0


Jump_041_41ad:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d633], a
    ld a, [$d632]
    cp $02
    jp z, Jump_041_422e

    cp $01
    jr z, jr_041_41cd

    rst $08
    ld e, h
    ld a, $01
    ld [$d632], a
    jp Jump_041_40da


jr_041_41cd:
    rst $08
    ld e, h
    ld a, [$d630]
    ld d, a
    rst $18
    jr @+$04

    call Call_041_5383
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d43c
    ld a, [hl]
    dec a
    ld [hl], a
    and a
    jr z, jr_041_4206

    ld a, [$d4d1]
    ld hl, $d4d2
    add l
    ld l, a
    jr nc, jr_041_41f3

    inc h

jr_041_41f3:
    ld a, [$d630]
    ld [hl], a
    ld hl, $d4d1
    inc [hl]
    xor a
    call Call_041_49ed
    xor a
    ld [$d632], a
    jp Jump_041_40da


jr_041_4206:
    ld a, $02
    ld [$d632], a
    ld hl, $4dfc
    call Call_000_2449
    ld hl, $4d79
    call Call_000_2449
    ld hl, $53b8
    call Call_000_2449
    ld hl, $4d2f
    call Call_000_2449
    ld a, $01
    ld hl, $4328
    call Call_000_23e8
    jp Jump_041_40da


Jump_041_422e:
    rst $08
    ld e, h
    ld a, [$d40a]
    and a
    jp nz, Jump_041_54ca

    ld a, $02
    ld hl, $4d2f
    call Call_000_23e8
    call Call_000_2e3b
    ld a, $03
    ld [$d632], a
    call Call_041_51e4
    call Call_041_42b4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    ld hl, $50b3
    call Call_000_2449
    ld hl, $5088
    call Call_000_2449
    ld hl, $4d2f
    call Call_000_2449
    ld hl, $5694
    call Call_000_2449
    ld hl, $4cd1
    call Call_000_2449
    ld hl, $4328
    call Call_000_2449
    rst $18
    ld a, [bc]
    ld bc, $3bcd
    ld l, $c9

Jump_041_4288:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d633], a
    ld a, [$d632]
    cp $02
    jr z, jr_041_42af

    cp $01
    jr z, jr_041_42a3

    call Call_041_550c
    jp Jump_041_40da


jr_041_42a3:
    rst $08
    ld e, l
    xor a
    ld [$d632], a
    call Call_041_5383
    jp Jump_041_40da


jr_041_42af:
    rst $08
    ld e, l
    jp Jump_041_54ca


Call_041_42b4:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    ld [$d5a4], a
    ld a, $01
    ld [$d54b], a

jr_041_42c4:
    call Call_000_2e3b
    ldh a, [$94]
    bit 0, a
    jr nz, jr_041_42d8

    ld a, [$d5a4]
    dec a
    ld [$d5a4], a
    jr z, jr_041_42d8

    jr jr_041_42c4

jr_041_42d8:
    ret


    push af
    push hl
    ld b, a
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d852]
    ld l, a
    ld a, [$d853]
    ld h, a
    ld a, b
    rst $18
    ld c, b
    dec b
    inc hl
    ld a, l
    ld [$d852], a
    ld a, h
    ld [$d853], a
    pop hl
    pop af
    ret


Call_041_42fa:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d632]
    dec a
    ret nz

    ld a, [$d631]
    sub $10
    jr c, jr_041_4324

    ld hl, $d630
    ld a, [hl]
    inc a
    ld de, $d400

jr_041_4314:
    inc de
    dec a
    jr nz, jr_041_4314

    dec de
    ld h, d
    ld l, e
    ld d, $28
    ld e, [hl]
    ld bc, $0430
    call Call_000_2798

jr_041_4324:
    call Call_041_4357
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d632]
    cp $02
    ret nz

    ld a, [$d631]
    sub $10
    jr c, jr_041_4353

    ld hl, $d40a
    ld a, [hl]
    inc a
    ld de, $d408

jr_041_4343:
    inc de
    dec a
    jr nz, jr_041_4343

    dec de
    ld h, d
    ld l, e
    ld d, $0a
    ld e, [hl]
    ld bc, $0230
    call Call_000_2798

jr_041_4353:
    call Call_041_4357
    ret


Call_041_4357:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d631
    ld a, [hl]
    dec a
    and $1f
    ld [hl], a
    ret


Call_041_4366:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d400
    ld [hl], $1b
    inc hl
    ld [hl], $2b
    inc hl
    ld [hl], $43
    inc hl
    ld [hl], $5d
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $24
    inc hl
    ld [hl], $34
    inc hl
    ld [hl], $00
    ld hl, $d4a0
    ld [hl], $01
    inc hl
    ld [hl], $28
    inc hl
    ld hl, $d4a4
    ld [hl], $00
    inc hl
    ld [hl], $1e
    inc hl
    ld a, [$6463]
    ld [hl], a
    inc hl
    ld [hl], $00
    ld hl, $d630
    ld [hl], $00
    inc hl
    ld [hl], $1f
    inc hl
    ld [hl], $00
    ld hl, $d4a2
    ld [hl], $38
    inc hl
    ld [hl], $40
    xor a
    ld [$d5ae], a
    ret


Call_041_43c0:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5943
    ld de, $0901
    call Call_000_0595
    ld hl, $5950
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8300
    ld c, $16
    call Call_000_04db
    ld hl, $5b1a
    ld de, $0f01
    call Call_000_0595
    ld hl, $5a08
    ld de, $0d01
    call Call_000_0595
    ld hl, $5a10
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8460
    ld c, $14
    call Call_000_04db
    ld hl, $5aa7
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $85a0
    ld c, $04
    call Call_000_04db
    ld hl, $5acb
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $82c0
    ld c, $04
    call Call_000_04db
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d442
    ld [hl], $1c
    inc hl
    ld [hl], $2f
    inc hl
    ld [hl], $23
    inc hl
    ld [hl], $31
    inc hl
    ld [hl], $23
    inc hl
    ld [hl], $46
    inc hl
    ld [hl], $1c
    inc hl
    ld [hl], $48
    inc hl
    ld [hl], $0d
    inc hl
    ld [hl], $48
    inc hl
    ld [hl], $07
    inc hl
    ld [hl], $46
    inc hl
    ld [hl], $07
    inc hl
    ld [hl], $31
    inc hl
    ld [hl], $0d
    inc hl
    ld [hl], $2f
    inc hl
    ld [hl], $00
    ret


Call_041_446d:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5d80
    ld de, $d000
    call Call_000_1f2f
    ld hl, $621a
    ld de, $d1e0
    call Call_000_1f2f
    ld hl, $6190
    ld de, $d2a0
    call Call_000_1f2f
    ld hl, $61d5
    ld de, $d300
    call Call_000_1f2f
    ld hl, $625d
    ld de, $d3c0
    call Call_000_1f2f
    ld hl, $6339
    ld de, $d420
    call Call_000_1f2f
    ld hl, $5d00
    ld de, $d4c0
    call Call_000_1f2f
    ld hl, $5d15
    ld de, $d590
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $63
    call Call_000_04db
    ld hl, $62a0
    ld de, $d000
    call Call_000_1f2f
    ld hl, $62f8
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b630
    ld c, $0e
    call Call_000_04db
    ld hl, $5eb0
    ld de, $d4d0
    call Call_000_1f2f
    ld hl, $d4d0
    ld de, $a800
    ld c, $38
    call Call_000_04db
    ld hl, $637d
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $06
    call Call_000_04db
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $1000
    ld d, $01
    ld hl, $d000
    call Call_041_48e5
    ld hl, $d0d0
    ld d, $09
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d0f0
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d127
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d147
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d130
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d150
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d1a6
    ld bc, $0004
    call Call_041_48e5
    ld hl, $d1c6
    ld bc, $0004
    call Call_041_48e5
    ld hl, $d1b0
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d1d0
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d1e7
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d207
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d1f0
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d210
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d0ca
    ld d, $0b
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d0ea
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d12a
    ld d, $0c
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d14a
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d1aa
    ld d, $0d
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d1ca
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d1ea
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d20a
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d460
    ld d, $8e
    ld bc, $000c
    call Call_041_48e5
    ld hl, $d480
    ld bc, $000c
    call Call_041_48e5
    ld hl, $d4a0
    ld bc, $000c
    call Call_041_48e5
    ld hl, $d4c0
    ld bc, $000c
    call Call_041_48e5
    ld hl, $d460
    ld d, $8f
    ld bc, $000b
    call Call_041_48e5
    ld a, $09
    ld [$d000], a
    ld [$d013], a
    ld [$d220], a
    ld [$d233], a
    ld bc, $0012
    ld d, $09
    ld hl, $d001
    call Call_041_48e5
    ld bc, $0012
    ld hl, $d221
    call Call_041_48e5
    ld b, $10
    ld a, $09
    ld hl, $d020
    ld de, $0020

jr_041_4647:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_041_4647

    ld b, $10
    ld a, $09
    ld hl, $d033

jr_041_4653:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_041_4653

    ld a, $09
    ld [$d240], a
    ld [$d253], a
    ld bc, $0012
    ld d, $09
    ld hl, $d241
    call Call_041_48e5
    ld a, $09
    ld [$d260], a
    ld [$d273], a
    ld [$d280], a
    ld [$d293], a
    ld bc, $0012
    ld d, $09
    ld hl, $d281
    call Call_041_48e5
    ld a, $09
    ld [$d2a0], a
    ld [$d2b3], a
    ld bc, $0100
    ld d, $00
    ld hl, $d2c0
    call Call_041_48e5
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $1000
    ld d, $20
    ld hl, $d000
    call Call_041_48e5
    ld hl, $d000
    ld [hl], $59
    ld hl, $d013
    ld [hl], $5a
    ld hl, $d220
    ld [hl], $5b
    ld hl, $d233
    ld [hl], $5c
    ld bc, $0012
    ld d, $5d
    ld hl, $d001
    call Call_041_48e5
    ld bc, $0012
    ld d, $5e
    ld hl, $d221
    call Call_041_48e5
    ld b, $10
    ld a, $5f
    ld hl, $d020
    ld de, $0020

jr_041_46dc:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_041_46dc

    ld b, $10
    ld a, $60
    ld hl, $d033

jr_041_46e8:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_041_46e8

    ld hl, $d240
    ld [hl], $59
    ld hl, $d253
    ld [hl], $5a
    ld bc, $0012
    ld d, $5d
    ld hl, $d241
    call Call_041_48e5
    ld hl, $d260
    ld [hl], $5f
    ld hl, $d273
    ld [hl], $60
    ld hl, $d280
    ld [hl], $59
    ld hl, $d293
    ld [hl], $5a
    ld bc, $0012
    ld d, $5d
    ld hl, $d281
    call Call_041_48e5
    ld hl, $d2a0
    ld [hl], $5f
    ld hl, $d2b3
    ld [hl], $60
    ld hl, $d2c0
    ld [hl], $02
    ld hl, $d2d3
    ld [hl], $04
    ld hl, $d300
    ld [hl], $07
    ld hl, $d313
    ld [hl], $09
    ld bc, $0012
    ld d, $03
    ld hl, $d2c1
    call Call_041_48e5
    ld bc, $0012
    ld d, $08
    ld hl, $d301
    call Call_041_48e5
    ld hl, $d2e0
    ld [hl], $05
    ld hl, $d2f3
    ld [hl], $06
    ld hl, $d320
    ld [hl], $02
    ld hl, $d325
    ld [hl], $04
    ld hl, $d3a0
    ld [hl], $07
    ld hl, $d3a5
    ld [hl], $09
    ld a, $05
    ld [$d340], a
    ld [$d360], a
    ld [$d380], a
    ld a, $06
    ld [$d345], a
    ld [$d365], a
    ld [$d385], a
    ld bc, $0004
    ld d, $03
    ld hl, $d321
    call Call_041_48e5
    ld bc, $0004
    ld d, $08
    ld hl, $d3a1
    call Call_041_48e5
    ld hl, $d090
    ld [hl], $59
    ld hl, $d0d0
    ld a, $1e
    ld b, $03
    call Call_041_48ed
    ld hl, $d0f0
    ld b, $03
    call Call_041_48ed
    ld hl, $d127
    ld a, $2a
    ld b, $03
    call Call_041_48ed
    ld hl, $d147
    ld b, $03
    call Call_041_48ed
    ld hl, $d130
    ld a, $30
    ld b, $03
    call Call_041_48ed
    ld hl, $d150
    ld b, $03
    call Call_041_48ed
    ld hl, $d1a6
    ld a, $63
    ld b, $04
    call Call_041_48ed
    ld hl, $d1c6
    ld b, $04
    call Call_041_48ed
    ld hl, $d1b0
    ld a, $3c
    ld b, $03
    call Call_041_48ed
    ld hl, $d1d0
    ld b, $03
    call Call_041_48ed
    ld hl, $d1e7
    ld a, $42
    ld b, $03
    call Call_041_48ed
    ld hl, $d207
    ld b, $03
    call Call_041_48ed
    ld hl, $d1f0
    ld a, $6b
    ld b, $03
    call Call_041_48ed
    ld hl, $d210
    ld b, $03
    call Call_041_48ed
    ld hl, $d460
    ld a, $80
    ld b, $0c
    call Call_041_48ed
    ld hl, $d480
    ld a, $8c
    ld b, $0c
    call Call_041_48ed
    ld hl, $d4a0
    ld a, $98
    ld b, $0c
    call Call_041_48ed
    ld hl, $d4c0
    ld a, $a4
    ld b, $0c
    call Call_041_48ed
    ld hl, $5afa
    ld de, $0c01
    call Call_000_0595
    ld hl, $5d71
    ld de, $0301
    call Call_000_0595
    ld hl, $5d71
    ld de, $0401
    call Call_000_0595
    ld hl, $5d71
    ld de, $0501
    call Call_000_0595
    ld hl, $5e92
    ld de, $0601
    call Call_000_0595
    ld hl, $5e9a
    ld de, $0701
    call Call_000_0595
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5d71
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d428
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $5d73
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d42a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $5d75
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d42c
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $5d77
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d42e
    ld a, e
    ld [hl+], a
    ld [hl], d
    xor a
    ld hl, $d432
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$d428], a
    ld hl, $5ced
    ld de, $0101
    call Call_000_0595
    ld hl, $5ced
    ld de, $0a01
    call Call_000_0595
    ld hl, $5ce5
    ld de, $0001
    call Call_000_0595
    ld hl, $5ce5
    ld de, $0801
    call Call_000_0595
    ret


Call_041_48e5:
jr_041_48e5:
    ld [hl], d
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_041_48e5

    ret


Call_041_48ed:
jr_041_48ed:
    ld [hl], a
    inc hl
    inc a
    dec b
    jr nz, jr_041_48ed

    ret


Call_041_48f4:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d435], a
    ld hl, $c800
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d436], a
    ld hl, $c800
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d437], a
    ld hl, $c800
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d438], a
    ld hl, $c800
    ld a, l
    add $22
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d439], a
    ld hl, $c800
    ld a, l
    add $23
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d43a], a
    ld hl, $c800
    ld a, l
    add $24
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d43b], a
    xor a
    ld [$d43c], a

jr_041_495c:
    rst $18
    inc h
    ld [bc], a
    jr nz, jr_041_496c

    ld d, $00
    rst $18
    jr @+$04

    ld hl, $d435
    inc [hl]
    jr jr_041_495c

jr_041_496c:
    call Call_041_4970
    ret


Call_041_4970:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d435]
    ld [$d43c], a
    ld hl, $c800
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$d436]
    ld [hl], a
    ld hl, $c800
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$d437]
    ld [hl], a
    ld hl, $c800
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$d438]
    ld [hl], a
    ld hl, $c800
    ld a, l
    add $22
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$d439]
    ld [hl], a
    ld hl, $c800
    ld a, l
    add $23
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$d43a]
    ld [hl], a
    ld hl, $c800
    ld a, l
    add $24
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$d43b]
    ld [hl], a
    xor a
    ld b, $64
    ld hl, $d4d2

jr_041_49dc:
    ld [hl+], a
    dec b
    jr nz, jr_041_49dc

    ld hl, $d4d1
    ld [hl], a
    xor a
    ld hl, $d43f
    ld [hl+], a
    rst $18
    inc e
    ld [bc], a
    ret


Call_041_49ed:
    and a
    jp nz, Jump_041_4ac5

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
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d63c
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $1a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d63e
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $1c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $00
    ld c, [hl]
    ld hl, $d640
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $1d
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $00
    ld c, [hl]
    ld hl, $d642
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $1e
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $00
    ld c, [hl]
    ld hl, $d644
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $00
    ld c, [hl]
    ld hl, $d646
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d453], a
    ld hl, $c800
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d454], a
    ld hl, $c800
    ld a, l
    add $22
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d455], a
    ld hl, $c800
    ld a, l
    add $24
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d456], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d63c
    inc [hl]
    ld bc, $d406
    call Call_041_546a
    ld hl, $d43c
    ld bc, $d43d
    call Call_041_546a
    ret


Jump_041_4ac5:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d632], a
    ld [$d648], a
    ld [$d649], a
    ld [$d64a], a
    ld [$d64b], a
    ld [$d64c], a
    ld hl, $c800
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d63c
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $1a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d63e
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $1c
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $00
    ld c, [hl]
    ld hl, $d640
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $1d
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $00
    ld c, [hl]
    ld hl, $d642
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $1e
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $00
    ld c, [hl]
    ld hl, $d644
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, $00
    ld c, [hl]
    ld hl, $d646
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c800
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d453], a
    ld hl, $c800
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d454], a
    ld hl, $c800
    ld a, l
    add $22
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d455], a
    ld hl, $c800
    ld a, l
    add $24
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    ld [$d456], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d63c
    ld bc, $d406
    call Call_041_546a
    ld hl, $d43c
    ld bc, $d43d
    call Call_041_546a
    ret


Call_041_4bab:
    rst $18

    db $1a, $03

    and a
    jr nz, jr_041_4bc4

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d021
    ld hl, $10df
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    jr jr_041_4bc7

jr_041_4bc4:
    call Call_041_5598

jr_041_4bc7:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d061
    ld hl, $10e0
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d066
    ld hl, $10e1
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d0a6
    ld hl, $10e3
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d106
    ld hl, $10e2
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d166
    ld hl, $10e4
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d187
    ld hl, $10e5
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d261
    ld hl, $10e7
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d2a1
    ld hl, $10e8
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d2e1
    ld hl, $10e6
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d342
    ld hl, $10e9
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d382
    ld hl, $10ea
    ld c, $20
    rst $18

    db $22, $05

    rst $18

    db $24, $03

    ret


Call_041_4c4a:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $9800
    ld a, $12

jr_041_4c58:
    push af
    push hl
    push de
    ld c, $02
    call Call_000_04db
    pop de
    pop hl
    ld bc, $0020
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    pop af
    dec a
    jr nz, jr_041_4c58

    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld a, $12

jr_041_4c82:
    push af
    push hl
    push de
    ld c, $02
    call Call_000_04db
    pop de
    pop hl
    ld bc, $0020
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    pop af
    dec a
    jr nz, jr_041_4c82

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $9800
    ld c, $02
    call Call_000_04db
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld c, $02
    call Call_000_04db
    ret


Call_041_4cc1:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d63c
    ld bc, $d406
    call Call_041_546a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d63e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d632]
    and a
    jr z, jr_041_4ced

    ld d, h
    ld e, l
    ld hl, $d648
    ld a, [hl]
    call Call_041_4d2a
    add hl, de

jr_041_4ced:
    ld a, $03
    ld de, $d64e
    call Call_000_21f0
    ld bc, $d434
    ld hl, $d64e
    ld de, $6b1e
    ld a, $03
    call Call_041_4d04
    ret


Call_041_4d04:
jr_041_4d04:
    push af
    push de
    push hl
    ld h, b
    ld l, c
    ld a, [hl]
    add e
    ld e, a
    pop hl
    push hl
    push bc
    ld a, [hl]
    sub $30
    inc a
    add a
    add $30
    ld c, a
    ld b, $01
    call Call_000_2798
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
    jr nz, jr_041_4d04

    ret


Call_041_4d2a:
    ld l, a
    rlca
    sbc a
    ld h, a
    ret


    ld b, $01
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d406
    ld a, [hl]
    bit 7, a
    jr nz, jr_041_4d5e

    ld de, $1026
    inc a
    add a
    add $30
    ld c, a
    push hl
    push de
    push af
    call Call_000_2798
    pop af
    pop de
    pop hl
    inc hl
    ld a, [hl]
    ld d, $18
    inc a
    add a
    add $30
    ld c, a
    call Call_000_2798
    jr jr_041_4d6b

jr_041_4d5e:
    ld de, $1426
    inc hl
    ld a, [hl]
    inc a
    add a
    add $30
    ld c, a
    call Call_000_2798

jr_041_4d6b:
    ld bc, $0200
    ld d, $38
    ld e, $30
    ld hl, $63be
    call Call_000_26ea
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d4a4]
    and a
    ret z

    ld a, [$d632]
    and a
    jr z, jr_041_4d8e

    xor a
    ld [$d43f], a

jr_041_4d8e:
    ld b, $05
    ld hl, $d43d
    ld a, [hl]
    bit 7, a
    jr nz, jr_041_4dba

    ld de, $0840
    add a
    add $46
    ld c, a
    ld a, [$d43f]
    add e
    ld e, a
    push hl
    push de
    push af
    call Call_000_2798
    pop af
    pop de
    pop hl
    inc hl
    ld a, [hl]
    ld d, $10
    add a
    add $46
    ld c, a
    call Call_000_2798
    jr jr_041_4dcb

jr_041_4dba:
    ld de, $0c40
    ld a, [$d43f]
    add e
    ld e, a
    inc hl
    ld a, [hl]
    add a
    add $46
    ld c, a
    call Call_000_2798

jr_041_4dcb:
    ld c, $5a
    ld de, $1940
    ld a, [$d43f]
    add e
    ld e, a
    call Call_000_2798
    ld c, $5c
    ld de, $2140
    ld a, [$d43f]
    add e
    ld e, a
    call Call_000_2798
    ld a, [$c4b2]
    and $1f
    cp $0f
    jr nz, jr_041_4df5

    ld a, $fd
    ld [$d43f], a
    jr jr_041_4dfb

jr_041_4df5:
    ld hl, $d43f
    call Call_041_51de

jr_041_4dfb:
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d4a4]
    and a
    ret z

    ld a, [$d632]
    and a
    ret nz

    ld a, [$d548]
    and a
    ret nz

    ld hl, $d452
    ld a, [hl]
    inc a
    and $3f
    ld [hl], a
    sub $14
    ret c

    cp $05
    ret z

    cp $06
    ret z

    cp $07
    ret z

    cp $08
    ret z

    cp $09
    ret z

    ld hl, $d442
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld bc, $072c
    call Call_000_2798
    ld hl, $d444
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld bc, $072c
    call Call_000_2798
    ld hl, $d446
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld bc, $072e
    call Call_000_2798
    ld hl, $d448
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld bc, $072e
    call Call_000_2798
    ld hl, $d44a
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld bc, $072c
    call Call_000_2798
    ld hl, $d44c
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld bc, $072c
    call Call_000_2798
    ld hl, $d44e
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld bc, $072e
    call Call_000_2798
    ld hl, $d450
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld bc, $072e
    call Call_000_2798
    ret


Call_041_4e94:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d642
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d632]
    and a
    jr z, jr_041_4eb0

    ld d, h
    ld e, l
    ld hl, $d64a
    ld a, [hl]
    call Call_041_4d2a
    add hl, de

jr_041_4eb0:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $0060
    call Call_041_4f71
    ld hl, $d120
    ld de, $9920
    ld c, $04
    call Call_000_0468
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_041_4ece:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d640
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d632]
    and a
    jr z, jr_041_4eea

    ld d, h
    ld e, l
    ld hl, $d649
    ld a, [hl]
    call Call_041_4d2a
    add hl, de

jr_041_4eea:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $0000
    call Call_041_4f71
    ld hl, $d0c0
    ld de, $98c0
    ld c, $04
    call Call_000_0468
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_041_4f08:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d644
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d632]
    and a
    jr z, jr_041_4f24

    ld d, h
    ld e, l
    ld hl, $d64b
    ld a, [hl]
    call Call_041_4d2a
    add hl, de

jr_041_4f24:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $00e0
    call Call_041_4f71
    ld hl, $d1a2
    ld de, $99a2
    ld c, $08
    call Call_000_0468
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_041_4f42:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d646
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d632]
    and a
    jr z, jr_041_4f5e

    ld d, h
    ld e, l
    ld hl, $d64c
    ld a, [hl]
    call Call_041_4d2a
    add hl, de

jr_041_4f5e:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $0120
    call Call_041_4f71
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_041_4f71:
    call Call_041_506f
    ld c, $00
    ld a, l
    bit 7, a
    jp nz, Jump_041_5006

    cp $04
    jr z, jr_041_4f8f

    cp $03
    jr z, jr_041_4fa7

    cp $02
    jr z, jr_041_4fd8

    cp $01
    jr z, jr_041_4fee

    jp Jump_041_506e


jr_041_4f8f:
    ld c, $01
    ld b, $01
    ld hl, $d0cf
    add hl, de
    ld a, $0a
    call Call_041_48ed
    ld b, $01
    ld hl, $d0ef
    add hl, de
    ld a, $19
    call Call_041_48ed

jr_041_4fa7:
    dec c
    jr z, jr_041_4fc0

    ld b, $01
    ld hl, $d0cf
    add hl, de
    ld a, $09
    call Call_041_48ed
    ld b, $01
    ld hl, $d0ef
    add hl, de
    ld a, $18
    call Call_041_48ed

jr_041_4fc0:
    ld b, $01
    ld hl, $d0ce
    add hl, de
    ld a, $08
    call Call_041_48ed
    ld b, $01
    ld hl, $d0ee
    add hl, de
    ld a, $17
    call Call_041_48ed
    jr jr_041_4fee

jr_041_4fd8:
    ld b, $01
    ld hl, $d0ce
    add hl, de
    ld a, $07
    call Call_041_48ed
    ld b, $01
    ld hl, $d0ee
    add hl, de
    ld a, $16
    call Call_041_48ed

jr_041_4fee:
    ld b, $01
    ld hl, $d0cd
    add hl, de
    ld a, $06
    call Call_041_48ed
    ld b, $01
    ld hl, $d0ed
    add hl, de
    ld a, $15
    call Call_041_48ed
    jr jr_041_506e

Jump_041_5006:
    cp $fc
    jr z, jr_041_5014

    cp $fd
    jr z, jr_041_502a

    cp $fe
    jr z, jr_041_5042

    jr jr_041_5058

jr_041_5014:
    ld b, $01
    ld hl, $d0ca
    add hl, de
    ld a, $0e
    call Call_041_48ed
    ld b, $01
    ld hl, $d0ea
    add hl, de
    ld a, $1d
    call Call_041_48ed

jr_041_502a:
    ld b, $01
    ld hl, $d0cb
    add hl, de
    ld a, $0d
    call Call_041_48ed
    ld b, $01
    ld hl, $d0eb
    add hl, de
    ld a, $1c
    call Call_041_48ed
    jr jr_041_5058

jr_041_5042:
    ld b, $01
    ld hl, $d0cb
    add hl, de
    ld a, $0c
    call Call_041_48ed
    ld b, $01
    ld hl, $d0eb
    add hl, de
    ld a, $1b
    call Call_041_48ed

jr_041_5058:
    ld b, $01
    ld hl, $d0cc
    add hl, de
    ld a, $0b
    call Call_041_48ed
    ld b, $01
    ld hl, $d0ec
    add hl, de
    ld a, $1a
    call Call_041_48ed

Jump_041_506e:
jr_041_506e:
    ret


Call_041_506f:
    push hl
    ld b, $06
    ld hl, $d0ca
    add hl, de
    ld a, $00
    call Call_041_48ed
    ld b, $06
    ld hl, $d0ea
    add hl, de
    ld a, $0f
    call Call_041_48ed
    pop hl
    ret


    rst $18

    db $06, $42

    ret


Call_041_508c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d632]
    and a
    jr z, jr_041_50a6

    cp $02
    jr z, jr_041_50a6

    ld hl, $d630
    ld d, [hl]
    ld hl, $d648
    rst $18
    ld a, [de]
    ld [bc], a

jr_041_50a6:
    call Call_041_4e94
    call Call_041_4ece
    call Call_041_4f08
    call Call_041_4f42
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4a0
    ld a, [hl]
    cp $00
    ret z

    ld hl, $d4a1
    ld b, [hl]
    push hl
    push bc
    pop bc
    dec b
    jr nz, jr_041_50cf

    ld hl, $d4a0
    ld [hl], $00

jr_041_50cf:
    pop hl
    ld [hl], b
    ret


Call_041_50d2:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d632]
    dec a
    ret nz

    ld a, [$d430]
    ld hl, $6486
    add a
    add l
    ld l, a
    jr nc, jr_041_50e9

    inc h

jr_041_50e9:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d42e
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $d430
    ld a, [hl]
    inc a
    and $3f
    ld [hl], a
    ld hl, $d428
    ld a, $c7
    ld [hl+], a
    ld a, $02
    ld [hl], a
    ld hl, $d42a
    ld a, $ff
    ld [hl+], a
    ld a, $7f
    ld [hl], a
    ld hl, $d42c
    ld a, $3f
    ld [hl+], a
    ld a, $00
    ld [hl], a
    ld a, [$d630]
    cp $03
    jr z, jr_041_5126

    cp $02
    jr z, jr_041_514b

    cp $01
    jr z, jr_041_5168

    jr jr_041_518c

jr_041_5126:
    xor a
    ld hl, $d432
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $5d71
    ld de, $0301
    call Call_000_056c
    ld hl, $5d71
    ld de, $0401
    call Call_000_056c
    ld hl, $d428
    ld de, $0501
    call Call_000_056c
    jp Jump_041_51dd


jr_041_514b:
    ld hl, $5d71
    ld de, $0301
    call Call_000_056c
    ld hl, $5d71
    ld de, $0501
    call Call_000_056c
    ld hl, $d428
    ld de, $0401
    call Call_000_056c
    jr jr_041_51dd

jr_041_5168:
    xor a
    ld hl, $d432
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $5d71
    ld de, $0401
    call Call_000_056c
    ld hl, $5d71
    ld de, $0501
    call Call_000_056c
    ld hl, $d428
    ld de, $0301
    call Call_000_056c
    jr jr_041_51dd

jr_041_518c:
    ld hl, $5d71
    ld de, $0301
    call Call_000_056c
    ld hl, $5d71
    ld de, $0401
    call Call_000_056c
    ld hl, $5d71
    ld de, $0501
    call Call_000_056c
    ld a, [$c4b2]
    and $1f
    cp $0f
    jr z, jr_041_51ba

    cp $0a
    jr z, jr_041_51c1

    cp $05
    jr z, jr_041_51c8

    jr jr_041_51cf

jr_041_51ba:
    ld a, $fc
    ld [$d432], a
    jr jr_041_51dd

jr_041_51c1:
    ld a, $fc
    ld [$d433], a
    jr jr_041_51dd

jr_041_51c8:
    ld a, $fc
    ld [$d434], a
    jr jr_041_51dd

jr_041_51cf:
    ld hl, $d432
    call Call_041_51de
    inc hl
    call Call_041_51de
    inc hl
    call Call_041_51de

Jump_041_51dd:
jr_041_51dd:
    ret


Call_041_51de:
    ld a, [hl]
    and a
    ret z

    inc a
    ld [hl], a
    ret


Call_041_51e4:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d632]
    cp $04
    jr z, jr_041_5202

    cp $03
    jr z, jr_041_5255

    cp $02
    jp z, Jump_041_52a4

    cp $01
    jp z, Jump_041_5335

    jp Jump_041_5358


jr_041_5202:
    xor a
    ld [$d632], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld b, $c0
    ld hl, $d040
    ld de, $d400
    call Call_041_537b
    ld hl, $d240
    ld de, $d3c0
    ld b, $40
    call Call_041_537b
    ld hl, $d3c0
    ld de, $b800
    ld c, $10
    call Call_000_0468
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld b, $c0
    ld hl, $d040
    ld de, $d400
    call Call_041_537b
    ld hl, $d240
    ld de, $d3c0
    ld b, $40
    call Call_041_537b
    ld hl, $d3c0
    ld de, $9800
    ld c, $10
    call Call_000_0468
    ret


jr_041_5255:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld b, $c0
    ld hl, $d040
    ld de, $d400
    call Call_041_537b
    ld hl, $d280
    ld de, $d3c0
    ld b, $40
    call Call_041_537b
    ld hl, $d3c0
    ld de, $b800
    ld c, $10
    call Call_000_0468
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld b, $c0
    ld hl, $d040
    ld de, $d400
    call Call_041_537b
    ld hl, $d280
    ld de, $d3c0
    ld b, $40
    call Call_041_537b
    ld hl, $d3c0
    ld de, $9800
    ld c, $10
    call Call_000_0468
    ret


Jump_041_52a4:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld b, $0f
    ld hl, $d066
    ld de, $d326
    call Call_041_537b
    ld b, $0f
    ld hl, $d086
    ld de, $d346
    call Call_041_537b
    ld b, $0f
    ld hl, $d0a6
    ld de, $d366
    call Call_041_537b
    ld b, $0f
    ld hl, $d0c6
    ld de, $d386
    call Call_041_537b
    ld b, $0f
    ld hl, $d0e6
    ld de, $d3a6
    call Call_041_537b
    ld hl, $d2c0
    ld de, $9800
    ld c, $10
    call Call_000_0468
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld b, $0f
    ld hl, $d066
    ld de, $d326
    call Call_041_537b
    ld b, $0f
    ld hl, $d086
    ld de, $d346
    call Call_041_537b
    ld b, $0f
    ld hl, $d0a6
    ld de, $d366
    call Call_041_537b
    ld b, $0f
    ld hl, $d0c6
    ld de, $d386
    call Call_041_537b
    ld b, $0f
    ld hl, $d0e6
    ld de, $d3a6
    call Call_041_537b
    ld hl, $d2c0
    ld de, $b800
    ld c, $10
    call Call_000_0468
    ret


Jump_041_5335:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld c, $04
    call Call_000_0468
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $9800
    ld c, $04
    call Call_000_0468
    ret


Jump_041_5358:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d240
    ld de, $b800
    ld c, $04
    call Call_000_0468
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d240
    ld de, $9800
    ld c, $04
    call Call_000_0468
    ret


Call_041_537b:
jr_041_537b:
    ld a, [hl]
    ld [de], a
    inc hl
    inc de
    dec b
    jr nz, jr_041_537b

    ret


Call_041_5383:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5d71
    ld a, [$d630]
    cp $01
    jr z, jr_041_53a3

    cp $02
    jr z, jr_041_53aa

    cp $03
    jr z, jr_041_53b1

    xor a
    ld hl, $d432
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


jr_041_53a3:
    ld de, $0301
    call Call_000_056c
    ret


jr_041_53aa:
    ld de, $0401
    call Call_000_056c
    ret


jr_041_53b1:
    ld de, $0501
    call Call_000_056c
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d632]
    and a
    ret z

    ld b, $00
    ld a, [$d630]
    and a
    jr nz, jr_041_53d4

    ld a, [$d631]
    sub $10
    jr c, jr_041_53ec

    ld b, $01

jr_041_53d4:
    ld hl, $d453
    ld a, [hl]
    push af
    push hl
    add b
    ld [hl], a
    ld bc, $d457
    call Call_041_546a
    ld d, $8c
    ld e, $1c
    call Call_041_5497
    pop hl
    pop af
    ld [hl], a

jr_041_53ec:
    ld b, $00
    ld a, [$d630]
    dec a
    jr nz, jr_041_53fd

    ld a, [$d631]
    sub $10
    jr c, jr_041_5415

    ld b, $01

jr_041_53fd:
    ld hl, $d454
    ld a, [hl]
    push af
    push hl
    add b
    ld [hl], a
    ld bc, $d459
    call Call_041_546a
    ld d, $8c
    ld e, $2e
    call Call_041_5497
    pop hl
    pop af
    ld [hl], a

jr_041_5415:
    ld b, $00
    ld a, [$d630]
    cp $02
    jr nz, jr_041_5427

    ld a, [$d631]
    sub $10
    jr c, jr_041_543f

    ld b, $01

jr_041_5427:
    ld hl, $d455
    ld a, [hl]
    push af
    push hl
    add b
    ld [hl], a
    ld bc, $d45b
    call Call_041_546a
    ld d, $8c
    ld e, $46
    call Call_041_5497
    pop hl
    pop af
    ld [hl], a

jr_041_543f:
    ld b, $00
    ld a, [$d630]
    cp $03
    jr nz, jr_041_5451

    ld a, [$d631]
    sub $10
    jr c, jr_041_5469

    ld b, $01

jr_041_5451:
    ld hl, $d456
    ld a, [hl]
    push af
    push hl
    add b
    ld [hl], a
    ld bc, $d45d
    call Call_041_546a
    ld d, $8c
    ld e, $60
    call Call_041_5497
    pop hl
    pop af
    ld [hl], a

jr_041_5469:
    ret


Call_041_546a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    ld h, $00
    ld l, a
    ld a, $02
    ld de, $d64e
    call Call_000_21f0
    ld hl, $d64e
    ld d, h
    ld e, l
    ld a, [hl]
    ld h, b
    ld l, c
    sub $20
    jr nz, jr_041_548c

    ld [hl], $ff
    jr jr_041_5490

jr_041_548c:
    ld a, [de]
    sub $30
    ld [hl], a

jr_041_5490:
    inc de
    inc hl
    ld a, [de]
    sub $30
    ld [hl], a
    ret


Call_041_5497:
    ld h, b
    ld l, c
    ld b, $05
    ld a, [hl]
    bit 7, a
    jr nz, jr_041_54bc

    add a
    add $46
    ld c, a
    push hl
    push de
    push af
    call Call_000_2798
    pop af
    pop de
    pop hl
    inc hl
    ld a, $08
    add d
    ld d, a
    ld a, [hl]
    add a
    add $46
    ld c, a
    call Call_000_2798
    jr jr_041_54c9

jr_041_54bc:
    ld a, $08
    add d
    ld d, a
    inc hl
    ld a, [hl]
    add a
    add $46
    ld c, a
    call Call_000_2798

jr_041_54c9:
    ret


Jump_041_54ca:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d630], a
    ld [$d40a], a
    ld a, $04
    ld [$d632], a
    ld a, $03
    ld hl, $4dfc
    call Call_000_23e8
    ld a, $01
    ld hl, $4d79
    call Call_000_23e8
    ld a, $01
    ld hl, $53b8
    call Call_000_23e8
    ld a, $02
    ld hl, $4d2f
    call Call_000_23e8
    ld hl, $4328
    call Call_000_2449
    call Call_041_4970
    xor a
    call Call_041_49ed
    jp Jump_041_40da


Call_041_550c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d4d1]
    and a
    jr nz, jr_041_551b

    rst $08
    ld e, l
    ret


jr_041_551b:
    rst $08
    ld e, e
    ld hl, $d43c
    inc [hl]
    ld hl, $c800
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec [hl]
    ld a, [$d4d1]
    dec a
    ld hl, $d4d1
    dec [hl]
    ld hl, $d4d2
    add l
    ld l, a
    jr nc, jr_041_553d

    inc h

jr_041_553d:
    ld a, [hl]
    cp $03
    jr z, jr_041_5580

    cp $02
    jr z, jr_041_556e

    cp $01
    jr z, jr_041_555c

    ld hl, $c800
    ld a, l
    add $20
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec [hl]
    ld hl, $d453
    dec [hl]
    jr jr_041_5590

jr_041_555c:
    ld hl, $c800
    ld a, l
    add $21
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec [hl]
    ld hl, $d454
    dec [hl]
    jr jr_041_5590

jr_041_556e:
    ld hl, $c800
    ld a, l
    add $22
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec [hl]
    ld hl, $d455
    dec [hl]
    jr jr_041_5590

jr_041_5580:
    ld hl, $c800
    ld a, l
    add $24
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec [hl]
    ld hl, $d456
    dec [hl]

jr_041_5590:
    rst $18
    inc e
    ld [bc], a
    xor a
    call Call_041_49ed
    ret


Call_041_5598:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c800
    push hl
    ld de, $d021
    call Call_041_5765
    pop hl
    ld de, $c600
    ld c, $0a

jr_041_55ae:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    and c
    jr z, jr_041_55c9

    ld a, [hl+]
    and a
    jr z, jr_041_55c9

    ld b, a
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [de], a
    inc de
    dec c
    jr jr_041_55ae

jr_041_55c9:
    xor a
    ld [de], a
    ld hl, $5a08
    ld de, $0701
    call Call_000_0595
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $63cb
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b710
    ld c, $06
    call Call_000_04db
    ld hl, $6428
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b770
    ld c, $04
    call Call_000_04db
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d028
    ld d, $0f
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d048
    ld bc, $0004
    call Call_041_48e5
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d028
    ld a, $71
    ld b, $06
    call Call_041_48ed
    ld hl, $d048
    ld a, $77
    ld b, $04
    call Call_041_48ed
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c800
    ld a, l
    add $26
    ld l, a
    ld a, h
    adc $00
    ld h, a
    call Call_041_57a9
    ld hl, $d64f
    ld de, $d02e
    call Call_041_5765
    ld hl, $d64f
    ld de, $d02e
    call Call_041_5867
    xor a
    ld [$d553], a
    ld a, $01
    ld hl, $587c
    call Call_000_23e8
    ret


Call_041_5669:
    ld bc, $0800
    ld hl, $d000
    ld a, $00
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a

jr_041_5677:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_041_5677

    ld bc, $0800
    ld hl, $d000
    ld a, $00
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a

jr_041_568c:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_041_568c

    ret


    ld a, [$d4a4]
    and a
    ret nz

    ld hl, $d4a5
    ld a, [hl]
    dec a
    ld [hl], a
    ret nz

    ld b, $14
    ld hl, $d0e0
    ld de, $d4e0
    call Call_041_5726
    ld a, [$d4a6]
    ld c, a
    bit 7, a
    jr nz, jr_041_56ce

    ld a, [$d4a7]
    ld b, a
    ld a, $f4
    add b
    bit 7, a
    jr nz, jr_041_56c0

    ld b, $0c

jr_041_56c0:
    ld hl, $d460
    ld de, $d4e1
    ld a, c
    add e
    ld e, a
    call Call_041_5726
    jr jr_041_56e5

jr_041_56ce:
    cpl
    inc a
    ld c, a
    ld b, a
    ld a, $0c
    sub b
    ld b, a
    and a
    jr z, jr_041_56fc

    ld hl, $d461
    ld a, c
    add l
    ld l, a
    ld de, $d4e0
    call Call_041_5726

jr_041_56e5:
    ld hl, $d4a6
    dec [hl]
    ld hl, $d4a7
    inc [hl]
    ld a, [hl]
    ld de, $6463
    add e
    ld e, a
    jr nc, jr_041_56f6

    inc d

jr_041_56f6:
    ld a, [de]
    ld [$d4a5], a
    jr jr_041_5703

jr_041_56fc:
    ld a, $01
    ld [$d4a4], a
    jr jr_041_5703

jr_041_5703:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4e0
    ld de, $98e0
    ld c, $08
    call Call_000_0468
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4e0
    ld de, $b8e0
    ld c, $08
    call Call_000_0468
    ret


Call_041_5726:
    ld a, b
    and a
    ret z

    ld c, $04

jr_041_572b:
    push bc
    push de
    push hl
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a

jr_041_5734:
    ld a, [hl]
    ld [de], a
    inc hl
    inc de
    dec b
    jr nz, jr_041_5734

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    push bc
    push hl
    push de

jr_041_5747:
    ld a, [hl]
    ld [de], a
    inc hl
    inc de
    dec b
    jr nz, jr_041_5747

    pop de
    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld bc, $0020
    add hl, bc
    pop bc
    dec c
    jr nz, jr_041_572b

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_041_5765:
jr_041_5765:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    and a
    ret z

    cp $de
    jr z, jr_041_5783

    cp $df
    jr z, jr_041_5796

    ld b, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [de], a
    inc hl
    inc de
    jr jr_041_5765

jr_041_5783:
    push de
    push hl
    ld hl, $ffdf
    add hl, de
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], $0e
    pop hl
    pop de
    inc hl
    jr jr_041_5765

jr_041_5796:
    push de
    push hl
    ld hl, $ffdf
    add hl, de
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], $0f
    pop hl
    pop de
    inc hl
    jr jr_041_5765

Call_041_57a9:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc hl
    ld a, [hl]
    ld [$d64e], a
    ld h, b
    ld l, c
    ld de, $d64f
    ld a, $05
    call Call_000_2326
    ld hl, $d64e
    ld a, [hl]
    and a
    ret z

    ld c, a

Jump_041_57c8:
    xor a
    ld hl, $d657
    ld [hl], a
    ld de, $d653
    ld a, [de]
    sub $20
    jr z, jr_041_57d7

    sub $10

jr_041_57d7:
    add $06
    cp $0a
    jr c, jr_041_57e4

    sub $0a
    ld b, a
    ld a, $01
    ld [hl], a
    ld a, b

jr_041_57e4:
    add $30
    ld [de], a
    ld de, $d652
    ld a, [de]
    add [hl]
    ld b, a
    xor a
    ld [hl], a
    ld a, b
    sub $20
    jr z, jr_041_57f6

    sub $10

jr_041_57f6:
    add $03
    cp $0a
    jr c, jr_041_5803

    sub $0a
    ld b, a
    ld a, $01
    ld [hl], a
    ld a, b

jr_041_5803:
    add $30
    ld [de], a
    ld de, $d651
    ld a, [de]
    add [hl]
    ld b, a
    xor a
    ld [hl], a
    ld a, b
    sub $20
    jr z, jr_041_5815

    sub $10

jr_041_5815:
    add $05
    cp $0a
    jr c, jr_041_5822

    sub $0a
    ld b, a
    ld a, $01
    ld [hl], a
    ld a, b

jr_041_5822:
    add $30
    ld [de], a
    ld de, $d650
    ld a, [de]
    add [hl]
    ld b, a
    xor a
    ld [hl], a
    ld a, b
    sub $20
    jr z, jr_041_5834

    sub $10

jr_041_5834:
    add $05
    cp $0a
    jr c, jr_041_5841

    sub $0a
    ld b, a
    ld a, $01
    ld [hl], a
    ld a, b

jr_041_5841:
    add $30
    ld [de], a
    ld de, $d64f
    ld a, [de]
    add [hl]
    ld b, a
    xor a
    ld [hl], a
    ld a, b
    sub $20
    jr z, jr_041_5853

    sub $10

jr_041_5853:
    add $05
    ld hl, $d64e
    add [hl]
    cp $0a
    jr c, jr_041_585f

    ld a, $09

jr_041_585f:
    add $30
    ld [de], a
    dec c
    jp nz, Jump_041_57c8

    ret


Call_041_5867:
jr_041_5867:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    and a
    ret z

    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $06
    ld [de], a
    inc de
    jr jr_041_5867

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d4d0]
    push af
    ld h, $00
    and a
    jr nz, jr_041_5890

    ld a, [$c0f3]
    jr jr_041_5893

jr_041_5890:
    ld a, [$c831]

jr_041_5893:
    ld l, a
    ld a, $02
    ld de, $d554
    call Call_000_21f0
    ld hl, $d554
    ld de, $d04e
    call Call_041_5765
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld h, $00
    pop af
    and a
    jr nz, jr_041_58b6

    ld a, [$c0f2]
    jr jr_041_58b9

jr_041_58b6:
    ld a, [$c830]

jr_041_58b9:
    ld l, a
    ld a, $02
    ld de, $d554
    call Call_000_21f0
    ld hl, $d554
    ld a, [hl]
    sub $20
    jr nz, jr_041_58cd

    ld a, $30
    ld [hl], a

jr_041_58cd:
    ld de, $d051
    call Call_041_5765
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $20
    ld [$d050], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d553
    ld a, [hl]
    sub $1e
    jr c, jr_041_58f7

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $3a
    ld [$d050], a

jr_041_58f7:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    sub $3c
    jr nz, jr_041_5905

    ld a, $ff
    ld [hl], a

jr_041_5905:
    inc [hl]
    ld hl, $d554
    ld a, [hl]
    sub $20
    jr z, jr_041_5919

    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $06
    ld [$d04e], a

jr_041_5919:
    ld hl, $d04f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d040
    ld de, $9840
    ld c, $02
    call Call_000_0468
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d040
    ld de, $b840
    ld c, $02
    call Call_000_0468
    ret


    db $e6, $02, $60, $01, $9f, $03, $d9, $00

    nop
    nop
    nop
    nop
    nop

    db $ff, $00, $70, $30, $78, $28, $7c, $24, $7e, $ff, $2c, $7a, $38, $74, $30, $48
    db $00, $70, $fd, $00, $ff, $f0, $04, $7c, $03, $fe, $33, $fe, $fb, $33, $ee, $fe
    db $e7, $03, $fe, $87, $fe, $7f, $fb, $7c, $3e, $e0, $e5, $1c, $06, $3c, $06, $3c
    db $ef, $26, $3c, $06, $1c, $fe, $e9, $1e, $1c, $0e, $fa, $c0, $e6, $02, $c0, $e0
    db $f3, $ee, $73, $0e, $07, $ff, $1c, $0e, $38, $1c, $70, $18, $70, $02, $bf, $fe
    db $03, $fe, $ff, $fe, $7f, $e0, $ec, $63, $ff, $1e, $07, $3e, $13, $1e, $03, $0e
    db $23, $9e, $a0, $f1, $7c, $06, $fc, $26, $fe, $e0, $c6, $e1, $e7, $73, $fe, $67
    db $a0, $ea, $b2, $e1, $3f, $fe, $07, $e4, $e0, $cf, $f3, $fe, $33, $0e, $c0, $f0
    db $c4, $e0, $3e, $fc, $87, $3e, $e0, $04, $c2, $e0, $38, $e3, $40, $eb, $72, $e1
    db $33, $ff, $fe, $e3, $fe, $47, $3e, $0f, $3c, $0e, $3b, $38, $0c, $fe, $e4, $3c
    db $38, $1c, $40, $ea, $0a, $e1, $f3, $07, $7c, $c0, $f1, $e0, $e7, $83, $fe, $73
    db $7e, $01, $33, $40, $ea, $00, $00

    nop

    db $e6, $02, $ff, $03, $80, $01, $ff, $7f, $bf, $7c, $7c, $c6, $fe, $c6, $e7, $fe
    db $e3, $7c, $ef, $7e, $00, $3c, $00, $ff, $ec, $18, $18, $38, $b7, $3c, $18, $1c
    db $fe, $e5, $00, $0c, $e0, $ed, $7c, $ff, $7c, $ce, $fe, $0c, $6f, $38, $3e, $60
    db $7f, $7c, $c0, $f0, $fe, $fe, $00, $7f, $e0, $ef, $ff, $c6, $fe, $06, $67, $1c
    db $1f, $06, $0e, $bf, $c6, $c7, $7c, $7f, $00, $3e, $a0, $ed, $1c, $ff, $1c, $3c
    db $3e, $6c, $7e, $cc, $fe, $fe, $7f, $fe, $0c, $7f, $0c, $0e, $00, $06, $80, $ed
    db $ff, $fe, $fe, $c0, $ff, $fc, $fc, $06, $7e, $fb, $06, $06, $c0, $f3, $7c, $7c
    db $c0, $fe, $c0, $e7, $e0, $fc, $fc, $3a, $e1, $a0, $f1, $fe, $fe, $c6, $ff, $ff
    db $0c, $6f, $18, $1e, $30, $3c, $30, $1f, $38, $30, $38, $00, $18, $60, $f1, $c6
    db $e1, $c0, $f5, $1e, $e0, $c3, $7e, $7f, $06, $3f, $40, $f3, $00, $00

    nop

    db $ef, $c6, $00, $c6, $21, $fe, $e5, $7c, $03, $00, $7b, $3e, $00, $ff, $ec, $fc
    db $00, $c6, $38, $de, $e1, $ff, $fc, $03, $c0, $3e, $c0, $20, $00, $60, $00, $e0
    db $ed, $00, $00

    nop

    db $fd, $00, $ff, $e4, $04, $04, $0c, $08, $1c, $14, $ff, $14, $08, $28, $10, $38
    db $28, $30, $10, $73, $20, $20, $e8, $e5, $e0, $e5, $20, $20, $30, $e6, $e0, $f7
    db $28, $10, $14, $da, $e0, $0c, $08, $04, $04, $00, $e0, $e5, $00, $00

    nop

    db $6d, $00, $1f, $12, $d6, $00, $ff, $27

    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    cp $ff
    ld a, [$00f9]
    nop
    nop

    db $1f, $1b, $c0, $47, $fa, $43, $20, $36

    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc a
    inc a
    dec h
    dec a
    ld h, l
    ld a, l
    rst $38
    ld c, a
    ld a, a
    ld c, e
    ld a, d
    db $db
    ld a, [$f2d3]
    db $fd
    sub e
    cp $e0
    sbc e
    ld_long a, $ff8f
    jp $dfff


    ld h, d
    ld a, [hl]
    ld a, $3e
    nop
    rst $38
    ldh [rIE], a
    rst $38
    cp a
    di
    sbc a
    di
    rra
    di
    ld a, a
    cp $e0
    rra
    db $fd
    ldh a, [$fe]
    pop hl
    ld a, a
    ld hl, sp+$3f
    db $fc
    rrca
    db $fd
    rst $30
    adc a
    rst $30
    rst $30
    ld [c], a
    pop hl
    nop
    nop
    rst $28
    rst $28
    rst $38
    cpl
    add sp, $3f
    ld hl, sp+$3f
    di
    ccf
    rst $20
    cp $fe
    ldh [$e0], a
    ccf
    ldh [$7f], a
    rst $20
    ld a, a
    di
    rst $38
    rst $18
    ret c

    adc a
    adc b
    rrca
    inc c
    rlca
    rlca
    cp $c0
    pop hl
    cp b
    cp b
    add sp, -$08
    ret z

    ld hl, sp-$68
    rst $30
    ld hl, sp-$70
    ldh a, [$fe]
    push hl
    sbc h
    db $fc
    add [hl]
    cp $bf
    add d
    cp $c6
    cp $fc
    db $fc
    and b
    pop hl
    ld a, e
    ld a, a
    ld a, e
    ld a, e
    ld c, d
    ld a, a
    ld c, [hl]
    ld a, a

jr_041_5bb5:
    ld c, h
    cp $e8
    rst $10
    ld c, c
    ld a, a
    ld b, c
    cp $e0
    ld h, e
    add b
    db $e3
    db $fc
    db $fc
    ld a, a
    add $fe
    jp $81ff


    rst $38
    sbc c
    cp $e0
    rst $38
    add c
    rst $38
    add e
    rst $38
    add d
    cp $9e
    cp $3f
    sub b

jr_041_5bd8:
    ldh a, [$d0]
    ldh a, [rSVBK]
    ld [hl], b
    add b
    pop hl
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
    jr jr_041_5bf1

    nop
    db $10
    jr nz, jr_041_5bf7

jr_041_5bf1:
    nop
    db $10
    jr z, jr_041_5bfd

    nop
    db $10

jr_041_5bf7:
    jr nc, jr_041_5c03

    nop
    add b
    nop
    nop

jr_041_5bfd:
    nop
    nop

jr_041_5bff:
    nop
    rst $38
    ld b, l
    add e

jr_041_5c03:
    adc d
    rlca
    dec d
    ld c, $2a
    inc e
    rst $38
    ld d, h
    jr c, jr_041_5bb5

    ld [hl], b
    ld d, c
    ldh [$a2], a
    pop bc
    ld bc, $ff00
    db $fc
    call nc, $c4e9
    pop hl
    ret nc

    db $fd
    nop
    nop
    nop
    rst $38
    ld d, c
    ldh [$a2], a
    pop bc
    ld b, l
    add e
    adc d
    rlca
    rst $38
    dec d
    ld c, $2a
    inc e
    ld d, h
    jr c, jr_041_5bd8

    ld [hl], b
    pop hl
    nop
    rst $38
    db $fc
    call nc, $c4e9
    pop hl
    ret nc

    di
    ld b, $06
    ccf
    ld a, a
    ccf
    ld l, a
    ld a, a
    ld c, a
    ld a, a
    inc c
    ccf
    call nc, Call_000_04e9
    sbc b
    pop hl
    and b
    ld hl, sp-$80
    cp $e1
    nop
    nop
    nop
    rst $38
    ld d, h
    jr c, jr_041_5bff

    ld [hl], b
    ld d, c
    ldh [$a2], a
    pop bc
    rst $38
    ld b, l
    add e
    adc d
    rlca
    dec d
    ld c, $2a
    inc e
    ld bc, $ff00
    db $fc
    call nc, $c4e9
    pop hl
    ret nc

    db $fd
    rst $38
    rst $38
    rst $38
    db $eb
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    nop
    nop
    nop
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
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
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
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

    db $ff, $7f, $ff, $6b, $58, $1e, $00, $00, $00, $00, $e6, $02, $00, $01, $ff, $03

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $ff, $45, $83, $8a, $07, $15, $0e, $2a, $1c, $ff, $54, $38, $a8, $70, $51, $e0
    db $a2, $c1, $00, $00, $00, $ff, $00, $00, $3f, $10, $60, $00, $40, $0f, $ef, $47
    db $18, $4f, $10, $fe, $e1, $00, $00, $f8, $ff, $00, $0c, $00, $04, $f0, $e4, $10
    db $f4, $f9, $00, $fe, $e1, $ea, $e3, $47, $18, $60, $00, $3f, $39, $00, $ff, $e1
    db $ea, $e3, $e4, $10, $0c, $d8, $e0, $ff, $e3, $05, $ff, $fb, $e2, $ff, $f8, $e0
    db $fc, $e9, $e8, $e4, $c0, $e4, $fa, $e7, $f8, $aa, $e3, $fa, $e7, $c0, $e8, $0a
    db $fa, $0f, $fa, $05, $fe, $b0, $e6, $04, $ff, $0a, $fe, $05, $fd, $02, $00, $00
    db $00, $e6, $02, $ff, $7f, $3f, $00, $60, $01

    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $fd, $00, $ff, $e2, $18, $18, $3d, $25, $7d, $45, $ef, $7d, $45, $fd, $85, $f0
    db $e3, $c6, $c6, $ef, $fd, $29, $fe, $e3, $00, $00, $01, $01, $02, $03, $ef, $32
    db $33, $7a, $4b, $fe, $e3, $00, $00, $80, $7f, $80, $40, $c0, $4c, $cc, $5e, $d2
    db $fe, $e3, $9e, $c0, $e3, $63, $63, $f7, $94, $fe, $e3, $b0, $e5, $bc, $7f, $a4
    db $be, $a2, $be, $a2, $bf, $a1, $d0, $e1, $cf, $4c, $cc, $52, $de, $fe, $e5, $90
    db $e1, $60, $60, $0f, $93, $f3, $97, $f4, $fe, $e3, $c2, $e3, $c3, $e4, $bb, $e0
    db $66, $70, $e3, $98, $98, $c0, $e7, $62, $e1, $a4, $bc, $b3, $e0, $df, $be, $a1
    db $bf, $a1, $bf, $70, $e1, $32, $33, $f3, $4a, $7b, $fe, $e5, $40, $e1, $06, $06
    db $c9, $cf, $83, $e9, $2f, $fe, $e3, $42, $e3, $43, $e4, $3b, $e0, $22, $e3, $25
    db $fd, $3d, $23, $e0, $7d, $85, $fd, $85, $fd, $fd, $3d, $85, $18, $e1, $3d, $25
    db $18, $18, $06, $e3, $18, $e5, $f3, $c6, $c6, $f6, $c3, $18, $e5, $32, $33, $02
    db $03, $ef, $01, $01, $00, $00, $18, $e5, $4c, $cc, $40, $df, $c0, $80, $80, $00
    db $00, $18, $e5, $63, $63, $36, $c6, $c3, $bf, $a1, $18, $e1, $bc, $a4, $b0, $e5
    db $16, $e7, $f3, $4c, $cc, $d0, $e1, $18, $e5, $93, $f3, $60, $60, $30, $94, $c1
    db $16, $e7, $be, $e3, $c0, $e5, $98, $98, $76, $c3, $1c, $e1, $66, $14, $e1, $a4
    db $bc, $5e, $e3, $16, $e7, $32, $33, $70, $e1, $1e, $18, $e5, $c9, $cf, $06, $06
    db $44, $c1, $16, $e7, $3e, $e3, $0c, $1c, $e1, $14, $e1, $25, $3d, $1e, $e3, $00
    db $00

    nop

    db $6d, $00, $1f, $12, $d6, $00, $ff, $27, $e6, $02, $1f, $12, $d6, $00, $ff, $27

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $ff, $00, $00, $07, $07, $1f, $18, $3f, $20, $ff, $38, $27, $77, $48, $7c, $43
    db $63, $5c, $ff, $ff, $ff, $ff, $00, $c7, $38, $f9, $06, $ff, $0e, $f1, $f6, $09
    db $19, $e6, $e7, $18, $fe, $f0, $e1, $66, $99, $b9, $46, $cf, $30, $f7, $df, $08
    db $38, $c7, $cf, $30, $e0, $e1, $cf, $30, $ff, $70, $8f, $9f, $60, $ec, $13, $73
    db $8c, $fb, $9f, $60, $d0, $e1, $9e, $61, $63, $9c, $fc, $7f, $03, $07, $f8, $f8
    db $07, $1f, $e0, $c0, $e1, $ff, $ed, $12, $9b, $64, $76, $89, $ed, $12, $ef, $33
    db $cc, $ee, $11, $b0, $e1, $f8, $07, $37, $7f, $c8, $d8, $27, $8f, $70, $f0, $0f
    db $e0, $e3, $ff, $e3, $1c, $1f, $e0, $f0, $0f, $8f, $70, $ef, $78, $87, $c7, $38
    db $90, $e1, $8e, $71, $f3, $7f, $0c, $1d, $e2, $ed, $12, $32, $cd, $a0, $ff, $ff
    db $fe, $ff, $fc, $02, $ec, $12, $98, $66, $ff, $74, $8a, $ec, $12, $30, $ce, $ec
    db $12, $ff, $f0, $80, $e7, $96, $d7, $a6, $f7, $86, $fb, $c7, $b6, $fc, $e1, $87
    db $76, $60, $18, $7b, $f7, $03, $03, $7b, $fc, $e5, $03, $7b, $00, $00, $fb, $fd
    db $f9, $fe, $e0, $81, $8d, $01, $81, $01, $ff, $e1, $c0, $e0, $8c, $24, $18, $b9
    db $04, $ff, $81, $3d, $99, $01, $c3, $99, $cb, $93, $ff, $e7, $c3, $e7, $c6, $00
    db $00, $ef, $cf, $ff, $ef, $cf, $cf, $8c, $dc, $88, $9c, $18, $ff, $9f, $1e, $1f
    db $1c, $01, $00, $ec, $c9, $ff, $ed, $c8, $ec, $49, $6d, $08, $0d, $08, $ff, $1c
    db $19, $1c, $59, $e4, $18, $79, $85, $ff, $8d, $71, $f1, $0d, $1d, $e1, $e5, $19
    db $ff, $39, $c5, $01, $fd, $1c, $03, $c3, $9c, $ff, $de, $81, $c1, $9e, $df, $80
    db $c0, $9f, $ff, $cf, $80, $e0, $cf, $00, $82, $ba, $30, $ff, $3a, $b0, $b8, $32
    db $3a, $b0, $38, $b2, $ff, $3a, $30, $78, $22, $00, $01, $fc, $78, $ff, $ff, $fe
    db $ff, $ff, $ef, $c7, $e3, $c3, $ff, $e3, $c3, $e7, $c3, $f0, $0e, $08, $74, $ff
    db $19, $20, $83, $19, $d3, $83, $c7, $93, $ff, $c7, $97, $c7, $06, $00, $0e, $e4
    db $42, $ff, $f4, $e2, $f0, $e6, $e4, $c2, $c0, $8e, $ff, $8c, $12, $00, $00, $f7
    db $c6, $d7, $a6, $fe, $3e, $e0, $a7, $e7, $97, $d7, $a0, $f0, $80, $ff, $c0, $b8
    db $7b, $03, $3b, $43, $01, $01, $f6, $4c, $e1, $fc, $00, $ff, $e0, $02, $8c, $02
    db $80, $ff, $1e, $c2, $81, $fb, $f0, $f8, $f3, $fb, $ff, $00, $00, $03, $03, $04
    db $ff, $7e, $7e, $ff, $7c, $7e, $3c, $3c, $38, $3c, $99, $99, $ff, $00, $01, $c2
    db $c2, $25, $1c, $58, $1c, $ff, $18, $3e, $9c, $3f, $bf, $9f, $0f, $87, $ff, $40
    db $c0, $20, $10, $e8, $5d, $18, $1c, $9f, $d9, $1c, $18, $df, $9f, $fe, $e0, $c0
    db $e1, $20, $ff, $fd, $00, $78, $84, $04, $02, $f2, $e4, $ff, $f4, $e3, $f5, $02
    db $02, $05, $07, $08, $ff, $e6, $c8, $e0, $c4, $f1, $60, $7f, $7f, $ff, $7f, $3f
    db $3f, $00, $00, $80, $80, $40, $ff, $72, $60, $f0, $66, $f0, $c4, $e1, $84, $ff
    db $c5, $09, $85, $18, $18, $24, $1c, $62, $ff, $ff, $fc, $fc, $e0, $e0, $c0, $e1
    db $c2, $ff, $e7, $c8, $cd, $02, $02, $1d, $0f, $30, $ff, $0e, $04, $0c, $08, $0c
    db $81, $30, $81, $ff, $b9, $32, $b8, $13, $03, $80, $82, $45, $ff, $7c, $02, $74
    db $8a, $c8, $36, $34, $ca, $ff, $cc, $32, $70, $8e, $8c, $72, $f0, $0e, $ff, $f4
    db $8b, $eb, $94, $d6, $a9, $fd, $82, $ff, $c2, $bd, $ff, $80, $c0, $bf, $80, $40
    db $ff, $64, $9b, $fb, $04, $07, $f8, $fc, $03, $ff, $03, $fc, $fe, $01, $00, $ff
    db $00, $00, $ff, $f3, $0c, $8c, $73, $7f, $80, $c0, $3f, $ef, $3f, $c0, $e1, $1e
    db $f0, $e1, $99, $66, $76, $ed, $89, $f6, $a3, $f1, $0e, $e0, $e1, $e6, $19, $79
    db $ed, $86, $e6, $a3, $e7, $18, $d0, $e1, $3c, $c3, $c3, $ff, $3c, $3e, $c1, $c1
    db $3e, $bf, $40, $60, $fd, $9f, $f0, $e3, $e7, $18, $1e, $e1, $f1, $0e, $cf, $0e
    db $f1, $f9, $06, $b0, $e1, $a0, $fd, $98, $67, $3f, $77, $88, $8e, $71, $f1, $0e
    db $cc, $e1, $80, $e1, $ff, $65, $9a, $fb, $04, $06, $f9, $fd, $02, $f3, $02, $fd
    db $73, $e0, $70, $e0, $0c, $f2, $fc, $02, $fb, $10, $ee, $c4, $a1, $cc, $32, $00
    db $fe, $00, $01, $00, $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $fb, $ff, $00, $fe, $e5, $fb, $7c, $c3, $7d, $de, $fd, $63, $f0, $e7, $ff, $00
    db $be, $cf, $59, $ef, $fe, $f0, $e9, $fb, $3c, $63, $bc, $f7, $7b, $c6, $bf, $7b
    db $de, $63, $de, $63, $9c, $d6, $e4, $db, $ff, $ed, $5b, $ed, $db, $6d, $de, $6f
    db $90, $fd, $6f, $b6, $e3, $7b, $bc, $63, $bc, $6f, $b0, $0f, $7b, $bc, $c3, $3c
    db $a6, $e3, $00, $00

    nop

    db $fb, $ff, $00, $fe, $e5, $fb, $7c, $cd, $7f, $d5, $fd, $6f, $f0, $e7, $ff, $00
    db $de, $e7, $29, $ff, $7e, $f0, $e9, $dd, $66, $5d, $e6, $dd, $67, $fe, $e0, $df
    db $6f, $f9, $7f, $82, $7d, $c6, $e3, $6f, $bf, $ff, $c9, $ff, $2b, $fd, $6b, $bd
    db $42, $bd, $fe, $b6, $e3, $55, $fe, $7d, $fe, $6d, $fe, $45, $07, $fe, $19, $e6
    db $a6, $e3, $00, $00

    nop

    db $fb, $ff, $00, $fe, $e5, $bb, $cc, $da, $ff, $da, $fd, $ff, $f0, $e7, $ff, $00
    db $ef, $f0, $97, $f8, $fe, $e0, $e7, $b7, $d8, $b6, $db, $b6, $db, $aa, $ff, $ff
    db $8a, $ff, $ba, $cf, $ba, $cf, $30, $fd, $cf, $ea, $e6, $df, $b0, $df, $e7, $f8
    db $0f, $bd, $f0, $b6, $e3, $f6, $fb, $96, $fb, $d8, $e1, $24, $01, $db, $a6, $e3
    db $00, $00

    nop

    db $fb, $ff, $00, $fe, $e5, $ee, $33, $ee, $33, $ea, $fd, $3f, $f0, $e7, $ff, $00
    db $de, $6f, $d9, $6f, $fe, $f0, $e9, $fb, $3c, $63, $bc, $fe, $3f, $f6, $7f, $3f
    db $e2, $3f, $ee, $33, $cc, $33, $c6, $e3, $bb, $db, $6d, $fe, $e1, $de, $6f, $90
    db $d6, $e4, $7b, $ff, $bc, $63, $bc, $6f, $b0, $7b, $bc, $c3, $01, $3c, $a6, $e3
    db $00, $00

    nop

    db $fb, $ff, $00, $fe, $e5, $bb, $cc, $db, $ed, $ea, $7d, $ff, $f0, $e7, $ff, $00
    db $bd, $de, $52, $f0, $ea, $f7, $ef, $f3, $94, $e0, $ea, $6e, $b3, $ae, $f3, $ff
    db $bb, $ff, $9a, $ff, $aa, $df, $ba, $cf, $fb, $30, $cf, $b6, $e3, $d6, $fb, $5c
    db $ff, $d2, $df, $7f, $d6, $7b, $84, $7b, $a6, $e3, $b5, $de, $ff, $e5, $fe, $95
    db $fe, $b3, $df, $24, $db, $fe, $96, $e3, $ae, $f3, $aa, $ff, $aa, $ff, $14, $07
    db $ff, $61, $9e, $86, $e3, $00, $00

    nop

    db $fb, $ff, $00, $fe, $e5, $fd, $1e, $f2, $3f, $e4, $fd, $3b, $f0, $e7, $ff, $00
    db $ef, $73, $94, $ff, $fe, $f0, $e9, $7b, $bc, $a5, $fe, $ef, $30, $ee, $7f, $37
    db $f2, $3f, $dc, $3f, $e1, $1e, $c6, $e3, $7b, $b5, $de, $fe, $e1, $63, $ff, $8c
    db $73, $b6, $e3, $7b, $ad, $f6, $fe, $e1, $39, $fe, $43, $bc, $a6, $e3, $00, $00
    db $00, $fb, $ff, $00, $fe, $e5, $fb, $3c, $e5, $3e, $ed, $fd, $37, $f0, $e7, $ff
    db $00, $de, $e7, $29, $ff, $fe, $f0, $e9, $f7, $78, $4b, $fc, $ed, $37, $f9, $7f
    db $3f, $e3, $3d, $ee, $31, $cf, $30, $c6, $e3, $7b, $6b, $bd, $fe, $e1, $c6, $ff
    db $18, $e7, $b6, $e3, $ff, $5b, $ec, $73, $fc, $4b, $fc, $5b, $ec, $03, $93, $6c
    db $a6, $e3, $00, $00

    nop

    db $fd, $00, $ff, $e6, $88, $cc, $da, $ff, $da, $ff, $ff, $aa, $ff, $8a, $ff, $8a
    db $cf, $8a, $cf, $f3, $00, $cf, $e6, $e7, $dc, $e5, $e0, $f0, $90, $f8, $ff, $90
    db $d8, $96, $df, $90, $df, $e0, $f8, $fb, $00, $f0, $e0, $ed, $80, $c0, $8c, $ce
    db $92, $f7, $df, $92, $db, $fe, $e1, $ec, $ff, $00, $fe, $00, $c0, $e3, $00, $00

    nop

    db $10, $08, $00, $00, $10, $10, $02, $00, $10, $18, $04, $00, $80, $bf, $07, $07
    db $04, $07, $04, $06, $fa, $e5, $00, $ff, $03, $d1, $d1, $11, $f9, $0a, $0a, $84
    db $ff, $85, $0a, $ca, $11, $15, $d1, $d9, $00, $ff, $e8, $78, $78, $44, $fc, $44
    db $e6, $78, $ff, $7a, $40, $7c, $40, $60, $40, $e0, $00, $dd, $a0, $f0, $e0, $7c
    db $45, $67, $f0, $e4, $60, $00, $ff, $20, $40, $40, $40, $60, $f7, $f7, $48, $ff
    db $fb, $47, $67, $40, $63, $4f, $6f, $00, $7b, $27, $00, $ff, $e0, $80, $80, $00
    db $c0, $fa, $e2, $07, $40, $00, $80, $00, $00

    nop

    db $df, $07, $07, $01, $03, $01, $ff, $e6, $00, $00, $ff, $c8, $c8, $00, $e4, $09
    db $89, $09, $8d, $ee, $fe, $e3, $00, $84, $00, $ff, $e0, $68, $68, $b5, $ff, $b5
    db $25, $ff, $25, $b7, $24, $b6, $00, $fd, $92, $f0, $e1, $e0, $e0, $10, $70, $e0
    db $e8, $3f, $00, $f0, $f0, $f0, $00, $78, $00, $00

    nop

    db $14

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2801
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0180
    add c
    ld bc, $0182
    add e
    ld bc, $0184
    add l
    dec b
    add [hl]
    ld bc, $0187
    adc b
    ld bc, $0189
    adc d
    add hl, bc
    adc e
    ld bc, $018c
    adc l
    ld bc, $018e
    xor a
    dec c
    or b
    ld bc, $01b1
    or d
    ld bc, $01b3
    or h
    ld de, $01b5
    or [hl]
    ld bc, $01b7
    cp b
    ld bc, $15b9
    cp d
    ld bc, $01bb
    cp h
    ld bc, $01bd
    cp [hl]
    add hl, de
    cp a
    ld bc, $01bf
    cp [hl]
    add hl, de
    cp l
    ld bc, $01bc
    cp e
    ld bc, $01ba
    cp c
    dec d
    cp b
    ld bc, $01b7
    or [hl]
    ld bc, $01b5
    or h
    ld de, $01b3
    or d
    ld bc, $01b1
    or b
    ld bc, $0daf
    adc [hl]
    ld bc, $018d
    adc h
    ld bc, $018b
    adc d
    add hl, bc
    adc c
    ld bc, $0188
    add a
    ld bc, $0186
    add l
    dec b
    add h
    ld bc, $0183
    add d
    ld bc, $0181
    add b
    db $01

    push bc
    and a
    jr nz, jr_041_6512

    ld c, $10
    call Call_000_258a
    call Call_000_2625

jr_041_6512:
    call Call_000_23b6
    rst $18

    db $0a, $01

    rst $18

    db $00, $05

    call Call_000_0341
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld [$c320], a
    ld [$c321], a
    ld [$c322], a
    ld [$c323], a
    ld a, $90
    ldh [rWY], a
    call Call_000_2683
    call Call_041_5669
    call Call_041_4366
    call Call_041_43c0
    call Call_041_446d
    call Call_041_665e
    pop bc
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [$d4d0], a
    ld a, $01
    call Call_041_49ed
    call Call_041_508c
    rst $18

    db $04, $42

    ld a, $01
    call Call_041_4bab
    call Call_041_4cc1
    call Call_041_65d1
    call Call_041_4c4a
    call Call_000_04de
    call Call_000_0371
    ld a, $03
    ld hl, $5088
    call Call_000_23e8
    ld a, $02
    ld hl, $4d2f
    call Call_000_23e8
    ld a, $01
    ld hl, $4cd1
    call Call_000_23e8
    ld c, $10
    call Call_000_258d
    call Call_000_2625
    jr jr_041_6591

jr_041_6591:
    call Call_000_2e3b
    ldh a, [$91]
    bit 0, a
    jr z, jr_041_659e

    rst $08
    ld e, h
    jr jr_041_65aa

jr_041_659e:
    ldh a, [$91]
    bit 1, a
    jr z, jr_041_65a8

    rst $08

    db $5d

    jr jr_041_65aa

jr_041_65a8:
    jr jr_041_6591

jr_041_65aa:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    ld hl, $5088
    call Call_000_2449
    ld hl, $4d2f
    call Call_000_2449
    ld hl, $4cd1
    call Call_000_2449
    rst $18

    db $0a, $01

    ld hl, $587c
    call Call_000_2449
    call Call_000_2e3b
    ret


Call_041_65d1:
    rst $18

    db $6c, $02

    push af
    push bc
    push de
    push hl
    ld de, $030f
    call Call_000_22d2
    pop hl
    pop de
    pop bc
    pop af
    and a
    ret z

    dec a
    jr z, jr_041_65fb

    ld hl, $6668
    ld de, $0201
    call Call_000_0595
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $6670
    jr jr_041_660d

jr_041_65fb:
    ld hl, $66cc
    ld de, $0201
    call Call_000_0595
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $66d4

jr_041_660d:
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b4e0
    ld c, $06
    call Call_000_04db
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $0003
    ld hl, $d1e4
    ld d, $0a
    call Call_041_48e5
    ld bc, $0003
    ld hl, $d204
    call Call_041_48e5
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d1e4
    ld b, $03
    ld a, $4e
    call Call_041_48ed
    ld hl, $d204
    ld b, $03
    ld a, $51
    call Call_041_48ed
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    ld [$d54c], a
    ret


Call_041_665e:
    ld hl, $677c
    ld de, $0601
    call Call_000_0595
    ret


    and $02
    ld h, b
    ld a, l
    ei
    ld a, a
    nop
    ld c, h
    cp l
    nop
    rst $38
    ldh [rSB], a
    ld bc, $0203
    cp $e1
    ld bc, $01ff
    nop
    nop
    ld a, b
    ld a, b
    cp $ce
    rst $18
    rst $38
    ccf
    cp a
    ld e, a
    ccf
    rst $18
    rra
    rst $28
    adc a
    rst $30
    ld [hl], d
    db $e3
    sbc h
    ldh [$e1], a
    add b
    add b
    ldh [$e0], a
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$48
    ld hl, sp+$78
    sbc e
    nop
    inc bc
    rst $08
    pop hl
    nop
    ld [bc], a
    ret z

    pop hl
    call nz, Call_041_7fe1
    rst $38
    pop hl
    rra
    rst $38
    inc bc
    ld d, e
    ld bc, HeaderRAMSize
    rst $28
    ld b, h
    ld bc, $0140
    rst $20
    ldh [$f8], a
    ld hl, sp-$10
    ld a, a
    ldh a, [$e0]
    ld h, b
    ldh [$e0], a
    ld b, b
    ret nz

    cp $e3
    nop
    nop
    nop
    and $02
    ccf
    ld bc, $13ff
    inc de
    nop
    rst $38
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    cp $fe
    ld [c], a
    inc bc
    ld bc, $7f01
    ld a, a
    rst $38
    rst $08
    rst $38
    rst $38
    rra
    cp a
    ld e, a
    ld a, a
    sbc a
    ccf
    jp z, $8fff

    ld [hl], c
    pop bc
    cp [hl]
    add b
    add b
    ldh [$e0], a
    ld [hl], a
    ldh a, [$f0]
    ld hl, sp-$01
    db $e3
    ld e, b
    ld hl, sp+$38
    ret nc

    ldh [$fd], a
    nop
    rst $38
    db $e3
    ld bc, $0300
    nop
    ld [bc], a
    ld bc, $7fff
    ld h, b
    rra
    rra
    dec bc
    inc bc
    add c
    ld bc, $c9ff
    ld bc, $01d9
    ld a, e
    add c
    ld l, a
    sub c
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$60], a
    add sp, $60
    rst $38
    ret z

    ret nz

    ld e, h
    ret nz

    ld [hl], h
    ret z

    ld h, h
    ret c

    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $e1
    ld hl, sp+$00
    rst $30
    ld [bc], a
    db $ec
    rst $18
    nop
    add sp, $01
    add sp, $03
    ldh a, [$e3]
    ccf
    nop
    rst $38
    rst $18
    nop
    ld l, a
    nop
    cpl
    add b
    xor a
    nop
    and l
    jp hl


    add sp, -$20
    rst $30
    ldh [$e0], a
    ret c

    db $e3
    rst $38
    db $ec
    ldh [$6f], a
    jp nc, $e0e4

    ccf
    ldh a, [$e6]
    ret nz

    db $e3
    nop
    db $fc
    ld [c], a
    nop
    rst $38
    ld l, h
    db $f4
    rst $20
    ret nc

    push hl
    jp hl


    ld [bc], a
    cp $eb
    xor a
    nop
    cp $eb
    nop
    nop
    nop

    db $e6, $02, $e6, $02, $80, $01, $ff, $7f

    ld b, a
    ldh a, [$96]
    push af
    ld a, b
    push af
    push bc
    call Call_000_0341
    call Call_041_6d4e
    call Call_041_4366
    ld a, $01
    call Call_041_49ed
    call Call_041_43c0
    call Call_041_68ad
    call Call_041_508c
    call Call_000_04de
    rst $18

    db $04, $42

    call Call_000_04de
    pop bc
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    and $01
    ld [$d40a], a
    pop af
    call Call_041_6c30
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_4c4a
    call Call_000_04de
    call Call_000_0371
    ld a, $05
    ld hl, $5088
    call Call_000_23e8
    ld a, $01
    ld hl, $4cd1
    call Call_000_23e8
    ld a, $01
    ld hl, $4328
    call Call_000_23e8
    ld a, $01
    ld hl, $6e3b
    call Call_000_23e8
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $02
    ld [$d632], a
    ld c, $10
    call Call_000_258d
    call Call_000_2625

jr_041_6800:
    call Call_000_2e3b
    ldh a, [$94]
    bit 0, a
    jr z, jr_041_6826

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d40a]
    and a
    jr nz, jr_041_681e

    rst $08

    db $5c

    ld a, $01
    ld [$d4a0], a
    jr jr_041_686a

jr_041_681e:
    rst $08
    ld e, l
    xor a
    ld [$d4a0], a
    jr jr_041_686a

jr_041_6826:
    bit 1, a
    jr z, jr_041_6832

    rst $08
    ld e, l
    xor a
    ld [$d4a0], a
    jr jr_041_686a

jr_041_6832:
    bit 6, a
    jr z, jr_041_684d

    rst $08
    ld e, e
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d40a
    ld a, [hl]
    dec a
    and $01
    ld [hl], a
    ld a, $1f
    ld [$d631], a
    jr jr_041_6800

jr_041_684d:
    bit 7, a
    jr z, jr_041_6868

    rst $08
    ld e, e
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d40a
    ld a, [hl]
    inc a
    and $01
    ld [hl], a
    ld a, $1f
    ld [$d631], a
    jr jr_041_6800

jr_041_6868:
    jr jr_041_6800

jr_041_686a:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    ld hl, $5088
    call Call_000_2449
    ld hl, $4cd1
    call Call_000_2449
    ld hl, $4328
    call Call_000_2449
    ld hl, $6e3b
    call Call_000_2449
    call Call_000_2e3b
    call Call_000_0341
    call Call_041_6dc7
    call Call_000_04de
    call Call_000_0371
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d4a0]
    ld b, a
    call Call_000_2e3b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ret


Call_041_68ad:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5d80
    ld de, $d000
    call Call_000_1f2f
    ld hl, $621a
    ld de, $d1e0
    call Call_000_1f2f
    ld hl, $6190
    ld de, $d2a0
    call Call_000_1f2f
    ld hl, $61d5
    ld de, $d300
    call Call_000_1f2f
    ld hl, $625d
    ld de, $d3c0
    call Call_000_1f2f
    ld hl, $6339
    ld de, $d420
    call Call_000_1f2f
    ld hl, $5d00
    ld de, $d4c0
    call Call_000_1f2f
    ld hl, $5d15
    ld de, $d590
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $63
    call Call_000_04db
    ld hl, $62a0
    ld de, $d000
    call Call_000_1f2f
    ld hl, $62f8
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b630
    ld c, $0e
    call Call_000_04db
    ld hl, $637d
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $06
    call Call_000_04db
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $0240
    ld d, $01
    ld hl, $d000
    call Call_041_48e5
    ld hl, $d0d0
    ld d, $09
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d0f0
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d127
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d147
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d130
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d150
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d1a6
    ld bc, $0004
    call Call_041_48e5
    ld hl, $d1c6
    ld bc, $0004
    call Call_041_48e5
    ld hl, $d1b0
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d1d0
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d1e7
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d207
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d1f0
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d210
    ld bc, $0003
    call Call_041_48e5
    ld hl, $d0ca
    ld d, $0b
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d0ea
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d12a
    ld d, $0c
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d14a
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d1aa
    ld d, $0d
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d1ca
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d1ea
    ld bc, $0006
    call Call_041_48e5
    ld hl, $d20a
    ld bc, $0006
    call Call_041_48e5
    ld a, $09
    ld [$d000], a
    ld [$d013], a
    ld [$d220], a
    ld [$d233], a
    ld bc, $0012
    ld d, $09
    ld hl, $d001
    call Call_041_48e5
    ld bc, $0012
    ld d, $09
    ld hl, $d221
    call Call_041_48e5
    ld b, $10
    ld a, $09
    ld hl, $d020
    ld de, $0020

jr_041_6a44:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_041_6a44

    ld b, $10
    ld a, $09
    ld hl, $d033

jr_041_6a50:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_041_6a50

    ld bc, $0060
    ld d, $00
    ld hl, $d000
    call Call_041_48e5
    ld bc, $0006
    ld hl, $d060
    call Call_041_48e5
    ld bc, $0006
    ld hl, $d080
    call Call_041_48e5
    ld bc, $0006
    ld hl, $d0a0
    call Call_041_48e5
    ld bc, $0006
    ld hl, $d0c0
    call Call_041_48e5
    ld bc, $0006
    ld hl, $d0e0
    call Call_041_48e5
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $0240
    ld d, $20
    ld hl, $d000
    call Call_041_48e5
    ld hl, $d000
    ld [hl], $59
    ld hl, $d013
    ld [hl], $5a
    ld hl, $d220
    ld [hl], $5b
    ld hl, $d233
    ld [hl], $5c
    ld bc, $0012
    ld d, $5d
    ld hl, $d001
    call Call_041_48e5
    ld bc, $0012
    ld d, $5e
    ld hl, $d221
    call Call_041_48e5
    ld b, $10
    ld a, $5f
    ld hl, $d020
    ld de, $0020

jr_041_6ad2:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_041_6ad2

    ld b, $10
    ld a, $60
    ld hl, $d033

jr_041_6ade:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_041_6ade

    ld hl, $d000
    ld [hl], $02
    ld hl, $d013
    ld [hl], $04
    ld hl, $d040
    ld [hl], $07
    ld hl, $d053
    ld [hl], $09
    ld bc, $0012
    ld d, $03
    ld hl, $d001
    call Call_041_48e5
    ld bc, $0012
    ld d, $08
    ld hl, $d041
    call Call_041_48e5
    ld hl, $d020
    ld [hl], $05
    ld hl, $d033
    ld [hl], $06
    ld hl, $d060
    ld [hl], $02
    ld hl, $d065
    ld [hl], $04
    ld hl, $d0e0
    ld [hl], $07
    ld hl, $d0e5
    ld [hl], $09
    ld a, $05
    ld [$d080], a
    ld [$d0a0], a
    ld [$d0c0], a
    ld a, $06
    ld [$d085], a
    ld [$d0a5], a
    ld [$d0c5], a
    ld bc, $0004
    ld d, $03
    ld hl, $d061
    call Call_041_48e5
    ld bc, $0004
    ld d, $08
    ld hl, $d0e1
    call Call_041_48e5
    ld hl, $d090
    ld [hl], $59
    ld hl, $d0d0
    ld a, $1e
    ld b, $03
    call Call_041_48ed
    ld hl, $d0f0
    ld b, $03
    call Call_041_48ed
    ld hl, $d127
    ld a, $2a
    ld b, $03
    call Call_041_48ed
    ld hl, $d147
    ld b, $03
    call Call_041_48ed
    ld hl, $d130
    ld a, $30
    ld b, $03
    call Call_041_48ed
    ld hl, $d150
    ld b, $03
    call Call_041_48ed
    ld hl, $d1a6
    ld a, $63
    ld b, $04
    call Call_041_48ed
    ld hl, $d1c6
    ld b, $04
    call Call_041_48ed
    ld hl, $d1b0
    ld a, $3c
    ld b, $03
    call Call_041_48ed
    ld hl, $d1d0
    ld b, $03
    call Call_041_48ed
    ld hl, $d1e7
    ld a, $42
    ld b, $03
    call Call_041_48ed
    ld hl, $d207
    ld b, $03
    call Call_041_48ed
    ld hl, $d1f0
    ld a, $6b
    ld b, $03
    call Call_041_48ed
    ld hl, $d210
    ld b, $03
    call Call_041_48ed
    ld hl, $5afa
    ld de, $0c01
    call Call_000_0595
    ld hl, $5d71
    ld de, $0301
    call Call_000_0595
    ld hl, $5d71
    ld de, $0401
    call Call_000_0595
    ld hl, $5d71
    ld de, $0501
    call Call_000_0595
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld hl, $d432
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $5ced
    ld de, $0101
    call Call_000_0595
    ld hl, $5ced
    ld de, $0a01
    call Call_000_0595
    ld hl, $5ce5
    ld de, $0001
    call Call_000_0595
    ld hl, $5ce5
    ld de, $0801
    call Call_000_0595
    ret


Call_041_6c30:
    rst $18

    db $1a, $03

    push af
    ld b, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d021
    ld a, b
    and a
    jr z, jr_041_6c4a

    dec a
    jr z, jr_041_6c54

    dec a
    jr z, jr_041_6c6c

    jr jr_041_6c84

jr_041_6c4a:
    ld hl, $10eb
    ld c, $20
    rst $18

    db $22, $05

    jr jr_041_6c84

jr_041_6c54:
    ld hl, $10ec
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld de, $d025
    call Call_041_6d25
    ld hl, $10ee
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    jr jr_041_6c84

jr_041_6c6c:
    ld hl, $10ed
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld de, $d026
    call Call_041_6d25
    ld hl, $10ee
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    jr jr_041_6c84

jr_041_6c84:
    ld de, $d082
    ld hl, $10e9
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d0c2
    ld hl, $10ea
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d121
    ld hl, $1ca8
    ld c, $20
    rst $18

    db $22, $05

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d63c]
    ld h, $00
    ld l, a
    pop af
    and a
    jr nz, jr_041_6cb7

    ld l, $01

jr_041_6cb7:
    ld a, $02
    ld de, $d64e
    call Call_000_21f0
    ld hl, $d64e
    ld de, $d123
    ld a, [hl+]
    ld b, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [de], a
    sub $20
    jr z, jr_041_6cd4

    inc de

jr_041_6cd4:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    ld b, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [de], a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d066
    ld hl, $10e1
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d0a6
    ld hl, $10e3
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d106
    ld hl, $10e2
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d166
    ld hl, $10e4
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d187
    ld hl, $10e5
    ld c, $20
    rst $18

    db $22, $05

    rst $18

    db $24, $03

    ret


Call_041_6d25:
    push de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c800
    pop de

jr_041_6d30:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    and a
    jr z, jr_041_6d46

    ld b, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [de], a
    inc de
    jr jr_041_6d30

jr_041_6d46:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    inc de
    ret


Call_041_6d4e:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c200
    ld de, $d554
    ld b, $40

jr_041_6d5c:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_041_6d5c

    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $d800
    ld bc, $0800

jr_041_6d71:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_041_6d71

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $d800
    ld bc, $0800

jr_041_6d88:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_041_6d88

    ld a, $01
    ldh [rVBK], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $9000
    ld de, $d800
    ld bc, $0800

jr_041_6da3:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_041_6da3

    ld a, $00
    ldh [rVBK], a
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $8400
    ld de, $dc00
    ld bc, $0400

jr_041_6dbe:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_041_6dbe

    ret


Call_041_6dc7:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d554
    ld de, $0007
    call Call_000_0595
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d800
    ld de, $d000
    ld bc, $0800

jr_041_6de5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_041_6de5

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d800
    ld de, $d000
    ld bc, $0800

jr_041_6dfc:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_041_6dfc

    ld a, $01
    ldh [rVBK], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d800
    ld de, $9000
    ld bc, $0800

jr_041_6e17:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_041_6e17

    ld a, $00
    ldh [rVBK], a
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $dc00
    ld de, $8400
    ld bc, $0400

jr_041_6e32:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_041_6e32

    ret


    ld bc, $0200
    ld d, $38
    ld e, $30
    ld hl, $63be
    call Call_000_26ea
    ret


    rst $18
    inc b
    ld bc, $96f0
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_7a53
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fd]
    ret


    ldh a, [$96]
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_7a65
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    rst $28
    jr nz, @+$08

    rst $28
    ld b, b
    ld b, $fa
    db $fd
    jp $dfc9


    inc b
    ld bc, $96f0
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_7aef
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fd]
    ret


    rst $18

    db $04, $01

    ldh a, [$96]
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_7b1c
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fd]
    ret


    rst $18

    db $04, $01

    ldh a, [$96]
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_7b2e
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    rst $28

    db $60, $06

    ld a, [$c3fd]
    ret


    rst $18
    inc b
    ld bc, $96f0
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_7b4d
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    rst $28
    add b
    ld b, $fa
    db $fd
    jp $dfc9


    inc b
    ld bc, $96f0
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_7b6c
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fd]
    ret


    rst $18

    db $04, $01

    ldh a, [$96]
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_7b7e
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fd]
    ret


    rst $18
    inc b
    ld bc, $96f0
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_7b90
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fd]
    ret


    rst $18
    inc b
    ld bc, $96f0
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    call Call_041_7ba2
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fd]
    ret


    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ldh a, [$96]
    push af
    ld a, [$c82d]
    set 7, a
    ld [$c82d], a
    ld hl, $1480
    ld bc, $73dc
    ld de, $0404
    call Call_041_6ff4
    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fd]
    ret


Call_041_6ff4:
Jump_041_6ff4:
    xor a
    ld [$c3fd], a
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    call Call_000_2e3b
    call Call_000_0684
    call Call_000_2e3b
    pop hl
    rst $18

    db $0a, $05

    rst $20

    db $00, $03

    ld [$c3f8], a
    call Call_000_2e3b
    rst $18

    db $1c, $05

    rst $18

    db $14, $05

    call Call_000_2e3b

Jump_041_701e:
    call Call_041_708a
    push hl
    call Call_000_2e3b
    call Call_000_068a
    call Call_000_2e3b
    pop hl
    ld a, [$c3f8]
    rst $18

    db $4e, $05

    push af
    push bc
    cp $ff
    jr z, jr_041_7051

    ld a, [$c3fb]
    bit 7, a
    jr z, jr_041_7051

    and $7f
    ld b, a
    ld a, [$d830]
    inc a

jr_041_7046:
    rrc b
    dec a
    jr nz, jr_041_7046

    rlc b
    bit 0, b
    jr nz, jr_041_7066

jr_041_7051:
    call Call_000_0684
    ld a, [$c3f8]
    rst $18

    db $0c, $05

    rst $18

    db $1c, $05

    rst $18

    db $14, $05

    call Call_000_2e3b
    call Call_000_068a

jr_041_7066:
    pop bc
    pop af
    cp $ff
    jr z, jr_041_7078

    add a
    add c
    ld c, a
    jr nc, jr_041_7072

    inc b

jr_041_7072:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Jump_041_7078:
jr_041_7078:
    call Call_041_707c
    ret


Call_041_707c:
    xor a
    ld [$c3f9], a
    ld [$c3fa], a
    ld [$c3fc], a
    ld [$c3fb], a
    ret


Call_041_708a:
    push af
    push bc
    push de
    push hl
    ld a, [$c3fc]
    bit 4, a
    jp nz, Jump_041_71d6

    bit 5, a
    jp nz, Jump_041_7141

    bit 6, a
    jr nz, jr_041_70a7

    pop hl
    pop de
    pop bc
    pop af
    ret


    call Call_000_0684

jr_041_70a7:
    ld a, [$c818]
    bit 0, a
    jp z, Jump_041_70cf

    ld l, $dd
    ld de, $0a01
    call Call_041_7bb4
    call Call_000_2e3b
    ld l, $de
    ld de, $0b01
    call Call_041_7bb4
    call Call_000_2e3b
    ld l, $df
    ld de, $0c01
    call Call_041_7bb4
    jr jr_041_70ed

Jump_041_70cf:
    ld l, $da
    ld de, $0a01
    call Call_041_7bb4
    call Call_000_2e3b
    ld l, $db
    ld de, $0b01
    call Call_041_7bb4
    call Call_000_2e3b
    ld l, $dc
    ld de, $0c01
    call Call_041_7bb4

jr_041_70ed:
    call Call_000_2e3b
    ld a, [$c818]
    bit 1, a
    jp z, Jump_041_7118

    ld l, $dd
    ld de, $0a03
    call Call_041_7bb4
    call Call_000_2e3b
    ld l, $de
    ld de, $0b03
    call Call_041_7bb4
    call Call_000_2e3b
    ld l, $df
    ld de, $0c03
    call Call_041_7bb4
    jr jr_041_7136

Jump_041_7118:
    ld l, $da
    ld de, $0a03
    call Call_041_7bb4
    call Call_000_2e3b
    ld l, $db
    ld de, $0b03
    call Call_041_7bb4
    call Call_000_2e3b
    ld l, $dc
    ld de, $0c03
    call Call_041_7bb4

jr_041_7136:
    call Call_000_2e3b
    call Call_000_068a
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_041_7141:
    ld a, [$c82d]
    and $7f
    and a
    jr z, jr_041_714f

    dec a
    jr z, jr_041_717c

    jp Jump_041_71a9


jr_041_714f:
    ld l, $db
    ld de, $0905
    call Call_041_7bb4
    ld l, $dc
    ld de, $0a05
    call Call_041_7bb4
    ld l, $dd
    ld de, $0b05
    call Call_041_7bb4
    ld l, $de
    ld de, $0c05
    call Call_041_7bb4
    ld l, $df
    ld de, $0d05
    call Call_041_7bb4
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_041_717c:
    ld l, $d6
    ld de, $0905
    call Call_041_7bb4
    ld l, $d7
    ld de, $0a05
    call Call_041_7bb4
    ld l, $d8
    ld de, $0b05
    call Call_041_7bb4
    ld l, $d9
    ld de, $0c05
    call Call_041_7bb4
    ld l, $da
    ld de, $0d05
    call Call_041_7bb4
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_041_71a9:
    ld l, $d1
    ld de, $0905
    call Call_041_7bb4
    ld l, $d2
    ld de, $0a05
    call Call_041_7bb4
    ld l, $d3
    ld de, $0b05
    call Call_041_7bb4
    ld l, $d4
    ld de, $0c05
    call Call_041_7bb4
    ld l, $d5
    ld de, $0d05
    call Call_041_7bb4
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_041_71d6:
    ld a, [$c82d]
    and $7f
    and a
    jp z, Jump_041_71e5

    dec a
    jr z, jr_041_7212

    jp Jump_041_723f


Jump_041_71e5:
    ld l, $db
    ld de, $0907
    call Call_041_7bb4
    ld l, $dc
    ld de, $0a07
    call Call_041_7bb4
    ld l, $dd
    ld de, $0b07
    call Call_041_7bb4
    ld l, $de
    ld de, $0c07
    call Call_041_7bb4
    ld l, $df
    ld de, $0d07
    call Call_041_7bb4
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_041_7212:
    ld l, $d6
    ld de, $0907
    call Call_041_7bb4
    ld l, $d7
    ld de, $0a07
    call Call_041_7bb4
    ld l, $d8
    ld de, $0b07
    call Call_041_7bb4
    ld l, $d9
    ld de, $0c07
    call Call_041_7bb4
    ld l, $da
    ld de, $0d07
    call Call_041_7bb4
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_041_723f:
    ld l, $d1
    ld de, $0907
    call Call_041_7bb4
    ld l, $d2
    ld de, $0a07
    call Call_041_7bb4
    ld l, $d3
    ld de, $0b07
    call Call_041_7bb4
    ld l, $d4
    ld de, $0c07
    call Call_041_7bb4
    ld l, $d5
    ld de, $0d07
    call Call_041_7bb4
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_041_726c:
    push af
    push bc
    push hl
    push de
    ld a, [$c3f8]
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
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    pop hl
    ld a, h
    add d
    ld d, a
    ld a, l
    add e
    ld e, a
    rst $18

    db $66, $05

    ld h, d
    ld l, e
    ld de, $3000
    add hl, de
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    pop hl
    pop bc
    pop af
    ret


Call_041_72a1:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fc]
    and $0f
    cp $01
    jr z, jr_041_72b6

    cp $02
    jr z, jr_041_72c3

    jr jr_041_72ce

jr_041_72b6:
    rst $08
    adc e
    ld a, [$c816]
    ld b, $10
    sub b
    ld [$c816], a
    jr jr_041_72ce

jr_041_72c3:
    rst $08

    db $8b

    ld a, [$c816]
    ld b, $10
    add b
    ld [$c816], a

jr_041_72ce:
    rst $18

    db $0c, $12

    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_041_72d8:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c3fc]
    and $0f
    cp $01
    jr z, jr_041_72ed

    cp $02
    jr z, jr_041_72fd

    jr jr_041_730d

jr_041_72ed:
    ld a, [$c815]
    and a
    jr z, jr_041_72fb

    rst $08

    db $8b

    dec a
    ld [$c815], a
    jr jr_041_730d

jr_041_72fb:
    jr jr_041_730d

jr_041_72fd:
    ld a, [$c815]
    cp $13
    jr z, jr_041_730d

    rst $08

    db $8b

    inc a
    ld [$c815], a
    jp Jump_041_730d


Jump_041_730d:
jr_041_730d:
    rst $18

    db $0c, $12

    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ret


    inc hl
    ld [hl], e
    add hl, hl
    ld [hl], e
    cpl
    ld [hl], e
    dec [hl]
    ld [hl], e
    ld c, c
    ld [hl], e
    sbc d
    ld [hl], e
    call Call_041_7879
    jp Jump_041_7078


    call Call_041_7882
    jp Jump_041_7078


    call Call_041_78a5
    jp Jump_041_7078


    call Call_041_78c6
    ld a, $03
    ld [$c3f9], a
    ld hl, $147f
    ld bc, $7317
    ld de, $0502
    jp Jump_041_6ff4


    ld a, $20
    rst $18
    inc d
    db $10
    ld a, [hl]
    cp $00
    jr z, jr_041_737b

    ld hl, $1490
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, $01
    ld [$c3f9], a
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
    jr nz, jr_041_7381

    ld a, $81
    ld [$c3fd], a
    jp Jump_041_7078


jr_041_737b:
    call Call_041_7935
    jp Jump_041_7078


jr_041_7381:
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld a, $04
    ld [$c3f9], a
    ld hl, $147f
    ld bc, $7317
    ld de, $0502
    jp Jump_041_6ff4


    ld a, [$c834]
    cp $02
    jr z, jr_041_73a9

    ld hl, $148c
    rst $18
    ld c, $0a
    jr jr_041_73af

jr_041_73a9:
    ld hl, $148f
    rst $18
    ld c, $0a

jr_041_73af:
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, $01
    ld [$c3f9], a
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
    jr nz, jr_041_73d1

    ld a, $80
    ld [$c3fd], a
    jp Jump_041_7078


jr_041_73d1:
    call Call_041_7a53
    ld a, $05
    ld [$c3f9], a
    jp Jump_041_6ff4


    db $e4
    ld [hl], e
    ld [$f073], a
    ld [hl], e
    ld [bc], a
    ld [hl], h
    call Call_041_7943
    jp Jump_041_7078


    call Call_041_7965
    jp Jump_041_7078


    call Call_041_7969
    ld a, [$d830]
    ld [$c3f9], a
    ld bc, $73dc
    ld a, [$c3f8]
    jp Jump_041_701e


    xor a
    ld [$c4b8], a
    jp Jump_041_79a7


    inc de
    ld [hl], h
    add hl, de
    ld [hl], h
    rra
    ld [hl], h
    dec h
    ld [hl], h
    scf
    ld [hl], h
    rst $18
    ld e, d
    ld a, [bc]
    jp Jump_041_7078


    call Call_041_7943
    jp Jump_041_7078


    call Call_041_7965
    jp Jump_041_7078


    call Call_041_7969
    ld a, [$d830]
    ld [$c3f9], a
    ld bc, $7409
    ld a, [$c3f8]
    jp Jump_041_701e


    ld a, $01
    ld [$c4b8], a
    jp Jump_041_79a7


    ld c, e
    ld [hl], h
    ld d, c
    ld [hl], h
    ld d, a
    ld [hl], h
    ld e, l
    ld [hl], h
    ld l, e
    ld [hl], h
    xor [hl]
    ld [hl], h
    call Call_041_7879
    jp Jump_041_7078


    call Call_041_7882
    jp Jump_041_7078


    call Call_041_788b
    jp Jump_041_7078


    call Call_041_78c6
    call Call_041_7aef
    ld a, $03
    ld [$c3f9], a
    jp Jump_041_6ff4


    ld a, $20
    rst $18
    inc d
    db $10
    ld a, [hl]
    cp $00
    jr z, jr_041_749d

    ld hl, $1490
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, $01
    ld [$c3f9], a
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
    jr nz, jr_041_74a3

    ld a, $81
    ld [$c3fd], a
    jp Jump_041_7078


jr_041_749d:
    call Call_041_7935
    jp Jump_041_7078


jr_041_74a3:
    call Call_041_7aef
    ld a, $04
    ld [$c3f9], a
    jp Jump_041_6ff4


    ld a, [$c2a5]
    and $0f
    cp $0f
    jr nz, jr_041_74ea

    ld hl, $148c
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, $01
    ld [$c3f9], a
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
    jr nz, jr_041_74df

    ld a, $80
    ld [$c3fd], a
    jp Jump_041_7078


jr_041_74df:
    call Call_041_7aef
    ld a, $05
    ld [$c3f9], a
    jp Jump_041_6ff4


jr_041_74ea:
    ld hl, $148b
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
    jr nz, jr_041_751e

    ld hl, $c814
    ld a, [hl]
    cp $ff
    jr z, jr_041_750e

    inc [hl]

jr_041_750e:
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $80
    ld [$c3fd], a
    ld a, $01
    ld [$c2a6], a
    jp Jump_041_7078


jr_041_751e:
    cp $ff
    jr nz, jr_041_752d

    call Call_041_7aef
    ld a, $05
    ld [$c3f9], a
    jp Jump_041_6ff4


jr_041_752d:
    ld a, [$c834]
    cp $03
    jr z, jr_041_753c

    ld hl, $148e
    rst $18
    ld c, $0a
    jr jr_041_7542

jr_041_753c:
    ld hl, $148c
    rst $18
    ld c, $0a

jr_041_7542:
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, $01
    ld [$c3f9], a
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
    jr nz, jr_041_7564

    ld a, $80
    ld [$c3fd], a
    jp Jump_041_7078


jr_041_7564:
    call Call_041_7aef
    ld a, $05
    ld [$c3f9], a
    jp Jump_041_6ff4


    ld a, e
    ld [hl], l
    add c
    ld [hl], l
    add a
    ld [hl], l
    adc l
    ld [hl], l

    db $9b, $75, $de, $75

    call Call_041_7879
    jp Jump_041_7078


    call Call_041_7882
    jp Jump_041_7078


    call Call_041_7898
    jp Jump_041_7078


    call Call_041_78c6
    call Call_041_7aef
    ld a, $03
    ld [$c3f9], a
    jp Jump_041_6ff4


    ld a, $20
    rst $18

    db $14, $10

    ld a, [hl]
    cp $00
    jr z, jr_041_75cd

    ld hl, $1490
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, $01
    ld [$c3f9], a
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
    jr nz, jr_041_75d3

    ld a, $81
    ld [$c3fd], a
    jp Jump_041_7078


jr_041_75cd:
    call Call_041_7935
    jp Jump_041_7078


jr_041_75d3:
    call Call_041_7b1c
    ld a, $04
    ld [$c3f9], a
    jp Jump_041_6ff4


    ld hl, $148b
    rst $18

    db $0e, $0a

    ld a, $80
    rst $18

    db $0a, $0a

    rst $18

    db $12, $0a

    rst $18

    db $0c, $0a

    push af
    ld a, $05
    rst $18

    db $04, $0a

    pop af
    and a
    jr nz, jr_041_7612

    ld hl, $c814
    ld a, [hl]
    cp $ff
    jr z, jr_041_7602

    inc [hl]

jr_041_7602:
    rst $18

    db $34, $02

    ld a, $80
    ld [$c3fd], a
    ld a, $01
    ld [$c2a6], a
    jp Jump_041_7078


jr_041_7612:
    cp $ff
    jr nz, jr_041_7621

    call Call_041_7b1c
    ld a, $05
    ld [$c3f9], a
    jp Jump_041_6ff4


jr_041_7621:
    ld hl, $148f
    rst $18

    db $0e, $0a

    ld a, $80
    rst $18

    db $0a, $0a

    ld a, $01
    ld [$c3f9], a
    rst $18

    db $12, $0a

    rst $18

    db $0c, $0a

    push af
    ld a, $05
    rst $18

    db $04, $0a

    pop af
    and a
    jr nz, jr_041_7649

    ld a, $80
    ld [$c3fd], a
    jp Jump_041_7078


jr_041_7649:
    call Call_041_7b1c
    ld a, $05
    ld [$c3f9], a
    jp Jump_041_6ff4


    ld h, d
    db $76

    db $68, $76

    ld l, [hl]
    db $76

    db $7a, $76, $8c, $76, $9e, $76, $ac, $76

    call Call_041_7879
    jp Jump_041_7078


    call Call_041_7882
    jp Jump_041_7078


    ld a, $80
    ld [$c3fd], a
    xor a
    ld [$c96c], a
    jp Jump_041_7078


    call Call_041_72a1
    ld a, [$d830]
    ld [$c3f9], a
    ld bc, $7654
    ld a, [$c3f8]
    jp Jump_041_701e


    call Call_041_72d8
    ld a, [$d830]
    ld [$c3f9], a
    ld bc, $7654
    ld a, [$c3f8]
    jp Jump_041_701e


    call Call_041_78c6
    call Call_041_7b2e
    ld a, $05
    ld [$c3f9], a
    jp Jump_041_6ff4


    ld a, $80
    ld [$c3fd], a
    ld a, $01
    ld [$c96c], a
    jp Jump_041_7078


    db $bf, $76, $c7, $76

    rst $08
    db $76

    ld a, $00
    ld [$c3fd], a
    jp Jump_041_7078


    ld a, $02
    ld [$c3fd], a
    jp Jump_041_7078


    ld a, $05
    ld [$c3fd], a
    jp Jump_041_7078


    rst $18
    db $76
    rst $20
    db $76
    rst $28
    db $76
    rst $30
    db $76
    ld a, $00
    ld [$c3fd], a
    jp Jump_041_7078


    ld a, $02
    ld [$c3fd], a
    jp Jump_041_7078


    ld a, $03
    ld [$c3fd], a
    jp Jump_041_7078


    ld a, $04
    ld [$c3fd], a
    jp Jump_041_7078


    rlca
    ld [hl], a
    rrca
    ld [hl], a
    ld hl, $3377
    ld [hl], a
    ld a, $82
    ld [$c3fd], a
    jp Jump_041_7078


    call Call_041_72a1
    ld a, [$d830]
    ld [$c3f9], a
    ld bc, $76ff
    ld a, [$c3f8]
    jp Jump_041_701e


    call Call_041_72d8
    ld a, [$d830]
    ld [$c3f9], a
    ld bc, $76ff
    ld a, [$c3f8]
    jp Jump_041_701e


    call Call_041_78c6
    call Call_041_7b4d
    ld a, $03
    ld [$c3f9], a
    jp Jump_041_6ff4


    ld b, l
    ld [hl], a
    ld c, l
    ld [hl], a
    ld a, $82
    ld [$c3fd], a
    jp Jump_041_7078


    call Call_041_78c6
    call Call_041_7b6c
    ld a, $01
    ld [$c3f9], a
    jp Jump_041_6ff4


    ld e, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, $82
    ld [$c3fd], a
    jp Jump_041_7078


    call Call_041_78c6
    call Call_041_7ba2
    ld a, $01
    ld [$c3f9], a
    jp Jump_041_6ff4


    db $79, $77, $b3, $77

    ld a, [$c3fc]
    and $0f
    jr z, jr_041_7799

    cp $03
    jr z, jr_041_7799

    rst $08

    db $8b

    ld a, [$c818]
    bit 0, a
    jr z, jr_041_7794

    res 0, a
    ld [$c818], a
    jr jr_041_7799

jr_041_7794:
    set 0, a
    ld [$c818], a

jr_041_7799:
    call Call_000_2b98
    ld a, [$c3fc]
    or $c0
    ld [$c3fc], a
    ld a, [$d830]
    ld [$c3f9], a
    ld bc, $7775
    ld a, [$c3f8]
    jp Jump_041_701e


    ld a, [$c3fc]
    and $0f
    jr z, jr_041_77d3

    cp $03
    jr z, jr_041_77d3

    rst $08

    db $8b

    ld a, [$c818]
    bit 1, a
    jr z, jr_041_77ce

    res 1, a
    ld [$c818], a
    jr jr_041_77d3

jr_041_77ce:
    set 1, a
    ld [$c818], a

jr_041_77d3:
    ld a, [$c3fc]
    or $c0
    ld [$c3fc], a
    ld a, [$d830]
    ld [$c3f9], a
    ld bc, $7775
    ld a, [$c3f8]
    jp Jump_041_701e


    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $0000
    ld bc, $1406
    rst $18
    inc b
    dec b
    ld [$c3f8], a
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b

jr_041_7805:
    ld hl, $c83c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $04
    ld de, $d000
    call Call_000_21f0
    ld hl, $d000
    ld de, $0602
    ld a, [$c3f8]
    rst $18
    ld h, h
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    call Call_000_2e3b
    ldh a, [$90]
    and $01
    jr z, jr_041_7838

    rst $08
    ld e, h
    ld de, $0064
    rst $18
    ld d, [hl]
    ld [bc], a
    jr jr_041_7805

jr_041_7838:
    ldh a, [$90]
    and $10
    jr z, jr_041_7848

    rst $08
    ld e, e
    ld de, $000a
    rst $18
    ld d, [hl]
    ld [bc], a
    jr jr_041_7805

jr_041_7848:
    ldh a, [$90]
    and $20
    jr z, jr_041_7858

    rst $08
    ld e, e
    ld de, $fff6
    rst $18
    ld d, [hl]
    ld [bc], a
    jr jr_041_7805

jr_041_7858:
    ldh a, [$90]
    and $02
    jr z, jr_041_7805

    ld a, [$c3f8]
    rst $18
    inc c
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld hl, $c83c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    rst $18
    ld [$f148], sp
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_041_7879:
    rst $18
    ld b, d
    ld [de], a
    ld a, $ff
    ld [$c3fd], a
    ret


Call_041_7882:
    rst $18

    db $00, $17

    ld a, $ff
    ld [$c3fd], a
    ret


Call_041_788b:
    xor a
    ld [$c4bd], a
    rst $18
    nop
    ld c, $3e
    rst $38
    ld [$c3fd], a
    ret


Call_041_7898:
    xor a
    ld [$c4bd], a
    rst $18
    inc b
    ld a, $3e
    rst $38
    ld [$c3fd], a
    ret


Call_041_78a5:
    ld a, [$c834]
    cp $02
    jr z, jr_041_78b9

    xor a
    ld [$c4bd], a
    rst $18
    nop
    ld c, $3e
    rst $38
    ld [$c3fd], a
    ret


jr_041_78b9:
    xor a
    ld [$c4bd], a
    rst $18
    inc b
    ld a, $3e
    rst $38
    ld [$c3fd], a
    ret


Call_041_78c6:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    call Call_000_0684
    rst $18

    db $1a, $03

    call Call_000_2e3b
    ld hl, $1495
    call Call_041_7bbd
    ld de, $da00
    rst $18

    db $26, $03

    ld hl, $1496
    call Call_041_7bbd
    ld de, $da30
    rst $18

    db $26, $03

    ld hl, $da00
    ld de, $8da0
    ld c, $06
    call Call_000_0468
    call Call_000_2e3b
    call Call_000_068a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    call Call_041_707c
    ld a, $c0
    ld [$c3fc], a
    ld hl, $c3fa
    ld [hl], $83
    ld hl, $c3fb
    ld [hl], $83
    ld hl, $1487
    ld bc, $7775
    ld de, $0205
    rst $20

    db $00, $06

    call Call_041_6ff4
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    rst $28

    db $00, $06

    ret


Call_041_7935:
    rst $08

    db $5d

    ld hl, $1491
    rst $18

    db $0e, $0a

    ld a, $80
    rst $18

    db $08, $0a

    ret


Call_041_7943:
    xor a
    ld b, a
    rst $18
    ld [hl+], a
    ld b, c
    ld a, $fa
    ld [$c441], a
    ld a, $fa
    ld [$c46a], a
    ld hl, $c2a0
    ld de, $c466
    ld bc, $0004
    call Call_000_03d3
    ld a, [$c2a4]
    ld [$c465], a
    ret


Call_041_7965:
    rst $18
    ld e, b
    ld a, [bc]
    ret


Call_041_7969:
    ld a, [$c3fc]
    and $0f
    cp $02
    jr z, jr_041_7991

    cp $01
    jr z, jr_041_7978

    jr jr_041_79a6

jr_041_7978:
    rst $08
    adc e
    ld hl, $c82d
    ld a, [hl]
    and $7f
    inc a
    ld b, a
    sub $03
    jr z, jr_041_798c

    ld a, b
    or $80
    ld [hl], a
    jr jr_041_79a6

jr_041_798c:
    ld a, $80
    ld [hl], a
    jr jr_041_79a6

jr_041_7991:
    rst $08
    adc e
    ld hl, $c82d
    ld a, [hl]
    and $7f
    dec a
    bit 7, a
    jr nz, jr_041_79a3

    or $80
    ld [hl], a
    jr jr_041_79a6

jr_041_79a3:
    ld a, $82
    ld [hl], a

jr_041_79a6:
    ret


Jump_041_79a7:
    rst $28
    jr nz, jr_041_79b0

    rst $28
    ld b, b
    ld b, $21
    adc e
    inc d

jr_041_79b0:
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
    jr nz, jr_041_79eb

    ld a, [$c82d]
    res 7, a
    ld [$c82d], a
    ld bc, $ffff
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $00
    ld [$c450], a
    ld a, $01
    ld [$c46a], a
    ld a, $fa
    ld [$c441], a
    jp Jump_041_7078


jr_041_79eb:
    cp $ff
    jr nz, jr_041_7a08

    call Call_041_7a65
    ld a, $03
    ld [$c3f9], a
    ld a, [$c4b8]
    and a
    jr nz, jr_041_7a02

    rst $20
    jr nz, jr_041_7a06

    jr @+$05

jr_041_7a02:
    rst $20
    ld b, b
    ld b, $c3

jr_041_7a06:
    db $f4
    ld l, a

jr_041_7a08:
    ld hl, $148d
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, $01
    ld [$c3f9], a
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
    jr nz, jr_041_7a3a

    ld a, $00
    ld [$c450], a
    ld a, $02
    ld [$c46a], a
    ld a, $fa
    ld [$c441], a
    jp Jump_041_7078


jr_041_7a3a:
    call Call_041_7a65
    ld a, $03
    ld [$c3f9], a
    ld a, [$c4b8]
    and a
    jr nz, jr_041_7a4d

    rst $20
    jr nz, jr_041_7a51

    jr @+$05

jr_041_7a4d:
    rst $20
    ld b, b
    ld b, $c3

jr_041_7a51:
    db $f4
    ld l, a

Call_041_7a53:
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld hl, $147f
    ld bc, $7317
    ld de, $0502
    ret


Call_041_7a65:
    ldh a, [$96]
    push af
    rst $18
    ld a, [de]
    inc bc
    call Call_000_0684
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $1492
    call Call_041_7bbd
    ld de, $da00
    rst $18
    ld h, $03
    ld hl, $1493
    call Call_041_7bbd
    ld de, $da50
    rst $18
    ld h, $03
    ld hl, $1494
    call Call_041_7bbd
    ld de, $daa0
    rst $18
    ld h, $03
    ld hl, $da00
    ld de, $8d10
    ld c, $0f
    call Call_000_0468
    call Call_000_2e3b
    call Call_000_068a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c450]
    cp $02
    jr z, jr_041_7ad2

    call Call_041_707c
    ld a, $a0
    ld [$c3fc], a
    ld a, $84
    ld [$c3fa], a
    ld [$c3fb], a
    ld hl, $1480
    ld bc, $73dc
    ld de, $0204
    rst $20
    jr nz, jr_041_7ad7

    ret


jr_041_7ad2:
    call Call_041_707c
    ld a, $90

jr_041_7ad7:
    ld [$c3fc], a
    ld a, $88
    ld [$c3fa], a
    ld [$c3fb], a
    ld hl, $1481
    ld bc, $7409
    ld de, $0203
    rst $20
    ld b, b
    ld b, $c9

Call_041_7aef:
    ld a, [$c2a5]
    and $0f
    cp $0f
    jr nz, jr_041_7b0a

    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld hl, $1483
    ld bc, $743f
    ld de, $0402
    ret


jr_041_7b0a:
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld hl, $1482
    ld bc, $743f
    ld de, $0402
    ret


Call_041_7b1c:
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld hl, $1482
    ld bc, $756f
    ld de, $0402
    ret


Call_041_7b2e:
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld hl, $c3fa
    ld [hl], $98
    ld hl, $c3fb
    ld [hl], $98
    ld hl, $1484
    ld bc, $7654
    ld de, $0300
    rst $20

    db $60, $06

    ret


Call_041_7b4d:
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld hl, $c3fa
    ld [hl], $86
    ld hl, $c3fb
    ld [hl], $86
    ld hl, $1485
    ld bc, $76ff
    ld de, $0303
    rst $20
    add b
    ld b, $c9

Call_041_7b6c:
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld hl, $1486
    ld bc, $7741
    ld de, $0305
    ret


Call_041_7b7e:
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld hl, $1488
    ld bc, $76b9
    ld de, $0504
    ret


Call_041_7b90:
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld hl, $1489
    ld bc, $76d7
    ld de, $0204
    ret


Call_041_7ba2:
    call Call_041_707c
    ld hl, $c3fc
    set 7, [hl]
    ld hl, $148a
    ld bc, $775b
    ld de, $0305
    ret


Call_041_7bb4:
    ld h, $80
    call Call_041_726c
    call Call_000_04b4
    ret


Call_041_7bbd:
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $dc00
    ld b, $10
    xor a

jr_041_7bc9:
    ld [de], a
    inc de
    dec b
    jr nz, jr_041_7bc9

    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $24, $05

    ld hl, $c600
    ld de, $dc00

jr_041_7bdd:
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld b, a
    and a
    jr z, jr_041_7bf3

    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [de], a
    inc de
    jr jr_041_7bdd

jr_041_7bf3:
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $dc00
    ret


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
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
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
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_041_7c44

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_041_7c4a

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_041_7c50

    ld b, $00
    nop
    nop
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
    ld [$0808], sp
    ld [$0808], sp

jr_041_7c44:
    ld [$0808], sp
    ld [$0808], sp

jr_041_7c4a:
    ld [$0808], sp
    ld [$0808], sp

jr_041_7c50:
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_041_7c7d:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7bfd
    ld de, $d400
    ld c, $02
    call Call_000_03eb
    xor a

jr_041_7c96:
    cp $10
    jr z, jr_041_7cb3

    push af
    ld hl, $0020
    call Call_000_08b9
    ld de, $d420
    add hl, de
    push hl
    pop de
    ld hl, $7c1d
    ld c, $02
    call Call_000_03eb
    pop af
    inc a
    jr jr_041_7c96

jr_041_7cb3:
    ld hl, $7c3d
    ld de, $d620
    ld c, $02
    call Call_000_03eb
    xor a

jr_041_7cbf:
    cp $12
    jr z, jr_041_7cdc

    push af
    ld hl, $0020
    call Call_000_08b9
    ld de, $d000
    add hl, de
    push hl
    pop de
    ld hl, $7c5d
    ld c, $02
    call Call_000_03eb
    pop af
    inc a
    jr jr_041_7cbf

jr_041_7cdc:
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
    ld hl, $c800
    ld a, l
    add $1a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rst $18
    ld d, [hl]
    dec b
    ld de, $d547
    ld hl, $149d
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
    cp $09
    jr z, jr_041_7d7a

    ld hl, $14a8
    dec a
    ld d, $00
    ld e, a
    add hl, de
    ld de, $d587
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
    ld de, $d5c7
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
    ld de, $d607
    ld hl, $14a0
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    jr jr_041_7d90

jr_041_7d7a:
    ld hl, $c960
    ld a, [hl]
    rst $18
    ld d, [hl]
    ld a, [bc]
    ld hl, $012c
    ld d, $00
    ld e, a
    add hl, de
    ld de, $d587
    ld c, $20
    rst $18
    ld [hl+], a
    dec b

jr_041_7d90:
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $d400
    ld de, $9800
    ld c, $24
    call Call_000_04db
    call Call_000_0804
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
    call Call_000_23b6
    rst $18
    nop
    dec b
    rst $18
    ld a, [bc]
    ld bc, $41cd
    inc bc
    call Call_041_7c7d
    ld a, $90
    ldh [rWY], a
    call Call_000_2683
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d504
    ld [hl], $00
    rst $18
    inc b
    ld b, d
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_0371
    ld a, $03
    ld hl, $7e03
    call Call_000_23e8
    call Call_000_2e3b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7e03
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $18
    ld b, $42
    ret


    call Call_000_23b6
    rst $18
    ld a, [bc]
    ld bc, $41cd
    inc bc
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld [$c320], a
    ld [$c321], a
    ld [$c322], a
    ld [$c323], a
    ld a, $90
    ldh [rWY], a
    call Call_000_2683
    ld hl, $7f91
    ld de, $0001
    call Call_000_0595
    call Call_041_7ef1
    call Call_000_0371
    rst $08
    nop
    rst $08
    inc bc
    ld c, $08
    call Call_000_258d
    call Call_000_2625

Jump_041_7e43:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d630]
    dec a
    ld [$d630], a
    jr nz, jr_041_7ec3

    ld a, $02
    ld [$d630], a
    ld a, [$d634]
    and a
    jr nz, jr_041_7ec3

    ldh a, [$8a]
    inc a
    ldh [$8a], a
    and $0f
    jr nz, jr_041_7ec3

    ld hl, $d632
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d020
    call Call_041_7f60
    call Call_041_7f5a
    and a
    jr nz, jr_041_7e8b

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d634], a
    jr jr_041_7ec3

jr_041_7e8b:
    ld de, $0090
    call Call_041_7f41
    push de
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $02
    call Call_000_0468
    pop de
    ld hl, $0020
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d020
    ld c, $02
    call Call_000_0468
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d632
    ld b, h
    ld c, l
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    ld h, b
    ld l, c
    ld a, e
    ld [hl+], a
    ld [hl], d

jr_041_7ec3:
    ld a, [$d634]
    and a
    jr z, jr_041_7ecf

    ldh a, [$90]
    and $0b
    jr nz, jr_041_7ee5

jr_041_7ecf:
    call Call_000_2e3b
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld b, $40
    ld hl, $d000

jr_041_7ede:
    ld [hl+], a
    inc b
    jr nz, jr_041_7ede

    jp Jump_041_7e43


jr_041_7ee5:
    ld c, $01
    call Call_000_25a1
    call Call_000_2625
    rst $18
    ld [$c901], sp

Call_041_7ef1:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d630
    ld a, $02
    ld [hl+], a
    ld [hl+], a
    ld de, $181c
    ld a, e
    ld [hl+], a
    ld [hl], d
    xor a
    ld [$d634], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $0400
    ld d, $00
    ld hl, $d000
    call Call_041_48e5
    ld hl, $d000
    ld de, $b800
    ld c, $40
    call Call_000_04db
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $0400
    ld d, $20
    ld hl, $d000
    call Call_041_48e5
    ld hl, $d000
    ld de, $9800
    ld c, $40
    call Call_000_04db
    ret


Call_041_7f41:
    ldh a, [$8a]
    ld h, $00
    ld l, a
    add hl, de
    sla l
    rl h
    sla l
    rl h
    ld a, h
    and $03
    ld h, a
    ld de, $9800
    add hl, de
    ld d, h
    ld e, l
    ret


Call_041_7f5a:
    ld a, [$d020]
    sub $23
    ret


Call_041_7f60:
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    inc h
    dec b
    ld hl, $c600

jr_041_7f6c:
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    and a
    jr z, jr_041_7f8a

    ld b, a
    sub $60
    jr c, jr_041_7f7f

    ld a, b
    sub $20
    ld b, a

jr_041_7f7f:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [de], a
    inc de
    jr jr_041_7f6c

jr_041_7f8a:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ret


    add b
    jr @-$7e

    jr @-$10

    db $10
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

Call_041_7fe1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
