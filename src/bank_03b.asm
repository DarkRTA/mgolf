; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

    db $39, $43

    db $10
    ld b, e

    db $1f, $43, $60, $72, $f8, $76

    rla
    ld [hl], a
    ccf
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld l, l
    ld [hl], a
    ret c

    db $76

    db $20, $40, $58, $40, $4c, $40

    sub b
    ld b, b
    or b
    ld b, b
    ret nc

    ld b, b

    db $f9, $42, $00, $00, $4d, $42, $00, $00, $64, $42, $01, $28, $77, $42, $00, $3c
    db $83, $42, $01, $28

    sub [hl]
    ld b, d
    ld bc, $0028
    nop
    nop
    rst $38
    and d
    ld b, d
    ld bc, $a81e
    ld b, d
    ld bc, $e278
    ld b, d
    nop
    ld a, [bc]
    nop
    nop
    nop
    rst $38

    db $f9, $42, $01, $78

    ld [c], a
    ld b, d
    nop
    ld a, [bc]
    nop
    nop
    nop
    rst $38

    db $bf, $42, $01, $1e

    push bc
    ld b, d
    ld bc, $e278
    ld b, d
    nop

jr_03b_4063:
    ld a, [bc]
    nop
    nop
    nop
    rst $38
    db $ec
    ld b, b
    nop

jr_03b_406b:
    nop
    inc bc
    ld b, c
    ld bc, $9628
    ld b, d
    ld bc, $0028
    nop
    nop
    rst $38
    ld hl, sp+$41
    nop
    nop
    daa
    ld b, d
    ld bc, $1b28
    ld b, d
    nop
    nop
    add e
    ld b, d
    ld bc, $e228
    ld b, d
    ld bc, $0028
    nop
    nop
    rst $38
    adc a
    ld b, c
    nop
    nop
    push de
    ld b, c
    nop
    nop
    db $ec
    ld b, c
    ld bc, $0f28
    ld b, d
    nop
    nop
    dec de
    ld b, d
    nop
    jr z, jr_03b_4063

    ld b, c
    nop
    jr z, @-$1c

    ld b, d
    nop
    ld a, [bc]
    nop
    nop
    nop
    rst $38
    ld a, b
    ld b, c
    nop
    nop
    or d
    ld b, c
    nop
    nop
    db $ec
    ld b, c
    ld bc, $0f28
    ld b, d
    nop
    nop
    dec de
    ld b, d
    nop
    jr z, jr_03b_406b

    ld b, c
    ld bc, $e23c
    ld b, d
    ld bc, $0028
    nop
    nop
    rst $38
    ld l, a
    ld b, c
    nop
    nop
    ld c, l
    ld b, d
    nop
    nop
    ld h, h
    ld b, d
    ld bc, $7728
    ld b, d
    nop
    inc a
    add e
    ld b, d
    ld bc, $9628
    ld b, d
    ld bc, $0028
    nop
    nop
    rst $38
    ld hl, $0016
    ld a, l
    ld [$d33c], a
    ld a, h
    ld [$d33d], a
    ld hl, $f800
    ld a, l
    ld [$d338], a
    ld a, h
    ld [$d339], a
    ret


    ld hl, $d33c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    bit 7, h
    jr z, jr_03b_411d

    ld a, h
    xor $ff
    ld h, a
    ld a, l
    xor $ff
    add $01
    ld b, a
    ld a, h
    adc $00
    ld h, a
    ld l, b

jr_03b_411d:
    ld de, $0010
    add hl, de
    ld a, h
    ld h, d
    ld d, a
    ld a, l
    ld l, e
    ld e, a
    pop hl
    bit 7, h
    jr nz, jr_03b_4147

    ld a, h
    ld h, d
    ld d, a
    ld a, l
    ld l, e
    ld e, a
    ld a, h
    xor $ff
    ld h, a
    ld a, l
    xor $ff
    add $01
    ld b, a
    ld a, h
    adc $00
    ld h, a
    ld l, b
    ld a, h
    ld h, d
    ld d, a
    ld a, l
    ld l, e
    ld e, a

jr_03b_4147:
    ld a, h
    ld h, d
    ld d, a
    ld a, l
    ld l, e
    ld e, a
    ld hl, $d338
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    ld h, d
    ld d, a
    ld a, l
    ld l, e
    ld e, a
    bit 7, h
    jr nz, jr_03b_4163

    ld de, $f800
    jp Jump_03b_4166


jr_03b_4163:
    ld de, $1400

Jump_03b_4166:
    ld a, d
    ld [$d338], a
    ld a, e
    ld [$d338], a
    ret


    ld hl, $d33a
    ld [hl], $80
    inc hl
    ld [hl], $17
    ret


    ld hl, $0000
    ld a, l
    ld [$d338], a
    ld a, h
    ld [$d339], a
    ld hl, $4200
    ld a, l
    ld [$d33a], a
    ld a, h
    ld [$d33b], a
    ret


    ld hl, $6000
    ld a, l
    ld [$d338], a
    ld a, h
    ld [$d339], a
    ld hl, $4200
    ld a, l
    ld [$d33a], a
    ld a, h
    ld [$d33b], a
    ret


    ld hl, $0110
    ld a, l
    ld [$d33e], a
    ld a, h
    ld [$d33f], a
    ret


    ld hl, $fef0
    ld a, l
    ld [$d33e], a
    ld a, h
    ld [$d33f], a
    ret


    ld hl, $fd9a
    ld a, l
    ld [$d33c], a
    ld a, h
    ld [$d33d], a
    ld hl, $0110
    ld a, l
    ld [$d33e], a
    ld a, h
    ld [$d33f], a
    ret


    ld hl, $fd9a
    ld a, l
    ld [$d33c], a
    ld a, h
    ld [$d33d], a
    ld hl, $fef0
    ld a, l
    ld [$d33e], a
    ld a, h
    ld [$d33f], a
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
    ret


    ld hl, $0500
    ld a, l
    ld [$d33e], a
    ld a, h
    ld [$d33f], a
    ld hl, $9080
    ld a, l
    ld [$d33a], a
    ld a, h
    ld [$d33b], a
    ret


    ld hl, $0000
    ld a, l
    ld [$d33c], a
    ld a, h
    ld [$d33d], a
    ret


    ld hl, $0000
    ld a, l
    ld [$d33e], a
    ld a, h
    ld [$d33f], a
    ret


    ld hl, $d33e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ffe0
    add hl, de
    ld a, l
    ld [$d33e], a
    ld a, h
    ld [$d33f], a
    ret


    ld hl, $d33e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0020
    add hl, de
    ld a, l
    ld [$d33e], a
    ld a, h
    ld [$d33f], a
    ret


    ld hl, $0500
    ld a, l
    ld [$d33c], a
    ld a, h
    ld [$d33d], a
    ld hl, $a000
    ld a, l
    ld [$d338], a
    ld a, h
    ld [$d339], a
    ret


    ld hl, $d33c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ffe0
    add hl, de
    ld a, l
    ld [$d33c], a
    ld a, h
    ld [$d33d], a
    ret


    ld hl, $0000
    ld a, l
    ld [$d33c], a
    ld a, h
    ld [$d33d], a
    ret


    ld hl, $d33c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0020
    add hl, de
    ld a, l
    ld [$d33c], a
    ld a, h
    ld [$d33d], a
    ret


    ld hl, $8000
    ld a, l
    ld [$d33c], a
    ld a, h
    ld [$d33d], a
    ret


    ldh a, [$8c]
    and $01
    jr z, jr_03b_42e2

    ld hl, $0000
    ld a, l
    ld [$d338], a
    ld a, h
    ld [$d339], a
    ld hl, $1c00
    ld a, l
    ld [$d33a], a
    ld a, h
    ld [$d33b], a
    ret


    ldh a, [$8c]
    and $01
    jr z, jr_03b_42e2

    ld hl, $0000
    ld a, l
    ld [$d338], a
    ld a, h
    ld [$d339], a
    ld hl, $f200
    ld a, l
    ld [$d33a], a
    ld a, h
    ld [$d33b], a
    ret


    ld a, $0a
    ld [$c8a8], a
    ret


jr_03b_42e2:
    ld hl, $0000
    ld a, l
    ld [$d338], a
    ld a, h
    ld [$d339], a
    ld hl, $8000
    ld a, l
    ld [$d33a], a
    ld a, h
    ld [$d33b], a
    ret


    ld hl, $0000
    ld a, l
    ld [$d338], a
    ld a, h
    ld [$d339], a
    ld hl, $1a00
    ld a, l
    ld [$d33a], a
    ld a, h
    ld [$d33b], a
    ret


Call_03b_4310:
jr_03b_4310:
    call Call_000_2e3b
    ldh a, [$94]
    or a
    jr nz, jr_03b_431f

    ld a, [$d337]
    or a
    jr nz, jr_03b_4310

    ret


Call_03b_431f:
jr_03b_431f:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d337], a
    ld hl, $4433
    call Call_000_2449
    call Call_000_2e3b
    rst $18

    db $22, $12

    rst $18

    db $1e, $12

    ret


Call_03b_4339:
    push af
    rst $18

    db $20, $12

    rst $18

    db $24, $12

    pop af
    push af
    cp $2c
    jr c, jr_03b_4398

    cp $33
    jr c, jr_03b_4350

    cp $3d
    jr c, jr_03b_4350

    ld a, $3c

jr_03b_4350:
    push af
    ld a, $3d
    add a
    add a
    ld hl, $455b
    add l
    ld l, a
    jr nc, jr_03b_435d

    inc h

jr_03b_435d:
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $8c00
    ld bc, $0002
    call Call_000_0468
    call Call_000_0460
    call Call_000_2e3b
    pop af
    cp $33
    jr c, jr_03b_4398

    push af
    ld a, $3e
    add a
    add a
    ld hl, $455b
    add l
    ld l, a
    jr nc, jr_03b_4383

    inc h

jr_03b_4383:
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $8c20
    ld bc, $0002
    call Call_000_0468
    call Call_000_0460
    call Call_000_2e3b
    pop af

jr_03b_4398:
    add a
    add a
    ld hl, $455b
    add l
    ld l, a
    jr nc, jr_03b_43a2

    inc h

jr_03b_43a2:
    ld a, [hl+]
    ld [$d344], a
    push af
    push hl
    ld a, [hl+]
    and $0f
    ld [$d345], a
    pop hl
    ld a, [hl+]
    push hl
    swap a
    and $0f
    add a
    add a
    add a
    ld hl, $7220
    add l
    ld l, a
    jr nc, jr_03b_43c0

    inc h

jr_03b_43c0:
    ld de, $0b01
    call Call_000_056c
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    pop af
    ld de, $8c00
    cp $2c
    jr c, jr_03b_43f1

    cp $33
    jr c, jr_03b_43e4

    ld a, $40
    add e
    ld e, a
    jr nc, jr_03b_43de

    inc d

jr_03b_43de:
    ld a, b
    add $fe
    jp Jump_03b_43f2


jr_03b_43e4:
    ld a, $20
    add e
    ld e, a
    jr nc, jr_03b_43eb

    inc d

jr_03b_43eb:
    ld a, b
    add $ff
    jp Jump_03b_43f2


jr_03b_43f1:
    ld a, b

Jump_03b_43f2:
    add a
    ld c, a
    call Call_000_0468
    call Call_000_0460
    ld hl, $4014
    ld a, [$d345]
    add a
    add l
    ld l, a
    jr nc, jr_03b_4406

    inc h

jr_03b_4406:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$d335], a
    ld a, h
    ld [$d336], a
    ld hl, $d338
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $8c
    ld [$d337], a
    ld a, $00
    ld [$d343], a
    ld a, $1f
    ld hl, $4433
    call Call_000_23e8

jr_03b_4433:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d340
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or l
    jr z, jr_03b_4454

    ld de, $4448
    push de
    jp hl


    ld a, [$d342]
    or a
    jr nz, jr_03b_4454

    xor a
    ld hl, $d340
    ld [hl+], a
    ld [hl], a

jr_03b_4454:
    ld a, [$d343]
    or a
    jr nz, jr_03b_4478

    ld hl, $d335
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d340
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
    ld a, l
    ld [$d335], a
    ld a, h
    ld [$d336], a
    jr jr_03b_4433

jr_03b_4478:
    ld hl, $d343
    dec [hl]
    ld hl, $d33c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d338
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d338], a
    ld a, h
    ld [$d339], a
    ld hl, $d33e
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d33a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d33a], a
    ld a, h
    ld [$d33b], a
    ld hl, $d337
    dec [hl]
    ld a, [hl]
    or a
    jr nz, jr_03b_44ba

    ld hl, $4433
    call Call_000_2449
    rst $18

    db $22, $12

    rst $18

    db $1e, $12

jr_03b_44ba:
    ld a, [$d344]
    and $0f
    add a
    ld hl, $44da
    add l
    ld l, a
    jr nc, jr_03b_44c8

    inc h

jr_03b_44c8:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d339]
    ld d, a
    ld a, [$d33b]
    ld e, a
    ld bc, $03c0
    call Call_000_26ea
    ret


    ld a, [$fa44]
    ld b, h
    ld a, [$0344]
    ld b, l

    db $10, $45

    db $10
    ld b, l

    db $21, $45

    db $21
    ld b, l

    db $3a, $45

    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    ld b, l
    ld b, b
    ld d, b
    nop
    nop
    ld b, b
    ld e, b
    ld [bc], a
    nop
    add b
    ld b, b
    ld c, b
    nop
    nop
    ld b, b
    ld d, b
    ld [bc], a
    nop
    ld b, b
    ld e, b
    inc b
    nop
    add b

    db $40, $48, $00, $00, $40, $50, $02, $00, $40, $58, $04, $00, $40, $60, $06, $00
    db $80, $40, $40, $00, $00, $40, $48, $02, $00, $40, $50, $04, $00, $40, $58, $06
    db $00, $40, $60, $08, $00, $40, $68, $0a, $00, $80, $40, $38, $00, $00, $40, $40
    db $02, $00, $40, $48, $04, $00, $40, $50, $06, $00, $40, $58, $08, $00, $40, $60
    db $0a, $00, $40, $68, $0c, $00, $40, $70, $0e, $00, $80

    ld b, $51
    ld h, b
    ld b, [hl]

    db $04, $11, $20, $47

    ld b, $11
    and b
    ld b, a
    ld [$6021], sp
    ld c, b
    inc b
    ld sp, $4960
    inc b
    ld [hl-], a
    ldh [rOBP1], a
    ld [$6031], sp
    ld c, d
    ld [$6051], sp
    ld c, e

    db $08, $00, $60, $4c

    ld [$6000], sp
    ld c, l

    db $08, $00, $60, $4e, $08, $00, $60, $4f

    ld [$6032], sp
    ld d, b

    db $06, $32, $60, $51, $08, $42, $20, $52

    ld [$2042], sp
    ld l, d

    db $04, $42, $a0, $53

    ld [$2042], sp
    ld d, h

    db $06, $42, $20, $55

    ld [$e010], sp
    ld d, l
    ld [$e060], sp
    ld d, a

    db $08, $60, $e0, $58

    ld [$e060], sp
    ld e, c
    ld [$e060], sp
    ld e, d
    ld [$e001], sp
    ld e, e
    ld [$e032], sp
    ld e, h
    ld [$e002], sp
    ld e, l
    ld [$e002], sp
    ld e, [hl]

    db $08, $02, $e0, $5f

    ld [$e042], sp
    ld h, b
    ld [$2000], sp
    ld [hl], c
    ld b, $52
    ldh [$61], a
    ld [$a002], sp
    ld h, d
    ld [$a002], sp
    ld h, e
    ld [$a002], sp
    ld h, h
    ld [$a002], sp
    ld h, l
    ld [$a042], sp
    ld h, [hl]
    ld [$2032], sp
    ld l, c
    ld [$2000], sp
    ld l, e
    ld [$2042], sp
    ld [hl], b
    ld [$2000], sp
    ld l, l
    ld [$2000], sp
    ld l, [hl]
    ld [$2000], sp
    ld l, a
    inc b
    ld b, d
    jr nz, jr_03b_465e

    ld [bc], a
    ld bc, $6800
    ld [bc], a
    ld bc, $6820
    ld [bc], a
    ld bc, $6840
    ld [bc], a
    ld bc, $6860
    ld [bc], a
    ld bc, $6880
    ld [bc], a
    ld bc, $68a0
    ld [bc], a
    ld bc, $68c0
    inc bc
    ld bc, $67a0
    inc bc
    ld bc, $67c0
    inc bc
    ld bc, $67e0
    inc bc
    ld bc, $6800
    inc bc
    ld bc, $6820
    inc bc
    ld bc, $6840
    inc bc
    ld bc, $6860
    inc bc
    ld bc, $6880
    inc bc
    ld bc, $68a0
    inc bc
    ld bc, $68c0
    ld bc, $e001
    ld l, b
    ld bc, $c001
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03b_465e:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    dec bc
    inc c
    rrca
    ld [$0f0c], sp
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    db $f4
    inc c
    inc d
    db $ec
    ld h, h
    db $fc
    ld a, l
    db $fd
    cp d
    ld a, e
    push de
    ld [hl], $1b
    db $fc
    ld a, a
    ld hl, sp+$7b
    db $fc
    db $ed
    ld e, $ef
    rra
    dec bc
    ei
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6201
    ld h, e
    sub l
    or $ed
    ld e, $f6
    rrca
    scf
    rst $08
    ld [hl], l
    call $0cf4
    push af
    dec c
    ld l, e
    or a
    di
    rst $38
    rst $18
    rst $18
    inc c
    inc c
    nop
    nop
    add hl, de
    add hl, de
    rst $30
    xor $77
    adc [hl]
    rst $30
    ld c, $97
    ld l, [hl]
    or a
    ld l, [hl]
    rst $30
    ld c, $77
    adc [hl]
    rst $28
    sbc $eb
    jp c, $9a6b

    db $db
    ld a, [hl-]
    ld [hl-], a
    di
    db $e3
    db $e3
    pop bc
    pop bc
    nop

