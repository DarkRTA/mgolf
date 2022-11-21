INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07d", ROMX[$4000], BANK[$7d]

    ld [hl], d
    ld b, b
    db $eb
    ld b, b
    ld d, $40
    ld [hl+], a
    ld b, b
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
    jr nc, jr_07d_4020

    ld [$c4c0], a

jr_07d_4020:
    pop hl
    ret


    push bc
    push hl
    ld b, $00
    ld c, a
    or a
    jr z, jr_07d_4038

    ld hl, $5235
    add hl, bc
    ld b, [hl]
    ld a, [$c4c3]
    or a
    jr z, jr_07d_4038

    cp b
    jr c, jr_07d_4040

jr_07d_4038:
    ld a, b
    ld [$c4c3], a
    ld a, c
    ld [$c4c2], a

jr_07d_4040:
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

jr_07d_40bd:
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
    jr nz, jr_07d_40bd

    ld hl, $4c3b
    ld bc, $c536
    ld d, $08

jr_07d_40e4:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec d
    jr nz, jr_07d_40e4

    ret


    call Call_07d_42b8
    call Call_07d_4119

    rst $18

    db $02, $7f

    ld a, [$c4c1]
    ldh [$bf], a
    ld [$2000], a

    ld a, [$c535]
    or a
    jr z, jr_07d_4107

    call Call_07d_499b
    jr jr_07d_4113

jr_07d_4107:
    call Call_07d_42b9
    call Call_07d_4308
    call Call_07d_4359
    call Call_07d_43ae

jr_07d_4113:
    call Call_07d_48a0
    jp Jump_07d_49cc


Call_07d_4119:
    ld a, [$c4c0]
    rla
    jr c, jr_07d_4130

    call Call_07d_4145
    ld a, [$c4c0]
    call Call_07d_4186

    ld a, [$c4c0]
    or $80
    ld [$c4c0], a

jr_07d_4130:
    ld a, [$c4c2]
    rla
    jr c, jr_07d_4144

    ld a, [$c4c2]
    rst $18

    db $00, $7f

    ld a, [$c4c2]
    or $80
    ld [$c4c2], a

jr_07d_4144:
    ret


Call_07d_4145:
    ld a, [$c4cc]
    ld d, a
    xor a
    ld [$c4cd], a
    bit 0, d
    jr nz, jr_07d_4159

    ld a, $08
    ldh [rNR12], a
    swap a
    ldh [rNR14], a

jr_07d_4159:
    xor a
    ld [$c4ce], a
    bit 1, d
    jr nz, jr_07d_4169

    ld a, $08
    ldh [rNR22], a
    swap a
    ldh [rNR24], a

jr_07d_4169:
    xor a
    ld [$c4d0], a
    bit 3, d
    jr nz, jr_07d_4179

    ld a, $08
    ldh [rNR42], a
    swap a
    ldh [rNR44], a

jr_07d_4179:
    xor a
    ld [$c4cf], a
    bit 2, d
    jr nz, jr_07d_4185

    ld a, $00
    ldh [rNR32], a

jr_07d_4185:
    ret


Call_07d_4186:
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
    jr nc, jr_07d_41f2

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

jr_07d_41f2:
    rr e
    jr nc, jr_07d_423c

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

jr_07d_423c:
    rr e
    jr nc, jr_07d_4279

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

jr_07d_4279:
    rr e
    jr nc, jr_07d_42b3

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

jr_07d_42b3:
    xor a
    ld [$c535], a
    ret


Call_07d_42b8:
    ret


Call_07d_42b9:
    ld a, [$c4cd]
    or a
    jr z, jr_07d_42f8

    ld a, [$c4f7]
    or a
    jr z, jr_07d_42d9

    ld hl, $c503
    dec [hl]
    jr nz, jr_07d_42d9

    ld a, [$c4fb]
    cp $01
    jr z, jr_07d_42d9

    ld a, [$c4cc]
    rrca
    call nc, Call_07d_4737

jr_07d_42d9:
    ld hl, $c4fb
    dec [hl]
    jr nz, jr_07d_42f4

    ld hl, $c4d5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0000
    call Call_07d_43ef
    ld a, [$c4cd]
    or a
    jr z, jr_07d_42f8

    call Call_07d_46f8

jr_07d_42f4:
    xor a
    jp Jump_07d_492e


jr_07d_42f8:
    ld a, [$c4cc]
    bit 0, a
    jr nz, jr_07d_4307

    ld a, $08
    ldh [rNR12], a
    swap a
    ldh [rNR14], a

jr_07d_4307:
    ret


Call_07d_4308:
    ld a, [$c4ce]
    or a
    jr z, jr_07d_4349

    ld a, [$c4f8]
    or a
    jr z, jr_07d_4329

    ld hl, $c504
    dec [hl]
    jr nz, jr_07d_4329

    ld a, [$c4fc]
    cp $01
    jr z, jr_07d_4329

    ld a, [$c4cc]
    bit 1, a
    call z, Call_07d_47ab

jr_07d_4329:
    ld hl, $c4fc
    dec [hl]
    jr nz, jr_07d_4344

    ld hl, $c4d7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0001
    call Call_07d_43ef
    ld a, [$c4ce]
    or a
    jr z, jr_07d_4349

    call Call_07d_476f

jr_07d_4344:
    ld a, $01
    jp Jump_07d_492e


jr_07d_4349:
    ld a, [$c4cc]
    bit 1, a
    jr nz, jr_07d_4358

    ld a, $08
    ldh [rNR22], a
    swap a
    ldh [rNR24], a

jr_07d_4358:
    ret


Call_07d_4359:
    ld a, [$c4cf]
    or a
    jr z, jr_07d_439e

    ld a, [$c4f9]
    or a
    jr z, jr_07d_437e

    ld hl, $c505
    dec [hl]
    jr nz, jr_07d_437e

    ld a, [$c4cc]
    bit 2, a
    jr nz, jr_07d_437e

    ld a, [$c4fd]
    cp $01
    jr z, jr_07d_437e

    ld a, [$c509]
    ldh [rNR32], a

jr_07d_437e:
    ld hl, $c4fd
    dec [hl]
    jr nz, jr_07d_4399

    ld hl, $c4d9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0002
    call Call_07d_43ef
    ld a, [$c4cf]
    or a
    jr z, jr_07d_439e

    call Call_07d_47e3

jr_07d_4399:
    ld a, $02
    jp Jump_07d_492e


jr_07d_439e:
    ld a, [$c4cc]
    bit 2, a
    jr nz, jr_07d_43ad

    ld a, $00
    ldh [rNR32], a
    ld a, $80
    ldh [rNR34], a

jr_07d_43ad:
    ret


Call_07d_43ae:
    ld a, [$c4d0]
    or a
    jr z, jr_07d_43db

    ld hl, $c4fe
    dec [hl]
    jr nz, jr_07d_43d1

    ld hl, $c4db
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0003
    call Call_07d_43ef
    ld a, [$c4d0]
    or a
    jr z, jr_07d_43db

    call Call_07d_4851
    jr jr_07d_43ee

jr_07d_43d1:
    ld a, [$c532]
    or a
    jr z, jr_07d_43ee

    call Call_07d_487f
    ret


jr_07d_43db:
    ld a, [$c4cc]
    bit 3, a
    jr nz, jr_07d_43ee

    xor a
    ld [$c532], a
    ld a, $08
    ldh [rNR42], a
    swap a
    ldh [rNR44], a

jr_07d_43ee:
    ret


Call_07d_43ef:
Jump_07d_43ef:
    ld a, [hl+]
    push hl
    push af
    cp $d0
    jr c, jr_07d_4467

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

    db $ab, $45

    add $45

    db $d4, $45, $e0, $45, $f5, $45

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

jr_07d_4467:
    push af
    ld a, [hl]
    ld e, a
    ld hl, $c4d1
    add hl, bc
    ld a, [hl]
    cp $80
    jr z, jr_07d_448b

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

jr_07d_448b:
    pop af
    push de
    ld hl, $c50f
    add hl, bc
    ld d, [hl]
    and $0f
    inc a
    cp d
    jr nc, jr_07d_449b

    ld e, a
    ld a, d
    ld d, e

jr_07d_449b:
    ld e, a

jr_07d_449c:
    dec d
    jr z, jr_07d_44a2

    add e
    jr jr_07d_449c

jr_07d_44a2:
    ld hl, $c4fb
    add hl, bc
    ld [hl], a
    pop de
    ld d, a
    ld a, e
    cp $d9
    ld a, d
    jr z, jr_07d_44d6

    ld e, a
    ld hl, $c4ff
    add hl, bc
    ld a, [hl]
    cp $08
    ld d, a
    ld a, e
    jr z, jr_07d_44d6

    push hl
    push bc
    ld b, $00
    ld c, a
    ld hl, $0000

jr_07d_44c3:
    add hl, bc
    dec d
    jr nz, jr_07d_44c3

    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    pop bc
    pop hl

jr_07d_44d6:
    ld hl, $c503
    add hl, bc
    ld [hl], a
    pop af
    and $f0
    ld hl, $c4f7
    add hl, bc
    ld [hl], a
    or a
    jr nz, jr_07d_44e9

    jp Jump_07d_4565


jr_07d_44e9:
    swap a
    dec a
    ld h, a
    ld a, $03
    cp c
    ld a, h
    jr z, jr_07d_44f5

    jr jr_07d_453b

jr_07d_44f5:
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
    jr jr_07d_4565

jr_07d_453b:
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
    call Call_07d_4982
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d

Jump_07d_4565:
jr_07d_4565:
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
    jp Jump_07d_46f4


    and $07
    dec a
    ld hl, $c4ef
    add hl, bc
    push af
    ld a, c
    cp $02
    jr nz, jr_07d_458d

    pop af
    inc a
    ld [hl], a
    jp Jump_07d_46f4


jr_07d_458d:
    pop af
    ld [hl], a
    jp Jump_07d_46f4


    ld hl, $c4ef
    add hl, bc
    inc [hl]
    jp Jump_07d_46f4


    ld hl, $c4ef
    add hl, bc
    dec [hl]
    jp Jump_07d_46f4


    ld hl, $c4d1
    add hl, bc
    ld [hl], $80
    jp Jump_07d_46f4


    pop hl
    ld a, [hl+]
    push hl
    push bc
    inc c
    ld e, $ee

jr_07d_45b2:
    dec c
    jr z, jr_07d_45ba

    rlca
    rlc e
    jr jr_07d_45b2

jr_07d_45ba:
    ld d, a
    ld hl, $c4c4
    ld a, [hl]
    and e
    or d
    ld [hl], a
    pop bc
    jp Jump_07d_46f4


    pop de
    push de
    dec de
    ld hl, $c4dd
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_07d_46f4


    pop hl
    ld hl, $c4dd
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_07d_43ef


    pop de
    ld a, [de]
    inc de
    push af
    call Call_07d_46e0
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop af
    ld [hl], a
    inc hl
    push de
    call Call_07d_46e9
    jp Jump_07d_46f4


    call Call_07d_46e0
    dec hl
    ld a, [hl]
    dec a
    jr z, jr_07d_4607

    ld [hl-], a
    ld d, [hl]
    dec hl
    ld e, [hl]
    pop hl
    ld h, d
    ld l, e
    jp Jump_07d_43ef


jr_07d_4607:
    dec hl
    dec hl
    call Call_07d_46e9
    jp Jump_07d_46f4


    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_07d_43ef


    call Call_07d_46e0
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
    call Call_07d_46e9
    jp Jump_07d_46f4


    pop de
    call Call_07d_46e0
    dec hl
    ld a, [hl-]
    ld e, [hl]
    ld d, a
    inc de
    inc de
    push de
    call Call_07d_46e9
    jp Jump_07d_46f4


    pop de
    ld a, [de]
    inc de
    ld hl, $c52d
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07d_43ef


    pop de
    ld a, [de]
    and $c0
    inc de
    ld hl, $c4c6
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07d_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c527
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07d_43ef


    pop de
    ld a, [de]
    inc de
    ld [$c4ca], a
    ld a, $01
    ld [$c4cb], a
    ld h, d
    ld l, e
    jp Jump_07d_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c4ff
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07d_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c507
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07d_43ef


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
    jp Jump_07d_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c51f
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07d_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c50b
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07d_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c50b
    add hl, bc
    add [hl]
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07d_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c52a
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07d_43ef


    ld hl, $c4cd
    add hl, bc
    ld [hl], $00
    pop hl
    ret


Call_07d_46e0:
    ld hl, $c536
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_07d_46e9:
    ld d, h
    ld e, l
    ld hl, $c536
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Jump_07d_46f4:
    pop hl
    jp Jump_07d_43ef


Call_07d_46f8:
    ld a, [$c4cc]
    bit 0, a
    jr nz, jr_07d_4732

    ld a, [$c4f7]
    or a
    jr z, jr_07d_4737

    ld a, $01
    ld [$c598], a
    ld d, $00
    ld hl, $c4d1
    ld a, [hl]
    cp $80
    jr z, jr_07d_471b

    ld a, [$c527]
    ldh [rNR12], a
    ld d, $80

jr_07d_471b:
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


jr_07d_4732:
    xor a
    ld [$c598], a
    ret


Call_07d_4737:
jr_07d_4737:
    ld a, [$c598]
    or a
    jr z, jr_07d_476e

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
    jr nc, jr_07d_475f

    ld a, $00

jr_07d_475f:
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

jr_07d_476e:
    ret


Call_07d_476f:
    ld a, [$c4cc]
    bit 1, a
    jr nz, jr_07d_47a6

    ld a, [$c4f8]
    cp $00
    jr z, jr_07d_47ab

    ld a, $01
    ld [$c599], a
    ld d, $00
    ld hl, $c4d2
    ld a, [hl]
    cp $80
    jr z, jr_07d_4793

    ld a, [$c528]
    ldh [rNR22], a
    ld d, $80

jr_07d_4793:
    ld [hl], $02
    ld a, [$c4c7]
    ldh [rNR21], a
    ld a, [$c4e7]
    ldh [rNR23], a
    ld a, [$c4e8]
    or d
    ldh [rNR24], a
    ret


jr_07d_47a6:
    xor a
    ld [$c599], a
    ret


Call_07d_47ab:
jr_07d_47ab:
    ld a, [$c599]
    or a
    jr z, jr_07d_47e2

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
    jr nc, jr_07d_47d3

    ld a, $00

jr_07d_47d3:
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

jr_07d_47e2:
    ret


Call_07d_47e3:
    ld a, [$c4cc]
    bit 2, a
    jr nz, jr_07d_4827

    ld d, $00
    ld a, [$c4cb]
    or a
    jr z, jr_07d_47fa

    xor a
    ldh [rNR30], a
    call Call_07d_4831
    ld d, $80

jr_07d_47fa:
    ld a, [$c4f9]
    cp $00
    jr z, jr_07d_4828

    ld hl, $c4d3
    ld a, [hl]
    cp $80
    jr z, jr_07d_4813

    ld a, [$c529]
    ldh [rNR32], a
    xor a
    ldh [rNR30], a
    ld d, $80

jr_07d_4813:
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

jr_07d_4827:
    ret


jr_07d_4828:
    ld hl, $c4d1
    ld [hl], $00
    xor a
    ldh [rNR30], a
    ret


Call_07d_4831:
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

jr_07d_4843:
    ld a, [hl+]
    ld [de], a
    inc de
    inc b
    ld a, b
    cp $10
    jr nz, jr_07d_4843

    xor a
    ld [$c4cb], a
    ret


Call_07d_4851:
    ld a, [$c4cc]
    bit 3, a
    jr nz, jr_07d_486f

    ld a, [$c4fa]
    or a
    jr z, jr_07d_4870

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

jr_07d_486f:
    ret


jr_07d_4870:
    xor a
    ld [$c532], a
    ld hl, $ff21
    ld a, $08
    ld [hl+], a
    inc hl
    swap a
    ld [hl], a
    ret


Call_07d_487f:
    ld a, [$c4cc]
    bit 3, a
    jr z, jr_07d_488c

    xor a
    ld [$c532], a
    jr jr_07d_489f

jr_07d_488c:
    ld hl, $c530
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [de]
    cp $ff
    jr nz, jr_07d_4899

    jr jr_07d_4870

jr_07d_4899:
    ldh [rNR43], a
    inc de
    ld a, d
    ld [hl-], a
    ld [hl], e

jr_07d_489f:
    ret


Call_07d_48a0:
    ld a, [$c534]
    ldh [rNR50], a
    ld a, [$c4cc]
    or a
    ld hl, $c4c4
    ld a, [hl+]
    jr z, jr_07d_48c1

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

jr_07d_48c1:
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


Call_07d_48d0:
    ld hl, $c51f
    add hl, bc
    ld a, [hl]
    or a
    jr z, jr_07d_4925

    ld hl, $c523
    add hl, bc
    cp [hl]
    jr z, jr_07d_48e2

    inc [hl]
    jr jr_07d_4925

jr_07d_48e2:
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
    jr z, jr_07d_4911

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


jr_07d_4911:
    push hl
    ld hl, $c51b
    add hl, bc
    ld [hl], $00
    pop hl
    ld a, [hl]
    cp $80
    jr z, jr_07d_48e2

    ld hl, $c513
    add hl, bc
    ld [hl], a
    jr jr_07d_48e2

jr_07d_4925:
    ld hl, $c4e5
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


Jump_07d_492e:
    push af
    ld b, $00
    ld c, a
    call Call_07d_48d0
    pop af
    or a
    jr nz, jr_07d_4950

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


jr_07d_4950:
    dec a
    jr nz, jr_07d_496b

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


jr_07d_496b:
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


Call_07d_4982:
    ld hl, $c52d
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr nz, jr_07d_4991

    add e
    ld e, a
    ld a, d
    adc b
    ld d, a
    ret


jr_07d_4991:
    xor $ff
    ld h, a
    ld a, e
    sub h
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ret


Call_07d_499b:
    ld a, [$c4cc]
    ld d, a
    bit 0, d
    jr nz, jr_07d_49ab

    ld a, $08
    ldh [rNR12], a
    swap a
    ldh [rNR14], a

jr_07d_49ab:
    bit 1, d
    jr nz, jr_07d_49b7

    swap a
    ldh [rNR22], a
    swap a
    ldh [rNR24], a

jr_07d_49b7:
    bit 3, d
    jr nz, jr_07d_49c3

    swap a
    ldh [rNR42], a
    swap a
    ldh [rNR44], a

jr_07d_49c3:
    bit 2, d
    jr nz, jr_07d_49cb

    ld a, $00
    ldh [rNR32], a

jr_07d_49cb:
    ret


Jump_07d_49cc:
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
    call Call_07d_499b
    call Call_07d_49f7
    call Call_07d_4145
    ei
    ret


    di
    call Call_07d_499b
    call Call_07d_4145
    call Call_07d_4b1c
    ei
    ret


Call_07d_49f7:
    ld a, [$c4c0]
    ld [$c59a], a
    ld a, [$c4c1]
    ld [$c59b], a
    ld a, [$c4c4]
    ld [$c59c], a
    ld hl, $c4c6
    ld de, $c59d
    ld a, $04
    call Call_07d_4c33
    ld a, [$c4ca]
    ld [$c5a1], a
    ld a, [$c4cb]
    ld [$c5a2], a
    ld hl, $c4cd
    ld de, $c5a3
    ld a, $04
    call Call_07d_4c33
    ld hl, $c4d1
    ld de, $c5a7
    ld a, $04
    call Call_07d_4c33
    ld hl, $c4d5
    ld de, $c5ab
    ld a, $08
    call Call_07d_4c33
    ld hl, $c4dd
    ld de, $c5b3
    ld a, $08
    call Call_07d_4c33
    ld a, [$c4eb]
    ld [$c5bb], a
    ld a, [$c4ec]
    ld [$c5bc], a
    ld hl, $c4ef
    ld de, $c5bd
    ld a, $04
    call Call_07d_4c33
    ld hl, $c4f3
    ld de, $c5c1
    ld a, $04
    call Call_07d_4c33
    ld hl, $c4f7
    ld de, $c5c5
    ld a, $04
    call Call_07d_4c33
    ld hl, $c4fb
    ld de, $c5c9
    ld a, $04
    call Call_07d_4c33
    ld hl, $c4ff
    ld de, $c5cd
    ld a, $04
    call Call_07d_4c33
    ld hl, $c503
    ld de, $c5d1
    ld a, $04
    call Call_07d_4c33
    ld hl, $c507
    ld de, $c5d5
    ld a, $04
    call Call_07d_4c33
    ld hl, $c50b
    ld de, $c5d9
    ld a, $04
    call Call_07d_4c33
    ld hl, $c50f
    ld de, $c5dd
    ld a, $04
    call Call_07d_4c33
    ld hl, $c517
    ld de, $c5e1
    ld a, $04
    call Call_07d_4c33
    ld hl, $c51f
    ld de, $c5e5
    ld a, $04
    call Call_07d_4c33
    ld a, $00
    ld [$c51b], a
    ld [$c51c], a
    ld [$c51d], a
    ld [$c51e], a
    ld hl, $c527
    ld de, $c5e9
    ld a, $03
    call Call_07d_4c33
    ld hl, $c52d
    ld de, $c5ec
    ld a, $03
    call Call_07d_4c33
    ld hl, $c530
    ld de, $c5ef
    ld a, $02
    call Call_07d_4c33
    ld a, $00
    ld [$c5f1], a
    ld hl, $c536
    ld de, $c5f2
    ld a, $08
    call Call_07d_4c33
    ld hl, $c53e
    ld de, $c5fa
    ld a, $30
    call Call_07d_4c33
    ret


