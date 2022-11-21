; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07e", ROMX[$4000], BANK[$7e]

    db $72, $40, $eb, $40, $16, $40, $22, $40

    ld b, e
    ld b, b
    ld b, a
    ld b, b
    ld d, c
    ld b, b
    ld e, e
    ld b, b
    ld h, h
    ld b, b
    rst $18
    ld c, c
    db $eb
    ld c, c

    push hl
    ld hl, $52a4
    cp [hl]
    jr nc, jr_07e_4020

    ld [$c4c0], a

jr_07e_4020:
    pop hl
    ret


    push bc
    push hl
    ld b, $00
    ld c, a
    or a
    jr z, jr_07e_4038

    ld hl, $5235
    add hl, bc
    ld b, [hl]
    ld a, [$c4c3]
    or a
    jr z, jr_07e_4038

    cp b
    jr c, jr_07e_4040

jr_07e_4038:
    ld a, b
    ld [$c4c3], a
    ld a, c
    ld [$c4c2], a

jr_07e_4040:
    pop hl
    pop bc
    ret


    ld [$c533], a
    ret


    ld a, [$c4c0]
    cp $80
    ld a, $01
    ret nz

    xor a
    ret


    ld a, [$c4c2]
    cp $80
    ld a, $01
    ret nz

    xor a
    ret


    ld a, [$c535]
    xor $01
    ld [$c535], a
    ret


    push bc
    push af
    and $07
    ld b, a
    swap b
    or b
    ld [$c534], a
    pop af
    pop bc
    ret


    xor a
    ldh [rNR52], a
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    ld a, $ff
    ldh [rNR51], a
    ld a, $7e
    ld [$c4c1], a
    ld a, $80
    ld [$c4c0], a
    ld [$c4c2], a
    ld a, $77
    ld [$c534], a
    xor a
    ld [$c4cc], a
    ld [$c596], a
    ld [$c4cb], a
    ld [$c532], a
    ld [$c533], a
    ld [$c535], a
    push hl
    ld hl, $c52a
    ld a, $46
    ld [hl], a
    inc hl
    ld [hl], a
    inc hl
    ld [hl], a
    xor a
    pop hl
    dec a
    ld [$c4c4], a
    ld de, $0001
    ld bc, $0000

jr_07e_40bd:
    ld hl, $c4cd
    add hl, bc
    ld [hl], d
    ld hl, $c4d1
    add hl, bc
    ld [hl], d
    ld hl, $c4f3
    add hl, bc
    ld [hl], d
    ld hl, $c50b
    add hl, bc
    ld [hl], d
    ld hl, $c4ff
    add hl, bc
    ld [hl], d
    inc c
    ld a, c
    cp $04
    jr nz, jr_07e_40bd

    ld hl, $4c3b
    ld bc, $c536
    ld d, $08

jr_07e_40e4:
    ld a, [hl+]

Call_07e_40e5:
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_07e_40e4

    ret


    call Call_07e_42b8
    call Call_07e_4119
    rst $18

    db $02, $7f

    ld a, [$c4c1]
    ldh [$bf], a
    ld [$2000], a
    ld a, [$c535]
    or a
    jr z, jr_07e_4107

    call Call_07e_499b
    jr jr_07e_4113

jr_07e_4107:
    call Call_07e_42b9
    call Call_07e_4308
    call Call_07e_4359
    call Call_07e_43ae

jr_07e_4113:
    call Call_07e_48a0
    jp Jump_07e_49cc


Call_07e_4119:
    ld a, [$c4c0]
    rla
    jr c, jr_07e_4130

    call Call_07e_4145
    ld a, [$c4c0]
    call Call_07e_4186
    ld a, [$c4c0]
    or $80
    ld [$c4c0], a

jr_07e_4130:
    ld a, [$c4c2]
    rla
    jr c, jr_07e_4144

    ld a, [$c4c2]
    rst $18

    db $00, $7f

    ld a, [$c4c2]
    or $80
    ld [$c4c2], a

jr_07e_4144:
    ret


Call_07e_4145:
    ld a, [$c4cc]
    ld d, a
    xor a
    ld [$c4cd], a
    bit 0, d
    jr nz, jr_07e_4159

    ld a, $08
    ldh [rNR12], a
    swap a
    ldh [rNR14], a

jr_07e_4159:
    xor a
    ld [$c4ce], a
    bit 1, d
    jr nz, jr_07e_4169

    ld a, $08
    ldh [rNR22], a
    swap a
    ldh [rNR24], a

jr_07e_4169:
    xor a
    ld [$c4d0], a
    bit 3, d
    jr nz, jr_07e_4179

    ld a, $08
    ldh [rNR42], a
    swap a
    ldh [rNR44], a

jr_07e_4179:
    xor a
    ld [$c4cf], a
    bit 2, d
    jr nz, jr_07e_4185

    ld a, $00
    ldh [rNR32], a

jr_07e_4185:
    ret


Call_07e_4186:
    push af
    ld c, a
    ld b, $00
    ld hl, $52a5
    add hl, bc
    ld a, [hl]
    ld [$c4c1], a
    ldh [$bf], a
    ld [$2000], a
    pop af
    add a
    ld c, a
    ld b, $00
    ld hl, $52d7
    add hl, bc
    ld e, [hl]
    inc hl
    ld h, [hl]
    ld l, e
    ld e, [hl]
    inc hl
    ld b, h
    ld c, l
    rr e
    jr nc, jr_07e_41f2

    ld a, [bc]
    inc bc
    ld [$c4d5], a
    ld [$c4dd], a
    ld a, [bc]
    inc bc
    ld [$c4d6], a
    ld [$c4de], a
    ld a, $01
    ld [$c4fb], a
    ld [$c4cd], a
    xor a
    ld [$c4d1], a
    ld [$c52d], a
    ld [$c4ff], a
    ld a, $01
    ld [$c51f], a
    xor a
    ld [$c50b], a
    ld a, $c0
    ld [$c527], a
    ld a, $46
    ld [$c52a], a
    ld a, [$4c3b]
    ld [$c536], a
    ld a, [$4c3c]
    ld [$c537], a
    ld a, $08
    ld [$c507], a

jr_07e_41f2:
    rr e
    jr nc, jr_07e_423c

    ld a, [bc]
    inc bc
    ld [$c4d7], a
    ld [$c4df], a
    ld a, [bc]
    inc bc
    ld [$c4d8], a
    ld [$c4e0], a
    ld a, $01
    ld [$c4fc], a
    ld [$c4ce], a
    xor a
    ld [$c4d2], a
    ld [$c52e], a
    ld [$c500], a
    ld a, $01
    ld [$c520], a
    xor a
    ld [$c50c], a
    ld a, $c0
    ld [$c527], a
    ld a, $46
    ld [$c52a], a
    ld a, [$4c3d]
    ld [$c538], a
    ld a, [$4c3e]
    ld [$c539], a
    ld a, $08
    ld [$c508], a

jr_07e_423c:
    rr e
    jr nc, jr_07e_4279

    ld a, [bc]
    inc bc
    ld [$c4d9], a
    ld [$c4e1], a
    ld a, [bc]
    inc bc
    ld [$c4da], a
    ld [$c4e2], a
    ld a, $01
    ld [$c4fd], a
    ld [$c4cf], a
    xor a
    ld [$c4d3], a
    ld [$c52f], a
    ld [$c501], a
    ld [$c521], a
    ld [$c50d], a
    ld a, [$4c3f]
    ld [$c53a], a
    ld a, [$4c40]
    ld [$c53b], a
    ld a, $40
    ld [$c509], a

jr_07e_4279:
    rr e
    jr nc, jr_07e_42b3

    ld a, [bc]
    inc bc
    ld [$c4db], a
    ld [$c4e3], a
    ld a, [bc]
    inc bc
    ld [$c4dc], a
    ld [$c4e4], a
    ld a, $01
    ld [$c4fe], a
    ld [$c4d0], a
    xor a
    ld [$c4d4], a
    ld [$c502], a
    ld [$c522], a
    ld [$c50e], a
    ld a, [$4c41]
    ld [$c53c], a
    ld a, [$4c42]
    ld [$c53d], a
    ld a, $40
    ld [$c50a], a

jr_07e_42b3:
    xor a
    ld [$c535], a
    ret


Call_07e_42b8:
    ret


Call_07e_42b9:
    ld a, [$c4cd]
    or a
    jr z, jr_07e_42f8

    ld a, [$c4f7]
    or a
    jr z, jr_07e_42d9

    ld hl, $c503
    dec [hl]
    jr nz, jr_07e_42d9

    ld a, [$c4fb]
    cp $01
    jr z, jr_07e_42d9

    ld a, [$c4cc]
    rrca
    call nc, Call_07e_4737

jr_07e_42d9:
    ld hl, $c4fb
    dec [hl]
    jr nz, jr_07e_42f4

    ld hl, $c4d5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0000
    call Call_07e_43ef
    ld a, [$c4cd]
    or a
    jr z, jr_07e_42f8

    call Call_07e_46f8

jr_07e_42f4:
    xor a
    jp Jump_07e_492e


jr_07e_42f8:
    ld a, [$c4cc]
    bit 0, a
    jr nz, jr_07e_4307

    ld a, $08
    ldh [rNR12], a
    swap a
    ldh [rNR14], a

jr_07e_4307:
    ret


Call_07e_4308:
    ld a, [$c4ce]
    or a
    jr z, jr_07e_4349

    ld a, [$c4f8]
    or a
    jr z, jr_07e_4329

    ld hl, $c504
    dec [hl]
    jr nz, jr_07e_4329

    ld a, [$c4fc]
    cp $01
    jr z, jr_07e_4329

    ld a, [$c4cc]
    bit 1, a
    call z, Call_07e_47ab

jr_07e_4329:
    ld hl, $c4fc
    dec [hl]
    jr nz, jr_07e_4344

    ld hl, $c4d7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0001
    call Call_07e_43ef
    ld a, [$c4ce]
    or a
    jr z, jr_07e_4349

    call Call_07e_476f

jr_07e_4344:
    ld a, $01
    jp Jump_07e_492e


jr_07e_4349:
    ld a, [$c4cc]
    bit 1, a
    jr nz, jr_07e_4358

    ld a, $08
    ldh [rNR22], a
    swap a
    ldh [rNR24], a

jr_07e_4358:
    ret


Call_07e_4359:
    ld a, [$c4cf]
    or a
    jr z, jr_07e_439e

    ld a, [$c4f9]
    or a
    jr z, jr_07e_437e

    ld hl, $c505
    dec [hl]
    jr nz, jr_07e_437e

    ld a, [$c4cc]
    bit 2, a
    jr nz, jr_07e_437e

    ld a, [$c4fd]
    cp $01
    jr z, jr_07e_437e

    ld a, [$c509]
    ldh [rNR32], a

jr_07e_437e:
    ld hl, $c4fd
    dec [hl]
    jr nz, jr_07e_4399

    ld hl, $c4d9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0002
    call Call_07e_43ef
    ld a, [$c4cf]
    or a
    jr z, jr_07e_439e

    call Call_07e_47e3

jr_07e_4399:
    ld a, $02
    jp Jump_07e_492e


jr_07e_439e:
    ld a, [$c4cc]
    bit 2, a
    jr nz, jr_07e_43ad

    ld a, $00
    ldh [rNR32], a
    ld a, $80
    ldh [rNR34], a

jr_07e_43ad:
    ret


Call_07e_43ae:
    ld a, [$c4d0]
    or a
    jr z, jr_07e_43db

    ld hl, $c4fe
    dec [hl]
    jr nz, jr_07e_43d1

    ld hl, $c4db
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0003
    call Call_07e_43ef
    ld a, [$c4d0]
    or a
    jr z, jr_07e_43db

    call Call_07e_4851
    jr jr_07e_43ee

jr_07e_43d1:
    ld a, [$c532]
    or a
    jr z, jr_07e_43ee

    call Call_07e_487f
    ret


jr_07e_43db:
    ld a, [$c4cc]
    bit 3, a
    jr nz, jr_07e_43ee

    xor a
    ld [$c532], a
    ld a, $08
    ldh [rNR42], a
    swap a
    ldh [rNR44], a

jr_07e_43ee:
    ret


Call_07e_43ef:
Jump_07e_43ef:
    ld a, [hl+]
    push hl
    push af
    cp $d0
    jr c, jr_07e_4467

    sub $d0
    add a
    ld e, a
    ld d, $00
    ld hl, $4407
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    pop af
    jp hl


    db $6f, $45, $7a, $45, $7a, $45, $7a, $45, $7a, $45

    ld a, d
    ld b, l
    ld a, d
    ld b, l

    db $92, $45, $9a, $45, $a2, $45

    ret c

    ld b, [hl]
    ret c

    ld b, [hl]

    db $ab, $45, $c6, $45, $d4, $45, $e0, $45, $f5, $45

    rrca
    ld b, [hl]

    db $16, $46, $2d, $46

    ld a, $46

    db $4b, $46, $5a, $46, $67, $46, $77, $46, $84, $46, $91, $46, $a3, $46

    or b
    ld b, [hl]
    cp l
    ld b, [hl]

    db $cb, $46

    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]
    ret c

    ld b, [hl]

jr_07e_4467:
    push af
    ld a, [hl]
    ld e, a
    ld hl, $c4d1
    add hl, bc
    ld a, [hl]
    cp $80
    jr z, jr_07e_448b

    ld [hl], $01
    xor a
    ld hl, $c51b
    add hl, bc
    ld [hl], a
    ld hl, $c523
    add hl, bc
    ld [hl], a
    inc [hl]
    ld hl, $c517
    add hl, bc
    ld a, [hl]
    ld hl, $c513
    add hl, bc
    ld [hl], a

jr_07e_448b:
    pop af
    push de
    ld hl, $c50f
    add hl, bc
    ld d, [hl]
    and $0f
    inc a
    cp d
    jr nc, jr_07e_449b

    ld e, a
    ld a, d
    ld d, e

jr_07e_449b:
    ld e, a

jr_07e_449c:
    dec d
    jr z, jr_07e_44a2

    add e
    jr jr_07e_449c

jr_07e_44a2:
    ld hl, $c4fb
    add hl, bc
    ld [hl], a
    pop de
    ld d, a
    ld a, e
    cp $d9
    ld a, d
    jr z, jr_07e_44d6

    ld e, a
    ld hl, $c4ff
    add hl, bc
    ld a, [hl]
    cp $08
    ld d, a
    ld a, e
    jr z, jr_07e_44d6

    push hl
    push bc
    ld b, $00
    ld c, a
    ld hl, $0000

jr_07e_44c3:
    add hl, bc
    dec d
    jr nz, jr_07e_44c3

    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    pop bc
    pop hl

jr_07e_44d6:
    ld hl, $c503
    add hl, bc
    ld [hl], a
    pop af
    and $f0
    ld hl, $c4f7
    add hl, bc
    ld [hl], a
    or a
    jr nz, jr_07e_44e9

    jp Jump_07e_4565


jr_07e_44e9:
    swap a
    dec a
    ld h, a
    ld a, $03
    cp c
    ld a, h
    jr z, jr_07e_44f5

    jr jr_07e_453b

jr_07e_44f5:
    push af
    ld hl, $c4ef
    add hl, bc
    ld a, [hl]
    ld d, a
    add a
    add d
    add a
    add a
    add a
    ld e, a
    pop af
    ld hl, $4f41
    add a
    ld d, c
    ld c, a
    add hl, bc
    ld c, e
    add hl, bc
    ld c, d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld d, a
    ld a, [$c4c4]
    and $77
    or d
    ld [$c4c4], a
    ld de, $c4eb
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    ld b, $00
    ld a, l
    ld d, h
    ld hl, $c530
    ld [hl+], a
    ld [hl], d
    ld a, $01
    ld [$c532], a
    jr jr_07e_4565

jr_07e_453b:
    ld hl, $c4e5
    add hl, bc
    add hl, bc
    push hl
    ld hl, $c4ef
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $4c43
    add hl, de
    add a
    ld e, [hl]
    add e
    ld hl, $c50b
    add hl, bc
    ld e, [hl]
    add e
    add e
    ld e, a
    ld hl, $4c4b
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    call Call_07e_4982
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d

Jump_07e_4565:
jr_07e_4565:
    pop de
    ld hl, $c4d5
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    pop hl
    ld a, [hl+]
    push hl
    ld hl, $c50f
    add hl, bc
    ld [hl], a
    jp Jump_07e_46f4


    and $07
    dec a
    ld hl, $c4ef
    add hl, bc
    push af
    ld a, c
    cp $02
    jr nz, jr_07e_458d

    pop af
    inc a
    ld [hl], a
    jp Jump_07e_46f4


jr_07e_458d:
    pop af
    ld [hl], a
    jp Jump_07e_46f4


    ld hl, $c4ef
    add hl, bc
    inc [hl]
    jp Jump_07e_46f4


    ld hl, $c4ef
    add hl, bc
    dec [hl]
    jp Jump_07e_46f4


    ld hl, $c4d1
    add hl, bc
    ld [hl], $80
    jp Jump_07e_46f4


    pop hl
    ld a, [hl+]
    push hl
    push bc
    inc c
    ld e, $ee

jr_07e_45b2:
    dec c
    jr z, jr_07e_45ba

    rlca
    rlc e
    jr jr_07e_45b2

jr_07e_45ba:
    ld d, a
    ld hl, $c4c4
    ld a, [hl]
    and e
    or d
    ld [hl], a
    pop bc
    jp Jump_07e_46f4


    pop de
    push de
    dec de
    ld hl, $c4dd
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_07e_46f4


    pop hl
    ld hl, $c4dd
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    inc de
    push af
    call Call_07e_46e0
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop af
    ld [hl], a
    inc hl
    push de
    call Call_07e_46e9
    jp Jump_07e_46f4


    call Call_07e_46e0
    dec hl
    ld a, [hl]
    dec a
    jr z, jr_07e_4607

    ld [hl-], a
    ld d, [hl]
    dec hl
    ld e, [hl]
    pop hl
    ld h, d
    ld l, e
    jp Jump_07e_43ef


jr_07e_4607:
    dec hl
    dec hl
    call Call_07e_46e9
    jp Jump_07e_46f4


    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_07e_43ef


    call Call_07e_46e0
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld d, a
    ld e, b
    ld b, $00
    push de
    call Call_07e_46e9
    jp Jump_07e_46f4


    pop de
    call Call_07e_46e0
    dec hl
    ld a, [hl-]
    ld e, [hl]
    ld d, a
    inc de
    inc de
    push de
    call Call_07e_46e9
    jp Jump_07e_46f4


    pop de
    ld a, [de]
    inc de
    ld hl, $c52d
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    and $c0
    inc de
    ld hl, $c4c6
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c527
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    inc de
    ld [$c4ca], a
    ld a, $01
    ld [$c4cb], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c4ff
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c507
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c513
    add hl, bc
    ld [hl], a
    ld hl, $c517
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c51f
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c50b
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c50b
    add hl, bc
    add [hl]
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c52a
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07e_43ef


    ld hl, $c4cd
    add hl, bc
    ld [hl], $00
    pop hl
    ret


Call_07e_46e0:
    ld hl, $c536
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_07e_46e9:
    ld d, h
    ld e, l
    ld hl, $c536
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Jump_07e_46f4:
    pop hl
    jp Jump_07e_43ef


Call_07e_46f8:
    ld a, [$c4cc]
    bit 0, a
    jr nz, jr_07e_4732

    ld a, [$c4f7]
    or a
    jr z, jr_07e_4737

    ld a, $01
    ld [$c598], a
    ld d, $00
    ld hl, $c4d1
    ld a, [hl]
    cp $80
    jr z, jr_07e_471b

    ld a, [$c527]
    ldh [rNR12], a
    ld d, $80

jr_07e_471b:
    ld [hl], $02
    ld a, $08
    ldh [rNR10], a
    ld a, [$c4c6]
    ldh [rNR11], a
    ld a, [$c4e5]
    ldh [rNR13], a
    ld a, [$c4e6]
    or d
    ldh [rNR14], a
    ret


jr_07e_4732:
    xor a
    ld [$c598], a
    ret


Call_07e_4737:
jr_07e_4737:
    ld a, [$c598]
    or a
    jr z, jr_07e_476e

    xor a
    ld [$c598], a
    ld hl, $c4d1
    ld [hl], $00
    ld hl, $ff12
    push bc
    ld a, [$c52a]
    ld b, a
    swap a
    and $0f
    ld c, a
    ld a, [$c527]
    swap a
    and $0f
    sub c
    jr nc, jr_07e_475f

    ld a, $00

jr_07e_475f:
    add a
    add a
    add a
    add a
    ld c, a
    ld a, b
    and $07
    or c
    pop bc
    ld [hl+], a
    inc hl
    ld a, $80
    ld [hl], a

jr_07e_476e:
    ret


Call_07e_476f:
    ld a, [$c4cc]
    bit 1, a
    jr nz, jr_07e_47a6

    ld a, [$c4f8]
    cp $00
    jr z, jr_07e_47ab

    ld a, $01
    ld [$c599], a
    ld d, $00
    ld hl, $c4d2
    ld a, [hl]
    cp $80
    jr z, jr_07e_4793

    ld a, [$c528]
    ldh [rNR22], a
    ld d, $80

jr_07e_4793:
    ld [hl], $02
    ld a, [$c4c7]
    ldh [rNR21], a
    ld a, [$c4e7]
    ldh [rNR23], a
    ld a, [$c4e8]
    or d
    ldh [rNR24], a
    ret


jr_07e_47a6:
    xor a
    ld [$c599], a
    ret


Call_07e_47ab:
jr_07e_47ab:
    ld a, [$c599]
    or a
    jr z, jr_07e_47e2

    xor a
    ld [$c599], a
    ld hl, $c4d2
    ld [hl], $00
    ld hl, $ff17
    push bc
    ld a, [$c52b]
    ld b, a
    swap a
    and $0f
    ld c, a
    ld a, [$c528]
    swap a
    and $0f
    sub c
    jr nc, jr_07e_47d3

    ld a, $00

