; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    db $92, $40, $d6, $40, $0d, $41, $20, $41, $64, $41, $99, $41, $ce, $41, $24, $41

    ld b, b
    ld b, c

    db $d8, $41

    ldh [rSCY], a

    db $fc, $42, $1e, $43

    ld b, d
    ld b, e
    ld e, [hl]
    ld b, e

    db $93, $43, $c6, $43, $16, $44

    ld h, [hl]
    ld b, h
    inc bc
    ld b, l

    db $87, $45

    ld c, $46

    db $44, $46

    ld h, d
    ld b, [hl]
    db $d4
    ld b, [hl]

    db $5b, $47, $68, $47

    and [hl]
    ld b, a
    ret z

    ld b, a
    ld a, [hl+]
    ld c, b
    xor h
    ld c, b
    rst $18
    ld c, b
    ld [hl], h
    ld b, a
    adc b
    ld b, a
    cp a
    ld b, d
    sub h
    ld b, a

    db $8c, $49, $45, $4f

    rst $38
    ld c, e

    db $5b, $4d, $8a, $4d

    rra
    ld d, e
    ld [hl], $53

    db $48, $53, $56, $6f

    ld [hl], h
    ld [hl], c
    ld a, b
    ld a, b
    ld [hl+], a
    ld d, h
    rst $08
    ld d, h
    ld h, c
    ld d, l
    or c
    ld d, [hl]
    push af
    push bc
    push de
    push hl
    ldh a, [$94]
    and $08
    jr z, jr_00a_408d

    rst $30
    ret nz

    ld [bc], a
    jr z, jr_00a_4082

    rst $28
    ret nz

    ld [bc], a
    ld a, [$c82d]
    or $80
    ld [$c82d], a
    jr jr_00a_408d

jr_00a_4082:
    rst $20
    ret nz

    ld [bc], a
    ld a, [$c82d]
    and $7f
    ld [$c82d], a

jr_00a_408d:
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
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [$c363], a
    xor a
    ld [$c368], a
    ld [$c369], a
    ld hl, $c292
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    and $0f
    sla l
    rl a
    sla l
    rl a
    call Call_00a_4342
    ldh a, [$9e]
    or a
    jr z, jr_00a_40d1

    ld a, $01
    ld hl, $4066
    call Call_000_23e8

jr_00a_40d1:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    xor a
    ld [$c368], a
    ld [$c369], a
    ldh a, [$95]
    ld b, a
    ld hl, $c292
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    and $0f
    sla l
    rl a
    sla l
    rl a
    ld de, $4109
    rst $18

    db $18, $0a

    ld hl, $4066
    call Call_000_2449
    rst $28

    db $c0, $02

    pop hl
    pop de
    pop bc
    pop af
    ret


    dec bc
    inc c
    cp $ff

Call_00a_410d:
    push af
    push bc
    rst $30

    db $c0, $02

    jr z, jr_00a_4116

    ld a, $02

jr_00a_4116:
    or a
    jr z, jr_00a_411f

    ld c, a
    call Call_000_2ef0
    pop bc
    pop af

jr_00a_411f:
    ret


    rst $18

    db $4a, $0a

    ret


    push af
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $44, $05

    ld a, l
    ld [$d852], a
    ld a, h
    ld [$d853], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ret


    push af
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d852]
    ld l, a
    ld a, [$d853]
    ld h, a
    inc hl
    ld a, l
    ld [$d852], a
    ld a, h
    ld [$d853], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop af
    ret


    push af
    push hl
    ld b, a
    ldh a, [$96]
    push af
    ld a, [$c96d]
    or a
    call z, Call_00a_48ac
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d852]
    ld l, a
    ld a, [$d853]
    ld h, a
    rst $30

    db $c0, $02

    jr nz, jr_00a_4188

    ld a, b
    rst $18

    db $46, $05

jr_00a_4188:
    inc hl
    ld a, l
    ld [$d852], a
    ld a, h
    ld [$d853], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop af
    ret


    push af
    push hl
    ld b, a
    ldh a, [$96]
    push af
    ld a, [$c96d]
    or a
    call z, Call_00a_48ac
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d852]
    ld l, a
    ld a, [$d853]
    ld h, a
    rst $30

    db $c0, $02

    jr nz, jr_00a_41bd

    ld a, b
    rst $18

    db $48, $05

jr_00a_41bd:
    inc hl
    ld a, l
    ld [$d852], a
    ld a, h
    ld [$d853], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop af
    ret


    rst $18

    db $0e, $05

    rst $18

    db $1c, $05

    rst $18

    db $14, $05

    ret


    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00a_4281
    ld a, [$d829]
    push af
    xor a
    ld [$d829], a
    call Call_00a_4227
    ld a, [$d82f]
    ld b, $06
    rst $18

    db $10, $05

    ld a, [$d82f]
    rst $18

    db $6e, $05

    rst $18

    db $70, $05

    rst $18

    db $4e, $05

    ld b, a
    call Call_00a_4281
    ld a, [$d82f]
    rst $18

    db $72, $05

    xor a
    ld [$d84f], a
    ld a, $ff
    ld [$d82f], a
    pop af
    ld [$d829], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop hl
    pop de
    pop bc
    ret


Call_00a_4227:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, [$d851]
    ld b, a
    and $7f
    ld e, a
    rl b
    jr nc, jr_00a_4245

    cp $09
    jr c, jr_00a_4241

    ld e, $01
    jr jr_00a_426f

jr_00a_4241:
    ld e, $0a
    jr jr_00a_426f

jr_00a_4245:
    call Call_00a_42e0
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
    add $04
    ld l, a
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    sub b
    cp $0a
    jr c, jr_00a_426d

    ld e, $0a
    jr jr_00a_426f

jr_00a_426d:
    ld e, $01

jr_00a_426f:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld d, $02
    ld hl, $001a
    rst $18

    db $0a, $05

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4281:
    push af
    push bc
    push de
    push hl
    ld hl, $d852
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec hl
    xor a
    rst $18

    db $52, $05

    rst $18

    db $24, $05

    ld hl, $c600
    ld bc, $0180
    ld de, $0000

jr_00a_429c:
    ld a, $00
    cp [hl]
    jr z, jr_00a_42ae

    ld a, $02
    cp [hl]
    inc hl
    jr nz, jr_00a_42a9

    ld d, h
    ld e, l

jr_00a_42a9:
    dec bc
    ld a, b
    or c
    jr nz, jr_00a_429c

jr_00a_42ae:
    ld a, d
    or e
    jr z, jr_00a_42ba

    ld a, e
    ld [$d84e], a
    ld a, d
    ld [$d84f], a

jr_00a_42ba:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push bc
    push de
    push hl
    rst $18
    ld a, [bc]
    dec b
    ld b, a
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld a, b
    rst $18
    ld c, [hl]
    dec b
    ld c, a
    ld a, b
    rst $18
    inc c
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld a, c
    pop hl
    pop de
    pop bc
    ret


Call_00a_42e0:
    ld hl, $0000
    cp $ff
    ret z

    ld hl, $d000
    cp $18
    jr nc, jr_00a_42fb

    push bc
    ld c, $00
    ld b, a
    sra b
    rr c
    sra b
    rr c
    add hl, bc
    pop bc

jr_00a_42fb:
    ret


    cp $ff
    ret z

    push af
    push hl
    call Call_00a_42e0
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
    add $0e
    ld l, a
    ld [hl], c
    inc hl
    ld [hl], b
    pop hl
    pop af
    ret


    cp $ff
    ret z

    push af
    push hl
    call Call_00a_42e0
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
    add $00
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], b
    pop hl
    pop af
    ret


Call_00a_4342:
    cp $ff
    ret z

    push af
    push hl
    call Call_00a_42e0
    ld de, $435d
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ldh a, [$95]
    ld [hl], a
    pop hl
    pop af
    ret


    db $00

    cp $ff
    ret z

    push af
    push bc
    push hl
    ld bc, $0258
    call Call_00a_42e0
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
    add $00
    ld l, a

jr_00a_437e:
    call Call_00a_410d
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    ld a, [de]
    cp $00
    jr z, jr_00a_438f

    dec bc
    ld a, c
    or b
    jr nz, jr_00a_437e

jr_00a_438f:
    pop hl
    pop bc
    pop af
    ret


    cp $ff
    ret z

    push af
    push bc
    push hl
    ld bc, $0258
    call Call_00a_42e0
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
    add $12
    ld l, a

jr_00a_43b3:
    ld a, $01
    call Call_00a_410d
    ld a, [hl]
    and $01
    jr z, jr_00a_43c2

    dec bc
    ld a, c
    or b
    jr nz, jr_00a_43b3

jr_00a_43c2:
    pop hl
    pop bc
    pop af
    ret


Call_00a_43c6:
    cp $ff
    ret z

    push af
    push bc
    push de
    push hl
    add sp, -$04
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$00
    ld b, h
    ld c, l
    call Call_00a_42e0
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00a_43f5
    add sp, $04
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_43f5:
    push bc
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
    call Call_000_03d3
    pop bc
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $12
    ld l, a
    ld [hl], $00
    ret


    cp $ff
    ret z

    push af
    push bc
    push de
    push hl
    add sp, -$04
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$00
    ld b, h
    ld c, l
    call Call_00a_42e0
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00a_4445
    add sp, $04
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4445:
    push bc
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
    call Call_000_03d3
    pop bc
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $12
    ld l, a
    ld [hl], $01
    ret


    cp $ff
    ret z

    push af
    push bc
    push de
    push hl
    rst $30
    ret nz

    ld [bc], a
    jr z, jr_00a_4475

    call Call_00a_43c6

jr_00a_4475:
    add sp, -$05
    push af
    ld a, l
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], a
    pop af
    ld hl, sp+$00
    ld b, h
    ld c, l
    call Call_00a_42e0
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00a_44a2
    add sp, $05
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_44a2:
    push bc
    ld l, c
    ld h, b
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push bc
    ld a, [hl]
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


    cp $ff
    ret z

    push af
    push bc
    push de
    push hl
    add sp, -$04
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$00
    ld b, h
    ld c, l
    call Call_00a_42e0
    ld a, l
    ldh [$e0], a
    ld a, h

Jump_00a_4520:
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00a_4532
    add sp, $04
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4532:
    push de
    ld l, c
    ld h, b
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, c
    ld d, b
    ld c, l
    ld b, h
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04

Jump_00a_4544:
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
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, c
    ld d, b
    ld c, l
    ld b, h
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


    cp $ff
    ret z

    push af
    push bc
    push de
    push hl
    add sp, -$03
    ld hl, sp+$00
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$00
    ld b, h
    ld c, l
    call Call_00a_42e0
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00a_45b6
    jr jr_00a_45af

jr_00a_45af:
    add sp, $03
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_45b6:
    ld a, d
    ld l, c
    ld h, b
    ld a, [hl]
    inc bc
    push af
    push bc
    ld a, d
    ld l, c
    ld h, b
    ld c, [hl]
    inc hl
    ld b, [hl]
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


    cp $ff
    ret z

    push af
    call Call_00a_42e0
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    and a
    jr nz, jr_00a_4639

    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $32
    ld l, a
    ld a, [hl]
    push af
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $10
    ld l, a
    pop af
    ld [hl], a

jr_00a_4639:
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $33
    ld l, a
    ld [hl], b
    pop af
    ret


    cp $ff
    ret z

    push af
    call Call_00a_42e0
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
    add $10
    ld l, a
    ld [hl], b
    pop af
    ret


    cp $ff
    ret z

    push bc
    inc b
    pop bc
    ret z

    push af
    push bc
    push de
    push hl
    ld d, a
    ld a, b
    call Call_00a_42e0
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
    add $04
    ld l, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld a, d
    call Call_00a_42e0
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    pop hl
    call Call_000_08ac
    ld b, h
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    pop hl
    call Call_000_08ac
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    call Call_000_0a7b
    push af
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $10
    ld l, a
    pop af
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    cp $ff
    ret z

    push bc
    inc b
    pop bc
    ret z

    push af
    push bc
    push de
    push hl
    ld d, a
    ld a, b
    call Call_00a_42e0
    push hl
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
    add $04
    ld l, a
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld a, d
    call Call_00a_42e0
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    pop hl
    call Call_000_08ac
    ld b, h
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    pop hl
    call Call_000_08ac
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    call Call_000_0a7b
    push af
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $10
    ld l, a
    pop af
    ld [hl], a
    add $80
    pop hl
    ld d, a
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $10
    ld l, a
    ld a, d
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    cp $ff
    ret z

    ld c, a
    ld a, b
    call Call_00a_42e0
    ld a, c
    rst $18

    db $38, $04

    ret


    rst $30

    db $c0, $02

    jr nz, jr_00a_4773

    call Call_00a_42e0
    rst $18

    db $44, $04

jr_00a_4773:
    ret


    cp $ff
    ret z

    call Call_00a_42e0
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $1c
    add l
    ld l, a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


    rst $30
    ret nz

    ld [bc], a
    jr nz, jr_00a_4793

    call Call_00a_42e0
    rst $18
    ld d, d
    inc b

jr_00a_4793:
    ret


    cp $ff
    ret z

    call Call_00a_42e0
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $0016
    add hl, de
    ld [hl], b
    ret


    push af
    push hl
    ld hl, $c292
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
    add $0e
    ld l, a
    ld [hl], c
    inc hl
    ld [hl], b
    pop hl
    pop af
    ret


    push af
    push bc
    push de
    push hl
    add sp, -$04
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$00
    ld b, h
    ld c, l
    ld d, a
    ld hl, $c292
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
    ld a, d
    or a
    jr nz, jr_00a_47f7

    call Call_00a_4445
    jr jr_00a_4823

jr_00a_47f7:
    push af
    push bc
    push de
    push hl
    ld c, $7f
    call Call_000_25a1
    call Call_000_2625
    pop hl
    pop de
    pop bc
    pop af
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    call Call_00a_43f5
    call Call_000_2e3b
    rst $18
    inc e
    dec b
    ld b, $05
    call Call_000_2e3b
    ld c, $7f
    call Call_000_25af
    call Call_000_2625

jr_00a_4823:
    add sp, $04
    pop hl
    pop de
    pop bc
    pop af
    ret


    cp $ff
    ret z

    push af
    push bc
    push de
    push hl
    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    add sp, -$04
    ld hl, sp+$00
    call Call_00a_42e0
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld a, b
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$00
    ld b, h
    ld c, l
    ld d, a
    ld hl, $c292
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, d
    or a
    jr nz, jr_00a_4879

    call Call_00a_4445
    jr jr_00a_48a5

jr_00a_4879:
    push af
    push bc
    push de
    push hl
    ld c, $7f
    call Call_000_25a1
    call Call_000_2625
    pop hl
    pop de
    pop bc
    pop af
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    call Call_00a_43f5
    call Call_000_2e3b
    rst $18
    inc e
    dec b
    ld b, $05
    call Call_000_2e3b
    ld c, $7f
    call Call_000_25af
    call Call_000_2625

jr_00a_48a5:
    add sp, $04
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_48ac:
    push af
    push bc
    push hl
    ld bc, $0258
    ld hl, $c292
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
    add $12
    ld l, a

jr_00a_48cc:
    ld a, $01
    call Call_00a_410d
    ld a, [hl]
    and $01
    jr z, jr_00a_48db

    dec bc
    ld a, c
    or b
    jr nz, jr_00a_48cc

jr_00a_48db:
    pop hl
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
    ld a, b
    or a
    jr z, jr_00a_4903

    push af
    ld a, [$c363]
    inc a
    jr nz, jr_00a_48fa

    ld a, $01
    ld hl, $4927
    call Call_000_23e8

jr_00a_48fa:
    pop af
    cp $04
    jr c, jr_00a_491a

    ld a, $03
    jr jr_00a_491a

jr_00a_4903:
    ld a, [$c363]
    inc a
    ld a, $00
    jr z, jr_00a_491a

    xor a
    ld [$c368], a
    ld [$c369], a
    ld hl, $4927
    call Call_000_2449
    ld a, $ff

jr_00a_491a:
    ld [$c363], a
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
    ld a, [$c363]
    ld c, $00

jr_00a_4930:
    scf
    rl c
    dec a
    jr nz, jr_00a_4930

    call Call_000_0a61
    ld a, h
    and c
    jr nc, jr_00a_493f

    cpl
    inc a

jr_00a_493f:
    ld [$c368], a
    ld a, l
    and c
    jr nc, jr_00a_4948

    cpl
    inc a

jr_00a_4948:
    ld [$c369], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30

    db $00, $04

    jr z, jr_00a_498b

    ld hl, $c290
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc b
    dec b
    jr z, jr_00a_498b

    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0004
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push de
    ld h, h
    ld l, l
    ld de, $1000
    call Call_000_22bc
    pop de
    pop hl
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push de
    ld h, h
    ld l, l
    ld de, $1001
    call Call_000_22bc
    pop de
    pop hl

jr_00a_498b:
    ret


    xor a
    ld [$c4bf], a
    xor a
    ld hl, $c290
    ld [hl+], a
    ld [hl+], a
    ld hl, $c292
    ld [hl+], a
    ld [hl+], a
    ld hl, $c294
    ld [hl+], a
    ld [hl+], a
    ld a, $ff
    ld [$c296], a
    ld [$c297], a
    ld [$c298], a
    ld a, $ff
    ld [$c2a7], a
    rst $18

    db $0a, $01

jr_00a_49b3:
    call Call_000_23b6
    ld a, $01
    ld hl, $4950
    call Call_000_23e8
    call Call_00a_4a21
    call Call_00a_5146
    jr jr_00a_49b3

Call_00a_49c6:
    push de
    push hl
    call Call_00a_4cc5
    and a
    jr z, jr_00a_49e6

    ld hl, $c298
    cp [hl]
    jr z, jr_00a_49e6

    ld d, a
    ld hl, $c45c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c464]
    call Call_00a_4ec5
    ld a, h
    or l
    jr z, jr_00a_49e6

    ld a, d

jr_00a_49e6:
    pop hl
    pop de
    ret


Call_00a_49e9:
    push de
    push hl
    call Call_00a_4c9b
    and a
    jr z, jr_00a_4a03

    ld d, a
    ld hl, $c45e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c464]
    call Call_00a_4ea0
    ld a, h
    or l
    jr z, jr_00a_4a03

    ld a, d

jr_00a_4a03:
    pop hl
    pop de
    ret


    push de
    push hl
    cp $fa
    jr z, jr_00a_4a1e

    ld d, a
    ld hl, $c458
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c464]
    call Call_00a_4ea0
    ld a, h
    or l
    jr z, jr_00a_4a1e

    ld a, d

jr_00a_4a1e:
    pop hl
    pop de
    ret


