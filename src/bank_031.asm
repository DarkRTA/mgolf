; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

    db $10, $40

    sub l
    ld b, a
    ld b, [hl]
    ld c, c
    jp nc, $ce52

    ld e, e
    ld e, a
    ld h, h
    ld h, a
    ld [hl], b
    or c
    db $76

    db $3f, $40, $46, $40, $1e, $40, $4f, $40, $50, $40, $51, $40, $52, $40, $be, $7c
    db $00, $0a, $00, $ff, $00, $00, $00, $40, $01, $15, $be, $7c, $00, $15, $00, $0b
    db $00, $00, $00, $40, $01, $13, $00, $00, $00, $00, $00, $00, $00, $00, $ff, $01
    db $c0, $00, $01, $00, $01

    rst $38

    db $01, $ff, $00, $00, $00, $00, $05, $02

    rst $38
    rst $38
    rst $38
    rst $38

    call Call_031_43b9
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
    jr c, jr_031_409c

    ld d, h
    ld l, h
    ld a, e
    ld b, a
    ld e, l
    ld h, e
    ld l, $31
    rla
    jr jr_031_407a

    inc c
    dec c
    ld c, $15
    ld a, [de]
    rra
    db $10
    rla
    jr jr_031_4084

    inc c

jr_031_407a:
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_4084:
    nop
    nop
    ldh a, [$f0]
    ld l, b
    sbc b
    db $f4
    inc c
    db $fc
    inc b
    ld a, [$f606]
    ld c, $f9
    rlca
    db $fd
    inc bc
    sbc d
    ld h, [hl]
    ld d, h
    db $ec
    xor b
    ret c

jr_031_409c:
    sub b
    ldh a, [$60]
    ld h, b

    db $2f, $1d, $00, $7c, $1f, $00, $00, $00, $67, $29, $ff, $6b, $58, $1e, $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    rra
    ld de, $223e
    ld a, $22
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, a
    ld b, e
    ld a, a
    ld b, b
    ccf
    jr nz, jr_031_4110

    jr nz, jr_031_40f2

    ld de, $0e0e
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
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
    nop
    nop
    nop
    nop

jr_031_40f2:
    ld a, $3e
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp Jump_000_00c3


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add c
    add e
    add d

jr_031_4110:
    adc a
    adc h
    rra
    db $10
    ld a, a
    ld h, c
    cp $86
    ld hl, sp+$18
    ldh [$60], a
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
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp-$78
    db $fc
    add h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    db $fc
    add h
    ld hl, sp-$78
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
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
    ld b, $06
    add hl, bc
    rrca
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ld [$060f], sp
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$1f17], sp
    db $10
    rra
    db $10
    rra
    ld de, $0a1f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8101
    add c
    add d
    add e
    ld b, d
    jp $c744


    inc h
    rst $20
    jr @+$01

    adc c
    rst $38
    ld b, d
    ld a, [hl]
    ld [hl+], a
    ld a, $21
    ccf
    ld c, c
    ld a, a
    sub h
    rst $30
    ld [hl+], a
    db $e3
    ld b, c
    pop bc
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
    ld h, b
    ld h, b

jr_031_41f4:
    sub b
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [rLCDC], a
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
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_031_41f4

    and b
    ldh [$50], a
    ld [hl], b
    jr z, @+$3a

    inc d
    inc e
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $10, $08, $00, $00, $20, $08, $02, $00, $10, $10, $04, $00, $20, $10, $06, $00
    db $10, $18, $08, $00, $20, $18, $0a, $00, $80, $10, $08, $00, $00, $20, $08, $02
    db $00, $10, $10, $04, $00, $20, $10, $06, $00, $10, $18, $08, $00, $20, $18, $0a
    db $00, $80

Call_031_4262:
    call Call_000_0341
    ld a, $00
    ldh [rVBK], a
    ld hl, $4060
    ld de, $8600
    ld c, $04
    call Call_000_2096
    ld hl, $40a0
    ld de, $0a02
    call Call_000_0595
    ld hl, $40b0
    ld de, $8400
    ld c, $20
    call Call_000_2096
    call Call_000_0371
    ret


Call_031_428c:
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $1c, $05

    ld hl, $d084
    ld de, $d484
    ld bc, $06e0
    ld a, $20
    rst $18

    db $08, $06

    ld hl, $d08d
    ld de, $d48d
    ld bc, $07f0
    ld a, $20
    rst $18

    db $08, $06

    ld hl, $d080
    ld de, $9880
    ld c, $06
    call Call_000_0468
    ld hl, $d480
    ld de, $b880
    ld c, $06
    call Call_000_0468
    ret


Call_031_42c8:
    ld hl, $42e7
    add a
    add l
    ld l, a
    jr nc, jr_031_42d1

    inc h

jr_031_42d1:
    ld a, [hl+]
    ld b, $06
    ld de, $8e00
    rst $18

    db $06, $06

    ld a, [hl+]
    ld b, $07
    ld de, $8f00
    rst $18

    db $06, $06

    call Call_000_2e3b
    ret


    db $05, $04, $03, $00

    ld [bc], a
    db $01

    db $06, $07

Call_031_42ef:
    call Call_000_2e3b
    and a
    jr z, jr_031_4337

    jr jr_031_4315

jr_031_42f7:
    ldh a, [$94]
    bit 1, a
    jr nz, jr_031_430f

    bit 0, a
    jr nz, jr_031_430b

    bit 5, a
    jr nz, jr_031_4315

    bit 4, a
    jr nz, jr_031_4337

    jr jr_031_4357

jr_031_430b:
    rst $08

    db $5c

    jr jr_031_435c

jr_031_430f:
    rst $08
    ld e, l
    ld h, $ff
    jr jr_031_435c

jr_031_4315:
    ld a, [$c471]
    cp $30
    jr z, jr_031_4333

    ld a, $30
    ld [$c471], a
    ld a, $40
    ld [$c472], a
    ld a, $02
    ld bc, $0800
    ld de, $0700
    rst $18

    db $22, $0a

    rst $08

    db $5b

jr_031_4333:
    ld h, $01
    jr jr_031_4357

jr_031_4337:
    ld a, [$c471]
    cp $78
    jr z, jr_031_4355

    ld a, $78
    ld [$c471], a
    ld a, $40
    ld [$c472], a
    ld a, $02
    ld bc, $0c00
    ld de, $0700
    rst $18

    db $22, $0a

    rst $08

    db $5b

jr_031_4355:
    ld h, $00

jr_031_4357:
    call Call_000_2e3b
    jr jr_031_42f7

jr_031_435c:
    ld a, h
    ret


Call_031_435e:
    ld a, [$c471]
    ld d, a
    ld a, [$c472]
    ld e, a
    ld a, [$c4b2]
    rrca
    and $07
    add d
    ld d, a
    ld a, [$c4b2]
    rrca
    and $07
    add e
    ld e, a
    ld bc, $0360
    call Call_000_26a4
    ret


Call_031_437d:
    ld a, [$c470]
    and a
    jr z, jr_031_43b1

    ld hl, $4230
    ld bc, $0240
    ld de, $2020
    bit 0, a
    jr z, jr_031_4396

    ld hl, $4249
    ld bc, $024c

jr_031_4396:
    push af
    call Call_000_26ea
    pop af
    ld hl, $4230
    ld bc, $0240
    ld de, $6820
    bit 1, a
    jr z, jr_031_43ae

    ld hl, $4249
    ld bc, $024c

jr_031_43ae:
    call Call_000_26ea

jr_031_43b1:
    ret


    call Call_031_437d
    call Call_031_435e
    ret


Call_031_43b9:
    rst $18

    db $14, $02

    call Call_000_2cf9
    rst $20

    db $80, $03

    call Call_031_4262
    xor a
    ld [$c470], a
    ldh [$8b], a
    ldh [$8a], a
    ld a, $f0
    ld [$c471], a
    ld a, $f0
    ld [$c472], a
    ld hl, $0845
    rst $18

    db $0e, $0a

    ld a, $01
    ld hl, $43b2
    call Call_000_23e8
    ld a, [$c296]
    ld bc, $3f00
    ld de, $3f00
    rst $18

    db $20, $0a

    ld a, [$c298]
    ld bc, $3f00
    ld de, $3f00
    rst $18

    db $20, $0a

    ld c, $08
    call Call_000_25af
    call Call_000_2625
    call Call_000_2ed5

    db $01

    ld a, $03
    ld bc, $0a00
    ld de, $0b00
    rst $18

    db $22, $0a

    ld a, $03
    rst $18

    db $1e, $0a

    ld a, $03
    ld b, $40
    rst $18

    db $2c, $0a

    push af
    ld a, $14
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $03
    rst $18

    db $34, $0a

    push af
    ld a, $14
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld bc, $0200
    ld de, $0b00
    rst $18

    db $22, $0a

    ld a, $03
    rst $18

    db $1e, $0a

    ld a, $03
    ld b, $40
    rst $18

    db $2c, $0a

    push af
    ld a, $14
    rst $18

    db $04, $0a

    pop af
    ld a, $8b
    rst $18

    db $08, $0a

    ld a, $8b
    rst $18

    db $08, $0a

    ld a, $02
    ld bc, $0a00
    ld de, $0700
    rst $18

    db $22, $0a

    ld a, $02
    rst $18

    db $1e, $0a

    call Call_031_428c

Jump_031_4476:
    ld a, $00
    call Call_031_42c8
    xor a
    ld [$c470], a
    ld hl, $0847
    rst $18

    db $0e, $0a

    ld a, $8b
    rst $18

    db $0a, $0a

jr_031_448a:
    ld a, $00
    call Call_031_42ef
    cp $ff
    jr z, jr_031_448a

    ld [$c473], a
    rst $28

    db $00, $00

    or a
    jr z, jr_031_449f

    rst $20
    nop
    nop

jr_031_449f:
    push af
    inc a
    ld [$c470], a
    ld a, $f0
    ld [$c471], a
    rst $18

    db $0c, $0a

    ld a, $02
    ld bc, $0a00
    ld de, $0700
    rst $18

    db $22, $0a

    ld a, $02
    rst $18

    db $1e, $0a

    ld a, $02
    ld b, $40
    rst $18

    db $2c, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $02
    rst $18

    db $34, $0a

    push af
    ld a, $14
    rst $18

    db $04, $0a

    pop af
    pop af

Jump_031_44df:
    ld a, [$c473]
    inc a
    call Call_031_42c8
    xor a
    ld [$c470], a
    ld hl, $0848
    rst $18

    db $0e, $0a

    ld a, $8b
    rst $18

    db $0a, $0a

    ld a, $00
    call Call_031_42ef
    cp $ff
    jr nz, jr_031_453d

    ld a, $ff
    ld [$c470], a
    ld a, $f0
    ld [$c471], a
    ld a, $02
    ld bc, $0a00
    ld de, $0700
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
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
    jp Jump_031_4476


jr_031_453d:
    rst $28

    db $20, $00

    or a
    jr z, jr_031_4546

    rst $20

    db $20, $00

jr_031_4546:
    inc a
    ld [$c470], a
    ld a, $f0
    ld [$c471], a
    rst $18

    db $0c, $0a

    ld a, $02
    ld bc, $0a00
    ld de, $0700
    rst $18

    db $22, $0a

    ld a, $02
    rst $18

    db $1e, $0a

    ld a, $02
    ld b, $40
    rst $18

    db $2c, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $02
    rst $18

    db $34, $0a

    push af
    ld a, $14
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    call Call_031_42c8
    xor a
    ld [$c470], a
    ld hl, $0849
    rst $18

    db $0e, $0a

    ld a, $8b
    rst $18

    db $0a, $0a

    ld a, $00
    call Call_031_42ef
    cp $ff
    jr nz, jr_031_45e0

    ld a, $ff
    ld [$c470], a
    ld a, $f0
    ld [$c471], a
    ld a, $02
    ld bc, $0a00
    ld de, $0700
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
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
    jp Jump_031_44df


jr_031_45e0:
    rst $28

    db $40, $00

    or a
    jr z, jr_031_45e9

    rst $20

    db $40, $00

jr_031_45e9:
    inc a
    ld [$c470], a
    ld a, $f0
    ld [$c471], a
    rst $18

    db $0c, $0a

    ld a, $02
    ld bc, $0a00
    ld de, $0700
    rst $18

    db $22, $0a

    ld a, $02
    rst $18

    db $1e, $0a

    ld a, $02
    ld b, $40
    rst $18

    db $2c, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $02
    rst $18

    db $34, $0a

    push af
    ld a, $14
    rst $18

    db $04, $0a

    pop af

Jump_031_4627:
    xor a
    rst $30

    db $00, $00

    jr z, jr_031_462f

    set 0, a

jr_031_462f:
    rst $30

    db $20, $00

    jr z, jr_031_4636

    set 1, a