jr_07e_47d3:
    add a
    add a
    add a
    add a
    ld c, a
    ld a, b
    and $07
    or c
    pop bc
    ld [hl+], a
    inc hl
    ld a, $80
    ld [hl], a

jr_07e_47e2:
    ret


Call_07e_47e3:
    ld a, [$c4cc]
    bit 2, a
    jr nz, jr_07e_4827

    ld d, $00
    ld a, [$c4cb]
    or a
    jr z, jr_07e_47fa

    xor a
    ldh [rNR30], a
    call Call_07e_4831
    ld d, $80

jr_07e_47fa:
    ld a, [$c4f9]
    cp $00
    jr z, jr_07e_4828

    ld hl, $c4d3
    ld a, [hl]
    cp $80
    jr z, jr_07e_4813

    ld a, [$c529]
    ldh [rNR32], a
    xor a
    ldh [rNR30], a
    ld d, $80

jr_07e_4813:
    ld [hl], $02
    xor a
    ldh [rNR31], a
    ld a, [$c4e9]
    ldh [rNR33], a
    ld a, $80
    ldh [rNR30], a
    ld a, [$c4ea]
    or d
    ldh [rNR34], a

jr_07e_4827:
    ret


jr_07e_4828:
    ld hl, $c4d1
    ld [hl], $00
    xor a
    ldh [rNR30], a
    ret


Call_07e_4831:
    ld a, [$c4ca]
    add a
    ld d, $00
    ld e, a
    ld hl, $4cdd
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, d
    ld de, $ff30

jr_07e_4843:
    ld a, [hl+]
    ld [de], a
    inc de
    inc b
    ld a, b
    cp $10
    jr nz, jr_07e_4843

    xor a
    ld [$c4cb], a
    ret


Call_07e_4851:
    ld a, [$c4cc]
    bit 3, a
    jr nz, jr_07e_486f

    ld a, [$c4fa]
    or a
    jr z, jr_07e_4870

    ld de, $ff20
    ld hl, $c4eb
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a

jr_07e_486f:
    ret


jr_07e_4870:
    xor a
    ld [$c532], a
    ld hl, $ff21
    ld a, $08
    ld [hl+], a
    inc hl
    swap a
    ld [hl], a
    ret


Call_07e_487f:
    ld a, [$c4cc]
    bit 3, a
    jr z, jr_07e_488c

    xor a
    ld [$c532], a
    jr jr_07e_489f

jr_07e_488c:
    ld hl, $c530
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [de]
    cp $ff
    jr nz, jr_07e_4899

    jr jr_07e_4870

jr_07e_4899:
    ldh [rNR43], a
    inc de
    ld a, d
    ld [hl-], a
    ld [hl], e

jr_07e_489f:
    ret


Call_07e_48a0:
    ld a, [$c534]
    ldh [rNR50], a
    ld a, [$c4cc]
    or a
    ld hl, $c4c4
    ld a, [hl+]
    jr z, jr_07e_48c1

    ld a, [$c4cc]
    and $0f
    ld d, a
    swap d
    or d
    ld d, a
    cpl
    ld e, a
    ld a, [hl-]
    and d
    ld d, a
    ld a, [hl]
    and e
    or d

jr_07e_48c1:
    ld d, a
    ld a, [$c533]
    cpl
    and $0f
    ld e, a
    swap e
    or e
    and d
    ldh [rNR51], a
    ret


Call_07e_48d0:
    ld hl, $c51f
    add hl, bc
    ld a, [hl]
    or a
    jr z, jr_07e_4925

    ld hl, $c523
    add hl, bc
    cp [hl]
    jr z, jr_07e_48e2

    inc [hl]
    jr jr_07e_4925

jr_07e_48e2:
    ld hl, $c51b
    add hl, bc
    ld e, [hl]
    inc [hl]
    ld hl, $c513
    add hl, bc
    ld a, [hl]
    ld hl, $50c9
    ld d, c
    add a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld c, d
    ld d, [hl]
    ld l, a
    ld h, b
    add hl, de
    ld a, [hl+]
    cp $80
    jr z, jr_07e_4911

    ld hl, $c4e5
    add hl, bc
    add hl, bc
    ld e, a
    add a
    sbc a
    ld d, a
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    and $07
    ld d, a
    ret


jr_07e_4911:
    push hl
    ld hl, $c51b
    add hl, bc
    ld [hl], $00
    pop hl
    ld a, [hl]
    cp $80
    jr z, jr_07e_48e2

    ld hl, $c513
    add hl, bc
    ld [hl], a
    jr jr_07e_48e2

jr_07e_4925:
    ld hl, $c4e5
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


Jump_07e_492e:
    push af
    ld b, $00
    ld c, a
    call Call_07e_48d0
    pop af
    or a
    jr nz, jr_07e_4950

    ld a, [$c51f]
    or a
    ret z

    ld a, [$c4cc]
    rrca
    ret c

    ld a, e
    ldh [rNR13], a
    ldh a, [rNR11]
    and $c0
    ldh [rNR11], a
    ld a, d
    ldh [rNR14], a
    ret


jr_07e_4950:
    dec a
    jr nz, jr_07e_496b

    ld a, [$c520]
    or a
    ret z

    ld a, [$c4cc]
    bit 1, a
    ret nz

    ld a, e
    ldh [rNR23], a
    ldh a, [rNR21]
    and $c0
    ldh [rNR21], a
    ld a, d
    ldh [rNR24], a
    ret


jr_07e_496b:
    dec a
    ret nz

    ld a, [$c521]
    or a
    ret z

    ld a, [$c4cc]
    bit 2, a
    ret nz

    ld a, e
    ldh [rNR33], a
    xor a
    ldh [rNR31], a
    ld a, d
    ldh [rNR34], a
    ret


Call_07e_4982:
    ld hl, $c52d
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr nz, jr_07e_4991

    add e
    ld e, a
    ld a, d
    adc b
    ld d, a
    ret


jr_07e_4991:
    xor $ff
    ld h, a
    ld a, e
    sub h
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ret


Call_07e_499b:
    ld a, [$c4cc]
    ld d, a
    bit 0, d
    jr nz, jr_07e_49ab

    ld a, $08
    ldh [rNR12], a
    swap a
    ldh [rNR14], a

jr_07e_49ab:
    bit 1, d
    jr nz, jr_07e_49b7

    swap a
    ldh [rNR22], a
    swap a
    ldh [rNR24], a

jr_07e_49b7:
    bit 3, d
    jr nz, jr_07e_49c3

    swap a
    ldh [rNR42], a
    swap a
    ldh [rNR44], a

jr_07e_49c3:
    bit 2, d
    jr nz, jr_07e_49cb

    ld a, $00
    ldh [rNR32], a

jr_07e_49cb:
    ret


Jump_07e_49cc:
    ld hl, $c4cd
    xor a
    add [hl]
    inc hl
    add [hl]
    inc hl
    add [hl]
    inc hl
    add [hl]
    or a
    ret nz

    ld a, $80
    ld [$c4c0], a
    ret


    di
    call Call_07e_499b
    call Call_07e_49f7
    call Call_07e_4145
    ei
    ret


    di
    call Call_07e_499b
    call Call_07e_4145
    call Call_07e_4b1c
    ei
    ret


Call_07e_49f7:
    ld a, [$c4c0]
    ld [$c59a], a
    ld a, [$c4c1]
    ld [$c59b], a
    ld a, [$c4c4]
    ld [$c59c], a
    ld hl, $c4c6
    ld de, $c59d
    ld a, $04
    call Call_07e_4c33
    ld a, [$c4ca]
    ld [$c5a1], a
    ld a, [$c4cb]
    ld [$c5a2], a
    ld hl, $c4cd
    ld de, $c5a3
    ld a, $04
    call Call_07e_4c33
    ld hl, $c4d1
    ld de, $c5a7
    ld a, $04
    call Call_07e_4c33
    ld hl, $c4d5
    ld de, $c5ab
    ld a, $08
    call Call_07e_4c33
    ld hl, $c4dd
    ld de, $c5b3
    ld a, $08
    call Call_07e_4c33
    ld a, [$c4eb]
    ld [$c5bb], a
    ld a, [$c4ec]
    ld [$c5bc], a
    ld hl, $c4ef
    ld de, $c5bd
    ld a, $04
    call Call_07e_4c33
    ld hl, $c4f3
    ld de, $c5c1
    ld a, $04
    call Call_07e_4c33
    ld hl, $c4f7
    ld de, $c5c5
    ld a, $04
    call Call_07e_4c33
    ld hl, $c4fb
    ld de, $c5c9
    ld a, $04
    call Call_07e_4c33
    ld hl, $c4ff
    ld de, $c5cd
    ld a, $04
    call Call_07e_4c33
    ld hl, $c503
    ld de, $c5d1
    ld a, $04
    call Call_07e_4c33
    ld hl, $c507
    ld de, $c5d5
    ld a, $04
    call Call_07e_4c33
    ld hl, $c50b
    ld de, $c5d9
    ld a, $04
    call Call_07e_4c33
    ld hl, $c50f
    ld de, $c5dd
    ld a, $04
    call Call_07e_4c33
    ld hl, $c517
    ld de, $c5e1
    ld a, $04
    call Call_07e_4c33
    ld hl, $c51f
    ld de, $c5e5
    ld a, $04
    call Call_07e_4c33
    ld a, $00
    ld [$c51b], a
    ld [$c51c], a
    ld [$c51d], a
    ld [$c51e], a
    ld hl, $c527
    ld de, $c5e9
    ld a, $03
    call Call_07e_4c33
    ld hl, $c52d
    ld de, $c5ec
    ld a, $03
    call Call_07e_4c33
    ld hl, $c530
    ld de, $c5ef
    ld a, $02
    call Call_07e_4c33
    ld a, $00
    ld [$c5f1], a
    ld hl, $c536
    ld de, $c5f2
    ld a, $08
    call Call_07e_4c33
    ld hl, $c53e
    ld de, $c5fa
    ld a, $30
    call Call_07e_4c33
    ret


Call_07e_4b1c:
    ld a, [$c59a]
    ld [$c4c0], a
    ld a, [$c59b]
    ld [$c4c1], a
    ld a, [$c59c]
    ld [$c4c4], a
    ld hl, $c59d
    ld de, $c4c6
    ld a, $04
    call Call_07e_4c33
    ld a, [$c5a1]
    ld [$c4ca], a
    ld a, $01
    ld [$c4cb], a
    ld hl, $c5a3
    ld de, $c4cd
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5a7
    ld de, $c4d1
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5ab
    ld de, $c4d5
    ld a, $08
    call Call_07e_4c33
    ld hl, $c5b3
    ld de, $c4dd
    ld a, $08
    call Call_07e_4c33
    ld a, [$c5bb]
    ld [$c4eb], a
    ld a, [$c5bc]
    ld [$c4ec], a
    ld hl, $c5bd
    ld de, $c4ef
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5c1
    ld de, $c4f3
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5c5
    ld de, $c4f7
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5c9
    ld de, $c4fb
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5cd
    ld de, $c4ff
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5d1
    ld de, $c503
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5d5
    ld de, $c507
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5d9
    ld de, $c50b
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5dd
    ld de, $c50f
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5e1
    ld de, $c517
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5e5
    ld de, $c51f
    ld a, $04
    call Call_07e_4c33
    ld hl, $c5e9
    ld de, $c527
    ld a, $03
    call Call_07e_4c33
    ld hl, $c5ec
    ld de, $c52d
    ld a, $03
    call Call_07e_4c33
    ld hl, $c5ef
    ld de, $c530
    ld a, $02
    call Call_07e_4c33
    ld a, [$c5f1]
    ld [$c532], a
    ld hl, $c5f2
    ld de, $c536
    ld a, $08
    call Call_07e_4c33
    ld hl, $c5fa
    ld de, $c53e
    ld a, $30
    call Call_07e_4c33
    ret


Call_07e_4c33:
    ld c, a

jr_07e_4c34:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_07e_4c34

    ret


    db $3e, $c5, $4a, $c5, $56, $c5, $62, $c5, $00, $18, $30, $48

    ld h, b
    ld a, b
    sub b
    xor b
    dec [hl]
    nop
    and l
    nop
    rrca
    ld bc, $0172
    pop de
    ld bc, $022a
    ld a, l
    ld [bc], a
    call $1702
    inc bc
    ld e, [hl]
    inc bc

    db $a0, $03

    rst $18
    inc bc

    db $1b, $04, $53, $04, $87, $04, $b9, $04, $e8, $04, $15, $05, $3f, $05, $66, $05
    db $8c, $05, $af, $05, $d0, $05, $f0, $05, $0d, $06, $29, $06, $44, $06, $5d, $06
    db $74, $06, $8a, $06, $9f, $06, $b3, $06, $c6, $06, $d7, $06, $e8, $06, $f8, $06
    db $07, $07, $15, $07, $22, $07, $2e, $07, $3a, $07, $45, $07, $50, $07, $5a, $07

    ld h, e
    rlca

    db $6c, $07

    ld [hl], h
    rlca
    ld a, h
    rlca
    add e
    rlca
    adc d
    rlca
    sub c
    rlca
    sub a
    rlca
    sbc l
    rlca
    and e
    rlca
    xor b
    rlca
    xor l
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
    jp nz, $c507

    rlca
    ret z

    rlca
    call z, $cf07
    rlca
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    db $db
    rlca
    db $dd
    rlca
    rst $18
    rlca
    pop hl
    rlca
    add c
    ld c, l

    db $91, $4d

    and c
    ld c, l
    or c
    ld c, l
    pop bc
    ld c, l
    pop de
    ld c, l
    pop hl
    ld c, l
    pop af
    ld c, l
    db $01
    ld c, a

    db $11, $4f

    ld hl, $314f
    ld c, a
    pop bc
    ld c, [hl]
    pop de
    ld c, [hl]
    pop hl
    ld c, [hl]
    pop af
    ld c, [hl]
    add c
    ld c, [hl]
    sub c
    ld c, [hl]
    and c
    ld c, [hl]
    or c
    ld c, [hl]
    ld b, c
    ld c, [hl]
    ld d, c
    ld c, [hl]
    ld h, c
    ld c, [hl]
    ld [hl], c
    ld c, [hl]
    ld bc, $114e
    ld c, [hl]
    ld hl, $314e
    ld c, [hl]
    ld hl, $314d
    ld c, l

    db $41, $4d

    ld d, c
    ld c, l
    ld h, c
    ld c, l
    ld [hl], c
    ld c, l
    xor $ee
    xor $ee
    xor $ee
    db $ec
    xor b
    ld h, h
    jr nz, jr_07e_4d2c

jr_07e_4d2c:
    nop
    nop
    nop
    nop
    nop
    xor $ee
    xor $ee
    xor $ed
    res 3, b
    ld h, l
    ld [hl-], a
    stop
    nop
    nop
    nop
    nop

    db $ee, $ee, $ee, $ee, $ee, $ee, $ee, $ca, $63, $00, $00, $00, $00, $00, $00, $00

    rst $38
    adc b
    rst $38
    rst $38
    rst $38
    sbc c
    ld [hl], a
    ld b, h
    ld [hl+], a
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    xor [hl]
    xor $ee
    xor $ee
    xor $ee
    ld [$1151], a
    ld de, $1111
    ld de, $1511
    ld a, c
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp c
    ld [hl], l
    ld sp, $0000
    nop
    nop
    db $01
    dec [hl]

    db $01, $12, $23, $34, $45, $56, $67, $77, $88, $99, $aa, $bb, $cc, $dd, $ee, $ff

    ld [de], a
    inc hl
    inc sp
    ld b, h
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc d
    xor e
    cp e
    call z, $eedd
    ld [hl+], a
    inc sp
    inc [hl]
    ld b, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    xor d
    cp e
    cp h
    call Call_000_33dd
    inc [hl]
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc d
    xor d
    cp e
    cp h
    call z, $ff7b
    rst $38
    ei
    ld [hl], e
    nop
    nop
    inc bc
    ld a, e
    rst $38
    rst $38
    ei
    ld [hl], e
    nop
    nop
    inc bc
    ld a, e
    rst $28
    rst $38
    db $eb
    ld [hl], e
    nop
    nop
    inc bc
    ld a, e
    rst $28
    rst $38
    db $eb
    ld [hl], e
    nop
    nop
    inc bc
    ld a, d
    rst $18
    rst $38
    jp c, $1074

    nop
    inc d
    ld a, d
    rst $18
    rst $38
    jp c, $1074

    nop
    inc d
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    nop
    nop
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    ld de, $cc11
    call z, $cccc
    call z, $cccc
    call z, $cccc
    call z, $cccc
    call z, $2222
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    inc sp
    inc sp
    xor $ee
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $dd
    db $dd
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $cc11
    call z, $2222
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
    cp e
    cp e
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    nop
    nop
    nop
    nop
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    ld de, $1111
    ld de, $cccc
    call z, $cccc
    call z, $cccc
    call z, $cccc
    call z, $2222
    ld [hl+], a
    ld [hl+], a
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    inc sp
    inc sp
    inc sp
    inc sp
    xor $ee
    xor $ee
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $dd
    db $dd
    db $dd
    db $dd
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    call z, $cccc
    call z, $2222
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
    cp e
    cp e
    cp e
    cp e
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $dd, $dd, $dd, $dd, $dd, $dd, $dd, $dd, $11, $11, $11, $11, $11, $11, $11, $11

    call z, $cccc
    call z, $cccc
    call z, Call_000_22cc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp

    db $77, $4f, $99, $4f, $7f, $4f

    adc h
    ld c, a

    db $c5, $4f, $db, $4f

    rst $08
    ld c, a

    db $e5, $4f

    db $fa
    ld c, a

    db $2f, $50, $42, $50, $55, $50

    sbc c
    ld c, a
    and l
    ld c, a
    or b
    ld c, a
    cp h
    ld c, a
    inc e
    ld d, b

    db $83, $50

    and c
    ld d, b
    adc d
    ld d, b
    xor b
    ld d, b
    pop bc
    ld d, b
    ld [hl], c
    ld c, a
    ld [hl], c
    ld c, a
    nop
    db $ed
    ld [bc], a
    ret nz

    ld b, [hl]
    ld h, e

    db $88, $ed, $f1, $c0, $5e, $5f, $6c, $ff, $88, $00, $a1, $80, $06, $15, $16, $15
    db $16, $17, $24, $25, $ff

    adc b
    nop
    pop bc
    add b
    ld b, $15
    ld d, $15
    ld d, $17
    inc h
    dec h
    rst $38

    db $88, $00, $81, $80, $15, $16, $15, $16, $17, $24, $25, $ff

    adc b
    nop
    ld h, c
    add b
    ld d, $15
    ld d, $17
    inc h
    dec h
    rst $38
    adc b
    nop
    ld b, d
    add b
    dec d
    ld d, $15
    ld d, $17
    inc h
    dec h
    rst $38
    adc b
    nop
    ld [hl+], a
    add b
    ld d, $17
    inc h
    dec h
    rst $38

    db $88, $f7, $b1, $c0, $03, $01, $01, $01, $01, $ff

    adc b
    rst $30
    pop de
    ret nz

    inc bc
    ld bc, $0101
    ld bc, $0101
    rst $38

    db $80, $f7, $d1, $c0, $03, $01, $01, $01, $01, $ff, $08, $f7, $d1, $c0, $03, $01
    db $01, $01, $01, $ff

    adc b
    nop
    or c
    add b
    ld b, $06
    ld b, $06
    ld b, $06
    rst $38
    adc b
    nop
    or e
    add b
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst $38
    adc b
    db $ed
    ld [hl], d

jr_07e_501f:
    add b
    ld e, c
    ccf
    ld hl, $2322
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    rst $38

    db $88, $ed, $72, $80, $59, $3f, $35, $36, $37, $37, $37, $37, $37, $37, $37

    scf
    scf
    scf
    rst $38

    db $88, $ed, $72, $80, $59, $3f, $25, $26, $27, $27, $27, $27, $27, $27

    daa
    daa
    daa
    daa
    rst $38

    db $88, $20, $94, $80, $5e, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $ff, $88, $f7
    db $81, $c0, $27, $34, $ff

    adc b
    jr nz, jr_07e_501f

    add b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    adc b
    jr nz, @+$5b

    add b
    inc b
    inc b
    rst $38
    adc b
    jr nz, @-$4c

    add b
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
    inc bc
    rst $38
    adc b
    db $ed
    pop de
    ret nz

    ld e, [hl]
    ld e, a
    ld l, h
    rst $38
    push af
    ld d, b
    ld hl, sp+$50
    inc b
    ld d, c

    db $10, $51, $1e, $51

    ld l, $51
    inc sp
    ld d, c
    scf
    ld d, c
    dec sp
    ld d, c
    ld b, c
    ld d, c
    ld c, l
    ld d, c

    db $56, $51

    ld h, d
    ld d, c

    db $72, $51

    add b
    ld d, c
    adc h
    ld d, c
    sbc b
    ld d, c
    and h
    ld d, c
    xor e
    ld d, c
    cp l
    ld d, c
    pop bc
    ld d, c
    daa
    ld d, d
    nop
    add b
    add b
    ld bc, $0302
    ld [bc], a
    ld bc, $feff
    db $fd
    cp $ff
    add b
    add b
    ld bc, $0202
    ld bc, $ff00
    cp $fe
    rst $38
    nop
    add b
    add b

    db $01, $01, $02, $01, $01, $00, $ff, $ff, $fe, $ff, $ff, $00, $80, $80, $01, $01
    db $02, $02, $01, $01, $00, $ff, $ff

    cp $fe
    rst $38
    rst $38
    nop
    add b
    add b
    ldh a, [$f8]
    nop
    add b
    nop
    or $00
    add b
    nop
    ei
    nop
    add b
    nop
    db $d3
    ld [c], a
    pop af
    nop
    add b
    nop
    ld [bc], a
    dec b
    add hl, bc
    dec b
    ld [bc], a
    cp $fb
    rst $30
    ei
    cp $80
    add b
    call c, $e8e2
    xor $f4
    ld a, [$8000]
    nop

    db $01, $03, $04, $03, $01, $ff, $fd, $fc, $fd, $ff, $80, $80

    ld bc, $0403
    inc b
    inc bc
    ld bc, $ff00
    db $fd
    db $fc
    db $fc
    db $fd
    rst $38
    nop
    add b
    add b

    db $01, $03, $04, $03, $01, $00, $ff, $fd, $fc, $fd, $ff, $00, $80, $80

    ld bc, $0604
    inc b
    ld bc, $fcff
    ld_long a, $fffc
    add b
    add b
    rst $20
    adc $b5
    sbc h
    add e
    ld l, d
    ld d, c
    jr c, @+$21

    ld b, $80
    add b
    ld [bc], a
    dec b
    ld [$0205], sp
    cp $fb
    ld hl, sp-$05
    cp $80
    add b
    db $fc
    db $fd
    cp $ff
    nop
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    add b
    nop
    rst $38
    nop
    add b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
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
    jr jr_07e_51f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07e_5203

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07e_5213

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07e_5223

    ld [hl-], a