Call_00a_4a21:
    push af
    push bc
    push de
    push hl
    ld c, $0c
    call Call_000_25a1
    ld a, $10
    ld [$c4bf], a
    call Call_00a_4b8c
    call Call_00a_4b99
    call Call_00a_4bbc
    call Call_00a_4c0d
    call Call_000_2e3b
    cp $ff
    jr z, jr_00a_4a48

    ld a, [$c454]
    call Call_000_2c19

jr_00a_4a48:
    ld a, $20
    ld [$c4bf], a
    ld hl, $c45a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c464]
    call Call_00a_4f45
    rst $18

    db $46, $04

    rst $20

    db $80, $02

    call Call_000_2625
    rst $28

    db $80, $02

    ld a, $30
    ld [$c4bf], a
    ld hl, $c466
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c320
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $c468
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c322
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, [$c451]
    rst $18

    db $00, $0b

    ld a, $40
    ld [$c4bf], a
    call Call_00a_4f71
    ld hl, $c441
    ld a, [hl]
    and a
    jr z, jr_00a_4a9f

    ld [hl], $00
    ld [$c46b], a
    jp Jump_00a_4b87


jr_00a_4a9f:
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    call Call_00a_4ddb

Jump_00a_4aaa:
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c290
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rst $18
    ld [hl-], a
    inc b
    ld de, $0035
    add hl, de
    ld [hl], $01
    call Call_00a_4bac
    and a
    jp z, Jump_00a_4b6f

    ld hl, $c440
    ld a, [hl]
    and a
    jr z, jr_00a_4ad2

    ld [hl], $00
    call Call_00a_50cb

jr_00a_4ad2:
    ld hl, $c441
    ld a, [hl]
    and a
    jr z, jr_00a_4ae1

    ld [hl], $00
    ld [$c46b], a
    jp Jump_00a_4b87


jr_00a_4ae1:
    ld hl, $c444
    ld a, [hl]
    and a
    jr z, @+$0c

    ld [hl], $00
    rst $08
    ld h, d
    call Call_00a_48ac
    rst $18
    ld [$ef41], sp
    ldh [rSC], a
    ld hl, $c443
    ld a, [hl]
    and a
    jr z, jr_00a_4b20

    ld [hl], $00
    ld a, [$c28c]
    and a
    jr z, jr_00a_4b20

    ld a, [$c28d]
    ld b, a
    ld a, [$c28c]
    cp b
    jr nz, jr_00a_4b20

    ld hl, $c28e
    ld a, [hl]
    cp $1e
    jr c, jr_00a_4b20

    ld [hl], $00
    rst $20
    ldh [rSC], a
    ld hl, $c442
    ld [hl], $02

jr_00a_4b20:
    ld hl, $c442
    ld a, [hl]
    and a
    jr z, jr_00a_4b6c

    ld b, [hl]
    ld [hl], $00
    call Call_00a_49c6
    and a
    jr z, jr_00a_4b35

    call Call_00a_4f96
    jr jr_00a_4b6c

jr_00a_4b35:
    call Call_00a_49e9
    and a
    jr z, jr_00a_4b40

    call Call_00a_5066
    jr jr_00a_4b6c

jr_00a_4b40:
    call Call_00a_4d1f
    and a
    jr z, jr_00a_4b4b

    call Call_00a_5109
    jr jr_00a_4b6c

jr_00a_4b4b:
    ld a, b
    cp $02
    jr z, jr_00a_4b6c

    ldh a, [$9e]
    and a
    jr z, jr_00a_4b5d

    call Call_00a_48ac
    rst $18
    ld h, b
    dec b
    jr jr_00a_4b6c

jr_00a_4b5d:
    ld a, [$c450]
    cp $02
    jr nz, jr_00a_4b6c

    rst $08
    ld e, h
    call Call_00a_48ac
    rst $18
    ld e, d
    ld a, [bc]

jr_00a_4b6c:
    jp Jump_00a_4aaa


Jump_00a_4b6f:
    call Call_000_2625
    ld hl, $c290
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rst $18
    inc [hl]
    inc b

jr_00a_4b7b:
    call Call_000_2e3b
    call Call_00a_4bac
    and a
    jr z, jr_00a_4b7b

    jp Jump_00a_4aaa


Jump_00a_4b87:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4b8c:
    push af
    push hl
    ld hl, $c85c
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    pop af
    ret


Call_00a_4b99:
    push af
    push bc
    push de
    push hl
    ld hl, $c440
    ld b, $05
    xor a

jr_00a_4ba3:
    ld [hl+], a
    dec b
    jr nz, jr_00a_4ba3

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4bac:
    push bc
    push hl
    ld hl, $c440
    ld b, $05
    xor a

jr_00a_4bb4:
    add [hl]
    inc hl
    dec b
    jr nz, jr_00a_4bb4

    pop hl
    pop bc
    ret


Call_00a_4bbc:
    push af
    push bc
    push de
    push hl
    ld a, [$c450]
    call Call_00a_5303
    ld de, $c450
    ld bc, $0006
    call Call_000_03d3
    ld hl, $c452
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_063b
    ld [$c464], a
    ld de, $c456
    ld bc, $000e
    call Call_000_0654
    ld a, [$c450]
    rst $18

    db $56, $0a

    ld hl, $012c
    add l
    ld l, a
    jr nc, jr_00a_4bf2

    inc h

jr_00a_4bf2:
    ld a, l
    ld [$c4b4], a
    ld a, h
    ld [$c4b5], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push de
    push hl
    push hl
    ld hl, $c450
    add hl, de
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop de
    ret


Call_00a_4c0d:
    push af
    push bc
    push de
    push hl
    ld a, [$c46a]
    cp $fa
    jr z, jr_00a_4c65

    ld hl, $c46a
    ld c, [hl]
    ld hl, $c464
    ld b, [hl]
    ld hl, $c456
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00a_4c26:
    ld a, b
    call Call_000_0611
    cp $ff
    jr z, jr_00a_4c37

    cp c
    jr z, jr_00a_4c3d

    ld de, $0006
    add hl, de
    jr jr_00a_4c26

jr_00a_4c37:
    ld hl, $c456
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00a_4c3d:
    ld a, b
    ld de, $c400
    ld bc, $0006
    call Call_000_0654
    ld hl, $c401
    ld de, $c465
    ld a, [hl]
    ld [de], a
    ld hl, $c402
    ld de, $c466
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld hl, $c404
    ld de, $c468
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a

jr_00a_4c65:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4c6a:
    push af
    push bc
    ld b, a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld c, l
    ld b, h
    ld hl, $0029
    add hl, bc
    add [hl]
    ld l, e
    ld h, d
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
    pop bc
    pop af
    ret


Call_00a_4c9b:
    push bc
    push de
    push hl
    ld hl, $c290
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $00
    ld de, $01c0
    call Call_00a_4c6a
    ld e, d
    ld d, h
    rst $18
    ld [de], a
    dec bc
    ld d, a
    ld e, $00
    and $0f
    cp $08
    jr nz, jr_00a_4cc0

    ld a, d
    swap a
    and $0f
    ld e, a

jr_00a_4cc0:
    ld a, e
    pop hl
    pop de
    pop bc
    ret


Call_00a_4cc5:
    push bc
    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld d, h
    inc b
    ld hl, $c290
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld l, c
    ld h, b
    ld a, $00
    ld de, $01c0
    call Call_00a_4c6a
    push de
    ld e, d
    ld d, h
    rst $18
    ld [de], a
    dec bc
    and $0f
    pop de
    cp $0c
    jr nz, jr_00a_4cf8

    ld l, c
    ld h, b
    ld a, $00
    ld de, $03c0
    call Call_00a_4c6a

jr_00a_4cf8:
    rst $18
    ld a, $04
    and a
    jr nz, jr_00a_4d1b

    ld l, c
    ld h, b
    ld a, $f0
    ld de, $0180
    call Call_00a_4c6a
    rst $18
    ld a, $04
    and a
    jr nz, jr_00a_4d1b

    ld l, c
    ld h, b
    ld a, $10
    ld de, $0180
    call Call_00a_4c6a
    rst $18
    ld a, $04

jr_00a_4d1b:
    pop hl
    pop de
    pop bc
    ret


Call_00a_4d1f:
    push bc
    push de
    push hl
    ld hl, $c290
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $0005
    add hl, bc
    ld d, [hl]
    ld hl, $0007
    add hl, bc
    ld e, [hl]
    rst $18
    ld [de], a
    dec bc
    ld e, a
    ld d, $00
    and $0f
    cp $01
    jr nz, jr_00a_4d56

    ld a, e
    swap a
    and $0f
    ld d, a
    ld hl, $c460
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c464]
    call Call_00a_4ea0
    ld a, h
    or l
    jr nz, jr_00a_4d56

    ld d, $00

jr_00a_4d56:
    ld a, d
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    push de
    push hl
    ld a, b
    cp $ff
    jr z, jr_00a_4d6e

    ld hl, $c960
    ld [hl], b
    ld hl, $c961
    ld [hl], c
    jr jr_00a_4d85

jr_00a_4d6e:
    ld a, [$c450]
    ld [$c960], a
    ld hl, $c961
    ld [hl], $ff
    ld hl, $c2a0
    ld de, $c962
    ld bc, $0005
    call Call_000_03d3

jr_00a_4d85:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, [$c961]
    cp $ff
    jr z, jr_00a_4da8

    ld a, $fa
    ld [$c441], a
    ld a, [$c960]
    ld [$c450], a
    ld a, [$c961]
    ld [$c46a], a
    jr jr_00a_4dd6

jr_00a_4da8:
    ld a, $fa
    ld [$c441], a
    ld a, [$c960]
    ld [$c450], a
    ld a, $fa
    ld [$c46a], a
    ld hl, $c966
    ld de, $c465
    ld a, [hl]
    ld [de], a
    ld hl, $c962
    ld de, $c466
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld hl, $c964
    ld de, $c468
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a

jr_00a_4dd6:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4ddb:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld hl, $c4b4
    ld a, [hl+]
    or [hl]
    jr z, jr_00a_4e25

    call Call_00a_48ac
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c82d
    set 7, [hl]
    ld a, [$c4b4]
    ld l, a
    ld a, [$c4b5]
    ld h, a
    ld a, $83
    rst $18
    ld c, b
    dec b
    ld b, $50

jr_00a_4e06:
    call Call_000_2e3b
    ldh a, [$90]
    and a
    jr nz, jr_00a_4e11

    dec b
    jr nz, jr_00a_4e06

jr_00a_4e11:
    rst $18
    ld c, $05
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c82d
    res 7, [hl]

jr_00a_4e25:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4e2f:
    bit 7, d
    jr nz, jr_00a_4e4b

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


jr_00a_4e4b:
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
    jr z, jr_00a_4e68

    ld d, $01
    dec d
    ret


jr_00a_4e68:
    ld d, $00
    dec d
    ret


    db $10
    add b
    jr nz, jr_00a_4eb0

Call_00a_4e70:
    push bc
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $01
    ld a, b
    cp $ff
    jr z, jr_00a_4e9c

    ld hl, $c290
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $10
    add l
    ld l, a
    ld a, [hl]
    rlca
    rlca
    and $03
    ld hl, $4e6c
    add l
    ld l, a
    jr nc, jr_00a_4e96

    inc h

jr_00a_4e96:
    ld a, [hl]
    and b
    jr nz, jr_00a_4e9c

    ld c, $00

jr_00a_4e9c:
    ld a, c
    pop hl
    pop bc
    ret


Call_00a_4ea0:
    push af
    push bc
    push de
    ld e, a

jr_00a_4ea4:
    ld a, e
    call Call_000_0626
    ld a, c
    cp $ff
    jr z, jr_00a_4ebe

    cp d
    jr nz, jr_00a_4eb8

jr_00a_4eb0:
    call Call_00a_4e70
    and a
    jr z, jr_00a_4eb8

    jr jr_00a_4ec1

jr_00a_4eb8:
    ld bc, $0008
    add hl, bc
    jr jr_00a_4ea4

jr_00a_4ebe:
    ld hl, $0000

jr_00a_4ec1:
    pop de
    pop bc
    pop af
    ret


Call_00a_4ec5:
    push af
    push bc
    push de
    ld e, a

jr_00a_4ec9:
    ld a, e
    call Call_000_0626
    ld a, c
    cp $ff
    jr z, jr_00a_4ef8

    cp d
    jr nz, jr_00a_4ef2

    call Call_00a_4e70
    and a
    jr z, jr_00a_4ef2

    ld a, e
    inc hl
    inc hl
    call Call_000_0626
    dec hl
    dec hl
    ld a, c
    or b
    jr z, jr_00a_4ef0

    push de
    ld e, c
    ld d, b
    call Call_00a_4e2f
    pop de
    jr nz, jr_00a_4ef2

jr_00a_4ef0:
    jr jr_00a_4efb

jr_00a_4ef2:
    ld bc, $0008
    add hl, bc
    jr jr_00a_4ec9

jr_00a_4ef8:
    ld hl, $0000

jr_00a_4efb:
    pop de
    pop bc
    pop af
    ret


Call_00a_4eff:
    push af
    push bc
    push de
    push hl
    ld c, a
    ldh a, [$96]
    push af
    ld a, h
    and $e0
    jr nz, jr_00a_4f15

    rst $18
    inc a
    ld a, [bc]
    ld a, b
    rst $18
    ld b, [hl]
    dec b
    jr jr_00a_4f3b

jr_00a_4f15:
    rst $18

    db $00, $0a

    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c290
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0033
    add hl, de
    ld [hl], $00
    ld hl, $0010
    add hl, de
    ld a, [$c28a]
    ld [hl], a
    pop hl
    ld a, c
    call Call_000_015e
    rst $18

    db $02, $0a

jr_00a_4f3b:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4f45:
    push af
    push bc
    push de
    push hl
    rst $28

    db $a0, $02

    rst $18

    db $04, $04

    push af
    push hl
    ld hl, $c465
    ld c, [hl]
    ld hl, $c468
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c466
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rst $18

    db $30, $04

    pop hl
    pop af
    rst $18

    db $2e, $04

    rst $18

    db $4e, $04

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4f71:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $90
    ldh [rWY], a
    ld hl, $c462
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c296]
    ld b, a
    ld a, [$c464]
    call Call_00a_4eff
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_4f96:
    push af
    push bc
    push de
    push hl
    ld hl, $c298
    cp [hl]
    jp z, Jump_00a_504a

    ld d, a
    ld hl, $c45c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c464]
    call Call_00a_4ec5
    ld a, h
    or l
    jp z, Jump_00a_5045

    ld a, [$c464]
    ld de, $c400
    ld bc, $0008
    call Call_000_0654
    ld hl, $c406
    ld b, [hl]
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c400
    ld a, [hl]
    call Call_00a_42e0
    ld e, l
    ld d, h
    ld hl, $0036
    add hl, de
    ld a, [hl]
    ld [$c29e], a
    ld [hl], $01
    ld a, b
    and $10
    jr nz, jr_00a_4fe7

    ld hl, $001a
    add hl, de
    ld [hl], $ff

jr_00a_4fe7:
    ld a, b
    and $08
    jr z, jr_00a_4ffb

    ld hl, $0031
    add hl, de
    ld a, [hl]
    ld [$c29f], a
    ld a, $01
    ld l, e
    ld h, d
    rst $18
    jr c, jr_00a_4fff

jr_00a_4ffb:
    bit 0, b
    jr z, jr_00a_500a

jr_00a_4fff:
    ld hl, $0010
    add hl, de
    ld c, [hl]
    ld a, [$c28a]
    add $80
    ld [hl], a

jr_00a_500a:
    push bc
    ld hl, $c404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c400]
    ld b, a
    ld a, [$c464]
    call Call_00a_4eff
    pop bc
    bit 1, b
    jr z, jr_00a_5025

    ld hl, $0010
    add hl, de
    ld [hl], c

jr_00a_5025:
    ld a, b
    and $08
    jr z, jr_00a_5032

    ld a, [$c29f]
    ld l, e
    ld h, d
    rst $18
    jr c, @+$06

jr_00a_5032:
    ld a, b
    and $10
    jr nz, jr_00a_503d

    ld hl, $001a
    add hl, de
    ld [hl], $00

jr_00a_503d:
    ld hl, $0036
    add hl, de
    ld a, [$c29e]
    ld [hl], a

Jump_00a_5045:
jr_00a_5045:
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_00a_504a:
    push af
    ld hl, $5365
    ld de, $c400
    ld bc, $0008
    call Call_000_03d3
    ld hl, $c404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld b, a
    ldh a, [$95]
    call Call_00a_4eff
    jr jr_00a_5045

Call_00a_5066:
    push af
    push bc
    push de
    push hl
    ld d, a
    ld hl, $c45e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c464]
    call Call_00a_4ea0
    ld a, h
    or l
    jr z, jr_00a_50c6

    ld a, [$c464]
    ld de, $c400
    ld bc, $0008
    call Call_000_0654
    ld hl, $c406
    ld a, [hl]
    cp $ff
    jr z, jr_00a_508f

jr_00a_508f:
    rst $20
    ld b, b
    ld [bc], a
    ld hl, $c402
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, e
    or d
    jr z, jr_00a_50a1

    call Call_00a_4e2f
    jr nz, jr_00a_50b9

jr_00a_50a1:
    ld hl, $c404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    and $f0
    jr nz, jr_00a_50af

    rst $28
    ld b, b
    ld [bc], a

jr_00a_50af:
    ld a, [$c296]
    ld b, a
    ld a, [$c464]
    call Call_00a_4eff

jr_00a_50b9:
    rst $30
    ld b, b
    ld [bc], a
    jr z, jr_00a_50c6

    ld hl, $c406
    ld a, [hl]
    cp $ff
    jr z, jr_00a_50c6

jr_00a_50c6:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_50cb:
    push af
    push bc
    push de
    push hl
    ld d, a
    ld hl, $c460
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c464]
    call Call_00a_4ec5
    ld a, h
    or l
    jr z, jr_00a_5104

    ld a, [$c464]
    ld de, $c400
    ld bc, $0008
    call Call_000_0654
    ld hl, $c406
    ld a, [hl]
    cp $01
    jr z, jr_00a_5104

    ld hl, $c404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c296]
    ld b, a
    ld a, [$c464]
    call Call_00a_4eff

jr_00a_5104:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_5109:
    push af
    push bc
    push de
    push hl
    ld d, a
    ld hl, $c460
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c464]
    call Call_00a_4ec5
    ld a, h
    or l
    jr z, jr_00a_5141

    ld a, [$c464]
    ld de, $c400
    ld bc, $0008
    call Call_000_0654
    ld hl, $c406
    ld a, [hl]
    and a
    jr z, jr_00a_5141

    ld hl, $c404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c296]
    ld b, a
    ld a, [$c464]
    call Call_00a_4eff