jr_03b_46e1:
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, e
    jp $c645


    ld c, e
    call $d956
    ld d, a
    ret c

    ld e, a
    ret c

    ld c, e
    call z, $cf4e

jr_03b_46fc:
    rst $00
    rst $00
    add c
    add c
    nop
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

    jr nz, @-$1e

    ret nc

    jr nc, jr_03b_46e1

    or b
    or b
    ld [hl], b
    ldh [$e0], a
    ld b, b
    ret nz

    and b
    ld h, b
    jr nz, jr_03b_46fc

    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    ld d, $19
    rra
    db $10
    rra
    db $10
    inc e
    inc de
    dec e
    inc de
    rra
    ld de, $101f
    rra
    db $10

jr_03b_4734:
    inc e
    inc de
    dec l
    inc sp
    dec sp
    daa
    ld h, $3e
    inc a
    inc a
    jr @+$1a

    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_03b_4734

    add hl, de
    ld [$6d9b], a
    sbc [hl]
    db $eb
    inc e
    rst $08
    jr c, @+$1d

    db $fc
    db $fd
    cp $e7
    rst $20
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
    ld h, b
    ld h, b
    sub c
    pop af
    db $eb
    ld a, [de]
    rst $30
    ld c, $37
    adc $77
    adc $f7
    ld c, $f7
    ld c, $6b
    or [hl]
    ld a, [c]
    rst $38
    rst $18
    rst $18
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    or b
    ld c, b
    ld hl, sp-$18
    jr jr_03b_47c9

    ld hl, sp+$70
    ldh a, [rLCDC]
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    rra
    rra
    ld l, $31
    ccf
    jr nz, @+$31

    jr nc, jr_03b_47e7

    inc sp
    dec e
    inc de
    rra
    ld de, $101f
    rra
    db $10
    inc e
    inc de
    dec e
    inc de
    rra
    db $10
    db $10
    rra
    rra
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    jp hl


jr_03b_47c9:
    add hl, de
    ld [hl], a
    adc [hl]
    cp d
    rst $00
    ld a, e
    add a
    rst $30
    rrca
    xor $1f
    scf
    adc $f7
    adc $e7
    ld e, $1e
    rst $38
    ei
    ei
    pop hl
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03b_47e7:
    nop
    add b
    add b
    ld e, e
    db $db
    ld [hl], h
    rst $28
    rst $38
    ldh [$73], a
    rst $28
    ld [hl], a
    rst $28
    ld [hl], l
    db $ed
    ld [hl], l
    db $ed
    ld [hl], h
    db $ec
    ld h, h
    db $fc
    db $fc
    db $fc
    sbc b
    sbc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    add hl, bc
    rrca
    dec c
    dec bc
    dec c
    dec bc
    or l
    cp e
    db $dd
    db $e3
    cp l
    jp $9b65


    ld l, l
    sbc e
    cp l
    jp $e3dd


    ld [hl], c
    ld a, a
    ccf
    ccf
    ld c, $0e
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
    ret nc

    or b
    sub c
    pop af
    ld a, [c]
    di
    push de
    or $9b
    db $fc
    db $db
    cp h
    rst $18
    cp h
    push de

jr_03b_4839:
    or [hl]
    sub a
    rst $30
    di
    di
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
    ld h, b
    ld h, b
    sub b
    ldh a, [$e8]
    jr jr_03b_4839

    ret c

    ld e, b
    cp b
    ldh a, [rSVBK]
    and b
    ld h, b
    ret nc

    jr nc, jr_03b_486b

    ldh a, [$f0]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    add hl, sp
    add hl, sp
    ld d, [hl]
    ld l, a
    ld [hl], a
    ld c, [hl]
    ld [hl], a
    ld c, [hl]
    ld [hl], a

jr_03b_486b:
    ld c, [hl]
    ld [hl], l
    ld c, [hl]
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, c
    ld b, [hl]
    ld [hl], a
    ld c, [hl]
    or a
    adc $e7
    sbc [hl]
    adc [hl]
    rst $38
    ei
    ei
    ld [hl], c
    ld [hl], c
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and [hl]
    ld h, [hl]
    cp c
    ld a, a
    xor a
    ld [hl], b
    or e
    ld l, h
    rst $10
    ld l, h
    rst $38
    ld b, b
    rst $18
    ld h, b
    xor $71
    ld sp, $ffff
    rst $38
    adc $ce
    nop
    nop
    ld h, b
    ld h, b
    ret nc

    or b
    ret nc

    or b
    ret nc

    or b
    pop de
    or c
    sub $b7
    db $db
    cp h
    rst $10
    cp e
    db $dd
    or d
    rst $18
    or c
    sbc $b1
    rst $10
    cp b
    sbc h
    rst $38
    rst $38
    rst $38
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    adc l
    adc e
    ld c, a
    ret


    xor a
    ld l, a
    xor l
    ld l, a
    ld l, c
    rst $28
    call $8dcb
    adc e
    ld c, l
    bit 1, c
    rst $08
    rst $08
    rst $08
    add [hl]
    add [hl]
    nop
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

    cp b
    ld a, b
    db $f4
    inc c
    ld a, [$9a06]
    ld h, [hl]
    xor d
    db $76
    cp d
    db $76
    cp d
    db $76
    ld [hl-], a
    cp $fe
    cp $cc
    call z, $0000
    rrca
    rrca
    ld d, $19
    cpl
    jr nc, jr_03b_4962

    ld h, [hl]
    or [hl]
    rst $08
    rst $28
    sbc a
    ld sp, hl
    sbc c
    pop af
    sub c
    ld a, [c]
    sub e
    db $ed
    sbc [hl]
    cp a
    ret nz

    sbc $e1
    ld h, c
    ld a, a
    ccf
    ccf
    ld e, $1e
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ldh a, [$30]
    xor $5e
    db $fd
    ld b, e
    cp $41
    and $59
    ld [$6e5d], a
    db $dd
    ld l, [hl]
    db $dd
    call z, $ffff
    rst $38
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
    inc c
    inc c
    ld [hl-], a
    ld a, $5d
    ld h, e
    cp l
    db $db
    db $eb
    sub a
    cp $8e
    db $f4
    adc h
    cp d
    add $e2
    cp $be
    cp [hl]
    inc e
    inc e
    nop
    nop

jr_03b_4962:
    ld [hl], b
    ld [hl], b
    xor h
    call c, $86fa
    db $fd
    add e
    and $99
    db $eb
    sbc h
    rst $38
    add b
    cp $81
    db $fd
    add e
    and $99
    ld [$fe9d], a
    add c
    add c
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    adc a
    adc [hl]
    ld [hl], e
    cp $5e
    db $e3
    push hl
    db $db
    xor a
    reti


    rst $38
    add c
    cp a
    pop bc
    db $dd
    db $e3
    db $e3
    rst $38
    ccf
    ccf
    inc e
    inc e
    nop
    nop
    jr nc, jr_03b_49d4

    add sp, -$28
    ld l, b
    sbc b
    add sp, $18
    xor b
    ld e, b
    db $eb
    ld e, e
    db $ed
    ld e, $2b
    db $dd
    xor $d9
    rst $28
    ret c

    ld a, e
    sbc h
    db $dd
    ld a, $36
    rst $30
    db $e3
    db $e3
    pop bc
    pop bc
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld l, l
    ld e, e
    ld a, l
    ld c, e
    db $dd
    db $eb
    dec l
    di
    push de
    dec sp
    db $dd
    cp e
    cp l
    ld a, e

jr_03b_49d4:
    push af
    ei
    ld l, e
    rst $30
    cp d
    ld h, [hl]
    ld h, $fe
    db $fc
    db $fc
    ret c

    ret c

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
    ld c, $09
    ld c, $09
    ld c, $09
    rrca
    ld [$0c0b], sp
    dec c
    ld c, $06
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld hl, sp-$08
    ld l, [hl]
    sbc [hl]
    ei
    rlca
    ei
    rlca
    sbc l
    ld h, e
    dec l
    di

jr_03b_4a0e:
    ld a, l
    di
    db $dd
    db $d3
    db $dd
    db $d3
    ld l, l
    di
    ei
    rlca
    di
    rrca
    rrca
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    nop
    nop
    ld a, a
    ld a, a
    cp l
    jp $99e6


    ld e, [hl]
    cp c
    sub $39
    push hl
    dec de
    cp $01
    rst $00
    jr c, jr_03b_4a0e

    inc a
    rst $18
    inc a
    rst $38
    nop
    ld a, [hl]
    add c

jr_03b_4a3a:
    add b
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    ld h, b
    ldh [$a0], a
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    jr nz, jr_03b_4a3a

    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    xor b
    ret c

    db $f4
    adc h
    ld a, [$fe86]
    add d
    push hl
    sbc e
    rst $28
    sbc c
    db $ed
    sbc e
    xor $93
    rst $38
    add d
    ld a, [$f787]
    adc a
    adc l
    db $fd
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
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
    call Call_03b_7dfb
    adc e
    sbc l
    ld l, e
    cp l
    ld l, e
    sbc $29
    ei
    inc c
    ld [hl], l
    adc [hl]
    adc [hl]
    rst $38
    ei
    ei
    ld [hl], c
    ld [hl], c
    nop
    nop
    inc b
    inc b
    ld a, [bc]
    ld c, $12
    ld e, $1a
    ld d, $1b
    rla
    ld a, [hl]
    ld [hl], c
    rst $18
    or b
    call c, $ddb3
    or e
    ld e, a
    or b
    rst $18
    jr nc, @-$22

    inc sp
    inc de
    rst $38
    rst $38
    rst $38
    db $ec
    db $ec
    nop
    nop
    jr nc, jr_03b_4af4

    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld l, c
    ld e, c
    xor $df
    ld a, e
    call c, Call_03b_5bf7
    db $fd
    ld d, d
    rst $38
    ld d, c
    ld a, [hl]
    pop de
    rst $30
    ret c

    call c, Call_03b_7fff
    ld a, a
    inc sp
    inc sp
    nop
    nop
    ld a, b
    ld a, b
    or [hl]
    adc $fd
    add e
    cp $81
    and a
    ret c

    ld c, e
    db $fc
    cp a
    ld h, b
    cp [hl]
    ld h, c
    ld e, l
    db $e3

jr_03b_4af4:
    and [hl]
    reti


    xor e
    call c, $c17e
    ld b, e
    rst $38
    rst $38
    rst $38
    cp h
    cp h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8201
    add e
    ld c, a
    adc $73
    cp $5e
    db $e3
    push hl
    db $db
    xor a
    reti


    rst $38
    add c
    cp a
    pop bc
    db $dd
    db $e3
    db $e3
    rst $38
    ccf
    ccf
    inc e
    inc e
    nop
    nop
    jr nc, jr_03b_4b54

    add sp, -$28
    ld l, b
    sbc b
    add sp, $18
    xor b
    ld e, b
    db $eb
    ld e, e
    db $ed
    ld e, $2b
    db $dd
    xor $d9
    rst $28
    ret c

    ld a, e
    sbc h
    db $dd
    ld a, $36
    rst $30
    db $e3
    db $e3
    pop bc
    pop bc
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld l, l
    ld e, e
    ld a, l
    ld c, e
    db $dd
    db $eb
    dec l
    di
    push de
    dec sp
    db $dd
    cp e
    cp l
    ld a, e

jr_03b_4b54:
    push af
    ei
    ld l, e
    rst $30
    cp d
    ld h, [hl]
    ld h, $fe
    db $fc
    db $fc
    ret c

    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    inc bc
    ld [bc], a
    dec b
    ld b, $07
    inc b
    dec bc
    inc c
    rrca
    ld [$1916], sp
    dec e
    inc de
    ld de, $1f1f
    rra
    ld c, $0e
    nop
    nop
    ld [hl], c
    ld [hl], c
    xor e
    jp c, $9a6b

    rst $30
    ld c, $f7
    ld c, $9b
    ld h, [hl]
    ld a, e
    and $db
    and $fb
    ld b, $33
    cp $fb
    cp $cb
    adc $0e
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    or b
    or b
    ld l, b
    ld hl, sp+$48
    ld hl, sp+$68
    ret c

    ld l, h
    call c, $c67a
    ld a, l
    jp $d966


    ld l, [hl]
    reti


    ld a, [hl]
    pop bc
    ld a, h
    jp $cf71


    ld b, a
    rst $38
    cp $fe
    cp b
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    add hl, de
    rra
    ld l, $31
    ld e, [hl]
    ld h, c
    or d
    call $8df6
    cp [hl]
    pop bc
    rst $18
    ldh [$f7], a
    ld a, [$3f3e]
    rrca
    rrca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_03b_4c18

    ld l, b
    ld e, b
    ld l, c
    ld e, c
    rst $30
    adc [hl]
    rst $28
    sbc $eb
    jp c, $daeb

    rst $30
    adc $57
    xor $7b
    and $62
    rst $38
    rst $38
    rst $38
    sbc l
    sbc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or c
    or c
    ld c, [hl]
    rst $38
    ei
    inc c
    inc a
    ei
    ld [hl], l
    ei
    ld d, a
    ret c

    ld d, a
    ret c

jr_03b_4c18:
    ld e, e
    call c, $cf4c
    rst $00
    rst $00
    add e
    add e
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
    add h
    add a
    ld c, e
    call z, Call_03b_79b6
    db $dd
    inc sp
    sbc $31
    jp c, $f63d

    add hl, sp
    ld a, l
    di
    db $d3
    rst $18
    sbc [hl]
    sbc [hl]
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
    jr jr_03b_4c62

    and h
    cp h
    call c, $b4e4
    call z, $9cec
    db $f4
    adc h
    call nc, $b4ec
    call z, $9cec
    sbc b
    ld hl, sp-$10
    ldh a, [$60]
    ld h, b
    nop
    nop

jr_03b_4c62:
    ld a, b
    ld a, b
    db $f4
    adc h
    cp d
    add $fd
    jp $417e


    ld [hl], e
    ld c, h
    ld [hl], l
    ld c, [hl]
    db $76
    ld c, a
    ld [hl], a
    ld c, a
    ld [hl], l
    ld c, l
    ld [hl], h
    ld c, h
    or h
    call z, $fc84
    db $fc
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    xor b
    ret c

    add sp, -$68
    xor $9e
    db $ed
    sbc e
    jp hl


    rra
    rst $28
    rra
    db $ed
    rra
    ld l, c
    sbc a
    db $ed
    sbc e
    xor l
    db $db
    db $ed
    db $db
    ld c, c
    ld a, a
    ld a, a
    ld a, a
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
    ld e, $1e
    ld l, l
    ld [hl], e
    or c
    rst $08
    rst $28
    sbc a
    ld e, [hl]
    cp a
    ld l, [hl]
    sbc a
    cp l
    jp $e3dd


    ld [hl], c
    ld a, a
    ccf
    ccf
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
    jr jr_03b_4ce4

    ld h, h
    ld a, h
    cp d
    add $7a
    or [hl]
    sub $2e
    db $fc
    inc e
    add sp, $18
    ld [hl], h
    adc h
    call nz, $fcfc
    db $fc
    jr c, jr_03b_4d18

    nop
    nop
    ld b, $06

jr_03b_4ce4:
    dec bc
    dec c
    rla
    add hl, de
    dec l
    inc sp
    ld e, e
    ld h, a
    ld e, l
    ld h, e
    ld l, [hl]
    ld [hl], c
    ld [hl], $39
    ld a, [de]
    dec e
    ld d, $19
    ld l, l
    ld [hl], e
    ei
    add a
    add [hl]
    cp $fc
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_03b_4d34

    ld l, b
    ld e, b
    ld l, b
    ld e, b
    xor b
    ret c

    db $ec
    sbc h
    ei
    add a
    cp $81
    and $99
    ld [$ee9d], a
    sbc l
    xor $9d

jr_03b_4d18:
    adc a
    db $fc
    db $fc
    rst $38
    ld [hl], a
    ld [hl], a
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
    ld b, $06
    add hl, de
    rra
    xor [hl]
    or c
    or e
    xor h
    rst $10
    db $ec

jr_03b_4d34:
    rst $38
    ret nz

    rst $18
    ldh [$6e], a
    pop af
    ld [hl], c
    rst $38
    rst $18
    rst $18
    adc [hl]
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03b_4d60

    inc [hl]
    inc l
    ld [hl], h
    ld l, h
    ld a, [$f686]
    xor $74
    db $ec
    ld [hl], h
    db $ec
    ld a, d
    and $6a
    or $fd
    di
    sub c
    sbc a
    rra
    rra
    ld c, $0e

jr_03b_4d60:
    nop
    nop
    ld a, b
    ld a, b
    push af

jr_03b_4d65:
    adc l
    cp e
    rst $00
    db $fd
    jp $417e


    ld [hl], e
    ld c, h
    ld [hl], l
    ld c, [hl]
    db $76
    ld c, a
    ld [hl], a
    ld c, a
    ld [hl], l
    ld c, l
    ld [hl], l
    ld c, l
    or h
    call z, $fc84
    db $fc
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    ldh [$e0], a
    ld d, b
    or b
    ret nc

    jr nc, jr_03b_4d65

    inc a
    jp c, $d236

    ld a, $df
    ccf
    db $db
    ccf
    ld e, d
    or a
    ld e, d
    or a
    db $db
    or a
    sbc e
    rst $30
    sub d
    cp $fe
    cp $6c
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    jp c, Jump_03b_63e6

    sbc a
    sbc $3f
    cp l
    ld a, [hl]
    db $dd
    ld a, $7f
    add [hl]
    cp d
    rst $00
    db $e3
    rst $38
    ld a, a
    ld a, a
    inc e
    inc e
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    rlca
    inc b
    inc b
    rlca
    scf
    scf
    set 7, e