jr_07e_51f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07e_5233

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_07e_5203:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_07e_5213:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_07e_5223:
    ld h, e
    ld h, h
    add b
    add b
    dec b
    dec b
    ld a, [bc]
    dec b
    dec b
    nop
    ei
    ei
    or $fb
    ei
    nop

jr_07e_5233:
    add b
    add b
    nop

    db $0a, $0a, $0a

    ld a, [bc]

    db $0a, $0a

    ld a, [bc]

    db $0a, $0a

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

    db $0a, $0a, $0a, $0a, $0a, $0a, $0a

    ld a, [bc]

    db $0a

    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

    db $0a, $0a, $0a, $0a

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

    db $0a, $0a, $0a, $0a

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

    db $0a, $0a, $0a, $0a

    ld a, [bc]
    ld a, [bc]

    db $0a

    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

    db $2b, $7e, $7e, $7e

    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]

    db $7e

    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, l
    ld a, l

    db $7d

    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l

    db $7d

    ld a, h

    db $7c

    ld a, h
    ld a, h
    ld a, h
    ld a, h

    db $7c

    ld a, h
    ld a, h
    ld a, h
    ld a, h

    db $7c

    ld a, h

    db $7c

    ld a, h

    db $7c

    ld a, h
    ld a, h

    db $7c

    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h

    db $3b, $53, $3c, $53, $45, $53

    ld c, [hl]
    ld d, e
    ld d, a
    ld d, e
    ld h, b
    ld d, e
    ld l, c
    ld d, e

    db $72, $53

    ld a, e
    ld d, e
    add h
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $00, $0f, $8d, $53, $8b, $54, $92, $55, $68, $56, $0f, $1f, $57, $9f, $58, $41
    db $5a, $40, $5c

    rrca
    inc c
    ld e, l
    cp [hl]
    ld e, [hl]
    inc c
    ld h, b
    rst $18
    ld h, c
    rrca
    ld h, b
    ld h, d
    ld d, a
    ld h, e
    ld c, d
    ld h, h
    ld b, b
    ld h, l
    rrca
    sub d
    ld h, l
    ld l, d
    ld h, a
    ld a, [hl]
    ld l, c
    rla
    ld l, e
    rrca
    add e
    ld l, h
    ret


    ld l, h
    db $e4
    ld l, h
    db $31
    ld l, l

    db $0f, $3a, $6d, $ff, $6f, $8a, $71, $df, $72

    rrca
    daa
    ld [hl], e
    ld a, [hl]
    ld [hl], h
    inc e
    db $76
    ld l, h
    ld [hl], a
    rrca
    jr z, jr_07e_53ff

    ld [hl], b
    ld a, c
    pop de
    ld a, d
    rst $30
    ld a, e

    db $dc, $11, $e6, $b0, $e8, $07, $ee, $33, $d4, $ea, $0b, $eb, $14, $e5, $40, $d0
    db $07, $e2, $50, $54, $d4, $31, $00, $21, $00, $d8, $c1, $a1, $00, $91, $00, $a1
    db $c1, $03, $51, $07, $e2, $50, $54, $d8, $c1, $00, $d7, $21, $00, $31, $51, $00
    db $d8, $c1, $00, $91, $a1, $0d, $c1, $01, $d7, $31, $01, $21, $50, $a4, $d8, $c1
    db $d7, $30, $21, $50, $a9, $21, $31, $20, $d8, $a1, $81, $81, $80, $c1, $81, $d0

    ld bc, $58d7
    ld e, b
    ld e, c
    jr c, jr_07e_540c

    ret c

    ret


    ret nc

    rlca
    add b
    add c
    add b
    jp $55d7


    ld d, c
    ld h, c
    nop
    add c
    nop
    and c
    ld [hl], c
    nop
    add c
    nop
    and c
    rst $00
    ld d, l
    add c
    ld h, c
    nop
    ld d, c

jr_07e_53ff:
    nop
    ld sp, $0031
    ld d, c
    nop
    ld [hl], c
    add e
    inc sp
    ret nc

    ld bc, $0156

jr_07e_540c:
    ld d, [hl]
    ld bc, $0157
    ld l, b
    ld e, b
    add hl, sp
    ret nc

    rlca
    ld de, $6100
    nop
    and c
    and c
    nop
    ld [hl], c
    nop
    ld sp, $0081
    and c
    nop
    pop bc
    ld d, l
    ld d, c
    ld h, c
    nop
    ld d, c
    nop
    ld sp, $0071
    ld sp, $d800
    and c
    rst $10
    add a
    ret nc

    ld bc, $1818
    add hl, de
    jr c, @+$5a

    ld l, c
    adc b
    reti


    adc b
    xor b
    reti


    xor c
    ret z

    reti


    ret


    rst $10
    dec e
    dec c
    ld [$1918], sp
    dec e
    dec c
    dec c
    dec c
    sbc $ff

    db $d3, $d0, $01, $94, $a8, $d0, $07, $00, $51, $00, $a1, $01, $c1, $d7, $21, $31
    db $21, $00, $d8, $c1, $00, $a1, $07, $a1, $00, $51, $00, $a1, $01, $c1, $d7, $21
    db $31, $51, $00, $31, $00, $21, $01, $d8, $c1, $a1, $91, $a1, $05, $c1, $00, $a1
    db $00, $91, $a1, $05, $a1, $00, $c1, $00, $d7, $21, $e3, $d0, $07, $dc, $11, $e8
    db $07, $ea, $0b, $eb, $14, $ee, $33, $d3, $e5, $40, $e6, $a0, $d0, $07, $e2, $5c
    db $55, $d3, $c1, $00, $a1, $00, $91, $71, $00, $51, $00, $71, $e6, $90, $50, $c0
    db $90, $50, $c0, $90, $50, $c1, $c1, $90, $51, $c1, $e6, $a0, $e2, $5c, $55, $d7
    db $70, $d8, $c0, $d7, $30, $70, $c0, $70, $30, $d8, $c0, $d7, $50, $d8, $c0, $d7
    db $50, $90, $c0, $90, $50, $d8, $c0, $d7, $21, $21, $30, $51, $a1, $a1, $20, $a1
    db $21, $81, $01, $c1, $01, $a1, $d7, $20, $54, $d8, $81, $c0, $a1, $d7, $20, $59
    db $e6, $80, $01, $21, $31, $20, $d8, $a1, $81, $81, $80, $c1, $81

    rst $10
    ld d, b
    ld d, b
    ret nc

    ld bc, $3858
    add hl, hl
    ret c

    ret z

    adc b
    adc c
    ret nc

    rlca
    nop
    add b
    pop bc
    and $80
    push hl
    nop
    rst $18
    inc b
    db $10
    add b
    ld d, b
    db $10
    add b
    ld d, b

jr_07e_551a:
    db $10
    ld h, c
    ld h, c

jr_07e_551d:
    db $10
    and c
    ld de, $a030
    ld [hl], b
    jr nc, @-$5e

    ld [hl], b
    jr nc, @-$7d

    add c
    ret c

    ret nz

    rst $10
    ld sp, $e081
    ret nc

    ld bc, $40e5
    and $a0
    ld e, b
    ld e, b
    ld e, c
    ld l, b
    adc b
    xor c
    ret z

    reti


    ret z

    rst $10
    jr jr_07e_551a

    add hl, de
    jr c, jr_07e_551d

    add hl, sp
    ld e, l
    dec c
    ld [$5958], sp
    ret nc

    rlca
    ld d, c
    dec b
    sbc $ff

    db $d3, $51, $00, $21, $00, $31, $71, $00, $51, $00, $31, $e3, $d3, $e2, $50, $55
    db $51, $00, $31, $00, $51, $71, $00, $51, $00, $31, $e2, $50, $55, $d7, $21, $00
    db $d8, $c1, $00, $a1, $01, $91, $71, $51, $d8, $30, $a0, $70, $30, $a0, $70, $30
    db $a1, $a1, $70, $31, $a1, $20, $a0, $50, $20, $a0, $50, $20, $a1, $a1, $50, $21
    db $a1, $e3, $d0, $07, $dc, $11, $e7, $01, $e6, $20, $e8, $07, $ea, $04, $eb, $14
    db $d1, $e2, $3e, $56, $d1, $a2, $52, $a1, $a2, $d7, $52, $d8, $a1, $df, $02, $d7
    db $32, $d8, $a2, $d7, $31, $d8, $e0, $df, $02, $d7, $52, $d8, $c2, $51, $e0, $e2
    db $3e, $56, $a2, $52, $a1, $d7, $52, $d8, $c2, $51, $c2, $72, $c1, $52, $d7, $52
    db $d8, $51, $a2, $52, $a1, $d7, $52, $d8, $a2, $51, $df, $02, $82, $d7, $30, $32
    db $d8, $80, $82, $d7, $30, $31, $d8, $81, $e0, $df, $02, $a2, $a0, $03, $02, $82
    db $81, $e0

    rst $18
    inc b
    rst $10
    ld [de], a
    db $10
    ret c

    add d
    rst $10
    db $10
    ret c

    ld h, d
    ld h, b
    rst $10
    ld h, c
    ret c

    ld h, c
    rst $10
    ld [hl-], a
    jr nc, @-$26

    and d
    rst $10
    jr nc, @-$26

    add d
    add b
    rst $10
    add c
    ret c

    add c
    ldh [$d0], a
    ld bc, $18d7
    ret c

    ret z

    xor c
    adc b
    xor b
    ret


    adc b
    reti


    adc b
    rst $10
    adc b
    reti


    adc c
    ret c

    adc b
    reti


    adc c
    rst $10
    dec e
    dec c
    ld [$1918], sp
    ret nc

    rlca
    ld de, $de05
    rst $38

    db $d1, $a2, $d7, $52, $d8, $51, $d7, $32, $22, $d8, $91, $e3, $d1, $e2, $32, $56
    db $a0, $a0, $d7, $a1, $50, $d8, $52, $d7, $32, $22, $d8, $91, $e2, $32, $56, $a2
    db $52, $a1, $d7, $52, $d8, $c2, $51, $d7, $30, $d8, $a0, $d7, $31, $30, $d8, $a2
    db $d7, $32, $d8, $a2, $31, $e3, $d0, $07, $d1, $e2, $f8, $56, $e2, $f8, $56, $e2
    db $f8, $56, $e2, $05, $57, $e2, $f8, $56, $e2, $f8, $56, $e2, $f8, $56, $e2, $05
    db $57, $e2, $f8, $56, $e2, $f8, $56, $e2, $f8, $56, $e2, $05, $57, $e2, $f8, $56
    db $e2, $f8, $56, $e2, $f8, $56, $10, $60, $50, $10, $10, $01, $30, $00, $31, $30
    db $31, $b0, $a0, $e2, $11, $57, $e2, $11, $57, $df, $03, $11, $60, $50, $11, $80
    db $50, $e0

    ld de, $5060
    ld sp, $3030
    jp Jump_07e_6031


    ld d, b
    db $10
    add b
    ld d, b
    db $10
    ld sp, $e231
    ld de, $e257
    ld de, $e257
    ld de, $e257
    ld de, $e257
    ld de, $e257
    ld de, $e257
    ld de, $d057
    ld bc, $3838
    add hl, sp
    rst $10
    ld e, b
    ld e, b
    ld e, c
    ret c

    cp a
    ld bc, $02af
    xor a
    ld [bc], a
    jr c, jr_07e_56f3

    add hl, bc
    ld [$3938], sp
    jr c, @+$0a

    add hl, bc
    xor a

jr_07e_56f3:
    dec bc
    ret nc

    rlca
    sbc $ff

    db $10, $60, $50, $10, $10, $02, $10, $80, $50, $10, $10, $02, $e3, $10, $60, $50
    db $10, $10, $02, $31, $31, $30, $31, $a0, $e3, $10, $60, $50, $10, $31, $80, $60
    db $10, $80, $50, $10, $31, $31, $e3, $d0, $01, $dc, $11, $e8, $07, $ea, $03, $eb
    db $14, $ee, $44, $d4, $e5, $80, $e6, $b0, $59, $5a, $09, $5a, $09, $1a, $59, $0a
    db $89, $0a, $09, $0a, $09, $0a, $09, $0a, $dd, $e5, $80, $e6, $70, $d4, $09, $0a
    db $09, $0a, $09, $0a, $59, $6a, $89, $aa, $89, $6a, $59, $3a, $d9, $39, $44, $55
    db $19, $d9, $1a, $d9, $19, $d9, $1a, $d9, $19, $d9, $1a, $d9, $19, $d9, $1a, $d9
    db $09, $0a, $09, $0a, $d8, $c6, $02, $d7, $16, $03, $36, $02, $d8, $86, $03, $e5
    db $40, $e6, $b0, $df, $02, $d7, $19, $0a, $09, $d8, $8a, $09, $0a, $59, $0a, $09
    db $aa, $09, $ca, $09, $ba, $a9, $0a, $89, $03, $d7, $19, $03, $59, $03, $a9, $0a
    db $69, $8a, $09, $5a, $09, $1a, $39, $d8, $ca, $09, $0a, $e0, $e2, $55, $58, $19
    db $d9, $1a, $d9, $19, $d9, $1a, $d9, $19, $d9, $1a, $d9, $19, $d9, $1a, $44, $54
    db $1a, $d8, $a9, $6a, $d9, $69, $d9, $6a, $d9, $69, $d9, $6a, $e2, $55, $58, $19
    db $d9, $1a, $d9, $19, $d9, $1a, $d9, $19, $d9

    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    add hl, bc
    ld a, [bc]
    ld [c], a
    db $76
    ld e, b
    rst $10
    add hl, de
    ld a, [de]
    add hl, bc
    ld a, [de]
    add hl, bc
    ld a, [de]
    add hl, sp
    ld e, d
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld [c], a
    db $76
    ld e, b
    call nc, Call_000_0359
    ld e, c
    inc bc
    ld e, c
    inc bc
    ld e, c
    inc bc
    add hl, de
    inc bc
    ld e, c
    inc bc
    adc c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    rst $18
    ld [bc], a
    ld [c], a
    adc c
    ld e, b
    db $d3
    call $add7
    xor l
    xor l
    adc l
    ld l, l
    ld e, c
    ld a, [de]
    add hl, bc
    ret c

    xor d
    adc c
    reti


    adc d
    add hl, bc
    ld a, [bc]
    ld [c], a
    adc c
    ld e, b
    db $d3
    call $6dd7
    ld l, l
    ld l, l
    ld e, l
    dec a
    add hl, de
    reti


    ld a, [de]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ldh [$de], a
    rst $38

    db $d4, $09, $0a, $89, $7a, $69, $3a, $09, $5a, $e3, $d3, $09, $8a, $a9, $d7, $1a
    db $09, $d8, $aa, $d7, $19, $3a, $e3, $d4, $e2, $3e, $58, $e2, $48, $58, $e2, $3e
    db $58, $09, $1a, $09, $1a, $19, $0a, $09, $0a, $e2, $3e, $58, $e2, $48, $58, $09
    db $0a, $49, $0a, $09, $3a, $09, $0a, $e3

    call nc, Call_000_1a19
    add hl, bc
    ld a, [de]
    add hl, bc
    ld a, [de]
    add hl, sp
    ld a, [bc]
    ld e, c
    ld a, [de]
    add hl, bc
    ret c

    xor d
    adc c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    db $e3
    call nc, Call_000_1a59
    add hl, bc
    ret c

    adc d
    add hl, bc
    ld a, [bc]
    sbc c
    ld a, [bc]
    xor c
    rst $10
    ld l, d
    add hl, bc
    ld l, d
    ret c

    xor c
    reti


    xor d
    add hl, bc
    ld a, [bc]
    db $e3

    db $d0, $01, $dc, $11, $e8, $07, $ea, $03, $eb, $14, $ee, $44, $d3, $e6, $90, $e5
    db $80, $19, $1a, $09, $1a, $09, $d8, $aa, $d7, $19, $0a, $d8, $c9, $0a, $09, $0a
    db $d7, $89, $d9, $84, $05, $09, $0a, $e5, $40, $dd, $e6, $70, $d2, $19, $d9, $1a
    db $89, $d9, $8a, $c9, $d9, $ca, $89, $d7, $1a, $d9, $19, $d8, $ca, $89, $6a, $59
    db $6a, $89, $d9, $8a, $19, $d9, $1a, $89, $d9, $8a, $c9, $d9, $ca, $89, $d7, $1a
    db $d8, $c9, $8a, $19, $d7, $1a, $d8, $c9, $8a, $69, $8a, $e2, $d2, $59, $e2, $d2
    db $59, $d2, $19, $d9, $1a, $89, $d9, $8a, $d7, $19, $d9, $1a, $d8, $89, $1a, $d9
    db $19, $6a, $a9, $d9, $aa, $19, $6a, $a9, $d9, $aa, $e2, $01, $5a, $d7, $59, $d9
    db $5a, $d9, $59, $d9, $5a, $d9, $59, $d9, $5a, $d9, $59, $d9, $5a, $09, $0a, $d7
    db $44, $55, $19, $d8, $aa, $69, $d9, $6a, $d9, $69, $d2, $19, $d9, $1a, $c9, $d9
    db $ca, $19, $ca, $d9, $c9, $d8, $ba, $09, $ba, $d7, $a9, $d9, $aa, $d8, $b9, $d7
    db $aa, $d9, $a9, $d8, $ba, $e2, $01, $5a, $d3, $59, $d9, $5a, $d9, $59, $d9, $5a
    db $d9, $59, $d9

    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    add hl, bc
    ld a, [bc]
    inc b
    ld a, [bc]
    and $60
    ld [c], a
    db $76
    ld e, b
    call nc, Call_000_1a19
    add hl, bc
    ld a, [de]
    add hl, bc
    ld a, [de]
    add hl, sp
    ld e, d
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, de
    ld a, [de]
    add hl, bc
    ld a, [de]
    add hl, bc
    ld a, [de]
    add hl, sp
    ld a, [bc]
    ld e, c
    ld a, [de]
    add hl, bc
    ret c

    xor d
    adc c
    ld a, [bc]
    inc b
    and $80
    rst $10
    add hl, de
    inc bc
    add hl, de
    inc bc
    add hl, de
    inc bc
    add hl, de
    inc bc
    ret c

    xor c
    inc bc
    rst $10
    add hl, de
    inc bc
    ret c

    ret


    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ret nc

    dec d
    rst $18
    inc b
    ld d, b
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    db $10
    ld h, b
    jr nc, @-$7e

    jr nc, @-$7e

    ld d, b
    db $10
    ret c

    add b
    rst $10
    ld d, b
    ldh [$d0], a
    ld bc, $ffde

    db $d2, $19, $d9, $1a, $89, $d9, $8a, $c9, $d9, $ca, $89, $1a, $d9, $19, $6a, $a9
    db $1a, $69, $aa, $19, $d9, $1a, $19, $d9, $1a, $89, $d9, $8a, $d7, $19, $d9, $1a
    db $d8, $a9, $6a, $d9, $69, $d7, $1a, $d8, $89, $6a, $c9, $8a, $39, $ca, $e3, $d2
    db $19, $d9, $1a, $89, $d9, $8a, $d7, $19, $d9, $1a, $d8, $89, $1a, $d9, $19, $e6
    db $a0, $d7, $8a, $09, $8a, $89, $0a, $09, $0a, $e6, $90, $d8, $19, $d9, $1a, $89
    db $d9, $8a, $d7, $19, $d9, $1a, $d8, $89, $1a, $d9, $19, $6a, $a9, $1a, $69, $aa
    db $19, $3a, $49, $0a, $d7, $39, $0a, $d8, $59, $d7, $3a, $d8, $39, $5a, $e3, $d0
    db $01, $dc, $11, $e7, $09, $e6, $20, $e8, $07, $d2, $39, $3a, $09, $3a, $09, $3a
    db $39, $0a, $d8, $89, $0a, $09, $0a, $09, $0a, $09, $0a, $dd, $d2, $19, $d9, $1a
    db $d8, $89, $d7, $1a, $d8, $c9, $d9, $ca, $d9, $c9, $aa, $d9, $a9, $aa, $a9, $d9
    db $aa, $89, $d9, $8a, $d9, $89, $d9, $8a, $d7, $19, $d9, $1a, $d8, $89, $d7, $1a
    db $d8, $c9, $d9, $ca, $d9, $c9, $aa, $d9, $a9, $aa, $a9, $d9, $aa, $89, $aa, $b9
    db $ca, $df, $02, $e2, $f8, $5b, $d2, $19, $d9, $1a, $d9, $19, $1a, $d8, $69, $d9
    db $6a, $69, $d7, $1a, $d9, $19, $1a, $d9, $19, $1a, $d8, $c9, $d9, $ca, $89, $d9
    db $8a, $e0, $e2, $f8, $5b, $e2, $f8, $5b, $e2, $f8, $5b, $d2, $49, $d9, $4a, $d9
    db $49, $d8, $ba, $d9, $b9, $d9, $ba, $d7, $49, $d9, $4a, $d8, $69, $d9, $6a, $d9
    db $69, $d9, $6a, $d9, $69, $d9, $6a, $d9, $69, $d9, $6a, $d9, $69, $d9, $6a, $d9
    db $69, $d9, $6a, $d9, $69, $d9, $6a, $b9, $ca, $d7, $19, $d9, $1a, $d9, $19, $d8
    db $8a, $d9, $89, $d9, $8a, $d7, $19, $d9, $1a, $d8, $b9, $d9, $ba, $d9, $b9, $6a
    db $d9, $69, $d9, $6a, $b9, $d9, $ba, $d2, $19, $d9, $1a, $d9, $19, $d8, $8a, $d9
    db $89, $d9, $8a, $d7, $19, $d9, $1a, $d8, $69, $d9, $6a, $d9, $69, $d7, $6a, $d9
    db $69, $d9, $6a, $19, $d9, $1a, $19, $d9, $1a, $d9, $19, $d8, $8a, $d9, $89, $d9
    db $8a, $d7, $19, $d9, $1a, $d8, $b9, $d9, $ba, $d9, $b9, $6a, $d9, $69, $d9, $6a
    db $b9, $d9, $ba, $49, $d9, $4a, $d9, $49, $d7, $4a, $d9, $49, $d9, $4a, $49, $d9
    db $4a, $d8, $69, $d9, $6a, $d9, $69, $d9, $6a, $d9, $69, $d9

    ld l, d
    reti


    ld l, c
    reti


    ld l, d
    reti


    ld l, c
    reti


    ld l, d
    reti


    ld l, c
    reti


    ld l, d
    reti


    ld l, c
    reti


    ld l, d
    ld a, c
    adc d
    sbc c
    reti


    sbc d
    sbc c
    rst $10
    sbc d
    reti


    sbc c
    ret c

    sbc d
    rst $10
    ld c, c
    sbc d
    ret c

    adc c
    reti


    adc d
    adc c
    rst $10
    adc d
    reti


    adc c
    ret c

    adc d
    rst $10
    adc c
    ret c

    adc d
    sbc c
    reti


    sbc d
    reti


    sbc c
    sbc d
    reti


    sbc c
    rst $10
    sbc d
    ret c

    sbc c
    reti


    sbc d
    rst $10
    add hl, de
    reti


    ld a, [de]
    add hl, de
    ld a, [de]
    reti


    add hl, de
    ld a, [de]
    ret c

    adc c
    rst $10
    ld a, [de]
    ret c

    sbc c
    reti


    sbc d
    sbc c
    sbc d
    reti


    sbc c
    rst $10
    sbc d
    ld c, c
    sbc d
    add hl, de
    reti


    ld a, [de]
    add hl, de
    ld a, [de]
    reti


    add hl, de
    ld a, [de]
    ret c

    adc c
    rst $10
    ld a, [de]
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    adc c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ret c

    adc c
    reti


    adc d
    add hl, bc
    ld a, [bc]
    rst $18
    inc bc
    ld [c], a
    jr jr_07e_5c31

    jp nc, $d919

    ld a, [de]
    ret c

    ret


    reti


    jp z, $aaa9

    ret


    reti


    jp z, $e2e0

    jr @+$5e

    jp nc, $d919

    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    sbc $ff

    db $d2, $19, $d9, $1a, $d9, $19, $d8, $8a, $d9, $89, $d9, $8a, $d7, $19, $d9, $1a
    db $d8, $69, $d9, $6a, $d9, $69, $d7, $1a, $d9, $19, $d9, $1a, $69, $d9, $6a, $e3

    jp nc, $d919

    ld a, [de]
    ret c

    ret


    reti


    jp z, $aaa9

    adc c
    reti


    adc d
    ld l, c
    reti


    ld l, d
    rst $10
    ld l, c
    reti


    ld l, d
    add hl, de
    reti


    ld a, [de]
    ret c

    xor c