jr_00a_5141:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_5146:
    push af
    push bc
    push de
    push hl
    ld a, [$c46b]
    cp $fa
    jr z, jr_00a_5183

    ld hl, $c46b
    ld d, [hl]
    ld hl, $c458
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c464]
    call Call_00a_4ec5
    ld a, h
    or l
    jr z, jr_00a_5183

    ld a, [$c464]
    ld de, $c400
    ld bc, $0008
    call Call_000_0654
    ld hl, $c406
    ld de, $c450
    ld a, [hl]
    ld [de], a
    ld hl, $c407
    ld de, $c46a
    ld a, [hl]
    ld [de], a
    jr jr_00a_5183

jr_00a_5183:
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $00, $1e, $08, $32, $ff, $00, $01

    ld e, $1e
    dec [hl]
    rst $38
    nop

    db $02

    inc d
    ld [bc], a
    inc [hl]
    dec h
    nop

    db $03

    ld [bc], a
    inc c
    ld [hl-], a
    rrca
    nop

    db $04

    nop
    ld c, $32
    rrca
    nop

    db $05, $01, $10, $32, $26, $00, $06

    inc bc
    nop
    inc [hl]
    rrca
    nop

    db $07

    stop
    dec [hl]
    rrca
    nop

    db $08

    inc b
    nop
    inc sp
    rst $38
    nop

    db $09

    inc b
    nop
    inc sp
    rst $38
    nop

    db $0a

    inc b
    nop
    inc sp
    rst $38
    nop

    db $0b

    inc b
    nop
    inc sp
    rst $38
    nop

    db $0c

    rra
    inc b
    ld sp, $0007

    db $0d

    ld hl, $3000
    rlca
    nop

    db $0e

    ld de, $3008
    rlca
    nop

    db $0f

    inc de
    ld b, $31
    rlca
    nop

    db $10

    inc e
    ld [bc], a
    jr nc, @+$09

    nop

    db $11

    dec b
    ld [$0730], sp
    nop

    db $12

    add hl, bc
    ld [$0731], sp
    nop

    db $13

    ld [$3004], sp
    rlca
    nop

    db $14

    ld b, $08
    jr nc, @+$09

    nop

    db $15

    dec d
    ld a, [bc]
    ld sp, $0007

    db $16

    rlca
    ld b, $30
    rlca
    nop

    db $17

    rrca
    ld [$0730], sp
    nop

    db $18

    dec c
    ld c, $31
    rst $38
    nop

    db $19

    dec c
    ld c, $31
    rst $38
    nop

    db $1a

    dec c
    ld c, $31
    rst $38
    nop

    db $1b

    dec c
    ld c, $31
    rst $38
    nop

    db $1c

    dec bc
    ld [bc], a
    inc sp
    ld [bc], a
    nop

    db $1d

    inc c
    inc b
    inc sp
    rst $38
    nop

    db $1e, $1e, $00, $31, $02, $00

    rra
    ld a, [bc]
    nop
    ld [hl-], a
    ld bc, $2000
    dec bc
    ld [bc], a
    ld [hl-], a
    ld bc, $2100
    ld d, $04
    ld [hl-], a
    rst $38
    nop
    ld [hl+], a
    inc bc
    ld b, $32
    inc bc
    nop
    inc hl
    ld a, [bc]
    ld [bc], a
    ld sp, $0001
    inc h
    ld e, $20
    dec [hl]
    rst $38
    nop
    dec h
    ld c, $22
    dec [hl]
    rst $38
    nop
    ld h, $19
    ld b, $33
    rlca
    nop
    daa
    jr @+$06

    inc [hl]
    rlca
    nop
    jr z, jr_00a_529c

    ld b, $34
    rlca
    nop
    add hl, hl
    dec de
    ld [$0734], sp
    nop
    ld a, [hl+]
    jr nz, jr_00a_5291

    jr nc, jr_00a_5290

    nop
    dec hl
    inc b
    inc c
    jr nc, jr_00a_52b6

    nop

jr_00a_5290:
    inc l

jr_00a_5291:
    ld a, [de]
    ld a, [bc]
    inc [hl]
    rlca
    nop
    dec l
    ld [de], a
    inc c
    ld sp, $0007

jr_00a_529c:
    ld l, $17
    ld [$0733], sp
    nop
    cpl
    rla
    ld [$0733], sp
    nop
    jr nc, jr_00a_52c7

    inc c
    inc [hl]
    ld b, $00
    ld sp, $0201
    dec [hl]
    rst $38
    nop
    ld [hl-], a
    nop

jr_00a_52b6:
    inc b
    dec [hl]
    rst $38
    nop
    inc sp
    inc b
    ld b, $35
    rst $38
    nop
    inc [hl]
    dec c
    ld [$ff35], sp
    nop
    dec [hl]

jr_00a_52c7:
    jr jr_00a_52d3

    dec [hl]
    rst $38
    nop
    ld [hl], $1b
    inc c
    dec [hl]
    rst $38
    nop
    scf

jr_00a_52d3:
    ld b, $0e
    dec [hl]
    rst $38
    nop
    jr c, jr_00a_52f7

    db $10
    dec [hl]
    rst $38
    nop
    add hl, sp
    inc d
    ld [de], a
    dec [hl]
    rst $38
    nop
    ld a, [hl-]
    dec bc
    inc d
    dec [hl]
    rst $38
    nop
    dec sp
    dec b
    ld d, $35
    rst $38
    nop
    inc a
    inc c
    jr jr_00a_5329

    rst $38
    nop
    dec a

jr_00a_52f7:
    ld [bc], a
    ld a, [de]
    dec [hl]
    rst $38
    nop
    ld a, $14
    inc e
    dec [hl]
    rst $38
    nop
    rst $38

Call_00a_5303:
    push af
    push bc
    push de
    ld b, a
    ld hl, $5188

jr_00a_530a:
    ld a, [hl]
    cp $ff
    jr z, jr_00a_5318

    cp b
    jr z, jr_00a_531b

    ld de, $0006
    add hl, de
    jr jr_00a_530a

jr_00a_5318:
    ld hl, $5188

jr_00a_531b:
    pop de
    pop bc
    pop af
    ret


    push bc
    push de
    push hl
    ld b, $ff
    ld hl, $5188

jr_00a_5327:
    ld a, [hl]
    inc b

jr_00a_5329:
    ld de, $0006
    add hl, de
    cp $ff
    jr nz, jr_00a_5327

    ld a, b
    pop hl
    pop de
    pop bc
    ret


    push de
    push hl
    ld h, $00
    ld l, a
    ld e, l
    ld d, h
    add hl, hl
    add hl, de
    add hl, hl
    ld de, $5188
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    ret


    push bc
    push de
    push hl
    ld c, a
    ld b, $ff
    ld hl, $5188

jr_00a_5351:
    inc b
    ld a, [hl]
    ld de, $0006
    add hl, de
    cp c
    jr z, jr_00a_5360

    cp $ff
    jr nz, jr_00a_5351

    ld b, $00

jr_00a_5360:
    ld a, b
    pop hl
    pop de
    pop bc
    ret


    ld [bc], a
    rst $38
    nop
    nop
    ld l, [hl]
    ld d, e
    inc bc
    nop
    rst $38
    ld a, $00
    ld b, a
    ld a, [$c298]
    rst $18
    ld l, $0a
    ld hl, $0c46
    call Call_00a_53f0
    ld a, $00
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
    jr nz, jr_00a_53bc

    ld hl, $0c4a
    call Call_00a_53f0
    ld a, $00
    rst $18
    ld [$cd0a], sp
    jp c, Jump_000_3e53

    ld a, [$41ea]
    call nz, $fa3e
    ld [$c46a], a
    ld hl, $c2a0
    ld de, $c466
    ld bc, $0004
    call Call_000_03d3
    ld a, [$c2a4]
    ld [$c465], a

jr_00a_53bc:
    ret


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


    rst $28
    nop
    ld [de], a
    rst $28
    jr nz, @+$14

    rst $28
    ld b, b
    ld [de], a
    rst $28
    ld h, b
    ld [de], a
    ld a, [$c298]
    rst $18
    ld a, [de]
    ld a, [bc]
    rst $28
    ret nz

    ld c, $c9

Call_00a_53f0:
    call Call_00a_53fc
    add l
    ld l, a
    jr nc, jr_00a_53f8

    inc h

jr_00a_53f8:
    rst $18
    ld c, $0a
    ret


Call_00a_53fc:
    ld a, [$c299]
    cp $04
    jp nz, Jump_00a_5408

    ld a, $00
    jr jr_00a_5421

Jump_00a_5408:
    cp $05
    jp nz, Jump_00a_5411

    ld a, $01
    jr jr_00a_5421

Jump_00a_5411:
    cp $06
    jp nz, Jump_00a_541a

    ld a, $02
    jr jr_00a_5421

Jump_00a_541a:
    cp $07
    jp nz, Jump_00a_5421

    ld a, $03

Jump_00a_5421:
jr_00a_5421:
    ret


    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld hl, $d5e0
    ld b, $10

jr_00a_5431:
    ld [hl+], a
    dec b
    jr nz, jr_00a_5431

    call Call_00a_5441

Call_00a_5438:
    call Call_00a_545e
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00a_5441:
    ld hl, $c200
    ld de, $d540
    ld b, $80

jr_00a_5449:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00a_5449

    ld hl, $c200
    ld de, $d4a0
    ld b, $80

jr_00a_5457:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00a_5457

    ret


Call_00a_545e:
    ld hl, $d4a0
    ld de, $d5f2
    ld b, $40

jr_00a_5466:
    push bc
    push hl
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_000_24eb
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    dec de
    dec de
    call Call_00a_5490
    inc de
    inc de
    ld a, [de]
    ld c, a
    dec de
    ld a, [de]
    ld b, a
    dec de
    ld a, [de]
    call Call_000_2504
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    inc hl
    pop bc
    dec b
    jr nz, jr_00a_5466

    ret


Call_00a_5490:
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    add c
    ld c, a
    ld a, [de]
    add c
    ld c, a
    ld b, $00
    srl a
    srl a
    srl a
    ld [de], a
    dec de
    ld h, b
    ld l, c
    add hl, hl
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    ld [de], a
    dec de
    ld h, b
    ld l, c
    add hl, hl
    add hl, hl
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    bit 5, a
    jr z, jr_00a_54cd

    ld a, $1f

jr_00a_54cd:
    ld [de], a
    ret


    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d5f0
    ld [hl], d
    ld l, d
    ld h, $00
    ld de, $001f
    call Call_000_09ae
    ld a, l
    ld [$d5f9], a
    ld hl, $d5e0
    bit 7, b
    jr z, jr_00a_54f2

    ld [hl], $01

jr_00a_54f2:
    inc hl
    bit 6, b
    jr z, jr_00a_54f9

    ld [hl], $01

jr_00a_54f9:
    inc hl
    bit 5, b
    jr z, jr_00a_5500

    ld [hl], $01

jr_00a_5500:
    inc hl
    bit 4, b
    jr z, jr_00a_5507

    ld [hl], $01

jr_00a_5507:
    inc hl
    bit 3, b
    jr z, jr_00a_550e

    ld [hl], $01

jr_00a_550e:
    inc hl
    bit 2, b
    jr z, jr_00a_5515

    ld [hl], $01

jr_00a_5515:
    inc hl
    bit 1, b
    jr z, jr_00a_551c

    ld [hl], $01

jr_00a_551c:
    inc hl
    bit 0, b
    jr z, jr_00a_5523

    ld [hl], $01

jr_00a_5523:
    inc hl
    bit 7, c
    jr z, jr_00a_552a

    ld [hl], $01

jr_00a_552a:
    inc hl
    bit 6, c
    jr z, jr_00a_5531

    ld [hl], $01

jr_00a_5531:
    inc hl
    bit 5, c
    jr z, jr_00a_5538

    ld [hl], $01

jr_00a_5538:
    inc hl
    bit 4, c
    jr z, jr_00a_553f

    ld [hl], $01

jr_00a_553f:
    inc hl
    bit 3, c
    jr z, jr_00a_5546

    ld [hl], $01

jr_00a_5546:
    inc hl
    bit 2, c
    jr z, jr_00a_554d

    ld [hl], $01

jr_00a_554d:
    inc hl
    bit 1, c
    jr z, jr_00a_5554

    ld [hl], $01

jr_00a_5554:
    inc hl
    bit 0, c
    jr z, jr_00a_555b

    ld [hl], $01

jr_00a_555b:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a

jr_00a_556a:
    ld a, [$d5f9]

jr_00a_556d:
    and a
    jr z, jr_00a_5576

    call Call_000_2e3b
    dec a
    jr jr_00a_556d

jr_00a_5576:
    ld de, $d5e0
    ld b, $00

jr_00a_557b:
    push de
    push bc
    ld a, [de]
    and a
    jr z, jr_00a_5584

    call Call_00a_55ac

jr_00a_5584:
    pop bc
    pop de
    inc de
    inc b
    ld a, b
    cp $10
    jr nz, jr_00a_557b

    ld hl, $d540
    ld d, $00
    ld e, $10
    call Call_000_056c
    call Call_000_2e3b
    ld hl, $d5f0
    ld a, [hl]
    dec a
    ld [hl], a
    and a
    jr nz, jr_00a_556a

    call Call_00a_562e
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00a_55ac:
    ld a, b
    ld [$d5f1], a
    ld hl, $d4a0
    call Call_00a_5675
    ld d, h
    ld e, l
    ld hl, $d540
    ld a, [$d5f1]
    ld b, a
    call Call_00a_5675
    call Call_00a_55c6
    ret


Call_00a_55c6:
    ld b, $04

jr_00a_55c8:
    push bc
    push de
    push hl
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_000_24eb
    ld hl, $d5f2
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl], a
    ld h, d
    ld l, e
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_000_24eb
    ld hl, $d5f5
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl], a
    ld hl, $d5f2
    ld de, $d5f5
    call Call_00a_561c
    ld hl, $d5f3
    ld de, $d5f6
    call Call_00a_561c
    ld hl, $d5f4
    ld de, $d5f7
    call Call_00a_561c
    ld hl, $d5f4
    ld a, [hl-]
    ld c, a
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    call Call_000_2504
    pop hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    inc hl
    pop de
    pop bc
    inc de
    inc de
    dec b
    jr nz, jr_00a_55c8

    ret


Call_00a_561c:
    ld a, [de]
    ld b, [hl]
    sub b
    ret z

    jr c, jr_00a_5628

    ld a, [hl]
    inc a
    and $1f
    ld [hl], a
    ret


jr_00a_5628:
    ld a, [hl]
    dec a
    and $1f

jr_00a_562c:
    ld [hl], a
    ret


Call_00a_562e:
    ld hl, $d5e0
    ld b, $00

jr_00a_5633:
    push hl
    push bc
    ld a, [hl]
    and a
    jr z, jr_00a_5661

    ld c, b
    ld hl, $d4a0
    call Call_00a_5675
    ld d, h
    ld e, l
    ld b, c
    ld hl, $d540
    call Call_00a_5675
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de

jr_00a_5661:
    pop bc
    pop hl
    inc hl
    inc b
    ld a, b
    cp $10
    jr nz, jr_00a_5633

    ld hl, $d540
    ld d, $00
    ld e, $10
    call Call_000_056c
    ret


Call_00a_5675:
jr_00a_5675:
    ld a, b
    and a
    ret z

    ld a, $08
    add l
    ld l, a
    jr nc, jr_00a_567f

    inc h

jr_00a_567f:
    dec b
    jr jr_00a_5675

    ld sp, $3d01
    ld bc, $0132
    inc sp
    ld bc, HeaderTitle
    ld a, $01
    dec [hl]
    ld bc, $0100
    ld [hl], $01
    scf
    ld bc, $0333
    jr c, jr_00a_569b

    add hl, sp

jr_00a_569b:
    ld bc, $013a
    inc a
    ld bc, $35ff
    ld [bc], a
    dec sp
    ld bc, $0236
    inc sp
    ld [bc], a
    add b
    jr jr_00a_562c

    jr @-$10

    db $10
    rst $38
    ld a, a
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    push af
    ld a, $78
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    dec d
    push af
    ld a, $78
    rst $18
    inc b
    ld a, [bc]
    pop af
    xor a
    ld hl, $c290
    ld [hl+], a
    ld [hl+], a
    ld hl, $c292
    ld [hl+], a
    ld [hl+], a
    ld hl, $c294
    ld [hl+], a
    ld [hl+], a
    ld a, $ff
    ld [$c296], a
    ld [$c297], a
    ld [$c298], a
    rst $18
    ld a, [bc]
    ld bc, $a921
    ld d, [hl]
    ld de, $0001
    call Call_000_0595
    xor a
    ld [$c2ac], a

jr_00a_56f4:
    call Call_000_23b6
    ld a, [$c2ac]
    add a
    add $82
    ld l, a
    adc $56
    sub l
    ld h, a
    ld a, [hl+]
    cp $ff
    jr z, jr_00a_5750

    and a
    jr nz, jr_00a_5716

    ld a, [$c810]
    add a
    add $a1
    ld l, a
    adc $56
    sub l
    ld h, a
    ld a, [hl+]

jr_00a_5716:
    ld [$c450], a
    ld a, [hl+]
    ld [$c46a], a
    rst $28
    nop
    inc bc
    call Call_00a_4a21
    rst $20
    nop
    inc bc
    call $57a3
    rst $18
    ld e, [hl]
    ld a, [bc]
    ld b, $3f
    ld c, $3f
    ld d, $1e
    rst $18
    ld h, b
    ld a, [bc]
    rst $18
    ld h, d
    ld a, [bc]
    ld a, [$c2ac]
    rst $18
    ld b, h
    dec bc
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    ld a, $90
    ldh [rWY], a
    ld hl, $c2ac
    inc [hl]
    jr jr_00a_56f4

jr_00a_5750:
    rst $18
    ld b, [hl]
    dec bc
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    xor a
    ldh [$8b], a
    ldh [$8a], a
    call Call_00a_6747
    call Call_000_23b6
    rst $28
    nop
    inc bc
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    call Call_000_2ed5
    ld e, $3e
    ld bc, $0621
    ld l, b
    call Call_000_23e8
    call Call_000_2ed5
    ldh a, [rSB]
    db $10
    ld c, $f0
    sub b
    and a
    jr nz, jr_00a_5791

    call Call_000_2e3b
    dec bc
    ld a, b
    or c
    jr nz, @-$0b

jr_00a_5791:
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    ld hl, $6806
    call Call_000_2449
    rst $18
    ld a, [bc]
    ld bc, $3ec9
    inc b
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d000
    ld c, $18

Jump_00a_57ae:
    inc e
    ld a, [de]
    dec e
    or a
    jp z, Jump_00a_57c1

    ld hl, $001a
    add hl, de
    ld [hl], $ff
    ld hl, $0034
    add hl, de
    ld [hl], $01