jr_03b_4dce:
    ld [hl], l
    adc l
    push af
    ld l, l
    xor l
    ld e, l

jr_03b_4dd4:
    ld sp, hl
    add hl, sp
    pop de
    ld sp, $19e9
    adc c
    ld sp, hl
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    cp $fe
    db $fd
    inc bc
    pop bc
    ccf
    rst $18
    ccf
    sbc $3f
    db $db
    inc a
    call c, $d53b
    dec sp
    rst $18
    jr nc, jr_03b_4dce

    jr c, jr_03b_4e54

    cp h
    sbc h
    rst $38
    rst $30
    rst $30
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    adc h
    ld e, d
    sub $bb
    ld [hl], a
    db $db
    scf
    db $db
    scf
    call c, $d733
    jr c, jr_03b_4dd4

    ld a, h
    ld l, h
    rst $28
    rst $00
    rst $00
    add e
    add e
    nop
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
    inc bc
    call $b7ce
    ld a, b
    cp l
    ld [hl], e
    xor e
    ld [hl], a
    xor l
    ld [hl], e
    or a
    ld a, b
    cp e
    ld a, h
    inc l
    rst $28
    rst $20
    rst $20
    jp Jump_000_00c3


    nop
    ld h, b
    ld h, b
    ret nc

    or b
    ret nc

    or b
    ret nc

    or b
    ret c

    cp b
    or $8e
    db $fd
    add e
    db $ed
    sub e
    push hl
    sbc e

jr_03b_4e54:
    db $ed
    sbc e
    db $ed
    sbc e
    adc l
    ei
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld b, $06
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    dec b
    ld b, $07
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $04
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    jp $a5c3


    ld h, [hl]
    rst $10
    inc [hl]
    rst $28
    inc e
    rst $30
    inc c
    sbc a
    ld h, b
    xor a
    ld [hl], b
    or a
    ld a, b
    cp e
    ld a, h
    xor a
    ld l, h
    and l
    ld h, [hl]
    and a
    ld h, [hl]
    ld [hl+], a
    db $e3
    db $e3
    db $e3
    pop bc
    pop bc
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ldh a, [rBCPS]
    ret c

    ld c, e
    ei
    ld a, l
    cp $6f
    db $fc
    ld c, d
    db $fd
    ld l, e
    call c, $de6d
    ld l, [hl]
    rst $18
    ld c, e
    ei
    ld sp, hl
    ld sp, hl
    or b
    or b
    nop
    nop
    nop
    nop

jr_03b_4ec4:
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld l, e
    sbc e
    adc l
    ld a, [hl]
    ld a, e
    db $fd
    or $f9
    ld [hl], a
    ld hl, sp-$11
    jr jr_03b_4ec4

    inc e
    adc [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    pop bc
    ld hl, $d2e1
    inc sp
    db $d3
    or d
    or e
    ld [hl], d
    db $e3
    ld [c], a
    ld b, d
    jp Jump_03b_63a3


    ld hl, $e0e1
    ldh [$c0], a
    ret nz

    nop
    nop
    rrca
    rrca
    ld [hl], $39
    ld e, a
    ld h, b
    cp a
    ret nz

    ld h, c
    sbc [hl]
    adc $3f
    sbc e
    ld a, e
    or c
    ld [hl], c
    and d
    ld h, e
    db $dd
    ld a, $fe
    ld bc, $837c
    add e
    rst $38
    rst $38
    rst $38
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    cp b
    ld a, b
    or a
    ld l, a
    cp [hl]
    ld h, c
    cp a
    ld h, b
    cp c
    ld h, [hl]
    dec sp
    and $7b
    and $fb
    and $a2
    cp a
    ccf
    ccf
    dec e
    dec e
    nop
    nop
    nop
    nop
    nop
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

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    db $dd
    cp e
    db $ed
    sbc e
    push af
    adc e
    db $fd
    add e
    db $fd
    add e
    db $fd
    add e
    db $fd
    add e
    db $ed
    sub e
    push hl
    sbc e
    db $ed
    sbc e
    db $ed
    sbc e
    adc c
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld [hl], a
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

    xor [hl]
    ld l, [hl]
    scf
    ld sp, hl
    db $ed
    di
    cp e
    rst $20
    or [hl]
    ld l, a
    cp d
    ld h, a
    xor a
    ld [hl], c
    or l
    ld a, e
    add hl, sp
    rst $38
    rst $28
    rst $28
    add $c6
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $3332
    set 7, d
    ld [hl], l
    adc [hl]
    rst $30
    ld l, h
    xor a
    ld e, h
    ei
    inc a
    rst $18
    jr c, jr_03b_5027

    sbc c
    adc b
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld [hl], a
    nop
    nop
    ld b, b
    ld b, b
    xor [hl]
    xor $55
    cp e
    cp $11
    rst $38
    db $10
    cp a
    ld d, c
    db $76
    reti


    rst $28
    ret c

    xor $19
    xor l
    ld e, e
    ld l, l
    db $db
    db $ed
    db $db
    ret


    rst $38
    rst $38
    rst $38
    ld a, $3e
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld d, b
    or b
    xor b
    ret c

    db $76
    adc $fd
    ld d, a
    rst $28
    ld d, h
    db $76
    call $ddae
    ld e, [hl]
    cp l
    or [hl]
    ld [hl], l
    and [hl]
    ld h, l
    inc h
    rst $20
    rst $20
    rst $20
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
    call z, $b2cc
    ld a, [hl]
    dec a
    db $e3
    rst $20
    reti


    xor a
    reti


    rst $38
    add c
    cp a
    pop bc
    db $dd
    db $e3
    db $e3
    rst $38
    cp [hl]
    cp [hl]
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03b_5027:
    nop
    nop
    nop
    jr nc, jr_03b_505c

    ld c, e
    ld a, e
    or l
    adc $77
    adc h
    sub [hl]
    ld l, l
    or a
    ld l, h
    push af
    ld c, $7a
    add a
    cp e
    rst $10
    rst $38
    rst $38
    ld l, h
    ld l, h
    nop
    nop
    jr nc, @+$32

    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    ret c

    add sp, $76
    xor [hl]
    db $fd
    inc hl
    ld [hl], l
    db $eb
    db $fd
    bit 3, l
    db $eb
    cp l
    ld l, e
    xor l
    ld a, e
    add hl, sp
    rst $38

jr_03b_505c:
    rst $38
    rst $38
    add $c6
    nop
    nop
    ld h, e
    ld h, e
    rst $10
    or h
    rst $10
    or h
    rst $10
    or h
    rst $10
    or h
    sub $b5
    sbc $bd
    sub $bd
    jp z, $beb5

    pop bc
    cp $c1
    ld d, h
    ld l, e
    ld c, c
    ld a, a
    ld a, a
    ld a, a
    ld [hl], $36
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld a, c
    ld sp, hl
    ld b, l
    db $fd
    cp e
    add $fb
    add a
    res 6, a
    db $db
    or a
    ei
    add a
    cp e
    rst $00
    call $f9fb
    rst $38
    ccf
    ccf
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    and [hl]
    ld h, [hl]
    reti


    ccf
    or [hl]
    ld a, c
    xor [hl]
    ld [hl], l
    cp l
    ld h, e
    cp a
    ld h, a
    cp e
    ld h, a
    xor [hl]
    ld [hl], c
    jr c, @+$01

    rst $38
    rst $38
    rst $00
    rst $00
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld l, a
    ld l, [hl]
    db $d3
    cp [hl]
    rst $38
    add d
    rst $28
    sbc [hl]
    db $db
    cp d
    db $d3
    or d
    push de
    or [hl]
    rst $10
    or h
    sub h
    rst $30
    rst $30
    rst $30
    ld h, e
    ld h, e
    nop
    nop
    or b
    or b
    ld c, b
    ld hl, sp+$68
    ret c

    ld l, a
    rst $18
    ld l, b
    rst $18
    scf
    ret c

    rst $38
    db $10
    ld sp, hl
    ld d, $bb
    ld d, [hl]
    ld a, a
    ret nc

    ld [hl], a
    ret c

    ld l, c
    rst $18
    rst $08
    rst $38
    rst $30
    rst $30
    jr nc, jr_03b_5130

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    cp [hl]
    ld a, l
    jp $fb45


    ld a, l
    ei
    ld [hl], a
    ei
    ld l, e
    rst $30
    ld a, e
    rst $20
    cp l
    ld h, e
    jr nz, @+$01

    rst $38
    rst $38
    rst $18
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    adc e
    ei
    db $76
    adc l
    rst $30
    inc c

jr_03b_5130:
    sub [hl]
    ld l, l
    or [hl]
    ld l, l
    or $0d
    db $76
    adc l
    sbc d
    rst $30
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    add hl, bc
    rrca
    dec c
    dec bc
    ld l, l
    ld l, e
    sub l
    ei
    db $ed
    inc sp
    ld e, l
    db $e3
    and l
    db $db
    db $ed
    sbc e
    cp l
    jp $e3dd


    pop af
    rst $38
    cp a
    cp a
    ld c, $0e
    nop
    nop
    ld a, $3e
    ld e, l
    ld h, e
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld a, b
    ld h, a
    dec sp
    daa
    ld a, $23
    ccf
    jr nz, jr_03b_51b2

    jr nz, jr_03b_51ad

    daa

jr_03b_5176:
    dec sp
    daa
    ccf
    jr nz, jr_03b_519b

    ccf
    ccf
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$d0], a
    jr nc, jr_03b_5176

    dec de
    db $76
    adc l
    or $0d
    xor $1d
    sbc $3d
    ld l, a
    sbc h
    db $ed
    sbc [hl]
    adc $3f
    dec sp

jr_03b_519b:
    ei
    pop af
    pop af
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
    ld b, $06
    cp l

jr_03b_51ad:
    cp e
    rst $28
    ret c

    rst $28
    ret c

jr_03b_51b2:
    db $ec
    db $db
    dec l
    db $db
    db $ed
    dec de
    db $ed
    dec de
    add hl, bc
    rst $38
    rst $38
    rst $38
    or $f6
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld a, [bc]
    ld c, $1a
    ld d, $1a
    ld d, $db
    rst $10
    cp d
    ld [hl], a
    reti


    ld [hl], $df
    jr nc, jr_03b_5234

    or b
    reti


    or [hl]
    jp c, $93b7

    rst $38
    rst $38
    rst $38
    ld l, h
    ld l, h
    nop
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
    adc c
    adc a
    ld d, [hl]
    reti


    ld l, [hl]
    push af
    ld e, l
    db $e3
    rst $18
    rst $20
    ei
    ld h, a
    xor [hl]
    ld [hl], c
    jr c, @+$01

    rst $38
    rst $38
    rst $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    jp nc, $febe

    add d
    xor $9e
    ret c

    cp b
    ret nc

    or b
    ret nc

    or b
    ret nc

    or b
    sub b
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b

jr_03b_5234:
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    inc b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    ld hl, sp-$08
    db $f4
    inc c
    inc d
    db $ec
    ld h, h
    db $fc
    ld a, a
    rst $38
    cp l
    ld a, [hl]
    db $db
    inc a
    inc d
    ei
    ld a, l
    di
    ld [hl], a
    ld hl, sp+$5b
    call c, $ce4d
    ld b, a
    rst $00
    jp $80c3


    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add $c6
    dec l
    db $eb
    reti


    ccf
    rst $18
    ccf
    push de
    scf
    db $dd
    dec sp
    db $dd
    dec sp
    db $dd
    dec sp
    ld l, l
    db $db
    ret


    rst $38

jr_03b_527c:
    rst $38
    rst $38
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
    db $db
    db $db
    and a
    ld a, h
    db $fd
    ld b, $df
    ld a, $b2
    ld [hl], e
    and e
    ld h, e
    and c
    ld h, c
    and c
    ld h, c
    jr nz, jr_03b_527c

    ldh [$e0], a
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
    add c
    add c
    ld e, d
    db $db
    and l
    ld a, [hl]
    rst $30
    inc l
    sub $29
    cp $01
    ld l, h
    sub e
    push de
    cp e
    sbc c
    rst $38
    rst $38
    rst $38
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
    ld bc, $c601
    rst $00
    dec hl
    db $ec
    ld [hl], a
    ld hl, sp+$69
    or $7b
    and $ef
    ldh a, [$b7]
    cp b
    sbc d
    sbc l
    rrca
    rrca
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
    inc c
    inc c
    sbc e
    sub a
    ld e, a
    db $d3
    cp a
    ld [hl], e
    or a
    ld a, b
    cp b
    ld a, a
    xor a
    ld l, a
    and [hl]
    ld h, a
    xor l
    ld l, [hl]
    rst $10
    cp b
    sub b
    rst $38
    rst $38
    rst $38
    ld l, a
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    ld h, b
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld l, [hl]
    db $dd
    or e
    db $dd
    or e
    db $dd
    or e
    db $dd
    or e
    db $dd
    or e
    db $fd
    add e
    db $fd
    add e
    call $ddb3
    or e
    db $dd
    or e
    sbc l
    di
    sub c
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $4a31
    ld a, e
    or l
    adc $76
    xor l
    xor $1d
    rst $38
    inc a
    db $dd
    ld a, $76
    adc a
    add a
    rst $38
    db $fd
    db $fd
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    call Call_000_2dcb
    db $eb
    sbc $31
    db $dd
    dec sp
    ld e, l
    cp e
    db $dd
    cp e
    sbc $39
    jp c, $ef3d

    ld e, h
    call z, $ffff
    rst $38
    inc sp
    inc sp
    nop
    nop
    nop
    nop
    jr nc, jr_03b_53b6

    ld l, b
    ld e, b

jr_03b_5388:
    ld l, b
    ld e, b
    ld l, b
    ld e, b
    db $ec
    call c, $c6fa
    ld a, l
    ld b, e
    ld h, l
    ld e, e
    db $ed
    db $db
    db $ed
    db $db
    ld l, l
    db $db
    ld c, c
    rst $38
    rst $38
    rst $38
    or [hl]
    or [hl]
    nop
    nop
    ld [hl], b
    ld [hl], b
    xor h
    call c, $86fa
    db $fd
    add e
    adc $b1
    sbc $b9
    or $99
    cp $81
    db $fd
    add e
    res 6, a

jr_03b_53b6:
    reti


    or a
    db $dd
    or e
    sub c
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    sbc c
    rst $20
    cp $bb
    add $cf
    or d
    ld e, a
    or d
    rst $38
    ld [bc], a
    ld a, d
    add a
    or e
    rst $08
    rst $00
    rst $38
    ld a, h
    ld a, h
    jr c, jr_03b_5418

    nop
    nop
    ld bc, $0701
    ld b, $0b
    inc c
    rla
    jr jr_03b_5388

    sub d
    ld e, a
    jp nc, $f877

    ld l, c
    sbc $6f
    sbc $af
    ld e, [hl]
    db $eb
    inc e
    ld l, [hl]
    sbc c
    adc c
    rst $38
    rst $38
    rst $38
    db $76
    halt
    nop
    add b
    add b
    ld [hl], b
    ldh a, [rBCPS]
    ret c

    ld l, b
    ret c

    ld l, b
    ret c

    ld l, h
    call c, $c67a
    ld a, l
    jp $db65


    ld l, l
    db $db
    db $ed
    db $db

jr_03b_5418:
    db $ed
    db $db
    ret


    rst $38
    ld a, a
    ld a, a
    ld [hl], $36
    nop
    nop
    inc e
    inc e
    ld a, [hl+]
    ld [hl], $3d
    inc hl
    ld a, $21
    ccf
    jr nz, jr_03b_5466

    ld h, $3b
    ld h, $3b
    ld h, $3b
    inc h
    ccf
    jr nz, jr_03b_5475

    ld hl, $233d
    inc hl
    ccf
    ld a, $3e
    inc e
    inc e
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
    adc h
    adc h
    ld d, e
    rst $18
    db $ed
    ld [hl], e
    db $dd
    ld l, e
    ei
    ld b, a
    ld a, a
    rst $08
    rst $30
    rst $08
    db $dd
    db $e3
    ld h, c
    ld a, a
    ccf
    ccf
    ld e, $1e
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_03b_5466:
    dec b
    ld b, $07
    inc b
    scf
    inc [hl]
    ld c, a
    ld a, h
    or a
    call z, $ac77
    rst $28
    inc e
    rst $38