jr_07e_5c31:
    reti


    xor d
    adc c
    reti


    adc d
    xor c
    reti


    xor d
    ret


    jp z, Jump_000_39d7

    reti


    ld a, [hl-]
    db $e3

    db $d0, $01, $d1, $df, $02, $09, $0a, $09, $0a, $09, $0a, $09, $0a, $e0, $dd, $e2
    db $e0, $5c, $e2, $e9, $5c, $e2, $e0, $5c, $e2, $fd, $5c, $e2, $e0, $5c, $e2, $e9
    db $5c, $e2, $e0, $5c, $e2, $f3, $5c, $e2, $e0, $5c, $e2, $e9, $5c, $e2, $e0, $5c
    db $e2, $f3, $5c, $e2, $e0, $5c, $e2, $e9, $5c, $e2, $e0, $5c, $e2, $f3, $5c, $e2
    db $e0, $5c, $e2, $e9, $5c, $e2, $e0, $5c, $e2, $fd, $5c, $e2, $06, $5d, $e2, $e0
    db $5c, $e2, $e9, $5c, $e2, $e0, $5c, $e2, $f3, $5c, $e2, $e0, $5c, $e2, $e9, $5c
    db $e2, $e0, $5c, $e2, $06, $5d

    rst $10
    ld e, c
    ld e, d
    ld e, c
    ret c

    cp a
    inc b
    cp d
    xor c
    xor d
    ld [c], a
    ldh [$5c], a
    ld [c], a
    jp hl


    ld e, h
    ld [c], a
    ldh [$5c], a
    ld [c], a
    db $fd
    ld e, h
    ld [c], a
    ldh [$5c], a
    ld [c], a
    jp hl


    ld e, h
    dec l
    dec a
    dec a
    rst $10
    ld e, l
    ret c

    cp l
    xor l
    ld c, c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ret nc

    ld a, [hl+]
    ret nz

    ret nc

    ld bc, $10df
    add hl, de
    ld a, [bc]
    ld l, h
    ld d, a
    add hl, sp
    ld a, [bc]
    adc h
    ld d, a
    ldh [$de], a
    rst $38

    db $19, $0a, $59, $1a, $69, $8a, $b9, $aa, $e3, $19, $0a, $59, $1a, $89, $6a, $39
    db $d9, $3a, $e3, $19, $0a, $59, $1a, $89, $6a, $a9, $d9, $aa, $e3, $19, $0a, $59
    db $1a, $89, $6a, $39, $3a, $e3, $d0, $2a, $c1, $d0, $01, $e3

    ret nc

    ld bc, $11dc
    push hl
    add b
    and $00
    add sp, $07
    ld [$eb0c], a
    inc e
    db $d3
    ld [$0909], sp
    add hl, bc
    ld [$0909], sp
    add hl, bc
    ld [$0909], sp
    add hl, bc
    and $b0
    sbc b
    reti


    sbc c
    xor c
    reti


    xor c
    db $dd
    ret z

    reti


    ret


    reti


    ret


    reti


    ret


    reti


    ret z

    reti


    ret


    ld e, c
    reti


    ld e, c
    reti


    ld e, b
    add hl, bc
    rst $10
    add hl, hl
    reti


    add hl, hl
    ret c

    ret z

    reti


    ret


    xor c
    reti


    xor c
    ret z

    reti


    ret


    reti


    ret


    reti


    ret


    reti


    ret z

    reti


    ret


    ld e, c
    reti


    ld e, c
    reti


    ld e, b
    add hl, bc
    ld a, c
    reti


    ld a, c
    reti


    ld a, b
    reti


    ld a, c
    sbc c
    reti


    sbc c
    xor b
    reti


    xor c
    reti


    xor c
    reti


    xor c
    sbc b
    reti


    sbc c
    reti


    sbc c
    add hl, bc
    ld a, b
    reti


    ld a, c
    ld e, c
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    ld a, c
    reti


    ld a, c
    reti


    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, b

jr_07e_5d8b:
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c

jr_07e_5d91:
    ld [$0909], sp
    add hl, bc
    sbc b
    reti


    sbc c
    xor c

jr_07e_5d99:
    reti


    xor c
    ret z

    reti


    ret


    reti


    ret


    reti


    ret


    reti


    ret z

    reti


    ret


    reti


    ret


    reti


    ret


    ld [$d709], sp
    add hl, hl
    reti


    add hl, hl
    jr c, jr_07e_5d8b

    add hl, sp
    ld e, c
    reti


    ld e, c
    jr z, jr_07e_5d91

    add hl, hl
    reti


    add hl, hl
    reti


    add hl, hl
    reti


    jr z, jr_07e_5d99

    add hl, hl
    ret c

    xor c
    reti


    xor c
    reti


    xor b
    reti


    xor c
    reti


    xor c
    reti


    xor c
    ld e, b
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, c
    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    xor b
    reti


    xor c
    sbc c
    reti


    sbc c
    ld a, b
    reti


    ld a, c
    sbc c
    reti


    sbc c
    ld [c], a
    sbc l
    ld e, [hl]
    ld [c], a
    add c
    ld e, [hl]
    ret z

    reti


    ret


    reti


    ret


    reti


    ret


    reti


    ret z

    reti


    ret


    ld e, c
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, c
    ld [c], a
    add c
    ld e, [hl]
    ld [c], a
    sbc l
    ld e, [hl]
    rst $18
    ld [bc], a
    ld a, b
    ld e, c
    ld a, c
    reti


    ld a, c
    reti


    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    ldh [$98], a
    xor c
    ret


    rst $10
    add hl, hl
    ret c

    ret z

    inc bc
    xor b
    inc bc
    sbc b
    inc bc
    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    ld e, b
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, c
    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    reti


jr_07e_5e6a:
    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    ld e, b
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, c
    sbc $d3
    ld a, b
    reti


    ld a, c
    sbc c
    reti


    sbc c
    xor b
    reti


    xor c
    rst $10
    add hl, sp
    reti


    add hl, sp
    jr z, jr_07e_5e6a

    add hl, hl
    ret c

    ret


    reti


    ret


    xor b
    reti


    xor c
    sbc c
    reti


    sbc c
    db $e3
    db $d3
    xor b
    reti


    xor c
    reti


    xor c
    reti


    xor c
    reti


    xor b
    reti


    xor c
    reti


    xor c
    reti


    xor c
    reti


    xor b
    reti


    xor c

jr_07e_5eb1:
    reti


    xor c
    reti


    xor c
    reti


    xor b
    reti


    xor c
    reti


    xor c
    reti


    xor c
    db $e3
    ret nc

    ld bc, $11dc
    push hl
    ld b, b
    and $00
    add sp, $07
    ld [$eb01], a
    jr jr_07e_5eb1

    cp $d3
    rst $18
    ld [bc], a
    ld [$0909], sp
    add hl, bc
    ld [$0909], sp
    add hl, bc
    ldh [$dd], a
    rst $18
    ld [bc], a
    and $87
    sbc b
    reti


    sbc c
    ld e, c
    reti


    ld e, c
    ret z

    reti


    ret


jr_07e_5ee8:
    ld e, c
    reti


    ld e, c
    ldh [$98], a
    reti


    sbc c
    ld e, c
    reti


    ld e, c
    rst $10
    jr c, @-$25

    add hl, sp

jr_07e_5ef6:
    ret c

    ld e, c
    reti


    ld e, c
    sbc b
    reti


    sbc c
    ld e, c
    reti


    ld e, c
    ret z

    reti


    ret


    ld e, c
    reti


    ld e, c
    xor b
    reti


    xor c
    ld e, c
    reti


    ld e, c
    rst $10
    jr z, jr_07e_5ee8

    add hl, hl
    ret c

    ld e, c
    reti


    ld e, c
    ld a, b
    reti


jr_07e_5f16:
    ld a, c
    add hl, sp
    reti


    add hl, sp
    rst $10
    jr c, jr_07e_5ef6

    add hl, sp
    ret c

    add hl, sp
    reti


    add hl, sp
    rst $18
    inc b
    ld a, b
    reti


    ld a, c
    add hl, sp
    reti


    add hl, sp
    ret z

    reti


    ret


    add hl, sp
    reti


    add hl, sp
    ldh [$e2], a
    db $db
    ld e, a
    xor b
    reti


jr_07e_5f36:
    xor c
    ld a, c
    reti


    ld a, c
    rst $10
    jr z, jr_07e_5f16

    add hl, hl
    ret c

    ld a, c
    reti


    ld a, c
    sbc b
    reti


    sbc c
    ld e, c
    reti


    ld e, c
    ret z

    reti


    ret


    ld e, c
    reti


    ld e, c
    ld [c], a
    db $db
    ld e, a
    ld [c], a
    xor $5f
    ld e, b
    reti


    ld e, c
    xor c
    reti


jr_07e_5f59:
    xor c
    rst $10
    jr z, jr_07e_5f36

    add hl, hl
    add hl, sp
    reti


    add hl, sp
    jr z, @-$25

    add hl, hl
    ret c

    xor c
    reti


    xor c

jr_07e_5f68:
    ld e, b
    reti


    ld e, c
    xor c
    reti


    xor c
    ld [c], a
    xor $5f
    ld e, b
    reti


    ld e, c
    xor c
    reti


jr_07e_5f76:
    xor c
    rst $10
    jr z, @-$25

    add hl, hl
    add hl, sp
    reti


    add hl, sp
    jr z, jr_07e_5f59

    add hl, hl
    ret c

    xor c
    reti


    xor c
    ld e, b
    reti


    ld e, c
    add hl, hl
    reti


    add hl, hl
    rst $18
    ld [bc], a
    jr c, jr_07e_5f68

    add hl, sp
    ld a, c
    reti


    ld a, c
    xor b
    reti


    xor c
    rst $10

jr_07e_5f97:
    add hl, hl
    reti


    add hl, hl
    ret c

    jr z, jr_07e_5f76

jr_07e_5f9d:
    add hl, hl
    ld e, c
    reti


    ld e, c
    sbc b
    reti


    sbc c
    ret


    reti


    ret


    ldh [$28], a
    reti


    add hl, hl
    ld a, c
    reti


    ld a, c
    cp b

jr_07e_5faf:
    reti


    cp c
    rst $10
    add hl, hl
    reti


    add hl, hl
    ret c

    cp b
    reti


    cp c
    ld a, c
    reti


    ld a, c
    jr z, jr_07e_5f97

    add hl, hl
    ld a, c

jr_07e_5fc0:
    reti


    ld a, c
    jr z, jr_07e_5f9d

    add hl, hl
    ld e, c
    reti


    ld e, c
    sbc b
    reti


jr_07e_5fca:
    sbc c
    ret


    reti


    ret


    sbc b
    reti


    sbc c

jr_07e_5fd1:
    ld e, c
    reti


    ld e, c
    jr z, jr_07e_5faf

    add hl, hl
    ld e, c
    reti


    ld e, c
    sbc $d3
    rst $18
    ld [bc], a
    xor b
    reti


    xor c
    ld e, c
    reti


    ld e, c
    rst $10
    jr z, jr_07e_5fc0

    add hl, hl
    ret c

    ld e, c
    reti


    ld e, c
    ldh [$e3], a
    db $d3
    jr c, jr_07e_5fca

    add hl, sp
    xor c
    reti


    xor c
    rst $10
    jr c, jr_07e_5fd1

    add hl, sp
    ret c

    ld a, c
    reti


    ld a, c
    xor b
    reti


    xor c
    rst $10
    add hl, sp
    reti


    add hl, sp
    ret c

    xor b
    reti


    xor c
    ld a, c
    reti


    ld a, c
    db $e3
    ret nc

    ld bc, $11dc
    rst $20
    add hl, bc
    and $20
    add sp, $07
    pop de
    rst $18
    ld [bc], a
    ld [$0909], sp
    add hl, bc
    ld [$0909], sp
    add hl, bc
    ldh [$dd], a
    rst $18
    inc bc
    ld e, b
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, c
    reti


jr_07e_602d:
    ld e, b
    reti


    ld e, c
    ld e, c

Jump_07e_6031:
    reti


    ld e, c
    ldh [$d7], a
    ld e, b
    reti


    ld e, c
    reti


    ld e, c
    ret c

    ret


jr_07e_603c:
    reti


    ret z

    reti


    ret


    ld e, c
    reti


    ld e, c
    xor b

jr_07e_6044:
    reti


    xor c
    reti


    xor c
    reti


    xor c
    xor b

jr_07e_604b:
    reti


    xor c
    reti


    xor c
    reti


    xor c
    rst $10

jr_07e_6052:
    jr c, jr_07e_602d

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    jr c, @-$25

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    ret c

    jr c, jr_07e_603c

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    reti


    jr c, jr_07e_6044

    add hl, sp
    add hl, sp
    reti


    add hl, sp
    reti


    jr c, jr_07e_604b

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    jr c, jr_07e_6052

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    ret z

    reti


    ret


    reti


    ret


    reti


    ret


    reti


    ret z

    reti


    ret


    ret


    reti


    ret


    ret z

    reti


    ret


    reti


    ret


    reti


    ret


jr_07e_6093:
    reti


    ret z

    reti


    ret


    reti


    ret


    reti


    ret


jr_07e_609b:
    xor b
    reti


    xor c
    reti


    xor c
    reti


    xor c
    reti


    xor b
    reti


    xor c
    xor c
    reti


    xor c
    rst $10
    xor b
    reti


    xor c
    reti


    xor c
    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    xor c
    reti


    xor c
    ret c

    jr c, jr_07e_6093

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    reti


    jr c, jr_07e_609b

    add hl, sp
    add hl, sp
    reti


    add hl, sp
    ld e, b
    reti


    ld e, c
    reti


    ld e, c
    ret


jr_07e_60cc:
    reti


    ret z

    reti


    ret


    rst $10
    ld e, c
    reti


    ld e, c

jr_07e_60d4:
    ret c

    xor b
    reti


    xor c
    reti


    xor c

jr_07e_60da:
    reti


    xor c
    reti


    xor b
    reti


    xor c
    xor c
    reti


jr_07e_60e2:
    xor c
    xor b
    reti


    xor c
    reti


    xor c
    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    xor c
    reti


    xor c
    rst $10
    jr c, jr_07e_60cc

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    reti


    jr c, jr_07e_60d4

    add hl, sp
    add hl, sp
    reti


    add hl, sp
    jr c, jr_07e_60da

    add hl, sp
    reti


    add hl, sp
    ret c

    add hl, sp
    reti


    jr c, jr_07e_60e2

    add hl, sp
    rst $10
    add hl, sp
    reti


    add hl, sp
    ret c

    xor b
    reti


    xor c
    reti


    xor c
    reti


    xor c
    reti


jr_07e_6117:
    xor b
    reti


    xor c
    xor c
    reti


    xor c
    rst $10
    xor b

jr_07e_611f:
    reti


    xor c
    reti


    xor c
    reti


    xor c
    ret c

    xor b
    reti


    xor c
    reti


    xor c
    reti


    xor c
    jr c, @-$25

    add hl, sp
    reti


    add hl, sp
    xor c
    reti


    xor b
    reti


    xor c
    rst $10
    add hl, sp
    reti


    add hl, sp
    ret c

    jr c, jr_07e_6117

    add hl, sp
    reti


    add hl, sp

jr_07e_6141:
    reti


    add hl, sp
    reti


    jr c, jr_07e_611f

    add hl, sp
    add hl, sp
    reti


jr_07e_6149:
    add hl, sp
    xor b
    reti


    xor c
    reti


    xor c
    reti


jr_07e_6150:
    xor c
    reti


    xor b
    reti


    xor c
    xor c
    reti


    xor c

jr_07e_6158:
    xor b
    reti


    xor c
    reti


    xor c
    reti


jr_07e_615e:
    xor c
    xor b
    reti


    xor c
    reti


    xor c
    reti


    xor c
    jr c, jr_07e_6141

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp

jr_07e_616d:
    reti


    jr c, jr_07e_6149

    add hl, sp
    add hl, sp
    reti


    add hl, sp
    rst $10
    jr z, jr_07e_6150

    add hl, hl
    reti


    add hl, hl
    reti


    add hl, hl
    reti


    jr z, jr_07e_6158

    add hl, hl
    add hl, hl
    reti


    add hl, hl
    jr c, jr_07e_615e

    add hl, sp
    reti


    add hl, sp
    ret c

    xor c
    reti


    xor b
    reti


    xor c
    rst $10
    add hl, sp
    reti


    add hl, sp
    jr z, jr_07e_616d

    add hl, hl
    reti


    add hl, hl
    ret c

    sbc c
    reti


    sbc b
    reti


    sbc c
    rst $10
    add hl, hl
    reti


    add hl, hl
    ret c

    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, b
    reti


    ld a, c
    ld a, c
    reti


    ld a, c
    rst $10
    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    add hl, hl
    reti


    jr z, @-$25

    add hl, hl
    ret c

    ld a, c
    reti


    ld a, c
    rst $10
    ld e, b
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    ld e, c
    reti


    ld e, c
    ret c

    ret z

    reti


    ret


    reti


    ret


    rst $10
    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    ret c

    ld e, c
    reti


    ld e, c
    sbc $d0
    ld bc, $18d1
    add hl, bc
    cp a
    inc bc
    ld [$af09], sp
    inc bc
    ld [$d709], sp
    ld e, a
    inc bc
    ret c

    cp a
    ld [bc], a
    xor a
    inc bc
    db $dd
    rst $18
    ld [bc], a
    ld [c], a
    dec hl
    ld h, d
    ld [c], a
    inc a
    ld h, d
    ld [c], a
    dec hl
    ld h, d
    ld [c], a
    ld c, l
    ld h, d
    ldh [$d0], a
    daa
    ret nz

    ret nc

    ld bc, $0968
    add hl, de
    add hl, bc
    jr c, jr_07e_6218

    add hl, bc
    add hl, bc
    adc b
    add hl, bc
    add hl, de
    add hl, bc
    ld [c], a
    inc a
    ld h, d

jr_07e_6218:
    ld [c], a
    dec hl
    ld h, d
    ld [c], a
    ld c, l
    ld h, d
    ld [c], a
    dec hl
    ld h, d
    ld [c], a
    inc a
    ld h, d
    ld [c], a
    dec hl
    ld h, d
    ld [c], a
    ld c, l
    ld h, d
    sbc $18
    add hl, bc
    ld l, c
    add hl, bc
    adc b
    add hl, bc
    add hl, de
    add hl, bc
    jr c, jr_07e_623e

    add hl, bc
    add hl, bc
    ld e, b
    add hl, bc
    add hl, de
    add hl, bc
    db $e3
    jr jr_07e_6247