Call_07d_4b1c:
    ld a, [$c59a]
    ld [$c4c0], a
    ld a, [$c59b]
    ld [$c4c1], a
    ld a, [$c59c]
    ld [$c4c4], a
    ld hl, $c59d
    ld de, $c4c6
    ld a, $04
    call Call_07d_4c33
    ld a, [$c5a1]
    ld [$c4ca], a
    ld a, $01
    ld [$c4cb], a
    ld hl, $c5a3
    ld de, $c4cd
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5a7
    ld de, $c4d1
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5ab
    ld de, $c4d5
    ld a, $08
    call Call_07d_4c33
    ld hl, $c5b3
    ld de, $c4dd
    ld a, $08
    call Call_07d_4c33
    ld a, [$c5bb]
    ld [$c4eb], a
    ld a, [$c5bc]
    ld [$c4ec], a
    ld hl, $c5bd
    ld de, $c4ef
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5c1
    ld de, $c4f3
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5c5
    ld de, $c4f7
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5c9
    ld de, $c4fb
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5cd
    ld de, $c4ff
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5d1
    ld de, $c503
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5d5
    ld de, $c507
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5d9
    ld de, $c50b
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5dd
    ld de, $c50f
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5e1
    ld de, $c517
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5e5
    ld de, $c51f
    ld a, $04
    call Call_07d_4c33
    ld hl, $c5e9
    ld de, $c527
    ld a, $03
    call Call_07d_4c33
    ld hl, $c5ec
    ld de, $c52d
    ld a, $03
    call Call_07d_4c33
    ld hl, $c5ef
    ld de, $c530
    ld a, $02
    call Call_07d_4c33
    ld a, [$c5f1]
    ld [$c532], a
    ld hl, $c5f2
    ld de, $c536
    ld a, $08
    call Call_07d_4c33
    ld hl, $c5fa
    ld de, $c53e
    ld a, $30
    call Call_07d_4c33
    ret


Call_07d_4c33:
    ld c, a

jr_07d_4c34:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_07d_4c34

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

    db $5e, $03, $a0, $03, $df, $03

    dec de
    inc b

    db $53, $04

    add a
    inc b
    cp c
    inc b

    db $e8, $04

    dec d
    dec b

    db $3f, $05

    ld h, [hl]
    dec b

    db $8c, $05, $af, $05

    ret nc

    dec b

    db $f0, $05

    dec c
    db $06

    db $29, $06, $44, $06

    ld e, l
    db $06

    db $74, $06

    adc d
    db $06

    db $9f, $06, $b3, $06, $c6, $06, $d7, $06

    add sp, $06

    db $f8, $06

    rlca
    rlca

    db $15, $07, $22, $07

    ld l, $07

    db $3a, $07

    ld b, l
    rlca

    db $50, $07

    ld e, d
    rlca
    ld h, e
    rlca
    ld l, h
    rlca
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

    db $01, $4f

    ld de, $214f
    ld c, a
    ld sp, $c14f
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
    ld b, c
    ld c, l
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
    jr nz, jr_07d_4d2c

jr_07d_4d2c:
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
    xor $ee
    xor $ee
    xor $ee
    xor $ca
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    db $ee, $ee, $ee, $ee, $ee, $ee, $ee, $ee, $00, $00, $00, $00, $00, $00, $00, $00

    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    ld de, $1111
    ld de, $1111
    ld de, $cc11
    call z, $cccc
    call z, $cccc
    call z, $2222
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

    db $1c, $50

    add e
    ld d, b
    and c
    ld d, b

    db $8a, $50

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

    db $88, $ed, $72, $80, $59, $3f, $21, $22, $23, $23, $23, $23, $23, $23, $23, $23
    db $23, $23, $ff, $88, $ed, $72, $80, $59, $3f, $35, $36, $37, $37, $37, $37, $37
    db $37, $37, $37, $37, $37, $ff, $88, $ed, $72, $80, $59, $3f, $25, $26, $27, $27
    db $27, $27, $27, $27, $27, $27, $27, $27, $ff, $88, $20, $94, $80, $5e, $04, $04
    db $04, $04, $04, $04, $04

    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    adc b
    rst $30
    add c
    ret nz

    daa
    inc [hl]
    rst $38

    db $88, $20, $92, $80, $01, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $ff

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

    db $f8, $50

    inc b
    ld d, c
    db $10
    ld d, c
    ld e, $51
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
    ld d, [hl]
    ld d, c
    ld h, d
    ld d, c
    ld [hl], d
    ld d, c
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

    db $01, $02, $03, $02, $01, $ff, $fe, $fd, $fe, $ff, $80, $80

    ld bc, $0202
    ld bc, $ff00
    cp $fe
    rst $38
    nop
    add b
    add b
    ld bc, $0201
    ld bc, $0001
    rst $38
    rst $38
    cp $ff
    rst $38
    nop
    add b
    add b
    ld bc, $0201
    ld [bc], a
    ld bc, $0001
    rst $38
    rst $38
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
    ld bc, $0403
    inc bc
    ld bc, $fdff
    db $fc
    db $fd
    rst $38
    add b
    add b
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
    ld bc, $0403
    inc bc
    ld bc, $ff00
    db $fd
    db $fc
    db $fd
    rst $38
    nop
    add b
    add b
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
    jr jr_07d_51f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07d_5203

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07d_5213

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07d_5223

    ld [hl-], a

jr_07d_51f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07d_5233

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_07d_5203:
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

jr_07d_5213:
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

jr_07d_5223:
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

jr_07d_5233:
    add b
    add b
    nop
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

Jump_07d_5253:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    dec hl
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h

Jump_07d_52d7:
    dec sp
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
    ld d, e
    ld b, l
    ld d, e
    ld c, [hl]
    ld d, e

    db $57, $53

    ld h, b
    ld d, e
    ld l, c
    ld d, e
    ld [hl], d
    ld d, e
    ld a, e
    ld d, e
    add h
    ld d, e
    adc l
    ld d, e
    sub [hl]
    ld d, e
    sbc a
    ld d, e

    db $a8, $53

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_07d_5313:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    or c
    ld d, e
    inc a
    ld d, l
    xor a
    ld d, [hl]
    adc b
    ld e, b
    rrca
    ccf
    ld e, c
    ld b, h
    ld e, e
    push af
    ld e, h
    ld a, [c]
    ld e, l
    rrca
    pop hl
    ld e, [hl]
    jp hl


    ld e, a
    xor $60

Jump_07d_5355:
    rst $20
    ld h, c

    db $0f, $94, $62, $c5, $63, $86, $64, $ed, $64

    rrca
    ld a, h
    ld h, l
    dec [hl]
    ld h, [hl]
    dec hl
    ld h, a
    ldh [$67], a
    rrca
    ld a, e
    ld l, b
    ld h, c
    ld l, d
    rst $28
    ld l, e
    ld e, a
    ld l, h
    rrca
    ld [c], a
    ld l, h
    ei
    ld l, l
    and $6e
    ld [hl], e
    ld l, a
    rrca
    rrca
    ld [hl], b
    ld e, [hl]
    ld [hl], b
    ret z

    ld [hl], b
    ld h, b
    ld [hl], c
    rrca
    push af
    ld [hl], c
    ld c, a
    ld [hl], d
    ld [$e073], sp
    ld [hl], e
    rrca
    ld a, a
    ld [hl], h
    ei
    ld [hl], h
    ld e, l
    ld [hl], l
    add $75
    rrca
    jr z, jr_07d_540f

    dec sp
    ld [hl], a
    ld b, $78
    ld h, h
    ld a, b
    rrca
    ld [hl], l
    ld a, b
    adc [hl]
    ld a, c
    xor e
    ld a, d
    xor c
    ld a, e

    db $0f, $79, $7c, $0c, $7d, $98, $7d, $0e, $7e

    ret nc

    ld bc, $80e5
    and $b0
    call c, $ea11
    inc bc
    db $eb
    inc e
    add sp, $07
    xor $33
    db $d3
    rst $18
    ld [bc], a
    ld [c], a
    rla
    ld d, l
    db $d3
    ret


    reti


    jp z, $cad9

    reti


    ret


    reti


    jp z, $cad9

    xor c
    reti


    xor h
    ld [$d9c9], sp
    call z, $e208
    rla
    ld d, l
    db $d3
    ret


    reti


    jp z, $cad9

    reti


    ret


    reti


    jp z, $cad9

    adc c
    reti


    adc d
    reti


    adc d
    reti


    adc c
    reti


    adc d
    reti


    adc d
    xor c
    reti


    xor d
    cp d
    ret


    reti


    jp z, Jump_000_1ad7

    ld l, c
    reti


    ld l, d
    ld e, d
    add hl, sp
    reti


    ld a, [hl-]
    ld a, [de]
    ld e, c
    reti


    ld e, d
    reti


    ld e, d
    reti


    ld e, a
    rra
    reti


jr_07d_540f:
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    ret c

    adc c
    reti


    adc d
    reti


    adc d
    xor c
    reti


    xor d
    cp d
    ret


    reti


    jp z, Jump_000_1ad7

    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    ld e, c
    reti


    ld e, d
    ld l, d
    adc c
    reti


    adc h
    ld [$d939], sp
    inc a
    ld [$c9d8], sp
    reti


    call z, $8908
    reti


    adc h
    ld [$d4e0], sp
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    ld a, [bc]
    ret c

    ret


    reti


    jp z, $89aa

    reti


    adc d
    ld l, d
    adc c
    reti


    adc d
    reti


    adc d
    reti


    adc c
    reti


    adc d
    reti


    adc d
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    rst $10
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    ret c

    ret


    reti


    jp z, Jump_000_1ad7

    add hl, sp
    reti


    ld a, [hl-]
    ld e, d
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    add hl, sp
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    reti


    add hl, sp
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    ld e, c
    reti


    ld e, d
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    ld e, d
    ld l, c
    reti


    ld l, d
    ld e, d
    add hl, sp
    reti


    ld a, [hl-]
    ld e, d
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    ret c

    ret


    reti


    jp z, $cad9

    xor c
    reti


    xor d
    reti


    xor d
    adc c
    reti


    adc d
    reti


    adc d
    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    reti


    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    adc c
    reti


    adc d
    jp z, $cfd9

    rst $10
    ccf
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    rst $18
    ld [bc], a
    ld [c], a
    jr z, @+$57

    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    reti


    ld l, a
    ld d, a
    scf
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    ret c

    ret


    reti


    jp z, $cad9

    ld [c], a
    jr z, jr_07d_5556

    xor c
    reti


    xor d
    adc d
    ld l, c
    reti


    ld l, d
    ld e, d
    add hl, sp
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    reti


    add hl, sp
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    ldh [$de], a
    rst $38
    db $d3
    ld e, h
    rlca
    ld l, d
    ld a, c
    ld a, [bc]
    adc d
    rst $10
    add hl, de
    ld a, [bc]
    ld a, [bc]
    ret c

    adc c
    ld a, [bc]
    rst $10
    ld a, [de]
    db $e3
    call nc, $d959
    ld e, h
    ld [$d919], sp
    inc e
    ld [$89d8], sp
    reti


    adc h
    ld [$59d7], sp
    reti


    ld e, h
    adc b
    db $e3
    ret nc

    ld bc, $80e5
    call c, $ea11
    inc bc
    db $eb
    inc e
    xor $33
    db $d3
    and $90
    add sp, $07
    rst $18
    ld [bc], a
    ld [c], a
    sub c
    ld d, [hl]
    add hl, sp
    reti


    ld a, [hl-]
    reti


jr_07d_5556:
    ld a, [hl-]
    reti


    add hl, sp
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    add hl, de
    reti


    inc e
    ld [$d939], sp
    inc a
    ld [$91e2], sp
    ld d, [hl]
    add hl, sp
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    reti


    add hl, sp
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    ret c

    ret


    reti


    jp z, $cad9

    reti


    ret


    reti


    jp z, $cad9

    rst $10
    ld l, c
    reti


    ld l, d
    ld a, d
    adc c
    reti


    adc d
    xor d
    rst $10
    add hl, sp
    reti


    ld a, [hl-]
    ld a, [de]
    ret c

    ret


    reti


    jp z, $d7aa

    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    reti


    rra
    ret c

    adc a
    reti


    adc c
    reti


    adc d
    reti


    adc d
    ld e, c
    reti


    ld e, d
    reti


    ld e, d
    ld l, c
    reti


    ld l, d
    ld a, d
    adc c
    reti


    adc d
    xor d
    rst $10
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    add hl, de
    reti


    ld a, [de]
    ld a, [de]
    add hl, sp
    reti


    inc a
    ld [$c9d8], sp
    reti


    call z, $8908
    reti


    adc h
    ld [$d939], sp
    inc a
    ld [$e6e0], sp
    or d
    add sp, $06
    db $e4
    db $fd
    ld [c], a
    sbc a
    ld d, [hl]
    jp nc, Jump_07d_5a19

    adc d
    rst $10
    add hl, de
    ret c

    adc d
    rst $10
    ld a, [de]
    ld e, c
    ld a, [de]
    ld e, d
    adc c
    ld e, d
    ld a, [de]
    ld [c], a
    sbc a
    ld d, [hl]
    jp nc, $d799

    ld a, [de]
    ld c, d
    sbc c
    ld c, d
    rst $10
    ld a, [de]
    ret c

    ret c

    cp c
    rst $10
    ld a, [hl-]
    ld l, d
    cp c
    ld l, d
    rst $10
    ld a, [hl-]
    ret c

    add hl, de
    ld e, d
    adc d
    rst $10
    add hl, de
    ret c

    adc d
    ld e, d
    ret c

    ret


    rst $10
    ld a, [hl-]
    adc d
    ret


    adc d
    ld a, [hl-]
    ret c

    xor c
    rst $10
    ld a, [de]
    ld e, d
    xor c
    ld e, d
    ld a, [de]
    ret c

    ret


    rst $10
    ld a, [hl-]
    adc d
    ret


    adc d
    ld a, [hl-]
    add hl, de
    ld e, d
    adc d
    rst $10
    add hl, de
    ret c

    adc d
    ld e, d
    ret c

    ret


    rst $10
    ld a, [hl-]
    adc d
    ret


    adc d
    ld a, [hl-]
    ld e, c
    ld a, [de]
    ld e, d
    adc c
    ld e, d
    adc d
    add hl, bc
    adc d
    ld e, d
    add hl, de
    ret c

    adc d
    ld a, [de]
    db $e4
    nop
    and $90
    add sp, $07
    rst $18
    ld [bc], a
    call nc, $d919
    inc e
    ld [$89d8], sp
    reti


    adc h
    ld [$d959], sp
    ld e, h
    ld [$19d7], sp
    reti


    inc e
    ld e, b
    add hl, sp
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    reti


    ccf
    rla
    ret c

    rst $00
    xor c
    reti


    xor d
    reti


    xor d
    adc c
    reti


    adc d
    reti


    adc d
    rst $10
    add hl, de
    reti


    inc e
    ld [$89d8], sp
    reti


    adc h
    ld [$d959], sp
    ld e, h
    ld [$19d7], sp
    reti


    inc e
    ld e, b
    ld l, c
    reti


    ld l, d
    ld e, d
    add hl, sp
    reti


    ld a, [hl-]
    ld a, [de]
    ret c

    ret


    reti


    jp z, $cad9

    reti


    ret


    reti


    jp z, $cad9

    ldh [$de], a
    rst $38
    db $d3
    inc e
    rlca
    ld a, [hl-]
    ld c, c
    ld a, [bc]
    ld e, d
    adc c
    ld a, [bc]
    ld a, [bc]
    ld e, c
    ld a, [bc]
    adc d
    db $e3
    db $d3
    add hl, de
    ret c

    jp z, $89aa

    ld l, d
    ld e, d
    add hl, sp
    ld a, [de]
    ret c

    jp z, $8aa9

    ld l, d
    db $e3
    ret nc

    ld bc, $01e7
    and $20
    jp hl


    nop
    call c, $e811
    rlca
    jp nc, $02df

    ld [c], a
    dec l
    ld e, b
    pop de
    adc c
    reti


    adc d
    rst $10
    adc d
    ret c

    adc c
    reti


    adc d
    rst $10
    adc d
    ret c

    ld l, c
    reti


    ld l, d
    rst $10
    ld l, d
    ret c

    adc c
    reti


    adc d
    rst $10
    adc d
    ld [c], a
    dec l
    ld e, b
    pop de
    adc c
    reti


    adc d
    adc d
    rst $10
    adc c
    reti


    adc d
    ret c

    adc d
    adc c
    reti


    adc d
    rst $10
    adc d
    ret c

    adc c
    reti


    adc d
    rst $10
    adc d
    ret c

    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    reti


    ld l, c
    reti


    ld l, d
    ld l, d
    rst $10
    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    ret c

    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    rst $10
    add hl, de
    reti


    ld a, [de]
    ld a, [de]
    ret c

    adc c
    reti


    adc d
    rst $10
    ld a, [de]
    add hl, de
    reti


    ld a, [de]
    ld a, [de]
    ret c

    adc c
    reti


    adc d
    rst $10
    ld a, [de]
    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    reti


    ld l, c
    reti


    ld l, d
    rst $10
    ld l, d
    ret c

    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    rst $10
    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    ret c

    adc c
    reti


    adc d
    adc d
    rst $10
    adc c
    reti


    adc d
    ret c

    adc d
    adc c
    reti


    adc d
    rst $10
    adc d
    ret c

    adc c
    reti


    adc d
    rst $10
    adc d
    ldh [$d1], a
    ld l, c
    reti


    ld l, d
    ld l, d
    rst $10
    ld l, c
    reti


    ld l, d
    ret c

    ld l, d
    ld l, c
    reti


    ld l, d
    rst $10
    ld l, d
    ret c

    ld l, c
    reti


    ld l, d
    rst $10
    ld l, d
    add hl, de
    reti


    ld a, [de]
    ld a, [de]
    ret c

    adc c
    reti


    adc d
    rst $10
    ld a, [de]
    add hl, de
    reti


    ld a, [de]
    ret c

    adc d
    rst $10
    add hl, de
    reti


    ld a, [de]
    ret c

    adc d
    ld l, c
    reti


    ld l, d
    ld l, d
    rst $10
    ld l, c
    reti


    ld l, d
    ret c

    ld l, d
    ld l, c
    reti


    ld l, d
    rst $10
    ld l, d
    ret c

    ld l, c
    reti


    ld l, d
    rst $10
    ld l, d
    ret c

    sbc c
    reti


    sbc d
    sbc d
    rst $10
    sbc c
    reti


    sbc d
    ret c

    sbc d
    cp c
    reti


    cp d
    cp d
    rst $10
    cp c
    reti


    cp d
    ret c

    cp d
    rst $10
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    ret c

    ret


    reti


    jp z, $cad9

    reti


    ret


    reti


    jp z, $cad9

    xor c
    reti


    xor d
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor d
    adc c
    reti


    adc d
    reti


    adc d
    reti


    adc c
    reti


    adc d
    reti


    adc d
    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    reti


    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    adc c
    reti


    adc d
    reti


    adc d
    reti


    adc c
    reti


    adc d
    reti


    adc d
    rst $10
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    ret c

    ret


    reti


    jp z, $cad9

    xor c
    reti


    xor d
    reti


    xor d
    ret


    reti


    jp z, $cad9

    ld [c], a
    ld b, l
    ld e, b
    pop de
    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    reti


    ld l, c
    reti


    ld l, d
    ld l, d
    adc c
    reti


    adc d
    reti


    adc d
    reti


    adc c
    reti


    adc d
    adc d
    ld [c], a
    ld b, l
    ld e, b
    pop de
    ld l, c
    reti


    ld l, d
    reti


    ld l, d
    reti


    ld l, c
    reti


    ld l, d
    ld l, d
    adc c
    reti


    adc d
    reti


    adc d
    adc c
    reti


    adc d
    reti


    adc d
    sbc $ff
    jp nc, $d919

    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    ld a, [de]
    ret c

    adc c
    reti


    adc d
    reti


    adc d
    rst $10
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    db $e3
    jp nc, $d919

    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    ld a, [de]
    ret c

    adc c
    reti


    adc d
    reti


    adc d
    reti


    adc c
    reti


    adc d
    adc d
    rst $10
    add hl, sp
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    reti


    add hl, sp
    reti


    ld a, [hl-]
    ld a, [hl-]
    ret c

    adc c
    reti


    adc d
    reti


    adc d
    reti


    adc c
    reti


    adc d
    adc d
    rst $10
    add hl, de
    reti


    ld a, [de]
    reti


    ld a, [de]
    reti


    add hl, de
    reti


    ld a, [de]
    ld a, [de]
    ret c

    adc c
    reti


    adc d
    reti


    adc d
    reti


    adc c
    reti


    adc d
    adc d
    db $e3
    ret nc

    ld bc, $dfd1
    ld [bc], a
    ld [c], a
    dec bc
    ld e, c
    ld [c], a