Jump_00a_57c1:
    ld hl, $0040
    add hl, de
    ld e, l
    ld d, h
    dec c
    jp nz, Jump_00a_57ae

    ret


    db $ed
    nop
    rst $38
    ld a, [$0303]
    ldh [$e3], a
    ld [bc], a
    ld [bc], a
    rrca
    rst $08
    rrca
    rra
    rra
    rst $38
    rst $38
    ldh [$d0], a
    db $e3
    add b
    add b
    rst $38
    ld d, b
    ld d, b
    add sp, -$18
    db $fd
    db $fd
    cp $fe
    ld [hl], $c0
    db $eb
    adc d
    adc d
    or b
    db $eb
    add b
    add b
    and b
    ei
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    ld a, $f5
    rrca
    nop
    ccf
    ld b, $7f
    rra
    cp $20
    push hl
    ld bc, $0f01
    rrca
    rst $38
    ccf
    rst $38
    cp l
    sbc a
    db $f4
    db $e3
    rlca
    rlca
    rst $08
    rst $08
    ld [hl-], a
    pop hl
    rst $38
    rst $18
    rst $38
    rra
    rra
    ccf
    ccf
    or $e3
    rst $38
    ldh a, [rIE]
    rst $38
    rst $00
    rst $38
    sbc a
    add d
    add d
    push de
    push de
    rst $38
    xor e
    xor e
    rst $18
    rst $18
    cp [hl]
    cp [hl]
    push de
    ld d, l
    rst $28
    ldh [rP1], a
    db $f4
    call nz, $e10c
    cp $fe
    push de
    rst $38
    push de
    xor d
    xor d
    ld d, l
    ld d, l
    nop
    nop
    dec d
    sbc a
    dec d
    rst $28
    rst $28
    ld e, l
    ld e, l
    db $f4
    db $e3
    ldh a, [$e1]
    ld d, b
    ld sp, hl
    ld d, b
    ret c

    push bc
    cp b
    pop hl
    ld a, a
    ld a, a
    rst $38
    rst $38
    rlca
    ld a, e
    rlca
    rrca
    rst $38
    ldh [$5f], a
    ld e, a
    cp a
    cp a
    ld a, [c]
    pop hl
    or $ff
    rst $38
    ld e, a
    ld e, a
    call c, Call_00a_58eb
    ld e, b
    cp h
    cp h
    or $ca
    push hl
    db $fd
    db $fd
    sub b
    push bc
    and b
    and b
    reti


    reti


    cp a
    rst $20
    rst $20
    ld e, a
    ld e, a
    xor a
    xor a
    ld d, b
    pop bc
    dec a
    rst $20
    dec a
    cp $fe
    and [hl]
    push hl
    ld h, h
    pop bc
    ld c, l
    ld c, l
    xor a
    db $fd
    xor a
    sub d
    db $e3
    ld a, [$00fa]
    nop
    dec [hl]
    dec [hl]
    db $db
    ld a, [hl]
    ld a, [hl]
    ld c, d
    db $e3
    ld a, a
    ld a, a
    ldh a, [$e1]
    nop
    nop
    rst $38
    add l
    add l
    ld l, [hl]
    ld l, [hl]
    db $fd
    db $fd
    ld_long $ffea, a
    ld d, h
    ld d, h
    and b
    and b
    ld bc, $2a01
    ld a, [hl+]
    rst $38
    ld [hl], h
    ld [hl], h
    add sp, -$18
    ld b, b
    ld b, b
    add b
    add b
    rst $28
    ld bc, $0201
    ld [bc], a
    ld hl, sp-$1e
    nop
    inc bc
    ld [bc], a
    rst $38
    rla
    ld d, $ef
    xor $f5
    db $f4
    xor d
    xor d
    xor $dc
    ret nz

    ccf
    rst $38
    ld a, a
    cp $e8
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $20
    rst $38
    rst $30
    cp $f2
    db $fd
    ld sp, hl
    rst $28

Call_00a_58eb:
    cp $f8
    cp $fc
    ld l, d
    ldh [$fc], a
    ei
    ld a, [$57ff]
    ld d, h
    xor e
    xor b
    ld b, a

jr_00a_58fa:
    ld b, c
    rlca
    ld bc, $07f3
    inc bc
    jp nc, $17e4

    and $f0
    ldh [$f8], a
    ldh [$83], a
    ld hl, sp-$10
    cp $e4
    db $f4
    ldh [$58], a
    db $dd
    sbc $cb
    jr z, jr_00a_58fa

    ei
    rra
    ei
    rst $10
    rst $10
    xor d
    xor d
    nop
    pop hl
    call nc, Call_00a_60cb
    ldh [$7e], a
    inc e
    ldh [$d5], a
    push de
    xor [hl]
    xor [hl]
    db $fd
    db $fd
    ld l, [hl]
    pop bc
    or $f0
    pop hl
    ei
    ei
    ld hl, sp-$1f
    ld d, b
    ld d, b
    xor d
    xor d
    cp a
    nop
    nop
    xor e
    xor b
    push af
    push af
    ld d, [hl]
    pop bc
    xor b
    rst $38
    xor b
    inc bc
    nop
    sbc a
    add b
    db $fc
    inc bc
    ret nz

    rst $28
    ccf
    ld e, a
    ld e, a
    ld a, [$e052]
    cp a
    add b
    cp $ff
    ld bc, $3fc0
    nop
    rst $38
    nop
    rst $38
    rst $18
    ld a, a
    rst $18
    cp a
    and b
    rst $38
    nop
    ldh a, [rIF]
    db $f4
    pop hl
    rst $30
    ld d, l
    xor d
    nop
    sbc h
    ret nz

    cp $02
    rst $38
    nop
    di
    rrca
    ldh a, [$f0]
    push hl
    call nz, $d5e1
    dec d
    db $fc
    nop
    rst $38
    ccf
    ret nz

    inc bc
    db $fc
    ld d, b
    xor a
    nop
    rst $38
    cp $1e
    push bc

jr_00a_5989:
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    inc a
    rst $18
    ret nz

    dec d
    dec d
    jr nz, jr_00a_59b6

    call z, $1089
    db $10
    inc l
    jr nc, jr_00a_5989

    ret nz

    pop bc
    ccf
    ld a, a
    cp $e1
    rra
    cp $e1
    adc $c0
    ld h, a
    db $fc
    rst $38
    cp $fe
    ld [c], a
    adc a
    and d
    rrca
    inc bc
    cp $e0
    rst $38
    rlca

jr_00a_59b6:
    rra
    rlca
    sbc a
    rlca
    cp a
    rrca
    rst $38
    db $fc
    cp $e1
    db $dd
    xor h
    ldh a, [$e0]
    ldh a, [$c0]
    ldh a, [$c0]
    rst $38
    ldh [$c0], a
    ldh [$80], a
    ldh [$80], a
    ret nz

    add b
    db $db
    pop bc
    ld bc, $a542
    inc bc
    inc bc
    ld a, [hl]
    add c
    ld e, a
    ld e, a
    ld l, l
    ld bc, $e0ff
    ld [hl], e
    ld [hl], e
    xor b
    and a
    ld [hl], l
    ld [hl], l
    ld hl, sp-$3d
    sbc d
    nop
    db $e3
    xor b
    nop
    ld [c], a
    ld b, b
    ld b, b
    db $f4
    pop bc
    ldh a, [$c1]
    or c
    db $fd
    or c
    call c, Call_000_00c1
    nop
    and d
    and d
    nop
    nop
    cp a
    ld [hl], c
    ld [hl], c
    cp $fe
    db $fc
    db $fc
    ret c

    pop bc
    ld bc, $00ff
    and e
    and b
    ld c, $01
    add hl, de
    rlca
    inc sp
    rst $38
    inc c
    ld l, a
    inc de
    rra
    nop
    ld a, c
    rlca
    jp z, Jump_000_3f7f

    dec d
    rst $38
    xor d
    rst $38
    db $fd
    inc bc
    ld d, [hl]
    ldh [rRP], a
    ld_long $ffc1, a
    xor b
    db $fc
    ldh [$aa], a
    db $fc
    ld [c], a
    push de
    call z, $c5c0
    ld b, b
    jp z, $50c0

    db $fc
    add sp, -$02
    db $eb
    cp h
    pop bc
    ld bc, $b6fe
    ldh a, [$e9]
    ld [bc], a

jr_00a_5a43:
    db $fd
    xor b
    pop bc
    dec b
    ld a, [$e3e8]
    rrca
    rst $38
    ldh a, [$a3]
    ld e, h
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, l
    rst $20
    xor d
    ld a, [bc]
    push af
    sub b
    pop bc
    cp b
    pop bc
    ldh [rP1], a
    ld [hl], b
    rst $38
    add b
    jr jr_00a_5a43

    adc h
    ld [hl], b
    ld b, [hl]
    cp b
    and e
    cp l
    ld e, h
    add b
    ld l, l
    ccf
    rra
    ccf
    rrca
    cp $e1
    rra
    ld a, a
    rrca
    rra
    ld b, $1f
    nop
    rra
    ld bc, $86be
    cp e
    ldh [rIE], a
    sub h
    and c
    rst $38
    rst $38
    sbc a
    cp $e0
    rst $18
    ldh [rPCM34], a
    ld h, c
    ld d, d
    pop hl
    res 4, e
    and b
    ret nz

    sbc d
    pop bc
    add hl, sp
    rst $38
    adc c
    rst $38
    rst $38
    db $e3
    jp nz, $8502

    dec b
    ld a, [$f302]
    cp $f0
    adc d
    jp nz, Jump_00a_604f

    cp a
    cp a
    ld l, [hl]
    ld l, [hl]
    ld hl, sp+$42
    add c
    ld c, h
    ld h, b
    ld a, $c0
    ret nz

    nop
    rst $18
    rst $18
    xor d
    rst $30
    xor d
    ld b, l
    ld b, l
    ld e, $69
    ld d, l
    ld d, l
    xor a
    xor a
    ld a, [hl]
    ld h, $61
    ld a, l
    ld a, l
    ld a, [hl+]
    ld a, [hl+]
    ld d, h
    ld d, h
    inc a
    add c
    ei
    cp $fe
    and d
    and c
    ld d, h
    ld d, h
    xor b
    xor b
    nop
    rst $38
    nop
    add sp, -$18
    ld d, c
    ld d, b
    add e
    add b
    ld b, d
    rst $38
    ld b, c
    add [hl]
    add c
    inc b
    inc bc
    dec c
    ld [bc], a
    add hl, bc
    rst $38
    ld b, $df
    cpl
    cp a
    ld e, a
    ld a, a
    cp a
    ld h, a
    rst $38
    cp a
    pop hl
    ld a, a
    ldh [$7f], a
    ldh [rIE], a
    ld [c], a
    cp $e3
    add b
    rst $00
    rst $38
    jp $81ff


    rst $38
    add b
    cp $a4
    and b
    ld [$1cff], sp
    rst $38
    add sp, -$21
    push af
    rst $38
    rst $28
    ld hl, sp-$09
    db $fc
    ei
    db $fc
    ei
    ld a, [hl]
    rrca
    db $fd
    ld a, $fd
    rra
    and $c0
    ret nz

    pop bc
    cp $ff
    or $f5
    and $5c
    and c
    dec d
    ld [$e3fc], a
    xor h
    pop bc
    ld d, c
    xor [hl]
    jr z, jr_00a_5b97

    rst $10
    ld d, h
    xor e
    or h
    pop bc
    sbc b
    pop bc
    ld [bc], a
    db $fd
    ld a, [hl+]
    pop hl
    ld l, a
    ld h, b
    add b
    jr nc, @-$3e

    or b
    push bc
    rra
    rlca
    ret nz

    ret nz

Call_00a_5b46:
    ld [hl], b

jr_00a_5b47:
    add [hl]
    and c
    ld a, b
    and d
    ld h, [hl]
    adc c
    ld [hl], h
    ld [hl], h
    di
    rst $38
    ld sp, hl
    cp $e6
    ld sp, hl
    di
    ld d, $80
    ld l, a
    adc h
    db $fc
    add b
    rst $38
    sbc b
    rst $38
    ld sp, hl
    sbc [hl]
    adc d
    ret nz

    add sp, $64
    nop
    nop
    dec b
    dec b
    xor a
    rst $38
    cpl
    sbc a
    rra
    adc $0e
    push de
    sub l
    jp z, $8a37

    ret nz

    add b
    adc d
    add c
    ld a, [hl+]
    ld a, [hl+]
    cp d
    daa
    call z, $fec1
    xor h
    add hl, hl
    add hl, de
    ld b, $19
    ld b, $11
    ld c, $31
    cp $fe
    ldh [$30], a
    rrca
    jr nc, jr_00a_5b9f

    ld sp, $e30e
    db $fd
    rst $38
    cp $e6

jr_00a_5b97:
    ld a, h
    rst $38
    ld b, b
    di
    rrca
    cp [hl]
    cp $dd

jr_00a_5b9f:
    ld b, a
    nop
    add b
    ld a, a
    db $fd
    rst $38
    rrca
    cp $9f
    rlca
    cp $8f
    cp $df
    adc $81
    db $e3
    ld h, b
    ld d, h
    ld a, b
    sub b
    xor b
    ldh a, [$e1]
    add d
    xor c
    ldh [$1f], a
    ld a, a
    add b
    add [hl]
    xor c
    add b
    ld [hl+], a
    add c
    jr z, jr_00a_5b47

    ld e, h
    xor c
    ld a, b
    and c
    db $fc
    jp hl


    inc e
    add d
    db $fc
    add sp, $51
    sbc a
    xor [hl]
    xor c
    ld d, [hl]
    ld d, h
    xor e
    or l
    ld h, d
    or c
    ld h, b
    ld a, [hl+]
    push hl
    push de
    inc b
    ld l, d
    ld a, a
    adc [hl]
    and d
    ld e, l
    adc [hl]
    rst $38
    ret nz

    rst $38
    pop hl
    pop af
    and b
    and l
    inc a
    add b
    ret nc

    ld b, c
    and [hl]
    jr nz, @+$01

    ld c, a
    rst $38
    rst $10
    ld h, e
    rst $38
    jr c, jr_00a_5c6c

    and d
    db $fd
    or h
    call nz, $ff8f
    inc e
    call z, Call_000_2102
    ld h, a
    rst $38
    cp $c0
    ld a, [hl+]
    add b
    db $fc
    ldh [$72], a
    and b
    ld hl, sp-$02
    pop hl
    add d
    dec c
    ld de, $0383
    nop
    ld c, $01
    add hl, sp
    rst $38
    rlca
    ld h, a
    rra
    jp z, $943f

    ld a, a
    ccf
    cp a
    nop

jr_00a_5c23:
    ei
    rlca
    sbc $3f
    ld [hl], l
    ld l, h
    add b
    ld b, b
    rst $38
    rst $38
    inc bc
    db $fc
    rra
    ldh [$be], a
    ld a, a
    push af
    db $fc
    ld h, b
    add b
    adc h
    add c
    ccf
    ret nz

    db $fd
    ld [bc], a
    xor d
    ld d, l
    pop bc
    xor d
    and b
    and h
    ld h, a

jr_00a_5c44:
    add c
    inc a
    pop hl
    xor e
    push hl
    ld d, h
    ld bc, $5555
    sbc e
    cp a
    cp a
    add c
    ld b, c
    ld e, $1e
    ld [hl], h
    daa
    ld b, b
    dec b
    ld [$eaff], a
    push af
    push af
    ld_long a, $fffa
    rst $38
    ld e, $b7
    pop hl
    inc bc
    db $fc
    inc l
    add e
    ld d, b
    xor a
    xor a
    ld b, c

jr_00a_5c6c:
    nop
    rst $38
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    jr nc, jr_00a_5c44

    jr jr_00a_5cf6

    rst $20
    inc c
    di
    xor h
    ld d, e
    ld e, a
    and b
    add h
    and l
    add [hl]
    ld a, b
    and e
    add b
    ld a, a
    ret nz

    call $c1cc
    db $fc
    jp hl


    inc b
    ld h, b
    cp a
    rst $38
    ld a, a
    sbc a
    cp a
    ld e, a
    ccf
    rst $08
    sbc a
    ld l, a
    cpl
    ld e, a
    and a
    sbc a
    ld h, e
    cp $1e
    cp [hl]
    jr nc, jr_00a_5c23

    cp $e3
    call nc, $026f
    ld e, $80
    rst $08
    db $db
    and b
    ld hl, sp+$6a
    inc b
    db $fc
    cp $7f
    ld hl, sp-$04
    ldh a, [$f8]
    ret nz

    ldh a, [rP1]
    db $ec
    ld b, c
    db $fd
    ret nz

    call Call_000_03ce
    nop
    ld b, $01
    ld c, $01
    cp a
    inc c
    inc bc
    inc e
    inc bc
    jr jr_00a_5cd2

    cp $e1
    jr nz, @+$01

    rst $38
    ld b, e
    db $fc

jr_00a_5cd2:
    rrca
    ldh a, [rNR34]
    pop hl
    dec a
    rst $38
    jp nz, $8f70

    ld h, l
    sbc d
    ld h, b
    sbc a
    db $fd
    rst $30
    ld [bc], a
    ld [$2415], a
    jp $f40b


    ld d, a
    xor b
    db $e3
    inc bc
    db $fc
    rla
    jp $800e


    ldh [$64], a
    ld d, a
    ld d, a
    cp a

jr_00a_5cf6:
    ld d, c
    cp a
    ld l, $c0
    ld b, c
    add c
    pop hl
    ld hl, $b080
    ld h, b
    add e
    sub [hl]
    ld h, b
    ld a, [c]
    cp $e3
    ld [bc], a
    cp $e0
    db $10
    jp $ff87


    rra

jr_00a_5d0f:
    db $fc
    di
    ccf
    ldh a, [$0c]
    add b
    sub b
    ld h, b
    ld e, $ff
    rlca
    rst $38
    rst $38
    pop bc
    rst $38
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    daa
    add [hl]
    ld [$4cea], a
    ld [c], a
    jp hl


    ld b, a
    pop af
    ld [c], a
    and b
    db $db
    ld c, b
    rst $38
    pop hl
    nop
    ld hl, sp+$40
    db $fc
    ld [hl], b
    rst $38

jr_00a_5d39:
    ld a, b
    ld e, a
    rst $18
    ld a, [hl]
    cp a
    ld a, a
    rst $18
    push hl
    ret nz

    ld d, l
    ldh a, [rP1]
    rst $38
    ld d, l
    nop
    ld [bc], a
    nop
    sub l
    nop
    ld [$cf00], a
    push af
    ret nz

    ld a, [$88e0]
    and e
    db $fc
    rst $20
    ld a, a
    add c
    cp a
    cp a
    ld c, h
    ld a, a
    sbc a
    rst $38
    rra
    db $fc
    ld [c], a
    adc a
    inc bc
    cp a
    ld b, a
    jp z, Jump_000_3a22

    sbc a
    ld a, [de]
    add l
    db $ec
    ld b, e
    ldh a, [rLCDC]
    jp z, $f1c3

    ldh [rWY], a
    jr nz, jr_00a_5d0f

    or c
    ld l, e
    rlca
    jr jr_00a_5d83

    inc c
    inc bc
    rst $30
    ld c, $01
    rlca
    add [hl]