jr_03b_5475:
    inc a
    sbc $3d
    db $76
    adc l
    add h
    rst $38
    rst $38
    rst $38
    ld a, e
    ld a, e
    nop
    nop
    ld bc, $8201
    add e
    ld b, e
    jp nz, Jump_03b_62a3

    di
    ld [de], a
    dec hl
    jp c, $da6b

    db $db
    ld a, [hl-]
    or e
    ld [hl], d
    ld h, e
    ld [c], a
    jp $83c2


    add d
    add d
    add e
    add e
    add e
    ld bc, $0001
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    db $f4
    inc c
    ld a, [hl-]
    add $7b
    rst $20
    jp c, $fb67

    ld b, $e5
    ld e, $2f
    call c, $de6d
    db $76
    rst $08
    ld b, a
    rst $38
    db $fd
    db $fd
    cp b
    cp b
    nop
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
    ld h, [hl]
    sbc l
    ei
    db $ed
    dec de
    dec a
    bit 7, l
    set 7, [hl]
    add hl, bc
    db $eb
    inc e
    call $1e3e
    rst $38
    di
    di
    pop hl
    pop hl
    nop
    nop
    ld b, $06
    dec e
    dec de
    dec l
    inc sp
    ld e, l
    ld h, e
    ld [hl], l
    ld c, e
    ld a, l
    ld c, e
    db $dd
    db $e3
    and l
    ld a, e
    cp l
    ld a, e
    cp l
    ld a, e
    xor a
    ld [hl], e
    cp e
    ld h, a
    daa
    rst $38
    db $fd
    db $fd
    ret c

    ret c

    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    or b
    ld [hl], b
    add sp, $18
    db $f4
    inc c
    sub h
    ld l, h
    or h
    ld l, h
    or h
    ld l, h
    or h
    ld l, h
    inc h
    db $fc
    db $fc
    db $fc
    ret c

    ret c

    nop
    nop
    inc c
    inc c
    ld d, $1a
    ld l, $32
    ld e, d
    ld h, [hl]
    or [hl]
    adc $ba
    add $dd
    db $e3
    ld l, [hl]
    ld [hl], e
    scf
    ld a, [hl-]
    cpl
    ld [hl-], a
    ld e, e
    ld h, [hl]
    or $8f
    adc a
    rst $38
    ld sp, hl
    ld sp, hl
    ld [hl], b
    ld [hl], b
    nop
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
    sbc a
    rst $38
    ld l, a
    sbc b
    rst $28
    ld e, b
    rst $18
    jr c, @+$01

    ld a, d
    cp a
    ld a, d
    rst $28
    ld a, [de]
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    push af
    push af
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    rlca
    inc b
    rra
    inc e
    ld [hl], $2d
    rst $20
    db $fd
    ld a, a
    db $fd
    rst $30
    inc a
    rst $30
    inc l
    or $ad
    rst $30
    xor l
    rst $30
    xor l
    and l
    rst $38
    rst $38
    rst $38
    ld a, d
    ld a, d
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    and b
    ld h, b
    sub $36
    reti


    cp a
    ld d, [hl]
    cp c
    db $db
    inc [hl]
    xor a
    ld [hl], h
    rst $38
    ld h, b
    xor [hl]
    ld [hl], c
    or h
    ld a, e
    add hl, sp
    rst $38
    rst $28
    rst $28
    add $c6
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    ld c, [hl]
    ld c, c
    rst $28
    xor c
    ei
    cp h
    db $f4
    xor a
    rst $30
    xor a
    rst $10
    xor a
    push af
    adc [hl]
    or a
    call z, $ffc4
    ld a, a
    ld a, a
    dec sp
    dec sp
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    cp b
    ld l, b
    cp b
    ld l, b
    cp b
    ld l, b
    cp h
    ld l, h
    cp d
    ld h, [hl]
    cp l
    ld h, e
    or l
    ld l, e
    cp l
    ld l, e
    db $fd
    ld l, e
    ld a, l
    db $eb
    jp hl


    rst $38
    cp a
    cp a
    ld d, $16
    nop
    nop
    rra
    rra
    cpl
    jr nc, jr_03b_561f

    daa
    dec sp
    daa

jr_03b_55ea:
    dec sp
    daa
    dec a
    inc hl
    ld a, $21
    jr c, jr_03b_5619

    dec sp
    daa
    ld e, e
    ld h, a
    ld a, a
    ld b, b
    ld h, a
    ld a, b
    jr c, @+$41

    rra
    rra
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ld h, b
    jr nz, jr_03b_55ea

    ld hl, sp-$08
    push af
    db $ed
    cp d
    and a
    db $ed
    ld a, [c]
    rst $30
    ld hl, sp-$29
    ret c

    ld e, h
    db $d3
    ld l, e

jr_03b_5619:
    rst $30
    ld h, a
    rst $38
    db $fc
    db $fc
    sbc b

jr_03b_561f:
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp $adc3


    ld l, [hl]
    or [hl]
    ld a, c
    ld a, l
    di
    db $eb
    rst $30
    ld l, l
    di
    or a
    ld a, b
    dec sp
    db $fc
    xor $ef
    rst $00
    rst $00
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
    jp $acc3


    ld l, a
    scf
    ld hl, sp-$11
    or $da
    push hl
    rst $18
    db $e3
    cp l
    ld h, e
    xor [hl]
    ld [hl], c
    jr c, @+$01

    rst $38
    rst $38
    rst $00
    rst $00
    nop
    nop
    dec de
    dec de
    ld [hl], $2d
    ld [hl], $2d
    ld [hl], $2d
    ld [hl], $2d
    or [hl]
    xor l
    db $76
    db $ed
    db $76
    db $ed
    or $ed
    or [hl]
    xor l
    ld [hl], $2d
    or [hl]
    xor l
    and h
    cp a
    cp a
    cp a
    dec de
    dec de
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add [hl]
    add [hl]
    sbc c
    sbc a
    xor [hl]
    or c
    sbc $ed
    or l
    res 7, a
    rst $00
    ei
    rst $00
    sbc $e1
    ldh a, [rIE]
    cp a
    cp a
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
    ld h, b
    ld h, b
    db $dd
    cp l
    ei
    add a
    db $fd
    add e
    push hl
    sbc e
    db $ed
    sbc e
    db $ed
    sbc e
    db $ed
    sbc e
    adc c
    rst $38
    rst $38
    rst $38
    db $76
    halt
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    ld l, b
    ld e, b
    add sp, -$28
    db $f4
    inc c
    db $ec
    call c, $d8e8
    ld l, b
    ld e, b
    ld [hl], h
    ld c, h
    ld d, h
    ld l, h
    ld a, d
    ld h, [hl]
    ld [hl+], a
    ld a, $3e
    ld a, $1c
    inc e
    nop
    nop
    nop
    nop
    ld c, $0e
    rla
    dec de
    ld l, a
    ld [hl], b
    cp h
    jp $8ff3


    xor a
    rst $18
    db $dd
    db $fd
    db $76
    ld [hl], a
    dec sp
    inc a
    cpl
    jr nc, @+$38

    add hl, sp
    add hl, de
    rra
    rrca
    rrca
    ld b, $06
    ld a, [hl]
    ld a, [hl]
    jp c, $dbb6

    or a
    sub d
    rst $38
    rst $38
    ld a, [hl]
    rst $28
    inc e
    ld a, a
    adc h
    ld l, [hl]
    sbc l
    db $fc
    rra
    rst $10
    scf
    or e
    ld [hl], e
    ld h, b
    ldh [$c1], a
    pop bc
    add c
    add c

Jump_03b_571c:
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add a
    add a
    ret


    rst $08
    ld c, [hl]
    ret


    ld c, [hl]
    ret


    ld c, [hl]
    ret


    adc $c9
    sub [hl]
    sbc c
    sbc l
    sub e
    dec l
    inc sp
    db $db
    rst $20
    and $1e
    inc e
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    add a
    add h
    add l
    add [hl]
    add [hl]
    add a
    add e
    add e
    rst $38
    rst $38
    cp [hl]
    jp nz, $8ef2

    adc a
    rst $38
    rst $38
    db $fc
    ld [hl], l
    db $76
    ld b, $07
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    ld h, c
    pop hl
    jp nc, $d333

    ld [hl-], a
    sub l
    or $fa
    db $fd
    db $76
    ld a, c
    db $dd
    db $e3
    ld a, l
    add e
    di
    rrca
    adc $3e
    inc a
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    db $fd
    cp $ff
    add b
    cp b
    rst $00
    add $ff
    db $fd
    cp $b7
    cp b
    call $fbf2
    add [hl]
    or l
    adc $cd
    cp $7a
    ld a, e
    inc sp
    inc sp
    ld bc, $0001
    nop
    ldh [$e0], a
    xor a
    ld l, a
    cp [hl]
    ld a, c
    db $eb
    inc e
    call $bf3e
    ld a, a
    or e
    ld [hl], e
    and b
    ld h, b
    and c
    ld h, c
    xor [hl]
    ld l, a
    xor a
    ld l, b
    xor e
    ld l, h
    xor h
    ld l, a
    rst $20
    rst $20
    db $e3
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    jp $a5c3


    ld h, a
    and a
    ld h, l
    dec hl
    db $ed
    push af
    ei
    db $ed
    di
    cp e
    rst $00
    ld a, [$e606]
    ld e, $9c
    ld a, h
    ld a, b
    ld hl, sp-$20
    ldh [$80], a
    add b
    nop
    nop
    ccf
    ccf
    ld e, a
    ld h, b
    ld [hl], c
    ld c, [hl]
    db $76
    ld c, a
    ld [hl], a
    ld c, a
    ld a, e
    ld b, a
    ld a, l
    ld b, e
    ld [hl], c
    ld c, a
    ld [hl], a
    ld c, a
    or a
    rst $08
    cp $81
    adc $f1
    ld [hl], b
    ld a, a
    ccf
    ccf
    rrca
    rrca
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, [hl]
    add $d9
    rst $18
    xor [hl]
    or c
    ld e, a
    ld h, b
    or e
    call z, $8cf7
    cp a
    ret nz

    rst $18
    ldh [$f7], a
    ld a, [$bfbe]
    adc a
    adc a
    ld bc, $0001
    nop
    ld b, $06
    add hl, de
    rra
    dec l
    inc sp
    ld e, l
    ld h, e
    or l
    res 7, l
    set 3, l
    db $e3
    db $ed
    di
    cp l
    or e
    cp l
    or e
    ld a, l
    jp $e75b


    ld h, a
    rst $38
    db $fd
    db $fd
    sbc b
    sbc b
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    and c
    ld h, c
    and [hl]
    ld h, a
    xor e
    ld l, h
    or a
    ld a, e
    xor l
    ld [hl], d
    xor a
    ld [hl], c
    cp [hl]
    ld [hl], c
    or a
    ld a, b
    inc a
    rst $38
    rst $28
    rst $28
    jp Jump_000_00c3


    nop
    rlca
    rlca
    dec bc
    inc c
    rrca
    ld [$080f], sp
    adc [hl]
    adc c
    ld c, [hl]
    ret


    xor a
    ld l, b
    xor a

jr_03b_5871:
    ld l, b
    ld l, a
    add sp, -$32
    ret


    sub l
    sbc e
    ld e, l
    db $d3
    ld d, e
    rst $18
    sbc $de
    adc h
    adc h
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_03b_5871

    jr @+$70

    sbc [hl]
    db $ed
    db $db
    xor l
    db $db
    db $ed
    dec de
    call Call_000_1e3b
    ld sp, hl
    ei
    db $fc
    db $ed
    xor $06
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    dec c
    dec bc
    dec e
    dec de
    ld a, [hl]
    ld h, c
    db $dd
    cp e
    db $dd
    cp e
    db $dd
    cp e
    ld e, [hl]
    cp c
    jp c, $df3d

    inc a
    inc d
    rst $30
    rst $30
    rst $30
    di
    di
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03b_58e0

    inc [hl]
    inc l
    ld [hl], h
    ld l, h
    ld a, [$f686]
    xor $f4
    db $ec
    inc [hl]
    inc l
    cp d
    and [hl]
    xor d
    or [hl]
    ld a, l
    di
    ld d, c
    rst $18
    rst $18
    rst $18
    adc [hl]
    adc [hl]

jr_03b_58e0:
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    ld a, [bc]
    dec c
    ld c, $09
    add hl, bc
    rrca
    rrca
    rrca
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    db $f4
    inc c
    ld a, [hl-]
    add $7a
    and $db
    ld h, a
    ld a, [$e307]
    ld e, $0e
    rst $38
    ei
    ei
    pop af
    pop af
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
    jr jr_03b_5942

    ld h, h
    ld a, h
    cp d
    add $7a
    add [hl]
    jp z, $da36

    ld [hl], $fa
    ld b, $7d
    add e
    db $dd
    db $eb
    ld sp, hl
    rst $38
    ccf
    ccf
    ld b, $06
    nop
    nop

jr_03b_5942:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    jp c, $f2b6

    adc [hl]
    xor $9e
    call c, $d0bc
    or b
    pop de
    or c
    pop de
    or c
    sub c
    pop af
    pop af
    pop af
    ld h, b
    ld h, b
    nop
    nop
    ld a, b
    ld a, b
    or [hl]
    adc $fd
    add e
    cp $81
    rst $20
    sbc b

jr_03b_596c:
    rst $28
    sbc h
    ei
    adc h
    rst $38
    add b
    db $fc
    add e
    pop hl
    sbc a
    ld e, a
    cp a
    sbc $3e
    jr nc, jr_03b_596c

    ldh [$e0], a
    ret nz

jr_03b_597f:
    ret nz

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
    ld [hl], b
    ldh a, [rOCPD]
    db $db
    ld l, [hl]
    db $dd
    ld l, [hl]
    db $dd
    ld l, [hl]
    db $dd
    ld a, [c]
    call $c1fe
    ld a, [hl]
    ld h, c
    jr nc, jr_03b_59db

    rra
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_03b_59d8

    ld l, c
    ld e, c
    db $eb
    db $db
    rst $30
    inc c
    rst $28
    rst $18
    rst $28
    rst $18
    jp hl


    reti


    push af
    call $edd5
    ei
    rst $20
    and d
    cp [hl]
    cp [hl]
    cp [hl]
    sbc h
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ld h, b
    ret nc

    jr nc, jr_03b_597f

    ld [hl], b
    and b
    ld h, b
    and b
    ld h, b
    ret nc

    jr nc, @+$52

    or b

jr_03b_59d8:
    add sp, -$68
    adc b

jr_03b_59db:
    ld hl, sp-$08
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    inc c
    inc c
    inc de
    rra
    dec l
    inc sp
    dec a
    inc hl
    ld e, l
    ld h, e
    ld [hl], l
    ld c, e
    xor l
    db $db
    db $ed
    sbc e
    db $fd
    add e
    push af
    adc e
    db $ed
    sbc e
    reti


    cp a
    sbc a
    rst $38
    rst $30
    rst $30
    ld h, b
    ld h, b
    nop
    nop
    call c, $badc
    db $76
    xor d
    db $76
    cp d
    ld h, [hl]
    cp d
    ld h, [hl]
    cp c
    ld h, a
    cp [hl]
    ld h, c
    cp a
    ld h, b
    cp c
    ld h, [hl]
    cp e
    ld h, [hl]
    cp [hl]
    ld h, c
    cp h
    ld h, e
    ld hl, $ffff
    rst $38
    sbc $de
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1b01
    ld a, [de]
    daa
    ld a, $5f
    ld h, h
    cp e
    add $cb
    or [hl]
    db $db
    or [hl]
    ei
    add [hl]

Jump_03b_5a36:
    cp [hl]
    jp $fbcd


    db $fd
    ei
    ccf
    ccf
    ld b, $06
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

    db $76
    or $ab
    ld a, a
    ld e, d
    rst $20
    ld [hl], l
    adc $6a
    db $dd
    ld l, [hl]
    reti


    ld l, e
    call c, $de6d
    ld c, [hl]
    rst $38
    ei
    ei
    pop af
    pop af
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
    call nz, Call_000_2ac7
    db $ed
    push de
    dec sp
    rst $38
    inc de
    ld [hl], l
    sbc e
    ld a, [$f79d]
    add hl, de
    db $dd
    inc sp
    inc sp
    rst $38
    rst $38
    rst $38
    call z, Call_000_00cc
    nop
    rlca
    rlca
    ld a, [bc]
    dec c
    rrca
    ld [$383f], sp
    call z, $bdfb
    bit 5, a
    sbc b
    rst $18
    jr c, jr_03b_5b02

    sbc b
    xor h
    db $db
    ld l, l
    sbc e
    db $dd
    dec sp
    add hl, sp
    rst $38
    rst $28
    rst $28
    add $c6
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and c
    ld h, c
    or e
    ld [hl], e
    rst $28
    ld e, h
    rst $28
    ld e, e
    db $ed
    ld e, e
    ld l, l
    db $db
    ld [hl], l
    set 3, l
    db $e3
    db $ed
    di
    ld sp, $1f3f
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    xor h
    ld l, h
    cp d
    db $76
    jp c, $ba36

    db $76
    cp l
    ld h, e
    cp e
    ld [hl], a
    cp d
    db $76
    cp d
    db $76
    cp d
    db $76
    ld [hl-], a
    cp $fe
    cp $cc
    call z, $0000
    ld a, b
    ld a, b
    or [hl]
    adc $fd
    add e
    rst $38
    add b
    db $e3
    sbc h
    db $ed
    sbc [hl]
    db $eb
    sbc h
    rst $38
    add b
    rst $38
    add b
    rst $20
    sbc b
    rst $28
    sbc h
    rst $38
    add b
    add b
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop

jr_03b_5b02:
    nop
    nop
    nop
    nop
    add b
    add b
    ld e, b
    ret c

    or a
    ld l, a
    and [hl]
    ld a, l
    cp a
    ld a, h
    scf
    db $fc
    db $76
    db $ed
    or [hl]
    ld l, l
    or [hl]
    ld l, l
    ld [hl], $ed
    db $e4
    rst $38
    rst $38
    rst $38
    dec de
    dec de
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    ld h, e
    ld h, d
    db $dd
    cp [hl]
    sub a
    ld a, b
    ld l, a
    ldh a, [$f9]
    and $bb
    and [hl]
    xor a
    or b
    or a
    cp b
    sbc h
    sbc a
    adc a
    adc a
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ldh a, [rBCPS]
    ret c

    ld c, e
    ei
    ld a, l
    cp $6b
    db $fd
    ld l, [hl]
    reti


    ld l, a
    ret c

    ld l, a
    ret c

    ld l, e
    call c, $ff4e
    ei
    ei
    or c
    or c
    nop
    nop
    rlca
    rlca
    dec bc
    inc c
    rrca
    ld [$080f], sp
    adc $c9
    ld l, $e9
    rst $18
    jr c, @-$1f

jr_03b_5b71:
    cp b
    cp a
    ld a, b
    db $ec
    db $eb
    ld d, l
    db $db
    cp l
    ld [hl], e
    inc sp
    rst $38
    cp $fe
    call z, Call_000_00cc
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_03b_5b71

    jr @+$70

    sbc [hl]
    db $ed
    db $db
    xor l
    db $db
    db $ed
    dec de
    adc l
    ld a, e
    ld a, $f9
    ei
    db $fc
    call $06ce
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    dec c
    dec bc
    dec e
    dec de
    ld a, [hl]
    ld h, c
    db $dd
    cp e
    db $dd
    cp e
    db $dd
    cp e
    ld e, [hl]
    cp c
    jp c, $df3d

    inc a
    inc d
    rst $30