jr_031_4636:
    ld hl, $4791
    add l
    ld l, a
    jr nc, jr_031_463e

    inc h

jr_031_463e:
    ld d, [hl]
    xor a
    rst $18

    db $16, $02

    ld hl, $c811
    rst $30

    db $40, $00

    jr z, jr_031_464d

    ld [hl], $01

jr_031_464d:
    call Call_000_0a61
    ld a, h
    and $07
    cp $06
    jr nz, jr_031_4658

    xor a

jr_031_4658:
    ld [$c83e], a
    xor a
    ld [$c470], a
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    rst $28

    db $80, $03

    rst $20

    db $00, $03

    rst $20

    db $80, $02

    xor a
    ld c, $00
    rst $18

    db $24, $41

    rst $28

    db $80, $02

    rst $28

    db $00, $03

    rst $20

    db $80, $03

    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_031_4262
    call Call_000_2e3b
    rst $18

    db $1c, $05

    call Call_000_2e3b
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $9800
    ld c, $24
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d400
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    pop af
    and a
    jr nz, jr_031_46c6

    call Call_000_2e3b
    call Call_031_428c
    jp Jump_031_4476


jr_031_46c6:
    ld hl, $084a
    rst $18

    db $0e, $0a

    ld a, $8b
    rst $18

    db $08, $0a

    xor a
    ld [$c470], a
    rst $20

    db $80, $02

    rst $18

    db $02, $06

    rst $28

    db $80, $02

    cp $ff
    jr nz, jr_031_46f0

    rst $20
    add b
    ld [bc], a
    ld c, $7f
    call Call_000_25a1
    call Call_000_2625
    jp Jump_031_4627


jr_031_46f0:
    rst $28

    db $c0, $02

    ld a, [$c82d]
    and $7f
    ld [$c82d], a
    rst $18

    db $1c, $05

    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $9800
    ld c, $24
    call Call_000_0468
    ld hl, $d400
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $084b
    rst $18

    db $0e, $0a

    ld a, $8b
    rst $18

    db $08, $0a

    ld hl, $43b2
    call Call_000_2449
    call Call_000_2ed5

    db $0a

    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    push af
    ld a, $46
    rst $18

    db $04, $0a

    pop af
    ld hl, $c210
    ld bc, $0030
    call Call_000_039f
    rst $20

    db $80, $02

    ld c, $04
    call Call_000_25af
    call Call_000_2625
    rst $08

    db $00

    ld hl, $c82d
    set 7, [hl]
    ld hl, $0486
    rst $18

    db $0e, $0a

    ld a, $86
    rst $18

    db $0a, $0a

    push af
    ld a, $6e
    rst $18

    db $04, $0a

    pop af
    rst $18

    db $0c, $0a

    ld hl, $c82d
    res 7, [hl]
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    push af
    ld a, $3c
    rst $18

    db $04, $0a

    pop af
    rst $28

    db $80, $02

    ld a, $01
    ld [$c441], a
    rst $20

    db $20, $0c

    rst $28

    db $80, $03

    ret


    nop
    db $01

    db $03

    ld [bc], a
    xor h
    ld b, a
    or e
    ld b, a
    and e
    ld b, a
    call nc, $d547
    ld b, a
    sub $47
    rst $10
    ld b, a
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
    add hl, bc
    nop
    add hl, bc
    rst $38
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
    ld e, $01
    ld a, [bc]
    rst $38
    nop
    nop
    nop
    nop
    rra
    ld [bc], a
    dec bc
    rst $38
    nop
    nop
    nop
    nop
    rra
    ld bc, $ffff
    rst $38
    rst $38
    call Call_000_2e3b
    ld hl, $11c0
    ld de, $0480
    call Call_000_1a03
    call Call_000_2e3b
    ld hl, $115c
    ld de, $0480
    call Call_000_1a03
    call Call_000_2e3b
    ld hl, $11f8
    ld de, $044c
    call Call_000_1a03
    push hl
    push de
    ld h, b
    ld l, c
    ld de, $090c
    call Call_000_22bc
    pop de
    pop hl
    call Call_000_2e3b
    ld hl, $11f8
    ld de, $0480
    call Call_000_1a03
    push hl
    push de
    ld h, b
    ld l, c
    ld de, $090d
    call Call_000_22bc
    pop de
    pop hl
    call Call_000_2e3b
    ld hl, $11f8
    ld de, $04e4
    call Call_000_1a03
    push hl
    push de
    ld h, b
    ld l, c
    ld de, $090e
    call Call_000_22bc
    pop de
    pop hl
    call Call_000_2e3b
    call Call_031_483e
    ret


Call_031_483e:
    ld a, $00
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld c, $08
    call Call_000_25af
    call Call_000_2625

jr_031_484d:
    ld hl, $0085
    ld de, $0101
    rst $18
    ld b, h
    ld a, [bc]
    cp $ff
    jr z, jr_031_484d

    add a
    ld hl, $4867
    add l
    ld l, a
    jr nc, jr_031_4863

    inc h

jr_031_4863:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], e
    ld c, b
    and e
    ld c, b
    db $d3
    ld c, b
    ld [bc], a
    ld c, c
    ld [de], a
    ld c, c
    ld b, b
    ld c, c
    rst $18
    inc e
    db $10
    ld a, [$c450]
    ld b, a
    ld a, [$c46a]
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $01
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0101
    rst $18
    db $10
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_48b0

    jp Jump_031_4945


    rst $18
    inc e
    db $10
    ld a, [$c450]
    ld b, a
    ld a, [$c46a]
    ld c, a
    rst $18
    ld c, [hl]

jr_031_48b0:
    ld a, [bc]
    ld a, $02
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $8001
    rst $18
    ld e, $02
    ld hl, $0103
    rst $18
    db $10
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_48e0

    jp Jump_031_4945


    rst $18
    inc e
    db $10
    ld a, [$c450]
    ld b, a
    ld a, [$c46a]
    ld c, a
    rst $18
    ld c, [hl]

jr_031_48e0:
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0102
    rst $18
    db $10
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_4910

    jr jr_031_4945

    rst $18
    inc e
    db $10
    rst $18
    ld e, b
    ld a, [bc]
    rst $18
    jr nc, @+$12

    ld a, $04
    ld [$c441], a

jr_031_4910:
    jr jr_031_4945

    rst $18
    inc e
    db $10
    ld a, $02
    ld [$c836], a
    ld a, $0b
    ld [$c837], a
    ld a, $01
    ld [$c834], a
    ld a, $00
    ld [$c4bd], a
    ld a, $00
    ld [$c83a], a
    ld a, $00
    ld [$c890], a
    ld a, $04
    ld [$c8d0], a
    rst $18
    nop
    ld c, $df
    jr nc, jr_031_494e

    jr jr_031_4945

    ld a, $05
    ld [$c441], a

Jump_031_4945:
jr_031_4945:
    ret


    and l
    ld c, c
    call c, Call_031_5449
    ld c, c
    sub a
    ld c, e

jr_031_494e:
    ret nz

    ld c, e
    db $db
    ld c, e
    db $ec
    ld c, e
    add hl, de
    ld a, l
    nop
    jr jr_031_4959

jr_031_4959:
    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $2416
    ld a, l
    nop
    inc d
    nop
    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $2d16
    ld a, l
    nop
    jr nz, jr_031_4971

jr_031_4971:
    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $be0d
    ld a, h
    nop
    inc h
    nop
    add hl, sp
    nop
    nop
    nop
    add b
    ld bc, $be0e
    ld a, h
    nop
    ld h, $00
    inc a
    nop
    nop
    nop
    add b
    ld bc, $be0a
    ld a, h
    nop
    inc e
    nop
    scf
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
    ld a, [de]
    nop
    dec a
    ld [bc], a
    ld b, b
    nop
    dec e
    nop
    inc sp
    inc b
    ret nz

    nop
    inc d
    nop
    dec sp
    dec b
    ret nz

    nop
    jr nz, jr_031_49bc

jr_031_49bc:
    dec sp
    ld b, $c0
    nop
    inc d
    nop
    dec sp
    rlca
    ret nz

    nop
    jr nz, jr_031_49c8

jr_031_49c8:
    dec sp
    ld [$00c0], sp
    inc d
    nop
    dec sp
    add hl, bc
    ret nz

    nop
    jr nz, jr_031_49d4

jr_031_49d4:
    dec sp
    ld h, e
    ld b, b
    nop
    dec de
    nop
    add hl, hl
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [$0203], sp
    rst $38
    nop
    nop
    nop
    nop
    inc c
    ld [bc], a
    inc b
    rst $38
    nop
    nop
    nop
    nop
    inc c
    inc b
    dec b
    rst $38
    nop
    nop
    nop
    nop
    inc c
    dec b
    ld b, $ff
    nop
    nop
    nop
    nop
    inc c
    ld b, $07
    rst $38
    nop
    nop
    nop
    nop
    inc c
    rlca
    ld [$00ff], sp
    nop
    nop
    nop
    inc c
    ld [$ff09], sp
    nop
    nop
    nop
    nop
    inc c
    add hl, bc
    rst $38
    ld hl, $0d17
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
    jr nz, jr_031_4a45

    ld a, $02
    rst $18
    ld [$c90a], sp

jr_031_4a45:
    rst $18
    db $10
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld hl, $0d1b
    rst $18
    ld c, $0a
    ld a, $06
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
    jr nz, jr_031_4a76

    ld a, $06
    rst $18
    ld [$c90a], sp

jr_031_4a76:
    rst $18
    db $10
    ld a, [bc]
    ld a, $06
    rst $18
    ld [$c90a], sp
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$c90a], sp
    rst $30
    and b
    inc c
    jr z, jr_031_4a94

    call Call_031_4e9f
    ret


jr_031_4a94:
    ld hl, $102f
    rst $18
    ld c, $0a
    ld a, $03
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
    jr z, jr_031_4ab6

    ld a, $03
    rst $18
    ld [$180a], sp
    ld e, d

jr_031_4ab6:
    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    ld a, $0c
    ld b, a
    ld a, $04
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld hl, $4c88
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4f00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0707
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1400
    ld de, $3980
    rst $18
    jr nz, jr_031_4b0a

    ld de, $c005
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $4c98
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_031_4b0a:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_4b20

    ret


    rst $30
    ret nz

    inc c
    jr z, jr_031_4b1a

    call Call_031_512d
    ret


jr_031_4b1a:
    ld hl, $103f
    rst $18
    ld c, $0a

jr_031_4b20:
    ld a, $04
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
    jr z, jr_031_4b3c

    ld a, $04
    rst $18
    ld [$180a], sp
    ld e, d

jr_031_4b3c:
    rst $18
    db $10
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    ld a, $0c
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld hl, $4f66
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4e00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0707
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2000
    ld de, $38e0
    rst $18
    jr nz, jr_031_4b90

    ld de, $c005
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $4f76
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_031_4b90:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_4ba6

    ret


    ld [bc], a
    rst $38
    nop
    nop
    dec e
    ld c, d
    dec bc
    nop
    inc bc
    rst $38
    nop
    nop
    adc e
    ld c, d
    dec bc

jr_031_4ba6:
    nop
    inc b
    rst $38
    nop
    nop
    ld de, $0b4b
    nop
    dec b
    rst $38
    nop
    nop
    ld a, [de]
    dec c
    inc bc
    nop
    ld b, $ff
    nop
    nop
    dec de
    dec c
    inc bc
    nop
    rst $38
    ld bc, $00ff
    nop
    jr @+$7f

    ld b, $00
    rst $38
    rst $18
    nop
    ld a, [bc]
    ld hl, $0857
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
    ret


    ld c, e
    nop
    nop
    rrca
    rst $38
    nop
    nop
    db $f4
    ld d, c
    ld bc, $ff00
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, [$c46a]
    cp $01
    jr z, jr_031_4c03

    push af
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    pop af

jr_031_4c03:
    cp $04
    jr nz, jr_031_4c0d

    call Call_031_4ea9
    jp Jump_031_4c87


jr_031_4c0d:
    cp $05
    jr nz, jr_031_4c17

    call Call_031_5137
    jp Jump_031_4c87


jr_031_4c17:
    cp $06
    jr nz, jr_031_4c49

    call Call_031_4d9c
    rst $30
    ld b, b
    inc c
    jr z, jr_031_4c87

    rst $28
    ld b, b
    inc c
    rst $30
    ld b, b
    inc d
    jr nz, jr_031_4c87

    call Call_000_2ed5
    ld e, $e7
    ld b, b
    inc d
    ld de, $0014
    call Call_031_7da4
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $08
    ld [$c441], a
    jr jr_031_4c87