jr_07d_5891:
    jr jr_07d_58ec

    ld [c], a

jr_07d_5894:
    dec bc
    ld e, c
    add hl, de
    adc d
    ld e, d
    add hl, bc
    ld e, d
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld a, [bc]
    rst $10
    ld e, c
    ret c

    cp d
    xor d
    ld [c], a
    dec bc
    ld e, c
    ld [c], a
    jr jr_07d_5903

    ld [c], a
    dec bc
    ld e, c
    add hl, de
    adc d
    ld e, d
    rst $10
    ld e, c
    ret c

    ld e, d
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    cp d
    rst $10
    ld e, c
    ret c

    cp d
    xor d
    ldh [$df], a
    rlca
    add hl, de
    ld a, [bc]
    ld a, [de]
    add hl, sp
    ld a, [bc]
    ld a, [bc]
    ldh [rNR24], a
    ld a, [bc]
    ld a, [de]
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    ret nc

    jr nz, jr_07d_5891

    pop bc
    ret nz

    jr nc, jr_07d_5894

    ret nc

    ld bc, $3a39
    ld a, [hl-]
    ld [c], a
    dec bc
    ld e, c
    add hl, de
    adc d
    ld e, d
    add hl, de
    ld e, d
    ld a, [bc]
    add hl, sp
    ld a, [de]
    ld a, [bc]
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    ld [c], a
    dec h
    ld e, c
    ld [c], a

jr_07d_58ec:
    ld [hl-], a
    ld e, c
    ld [c], a
    dec h
    ld e, c
    ld [c], a
    ld [hl-], a
    ld e, c
    ld [c], a
    dec h
    ld e, c
    ld [c], a
    ld [hl-], a
    ld e, c
    ld [c], a
    dec h
    ld e, c
    add hl, de
    ld e, d
    ld a, [de]
    add hl, sp
    ld e, d
    ld a, [bc]

jr_07d_5903:
    add hl, bc
    ld a, [de]
    ld e, d
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    sbc $ff
    add hl, de
    ld l, d
    ld e, d
    add hl, bc
    ld e, d
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld e, d
    ld a, [bc]
    db $e3
    add hl, de
    adc d
    ld e, d
    add hl, bc
    ld e, d
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld a, [bc]
    ld e, c
    ld l, d
    ld e, d
    db $e3
    add hl, de
    ld e, d
    ld a, [de]
    add hl, sp
    ld e, d
    ld a, [bc]
    add hl, bc
    ld a, [de]
    ld e, d
    add hl, sp
    ld a, [bc]
    ld a, [hl-]
    db $e3
    add hl, de
    ld e, d
    ld a, [de]
    add hl, sp
    ld e, d
    ld a, [bc]
    add hl, bc
    ld a, [de]
    ld e, d
    add hl, sp
    ld a, [bc]
    ld e, d
    db $e3
    ret nc

    ld bc, $40e5
    and $b0
    call c, $ea11
    ld c, $eb
    inc e
    add sp, $07
    call nc, $02df
    ld [c], a
    or l
    ld e, d
    call nc, $d955
    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    ld [hl], l
    add [hl]
    ld [hl], l
    ld [hl], $d8
    and l
    add [hl]
    ld [hl], l
    ld [hl], $e2
    or l
    ld e, d
    call nc, $d955
    ld d, [hl]
    reti


    ld d, l
    ld d, $d9
    dec d
    reti


    ld d, $85
    reti


    add [hl]
    ld [hl], l
    reti


    db $76
    reti


    ld [hl], l
    add [hl]
    reti


    add l
    reti


    add [hl]
    and l
    reti


    and [hl]
    ld [c], a
    pop af
    ld e, d
    call nc, $d975
    db $76
    reti


    ld [hl], l
    reti


    db $76
    add sp, $05
    ld h, l
    ld b, $15
    ld b, $a5
    ld d, $05
    ld h, [hl]
    add l
    ld b, $35
    ld b, $c5
    ld [hl], $05
    add [hl]
    add sp, $07
    ld [c], a
    pop af
    ld e, d
    call nc, $d975
    db $76
    reti


    ld [hl], l
    reti


    db $76
    ret c

    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    ld b, [hl]
    reti


    ld b, l
    reti


    ld b, [hl]
    dec [hl]
    reti


    ld [hl], $d9
    dec [hl]
    reti


    ld [hl], $d8
    push bc
    reti


    add $a5
    reti


    and [hl]
    add l
    reti


    add [hl]
    ldh [$d4], a
    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    ret c

    push bc
    reti


    add $d9
    push bc
    reti


    add $d9
    push bc
    reti


    add $d9
    push bc
    reti


    add $d9
    push bc
    reti


    add $d7
    add l
    reti


    add [hl]
    reti


    add l
    reti


    add [hl]
    reti


    add l
    reti


    add [hl]
    ld [hl], l
    reti


    db $76
    reti


    ld [hl], l
    reti


    db $76
    reti


    ld [hl], l
    reti


    db $76
    dec [hl]
    reti


    ld [hl], $d9
    dec [hl]
    reti


    ld [hl], $55
    db $76
    add l
    reti


    add [hl]
    reti


    add l
    reti


    add [hl]
    reti


Jump_07d_5a19:
    add l
    reti


    add [hl]
    add l
    reti


    add [hl]
    reti


    add l
    db $76
    reti


    ld [hl], l
    reti


    db $76
    add l
    reti


    add [hl]
    and l
    reti


    and [hl]
    reti


    and l
    reti


    and [hl]
    reti


    and l
    reti


    and [hl]
    reti


    and l
    reti


    and [hl]
    push bc
    reti


    add $d9
    push bc
    reti


    add $d9
    push bc
    reti


    add $d9
    push bc
    reti


    add $55
    db $76
    add l
    ld d, [hl]
    push bc
    reti


    add $d9
    push bc
    reti


    add $d9
    push bc
    reti


    add $d9
    push bc
    reti


    add $d9
    push bc
    reti


    add $d9
    push bc
    reti


    add $c5
    reti


    add $d9
    push bc
    and [hl]
    reti


    and l
    reti


    and [hl]
    add l
    reti


    add [hl]
    ld [hl], l
    reti


    db $76
    reti


    ld [hl], l
    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    ld [hl], l
    reti


    db $76
    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    push bc
    reti


    add $d9
    push bc
    reti


    add $a5
    reti


    and [hl]
    reti


    and l
    reti


    and [hl]
    add l
    reti


    add [hl]
    and l
    reti


    and [hl]
    reti


    and l
    reti


    and [hl]
    reti


    and l
    reti


    and [hl]
    reti


    and l
    reti


    and [hl]
    rst $10
    dec [hl]
    ret c

    and [hl]
    rst $10
    dec [hl]
    ret c

    and [hl]
    ld [hl], l
    and [hl]
    dec [hl]
    db $76
    sbc $ff
    call nc, Call_000_0655
    dec [hl]
    ld b, $25
    ld b, $d8
    push bc
    rst $10
    ld h, $35
    ld d, [hl]
    dec b
    ld d, [hl]
    dec b
    ld [hl], $05
    ld h, $d8
    push bc
    rst $10
    ld h, $d8
    and l
    ld b, $a5
    ld b, $c5
    ld b, $c5
    ld d, [hl]
    dec b
    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    rst $10
    ld d, l
    ld b, $35
    ld b, $55
    ld b, $75
    sub [hl]
    and l
    sub [hl]
    dec b
    db $76
    dec b
    ld d, [hl]
    dec b
    ld [hl], $e3
    db $d3
    and l
    reti


    and [hl]
    reti


    and l
    reti


    and [hl]
    reti


    and l
    reti


    and [hl]
    push bc
    reti


    add $d9
    push bc
    reti


    add $d9
    push bc
    reti


    add $d7
    dec d
    reti


    ld d, $d9
    dec d
    reti


    ld d, $15
    ld [hl], $55
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    dec [hl]
    reti


    ld [hl], $d9
    dec [hl]
    reti


    ld [hl], $d9
    dec [hl]
    reti


    ld [hl], $55
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    db $e3
    ret nc

    ld bc, $0eea
    db $eb
    inc e
    call c, $d311
    rst $18
    ld [bc], a
    push hl
    ld b, b
    xor $44
    add sp, $07
    and $90
    db $e4
    nop
    db $d3
    ld d, l
    inc c
    ld [hl], $0c
    inc l
    ret c

    push bc
    inc c
    rst $10
    ld h, $0c
    inc a
    ld d, l
    inc c
    ld [hl], $0c
    inc l
    ret c

    push bc
    inc c
    rst $10
    ld h, $0c
    ret c

    xor h
    rst $10
    ld d, l
    inc c
    ld [hl], $0c
    ld e, h
    ld [hl], l
    inc c
    sub [hl]
    inc c
    xor h
    adc h
    reti


    adc h
    reti


    adc h
    reti


    adc h
    rst $10
    dec [hl]
    ld [hl], $35
    ret c

    and [hl]
    ld [hl], l
    ld [hl], $35
    ret c

    and [hl]
    and $60
    rst $10
    push bc
    ld b, $c5
    ld b, $a5
    ld b, $95
    and [hl]
    push bc
    rst $10
    ld h, $05
    ld h, $05
    ret c

    add $05
    and [hl]
    sub l
    and [hl]
    ld d, l
    ld b, $55
    ld b, $95
    ld b, $95
    ret c

    add $05
    add $d9
    call z, $ccd9
    rst $10
    rst $10
    dec h
    ld b, $d8
    push bc
    ld b, $d7
    dec h
    ld b, $35
    ld d, [hl]
    ld [hl], l
    ld d, [hl]
    dec b
    ld [hl], $05
    ld h, $05
    ret c

    add $e6
    sub b
    rst $10
    dec d
    reti


    ld d, $d9
    dec d
    ret c

    add [hl]
    reti


    add l
    reti


    add [hl]
    rst $10
    ld d, l
    reti


    ld d, [hl]
    dec [hl]
    reti


    ld [hl], $d9
    dec [hl]
    ld d, [hl]
    reti


    ld d, l
    reti


    ld d, [hl]
    ld [hl], l
    reti


    db $76
    inc c
    inc b
    and $70
    db $e4
    rst $38
    ld [c], a
    pop af
    ld e, d
    call nc, $d975
    ld [hl], c
    and $90
    db $e4
    nop
    add sp, $05
    dec d
    ld b, $d8
    and l
    ld b, $d7
    ld h, l
    ret c

    and [hl]
    dec b
    rst $10
    ld d, $35
    ld b, $d8
    push bc
    ld b, $d7
    add l
    ret c

    add $05
    rst $10
    ld [hl], $e8
    rlca
    inc c
    inc b
    and $70
    db $e4
    rst $38
    ld [c], a
    pop af
    ld e, d
    call nc, $d975
    db $76
    reti


    ld [hl], l
    reti


    db $76
    ret c

    ld d, l
    reti


    ld d, [hl]
    reti


    ld d, l
    ld b, [hl]
    reti


    ld b, l
    reti


    ld b, [hl]
    dec [hl]
    reti


    ld [hl], $d9
    dec [hl]
    reti


    ld [hl], $d8
    call z, $e0a7
    db $e4
    nop
    add sp, $05
    and $90
    push hl
    nop
    xor $22
    jp nc, $c655

    rst $10
    ld d, l
    add [hl]
    push bc
    add [hl]
    ld d, l
    ret c

    add $55
    add [hl]
    push bc
    rst $10
    ld d, [hl]
    add l
    ld d, [hl]
    push bc
    ld d, [hl]
    ret c

    dec d
    add [hl]
    rst $10
    dec d
    ld d, [hl]
    add l
    ld d, $55
    add [hl]
    ret c

    dec [hl]
    and [hl]
    rst $10
    dec [hl]
    db $76
    and l
    ld [hl], $75
    and [hl]
    ret c

    ld d, l
    add [hl]
    push bc
    rst $10
    ld d, [hl]
    add l
    ret c

    add $d7
    ld d, l
    add [hl]
    add l
    add $55
    add [hl]
    ret c

    push bc
    rst $10
    ld d, [hl]
    add l
    add $d8
    and l
    rst $10
    ld d, $55
    and [hl]
    ld d, l
    ld d, $d8
    and l
    rst $10
    ld d, $d8
    push bc
    rst $10
    ld d, [hl]
    ld [hl], l
    add $75
    ld b, [hl]
    ret c

    push bc
    rst $10
    db $76
    ret c

    ld d, l
    add [hl]
    push bc
    rst $10
    ld d, [hl]
    add l
    ret c

    add $d7
    ld d, l
    add [hl]
    push bc
    add [hl]
    ld d, l
    ret c

    add $d7
    add l
    ld d, [hl]
    ret c

    push bc
    add [hl]
    dec d
    add [hl]
    rst $10
    dec d
    ld d, [hl]
    add l
    ld d, $55
    add [hl]
    dec [hl]
    db $76
    and l
    db $76
    dec [hl]
    ret c

    and [hl]
    ld [hl], l
    ld [hl], $d7
    dec d
    ld d, [hl]
    add l
    rst $10
    ld d, $d8
    add l
    ld d, [hl]
    dec d
    ld d, [hl]
    add l
    rst $10
    ld d, $d8
    add l
    ld d, [hl]
    dec d
    ld d, [hl]
    add l
    rst $10
    ld d, $d8
    dec [hl]
    db $76
    and l
    rst $10
    ld [hl], $d8
    and l
    db $76
    dec [hl]
    db $76
    and l
    rst $10
    ld [hl], $d8
    and l
    db $76
    dec [hl]
    db $76
    and l
    rst $10
    ld [hl], $de
    rst $38
    ret nc

    ld bc, $01e7
    and $20
    jp hl


    nop
    call c, $e811
    rlca
    pop de
    rst $18
    ld [bc], a
    rst $18
    ld [bc], a
    ld [c], a
    xor e
    ld e, l
    ld [c], a
    xor e
    ld e, l
    ld [c], a
    xor e
    ld e, l
    pop de
    inc e
    rst $10
    dec d
    ld d, $d8
    inc e
    rst $10
    dec d
    ld d, $d8
    inc a
    rst $10
    dec [hl]
    ld [hl], $d8
    dec [hl]
    and [hl]
    rst $10
    dec [hl]
    and [hl]
    ldh [$e2], a
    cp c
    ld e, l
    pop de
    ld l, h
    rst $10
    ld l, h
    ret c

    ld l, h
    rst $10
    ld l, h
    ret c

    adc h
    rst $10
    adc h
    ret c

    adc h
    rst $10
    adc h
    ret c

    ld [c], a
    cp c
    ld e, l
    jp nc, $d95c

    ld d, l
    ld b, [hl]
    reti


    ld c, h
    inc a
    reti


    inc a
    ret c

    call z, $8cac
    ldh [$e2], a
    db $e3
    ld e, l
    pop de
    inc e
    rst $10
    dec d
    ld d, $d8
    inc e
    rst $10
    dec d
    ld d, $d8
    inc a
    rst $10
    dec [hl]
    ld [hl], $d8
    inc a
    rst $10
    dec [hl]
    ld [hl], $d8
    ld [c], a
    db $e3
    ld e, l
    pop de
    xor h
    rst $10
    and l
    and [hl]
    ret c

    xor h
    rst $10
    and l
    and [hl]
    ret c

    call z, $c5d7
    add $d8
    call z, $c5d7
    add $d8
    ld [c], a
    db $e3
    ld e, l
    pop de
    inc e
    rst $10
    dec d
    ld d, $d8
    inc e
    rst $10
    dec d
    ld d, $d8
    inc a
    rst $10
    dec [hl]
    ld [hl], $d8
    inc a
    rst $10
    dec [hl]
    ld [hl], $d8
    rst $18
    ld [bc], a
    inc e
    rst $10
    inc e
    ret c

    inc e
    rst $10
    inc e
    ret c

    ldh [$df], a
    ld [bc], a
    inc a
    rst $10
    inc a
    ret c

    inc a
    rst $10
    inc a
    ret c

    ldh [$de], a
    rst $38
    pop de
    ld e, h
    ld e, h
    adc h
    ld d, l
    and [hl]
    reti


    and l
    ld d, [hl]
    cp h
    call z, Call_000_3cd7
    db $e3
    pop de
    xor h
    xor h
    add l
    xor h
    and [hl]
    reti


    and l
    and [hl]
    adc h
    ld e, h
    adc h
    rst $10
    inc e
    inc e
    ret c

    or l
    rst $10
    inc e
    ld d, $d9
    dec d
    ld d, $d8
    cp h
    adc h
    cp h
    rst $10
    inc a
    inc a
    dec d
    inc a
    ld [hl], $d9
    dec [hl]
    ld [hl], $1c
    ret c

    xor h
    rst $10
    inc e
    db $e3
    pop de
    rst $18
    ld [bc], a
    ld e, h
    rst $10
    ld d, l
    ld d, [hl]
    ret c

    ld e, h
    rst $10
    ld d, l
    ld d, [hl]
    ret c

    ldh [$e3], a
    ret nc

    ld bc, $dfd1
    ld [bc], a
    ld [c], a
    ld h, d
    ld e, [hl]
    ld [c], a
    ld [hl], c
    ld e, [hl]
    ld [c], a
    ld a, a
    ld e, [hl]
    ld [c], a
    adc h
    ld e, [hl]
    ld [c], a
    ld h, d
    ld e, [hl]
    ld [c], a
    ld [hl], c
    ld e, [hl]
    ld [c], a
    ld a, a
    ld e, [hl]
    ld [c], a
    adc h
    ld e, [hl]
    ld [c], a
    ld a, a
    ld e, [hl]
    ld [c], a
    ld [hl], c
    ld e, [hl]
    ld [c], a
    sbc d
    ld e, [hl]
    ld [c], a
    and a
    ld e, [hl]
    ld [c], a
    ld a, a
    ld e, [hl]
    ld [c], a
    ld [hl], c
    ld e, [hl]
    ld [c], a
    sbc d
    ld e, [hl]
    inc a
    dec d
    ld [hl], $05
    ld d, $d0
    ld a, [de]
    rst $10
    sub b
    ret c

    ret nc

    ld bc, $d73c
    ld d, l
    ld d, [hl]
    ret c

    or l
    and [hl]
    ldh [$e2], a
    or h
    ld e, [hl]
    ld [c], a
    ret


    ld e, [hl]
    ld [c], a
    or h
    ld e, [hl]
    ld [c], a
    ret


    ld e, [hl]
    ld [c], a
    or h
    ld e, [hl]
    ld [c], a
    ret


    ld e, [hl]
    ld [c], a
    or h
    ld e, [hl]
    inc e
    rst $10
    ld [hl], l
    db $76
    ret c

    inc a
    rst $10
    ld [hl], l
    db $76
    ret c

    inc e
    rst $10
    ld [hl], l
    ret c

    ld d, $35
    ld [hl], $35
    ld [hl], $de
    rst $38
    rst $10
    sub l
    ret c

    ld d, [hl]
    inc e
    inc a
    dec d
    ld d, $05
    ld d, $1c
    inc a
    ld d, l
    ld d, [hl]
    db $e3
    dec d
    ld d, [hl]
    inc e
    inc a
    dec d
    ld d, $05
    ld d, $1c
    dec [hl]
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    db $e3
    dec d
    ld d, [hl]
    inc e
    inc a
    dec d
    ld d, $05
    ld d, $1c
    inc a
    ld d, l
    ld d, [hl]
    db $e3
    dec d
    ld d, [hl]
    inc e
    inc a
    dec d
    ld d, $05
    ld d, $1c
    dec [hl]
    ld [hl], $35
    ld [hl], $e3
    dec d
    ld d, [hl]
    inc e
    inc a
    dec d
    ld d, $05
    ld d, $1c
    inc a
    dec [hl]
    ld [hl], $e3
    inc e
    ld d, l
    ld d, [hl]
    inc a
    ld d, l
    ld d, [hl]
    inc e
    ld d, l
    ld d, $3c
    ld d, l
    ld d, [hl]
    db $e3
    inc e
    rst $10
    db $76
    ld [hl], l
    ret c

    inc a
    rst $10
    db $76
    ld [hl], l
    ret c

    inc e
    rst $10
    ld [hl], l
    ret c

    ld d, $3c
    rst $10
    db $76
    ld [hl], l
    ret c

    db $e3
    inc e
    rst $10
    db $76
    ld [hl], l
    ret c

    inc a
    rst $10
    db $76
    ld [hl], l
    ret c

    inc e
    rst $10
    db $76
    ret c

    dec d
    ld [hl], $d7
    ld [hl], l
    ret c

    ld [hl], $d7
    ld [hl], l
    ret c

    db $e3
    ret nc

    add hl, bc
    push hl
    ld b, b
    and $b7
    call c, $ea11
    ld bc, $1eeb
    add sp, $07
    xor $22
    call nc, $5050
    nop
    ld d, b
    nop
    db $10
    ld d, b
    nop
    add b
    ld [bc], a
    ret c

    add b
    ld [bc], a
    db $dd
    rst $18