Call_03b_5bbc:
    rst $30
    rst $30
    di
    di
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03b_5be0

    inc [hl]
    inc l
    ld [hl], h
    ld l, h
    ld a, [$f686]
    xor $f4
    db $ec
    inc [hl]
    inc l
    cp d
    and [hl]
    xor d
    or [hl]
    ld a, l
    di
    ld d, c
    rst $18
    rst $18
    rst $18
    adc [hl]
    adc [hl]

jr_03b_5be0:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03b_5bf7:
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    jp hl


jr_03b_5c05:
    add hl, de
    ld [hl], l
    adc l
    ei
    add a
    db $fd
    add e
    rst $20
    sbc b
    db $eb
    sbc h
    db $ed
    sbc [hl]
    xor $9f
    db $eb
    sbc e
    jp hl


    sbc c
    ld l, c
    sbc c
    ld [$f8f8], sp
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    ld d, b
    or b
    ret nc

    jr nc, jr_03b_5c05

    inc a
    jp c, $d236

    ld a, $df
    ccf
    db $db
    ccf
    jp nc, $da3f

    scf
    ld e, e
    or a
    db $db
    or a
    sub d
    cp $fe
    cp $6c
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    jp c, Jump_03b_63e6

    sbc a
    sbc $3f
    cp l
    ld a, [hl]
    db $dd
    ld a, $7b
    add [hl]
    cp d
    rst $00
    db $e3
    rst $38
    ld a, a
    ld a, a
    inc e
    inc e
    nop

jr_03b_5c61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_03b_5c9c

    ret z

    ld hl, sp+$74
    adc h
    db $f4
    ld l, h
    xor h
    ld e, h
    ld hl, sp+$38
    ret nc

    jr nc, jr_03b_5c61

    jr @-$76

    ld hl, sp-$08
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    rrca
    rrca
    ld e, $11
    ld d, $19
    dec e
    dec de
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    ld d, $19
    db $10
    rra

jr_03b_5c9c:
    rra
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    ld e, [hl]
    ld a, l
    ld b, e
    ld a, [hl]
    ld b, c
    ld [hl], d
    ld c, l
    db $76
    ld c, l
    db $76
    ld c, l
    or $cd
    call nz, $ffff
    rst $38
    dec sp
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [bc]
    dec c
    rrca
    add hl, bc
    rla
    add hl, de
    ld d, $19
    dec de
    inc e
    dec c
    ld c, $06
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld a, b
    ld a, b
    or h
    call z, Call_000_3cc4
    cp l
    ld a, l
    ld a, e
    ld a, [$c3c2]
    adc a
    adc a
    dec de
    rla
    ld a, [$dbf7]
    ld [hl], $fb
    ld b, $7b
    add [hl]
    jp nz, $ffff

    rst $38
    dec a
    dec a
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
    ld a, b
    ld hl, sp+$75
    call $edd5
    ld a, d
    rst $20
    ld l, e
    or $7f
    ldh a, [$57]
    ret c

    ld e, [hl]
    reti


    ld c, c
    rst $08
    rst $08
    rst $08
    add [hl]
    add [hl]
    nop
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
    ld d, e
    or e
    push de
    ld [hl], $bb
    ld a, l
    or [hl]

Call_03b_5d53:
    ld a, c
    ld [hl], a
    ld hl, sp+$5f
    ret c

    set 1, h
    adc [hl]
    adc a
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    pop bc
    pop bc
    ld hl, $d1e1
    ld sp, $b1d1
    or c
    ld [hl], c
    pop hl
    pop hl
    ld h, b
    ldh [$d0], a
    jr nc, jr_03b_5d8b

    ldh a, [$f0]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    ldh [$e0], a
    ld d, c
    or c
    pop de
    ld sp, $31d1
    pop de

jr_03b_5d8b:
    ld sp, $31d1
    pop de
    ld sp, $31d1
    ld l, c
    sbc c
    or $8f
    cp a
    ret nz

    rst $18
    ldh [$60], a
    ld a, a
    ccf
    ccf
    rra
    rra
    nop
    nop
    ret nz

    ret nz

    and e
    ld h, e
    push de
    ld [hl], $d7
    inc [hl]
    rst $10
    inc [hl]
    rst $10
    inc [hl]
    rst $10
    inc [hl]
    rst $10
    inc [hl]
    rst $10

jr_03b_5db3:
    inc [hl]
    rst $10
    inc [hl]
    sub [hl]
    ld [hl], l
    ld [hl], $f5
    ld h, h
    rst $20
    rst $00
    rst $00
    add e
    add e
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$d0], a
    jr nc, jr_03b_5db3

    jr jr_03b_5df5

    ret c

    ld l, b
    ret c

    ret c

    jr c, @-$4e

    ld [hl], b
    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
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
    dec bc
    inc c
    ld d, $19
    dec l
    inc sp
    ld e, e
    ld h, a
    ld e, l
    ld h, e
    ld l, [hl]
    ld [hl], c
    scf
    jr c, jr_03b_5e0e

    inc e
    ld h, [hl]

jr_03b_5df5:
    ld a, c
    cp l
    jp $87fb


    add [hl]
    cp $fc
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    or b
    or b
    ld l, [hl]
    ld e, [hl]
    ld c, l
    ld a, e

jr_03b_5e0e:
    rst $38
    ld hl, sp+$6f
    ld hl, sp+$6e
    reti


    xor $d9
    xor $d9
    ld l, [hl]
    ld e, c
    ld c, b
    ld a, a
    ld a, a
    ld a, a
    scf
    scf
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld a, [bc]
    ld c, $1a
    ld d, $1a
    ld d, $db
    rst $10
    cp e
    db $76
    reti


    ld [hl], $5f
    or b
    sbc $b1
    reti


    or [hl]
    jp c, $93b7

    rst $38
    rst $38
    rst $38
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    dec c
    dec bc
    dec e
    dec de
    cp [hl]
    and c
    ld a, l
    ei
    ld e, l
    db $db
    ld c, l
    set 1, [hl]
    ret


    jp z, $af4d

    ld l, h
    inc h
    rst $20
    rst $20
    rst $20
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
    inc c
    inc c
    or d
    cp [hl]
    db $dd
    db $e3
    ld h, [hl]
    ld e, c
    xor [hl]
    reti


    cp $81
    cp [hl]
    pop bc
    ld e, l
    db $e3
    ld h, e
    rst $38
    cp [hl]
    cp [hl]
    sbc h
    sbc h
    nop
    nop
    ld h, b
    ld h, b
    ret nc

    or b
    add sp, -$68
    xor b
    ret c

    db $f4
    call z, Call_03b_6e56
    ld [hl], l
    ld l, a
    or [hl]
    xor l
    cp e
    and h
    xor a
    or b
    cp a
    or b
    sub h
    sbc e
    add hl, de
    rra
    rrca
    rrca
    ld b, $06
    nop
    nop
    jr jr_03b_5ebc

    inc h
    inc a
    ld d, h
    ld l, h
    ld [hl], a
    ld c, a
    db $76
    ld c, l
    or h
    rst $08
    rst $28
    sbc a
    xor $9f
    ld l, [hl]
    sbc l
    sbc $3d
    sub $35
    sub $35
    inc [hl]
    rst $30

jr_03b_5ebc:
    rst $20
    rst $20
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
    ldh [$e0], a
    call c, $fabc
    add [hl]
    db $fd
    add e
    push hl
    sbc e
    db $ed
    sbc e
    db $ed
    sbc e
    db $ed
    sbc e
    adc c
    rst $38
    rst $38
    rst $38
    db $76
    halt
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    ld b, $07
    inc b
    inc b

jr_03b_5efb:
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    ldh [$e0], a
    ret c

    jr c, jr_03b_5efb

    inc c
    ld a, [$9d06]
    ld h, e
    cp l
    ld [hl], e
    db $ed
    inc sp
    db $fd
    inc bc
    pop af
    rrca
    add a
    ld a, a
    ld a, [hl]
    cp $78
    ld hl, sp-$40
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
    ld h, b
    ld h, b
    call c, $9bbc
    rst $30
    rst $38
    ldh a, [$df]
    ldh a, [$dc]
    or e
    db $dd
    or e
    db $dd
    or e
    db $dd
    or e
    sub c
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b

jr_03b_5f4b:
    ld b, $85
    add [hl]
    ld b, [hl]
    rst $00
    and e
    ld h, e
    and c
    ld h, c
    and [hl]
    ld h, a
    xor e
    ld l, h
    xor a
    ld l, b
    jr z, jr_03b_5f4b

    rst $28
    rst $28

jr_03b_5f5e:
    rst $00
    rst $00
    nop
    nop
    ld [hl], e
    ld [hl], e
    cp [hl]
    call $9d6e
    jp c, $be3d

    ld a, c
    rst $18
    jr c, jr_03b_5f5e

    jr jr_03b_5fdf

    sbc c
    xor [hl]
    reti


    ld l, [hl]
    sbc c
    sbc $39
    cp b
    ld a, a
    ld l, a
    rst $28
    rst $00
    rst $00
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    or c
    ld [hl], c
    ld [$6b1b], a
    sbc d
    xor l
    sbc $ef
    call c, $deed
    or $cf
    rst $00
    rst $38
    ld a, l
    ld a, l
    jr c, jr_03b_5fd8

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld h, a
    ld h, [hl]
    sbc a
    ld hl, sp-$11
    ld e, $37
    adc $77
    adc $f7
    ld c, $f6
    rrca
    rst $28
    rra
    add hl, de
    ld sp, hl
    pop af
    pop af
    ldh [$e0], a
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

    ld b, b
    ret nz

    and b
    ld h, b
    ld h, b
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    and b
    ld h, b
    and b
    ld h, b

jr_03b_5fd8:
    ret nc

    jr nc, jr_03b_5feb

    ldh a, [$f0]
    ldh a, [$e0]

jr_03b_5fdf:
    ldh [rP1], a
    nop
    scf
    scf
    ld c, d
    ld a, l
    ld h, [hl]
    ld e, c
    cp [hl]
    pop bc
    rst $38

jr_03b_5feb:
    add b
    rst $38
    add b
    rst $38
    add b
    ret


    or [hl]
    db $d3
    cp [hl]
    rst $10
    cp [hl]
    rst $18
    cp [hl]
    db $db
    cp d
    sub d
    di
    di
    di
    ld h, c
    ld h, c
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    or c
    or c
    ld l, d
    db $db
    ld c, l
    cp $7a
    db $fd
    ld l, a
    ld sp, hl
    ld l, d
    db $dd
    ld l, l
    sbc $6b
    call c, $d96e
    ld c, c
    rst $38
    rst $38
    rst $38
    or [hl]
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    sbc b
    ld h, l
    db $fd
    ld e, [hl]
    rst $20
    or l
    adc $ee
    sbc l
    or [hl]
    call $ec57
    or l
    adc $ee
    sbc a
    sbc e
    ei
    pop af
    pop af
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
    ret nz

    ret nz

    inc l
    db $ec
    db $db
    scf
    sbc $31
    ld e, a
    or b
    db $dd
    or d
    rst $10
    ld a, [hl-]
    rst $28
    ld a, [de]
    rst $28
    ld e, d
    ld_long $ffdf, a
    rst $38
    ld a, l
    ld a, l
    nop
    nop
    ld bc, $0201
    inc bc
    ld b, $05
    ld b, $05
    ld b, $05
    ld a, [de]
    dec e
    xor [hl]
    or c
    ld e, [hl]
    pop hl
    ld [hl], d
    call $cd76
    ld e, [hl]
    pop hl
    ld l, [hl]
    pop af
    ld a, b
    rst $38
    rst $18
    rst $18
    add a
    add a
    nop
    nop
    ld h, b
    ld h, b
    ret nc

    or b
    ret nc

    or b
    ret nc

    or b
    ret nc

    or b
    db $d3
    or e
    push de
    or [hl]
    sub $b5
    jp c, $dfbd

    cp b
    db $db
    cp h
    push af
    adc [hl]
    add d
    rst $38
    rst $38
    rst $38
    ld a, l
    ld a, l
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
    call nz, Call_000_2bc7
    db $ec
    or $19
    ld a, l
    sub e
    or $99
    ld a, [$f61d]
    add hl, de
    db $dd
    inc sp
    inc sp
    rst $38
    cp $fe
    call z, Call_000_00cc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    adc h
    or d
    cp [hl]
    db $dd
    db $e3
    cp l
    db $db
    db $eb
    sub a
    cp $8e
    or [hl]
    adc $dd
    db $e3
    ld h, c
    ld a, a
    ccf
    ccf
    ld e, $1e
    nop
    nop
    ld [hl], b
    ld [hl], b
    xor h
    call c, $87fb
    cp $81
    rst $20
    sbc b
    rst $28
    sbc h
    db $eb
    sbc h
    rst $38
    add b
    cp $81
    rst $20
    sbc b
    rst $28
    sbc h
    cp $81
    add c
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
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
    ld b, e
    jp Jump_03b_6fac


    or a
    ld a, b
    ld l, a
    or $da
    push hl
    ld e, a
    db $e3
    ld a, l
    db $e3
    ld l, [hl]
    pop af
    ld hl, sp-$01
    sbc a
    sbc a
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
    inc c
    inc c
    inc de
    rra
    xor a
    or d
    ld e, e
    rst $20
    ld [hl], a
    rst $08
    ld a, [$eac6]
    or $5a
    ld h, [hl]
    or $8e
    adc h
    db $fc
    ld hl, sp-$08
    jr nc, jr_03b_6170

    nop
    nop
    nop
    nop
    ld bc, $6101
    ld h, c
    pop de
    or c
    pop de
    or c
    jp hl


    add hl, de
    reti


    cp c
    pop de
    or c
    pop de
    or c
    jp hl


    sbc c
    xor c
    reti


    push af
    call Call_03b_7d45
    ld a, l
    ld a, l
    jr c, jr_03b_6198

    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18
    db $f4
    inc c
    ld a, [$cd06]
    inc sp
    push de
    dec sp

jr_03b_6170:
    db $dd
    dec sp
    db $dd
    inc sp
    db $fd
    inc bc
    ei
    rlca
    rst $20
    rra
    dec e
    db $fd
    ld sp, hl
    ld sp, hl
    ldh [$e0], a
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
    sbc $dd
    or h
    ld l, a
    rst $20
    rra
    sbc $3f
    cp [hl]
    ld a, l
    and [hl]
    ld h, l
    and [hl]
    ld h, l

jr_03b_6198:
    and [hl]
    ld h, l
    inc h
    rst $20
    rst $20
    rst $20
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
    db $e3
    db $e3
    sub $b5
    sub $b5
    ld [$ad9d], a
    db $db
    db $fd
    jp $e7db


    ld a, [$a6e6]
    cp [hl]
    cp h
    cp h
    jr jr_03b_61d8

    nop
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
    or d
    cp [hl]
    db $dd
    db $e3
    cp l
    db $db
    ld l, e
    sub a
    ld a, [hl]
    adc [hl]
    or $8e

jr_03b_61d8:
    cp l
    jp $ffe1


    ld a, a
    ld a, a
    ld e, $1e
    nop
    nop
    ld bc, $0601
    rlca
    dec bc
    inc c

jr_03b_61e8:
    ld d, $19
    dec e
    inc de
    dec hl
    scf
    ld a, $26
    ld e, h
    ld h, h
    ld e, e
    ld h, a
    ld e, a
    ld h, b
    ld h, a
    ld a, b
    jr c, jr_03b_6239

    rra
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    jr nz, jr_03b_61e8

    ldh [$e0], a
    add e
    add e
    ld b, $05
    scf
    inc [hl]
    ld c, a
    ld a, h
    xor $dd
    ld l, [hl]
    db $dd
    xor $1d
    xor $1d
    inc c
    rst $38
    rst $38
    rst $38
    di
    di
    nop
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
    sub e
    di
    push af
    ld d, $7b
    db $fd
    or $f9
    rst $10
    ret c

    sbc a
    sbc b
    adc e

jr_03b_6239:
    adc h
    adc [hl]
    adc a
    add a
    add a
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
    ret nz

    ret nz

    ld hl, $d2e1
    inc sp
    push de
    or [hl]
    cp e
    ld a, h
    rst $28
    add sp, $6b
    db $ec
    db $dd
    ld a, $17
    rst $30
    di
    di
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6301
    ld h, e
    sub a
    db $f4
    rst $28
    rra
    db $eb
    dec de
    add hl, hl
    reti


    ld l, c
    reti


    jp hl


    add hl, de
    push af
    dec c
    inc [hl]
    db $ec
    db $fc
    db $fc
    ret c

    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ld h, b
    ret nc

    jr nc, @-$4e

    ld [hl], b
    and b
    ld h, b
    and b
    ld h, b
    ret nc

    jr nc, jr_03b_62e7

    or b
    add sp, -$68
    adc b
    ld hl, sp-$08
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    ld h, b

Jump_03b_62a3:
    ld h, b
    ret nc

    or b
    ret nc

    or b
    ret nc

    or b
    ret nc

    or b
    db $d3
    or e
    push de
    or [hl]
    sub $b5
    jp c, $dfbd

    cp b
    db $db
    cp h
    push af
    adc [hl]
    add d
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, Call_000_3bdc
    rst $30
    sbc $31
    ld a, a
    sub b
    db $fc
    sub e
    db $fd
    inc de
    db $fd
    inc de
    db $dd
    inc sp
    ld sp, $ffff
    rst $38
    adc $ce
    nop
    nop
    ld b, $06
    add hl, de
    rra
    dec l