jr_07e_623e:
    ld l, c
    add hl, bc
    jr jr_07e_624b

    add hl, de
    add hl, bc
    jr c, jr_07e_624f

    add hl, bc

jr_07e_6247:
    add hl, bc
    adc b
    add hl, bc
    add hl, de

jr_07e_624b:
    add hl, bc
    db $e3
    jr jr_07e_6258

jr_07e_624f:
    ld l, c
    add hl, bc
    jr c, jr_07e_625c

    add hl, de
    add hl, bc
    rst $10
    ld e, b
    add hl, bc

jr_07e_6258:
    ld e, c
    add hl, bc
    ret c

    cp b

jr_07e_625c:
    add hl, bc
    xor c
    add hl, bc
    db $e3
    ret nc

    ld bc, $80e5

jr_07e_6264:
    and $b0
    call c, $ea11
    dec c
    db $eb
    ld d, $e8
    rlca
    db $d3
    adc b
    xor c
    adc b
    ld a, c
    db $dd
    db $d3
    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    rst $10
    jr jr_07e_6264

    add hl, de
    ld e, b
    reti


    ld e, c
    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc b

jr_07e_62a0:
    reti


    adc c
    ld l, b
    reti


    ld l, c
    reti


    ld l, b
    reti


    ld l, c
    ret c

    ld l, b
    adc c
    ld l, b
    ld e, c
    ld l, b
    reti


    ld l, c
    reti


    ld l, b
    reti


jr_07e_62b4:
    ld l, c
    reti


    ld l, b
    reti


jr_07e_62b8:
    ld l, c
    reti


    ld l, b
    reti


jr_07e_62bc:
    ld l, c
    reti


    ld l, b
    reti


    ld l, c

jr_07e_62c1:
    xor b
    reti


    xor c
    rst $10
    jr c, jr_07e_62a0

    add hl, sp
    ld l, b
    reti


    ld l, c
    ld l, b

jr_07e_62cc:
    reti


    ld l, c
    reti


    ld l, b
    reti


    ld l, c
    ld e, b
    reti


    ld e, c

jr_07e_62d5:
    reti


    ld e, b
    reti


jr_07e_62d8:
    ld e, c
    jr c, jr_07e_62b4

    add hl, sp
    reti


    jr c, jr_07e_62b8

    add hl, sp
    jr jr_07e_631b

    jr jr_07e_62bc

    ret


    rst $10
    jr jr_07e_62c1

    add hl, de
    ret c

    ld l, b
    reti


jr_07e_62ec:
    ld l, c
    xor b
    reti


    xor c
    rst $10
    jr jr_07e_62cc

    add hl, de
    ld l, b
    reti


    ld l, c
    ld e, b
    reti


    ld e, c

jr_07e_62fa:
    jr c, jr_07e_62d5

    add hl, sp
    jr jr_07e_62d8

    add hl, de
    ret c

    ret z

jr_07e_6302:
    reti


    ret


    reti


    ret z

    reti


    ret


    reti


    ret z

    reti


    ret


    reti


    ret z

    reti


    ret


    rst $10

jr_07e_6311:
    jr jr_07e_62ec

    add hl, de

jr_07e_6314:
    ret c

    ret z

    reti


    ret


jr_07e_6318:
    xor b
    reti


    xor c

jr_07e_631b:
    ret z

jr_07e_631c:
    reti


    ret


    rst $10
    jr jr_07e_62fa

    add hl, de
    reti


    jr @-$25

    add hl, de
    reti


    jr jr_07e_6302

    add hl, de
    xor b
    reti


    xor c
    adc b
    reti


    adc c
    ld l, b
    reti


    ld l, c
    ld e, b
    reti


    ld e, c
    jr c, jr_07e_6311

    add hl, sp
    jr c, jr_07e_6314

    add hl, sp
    reti


    jr c, jr_07e_6318

    add hl, sp
    reti


    jr c, jr_07e_631c

    add hl, sp
    reti


    jr c, @-$25

    add hl, sp
    reti


    jr c, @-$25

    add hl, sp
    reti


    jr c, @-$25

    add hl, sp
    ret c

    adc b
    xor c
    adc b
    ld a, c
    sbc $ff
    ret nc

    ld bc, $80e5
    ld [$eb0d], a

jr_07e_635e:
    ld d, $e6
    sub b
    call c, $e811
    rlca
    db $d3
    ld e, b
    ld l, c
    ld e, b
    ld c, c
    db $dd
    db $d3
    ld e, b
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, c

jr_07e_6373:
    reti


    ld e, b
    reti


    ld e, c

jr_07e_6377:
    reti


    ld e, b
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, c

jr_07e_637f:
    adc b
    reti


    adc c
    rst $10

jr_07e_6383:
    jr jr_07e_635e

    add hl, de
    ld e, b

jr_07e_6387:
    reti


    ld e, c
    ld e, b
    reti


jr_07e_638b:
    ld e, c
    reti


    ld e, b
    reti


jr_07e_638f:
    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    jr c, jr_07e_6373

    add hl, sp
    reti


    jr c, jr_07e_6377

    add hl, sp
    ret c

    jr c, jr_07e_63fb

    jr c, jr_07e_63bd

    jr c, jr_07e_637f

    add hl, sp
    reti


    jr c, jr_07e_6383

    add hl, sp
    reti


    jr c, jr_07e_6387

    add hl, sp
    reti


    jr c, jr_07e_638b

    add hl, sp
    reti


    jr c, jr_07e_638f

    add hl, sp
    ld l, b
    reti


    ld l, c
    xor b
    reti


    xor c

jr_07e_63bd:
    rst $10
    jr c, @-$25

    add hl, sp
    ret c

    ret z

    reti


    ret


    reti


    ret z

    reti


    ret


    ret z

    reti


    ret


    reti


    ret z

    reti


jr_07e_63cf:
    ret


    ret z

    reti


    ret


jr_07e_63d3:
    reti


    ret z

    reti


    ret


jr_07e_63d7:
    xor b
    ret


    xor b
    adc c

jr_07e_63db:
    xor b
    reti


    xor c
    xor b
    reti


    xor c
    rst $10
    jr jr_07e_63bd

    add hl, de
    ld l, b
    reti


    ld l, c
    xor b
    reti


    xor c
    adc b
    reti


    adc c
    ld l, b
    reti


    ld l, c
    ld e, b
    reti


    ld e, c
    jr c, jr_07e_63cf

    add hl, sp
    reti


    jr c, jr_07e_63d3

    add hl, sp

jr_07e_63fb:
    reti


    jr c, jr_07e_63d7

    add hl, sp
    reti


jr_07e_6400:
    jr c, jr_07e_63db

    add hl, sp
    ret c

    xor b
    reti


    xor c
    adc b

jr_07e_6408:
    reti


    adc c
    ld e, b
    reti


jr_07e_640c:
    ld e, c
    adc b
    reti


    adc c

jr_07e_6410:
    xor b
    reti


    xor c
    reti


jr_07e_6414:
    xor b
    reti


    xor c
    reti


    xor b
    reti


    xor c
    rst $10
    ld l, b
    reti


    ld l, c
    ld e, b
    reti


    ld e, c
    jr c, @-$25

    add hl, sp
    jr jr_07e_6400

    add hl, de
    ret c

    ret z

    reti


    ret


    rst $10
    jr jr_07e_6408

    add hl, de
    reti


    jr jr_07e_640c

    add hl, de
    reti


    jr jr_07e_6410

    add hl, de
    reti


    jr jr_07e_6414

    add hl, de
    ret c

    ret z

    reti


jr_07e_643f:
    ret


    reti


    ret z

    reti


jr_07e_6443:
    ret


    ld e, b
    ld l, c
    ld e, b

jr_07e_6447:
    ld c, c
    sbc $ff
    ret nc

jr_07e_644b:
    inc de
    rst $20
    ld [$40e6], sp
    jp hl


    nop
    call c, $e811
    ld [$01d3], sp
    db $dd
    db $d3
    rla
    ret c

    ld h, a
    ret nc

    ld bc, $38d7
    reti


    add hl, sp
    reti


    jr c, jr_07e_643f

    add hl, sp
    reti


    jr c, jr_07e_6443

    add hl, sp
    reti


    jr c, jr_07e_6447

    dec [hl]
    inc bc
    jr c, jr_07e_644b

    add hl, sp
    reti


    jr c, @-$25

    dec [hl]
    inc bc
    jr c, @-$25

    add hl, sp
    reti


    jr c, @-$25

    add hl, sp
    ret nc

    inc de
    ret c

    add c
    sub c
    and e
    ld h, a
    add c
    sub c
    and e
    ret nc

    ld bc, $d968
    ld l, c
    reti


    ld l, b
    reti


    ld l, c
    reti


    ld l, b
    reti


    ld h, l
    inc bc
    ld l, b
    reti


    ld h, l
    inc bc
    ld l, b
    reti


    ld l, c
    reti


    ld h, h
    inc bc
    ld l, c
    reti


    ld l, b
    reti


    ld h, l
    inc bc
    ld l, b
    reti


    ld l, c
    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc b
    reti


jr_07e_64b4:
    adc c
    rst $10
    add [hl]
    ld [bc], a

jr_07e_64b8:
    adc c
    ret c

    adc b
    reti


jr_07e_64bc:
    adc c
    reti


    adc b
    reti


jr_07e_64c0:
    adc c
    reti


    adc b
    reti


jr_07e_64c4:
    adc c
    reti


    adc b
    reti


jr_07e_64c8:
    adc c
    and $20
    db $dd

jr_07e_64cc:
    ret nc

    inc de
    jp nc, $d817

    ld h, a
    ret nc

    ld bc, $38d7
    reti


    add hl, sp
    reti


    jr c, jr_07e_64b4

    add hl, sp
    reti


    jr c, jr_07e_64b8

    add hl, sp
    reti


    jr c, jr_07e_64bc

    dec [hl]
    inc bc
    jr c, jr_07e_64c0

    add hl, sp
    reti


    jr c, jr_07e_64c4

    dec [hl]
    inc bc
    jr c, jr_07e_64c8

    add hl, sp
    reti


    jr c, jr_07e_64cc

    add hl, sp
    ret nc

    inc de
    ret c

    add c
    sub c
    and e
    ld h, a
    add c
    sub c
    and e
    ret nc

    ld bc, $d968
    ld l, c
    reti


    ld l, b
    reti


    ld l, c
    reti


    ld l, b
    reti


    ld h, l
    inc bc
    ld l, b
    reti


    ld h, l
    inc bc
    ld l, b
    reti


    ld l, c
    reti


    ld h, h
    inc bc
    ld l, c
    reti


    ld l, b
    reti


    ld h, l
    inc bc
    ld l, b
    reti


    ld l, c
    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c

jr_07e_6526:
    reti


    adc b
    reti


    adc c
    rst $10
    add [hl]
    ld [bc], a
    adc c
    ret c

    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc b
    reti


    adc c
    sbc $ff
    ret nc

    ld bc, $38d1
    add hl, hl
    jr z, jr_07e_657f

    jr nz, jr_07e_6526

    ld [c], a
    ld [hl], d
    ld h, l
    ld [c], a
    ld a, l
    ld h, l
    ld [c], a
    ld [hl], d
    ld h, l
    ld [c], a
    add a
    ld h, l
    rst $18
    ld [bc], a
    ld [c], a
    ld [hl], d
    ld h, l
    ld [c], a
    ld a, l
    ld h, l
    ld [c], a
    ld [hl], d
    ld h, l

jr_07e_6560:
    ld [c], a
    add a
    ld h, l
    ldh [$e2], a
    ld [hl], d
    ld h, l
    ld [c], a
    ld a, l
    ld h, l
    ld [c], a
    ld [hl], d
    ld h, l
    ld [c], a
    ld a, l
    ld h, l
    sbc $ff
    jr c, jr_07e_657d

    jr c, @+$0a

    jr nz, jr_07e_65b0

    add hl, hl
    jr z, jr_07e_65b3

    jr nz, jr_07e_6560

jr_07e_657d:
    jr c, @+$0b

jr_07e_657f:
    jr c, @+$0b

    jr c, @+$0b

    ld [$2008], sp
    db $e3
    jr c, jr_07e_6592

    jr c, @+$0b

    jr c, jr_07e_6596

    inc sp
    inc h
    inc h
    inc [hl]
    db $e3

jr_07e_6592:
    ret nc

    ld bc, $11dc

jr_07e_6596:
    and $b0
    add sp, $07
    ld [$eb02], a
    dec d
    xor $22
    call nc, Call_07e_40e5
    ld [c], a
    or l
    ld h, [hl]
    rst $18
    ld [bc], a
    ld c, $0e
    ld c, $0e
    ldh [$e2], a
    add hl, de
    ld h, a

jr_07e_65b0:
    ld [c], a
    sbc a
    ld h, [hl]

jr_07e_65b3:
    ld d, [hl]
    rlca
    ld d, [hl]
    rlca
    ld [hl], $57
    db $76
    add a
    ld b, $77
    ld d, [hl]
    scf
    reti


    ld a, $d9
    ld a, $e2
    sbc a
    ld h, [hl]
    ld e, $d9
    ld d, $37
    reti


    ld a, $56
    rlca
    ld a, $d9
    ld [hl], $57
    reti


    ld e, [hl]
    db $76
    rlca
    ld e, [hl]
    reti


    ld d, [hl]
    ld [hl], a
    reti


    ld a, [hl]
    add [hl]
    rlca
    xor [hl]
    reti


    xor [hl]
    ld a, $d9
    ld a, $5e
    ld sp, $d811
    pop bc
    and c
    add c
    ld h, c
    ld d, c
    ld sp, $d811
    pop bc
    and c
    add c
    ld h, c
    ld d, c
    ld sp, $0e0e
    ld c, $0e
    ld c, $d3
    adc [hl]
    reti


    add [hl]
    rst $10
    daa
    reti


    ld l, $d9
    ld l, $d9
    ld l, $d9
    ld l, $d9
    ld l, $d9
    ld l, $e2
    or l
    ld h, [hl]
    ld [c], a
    db $f4
    ld h, [hl]
    ld [c], a
    ld b, $67
    ld [c], a
    db $f4
    ld h, [hl]
    db $76
    rlca
    add [hl]
    rlca
    and [hl]
    scf
    ld b, $d7
    scf
    reti


    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $e2
    db $f4
    ld h, [hl]
    ld [c], a
    ld b, $67
    ld [c], a
    db $f4
    ld h, [hl]
    push de
    ld [hl], $07
    ret c

    and [hl]
    rlca
    db $76
    rlca
    add [hl]
    and a
    reti


    and [hl]
    scf
    ld b, $77
    add [hl]
    rlca
    and [hl]
    rlca
    ld [c], a
    add hl, de
    ld h, a
    push hl
    nop
    add sp, $05
    db $d3
    ld d, [hl]
    ld d, a
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    rst $10
    ld d, a
    ret c

    ld d, [hl]
    rst $00
    ld d, [hl]
    and a
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    ld d, a
    add $57
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    ld d, a
    add $57
    add $57
    and [hl]
    rst $00
    add sp, $07
    sbc $ff
    call nc, $0459
    ld c, $39
    inc b
    ld c, $29
    inc b
    ld c, $d8
    and [hl]
    rlca
    ld b, $c7
    reti


    ret z

    dec b
    ld e, [hl]
    ld c, $0e
    ld c, $56
    rlca
    ld d, [hl]
    scf
    ld b, $57
    db $e3
    call nc, Call_000_3756
    ld e, [hl]
    reti


    ld e, [hl]
    reti


    ld e, [hl]
    reti


    ld e, [hl]
    ld a, [hl]
    adc [hl]
    xor [hl]
    db $e3
    call nc, $0756
    ld d, [hl]
    rlca
    ld [hl], $57
    ld b, $87
    ld b, $77
    ld [hl], $d8
    and a
    add $d9
    rst $00
    rst $10
    ld [hl], $d9
    scf
    db $e3
    call nc, Call_07e_74e2
    ld h, [hl]
    db $d3
    ld a, $d9
    ld [hl], $57
    reti


    ld d, h
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $df
    ld [bc], a
    ld c, $0e
    ld c, $0e
    ldh [$e2], a
    ld [hl], h
    ld h, [hl]
    adc [hl]
    reti


    add [hl]
    and a
    reti


    and c
    inc c
    ld c, $0e
    ld c, $0e
    add [hl]
    and a
    cp c
    inc b
    ld c, $a9
    inc b
    ld c, $89
    inc b
    ld c, $36
    rlca
    ld b, $57
    reti


    ld e, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $e3
    call nc, $0756
    add $07
    add $a7
    ld b, $87
    reti


    add [hl]
    ld d, a
    ld b, $87
    and [hl]
    rlca
    adc $e3
    push de
    ld d, $d8
    rst $00
    and [hl]
    add a
    reti


    add [hl]
    and a
    ld b, $87
    ld a, [hl]
    reti


    ld a, [hl]
    reti


    ld a, [hl]
    reti


    ld a, [hl]
    db $e3
    ld [c], a
    sub c
    ld h, [hl]
    call nc, $d98e
    add [hl]
    ld [hl], a
    reti


    ld a, [hl]
    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $e2
    sub c
    ld h, [hl]
    adc $d9
    adc $d9
    adc $3e
    reti


    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $e2
    sub c
    ld h, [hl]
    adc $d9
    add $a7
    reti


    xor [hl]
    adc [hl]
    ld a, [hl]
    reti


    db $76
    ld d, a
    reti


    ld e, [hl]
    ld a, $1e
    reti


    ld e, $d9
    ld e, $d9
    ld e, $ce
    reti


    add $a7
    reti


    xor [hl]
    adc [hl]
    ld a, [hl]
    reti


    ld a, [hl]
    reti


    ld a, [hl]
    reti


    ld a, [hl]
    adc [hl]
    reti


    adc [hl]
    xor [hl]
    reti


    xor [hl]
    db $e3
    ret nc

    ld bc, $11dc
    add sp, $07
    jp nc, Jump_000_02ea

    db $eb
    dec d
    push hl
    add b
    and $75
    ld [c], a
    cp c
    ld l, b
    ld d, [hl]
    ld d, a
    add $57
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    ld d, a
    add $57
    add $57
    and [hl]
    rst $00
    and $70
    push hl
    ld b, b
    ld [$eb0b], a
    dec d
    ld [c], a
    add hl, sp
    ld l, c
    ld [c], a
    and e
    ld l, b
    db $d3
    add $07
    add $07
    and [hl]
    rst $00
    rst $10
    ld [hl], $37
    ld b, $d8
    rst $00
    and [hl]
    and a
    reti


    xor [hl]
    reti


    xor [hl]
    ld [c], a
    and e
    ld l, b
    ld e, [hl]
    reti


    ld d, [hl]
    ld [hl], a
    reti


    ld a, [hl]
    add [hl]
    rlca
    ld a, [hl]
    reti


    db $76
    add a
    reti


    adc [hl]
    and [hl]
    rlca
    adc [hl]
    reti


    add [hl]
    and a
    reti


    xor [hl]
    add $07
    ld a, [hl]
    reti


    ld a, [hl]
    xor [hl]
    reti


    xor [hl]
    adc [hl]
    reti


    add [hl]
    rst $10
    scf
    reti


    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $d3
    ld e, [hl]
    reti


    ld d, [hl]
    ld d, a
    reti


    ld e, [hl]
    reti


    ld e, [hl]
    reti


    ld e, [hl]
    reti


    ld e, [hl]
    reti


    ld e, [hl]
    reti


    ld e, [hl]
    push hl
    add b
    and $75
    ld [c], a
    cp c
    ld l, b
    push hl
    ld b, b
    and $70
    ld [c], a
    jr z, @+$6b

    db $d3
    xor [hl]
    reti


    and [hl]
    ld [hl], a
    reti


    ld a, [hl]
    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $e2
    jr z, @+$6b

    rst $10
    ld a, $d9
    ld [hl], $d8
    and a
    reti


    xor [hl]
    ld a, [hl]
    reti


    ld a, [hl]
    reti


    ld a, [hl]
    reti


    ld a, [hl]
    reti


    ld a, [hl]
    ld [c], a
    jr z, jr_07e_688e

    rst $10
    ld e, $d9
    ld d, $d8
    and a
    reti


    xor [hl]
    ld a, [hl]
    reti


    ld a, [hl]
    reti


    ld a, [hl]
    reti


    ld a, [hl]
    reti


    ld a, [hl]
    ld [c], a
    jr z, jr_07e_68a2

    rst $10
    ld a, $d9
    ld [hl], $d8
    ld [hl], a
    reti


    ld a, [hl]
    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $d9
    ld a, $e2
    add hl, sp
    ld l, c
    push hl
    nop
    add sp, $05
    and $60
    db $e4
    cp $d3
    ld c, $07
    ld d, [hl]
    ld d, a
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    rst $10
    ld d, a
    ret c

    ld d, [hl]
    rst $00
    ld d, [hl]
    and a
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    ld d, a
    add $57
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    ld d, a
    add $57
    add $e4
    nop
    and $75
    add sp, $07
    sbc $ff
    jp nc, $5756

    add $57
    and [hl]
    rst $00
    ld d, [hl]
    rst $10
    ld d, a
    ret c

    ld d, [hl]
    rst $00
    ld d, [hl]
    and a

jr_07e_688e:
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    ld d, a
    add $57
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    ld d, a
    add $57
    add $57
    and [hl]
    rst $00