jr_07d_5f01:
    ld [bc], a
    rst $18
    ld [bc], a
    call nc, $0110
    ret c

    add b
    ld bc, $0050
    nop
    and b
    nop
    ret nz

    nop
    or b
    and b
    nop
    ret nc

    ld bc, $0189
    rst $10
    ld e, c
    ld bc, $0189
    ret nc

    add hl, bc
    and b
    nop
    ld h, b
    add b
    nop
    ld d, b
    nop
    db $10
    jr nc, jr_07d_5f01

    ret nz

    ld bc, $dfe0
    ld [bc], a
    ld [c], a
    jp $d45f


    ld bc, $7080
    ld h, b
    ld b, b
    nop
    ld d, b
    ld [$eb07], a
    ld bc, $06e8
    nop
    rst $10
    stop
    db $10
    db $10
    ld [bc], a
    ld [$eb01], a
    ld e, $e8
    rlca
    ld [c], a
    jp $d45f


    ld bc, $0040
    nop
    jr nc, jr_07d_5f57

    db $10

jr_07d_5f57:
    ld b, $e0
    ld [c], a
    ret c

    ld e, a
    call nc, $1010
    nop
    stop
    db $10
    jr nc, jr_07d_5fb5

    rlca
    ld [c], a
    ret c

    ld e, a
    call nc, $5050
    nop
    ld d, b
    nop
    db $10
    ld d, b
    nop
    add b
    ld b, $e0
    rst $18
    ld [bc], a
    call nc, $1050
    nop
    ret c

    add b
    ld bc, $0090
    and b
    rst $10
    ld h, b
    nop
    ld h, b
    ret c

    and b
    ld [bc], a
    ret nz

    rst $10
    and b
    nop
    and b
    ret nc

    ld bc, $01a9
    adc c
    ld bc, $0169
    ret nc

    add hl, bc
    ld d, b
    stop
    ret c

    and b
    add b
    ld [bc], a
    rst $10
    ld d, b
    stop
    ret c

    add b
    ld bc, $0090
    and b
    rst $10
    ld h, b
    nop
    ld h, b
    ret c

    and b
    ld [bc], a
    ret nz

    rst $10
    ld h, b
    nop
    ld h, b
    ret nc

jr_07d_5fb5:
    ld bc, $0169
    ld e, c
    ld bc, $0139
    ret nc

    add hl, bc
    db $10
    ld b, $e0
    sbc $ff
    call nc, $8001
    ld [hl], b
    ld h, b
    ld b, b
    nop
    ld d, b
    nop
    ret c

    sub b
    and b
    rst $10
    stop
    ret c

    and b
    rst $10
    db $10
    jr nc, @-$1b

    call nc, $1010
    nop
    stop
    db $10
    jr nc, jr_07d_5fe1

jr_07d_5fe1:
    ld d, b
    stop
    ret c

    and b
    add b
    ld [bc], a
    db $e3
    ret nc

    add hl, bc
    push hl
    ld b, b
    ld [$eb01], a
    ld e, $e6
    sub a
    call c, $e811
    rlca
    xor $22
    db $d3
    ld [hl], b
    ld [hl], b
    nop
    ld [hl], b
    nop
    and b
    rst $10
    stop
    ret c

    ret nz

    ld [bc], a
    ret c

    add b
    ld [bc], a
    db $dd
    rst $18
    ld [bc], a
    rst $18
    ld [bc], a
    db $d3
    ld d, b
    ld bc, $0150
    stop
    nop
    ld h, b
    nop

jr_07d_6018:
    add b
    nop
    ld [hl], b
    ld h, b
    nop
    ret nc

    ld bc, $0159
    rst $10
    add hl, de
    ld bc, $0159
    ret nc

    add hl, bc
    ld h, b
    nop
    jr nc, jr_07d_607c

    nop
    stop
    ret c

    and b
    ret nz

    add b
    ld bc, $dfe0
    ld [bc], a
    ld [c], a
    ret z

    ld h, b
    call nc, $5001
    ld b, b
    jr nc, jr_07d_6018

    ret nz

    nop
    rst $10
    db $10
    add sp, $06
    nop
    ld h, b
    nop
    ld h, b
    ld h, b
    ld [bc], a
    add sp, $07
    ld [c], a
    ret z

    ld h, b
    call nc, $1001
    nop
    nop
    ret c

    or b
    ld bc, $0680
    ldh [$e2], a
    call c, $d360
    sub b
    sub b
    nop
    sub b
    nop
    sub b
    or b
    rst $10
    db $10
    rlca
    ld [c], a
    call c, $d360
    ld [hl], b
    ld [hl], b
    nop
    ld [hl], b
    nop
    and b
    rst $10
    stop
    ret c

    ret nz

    ld [bc], a
    add b
    ld [bc], a

jr_07d_607c:
    ldh [$df], a
    ld [bc], a
    call nc, $d810
    add b
    nop
    ld d, b
    ld bc, $0060
    ld h, b

jr_07d_6089:
    and b
    nop
    and b
    ld h, b
    ld [bc], a
    add b
    rst $10
    ld h, b
    nop
    ld h, b
    ret nc

    ld bc, $0169
    ld e, c
    ld bc, $0139
    ret nc

    add hl, bc
    db $10
    ret c

    add b
    nop
    ld h, b
    ld d, b
    ld [bc], a
    rst $10
    db $10

jr_07d_60a6:
    ret c

    add b
    nop
    ld d, b
    ld bc, $0060
    ld h, b
    and b
    nop
    and b
    ld h, b
    ld [bc], a
    add b
    rst $10
    jr nc, jr_07d_60b7

jr_07d_60b7:
    jr nc, jr_07d_6089

    ld bc, $0139
    add hl, de
    ld bc, $c9d8
    ld bc, $09d0
    add b
    ld b, $e0
    sbc $ff
    call nc, $5001
    ld b, b
    jr nc, jr_07d_60a6

    ret nz

    nop
    rst $10
    stop
    ret c

    ld d, b
    ld h, b
    and b
    nop
    ld h, b
    and b
    ret nz

    db $e3
    db $d3
    sub b
    sub b
    nop
    sub b
    nop
    sub b
    or b
    nop
    rst $10
    db $10
    ret c

    add b
    nop
    ld h, b
    ld d, b
    ld [bc], a
    db $e3
    ret nc

    add hl, bc
    rst $20
    ld [$20e6], sp
    jp hl


    nop
    call c, $e811
    rlca
    jp nc, $3030

    nop
    jr nc, jr_07d_6100

jr_07d_6100:
    jr nc, jr_07d_6132

    nop
    add b
    ld [bc], a
    and $40

jr_07d_6107:
    ret c

    add e
    and $20
    db $dd
    rst $18
    ld [bc], a
    rst $18
    ld [bc], a
    jp nc, $0110

    ret c

    add b
    ld bc, $0050
    nop
    and b
    nop
    ret nz

    nop
    or b
    and b
    nop
    ret nc

    ld bc, $d78b
    ld e, e
    adc e
    ret nc

    add hl, bc
    and c
    ld h, b
    add c
    ld d, c
    db $10
    jr nc, jr_07d_6107

    jp nz, $dfe0

jr_07d_6132:
    ld [bc], a
    pop de
    db $10
    ld bc, $0180
    rst $10
    stop
    ret c

    ld h, b
    ld bc, $10d7
    ld bc, $60d8
    nop
    db $10
    ld bc, $0150
    add b
    rst $10
    db $10
    add sp, $06
    and $40
    rst $10
    rst $10
    nop
    add b
    nop
    add b
    add b
    nop
    ret c

    ret c

    ret c

    add sp, $07
    and $20
    add b
    nop
    db $10
    ld bc, $0180
    rst $10
    stop
    ret c

    ld h, b
    ld bc, $10d7
    ld bc, $60d8
    nop
    stop
    sub b
    nop
    nop
    or b
    ld bc, $10d7
    ret c

    ld bc, $8080
    nop
    stop
    ldh [$df], a
    inc bc
    pop de
    sub b
    ld bc, $40d7
    ld bc, $0090
    add b
    ld bc, $0110
    ret c

    add b
    nop
    ldh [$d7], a
    jr nc, @+$32

    nop
    jr nc, jr_07d_6199

jr_07d_6199:
    jr nc, jr_07d_61cb

    nop
    add b
    ld [bc], a
    ret c

    add c
    ld bc, $dfe0
    ld [bc], a
    pop de
    db $10
    ld bc, $0180
    rst $10
    stop
    ret c

    ld h, b
    ld bc, $01a0
    rst $10
    stop
    ret c

    add b
    ld bc, $01c0
    rst $10
    jr nc, jr_07d_61bc

jr_07d_61bc:
    ret c

    db $10
    ld bc, $0110
    add b
    nop
    db $10
    ld bc, $0180
    rst $10
    stop
    ret c

jr_07d_61cb:
    ld h, b
    ld bc, $01a0
    rst $10
    stop
    ret c

    add c
    ld bc, $01d0
    adc e
    xor e
    set 2, b
    add hl, bc
    rst $10
    db $10
    ret c

    add b
    nop
    add b
    db $10
    ld [bc], a

jr_07d_61e4:
    ldh [$de], a
    rst $38
    ret nc

    add hl, bc
    pop de
    rrca
    db $dd
    rst $18
    ld [bc], a
    ld [c], a
    ld h, e
    ld h, d
    ld [c], a
    ld a, l
    ld h, d
    ld [c], a
    ld h, e
    ld h, d
    ld [c], a
    ld a, l
    ld h, d
    rst $18
    ld [bc], a
    ld [c], a
    ld h, e
    ld h, d
    rst $10
    and b
    ret c

    ld d, b
    rst $10
    and c
    ret c

    jr nc, jr_07d_6258

    rst $10
    and b
    ret c

    jr nz, jr_07d_61e4

    and b
    ret c

    ld sp, $3020
    ld d, b
    and c
    ld [c], a
    ld h, e
    ld h, d
    ld [c], a
    ld a, l
    ld h, d
    ldh [$e2], a
    ld h, e
    ld h, d
    ld [c], a
    ld a, l
    ld h, d
    ld [c], a
    ld h, e
    ld h, d
    jr nc, @+$33

    ld sp, $3130
    and e
    jp $dfe0


    rlca
    rst $10

jr_07d_622f:
    and c
    ret c

    ld h, b
    ld d, b

jr_07d_6233:
    rst $10
    and c
    ret c

    add b
    ld d, b
    ldh [$d7], a
    and c
    ret c

    ld h, b
    ld d, b
    ld sp, $3020
    ld [c], a
    ld h, e
    ld h, d
    ld [c], a
    ld a, l
    ld h, d
    ld [c], a

jr_07d_6248:
    ld h, e
    ld h, d
    rst $10
    and b

jr_07d_624c:
    ret c

    ld d, b
    rst $10
    and c
    ret c

    jr nc, @+$52

    rst $10
    and b
    ret c

    jr nz, jr_07d_622f

jr_07d_6258:
    and b
    ret c

    jr nz, jr_07d_6233

    and c
    ret c

    ld sp, $3020
    sbc $ff
    rst $10
    and b
    ret c

jr_07d_6266:
    ld d, b
    rst $10
    and c
    ret c

    jr nc, @+$52

    rst $10
    and b
    ret c

    jr nz, jr_07d_6248

    and b
    ret c

    jr nz, jr_07d_624c

    and c
    ret c

    ld sp, $a0d7
    ret c

    ld d, b
    db $e3
    rst $10
    and b
    ret c

    ld d, b
    rst $10
    and c
    ret c

    jr nc, jr_07d_62d6

    rst $10
    and b
    ret c

    jr nz, @-$27

    and b
    ret c

    jr nz, jr_07d_6266

    and c
    ret c

    ld sp, $e331

    db $d0, $01, $dc, $11, $e8, $07, $ea, $01, $eb, $1e, $ee, $33, $d4, $e5, $00, $e6
    db $c0, $e2, $46, $63, $37, $37, $07, $08, $0f, $07, $08, $0f, $07, $08, $0f, $07
    db $08, $e2, $46, $63, $e5, $80, $e6, $80, $d2, $a7, $d9, $a7, $d7, $57, $d9, $58
    db $d8, $a7, $d9, $a7, $a7, $a8

    reti


    and a
    rst $10
    daa
    ret c

    and a
    reti


    xor b
    and a
    reti


    and a
    reti


jr_07d_62d6:
    and a
    reti


    xor b
    push hl
    nop
    and $c0

jr_07d_62dd:
    ld [c], a
    ld b, [hl]
    ld h, e
    scf
    scf
    rlca
    ld [$070f], sp
    ld [$070f], sp
    ld [$070f], sp
    ld [$46e2], sp
    ld h, e
    push hl
    add b
    ld [$eb08], a
    ld bc, $90e6
    pop de
    and a
    reti


    and a
    rst $10
    and a
    ld [$87a7], sp
    ld d, a
    jr c, jr_07d_62dd

    scf
    ld b, a
    ld d, a
    ret c

    xor b
    reti


    and a
    or a
    rst $00
    reti


    ret z

    push hl
    ld b, b
    ld [$eb01], a
    ld e, $e6
    or b
    ld [c], a
    ld e, d
    ld h, e
    db $d3
    ld d, a
    reti


    ld e, b
    reti


    ld d, a
    reti


    ld d, a
    reti


    ld d, a
    reti


    ld e, b
    reti


    ld d, a
    reti


    ld d, a
    reti


    ld d, a
    reti


    ld e, b
    ld [c], a
    ld e, d
    ld h, e
    db $d3
    ld [hl], a
    reti


    ld a, b
    reti


    ld [hl], a
    reti


    ld [hl], a
    reti


    ld [hl], a
    reti


    ld a, b
    ld d, a
    reti


    ld d, a
    reti


    ld d, a
    reti


    ld e, b
    sbc $ff

    db $d4, $37, $07, $37, $08, $37, $27, $07, $28, $07, $d8, $c7, $c7, $08, $c7, $07
    db $d7, $27, $08, $e3

    db $d3
    ld [hl], a
    reti


    ld [hl], a
    reti


    ld [hl], a
    reti


    ld a, b
    reti


    ld [hl], a
    reti


    ld [hl], a
    reti


    ld [hl], a
    reti


    ld a, b
    rst $10
    daa
    reti


    daa
    reti


    daa
    reti


    jr z, @-$25

    daa
    reti


    daa
    reti


    daa
    reti


    jr z, @-$25

    daa
    reti


    daa
    reti


    daa
    ret c

    ret z

    reti


    rst $00
    reti


    rst $00
    reti


    rst $00
    reti


    ret z

jr_07d_638a:
    reti


    rst $00
    reti


    rst $00
    reti


    rst $00
    reti


jr_07d_6391:
    ret z

    ld d, a
    reti


    ld d, a
    reti


    ld d, a
    reti


    ld e, b
    ld [hl], a
    reti


    ld [hl], a
    reti


    ld [hl], a
    reti


    ld a, b
    reti


    ld [hl], a
    reti


    ld [hl], a
    reti


    ld [hl], a
    reti


    ld a, b
    rst $10
    daa
    reti


    daa
    reti


    daa
    reti


    jr z, jr_07d_638a

    daa
    reti


    daa
    reti


    daa
    reti


    jr z, jr_07d_6391

    rst $00
    reti


    rst $00
    reti


    rst $00
    rst $10
    ld e, b
    reti


    ld d, a
    reti


    ld d, a
    db $e3

    db $d0, $01, $ea, $01, $eb, $1e, $dc, $11, $e8, $07, $ee, $33, $d3, $e5, $00, $e6
    db $a0, $e2, $74, $64, $c7, $c7, $07, $08, $0f, $07, $08, $0f, $07, $08, $0f, $07
    db $08, $e2, $74, $64, $e5, $80, $e6, $60, $57, $d9, $57, $d8, $a7, $d9, $a8, $d7
    db $37, $d9, $37, $37, $28

    reti


    daa
    ret c

    and a
    rst $10
    scf
    reti


    jr c, jr_07d_643a

    reti


    scf
    reti


    scf
    reti


    jr c, @-$19

    nop
    and $a0
    ld [c], a
    ld [hl], h
    ld h, h

jr_07d_6410:
    rst $00
    rst $00
    rlca
    ld [$070f], sp
    ld [$070f], sp
    ld [$070f], sp
    ld [$74e2], sp
    ld h, h
    push hl
    add b
    and $60
    ld [$eb08], a
    ld bc, $fee4
    pop de
    rlca
    and a
    reti


    and a
    rst $10
    and a
    ld [$87a7], sp
    ld d, a
    jr c, jr_07d_6410

    scf
    ld b, a
    ld d, a

jr_07d_643a:
    ret c

    xor b
    reti


    and a
    or a
    ret z

    push hl
    ld b, b
    ld [$eb01], a
    ld e, $0f
    ld [c], a
    ld e, d
    ld h, e
    db $d3
    ld d, a
    reti


    ld e, b
    reti


    ld d, a
    reti


    ld d, a
    reti


    ld d, a
    reti


    ld e, b
    reti


    ld d, a
    reti


    ld d, a
    reti


    ld d, a
    reti


    ld e, b
    ld [c], a
    ld e, d
    ld h, e
    db $d3
    ld [hl], a
    reti


    ld a, b
    reti


    ld [hl], a
    reti


    ld [hl], a
    reti


    ld [hl], a
    reti


    ld a, b
    ld d, a
    reti


    ld e, b
    db $e4
    nop
    sbc $ff

    db $d3, $c7, $07, $c7, $08, $c7, $a7, $07, $a8, $07, $97, $97, $08, $97, $07, $a7
    db $08, $e3, $d0, $01, $e7, $08, $e6, $20, $e9, $00, $dc, $11, $e8, $07, $d1, $df
    db $07, $0f, $57, $d9, $58, $07, $5f, $58, $5f, $07, $08, $54, $02, $54, $02, $d7
    db $37, $58, $d8, $e0

    and a
    reti


    and a
    rst $10
    and a
    ld [$87a7], sp
    ld d, a
    jr c, @-$25

    scf
    ld b, a
    ld d, a
    ret c

    xor b
    reti


    and a
    or a
    rst $00
    reti


    ret z

    pop de
    rst $18
    rlca
    rrca
    ld [hl], a
    reti


    ld a, b
    rlca
    ld a, a
    ld a, b
    ld a, a
    rlca

