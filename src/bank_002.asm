; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld [hl], d
    ld b, c

    db $f6, $41

    sbc e
    ld b, d

    db $55, $43

    ld d, h
    ld b, h
    call z, $1d43
    ld b, e

    db $f6, $51, $1a, $51, $8b, $51, $3d, $4e, $82, $4e

    ld a, [$3c4f]
    ld d, b
    or $4e

    db $28, $4a

    cp d
    ld c, c
    ld h, l
    ld d, h
    ld l, e
    ld d, h

    db $b0, $46

    ld h, $46

    db $16, $46

    inc d
    ld b, a
    ld a, [hl-]
    ld c, b

    db $b8, $48

    inc h
    ld c, c

    db $89, $44, $94, $49

    and a
    ld c, c
    sbc b
    ld d, h

    db $2d, $5a, $85, $59, $1f, $46, $f2, $44

    ld [hl+], a
    ld b, l
    ld d, b
    ld b, l
    ld d, b
    ld e, h
    and l
    ld e, h

    db $77, $5c

    ld c, l
    ld b, d

    db $5b, $5b, $11, $54

    dec d
    ld d, h
    ld c, [hl]
    ld d, h

    db $0a, $54

    push af
    ld d, e

    db $12, $48, $2c, $48, $33, $48, $79, $46, $91, $46

    db $76
    ld h, c
    cpl
    ld e, l

    db $d3, $45, $95, $53

    sbc h
    ld d, e
    xor h
    ld d, e
    or d
    ld d, e

    db $4b, $53

    db $c4
    ld d, e

Call_002_4078:
    push af
    push bc
    push de
    push hl
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    ld hl, $4162
    ld de, $a020
    call Call_002_427a
    ld hl, $a041
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $02
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $02
    ld hl, $a061
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $04
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $02
    ld hl, $a081
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $06
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $02
    ld hl, $a0a1
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $08
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $04
    ld hl, $a0c1
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $0c
    inc hl
    ld [hl], $80
    inc hl
    ld [hl], $02
    ld hl, $a0e1
    ld [hl], $00
    inc hl
    ld [hl], $80
    inc hl
    ld [hl], $0e
    inc hl
    ld [hl], $80
    inc hl
    ld [hl], $02
    ld hl, $a101
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $11
    inc hl
    ld [hl], $80
    inc hl
    ld [hl], $02
    ld hl, $a121
    ld [hl], $00
    inc hl
    ld [hl], $80
    inc hl
    ld [hl], $13
    inc hl
    ld [hl], $80
    inc hl
    ld [hl], $02
    ld hl, $a141
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $18
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $02
    ld hl, $a161
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $1a
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $02
    ld hl, $a181
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $1c
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $02
    ld hl, $a1a1
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $1e
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $02
    ld hl, $a032
    ld [hl], $0c
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $43, $41, $4d, $45, $4c, $4f, $54, $20, $47, $41, $4d, $45, $42, $4f, $59, $00

Call_002_4172:
    ld e, $00

jr_002_4174:
    ld a, e
    ldh [$97], a
    ld [$4000], a
    ld bc, $0200
    ld hl, $a000

jr_002_4180:
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
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_002_4180

    inc e
    ld a, e
    cp $01
    jr c, jr_002_4174

    ret


Call_002_419d:
    push af
    push de
    push bc
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    ld hl, $0000
    ld de, $a032
    ld bc, $018e

jr_002_41b0:
    ld a, [de]
    inc de
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    dec bc
    ld a, b
    or c
    jr nz, jr_002_41b0

    pop bc
    pop de
    pop af
    ret


Call_002_41c1:
    push af
    push bc
    push de
    push hl
    call Call_002_419d
    ld a, l
    ld [$a030], a
    ld a, h
    ld [$a031], a
    ld hl, $a020
    ld de, $b620
    ld bc, $01a0
    call MemCopy
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_002_41e1:
    push hl
    push de
    call Call_002_419d
    push hl
    ld hl, $a030
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    call Call_000_08ac
    ld a, h
    or l
    pop de
    pop hl
    ret


    push hl
    push de
    push bc
    ld a, $0a
    ld [$0000], a
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    ld hl, $a020
    ld de, $4162
    call Call_002_4267
    jr nz, jr_002_4218

    call Call_002_41e1
    jr nz, jr_002_4218

    xor a
    jr jr_002_4243

jr_002_4218:
    ld hl, $b620
    ld de, $a020
    ld bc, $01a0
    call MemCopy
    ld hl, $a020
    ld de, $4162
    call Call_002_4267
    jr nz, jr_002_4238

    call Call_002_41e1
    jr nz, jr_002_4238

    ld a, $01
    jr jr_002_4243

jr_002_4238:
    call Call_002_4172
    call Call_002_4078
    call Call_002_41c1
    ld a, $ff