jr_031_4c49:
    cp $07
    jr nz, jr_031_4c7b

    call Call_031_507a
    rst $30
    ld b, b
    inc c
    jr z, jr_031_4c87

    rst $28
    ld b, b
    inc c
    rst $30
    ld h, b
    inc d
    jr nz, jr_031_4c87

    call Call_000_2ed5
    ld e, $e7
    ld h, b
    inc d
    ld de, $0014
    call Call_031_7da4
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $09
    ld [$c441], a
    jr jr_031_4c87

jr_031_4c7b:
    cp $fa
    jr nz, jr_031_4c87

    rst $30
    add b
    inc c
    jr z, jr_031_4c87

    rst $28
    add b
    inc c

Jump_031_4c87:
jr_031_4c87:
    ret


    nop
    nop
    inc d
    nop
    add b
    add hl, sp
    jp nc, Jump_000_00c4

    ld bc, $003c
    ld bc, $0000
    nop
    cp b
    ld c, h
    nop
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $1032
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $1033
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $1034
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $1035
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$96]
    push af
    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    inc [hl]
    ld c, l
    ld [hl], c
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $1037
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $1038
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $1039
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_031_4d81

    ld a, $08
    ld [$c961], a
    jr jr_031_4d93

jr_031_4d81:
    call Call_031_4e5a
    ld [$c968], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_031_4d93

    rst $20
    ld h, b
    inc c

jr_031_4d93:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_031_4d9c:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_031_4def

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $103c
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jr jr_031_4e44

jr_031_4def:
    cp $01
    jr nz, jr_031_4e07

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $103b
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$180a], sp
    dec a

jr_031_4e07:
    cp $02
    jr nz, jr_031_4e1f

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $103a
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$180a], sp
    dec h

jr_031_4e1f:
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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $103e
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c

jr_031_4e44:
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d24
    rst $18
    jr jr_031_4e59

    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_031_4e59:
    ret


Call_031_4e5a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    inc [hl]
    db $10
    cp $00
    jr nz, jr_031_4e9c

    ld hl, $d680
    ld bc, $000a
    add hl, bc
    ld b, [hl]
    inc hl
    ld a, [hl]
    bit 7, a
    jr z, jr_031_4e77

    cpl
    inc a

jr_031_4e77:
    ld c, a
    ld a, b
    cp $3c
    jr nz, jr_031_4e8e

    ld a, c
    or a
    jr nz, jr_031_4e8e

    dec hl
    dec hl
    ld a, [hl]
    or a
    jr z, jr_031_4e8a

    xor a
    jr jr_031_4e9e

jr_031_4e8a:
    ld a, $03
    jr jr_031_4e9e

jr_031_4e8e:
    ld a, b
    cp $34
    jr c, jr_031_4e9c

    ld a, c
    cp $04
    jr nc, jr_031_4e9c

    ld a, $01
    jr jr_031_4e9e

jr_031_4e9c:
    ld a, $02

jr_031_4e9e:
    ret


Call_031_4e9f:
    ld hl, $0d11
    rst $18
    ld c, $0a
    call Call_031_4ed5
    ret


Call_031_4ea9:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $1036
    rst $18
    ld c, $0a
    call Call_031_4ed5
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_4ed5:
    ld a, $03
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
    jr z, jr_031_4f09

    ld hl, $103d
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7d24
    rst $18
    jr jr_031_4f0a

    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    jr jr_031_4f65

jr_031_4f09:
    rst $20

jr_031_4f0a:
    and b
    inc c
    rst $18
    inc e
    db $10
    rst $30
    ld b, b
    inc d
    jr nz, jr_031_4f19

    ld a, $08
    ld [$c82c], a

jr_031_4f19:
    ld a, $0c
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0707
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1400
    ld de, $3980
    rst $18
    jr nz, jr_031_4f57

    ld e, $00
    ld bc, $c4d2
    rst $18
    ld h, $10
    ld de, $c005
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]

jr_031_4f57:
    ld hl, $4d14
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_4f75

jr_031_4f65:
    ret


    nop
    nop
    jr nz, jr_031_4f6a

jr_031_4f6a:
    ldh [$38], a
    ld b, b
    cp l
    inc bc
    nop
    inc a
    nop
    ld bc, $0000

jr_031_4f75:
    nop
    sub [hl]
    ld c, a
    sbc $4f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $1042
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $1043
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $1044
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $1045
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$96]
    push af
    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld [de], a
    ld d, b
    ld c, a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $1047
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $1048
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $1049
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_031_505f

    ld a, $09
    ld [$c961], a
    jr jr_031_5071

jr_031_505f:
    call Call_031_510d
    ld [$c968], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_031_5071

    rst $20
    ld h, b
    inc c

jr_031_5071:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_031_507a:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_031_50cd

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
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $104c
    rst $18
    ld c, d
    dec b
    rst $20
    ld b, b
    inc c
    rst $28
    ret nz

    inc c
    jr jr_031_50f7

jr_031_50cd:
    cp $01
    jr nz, jr_031_50e5

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $104b
    rst $18
    ld c, d
    dec b
    jr jr_031_50f7

jr_031_50e5:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $104a
    rst $18
    ld c, d
    dec b

jr_031_50f7:
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d2d
    rst $18
    jr jr_031_510c

    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_031_510c:
    ret


Call_031_510d:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $00a0
    call Call_031_7d53
    or a
    jr nz, jr_031_511f

    xor a
    jr jr_031_512c

jr_031_511f:
    rst $18
    inc [hl]
    db $10
    cp $06
    jr nz, jr_031_512a

    ld a, $01
    jr jr_031_512c

jr_031_512a:
    ld a, $02

jr_031_512c:
    ret


Call_031_512d:
    ld hl, $0d12
    rst $18
    ld c, $0a
    call Call_031_5163
    ret


Call_031_5137:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $1046
    rst $18
    ld c, $0a
    call Call_031_5163
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_5163:
    ld a, $04
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
    jr z, jr_031_5197

    ld hl, $104d
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7d2d
    rst $18
    jr jr_031_5198

    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    jr jr_031_51f3

jr_031_5197:
    rst $20

jr_031_5198:
    ret nz

    inc c
    rst $18
    inc e
    db $10
    rst $30
    ld h, b
    inc d
    jr nz, jr_031_51a7

    ld a, $08
    ld [$c82c], a

jr_031_51a7:
    ld a, $0c
    ld b, a
    ld a, $07
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0707
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2000
    ld de, $38e0
    rst $18
    jr nz, jr_031_51e5

    ld e, $03
    ld bc, $bd40
    rst $18
    ld h, $10
    ld de, $c005
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]

jr_031_51e5:
    ld hl, $4ff2
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_5203

jr_031_51f3:
    ret


    rst $18
    nop
    ld a, [bc]
    ld hl, $0c60
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    rst $18

jr_031_5203:
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
    jr z, jr_031_5214

    jr jr_031_5217

jr_031_5214:
    call Call_031_521b

jr_031_5217:
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_521b:
    rst $20
    add b
    inc c
    rst $18
    inc e
    db $10
    call Call_031_5263
    rst $18
    inc h
    db $10
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld a, $06
    ld [$c834], a
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $c2a2
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c2a0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rst $18
    jr nz, jr_031_525c

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $5296
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_031_525c:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_5272

    ret


Call_031_5263:
    ld a, [$c450]
    ld hl, $5276
    cp [hl]
    jr z, jr_031_527a

    inc hl
    cp [hl]
    jr z, jr_031_5281

    inc hl
    cp [hl]

jr_031_5272:
    jr z, jr_031_5288

    jr jr_031_528f

    inc c
    rrca
    ld [de], a
    dec d

jr_031_527a:
    ld hl, $0707
    rst $18
    db $10
    db $10
    ret


jr_031_5281:
    ld hl, $070a
    rst $18
    db $10
    db $10
    ret


jr_031_5288:
    ld hl, $070d
    rst $18
    db $10
    db $10
    ret


jr_031_528f:
    ld hl, $0710
    rst $18
    db $10
    db $10
    ret


    or [hl]
    ld d, d
    or a
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_52b1:
    nop
    nop
    nop
    nop
    nop
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]

jr_031_52bd:
    or a
    jr nz, jr_031_52c9

    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


jr_031_52c9:
    ld a, $01
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    dec h
    ld d, e
    ld e, h
    ld d, e
    ldh [rHDMA2], a
    ld a, l
    ld d, e
    ld sp, $3a55
    ld d, l
    ld b, e
    ld d, l
    add hl, de
    ld a, l
    nop
    inc h
    ret nz

    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $2416
    ld a, l
    nop
    jr nz, jr_031_52b1

    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $2d16
    ld a, l
    nop
    jr jr_031_52bd

    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $360d
    ld a, l
    nop
    inc d
    ret nz

    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $be0a
    ld a, h
    nop
    inc de
    nop
    dec a
    nop
    nop
    nop
    nop
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
    ld e, $00
    dec a
    ld [bc], a
    ret nz

    nop
    ld e, $00
    dec a
    inc b
    ret nz

    nop
    jr nz, jr_031_5336

jr_031_5336:
    inc a
    dec b
    ret nz

    nop
    jr jr_031_533c

jr_031_533c:
    inc a
    ld b, $c0
    nop
    jr nz, jr_031_5342

jr_031_5342:
    inc a
    rlca
    ret nz

    nop
    jr jr_031_5348

jr_031_5348:
    inc a
    ld [$00c0], sp
    jr nz, jr_031_534e

jr_031_534e:
    inc a
    add hl, bc
    ret nz

    nop
    jr jr_031_5354

jr_031_5354:
    inc a
    ld h, e
    ld b, b
    nop
    dec de
    nop
    add hl, hl
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    add hl, bc
    inc bc
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    rrca
    ld [bc], a
    ld [$00ff], sp
    nop
    nop
    nop
    rrca
    ld [$ff09], sp
    nop
    nop
    nop
    nop
    rrca
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    and [hl]
    ld d, e
    dec bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld c, $54
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    and d
    ld d, h
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    ld hl, $0b0d
    nop
    ld b, $ff
    nop
    nop
    ld [hl+], a
    dec c
    inc bc
    nop
    rst $38
    ld hl, $0d1c
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
    jr nz, jr_031_53ce

    ld a, $02
    rst $18
    ld [$c90a], sp

jr_031_53ce:
    rst $18
    db $10
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
    jr z, jr_031_53f0

    rst $18
    db $10
    ld a, [bc]

jr_031_53f0:
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$c90a], sp
    rst $30
    and b
    inc c
    jr z, jr_031_5417

    call Call_031_584c
    ret


jr_031_5417:
    ld hl, $104e
    rst $18
    ld c, $0a
    ld a, $03
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
    jr z, jr_031_5439

    ld a, $03
    rst $18
    ld [$180a], sp
    ld l, b

jr_031_5439:
    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    ld a, $0f
    ld b, a
    ld a, $04

Call_031_5449:
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld hl, $5600
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4f00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070a
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2000
    ld de, $3a80
    rst $18
    jr nz, @+$12

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ld a, $03
    ld [$c89d], a
    ld hl, $c89a
    ld de, $00d2
    ld a, e
    ld [hl+], a
    ld [hl], d
    ldh a, [$95]
    ld hl, $5610
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_54b1

    ret


    rst $30
    ret nz

    inc c
    jr z, jr_031_54ab

    call Call_031_5ada
    ret


jr_031_54ab:
    ld hl, $1061
    rst $18
    ld c, $0a

jr_031_54b1:
    ld a, $04
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
    jr z, jr_031_54cd

    ld a, $04
    rst $18
    ld [$180a], sp
    ld h, e

jr_031_54cd:
    rst $18
    db $10
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    ld a, $0f
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld hl, $5913
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4e00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070a
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $17c0
    ld de, $3a40
    rst $18
    jr nz, @+$12

    ld de, $4005
    rst $18
    ld [hl+], a
    db $10
    ld hl, $c89a
    ld de, $00d2
    ld a, e
    ld [hl+], a
    ld [hl], d
    ldh a, [$95]
    ld hl, $5923
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_5540

    ret


    ld bc, $00ff
    nop
    jr @+$7f

    ld b, $00
    rst $38
    rrca
    rst $38
    nop
    nop
    db $f4
    ld d, c

jr_031_5540:
    ld bc, $ff00
    ld a, [$c46a]
    cp $01
    jr z, jr_031_5552

    push af
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    pop af

jr_031_5552:
    cp $04
    jr nz, jr_031_555c

    call Call_031_5856
    jp Jump_031_55d6


jr_031_555c:
    cp $05
    jr nz, jr_031_5566

    call Call_031_5ae4
    jp Jump_031_55d6


jr_031_5566:
    cp $06
    jr nz, jr_031_5598

    call Call_031_5711
    rst $30
    ld b, b
    inc c
    jr z, jr_031_55d6

    rst $28
    ld b, b
    inc c
    rst $30
    ret nz

    inc d
    jr nz, jr_031_55d6

    call Call_000_2ed5
    ld e, $e7
    ret nz

    inc d
    ld de, $0019
    call Call_031_7da4
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $08
    ld [$c441], a
    jr jr_031_55d6