jr_03b_62e7:
    inc sp
    ld e, l
    ld h, e
    or l
    res 7, l
    bit 3, l
    db $e3
    xor [hl]
    ld [hl], e
    cp a
    ld [hl], d
    cp e
    db $76
    xor d
    ld [hl], a
    ei
    ld b, a
    ld d, a
    rst $28
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6201
    ld h, e
    sub l
    or $6b
    sbc h
    cp $69
    xor a
    ld e, b
    db $fd
    ld a, $db
    inc a
    ld l, [hl]
    sbc c
    adc c
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    scf
    inc [hl]
    rst $28
    call c, $dcef
    rst $30
    adc h
    ld l, a
    call c, $dcef
    rst $28
    ld e, h
    ld l, a
    call c, $cc77

jr_03b_6338:
    rst $10
    db $ec
    db $e4
    rst $38
    ccf
    ccf
    dec de
    dec de
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_03b_6338

    dec e
    dec sp
    adc $5e
    jp hl


    ld a, l
    db $eb
    ld l, a
    db $db
    xor $1a
    sub $3a
    cp d
    db $76
    ld [hl], d
    cp $de

Jump_03b_635d:
    sbc $8c
    adc h
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
    call c, Call_03b_5bbc
    rst $30
    ld a, e
    rst $30
    jp c, $95f7

    ld a, [$b8df]
    db $db
    cp h
    sbc $bd
    sub h
    rst $30
    rst $30
    rst $30
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $b2cc
    ld a, [hl]
    xor l
    ld [hl], e
    cp a
    ld l, l
    push de
    ld l, e
    ld a, a
    rst $00
    ld a, d
    add $dd
    db $e3
    pop af
    rst $38
    cp a
    cp a
    ld c, $0e
    nop
    nop
    nop

Jump_03b_63a3:
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    dec d
    dec de
    dec l
    inc sp
    ld e, c
    ld h, a
    or a
    rst $08
    xor $9e
    ld a, b
    sbc b
    ld [hl], b
    sub b
    xor $9e
    cp l
    jp $e1de


    ld l, [hl]
    ld [hl], c
    jr c, jr_03b_641b

    rra
    rra
    rlca
    rlca
    nop
    nop
    jr jr_03b_63fc

    inc [hl]
    inc l

Jump_03b_63e6:
    inc [hl]
    inc l
    ld d, h
    ld l, h
    db $76
    ld c, [hl]
    ld a, l
    ld b, e
    ld a, a
    ld b, b
    ld [hl], e
    ld c, h
    ld [hl], l
    ld c, [hl]
    ld [hl], a
    ld c, [hl]
    rst $30
    adc $c7
    cp $fe
    rst $38

jr_03b_63fc:
    cp e
    cp e
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    dec c
    dec bc
    adc c
    adc a
    ld c, a
    rst $08
    ld b, l
    rst $00
    ld c, l
    bit 1, l
    bit 1, l
    res 5, l
    ld l, e
    add hl, hl

jr_03b_641b:
    rst $28
    rst $28
    rst $28
    add $c6
    nop
    nop
    nop
    nop
    jr c, jr_03b_645e

    ld d, h
    ld l, h
    ld a, d
    ld b, [hl]
    ld a, a
    ld b, c
    ld [hl], d
    ld c, l
    db $76
    ld c, l
    ld a, l
    ld b, e
    ld a, e
    ld b, a
    db $76
    ld c, [hl]
    ld l, h
    ld e, h
    ld l, b
    ld e, b
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    jr nc, jr_03b_6470

    nop
    nop
    rrca
    rrca
    ld e, $11
    inc d
    dec de
    dec e
    dec de
    dec c
    dec bc
    adc l
    adc e
    adc l
    adc e
    adc l
    adc e
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    ld d, $19
    db $10
    rra
    rra
    rra

jr_03b_645e:
    rrca
    rrca
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    ld e, [hl]
    ld a, l
    ld b, e

jr_03b_6470:
    ld a, [hl]
    ld b, c
    ld [hl], d
    ld c, l
    db $76
    ld c, l
    db $76
    ld c, l
    or $cd
    call nz, $ffff
    rst $38
    dec sp
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    rrca
    rrca
    dec d
    dec de
    dec l
    inc sp
    ld e, c
    ld h, a
    ld [hl], a
    ld c, a
    xor [hl]
    rst $18
    ei
    sbc d
    di
    sub d
    xor [hl]
    rst $18
    db $fd
    jp Jump_03b_635d


    ld l, l
    ld [hl], e
    add hl, sp
    ccf
    rra
    rra
    rlca
    rlca
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    call z, $f24c
    ld a, [hl]
    db $dd
    ld h, e
    rst $20
    ld e, c
    rst $28
    ld e, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    db $dd
    ld h, e
    ld h, e
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_03b_651a

    ld c, c
    ld a, c
    cp d
    bit 5, l
    sbc [hl]
    db $db
    dec a
    xor $19
    xor a
    ret c

    ld l, e
    sbc h
    db $dd
    ld a, $36
    rst $30
    db $e3
    db $e3
    pop bc
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    adc c
    adc a
    ld d, a

jr_03b_650d:
    reti


    db $ed
    inc sp
    ei
    and a
    cp l
    ld h, e
    push af
    ei
    ld l, l
    di
    cp e
    ld h, a

jr_03b_651a:
    ld h, $fe
    db $fc
    db $fc
    ret c

    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    sub $b5
    sub $b5
    rst $28
    jr jr_03b_650d

    cp l
    sbc $bd
    sub $b5
    sub $b5
    xor l
    sbc $ef
    sbc $4a
    ld a, e
    ld a, e
    ld a, e
    ld sp, $0031
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $8181
    adc l
    adc l
    ld [hl], e
    rst $38
    db $dd
    db $e3
    rst $20
    reti


    rst $28
    reti


    rst $38
    pop bc
    ld a, a
    pop bc
    ld e, l
    db $e3
    ld h, e
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    nop
    nop
    ldh a, [$f0]
    ld l, b
    sbc b
    db $f4
    inc c
    ei
    rlca
    swap [hl]
    jp c, $fb37

    rlca
    ei
    rlca
    rst $20
    ld e, $df
    ld a, $db
    ld a, [hl-]
    db $d3
    ld [hl-], a
    ld [de], a
    di
    di
    di
    pop hl
    pop hl
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
    ld [hl], b
    ldh a, [$6c]
    call c, $c6fa
    ld a, l
    jp $cb75


    ld l, l
    db $db
    ld l, l
    db $db
    ld l, l
    db $db
    ld c, c
    rst $38
    rst $38
    rst $38
    or [hl]
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
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
    jp $9966


    db $db
    inc a
    cp a
    ld a, l
    rst $20
    ld h, l
    rst $00
    ld b, l
    bit 1, l
    or a
    ld a, c
    db $fd
    inc bc
    ld a, c
    add a
    add a
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, b
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

    ret nz

    cp b
    ld a, b
    db $f4
    inc c
    ld a, [$9a06]
    ld h, [hl]
    xor d
    db $76
    cp d
    db $76
    cp d
    db $76
    ld [hl-], a
    cp $fe
    cp $cc
    call z, $0000
    inc bc
    inc bc
    dec c
    ld c, $16
    add hl, de
    dec l
    inc sp
    dec sp
    daa
    ld d, [hl]
    ld l, [hl]
    ld a, l
    ld c, l
    cp d
    res 6, a
    adc $bf
    ret nz

    rst $08
    ldh a, [$71]
    ld a, [hl]
    ld a, $3f
    rrca
    rrca
    ld bc, $0001
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld [hl], $36
    ld l, c
    ld e, a
    rst $38
    pop bc
    db $76
    rst $08
    ld l, l
    sbc $6d
    sbc $6f
    sbc $6a
    db $db
    ld c, e
    ei
    ld sp, hl
    ld sp, hl
    or b
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld h, c