jr_00a_5d83:
    and h
    nop
    nop
    ld h, c
    sbc [hl]
    cp $04
    pop bc
    add b
    ld a, a
    ldh a, [rIF]
    ccf
    nop
    rlca
    cp $44
    nop
    ld d, a
    xor b
    rlca
    ld hl, sp+$17
    add sp, $07
    ld d, a
    ld hl, sp+$07
    ld hl, sp+$05
    ld b, c
    inc bc
    ld d, b
    ld bc, $13c1
    ld h, b
    rst $38
    add e
    rst $38
    rrca
    db $fc
    rra
    ld hl, sp+$1f
    ld hl, sp-$0b
    ccf
    rlca
    ld h, b
    ret nz

    db $dd
    jr nz, jr_00a_5d39

    rst $38
    ldh [$3f], a
    sub $ee
    ret nz

    rra
    sbc b
    rst $18
    dec l
    ldh [$d3], a
    add b
    ret nz

    cp $ba
    cp $e6
    ld a, [hl]
    jr c, jr_00a_5df1

    rra
    rra
    ccf
    rst $38
    ld [c], a
    ld a, $f1
    ccf
    adc d
    call nz, $e1fe
    rst $10
    ldh [rIE], a
    ret nz

    ld bc, $fefe
    cp $e1
    inc bc
    db $fd
    inc bc
    db $fd
    ld b, $fb
    ld b, $bf
    ei
    inc c
    rst $30
    rst $18
    rst $38
    cp a

jr_00a_5df1:
    add e
    ld h, d
    ld a, a
    ld hl, sp-$08
    ldh [$fc], a
    pop hl
    add d
    add b
    ld hl, sp-$04
    di
    ld hl, sp-$19
    rst $38
    ldh a, [$cf]
    ldh [$df], a
    ldh [$9f], a
    ret nz

    cp a
    rst $38
    db $fd
    db $fd
    rst $38
    rlca
    rst $10
    add hl, hl
    xor e
    ld d, h
    ld sp, hl
    db $fd
    ld a, [hl-]
    nop
    ld b, b
    ret nz

    ld [hl], b
    ccf
    ccf
    ld a, a
    ld a, e
    cp $c4
    and b
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nz, jr_00a_5e4f

    rst $38
    ld h, b
    nop
    ld d, e
    add b
    or l
    and b
    rra
    jp nz, Jump_00a_4520

    ld [hl+], a
    ld c, [hl]
    jp nz, $ff66

    cp $7f
    jr c, @-$3e

    xor h
    ld l, d
    ldh [rNR44], a
    add c
    ld sp, hl
    ret nz

    ld a, [hl]
    nop
    cp $e0
    pop af
    pop bc
    pop hl
    pop bc
    jp nz, $02f7

    add h

jr_00a_5e4f:
    inc b
    push bc
    pop bc
    ld a, [hl-]
    ld a, [hl-]
    rst $38
    rst $38
    rst $28
    xor $ee
    ld d, l
    ld d, l
    inc h
    ld h, e
    ld d, b
    ld d, b
    jp hl


    rst $38
    jp hl


    call nc, $a0d4
    and b
    dec b
    dec b
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    rst $38
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rst $18
    db $10
    ld de, $1312
    nop
    rst $38
    add sp, $14
    dec d
    rst $38
    ld d, $17
    jr jr_00a_5eaa

    ld a, [de]
    dec de
    inc e
    dec e
    rst $38
    ld e, $1f
    jr nz, jr_00a_5ebb

    ld [hl+], a
    inc hl
    inc h
    dec h
    ei
    ld h, $27
    ldh [$e9], a
    jr z, jr_00a_5ece

    ld a, [hl+]
    dec hl
    inc l
    rst $38
    dec l

jr_00a_5eaa:
    ld l, $2f
    jr nc, jr_00a_5edf

    ld [hl-], a
    inc sp
    inc [hl]
    ld a, a
    dec [hl]
    ld [hl], $37
    jr c, jr_00a_5ef0

    ld a, [hl-]
    dec sp
    ret nz

    jp hl


jr_00a_5ebb:
    rst $38
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    rst $38
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    rst $28

jr_00a_5ece:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    and b
    jp hl


    ld d, b
    ld d, c
    ld d, d
    rst $38
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_00a_5edf:
    ld e, d
    rst $38
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    db $fd
    ld h, e
    add b
    jp hl


    ld h, h
    ld h, l
    ld h, [hl]

jr_00a_5ef0:
    ld h, a
    ld l, b
    ld l, c
    rst $38
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    cp a
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld h, b
    jp hl


    ld a, b
    rst $38
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $30
    adc c
    adc d
    adc e
    ld b, b
    jp hl


    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    rst $38
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    cp $20
    jp hl


    and b
    and c
    and d
    and e

jr_00a_5f3b:
    and h
    and l
    and [hl]
    rst $38
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    rra
    xor a
    or b
    or c
    or d
    or e
    nop
    jp hl


    nop
    nop
    nop
    ld hl, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    jr nz, jr_00a_5f3b

    rst $38
    ld sp, hl
    ld hl, sp-$09
    ld bc, $0101
    ld [c], a
    ei
    ld [bc], a
    ld [bc], a
    ld bc, $eb01
    inc bc
    inc bc
    jp nz, $02f5

    ldh [$e1], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ret c

    pop hl
    ld [bc], a
    sub d
    db $ec
    nop
    nop
    nop
    rst $38
    ld h, b
    ld h, b
    ld hl, sp-$08
    cp $fe
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    ldh [$ea], a
    ld [$5555], a
    nop
    nop
    rst $38
    ld d, h
    ld d, h
    cp d
    cp d
    push de
    push de
    add sp, -$18
    ld a, a
    ld b, b
    ld b, b
    and b
    and b
    nop
    nop
    ld bc, $e0fe
    or e
    add c
    add b
    ld_long a, $ffe1
    db $e3
    ldh a, [$bf]
    cp $e0
    cp [hl]
    rst $38
    ldh a, [$9e]
    ld hl, sp-$62
    ld hl, sp-$22
    ld hl, sp-$31
    rst $38
    db $fc
    rst $08
    rrca
    inc c
    rrca
    inc c
    rra
    ld e, $f7
    ccf
    ld a, $3f
    rst $38
    ld [c], a
    dec e
    rra
    rst $38
    nop
    xor $fe
    ld [$e080], a
    ld a, [hl]
    cp $e0
    ccf
    ldh a, [$3f]
    rst $38
    ldh a, [$1f]
    ld hl, sp+$1f
    ld hl, sp+$0f
    db $fc
    rlca
    ld a, [$e1d8]
    rra
    rst $38
    ldh [rIF], a
    adc a
    rrca
    adc a

jr_00a_5feb:
    rlca
    ld a, a
    rst $00
    inc bc
    jp $c0ff


    rst $38
    ldh [$fe], a
    add sp, -$01
    ret nz

    dec c
    rst $30
    jr jr_00a_5feb

    add hl, de
    rst $28
    ld a, [de]
    rst $38
    rst $28
    dec e
    rst $28
    rrca
    or $07
    ld sp, hl
    ld [bc], a
    db $d3
    db $fd
    ld a, a
    ld h, a
    ldh [$fc], a
    ldh [$fe], a
    cp $e1
    ld e, a
    cp $bf
    cp a
    db $fc
    ret nz

    ccf
    add c
    ld a, [hl]
    cp $e1
    inc bc
    rst $38
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fc
    rst $38
    rst $38
    add sp, -$01
    ret nc

    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    rst $38
    and b
    rst $38
    ld d, c
    rst $38
    and c
    rst $38
    pop bc
    rst $38
    ld [hl], a
    ld h, b
    rst $38
    ld b, b
    xor h
    ldh [$c0], a

Jump_00a_6040:
    rst $38
    add b
    cp $e2
    db $fc
    ld [hl], d
    db $eb
    ld a, [c]
    ldh a, [$fc]
    inc e
    db $fc
    inc l
    ld hl, sp+$18

Jump_00a_604f:
    rst $38
    ld hl, sp+$38
    ld hl, sp+$58
    ldh a, [$30]
    ldh a, [rSVBK]
    adc a
    ldh [$a0], a
    ld [$1708], sp
    db $e4
    rst $38
    rst $38
    xor $c2
    xor [hl]
    sbc a
    xor [hl]
    ld [hl], l
    ld [hl], l
    xor b
    xor b
    ret c

    rst $38
    or [hl]
    ret nz

    ld bc, $03ff
    inc bc
    rlca
    ld b, $fc
    rst $28
    ld a, a
    ld h, a
    rst $08
    ld a, a
    ld a, a
    ld a, a
    ld a, h
    ld a, [bc]
    ldh [$62], a
    ldh [$eb], a
    inc d
    db $e3
    rra
    sbc a
    add [hl]
    pop bc
    adc $c9
    ld b, [hl]
    ldh [$f0], a
    rst $38
    db $fc
    ld a, e
    rst $38
    inc e
    or [hl]
    jp Jump_000_03fe


    rst $38
    ld bc, $e0fe
    db $fd
    inc bc
    xor b
    push bc
    rra
    cp $78
    rst $30
    ld [c], a
    db $dd
    rst $18
    push de
    ld a, [hl+]
    xor a
    ld d, b
    ld a, a
    ld [hl+], a
    pop hl
    ld bc, $5dff
    nop
    ld hl, sp-$20
    jr @+$01

    inc a
    cp $e0
    ld a, [hl]
    jp c, $ffc1

    ld b, $fb
    ld b, $fb
    rlca
    ei
    rlca
    ld sp, hl
    rst $28
    inc bc
    db $fc
    ld bc, $75fe
    pop bc
    ld e, [hl]

Call_00a_60cb:
    db $fd
    cp [hl]
    rst $38
    db $fd
    ld a, [hl]
    ld sp, hl
    db $fc
    di
    ld hl, sp-$39
    ldh a, [$e1]
    rrca
    ld h, l
    pop bc
    or [hl]
    ldh [$fe], a
    push hl
    xor b
    pop hl
    nop
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, e
    rst $38
    add d
    rst $38
    ld b, [hl]
    rst $38
    add [hl]
    ccf
    rst $38
    inc b
    rst $38
    adc h
    rst $38
    call z, $dece
    call z, $f7e1
    ld bc, $02ff
    ld l, h
    ld [c], a
    dec b
    rst $38
    inc bc
    ldh [rIE], a
    ld h, b
    ldh [$e0], a
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    and b
    rst $38
    ld [c], a
    ld_long a, $ffdf
    rst $38
    db $ec
    db $eb
    and b
    and d

jr_00a_6115:
    jr jr_00a_6115

    rst $20
    push de
    ld a, a
    ld a, [hl+]
    ld [c], a
    dec e
    push de
    ld a, [hl+]
    db $eb

jr_00a_6120:
    inc d
    ld h, $df
    cp [hl]
    xor $ee
    ld sp, $37ff
    rst $38
    ccf
    or [hl]
    ret nz

    rlca
    adc a
    rst $38
    rrca
    rst $38
    rra
    xor e
    and c
    add [hl]
    jp nz, $a1a6

    db $fc
    add d
    sub b
    ret nz

    ld hl, sp-$74
    ret nz

    sbc d
    and c
    cp b
    rst $38
    ld hl, sp-$3b
    cp $e3
    ld [$ffff], sp
    ld a, b
    rst $38
    ld hl, sp-$21
    ret c

    sbc a
    sub b
    cp a
    sbc a
    sub b
    rra
    db $10
    rra
    jr jr_00a_6120

    cp $07
    rst $38
    cp $0a
    cp $06
    cp $0e
    db $fc
    inc d
    cp a
    db $fc
    inc c
    db $fc
    inc e
    ld hl, sp+$28
    xor c
    add e
    inc bc
    rst $38
    nop
    rrca
    nop
    ld a, [hl-]
    dec b
    ld [hl], l
    ld a, [bc]
    ld [$15fd], a
    sbc c
    add c
    rra
    nop
    ldh [$1f], a
    ld b, b
    cp a
    di
    add b
    ld a, a
    or l
    add d
    adc b
    add b

jr_00a_6189:
    ldh [rP1], a
    ld e, $e0
    or $32
    jp $fc03


    adc $c5
    add b
    nop
    ld h, b
    add b
    rst $08
    ldh a, [rP1]
    ld hl, sp-$20
    ret nz

    rst $18
    ld e, [hl]
    add c
    rlca
    ld b, $1f
    rlca
    ld b, $03
    inc bc
    ld bc, $803b
    ld h, d
    adc e
    add d
    add b
    add h
    jr jr_00a_6189

    sub $c3
    ld a, a
    sub $c6
    ld sp, hl
    pop af
    call z, $c0c3
    jp Jump_000_3cf0


    sub b
    sbc a
    dec a
    pop hl
    rst $38
    inc bc
    cp $02
    cp $c0
    db $fc
    pop bc
    cp $fe
    ret nz

    cpl
    ld [$0c2f], sp
    rla
    ld b, $1b
    rst $08
    inc bc
    dec c
    ld bc, $9e02
    ld h, d
    ret nz

    ld h, [hl]
    ret nz

    ld a, a
    rst $18
    ld [hl], b
    rra
    inc e
    rlca
    rlca
    or b
    ld l, l
    ld sp, hl
    add hl, de
    rst $38
    ld sp, hl
    add hl, sp
    di
    ld d, e
    di
    inc sp
    ei
    ld a, e
    rst $38
    cp $be
    rst $38
    ld a, a
    cp $fe
    call nc, $ff2b
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, b
    xor a
    or $fc
    pop hl
    and a
    ld e, b
    ld e, c
    and [hl]
    cp $1e
    pop hl
    pop hl
    rst $38
    ld e, $07
    ld hl, sp+$07
    ei
    rrca
    rst $30
    ld c, $fe
    cp $e0
    cp $01
    ld bc, $c0fe
    ccf
    ldh [rIE], a
    rra
    inc a
    ldh a, [$3e]
    ld hl, sp+$7e
    ld hl, sp+$7d
    rst $38
    ld a, [$fa0d]
    call Call_00a_797a
    sub [hl]
    ld a, [de]
    ld a, c
    db $e4
    ld a, [hl]
    cp a
    db $ec
    db $eb
    ld a, a
    ld h, b
    ccf
    jr c, jr_00a_6252

    ld h, l
    and b
    jr c, jr_00a_62a5

    inc l
    jp $c8de


    and [hl]
    and a
    ret


    call Call_00a_6cfe
    ld h, b
    add e
    cp $96

jr_00a_6252:
    and d
    pop af
    rst $38
    db $e3
    db $fc
    adc a
    ldh a, [$3f]
    rst $20
    ret nz

    rst $38
    ld [bc], a
    sub b
    and e
    ld d, b
    ld h, b
    ld a, a
    ldh [$7f], a
    sbc a
    ldh [$bf], a
    and b
    ccf
    jr nc, jr_00a_62dc

    db $dd
    ld d, b
    ld h, b
    inc a
    rst $30
    db $fc
    ld a, h
    db $fc
    rst $38
    ldh [$d8], a
    ret c

    cp h
    cp h
    ld h, c
    ld e, b
    db $10
    and $08
    rst $20
    ld a, a
    ld c, e
    ldh [$61], a
    rlca
    ld hl, sp+$6b
    ld b, c
    db $eb
    dec d
    ld [$e1fc], a
    ei
    rst $38
    ldh [$f3], a
    di
    rlca
    rst $38
    rlca
    cpl
    inc l
    ld e, a
    ld e, h
    xor a
    xor h
    ld e, a
    rst $38
    ld e, e
    ld e, h
    and b
    cp h
    ld b, b
    ld a, h
    add b
    db $fc

jr_00a_62a5:
    rst $28
    nop
    ld a, h
    nop
    inc a
    cp $e0
    ld e, $00
    rst $08
    ld sp, hl
    rst $08
    or h
    ld h, b
    sub a
    and c
    inc b
    cp $0e
    cp $1e
    rst $38
    or $1e
    ldh a, [rIF]
    ld a, h

jr_00a_62c0:
    inc bc
    inc de
    nop
    cp a
    sub b
    nop
    ret nz

    add b
    ld h, b
    ret nz

    cp $e1
    ld hl, sp-$11
    cp $fc
    cp $fe
    ld l, [hl]
    ld b, b
    add a
    ld a, a
    inc bc
    ld e, a
    rst $38
    db $e3
    rra
    inc sp

jr_00a_62dc:
    rst $08
    adc $cb
    ld b, b
    ret nc

    jr nz, jr_00a_62c0

    inc bc
    call z, Call_000_0720
    nop
    dec bc
    db $fc
    ldh [rNR22], a
    nop
    db $dd
    cpl
    ld d, [hl]
    and d
    and b
    nop
    ret nz

    inc a
    and b
    ret nz

    nop
    sub a
    xor b
    nop
    call nc, $a018
    inc bc
    sbc e
    jp z, Jump_000_2088

    ei
    cp a
    rst $38
    ldh a, [$3f]
    jr nc, jr_00a_6329

    jr jr_00a_6366

    and b
    rlca
    db $eb
    inc bc
    inc bc
    ld l, [hl]
    add d
    ld hl, sp-$06
    and a
    db $fc
    rrca

jr_00a_6318:
    ld hl, sp-$29
    ccf
    db $fc

jr_00a_631c:
    rst $38
    ld c, [hl]
    add b
    rlca
    ld d, d
    ld h, d
    nop
    inc c
    rst $20
    db $fc
    jr nc, jr_00a_6318

    adc [hl]

jr_00a_6329:
    ld h, b
    rst $38
    ld [c], a
    ldh [$e0], a
    ld hl, sp-$07
    jr c, @-$72

    add b
    cp $e4
    ccf
    jr nz, jr_00a_6377

    jr nz, jr_00a_63b9

    ld sp, hl
    ld b, b
    ld h, d
    adc b
    sub [hl]
    and c
    ld b, $fe
    ld a, $f5
    ld [hl], l
    di
    add sp, -$18
    ld h, b
    ld h, c
    ccf
    inc hl
    sbc h
    ld h, e
    jr @-$17

    ccf
    inc e
    db $e3
    jr c, jr_00a_631c

    inc [hl]
    set 7, h
    db $e3
    ld c, a
    cp a
    cp a
    dec d
    ld [$fd02], a
    ld d, l
    xor d
    db $fc
    push hl
    ld sp, hl
    rst $38

jr_00a_6366:
    cp a
    ldh a, [$7f]
    ldh a, [$bf]
    db $e3
    ld a, a
    ldh [rIE], a
    rst $38
    ldh a, [$7f]
    ret nc

    rst $18
    ret z

    rst $08
    sbc [hl]