jr_031_5598:
    cp $07
    jr nz, jr_031_55ca

    call Call_031_5a27
    rst $30
    ld b, b
    inc c
    jr z, jr_031_55d6

    rst $28
    ld b, b
    inc c
    rst $30
    ldh [rNR14], a
    jr nz, jr_031_55d6

    call Call_000_2ed5
    ld e, $e7
    ldh [rNR14], a
    ld de, $0019
    call Call_031_7da4
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $09
    ld [$c441], a
    jr jr_031_55d6

jr_031_55ca:
    cp $fa
    jr nz, jr_031_55d6

    rst $30
    add b
    inc c
    jr z, jr_031_55d6

    rst $28
    add b
    inc c

Jump_031_55d6:
jr_031_55d6:
    ret


    ld bc, $0d0a
    ld c, $05
    nop
    dec c
    dec de
    ld bc, $0700
    add b
    nop
    ld bc, $0102
    ld b, [hl]
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $075a
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0746
    nop
    nop
    ld bc, $0102
    ld e, d
    inc c
    db $e3
    rst $38
    nop
    nop
    jr nz, jr_031_5604

jr_031_5604:
    add b
    ld a, [hl-]
    ret nz

    push bc
    nop
    nop
    inc a
    nop
    ld de, $0000
    nop
    jr nc, jr_031_5668

    ld l, l
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $1051
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $1052
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $1054
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af

jr_031_5668:
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$96]
    push af
    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    and c
    ld d, [hl]
    sbc $56
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $1058
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $1059
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $105a
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_031_56ee

    ld a, $08
    ld [$c961], a
    jr jr_031_5708

jr_031_56ee:
    ldh a, [$96]
    push af
    call Call_031_5800
    ld [$c968], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_031_5708

    rst $20
    ld h, b
    inc c

jr_031_5708:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_031_5711:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_031_5765

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $105d
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jp $57ea


jr_031_5765:
    cp $01
    jr nz, jr_031_577d

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $105c
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$180a], sp
    ld l, l

jr_031_577d:
    cp $02
    jr nz, jr_031_5795

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $105b
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$180a], sp
    ld d, l

jr_031_5795:
    cp $03
    jr nz, jr_031_57ad

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $105f
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$180a], sp
    dec a

jr_031_57ad:
    cp $04
    jr nz, jr_031_57d8

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $105e
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jr @+$14

jr_031_57d8:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $1060
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7d2d
    rst $18
    jr jr_031_57ff

    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_031_57ff:
    ret


Call_031_5800:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    inc [hl]
    db $10
    cp $00
    jr nz, jr_031_5849

    ld hl, $d680
    ld bc, $000c
    add hl, bc
    ld a, [hl]
    and $30
    ld a, $03
    ret z

    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $2480
    call Call_000_08ac
    bit 7, h
    jr nz, jr_031_583d

    ld a, $05
    ret


    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $1c80
    call Call_000_08ac
    bit 7, h
    jr nz, jr_031_5849

jr_031_583d:
    ld a, [$d48e]
    bit 4, a
    jr z, jr_031_5847

    ld a, $04
    ret


jr_031_5847:
    xor a
    ret


jr_031_5849:
    ld a, $02
    ret


Call_031_584c:
    ld hl, $0d11
    rst $18
    ld c, $0a
    call Call_031_5882
    ret


Call_031_5856:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $1056
    rst $18
    ld c, $0a
    call Call_031_5882
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_5882:
    ld a, $03
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
    jr z, jr_031_58b6

    ld hl, $1057
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7d24
    rst $18
    jr jr_031_58b7

    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    jr jr_031_5912

jr_031_58b6:
    rst $20

jr_031_58b7:
    and b
    inc c
    rst $18
    inc e
    db $10
    rst $30
    ret nz

    inc d
    jr nz, jr_031_58c6

    ld a, $0a
    ld [$c82c], a

jr_031_58c6:
    ld a, $0f
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070a
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2000
    ld de, $3a80
    rst $18
    jr nz, jr_031_5904

    ld e, $00
    ld bc, $c000
    rst $18
    ld h, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]

jr_031_5904:
    ld hl, $5681
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_5922

jr_031_5912:
    ret


    nop
    ret nz

    rla
    nop
    ld b, b
    ld a, [hl-]
    ld c, h
    cp a
    inc bc
    nop
    ld a, [hl-]
    nop
    ld bc, $0000

jr_031_5922:
    nop
    ld b, e
    ld e, c
    adc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $1064
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $1065
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $1066
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $1067
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$96]
    push af
    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    cp a
    ld e, c
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $106a
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $106b
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $106c
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_031_5a0c

    ld a, $09
    ld [$c961], a
    jr jr_031_5a1e

jr_031_5a0c:
    call Call_031_5aba
    ld [$c968], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_031_5a1e

    rst $20
    ld h, b
    inc c

jr_031_5a1e:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_031_5a27:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_031_5a7a

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
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $106f
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    ret nz

    inc c
    jr @+$2c

jr_031_5a7a:
    cp $01
    jr nz, jr_031_5a92

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $106e
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$180a], sp
    ld [de], a

jr_031_5a92:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $106d
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7d2d
    rst $18
    jr jr_031_5ab9

    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_031_5ab9:
    ret


Call_031_5aba:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $00a0
    call Call_031_7d53
    or a
    jr nz, jr_031_5acc

    xor a
    jr jr_031_5ad9

jr_031_5acc:
    rst $18
    inc [hl]
    db $10
    cp $06
    jr nz, jr_031_5ad7

    ld a, $01
    jr jr_031_5ad9

jr_031_5ad7:
    ld a, $02

jr_031_5ad9:
    ret


Call_031_5ada:
    ld hl, $0d12
    rst $18
    ld c, $0a
    call Call_031_5b10
    ret


Call_031_5ae4:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $1068
    rst $18
    ld c, $0a
    call Call_031_5b10
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_5b10:
    ld a, $04
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
    jr z, jr_031_5b44

    ld hl, $1069
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7d2d
    rst $18
    jr jr_031_5b45

    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    jr jr_031_5ba0

jr_031_5b44:
    rst $20

jr_031_5b45:
    ret nz

    inc c
    rst $18
    inc e
    db $10
    rst $30
    ldh [rNR14], a
    jr nz, jr_031_5b54

    ld a, $0a
    ld [$c82c], a

jr_031_5b54:
    ld a, $0f
    ld b, a
    ld a, $07
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070a
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $17c0
    ld de, $3a40
    rst $18
    jr nz, jr_031_5b92

    ld e, $03
    ld bc, $bf4c
    rst $18
    ld h, $10
    ld de, $4005
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]

jr_031_5b92:
    ld hl, $599f
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_5bb0

jr_031_5ba0:
    ret


jr_031_5ba1:
    pop bc
    ld e, e
    jp nz, Jump_000_005b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5bb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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


    rst $18
    ld a, [hl+]
    db $10

jr_031_5bc5:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    ld hl, $585c
    ld e, h
    call c, $995b
    ld e, h
    ld d, c
    ld e, [hl]
    ld e, d
    ld e, [hl]
    ld h, e
    ld e, [hl]
    add hl, de
    ld a, l
    nop
    jr jr_031_5ba1

    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $2416
    ld a, l
    nop
    inc h
    ret nz

    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $2d16
    ld a, l
    nop
    rrca
    nop
    dec l
    nop
    nop
    nop
    nop
    ld bc, $360d
    ld a, l
    nop
    jr nz, jr_031_5bc5

    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $be0a
    ld a, h
    nop
    inc d
    ret nz

    add hl, sp
    nop
    nop
    nop
    nop
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
    jr jr_031_5c26

jr_031_5c26:
    dec a
    ld [bc], a
    ld b, b
    nop
    jr jr_031_5c2c

jr_031_5c2c:
    dec a
    inc b
    nop
    nop
    ld [hl+], a
    nop
    ld a, [hl-]
    dec b
    nop
    nop
    dec c
    nop
    dec l
    ld b, $00
    nop
    ld [hl+], a
    nop
    ld a, [hl-]
    rlca
    nop
    nop
    dec c
    nop
    dec l
    ld [$0000], sp
    ld [hl+], a
    nop
    ld a, [hl-]
    add hl, bc
    nop
    nop
    dec c
    nop
    dec l
    ld h, e
    ld b, b
    nop
    dec de
    nop
    add hl, hl
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld a, [bc]
    inc bc
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    ld [de], a
    ld [bc], a
    inc b
    rst $38
    nop
    nop
    nop
    nop
    ld [de], a
    inc b
    dec b
    rst $38
    nop
    nop
    nop
    nop
    ld [de], a
    dec b
    ld b, $ff
    nop
    nop
    nop
    nop
    ld [de], a
    ld b, $07
    rst $38
    nop
    nop
    nop
    nop
    ld [de], a
    rlca
    ld [$00ff], sp
    nop
    nop
    nop
    ld [de], a
    ld [$ff09], sp
    nop
    nop
    nop
    nop
    ld [de], a
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    jp nz, Jump_000_0b5c

    nop
    inc bc
    rst $38
    nop
    nop
    ld a, [hl+]
    ld e, l
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    cp a
    ld e, l
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    dec bc
    db $10
    dec bc
    nop
    ld b, $ff
    nop
    nop
    inc c
    db $10
    inc bc
    nop
    rst $38
    ld hl, $1006
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
    jr nz, jr_031_5cea

    ld a, $02
    rst $18
    ld [$c90a], sp

jr_031_5cea:
    rst $18
    db $10
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
    jr z, jr_031_5d0c

    rst $18
    db $10
    ld a, [bc]

jr_031_5d0c:
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$c90a], sp
    rst $30
    and b
    inc c
    jr z, jr_031_5d33

    call Call_031_60b6
    ret


jr_031_5d33:
    ld hl, $1070
    rst $18
    ld c, $0a
    ld a, $03
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
    jr z, jr_031_5d55

    ld a, $03
    rst $18
    ld [$180a], sp
    ld l, c

jr_031_5d55:
    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    ld a, $12
    ld b, a
    ld a, $04
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld hl, $5ef7
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4f00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070d
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2400
    ld de, $3a40
    rst $18
    jr nz, @+$12

    ld de, $4002
    rst $18
    ld [hl+], a
    db $10
    ld hl, $c89a
    ld de, $00dc
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $c89c
    ld a, $04
    ld [hl], a
    ldh a, [$95]
    ld hl, $5f07
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_5dce

    ret


    rst $30
    ret nz

    inc c
    jr z, jr_031_5dc8

    call Call_031_6368
    ret


jr_031_5dc8:
    ld hl, $1080
    rst $18
    ld c, $0a

jr_031_5dce:
    ld a, $04
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
    jr z, jr_031_5dea

    ld a, $04
    rst $18
    ld [$180a], sp
    ld h, [hl]

jr_031_5dea:
    rst $18
    db $10
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    ld a, $12
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld hl, $6185
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4e00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070d
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1000
    ld de, $2d80
    rst $18
    jr nz, jr_031_5e3e

    rst $18
    inc h
    db $10
    ld de, $4000
    rst $18
    ld [hl+], a
    db $10
    ld hl, $c89a
    ld de, $00dc
    ld a, e

jr_031_5e3e:
    ld [hl+], a
    ld [hl], d
    ldh a, [$95]
    ld hl, $6195
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_5e60

    ret


    ld bc, $00ff
    nop
    jr @+$7f

    ld b, $00
    rst $38
    rrca
    rst $38
    nop
    nop
    db $f4
    ld d, c

jr_031_5e60:
    ld bc, $ff00
    ld a, [$c46a]
    cp $01
    jr z, jr_031_5e72

    push af
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    pop af

jr_031_5e72:
    cp $04
    jr nz, jr_031_5e7c

    call Call_031_60c0
    jp Jump_031_5ef6


jr_031_5e7c:
    cp $05
    jr nz, jr_031_5e86

    call Call_031_6372
    jp Jump_031_5ef6


jr_031_5e86:
    cp $06
    jr nz, jr_031_5eb8

    call Call_031_5fe8
    rst $30
    ld b, b
    inc c
    jr z, jr_031_5ef6

    rst $28
    ld b, b
    inc c
    rst $30
    ld b, b
    dec d
    jr nz, jr_031_5ef6

    call Call_000_2ed5
    ld e, $e7
    ld b, b
    dec d
    ld de, $002d
    call Call_031_7da4
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $08
    ld [$c441], a
    jr jr_031_5ef6

jr_031_5eb8:
    cp $07
    jr nz, jr_031_5eea

    call Call_031_628e
    rst $30
    ld b, b
    inc c
    jr z, jr_031_5ef6

    rst $28
    ld b, b
    inc c
    rst $30
    ld h, b
    dec d
    jr nz, jr_031_5ef6

    call Call_000_2ed5
    ld e, $e7
    ld h, b
    dec d
    ld de, $002d
    call Call_031_7da4
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $09
    ld [$c441], a
    jr jr_031_5ef6