jr_07d_64ca:
    ld [$0274], sp
    ld [hl], h
    ld [bc], a
    rst $10
    ld d, a
    ld a, b
    ret c

    ldh [$c7], a
    reti


    rst $00
    rst $10
    rst $00
    ld [$a7c7], sp
    ld [hl], a
    ld e, b

jr_07d_64de:
    reti


    ld d, a
    ld h, a
    ld [hl], a
    ret c

    ret z

    reti


    rst $00
    rst $10
    rla
    daa
    reti


    jr z, jr_07d_64ca

    rst $38

    db $d0, $01, $d1, $e2, $2a, $65

    rla
    rlca
    rla
    ld [$2ae2], sp
    ld h, l
    scf
    rlca
    daa
    jr c, jr_07d_64de

    ld [bc], a
    rst $10
    sbc a
    ret c

    rla
    ld e, b
    scf
    rla
    ld d, a

jr_07d_6508:
    jr @+$59

    scf
    rla
    ld e, b
    scf
    rlca
    scf
    ld [$6be2], sp
    ld h, l
    ld [c], a
    ld l, e
    ld h, l
    ld h, a
    add a
    rla
    ld e, b
    scf
    rla
    ld d, a
    jr jr_07d_6577

    scf
    rla
    ld e, b
    scf
    rlca
    scf
    jr c, jr_07d_6508

    sbc $ff

    db $57, $87, $17, $68, $87, $17, $07, $18, $17, $67, $87, $08, $67, $87, $07, $58
    db $57, $87, $17, $08, $57, $17, $07, $18, $d7, $57, $57, $57, $d8, $bf, $00, $b7
    db $af, $00, $57, $87, $17, $08, $87, $17, $07, $18, $17, $67, $87, $18, $67, $87
    db $07, $58, $57, $87, $d7, $5f, $d8, $00, $67, $87, $07, $68

    add a
    rlca
    ld h, a
    adc b
    db $e3
    ld h, a
    add a
    rla
    ld e, b
    scf
    rla
    ld d, a
    jr jr_07d_65cb

    scf
    rla
    ld e, b

jr_07d_6577:
    scf
    rlca
    scf
    ld [$d0e3], sp
    ld bc, $40e5
    call c, $ea11
    add hl, bc
    db $eb
    ld a, [hl+]
    add sp, $07
    xor $11
    db $d3
    and $b0
    ld [c], a
    db $10
    ld h, [hl]
    rlca
    and $80
    db $d3
    ld c, $0e
    ld c, $0e
    ld d, $07
    add [hl]
    rlca
    add [hl]
    or a
    ld b, $87
    and $b0
    ld [c], a
    db $10
    ld h, [hl]
    rlca
    and $80
    db $d3
    cp [hl]
    reti


    cp [hl]
    reti


    cp [hl]
    reti


    cp [hl]
    reti


    cp [hl]
    reti


    cp [hl]
    reti


    cp [hl]
    reti


    cp [hl]
    and $b0
    ld [c], a
    inc hl
    ld h, [hl]
    and $80
    db $d3
    ld l, [hl]
    reti


    ld l, [hl]
    reti


    ld l, [hl]
    ld c, [hl]
    reti


    ld c, [hl]
    reti


    ld c, [hl]
    reti


jr_07d_65cb:
    ld c, [hl]
    reti


    ld c, [hl]
    and $b0
    ld [c], a
    inc hl
    ld h, [hl]
    db $d3
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, $47
    ld [hl], $27
    and $c0
    ld e, $d9
    ld e, $4e
    reti


    ld c, [hl]
    ld a, $d9
    ld a, $d8
    sbc [hl]
    reti


    sbc [hl]
    adc [hl]
    reti


    adc [hl]
    rst $10
    ld l, $d9
    ld l, $19
    ld a, c
    ld l, c
    ld e, c
    ret


    cp c
    xor c
    add hl, bc
    ld c, c
    add hl, bc
    ret c

    ret


    add hl, bc
    cp c
    add hl, bc
    xor c
    add hl, bc
    sbc c
    add hl, bc
    rst $18
    ld [bc], a
    ld c, $0e
    ld c, $0e
    ldh [$de], a
    rst $38
    db $d3
    ld e, $d7
    ld d, $d8
    rlca
    ret c

    xor [hl]
    rst $10
    and [hl]
    ret c

    rlca
    cp [hl]
    rst $10
    or [hl]
    rlca
    ld c, $06
    db $e3
    jp nc, $d76e

    ld h, [hl]
    ret c

    rlca
    ld a, $d7
    ld [hl], $d8
    rlca
    ld c, [hl]
    rst $10
    ld b, [hl]
    rlca
    ld c, $0e
    db $e3
    ret nc

    ld bc, $09ea
    db $eb
    ld a, [hl+]
    call c, $ee11
    ld de, $e8d3
    rlca
    push hl
    ld b, b
    and $70
    db $e4
    cp $07
    ld [c], a
    db $10
    ld h, [hl]
    and $90
    call nc, Call_000_0e0e
    ld c, $0e
    ld c, $16
    rlca
    ld d, $07
    ld c, $e6
    ld [hl], b
    rlca
    ld [c], a
    db $10
    ld h, [hl]
    db $e4
    nop
    and $80
    db $d3
    ld e, $d9
    ld e, $d9
    ld e, $d9
    ld e, $d9
    ld e, $d9
    ld e, $d9
    ld e, $d9
    ld e, $e6
    sub b
    ld [c], a
    add hl, de
    ld h, a
    pop de
    ld c, $c0
    rst $10
    ld de, $5131
    ld h, c
    add c
    and c
    pop bc
    and $80
    db $d3
    ld e, $d9
    ld e, $d9
    ld e, $d8
    cp [hl]
    reti


    cp [hl]
    reti


    cp [hl]
    reti


    cp [hl]
    reti


    cp [hl]
    and $90
    ld [c], a
    add hl, de
    ld h, a
    ld c, $0e
    jp nc, Jump_000_0e0e

    ld c, $0e
    ld c, $0e
    ld b, $77
    ld h, [hl]
    ld d, a
    ld c, [hl]
    reti


    ld c, [hl]
    ld a, [hl]
    reti


    ld a, [hl]
    ld l, [hl]
    reti


    ld l, [hl]
    ret c

    adc $d9
    adc $be
    reti


    cp [hl]
    rst $10
    ld e, [hl]
    reti


    ld e, [hl]
    ld c, c
    xor c
    sbc c
    adc c
    rst $10
    add hl, sp
    add hl, hl
    push hl
    add b
    and $b0
    jp nc, $a352

    rst $10
    inc sp
    ret c

    ld h, e
    or d
    rst $10
    ld b, e
    ret c

    ld [hl], e
    jp Jump_07d_52d7


    ret c

    add e
    rst $10
    inc de
    ld h, e

jr_07d_66da:
    ret c

    sub d
    rst $10
    inc hl
    ld [hl], e
    ret c

    and e
    rst $10
    ld [hl-], a
    add e
    ret c

    or e
    rst $10
    ld b, e
    sub d
    ret c

    jp $53d7


    and e
    ld [de], a
    ld h, e
    or e
    inc hl
    ld [hl], d
    jp $8333


    rst $10
    ld b, b
    ld hl, $c1d8
    and c
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    jr nz, jr_07d_66da

    pop bc
    and c
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $c0d8
    and c
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $0e11
    ld c, $0e
    ld c, $0e
    sbc $ff
    jp nc, $d71e

    ld d, $d8
    rlca
    ret c

    xor [hl]
    rst $10
    and [hl]
    ret c

    rlca
    cp [hl]
    rst $10
    or [hl]
    rlca
    ret c

    db $e3
    ret nc

    ld bc, $01e7
    and $20
    jp hl


    nop
    call c, $e811
    rlca
    jp nc, $bbe2

    ld h, a
    pop de
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $b6
    rst $00
    ld [c], a
    cp e
    ld h, a
    and $40
    db $d3
    ld l, [hl]
    reti


    ld l, [hl]
    reti


    ld l, [hl]
    reti


    ld l, [hl]
    reti


    ld l, [hl]
    reti


    ld l, [hl]
    reti


    ld l, [hl]
    ret c

    ret c

    and $20
    ld l, [hl]
    ld [c], a
    adc $67
    and $40
    jp nc, $d9ae

    xor [hl]
    reti


    xor [hl]
    adc [hl]
    reti


    adc [hl]
    reti


    adc [hl]
    reti


    adc [hl]
    and $20
    ret c

    ld h, [hl]
    ld h, a
    ld [c], a
    adc $67
    pop de
    ld c, $0e
    ld c, $0e
    ld c, $0e
    sub [hl]
    and a
    or [hl]
    rst $00
    rst $10
    ld e, $d9
    ld e, $d9
    ld e, $1e
    ret c

    adc $d9
    adc $d9
    adc $ce
    cp [hl]
    reti


    cp [hl]
    reti


    cp [hl]
    cp [hl]
    xor [hl]
    reti


    xor [hl]
    reti


    xor [hl]
    xor [hl]
    rst $10
    xor c
    add hl, bc
    ld c, c
    add hl, bc
    add hl, de
    add hl, bc
    ret c

    cp c
    rst $10
    or h
    inc b
    ret c

    xor c
    rst $10
    and h
    inc b
    ret c

    sbc c
    rst $10
    sub h
    inc b
    rst $18
    ld [bc], a
    ld c, $0e
    ld c, $0e
    ldh [$de], a
    rst $38
    jp nc, $d71e

    ld e, $d8
    ret c

    xor [hl]
    rst $10
    and [hl]
    ret c

    or a
    reti


    or [hl]
    or a
    rst $10
    cp [hl]
    ld c, $0e
    db $e3
    pop de
    ld l, [hl]
    rst $10
    ld l, [hl]
    ret c

    ld a, $d7
    ld [hl], $d8
    ld b, a
    reti


    ld b, [hl]
    ld b, a
    rst $10
    ld c, [hl]
    ld c, $0e
    db $e3
    ret nc

    ld bc, $16d1
    rlca
    ld c, $56
    add a
    ld h, [hl]
    ld d, a
    ld a, $16
    rla
    ld d, [hl]
    ld e, $57
    ld [c], a
    ld l, h
    ld l, b
    ld d, $07
    ld c, $56
    add a
    ld h, [hl]
    ld d, a
    ld a, $16
    rla
    ld d, [hl]
    ld e, $d7
    ld d, a
    ret c

    ld d, $d7
    ld e, [hl]
    ld d, a
    ret c

    ld d, $b7
    cp [hl]
    ld a, $b6
    rla
    and [hl]
    rla
    ld [hl], $17
    ld d, $07
    ld c, $56
    add a
    ld h, [hl]
    ld d, a
    ld a, $16
    rla
    ld d, [hl]
    rla
    ld c, $e2
    ld l, h
    ld l, b
    ld d, $07
    ld c, $56
    add a
    ld h, [hl]
    ld d, a
    ld a, $16
    rla
    rst $10
    ld d, [hl]
    ret c

    rla
    rst $10
    ld d, [hl]
    ld d, a
    ret c

    ld d, $d7
    ld d, a
    ld e, [hl]
    ld e, [hl]
    ret c

    cp [hl]
    ld [hl], $b7
    ld d, $a7
    ld [hl], $a7
    ld [hl], $17
    ret nc

    inc a
    ret nz

    ret nc

    ld bc, $3919
    add hl, sp
    add hl, sp
    add hl, de
    add hl, sp
    add hl, de
    cp c
    cp c
    cp c
    xor c
    xor c
    add hl, de
    add hl, de
    add hl, de
    add hl, sp
    add hl, sp
    add hl, de
    ret nc

    ld e, $c1
    pop bc
    ret nz

    ret nc

    ld bc, $6756
    add [hl]
    ld d, a
    ld a, $16
    rla
    ld [hl], $3e
    scf
    sbc $ff
    ld d, $07
    ld c, $56
    add a
    ld h, [hl]
    ld d, a
    ld a, $16
    rla
    or [hl]
    rla
    ld [hl], $17
    db $e3
    ret nc

    ld bc, $11dc
    push hl
    add b
    and $b0
    add sp, $07
    ld [$eb01], a
    inc hl
    call nc, $8de2
    ld l, c
    db $d3
    add hl, sp
    reti


    ld a, [hl-]
    ld e, c
    reti


    ld e, d
    ld a, c
    reti


    ld a, d
    xor c
    reti


    xor d
    sbc c
    reti


    sbc d
    ld a, c
    reti


    ld a, d
    ld e, c
    reti


    ld e, d
    add hl, sp
    reti


    ld a, [hl-]
    add hl, sp
    reti


    ld a, [hl-]
    reti


    add hl, sp
    reti


    ld a, [hl-]
    reti


    add hl, sp
    reti


    ld a, [hl-]
    add hl, hl
    ld a, [hl-]
    add hl, hl
    reti


    ld a, [hl+]
    reti


    add hl, hl
    reti


    ld a, [hl+]
    reti


    add hl, hl
    reti


    ld a, [hl+]
    reti


    add hl, hl
    reti


    ld a, [hl+]
    ld [c], a
    adc l
    ld l, c
    db $d3
    add hl, sp
    reti


    ld a, [hl-]
    ld e, c
    reti


    ld e, d
    ld a, c
    reti


    ld a, d
    xor c
    reti


    xor d
    sbc c
    reti


    sbc d
    ld a, c
    reti


    ld a, d
    sbc c
    reti


    sbc d
    reti


    sbc c
    reti


    sbc d
    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    ld [c], a
    ld sp, $d36a
    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
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
    reti


    ld e, c
    reti


    ld e, d
    ld [c], a
    ld sp, $a96a
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    ld [c], a
    ld sp, $a96a
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
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
    reti


    ld e, c
    reti


    ld e, d
    ld [c], a
    ld c, l
    ld l, d
    adc c
    ld a, [bc]
    cp c
    ld a, [bc]
    cp c
    adc d
    add hl, bc
    rst $10
    ld a, [hl-]
    add hl, bc
    ld a, [hl-]
    ret c

    cp c
    ld a, [bc]
    adc c
    ld a, [bc]
    cp c
    ld a, [bc]
    ld [c], a
    ld c, l
    ld l, d
    ld l, c
    ld a, [bc]
    sbc c
    ld a, [bc]
    sbc c
    ld l, d
    add hl, bc
    rst $10
    ld a, [de]
    add hl, bc
    ld a, [de]
    ret c

    sbc c
    ld a, [bc]
    ld l, c
    ld a, [bc]
    sbc c
    ld a, [bc]
    sbc $ff
    call nc, $c4d8
    rst $10
    inc h
    reti


    ld a, [hl+]
    reti


    add hl, hl
    reti


    ld a, [hl+]
    reti


    add hl, hl
    ld a, [bc]
    add hl, sp
    ld e, d
    add hl, sp
    reti


    ld a, [hl-]
    add hl, hl
    reti


    ld a, [hl+]
    ret c

    ret


    reti


    jp z, $d9a9

    xor d
    ret


    reti


    jp z, $c9d9

    reti


    jp z, $c9d9

    reti


    jp z, $d959

    ld e, d
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
    ld a, c
    reti


    ld a, d
    reti


    ld a, c
    reti


    ld a, d
    reti


    ld a, c
    reti


    ld a, d
    sbc c
    xor d
    ret


    reti


    jp z, $d9a9

    xor d
    sbc c
    reti


    sbc d
    xor c
    reti


    xor d
    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    sbc c
    xor d
    sbc c
    reti


    sbc d
    reti


    sbc c
    reti


    sbc d
    reti


    sbc c
    reti


    sbc d
    reti


    sbc c
    reti


    sbc d
    ld a, c
    reti


    ld a, d
    ld e, c
    reti


    ld e, d
    ld a, c
    reti


    ld a, d
    sbc c
    reti


    sbc d
    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    xor c
    reti


    xor d
    sbc c
    reti


    sbc d
    ld a, c
    reti


    ld a, d
    sbc c
    reti


    sbc d
    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    db $e3
    db $d3
    ld a, c
    sbc d
    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    rst $10
    add hl, sp
    reti


    ld a, [hl-]
    add hl, hl
    reti


    ld a, [hl+]
    ret c

    ret


    reti


    jp z, $d9a9

    xor d
    sbc c
    reti


    sbc d
    db $e3
    db $d3
    ld l, c
    ld a, [bc]
    xor c
    ld a, [bc]
    xor c
    ld l, d
    add hl, bc
    rst $10
    ld a, [de]
    add hl, bc
    ld a, [de]
    ret c

    xor c
    ld a, [bc]
    ld l, c
    ld a, [bc]
    xor c
    ld a, [bc]
    db $e3
    ret nc

    ld bc, $11dc
    add sp, $07
    ld [$eb01], a
    inc hl
    db $d3
    push hl
    add b
    and $90
    ld [c], a
    ld l, $6b
    jp nc, $d9a9

    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    xor c
    xor d
    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    ld [c], a
    ld l, $6b
    db $d3
    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    ret c

    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    rst $10
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
    ret c

    push hl
    nop
    and $93
    rst $18
    inc bc
    add hl, sp
    ld a, d
    xor c
    rst $10
    ld a, [hl-]
    ret c

    xor c
    ld a, d
    add hl, sp
    ld a, d
    xor c
    rst $10
    ld a, [hl-]
    ret c

    xor c
    ld a, d
    add hl, sp
    ld a, d
    xor c
    rst $10
    ld a, [hl-]
    ret c

    ret c

    xor c
    rst $10
    ld a, [hl+]
    ld e, c
    xor d
    ld e, c
    ld a, [hl+]
    ret c

    xor c
    rst $10
    ld a, [hl-]
    ld e, c
    xor d
    ld e, c
    ld a, [hl+]
    ret c

    xor c
    rst $10
    ld a, [hl+]
    ld e, c
    xor d
    ldh [$e5], a
    add b
    and $90
    db $d3
    add hl, de
    ld a, [bc]
    ld l, c
    ld a, [bc]
    ld l, c
    ld a, [de]
    add hl, bc
    xor d
    add hl, bc
    xor d
    ld l, c
    ld a, [bc]
    add hl, de
    ld a, [bc]
    ld l, c
    ld a, [bc]
    ld c, c
    ld a, [bc]
    adc c
    ld a, [bc]
    adc c
    ld c, d
    add hl, bc
    cp d
    add hl, bc
    cp d
    adc c
    ld a, [bc]
    ld c, c
    ld a, [bc]
    adc c
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld l, c
    ld a, [bc]
    ld l, c
    ld a, [hl-]
    add hl, bc
    xor d
    add hl, bc
    xor d
    ld l, c
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld l, c
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld l, c
    ld a, [bc]
    ld l, c
    ld a, [hl+]
    add hl, bc
    sbc d
    add hl, bc
    sbc d
    ld l, c
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    ld l, c
    ld a, [bc]
    sbc $ff
    db $d3
    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    reti


    xor c
    ld a, [bc]
    ret


    rst $10
    ld a, [hl+]
    ret c

    ret


    reti


    jp z, $d9a9

    xor d
    sbc c
    reti


    sbc d
    ld a, c
    reti


    ld a, d
    sbc c
    reti


    sbc d
    reti


    sbc c
    reti


    sbc d
    reti


    sbc c
    reti


    sbc d
    ret c

    ret


    reti


    jp z, $d9c9

    jp z, $c9d9

    reti


    jp z, $c9d9

    reti


    jp z, $c9d9

    reti


    jp z, Jump_000_39d7

    reti


    ld a, [hl-]
    reti


    add hl, sp
    reti


    ld a, [hl-]
    reti


    add hl, sp
    reti


    ld a, [hl-]
    ld e, c
    ld a, d
    sbc c
    reti


    sbc d
    ld a, c
    reti


    ld a, d
    ld e, c
    reti


    ld e, d
    ld a, c
    reti


    ld a, d
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
    ld e, c
    reti


    ld e, d
    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    add hl, sp
    reti


    ld a, [hl-]
    add hl, hl
    reti


    ld a, [hl+]
    add hl, sp
    reti


    ld a, [hl-]
    ld e, c
    reti


    ld e, d
    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    ret c

    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    rst $10
    ld a, c
    reti


    ld a, d
    ld e, c
    reti


    ld e, d
    add hl, sp
    reti


    ld a, [hl-]
    ld e, c
    reti


    ld e, d
    ld e, c
    reti


    ld e, d
    reti


    ld e, c
    reti


    ld e, d
    ret c

    xor c
    reti


    xor d
    reti


    xor c
    reti


    xor d
    xor c
    reti


    xor d
    rst $10
    add hl, hl
    reti


    ld a, [hl+]
    add hl, sp
    reti


    ld a, [hl-]
    ld a, c
    reti


    ld a, d
    ld e, c
    reti


    ld e, d
    add hl, sp
    reti


    ld a, [hl-]
    add hl, hl
    reti


    ld a, [hl+]
    ret c

    ret


    reti


    jp z, $d0e3

    dec d
    call c, $e711
    inc e
    and $20
    add sp, $07
    pop de
    ld [c], a
    dec l
    ld l, h
    and b
    rst $10
    and b
    sub b
    and b
    ld d, b
    and b
    ret c

    and b
    rst $10
    and b
    ld [c], a
    dec l
    ld l, h
    pop de
    and b
    rst $10
    and b
    sub b
    and b
    ret c

    and e
    rst $18
    inc bc
    rst $10
    ld [hl-], a
    ld [hl-], a
    ld sp, $a2d8
    and d
    and c
    ldh [$62], a
    ld h, d
    ld h, c
    rst $10
    ld b, d
    ld b, d
    ld b, c
    ld [hl-], a
    ld [hl-], a
    ld sp, $2222
    ld hl, $ffde
    pop de
    and c
    rst $10
    and c