jr_002_4243:
    push af
    xor a
    ld [$0000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


    ld a, $0a
    ld [$0000], a
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    call Call_002_4172
    call Call_002_4078
    call Call_002_41c1
    xor a
    ld [$0000], a
    ret


Call_002_4267:
    push de
    push hl

jr_002_4269:
    ld a, [de]
    cp [hl]
    jr nz, jr_002_4274

    or a
    jr z, jr_002_4276

    inc de
    inc hl
    jr jr_002_4269

jr_002_4274:
    ld a, $01

jr_002_4276:
    pop hl
    pop de
    or a
    ret


Call_002_427a:
    push af
    push de
    push hl

jr_002_427d:
    ld a, [hl]
    ld [de], a
    or a
    jr z, jr_002_4286

    inc hl
    inc de
    jr jr_002_427d

jr_002_4286:
    pop hl
    pop de
    pop af
    ret


Call_002_428a:
    push hl
    add a
    add a
    add a
    add a
    add a
    ld hl, $a040
    ld b, $00
    ld c, a
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ret


Call_002_429b:
    push hl
    push de
    push bc
    ld a, $0a
    ld [$0000], a
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    call Call_002_4078
    push de
    ld a, b
    call Call_002_428a
    push bc
    push hl
    ld hl, $0001
    add hl, bc
    ld c, [hl]
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $a000
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, c
    ldh [$97], a
    ld [$4000], a
    push hl
    push bc

jr_002_42d0:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_002_42d0

    pop bc
    pop hl
    ld de, $0000

jr_002_42dd:
    ld a, [hl+]
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_002_42dd

    ld a, $00
    ldh [$97], a
    ld [$4000], a
    pop bc
    ld a, $01
    ld [bc], a
    ld hl, $0006
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop de
    ld c, $18
    ld a, d
    or e
    jr z, jr_002_430b

jr_002_4303:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_4303

    jr jr_002_430f

jr_002_430b:
    ld [hl+], a
    dec c
    jr nz, jr_002_430b

jr_002_430f:
    call Call_002_41c1
    xor a
    push af
    xor a
    ld [$0000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_002_431d:
    push hl
    push de
    push bc
    ld a, $0a
    ld [$0000], a
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    call Call_002_4078
    ld a, b
    call Call_002_428a
    xor a
    ld [bc], a
    ld de, $0000
    ld hl, $0006
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld c, $18
    xor a

jr_002_4343:
    ld [hl+], a
    dec c
    jr nz, jr_002_4343

    call Call_002_41c1
    xor a
    push af
    xor a
    ld [$0000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_002_4355:
    push hl
    push de
    push bc
    ld a, $0a
    ld [$0000], a
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    ld a, b
    call Call_002_428a
    ld a, [bc]
    or a
    jp nz, Jump_002_4372

    ld a, $fe
    jp Jump_002_43c2


Jump_002_4372:
    push bc
    push hl
    ld hl, $0001
    add hl, bc
    ld c, [hl]
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $a000
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, c
    ldh [$97], a
    ld [$4000], a
    push hl
    push bc

jr_002_4390:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_002_4390

    pop bc
    pop hl
    ld de, $0000

jr_002_439d:
    ld a, [hl+]
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_002_439d

    ld a, $00
    ldh [$97], a
    ld [$4000], a
    pop bc
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    xor d
    ld h, a
    ld a, l
    xor e
    or h
    jr z, jr_002_43c2

    ld a, $ff

Jump_002_43c2:
jr_002_43c2:
    push af
    xor a
    ld [$0000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_002_43cc:
    push hl
    push de
    push bc
    ld a, $0a
    ld [$0000], a
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    ld a, b
    call Call_002_428a
    ld a, [bc]
    or a
    jp nz, Jump_002_43e9

    ld a, $fe
    jp Jump_002_444a


Jump_002_43e9:
    push bc
    push hl
    ld hl, $0001
    add hl, bc
    ld c, [hl]
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $a000
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, c
    ldh [$97], a
    ld [$4000], a
    push de
    push bc

jr_002_4407:
    ld a, [de]
    cp [hl]
    jr z, jr_002_4419

    ld a, $00
    ldh [$97], a
    ld [$4000], a
    add sp, $06
    ld a, $fd
    jp Jump_002_444a


jr_002_4419:
    inc hl
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_002_4407

    pop bc
    pop hl
    ld de, $0000

jr_002_4425:
    ld a, [hl+]
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_002_4425

    ld a, $00
    ldh [$97], a
    ld [$4000], a
    pop bc
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    xor d
    ld h, a
    ld a, l
    xor e
    or h
    jr z, jr_002_444a

    ld a, $ff

Jump_002_444a:
jr_002_444a:
    push af
    xor a
    ld [$0000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_002_4454:
    push hl
    push de
    push bc
    ld a, $0a
    ld [$0000], a
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    ld a, b
    call Call_002_428a
    ld a, [bc]
    or a
    jp nz, Jump_002_4471

    ld a, $fe
    jp Jump_002_447f


Jump_002_4471:
    ld a, $08
    add c
    ld e, a
    ld d, b
    ld c, $18

jr_002_4478:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_002_4478

    xor a

Jump_002_447f:
    push af
    xor a
    ld [$0000], a
    pop af
    pop bc
    pop de
    pop hl
    ret


    ld a, [$c2a5]
    cp $03
    ret nc

    call Call_000_2cc3
    ld hl, $6392
    ld de, $c94e
    ld bc, $000e
    call MemCopy
    rst $18

    db $0e, $02

    ld hl, $63a0
    ld de, $c600
    ld bc, $0018
    call MemCopy
    ld a, [$c2a5]
    and $03
    ld b, a
    ld hl, $c800
    ld de, $c600
    call Call_002_429b
    or a
    ret nz

    ld a, [$c2a5]
    and $03
    ld b, a
    ld hl, $c800
    call Call_002_43cc
    ld a, [$c2a5]
    and $03
    add $08
    ld b, a
    ld hl, $c800
    ld de, $c600
    call Call_002_429b
    ld a, [$c2a5]
    and $03
    add $08
    ld b, a
    ld hl, $c800
    call Call_002_43cc
    ret


    db $80

    ld b, b

    db $20

    db $10

    db $08, $04, $02, $01

Call_002_44f2:
    push hl
    push de
    push bc
    ld b, a
    ld a, $0a
    ld [$0000], a
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    ld hl, $44ea
    ld a, e
    rlca
    rlca
    rlca
    add l
    ld l, a
    jr nc, jr_002_450e

    inc h

jr_002_450e:
    ld a, [hl]
    ld hl, $a038
    ld e, d
    ld d, $00
    add hl, de
    and [hl]
    push af
    xor a
    ld [$0000], a
    pop af
    ld a, b
    pop bc
    pop de
    pop hl
    ret


    push hl
    push af
    ld a, $0a
    ld [$0000], a
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    ld hl, $44ea
    ld a, e
    rlca
    rlca
    rlca
    add l
    ld l, a
    jr nc, jr_002_453c

    inc h

jr_002_453c:
    ld a, [hl]
    ld hl, $a038
    ld e, d
    ld d, $00
    add hl, de
    or [hl]
    ld [hl], a
    call Call_002_41c1
    xor a
    ld [$0000], a
    pop af
    pop hl
    ret


    push hl
    push af
    ld a, $0a
    ld [$0000], a
    ld a, $00
    ldh [$97], a
    ld [$4000], a
    ld hl, $44ea
    ld a, e
    rlca
    rlca
    rlca
    add l
    ld l, a
    jr nc, jr_002_456a

    inc h

jr_002_456a:
    ld a, [hl]
    ld hl, $a038
    ld e, d
    ld d, $00
    add hl, de
    cpl
    and [hl]
    ld [hl], a
    call Call_002_41c1
    xor a
    ld [$0000], a
    pop af
    pop hl
    ret


Call_002_457f:
    ld hl, $d000
    call Call_002_4355
    cp $ff
    ret nz

    push bc
    ld a, $08
    add b
    ld b, $08
    call Call_002_4355
    or a
    jr nz, jr_002_45a5

    ld hl, $d400
    call Call_002_4454
    pop bc
    ld hl, $d000
    ld de, $d400
    call Call_002_429b
    ret


jr_002_45a5:
    pop bc
    call Call_002_431d
    ret


Call_002_45aa:
    ld hl, $d000
    call Call_002_4355
    cp $ff
    ret nz

    call Call_002_431d
    ret


Call_002_45b7:
    ld hl, $d000
    call Call_002_4355
    or a
    ret z

    push bc
    ld hl, $d000
    ld c, $28
    call Call_000_03a7
    pop bc
    ld hl, $d000
    ld de, $0000
    call Call_002_429b
    ret


    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld b, $00
    call Call_002_457f
    ld b, $01
    call Call_002_457f
    ld b, $02
    call Call_002_457f
    ld b, $03
    call Call_002_45aa
    ld b, $04
    call Call_002_45b7
    ld b, $05
    call Call_002_45b7
    ld b, $06
    call Call_002_45b7
    ld b, $07
    call Call_002_45b7
    ret


Call_002_4602:
    push de
    ld hl, $d680
    ld d, $00
    ld e, a
    ld a, [$c835]
    or a
    jr z, jr_002_4613

    ld a, $40
    add e
    ld e, a

jr_002_4613:
    add hl, de
    pop de
    ret


    ld hl, $d680
    ld c, $08
    call Call_000_03a7
    ret


    ld hl, $d5f8
    call Call_002_463e
    ret


    ld a, $20
    rst $18
    inc d
    db $10
    ld a, [hl]
    cp $04
    ret nc

    and $03
    swap a
    push af
    xor a
    call Call_002_4602
    pop af
    add l
    ld l, a
    jr nc, jr_002_463e

    inc h

Call_002_463e:
jr_002_463e:
    ld de, $d400
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
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    ld a, [hl+]
    ld [$d418], a
    ld a, [hl+]
    ld [$d419], a
    ld a, [hl+]
    ld [$d329], a
    ld a, [hl+]
    ld [$d32a], a
    ld [$d32b], a
    ld a, [hl+]
    ld [$d4d8], a
    ld a, [hl+]
    ld [$d4d9], a
    ld a, [hl+]
    ld [$d4da], a
    ret


    ld hl, $d5f8
    ld de, $d400
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
    ret


    ld hl, $d5f8
    ld de, $d400
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
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $d5f8
    call Call_002_46e3
    pop hl
    pop de
    pop bc
    pop af
    ld a, [$c878]
    or a
    ret nz

    ld a, $13
    rst $18

    db $14, $10

    ld a, [hl]
    or a
    ret nz

    ld a, $20
    rst $18

    db $14, $10

    ld a, [hl]
    cp $04
    ret nc

    and $03
    swap a
    push af
    xor a
    call Call_002_4602
    pop af
    add l
    ld l, a
    jr nc, jr_002_46e3

    inc h

Call_002_46e3:
jr_002_46e3:
    ld de, $d400
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
    ld de, $d418
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, [$d329]
    ld [hl+], a
    ld a, [$d32a]
    ld [hl+], a
    ld a, [$d450]
    ld [hl+], a
    ld a, [$d44f]
    ld [hl+], a
    ld a, [$d44d]
    ld [hl+], a
    ret


    ld a, [$c834]
    cp $01
    jr z, jr_002_4724

    cp $02
    jr z, jr_002_4724

    cp $03
    jr z, jr_002_4724

    ret


jr_002_4724:
    ld a, $13
    rst $18
    inc d
    db $10
    ld a, [hl]
    or a
    ret nz

    ld a, [$c878]
    or a
    ret nz

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $04
    add b
    ld b, a
    ld hl, $d080
    call Call_002_4355
    or a
    jr z, jr_002_474c

    ld hl, $d080
    ld c, $28
    call Call_000_03a7

jr_002_474c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c600
    ld c, $08
    call Call_000_03a7
    ld a, $20
    rst $18
    inc d
    db $10
    ld a, [hl]
    push af
    xor a
    rst $18
    inc d
    db $10
    ld de, $c600
    ld c, $02
    call Call_000_03eb
    ld hl, $c620
    ld a, [$c836]
    ld [hl+], a
    ld a, [$c837]
    ld [hl+], a
    ld a, [$c815]
    ld [hl+], a
    ld a, [$c816]
    ld [hl+], a
    ld a, [$c838]
    ld [hl+], a
    pop af
    ld [hl+], a
    xor a
    call Call_002_4602
    ld de, $c640
    ld c, $04
    call Call_000_03eb
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c600
    ld de, $d000
    ld c, $08
    call Call_000_03eb
    ld hl, $d000
    ld de, $0000
    call Call_002_429b
    or a
    jr nz, jr_002_47b5

    ld hl, $d000
    call Call_002_43cc

jr_002_47b5:
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ret


Call_002_47be:
    push hl
    ld hl, $ff94
    xor a
    inc a
    bit 0, [hl]
    jr nz, jr_002_47ec

    inc a
    bit 1, [hl]
    jr nz, jr_002_47ec

    inc a
    bit 3, [hl]
    jr nz, jr_002_47ec

    inc a
    bit 2, [hl]
    jr nz, jr_002_47ec

    inc a
    bit 6, [hl]
    jr nz, jr_002_47ec

    inc a
    bit 7, [hl]
    jr nz, jr_002_47ec

    inc a
    bit 5, [hl]
    jr nz, jr_002_47ec

    inc a
    bit 4, [hl]
    jr nz, jr_002_47ec

    xor a

jr_002_47ec:
    pop hl

Call_002_47ed:
    or a
    ret z

    push af
    push hl
    ld hl, $4802
    and $0f
    add l
    ld l, a
    jr nc, jr_002_47fb

    inc h

jr_002_47fb:
    ld a, [hl]
    pop hl
    call Call_000_2c19
    pop af
    ret


    ld b, b
    ld e, a
    ld d, h
    ld h, d
    ld h, l
    ld h, b
    ld h, c
    ld e, [hl]
    ld e, d
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b

    push af
    ld a, [$c33f]
    or a
    jr z, jr_002_482a

    ldh a, [$c0]
    and $f0
    cp $10
    jr nz, jr_002_482a

    ldh a, [$c0]
    and $0f
    jr z, jr_002_482a

    call Call_002_47ed

jr_002_482a:
    pop af
    ret


    push af
    ld a, $21
    ldh [$c1], a
    pop af
    ret


    push af
    ld a, $20
    ldh [$c1], a
    pop af
    ret


    call Call_000_2e3b

jr_002_483d:
    call Call_000_2e3b
    ldh a, [$c0]
    cp $2e
    jp z, Jump_002_48b2

    and $fe
    cp $20
    jr nz, jr_002_483d

    call Call_000_2e3b

jr_002_4850:
    call Call_000_2e3b
    ldh a, [$c0]
    cp $2e
    jp z, Jump_002_48b2

    cp $21
    jr nz, jr_002_4869

    call Call_002_47be
    and $0f
    or $10
    ldh [$c1], a
    jr jr_002_486d

jr_002_4869:
    ld a, $10
    ldh [$c1], a

jr_002_486d:
    ldh a, [$c0]
    cp $2f
    jr nz, jr_002_4850

    ld hl, $cb40
    ld de, $d400
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
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$d418], a
    ld a, [hl+]
    ld [$d419], a
    ld a, [hl+]
    ld [$d329], a
    ld a, [hl+]
    ld [$d32a], a
    ld [$d32b], a
    ld a, [hl+]
    ld [$d4d8], a
    ld a, [hl+]
    ld [$d4d9], a
    ld a, [hl+]
    ld [$d4da], a
    ld a, [hl+]
    ld [$d4db], a
    ld a, $20
    ldh [$c1], a
    ret


Jump_002_48b2:
    ld a, $80
    ld [$d4db], a
    ret


    ld a, $13
    push de
    ld hl, $c880
    ld d, $00
    ld e, a
    ld a, [$c835]
    or a
    jr nz, jr_002_48cb

    ld a, $40
    add e
    ld e, a

jr_002_48cb:
    add hl, de
    pop de
    ld a, [hl]
    cp $03
    ret nz

jr_002_48d1:
    ldh a, [$c0]
    and $f0
    cp $10
    jr z, jr_002_48de

    call Call_000_2e3b
    jr jr_002_48d1

jr_002_48de:
    call Call_000_2e3b
    xor a
    ld [$cb4f], a
    ld hl, $cb00
    ld de, $d400
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
    ld de, $d418
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, [$d329]
    ld [hl+], a
    ld a, [$d32a]
    ld [hl+], a
    ld a, [$d450]
    ld [hl+], a
    ld a, [$d44f]
    ld [hl+], a
    ld a, [$d44d]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $2f
    ldh [$c9], a
    ld a, $10
    call Call_000_3081
    ret


    ld b, a
    ld a, $13
    push de
    ld hl, $c880
    ld d, $00
    ld e, a
    ld a, [$c835]
    or a
    jr nz, jr_002_4938

    ld a, $40
    add e
    ld e, a

jr_002_4938:
    add hl, de
    pop de
    ld a, [hl]
    cp $03
    ret nz

jr_002_493e:
    ldh a, [$c0]
    and $f0
    cp $10
    jr z, jr_002_494b

    call Call_000_2e3b
    jr jr_002_493e

jr_002_494b:
    call Call_000_2e3b
    xor a
    ld [$cb4f], a
    ld hl, $cb00
    ld de, $d400
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
    ld de, $d418
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, [$d329]
    ld [hl+], a
    ld a, [$d32a]
    ld [hl+], a
    ld a, [$d450]
    ld [hl+], a
    ld a, [$d44f]
    ld [hl+], a
    ld a, [$d44d]
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $2f
    ldh [$c9], a
    ld a, $10
    call Call_000_3081
    call Call_000_30eb
    ret


    ld hl, $c880
    bit 0, c
    jr z, jr_002_499e

    ld hl, $c8c0

jr_002_499e:
    ld a, $13
    add l
    ld l, a
    jr nc, jr_002_49a5

    inc h

jr_002_49a5:
    ld [hl], b
    ret


    ld hl, $c880
    bit 0, c
    jr z, jr_002_49b1

    ld hl, $c8c0

jr_002_49b1:
    ld a, $11
    add l
    ld l, a
    jr nc, jr_002_49b8

    inc h

jr_002_49b8:
    ld [hl], b
    ret


    ld a, b
    push af
    ld de, $c880
    bit 0, c
    jr z, jr_002_49c6

    ld de, $c8c0

jr_002_49c6:
    pop af
    cp $ff
    ret z

    cp $82
    ret z

    cp $81
    ret z

    cp $80
    jr nz, jr_002_49e1

    ld a, [$c2a5]
    cp $0f
    ret z

    ld hl, $c800
    call Call_002_4a0b
    ret


jr_002_49e1:
    and $0f
    add a
    ld hl, $4b1d
    add l
    ld l, a
    jr nc, jr_002_49ec

    inc h

jr_002_49ec:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_002_4a0b
    ld hl, $0010
    add hl, de
    ld a, [hl]
    ld hl, $0043
    add l
    ld l, a
    jr nc, jr_002_49ff

    inc h

jr_002_49ff:
    ldh a, [$96]
    push af
    rst $18
    ld e, h
    dec b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_002_4a0b:
    push de
    ld c, $14

jr_002_4a0e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_002_4a0e

    inc hl
    inc de
    inc hl
    inc de
    inc hl
    inc de
    inc hl
    inc de
    inc hl
    inc de
    ld c, $07

jr_002_4a20:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_002_4a20

    pop de
    ret


Call_002_4a28:
    ld a, b
    ld hl, $c880
    bit 0, c
    jr z, jr_002_4a33

    ld hl, $c8c0

jr_002_4a33:
    cp $ff
    jr z, jr_002_4aac

    cp $82
    jr z, jr_002_4a6c

    cp $81
    jr z, jr_002_4a8c

    cp $80
    jr nz, jr_002_4aba

    ld a, [$c2a5]
    cp $0f
    jr z, jr_002_4a62

    push hl
    ld c, $04
    call Call_000_03a7
    pop de
    ld hl, $0028
    add hl, de
    ld a, [$c825]
    ld [hl], a
    ld hl, $c800
    ld c, $02
    call Call_000_03eb
    ret


jr_002_4a62:
    ld a, $28
    add l
    ld l, a
    jr nc, jr_002_4a69

    inc h

jr_002_4a69:
    ld [hl], $06
    ret


jr_002_4a6c:
    push hl
    ld c, $04
    call Call_000_03a7
    pop de
    ld hl, $0028
    add hl, de
    ld a, [$c825]
    ld [hl], a
    push de
    ld hl, $cb40
    ld c, $02
    call Call_000_03eb
    pop de
    ld hl, $0013
    add hl, de
    ld [hl], $03
    ret


jr_002_4a8c:
    push hl
    ld c, $04
    call Call_000_03a7
    pop de
    ld hl, $0028
    add hl, de
    ld a, [$c825]
    ld [hl], a
    push de
    ld hl, $c600
    ld c, $02
    call Call_000_03eb
    pop de
    ld hl, $0013
    add hl, de
    ld [hl], $02
    ret


jr_002_4aac:
    push hl
    ld c, $04
    call Call_000_03a7
    pop de
    ld hl, $0010
    add hl, de
    ld [hl], $ff
    ret


jr_002_4aba:
    push af
    push hl
    ld c, $04
    call Call_000_03a7
    pop de
    pop af
    push af
    push de
    and $0f
    add a
    ld hl, $4b1d
    add l
    ld l, a
    jr nc, jr_002_4ad0

    inc h

jr_002_4ad0:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push de
    ld c, $02
    call Call_000_03eb
    pop de
    ld hl, $0028
    add hl, de
    ld [hl], $06
    ld hl, $0010
    add hl, de
    ld a, [hl]
    ld hl, $0043
    add l
    ld l, a
    jr nc, jr_002_4aed

    inc h

jr_002_4aed:
    ldh a, [$96]
    push af
    rst $18

    db $5c, $05

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop af
    bit 6, a
    ret z

    ld hl, $0013
    add hl, de
    ld [hl], $02
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c600
    ld de, $d680
    ld c, $04
    call Call_000_03eb
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    dec a
    ld c, e
    ld e, l
    ld c, e
    ld a, l
    ld c, e
    sbc l
    ld c, e

    db $bd, $4b

    db $dd
    ld c, e
    db $fd
    ld c, e
    dec e
    ld c, h

    db $3d, $4c, $5d, $4c

    ld a, l
    ld c, h
    sbc l
    ld c, h
    cp l
    ld c, h
    db $dd
    ld c, h
    db $fd
    ld c, h
    dec e
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    call $fe00
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $08
    nop
    cp $00
    ld [bc], a
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
    ld [bc], a
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jp nc, $fe00

    rst $38
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
    inc bc
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jp nc, $fe00

    ld [bc], a
    db $01
    db $01

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $04, $00, $14, $01, $00, $00, $00, $00, $00, $00, $c8, $00, $ff, $01, $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, $01
    nop
    nop
    nop
    nop
    nop
    nop
    call c, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr z, jr_002_4c12

    nop

jr_002_4c12:
    nop
    nop
    nop
    nop
    nop
    ld a, [$0300]
    ld bc, $fefe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [hl-], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld bc, $02ff
    ld [bc], a

    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $08, $00, $50, $01, $00, $00, $00, $00, $00, $00, $0e, $01, $02, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $09, $00, $0a, $01, $00, $00, $00, $00, $00, $00, $dc, $00, $00, $ff, $01, $01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld a, [$0100]
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
    nop
    nop
    nop
    nop
    dec bc
    nop
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    jp nc, $0000

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    call $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ret z

    nop
    cp $00
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
    rrca
    nop
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ret z

    nop
    cp $00
    ld [bc], a
    ld [bc], a

    db $45, $4d

    add d
    ld c, l
    cp a
    ld c, l

    db $fc, $4d, $ca, $00, $de, $00

    ld a, [c]
    nop
    ld a, [bc]
    ld bc, $011e
    dec l
    ld bc, $013a
    ld b, a
    ld bc, $0150
    ld e, b
    ld bc, $015e
    ld h, e
    ld bc, $0166
    ld l, b
    db $01

    db $04, $01, $fe

    ei
    rst $30
    ld a, [c]
    db $ec
    push hl
    add c

    db $04, $fc

    db $f4
    db $ea
    add c

    db $0e, $0b, $05, $fe

    db $fc
    ld hl, sp-$0d
    add sp, -$7f
    inc b
    inc b
    inc bc

    db $02

    ld bc, $ff00
    db $fd
    db $fc

    db $00

    ret z

    nop
    db $db
    nop
    db $ed
    nop
    nop
    ld bc, $0111
    ld hl, $3101
    ld bc, $0140
    ld c, d
    ld bc, $0152
    ld e, b
    ld bc, $015c
    ld e, [hl]
    ld bc, $0160
    ld b, $04
    ld [bc], a
    rst $38
    db $fc
    ld hl, sp-$0d
    db $ed
    add c
    db $fd
    or $ec
    ldh [$81], a
    ld b, $fe
    db $fc
    ld hl, sp-$0d
    db $ed
    and $de
    add c
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff00
    cp $fd
    db $fc
    ld [bc], a
    call z, $df00
    nop
    ldh a, [rP1]
    ld [bc], a
    ld bc, $0114
    inc h
    ld bc, $0132
    ld a, $01
    ld c, b
    ld bc, $0150
    ld d, [hl]
    ld bc, $015a
    ld e, h
    ld bc, $015e
    dec b
    inc bc
    ld bc, $fbfe
    rst $30
    pop af
    ld [$0181], a
    ld a, [$e5f0]
    add c
    rlca
    ld bc, $fcfe
    ld hl, sp-$0e
    ld [$81e0], a
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $ff00
    db $fd
    db $fc
    db $01

    db $cd, $00, $e2, $00

    or $00
    ld b, $01
    jr @+$03

    jr z, @+$03

    ld [hl], $01
    ld b, e
    ld bc, HeaderMaskROMVersion
    ld d, h
    ld bc, $015a
    ld e, [hl]
    ld bc, $0161
    ld h, e
    db $01

    db $03, $01, $fd

    ld sp, hl
    db $f4
    xor $e7
    rst $18
    add c

    db $06, $01, $f8

    db $ec
    add c

    db $0a, $04, $ff

    db $fd
    ld sp, hl
    db $f4
    xor $e7
    add c
    inc b
    inc bc

    db $02

    ld bc, $ff00
    cp $fd
    db $fc

    db $00

Call_002_4e39:
    ld bc, $c800
    ret


    ld hl, $c800
    ld c, $20
    call Call_000_03a7
    ld a, $00
    ld d, $00
    call Call_002_4e82
    ld hl, $c450
    ld [hl], $00
    ld hl, $c46a
    ld [hl], $02
    rst $28

    db $c0, $01

    rst $20

    db $e0, $01

    ret


Call_002_4e5d:
    push af
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    and $03
    add a
    ld hl, $4d3d
    add l
    ld l, a
    jr nc, jr_002_4e6e

    inc h

jr_002_4e6e:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    add l
    ld l, a
    jr nc, jr_002_4e77

    inc h

jr_002_4e77:
    ret


Call_002_4e78:
    bit 7, l
    jr nz, jr_002_4e7f

    ld h, $00
    ret


jr_002_4e7f:
    ld h, $ff
    ret


Call_002_4e82:
    push af
    ld e, d
    ld a, d
    and $03
    ld d, a
    pop af
    call Call_002_4e39
    push bc
    ld l, c
    ld h, b
    ld c, $04
    call Call_000_03a7
    pop bc
    ld hl, $0010
    add hl, bc
    ld [hl], e
    ld a, d
    ld hl, $0043
    add l
    ld l, a
    jr nc, jr_002_4ea3

    inc h

jr_002_4ea3:
    ld de, $c800
    rst $18

    db $5c, $05

    ld hl, $0012
    add hl, bc
    ld [hl], $00
    ld hl, $0025
    add hl, bc
    ld [hl], $06
    ld a, $3c
    call Call_002_4e5d
    ld a, [hl]
    cp $02
    jr c, jr_002_4ec3

    call Call_000_0a61
    ld a, h

jr_002_4ec3:
    and $01
    ld d, a
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    and $fe
    or d
    ld [hl], a
    ld d, $ff
    call Call_002_4ffa
    ld a, $01
    ld [$c82d], a
    ret


Call_002_4eda:
    push hl
    ld de, $ff88
    add hl, de
    bit 7, h
    pop hl
    jr z, jr_002_4ef0

    push hl
    ld de, $0078
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_002_4ef0

    ld d, l
    ret


jr_002_4ef0:
    ld d, $78
    ret


    ld d, $88
    ret


Call_002_4ef6:
    call Call_002_4e39
    ld hl, $0012
    add hl, bc
    dec [hl]
    call Call_002_4f07
    ld hl, $0012
    add hl, bc
    inc [hl]
    ret


Call_002_4f07:
    ld hl, $0020
    add hl, bc
    ld a, [hl]
    and $07
    push af
    ld a, [hl]
    srl a
    srl a
    srl a
    push af
    ld a, $00
    call Call_002_4e5d
    pop af
    add a
    add l
    ld l, a
    jr nc, jr_002_4f23

    inc h

jr_002_4f23:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop af
    call Call_000_08b9
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    add hl, de
    ld e, l
    ld d, h
    ld hl, $001a
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $0012
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $0021
    add hl, bc
    ld l, [hl]
    call Call_002_4e78
    ld a, $03
    call Call_000_0bb5
    call Call_000_08ac
    call Call_002_4eda
    ld a, $1c
    call Call_002_4e5d
    ld e, $00

jr_002_4f68:
    ld a, d
    sub [hl]
    bit 7, a
    jr z, jr_002_4f72

    inc e
    inc hl
    jr jr_002_4f68

jr_002_4f72:
    ld hl, $001c
    add hl, bc
    ld a, e
    sub $04
    ld [hl], a
    ld hl, $0012
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $0022
    add hl, bc
    ld l, [hl]
    call Call_002_4e78
    ld a, $04
    call Call_000_0bb5
    call Call_000_08ac
    call Call_002_4eda
    ld a, $25
    call Call_002_4e5d
    ld e, $00

jr_002_4f9b:
    ld a, d
    sub [hl]
    bit 7, a
    jr z, jr_002_4fa5

    inc e
    inc hl
    jr jr_002_4f9b

jr_002_4fa5:
    ld hl, $0019
    add hl, bc
    bit 0, [hl]
    jr z, jr_002_4fb1

    ld a, e
    cpl
    inc a
    ld e, a

jr_002_4fb1:
    ld hl, $001d
    add hl, bc
    ld [hl], e
    ld hl, $0012
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $0024
    add hl, bc
    ld l, [hl]
    call Call_002_4e78
    ld a, $05
    call Call_000_0bb5
    call Call_000_08ac
    call Call_002_4eda
    ld a, $2a
    call Call_002_4e5d
    ld e, $00

jr_002_4fd7:
    ld a, d
    sub [hl]
    bit 7, a
    jr z, jr_002_4fe1

    inc e
    inc hl
    jr jr_002_4fd7

jr_002_4fe1:
    ld hl, $001f
    add hl, bc
    ld a, e
    sub $04
    cpl
    inc a
    ld [hl], a
    ld a, $33
    call Call_002_4e5d
    ld d, $00
    add hl, de
    ld d, [hl]
    ld hl, $001e
    add hl, bc
    ld [hl], d
    ret


Call_002_4ffa:
    call Call_002_4e39

Call_002_4ffd:
    ld hl, $0012
    add hl, bc
    ld a, [hl]
    cp $63
    jp nc, Jump_002_503b

    ld a, d
    or a
    jr nz, jr_002_5012

    ld hl, $0020
    add hl, bc
    inc [hl]
    jr jr_002_5033

jr_002_5012:
    cp $01
    jr nz, jr_002_501d

    ld hl, $0021
    add hl, bc
    inc [hl]
    jr jr_002_5033

jr_002_501d:
    cp $02
    jr nz, jr_002_5028

    ld hl, $0022
    add hl, bc
    inc [hl]
    jr jr_002_5033

jr_002_5028:
    cp $03
    jr nz, jr_002_5033

    ld hl, $0024
    add hl, bc
    inc [hl]
    jr jr_002_5033

jr_002_5033:
    call Call_002_4f07
    ld hl, $0012
    add hl, bc
    inc [hl]

Jump_002_503b:
    ret


    ld e, a
    ld a, l
    ldh [$b0], a
    ld a, h
    ldh [$b1], a
    add sp, -$30
    ld hl, sp+$00
    ld a, l
    ldh [$b2], a
    ld a, h
    ldh [$b3], a
    ld a, e
    call Call_002_4e39
    push bc
    push de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ld bc, $0003
    call Call_000_03eb
    pop de
    pop bc
    call Call_002_4ffd
    ld hl, $ffb2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $001a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $001a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    call Call_000_08ac
    ld d, l
    ld hl, $ffb0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld a, l
    ldh [$b0], a
    ld a, h
    ldh [$b1], a
    ld hl, $ffb2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $001c
    add hl, de
    ld d, [hl]
    ld hl, $001c
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld hl, $ffb0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld [hl], d
    ld a, l
    ldh [$b0], a
    ld a, h
    ldh [$b1], a
    ld hl, $ffb2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $001d
    add hl, de
    ld d, [hl]
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld hl, $ffb0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld [hl], d
    ld a, l
    ldh [$b0], a
    ld a, h
    ldh [$b1], a
    ld hl, $ffb2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $001e
    add hl, de
    ld d, [hl]
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld hl, $ffb0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld [hl], d
    ld a, l
    ldh [$b0], a
    ld a, h
    ldh [$b1], a
    ld hl, $ffb2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $001f
    add hl, de
    ld d, [hl]
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld hl, $ffb0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld [hl], d
    ld a, l
    ldh [$b0], a
    ld a, h
    ldh [$b1], a
    ld hl, $ffb2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, c
    ld d, b
    ld bc, $0003
    call Call_000_03eb
    add sp, $30
    ret


Call_002_511a:
    or a
    jr z, jr_002_513d

    push af
    push bc
    push de
    push hl
    ld hl, $5171
    add a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_0cb5
    ldh a, [$a9]
    bit 7, a
    jr z, jr_002_5139

    inc hl

jr_002_5139:
    pop de
    pop bc
    pop af
    ret


jr_002_513d:
    push af
    push bc
    push de
    bit 1, b
    jr z, jr_002_515c

    push hl
    ld de, $1999
    call Call_000_0cb5
    pop de
    add hl, de
    push hl
    ld de, $fe70
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_002_516d

    ld hl, $0190
    jr jr_002_516d

jr_002_515c:
    bit 2, b
    jr z, jr_002_516d

    ld de, $f333
    call Call_000_0cb5
    ldh a, [$a9]
    bit 7, a
    jr z, jr_002_516d

    inc hl

jr_002_516d:
    pop de
    pop bc
    pop af
    ret


    nop
    nop

    db $8c, $ee, $17, $dd, $a3, $cb, $00, $c0, $5d, $b4, $ba, $a8, $17, $9d, $74, $91
    db $d1, $85, $2f, $7a, $ba, $68, $74, $51

Call_002_518b:
    cp $0d
    jr z, jr_002_51b8

    push af
    push bc
    push de
    push hl
    ld hl, $51dc
    add a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, l
    add $08
    and $0f
    ld hl, $51bc
    add a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    pop bc
    pop af
    ret


jr_002_51b8:
    ld hl, $0000

jr_002_51bb:
    ret


    jr z, jr_002_51bb

    jr z, @-$01

    jr z, @-$01

    jr z, @-$01

    jr z, @-$01

    sbc $fd

    db $94, $fe

    ld c, d
    rst $38

    db $00, $00

    or [hl]
    nop

    db $11, $01

    ld l, h
    ld bc, $0222
    ld l, h
    ld bc, $016c
    ld l, h
    db $01

    db $e4, $08, $f5, $09, $ab, $0a, $cd, $0c, $39, $0e, $ef, $0e, $a5, $0f, $5b, $10
    db $11, $11, $c7, $11, $c1, $16, $9a, $19, $72, $1c

    ld bc, $000d
    ld de, $c900

Jump_002_51fc:
    ld hl, $c81a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    push bc
    push af
    ld a, [$c819]
    ld b, a
    pop af
    call Call_002_511a
    pop bc
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, [$c81c]
    ld l, a
    ld a, b
    call Call_002_518b
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, [$c81e]
    ld [de], a
    inc de
    ld a, [$c819]
    push de
    ld e, a
    ld d, b
    ld a, [$c81d]
    call Call_002_534b
    pop de
    add $08
    and $0f
    add a
    ld hl, $5253
    add l
    ld l, a
    jr nc, jr_002_5241

    inc h

jr_002_5241:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add l
    ld l, a
    jr nc, jr_002_524a

    inc h

jr_002_524a:
    ld a, [hl]
    ld [de], a
    inc de
    inc b
    dec c
    jp nz, Jump_002_51fc

    ret


    di
    ld d, d
    di
    ld d, d
    di
    ld d, d
    di
    ld d, d
    di
    ld d, d
    db $e3
    ld d, d
    db $d3
    ld d, d
    jp Jump_002_7352


    ld d, d
    add e
    ld d, d

    db $93, $52

    and e
    ld d, d
    or e
    ld d, d
    or e
    ld d, d
    or e
    ld d, d
    or e
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
    ld a, [bc]
    add hl, bc
    ld [$0004], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $10, $0e, $0c, $0c, $0a, $08, $04, $00, $00, $00, $00, $00, $00

    nop
    nop
    nop
    ld d, $14
    ld [de], a
    ld [de], a
    db $10
    ld c, $0c
    ld a, [bc]
    ld [$0004], sp
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_002_52d0

    jr jr_002_52cf

    ld d, $14
    ld [de], a
    db $10
    ld c, $0c
    ld a, [bc]
    ld [$0004], sp
    nop
    nop
    or $f7
    ld hl, sp-$04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_52cf:
    nop

jr_002_52d0:
    nop
    nop
    nop
    ldh a, [$f2]
    db $f4
    db $f4
    or $f8
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
    ld [$eeec], a
    xor $f0
    ld a, [c]
    db $f4
    or $f8
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e5], a
    add sp, -$18
    ld [$eeec], a
    ldh a, [$f2]
    db $f4
    or $f8
    db $fc
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    ld bc, $0201
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    ld bc, $0201
    inc bc
    inc b
    dec b
    dec b
    dec b
    ld bc, $0201
    inc bc
    dec b
    dec b
    dec b
    dec b
    ld bc, $0201
    inc b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0301
    inc b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0302
    dec b
    dec b
    dec b
    dec b
    dec b

Call_002_534b:
    push hl
    ld h, a
    ld a, d
    or a
    jr nz, jr_002_5392

    bit 1, e
    jr z, jr_002_5373

    bit 0, e
    jr nz, jr_002_5366

    ld a, h
    cp $04
    jr z, jr_002_5393

    inc a
    cp $04
    jr z, jr_002_5393

    inc a
    jr jr_002_5393

jr_002_5366:
    ld a, h
    cp $fc
    jr z, jr_002_5393

    dec a
    cp $fc
    jr z, jr_002_5393

    dec a
    jr jr_002_5393

jr_002_5373:
    bit 2, e
    jr z, jr_002_5392

    xor a
    jr jr_002_5393

    bit 0, e
    jr nz, jr_002_5388

    ld a, h
    or a
    jr z, jr_002_5393

    dec a
    jr z, jr_002_5393

    dec a
    jr jr_002_5393

jr_002_5388:
    ld a, h
    or a
    jr z, jr_002_5393

    inc a
    jr z, jr_002_5393

    inc a
    jr jr_002_5393

jr_002_5392:
    ld a, h

jr_002_5393:
    pop hl
    ret


    ld a, [$c819]
    and $06
    rrca
    ret


    push hl
    rlca
    and $06
    ld h, a
    ld a, [$c819]
    and $f9
    or h
    ld [$c819], a
    pop hl
    ret


    ld a, [$c819]
    and $01
    ret


    push hl
    and $01
    ld h, a
    ld a, [$c819]
    and $fe
    or h
    ld [$c819], a
    call Call_002_4ef6
    pop hl
    ret


Jump_002_53c4:
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    dec hl
    dec hl
    ld de, $53e4
    call $53e8
    ret z

    dec hl
    dec hl
    dec de
    dec de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ret


    sbc a
    add [hl]
    ld bc, $1ac9
    inc de
    sub [hl]
    inc hl
    ld a, [de]
    inc de
    sbc [hl]
    inc hl
    ld a, [de]
    sbc [hl]
    bit 7, a
    ret


    call Call_002_5c19
    jr z, jr_002_5409

    ld hl, $d4f1
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d4f1], a
    ld a, h
    ld [$d4f2], a

jr_002_5409:
    ret


    xor a
    ld hl, $c83c
    ld [hl+], a
    ld [hl+], a
    ret


    call Call_002_5c19
    ret z

    ld hl, $543e
    ld a, [$c836]
    and $0f
    add l
    ld l, a
    jr nc, jr_002_5422

    inc h

jr_002_5422:
    ld a, [hl]
    ld h, d
    ld l, e
    call Call_000_08b9
    srl h
    rr l
    push hl
    ld hl, $c83c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    add hl, de
    ld a, l
    ld [$c83c], a
    ld a, h
    ld [$c83d], a
    ret


    ld [bc], a

    db $02

    inc bc
    inc b
    dec b
    rlca
    ld b, $02
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    rlca
    ld b, $02
    ld hl, $c83c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    bit 7, h
    jr z, jr_002_545c

    ld hl, $0000

jr_002_545c:
    ld a, l
    ld [$c83c], a
    ld a, h
    ld [$c83d], a
    ret


Call_002_5465:
    ld hl, $c826
    jp Jump_002_53c4


Call_002_546b:
    ld a, [$c812]
    cp $63
    jp nc, Jump_002_5494

    ld h, $00
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    push hl
    ld a, [$c810]
    and $03
    add a
    ld hl, $54cd
    add l
    ld l, a
    jr nc, jr_002_5489

    inc h

jr_002_5489:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    ld de, $c826
    jp $53e8


Jump_002_5494:
    ld a, $80
    or a
    ret


    ld a, [$c812]
    cp $63
    jp nc, Jump_002_54c9

    ld h, $00
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    push hl
    ld a, [$c810]
    and $03
    add a
    ld hl, $54cd
    add l
    ld l, a
    jr nc, jr_002_54b6

    inc h

jr_002_54b6:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $c826
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    jp Jump_000_08ac


Jump_002_54c9:
    ld hl, $0000
    ret


    push de
    ld d, h
    ld bc, $2d56
    ld d, a
    ld e, c
    ld e, b
    nop
    nop
    nop
    ld c, $00
    nop
    inc l
    nop
    nop
    ld e, b
    nop
    nop
    adc b
    nop
    nop
    cp h
    nop
    nop
    db $f4
    nop
    nop
    jr nc, jr_002_54ed

    nop

jr_002_54ed:
    ld [hl], c
    ld bc, $b700
    ld bc, $0300
    ld [bc], a
    nop
    ld d, l
    ld [bc], a
    nop
    xor [hl]
    ld [bc], a
    nop
    ld c, $03
    nop
    db $76
    inc bc
    nop
    and $03
    nop
    ld e, a
    inc b
    nop
    ld [c], a
    inc b
    nop
    ld l, [hl]
    dec b
    nop
    inc b
    ld b, $00
    and l
    ld b, $00
    ld d, b
    rlca
    nop
    dec b
    ld [$c500], sp
    ld [$9100], sp
    add hl, bc
    nop
    ld l, c
    ld a, [bc]
    nop
    ld c, [hl]
    dec bc
    nop
    ld b, c
    inc c
    nop
    ld b, e
    dec c
    nop
    ld d, d
    ld c, $00
    ld l, a
    rrca
    nop
    sbc d
    stop
    pop de
    ld de, $1400
    inc de
    nop
    ld h, h
    inc d
    nop
    cp e
    dec d
    nop
    dec d
    rla
    nop
    ld [hl], d
    jr jr_002_5547

jr_002_5547:
    ret nc

    add hl, de
    nop
    ld l, $1b
    nop
    adc h
    inc e
    nop
    ld [$001d], a
    ld c, b
    rra
    nop
    and [hl]
    jr nz, jr_002_5559

jr_002_5559:
    inc b
    ld [hl+], a
    nop
    ld h, d
    inc hl
    nop
    ret nz

    inc h
    nop
    ld e, $26
    nop
    ld a, h
    daa
    nop
    jp c, RST_28

    jr c, jr_002_5597

    nop
    sub [hl]
    dec hl
    nop
    db $f4
    inc l
    nop
    ld d, d
    ld l, $00
    or b
    cpl
    nop
    ld c, $31
    nop
    ld l, h
    ld [hl-], a
    nop
    jp z, Jump_000_0033

    jr z, @+$37

    nop
    add [hl]
    ld [hl], $00
    db $e4
    scf
    nop
    ld b, d
    add hl, sp
    nop
    and b
    ld a, [hl-]
    nop
    cp $3b
    nop
    ld e, h
    dec a

jr_002_5597:
    nop
    cp d
    ld a, $00
    jr jr_002_55dd

    nop
    db $76
    ld b, c
    nop
    call nc, $0042
    ld [hl-], a
    ld b, h
    nop
    sub b
    ld b, l
    nop
    xor $46
    nop
    ld c, h
    ld c, b
    nop
    xor d
    ld c, c
    nop
    ld [$004b], sp
    ld h, [hl]
    ld c, h
    nop
    call nz, Call_000_004d
    ld [hl+], a
    ld c, a
    nop
    add b
    ld d, b
    nop
    sbc $51
    nop
    inc a
    ld d, e
    nop
    sbc d
    ld d, h
    nop
    ld hl, sp+$55
    nop
    ld d, [hl]
    ld d, a
    nop
    or h
    ld e, b
    nop
    ld [de], a
    ld e, d
    nop
    ld [hl], b
    ld e, e
    nop
    adc $5c
    nop

jr_002_55dd:
    inc l
    ld e, [hl]
    nop
    adc d
    ld e, a
    nop
    add sp, $60
    nop
    ld b, [hl]
    ld h, d
    nop
    and h
    ld h, e
    nop
    ld [bc], a
    ld h, l
    nop
    ld h, b
    ld h, [hl]
    nop
    cp [hl]
    ld h, a
    nop
    inc e
    ld l, c
    nop
    ld a, d
    ld l, d
    nop
    ret c

    ld l, e
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    dec c
    nop
    nop
    dec hl
    nop
    nop
    ld d, a
    nop
    nop
    adc b
    nop
    nop
    cp a
    nop
    nop
    ei
    nop
    nop
    dec sp
    ld bc, $7f00
    ld bc, $c700
    ld bc, $1300
    ld [bc], a
    nop
    ld h, h
    ld [bc], a
    nop
    cp e
    ld [bc], a
    nop
    dec de
    inc bc
    nop
    add l
    inc bc
    nop
    ld a, [$0003]
    ld a, e
    inc b
    nop
    add hl, bc
    dec b
    nop
    and l
    dec b
    nop
    ld d, c
    ld b, $00
    ld c, $07
    nop
    call nc, Call_000_0007
    and d
    ld [$7600], sp
    add hl, bc
    nop
    ld d, b
    ld a, [bc]
    nop
    ld l, $0b
    nop
    db $10
    inc c
    nop
    rst $30
    inc c
    nop
    db $e3
    dec c
    nop
    ret c

    ld c, $00
    rst $10
    rrca
    nop
    db $e3
    stop
    db $fc
    ld de, $2300
    inc de
    nop
    ld e, c
    inc d
    nop
    sbc a
    dec d
    nop
    push af
    ld d, $00
    ld d, e
    jr jr_002_5673

jr_002_5673:
    or c
    add hl, de
    nop
    rrca
    dec de
    nop
    ld l, l
    inc e
    nop
    rr l
    nop
    add hl, hl
    rra
    nop
    add a
    jr nz, jr_002_5685

jr_002_5685:
    push hl
    ld hl, $4300
    inc hl
    nop
    and c
    inc h
    nop
    rst $38
    dec h
    nop
    ld e, l
    daa
    nop
    cp e
    jr z, jr_002_5697

jr_002_5697:
    add hl, de
    ld a, [hl+]
    nop
    ld [hl], a
    dec hl
    nop
    push de
    inc l
    nop
    inc sp
    ld l, $00
    sub c
    cpl
    nop
    rst $28
    jr nc, jr_002_56a9

jr_002_56a9:
    ld c, l
    ld [hl-], a
    nop
    xor e
    inc sp
    nop
    add hl, bc
    dec [hl]
    nop
    ld h, a
    ld [hl], $00
    push bc
    scf
    nop
    inc hl
    add hl, sp
    nop
    add c
    ld a, [hl-]
    nop
    rst $18
    dec sp
    nop
    dec a
    dec a
    nop
    sbc e
    ld a, $00
    ld sp, hl
    ccf
    nop
    ld d, a
    ld b, c
    nop
    or l
    ld b, d
    nop
    inc de
    ld b, h
    nop
    ld [hl], c
    ld b, l
    nop
    rst $08
    ld b, [hl]
    nop
    dec l
    ld c, b
    nop
    adc e
    ld c, c
    nop
    jp hl


    ld c, d
    nop
    ld b, a
    ld c, h
    nop
    and l
    ld c, l
    nop
    inc bc
    ld c, a
    nop
    ld h, c
    ld d, b
    nop
    cp a
    ld d, c
    nop
    dec e
    ld d, e
    nop
    ld a, e
    ld d, h
    nop
    reti


    ld d, l
    nop
    scf
    ld d, a
    nop
    sub l
    ld e, b
    nop
    di
    ld e, c
    nop
    ld d, c
    ld e, e
    nop
    xor a
    ld e, h
    nop
    dec c
    ld e, [hl]
    nop
    ld l, e
    ld e, a
    nop
    ret


    ld h, b
    nop
    daa
    ld h, d
    nop
    add l
    ld h, e
    nop
    db $e3
    ld h, h
    nop
    ld b, c
    ld h, [hl]
    nop
    sbc a
    ld h, a
    nop
    db $fd
    ld l, b
    nop
    ld e, e
    ld l, d
    nop
    cp c
    ld l, e
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    nop
    nop
    dec l
    nop
    nop
    ld e, d
    nop
    nop
    sub b
    nop
    nop
    call z, $0000
    ld c, $01
    nop
    ld d, l
    ld bc, $a100
    ld bc, $f200
    ld bc, $4900
    ld [bc], a
    nop
    and [hl]
    ld [bc], a
    nop
    add hl, bc
    inc bc
    nop
    ld [hl], d
    inc bc
    nop
    pop hl
    inc bc
    nop
    ld d, a
    inc b
    nop
    call nc, Call_000_0004
    ld e, c
    dec b
    nop
    and $05
    nop
    ld a, e
    ld b, $00
    add hl, de
    rlca
    nop
    ret nz

    rlca
    nop
    ld [hl], c
    ld [$2d00], sp
    add hl, bc
    nop
    db $f4
    add hl, bc
    nop
    rst $00
    ld a, [bc]
    nop
    and a
    dec bc
    nop
    sub h
    inc c
    nop
    adc a
    dec c
    nop
    sbc c
    ld c, $00
    or e
    rrca
    nop
    db $db
    stop
    rrca
    ld [de], a
    nop
    ld c, a
    inc de
    nop
    sbc h
    inc d
    nop
    di
    dec d
    nop
    ld d, c
    rla
    nop
    xor a
    jr jr_002_579f

jr_002_579f:
    dec c
    ld a, [de]
    nop
    ld l, e
    dec de
    nop
    ret


    inc e
    nop
    daa
    ld e, $00
    add l
    rra
    nop
    db $e3
    jr nz, jr_002_57b1

jr_002_57b1:
    ld b, c
    ld [hl+], a
    nop
    sbc a
    inc hl
    nop
    db $fd
    inc h
    nop
    ld e, e
    ld h, $00
    cp c
    daa
    nop
    rla
    add hl, hl
    nop
    ld [hl], l
    ld a, [hl+]
    nop
    db $d3
    dec hl
    nop
    ld sp, $002d
    adc a
    ld l, $00
    db $ed
    cpl
    nop
    ld c, e
    ld sp, $a900
    ld [hl-], a
    nop
    rlca
    inc [hl]
    nop
    ld h, l
    dec [hl]
    nop
    jp Jump_000_0036


    ld hl, $0038
    ld a, a
    add hl, sp
    nop
    db $dd
    ld a, [hl-]
    nop
    dec sp
    inc a
    nop
    sbc c
    dec a
    nop
    rst $30
    ld a, $00
    ld d, l
    ld b, b
    nop
    or e
    ld b, c
    nop
    ld de, $0043
    ld l, a
    ld b, h
    nop
    call Call_000_0045
    dec hl
    ld b, a
    nop
    adc c
    ld c, b
    nop
    rst $20
    ld c, c
    nop
    ld b, l
    ld c, e
    nop
    and e
    ld c, h
    nop
    ld bc, $004e
    ld e, a
    ld c, a
    nop
    cp l
    ld d, b
    nop
    dec de
    ld d, d
    nop
    ld a, c
    ld d, e
    nop
    rst $10
    ld d, h
    nop
    dec [hl]
    ld d, [hl]
    nop
    sub e
    ld d, a
    nop
    pop af
    ld e, b
    nop
    ld c, a
    ld e, d
    nop
    xor l
    ld e, e
    nop
    dec bc
    ld e, l
    nop
    ld l, c
    ld e, [hl]
    nop
    rst $00
    ld e, a
    nop
    dec h
    ld h, c
    nop
    add e
    ld h, d
    nop
    pop hl
    ld h, e
    nop
    ccf
    ld h, l
    nop
    sbc l
    ld h, [hl]
    nop
    ei
    ld h, a
    nop
    ld e, c
    ld l, c
    nop
    or a
    ld l, d
    nop
    dec d
    ld l, h
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    stop
    nop
    cpl
    nop
    nop
    ld e, l
    nop
    nop
    sub l
    nop
    nop
    reti


    nop
    nop
    inc h
    ld bc, $7500
    ld bc, $cc00
    ld bc, $2900
    ld [bc], a
    nop
    adc h
    ld [bc], a
    nop
    push af
    ld [bc], a
    nop
    ld h, h
    inc bc
    nop
    jp c, $0003

    ld d, a
    inc b
    nop
    jp c, Jump_000_0004

    ld h, h
    dec b
    nop
    push af
    dec b
    nop
    adc l
    ld b, $00
    dec l
    rlca
    nop
    push de
    rlca
    nop
    add l
    ld [$3e00], sp
    add hl, bc
    nop
    nop
    ld a, [bc]
    nop
    jp z, $000a

    sbc h
    dec bc
    nop
    db $76
    inc c
    nop
    ld e, c
    dec c
    nop
    ld b, l
    ld c, $00
    ld a, [hl-]
    rrca
    nop
    dec sp
    stop
    ld c, c
    ld de, $6500
    ld [de], a
    nop
    adc a
    inc de
    nop
    ret z

    inc d
    nop
    inc d
    ld d, $00
    ld [hl], d
    rla
    nop
    ret nc

    jr jr_002_58cb

jr_002_58cb:
    ld l, $1a
    nop
    adc h
    dec de
    nop
    ld [$001c], a
    ld c, b
    ld e, $00
    and [hl]
    rra
    nop
    inc b
    ld hl, $6200
    ld [hl+], a
    nop
    ret nz

    inc hl
    nop
    ld e, $25
    nop
    ld a, h
    ld h, $00
    jp c, Jump_000_0027

    jr c, jr_002_5917

    nop
    sub [hl]
    ld a, [hl+]
    nop
    db $f4
    dec hl
    nop
    ld d, d
    dec l
    nop
    or b
    ld l, $00
    ld c, $30
    nop
    ld l, h
    ld sp, $ca00
    ld [hl-], a
    nop
    jr z, jr_002_593a

    nop
    add [hl]
    dec [hl]
    nop
    db $e4
    ld [hl], $00
    ld b, d
    jr c, jr_002_5910

jr_002_5910:
    and b
    add hl, sp
    nop
    cp $3a
    nop
    ld e, h

jr_002_5917:
    inc a
    nop
    cp d
    dec a
    nop
    jr jr_002_595d

    nop
    db $76
    ld b, b
    nop
    call nc, $0041
    ld [hl-], a
    ld b, e
    nop
    sub b
    ld b, h
    nop
    xor $45
    nop
    ld c, h
    ld b, a
    nop
    xor d
    ld c, b
    nop
    ld [$004a], sp
    ld h, [hl]
    ld c, e
    nop

jr_002_593a:
    call nz, Call_000_004c
    ld [hl+], a
    ld c, [hl]
    nop
    add b
    ld c, a
    nop
    sbc $50
    nop
    inc a
    ld d, d
    nop
    sbc d
    ld d, e
    nop
    ld hl, sp+$54
    nop
    ld d, [hl]
    ld d, [hl]
    nop
    or h
    ld d, a
    nop
    ld [de], a
    ld e, c
    nop
    ld [hl], b
    ld e, d
    nop
    adc $5b

jr_002_595d:
    nop
    inc l
    ld e, l
    nop
    adc d
    ld e, [hl]
    nop
    add sp, $5f
    nop
    ld b, [hl]
    ld h, c
    nop
    and h
    ld h, d
    nop
    ld [bc], a
    ld h, h
    nop
    ld h, b
    ld h, l
    nop
    cp [hl]
    ld h, [hl]
    nop
    inc e
    ld l, b
    nop
    ld a, d
    ld l, c
    nop
    ret c

    ld l, d
    nop
    ld [hl], $6c
    nop
    rst $38
    rst $38
    rst $38

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    call Call_002_5a24
    call Call_002_5afb
    ld a, $01
    call Call_002_5a24
    call Call_002_5afb
    ld a, $02
    call Call_002_5a24
    call Call_002_5afb
    ld bc, $0900
    call Call_002_5a17
    ld bc, $0f03
    call Call_002_5afb
    ld hl, $1160
    ld bc, $0800
    call Call_002_5a07
    ld bc, $0f04
    call Call_002_5afb
    ld bc, $0400
    call Call_002_5a17
    ld bc, $0f05
    call Call_002_5afb
    ld hl, $0a00
    ld bc, $0500
    call Call_002_5a07
    ld bc, $0f06
    call Call_002_5afb
    ld hl, $0a40
    ld bc, $0600
    call Call_002_5a07
    ld bc, $0f07
    call Call_002_5afb
    ld hl, $0a80
    ld bc, $0700
    call Call_002_5a07
    ld bc, $0f08
    call Call_002_5afb
    ld hl, $0ea0
    ld bc, $0a00
    call Call_002_5a07
    ld bc, $0f09
    call Call_002_5afb
    ret


Call_002_5a07:
    push de
    ldh a, [$cf]
    or a
    jr nz, jr_002_5a18

    ld d, h
    ld e, l
    call Call_000_2d10
    jp z, Jump_002_5a1d

    jr jr_002_5a18

Call_002_5a17:
    push de

jr_002_5a18:
    call Call_002_4a28
    pop de
    ret


Jump_002_5a1d:
    ld a, $ff
    ld [$c890], a
    pop de
    ret


Call_002_5a24:
    ld c, a
    ld b, $0f
    ld a, $ff
    ld [$c890], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    call Call_002_5aca
    call Call_002_5afb
    ld a, $01
    call Call_002_5aca
    call Call_002_5afb
    ld a, $02
    call Call_002_5aca
    call Call_002_5afb
    ld bc, $0900
    call Call_002_5aa6
    ld bc, $0f03
    call Call_002_5afb
    ld bc, $0800
    call Call_002_5aa6
    ld bc, $0f04
    call Call_002_5afb
    ld bc, $0400
    call Call_002_5aa9
    ld bc, $0f05
    call Call_002_5afb
    ld bc, $0500
    call Call_002_5aa9
    ld bc, $0f06
    call Call_002_5afb
    ld bc, $0600
    call Call_002_5aa9
    ld bc, $0f07
    call Call_002_5afb
    ld bc, $0700
    call Call_002_5aa9
    ld bc, $0f08
    call Call_002_5afb
    ld bc, $0a00
    call Call_002_5aa9
    ld bc, $0f09
    call Call_002_5afb
    push af
    xor a
    ld [$c818], a
    pop af
    ret


Call_002_5aa6:
    push de
    jr jr_002_5abe

Call_002_5aa9:
    push de
    ldh a, [$cf]
    or a
    jr nz, jr_002_5abe

    ld h, $00
    ld l, b
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l
    call Call_002_44f2
    jr z, jr_002_5ac3

jr_002_5abe:
    call Call_002_4a28
    pop de
    ret


jr_002_5ac3:
    ld a, $ff
    ld [$c890], a
    pop de
    ret


Call_002_5aca:
    push de
    ld hl, $c800
    ld b, a
    ld c, a
    push bc
    rst $18

    db $06, $02

    pop bc
    pop de
    or a
    jr z, jr_002_5aec

    ld a, [$c33f]
    or a
    ld a, h
    jr nz, jr_002_5ae6

    ld a, $0f
    ld [$c890], a
    ret


jr_002_5ae6:
    ld a, $ff
    ld [$c890], a
    ret


jr_002_5aec:
    push bc
    push de
    xor a
    ld [$c2a5], a
    ld bc, $8000
    call Call_002_4a28
    pop de
    pop bc
    ret


Call_002_5afb:
    push de
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    push hl
    ld c, $02
    call Call_000_03a7
    pop de
    ld a, [$c890]
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    ld hl, $c880
    ld bc, $000b
    call MemCopy
    ld a, [$c892]
    ld [de], a
    inc de
    ld a, [$c89a]
    ld [de], a
    inc de
    ld a, [$c89b]
    ld [de], a
    inc de
    ld a, [$c891]
    ld [de], a
    inc de
    ld a, [$c89d]
    ld [de], a
    inc de
    pop de
    ret


Call_002_5b38:
    push de
    ld hl, $c800
    ld b, a
    ld c, a
    push bc
    rst $18

    db $06, $02

    pop bc
    pop de
    or a
    jr z, jr_002_5b4f

    ld a, $ff
    ld [$c890], a
    ld a, $ff
    ret


jr_002_5b4f:
    push bc
    push de
    ld bc, $8000
    call Call_002_4a28
    pop de
    pop bc
    xor a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    push af
    ld a, $00
    call Call_002_5b38
    cp $00
    jr z, jr_002_5b76

    ld a, $00
    call Call_002_5a24
    call Call_002_5afb
    jr jr_002_5b7c

jr_002_5b76:
    call Call_002_5afb
    pop af
    inc a
    push af

jr_002_5b7c:
    ld a, $01
    call Call_002_5b38
    cp $00
    jr z, jr_002_5b8f

    ld a, $01
    call Call_002_5a24
    call Call_002_5afb
    jr jr_002_5b95

jr_002_5b8f:
    call Call_002_5afb
    pop af
    inc a
    push af

jr_002_5b95:
    ld a, $02
    call Call_002_5b38
    cp $00
    jr z, jr_002_5ba8

    ld a, $02
    call Call_002_5a24
    call Call_002_5afb
    jr jr_002_5bae

jr_002_5ba8:
    call Call_002_5afb
    pop af
    inc a
    push af

jr_002_5bae:
    ld a, $03
    call Call_002_5a24
    call Call_002_5afb
    ld a, $04
    call Call_002_5a24
    call Call_002_5afb
    ld a, $05
    call Call_002_5a24
    call Call_002_5afb
    ld a, $06
    call Call_002_5a24
    call Call_002_5afb
    ld a, $07
    call Call_002_5a24
    call Call_002_5afb
    ld a, $08
    call Call_002_5a24
    call Call_002_5afb
    ld a, $09
    call Call_002_5a24
    call Call_002_5afb
    xor a
    ld [$c818], a
    pop af
    ret


Call_002_5bec:
    ld a, [$c836]
    or a
    jr z, jr_002_5c17

    cp $06
    jr nc, jr_002_5c17

    ld a, [$c834]
    cp $01
    jr z, jr_002_5bff

    jr jr_002_5c17

jr_002_5bff:
    ld hl, $c880
    ld a, [$c835]
    and $01
    swap a
    add a
    add a
    add l
    add $13
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_002_5c17

    ld a, $01
    or a
    ret


jr_002_5c17:
    xor a
    ret


Call_002_5c19:
    ld a, [$c834]
    cp $01
    jr z, jr_002_5c36

    cp $02
    jr z, jr_002_5c36

    cp $03
    jr z, jr_002_5c36

    cp $05
    jr z, jr_002_5c36

    cp $0a
    jr z, jr_002_5c36

    cp $0b
    jr z, jr_002_5c36

    jr jr_002_5c4e

jr_002_5c36:
    ld hl, $c880
    ld a, [$c835]
    and $01
    swap a
    add a
    add a
    add l
    add $13
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_002_5c4e

    ld a, $01
    or a
    ret


jr_002_5c4e:
    xor a
    ret


    call Call_002_5bec
    jr z, jr_002_5c75

    ld a, [$c836]
    dec a
    ld h, $00
    ld l, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add l
    ld l, a
    jr nc, jr_002_5c68

    inc h

jr_002_5c68:
    ld de, $c996
    add hl, de
    ld a, [$c837]
    call Call_002_5cd3
    ld a, $01
    ret


jr_002_5c75:
    xor a
    ret


    ld a, h
    or a
    jr z, jr_002_5ca3

    cp $06
    jr nc, jr_002_5ca3

    ld a, l
    cp $18
    jr nc, jr_002_5ca3

    push hl
    push de
    push af
    ld a, h
    dec a
    ld l, a
    ld h, $00
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add l
    ld l, a
    jr nc, jr_002_5c98

    inc h

jr_002_5c98:
    ld de, $c996
    add hl, de
    pop af
    call Call_002_5d11
    pop de
    pop hl
    ret


jr_002_5ca3:
    xor a
    ret


    ld a, h
    or a
    jr z, jr_002_5cd1

    cp $06
    jr nc, jr_002_5cd1

    ld a, l
    cp $18
    jr nc, jr_002_5cd1

    push hl
    push de
    push af
    ld a, h
    dec a
    ld l, a
    ld h, $00
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add l
    ld l, a
    jr nc, jr_002_5cc6

    inc h

jr_002_5cc6:
    ld de, $c996
    add hl, de
    pop af
    call Call_002_5cd3
    pop de
    pop hl
    ret


jr_002_5cd1:
    xor a
    ret


Call_002_5cd3:
jr_002_5cd3:
    cp $08
    jr c, jr_002_5cdc

    sub $08
    inc hl
    jr jr_002_5cd3

jr_002_5cdc:
    push hl
    ld hl, $5cea
    add l
    ld l, a
    jr nc, jr_002_5ce5

    inc h

jr_002_5ce5:
    ld a, [hl]
    pop hl
    or [hl]
    ld [hl], a
    ret


    add b
    ld b, b
    jr nz, @+$12

    ld [$0204], sp
    ld bc, $08fe
    jr c, jr_002_5cfb

    sub $08
    inc hl
    jr @-$07

jr_002_5cfb:
    push hl
    ld hl, $5d09
    add l
    ld l, a
    jr nc, jr_002_5d04

    inc h

jr_002_5d04:
    ld a, [hl]
    pop hl
    and [hl]
    ld [hl], a
    ret


    ld a, a
    cp a
    rst $18
    rst $28
    rst $30
    ei
    db $fd
    db $fe

Call_002_5d11:
jr_002_5d11:
    cp $08
    jr c, jr_002_5d1a

    sub $08
    inc hl
    jr jr_002_5d11

jr_002_5d1a:
    push hl
    ld hl, $5d27
    add l
    ld l, a
    jr nc, jr_002_5d23

    inc h

jr_002_5d23:
    ld a, [hl]
    pop hl
    and [hl]
    ret


    db $80, $40, $20, $10, $08, $04, $02, $01

    rst $18
    ld [bc], a
    ld [bc], a
    or a
    jr jr_002_5d42

    ld hl, $5d8f
    ld de, $0408
    call Call_000_20b1
    call Call_000_2ed5
    inc a

jr_002_5d42:
    ld a, $03
    ldh [$9e], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld b, $03
    rst $18
    ld b, $02
    or a
    jr z, jr_002_5da0

    cp $ff
    jr nz, jr_002_5d69

    ld hl, $5d7f
    ld de, $0408
    call Call_000_20b1
    call Call_000_2e3b

jr_002_5d67:
    jr jr_002_5d67

jr_002_5d69:
    ld hl, $5d77
    ld de, $0408
    call Call_000_20b1
    call Call_000_2e3b

jr_002_5d75:
    jr jr_002_5d75

    ld c, [hl]
    ld c, a
    jr nz, jr_002_5dc1

    ld c, c
    ld c, h
    ld b, l
    nop
    ld b, e
    ld c, b
    ld b, l
    ld b, e
    ld c, e
    jr nz, @+$55

    ld d, l
    ld c, l
    jr nz, @+$47

    ld d, d
    ld d, d
    ld c, a
    ld d, d
    nop
    ld b, [hl]
    ld b, c
    ld d, h
    jr nz, jr_002_5ddd

    ld c, [hl]
    ld c, c
    ld d, h
    cpl
    ld d, d
    ld b, l
    ld b, e
    ld c, a
    ld d, [hl]
    ld b, l
    ld d, d
    nop

jr_002_5da0:
    rst $08
    ld bc, $0006

jr_002_5da4:
    push bc
    call Call_002_5dce
    pop bc

jr_002_5da9:
    call Call_000_2e3b
    ldh a, [$91]
    bit 5, a
    jr z, jr_002_5dbd

    ld a, b
    dec a
    bit 7, a
    jr z, jr_002_5dba

    ld a, $09

jr_002_5dba:
    ld b, a
    jr jr_002_5da4

jr_002_5dbd:
    bit 4, a
    jr z, jr_002_5dcc

jr_002_5dc1:
    ld a, b
    inc a
    cp $0a
    jr c, jr_002_5dc9

    ld a, $00

jr_002_5dc9:
    ld b, a
    jr jr_002_5da4

jr_002_5dcc:
    jr jr_002_5da9

Call_002_5dce:
    call Call_002_60f0
    ld a, b
    add a
    ld hl, $5ddf
    add l
    ld l, a
    jr nc, jr_002_5ddb

    inc h

jr_002_5ddb:
    ld a, [hl+]
    ld h, [hl]

jr_002_5ddd:
    ld l, a
    jp hl


    inc bc
    ld e, [hl]
    inc bc
    ld e, [hl]
    inc bc
    ld e, [hl]
    inc bc
    ld e, [hl]
    inc bc
    ld e, [hl]
    inc bc
    ld e, [hl]
    di
    ld e, l
    adc d
    ld e, a
    adc $5f
    ld e, d
    ld h, b
    ld a, b
    ld hl, $5dff
    ld de, $0101
    call Call_000_20b1
    jr jr_002_5e0b

    ld b, c
    ld c, h
    ld c, h
    nop
    ld a, b
    inc a
    ld de, $0001
    call Call_000_22d2

jr_002_5e0b:
    ld h, $00
    ld l, b
    ld a, $32
    call Call_000_08b9
    ld de, $d000
    add hl, de
    ld b, h
    ld c, l
    ld a, $00
    ld de, $0102
    call Call_002_60b7
    ld a, $02
    ld de, $0303
    call Call_002_608e
    ld a, $03
    ld de, $0304
    call Call_002_60ac
    ld a, $04
    ld de, $0802
    call Call_002_60b7
    ld a, $06
    ld de, $0803
    call Call_002_60b7
    ld a, $08
    ld de, $0a04
    call Call_002_60ac
    ld a, $09
    ld de, $0f02
    call Call_002_60ac
    ld a, $0a
    ld de, $0f03
    call Call_002_60ac
    ld a, $0b
    ld de, $0f04
    call Call_002_60ac
    ld a, $0c
    ld de, $0f05
    call Call_002_60ac
    ld a, $0d
    ld de, $0305
    call Call_002_60c4
    ld a, $0e
    ld de, $0007
    call Call_002_608e
    ld a, $0f
    ld de, $0507
    call Call_002_608e
    ld a, $10
    ld de, $0a07
    call Call_002_608e
    ld a, $11
    ld de, $0f07
    call Call_002_608e
    ld a, $12
    ld de, $0008
    call Call_002_608e
    ld a, $13
    ld de, $0508
    call Call_002_608e
    ld a, $14
    ld de, $0a08
    call Call_002_608e
    ld a, $15
    ld de, $0f08
    call Call_002_608e
    ld a, $16
    ld de, $0009
    call Call_002_608e
    ld a, $17
    ld de, $0509
    call Call_002_608e
    ld a, $18
    ld de, $0a09
    call Call_002_608e
    ld a, $19
    ld de, $0f09
    call Call_002_608e
    ld a, $1a
    ld de, $000a
    call Call_002_608e
    ld a, $1c
    ld de, $000b
    call Call_002_608e
    ld a, $1d
    ld de, $050b
    call Call_002_608e
    ld a, $1e
    ld de, $0a0b
    call Call_002_608e
    ld a, $1f
    ld de, $0f0b
    call Call_002_608e
    ld a, $20
    ld de, $000d
    call Call_002_60ac
    ld a, $21
    ld de, $040d
    call Call_002_60ac
    ld a, $22
    ld de, $080d
    call Call_002_60ac
    ld a, $23
    ld de, $0c0d
    call Call_002_60ac
    ld a, $24
    ld de, $100d
    call Call_002_608e
    ld a, $25
    ld de, $000e
    call Call_002_60ac
    ld a, $26
    ld de, $040e
    call Call_002_60ac
    ld a, $27
    ld de, $080e
    call Call_002_60ac
    ld a, $28
    ld de, $0c0e
    call Call_002_60ac
    ld a, $29
    ld de, $100e
    call Call_002_608e
    ld a, $2a
    ld de, $000f
    call Call_002_60ac
    ld a, $2b
    ld de, $040f
    call Call_002_60ac
    ld a, $2c
    ld de, $080f
    call Call_002_60ac
    ld a, $2d
    ld de, $0c0f
    call Call_002_60ac
    ld a, $2e
    ld de, $100f
    call Call_002_608e
    ld a, $2f
    ld de, $0111
    call Call_002_60c4
    ld a, $30
    ld de, $0711
    call Call_002_60c4
    ld a, $31
    ld de, $0d11
    call Call_002_60c4
    ret


    ld bc, $d15e
    ld a, $00
    ld de, $0102
    call Call_002_60c4
    ld a, $01
    ld de, HeaderLogo
    call Call_002_60c4
    ld a, $02
    ld de, $0105
    call Call_002_60c4
    ld a, $03
    ld de, $0106
    call Call_002_60c4
    ld a, $04
    ld de, $0107
    call Call_002_60c4
    ld a, $05
    ld de, $0108
    call Call_002_60c4
    ld a, $06
    ld de, $0109
    call Call_002_60c4
    ld a, $07
    ld de, $010b
    call Call_002_60ac
    ret


    ld bc, $d166
    ld a, $00
    ld de, $0101
    call Call_002_60cf
    ld a, $04
    ld de, $0102
    call Call_002_60cf
    ld a, $08
    ld de, $0103
    call Call_002_60cf
    ld a, $0c
    ld de, HeaderLogo
    call Call_002_60cf
    ld a, $10
    ld de, $0105
    call Call_002_60cf
    ld a, $14
    ld de, $0106
    call Call_002_60cf
    ld a, $18
    ld de, $0107
    call Call_002_60cf
    ld a, $1c
    ld de, $0108
    call Call_002_60cf
    ld a, $20
    ld de, $0109
    call Call_002_60cf
    ld a, $24
    ld de, $010a
    call Call_002_60cf
    ld a, $28
    ld de, $010b
    call Call_002_60cf
    ld a, $2c
    ld de, $010c
    call Call_002_60cf
    ld a, $30
    ld de, $010d
    call Call_002_60cf
    ld a, $34
    ld de, $010e
    call Call_002_60cf
    ld a, $38
    ld de, $010f
    call Call_002_60cf
    ld a, $3c
    ld de, $0110
    call Call_002_60cf
    ld a, $40
    ld de, $0111
    call Call_002_60cf
    ret


    ld bc, $d400
    ld a, $00
    ld de, $0101
    call Call_002_60b7
    ld a, $02
    ld de, $0801
    call Call_002_60c4
    ld a, $03
    ld de, $0102
    call Call_002_60b7
    ld a, $05
    ld de, $0802
    call Call_002_60c4
    ld a, $06
    ld de, $0103
    call Call_002_60b7
    ld a, $08
    ld de, $0803
    call Call_002_60c4
    ret


Call_002_608e:
    push hl
    add c
    ld l, a
    ld a, b
    adc $00
    ld h, a
    ld a, [hl]
    pop hl
    or a
    jr z, jr_002_60a0

    sub $36
    call Call_000_22e9
    ret


jr_002_60a0:
    ld hl, $60a7
    call Call_000_20b1
    ret


    jr nz, jr_002_60c9

    jr nz, jr_002_60d8

    nop

Call_002_60ac:
    add c
    ld l, a
    ld a, b
    adc $00
    ld h, a
    ld a, [hl]
    call Call_000_22e9
    ret


Call_002_60b7:
    add c
    ld l, a
    ld a, b
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2303
    ret


Call_002_60c4:
    add c
    ld l, a
    ld a, b
    adc $00

jr_002_60c9:
    ld h, a
    ld a, [hl]
    call Call_000_22a5
    ret


Call_002_60cf:
    add c
    ld l, a
    ld a, b
    adc $00
    ld h, a
    push hl
    push de
    ld a, [hl+]

jr_002_60d8:
    ld h, [hl]
    ld l, a
    call Call_000_22bc
    pop de
    pop hl
    inc hl
    inc hl
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_22bc
    ret


Call_002_60f0:
    push af
    push bc
    push de
    push hl
    ld bc, $0111

jr_002_60f7:
    ld hl, $6109
    ld d, $00
    ld e, b
    call Call_000_20b1
    inc b
    dec c
    jr nz, jr_002_60f7

    pop hl
    pop de
    pop bc
    pop af
    ret


    jr nz, jr_002_612b

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_002_6131

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_002_6137

    jr nz, jr_002_6139

    jr nz, @+$22

    jr nz, jr_002_613d

    nop
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $03
    ldh [$9e], a
    rst $18
    inc d
    ld [bc], a

Jump_002_612b:
jr_002_612b:
    ld a, [$c828]
    ld de, $0202

jr_002_6131:
    call Call_000_22a5
    ld hl, $c826

jr_002_6137:
    ld a, [hl+]
    ld h, [hl]

jr_002_6139:
    ld l, a
    ld de, $0602

jr_002_613d:
    call Call_000_22bc
    ld a, [$c812]
    ld de, $0603
    call Call_000_22d2
    call Call_000_2e3b
    ldh a, [$91]
    bit 0, a
    jr z, jr_002_615b

    ld de, $000a
    call Call_002_5465
    jp Jump_002_6168


jr_002_615b:
    bit 1, a
    jr z, jr_002_6168

    ld de, $0064
    call Call_002_5465
    jp Jump_002_6168


Jump_002_6168:
jr_002_6168:
    call Call_002_546b
    jp nz, Jump_002_612b

    ld d, $00
    call Call_002_4ffa
    jp Jump_002_612b


    rst $08
    dec b
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $03
    ldh [$9e], a
    xor a
    ld [$ca80], a
    call Call_000_0341
    rst $18
    nop
    ld b, $df
    inc b
    ld b, $cd
    ld [hl], c
    inc bc
    rst $18
    nop
    dec b
    call Call_000_0371
    ld c, $7f
    call Call_000_25a1
    ld c, $7f
    call Call_000_25af
    rst $18
    inc d
    ld [bc], a
    ld d, $00

Jump_002_61a7:
    push de
    ld bc, $c800
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld de, $0204
    call Call_000_22d2
    ld hl, $0018
    add hl, bc
    ld a, [hl]
    ld de, $0206
    call Call_000_22d2
    ld hl, $0012
    add hl, bc
    ld a, [hl]
    ld de, $0205
    call Call_000_22d2
    ld hl, $0011
    add hl, bc
    ld a, [hl]
    ld de, $0207
    call Call_000_22d2
    ld hl, $0020
    add hl, bc
    ld a, [hl]
    ld de, $0704
    call Call_000_22d2
    ld hl, $001a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0c04
    call Call_000_2303
    ld hl, $0021
    add hl, bc
    ld a, [hl]
    ld de, $0705
    call Call_000_22d2
    ld hl, $001c
    add hl, bc
    ld l, [hl]
    call Call_002_4e78
    ld de, $0c05
    call Call_000_2303
    ld hl, $0022
    add hl, bc
    ld a, [hl]
    ld de, $0706
    call Call_000_22d2
    ld hl, $001d
    add hl, bc
    ld l, [hl]
    call Call_002_4e78
    ld de, $0c06
    call Call_000_2303
    ld hl, $0024
    add hl, bc
    ld a, [hl]
    ld de, $0707
    call Call_000_22d2
    ld hl, $001f
    add hl, bc
    ld l, [hl]
    call Call_002_4e78
    ld de, $0c07
    call Call_000_2303
    ld hl, $001e
    add hl, bc
    ld l, [hl]
    call Call_002_4e78
    ld de, $0c08
    call Call_000_2303
    ld a, [$ca80]
    ld de, $020a
    call Call_000_22d2
    ld hl, $0012
    add hl, bc
    ld a, [hl]
    and $07
    ld hl, $003e
    add hl, bc
    ld [hl], a
    pop de

Jump_002_625e:
    call Call_000_2e3b
    call Call_000_0a61
    ldh a, [$91]
    bit 6, a
    jr z, jr_002_6278

    push de
    ld a, $00
    ld d, $00
    rst $18
    jr jr_002_6274

    pop de
    rst $08

jr_002_6274:
    ld e, e
    jp Jump_002_61a7


jr_002_6278:
    bit 5, a
    jr z, jr_002_628a

    push de
    ld a, $00
    ld d, $01
    rst $18
    jr jr_002_6286

    pop de
    rst $08

jr_002_6286:
    ld e, e
    jp Jump_002_61a7


jr_002_628a:
    bit 4, a
    jr z, jr_002_629c

    push de
    ld a, $00
    ld d, $02
    rst $18
    jr jr_002_6298

    pop de
    rst $08

jr_002_6298:
    ld e, e
    jp Jump_002_61a7


jr_002_629c:
    bit 7, a
    jr z, jr_002_62ae

    push de
    ld a, $00
    ld d, $03
    rst $18
    jr jr_002_62aa

    pop de
    rst $08

jr_002_62aa:
    ld e, e
    jp Jump_002_61a7


jr_002_62ae:
    bit 1, a
    jr z, jr_002_62d3

    push de
    res 2, d
    rst $18
    ld d, $02
    pop de
    bit 2, d
    jp z, Jump_002_62c3

    ld a, $01
    ld [$c811], a

Jump_002_62c3:
    push de
    ld a, $01
    ldh [$9e], a
    rst $18
    ld [bc], a
    ld b, $3e
    inc bc
    ldh [$9e], a
    pop de
    jp Jump_002_61a7


jr_002_62d3:
    bit 0, a
    jr z, jr_002_62f1

    ld a, d
    inc a
    and $07
    ld d, a
    xor a
    push de
    res 2, d
    rst $18
    ld d, $02
    pop de
    bit 2, d
    jp z, Jump_002_61a7

    ld a, $01
    ld [$c811], a
    jp Jump_002_61a7


jr_002_62f1:
    bit 2, a
    jr z, jr_002_6306

    rst $08
    add hl, sp
    ld a, [$ca80]
    inc a
    cp $03
    jr c, jr_002_6300

    xor a

jr_002_6300:
    ld [$ca80], a
    jp Jump_002_61a7


jr_002_6306:
    bit 3, a
    jr z, jr_002_6381

    rst $08
    ld e, h
    call Call_000_2c1f
    push de
    ld hl, $6384
    ld de, $020b
    call Call_000_20b1
    call Call_000_0a61
    ld a, h
    ld [$c80b], a
    call Call_000_0a61
    ld a, h
    ld [$c80c], a
    call Call_000_0a61
    ld a, h
    ld [$c80d], a
    call Call_000_0a61
    ld a, h
    ld [$c80e], a
    call Call_000_0a61
    ld a, h
    ld [$c80f], a
    ld hl, $6392
    ld de, $c94e
    ld bc, $000e
    call MemCopy
    rst $18
    ld c, $02
    ld bc, $ffff
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $63a0
    ld de, $d000
    ld bc, $0018
    call MemCopy
    ld a, [$ca80]
    ld b, a
    ld hl, $c800
    ld de, $d000
    rst $18
    inc b
    ld [bc], a
    call Call_000_2ed5
    ld a, [bc]
    ld hl, $638b
    ld de, $020b
    call Call_000_20b1
    pop de
    jp Jump_002_61a7


jr_002_6381:
    jp Jump_002_625e


    ld d, e
    ld b, c
    ld d, [hl]
    ld c, c
    ld c, [hl]
    ld b, a
    nop
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    nop

    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $00, $00
    db $00, $00, $00, $00, $00, $00, $4d, $41, $52, $49, $4f, $20, $47, $4f, $4c, $46
    db $20, $47, $42, $20, $43, $48

    call Call_000_304d
    rst $08
    ld bc, $3bcd
    ld l, $f0
    ret nz

    ld de, $0803
    call Call_000_22a5
    ldh a, [$c0]
    cp $81
    jp z, Jump_002_63ec

    ldh a, [$94]
    bit 0, a
    jr z, @-$16

    call Call_000_306e
    call Call_000_2e3b
    ldh a, [$c2]
    cp $01
    jr nz, @-$22

    ld hl, $646e
    ld de, $0802
    call Call_000_20b1
    jr jr_002_63f5

Jump_002_63ec:
    ld hl, $6475
    ld de, $0802
    call Call_000_20b1

jr_002_63f5:
    call Call_000_2e3b
    ldh a, [$c0]
    ld de, $0803
    call Call_000_22a5
    ldh a, [$c3]
    ld de, $0804
    call Call_000_22a5
    ld hl, $647b
    ld de, $0205
    call Call_000_20b1
    ld hl, $cb40
    ld de, $0205
    call Call_000_20b1
    ldh a, [$c0]
    and $0f
    jr z, jr_002_6422

    rst $08
    ld e, a

jr_002_6422:
    ldh a, [$94]
    and $0f
    ldh [$c1], a
    ldh a, [$94]
    bit 4, a
    jr z, jr_002_643e

    ld hl, $6454
    ld de, $cb00
    ld c, $02
    call Call_000_03eb
    ld a, $10
    call Call_000_3081

jr_002_643e:
    bit 5, a
    jr z, jr_002_6452

    ld hl, $647b
    ld de, $cb00
    ld c, $02
    call Call_000_03eb
    ld a, $10
    call Call_000_3081

jr_002_6452:
    jr jr_002_63f5

    ld c, l
    ld b, c
    ld d, d
    ld c, c
    ld c, a
    jr nz, jr_002_64a2

    ld c, a
    ld c, h
    ld b, [hl]
    jr nz, jr_002_64a7

    ld b, d
    ld sp, $3332
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    ld d, d
    nop
    ld d, e
    ld c, h
    ld b, c
    ld d, [hl]
    ld b, l
    nop
    jr nz, jr_002_649d

    jr nz, jr_002_649f

    jr nz, jr_002_64a1

    jr nz, jr_002_64a3

    jr nz, jr_002_64a5

    jr nz, jr_002_64a7

    jr nz, jr_002_64a9

    jr nz, jr_002_64ab

    jr nz, jr_002_64ad

    jr nz, jr_002_648f

jr_002_648f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_002_649d:
    rst $38
    rst $38

jr_002_649f:
    rst $38
    rst $38

jr_002_64a1:
    rst $38

jr_002_64a2:
    rst $38

jr_002_64a3:
    rst $38
    rst $38

jr_002_64a5:
    rst $38
    rst $38

jr_002_64a7:
    rst $38
    rst $38

jr_002_64a9:
    rst $38
    rst $38

jr_002_64ab:
    rst $38
    rst $38

jr_002_64ad:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_002_7352:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