jr_031_5eea:
    cp $fa
    jr nz, jr_031_5ef6

    rst $30
    add b
    inc c
    jr z, jr_031_5ef6

    rst $28
    add b
    inc c

Jump_031_5ef6:
jr_031_5ef6:
    ret


    nop
    nop
    inc h
    nop
    ld b, b
    ld a, [hl-]
    nop
    jp nz, $000a

    ld [hl], $00
    add c
    nop
    nop
    nop
    daa
    ld e, a
    ld d, d
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
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $1073
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $1074
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld a, $82
    rst $18
    ld l, $10
    ret


    ld a, b
    ld e, a
    or l
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
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $1079
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $107a
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $107b
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_031_5fc5

    ld a, $08
    ld [$c961], a
    jr jr_031_5fdf

jr_031_5fc5:
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_031_5fd1

    rst $20
    ld h, b
    inc c

jr_031_5fd1:
    ldh a, [$96]
    push af
    call Call_031_607b
    ld [$c968], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a

jr_031_5fdf:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_031_5fe8:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_031_603b

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $107e
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jr @+$2c

jr_031_603b:
    cp $01
    jr nz, jr_031_6053

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $107d
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$180a], sp
    ld [de], a

jr_031_6053:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $107c
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7d2d
    rst $18
    jr jr_031_607a

    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_031_607a:
    ret


Call_031_607b:
    xor a
    rst $30
    ld h, b
    inc c
    ret nz

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    inc [hl]
    db $10
    cp $06
    jr nz, jr_031_60b3

    ld hl, $d680
    ld bc, $000a
    add hl, bc
    ld b, [hl]
    inc hl
    ld a, [hl+]
    bit 7, a
    jr z, jr_031_609d

    cpl
    inc a

jr_031_609d:
    ld c, a
    ld a, [hl]
    bit 7, a
    jr z, jr_031_60b3

    ld hl, $00a0
    call Call_031_7d53
    or a
    jr nz, jr_031_60af

    xor a
    jr jr_031_60b5

jr_031_60af:
    ld a, $01
    jr jr_031_60b5

jr_031_60b3:
    ld a, $02

jr_031_60b5:
    ret


Call_031_60b6:
    ld hl, $0d11
    rst $18
    ld c, $0a
    call Call_031_60ec
    ret


Call_031_60c0:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $1078
    rst $18
    ld c, $0a
    call Call_031_60ec
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_60ec:
    ld a, $03
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
    jr z, jr_031_6120

    ld hl, $107f
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7d24
    rst $18
    jr jr_031_6121

    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    jr jr_031_6184

jr_031_6120:
    rst $20

jr_031_6121:
    and b
    inc c
    rst $18
    inc e
    db $10
    rst $30
    ld b, b
    dec d
    jr nz, jr_031_6130

    ld a, $09
    ld [$c82c], a

jr_031_6130:
    ld a, $12
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070d
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2400
    ld de, $3a40
    rst $18
    jr nz, jr_031_616e

    ld e, $04
    ld bc, $c2f8
    rst $18
    ld h, $10
    ld de, $4002
    rst $18
    ld [hl+], a
    db $10
    ld e, $0a

jr_031_616e:
    ld bc, $c2f8
    rst $18
    ld h, $10
    ldh a, [$95]
    ld hl, $5f58
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_6194

jr_031_6184:
    ret


    nop
    nop
    stop
    add b
    dec l
    ld a, b
    ldh [$03], a
    nop
    jr nz, @-$02

    ld bc, $0000

jr_031_6194:
    nop
    or l
    ld h, c
    ld a, [c]
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $1083
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $1084
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $1086
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$96]
    push af
    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld h, $62
    ld h, e
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
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $1088
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $1089
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $108a
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_031_6273

    ld a, $09
    ld [$c961], a
    jr jr_031_6285

jr_031_6273:
    call Call_031_6321
    ld [$c968], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_031_6285

    rst $20
    ld h, b
    inc c

jr_031_6285:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_031_628e:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_031_62e1

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
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $108c
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    ret nz

    inc c
    jr @+$2c

jr_031_62e1:
    cp $01
    jr nz, jr_031_62f9

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $108b
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$180a], sp
    ld [de], a

jr_031_62f9:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $108e
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7d2d
    rst $18
    jr jr_031_6320

    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_031_6320:
    ret


Call_031_6321:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    inc [hl]
    db $10
    cp $00
    jr nz, jr_031_6361

    ld hl, $d401
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $2100
    call Call_000_08ac
    bit 7, h
    jr nz, jr_031_6352

    ld h, b
    ld l, c
    ld de, $1980
    call Call_000_08ac
    bit 7, h
    jr z, jr_031_6365

    jr jr_031_635e

jr_031_6352:
    ld h, b
    ld l, c
    ld de, $2100
    call Call_000_08ac
    bit 7, h
    jr z, jr_031_6365

jr_031_635e:
    xor a
    jr jr_031_6367

jr_031_6361:
    ld a, $01
    jr jr_031_6367

jr_031_6365:
    ld a, $02

jr_031_6367:
    ret


Call_031_6368:
    ld hl, $0d12
    rst $18
    ld c, $0a
    call Call_031_639e
    ret


Call_031_6372:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $1087
    rst $18
    ld c, $0a
    call Call_031_639e
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_639e:
    ld a, $04
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
    jr z, jr_031_63d2

    ld hl, $108d
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7d2d
    rst $18
    jr jr_031_63d3

    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    jr jr_031_6431

jr_031_63d2:
    rst $20

jr_031_63d3:
    ret nz

    inc c
    rst $18
    inc e
    db $10
    rst $30
    ld h, b
    dec d
    jr nz, jr_031_63e2

    ld a, $09
    ld [$c82c], a

jr_031_63e2:
    ld a, $12
    ld b, a
    ld a, $07
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070d
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1000
    ld de, $2d80
    rst $18
    jr nz, jr_031_6420

    rst $18
    inc h
    db $10
    ld e, $06
    ld bc, $e078
    rst $18
    ld h, $10
    ld de, $4000
    rst $18
    ld [hl+], a

jr_031_6420:
    db $10
    ldh a, [$95]
    ld hl, $6206
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_6441

jr_031_6431:
    ret


    pop bc
    ld e, e
    jp nz, Jump_000_005b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_6441:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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


    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    or d
    ld h, h
    push af

jr_031_6462:
    ld h, h
    ld l, l
    ld h, h
    ld b, [hl]
    ld h, l
    or [hl]
    ld h, a
    cp a
    ld h, a
    ret z

    ld h, a
    add hl, de
    ld a, l
    nop
    inc e
    ret nz

    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $be16
    ld a, h
    nop
    dec l
    nop
    ld hl, $0000
    nop
    ret nz

    ld bc, $be16
    ld a, h
    nop
    inc d
    nop
    dec h
    nop
    nop
    nop
    ret nz

    ld bc, $240d
    ld a, l
    nop
    inc h
    ret nz

    add hl, sp
    nop
    nop
    nop
    nop
    ld bc, $be0a
    ld a, h
    nop
    jr z, jr_031_6462

    add hl, sp
    nop
    nop
    nop
    add b
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
    dec de
    nop
    dec a
    ld [bc], a
    ld b, b
    nop
    dec e
    nop
    inc sp
    inc b
    add b
    nop
    cpl
    nop
    ld hl, $0005
    nop
    ld [de], a
    nop
    dec h
    ld b, $80
    nop
    cpl
    nop
    ld hl, $0007
    nop
    ld [de], a
    nop
    dec h
    ld [$0080], sp
    cpl
    nop
    ld hl, $0009
    nop
    ld [de], a
    nop
    dec h
    ld a, [bc]
    add b
    nop
    cpl
    nop
    ld hl, $000b
    nop
    ld [de], a
    nop
    dec h
    ld h, e
    ld b, b
    nop
    dec de
    nop
    add hl, hl
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    dec bc
    inc bc
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    inc c
    ld [bc], a
    inc b
    rst $38
    nop
    nop
    nop
    nop
    dec d
    inc b
    dec b
    rst $38
    nop
    nop
    nop
    nop
    dec d
    dec b
    ld b, $ff
    nop
    nop
    nop
    nop
    dec d
    ld b, $07
    rst $38
    nop
    nop
    nop
    nop
    dec d
    rlca
    ld [$00ff], sp
    nop
    nop
    nop
    dec d
    ld [$ff09], sp
    nop
    nop
    nop
    nop
    dec d
    add hl, bc
    ld a, [bc]
    rst $38
    nop
    nop
    nop
    nop
    dec d
    ld a, [bc]
    dec bc
    rst $38
    nop
    nop
    nop
    nop
    dec d
    dec bc
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    ld l, a
    ld h, l
    dec bc
    nop
    inc bc
    rst $38
    nop
    nop
    cp b
    ld h, l
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    ld l, a
    ld h, [hl]
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    db $10
    db $10
    dec bc
    nop
    ld b, $ff
    nop
    nop
    ld de, $0b10
    nop
    rst $38
    ld hl, $100d
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
    jr nz, jr_031_6597

    ld a, $02
    rst $18
    ld [$c90a], sp

jr_031_6597:
    rst $18
    db $10
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$c90a], sp
    rst $30
    and b
    inc c
    jr z, jr_031_65c1

    call Call_031_6bc1
    ret


jr_031_65c1:
    rst $30
    nop
    inc e
    jr z, jr_031_65ce

    ld hl, $1015
    rst $18
    ld c, $0a
    jr jr_031_65d4

jr_031_65ce:
    ld hl, $108f
    rst $18
    ld c, $0a

jr_031_65d4:
    ld a, $03
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
    jr z, jr_031_65f1

    ld a, $03
    rst $18
    ld [$c30a], sp
    ld l, [hl]
    ld h, [hl]

jr_031_65f1:
    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    ld a, $07
    ld [$c82c], a
    ld a, $15
    ld b, a
    ld a, $04
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld hl, $68d9
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4f00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $000a
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2c60
    ld de, $2120
    rst $18
    jr nz, jr_031_664a

    rst $18
    inc h
    db $10
    rst $30
    nop
    inc e
    jr z, jr_031_664a

    ld de, $6000
    rst $18
    ld [hl+], a
    db $10
    jr jr_031_6650

jr_031_664a:
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10

jr_031_6650:
    ldh a, [$95]
    ld hl, $68e9
    rst $18
    ld a, [de]
    db $10
    ld a, $03
    ld [$c89d], a
    ld hl, $c89a
    ld de, $00f5
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, @+$12

    ret


    rst $30
    ret nz

    inc c
    jr z, jr_031_6678

    call Call_031_6f64
    ret


jr_031_6678:
    rst $30
    jr nz, @+$1e

    jr nz, jr_031_66a0

    ld hl, $109f
    rst $18
    ld c, $0a
    ld a, $04
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
    jr z, jr_031_66de

    ld a, $04
    rst $18
    ld [$c30a], sp
    ld h, e
    ld h, a

jr_031_66a0:
    ld hl, $1020
    rst $18
    ld c, $0a
    ld a, $04
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
    jr z, jr_031_66de

    rst $30
    ld h, b
    ld de, $0820
    ld a, $04
    rst $18
    ld [$c30a], sp
    ld h, e
    ld h, a
    ld hl, $1028
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$c30a], sp
    ld h, e
    ld h, a
    ld a, $04
    rst $18
    ld [$c30a], sp
    ld h, e
    ld h, a

jr_031_66de:
    rst $30
    jr nz, @+$1e

    jr nz, @+$0a

    rst $18
    db $10
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    ld a, $07
    ld [$c82c], a
    ld a, $15
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld hl, $6ca6
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4e00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0710
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1500
    ld de, $2540
    rst $18
    jr nz, @+$12

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4e3
    ld [hl], $21
    ld hl, $c89a
    ld de, $00e6
    ld a, e
    ld [hl+], a
    ld [hl], d
    rst $30
    jr nz, jr_031_675f

    jr z, jr_031_674d

    ld de, $0004
    rst $18
    ld [hl+], a
    db $10
    jr jr_031_6753

jr_031_674d:
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10

jr_031_6753:
    ldh a, [$95]
    ld hl, $6cb6
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a

jr_031_675f:
    db $10
    rst $18
    jr nc, jr_031_6773

    ret


    ld [bc], a
    rst $38
    nop
    nop
    ld [de], a
    db $10
    dec bc
    nop
    inc bc
    rst $38
    nop
    nop
    cp b
    ld h, l
    dec bc