jr_07d_6c31:
    sub c
    ld d, c
    ret c

    ld d, c
    ld d, c
    rst $10
    ld d, c
    ret c

    ld d, c
    rst $10
    ld sp, $a1d8
    rst $10
    ld sp, $5131
    ret c

    ld d, c
    pop bc
    ld d, c
    rst $10
    ld sp, $a1d8
    rst $10
    ld hl, $a1d8
    rst $10
    ld sp, $a1d8
    rst $10
    ld hl, $a1d8
    rst $10
    ld sp, $a1d8
    rst $10
    ld d, c
    ret c

    ld d, c
    db $e3
    ret nc

    dec d
    pop de
    rst $18
    ld [bc], a
    ld [c], a
    ret nc

    ld l, h
    ld [c], a
    reti


    ld l, h
    ld [c], a
    ret nc

    ld l, h
    ld [c], a
    reti


    ld l, h
    ld [c], a
    ret nc

    ld l, h
    ld [c], a
    reti


    ld l, h
    ld [c], a
    ret nc

    ld l, h
    db $10
    ld d, b
    nop
    ld d, b
    jr nc, @+$52

    ret nc

    ld bc, $d719
    ld e, d

jr_07d_6c84:
    ret c

    cp c
    xor d
    ret nc

    dec d
    ldh [rNR12], a
    ld [de], a
    ld sp, $1212
    jr nc, jr_07d_6c31

    rst $18
    ld [bc], a
    ld [de], a
    ld [de], a
    ld sp, $1112
    db $10

jr_07d_6c99:
    ret nc

    ld bc, $d739
    ld e, d
    ret c

    cp c
    xor d
    ret nc

    dec d
    ldh [rNR10], a
    ld d, b
    jr nc, @+$52

    db $10
    ld d, b
    jr nc, jr_07d_6cfc

    db $10
    ld d, b
    jr nc, jr_07d_6d00

    db $10
    ld d, b
    jr nc, jr_07d_6c84

    ld bc, $3a59
    ret nc

    dec d
    db $10
    ld d, b
    jr nc, jr_07d_6d0d

    db $10
    ld d, b
    jr nc, jr_07d_6d11

    db $10
    ld d, b
    jr nc, jr_07d_6d15

    db $10
    ld d, b
    jr nc, jr_07d_6c99

    ld bc, $3a39
    ret nc

    dec d
    sbc $ff
    db $10
    ld d, b
    nop
    ld d, b
    jr nc, jr_07d_6d26

    or b
    and b
    db $e3
    db $10
    ld d, b
    nop
    ld d, b
    jr nc, jr_07d_6d2f

    db $10
    ld d, b
    db $e3
    ret nc

    inc c
    push hl
    add b
    and $c0
    call c, $ea11

jr_07d_6ceb:
    ld bc, $1ceb
    xor $44
    add sp, $07
    db $d3
    ld [c], a
    ld [hl], h
    ld l, l
    call nc, Call_000_3010
    ld d, b
    jr nc, jr_07d_6d0c

jr_07d_6cfc:
    ret c

    and b
    ld [hl], c
    ld d, b

jr_07d_6d00:
    ld b, b
    jr nc, jr_07d_6d13

    ret c

    and b
    ld [hl], b
    inc [hl]
    ld [c], a
    ld [hl], h
    ld l, l
    db $d3
    and b

jr_07d_6d0c:
    ret nz

jr_07d_6d0d:
    rst $10
    db $10
    jr nc, jr_07d_6d21

jr_07d_6d11:
    jr nc, jr_07d_6ceb

jr_07d_6d13:
    and c
    ret nz

jr_07d_6d15:
    and b
    ret nz

    rst $10
    stop
    db $10
    ld bc, $1010
    db $10
    ld [c], a
    and c

jr_07d_6d21:
    ld l, l
    ret nz

    ld d, b
    add b
    rst $10

jr_07d_6d26:
    db $10
    ld d, c
    db $10
    ret c

    ret nz

    rst $10
    db $10
    ret c

    ret nz

jr_07d_6d2f:
    and b

jr_07d_6d30:
    and b
    and c
    and b
    sub b
    and b
    ld h, b
    and b
    rst $10
    ld d, b

jr_07d_6d39:
    ld h, c
    ld d, b
    jr nc, jr_07d_6d9d

    db $10
    ret c

    ret nz

    ret nz

    pop bc
    ret nz

    or b
    ret nz

    add b
    ret nz

    rst $10
    ld d, b
    add c
    ld h, b
    ld d, b
    add b
    ld h, b
    ld d, b
    ld d, b
    ld d, c
    jr nc, jr_07d_6d63

    ld d, b
    jr nc, jr_07d_6d66

    jr nc, jr_07d_6d30

    and c
    rst $10
    jr nc, jr_07d_6d6c

    ld d, b
    jr nc, jr_07d_6d6f

    jr nc, jr_07d_6d39

    and c
    ret nz

jr_07d_6d63:
    and b
    ret nz

    rst $10

jr_07d_6d66:
    stop
    db $10
    ld bc, $1010

jr_07d_6d6c:
    db $10
    inc b
    ret c

jr_07d_6d6f:
    add b
    add b
    add b
    sbc $ff
    db $d3
    add b
    ld bc, $00a0
    add b
    nop
    ld [hl], b
    add b
    rst $10
    db $10
    ld d, b
    nop
    ld bc, $80d8
    rst $10
    db $10
    ret c

    ld h, b
    ld bc, $0080
    ld h, b
    nop
    ld d, b
    ld h, b
    and b
    rst $10
    jr nc, @+$06

    ret c

    ld d, b
    ld bc, $0060
    ld d, b
    nop
    ld b, b
    ld d, b
    and b

jr_07d_6d9d:
    rst $10
    db $10
    ld bc, $d3e3
    inc b
    add b
    ld [hl], b
    add b
    ld d, b
    add b
    rst $10
    db $10
    ld d, c
    db $10
    ret c

    ret nz

    rst $10
    db $10
    ret c

    ret nz

    and b

jr_07d_6db3:
    and b
    and c
    and b
    sub b
    and b
    ld h, b
    and b
    rst $10
    ld d, b

jr_07d_6dbc:
    ld h, c
    ld d, b
    jr nc, jr_07d_6e20

    db $10
    ret c

    ret nz

    ret nz

    pop bc

jr_07d_6dc5:
    ret nz

    or b
    ret nz

    add b
    ret nz

    rst $10
    ld d, b
    add c
    ld h, b
    ld d, b
    add b
    ld h, b

jr_07d_6dd1:
    ld d, b
    ld d, b
    ld d, c
    jr nc, jr_07d_6de6

    ld d, b
    jr nc, jr_07d_6de9

    jr nc, jr_07d_6db3

    and c
    rst $10
    jr nc, jr_07d_6def

    ld d, b
    jr nc, jr_07d_6df2

    jr nc, jr_07d_6dbc

    and c
    rst $10

jr_07d_6de6:
    jr nc, @+$12

    ld d, b

jr_07d_6de9:
    jr nc, jr_07d_6dfb

    jr nc, jr_07d_6dc5

    add c
    add b

jr_07d_6def:
    rst $10
    db $10
    add b

jr_07d_6df2:
    add b
    ld h, b
    ld h, b
    ld d, b
    ld d, b
    jr nc, jr_07d_6dd1

    and b
    db $e3

jr_07d_6dfb:
    push hl
    add b
    ld [$eb01], a
    inc e
    call c, $ee11
    ld b, h
    add sp, $07
    db $d3
    and $b0
    ret nc

    ld b, $e2
    adc e
    ld l, [hl]
    db $d3
    and c
    pop bc
    rst $10
    ld de, $0f0f
    ld [c], a
    or h
    ld l, [hl]
    db $d3
    ld d, c
    add c
    and c
    ld [hl], l
    ld d, $02

jr_07d_6e20:
    ld d, c
    ld bc, $0351
    ld h, c
    ld h, c
    ld d, c
    ret nc

    inc c

jr_07d_6e29:
    nop
    and $70
    db $e4
    cp $e2
    and c
    ld l, l
    and $90
    db $e4
    nop
    db $d3
    db $10
    ld d, b
    add b
    rst $10
    ld de, $80d8
    add b
    add b
    add b
    ld h, b
    ld h, b
    ld h, c
    ld h, b
    ld d, b
    ld h, b
    jr nc, jr_07d_6ea8

    and b
    rst $10
    ld sp, $d810
    ret nz

    rst $10
    jr nc, jr_07d_6e29

    and b
    add b
    add b
    add c
    add b
    ld [hl], b
    add b
    ld d, b
    add b
    ret nz

    rst $10
    ld d, c
    jr nc, @+$12

    ld d, b
    jr nc, jr_07d_6e72

    db $10
    ld de, $c0d8
    and b
    rst $10
    db $10
    ret c

    and b
    and b
    and b
    ld sp, $a0a0
    rst $10
    db $10

jr_07d_6e72:
    ret c

    ret nz

    and b
    ret nz

    ld h, c
    add b
    ld h, b
    add b
    and $b0
    ld d, b
    nop
    ld d, b
    ld bc, $6060
    ld d, b
    inc b
    and $90
    db $10
    db $10
    db $10
    sbc $ff
    db $d3
    ld d, c
    inc bc
    ld h, c
    ld bc, $0151
    ld b, c
    ld d, c
    dec b

jr_07d_6e95:
    ret c

    add c
    rst $10
    ld de, $3103
    inc bc
    ld d, c
    ld bc, $0131
    ld hl, $0531
    and $80
    rlca
    and $b0

jr_07d_6ea8:
    ld de, $3103
    ld bc, $0111
    ret c

    pop bc
    rst $10
    ld de, $e307
    db $d3
    ld d, c
    inc bc
    ld h, c
    ld bc, $0151
    ld b, c
    ld d, c
    dec b
    ret c

jr_07d_6ebf:
    add c
    rst $10
    ld de, $3103
    inc bc
    ld d, c
    ld bc, $0131
    ld hl, $0531
    and $80
    rst $10
    jr nc, @-$26

    ret nz

    ld h, b
    jr nc, jr_07d_6e95

    add b
    ld h, b
    jr nc, jr_07d_6ebf

    or b
    ld de, $3103

jr_07d_6edd:
    ld bc, $0111
    ret c

    pop bc
    rst $10
    ld de, $e307
    ret nc

    inc c
    and $20
    jp hl


    nop
    call c, $e811
    ld [$e7d3], sp
    ld hl, $45e2
    ld l, a
    jp nc, Jump_000_3472

    ld [de], a
    ret c

    and h
    ld [c], a
    ld b, l
    ld l, a
    jp nc, $d772

    inc sp
    ret c

    ret c

    ret nz

    rst $10
    inc de
    nop
    ret c

    add c
    db $10
    rst $20
    ld [$03d1], sp
    jp Jump_07d_5313


    ld h, e
    ld sp, $3321
    and c
    ld sp, $6383
    ld d, e
    sub e
    and e
    add e
    ld [hl], e
    rst $10
    ld sp, $31d8
    ld h, a
    ld d, a
    inc sp
    add e
    inc de
    ld d, e
    ld h, e
    ld d, e
    inc sp
    ld d, c
    ld h, c
    add e
    ld h, e
    ld d, e
    sub e
    and e
    add e
    ld [hl], e
    inc sp
    ld h, e
    ld sp, $1081
    nop
    db $10
    ld bc, $1010
    db $10
    inc bc
    inc de
    sbc $ff
    db $d3
    ld de, $d800
    ret nz

    nop
    or b
    nop
    and b
    add b
    ld [hl], b
    add b
    db $10
    inc bc
    pop bc
    nop
    or b
    nop
    and b
    nop
    sub b
    add b
    jr nc, jr_07d_6edd

    ret c

    add b
    inc bc
    rst $10
    and d
    ret c

    and b
    ret nc

    ld b, $d7
    and d
    ld d, d
    and c
    ret nc

    inc c
    ret c

    and c
    pop bc
    rst $10
    ld de, $e331
    ret nc

    ld b, $d1
    rst $18
    ld [bc], a
    rrca
    rrca
    rrca
    rrca
    ldh [$03], a
    ld h, e
    inc bc
    add e
    inc bc
    ld h, e
    inc bc
    add c
    ld h, c
    inc bc
    add e
    inc bc
    ld h, e
    inc bc
    add e
    inc bc
    ld h, b
    or b
    and b
    and b
    rst $10
    sub e
    ret c

    ld d, c
    ld de, $5133
    ld de, $1111
    ld d, c
    ld de, $5333
    inc de
    ld d, c
    ld de, $d731
    ld d, c
    ret c

    or c
    and c
    inc sp
    inc sp
    ld de, $51d7
    ret c

    or c
    and c
    rrca
    jp Jump_07d_5355


    ld d, c
    inc bc
    ld d, l
    or e
    and c
    inc de
    ld d, l
    ld d, c
    ld de, $1351
    ld d, e
    ld de, $a1b3
    inc de
    ld d, l
    ld d, c
    ld de, $1351
    ld d, e
    ld de, $51d7
    ret c

    or c
    and c
    inc bc
    ld d, l
    or e
    and c
    inc de
    ld d, l
    ld d, c
    ld de, $1351
    ld d, e
    ld de, $a1b3
    inc de
    ld d, e
    rst $10
    ld d, c
    ret c

    and c
    or c
    and c
    rst $18
    ld [bc], a
    rst $10
    sub c
    ret c

    ld de, $1151
    inc sp
    ld d, e
    inc de
    ld d, c
    ld de, $5333
    ld de, $5111
    ld de, $5333
    inc de
    ld d, c
    ld de, $d731
    ld d, c
    ret c

    or c
    and c
    ldh [$33], a
    inc sp
    ld bc, $3131
    push bc
    ld h, a
    add e
    sbc $ff
    ret nc

    rlca
    push hl
    nop
    call c, $ea11
    dec bc
    db $eb
    ld a, [de]
    add sp, $07
    xor $22
    db $d3
    and $70
    db $d3
    rst $18
    ld b, $01
    pop bc
    ld bc, $01c1
    pop bc
    ld bc, $e0c1
    ld bc, $01c1
    pop bc
    ld bc, $21d7
    ld bc, $e621
    and b
    db $d3
    jp nz, $a3b2

    add c
    ld d, c
    ld sp, $b6e2
    ld [hl], b
    ld [hl], c
    ld e, a
    ld [c], a
    or [hl]
    ld [hl], b
    call nc, Call_07d_77a1
    ld b, a
    sbc $ff
    db $d3
    add d
    and d
    pop bc
    and d
    jp nz, $21d7

    ret c

    push bc
    ld e, c
    rst $10
    ld [hl-], a
    ld [hl+], a
    ld sp, $3252
    db $e3
    ret nc

    rlca
    push hl
    nop
    ld [$eb0b], a
    ld a, [de]
    call c, $e811
    rlca
    xor $22
    db $d3
    and $70
    rst $18
    ld [bc], a
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ldh [rSB], a
    ld sp, $3101
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    rst $18
    ld [bc], a
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ldh [rSB], a
    ld sp, $3101
    ld bc, $0151
    ld d, c
    db $d3
    ld [hl], d
    ld h, d
    ld d, e
    ld sp, $c1d8
    and c
    ld [c], a
    ld c, h
    ld [hl], b
    call nc, $d821
    rst $08
    ld [c], a
    ld c, h
    ld [hl], b
    call nc, $d851
    rst $00
    rst $00
    sbc $ff
    call nc, $2035
    jr nc, @+$55

    ld [hl], e
    add d
    ld [hl], d
    add c
    and d
    add d
    ld [hl], c
    add d
    ld [hl], d
    add c
    and d
    add d
    db $e3
    ret nc

    rlca
    rst $20
    ld bc, $20e6
    jp hl


    nop
    call c, $e811
    rlca
    pop de
    ld [c], a
    db $10
    ld [hl], c
    pop de
    ld d, d
    ld d, d
    rst $10
    ld d, e
    ret c

    ld d, c
    pop bc
    rst $10
    ld sp, $10e2
    ld [hl], c
    pop de
    jp nz, $a3b2

    add c
    ld d, c
    ld sp, $3ee2
    ld [hl], c
    ld [c], a
    ld d, b
    ld [hl], c
    ld [c], a
    ld a, $71
    ld [c], a
    ld d, b
    ld [hl], c
    ld [c], a
    ld a, $71
    ld [c], a
    ld d, b
    ld [hl], c
    ld [c], a
    ld a, $71
    ret nc

    ld bc, $dfd1
    inc b
    call $c4d7
    ld bc, $01c4
    ret c

    ldh [$de], a
    rst $38
    pop de
    ld d, c
    ld d, c
    rst $10
    ld d, c
    ret c

    ld d, b
    rst $10
    ld sp, $50d8
    pop bc
    rst $10
    ld sp, $5141
    ret c

    ld d, c
    rst $10
    ld sp, $50d8
    rst $10
    ld hl, $d820
    pop bc
    and c
    pop bc
    add c
    rst $10
    add c
    ret c

    add c
    rst $10
    add b
    ret c

    and c
    and b
    rst $10
    and c
    ret c

    and c
    rst $10
    and c
    db $e3
    pop de
    add c
    rst $10
    add c
    ret c

    add c
    rst $10
    add c
    ret c

    and c
    rst $10
    and c
    ret c

    and c
    rst $10
    and c
    ret c

    db $e3
    pop de
    ld d, c
    ld d, c
    rst $10
    ld d, c
    ret c

    ld d, b
    rst $10
    ld sp, $50d8
    rst $10
    ld d, c
    ld sp, $e351
    ret nc

    rlca
    pop de
    rst $10
    sub b
    ret c

    ld d, b
    ld de, $5030
    db $10
    stop
    db $10
    ld de, $5030
    ld bc, $d7e2
    ld [hl], c
    ld [c], a
    rst $20
    ld [hl], c
    ld [c], a
    rst $10
    ld [hl], c
    db $10
    ld d, b
    ld de, $5030
    db $10
    stop
    db $10
    ld de, $5030
    ld h, b
    add b
    ld [c], a
    rst $10
    ld [hl], c
    ld [c], a
    rst $20
    ld [hl], c
    rst $10
    sub d
    ret c

    jp nz, $91d7

    ret c

    db $10
    stop
    db $10