jr_07e_68a2:
    db $e3
    db $d3
    add $07
    add $07
    and [hl]
    rst $00
    ld b, $d7
    scf
    ld b, $27
    ret c

    add $57
    ld d, [hl]
    reti


    ld d, a
    ld [hl], $d9
    scf
    db $e3
    jp nc, Jump_07e_7fe2

    ld l, b
    ld d, [hl]
    ld d, a
    add $57
    and [hl]
    ld d, a
    add $57
    ld d, [hl]
    ld d, a
    add $57
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    and a
    add $57
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    rst $00
    ld d, [hl]
    and a
    add $57
    ld [c], a
    ld a, a
    ld l, b
    and [hl]
    and a
    rst $10
    ld d, [hl]
    ret c

    and a
    ld [hl], $d8
    and a
    rst $10
    ld d, [hl]
    ret c

    and a
    and [hl]
    and a
    rst $10
    ld d, [hl]
    ret c

    and a
    rst $10
    ld [hl], $d8
    and a
    rst $10
    ld [hl], $57
    ret c

    and [hl]
    rst $10
    scf
    ld d, [hl]
    ret c

    and a
    rst $10
    ld d, [hl]
    ret c

    and a
    rst $10
    ld [hl], $57
    ret c

    and [hl]
    rst $10
    scf
    ld d, [hl]
    scf
    ret c

    and [hl]
    ld d, a
    ld [hl], $57
    ld d, [hl]
    ld d, a
    add $57
    and [hl]
    rst $00
    ld d, [hl]
    rst $10
    ld d, a
    ret c

    ld d, [hl]
    rst $00
    ld d, [hl]
    and a
    add $57
    and [hl]
    rst $00
    db $e3
    db $d3
    adc $d9
    add $87
    reti


    adc [hl]
    ld e, [hl]
    reti


    ld e, [hl]
    reti


    ld e, [hl]
    reti


    ld e, [hl]
    reti


    ld e, [hl]
    db $e3
    db $d3
    rst $18
    inc bc
    adc [hl]
    reti


    add [hl]
    rst $00
    reti


    adc $d9
    adc $5e
    reti


    ld d, [hl]
    rst $00
    reti


    adc $d9
    adc $7e
    reti


    db $76
    rst $00
    reti


    adc $d9
    adc $3e
    reti


    ld [hl], $c7
    reti


    adc $d9
    adc $e0
    adc [hl]
    reti


    add [hl]
    add a
    reti


    adc [hl]
    reti


    adc [hl]
    ld e, [hl]
    reti


    ld d, [hl]
    add a
    reti


    adc [hl]
    reti


    adc [hl]
    ld a, [hl]
    reti


    db $76
    and a
    reti


    xor [hl]
    reti


    xor [hl]
    ld c, [hl]
    reti


    ld b, [hl]
    rst $00
    reti


    adc $d9
    adc $e3
    ret nc

    ld bc, $11dc
    rst $20
    add hl, bc
    and $20
    add sp, $07
    pop de
    ld [c], a
    ld a, a
    ld l, d
    ld [c], a
    add hl, sp
    ld l, d
    ld [c], a
    call c, $d16a
    rst $18
    inc bc
    ld e, [hl]
    reti


    ld d, [hl]
    ld d, a
    ld e, [hl]
    ld c, $0e
    ld d, [hl]
    ld d, a
    ld d, [hl]
    rst $10
    ld d, a
    ret c

    ld d, [hl]
    rst $10
    ld d, a
    ret c

    ldh [$d7], a
    ld e, $d9
    ld d, $d8
    add a
    reti


    adc [hl]
    rst $10
    ld e, $3e
    reti


    ld [hl], $d8
    and a
    reti


    xor [hl]
    rst $10
    ld a, $16
    rla
    ld d, $d8
    add a
    reti


    add [hl]
    add a
    rst $10
    ld d, $d8
    add a
    rst $10
    ld [hl], $37
    ret c

    and [hl]
    rst $10
    scf
    ld [hl], $3e
    ret c

    and a
    ld [c], a
    ld e, $6a
    ld [c], a
    add hl, sp
    ld l, d
    ld [c], a
    ld a, a
    ld l, d
    pop de
    rst $18
    inc b
    rst $10
    ld e, $d8
    adc [hl]
    rst $10
    ld e, $d8
    adc [hl]
    rst $10
    ld e, $d8
    adc [hl]
    rst $10
    ld e, $d8
    adc [hl]
    rst $10
    ld a, $d8
    xor [hl]
    rst $10
    ld a, $d8
    xor [hl]
    rst $10
    ld a, $d8
    xor [hl]
    rst $10
    ld a, $d8
    xor [hl]
    ldh [$e2], a
    call c, $d26a
    ld d, [hl]
    ret c

    rst $00
    and [hl]
    ld d, a
    reti


    ld e, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $5e
    reti


    ld d, [hl]
    ld d, a
    reti


    ld d, [hl]
    ld d, a
    ld [hl], $57
    reti


    ld e, [hl]
    ld c, $0e
    ld c, $de
    rst $38
    pop de
    ld d, [hl]
    rst $10
    ld d, a
    ret c

    ld d, [hl]
    rst $10
    scf
    reti


    ld [hl], $37
    ret c

    ld d, [hl]
    rst $10
    ld d, a
    ret c

    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    rst $10
    ld d, [hl]
    ld a, $47
    db $e3
    jp nc, $5756

    ret c

    ld d, [hl]
    rst $10
    scf
    reti


    ld [hl], $37
    ret c

    ld d, [hl]
    rst $10
    ld d, a
    ret c

    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld a, $47
    db $e3
    jp nc, $d81e

    adc [hl]
    rst $10
    ld d, $d8
    adc [hl]
    rst $10
    ld e, $17
    ret c

    adc [hl]
    rst $10
    ld e, $d8
    adc [hl]
    db $e3
    pop de
    add $d7
    rst $00
    ret c

    add $ce
    rst $10
    and a
    ret c

    add $d7
    rst $00
    ret c

    add $c7
    rst $10
    add $d8
    rst $00
    add $d7
    xor [hl]
    rst $00
    db $e3
    ld [c], a
    ld e, $6a
    ld [c], a
    add hl, sp
    ld l, d
    ld [c], a
    ld e, $6a
    jp nc, $5756

    ret c

    ld d, [hl]
    rst $10
    scf
    reti


    ld [hl], $37
    ret c

    ld d, [hl]
    rst $10
    ld d, a
    ld d, [hl]
    ld d, a
    ld [hl], $37
    ret c

    add $c7
    or [hl]
    add a
    ld [c], a
    ld e, $6a
    jp nc, $5756

    ret c

    ld d, [hl]
    rst $10
    scf
    reti


    ld [hl], $37
    ret c

    ld d, [hl]
    rst $10
    ld d, a
    ret c

    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    rst $10
    ld d, [hl]
    ret c

    adc [hl]
    sub a
    pop de
    rst $18
    ld [bc], a
    and [hl]
    rst $10
    and a
    ret c

    and [hl]
    rst $10
    add a
    reti


    add [hl]
    add a
    ret c

    and [hl]
    rst $10
    and a
    add [hl]
    and a
    ret c

    and [hl]
    and a
    rst $10
    and [hl]
    ret c

    xor [hl]
    and a
    ldh [$e2], a
    ld e, $6a
    db $e3
    ld [c], a
    ld d, h
    ld l, d
    ld [c], a
    ld h, [hl]
    ld l, d
    ld [c], a
    ld d, h
    ld l, d
    jp nc, Jump_000_3736

    ret c

    and [hl]
    rst $10
    ld a, $37
    ret c

    and [hl]
    rst $10
    scf
    ld [hl], $37
    ret c

    and [hl]
    rst $10
    scf
    ld [hl], $3e
    ret c

    and a
    ld [c], a
    ld d, h
    ld l, d
    ld [c], a
    ld h, [hl]
    ld l, d
    ld [c], a
    ld d, h
    ld l, d
    jp nc, Jump_000_3736

    ld [hl], $d8
    xor [hl]
    and a
    rst $10
    ld [hl], $d8
    and a
    add $c7
    db $76
    rst $00
    add $ce
    ld [hl], a
    db $e3
    ret nc

    ld bc, $e2d1
    call z, $e26b
    call z, $e26b
    call z, $e26b
    db $db
    ld l, e
    ld [c], a
    call z, $e26b
    jp hl


    ld l, e
    ld [c], a
    call z, $e26b
    jp hl


    ld l, e
    ld [c], a
    ld hl, sp+$6b
    ld [c], a
    add hl, bc
    ld l, h
    ld [c], a
    inc e
    ld l, h
    ld [c], a
    jr z, jr_07e_6baa

    ld [c], a
    inc e
    ld l, h
    ld [c], a
    dec [hl]
    ld l, h
    ld [c], a
    inc e
    ld l, h
    ld [c], a
    jr z, jr_07e_6bb6

    ld [c], a
    inc e
    ld l, h
    ld [c], a
    dec [hl]
    ld l, h
    ld [c], a
    ld b, e
    ld l, h
    ld [c], a
    ld c, a
    ld l, h
    ld [c], a
    ld c, a
    ld l, h
    ld [c], a
    ld e, c
    ld l, h
    ld [c], a
    ld l, b
    ld l, h
    ld [c], a
    ld b, e
    ld l, h
    ld [c], a
    ld a, b
    ld l, h
    ld [c], a
    call z, $e26b
    call z, $e26b
    call z, $e26b
    db $db
    ld l, e
    ld [c], a
    call z, $e26b
    jp hl


    ld l, e
    ld [c], a
    call z, $e26b
    jp hl


    ld l, e
    ld [c], a
    ld hl, sp+$6b
    ld [c], a
    inc e
    ld l, h
    ld [c], a
    jr z, jr_07e_6bf2

    ld [c], a
    inc e
    ld l, h
    ld [c], a
    dec [hl]
    ld l, h
    ld [c], a
    inc e
    ld l, h
    ld [c], a
    jr z, jr_07e_6bfe

    ld [c], a
    inc e
    ld l, h
    ld [c], a
    dec [hl]
    ld l, h
    ld [c], a
    ld b, e
    ld l, h
    ld [c], a
    ld c, a
    ld l, h
    ld [c], a
    ld c, a
    ld l, h
    ld [c], a
    ld e, c
    ld l, h
    ld [c], a
    ld l, b
    ld l, h
    ld [c], a
    ld e, c
    ld l, h

jr_07e_6baa:
    ld [c], a
    ld l, b
    ld l, h
    ld [c], a
    ld a, b
    ld l, h
    ld d, $67
    add [hl]
    ret nc

    inc a
    ret nz

jr_07e_6bb6:
    ret nc

    ld bc, $3607
    scf
    ld [hl], $37
    ld e, $66
    add a
    ld e, $86
    ld h, a
    ld e, $66
    add a
    ld [hl], $37
    ld [hl], $37
    sbc $ff
    ld d, $67
    ld d, $87
    ld a, $16
    daa
    ld d, $67
    ld d, $87
    ld a, $16
    ld d, a
    db $e3
    ld d, $67
    ld d, $87
    ld a, $16
    daa
    ld d, $67
    ld d, $87
    ld a, $3e
    db $e3
    ld d, $67
    ld d, $87
    ld a, $16
    daa
    ld d, $67

jr_07e_6bf2:
    ld d, $87
    ld a, $26
    scf
    db $e3
    ld d, $67
    ld d, $87
    ld [hl], $57

jr_07e_6bfe:
    ld d, $27
    ld d, $67
    ld d, $87
    ld [hl], $57
    ld h, $37
    db $e3
    ld d, $67
    ld d, $87
    ld [hl], $57
    ld d, $27
    ld d, $67
    ld d, $87
    ld [hl], $d7
    ld d, a
    ret c

    or [hl]
    and a
    db $e3
    ld e, $16
    ld d, a
    ld a, $16
    daa
    ld d, $57
    ld e, $3e
    ld a, $e3
    ld e, $16
    ld d, a
    ld a, $16
    daa
    ld d, $57
    ld e, $3e
    ld h, $37
    db $e3
    ld e, $16
    ld d, a
    ld a, $16
    daa
    ld d, $57
    ld e, $36
    scf
    ld h, $37
    db $e3
    ret nc

    ld [bc], a
    adc $d0
    ld bc, $5e1e
    ld e, $3e
    ld e, $3e
    db $e3
    rst $18
    ld [bc], a
    ld e, $66
    add a
    ld e, $86
    ld h, a
    ldh [$e3], a
    ld d, $67
    add [hl]
    rla
    add [hl]
    ld h, a
    ld a, $16
    daa
    ld [hl], $17
    ld h, [hl]
    add a
    ld a, $e3
    ld d, $67
    add [hl]
    rla
    add [hl]
    ld h, a
    ld a, $16
    daa
    ld [hl], $17
    ld h, [hl]
    add a
    ld [hl], $37
    db $e3
    ld e, $5e
    ld e, $5e
    ld e, $5e
    ld [hl], $37
    ld [hl], $37
    db $e3
    ret nc

    add hl, de
    push hl
    add b
    and $b0
    call c, $ea11
    inc b
    db $eb
    cpl
    add sp, $07
    db $d3
    ld [c], a
    sub a
    ld l, h
    sbc $ff
    db $d3
    ld d, h
    ld d, b
    ld h, b
    add b
    add e
    inc sp
    ld h, h
    ld d, b
    jr nc, jr_07e_6cb2

    scf
    ld d, h
    ld d, b
    ld [hl], b
    add b
    and e
    inc sp
    add h
    ld [hl], c
    add b
    ld d, a
    inc [hl]
    db $10
    ret c

    ret nz

    and b

jr_07e_6cb2:
    add d
    rst $10
    ld [de], a
    ld sp, $6064
    add b
    and b
    add a
    rst $10
    inc d
    ret c

    ret nz

    and b
    add b
    and a
    call nz, $d7c0
    db $10
    jr nc, jr_07e_6cdf

    db $e3
    ret nc

    add hl, de
    push hl
    add b
    and $50
    ld [$eb04], a
    dec l
    add sp, $07
    db $e4
    cp $d3
    nop
    ret nc

    ld bc, $d006
    add hl, de
    db $dd

jr_07e_6cdf:
    ld [c], a
    sub a
    ld l, h
    sbc $ff
    ret nc

    add hl, de
    rst $20
    add hl, bc
    and $40
    jp hl


    nop
    call c, $e811
    rlca
    db $d3
    ld [de], a
    db $10
    inc de
    ret c

    or d
    or b
    or c
    or c
    ld h, d
    ld h, b
    ld h, e
    or d
    or b
    or c
    or c
    rst $10
    ld [de], a
    db $10
    inc de
    ld [hl-], a
    jr nc, @+$35

    ret c

    add d
    add b
    add e
    rst $10
    ld [de], a
    db $10
    ld de, $d811
    add d
    add b
    add e
    rst $10
    ld [de], a
    db $10
    ld de, $d811
    ld h, d
    ld h, b
    ld h, e
    add d
    add b
    add c
    add c
    and d
    and b
    and e
    ld h, d
    ld h, b
    ld h, c
    ld h, c
    add d
    add b
    add e
    ld [de], a
    db $10
    ld de, $de11
    rst $38
    ret nc

    add hl, de
    pop de
    ld [de], a
    db $10
    ld de, $de51
    rst $38

    db $d0, $01, $dc, $11, $e5, $80, $e8, $07, $ea, $0d, $eb, $19, $d3, $df, $02, $e6
    db $00, $08, $08, $08, $09, $08, $08, $08, $09, $e0, $dd, $e6, $b0, $df, $02, $c8
    db $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8, $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8
    db $d9, $c8, $d9, $c8, $d9, $c9, $a8, $d9, $a8, $d9, $a8, $d9, $a9, $98, $d9, $98
    db $d9, $98, $d9, $99, $d9, $98, $d9, $98, $d9, $98, $d9, $99, $d9, $98, $d9, $98
    db $d9, $98, $d9, $99, $a8, $d9, $a8, $d9, $a8, $d9, $a9, $c8, $d9, $c8, $d9, $c8
    db $d9, $c9, $d9, $c8, $d9, $c8, $d9, $c8, $a9, $d9, $a8, $d9, $a8, $d9, $a8, $d9
    db $a9, $d9, $a8, $d9, $a8, $d9, $a8, $d9, $a9, $c8, $d9, $c8, $d9, $c8, $d9, $c9
    db $d9, $c8, $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8, $d9, $c8, $d9, $c8, $d9, $c9
    db $a8, $d9, $a8, $d9, $a8, $d9, $a9, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88
    db $d9, $88, $d9, $88, $79, $d9, $78, $d9, $78, $d9, $78, $d9, $79, $d9, $78, $d9
    db $78, $d9, $78, $d9, $79, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88, $d9, $88
    db $d9, $88, $d9, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88, $d9, $88
    db $d9, $88, $d9, $89, $d7, $18, $d9, $18, $d9, $18, $d9, $19, $d9, $18, $d9, $18
    db $d9, $18, $d9, $19, $58, $d9, $58, $d9, $58, $d9, $59, $d9, $58, $d9, $58, $d9
    db $58, $d9, $59, $d8, $e0, $d4, $18, $08, $18, $09, $d8, $c8, $d7, $18, $d9, $12
    db $05, $39, $d9, $38, $d9, $38, $d9, $38, $d9, $39, $d9, $38, $d9, $38, $d9, $38
    db $d9, $39, $38, $08, $38, $09, $18, $d8, $c8, $d9, $c2, $05, $d7, $19, $d9, $18
    db $d9, $18, $d9, $18, $d9, $19, $d9, $18, $d9, $18, $d9, $18, $d9, $19, $18, $d9
    db $18, $d9, $18, $d8, $c9, $d9, $c8, $d9, $c8, $d7, $18, $d9, $19, $38, $d9, $38
    db $d9, $38, $19, $d9, $18, $d9, $18, $d8, $c8, $d9, $c9, $d7, $38, $d9, $38, $d9
    db $38, $d8, $b9, $d9, $b8, $d9, $b8, $d7, $38, $d9, $39, $48, $d9, $48, $d9, $48
    db $39, $d9, $38, $d9, $38, $18, $d9, $19, $68, $08, $68, $09, $08, $68, $d9, $62
    db $05, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89, $48, $d9, $48, $88, $d9, $89
    db $68, $08, $68, $09, $08, $68, $d9, $62, $05, $49, $d9, $48, $d9, $48, $d9, $48
    db $d9, $49, $d9, $48, $d9, $48, $d9, $48, $d9, $49, $e6, $c0, $df, $02, $d3, $c8
    db $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8, $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8
    db $d9, $c8, $d9, $c8, $d9, $c9, $d9, $c8, $d9, $c8, $d9, $c8, $d9, $c9, $d7, $18
    db $d9, $18, $d9, $18, $d9, $19, $d9, $18, $d9, $18, $d9, $18, $d9, $19, $58, $d9
    db $58, $d9, $58, $d9, $59, $d9, $58, $d9, $58, $d9, $58, $d9, $59, $88, $d9, $88
    db $d9, $88, $59, $d9, $58, $d9, $58, $18, $d9, $19, $d8, $c8, $d9, $c8, $d9, $c8
    db $d9, $c9, $a8, $d9, $a8, $c8, $d9, $c9, $d7, $18, $d9, $18, $d9, $18, $d9, $19
    db $d9, $18, $d9, $18, $d9, $18, $39, $d9, $38, $d9, $38, $d9, $38, $d9, $39, $d9
    db $38, $d9, $38, $d9, $38, $d9, $39, $d8, $e0, $de

    rst $38

    db $d3, $98, $d9, $98, $d9, $98, $d9, $99, $d9, $98, $d9, $98, $d9, $98, $d9, $99
    db $d9, $98, $d9, $98, $d9, $98, $d9, $99, $78, $d9, $78, $d9, $78, $d9, $79, $58
    db $d9, $58, $d9, $58, $d9, $59, $d9, $58, $d9, $58, $d9, $58, $d9, $59, $d9, $58
    db $d9, $58, $d9, $58, $d9, $59, $78, $d9, $78, $d9, $78, $d9, $79, $98, $d9, $98
    db $d9, $98, $d9, $99, $d9, $98, $d9, $98, $d9, $98, $79, $d9, $78, $d9, $78, $d9
    db $78, $d9, $79, $d9, $78, $d9, $78, $d9, $78, $d9, $79, $88, $d9, $88, $d9, $88
    db $d9, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88, $d9, $88, $d9, $88
    db $d9, $89, $78, $d9, $78, $d9, $78, $d9, $79, $58, $d9, $58, $d9, $58, $d9, $59
    db $d9, $58, $d9, $58, $d9, $58, $39, $d9, $38, $d9, $38, $d9, $38, $d9, $39, $d9
    db $38, $d9, $38, $d9, $38, $d9, $39, $df, $03, $58, $d9, $58, $d9, $58, $d9, $59
    db $d9, $e0, $58, $d9, $58, $d9, $58, $d9, $59, $e3, $d0, $01, $dc, $11, $e5, $80
    db $e8, $07, $ea, $0d, $eb, $19, $d3, $d3, $df, $02, $e6, $00, $08, $08, $08, $09
    db $08, $08, $08, $09, $e0, $dd, $e6, $90, $e2, $55, $6f, $d3, $df, $02, $88, $d9
    db $88, $d9, $88, $d9, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89, $e0, $e2, $55
    db $6f, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89
    db $d7, $18, $d9, $18, $d9, $18, $d9, $19, $d9, $18, $d9, $18, $d9, $18, $d9, $19
    db $d8, $a8, $08, $a8, $09, $88, $a8, $d9, $a2, $05, $a9, $d9, $a8, $d9, $a8, $d9
    db $a8, $d9, $a9, $d9, $a8, $d9, $a8, $d9, $a8, $d9, $a9, $88, $08, $88, $09, $88
    db $88, $d9, $82, $05, $89, $d9, $88, $d9, $88, $d9, $88, $d9, $89, $d9, $88, $d9
    db $88, $d9, $88, $d9, $89, $df, $02, $a8, $d9, $a8, $d9, $a8, $a9, $d9, $a8, $d9
    db $a8, $a8, $d9, $a9, $e0, $b8, $d9, $b8, $d9, $b8, $d7, $19, $d9, $18, $d9, $18
    db $d8, $b8, $d9, $b9, $b8, $d9, $b8, $d9, $b8, $b9, $d9, $b8, $d9, $b8, $b8, $d9
    db $b9, $d7, $28, $08, $28, $09, $08, $28, $d9, $22, $05, $49, $d9, $48, $d9, $48
    db $d9, $48, $d9, $49, $08, $08, $08, $09, $38, $08, $38, $09, $08, $38, $d9, $32
    db $05, $19, $d9, $18, $d9, $18, $d9, $18, $d9, $19, $d9, $18, $d9, $18, $d9, $18
    db $d9, $19, $e6, $70, $e2, $6d, $71, $d3, $68, $d9, $68, $d9, $68, $a9, $d9, $a8
    db $d9, $a8, $68, $d9, $69, $d9, $68, $d9, $68, $d9, $68, $d9, $69, $a8, $d9, $a8
    db $68, $d9, $69, $e2, $6d, $71, $68, $d9, $68, $d9, $68, $d9, $69, $d9, $68, $d9
    db $68, $d9, $68, $69, $d9, $68, $d9, $68, $d9, $68, $d9, $69, $d9, $68, $d9, $68
    db $d9, $68, $d9, $69, $e2, $6d, $71, $68, $d9, $68, $d9, $68, $a9, $d9, $a8, $d9
    db $a8, $d7, $18, $d9, $19, $d9, $18, $d9, $18, $d9, $18, $d9, $19, $d8, $a8, $d9
    db $a8, $d7, $18, $d9, $19, $e2, $6d, $71, $68, $d9, $68, $d9, $68, $d9, $69, $d9
    db $68, $d9, $68, $d9, $68, $69, $d9, $68, $d9, $68, $d9, $68, $d9, $69, $d9, $68
    db $d9, $68, $d9, $68, $d9, $69, $de

    rst $38

    db $d3, $58, $d9, $58, $d9, $58, $59, $d9, $58, $d9, $58, $58, $d9, $59, $d9, $58
    db $d9, $58, $d9, $58, $d9, $59, $58, $d9, $58, $58, $d9, $59, $e3, $d0, $01, $e7
    db $1e, $e6, $20, $e9, $00, $dc, $11, $e8, $06, $d1, $df, $02, $08, $08, $08, $09
    db $08, $08, $08, $09, $e0, $dd, $d1, $df, $02, $df, $03, $58, $d9, $58, $d9, $58
    db $d9, $59, $c8, $d9, $c8, $d9, $c8, $59, $d9, $58, $58, $58, $d9, $59, $c8, $d9
    db $c8, $d9, $c8, $d9, $c9, $e0, $88, $d9, $88, $d9, $88, $d9, $89, $d7, $38, $d9
    db $38, $d9, $38, $d8, $89, $d9, $88, $88, $88, $d9, $89, $d7, $38, $d9, $38, $d9
    db $38, $d9, $39, $d8, $a8, $d9, $a8, $d9, $a8, $d9, $a9, $d7, $58, $d9, $58, $d9
    db $58, $d8, $c9, $d9, $c8, $c8, $c8, $d9, $c9, $d7, $78, $d9, $78, $d8, $78, $d9
    db $79, $68, $d9, $68, $d9, $68, $d9, $69, $d7, $18, $d9, $18, $d9, $18, $d8, $69
    db $d9, $68, $68, $68, $d9, $69, $d7, $18, $d9, $18, $d9, $18, $d9, $19, $d8, $68
    db $d9, $68, $d9, $68, $d9, $69, $d7, $68, $d9, $68, $d9, $68, $d8, $69, $d9, $68
    db $68, $68, $d9, $69, $d7, $68, $d9, $68, $d9, $68, $d9, $69, $d8, $e0, $e2, $a3
    db $72, $e2, $c3, $72, $e2, $a3, $72, $48, $d9, $48, $d9, $48, $d9, $49, $d7, $48
    db $d9, $48, $d9, $48, $49, $d9, $48, $d8, $48, $48, $d9, $49, $d7, $48, $d9, $48
    db $d8, $48, $59, $78, $d9, $78, $d9, $78, $d9, $79, $d7, $78, $d9, $78, $d9, $78
    db $69, $d9, $68, $d8, $68, $68, $d9, $69, $d7, $68, $d9, $68, $d9, $68, $d9, $69
    db $d8, $48, $d9, $48, $d9, $48, $d9, $49, $d7, $48, $d9, $48, $d9, $48, $29, $d9
    db $28, $28, $d8, $98, $d9, $99, $d7, $28, $d9, $28, $d9, $28, $d9, $29, $df, $08
    db $e2, $c3, $72, $e0, $de

    rst $38

    db $d1, $38, $d9, $38, $d9, $38, $d9, $39, $d7, $38, $d9, $38, $d9, $38, $39, $d9
    db $38, $d8, $38, $38, $d9, $39, $d7, $38, $d9, $38, $d9, $38, $d9, $39, $d8, $e3
    db $d2, $18, $d9, $18, $d9, $18, $d9, $19, $88, $d9, $88, $d9, $88, $19, $d9, $18
    db $18, $18, $d9, $19, $88, $d9, $88, $d9, $88, $d9, $89, $e3, $d0, $01, $d1, $18
    db $08, $38, $29, $18, $28, $08, $39, $18, $08, $08, $19, $38, $28, $38, $39, $dd
    db $18, $08, $d7, $68, $d8, $09, $58, $d7, $68, $d8, $08, $d7, $69, $d8, $58, $d7
    db $68, $d8, $18, $09, $d7, $68, $d8, $08, $58, $09, $d7, $68, $d8, $08, $18, $09
    db $d7, $68, $d8, $08, $58, $19, $d7, $68, $d8, $18, $18, $09, $18, $08, $d7, $68
    db $d8, $59, $de

    rst $38
    ret nc

    ld bc, $40e5
    and $b0
    call c, $e811
    rlca
    ld [$eb01], a