jr_031_6773:
    nop
    inc b
    rst $38
    nop
    nop
    ld l, a
    ld h, [hl]
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    inc de
    db $10
    dec bc
    nop
    ld b, $ff
    nop
    nop
    inc d
    db $10
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    ld a, [hl+]
    db $10
    dec bc
    nop
    inc bc
    rst $38
    nop
    nop
    cp b
    ld h, l
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    ld l, a
    ld h, [hl]
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    dec hl
    db $10
    dec bc
    nop
    ld b, $ff
    nop
    nop
    inc l
    db $10
    inc bc
    nop
    rst $38
    ld bc, $00ff
    nop
    jr @+$7f

    ld b, $00
    rst $38
    rrca
    rst $38
    nop
    nop
    db $f4
    ld d, c
    ld bc, $ff00
    call Call_031_7051
    rst $30
    ld h, b
    ld de, $0b28
    ld hl, $678d
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_031_67e9

    rst $30
    ld h, b
    ld c, $28
    add hl, bc
    ld hl, $6764
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]

jr_031_67e9:
    ld a, [$c46a]
    cp $01
    jr z, jr_031_67f8

    push af
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    pop af

jr_031_67f8:
    cp $04
    jr nz, jr_031_6800

    call Call_031_6bcb
    ret


jr_031_6800:
    cp $05
    jr nz, jr_031_6808

    call Call_031_6f6e
    ret


jr_031_6808:
    cp $06
    jr nz, jr_031_6863

    rst $30
    nop
    inc e
    jr z, jr_031_683c

    call Call_031_6ae3
    rst $30
    ld b, b
    inc c
    ret z

    rst $28
    ld b, b
    inc c
    rst $30
    ret nz

    dec de
    ret nz

    call Call_000_2ed5
    ld e, $e7
    ret nz

    dec de
    ld de, $0032
    call Call_031_7da4
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $0a
    ld [$c441], a
    ret


jr_031_683c:
    call Call_031_6a56
    rst $30
    ld b, b
    inc c
    ret z

    rst $28
    ld b, b
    inc c
    rst $30
    ret nz

    dec d
    ret nz

    rst $20
    ret nz

    dec d
    ld de, $0032
    call Call_031_7da4
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $08
    ld [$c441], a
    ret


jr_031_6863:
    cp $07
    jr nz, jr_031_68be

    rst $30
    jr nz, @+$1e

    jr z, jr_031_6893

    call Call_031_6e9d
    rst $30
    ld b, b
    inc c
    ret z

    rst $28
    ld b, b
    inc c
    rst $30
    ldh [rNR31], a
    ret nz

    rst $20
    ldh [rNR31], a
    ld de, $0032
    call Call_031_7da4
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $0b
    ld [$c441], a
    ret


jr_031_6893:
    call Call_031_6df8
    rst $30
    ld b, b
    inc c
    ret z

    rst $28
    ld b, b
    inc c
    rst $30
    ldh [$15], a
    ret nz

    call Call_000_2ed5
    ld e, $e7
    ldh [$15], a
    ld de, $0032
    call Call_031_7da4
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $09
    ld [$c441], a
    ret


jr_031_68be:
    cp $0a
    jr nz, jr_031_68c6

    call Call_031_6b5a
    ret


jr_031_68c6:
    cp $0b
    jr nz, jr_031_68ce

    call Call_031_6f14
    ret


jr_031_68ce:
    cp $fa
    ret nz

    rst $30
    add b
    inc c
    ret z

    rst $28
    add b
    inc c
    ret


    nop
    nop
    dec l
    nop
    nop
    ld hl, $b5af
    inc bc
    nop
    inc a
    nop
    sub c
    nop
    nop
    nop
    add hl, bc
    ld l, c
    ld a, l
    ld l, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_031_7051
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    rst $30
    nop
    inc e
    jr z, jr_031_694c

    rst $30
    and b
    inc c
    jr nz, jr_031_6974

    ld a, $03
    ld de, $0a03
    ld hl, $1018
    rst $18
    ld c, d
    dec b
    push af
    ld a, $32
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $1019
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $101a
    rst $18
    ld c, d
    dec b
    jr jr_031_6974

jr_031_694c:
    ld a, $03
    ld de, $0a03
    ld hl, $1092
    rst $18
    ld c, d
    dec b
    push af
    ld a, $32
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $1094
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $1095
    rst $18
    ld c, d
    dec b

jr_031_6974:
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    call Call_031_7051
    rst $18
    ld a, [hl+]
    db $10
    rst $30
    nop
    inc e
    jr z, jr_031_6993

    rst $18
    inc b
    db $10
    ld d, h
    ld e, l
    ld hl, $c968
    ld a, e
    ld [hl+], a
    ld [hl], d

jr_031_6993:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    cp h
    ld l, c
    ld [bc], a
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_031_7051
    rst $30
    nop
    inc e
    jr z, jr_031_69c5

    ret


jr_031_69c5:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $1098
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $1099
    rst $18
    ld c, d
    dec b
    push af
    ld a, $32
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $109a
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    call Call_031_7051
    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_031_6a15

    ld a, $08
    ld [$c961], a
    jr jr_031_6a4d

jr_031_6a15:
    rst $30
    nop
    inc e
    jr z, jr_031_6a27

    rst $18
    inc b
    db $10
    ld d, h
    ld e, l
    ld hl, $c96a
    ld a, e
    ld [hl+], a
    ld [hl], d
    jr jr_031_6a41

jr_031_6a27:
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_031_6a33

    rst $20
    ld h, b
    inc c

jr_031_6a33:
    ldh a, [$96]
    push af
    call Call_031_6b8b
    ld [$c968], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a

jr_031_6a41:
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_031_6a4d

    rst $20
    ld h, b
    inc c

jr_031_6a4d:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_031_6a56:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_031_6aa9

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $109d
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jr @+$2c

jr_031_6aa9:
    cp $01
    jr nz, jr_031_6ac1

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $109c
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$180a], sp
    ld [de], a

jr_031_6ac1:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $109b
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f70a], sp
    ld b, b
    inc c
    jr nz, jr_031_6adf

    ld a, $03
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]

jr_031_6adf:
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_6ae3:
    rst $28
    and b
    inc c
    rst $18
    nop
    ld a, [bc]
    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $c968
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c96a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    bit 7, h
    jr z, jr_031_6b38

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $101c
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    jr @+$14

jr_031_6b38:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $101d
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f70a], sp
    ld b, b
    inc c
    jr nz, jr_031_6b56

    ld a, $03
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]

jr_031_6b56:
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_6b5a:
    rst $18
    nop
    ld a, [bc]
    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $101e
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_6b8b:
    xor a
    rst $30
    ld h, b
    inc c
    ret nz

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    inc [hl]
    db $10
    cp $06
    jr nz, jr_031_6bbe

    ld hl, $d680
    ld bc, $000a
    add hl, bc
    ld b, [hl]
    inc hl
    ld a, [hl+]
    bit 7, a
    jr z, jr_031_6bad

    cpl
    inc a

jr_031_6bad:
    ld c, a
    ld hl, $00a0
    call Call_031_7d53
    or a
    jr nz, jr_031_6bba

    xor a
    jr jr_031_6bc0

jr_031_6bba:
    ld a, $01
    jr jr_031_6bc0

jr_031_6bbe:
    ld a, $02

jr_031_6bc0:
    ret


Call_031_6bc1:
    ld hl, $0d11
    rst $18
    ld c, $0a
    call Call_031_6bf7
    ret


Call_031_6bcb:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $1097
    rst $18
    ld c, $0a
    call Call_031_6bf7
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_6bf7:
    ld a, $03
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
    jr z, jr_031_6c21

    ld hl, $109e
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    jp Jump_031_6ca5


jr_031_6c21:
    rst $20
    and b
    inc c
    rst $18
    inc e
    db $10
    ld a, $15
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $000a
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2c60
    ld de, $2120
    rst $18
    jr nz, jr_031_6c65

    rst $18
    inc h
    db $10
    ld e, $03
    ld bc, $b61d
    rst $18
    ld h, $10
    rst $30
    nop
    inc e
    jr z, jr_031_6c7e

jr_031_6c65:
    rst $30
    ret nz

    dec de
    jr nz, jr_031_6c71

    ld a, $0b
    ld [$c82c], a
    jr jr_031_6c76

jr_031_6c71:
    ld a, $07
    ld [$c82c], a

jr_031_6c76:
    ld de, $6000
    rst $18
    ld [hl+], a
    db $10
    jr jr_031_6c95

jr_031_6c7e:
    rst $30
    ret nz

    dec d
    jr nz, jr_031_6c8a

    ld a, $0b
    ld [$c82c], a
    jr jr_031_6c8f

jr_031_6c8a:
    ld a, $07
    ld [$c82c], a

jr_031_6c8f:
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10

jr_031_6c95:
    ldh a, [$95]
    ld hl, $699c
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_031_6cb5

Jump_031_6ca5:
    ret


    nop
    nop
    dec d
    nop
    ld b, b
    dec h
    nop
    ret


    inc bc
    ld bc, $003a
    ld bc, $0000

jr_031_6cb5:
    nop
    sub $6c
    inc sp
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_031_7051
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    rst $30
    jr nz, jr_031_6d04

    jr z, jr_031_6cf7

    ld a, $04
    ld de, $0a03
    ld hl, $1023
    rst $18
    ld c, d
    dec b
    jr jr_031_6d2a

jr_031_6cf7:
    ld a, $04
    ld de, $0a03
    ld hl, $10a2
    rst $18
    ld c, d
    dec b
    ld a, $04

jr_031_6d04:
    ld de, $0a03
    ld hl, $10a3
    rst $18
    ld c, d
    dec b
    push af
    ld a, $32
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $10a4
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $10a5
    rst $18
    ld c, d
    dec b

jr_031_6d2a:
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    call Call_031_7051
    rst $18
    ld a, [hl+]
    db $10
    rst $30
    jr nz, jr_031_6d58

    jr z, jr_031_6d49

    rst $18
    inc b
    db $10
    ld d, h
    ld e, l
    ld hl, $c968
    ld a, e
    ld [hl+], a
    ld [hl], d

jr_031_6d49:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    ld [hl], d
    ld l, l
    cp b
    ld l, l
    nop
    nop

jr_031_6d58:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_031_7051
    rst $30
    jr nz, jr_031_6d94

    jr z, jr_031_6d7b

    ret


jr_031_6d7b:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $10a8
    rst $18
    ld c, d
    dec b
    ld a, $04

jr_031_6d94:
    ld de, $0a03
    ld hl, $10a9
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $10aa
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    call Call_031_7051
    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_031_6dcb

    ld a, $09
    ld [$c961], a
    jr jr_031_6def

jr_031_6dcb:
    rst $30
    jr nz, jr_031_6dea

    jr z, jr_031_6ddd

    rst $18
    inc b
    db $10
    ld d, h
    ld e, l
    ld hl, $c96a
    ld a, e
    ld [hl+], a
    ld [hl], d
    jr jr_031_6de3

jr_031_6ddd:
    call Call_031_6f45
    ld [$c968], a

jr_031_6de3:
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a

jr_031_6dea:
    jr z, jr_031_6def

    rst $20
    ld h, b
    inc c

jr_031_6def:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_031_6df8:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_031_6e4b

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
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $10ad
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    ret nz

    inc c
    jr @+$44

jr_031_6e4b:
    cp $01
    jr nz, jr_031_6e63

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $10ac
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$180a], sp
    ld a, [hl+]

jr_031_6e63:
    cp $02
    jr nz, jr_031_6e7b

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $10ab
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$180a], sp
    ld [de], a

jr_031_6e7b:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $10af
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f70a], sp
    ld b, b
    inc c
    jr nz, jr_031_6e99

    ld a, $04
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]

jr_031_6e99:
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_6e9d:
    rst $28
    ret nz

    inc c
    rst $18
    nop
    ld a, [bc]
    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $c968
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c96a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    bit 7, h
    jr z, jr_031_6ef2

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
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $1026
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    jr @+$14

jr_031_6ef2:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $1027
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f70a], sp
    ld b, b
    inc c
    jr nz, jr_031_6f10

    ld a, $04
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]

jr_031_6f10:
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_6f14:
    rst $18
    nop
    ld a, [bc]
    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $1028
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_6f45:
    rst $18
    inc [hl]
    db $10
    cp $06
    jr nz, jr_031_6f5a

    ld hl, $00a0
    call Call_031_7d53
    or a
    jr nz, jr_031_6f57

    xor a
    ret


jr_031_6f57:
    ld a, $03
    ret


jr_031_6f5a:
    cp $02
    jr z, jr_031_6f61

    ld a, $01
    ret


jr_031_6f61:
    ld a, $02
    ret


Call_031_6f64:
    ld hl, $0d12
    rst $18
    ld c, $0a
    call Call_031_6f9a
    ret


Call_031_6f6e:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $10a7
    rst $18
    ld c, $0a
    call Call_031_6f9a
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_6f9a:
    ld a, $04
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
    jr z, jr_031_6fc4

    ld hl, $10ae
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    jp Jump_031_7050