jr_07d_719a:
    jr nc, @-$27

    ld d, b
    ret c

    or b
    and b
    rst $18
    inc bc
    ld de, $3051
    db $10
    ld d, b
    stop
    db $10
    ld de, $5131
    ld de, $3051
    db $10
    ld d, b
    stop
    db $10
    ld de, $3031
    jr nc, jr_07d_719a

    ld de, $3051
    db $10
    ld d, b
    stop
    db $10
    ld de, $5131
    ld de, $3051
    db $10
    ld d, b
    stop
    db $10
    rst $10
    ld d, b
    ld d, b
    ret c

    or b
    or b
    and b
    and b
    sbc $ff
    db $10
    ld hl, $3110
    db $10
    stop
    ld de, $3010
    rst $10
    ld d, b
    ret c

    or b
    and b
    db $e3
    db $10
    ld d, b
    ld de, $5030
    db $10
    stop
    db $10
    ld de, $5030
    ld bc, $d0e3
    ld b, $e5
    ld b, b
    and $b0
    call c, $ea11
    ld bc, $16eb
    add sp, $07
    db $d3
    ld [c], a
    jr nc, jr_07d_7279

    call nc, $d827
    and a
    ld [c], a
    jr nc, jr_07d_7280

    call nc, Call_000_352f
    ret c

    and l
    inc sp
    ld d, a
    ld d, d
    ld [hl], d
    add c
    rst $10

jr_07d_7219:
    dec [hl]
    ret c

jr_07d_721b:
    and l
    inc sp
    ld e, a
    rst $10

jr_07d_721f:
    dec [hl]
    ret c

jr_07d_7221:
    and l
    inc sp
    ld d, a
    ld d, d
    ld [hl], d
    add c
    dec [hl]
    pop bc
    pop bc
    and c
    add c
    ld [hl], c
    ld e, a
    sbc $ff
    db $d3
    xor c

jr_07d_7232:
    ld [hl], c
    add c
    and c
    inc [hl]
    nop
    and h
    nop
    inc sp
    adc c
    ld [hl], c
    ld d, c
    ld sp, $d857
    and a
    rst $10
    dec [hl]
    and l
    inc sp
    add $00
    jp nz, $22d7

    ld sp, $203d
    jr nc, jr_07d_7232

    ret nc

    ld b, $ea
    ld bc, $16eb
    add sp, $07
    call c, $d311
    push hl
    ld b, b
    and $90

jr_07d_725e:
    ld [c], a
    ret nz

    ld [hl], d
    db $d3
    and a
    ld d, a
    ld [c], a
    ret nz

    ld [hl], d
    db $d3
    xor a
    push hl

jr_07d_726a:
    add b
    and $b3
    ld [c], a
    and $72
    ld [hl], c
    ld sp, $3171
    add c
    ld sp, $3181
    push hl

jr_07d_7279:
    nop
    and $83
    rst $10

jr_07d_727d:
    rst $18
    ld [bc], a
    ld d, b

jr_07d_7280:
    jr nz, jr_07d_72d2

    and b
    rst $10
    jr nz, jr_07d_725e

    and b

jr_07d_7287:
    ld d, b
    jr nz, jr_07d_726a

    and $b3
    push hl
    add b

jr_07d_728e:
    ld [c], a
    and $72
    push hl
    nop
    and $83

jr_07d_7295:
    db $d3
    add b
    jr nc, jr_07d_7219

    jr nc, jr_07d_721b

    jr nc, @-$3e

    jr nc, jr_07d_721f

    jr nc, jr_07d_7221

    ret nz

    rst $10
    jr nc, jr_07d_727d

    ret nz

    add b
    jr nc, @-$5e

    ld d, b
    and b
    ret nz

    rst $10
    jr nz, jr_07d_7287

    ld d, b
    and b
    ret nz

    ld d, b
    rst $10
    jr nz, jr_07d_728e

    ld d, b
    and b
    ret nz

    ld d, b
    rst $10
    jr nz, jr_07d_7295

    ld d, b
    sbc $ff
    db $d3
    ld a, c
    ld sp, $7151
    ret c

    and h
    nop
    rst $10
    inc [hl]
    nop
    ret c

    and e
    rst $10
    add hl, sp
    ld sp, $d821

jr_07d_72d2:
    pop bc
    rst $10
    daa
    ret c

    ld d, a

jr_07d_72d7:
    push bc
    rst $10
    dec [hl]
    ret c

jr_07d_72db:
    and e
    rst $10
    add [hl]
    nop
    add d
    and d
    pop bc
    xor l
    and b
    and b
    db $e3
    jp nc, Jump_000_3171

    ld [hl], c
    ld sp, $3181
    add c
    ld sp, $51a1
    and c
    ld d, c
    push hl
    nop
    and $83
    rst $10
    ld d, b
    jr nz, jr_07d_734b

    and b
    rst $10
    jr nz, jr_07d_72d7

    and b
    ld d, b
    jr nz, jr_07d_72db

    and $b3
    push hl
    add b
    db $e3
    ret nc

    ld b, $e7
    ld bc, $20e6
    jp hl


    nop
    call c, $e811
    ld b, $d2
    rst $18
    ld [bc], a
    ld sp, $3131
    ld sp, $2121
    ld hl, $d821
    pop bc
    pop bc
    pop bc
    pop bc
    and c
    and c
    and c
    and c
    rst $18
    ld [bc], a
    add c
    rst $10
    add c
    ret c

    add c
    rst $10
    add c
    ret c

    ldh [$df], a
    ld [bc], a
    and c
    rst $10
    and c
    ret c

    and c
    rst $10
    and c
    ret c

    ldh [$c1], a
    rst $10
    pop bc
    ret c

    pop bc
    rst $10
    pop bc
    ret c

    and c
    rst $10
    and c
    ret c

    and c

jr_07d_734b:
    rst $10
    and c
    ret c

    rst $18
    ld [bc], a
    add c
    rst $10
    add c
    ret c

    add c
    rst $10
    add c
    ret c

    ldh [$df], a
    ld [bc], a
    and c
    rst $10
    and c
    ret c

    and c
    rst $10
    and c
    ret c

    ldh [$a1], a
    rst $10
    and c
    ret c

    add c
    rst $10
    add c
    ret c

    ld [hl], c
    rst $10
    ld [hl], c
    ret c

    ld d, c
    rst $10
    ld d, c
    ldh [$d1], a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    add c
    add c
    add c
    add c
    and c
    and c
    and c
    and c
    and c
    rst $10
    and c
    ret c

    and c
    rst $10
    and c
    ret c

    ld [hl], c
    rst $10
    ld [hl], c
    ret c

    ld [hl], c
    rst $10
    ld [hl], c
    ret c

    add c
    rst $10
    add c
    ret c

    add c
    rst $10
    add c
    ret c

    and c
    rst $10
    and c
    ret c

    add c
    rst $10
    add c
    ret c

    ld [hl], c
    rst $10
    ld [hl], c
    ret c

    ld d, c
    rst $10
    ld d, c
    ret c

    ld sp, $3131
    ld sp, $d781
    add c
    ret c

    add c
    rst $10
    add c
    ret c

    and c
    and c
    rst $10
    and c
    ret c

    and c
    and c
    rst $10
    and c
    ret c

    and c
    and c
    add c
    add c
    rst $10
    add c
    ret c

    add c
    add c
    rst $10
    add c
    ret c

    add c
    rst $10
    add c
    ret c

    and c
    rst $10
    and c
    ret c

    add c
    rst $10
    add c
    ret c

    ld [hl], c

jr_07d_73d8:
    rst $10
    ld [hl], c
    ret c

    ld d, c
    rst $10
    ld d, c
    sbc $ff
    ret nc

    ld b, $d1
    ld [c], a
    ld b, a
    ld [hl], h
    ld [c], a
    ld b, a
    ld [hl], h
    ld [c], a
    ld b, a
    ld [hl], h
    ld [c], a
    ld d, c
    ld [hl], h
    ld [c], a
    ld b, a
    ld [hl], h
    ld [c], a
    ld b, a
    ld [hl], h
    ld [c], a
    ld d, c
    ld [hl], h
    ld de, $3151
    ld d, c
    ld de, $1050
    jr nc, jr_07d_73d8

    ld d, b
    ret c

    or b
    and b
    ld [c], a
    ld b, a
    ld [hl], h
    ld [c], a
    ld b, a
    ld [hl], h
    ld [c], a
    ld b, a
    ld [hl], h
    ld [c], a
    ld d, c
    ld [hl], h
    ld [c], a
    ld b, a
    ld [hl], h
    ld [c], a
    ld b, a
    ld [hl], h
    ld [c], a
    ld d, c
    ld [hl], h
    ld de, $3151
    ld d, c
    ld de, $1050
    ld sp, $3040
    rst $10
    sub d
    ret c

    db $10
    ld sp, $1111
    ld d, b
    db $10
    ld sp, $2050
    ld [c], a
    ld e, h
    ld [hl], h
    ld [c], a
    ld h, a
    ld [hl], h
    ld [c], a
    ld e, h
    ld [hl], h
    ld [c], a
    ld [hl], e
    ld [hl], h
    ld [c], a
    ld e, h
    ld [hl], h
    ld [c], a
    ld e, h
    ld [hl], h
    ld [c], a
    ld [hl], e
    ld [hl], h
    sbc $ff
    ld de, $3151
    ld d, c
    ld de, $1050
    ld sp, $e351
    ld de, $3151
    ld d, c
    ld de, $1050
    ld sp, $2050
    db $e3
    ld de, $1050
    ld sp, $1151
    ld d, b
    db $10
    ld sp, $e351
    ld de, $1050
    ld sp, $1151
    ld d, b
    db $10
    ld sp, $2050
    db $e3
    ld de, $1050
    ld sp, $1151
    ld d, b
    db $10
    ld sp, $3030
    db $e3
    ret nc

    ld [$11dc], sp
    push hl
    add b
    xor $22
    pop de
    and $a0
    add sp, $08
    ld [$eb0a], a
    ld bc, $02df
    and a
    add a
    and a
    add a
    and a
    add a
    and a
    add a
    ldh [$e6], a
    ret nz

    ld [$e805], a
    ld b, $df
    ld [bc], a
    ld [c], a
    and $74
    db $d3
    add c
    add b
    jr nc, @-$7b

    ld d, c
    ld d, b
    ret c

    and b
    rst $10
    ld d, e
    ld [c], a
    and $74
    call nc, $d810
    ret nz

    and b
    nop
    add b
    nop
    and b
    nop
    ld d, a
    ldh [$e6], a
    and b
    add sp, $08
    ld [$d10a], a
    rst $18
    ld [bc], a
    ld d, a
    add a
    ld d, a
    add a
    ld d, a
    add a
    ld d, a
    add a
    ldh [$de], a
    rst $38
    jp nc, $d7a1

    ld d, c
    add c
    ld [hl], b
    ld d, b
    jr nc, jr_07d_74dd

jr_07d_74dd:
    ld d, b
    nop
    ret c

    and b
    nop
    rst $10
    ld d, b
    nop
    db $e3
    jp nc, $a2a3

    add b
    and c
    rst $10
    ld sp, $a151
    db $e3
    db $d3
    ld d, e
    ld [hl-], a
    ld d, b
    ret c

    and c
    pop bc
    rst $10
    ld sp, $e351
    ret nc

    ld [$11dc], sp
    push hl
    add b
    xor $22
    jp nc, $0aea

    db $eb
    ld bc, $a0e6
    add sp, $08
    rst $18
    ld [bc], a
    ld d, a
    scf
    ld d, a
    scf
    ld d, a
    scf
    ld d, a
    scf
    ldh [$ea], a
    dec b
    add sp, $06
    rst $18
    ld [bc], a
    ld [c], a
    ld d, e
    ld [hl], l
    db $d3
    ld sp, $d830
    and b
    rst $10
    inc sp
    ret c

    pop bc
    ret nz

    ld d, b
    jp $53e2


    ld [hl], l
    db $d3
    add b
    ld [hl], b
    ld d, b
    nop
    jr nc, jr_07d_7536

jr_07d_7536:
    ld d, b
    nop
    ret c

    rst $00
    ldh [$e8], a
    ld [$dfd1], sp
    ld [bc], a
    rst $00
    rst $10
    scf
    ret c

    rst $00
    rst $10

jr_07d_7546:
    scf
    ret c

    rst $00
    rst $10
    scf
    ret c

    rst $00
    rst $10
    scf
    ret c

    ldh [$de], a
    rst $38
    jp nc, Jump_07d_5253

    jr nc, jr_07d_75a9

    and c
    pop bc
    rst $10
    ld d, c
    db $e3
    ret nc

    ld [$11dc], sp
    and $20
    jp nc, Jump_000_1fe7

    add sp, $07
    rst $18
    ld [bc], a
    ld [c], a
    call nc, $d274
    and b
    nop
    and b
    add b
    xor e
    ld [c], a
    call nc, $d374
    and b
    add b
    ld [hl], b
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    inc sp
    ld d, e
    ldh [$e8], a

jr_07d_7583:
    ld [$01e7], sp
    pop de
    rst $18
    ld [bc], a
    and a
    add a
    and a
    add a
    and a
    add a
    and a
    add a
    ldh [$e7], a
    rra
    add sp, $07
    rst $18
    ld [bc], a
    ld [c], a
    ldh a, [$74]
    jp nc, $c0a0

    rst $10
    jr nc, @+$52

    add b
    ld [hl], b
    ld d, b
    jr nc, jr_07d_7546

    add b
    ld [hl], b
    ld d, b

jr_07d_75a9:
    jr nc, jr_07d_7583

    ret nz

    and b
    ret nz

    ld [c], a
    ldh a, [$74]
    jp nc, $c0a0

    rst $10
    jr nc, jr_07d_7607

    ret c

    and b
    ret nz

    rst $10
    jr nc, jr_07d_760d

    ret c

    and b
    nop
    add b
    nop
    and e
    ldh [$de], a
    rst $38
    ret nc

    ld [$e2d1], sp
    inc d
    db $76
    ld de, $a0a0
    ld [c], a
    inc d
    db $76
    db $10
    jr nc, jr_07d_7605

    jr nc, @-$1f

    inc bc
    ld de, $3151
    ld d, c
    ld de, $3151
    and b
    and b
    ld de, $3151
    ld d, c
    ld de, $3151
    and c
    ldh [rNR11], a
    ld d, c
    ld sp, $1151
    ld d, c
    ld sp, $a0a0
    ld de, $3151
    ld d, c
    ld de, $3051
    jr nc, jr_07d_762c

    jr nc, @-$1f

    ld [bc], a
    rst $18
    inc bc
    and c
    ld d, c
    inc de
    and c

jr_07d_7605:
    ld d, c
    inc de

jr_07d_7607:
    ldh [$a1], a
    ld d, c
    inc de
    and c
    ld d, c

jr_07d_760d:
    db $10
    jr nc, jr_07d_7640

    jr nc, @-$1e

    sbc $ff
    and e
    inc de
    and e
    inc de
    and c
    and b
    and b
    inc de
    and e
    inc de
    and e
    inc de
    and e
    inc de
    and c
    and b
    and b
    inc de
    and e
    db $e3
    ret nc

    ld bc, $00e5

jr_07d_762c:
    and $d7
    call c, $ea11
    ld bc, $14eb
    xor $22
    call nc, $06e8
    rst $18
    ld [bc], a
    ld d, $07
    ret c

    add [hl]
    rlca