jr_00a_6377:
    cp a
    nop
    sbc a
    nop
    sbc [hl]
    nop
    adc h
    ld [hl], b
    add b
    add b
    db $fc
    ld [$62e2], sp
    ret nz

    inc a
    ld hl, sp+$39
    ldh [rNR44], a
    ld sp, hl
    rst $30
    rra
    rst $38
    ld c, $24
    ld hl, $e13f
    ld a, a
    jp Jump_00a_7fcf


    jp $87fd


    inc c
    add c
    ld a, [hl-]
    ld b, c
    cp a
    rst $28
    rst $38
    jr jr_00a_63dc

    jr @+$3a

    db $10
    jr nc, jr_00a_63c9

    ld h, b
    ld d, a
    jr nz, jr_00a_640d

    ld b, b
    jp z, Jump_00a_6040

    db $ec
    ret nz

    ld sp, hl
    add d
    ret nz

    rst $38
    cp c
    nop

jr_00a_63b9:
    db $fc
    nop
    ld a, [$fe00]
    nop
    ld a, a
    ld a, a
    nop
    ccf
    nop
    ld e, a
    nop
    rst $10
    cp d
    ld [bc], a

jr_00a_63c9:
    ld a, [$61ff]
    ld hl, sp-$02
    ldh [$f4], a
    nop
    add sp, $00
    db $fd
    ld a, h
    ld a, [c]
    inc hl
    ld a, d
    ld [bc], a
    ld [$1800], sp

jr_00a_63dc:
    nop
    ld l, $50
    ret nz

    rst $20
    sbc $00
    cp [hl]
    ld c, a
    xor [hl]
    or h
    ret nz

    ld a, $0f
    rrca
    ld hl, sp+$16
    add c
    and b
    call nz, Call_000_0170
    ld hl, sp-$01
    cp $07
    rlca
    xor b
    add b
    ld [hl+], a
    inc b
    ld h, c
    sbc b
    dec h
    ldh [$9a], a
    jr nz, @+$01

    ld c, h
    adc b
    inc bc
    rst $28
    rst $38
    rra
    cp $fe
    ld h, [hl]
    ld h, b
    inc e

jr_00a_640d:
    ld hl, sp+$38
    ei
    ldh a, [rSVBK]
    dec de
    ret nz

    rst $38
    ld e, a
    ld e, a
    xor [hl]
    xor [hl]
    cp $ee
    add a
    ret nz

    ret nz

    ld sp, hl
    ld sp, hl
    cp a
    cp a
    inc [hl]
    rst $38
    bit 5, b
    sub a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ret nc

    ld a, a
    cpl
    ldh [$1f], a
    ret nz

    ccf
    and b

jr_00a_6433:
    ld e, a
    rst $18
    jr nc, jr_00a_6433

    adc b
    jr nz, @-$02

    rst $20
    ld a, [bc]
    push af
    ld d, l
    xor d
    dec bc
    db $f4
    cp a
    ld d, l
    xor d
    dec hl
    call nc, $a857
    db $fc
    pop hl
    inc bc
    rst $18
    call nz, $c300
    nop
    add c
    cp $e0
    add e
    nop
    ccf
    rst $00
    nop
    rst $08
    nop
    rst $28
    rlca
    ld b, $60
    cp $e1
    add hl, sp
    rlca
    call z, $e6a0
    and c
    ldh [rP1], a
    ldh a, [$f8]
    jp nz, Jump_00a_4544

    jp c, $876e

    add b
    ld hl, sp+$40
    rst $38
    nop
    sub h
    jr nz, jr_00a_64b8

    ldh [$0d], a

jr_00a_647a:
    jr nz, jr_00a_647a

    pop hl
    ret nz

    ld b, b
    sub b
    ld hl, $6d8e

jr_00a_6483:
    bit 0, e

jr_00a_6485:
    ld b, $49
    push bc
    db $fc
    ld a, [$3d2a]
    call c, $a1e6
    ld b, l
    ld b, h
    ld hl, $c0c0
    rst $38
    inc h
    inc h
    ret


    ret


    or a
    or a
    rst $18
    rst $18
    cp $50
    add hl, bc
    ld bc, $a301
    and e
    ld e, $01
    jr c, jr_00a_6483

    rlca
    ld h, b
    ld d, $e0
    add b
    ld a, a
    ld [hl], b
    ld b, e
    rst $00
    jr c, @+$01

    ret nz

    ccf
    pop bc
    ld a, $c1

jr_00a_64b8:
    ld a, $c3
    inc a
    rst $38
    rst $00
    jr c, jr_00a_6485

    add hl, sp
    call $f532
    ld a, [bc]
    rst $38
    ld a, [$bc05]
    ld b, e
    ld e, b
    and a
    cp b
    ld b, a
    cp $fc
    pop hl
    ld e, h
    and e
    ld d, a
    xor b
    ld l, $d1
    ld b, $df
    ld sp, hl
    rlca
    ld hl, sp+$03
    db $fc
    cp $e3
    ld e, a
    and b
    inc bc
    xor d
    ld d, l
    dec h
    ld b, $bc
    ldh [$b6], a
    pop hl
    sbc a
    inc e
    ret nz

    call nz, $2343
    adc a
    ld l, $d1
    ld d, l
    xor d
    db $fc
    pop hl
    cp b
    pop bc
    inc a
    add c
    rst $20
    rst $38
    rst $20
    ld a, [c]
    ld [hl], e
    ld a, [c]
    or e
    ld a, [$fc5b]
    ld a, a
    cp a
    db $fc
    ld e, a
    db $fc
    xor a
    cp $57
    ld [$f9a2], a
    ld bc, $e3fe
    db $10
    ld hl, $bfe1
    pop af
    sbc a
    ld hl, sp-$01
    rrca
    cp $07
    ld hl, sp+$0f
    pop af
    ccf
    jp nz, $fefb

    inc b
    ld d, e
    add b
    cp $fe
    db $fc
    db $fc
    ld hl, sp+$7d
    ld a, b
    ld h, h
    db $10
    ld [$1c00], sp
    nop
    ld [$5f4e], sp
    cp h
    cp $ff
    sbc b
    add hl, bc
    ld a, [c]
    ld bc, $01f6
    dec b
    pop hl
    ld hl, sp+$7f
    rlca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ld a, l
    dec b
    rst $28
    inc b
    ei
    inc c
    di
    cp $e1
    jp c, $f025

    rst $20
    rrca
    ld h, b
    sbc a
    ld h, a
    rlca
    ld [$0ce3], a
    di
    ld b, $f1
    ld sp, hl
    cp $e3
    dec [hl]
    db $e4
    dec l
    ldh [$03], a
    db $fc
    rrca
    ldh a, [$c3]
    ld a, $c1
    call z, $fec3
    db $e3
    add $dd
    ld c, l
    inc de
    dec b
    ld a, [$ea7e]
    ld c, c
    cpl
    ret nc

    ld d, a
    xor b
    dec bc
    db $f4
    db $fc

jr_00a_6586:
    pop hl
    cp $2c
    add e
    rst $38
    nop
    inc a
    jp $f7c9


    pop af
    rst $38
    rst $38
    ld a, e
    rst $38
    ld [hl], c
    rst $38
    inc [hl]
    rst $38
    inc l
    and a
    rst $38
    ldh [rNR23], a
    sub c
    nop
    rst $28
    and c
    db $ec
    ld b, e

jr_00a_65a4:
    add b
    rst $38
    cp a
    ld h, b
    rst $38
    nop
    stop
    jr z, jr_00a_6586

    ret nz

    jr c, jr_00a_65a4

    nop
    ld a, l
    ld h, a
    add b
    ld l, [hl]
    ld bc, $003c
    ld e, d
    nop
    rra
    db $ed
    nop
    ld a, [hl]
    nop
    cp a
    and b
    ld b, e
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    rst $38
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rst $18
    db $10
    ld de, $1312
    nop
    rst $38
    add sp, $14
    dec d
    rst $38
    ld d, $17
    jr jr_00a_6600

    ld a, [de]
    dec de
    inc e
    dec e
    rst $38
    ld e, $1f
    jr nz, jr_00a_6611

    ld [hl+], a
    inc hl
    inc h
    dec h
    ei
    ld h, $27
    ldh [$e9], a
    jr z, jr_00a_6624

    ld a, [hl+]
    dec hl
    inc l
    rst $38
    dec l

jr_00a_6600:
    ld l, $2f
    jr nc, jr_00a_6635

    ld [hl-], a
    inc sp
    inc [hl]
    ld a, a
    dec [hl]
    ld [hl], $37
    jr c, jr_00a_6646

    ld a, [hl-]
    dec sp
    ret nz

    jp hl


jr_00a_6611:
    rst $38
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    rst $38
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    rst $28

jr_00a_6624:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    and b
    jp hl


    ld d, b
    ld d, c
    ld d, d
    rst $38
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_00a_6635:
    ld e, d
    rst $38
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    db $fd
    ld h, e
    add b
    jp hl


    ld h, h
    ld h, l
    ld h, [hl]

jr_00a_6646:
    ld h, a
    ld l, b
    ld l, c
    rst $38
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    cp a
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld h, b
    jp hl


    ld a, b
    rst $38
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    rst $38
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rst $30
    adc c
    adc d
    adc e
    ld b, b
    jp hl


    adc h
    adc l
    adc [hl]
    adc a
    rst $38
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    rst $38
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    cp $20
    jp hl


    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    rst $38
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    rra
    xor a
    or b
    or c
    or d
    or e
    nop
    jp hl


    nop
    nop
    nop
    rst $28
    ld [$0808], sp
    ld a, [bc]
    rst $38
    pop hl
    add hl, bc
    dec bc
    dec bc
    ld h, c
    dec bc
    rst $30
    ld [c], a
    rst $28
    ldh [$fd], a
    db $eb
    pop hl
    ld [c], a
    ld a, [bc]
    ld a, [bc]
    pop hl
    db $e4
    ret z

    ldh [$f6], a
    cp h
    pop hl
    or [hl]
    ldh [$0c], a
    rst $38
    ldh [$e0], a
    db $f4
    add hl, bc
    add hl, bc
    add sp, -$21
    ldh [$e0], a
    di
    push hl
    ld [c], a
    add hl, bc
    ld [hl], h
    ldh [$09], a
    ld c, $0a
    db $d3
    ld c, $0d
    ld a, [hl]
    rst $28
    push bc
    ldh [$09], a
    pop hl
    pop hl
    ld [$790f], sp
    ld c, $5d
    di
    ldh [$e5], a
    dec c
    ld c, $0e
    ld c, $3d
    xor $9e
    dec hl
    add sp, $0f
    dec c
    rrca
    ld a, [bc]
    and b
    xor $0d
    jp hl


    dec c
    nop
    rst $38
    ldh [$fd], a
    ret


    nop
    nop
    nop
    ld a, [hl+]
    ld a, [hl]
    adc l
    nop
    rra
    nop
    rst $38
    ld a, a
    rra
    nop
    sbc a
    ld [hl-], a
    rst $38
    ld a, a
    adc l
    nop
    ld a, [hl+]
    ld a, [hl]
    sbc a
    ld [hl-], a
    rst $38
    ld a, a
    adc l
    nop
    rra
    nop
    adc l
    nop
    sbc a
    ld [hl-], a
    inc de
    ld bc, $7e2a
    adc l
    nop
    ret nz

    ld [bc], a
    rst $38
    ld a, a
    ld a, [hl+]
    ld a, [hl]
    sbc a
    ld [hl-], a
    adc l
    nop
    ret nz

    ld [bc], a
    sbc a
    ld [hl-], a
    adc l
    nop
    ret nz

    ld [bc], a
    rst $38
    ld a, a
    ld a, [hl+]
    ld a, [hl]
    rra
    nop
    sbc a
    ld [hl-], a
    adc l
    nop

Call_00a_6747:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_0341
    ld hl, $6707
    ld de, $0008
    call Call_000_0595
    ld hl, $57cc
    ld de, $d000
    call Call_000_1f2f
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9000
    ld c, $80
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $34
    call Call_000_2096
    ld hl, $5e70
    ld de, $d000
    call Call_000_1f2f
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9800
    ld c, $12
    call Call_000_2096
    ld hl, $5f52
    ld de, $d000
    call Call_000_1f2f
    ld a, $01
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9800
    ld c, $12
    call Call_000_2096
    ld hl, $5f7f
    ld de, $d000
    call Call_000_1f2f
    ld a, $01
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9000
    ld c, $80
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $34
    call Call_000_2096
    ld hl, $65c6
    ld de, $d000
    call Call_000_1f2f
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9920
    ld c, $12
    call Call_000_2096
    ld hl, $66a8
    ld de, $d000
    call Call_000_1f2f
    ld a, $01
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9920
    ld c, $12
    call Call_000_2096
    rst $18
    ld [$cd79], sp
    ld [hl], c
    inc bc
    ret


    rst $18
    ld a, [bc]
    ld a, c
    ret


    db $14, $68, $1e, $68, $28, $68, $34, $68, $46, $68, $e0, $01, $e0, $01, $e0, $01
    db $e0, $01, $e0, $01, $00, $0e, $00, $0e, $00, $0e, $00, $0e, $00, $0e, $20, $0e
    db $20, $0e, $20, $0e, $20, $0e, $20, $0e

    ld b, b
    db $0e

    db $40, $0e, $40, $0e, $40, $0e, $40, $0e, $40, $0e

    ret nz

    dec d
    ldh [$15], a
    add b
    dec d
    and b
    dec d

    db $e0, $01, $00, $0a, $40, $0a, $80, $1a, $80, $0a, $c0, $0a, $5c, $68

    ld l, b
    ld l, b
    ld [hl], h
    ld l, b
    add d
    ld l, b

    db $96, $68, $40, $14, $60, $14, $00, $14, $20, $14, $40, $18, $ff, $ff

    ret nz

    inc d
    ldh [rNR14], a
    add b
    inc d
    and b
    inc d
    ld h, b
    jr @+$01

    rst $38
    ld b, b
    dec d
    ld h, b
    dec d
    nop
    dec d
    jr nz, jr_00a_6891

    add b
    jr jr_00a_68bf

    inc de
    rst $38
    rst $38
    ret nz

    dec d
    ldh [$15], a
    add b
    dec d
    and b
    dec d
    and b
    jr @-$3e

    dec de
    ldh [rNR31], a
    add b

jr_00a_6891:
    dec de
    and b
    dec de
    rst $38
    rst $38

    db $c0, $18, $40, $19, $40, $1a, $20, $19, $e0, $19, $00, $1a, $ff, $ff

    ldh [$7f], a
    rst $38
    ld l, e
    ld e, b
    ld e, $00
    nop
    ld e, d
    ld b, c
    sbc h
    dec a
    sbc $39
    rra
    ld [hl], $e0
    inc bc
    ld d, $33
    ld c, h
    ld e, $08
    dec h
    ld [$0825], sp

jr_00a_68bf:
    dec h
    ld [$0825], sp
    dec h
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    ccf
    ld c, d
    rst $38
    ld l, e
    rst $38
    jr nz, jr_00a_68db

jr_00a_68db:
    nop
    rra
    ld e, [hl]
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop

    db $ef, $fc, $fd, $02, $03, $ff, $ea, $04, $fc, $fd, $7b, $00, $00, $ec, $e7, $fe
    db $ff, $05, $20, $ff, $ea, $ff, $06, $fe, $ff, $00, $00, $05, $20, $b6, $ff, $c0
    db $b6, $c5, $20, $74, $72, $7d, $fc, $17, $fd, $07, $08, $ff, $ea, $09, $c0, $e1
    db $cc, $e7, $a2, $ec, $fc, $9e, $e2, $c0, $e1, $67, $20, $97, $20, $8f, $20, $c3
    db $8a, $20, $a2, $ec, $9e, $e2, $c0, $e9, $e0, $f5, $68, $20, $1f, $98, $20, $90
    db $20, $8b, $c0, $fe, $62, $ec, $5e, $e2, $fe, $40, $e1, $69, $20, $99, $20, $91
    db $20, $8c, $67, $20, $fc, $fd, $fe, $ef, $40, $e9, $fe, $ff, $fe, $ef, $fe, $00
    db $e1, $6a, $20, $9a, $20, $92, $20, $8d, $fc, $c0, $ff, $c0, $f4, $6b, $20, $9b
    db $20, $93, $20, $f9, $8e, $c0, $ff, $80, $f3, $8f, $98, $75, $5f, $5f, $77, $20
    db $20, $9d, $c0, $f6, $00, $00, $00, $40, $fa, $02, $e0, $e3, $6f, $c0, $ff, $00
    db $f2, $0c, $c7, $00, $00

    nop

    db $07, $01, $01, $00, $ff, $ec, $ee, $eb, $e0, $ff, $e0, $fb, $ff, $ff, $10, $ff
    db $ff, $ff, $ff, $ff, $ff, $f6, $f5, $01, $ff, $f0, $e0, $ff, $e0, $ff, $00, $e0
    db $ff, $e0, $ff, $e0, $ff, $e0, $ff, $e0, $ff, $e0, $ff, $e0, $f9, $00, $00

    nop

    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $20, $68, $20, $98, $20, $90, $20, $8b, $20
    db $05, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $20, $20, $20, $06, $00, $00, $05, $20, $20, $20, $20, $20, $20, $20, $20, $20
    db $07, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $09, $00, $00, $05, $20, $69, $20, $99, $20, $91, $20, $8c, $20
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    ld b, $03
    dec sp
    ld b, $5d
    ld a, $6d
    ld [hl-], a
    ld d, a
    ld a, [hl-]
    add hl, hl
    ld e, $17
    inc c
    ld a, [de]
    dec c
    dec l
    dec de
    ld [hl-], a
    rra
    dec l
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    and b
    ret nz

    ld h, b
    ret nz

    call c, $ba60
    ld a, h
    or [hl]
    ld c, h
    ld [$945c], a
    ld a, b
    add sp, $30
    ld e, b
    or b
    or h
    ret c

    ld c, h
    ld hl, sp-$4c
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    ld b, $03
    dec sp
    ld b, $5d
    ld a, $6f
    jr nc, jr_00a_6b26

    ld a, [hl-]
    ld a, [hl+]
    dec e
    add hl, de
    rrca

jr_00a_6ad6:
    ld a, [de]
    rrca
    dec d
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
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    cp b
    ret nz

    ld [hl], h
    ld hl, sp-$14
    jr @+$56

    cp b
    xor b
    ld [hl], b
    jr nc, jr_00a_6ad6

    or b
    ldh [$50], a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    ld b, $03
    dec sp
    ld b, $5d
    ld a, $6d
    ld [hl-], a
    ld d, a
    ld a, [hl-]
    add hl, hl
    ld e, $17
    inc c
    ld a, [de]
    dec c
    dec l
    dec de
    ld [hl-], a
    rra
    dec l
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    and b
    ret nz