jr_031_6fc4:
    rst $20
    ret nz

    inc c
    rst $18
    inc e
    db $10
    ld a, $15
    ld b, a
    ld a, $07
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0710
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1500
    ld de, $2540
    rst $18
    jr nz, jr_031_7008

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4e3
    ld [hl], $21
    ld e, $03
    ld bc, $c982

jr_031_7008:
    rst $18
    ld h, $10
    rst $30
    jr nz, jr_031_702a

    jr z, jr_031_7029

    rst $30
    ldh [rNR31], a
    jr nz, jr_031_701c

    ld a, $0b
    ld [$c82c], a
    jr jr_031_7021

jr_031_701c:
    ld a, $07
    ld [$c82c], a

jr_031_7021:
    ld de, $0004
    rst $18
    ld [hl+], a
    db $10
    jr jr_031_7040

jr_031_7029:
    rst $30

jr_031_702a:
    ldh [$15], a
    jr nz, jr_031_7035

    ld a, $0b
    ld [$c82c], a
    jr jr_031_703a

jr_031_7035:
    ld a, $07
    ld [$c82c], a

jr_031_703a:
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10

jr_031_7040:
    ldh a, [$95]
    ld hl, $6d52
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, @+$12

Jump_031_7050:
    ret


Call_031_7051:
    rst $30
    ld h, b
    ld de, $1028
    rst $30
    ret nz

    dec d
    jr z, jr_031_705e

    rst $20
    nop
    inc e

jr_031_705e:
    rst $30
    ldh [$15], a
    jr z, jr_031_7066

    rst $20
    jr nz, jr_031_7082

jr_031_7066:
    ret


    jp nc, $df70

    ld [hl], b
    ld [hl], l
    ld [hl], b
    xor $70
    sbc b
    ld [hl], c
    sbc d
    ld [hl], d
    and e
    ld [hl], d
    cp [hl]
    ld a, h
    nop
    ld [hl+], a
    nop
    dec a
    nop
    nop
    nop
    add b
    ld bc, $190a

jr_031_7082:
    ld a, l
    nop
    inc e
    nop
    jr c, jr_031_7088

jr_031_7088:
    nop
    nop
    nop
    ld bc, $2416
    ld a, l
    nop
    inc h
    nop
    jr c, jr_031_7094

jr_031_7094:
    nop
    nop
    nop
    ld bc, $be16
    ld a, h
    nop
    ld e, $00
    add hl, sp
    nop
    nop
    nop
    ret nz

    ld bc, $be0e
    ld a, h
    nop
    ld [hl+], a
    nop
    add hl, sp
    nop
    nop
    nop
    ret nz

    ld bc, $be0e
    ld a, h
    nop
    ld a, [de]
    nop
    ld a, [hl-]
    nop
    nop
    nop
    ret nz

    ld bc, $be0e
    ld a, h
    nop
    ld h, $00
    ld a, [hl-]
    nop
    nop
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
    jr nz, jr_031_70d7

jr_031_70d7:
    dec a
    ld [bc], a
    ret nz

    nop
    jr nz, jr_031_70dd

jr_031_70dd:
    add hl, sp
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [bc], a
    inc c
    rst $38
    ld a, $01
    ld [$c441], a
    ret


    ld [bc], a
    rst $38
    nop
    nop
    ld e, a
    dec d
    ld bc, $0300
    rst $38
    nop
    nop
    daa
    ld [hl], c
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    ld e, a
    ld [hl], c
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    sbc c
    ld [hl], c
    nop
    nop
    ld b, $ff
    nop
    nop
    db $d3
    ld [hl], c
    nop
    nop
    rlca
    rst $38
    nop
    nop
    ld h, d
    dec d
    nop
    nop
    ld [$00ff], sp
    nop
    ld h, e
    dec d
    nop
    nop
    rst $38
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld hl, $1560
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7d19
    rst $18
    jr jr_031_715e

    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_031_715e:
    ret


    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7cbe
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld hl, $1561
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7d24
    rst $18
    jr jr_031_7196

    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_031_7196:
    ret


    ret


    rst $38
    rst $18
    nop
    ld a, [bc]
    ld a, [$c296]
    ld b, a
    ld a, $05
    rst $18
    ld l, $0a
    ld hl, $1564
    rst $18
    ld c, $0a
    ld a, $05
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
    jr nz, jr_031_71c3

    call Call_031_7252

jr_031_71c3:
    ld a, $05
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    rst $18
    nop
    ld a, [bc]
    ld a, [$c296]
    ld b, a
    ld a, $06
    rst $18
    ld l, $0a
    ld hl, $1564
    rst $18
    ld c, $0a
    ld a, $06
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
    jr nz, jr_031_71fd

    call Call_031_7252

jr_031_71fd:
    ld a, $06
    rst $18
    ld [$3e0a], sp
    ld b, $06
    ret nz

    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    rst $18
    nop
    ld a, [bc]
    ld hl, $1564
    rst $18
    ld c, $0a
    ld a, $05
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
    jr nz, jr_031_7232

    call Call_031_7252
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


jr_031_7232:
    ld a, $05
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld bc, $2000
    ld de, $3900
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_7252:
    rst $18
    inc e
    db $10
    ld a, $2d
    ld b, a
    ld a, $02
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $06
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0006
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2000
    ld de, $3800
    rst $18
    jr nz, jr_031_7293

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $75c0
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_031_7293:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, @+$12

    ret


    ld bc, $00ff
    nop
    dec c
    ld [hl], d
    nop
    nop
    rst $38
    ld a, [$c46a]
    cp $02
    jr nz, jr_031_72c4

    rst $30
    ld h, b
    inc c
    jr z, jr_031_72bd

    ld c, $04
    call Call_000_25af
    call Call_000_2625
    call Call_031_72cf
    call Call_031_7444

jr_031_72bd:
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    ret


jr_031_72c4:
    cp $fa
    jr nz, jr_031_72ce

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a

jr_031_72ce:
    ret


Call_031_72cf:
    rst $18
    nop
    ld a, [bc]
    rst $30
    ld h, b
    inc c
    jp nz, Jump_031_7308

    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld l, $0a
    ld hl, $1562
    rst $18
    ld c, $0a
    ld a, $05
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    sub d
    ld [hl], e
    ld hl, $2e73
    ld [hl], e
    dec sp
    ld [hl], e
    ld c, b
    ld [hl], e
    ld d, l
    ld [hl], e
    ld h, d
    ld [hl], e
    ld l, a
    ld [hl], e
    ld a, h
    ld [hl], e

Jump_031_7308:
    ld a, [$c296]
    ld b, a
    ld a, $05
    rst $18
    ld l, $0a
    ld a, [$c968]
    add a
    ld hl, $72f6
    add l
    ld l, a
    jr nc, jr_031_731d

    inc h

jr_031_731d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld hl, $15bc
    rst $18
    ld c, $0a
    ld a, $05
    rst $18
    ld [$180a], sp
    ld e, c
    ld hl, $15bd
    rst $18
    ld c, $0a
    ld a, $05
    rst $18
    ld [$180a], sp
    ld c, h
    ld hl, $15be
    rst $18
    ld c, $0a
    ld a, $05
    rst $18
    ld [$180a], sp
    ccf
    ld hl, $15bf
    rst $18
    ld c, $0a
    ld a, $05
    rst $18
    ld [$180a], sp
    ld [hl-], a
    ld hl, $15c1
    rst $18
    ld c, $0a
    ld a, $05
    rst $18
    ld [$180a], sp
    dec h
    ld hl, $15c2
    rst $18
    ld c, $0a
    ld a, $05
    rst $18
    ld [$180a], sp
    jr jr_031_7391

    jp $df15


    ld c, $0a
    ld a, $05
    rst $18
    ld [$180a], sp
    dec bc
    ld hl, $15c4
    rst $18
    ld c, $0a
    ld a, $05
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_031_7391:
    ret


    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    call Call_031_7691
    ld d, h
    ld e, l
    call Call_031_756a
    ld hl, $1566
    add l
    ld l, a
    jr nc, jr_031_73a8

    inc h

jr_031_73a8:
    ld de, $dd74
    rst $18
    ld e, h
    dec b
    ld hl, $dd74
    rst $18
    ld d, h
    dec b
    call Call_031_76a2
    inc a
    inc a
    inc a
    inc a
    ld hl, $1572
    add l
    ld l, a
    jr nc, jr_031_73c3

    inc h

jr_031_73c3:
    ld de, $dd94
    rst $18
    ld e, h
    dec b
    ld hl, $dd94
    rst $18
    ld d, h
    dec b
    ld hl, $c81c
    ld a, [hl+]
    inc hl
    push hl
    inc a
    inc a
    inc a
    inc a
    ld b, a
    ld a, $08
    sub b
    ld hl, $1584
    add l
    ld l, a
    jr nc, jr_031_73e5

    inc h

jr_031_73e5:
    ld de, $ddb4
    rst $18
    ld e, h
    dec b
    ld hl, $ddb4
    rst $18
    ld d, h
    dec b
    pop hl
    ld a, [hl+]
    inc a
    inc a
    inc a
    inc a
    ld b, a
    ld a, $08
    sub b
    push hl
    ld hl, $1596
    add l
    ld l, a
    jr nc, jr_031_7404

    inc h

jr_031_7404:
    ld de, $ddd4
    rst $18
    ld e, h
    dec b
    ld hl, $ddd4
    rst $18
    ld d, h
    dec b
    pop hl
    ld a, [hl+]
    inc a
    inc a
    inc a
    inc a
    ld b, a
    ld a, $08
    sub b
    ld hl, $15a8
    add l
    ld l, a
    jr nc, jr_031_7422

    inc h

jr_031_7422:
    ld de, $ddf4
    rst $18
    ld e, h
    dec b
    ld hl, $ddf4
    rst $18
    ld d, h
    dec b
    ld hl, $15ba
    rst $18
    ld c, $0a
    ld a, $05
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_7444:
    rst $18
    nop
    ld a, [bc]
    rst $30
    ld h, b
    inc c
    jr nz, jr_031_747c

    ld a, $04
    ld b, a
    ld a, $06
    rst $18
    ld l, $0a
    ld hl, $1563
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$3e0a], sp
    ld b, $06
    ret nz

    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    cp b
    ld [hl], h
    sub l
    ld [hl], h
    sub l
    ld [hl], h
    sub l
    ld [hl], h
    sub l
    ld [hl], h
    and d
    ld [hl], h
    and d
    ld [hl], h
    and d
    ld [hl], h
    and d
    ld [hl], h

jr_031_747c:
    ld a, [$c296]
    ld b, a
    ld a, $06
    rst $18
    ld l, $0a
    ld a, [$c968]
    add a
    ld hl, $746a
    add l
    ld l, a
    jr nc, jr_031_7491

    inc h

jr_031_7491:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld hl, $15c0
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$180a], sp
    dec bc
    ld hl, $15c5
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$3e0a], sp
    ld b, $06
    ret nz

    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    call Call_031_7691
    ld d, h
    ld e, l
    call Call_031_756a
    ld hl, $156c
    add l
    ld l, a
    jr nc, jr_031_74ce

    inc h

jr_031_74ce:
    ld de, $dd74
    rst $18
    ld e, h
    dec b
    ld hl, $dd74
    rst $18
    ld d, h
    dec b
    call Call_031_76a2
    inc a
    inc a
    inc a
    inc a
    ld hl, $157b
    add l
    ld l, a
    jr nc, jr_031_74e9

    inc h

jr_031_74e9:
    ld de, $dd94
    rst $18
    ld e, h
    dec b
    ld hl, $dd94
    rst $18
    ld d, h
    dec b
    ld hl, $c81c
    ld a, [hl+]
    inc hl
    push hl
    inc a
    inc a
    inc a
    inc a
    ld b, a
    ld a, $08
    sub b
    ld hl, $158d
    add l
    ld l, a
    jr nc, jr_031_750b

    inc h

jr_031_750b:
    ld de, $ddb4
    rst $18
    ld e, h
    dec b
    ld hl, $ddb4
    rst $18
    ld d, h
    dec b
    pop hl
    ld a, [hl+]
    push hl
    inc a
    inc a
    inc a
    inc a
    ld b, a
    ld a, $08
    sub b
    ld hl, $159f
    add l
    ld l, a
    jr nc, jr_031_752a

    inc h

jr_031_752a:
    ld de, $ddd4
    rst $18
    ld e, h
    dec b
    ld hl, $ddd4
    rst $18
    ld d, h
    dec b
    pop hl
    ld a, [hl+]
    inc a
    inc a
    inc a
    inc a
    ld b, a
    ld a, $08
    sub b
    ld hl, $15b1
    add l
    ld l, a
    jr nc, jr_031_7548

    inc h