jr_07e_7334:
    ld e, $d4
    ld [c], a
    rst $28
    ld [hl], e
    ld [c], a
    ld c, e
    ld [hl], h
    ld [c], a
    rst $28
    ld [hl], e
    rst $18

jr_07e_7340:
    ld [bc], a
    call nc, $d818
    adc c
    rst $10
    add hl, de
    add hl, sp
    ret c

    adc b
    rst $10
    add hl, sp
    ld e, c
    ret c

    adc c
    rst $10
    ld e, b
    ld l, c
    ld e, c
    add hl, sp
    ld e, b
    ret c

    adc c
    adc c
    rst $10
    add hl, sp
    jr jr_07e_7334

    ret


    rst $10
    add hl, de
    ret c

jr_07e_7360:
    adc c
    ld e, b
    adc c
    add hl, de
    adc c
    rst $10
    jr jr_07e_7340

    adc c
    adc c
    rst $10
    add hl, sp
    ret c

    adc b
    adc c
    rst $10
    ld e, c
    add hl, sp
    jr jr_07e_73dd

    ld e, c
    add hl, sp
    ret c

    ret z

    rst $10
    add hl, de
    add hl, sp
    add hl, de
    ret c

    adc b
    rst $10
    add hl, de

jr_07e_7380:
    ret c

    adc c
    reti


    adc c
    rst $10
    jr jr_07e_7360

    add hl, de
    ret c

    add hl, de
    reti


    add hl, de
    ldh [$e2], a
    ld c, e
    ld [hl], h
    sbc $ff
    call nc, $d918
    add hl, de
    reti


    dec e
    dec b
    ret c

    ret z

    xor c
    adc c
    reti


jr_07e_739e:
    adc c
    ld l, b
    reti


    ld l, c
    ld e, c
    reti


    ld e, c
    jr c, jr_07e_7380

    add hl, sp
    ld e, c
    reti


    ld e, c
    ld l, b
    reti


    ld l, c
    adc c
    reti


    adc c
    reti


    adc b
    reti


    adc c
    db $e3
    call nc, Call_000_0918
    add hl, de
    add hl, bc
    ret c

    ret z

    rst $10
    add hl, de
    add hl, sp
    reti


    add hl, sp
    reti


    jr c, jr_07e_739e

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    ld e, b
    add hl, bc
    ld e, c
    add hl, bc
    jr c, jr_07e_7429

    ld l, c
    reti


    ld l, c
    reti


    ld l, b
    reti


    ld l, c
    reti


    ld l, c
    reti


    ld l, c
    jr jr_07e_73e6

jr_07e_73dd:
    add hl, de
    add hl, bc
    ret c

    ret z

    rst $10
    add hl, de
    add hl, sp
    reti


    add hl, sp

jr_07e_73e6:
    ret c

    adc b
    reti


    adc c
    rst $10
    add hl, sp
    reti


    add hl, sp
    db $e3
    call nc, $92e2
    ld [hl], e
    jp nc, $d9c9

    ret


    rst $10
    jr jr_07e_7433

    ld e, c
    ld l, c
    adc b
    xor c
    adc c
    reti


    adc c
    reti


    adc b
    reti


    adc c
    rst $10
    add hl, de
    reti


    add hl, de
    ret c

    ret z

    reti


jr_07e_740c:
    ret


    reti


    ret


    reti


    ret


    reti


    ret z

    reti


    ret


    adc c
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc c
    reti


    adc c
    ld [c], a
    sub d
    ld [hl], e
    db $d3
    add hl, sp
    reti


    add hl, sp
    xor b
    adc c

jr_07e_7429:
    ld l, c
    adc c
    ld e, b
    ld l, c
    add hl, de
    reti


    add hl, de
    rst $10
    jr jr_07e_740c

jr_07e_7433:
    add hl, de
    ret c

    add hl, de
    reti


    add hl, de

jr_07e_7438:
    ret z

    reti


    ret


    xor c
    reti


    xor c
    adc b
    reti


    adc c
    ld l, c
    reti


    ld l, c
    ld e, b
    reti


    ld e, c
    add hl, sp
    reti


    add hl, sp
    db $e3

jr_07e_744b:
    call nc, $b6e2
    ld [hl], e
    ld e, b
    reti


    ld e, c
    reti


jr_07e_7453:
    ld e, c
    reti


    ld e, c
    ld l, b
    reti


    ld l, c
    add hl, sp
    reti


    add hl, sp
    reti


    jr c, jr_07e_7438

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    ld [c], a
    or [hl]
    ld [hl], e
    call nc, $d918
    add hl, de
    reti


    add hl, de
    reti


    add hl, de
    reti


    jr jr_07e_744b

    add hl, de
    reti


    add hl, de
    reti


    add hl, de
    reti


    jr jr_07e_7453

    add hl, de
    add hl, bc
    add hl, bc
    db $e3
    ret nc

    ld bc, $11dc
    push hl
    ld b, b
    add sp, $07
    ld [$eb01], a
    ld e, $d3
    and $90
    ld [c], a

jr_07e_748e:
    dec [hl]
    ld [hl], l
    ld [c], a
    adc h
    ld [hl], l
    ld [c], a
    dec [hl]
    ld [hl], l
    and $60
    db $e4
    rst $38

jr_07e_749a:
    call nc, Call_000_1809
    ret c

    adc c
    rst $10
    add hl, de
    add hl, sp
    ret c

    adc b
    rst $10
    add hl, sp
    ld e, c
    ret c

    adc c

jr_07e_74a9:
    rst $10
    ld e, b
    ld l, c
    ld e, c
    add hl, sp
    ld e, b

jr_07e_74af:
    ret c

    adc c
    adc c
    rst $10
    add hl, sp
    jr jr_07e_748e

    ret


    rst $10
    add hl, de
    ret c

    adc c
    ld e, b
    adc c
    add hl, de
    adc c
    rst $10
    jr jr_07e_749a

    adc c
    adc c
    rst $10
    add hl, sp
    ret c

jr_07e_74c7:
    adc b
    adc c
    rst $10
    ld e, c
    add hl, sp
    jr jr_07e_7537

jr_07e_74ce:
    ld e, c
    jr c, jr_07e_74a9

    adc c
    rst $10
    add hl, de
    add hl, sp
    jr jr_07e_74af

    adc c
    rst $10
    add hl, de
    ret c

    adc c
    reti


    adc b
    rst $10
    add hl, de
    reti


    add hl, de

Call_07e_74e2:
    ret c

    add hl, de
    db $e4
    nop
    and $c3
    add sp, $08
    rst $18
    inc b
    jr jr_07e_74c7

    add hl, de
    ret c

    adc c
    reti


    adc c
    jr jr_07e_74ce

    add hl, de
    rst $10
    add hl, de
    reti


    add hl, de
    ret c

    adc b
    reti


    adc c
    add hl, de
    reti


    add hl, de

jr_07e_7501:
    rst $10
    ldh [$e8], a
    rlca
    and $90
    ld [c], a

jr_07e_7508:
    adc h
    ld [hl], l
    sbc $ff
    db $d3
    ld e, b
    reti


    ld e, c
    reti


    ld e, l
    dec b
    jr c, @+$1b

    add hl, de
    reti


    add hl, de
    ret c

    xor b
    reti


    xor c
    adc c
    reti


    adc c
    ret z

    reti


    ret


    rst $10
    add hl, de
    reti


    add hl, de
    jr c, jr_07e_7501

    add hl, sp
    add hl, sp
    reti


    add hl, sp
    reti


    jr c, jr_07e_7508

    add hl, sp
    ret c

    adc c
    reti


    adc c
    db $e3

jr_07e_7535:
    db $d3
    ld [c], a

jr_07e_7537:
    inc c
    ld [hl], l
    jp nc, $c988

    rst $10
    add hl, de
    add hl, sp
    ld e, b
    ld l, c
    ld e, c
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    adc c
    reti


    adc c
    adc b
    reti


    adc c
    reti


    adc c
    reti


    adc c
    reti


    adc b
    reti


    adc c
    add hl, sp
    reti


    add hl, sp
    reti


    jr c, jr_07e_7535

    add hl, sp
    reti


    add hl, sp

jr_07e_755f:
    reti


    add hl, sp
    ld [c], a
    inc c
    ld [hl], l
    db $d3
    ld l, b
    ld e, c

jr_07e_7567:
    add hl, sp
    ld e, c
    jr @+$3b

    ret c

    ld l, c
    reti


    ld l, c
    rst $10
    ld l, b
    reti


    ld l, c
    ret c

    ld l, c
    reti


    ld l, c

jr_07e_7577:
    rst $10
    adc b
    reti


    adc c
    ld l, c
    reti


jr_07e_757d:
    ld l, c
    ld e, b
    reti


    ld e, c
    add hl, sp
    reti


jr_07e_7583:
    add hl, sp
    jr jr_07e_755f

    add hl, de
    ret c

    ret


    reti


    ret


    db $e3
    db $d3
    jr jr_07e_7567

    adc c
    ld e, c
    adc c
    jr jr_07e_75ed

    adc c
    add hl, sp
    ret z

    adc c
    rst $10
    add hl, sp
    ret c

    adc c
    rst $10
    jr jr_07e_7577

    adc c
    add hl, sp

jr_07e_75a1:
    rst $10
    ld e, c
    jr jr_07e_757d

    adc c
    xor c
    ld l, c
    rst $10
    jr jr_07e_7583

    xor c
    rst $10
    ld l, c
    add hl, de
    ret c

    adc b
    add hl, sp
    rst $10
    add hl, de
    ret c

    adc c
    rst $10

jr_07e_75b7:
    ld e, b
    add hl, de
    ret c

    adc c
    add hl, sp
    ret z

    adc c
    rst $10
    add hl, sp
    ret c

    ret


    ld l, b
    add hl, sp
    xor c
    ld l, c
    rst $10
    jr jr_07e_75a1

    xor c
    ret


jr_07e_75cb:
    add hl, sp
    adc b
    ret


    rst $10
    add hl, sp
    ret c

    ret


    adc b
    ld e, c
    rst $10
    add hl, de
    ret c

    adc c
    rst $10
    ld e, b
    add hl, de

jr_07e_75db:
    ret c

    ret


    adc c
    jr c, jr_07e_75b7

    add hl, sp
    ret c

    ret


    adc c
    adc b
    ld e, c
    rst $10

jr_07e_75e7:
    add hl, de
    ret c

    adc c
    rst $10
    ld e, b
    add hl, de

jr_07e_75ed:
    ret c

    xor c
    ld l, c
    rst $10
    jr jr_07e_75cb

    xor c
    ld l, c
    add hl, de
    adc b
    ld e, c
    rst $10
    add hl, de
    ret c

    adc c
    rst $10
    ld e, b
    add hl, de
    ret c

    ret


    adc c
    jr c, jr_07e_75db

    add hl, sp
    ret c

    ret


    adc c
    jr jr_07e_7623

    ld e, c
    adc c
    rst $10
    jr jr_07e_75e7

    ld e, c
    rst $10
    ld e, c
    add hl, de
    ret c

    adc b
    rst $10
    add hl, de
    ret c

    ld e, c
    rst $10
    adc c
    db $e3
    ret nc

    ld bc, $1de7
    and $20
    jp hl


jr_07e_7623:
    nop
    call c, $e811
    rlca
    jp nc, $c3e2

    db $76

jr_07e_762c:
    ld [c], a
    rst $28
    db $76
    ld [c], a
    jp $df76


    inc b
    jp nc, $d918

    add hl, de
    add hl, bc
    add hl, de
    ld [$1909], sp
    reti


    add hl, de
    ret c

    adc b
    reti


    adc c
    rst $10
    add hl, de
    reti


    add hl, de
    ldh [$df], a
    inc b
    jr @-$25

    add hl, de
    reti


    add hl, de
    add hl, de
    reti


    jr jr_07e_762c

    add hl, de
    add hl, de
    reti


    add hl, de
    ret c

    adc b
    reti


    adc c
    rst $10
    add hl, de
    reti


    add hl, de
    ldh [$e2], a

jr_07e_7661:
    rst $28
    db $76
    sbc $ff
    jp nc, $d918

    add hl, de
    reti


    add hl, de
    ret c

    adc c
    reti


    adc b
    reti


    adc c
    rst $10
    add hl, de
    reti


    add hl, de
    ret c

    adc b
    reti


    adc c
    rst $10
    add hl, de
    reti


    add hl, de
    db $e3
    jp nc, $d938

    add hl, sp
    reti


    add hl, sp
    add hl, sp
    reti


    jr c, jr_07e_7661

    add hl, sp
    adc c
    reti


    adc c
    ret c

    adc b

jr_07e_768e:
    reti


    adc c
    rst $10
    adc c
    reti


    adc c
    db $e3
    jp nc, $d988

    adc c
    reti


    adc c
    adc c
    reti


    adc b
    reti


    adc c
    add hl, sp
    reti


    add hl, sp
    adc b
    reti


    adc c
    ret c

    adc c
    reti


    adc c
    db $e3
    jp nc, $d918

    add hl, de
    reti


    add hl, de
    add hl, de
    reti


    jr jr_07e_768e

    add hl, de
    ret c

    adc c

jr_07e_76b8:
    reti


    adc c
    reti


    adc b
    reti


    adc c
    rst $10
    adc c
    reti


    adc c
    db $e3
    jp nc, $65e2

    db $76
    ld [c], a
    ld a, [hl]
    db $76
    ld [c], a
    ld h, l
    db $76
    ld [c], a
    sub l
    db $76
    ld [c], a
    ld h, l
    db $76

jr_07e_76d3:
    ld [c], a
    ld a, [hl]
    db $76
    ld l, b
    reti


    ld l, c
    reti


    ld l, c
    add hl, de
    reti


    jr jr_07e_76b8

    add hl, de
    ld l, c
    reti


    ld l, c

jr_07e_76e3:
    ret c

    ld l, b
    reti


    ld l, c
    rst $10
    add hl, de
    reti


    add hl, de

jr_07e_76eb:
    ld [c], a
    sub l
    db $76
    db $e3
    jp nc, $d918

    add hl, de
    reti


    add hl, de
    reti


    add hl, de
    reti


    jr jr_07e_76d3

    add hl, de
    ret c

    adc c
    reti


    adc c
    reti


    adc b
    reti


    adc c
    reti


    adc c
    reti


    adc c
    rst $10
    jr jr_07e_76e3

    add hl, de
    reti


    add hl, de
    reti


    add hl, de
    reti


    jr jr_07e_76eb

    add hl, de
    ld l, c
    reti


    ld l, c
    reti


    ld l, b
    reti


    ld l, c
    reti


    ld l, c
    reti


jr_07e_771d:
    ld l, c
    ld [c], a
    xor e
    db $76
    pop de
    ld l, b
    reti


    ld l, c
    reti


    ld l, c
    ld l, c
    reti


    ld l, b
    reti


    ld l, c
    adc c
    reti


    adc c
    reti


    adc b
    reti


    adc c
    rst $10
    adc c
    reti


    adc c

jr_07e_7737:
    ld [c], a
    xor e
    db $76
    jp nc, $d918

    add hl, de
    reti


    add hl, de
    add hl, de
    reti


    jr jr_07e_771d

    add hl, de
    ret c

    ld l, c
    reti


    ld l, c
    reti


    ld l, b
    reti


    ld l, c
    rst $10
    ld l, c
    reti


    ld l, c
    ld [c], a
    xor e
    db $76
    jp nc, $d918

    add hl, de
    reti


    add hl, de
    add hl, de
    reti


    jr jr_07e_7737

    add hl, de
    ret c

    adc c
    reti


    adc c
    reti


    adc b
    reti


    adc c
    rst $10
    add hl, de
    reti


    add hl, de
    db $e3
    ret nc

    ld bc, $dfd1
    ld [bc], a
    rst $18
    ld [bc], a
    ld [c], a
    add hl, bc
    ld a, b
    ld [c], a
    add hl, bc
    ld a, b
    jr jr_07e_77e4

    adc c
    add hl, de
    adc b
    ld l, c
    add hl, sp
    add hl, de
    ld e, b
    add hl, bc
    ld e, c
    add hl, sp
    jr jr_07e_77f0

    adc c
    add hl, de
    adc b
    ld l, c
    add hl, sp
    add hl, de
    ld e, b
    add hl, de
    ld e, c
    add hl, de
    ldh [$df], a
    ld [bc], a
    ret nc

    ld a, [hl-]
    ret nz

    ret nc

    ld bc, $0939
    ld [$b9b9], sp
    xor c
    ldh [$df], a
    ld [bc], a
    jr jr_07e_780d

    adc c
    add hl, sp
    ld e, b
    add hl, de
    add hl, de
    ld e, c
    jr c, jr_07e_7805

    add hl, de
    add hl, bc
    ldh [$df], a
    inc bc
    jr @-$75

    ld l, c
    add hl, sp
    ld e, b
    add hl, de
    add hl, de
    ld e, c
    jr c, jr_07e_7814

    add hl, de
    xor c
    ldh [rNR23], a
    adc c
    ld l, c
    add hl, sp
    ld e, b
    add hl, de
    add hl, de
    ld e, c
    jr c, jr_07e_7801

    add hl, sp
    add hl, sp
    ldh [$e2], a
    ld d, $78
    ld e, b
    add hl, bc
    ld e, c
    add hl, de
    ld e, b
    add hl, bc
    ld e, c
    add hl, de
    ld e, b
    add hl, bc
    ld e, c
    add hl, de
    ld [c], a
    ld d, $78
    ld e, b
    add hl, bc
    ld e, c
    add hl, de
    ld e, b
    add hl, bc
    ld e, c