jr_00a_6b26:
    ld h, b
    ret nz

    call c, $ba60
    ld a, h
    or [hl]
    ld c, h
    ld [$945c], a
    ld a, b
    add sp, $30
    ld e, b
    or b
    or h
    ret c

    ld c, h
    ld hl, sp-$4c
    ld a, b
    ld a, b
    nop
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    ld b, $03
    dec bc
    ld b, $75
    ld c, $bf
    ld a, h
    db $dd
    ld h, d
    xor a
    ld [hl], d
    ld d, l
    ld a, [hl-]
    dec hl
    inc e
    ld a, [hl+]
    dec e
    inc [hl]
    dec de
    ld d, c
    ccf
    ld h, [hl]
    ccf
    ld e, e
    inc a
    inc a
    nop
    ret nz

    nop
    and b
    ret nz

    ld h, b
    ret nz

    ret nc

    ld h, b
    xor [hl]
    ld [hl], b
    db $fd
    ld a, $bb
    ld b, [hl]
    push af
    ld c, [hl]
    xor d
    ld e, h
    call nc, Call_00a_5438
    cp b
    inc l
    ret c

    adc d
    db $fc
    ld h, [hl]
    db $fc
    jp c, Jump_000_3c3c

    nop

    db $ff, $6b, $5f, $03, $df, $01, $48, $00

    nop
    nop
    nop
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
    inc b
    rlca
    dec bc
    inc c
    rla
    jr jr_00a_6bcc

    jr nc, jr_00a_6bfe

    ld h, b
    cpl
    jr nc, @+$19

    jr jr_00a_6bb0

    inc c
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_6bb0:
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    ld a, [hl]
    cp $02
    cp $fa
    ld b, $fa
    ld b, $fa
    ld b, $02
    cp $7e
    cp $40
    ret nz

    ret nz

    ret nz

    nop
    nop

jr_00a_6bcc:
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
    jr jr_00a_6bed

    rra
    rra
    rra
    nop

jr_00a_6be1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_6bed:
    nop
    nop

jr_00a_6bef:
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_00a_6be1

    jr jr_00a_6bef

    inc c
    inc b
    db $fc

jr_00a_6bfe:
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $a8, $59, $85, $7e, $ff, $7f, $00, $00

    ldh [$7f], a
    rst $38
    ld l, e
    ld e, b
    ld e, $00
    nop

    db $7f, $27, $9d, $32, $7f, $63, $1b, $3a

    ld e, a
    inc bc
    rst $38
    ld l, e
    rst $18
    ld bc, $0000
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    ccf
    ld c, d
    rst $38
    ld l, e
    rst $38
    jr nz, jr_00a_6c4f

jr_00a_6c4f:
    nop
    rra
    ld e, [hl]
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop

Call_00a_6c58:
    ld a, b
    add a
    add $05
    add a
    add a
    add a
    ld hl, $ff8a
    sub [hl]
    add $03
    ld e, a
    ld d, $90
    ldh a, [$8c]
    rrca
    rrca
    rrca
    and $03
    add a
    add a
    add $00
    ld c, a
    ld b, $0a
    call Call_000_26a4
    ret


Call_00a_6c7a:
    ld a, $14
    ld hl, $ff8a
    sub [hl]
    ld e, a
    ldh a, [$8c]
    rrca
    rrca
    and $07
    add $a7
    ld l, a
    adc $6c
    sub l
    ld h, a
    ld d, [hl]
    push de
    ld a, d
    add $06
    ld d, a
    ld bc, $0910
    call Call_000_26a4
    pop de
    ld a, d
    cpl
    add $9a
    ld d, a
    ld bc, $2910
    call Call_000_26a4
    ret


    db $00, $01, $02, $03, $04, $03, $02, $01

Call_00a_6caf:
    push de
    push hl
    ld a, [$c470]
    cp $03
    jr nz, jr_00a_6cbf

    ld a, b
    cp $05
    jr c, jr_00a_6cbf

    jr jr_00a_6cdc

jr_00a_6cbf:
    ld a, [$c470]
    add a
    add l
    ld l, a
    jr nc, jr_00a_6cc8

    inc h

jr_00a_6cc8:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add a
    add l
    ld l, a
    jr nc, jr_00a_6cd2

    inc h

jr_00a_6cd2:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    call Call_000_2d10
    pop hl
    pop de
    ret


jr_00a_6cdc:
    ld a, [$c470]
    add a
    add l
    ld l, a
    jr nc, jr_00a_6ce5

    inc h

jr_00a_6ce5:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add a
    add l
    ld l, a
    jr nc, jr_00a_6cef

    inc h

jr_00a_6cef:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    call Call_000_2d10
    jr z, @+$05

    rst $30
    ld h, b
    ld de, $d1e1
    ret


Call_00a_6cfe:
    ld d, $00
    ld b, $00
    ld a, [$c471]
    ld c, a

jr_00a_6d06:
    ld hl, $680a
    call Call_00a_6caf
    jr z, jr_00a_6d0f

    inc d

jr_00a_6d0f:
    inc b
    dec c
    jr nz, jr_00a_6d06

    ld a, d
    ret


Call_00a_6d15:
    ld a, [$c470]
    add a
    add $52
    ld l, a
    adc $68
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $ff

jr_00a_6d25:
    inc b
    ld a, [hl+]
    ld a, [hl+]
    cp $ff
    jr nz, jr_00a_6d25

    ld a, b
    ld [$c471], a
    ld a, [$c471]
    add a
    add $04
    sub $12
    jr nc, jr_00a_6d3b

    xor a

jr_00a_6d3b:
    add a
    add a
    add a
    ld [$c472], a
    ret


Call_00a_6d42:
    ld de, $d080
    ld a, [$c471]
    ld b, a

jr_00a_6d49:
    push de
    ld hl, $6a1a
    ld a, d
    add $04
    ld d, a
    ld c, $04
    call Call_000_03eb
    pop de
    ld hl, $69ba
    ld c, $04
    call Call_000_03eb
    dec b
    jr nz, jr_00a_6d49

    ld hl, $ffe0
    add hl, de
    ld e, l
    ld d, h
    push de
    ld hl, $6a5a
    ld a, d
    add $04
    ld d, a
    ld c, $02
    call Call_000_03eb
    pop de
    ld hl, $69fa
    ld c, $02
    call Call_000_03eb
    ret


Call_00a_6d7f:
    rst $18

    db $1a, $03

    ld a, [$c470]
    add $e1
    ld l, a
    adc $19
    sub l
    ld h, a
    rst $18

    db $3c, $05

    cpl
    inc a
    add $14
    srl a
    ld de, $d020
    add e
    ld e, a
    jr nc, jr_00a_6d9d

    inc d

jr_00a_6d9d:
    ld a, [$c470]
    add $e1
    ld l, a
    adc $19
    sub l
    ld h, a
    ld c, $20
    rst $18

    db $22, $05

    ld de, $d081
    ld b, $00
    ld a, [$c471]
    ld c, a

jr_00a_6db5:
    push bc
    ld hl, $680a
    call Call_00a_6caf
    jr z, jr_00a_6dd7

    ld a, [$c470]
    add a
    add $e4
    ld l, a
    adc $6d
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add l
    ld l, a
    jr nc, jr_00a_6dd2

    inc h

jr_00a_6dd2:
    ld c, $20
    rst $18

    db $22, $05

jr_00a_6dd7:
    ld a, $40
    add e
    ld e, a
    jr nc, jr_00a_6dde

    inc d

jr_00a_6dde:
    pop bc
    inc b
    dec c
    jr nz, jr_00a_6db5

    ret


    db $e6, $19

    db $eb
    add hl, de
    ldh a, [rNR24]
    or $19

    db $ff, $19

Call_00a_6dee:
    ldh a, [$90]
    bit 6, a
    jr z, jr_00a_6dff

    ld a, $fe
    ld hl, $ff8a
    add [hl]
    bit 7, a
    jr nz, jr_00a_6dff

    ld [hl], a

jr_00a_6dff:
    ldh a, [$90]
    bit 7, a
    jr z, jr_00a_6e13

    ld a, [$c472]
    ld b, a
    ld a, $02
    ld hl, $ff8a
    add [hl]
    cp b
    jr nc, jr_00a_6e13

    ld [hl], a

jr_00a_6e13:
    ldh a, [$91]
    and $30
    jr z, jr_00a_6e46

    ld b, a

jr_00a_6e1a:
    ld hl, $c470
    bit 4, b
    jr nz, jr_00a_6e25

    bit 5, b
    jr nz, jr_00a_6e28

jr_00a_6e25:
    inc [hl]
    jr jr_00a_6e29

jr_00a_6e28:
    dec [hl]

jr_00a_6e29:
    ld a, [hl]
    bit 7, a
    jr z, jr_00a_6e33

    ld a, $05
    dec a
    jr jr_00a_6e38

jr_00a_6e33:
    cp $05
    jr c, jr_00a_6e38

    xor a

jr_00a_6e38:
    ld [hl], a
    push bc
    call Call_00a_6cfe
    pop bc
    and a
    jr z, jr_00a_6e1a

    rst $08

    db $5b

    call Call_00a_6e47

jr_00a_6e46:
    ret


Call_00a_6e47:
    ld c, $10
    call Call_000_25a1
    call Call_00a_6d15
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $68e4
    ld de, $d000
    call Call_000_1f2f
    ld hl, $698a
    ld de, $d400
    call Call_000_1f2f
    call Call_00a_6d42
    call Call_00a_6d7f
    call Call_000_2625
    call Call_000_0341
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $d400
    ld de, $9800
    ld c, $2c
    call Call_000_2096
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9800
    ld c, $2c
    call Call_000_2096
    rst $18

    db $14, $03

    call Call_000_0371
    ld c, $10
    call Call_000_25af
    ret


Call_00a_6ea2:
    rst $20

    db $e0, $01

    ld a, $90
    ldh [rWY], a
    xor a
    ldh [$b9], a
    ldh [$b8], a
    xor a
    ldh [$8b], a
    ldh [$8a], a
    xor a
    ld [$c470], a
    call Call_00a_6d15
    call Call_000_0341
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $68e4
    ld de, $d000
    call Call_000_1f2f
    ld hl, $698a
    ld de, $d400
    call Call_000_1f2f
    call Call_00a_6d42
    call Call_00a_6d7f
    ld a, $01
    ldh [rVBK], a
    ld hl, $d400
    ld de, $9800
    ld c, $2c
    call Call_000_2096
    ld a, $00
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9800
    ld c, $2c
    call Call_000_2096
    ld a, $01
    ldh [rVBK], a
    ld hl, $6a80
    ld de, $8000
    ld c, $10
    call Call_000_2096
    ld hl, $6b90
    ld de, $8100
    ld c, $04
    call Call_000_2096
    ld hl, $6c20
    ld de, $0101
    call Call_000_05a8
    ld hl, $6c10
    ld de, $0901
    call Call_000_05a8
    ld hl, $6b80
    ld de, $0a01
    call Call_000_05a8
    rst $18

    db $14, $03

    call Call_000_0371
    ret


Call_00a_6f35:
    call Call_00a_6dee
    rst $18

    db $0e, $0c

    call Call_00a_6c7a
    ld b, $00
    ld a, [$c471]
    ld c, a

jr_00a_6f44:
    ld hl, $6852
    call Call_00a_6caf
    jr z, jr_00a_6f51

    push bc
    call Call_00a_6c58
    pop bc

jr_00a_6f51:
    inc b
    dec c
    jr nz, jr_00a_6f44

    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    call Call_000_23b6
    call Call_000_2e3b
    call Call_00a_6ea2
    ld c, $10
    call Call_000_25af

jr_00a_6f6b:
    ldh a, [$94]
    and $02
    jr nz, jr_00a_6f79

    call Call_00a_6f35
    call Call_000_2e3b
    jr jr_00a_6f6b

jr_00a_6f79:
    rst $08

    db $5d

    ld c, $10
    call Call_000_25a1
    call Call_000_2625
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
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    xor e
    ld l, a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    and b
    rrca
    ldh [rSB], a
    ld b, b
    ld c, $e0
    ld bc, $1a80
    nop
    ld a, [bc]
    ld b, b
    ld a, [bc]
    add b
    ld a, [bc]
    ret nz

    ld a, [bc]
    ldh [rSB], a
    ret


    ld l, a
    ret nz

    ld bc, $01c0

jr_00a_6fcd:
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $18c0
    jr nz, @+$1b

    ld b, b
    add hl, de
    ld b, b
    ld a, [de]
    ldh [rNR24], a
    nop
    ld a, [de]
    ret nz

    ld bc, $fcef
    db $fd
    ld [bc], a
    inc bc
    rst $38
    ld [$fc04], a
    db $fd
    ei
    db $f4
    db $f4
    db $ec

jr_00a_6ff3:
    and $0e
    cp $ff
    dec b

jr_00a_6ff8:
    jr nz, jr_00a_6ff8

jr_00a_6ffa:
    rst $38
    ld [$fe06], a
    rst $38
    db $f4
    db $f4
    dec b
    jr nz, @+$01

    ld [hl], h
    ld [hl], d
    ld a, l

jr_00a_7007:
    ld [hl], e
    jr nz, @-$73

    sub a
    db $76
    rst $28
    db $fc
    db $fd

jr_00a_700f:
    rlca
    ld [$eaff], sp
    add hl, bc

jr_00a_7014:
    db $fc
    db $fd
    jp $0000


    call z, $a2e7

jr_00a_701c:
    db $ec
    sbc [hl]
    ld [c], a
    ldh [$e1], a

jr_00a_7021:
    and a
    jr nz, @+$41

jr_00a_7024:
    rst $10
    jr nz, @-$2f

    jr nz, jr_00a_6ff3

jr_00a_7029:
    jr nz, jr_00a_6fcd

    db $ec

jr_00a_702c:
    sbc [hl]
    ld [c], a

jr_00a_702e:
    db $fc
    ret nz

    jp hl


jr_00a_7031:
    ldh [$f4], a
    nop
    xor b
    jr nz, jr_00a_700f

    jr nz, @-$2e

    di
    jr nz, jr_00a_7007

    ldh [$f6], a
    ret nz

    db $fd
    xor c
    jr nz, jr_00a_701c

    jr nz, jr_00a_702c

    pop de
    jr nz, jr_00a_7014

    add b
    rst $38
    ldh [$f4], a
    xor d
    jr nz, jr_00a_7029

    rst $08
    jr nz, jr_00a_7024

    jr nz, jr_00a_7021

    ret nz

    rst $38
    ldh [$f4], a
    xor e
    jr nz, jr_00a_6ffa

    db $db
    jr nz, jr_00a_7031

    jr nz, jr_00a_702e

    ret nz

    rst $38
    ldh [$f3], a
    adc a
    ld a, a
    sbc b
    ld [hl], l
    ld e, a
    ld e, a
    jr nz, @+$22

    db $dd
    ret nz

    or $13
    nop
    nop
    db $fd
    jp $fbe0


    xor a
    ret nz

jr_00a_7078:
    cp $22
    call z, $c21e
    inc bc
    nop
    nop
    inc c
    rst $00
    nop
    nop
    nop
    rlca
    ld bc, $0001
    rst $38
    db $ec
    xor $eb
    ldh [rIE], a
    ldh [$fb], a
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_00a_70a8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld c, $03
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_00a_70fb

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_00a_7101

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_00a_7107

    ld b, $00
    nop
    dec b
    jr nz, jr_00a_7078

    sub a
    db $76
    add l
    jr nz, jr_00a_70a8

    ret nz

    or [hl]
    rlca
    ld [$0808], sp
    ld [$0808], sp

jr_00a_70fb:
    ld [$0808], sp
    ld [$0808], sp

jr_00a_7101:
    ld [$0808], sp
    ld [$0808], sp

jr_00a_7107:
    add hl, bc
    nop
    nop
    dec b
    jr nz, jr_00a_712d

    jr nz, jr_00a_712f

    jr nz, jr_00a_7131

    jr nz, jr_00a_7133

    jr nz, jr_00a_7115

jr_00a_7115:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_712d:
    nop
    nop

jr_00a_712f:
    nop
    nop

jr_00a_7131:
    nop
    nop

jr_00a_7133:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    rst $20
    ldh [rSB], a
    ld a, $90
    ldh [rWY], a
    call Call_000_23b6
    call Call_000_2e3b
    call Call_000_0341
    xor a
    ldh [$b9], a
    ldh [$b8], a
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld hl, $6a80
    ld de, $a000
    ld c, $10
    call Call_000_0468
    ld hl, $6bd0
    ld de, $a100
    ld c, $04
    call Call_000_0468
    ld hl, $6b80
    ld de, $0a01
    call Call_000_05a8
    ld hl, $6c10
    ld de, $0901
    call Call_000_05a8
    ld hl, $6c20
    ld de, $0101
    call Call_000_05a8
    ld de, $87c0
    ld b, $00
    rst $18
    inc c
    ld bc, $eaaf
    ld [hl], b
    call nz, $73ea
    call nz, Call_00a_74ea
    call nz, Call_00a_76ea
    call nz, $d3cd
    ld [hl], e
    call Call_00a_73ed
    ld [$c475], a
    call Call_00a_72bf
    call Call_00a_7277
    call Call_00a_7289
    rst $18
    inc d
    inc bc
    call Call_000_04de
    call Call_000_0371
    ld c, $10
    call Call_000_25af

jr_00a_71fb:
    ldh a, [$94]
    and $02
    jr nz, jr_00a_7227

    ldh a, [$94]
    and $01
    jr nz, jr_00a_720f

    call Call_00a_72d2
    call Call_000_2e3b
    jr jr_00a_71fb

jr_00a_720f:
    rst $08
    ld e, h
    ld a, [$c473]
    add $80
    ld l, a
    adc $c4
    sub l
    ld h, a
    ld a, [hl]
    cp $0d
    jr nz, jr_00a_7222

    ld a, $ff

jr_00a_7222:
    ld [$c2a7], a
    jr jr_00a_7229

jr_00a_7227:
    rst $08
    ld e, l

jr_00a_7229:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
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
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_7257:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $6fe5
    ld de, $d000
    call Call_000_1f2f
    ret


Call_00a_7267:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7085
    ld de, $d400
    call Call_000_1f2f
    ret


Call_00a_7277:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $9800
    ld c, $24
    call Call_000_0468
    ret


Call_00a_7289:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d400
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ret


Call_00a_729b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d080
    ld de, $9880
    ld c, $1a
    call Call_000_0468
    ret


    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d480
    ld de, $b880
    ld c, $1a
    call Call_000_0468
    ret


Call_00a_72bf:
    call Call_00a_7257
    call Call_00a_7267
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [de]
    inc bc
    call Call_00a_7387
    ret


Call_00a_72d2:
    call Call_00a_73fc
    rst $18
    ld c, $0c
    ld hl, $c480
    ld a, [$c474]
    add l
    ld l, a
    jr nc, jr_00a_72e3

    inc h

jr_00a_72e3:
    ld b, $00
    ld c, $07