jr_031_7548:
    ld de, $ddf4
    rst $18
    ld e, h
    dec b
    ld hl, $ddf4
    rst $18
    ld d, h
    dec b
    ld hl, $15bb
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$3e0a], sp
    ld b, $06
    ret nz

    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_756a:
    push hl
    ld b, d
    ld c, e
    ld h, b
    ld l, c
    ld de, $012d
    call Call_000_08ac
    bit 7, h
    jr nz, jr_031_757d

    ld a, $05
    pop hl
    ret


jr_031_757d:
    ld h, b
    ld l, c
    ld de, $0119
    call Call_000_08ac
    bit 7, h
    jr nz, jr_031_758d

    ld a, $04
    pop hl
    ret


jr_031_758d:
    ld h, b
    ld l, c
    ld de, $0105
    call Call_000_08ac
    bit 7, h
    jr nz, jr_031_759d

    ld a, $03
    pop hl
    ret


jr_031_759d:
    ld h, b
    ld l, c
    ld de, $00f1
    call Call_000_08ac
    bit 7, h
    jr nz, jr_031_75ad

    ld a, $02
    pop hl
    ret


jr_031_75ad:
    ld h, b
    ld l, c
    ld de, $00dd
    call Call_000_08ac
    bit 7, h
    jr nz, jr_031_75bd

    ld a, $01
    pop hl
    ret


jr_031_75bd:
    xor a
    pop hl
    ret


    ldh [$75], a
    pop hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    or a
    jr z, jr_031_75ec

    rst $20
    ld h, b
    inc c
    jr jr_031_75ef

jr_031_75ec:
    rst $28
    ld h, b
    inc c

jr_031_75ef:
    call Call_031_760c
    ld [$c968], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d680
    ld bc, $0008
    add hl, bc
    ld a, [hl]
    ld [$c969], a
    ld a, $82
    rst $18
    ld l, $10
    ret


Call_031_760c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d680
    ld bc, $000a
    add hl, bc
    ld a, [hl+]
    cp $3c
    jr nz, jr_031_7622

    ld c, $00
    jr jr_031_762c

jr_031_7622:
    cp $34
    jr c, jr_031_762a

    ld c, $01
    jr jr_031_762c

jr_031_762a:
    ld c, $02

jr_031_762c:
    ld a, [hl+]
    bit 7, a
    jr z, jr_031_7633

    cpl
    inc a

jr_031_7633:
    or a
    jr nz, jr_031_763a

    ld d, $00
    jr jr_031_7644

jr_031_763a:
    cp $04
    jr nc, jr_031_7642

    ld d, $01
    jr jr_031_7644

jr_031_7642:
    ld d, $02

jr_031_7644:
    ld a, c
    or d
    jr nz, jr_031_766c

    ld a, [hl]
    bit 4, a
    jr z, jr_031_7651

    ld a, $05
    jr jr_031_7690

jr_031_7651:
    bit 5, a
    jr z, jr_031_7659

    ld a, $06
    jr jr_031_7690

jr_031_7659:
    bit 6, a
    jr z, jr_031_7661

    ld a, $07
    jr jr_031_7690

jr_031_7661:
    bit 7, a
    jr z, jr_031_7669

    ld a, $08
    jr jr_031_7690

jr_031_7669:
    xor a
    jr jr_031_7690

jr_031_766c:
    ld a, c
    cp $02
    jr nz, jr_031_7675

    ld a, $04
    jr jr_031_7690

jr_031_7675:
    ld a, d
    cp $02
    jr nz, jr_031_767e

    ld a, $04
    jr jr_031_7690

jr_031_767e:
    ld a, c
    and d
    jr z, jr_031_7686

    ld a, $03
    jr jr_031_7690

jr_031_7686:
    ld a, c
    or a
    jr z, jr_031_768e

    ld a, $02
    jr jr_031_7690

jr_031_768e:
    ld a, $01

jr_031_7690:
    ret


Call_031_7691:
    ld hl, $c81a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c819]
    ld b, a
    ld a, [$c969]
    rst $18
    db $10
    ld [bc], a
    ret


Call_031_76a2:
    ld a, [$c819]
    ld e, a
    ld a, [$c969]
    ld d, a
    ld a, [$c81d]
    rst $18
    ld [hl], h
    ld [bc], a
    ret


    ld hl, sp+$76
    rla
    ld [hl], a
    cp a
    db $76
    ld h, e
    ld [hl], a
    ld h, l
    ld [hl], a
    ld l, [hl]
    ld [hl], a
    ld [hl], l
    ld [hl], a
    cp [hl]
    ld a, h
    nop
    dec bc
    nop
    rrca
    nop
    nop
    nop
    ret nz

    ld bc, $7f14
    ld a, e
    nop
    add hl, bc
    ld h, b
    ld c, $00
    nop
    nop
    ld b, b
    ld bc, $7f29
    ld a, e
    nop
    add hl, bc
    ld h, b
    ld c, $00
    nop
    nop
    ld b, b
    ld bc, $7f2a
    ld a, e
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
    ld [$0206], sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    add hl, bc
    ld b, $02
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld a, [bc]
    ld b, $02
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    dec bc
    ld b, $02
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret


    ld bc, $00ff
    nop
    jr jr_031_77e8

    ld b, $00
    rst $38
    rst $38

Jump_031_776f:
jr_031_776f:
    ld a, $02
    ld [$c441], a
    ret


    ld c, $7f
    call Call_000_25a1
    ld a, [$c450]
    cp $1b
    jr nz, jr_031_7795

    ld hl, $774a
    ld de, $0008
    rst $18
    ld c, h
    ld a, [bc]
    ld hl, $7c80
    ld de, $0206
    call Call_000_0595
    jr jr_031_77f5

jr_031_7795:
    cp $1a
    jr nz, jr_031_77bf

    rst $30
    and b
    dec c
    jr nz, jr_031_776f

    ld a, [$c46a]
    cp $02
    jr nz, jr_031_77a8

    rst $20
    and b
    dec c

jr_031_77a8:
    ld hl, $7739
    ld de, $0008
    rst $18
    ld c, h
    ld a, [bc]
    ld hl, $7c40
    ld de, $0206
    call Call_000_0595
    call Call_031_7cb0
    jr jr_031_77f5

jr_031_77bf:
    cp $19
    jr nz, jr_031_77e6

    rst $30
    add b
    dec c
    jr nz, jr_031_776f

    ld a, [$c46a]
    cp $02
    jr nz, jr_031_77d2

    rst $20
    add b
    dec c

jr_031_77d2:
    ld hl, $7c00
    ld de, $0206
    call Call_000_0595
    ld hl, $7728
    ld de, $0008
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_031_77f5

jr_031_77e6:
    rst $30
    ld h, b

jr_031_77e8:
    dec c
    jr nz, jr_031_776f

    ld a, [$c46a]
    cp $02
    jr nz, jr_031_77f5

    rst $20
    ld h, b
    dec c

jr_031_77f5:
    ld a, [$c46a]
    cp $02
    jr nc, jr_031_77fd

    ret


jr_031_77fd:
    rst $30
    ret nz

    dec c
    jp nz, Jump_031_782f

    ld a, [$c46a]
    cp $02
    jr nz, jr_031_786b

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
    call Call_031_78e1
    ld a, $01
    ld [$c96c], a
    ld a, [$c450]
    cp $1b
    jr nz, jr_031_785e

    ld c, $04
    call Call_000_25a1
    call Call_000_2625

Jump_031_782f:
    ld a, [$c810]
    rst $18
    ld [bc], a
    ld b, b
    rst $18
    ld h, $41
    ld a, [$c810]
    rst $20
    ret nz

    dec c
    rst $18
    inc b
    ld b, b
    ld a, $00
    ld [$c450], a
    ld a, $02
    ld [$c46a], a
    xor a
    ld [$c96d], a
    ld bc, $ffff
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $03
    ld [$c441], a
    ret


jr_031_785e:
    ld a, [$c967]
    cp $32
    jr nz, jr_031_78db

    ld a, $02
    ld [$c441], a
    ret


jr_031_786b:
    rst $30
    ret nz

    dec c
    jp nz, Jump_031_776f

    ld a, [$c46a]
    cp $03
    jr nz, jr_031_789e

    call Call_031_7b86
    ld a, $03
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, $05
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    call Call_031_7b1c
    ld a, $02
    ld [$c96c], a
    ld a, [$c967]
    cp $32
    jr nz, jr_031_78db

    ld a, $02
    ld [$c441], a
    ret


jr_031_789e:
    ld a, [$c46a]
    cp $04
    jr nz, jr_031_78cb

    call Call_031_7b96
    ld a, $03
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, $04
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    call Call_031_7b1c
    ld a, $03
    ld [$c96c], a
    ld a, [$c967]
    cp $32
    jr nz, jr_031_78db

    ld a, $02
    ld [$c441], a
    ret


jr_031_78cb:
    ld a, $63
    ld [$c967], a
    ld a, $05
    ld [$c96c], a
    ld a, $01
    ld [$c441], a
    ret


jr_031_78db:
    ld a, $01
    ld [$c441], a
    ret


Call_031_78e1:
    rst $18
    nop
    ld a, [bc]
    rst $08
    inc b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    xor a
    ld bc, $0b00
    ld de, $0e00
    rst $18
    jr c, jr_031_7901

    rst $18
    inc a
    ld a, [bc]
    rst $08
    sub e
    ld c, $04
    call Call_000_25af

jr_031_7901:
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0c3c
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
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    call Call_031_7b5e
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
    jr nz, jr_031_7986

    ld hl, $0c3e
    rst $18
    ld c, $0a

jr_031_7986:
    ld a, $02
    rst $18
    ld [$210a], sp
    ccf
    inc c
    rst $18
    ld c, $0a
    rst $08
    sub e
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
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
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
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
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

Call_031_7a00:
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
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
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ld hl, $0c40
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$cf0a], sp
    sub e
    push af
    ld a, $1e
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
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    push af
    ld a, $5a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_031_7b1c:
    rst $18
    nop
    ld a, [bc]
    rst $08
    inc b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    jr nc, jr_031_7b57

    inc h

jr_031_7b57:
    rst $18
    ld d, [hl]
    dec b
    call Call_031_7a00
    ret


Call_031_7b5e:
    ld a, [$c450]
    cp $1b
    jr nz, jr_031_7b69

    ld a, $04
    jr jr_031_7b7b

jr_031_7b69:
    cp $1a
    jr nz, jr_031_7b71

    ld a, $03
    jr jr_031_7b7b

jr_031_7b71:
    cp $19
    jr nz, jr_031_7b79

    ld a, $02
    jr jr_031_7b7b

jr_031_7b79:
    ld a, $01

jr_031_7b7b:
    rst $18
    ld e, d
    dec b
    ret


    db $10
    ld a, [bc]
    ld bc, $0c32
    ei
    rst $38

Call_031_7b86:
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


Call_031_7b96:
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
    jr nz, jr_031_7c89

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
    jr nz, jr_031_7cc9

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

jr_031_7c89:
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

Call_031_7cb0:
    rst $30
    ret nz

    jr jr_031_7cdc

    ld [$40f7], sp
    ld c, $28
    inc bc
    rst $20
    add b
    ld a, [de]
    ret


    db $00

    dec c
    dec de
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $0c01
    db $fc

jr_031_7cc9:
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

jr_031_7cdc:
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
    ld hl, $c880
    ld d, $00
    ld e, a
    ld a, [$c835]
    or a
    jr z, jr_031_7d50

    ld a, $40
    add e
    ld e, a

jr_031_7d50:
    add hl, de
    pop de
    ret


Call_031_7d53:
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
    jr nz, jr_031_7d67

    xor a

jr_031_7d67:
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


Call_031_7d98:
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    rst $18
    nop
    ld b, c
    ret


Call_031_7da4:
    rst $30
    ld h, b
    inc c
    jr z, jr_031_7db6

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_031_7db6:
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
    call Call_031_7d98
    ret


    ld a, [$c810]
    cp $00
    jr z, jr_031_7dde

    rst $30
    add b
    ld de, $6828

jr_031_7dde:
    ld a, [$c810]
    cp $01
    jr z, jr_031_7dea

    rst $30
    and b
    ld de, $5c28

jr_031_7dea:
    ld a, [$c810]
    cp $02
    jr z, jr_031_7df6

    rst $30
    ret nz

    ld de, $5028

jr_031_7df6:
    ld a, [$c810]
    cp $03
    jr z, jr_031_7e02

    rst $30
    ldh [rNR11], a
    jr z, jr_031_7e46

jr_031_7e02:
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
    jr c, jr_031_7e31

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_031_7d98
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

jr_031_7e31:
    ld [$c46a], a
    ld hl, $c2a0
    ld de, $c466
    ld bc, $0004
    call Call_000_03d3
    ld a, [$c2a4]
    ld [$c465], a

jr_031_7e46:
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