jr_03b_674c:
    sub d
    di
    ld l, l
    sbc [hl]
    db $eb
    ld e, l
    rst $10
    jr c, jr_03b_674c

    ld a, c
    cp [hl]
    ld a, c
    db $eb
    inc e
    adc [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    sbc b
    ld [hl], a
    rst $28
    cp [hl]
    ld h, c
    cp a
    ld h, b
    ld [hl], e
    db $ec
    push af
    xor $f7
    xor $b7
    ld l, [hl]
    ld h, $ff
    rst $38
    rst $38
    reti


    reti


    nop
    nop
    nop
    nop
    nop
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

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    inc a
    inc a
    ld e, d
    ld h, [hl]
    cp l
    jp $89f7


    rst $28
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $30
    adc c
    cp l
    jp $e7db


    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    rlca
    rlca
    dec de
    dec e
    daa
    add hl, sp
    ccf
    ld hl, $213f
    scf
    add hl, sp
    rla
    add hl, de
    rla
    add hl, de
    rla
    add hl, de
    rla
    add hl, de
    rla
    add hl, de
    rla
    add hl, de
    rla
    add hl, de
    rra
    rra
    rra
    rra
    nop
    nop
    ld a, h
    ld a, h
    ld e, d
    ld h, [hl]
    cp a
    jp $83fd


    rst $28
    sub c
    rst $10
    cp c
    push af
    ei
    rra
    inc de
    ld a, [hl+]
    ld [hl], $5e
    ld h, [hl]
    cp a
    rst $08
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld a, h
    ld a, h
    ld e, d
    ld h, [hl]
    cp a
    jp $93ed


    sub a
    ld sp, hl
    rst $38
    pop af
    ccf
    inc hl
    ccf
    inc hl
    rst $38
    pop af
    sub a
    ld sp, hl
    db $ed
    sub e
    cp a
    jp $e7db


    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    ld e, $1e
    ld d, $1a
    ld l, $32
    ld a, $22
    ld d, [hl]
    ld l, d
    ld l, [hl]
    ld e, d
    cp a
    db $db
    rst $38
    add c
    rst $38
    add c
    rst $28
    di
    rst $28
    di
    ld l, $32
    ld l, $32
    ld a, $3e
    ld a, $3e
    nop
    nop
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    sbc a
    ld a, [$fd86]
    add e
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rrca
    add hl, bc
    rst $30
    ld sp, hl
    db $fd
    add e
    ei
    add a
    cp $fe
    db $fc
    db $fc
    nop
    nop
    inc a
    inc a
    ld e, h
    ld h, h
    ld [hl], h
    ld c, h
    cp h
    call z, $9eee
    ei
    add a
    db $fd
    add e
    rst $30
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $30
    sbc c
    cp l
    jp $e7db


    cp $fe
    ld a, h
    ld a, h
    nop
    nop
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    db $e3
    sbc l
    db $db
    cp l
    db $eb
    db $ed
    dec bc
    dec c
    rla
    add hl, de
    cpl
    inc sp
    ld l, $32
    ld l, $32
    ld l, $32
    ld l, $32
    ld a, $3e
    ld a, $3e
    nop
    nop
    inc a
    inc a
    ld e, d
    ld h, [hl]
    cp l
    jp $99f7


    rst $38
    sbc c
    rst $38
    sbc c
    cp l
    jp $c3bd


    rst $30
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    cp l
    jp $e7db


    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld e, d
    ld h, [hl]
    cp l
    jp $99f7


    rst $38
    sbc c
    rst $38
    sbc c
    cp a
    pop bc
    ld c, a
    ld [hl], c
    scf
    add hl, sp
    rla
    add hl, de
    ld [hl], a
    ld a, c
    db $fd
    add e
    add e
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    inc h
    inc a
    inc a
    inc h
    inc a
    inc h
    rst $38
    rst $20
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $20
    rst $38
    rst $20
    inc a
    inc h
    inc h
    inc a
    inc a
    inc a
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
    rst $38
    rst $38
    cp a
    pop bc
    cp a
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    add sp, -$68
    add sp, -$68

jr_03b_692a:
    add sp, -$68
    xor l
    db $dd
    db $eb
    rst $18
    ld l, l
    ld e, e
    db $76
    ld c, c
    ld e, a
    ld h, b
    ld a, a
    ld h, b
    add hl, hl
    ld [hl], $32
    ccf
    rra
    rra
    dec c
    dec c
    nop
    nop
    jr nc, jr_03b_6974

    ld c, b
    ld a, b
    xor b
    ret c

    db $eb
    sbc e
    db $ec
    sbc a
    ld l, e
    sbc h
    rst $10
    jr c, jr_03b_692a

    ld [hl], $db
    ld [hl], $bf
    ld [hl], b
    or a
    ld a, b
    cp c
    ld a, a
    ld a, a
    rst $38
    rst $08
    rst $08
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    adc c
    adc a
    ld d, a
    reti


    ld l, l
    di
    ld a, e
    rst $20
    ld a, l
    db $e3

jr_03b_6974:
    ld [hl], l
    ei
    xor l
    ld [hl], e
    cp e
    ld h, a
    and [hl]
    ld a, [hl]
    db $fc
    db $fc
    sbc b
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ret nc

    or b
    db $d3
    or e
    db $ec
    rra
    db $db
    cp h
    rst $10
    cp d
    sbc $b1
    rst $18
    or e
    db $dd
    or e
    rst $10
    cp b
    sbc h
    rst $38
    rst $38
    rst $38
    ld [hl], e
    ld [hl], e
    nop
    nop
    ld bc, $0301
    ld [bc], a
    dec b
    ld b, $07
    inc b
    dec bc
    inc c
    adc [hl]
    adc c

jr_03b_69ae:
    ld d, l
    db $db
    ld e, [hl]
    db $d3
    rst $28
    ldh a, [$fc]
    db $e3
    db $db
    rst $20
    ld [hl], a
    rst $08
    ld b, l
    db $fd
    db $fd
    db $fd
    ld hl, sp-$08
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ld h, b
    xor l
    ld l, l
    jp c, $df37

    jr nc, jr_03b_69ae

    inc sp
    db $db
    scf
    db $db
    scf
    ld e, d
    or [hl]
    ld e, d
    or [hl]
    ld [hl-], a
    cp $fe
    cp $cc
    call z, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    adc h
    ld d, d
    sbc $ed
    ld [hl], e
    db $dd
    db $eb
    cp e
    rst $00
    cp a
    rst $08
    rst $30
    rst $08
    ld e, l
    ld h, e
    ld [hl], c
    ld a, a
    ccf
    ccf
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03b_6a22

    ld h, h
    ld a, h
    cp d
    add $7a
    add [hl]
    jp z, $da36

    ld [hl], $fa
    ld b, $7a
    add [hl]
    xor l
    db $db
    ld sp, hl
    rst $38
    ld a, a
    ld a, a
    ld b, $06
    nop
    nop

jr_03b_6a22:
    inc bc
    inc bc
    dec c
    ld c, $16
    add hl, de
    dec l
    inc sp
    dec sp
    daa
    ld d, [hl]
    ld l, [hl]
    ld a, l
    ld c, l
    cp d
    res 6, a
    adc $bf
    ret nz

    rst $08
    ldh a, [$71]
    ld a, [hl]
    ld a, $3f
    rrca
    rrca
    ld bc, $0001
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld [hl], $36
    ld l, c
    ld e, a
    rst $38
    pop bc
    db $76
    rst $08
    ld l, l
    sbc $6d
    sbc $6f
    sbc $6a
    db $db
    ld c, e
    ei
    ld sp, hl
    ld sp, hl
    or b
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld h, c

jr_03b_6a6c:
    sub d
    di
    ld l, l
    sbc [hl]
    db $eb
    ld e, l
    rst $10
    jr c, jr_03b_6a6c

    ld a, c
    cp [hl]
    ld a, c
    db $eb
    inc e
    adc [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    sbc b
    ld [hl], a
    rst $28
    cp [hl]
    ld h, c
    cp a
    ld h, b
    ld [hl], e
    db $ec
    push af
    xor $f7
    xor $b7
    ld l, [hl]
    ld h, $ff
    rst $38
    rst $38
    reti


    reti


    nop
    nop
    rrca
    rrca
    rla
    jr @+$1e

    inc de
    dec e
    inc de
    dec e
    inc de
    ld e, $11
    sbc a
    sub b
    ld e, h
    db $d3
    ld e, l
    db $d3
    ld l, l
    di
    ld a, a
    ldh [$73], a
    db $fc
    ld e, h
    rst $18
    rst $08
    rst $08
    add e
    add e
    nop
    nop
    ldh [$e0], a
    pop de
    ld sp, $b352
    sub e
    ld a, [c]
    di
    ld a, [c]
    db $ed
    xor $57
    ret c

    ld l, a
    ldh a, [$d9]
    and $db
    and $af
    ld [hl], b
    or a
    ld a, b
    inc a
    rst $38
    rst $28
    rst $28
    jp Jump_000_00c3


    nop
    add e
    add e
    ld c, h
    rst $08
    ld d, [hl]
    reti


    ld l, [hl]
    pop af
    ld e, d
    push hl
    ld e, [hl]
    push hl
    ld l, [hl]
    pop af
    db $76
    ld sp, hl
    ld e, [hl]
    reti


    ld e, [hl]
    reti


    ld a, [hl]
    pop hl
    ld l, l
    di
    ld [hl], e
    rst $38
    sbc $de
    adc h
    adc h
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    adc h
    adc h
    sub d
    sbc [hl]
    xor l
    or e
    db $dd
    db $eb
    cp e
    rst $00
    cp [hl]
    adc $f6
    adc $dd
    db $e3
    ld [hl], c
    ld a, a
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    or [hl]
    adc $fd
    add e
    cp [hl]
    pop bc
    rst $38
    ret nz

    ld [hl], e
    ld c, h
    ld [hl], l
    ld c, [hl]
    ld [hl], a
    ld c, [hl]
    ld [hl], a
    ld c, h
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, h
    ld b, e
    ld b, e
    ld a, a
    ld a, a
    ld a, a
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
    add b
    add b
    ld b, c
    pop bc
    and [hl]
    ld h, a
    db $db
    inc a
    call c, $d53b
    dec sp
    cp a
    ld [hl], b
    ld [hl], a
    ld hl, sp-$25
    call c, $8f8c
    rlca
    rlca
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
    adc l
    adc l
    ld e, e
    sub $be
    ld [hl], c
    db $dd
    inc sp
    db $db
    scf
    jp c, $da36

    ld [hl], $ba
    db $76
    ld [hl], d
    cp $de
    sbc $8c
    adc h
    nop
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
    ld a, a
    rst $38
    ld a, l
    jp $c0ff


    rst $38
    ret nz

    ld l, l
    ld e, e
    ld l, l
    ld e, e
    ld l, l
    ld e, e
    ld c, c
    ld a, a
    ld a, a
    ld a, a
    ld [hl], $36
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
    ld a, [de]
    ld d, $92
    sbc [hl]
    ld e, [hl]
    sbc $ab
    ld l, a
    cp d
    ld [hl], a
    cp d
    ld [hl], a
    cp e
    ld [hl], a
    cp e
    ld [hl], a
    inc sp
    rst $38
    cp $fe
    call z, Call_000_00cc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03b_6c04

    ld h, h
    ld a, h
    cp d
    add $7a
    or [hl]
    sub $2e
    db $fc
    inc e
    db $ec
    inc e
    ld a, d
    add [hl]
    jp nz, $fefe

    cp $3c
    inc a
    nop
    nop
    nop
    nop

jr_03b_6c04:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    rla
    dec de
    ld l, a
    ld [hl], b
    cp h
    jp $8ff3


    xor a
    rst $18
    db $dd
    db $fd
    db $76
    ld [hl], a
    dec sp
    inc a
    cpl
    jr nc, @+$38

    add hl, sp
    add hl, de
    rra
    rrca
    rrca
    ld b, $06
    ld a, [hl]
    ld a, [hl]
    jp c, $dbb6

    or a
    sub d
    rst $38
    rst $38
    ld a, [hl]
    rst $28
    inc e
    ld a, a
    adc h
    ld l, [hl]
    sbc l
    db $fc
    rra
    rst $10
    scf
    or e
    ld [hl], e
    ld h, b
    ldh [$c1], a
    pop bc
    add c
    add c
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add a
    add a
    ret


    rst $08
    ld c, [hl]
    ret


    ld c, [hl]
    ret


    ld c, [hl]
    ret


    adc $c9
    sub [hl]
    sbc c
    sbc l
    sub e
    dec l
    inc sp
    db $db
    rst $20
    and $1e
    inc e
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    add a
    add h
    add l
    add [hl]
    add [hl]
    add a
    add e
    add e
    rst $38
    rst $38
    cp [hl]
    jp nz, $8ef2

    adc a
    rst $38
    rst $38
    db $fc
    ld [hl], l
    db $76
    ld b, $07
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    ld h, c
    pop hl
    jp nc, $d333

    ld [hl-], a
    sub l
    or $fa
    db $fd
    db $76
    ld a, c
    db $dd
    db $e3
    ld a, l
    add e
    di
    rrca
    adc $3e
    inc a
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    db $fd
    cp $ff
    add b
    cp b
    rst $00
    add $ff
    db $fd
    cp $b7
    cp b
    call $fbf2
    add [hl]
    or l
    adc $cd
    cp $7a
    ld a, e
    inc sp
    inc sp
    ld bc, $0001
    nop
    ldh [$e0], a
    xor a
    ld l, a
    cp [hl]
    ld a, c
    db $eb
    inc e
    call $bf3e
    ld a, a
    or e
    ld [hl], e
    and b
    ld h, b
    and c
    ld h, c
    xor [hl]
    ld l, a
    xor a
    ld l, b
    xor e
    ld l, h
    xor h
    ld l, a
    rst $20
    rst $20
    db $e3
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    jp $a5c3


    ld h, a
    and a
    ld h, l
    dec hl
    db $ed
    push af
    ei
    db $ed
    di
    cp e
    rst $00
    ld a, [$e606]
    ld e, $9c
    ld a, h
    ld a, b
    ld hl, sp-$20
    ldh [$80], a
    add b
    nop
    nop
    rra
    rra
    cpl
    jr nc, jr_03b_6d66

    jr nz, jr_03b_6d55

    inc sp
    dec a
    inc sp
    dec e
    inc de
    rra
    db $10
    rra
    db $10
    inc e
    inc de
    dec e
    inc de
    dec e
    inc de
    dec e
    inc de
    inc de
    rra
    ld e, $1e
    inc c
    inc c
    nop
    nop
    call z, $bacc
    db $76
    jp c, Jump_03b_5a36

    or [hl]
    sbc d
    or $fb
    rst $30
    jp c, $db37

    ld [hl], $3b
    or $fb

jr_03b_6d55:
    or $da
    rst $10
    dec de
    rla
    inc de
    rra
    ld e, $1e
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop

jr_03b_6d66:
    ld bc, $3201
    inc sp
    call Call_03b_75fe
    adc [hl]
    or $0f
    sub a
    ld l, a
    or l
    ld l, l
    db $f4
    inc c
    ei
    rlca
    cp e
    sub $fa
    rst $30
    ld a, a
    ld a, a
    dec c
    dec c
    nop
    nop
    jr nc, jr_03b_6db4

    ret z

    ld hl, sp+$68
    sbc b
    jp hl


    add hl, de
    xor d
    ld e, e
    ld [$eb5b], a
    dec de
    ld l, c
    sbc c
    add sp, -$68
    ret c

    cp b
    ld d, e
    or e
    or a
    ld [hl], h
    inc h
    rst $20
    rst $20
    rst $20
    jp Jump_000_00c3


    nop
    ld sp, $4b31
    ld a, d
    xor e
    jp c, $9e6d

    rst $18
    inc a
    rst $28
    inc e
    ld [hl], a
    adc h
    or a
    call z, $ecd7

jr_03b_6db4:
    or a
    call z, $9c6f
    call c, Call_000_373f
    rst $30
    db $e3
    db $e3
    ret nz

jr_03b_6dbf:
    ret nz

    nop
    nop
    add b
    add b

jr_03b_6dc4:
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [$d8], a
    jr c, jr_03b_6dc4

    dec c
    dec [hl]
    call $ef56
    ld [hl], a
    xor $76
    rst $28
    ei
    rst $20
    and e
    cp a
    ld a, $3e
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3301
    inc sp
    rst $08
    db $fc
    ld [hl], a
    adc a
    sbc e
    ld h, a
    cp e
    ld h, a
    ei
    rlca
    ei
    rlca
    ld [hl], a
    adc a
    adc h
    db $fc
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ld h, b
    ret nc

    jr nc, jr_03b_6dbf

    ld [hl], b
    and b
    ld h, b
    and b
    ld h, b
    ret nc

    jr nc, jr_03b_6e67

    or b
    add sp, -$68
    adc b
    ld hl, sp-$08
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    ld h, b
    ld h, b
    ret nc

    or b
    ret nc

    or b
    ret nc

    or b
    ret nc

    or b
    db $d3
    or e
    push de
    or [hl]
    sub $b5
    jp c, $dfbd

    cp b
    db $db
    cp h
    push af
    adc [hl]
    add d
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, Call_000_3bdc
    rst $30
    sbc $31
    ld a, a
    sub b
    db $fc
    sub e
    db $fd
    inc de

Call_03b_6e56:
    db $fd
    inc de
    db $dd
    inc sp
    ld sp, $ffff
    rst $38
    adc $ce
    nop
    nop
    ld b, $06
    add hl, de
    rra
    dec l

jr_03b_6e67:
    inc sp
    ld e, l
    ld h, e
    or l
    res 7, l
    bit 3, l
    db $e3
    xor [hl]
    ld [hl], e
    cp a
    ld [hl], d
    cp e
    db $76
    xor e
    db $76
    ld a, [$5747]
    rst $28
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6201
    ld h, e
    sub l
    or $6b
    sbc h
    xor $59

jr_03b_6e92:
    rst $18
    jr c, jr_03b_6e92

    ld a, [hl]
    cp e
    ld a, h
    xor $19
    adc c
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc bc
    inc bc
    ld b, $05
    scf
    inc [hl]
    rst $28
    call c, $dcef
    rst $30
    adc h
    ld l, a
    call c, $dcef
    rst $28
    ld e, h
    ld l, a
    call c, $cc77

jr_03b_6eb8:
    rst $10
    db $ec
    db $e4
    rst $38
    ccf
    ccf
    dec de
    dec de
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_03b_6eb8

    dec e
    dec sp
    adc $5e
    jp hl


    ld a, l
    db $eb
    ld l, a
    db $db
    xor $1a
    sub $3a
    cp d
    db $76
    ld [hl], d
    cp $de
    sbc $8c
    adc h
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
    call c, Call_03b_5bbc
    rst $30
    ld a, e
    rst $30
    jp c, $95f7

    ld a, [$b8df]
    db $db
    cp h
    sbc $bd
    sub h
    rst $30
    rst $30
    rst $30
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $b2cc
    ld a, [hl]
    xor l
    ld [hl], e
    cp l
    ld l, e
    db $db
    ld h, a
    ld a, [hl]
    adc $76
    adc $dd
    db $e3
    pop af
    rst $38
    cp a
    cp a
    ld c, $0e
    nop
    nop
    rrca
    rrca
    dec d
    dec de
    dec l
    inc sp
    ld e, c
    ld h, a
    ld [hl], a
    ld c, a
    xor [hl]
    rst $18
    ei
    sbc d
    di
    sub d
    xor [hl]
    rst $18
    db $fd
    jp Jump_03b_635d


    ld l, l
    ld [hl], e
    add hl, sp
    ccf
    rra
    rra
    rlca
    rlca
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    call z, $f24c
    ld a, [hl]
    db $dd
    ld h, e
    rst $20
    ld e, c
    rst $28
    ld e, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    db $dd
    ld h, e
    ld h, e
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_03b_6f9a

    ld c, c
    ld a, c
    cp d
    bit 5, l
    sbc [hl]
    db $db
    dec a
    xor $19
    xor a
    ret c

    ld l, e
    sbc h
    db $dd
    ld a, $36
    rst $30
    db $e3
    db $e3
    pop bc
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    adc c
    adc a
    ld d, a

jr_03b_6f8d:
    reti


    db $ed
    inc sp
    ei
    and a
    cp l
    ld h, e
    push af
    ei
    ld l, l
    di
    cp e
    ld h, a

jr_03b_6f9a:
    ld h, $fe
    db $fc
    db $fc
    ret c

    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    sub $b5
    sub $b5

Jump_03b_6fac:
    rst $28
    jr jr_03b_6f8d

    cp l
    sbc $bd
    sub $b5
    sub $b5
    xor l
    sbc $ef
    sbc $4a
    ld a, e
    ld a, e
    ld a, e
    ld sp, $0031
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $8181
    adc l
    adc l
    ld [hl], e
    rst $38
    db $dd
    db $e3
    rst $20
    reti


    rst $28
    reti


    rst $38
    pop bc
    ld a, a
    pop bc
    ld e, l
    db $e3
    ld h, e
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    nop
    nop
    ldh a, [$f0]
    ld l, b
    sbc b
    db $f4
    inc c
    ei
    rlca
    swap [hl]
    jp c, $fb37

    rlca
    ei
    rlca
    rst $20
    ld e, $df
    ld a, $db
    ld a, [hl-]
    db $d3
    ld [hl-], a
    ld [de], a
    di
    di
    di
    pop hl
    pop hl
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
    ld [hl], b
    ldh a, [$6c]
    call c, $c6fa
    ld a, l
    jp $cb75


    ld l, l
    db $db
    ld l, l
    db $db
    ld l, l
    db $db
    ld c, c
    rst $38
    rst $38
    rst $38
    or [hl]
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
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
    jp $9966


    db $db
    inc a
    cp a
    ld a, l
    rst $20
    ld h, l
    rst $00
    ld b, l
    bit 1, l
    or a
    ld a, c
    db $fd
    inc bc
    ld a, c
    add a
    add a
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, b
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

    ret nz

    cp b
    ld a, b
    db $f4
    inc c
    ld a, [$9a06]
    ld h, [hl]
    xor d
    db $76
    cp d
    db $76
    cp d
    db $76
    ld [hl-], a
    cp $fe
    cp $cc
    call z, $0000
    inc bc
    inc bc
    dec c
    ld c, $16
    add hl, de
    dec l
    inc sp
    dec sp
    daa
    ld d, [hl]
    ld l, [hl]
    ld a, l
    ld c, l
    cp d
    res 6, a
    adc $bf
    ret nz

    rst $08
    ldh a, [$71]
    ld a, [hl]
    ld a, $3f
    rrca
    rrca
    ld bc, $0001
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld [hl], $36
    ld l, c
    ld e, a
    rst $38
    pop bc
    db $76
    rst $08
    ld l, l
    sbc $6d
    sbc $6f
    sbc $6a
    db $db
    ld c, e
    ei
    ld sp, hl
    ld sp, hl
    or b
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld h, c

jr_03b_70cc:
    sub d
    di
    ld l, l
    sbc [hl]
    db $eb
    ld e, l
    rst $10
    jr c, jr_03b_70cc

    ld a, c
    cp [hl]
    ld a, c
    db $eb
    inc e
    adc [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    sbc b
    ld [hl], a
    rst $28
    cp [hl]
    ld h, c
    cp a
    ld h, b
    ld [hl], e
    db $ec
    push af
    xor $f7
    xor $b7
    ld l, [hl]
    ld h, $ff
    rst $38
    rst $38
    reti


    reti


    nop
    nop
    nop
    nop
    nop
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

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld e, $2a
    ld [hl], $5a
    ld h, [hl]
    or a
    rst $08
    cp e
    rst $00
    ld e, l
    ld h, e
    dec l
    inc sp
    dec d
    dec de
    dec l
    inc sp
    ld e, e
    ld h, a
    rst $30
    adc a
    adc h
    db $fc
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
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

    cp c
    ld a, c
    or [hl]
    ld l, a
    or l
    ld l, [hl]
    or [hl]
    ld l, l
    sub $2d
    ld [hl], l
    adc [hl]
    or [hl]
    rst $08
    rst $00
    rst $38
    ld a, l
    ld a, l
    jr c, jr_03b_7198

    nop
    nop
    ld hl, $5221
    ld [hl], e
    sub h
    rst $30
    sub $b5
    sub $b5
    ld e, d
    cp l
    sub $39
    rst $28
    ld sp, $ad73
    rst $30
    xor l
    rst $28
    ld sp, $39f7
    jr @+$01

    rst $38
    rst $38
    rst $20
    rst $20
    nop
    nop
    nop
    nop
    add b
    add b

jr_03b_7186:
    add b
    add b
    add b
    add b
    or b
    or b
    rst $08
    rst $38
    cp a
    call nz, $b47f
    rst $10
    inc l
    cp $1d
    ld l, [hl]
    sbc l

jr_03b_7198:
    or [hl]
    call $ffc4
    rst $38
    rst $38
    dec sp
    dec sp
    nop
    nop
    ld e, $1e
    dec l
    inc sp
    ld a, $21
    cpl
    jr nc, jr_03b_71ea

    jr nc, jr_03b_7186

    sub $ba
    ld [hl], a
    db $db
    scf
    ld e, e
    or [hl]
    rst $18
    or b
    rst $18
    or b
    call c, $93b3
    rst $38
    rst $38
    rst $38
    ld l, h
    ld l, h
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

    ld c, h
    call z, Call_03b_7fb3
    xor l
    ld [hl], e
    rst $18
    ld l, l
    push af
    ld c, e
    rst $38
    ld b, a
    ld e, e
    rst $20
    db $ed
    di
    or c
    cp a
    rra
    rra
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3301
    ld [hl-], a

jr_03b_71ea:
    ld c, e
    ld a, d
    or a
    call z, $8e77
    sub a
    ld l, [hl]
    or a
    ld l, [hl]
    rst $30
    ld c, $7b
    add [hl]
    sbc d
    rst $30
    ei
    rst $30
    ld a, a
    ld a, a
    inc c
    inc c
    nop
    nop
    jr jr_03b_721c

    inc [hl]
    inc l
    or h
    xor h
    ld [hl], h
    db $ec
    ld [hl], h
    db $ec
    cp d
    ld h, [hl]
    ld a, l
    db $e3
    ld [hl], a
    jp hl


    ld [hl], e
    db $ed
    ld [hl], a
    db $ed
    ld [hl], a
    db $ed
    and a
    ld a, l
    dec a
    rst $38

jr_03b_721c:
    rst $20
    rst $20
    db $c2
    db $c2

    db $1c, $57, $ff, $03, $ff, $01, $00, $00, $1c, $57, $e0, $03, $a0, $02, $00, $00

    inc e
    ld d, a
    rra
    nop
    inc de
    nop
    nop
    nop

    db $1c, $57, $1f, $7c, $0e, $7c, $00, $00, $1c, $57, $e0, $43, $a0, $42, $00, $00

    inc e
    ld d, a
    ldh [$7f], a
    ld h, b
    ld a, [hl]
    nop
    nop

    db $1c, $57, $1f, $02, $fd, $00, $00, $00

    ld [$1f25], sp
    ld [bc], a
    db $fd
    nop
    nop
    nop

    ld b, a
    call Call_03b_431f
    ld a, [$c834]
    cp $05
    jp z, Jump_03b_75cc

    cp $0b
    jp z, Jump_03b_75cc

    cp $06
    jp z, Jump_03b_75ce

    cp $07
    jp z, Jump_03b_76a8

    cp $0c
    jp z, Jump_03b_76c0

    ld a, b
    push af
    ld a, [$d48e]
    bit 0, a
    jr z, jr_03b_728f

    ld de, $000a
    rst $18
    ld e, d
    ld [bc], a

jr_03b_728f:
    pop af
    cp $80
    jr z, jr_03b_72c3

    and $0f
    add a
    ld hl, $72a3
    add l
    ld l, a
    jr nc, jr_03b_729f

    inc h

jr_03b_729f:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $41, $75, $6b, $75, $29, $75

    ld h, $74
    jp z, $9075

    ld [hl], l

    db $47, $74

    ld de, $ca74
    ld [hl], l

    db $7f, $75

    ld d, l
    ld [hl], l
    jp z, $a175

    ld [hl], l
    or d
    ld [hl], l
    ld b, c
    ld [hl], l
    ld l, e
    ld [hl], l

jr_03b_72c3:
    push af
    ld hl, $d4f1
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    rst $18

    db $52, $02

    ld a, [$d48e]
    bit 2, a
    jr z, jr_03b_72e1

    ld a, $28
    call Call_03b_76f8
    ld de, $000a
    rst $18
    ld d, d
    ld [bc], a
    jr jr_03b_732c

jr_03b_72e1:
    ld a, [$d4cd]
    cp $06
    jr z, jr_03b_7312

    ld a, $20
    rst $18
    inc d
    db $10
    ld a, [hl]
    cp $01
    jr z, jr_03b_732c

    ld a, $21
    call Call_03b_76f8
    rst $18
    jr c, jr_03b_730a

    ld de, $f880
    add hl, de
    bit 7, h
    jr z, jr_03b_730a

    ld de, $0006
    rst $18
    ld d, d
    ld [bc], a
    jr jr_03b_732c

jr_03b_730a:
    ld de, $0008
    rst $18
    ld d, d
    ld [bc], a
    jr jr_03b_732c

jr_03b_7312:
    ld a, [$d329]
    cp $0d
    jr nz, jr_03b_732c

    rst $18

    db $38, $10

    ld de, $fd80
    add hl, de
    bit 7, h
    jr nz, jr_03b_732c

    ld de, $0004
    rst $18
    ld d, d
    ld [bc], a
    jr jr_03b_732c

jr_03b_732c:
    pop af
    ld a, [$d325]
    ld b, a
    push hl
    ld a, $20
    rst $18

    db $14, $10

    ld a, [hl]
    pop hl
    cp $01
    jr nz, jr_03b_7357

    ld b, $03
    rst $18
    inc l
    ld [bc], a
    rst $08
    dec de
    ld a, $00
    call Call_03b_7717
    rst $18
    ld c, b
    ld [bc], a
    ld de, $0014
    rst $18
    ld d, d
    ld [bc], a
    call Call_03b_773f
    xor a
    ret


jr_03b_7357:
    sub b
    jr nz, jr_03b_736b

    rst $08

    db $1d

    ld a, $04
    call Call_03b_7717
    ld a, $01
    call Call_03b_76f8
    call Call_03b_773f
    xor a
    ret


jr_03b_736b:
    cp $ff
    jr nz, jr_03b_738e

    ld b, $00
    rst $18
    inc l
    ld [bc], a
    rst $08
    inc e
    ld a, $03
    call Call_03b_7717
    ld a, $02
    call Call_03b_76f8
    rst $18
    ld c, b
    ld [bc], a
    ld de, $0006
    rst $18
    ld d, d
    ld [bc], a
    call Call_03b_773f
    xor a
    ret


jr_03b_738e:
    cp $fe
    jr nz, jr_03b_73b1

    ld b, $01
    rst $18
    inc l
    ld [bc], a
    rst $08
    dec de
    ld a, $02
    call Call_03b_7717
    ld a, $00
    call Call_03b_76f8
    rst $18
    ld c, b
    ld [bc], a
    ld de, $000a
    rst $18
    ld d, d
    ld [bc], a
    call Call_03b_773f
    xor a
    ret


jr_03b_73b1:
    cp $fd
    jr nz, jr_03b_73d4

    ld b, $02
    rst $18
    inc l
    ld [bc], a
    rst $08
    dec de
    ld a, $01
    call Call_03b_7717
    ld a, $07
    call Call_03b_76f8
    rst $18
    ld c, b
    ld [bc], a
    ld de, $0010
    rst $18
    ld d, d
    ld [bc], a
    call Call_03b_773f
    xor a
    ret


jr_03b_73d4:
    rst $08
    ld e, $fe
    ld bc, $0f20
    ld a, $05
    call Call_03b_7717
    ld a, $04
    call Call_03b_76f8
    call Call_03b_773f
    xor a
    ret


    cp $02
    jr nz, jr_03b_73fe

    rst $08
    rra
    ld a, $05
    call Call_03b_7717
    ld a, $06
    call Call_03b_76f8
    call Call_03b_773f
    xor a
    ret


jr_03b_73fe:
    push af
    rst $08
    rra
    ld a, $05
    call Call_03b_7717
    pop af
    add $29
    call Call_03b_76f8
    call Call_03b_773f
    xor a
    ret


    ld a, $00
    ld c, $10
    ld de, $5034
    rst $18
    inc b
    ld c, a
    ld a, $05
    call Call_03b_76f8
    rst $18
    ld d, $10
    ld a, $ff
    ret


    ld hl, $d485
    res 2, [hl]
    call Call_000_2ed5
    ld e, $cb
    sbc [hl]
    ld a, $01
    ld c, $10
    ld de, $5034
    rst $18
    inc b
    ld c, a
    ld a, $0c
    call Call_03b_76f8
    rst $18
    ld d, $10
    rst $18
    jr jr_03b_7456

    ret


    ld a, $2b
    rst $18

    db $14, $10

    ld a, [hl]
    or a
    jp nz, Jump_03b_7500

    ld [hl], $01
    ld a, [$d48e]

jr_03b_7456:
    bit 1, a
    jr z, jr_03b_7468

    ld a, $1b
    call Call_03b_76f8
    ld de, $0004
    rst $18
    ld e, d
    ld [bc], a
    jp Jump_03b_74fe


jr_03b_7468:
    ld a, $20
    rst $18

    db $14, $10

    ld a, [$d325]
    sub [hl]
    bit 7, a
    jp nz, Jump_03b_74f1

    cp $03
    jr c, jr_03b_7488

    ld a, $1f
    call Call_03b_76f8
    ld de, $0002
    rst $18
    ld e, d
    ld [bc], a
    jp Jump_03b_74fe


jr_03b_7488:
    cp $02
    jr c, jr_03b_74c0

    rst $18
    inc b
    db $10
    ld de, $ffdf
    add hl, de
    bit 7, h
    jr z, jr_03b_74a5

    ld a, $13
    call Call_03b_76f8
    ld de, $0002
    rst $18
    ld e, d
    ld [bc], a
    jp Jump_03b_74fe


jr_03b_74a5:
    ld a, [$d329]
    cp $0d
    jr z, jr_03b_74b3

    ld a, [$d32a]
    cp $02
    jr c, jr_03b_74e9

jr_03b_74b3:
    rst $18
    inc b
    db $10
    ld de, $ffcb
    add hl, de
    bit 7, h
    jr z, jr_03b_74e9

    jr jr_03b_74e1

jr_03b_74c0:
    cp $01
    jr c, jr_03b_74df

    ld a, [$d329]
    cp $0d
    jr z, jr_03b_74d2

    ld a, [$d32a]
    cp $02
    jr c, jr_03b_74e9

jr_03b_74d2:
    rst $18

    db $04, $10

    ld de, $ffcb
    add hl, de
    bit 7, h
    jr z, jr_03b_74e9

    jr jr_03b_74e1

jr_03b_74df:
    jr jr_03b_74f1

jr_03b_74e1:
    ld a, $0b
    call Call_03b_76f8
    jp Jump_03b_74fe


jr_03b_74e9:
    ld a, $0a
    call Call_03b_76f8
    jp Jump_03b_74fe


Jump_03b_74f1:
jr_03b_74f1:
    ld hl, $d485
    res 3, [hl]
    ld a, $24
    call Call_03b_76f8
    jp Jump_03b_74fe


Jump_03b_74fe:
    xor a
    ret


Jump_03b_7500:
    rst $18
    jr c, @+$12

    ld de, $fec0
    add hl, de
    bit 7, h
    jr nz, jr_03b_751d

    rst $18
    inc b
    db $10
    ld de, $ffdf
    add hl, de
    bit 7, h
    jr z, jr_03b_751d

    ld a, $09
    call Call_03b_76f8
    xor a
    ret


jr_03b_751d:
    ld hl, $d485
    res 3, [hl]
    ld a, $24
    call Call_03b_76f8
    xor a
    ret


    call Call_000_2ed5

    db $1e

    ld a, [$d446]
    add $02
    ld c, $10
    ld de, $5034
    rst $18

    db $04, $4f

    ld a, $0d
    call Call_03b_76f8
    xor a
    ret


    ld a, [$d446]
    add $05
    ld c, $10
    ld de, $5034
    rst $18

    db $04, $4f

    ld a, $0e
    call Call_03b_76f8
    xor a
    ret


    ld hl, $d485
    res 3, [hl]
    ld a, $05
    ld c, $10
    ld de, $5034
    rst $18
    inc b
    ld c, a
    ld a, $0f
    call Call_03b_76f8
    xor a
    ret


    ld a, [$d446]
    add $08
    ld c, $10
    ld de, $5034
    rst $18

    db $04, $4f

    ld a, $10
    call Call_03b_76f8
    xor a
    ret


    ld a, $06
    ld c, $10
    ld de, $5034
    rst $18

    db $04, $4f

    ld a, $12
    call Call_03b_76f8
    xor a
    ret


    ld a, $0a
    ld c, $10
    ld de, $5034
    rst $18
    inc b
    ld c, a
    ld a, $11
    call Call_03b_76f8
    xor a
    ret


    ld a, $0a
    ld c, $10
    ld de, $5034
    rst $18
    inc b
    ld c, a
    ld a, $2b
    call Call_03b_76f8
    xor a
    ret


    call Call_000_2ed5
    ld e, $fa
    ld b, [hl]
    call nc, Call_000_0bc6
    ld c, $10
    ld de, $5034
    rst $18
    inc b
    ld c, a
    ld a, $25
    call Call_03b_76f8
    xor a
    ret


    xor a
    ret


Jump_03b_75cc:
    xor a
    ret


Jump_03b_75ce:
    ld a, b
    cp $80
    jr z, jr_03b_7602

    and $0f
    add a
    ld hl, $75e2
    add l
    ld l, a
    jr nc, jr_03b_75de

    inc h

jr_03b_75de:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld b, c
    ld [hl], l
    ld l, e
    ld [hl], l
    add hl, hl
    ld [hl], l
    ld h, $74
    jp z, $9075

    ld [hl], l
    add hl, sp
    db $76
    ld de, $ca74
    ld [hl], l
    ld a, a
    ld [hl], l
    ld d, l
    ld [hl], l
    jp z, $a175

    ld [hl], l
    or d
    ld [hl], l

Call_03b_75fe:
    ld b, c
    ld [hl], l
    ld l, e
    ld [hl], l

jr_03b_7602:
    push hl
    ld a, $20
    rst $18
    inc d
    db $10
    ld a, [hl]
    pop hl
    cp $01
    jr nz, jr_03b_7628

    ld b, $03
    rst $18
    inc l
    ld [bc], a
    rst $08
    dec de
    ld a, $00
    call Call_03b_7717
    rst $18
    ld c, b
    ld [bc], a
    ld de, $0014
    rst $18
    ld d, d
    ld [bc], a
    call Call_03b_773f
    xor a
    ret


jr_03b_7628:
    rst $08
    dec e
    ld a, $04
    call Call_03b_7717
    ld a, $18
    call Call_03b_76f8
    call Call_03b_773f
    xor a
    ret


    ld a, $2b
    rst $18
    inc d
    db $10
    ld a, [hl]
    or a
    jp nz, Jump_03b_7684

    ld [hl], $01
    ld a, [$d48e]
    bit 1, a
    jr z, jr_03b_7654

    ld a, $1b
    call Call_03b_76f8
    jp Jump_03b_7682


jr_03b_7654:
    ld a, [$d329]
    cp $0d
    jr z, jr_03b_7662

    ld a, [$d32a]
    cp $02
    jr c, jr_03b_7675

jr_03b_7662:
    rst $18
    inc b
    db $10
    ld de, $ffcb
    add hl, de
    bit 7, h
    jr z, jr_03b_7675

    ld a, $0b
    call Call_03b_76f8
    jp Jump_03b_7682


jr_03b_7675:
    ld a, $0a
    call Call_03b_76f8
    jp Jump_03b_7682


    ld a, $24
    call Call_03b_76f8

Jump_03b_7682:
    xor a
    ret


Jump_03b_7684:
    rst $18
    jr c, @+$12

    ld de, $fec0
    add hl, de
    bit 7, h
    jr nz, jr_03b_76a1

    rst $18
    inc b
    db $10
    ld de, $ffdf
    add hl, de
    bit 7, h
    jr z, jr_03b_76a1

    ld a, $09
    call Call_03b_76f8
    xor a
    ret


jr_03b_76a1:
    ld a, $24
    call Call_03b_76f8
    xor a
    ret


Jump_03b_76a8:
    ld a, b
    cp $80
    jr z, jr_03b_76af

    xor a
    ret


jr_03b_76af:
    rst $08
    dec e
    ld a, $04
    call Call_03b_7717
    ld a, $18
    call Call_03b_76f8
    call Call_03b_773f
    xor a
    ret


Jump_03b_76c0:
    ld a, b
    cp $80
    jr z, jr_03b_76c7

    xor a
    ret


jr_03b_76c7:
    rst $08
    dec e
    ld a, $04
    call Call_03b_7717
    ld a, $21
    call Call_03b_76f8
    call Call_03b_773f
    xor a
    ret


    ld a, [$d443]
    or a
    jr nz, jr_03b_76e3

    ld a, $01
    rst $18
    nop
    inc de

jr_03b_76e3:
    ld a, $ff
    ld [$d443], a
    rst $08
    rra
    ld a, $05
    call Call_03b_7717
    ld a, $19
    call Call_03b_76f8
    call Call_03b_773f
    ret


Call_03b_76f8:
    call Call_000_2e3b
    ld d, a
    ld a, [$d485]
    push af
    and $ed
    ld [$d485], a
    ld a, d
    call Call_03b_4339
    call Call_03b_4310
    rst $18

    db $06, $4f

    call Call_000_2e3b
    pop af
    ld [$d485], a
    ret


Call_03b_7717:
    push af
    push bc
    push de
    push hl
    ld b, a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $f0
    ld [$d34d], a
    ld a, $10
    rst $18

    db $14, $10

    ld c, [hl]
    ld a, $19
    rst $18

    db $14, $10

    ld a, [hl]
    and $10
    or c
    ld c, a
    rst $18

    db $06, $77

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03b_773f:
    push af
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a

jr_03b_7749:
    call Call_000_2e3b
    ld a, [$d34d]
    or a
    jr z, jr_03b_775c

    ldh a, [$94]
    and $03
    jr z, jr_03b_7749

    xor a
    ld [$d34d], a

jr_03b_775c:
    call Call_000_2e3b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ret


    ld hl, $7858
    call Call_000_2449
    ret


    ld hl, $7850
    ld de, $0b01
    call Call_000_056c
    ld hl, $7790
    ld de, $8c00
    ld c, $0c
    call Call_000_0468
    ld a, $10
    ld hl, $7858
    call Call_000_23e8
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    xor $9e
    ld a, [$fa86]
    add [hl]
    ld [$da96], a
    or [hl]
    db $db
    or a
    db $db
    or [hl]
    ei
    add [hl]
    rst $30
    adc [hl]
    db $db
    or [hl]
    db $db
    or [hl]
    db $db
    or [hl]
    sub d
    rst $38
    rst $38
    rst $38
    ld l, l
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
    rst $28
    rst $28
    ei
    or [hl]
    ei
    or [hl]
    ei
    or [hl]
    ei
    and [hl]
    ei
    add [hl]
    rst $30
    adc $ee
    rst $38
    cp a
    cp a
    add hl, de
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    xor $ef
    cp e
    ld [hl], a
    jp c, $da36

    or [hl]
    jp c, $dab6

    ld [hl], $db
    scf
    db $db
    or a
    sbc a
    ldh a, [rIE]
    rst $38
    ld l, a
    ld l, a
    nop
    nop
    rrca
    rrca
    rst $18
    ret nc

    call c, Call_03b_5d53
    db $db
    db $fd
    ei
    db $ed
    sbc e
    db $fd
    cp e
    db $dd
    cp e
    db $ed
    db $db
    ld a, l
    ld l, e
    db $fd
    db $eb
    db $ed
    sbc e
    adc c
    rst $38
    rst $38
    rst $38
    db $76
    halt
    nop
    ldh [$e0], a
    and b
    ld h, b
    jr nz, @-$1e

    ldh [$e0], a
    ldh [$e0], a
    rst $18
    rst $18
    rst $30
    ld l, h
    rst $30
    ld l, l
    rst $30
    ld l, l
    rst $30
    ld l, h
    rst $30
    ld l, h
    ld [hl], a
    adc l
    add l
    rst $38
    rst $38
    rst $38
    ld a, d
    ld a, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $db
    db $db
    ld l, a
    db $fd
    or a
    ld l, l
    cp e
    ld h, l
    cp a
    ld h, c
    ld [hl], a
    jp hl


    cp e
    ld l, l
    dec l
    rst $38
    rst $38
    rst $38
    db $db
    db $db
    nop
    ld d, a
    rst $38
    inc bc
    rst $38
    ld bc, $0000
    ldh a, [$8c]
    and $0f
    cp $06
    jr nc, jr_03b_7861

    ret


jr_03b_7861:
    ld hl, $786e
    ld de, $0040
    ld bc, $03c0
    call Call_000_26ea
    ret


    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld c, b
    ld [bc], a
    nop
    ld b, b
    ld d, b
    inc b
    nop
    ld b, b
    ld e, b
    ld b, $00
    ld b, b
    ld h, b
    ld [$4000], sp
    ld l, b
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

Call_03b_79b6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_03b_7d45:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_03b_7dfb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_03b_7fb3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_03b_7fff:
    rst $38