jr_00a_72e7:
    ld a, [hl+]
    cp $ff
    jr z, jr_00a_7304

    push bc
    push hl
    ld b, a
    ld hl, $6fc7
    call Call_00a_6caf
    pop hl
    pop bc
    jr z, jr_00a_7300

    push bc
    push hl
    call Call_00a_6c58
    pop hl
    pop bc

jr_00a_7300:
    inc b
    dec c
    jr nz, jr_00a_72e7

jr_00a_7304:
    call $7344
    ld a, [$c476]
    add a
    add $06
    add a
    add a
    add a
    add $08
    ld e, a
    ldh a, [$8c]
    rrca
    and $07
    ld hl, $733c
    add l
    ld l, a
    jr nc, jr_00a_7320

    inc h

jr_00a_7320:
    ld a, e
    sub [hl]
    ld e, a
    ldh a, [$8c]
    rrca
    and $07
    ld hl, $733c
    add l
    ld l, a
    jr nc, jr_00a_7330

    inc h

jr_00a_7330:
    ld a, [hl]
    add $03
    ld d, a
    ld b, $20
    ld c, $7c
    call Call_000_26a4
    ret


    nop
    ld [bc], a
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $c5f5
    push de
    push hl
    ld d, $4c
    ldh a, [$8c]
    rrca
    rrca
    and $07
    ld hl, $6ca7
    add l
    ld l, a
    jr nc, jr_00a_7358

    inc h

jr_00a_7358:
    ld a, [hl]
    ld e, a
    ld a, [$c474]
    and a
    jr z, jr_00a_736c

    push de
    ld a, e
    add $24
    ld e, a
    ld bc, $0910
    call Call_000_26a4
    pop de

jr_00a_736c:
    ld hl, $c475
    ld a, [$c474]
    add $07
    cp [hl]
    jr nc, jr_00a_7382

    ld a, e
    cpl
    add $94
    ld e, a
    ld bc, $4910
    call Call_000_26a4

jr_00a_7382:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00a_7387:
    ld hl, $1a05
    rst $18
    inc a
    dec b
    cpl
    inc a
    add $14
    srl a
    ld de, $d020
    add e
    ld e, a
    jr nc, jr_00a_739b

    inc d

jr_00a_739b:
    ld hl, $1a05
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld de, $d081
    ld hl, $c480
    ld a, [$c474]
    add l
    ld l, a
    jr nc, jr_00a_73b1

    inc h

jr_00a_73b1:
    ld c, $07

jr_00a_73b3:
    ld a, [hl+]
    cp $ff
    jr z, jr_00a_73d2

    push bc
    push hl
    add $06
    ld l, a
    adc $1a
    sub l
    ld h, a
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    ld a, $40
    add e
    ld e, a
    jr nc, jr_00a_73cd

    inc d

jr_00a_73cd:
    pop hl
    pop bc
    dec c
    jr nz, jr_00a_73b3

jr_00a_73d2:
    ret


    ld de, $c480
    ld b, $00
    ld c, $0e

jr_00a_73da:
    ld hl, $6fa9
    call Call_00a_6caf
    jr z, jr_00a_73e5

    ld a, b
    ld [de], a
    inc de

jr_00a_73e5:
    inc b
    dec c
    jr nz, jr_00a_73da

    ld a, $ff
    ld [de], a
    ret


Call_00a_73ed:
    ld hl, $c480
    ld b, $00

jr_00a_73f2:
    ld a, [hl+]
    cp $ff
    jr z, jr_00a_73fa

    inc b
    jr jr_00a_73f2

jr_00a_73fa:
    ld a, b
    ret


Call_00a_73fc:
    ldh a, [$91]
    bit 6, a
    jr z, jr_00a_740c

    ld hl, $c473
    dec [hl]
    ld hl, $c476
    dec [hl]
    jr jr_00a_741d

jr_00a_740c:
    ldh a, [$91]
    bit 7, a
    jr z, jr_00a_741c

    ld hl, $c473
    inc [hl]
    ld hl, $c476
    inc [hl]
    jr jr_00a_741d

jr_00a_741c:
    ret


jr_00a_741d:
    rst $08
    ld e, e
    ld a, [$c475]
    ld b, a
    ld hl, $c473
    ld a, [hl]
    bit 7, a
    jr z, jr_00a_742e

    xor a
    jr jr_00a_7433

jr_00a_742e:
    cp b
    jr c, jr_00a_7433

    ld a, b
    dec a

jr_00a_7433:
    ld [hl], a
    ld hl, $c476
    ld a, [hl]
    bit 7, a
    jr z, jr_00a_743f

    xor a
    jr jr_00a_7446

jr_00a_743f:
    cp $07
    jr c, jr_00a_7446

    ld a, $07
    dec a

jr_00a_7446:
    ld [hl], a
    ld hl, $c476
    ld a, [$c473]
    sub [hl]
    ld hl, $c474
    cp [hl]
    jr z, jr_00a_7469

    ld [hl], a
    call Call_00a_72bf
    call Call_00a_729b
    call Call_000_2ed5
    ld bc, $adcd
    ld [hl], d

jr_00a_7462:
    call Call_000_2ed5
    ld bc, $12df

jr_00a_7468:
    inc bc

jr_00a_7469:
    ret


jr_00a_746a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0306
    inc c
    rlca
    jr jr_00a_748b

jr_00a_747c:
    jr nc, @+$21

    ld a, b
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0f07], sp

jr_00a_748b:
    nop
    nop
    nop

jr_00a_748e:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b

jr_00a_7498:
    ld h, b
    ret nz

    jr nc, jr_00a_747c

    jr jr_00a_748e

    inc a
    ret nz

    jr nz, jr_00a_7462

    jr nz, @-$3e

    jr nz, @-$3e

    jr nz, jr_00a_7468

    jr nz, jr_00a_746a

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    ld bc, $071c

jr_00a_74ba:
    jr nc, jr_00a_74db

    jr @+$09

    ld [$1807], sp
    rrca
    db $10
    rrca
    jr nc, jr_00a_74e5

    jr nc, jr_00a_74e7

    inc e
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rLCDC], a
    jr nz, jr_00a_7498

    jr nc, jr_00a_74ba

    db $10

jr_00a_74db:
    ldh [rNR23], a
    ldh a, [$08]
    ldh a, [$3c]
    add sp, $2c
    ret nz

    ld h, b

jr_00a_74e5:
    ret nz

    ld b, b

jr_00a_74e7:
    add b
    ret nz

    add b

Call_00a_74ea:
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
    rra
    nop
    inc c
    rlca
    inc b
    inc bc
    inc b
    inc bc
    ld [$1007], sp
    rrca
    jr nz, jr_00a_7521

    ld b, b
    ccf
    jr nz, jr_00a_7525

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
    nop
    ld hl, sp+$00
    ld [$08f0], sp
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]

jr_00a_7521:
    ldh a, [$78]
    sub b
    sbc b

jr_00a_7525:
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rlca
    ld [bc], a
    ld [bc], a
    ld bc, $0306

jr_00a_753a:
    inc e
    rlca
    ld [hl], b
    rra
    ret nz

    ld a, a
    ld b, b
    ccf
    ld h, b
    ccf
    inc hl
    ld e, $3e
    jr jr_00a_7561

    nop
    nop
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
    ldh [$80], a
    jr c, jr_00a_753a

    inc c
    ld hl, sp+$08
    ldh a, [rNR23]
    ldh a, [rNR10]

jr_00a_7561:
    ldh [$30], a
    ldh [$a0], a
    ld b, b
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
    ld bc, $0100
    nop
    ld bc, $7f00
    nop
    ld b, b
    ccf

jr_00a_757c:
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld a, a
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop

jr_00a_758e:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ld h, b
    ret nz

    jr nc, jr_00a_757c

    jr jr_00a_758e

    inc c
    ld hl, sp+$18
    ldh a, [$30]
    ldh [$60], a
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
    nop
    nop
    nop
    nop
    nop
    jr jr_00a_75b6

jr_00a_75b6:
    ld a, $18
    inc hl
    ld e, $60
    ccf

jr_00a_75bc:
    ld b, b
    ccf
    ret nz

    ld a, a
    ld [hl], b
    rra
    inc e
    rlca
    ld b, $03
    ld [bc], a
    ld bc, $0207
    ld b, $00
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
    ldh [rLCDC], a
    and b
    ld b, b
    jr nc, jr_00a_75bc

    db $10
    ldh [rNR23], a
    ldh a, [$08]
    ldh a, [$0c]
    ld hl, sp+$38
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
    inc b
    nop
    ld a, [bc]
    inc b
    ld de, $200e
    rra
    ld b, b
    ccf
    jr nz, @+$21

    db $10
    rrca
    ld [$0407], sp
    inc bc
    inc b
    inc bc
    inc c
    rlca
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
    nop
    ld [$9800], sp
    nop
    ld a, b
    sub b
    ld [$08f0], sp
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$f8]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    ld bc, $071c
    jr nc, jr_00a_7657

    jr nc, jr_00a_7659

    db $10
    rrca
    jr jr_00a_764d

    ld [$1807], sp
    rlca
    jr nc, jr_00a_7663

    inc e
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop

jr_00a_764d:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b

jr_00a_7656:
    ld b, b

jr_00a_7657:
    add b

jr_00a_7658:
    ld h, b

jr_00a_7659:
    ret nz

jr_00a_765a:
    inc l
    ret nz

jr_00a_765c:
    inc a
    add sp, $08
    ldh a, [rNR23]
    ldh a, [rNR10]

jr_00a_7663:
    ldh [$30], a
    ldh [rNR41], a
    ret nz

    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$7807], sp
    rlca
    jr nc, @+$21

    jr @+$11

jr_00a_7684:
    inc c
    rlca
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_7692:
    ldh [rP1], a
    jr nz, jr_00a_7656

    jr nz, jr_00a_7658

    jr nz, jr_00a_765a

    jr nz, jr_00a_765c

    jr nz, @-$3e

    inc a
    ret nz

    jr jr_00a_7692

jr_00a_76a2:
    jr nc, jr_00a_7684

    ld h, b
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
    nop
    ld bc, $0300
    ld bc, $0306
    inc b
    inc bc
    inc c
    rlca
    ld l, b
    rlca
    ld a, b
    cpl
    jr nz, jr_00a_76df

    jr nc, @+$21

    db $10
    rrca
    jr jr_00a_76d5

    add hl, bc
    rlca

jr_00a_76c8:
    rrca
    inc b

jr_00a_76ca:
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop

jr_00a_76d4:
    ld [hl], b

jr_00a_76d5:
    ret nz

    jr jr_00a_76c8

    jr jr_00a_76ca

    db $10
    ldh [$30], a
    ldh [rNR41], a

jr_00a_76df:
    ret nz

    jr nc, jr_00a_76a2

    jr jr_00a_76d4

    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    nop

Call_00a_76ea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $3200
    ld bc, $133c
    jr nz, jr_00a_771d

    jr nz, jr_00a_771f

    jr nz, jr_00a_7721

    jr nz, jr_00a_7723

    jr nz, jr_00a_7725

    jr nz, jr_00a_7727

    ccf
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
    and b
    ld b, b
    db $10
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$08

jr_00a_771d:
    ldh a, [rNR10]

jr_00a_771f:
    ldh [rNR41], a

jr_00a_7721:
    ret nz

    ld b, b

jr_00a_7723:
    add b
    ld b, b

jr_00a_7725:
    add b
    ld h, b

jr_00a_7727:
    ret nz

    ldh a, [rP1]
    nop
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
    nop
    ld c, $04
    dec bc
    inc b
    jr jr_00a_774b

    db $10
    rrca
    jr nc, jr_00a_775f

    jr nz, jr_00a_7761

    ld h, b
    ccf
    jr c, @+$11

    ld c, $03
    inc bc
    nop
    nop

jr_00a_774b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_00a_7756

jr_00a_7756:
    ld hl, sp+$30
    adc b
    ldh a, [$0c]
    ld hl, sp+$04
    ld hl, sp+$06

jr_00a_775f:
    db $fc
    inc e

jr_00a_7761:
    ldh a, [rSVBK]
    ret nz

    ret nz

    add b
    add b
    nop
    ret nz

    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    ld [bc], a
    dec c
    ld b, $18
    rrca
    jr nc, jr_00a_779d

    ld h, b
    ccf
    jr nc, jr_00a_77a1

    jr jr_00a_7793

    dec c
    ld b, $07
    ld [bc], a
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop

jr_00a_7793:
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    inc b
    ld hl, sp+$04

jr_00a_779d:
    ld hl, sp+$04
    ld hl, sp+$04

jr_00a_77a1:
    ld hl, sp+$04
    ld hl, sp-$04
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld c, $03
    jr c, jr_00a_77c9

    ld h, b
    ccf
    jr nz, jr_00a_77dd

    jr nc, jr_00a_77df

    db $10
    rrca
    jr jr_00a_77d3

    dec bc
    inc b
    ld c, $04
    inc b

jr_00a_77c9:
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

jr_00a_77d3:
    nop
    ret nz

    add b
    add b
    nop
    ret nz

    add b
    ld [hl], b
    ret nz

    inc e

jr_00a_77dd:
    ldh a, [rTMA]

jr_00a_77df:
    db $fc
    inc b
    ld hl, sp+$0c
    ld hl, sp-$78
    ldh a, [$f8]
    jr nc, jr_00a_7819

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    jr nz, jr_00a_7817

    jr nz, jr_00a_7819

    jr nz, jr_00a_781b

    jr nz, @+$21

    jr nz, jr_00a_781f

    jr nz, jr_00a_7821

    inc a
    inc de
    ld [hl-], a
    ld bc, $0021
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld h, b

jr_00a_7817:
    ret nz

    ld b, b

jr_00a_7819:
    add b
    ld b, b

jr_00a_781b:
    add b
    jr nz, @-$3e

jr_00a_781e:
    db $10

jr_00a_781f:
    ldh [$08], a

jr_00a_7821:
    ldh a, [rDIV]
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
    nop
    inc b
    nop
    rrca
    inc b
    add hl, bc
    rlca
    jr @+$11

    db $10
    rrca
    jr nc, @+$21

    jr nz, @+$21

    ld a, b
    cpl

jr_00a_7842:
    ld l, b
    rlca
    inc c
    rlca
    inc b
    inc bc
    ld b, $03
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
    ret nz

    nop
    ld [hl], b
    ret nz

    jr @-$0e

    jr nc, jr_00a_781e

    jr nz, @-$3e

    jr nc, jr_00a_7842

    db $10
    ldh [rNR23], a
    ldh a, [rNR23]
    ldh a, [rSVBK]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    ldh [$03], a
    nop
    nop
    ld h, b
    ld a, a
    nop
    ld e, [hl]
    ld a, $ff
    ld [$c2a9], a
    ld hl, $7870
    ld de, $0901
    call Call_000_05a8
    ld de, $87c0
    ld b, $00
    rst $18
    inc c
    ld bc, $bfcd
    ld a, c
    ld a, $04
    ld hl, $78ce
    call Call_000_23e8
    ret


    jr z, jr_00a_789c

jr_00a_789c:
    ld e, b
    ld bc, $0028
    cp b
    nop
    ld [$5801], sp
    ld bc, $00e8
    sbc b
    nop
    xor b
    nop
    adc b
    nop
    ld e, b
    nop
    ret z

    nop
    xor b
    nop
    ld hl, sp+$00
    add sp, $00
    jr z, @+$03

    add sp, $00
    jr z, jr_00a_78bf

    ld a, b

jr_00a_78bf:
    nop
    ld l, b
    ld bc, $0058
    jr z, jr_00a_78c7

    ld a, b

jr_00a_78c7:
    nop
    cp b
    nop
    jr jr_00a_78cd

    ret c

jr_00a_78cd:
    nop
    ld a, [$c2a7]
    cp $ff
    jp z, Jump_00a_7966

    ld a, [$c2a7]
    add a
    add a
    add $9c
    ld l, a
    adc $78
    sub l
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c2a2
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
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    push hl
    ld a, [$c2a7]
    add a
    add a
    add $9a
    ld l, a
    adc $78
    sub l
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c2a0
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
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop de
    call Call_000_1a03
    ld hl, $0000
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld bc, $0800
    add hl, bc
    ld a, h
    and $f0
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $7470
    add hl, de
    ld de, $a000
    ld c, $04
    call Call_000_0468
    ld de, $0810
    ld bc, $0900
    call Call_000_26a4
    call Call_00a_7967

Jump_00a_7966:
    ret


Call_00a_7967:
    ldh a, [$8c]
    rrca
    and $07
    ld hl, $79b7
    add l
    ld l, a
    jr nc, jr_00a_7974

    inc h

jr_00a_7974:
    ld b, [hl]
    ld a, [$c2a7]
    add a
    add a

Call_00a_797a:
    add $9c
    ld l, a
    adc $78
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub b
    ld l, a
    jr nc, jr_00a_798a

    dec h

jr_00a_798a:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld a, [$c2a7]
    add a
    add a
    add $9a
    ld l, a
    adc $78
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fff8
    add hl, de
    ld a, l
    sub b
    ld l, a
    jr nc, jr_00a_79a9

    dec h

jr_00a_79a9:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    pop de
    ld b, $60
    ld c, $7c
    call Call_000_27b4
    ret


    nop
    ld bc, $0302
    inc bc
    ld [bc], a
    ld bc, $fa00
    and a
    jp nz, $fffe

    jp z, Jump_00a_7a5d

    ld a, $78
    ldh [rWY], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $70b4
    ld de, $de00
    ld c, $06
    call Call_000_03eb
    ld hl, $de22
    ld a, $f0
    ld c, $10

jr_00a_79e3:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_00a_79e3

    ld hl, $7114
    ld de, $df00
    ld c, $60

jr_00a_79f0:
    ld a, [hl+]
    or $80
    ld [de], a
    inc de
    dec c
    jr nz, jr_00a_79f0

    ld a, [$c2a7]
    add $06
    ld l, a
    adc $1a
    sub l
    ld h, a
    rst $18
    inc a
    dec b
    cpl
    inc a
    add $14
    srl a
    ld de, $de20
    add e
    ld e, a
    jr nc, jr_00a_7a13

    inc d

jr_00a_7a13:
    ld hl, $dc00
    ld c, $80

jr_00a_7a18:
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    dec c
    jr nz, jr_00a_7a18

    ld a, [$c2a7]
    add $06
    ld l, a
    adc $1a
    sub l
    ld h, a
    ld de, $c490
    rst $18
    ld e, h
    dec b
    ld hl, $c490
    ld de, $dc00
    rst $18
    ld h, $03
    ld hl, $de00
    ld de, $9c00
    ld c, $06
    call Call_000_0468
    ld hl, $df00
    ld de, $bc00
    ld c, $06
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $dc00
    ld de, $8f00
    ld c, $10
    call Call_000_0468

Jump_00a_7a5d:
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

Jump_00a_7fcf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