jr_07d_7640:
    rst $10
    ld d, $07
    ret c

    or [hl]
    rlca
    ld c, $66
    rlca
    ld c, $d7
    ld [hl], $07
    ld c, $16
    rlca
    ret c

    or [hl]
    rlca
    rst $10
    ld d, $07
    ld c, $0e
    ld c, $0e
    ld d, $07
    ret c

    add [hl]
    rlca
    rst $10
    ld d, $07
    ret c

    or [hl]
    rlca
    ld c, $66
    rlca
    ld c, $86
    rlca
    rst $18
    ld [bc], a
    ld c, $0e
    ld c, $0e
    ldh [$d7], a
    ldh [$e2], a
    db $ec
    db $76
    call nc, $160e
    rlca
    ld d, $07
    ld c, $0e
    ld c, $0e
    ld c, $d8
    or [hl]
    rlca
    ld h, [hl]
    rlca
    or [hl]
    rlca
    rst $10
    ld [hl], $07
    ld c, $16
    rlca
    ret c

    or [hl]
    rlca
    rst $10
    ld d, $07
    rst $18
    ld [bc], a
    ld c, $0e
    ld c, $0e
    ldh [$e2], a
    db $ec
    db $76
    call nc, $160e
    rlca
    ld d, $07
    ld c, $0e
    ld c, $0e
    ld c, $e2
    db $ec
    db $76
    call nc, $d816
    add a
    ld d, $b7
    add [hl]
    rla
    and [hl]
    ld h, a
    ld d, $87
    ld h, [hl]
    rla
    add [hl]
    rla
    and [hl]
    rla
    add sp, $05
    ld [c], a
    nop
    ld [hl], a
    ld [c], a
    rra
    ld [hl], a
    ld [c], a
    rra
    ld [hl], a
    ld [c], a
    nop
    ld [hl], a
    ld [c], a
    rra
    ld [hl], a
    db $d3
    ld [hl], $37
    rst $10
    ld [hl], $d8
    scf
    ld [hl], $d7
    scf
    ret c

    and [hl]
    scf
    ld [hl], $37
    rst $10
    ld [hl], $d8
    scf
    rst $10
    ld [hl], $d8
    scf
    and [hl]
    rst $10
    scf
    sbc $ff
    db $d3
    or [hl]
    rlca
    ld h, [hl]
    rlca
    or [hl]
    rlca
    rst $10
    ld [hl], $07
    ld b, $07
    ld d, $07
    ret c

    or [hl]
    rlca
    ld b, $07
    db $e3
    db $d3
    rst $18
    ld [bc], a
    ld d, $17
    rst $10
    ld d, $d8
    add a
    ld d, $d7
    rla
    ret c

    add [hl]
    rla
    ld d, $17
    rst $10
    ld d, $d8
    rla
    rst $10
    ld d, $d8
    rla
    add [hl]
    rst $10
    rla
    ret c

    ldh [$e3], a
    db $d3
    ld b, [hl]
    ld b, a
    rst $10
    ld b, [hl]
    ret c

    ld b, a
    ld b, [hl]
    rst $10
    ld b, a
    ret c

    or [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    rst $10
    ld b, [hl]
    ret c

    ld b, a
    rst $10
    ld b, [hl]
    ret c

    ld b, a
    or [hl]
    rst $10
    ld b, a
    ret c

    db $e3
    ret nc

    ld bc, $80e5
    and $60
    call c, $ee11
    ld de, $ead4
    rlca
    db $eb
    ld e, $e8
    inc b
    rst $18
    db $10
    ld [c], a
    sbc e
    ld [hl], a
    ldh [$df], a
    inc b
    ld [c], a
    xor c
    ld [hl], a
    ld [c], a
    xor c
    ld [hl], a
    ld [c], a
    sbc e
    ld [hl], a
    ld [c], a
    sbc e
    ld [hl], a
    ldh [$e8], a
    ld b, $ea
    nop
    ld [c], a
    or a
    ld [hl], a
    ld [c], a
    ldh [rPCM34], a
    ld [c], a
    ldh [rPCM34], a
    ld [c], a
    or a
    ld [hl], a
    ld [c], a
    ldh [rPCM34], a
    db $d3
    inc [hl]
    inc [hl]
    rst $10
    inc [hl]
    ret c

    inc [hl]
    inc [hl]
    inc [hl]
    rst $10
    inc [hl]
    ret c

    inc [hl]
    inc [hl]
    inc [hl]
    rst $10
    inc [hl]
    ret c

    inc [hl]
    inc [hl]
    inc [hl]
    rst $10
    inc [hl]
    ret c

    inc [hl]
    inc [hl]
    inc [hl]
    rst $10
    inc [hl]
    ret c

    inc [hl]
    inc [hl]
    inc [hl]
    rst $10
    inc [hl]
    ret c

    inc [hl]
    sbc $ff
    db $d3
    ld d, $17
    rst $10
    ld d, $d8

Call_07d_77a1:
    rla
    ld d, $17
    rst $10
    ld d, $d8
    rla
    db $e3
    db $d3
    ld [hl], $37
    rst $10
    ld [hl], $d8
    scf
    ld [hl], $37
    rst $10
    ld [hl], $d8
    scf
    db $e3
    db $d3
    rst $18
    ld [bc], a
    inc d
    inc d
    rst $10
    inc d
    ret c

    inc d
    inc d
    inc d
    rst $10
    inc d
    ret c

    inc d
    inc d
    inc d
    rst $10
    inc d
    ret c

    inc d
    inc d
    inc d
    rst $10
    inc d
    ret c

    inc d
    inc d
    inc d
    rst $10
    inc d
    ret c

    inc d
    inc d
    inc d
    rst $10
    inc d
    ret c

    inc d
    ldh [$e3], a
    db $d3
    ld b, h
    ld b, h
    rst $10
    ld b, h
    ret c

    ld b, h
    ld b, h
    ld b, h
    rst $10
    ld b, h
    ret c

    ld b, h
    ld b, h
    ld b, h
    rst $10
    ld b, h
    ret c

    ld b, h
    ld b, h
    ld b, h
    rst $10
    ld b, h
    ret c

    ld b, h
    ld b, h
    ld b, h
    rst $10
    ld b, h
    ret c

    ld b, h
    ld b, h
    ld b, h
    rst $10
    ld b, h
    ret c

    ld b, h
    db $e3
    ret nc

    rrca
    rst $20
    ld bc, $20e6
    jp hl


    nop
    call c, $e811
    ld [$dfd1], sp
    ld [$0010], sp
    stop
    stop
    stop
    ldh [$df], a
    inc b
    or b
    nop
    or b
    nop
    or b
    nop
    or b
    nop
    stop
    stop
    stop
    stop
    ldh [$df], a
    ld [bc], a
    stop
    stop
    stop
    stop
    ldh [$df], a
    ld [bc], a
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ldh [$df], a
    ld [bc], a
    stop
    stop
    stop
    stop
    ldh [rLCDC], a
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nc, jr_07d_785c

jr_07d_785c:
    jr nc, jr_07d_785e

jr_07d_785e:
    jr nc, jr_07d_7860

jr_07d_7860:
    jr nc, jr_07d_7862

jr_07d_7862:
    sbc $ff
    ret nc

    ld bc, $1ed1
    ld h, [hl]
    ld d, a
    ld e, $86
    ld d, a
    ld e, $66
    ld d, a
    ld e, $86
    ld d, a
    sbc $ff
    ret nc

    ld bc, $40e5
    and $b7
    call c, $ea11
    ld bc, $1eeb
    xor $33
    call nc, Call_000_0258
    ld d, [hl]
    dec bc
    ld d, [hl]
    dec bc
    ld d, $55
    inc c
    add l
    inc c
    dec b
    inc c
    ret c

    add l
    inc c
    dec b
    inc c
    db $dd
    call nc, $02df
    dec d
    inc c
    dec bc
    ret c

    add [hl]
    dec b
    inc c
    ld d, l
    inc c
    dec bc
    and [hl]
    dec bc
    add $0b
    or [hl]
    and l
    inc c
    add a
    inc bc
    rst $10
    ld d, a
    inc b
    add a
    inc b
    and l
    inc c
    ld l, e
    add [hl]
    dec bc
    ld d, [hl]
    dec bc
    ld d, $3b
    ret c

    add $05
    inc c
    rst $10
    ldh [$df], a
    ld [bc], a
    ld [c], a
    ld c, l
    ld a, c
    call nc, Call_000_0c05
    adc e
    db $76
    ld l, e
    ld b, [hl]
    dec bc
    ld d, [hl]
    dec bc
    rst $10
    ld d, $0b
    ld d, $15
    inc c
    dec b
    inc c
    ld [c], a
    ld c, l
    ld a, c
    call nc, $060b
    ld b, l
    inc c
    dec bc
    ld [hl], $0b
    ld b, $15
    inc c
    dec b
    inc c
    dec b
    inc c
    dec b
    inc c
    ldh [$e2], a
    ld h, e
    ld a, c
    call nc, $d915
    inc de
    ld bc, $0b16
    ld d, $0b
    ld d, $3b
    ld d, [hl]
    dec b
    inc c
    dec b
    inc c
    dec b
    inc c
    dec b
    inc c
    ld [c], a
    ld h, e
    ld a, c
    call nc, Call_000_0258
    ld d, [hl]
    dec bc
    ld d, [hl]
    dec bc
    ld d, $55
    inc c
    add l
    inc c
    dec b
    inc c
    dec b
    inc c
    dec b
    inc c
    rst $18
    ld [bc], a
    ld [c], a
    ld a, c
    ld a, c
    db $d3
    set 2, a
    and [hl]
    dec bc
    and [hl]
    and a
    inc bc
    add a
    inc b
    ld h, a
    inc b
    ld e, e
    ld d, $0b
    ret c

    and [hl]
    add l
    inc c
    dec b
    inc c
    ld [c], a
    ld a, c
    ld a, c
    db $d3
    set 2, a
    ld h, [hl]
    dec bc
    ld h, [hl]
    ld h, a
    inc bc
    ld d, a
    inc b
    scf
    inc b
    dec d
    inc c
    dec b
    inc c
    dec b
    inc c
    dec b
    inc c
    ldh [$de], a
    rst $38
    call nc, Call_000_0c05
    adc e
    db $76
    ld l, e
    ld b, [hl]
    dec bc
    ld d, [hl]
    dec bc
    ret c

    sub [hl]
    xor e
    rst $10
    ld d, $d8
    dec bc
    and [hl]
    rst $10
    dec de
    ld [hl], $e3
    call nc, $d915
    inc de
    ld bc, $0b16
    ld d, $0b
    ld d, $35
    inc c
    ld e, e
    ld d, $0b
    ret c

    and [hl]
    add l
    inc c
    dec b
    inc c
    db $e3
    call nc, $165b
    dec bc
    ret c

    add [hl]
    dec b
    inc c
    sub l
    inc c
    xor e
    rst $10
    ld h, [hl]
    dec bc
    ld h, [hl]
    ret c

    and l
    inc c
    dec b
    inc c
    db $e3
    ret nc

    ld bc, $40e5
    ld [$eb01], a
    ld e, $e6
    sub a
    call c, $ee11
    inc sp
    db $d3
    ld a, b
    ld [bc], a
    db $76
    dec bc
    db $76
    dec bc
    and [hl]
    rst $10
    dec d
    inc c
    ret c

    push bc
    inc c
    dec b
    inc c
    ret c

    add l
    inc c
    dec b
    inc c
    db $dd
    db $d3
    rst $18
    ld [bc], a
    ld d, l
    inc c
    dec bc
    ld d, [hl]
    dec b
    inc c
    dec d
    inc c
    dec bc
    ld h, [hl]
    dec bc
    add [hl]
    dec bc
    db $76
    ld h, l
    inc c
    ld d, a
    inc bc
    rst $10
    rla
    inc b
    ld d, a
    inc b
    ld h, l
    inc c
    dec sp
    ld d, [hl]
    dec bc
    ld d, $0b
    ret c

    and [hl]
    res 0, [hl]
    dec b
    inc c
    ldh [$df], a
    ld [bc], a
    ld [c], a
    ld l, h
    ld a, d
    call nc, Call_000_0c05
    ld e, e
    ld b, [hl]
    dec sp
    ret c

    add $0b
    rst $10
    ld d, $0b
    ld h, [hl]
    dec bc
    ld h, [hl]
    ld h, l
    inc c
    dec b
    inc c
    ld [c], a
    ld l, h
    ld a, d
    call nc, $060b
    dec d
    inc c
    dec bc
    ret c

    or [hl]
    dec bc
    ld b, $85
    inc c
    dec b
    inc c
    dec b
    inc c
    dec b
    inc c
    ldh [$e2], a
    add c
    ld a, d
    db $d3
    sub l
    reti


    sub e
    ld bc, $0b96
    sub [hl]
    dec bc
    sub [hl]
    cp e
    rst $10
    ld d, $05
    inc c
    dec b
    inc c
    dec b
    inc c
    dec b
    inc c
    ld [c], a
    add c
    ld a, d
    db $d3
    ld a, b
    ld [bc], a
    db $76
    dec bc
    db $76
    dec bc
    and [hl]
    rst $10
    dec d
    inc c
    ret c

    push bc
    inc c
    dec b
    inc c
    add l
    inc c
    dec b
    inc c
    rst $18
    ld [bc], a
    ld [c], a
    sbc b
    ld a, d
    db $d3
    adc e
    rst $10
    ld h, [hl]
    dec bc
    ld h, [hl]
    ld h, a
    inc bc
    ld d, a
    inc b
    scf
    inc b
    dec de
    ret c

    add [hl]
    dec bc
    ld h, [hl]
    ld d, l
    inc c
    dec b
    inc c
    ld [c], a
    sbc b
    ld a, d
    db $d3
    adc e
    rst $10
    ld [hl], $0b
    ld [hl], $37
    inc bc
    rla
    inc b
    ret c

    rst $00
    inc b
    add l
    inc c
    dec b
    inc c
    dec b
    inc c
    dec b
    inc c
    ldh [$de], a
    rst $38
    call nc, Call_000_0c05
    ld e, e
    ld b, [hl]
    dec sp
    ret c

    add $0b
    rst $10
    ld d, $0b
    ret c

    ld d, [hl]
    ld l, e
    and [hl]
    dec bc
    ld h, [hl]
    xor e
    add $e3
    db $d3
    sub l
    reti


    sub e
    ld bc, $0b96
    sub [hl]
    dec bc
    sub [hl]
    or l
    inc c
    rst $10
    dec de
    ret c

    add [hl]
    dec bc
    ld h, [hl]
    ld d, l
    inc c
    dec b
    inc c
    db $e3
    call nc, $d81b
    add [hl]
    dec bc
    ld d, [hl]
    dec b
    inc c
    ld h, l
    inc c
    ld l, e
    and [hl]
    dec bc
    and [hl]
    ld h, l
    inc c
    dec b
    inc c
    db $e3
    ret nc

    ld bc, $20e7
    and $20
    jp hl


    nop
    call c, $d211
    jr c, jr_07d_7aba

    ld [hl], $0b

jr_07d_7aba:
    ld [hl], $0b
    ld [hl], $35
    inc c
    add l
    inc c
    dec b
    inc c
    ret c

    add l
    inc c
    dec b
    inc c
    db $dd
    jp nc, $02df

    dec d
    inc c
    dec bc
    ret c

    add [hl]
    dec b
    inc c
    ld d, l
    inc c
    dec bc
    ld h, [hl]
    dec bc
    add [hl]
    dec bc
    db $76
    ld h, l
    inc c
    ld e, e
    rst $10
    ld d, $d9
    dec d
    ld e, h
    ld h, l
    inc c
    dec de
    ld d, [hl]
    dec bc
    ld d, $0b
    ret c

    and [hl]
    res 0, [hl]
    dec b
    inc c
    rst $10
    ldh [$df], a
    ld [bc], a
    ld [c], a
    ld a, l
    ld a, e
    pop de
    dec d
    inc c
    dec bc
    ld d, [hl]
    dec b
    inc c
    add l
    reti


    add l
    rst $10
    ld d, $d4
    dec bc
    add [hl]
    dec bc
    add [hl]
    add l
    inc c
    pop de
    add l
    inc c
    ld [c], a
    ld a, l
    ld a, e
    pop de
    dec d
    inc c
    sub l
    inc c
    dec bc
    or [hl]
    dec b
    inc c
    rst $10
    dec d
    inc c
    dec bc
    ret c

    add [hl]
    add l
    inc c
    dec d
    inc c
    ldh [$df], a
    inc bc
    sub l
    inc c
    dec bc
    rst $10
    ld b, [hl]
    dec b
    inc c
    sub l
    inc c
    add l
    inc c
    dec bc
    ld d, $05
    inc c
    ret c

    add l
    inc c
    ldh [$d7], a
    jr c, jr_07d_7b3e

    ld [hl], $0b

jr_07d_7b3e:
    ld [hl], $0b
    ld [hl], $35
    inc c
    add l
    inc c
    dec b
    inc c
    ret c

    add l
    inc c
    dec b
    inc c
    rst $18
    ld [bc], a
    ld [c], a
    sub e
    ld a, e
    pop de
    add l
    inc c
    dec b
    dec b
    add $05
    inc c
    rst $10
    dec [hl]
    ret c

    inc c
    dec d
    inc c
    dec bc
    ld d, [hl]
    dec b
    inc c
    add l
    inc c
    ld [c], a
    sub e
    ld a, e
    pop de
    adc e
    ld b, $05
    inc c
    adc e
    xor h
    call z, $1bd7
    ret c

    add [hl]
    dec bc
    add [hl]
    dec d
    inc c
    dec b
    inc c
    ldh [$de], a
    rst $38
    pop de
    dec d
    inc c
    dec bc
    add [hl]
    dec b
    inc c
    rst $10
    dec d
    ret c

    inc c
    ld h, l
    inc c
    dec bc
    rst $10
    ld d, $d8
    dec b
    inc c
    ld h, l
    inc c
    db $e3
    pop de
    dec d
    inc c
    dec bc
    add [hl]
    dec b
    inc c
    rst $10
    dec d
    ret c

    inc c
    ld h, l
    inc c
    dec bc
    and [hl]
    dec b
    inc c
    rst $10
    dec d
    ret c

    inc c
    db $e3
    ret nc

    ld bc, $55d1
    inc c
    ld d, l
    dec b
    ld d, [hl]
    ld d, l
    inc c
    ld d, l
    dec b
    ld d, [hl]
    dec [hl]
    dec b
    rst $10
    and [hl]
    ret c

    dec bc
    rst $10
    and [hl]
    ret c

    ret nc

    ld h, $c0
    ret nc

    ld bc, $dfdd
    ld d, $5b
    ld b, $6b
    ld d, [hl]
    ld e, e
    ld b, $8b
    ld d, [hl]
    ldh [$d7], a
    xor e
    ret c

    ld b, $3b
    ld b, $d7
    xor e
    ret c

    rst $10
    and [hl]
    ret c

    dec sp
    ld b, $d7
    xor e
    ret c

    rst $10
    and [hl]
    ret c

    dec sp
    ld b, $d7
    ld d, l
    ld d, l
    ld d, [hl]
    ret c

    or l
    or l
    and [hl]
    ret nc

    inc de
    rst $10
    sub b
    ret c

    ret nc

    ld bc, $566b
    ld e, e
    ld b, $8b
    ld d, [hl]
    rst $18
    ld b, $5b
    ld b, $6b
    ld d, [hl]
    ld e, e
    ld b, $8b
    ld d, [hl]
    ldh [$3b], a
    rst $10
    and [hl]
    ret c

    dec bc
    rst $10
    and [hl]
    ret c

    ret nc

    ld h, $c0
    ret nc

    inc de
    rst $10
    sub b
    ret c

    ret nc

    ld bc, $566b
    dec sp
    ld b, $8b
    ld d, [hl]
    rst $18
    inc b
    rst $10
    xor e
    ret c

    ld b, $6b
    ld d, [hl]
    dec sp
    ld b, $8b
    ld d, [hl]
    ldh [$d7], a
    xor e
    ret c

    ld b, $6b
    ld d, [hl]
    dec sp
    ld b, $3b
    ld d, [hl]
    rst $10
    xor e
    ret c

    ld [hl], $0b
    ld [hl], $d7
    ld e, e
    ret c

    cp h
    xor h
    ret nc

    ld h, $c0
    ret nc

    ld bc, $063b
    dec sp
    ld b, $df
    dec b
    rst $10
    xor e
    ret c

    ld b, $6b
    ld d, [hl]
    dec sp
    ld b, $8b
    ld d, [hl]
    ldh [$d7], a
    xor e
    ret c

    ld b, $6b
    ld d, [hl]
    dec sp
    ld b, $3b
    ld d, [hl]
    rst $10
    xor e
    ret c

    ld [hl], $0b
    ld [hl], $d7
    ld e, e
    ret c

    cp h
    xor h
    ret nc

    ld h, $c0
    ret nc

    ld bc, $abd7
    ret c

    ld b, $35
    dec h
    ld h, $de
    rst $38

    db $d0, $04, $e5, $40, $e6, $b0, $dc, $11, $ea, $01, $eb, $1c, $e8, $07, $d3, $e2
    db $e6, $7c, $d4, $52, $02, $d8, $c3, $01, $a3, $91, $03, $a1, $d9, $af, $d9, $a3
    db $03, $e2, $e6, $7c, $d4, $52, $02, $53, $01, $53, $71, $03, $51, $d9, $5f, $d9
    db $53, $03, $e2, $03, $7d, $d3, $a9, $d7, $27, $d8, $55, $e2, $03, $7d, $d3, $a2
    db $02, $52, $02, $d7, $27, $03, $e2, $03, $7d, $d3, $a9, $d7, $27, $55, $72, $02
    db $53, $01, $33, $23, $01, $d8, $c1, $d9, $cb, $d9, $cb, $de

    rst $38

    db $d3, $a2, $02, $53, $01, $73, $91, $03, $a1, $03, $d7, $33, $01, $31, $23, $e3
    db $d3, $e2, $d6, $7c, $d3, $01, $c3, $01, $a2, $02, $53, $01, $73, $81, $03, $91
    db $d9, $9f, $d9, $93, $03, $e2, $d6, $7c, $d4, $01, $33, $01, $e3, $d4, $32, $02
    db $d8, $73, $91, $a5, $c5, $e3, $d0, $04, $e5, $40, $dc, $11, $ea, $01, $eb, $1c
    db $e8, $07, $d3, $e6, $70, $e2, $7a, $7d, $d2, $92, $02, $93, $01, $53, $c1, $03
    db $d7, $2c, $d9, $28, $03, $e2, $7a, $7d, $d2, $92, $02, $93, $01, $93, $a1, $03
    db $9c, $d9, $98, $03, $03, $e6, $70, $e2, $03, $7d, $d3, $a9, $d7, $27, $d8, $55
    db $e2, $03, $7d, $d3, $a2, $02, $52, $02, $d7, $27, $03, $e2, $03, $7d, $d3, $a9
    db $d7, $27, $55, $72, $02, $53, $01, $33, $23, $01, $d8, $c1, $d9, $c9, $d9, $c9
    db $de

    rst $38

    db $d3, $22, $02, $23, $01, $d8, $a3, $d7, $31, $03, $d8, $51, $03, $73, $01, $71
    db $53, $e3, $d3, $e2, $68, $7d, $d2, $01, $53, $01, $22, $02, $23, $01, $d8, $a3
    db $b1, $03, $c1, $d9, $cf, $d9, $c3, $03, $e2, $68, $7d, $d2, $01, $53, $01, $e3
    db $d0, $08, $e7, $01, $e6, $20, $e9, $00, $dc, $11, $e8, $07, $d1, $e2, $f0, $7d
    db $d1, $a1, $a0, $92, $72, $a2, $e2, $f0, $7d, $d1, $50, $d7, $50, $d8, $50, $d7
    db $31, $30, $22, $d8, $c2, $d7, $35, $35, $a2, $92, $72, $52, $df, $02, $32, $32
    db $52, $d8, $52, $a1, $a0, $92, $72, $52, $d7, $e0, $32, $22, $d8, $c1, $a2, $50
    db $d9, $51, $50, $d7, $52, $d8, $52, $d7, $52, $de

    rst $38

    db $d1, $a2, $d7, $a2, $92, $72, $51, $50, $32, $22, $d8, $c2, $e3, $d1, $e2, $e3
    db $7d, $d1, $a2, $a2, $d7, $32, $31, $30, $51, $50, $32, $22, $d8, $c2, $e2, $e3
    db $7d, $d1, $52, $d7, $52, $d8, $52, $d7, $51, $50, $e3, $d0, $08, $d2, $df, $02
    db $e2, $85, $7e, $e2, $85, $7e, $e2, $85, $7e, $d2, $80, $d8, $21, $d7, $81, $80
    db $80, $50, $d8, $b0, $10, $a0, $a0, $d2, $80, $d8, $21, $d7, $81, $80, $81, $80
    db $d8, $11, $d7, $80, $d2, $82, $81, $80, $80, $80, $d8, $30, $d7, $81, $80, $d1
    db $10, $d7, $81, $81, $80, $80, $d8, $20, $d7, $80, $81, $80, $d2, $80, $d8, $20
    db $30, $d7, $80, $d8, $10, $d7, $80, $80, $50, $d8, $b0, $10, $a0, $a0, $e0, $e2
    db $8d, $7e, $e2, $9a, $7e, $e2, $8d, $7e, $d1, $10, $50, $50, $31, $50, $10, $50
    db $10, $30, $50, $30, $e2, $8d, $7e, $e2, $9a, $7e, $e2, $8d, $7e, $e2, $9a, $7e
    db $de

    rst $38

    db $d2, $82, $81, $80, $82, $81, $80, $e3, $d1, $c0, $50, $50, $31, $50, $10, $50
    db $10, $30, $50, $50, $e3, $d1, $10, $50, $50, $31, $50, $10, $50, $10, $30, $30
    db $30, $e3

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