jr_07e_77e4:
    add hl, de
    jr c, jr_07e_7820

    add hl, sp
    add hl, sp
    rst $18
    ld [bc], a
    jr jr_07e_7856

    adc c
    add hl, sp
    ld e, b

jr_07e_77f0:
    adc c
    ld l, c
    ld e, c
    jr c, jr_07e_784e

    add hl, de
    add hl, bc
    ldh [$df], a
    ld [bc], a
    jr jr_07e_7865

    adc c
    add hl, sp
    ld e, b
    add hl, de
    add hl, de

jr_07e_7801:
    ld e, c
    jr c, jr_07e_785d

    add hl, de

jr_07e_7805:
    xor c
    ldh [$de], a
    rst $38
    jr jr_07e_7864

    add hl, bc
    add hl, de

jr_07e_780d:
    ld e, b
    add hl, bc
    add hl, sp
    add hl, de
    ld e, b
    add hl, bc
    ld e, c

jr_07e_7814:
    add hl, bc
    db $e3
    ret nc

    inc de
    rst $10
    sub b
    ret c

    ret nc

    ld bc, $1959
    ld e, b

jr_07e_7820:
    add hl, bc
    ld e, c
    add hl, de
    ld e, b
    add hl, bc
    ld e, c
    add hl, de
    db $e3
    ret nc

    ld bc, $00e5
    and $c7
    call c, $ea11
    ld bc, $1eeb
    add sp, $07
    xor $33
    db $d3
    ld [c], a
    add c
    ld a, b
    ld [c], a
    add c
    ld a, b
    ld [c], a
    add hl, hl
    ld a, d
    ld [c], a
    add c
    ld a, b
    ld [c], a
    add hl, hl
    ld a, d
    ld [c], a
    ld b, c
    ld a, c
    rst $18
    ld [bc], a
    ld [c], a

jr_07e_784e:
    inc sp
    ld a, c
    sbc b
    sbc b
    ld [$0899], sp
    sbc b

jr_07e_7856:
    xor b
    add hl, bc
    xor b
    ld [$09a8], sp
    ld [c], a

jr_07e_785d:
    inc sp
    ld a, c
    ld e, b
    ld e, b
    ld [$0859], sp

jr_07e_7864:
    ld e, b

jr_07e_7865:
    ld a, b
    add hl, bc
    ld a, b
    ld [$0978], sp
    ldh [$e2], a
    ld b, c
    ld a, c
    sbc $ff
    db $d3
    jr z, @+$3a

    ld [$0859], sp
    jr c, jr_07e_78a7

    inc bc
    ret c

    xor [hl]
    ld [bc], a
    rst $10

jr_07e_787e:
    ld l, $03
    db $e3
    db $d3
    ld [c], a
    ld [hl], c

jr_07e_7884:
    ld a, b
    jp nc, $d7c8

    jr z, jr_07e_7892

    add hl, sp
    ld [$d828], sp
    adc $03
    adc [hl]
    ld [bc], a

jr_07e_7892:
    adc $03
    ld [c], a
    ld [hl], c
    ld a, b
    db $d3
    ld c, b
    ld e, b
    ld a, b
    ret c

    ret


    rst $10
    ret z

    xor b
    sbc b
    ld a, c
    ld e, b
    ld c, b
    jr z, jr_07e_787e

    ret


jr_07e_78a7:
    db $e3
    db $d3
    jr jr_07e_7884

    jr jr_07e_78e5

jr_07e_78ad:
    reti


    add hl, sp
    ld e, b
    reti


    ld e, b
    jr c, @-$25

    add hl, sp
    reti


jr_07e_78b6:
    jr c, jr_07e_7910

    ld a, b
    reti


    ld a, c
    sbc b
    reti


    sbc b
    reti


    sbc b
    reti


    sbc c
    ret c

    ret z

    reti


    ret z

    rst $10
    ret z

    reti


    ret


    reti


    ret z

    reti


    ret z

    reti


    ret z

    reti


    ret


    jr jr_07e_78ad

    jr jr_07e_790e

    reti


    add hl, sp
    ld e, b
    reti


    ld e, b
    jr c, jr_07e_78b6

jr_07e_78dd:
    add hl, sp
    reti


    jr c, jr_07e_7939

    ld a, b
    reti


    ld a, c
    ld e, b

jr_07e_78e5:
    ld [$c8d8], sp
    add hl, bc
    rst $10
    ret z

    ld [$d998], sp
    sbc c

jr_07e_78ef:
    reti


    sbc b
    reti


    sbc b

jr_07e_78f3:
    reti


jr_07e_78f4:
    sbc b
    reti


    sbc c

jr_07e_78f7:
    db $e3
    db $d3
    ld l, b
    reti


    ld l, b
    reti


    ld l, b
    adc c
    xor b
    ret z

    rst $10
    jr jr_07e_78dd

    add hl, de
    ret c

    ret z

    reti


    ret z

    xor b
    reti


    xor c
    ld l, b
    reti


jr_07e_790e:
    ld l, b
    reti


jr_07e_7910:
    ld l, b
    adc c
    xor b
    ret z

    jr c, jr_07e_78ef

    add hl, sp
    rst $10
    jr c, jr_07e_78f3

    jr c, jr_07e_78f4

    jr c, jr_07e_78f7

    add hl, sp
    ld l, b
    reti


    ld l, b
    reti


    ld l, b
    adc c
    xor b
    ret z

    rst $10
    jr @-$25

    add hl, de
    ret c

    ret z

    reti


    ret z

    xor b
    reti


    xor c
    db $e3
    db $d3
    sbc b
    sbc b
    ld [$0899], sp

jr_07e_7939:
    sbc b
    ld a, b
    add hl, bc
    ld a, b
    ld [$0978], sp
    db $e3
    db $d3
    ld [c], a
    ld hl, sp+$78
    db $d3
    ret z

    reti


    ret z

    reti


    ret z

    reti


    ret


    reti


    ret z

    reti


    ret z

    reti


    ret z

    reti


    ret


    reti


    ret z

    reti


    ret z

    reti


    ret z

    reti


    ret


    ld [c], a
    ld hl, sp+$78
    db $d3
    sbc b
    xor b
    ret z

    ld e, c
    rst $10
    ld e, b
    jr c, @+$2a

    ret c

    ret


    xor b
    sbc b
    ld a, b
    ld e, c
    db $e3
    ret nc

    ld bc, $00e5
    and $a7
    call c, $ea11
    ld bc, $1eeb
    add sp, $07
    xor $33
    jp nc, $05e2

    ld a, d

jr_07e_7984:
    ld [c], a
    dec b
    ld a, d
    ld [c], a

jr_07e_7988:
    xor b
    ld a, b

jr_07e_798a:
    ld [c], a
    dec b

jr_07e_798c:
    ld a, d
    ld [c], a
    xor b
    ld a, b
    and $77
    push hl
    add b
    ld [c], a
    sbc e
    ld a, d
    and $a7
    push hl
    nop
    rst $18
    inc bc

jr_07e_799d:
    db $d3
    ld e, b
    reti


    ld e, b

jr_07e_79a1:
    reti


    ld e, b

jr_07e_79a3:
    reti


    ld e, c

jr_07e_79a5:
    reti


    ld e, b
    reti


    ld e, b
    jr c, jr_07e_7984

    add hl, sp
    reti


    jr c, jr_07e_7988

    jr c, jr_07e_798a

    jr c, jr_07e_798c

    add hl, sp
    ldh [$d8], a
    ret z

    reti


    ret z

    reti


    ret z

    reti


    ret


    reti


    ret z

    reti


    ret z

    rst $10
    jr c, jr_07e_799d

    add hl, sp
    reti


    jr c, jr_07e_79a1

    jr c, jr_07e_79a3

    jr c, jr_07e_79a5

    add hl, sp
    rst $18
    inc bc
    ld e, b
    ld e, b
    ld [$0859], sp
    ld e, b
    jr c, jr_07e_79e0

    jr c, @+$0a

    jr c, jr_07e_79e4

    ldh [$28], a
    jr z, @+$0a

    add hl, hl

jr_07e_79e0:
    ld [$5828], sp
    add hl, bc

jr_07e_79e4:
    ld e, b
    ld [$0948], sp
    and $77
    push hl
    add b
    ld [c], a
    sbc e
    ld a, d
    push hl
    nop
    and $a7
    sbc $ff
    jp nc, $c8a8

    ld [$29d7], sp
    ld [$c8d8], sp
    xor [hl]
    inc bc
    ld e, [hl]
    ld [bc], a
    xor [hl]
    inc bc
    db $e3
    jp nc, $f5e2

    ld a, c
    adc b
    xor b
    ld [$08c9], sp
    xor b
    adc [hl]
    inc bc
    ld a, $02
    adc [hl]
    inc bc
    ld [c], a
    push af

jr_07e_7a17:
    ld a, c

jr_07e_7a18:
    ret z

    rst $10
    jr z, @+$4a

    ret c

    ld a, c
    rst $10
    sbc b

jr_07e_7a20:
    ld a, b
    ld e, b
    ld c, c
    jr z, @-$26

    ret z

    xor b
    sbc c
    db $e3
    call nc, $05ea
    db $eb
    ld bc, $d958
    ld e, b
    reti


    ld e, b
    reti


    ld e, c
    jr c, jr_07e_7a4f

    ret c

    xor b
    reti


    xor c
    rst $10
    jr c, jr_07e_7a17

jr_07e_7a3e:
    jr c, jr_07e_7a18

    xor b
    reti


    xor c
    ret z

    reti


    ret z

    ld e, b
    reti


    ld e, c
    rst $10
    ld e, b
    reti


    ld e, b
    sbc b
    ld a, c

jr_07e_7a4f:
    ld e, b
    ld c, b
    jr z, @-$26

    ret


    rst $10
    ld e, b
    reti


    ld e, b
    reti


    ld e, b
    reti


    ld e, c
    jr c, jr_07e_7a76

    ret c

    xor b
    reti


    xor c
    rst $10
    jr c, jr_07e_7a3e

    jr c, @-$26

    xor b
    reti


    xor c
    sbc b
    ld [$0958], sp
    rst $10
    ld e, b
    ld [$c8d8], sp
    reti


    ret


    reti


jr_07e_7a76:
    ret z

    reti


    ret z

    reti


    ret z

    reti


    ret


    ld [$eb01], a
    ld e, $e3
    jp nc, $03df

    ld l, b
    rst $10
    jr jr_07e_7af1

    xor c
    rst $10
    jr jr_07e_7af5

    ret c

    ret c

    adc b
    rst $10
    add hl, sp
    adc b
    ret z

    rst $10
    jr c, jr_07e_7a20

    ret c

    ret c

    ldh [$e3], a
    db $d3
    ld [c], a
    add d
    ld a, d
    db $d3

jr_07e_7aa0:
    ld e, b
    reti


    ld e, b
    reti


jr_07e_7aa4:
    ld e, b
    reti


jr_07e_7aa6:
    ld e, c
    reti


jr_07e_7aa8:
    ld e, b
    reti


    ld e, b
    ld c, b
    reti


    ld c, c
    reti


    ld c, b
    reti


    ld c, b
    reti


    ld c, b
    reti


    ld c, c
    ld [c], a
    add d
    ld a, d
    db $d3
    ld e, b
    reti


    ld e, b
    reti


    ld e, b
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, b
    jr c, jr_07e_7aa0

    add hl, sp
    reti


    jr c, jr_07e_7aa4

    jr c, jr_07e_7aa6

    jr c, jr_07e_7aa8

    add hl, sp
    db $e3
    ret nc

    ld bc, $09e7
    and $20
    jp hl


    nop

jr_07e_7ad9:
    call c, $e811

jr_07e_7adc:
    rlca
    pop de
    ld [c], a
    dec [hl]
    ld a, e
    ld [c], a
    dec [hl]
    ld a, e
    ld [c], a
    ld a, h
    ld a, e
    ld [c], a
    dec [hl]
    ld a, e
    ld [c], a
    ld a, h
    ld a, e
    ld [c], a
    rst $00
    ld a, e
    rst $18

jr_07e_7af1:
    rlca
    pop de
    ld e, b
    reti


jr_07e_7af5:
    ld e, b
    ld e, b
    rst $10
    ld e, c
    reti


    ld e, b
    ret c

    ld e, b
    rst $10
    jr c, jr_07e_7ad9

    add hl, sp
    jr c, jr_07e_7adc

    jr c, jr_07e_7b3d

    reti


    add hl, sp
    ldh [$d1], a
    xor b
    reti


    xor b
    xor b
    xor c
    reti


    xor b
    xor b
    ret z

    reti


    ret


    ret z

    reti


    ret z

    ret z

    reti


jr_07e_7b19:
    ret


    ld [c], a
    rst $00
    ld a, e
    sbc $ff
    pop de
    xor b

jr_07e_7b21:
    xor b

jr_07e_7b22:
    xor b
    rst $10
    ld e, c
    reti


    ld e, b
    ret c

    xor b
    xor b
    reti


    xor c
    rst $10
    ld e, b
    reti


    ld e, b
    ret c

    xor b
    reti


    xor c
    db $e3
    pop de
    ld [c], a
    rra
    ld a, e
    adc b
    adc b
    adc b
    rst $10

jr_07e_7b3d:
    add hl, sp
    reti


    jr c, jr_07e_7b19

    adc b

jr_07e_7b42:
    adc b
    reti


    adc c
    rst $10
    jr c, jr_07e_7b21

    jr c, jr_07e_7b22

    adc b
    reti


    adc c
    ld [c], a
    rra
    ld a, e
    ret z

    ret z

jr_07e_7b52:
    ret z

    rst $10
    ret


    reti


    ret z

    ret c

    ret z

    rst $10
    ld a, b
    reti


    ld a, c
    ret z

    reti


    ret z

    ret c

    ret z

    reti


    ret


    db $e3
    jp nc, $1818

    jr jr_07e_7b42

    adc c
    reti


    adc b
    rst $10
    jr jr_07e_7ba8

    reti


    add hl, sp
    ret c

    xor b
    reti


    xor b
    rst $10
    jr c, jr_07e_7b52

    add hl, sp
    ret c

    db $e3
    jp nc, $65e2

    ld a, e
    pop de
    ld e, b
    ld e, b
    ld e, b
    rst $10
    ld e, c
    reti


    ld e, b
    ret c

    ld e, b
    ret z

    reti


    ret


    rst $10
    ld e, b
    reti


    ld e, b
    ret c

    ld e, b
    reti


    ld e, c
    ld [c], a
    ld h, l
    ld a, e
    pop de
    ld e, b
    ld [$0958], sp
    rst $10
    ld e, b
    ld [$58d8], sp
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, b

jr_07e_7ba8:
    reti


    ld e, b
    reti


    ld e, c
    db $e3
    jp nc, $03df

    jp nc, $d968

    ld l, b
    ld l, b
    add hl, de
    ld l, b
    reti


    ld l, b
    ret c

    adc b
    reti


    adc c
    rst $10
    adc b
    reti


    adc b
    ret c

    adc b
    reti


    adc c
    ldh [$e3], a
    jp nc, $ade2

    ld a, e
    pop de
    ret z

    rst $10
    ld e, b
    ld a, b
    ret


    ld a, b
    ld e, b
    ret c

    ret z

    rst $10
    ld c, c
    ld a, b
    ret z

    rst $10
    ld c, b
    ld a, c
    ld [c], a
    xor l
    ld a, e
    jp nc, $d958

    ld e, b
    ld e, b
    ret c

    ret


    rst $10
    ld e, b
    reti


    ld e, b
    ret c

    ld e, b
    reti


    ld e, c
    rst $10
    ld e, b
    reti


    ld e, b
    ret c

    ld e, b
    reti


    ld e, c
    db $e3
    ret nc

    ld bc, $e2d1
    or b
    ld a, h
    ld [c], a
    or b
    ld a, h
    ld [c], a
    or b
    ld a, h
    jr jr_07e_7c5d

    jr jr_07e_7c40

    ld e, b
    jr jr_07e_7c22

    ld e, c
    jr jr_07e_7c45

    jr c, jr_07e_7c48

    ld [c], a
    or b
    ld a, h
    ld [c], a
    or b
    ld a, h
    ld [c], a
    or b
    ld a, h
    jr jr_07e_7c72

    jr @+$3b

    ld e, b
    jr jr_07e_7c37

    ld e, c
    jr @-$27

jr_07e_7c22:
    ld e, b
    ret c

    cp b
    xor c
    ld [c], a
    cp l
    ld a, h
    ld [c], a
    or b
    ld a, h
    ld [c], a
    or b
    ld a, h
    ld [c], a
    or b
    ld a, h
    jr @+$5a

    jr @+$3b

    ld e, b

jr_07e_7c37:
    jr @+$1a

    ld e, c
    jr jr_07e_7c74

    jr c, jr_07e_7c77

    ld [c], a
    cp l

jr_07e_7c40:
    ld a, h
    rst $18
    ld [bc], a
    ld [c], a
    db $f4

jr_07e_7c45:
    ld a, h
    ld [c], a
    db $f4

jr_07e_7c48:
    ld a, h
    ld [c], a
    db $f4
    ld a, h
    jr @+$5a

    jr @+$3b

    ld [$1818], sp
    ld e, c
    jr c, @+$1a

    jr c, jr_07e_7c91

    ldh [$df], a
    ld [bc], a
    jr c, jr_07e_7c65

jr_07e_7c5d:
    jr jr_07e_7c98

    ld [$d718], sp
    ld e, a
    ld [bc], a
    ret c

jr_07e_7c65:
    cp a
    ld bc, $02af
    jr c, jr_07e_7c73

    jr @+$3b

    ld [$d718], sp
    ld e, b
    ld e, c

jr_07e_7c72:
    ret c

jr_07e_7c73:
    cp b

jr_07e_7c74:
    cp b
    xor b
    xor c

jr_07e_7c77:
    ldh [$e2], a
    ld bc, $187d
    jr jr_07e_7c96

    add hl, sp
    ld e, b
    jr jr_07e_7c9a

    add hl, bc
    jr c, jr_07e_7cdd

    jr @+$5b

    ld [c], a
    ld bc, $187d
    jr jr_07e_7ca5

    add hl, sp
    ld e, b
    jr jr_07e_7ca9

jr_07e_7c91:
    add hl, bc
    jr c, @+$3a

    jr c, jr_07e_7ccf

jr_07e_7c96:
    rst $18
    ld [bc], a

jr_07e_7c98:
    ld [c], a
    db $f4

jr_07e_7c9a:
    ld a, h
    ld [c], a
    db $f4
    ld a, h
    ld [c], a
    db $f4
    ld a, h
    jr jr_07e_7cfb

    jr @+$3b

jr_07e_7ca5:
    ld [$1818], sp
    ld e, c

jr_07e_7ca9:
    jr c, jr_07e_7cc3

    jr c, jr_07e_7ce6

    ldh [$de], a
    rst $38
    jr @+$5a

    jr jr_07e_7ced

    ld e, b
    jr jr_07e_7ccf

    ld e, c
    jr jr_07e_7d12

    jr c, jr_07e_7d15

    db $e3
    rst $10
    sbc b
    ret c

    ld e, b
    jr @+$0b

jr_07e_7cc3:
    jr c, jr_07e_7ccd

    jr jr_07e_7d20

    jr jr_07e_7cd1

    jr c, @+$0b

    jr jr_07e_7d25

jr_07e_7ccd:
    jr @+$0b

jr_07e_7ccf:
    jr c, jr_07e_7cd9

jr_07e_7cd1:
    jr jr_07e_7d2c

    jr jr_07e_7cdd

    jr c, jr_07e_7d10

    jr jr_07e_7d31

jr_07e_7cd9:
    jr jr_07e_7ce4

    jr c, jr_07e_7ce5

jr_07e_7cdd:
    jr jr_07e_7d38

    jr jr_07e_7ce9

    jr c, @+$0b

    rst $10

jr_07e_7ce4:
    ld e, a

jr_07e_7ce5:
    ret c

jr_07e_7ce6:
    ld bc, $02bf

jr_07e_7ce9:
    xor a
    ld bc, $1cd0

jr_07e_7ced:
    ret nz

    ret nc

    ld bc, $3838
    add hl, sp
    db $e3
    jr jr_07e_7d4e

    jr jr_07e_7d31

    ld [$1818], sp

jr_07e_7cfb:
    ld e, c
    jr c, @+$0a

    jr jr_07e_7d09

    db $e3
    ret z

    ld e, b
    jr jr_07e_7d3e

    ld [$1818], sp
    ld e, c

jr_07e_7d09:
    jr c, jr_07e_7d13

    jr jr_07e_7d66

    db $e3
    rst $38
    rst $38

jr_07e_7d10:
    rst $38
    rst $38

jr_07e_7d12:
    rst $38

jr_07e_7d13:
    rst $38
    rst $38

jr_07e_7d15:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_7d20:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_7d25:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_7d2c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_7d31:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_7d38:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_7d3e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_7d4e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_7d66:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_07e_7fe2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
