INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07c", ROMX[$4000], BANK[$7c]

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
    jr nc, jr_07c_4020

    ld [$c4c0], a

jr_07c_4020:
    pop hl
    ret


    push bc
    push hl
    ld b, $00
    ld c, a
    or a
    jr z, jr_07c_4038

    ld hl, $5235
    add hl, bc
    ld b, [hl]
    ld a, [$c4c3]
    or a
    jr z, jr_07c_4038

    cp b
    jr c, jr_07c_4040

jr_07c_4038:
    ld a, b
    ld [$c4c3], a
    ld a, c
    ld [$c4c2], a

jr_07c_4040:
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

jr_07c_40bd:
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
    jr nz, jr_07c_40bd

    ld hl, $4c3b
    ld bc, $c536
    ld d, $08

jr_07c_40e4:
    ld a, [hl+]
    ld [bc], a

Call_07c_40e6:
    inc bc
    dec d
    jr nz, jr_07c_40e4

    ret


    call Call_07c_42b8
    call Call_07c_4119

    rst $18

    db $02, $7f

    ld a, [$c4c1]
    ldh [$bf], a
    ld [$2000], a

    ld a, [$c535]
    or a
    jr z, jr_07c_4107

    call Call_07c_499b
    jr jr_07c_4113

jr_07c_4107:
    call Call_07c_42b9
    call Call_07c_4308
    call Call_07c_4359
    call Call_07c_43ae

jr_07c_4113:
    call Call_07c_48a0
    jp Jump_07c_49cc


Call_07c_4119:
    ld a, [$c4c0]
    rla
    jr c, jr_07c_4130

    call Call_07c_4145
    ld a, [$c4c0]
    call Call_07c_4186

    ld a, [$c4c0]
    or $80
    ld [$c4c0], a

jr_07c_4130:
    ld a, [$c4c2]
    rla
    jr c, jr_07c_4144

    ld a, [$c4c2]
    rst $18

    db $00, $7f

    ld a, [$c4c2]
    or $80
    ld [$c4c2], a

jr_07c_4144:
    ret


Call_07c_4145:
    ld a, [$c4cc]
    ld d, a
    xor a
    ld [$c4cd], a
    bit 0, d
    jr nz, jr_07c_4159

    ld a, $08
    ldh [rNR12], a
    swap a
    ldh [rNR14], a

jr_07c_4159:
    xor a
    ld [$c4ce], a
    bit 1, d
    jr nz, jr_07c_4169

    ld a, $08
    ldh [rNR22], a
    swap a
    ldh [rNR24], a

jr_07c_4169:
    xor a
    ld [$c4d0], a
    bit 3, d
    jr nz, jr_07c_4179

    ld a, $08
    ldh [rNR42], a
    swap a
    ldh [rNR44], a

jr_07c_4179:
    xor a
    ld [$c4cf], a
    bit 2, d
    jr nz, jr_07c_4185

    ld a, $00
    ldh [rNR32], a

jr_07c_4185:
    ret


Call_07c_4186:
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
    jr nc, jr_07c_41f2

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

jr_07c_41f2:
    rr e
    jr nc, jr_07c_423c

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

jr_07c_423c:
    rr e
    jr nc, jr_07c_4279

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

jr_07c_4279:
    rr e
    jr nc, jr_07c_42b3

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

jr_07c_42b3:
    xor a
    ld [$c535], a
    ret


Call_07c_42b8:
    ret


Call_07c_42b9:
    ld a, [$c4cd]
    or a
    jr z, jr_07c_42f8

    ld a, [$c4f7]
    or a
    jr z, jr_07c_42d9

    ld hl, $c503
    dec [hl]
    jr nz, jr_07c_42d9

    ld a, [$c4fb]
    cp $01
    jr z, jr_07c_42d9

    ld a, [$c4cc]
    rrca
    call nc, Call_07c_4737

jr_07c_42d9:
    ld hl, $c4fb
    dec [hl]
    jr nz, jr_07c_42f4

    ld hl, $c4d5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0000
    call Call_07c_43ef
    ld a, [$c4cd]
    or a
    jr z, jr_07c_42f8

    call Call_07c_46f8

jr_07c_42f4:
    xor a
    jp Jump_07c_492e


jr_07c_42f8:
    ld a, [$c4cc]
    bit 0, a
    jr nz, jr_07c_4307

    ld a, $08
    ldh [rNR12], a
    swap a
    ldh [rNR14], a

jr_07c_4307:
    ret


Call_07c_4308:
    ld a, [$c4ce]
    or a
    jr z, jr_07c_4349

    ld a, [$c4f8]
    or a
    jr z, jr_07c_4329

    ld hl, $c504
    dec [hl]
    jr nz, jr_07c_4329

    ld a, [$c4fc]
    cp $01
    jr z, jr_07c_4329

    ld a, [$c4cc]
    bit 1, a
    call z, Call_07c_47ab

jr_07c_4329:
    ld hl, $c4fc
    dec [hl]
    jr nz, jr_07c_4344

    ld hl, $c4d7
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0001
    call Call_07c_43ef
    ld a, [$c4ce]
    or a
    jr z, jr_07c_4349

    call Call_07c_476f

jr_07c_4344:
    ld a, $01
    jp Jump_07c_492e


jr_07c_4349:
    ld a, [$c4cc]
    bit 1, a
    jr nz, jr_07c_4358

    ld a, $08
    ldh [rNR22], a
    swap a
    ldh [rNR24], a

jr_07c_4358:
    ret


Call_07c_4359:
    ld a, [$c4cf]
    or a
    jr z, jr_07c_439e

    ld a, [$c4f9]
    or a
    jr z, jr_07c_437e

    ld hl, $c505
    dec [hl]
    jr nz, jr_07c_437e

    ld a, [$c4cc]
    bit 2, a
    jr nz, jr_07c_437e

    ld a, [$c4fd]
    cp $01
    jr z, jr_07c_437e

    ld a, [$c509]
    ldh [rNR32], a

jr_07c_437e:
    ld hl, $c4fd
    dec [hl]
    jr nz, jr_07c_4399

    ld hl, $c4d9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0002
    call Call_07c_43ef
    ld a, [$c4cf]
    or a
    jr z, jr_07c_439e

    call Call_07c_47e3

jr_07c_4399:
    ld a, $02
    jp Jump_07c_492e


jr_07c_439e:
    ld a, [$c4cc]
    bit 2, a
    jr nz, jr_07c_43ad

    ld a, $00
    ldh [rNR32], a
    ld a, $80
    ldh [rNR34], a

jr_07c_43ad:
    ret


Call_07c_43ae:
    ld a, [$c4d0]
    or a
    jr z, jr_07c_43db

    ld hl, $c4fe
    dec [hl]
    jr nz, jr_07c_43d1

    ld hl, $c4db
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0003
    call Call_07c_43ef
    ld a, [$c4d0]
    or a
    jr z, jr_07c_43db

    call Call_07c_4851
    jr jr_07c_43ee

jr_07c_43d1:
    ld a, [$c532]
    or a
    jr z, jr_07c_43ee

    call Call_07c_487f
    ret


jr_07c_43db:
    ld a, [$c4cc]
    bit 3, a
    jr nz, jr_07c_43ee

    xor a
    ld [$c532], a
    ld a, $08
    ldh [rNR42], a
    swap a
    ldh [rNR44], a

jr_07c_43ee:
    ret


Call_07c_43ef:
Jump_07c_43ef:
    ld a, [hl+]
    push hl
    push af
    cp $d0
    jr c, jr_07c_4467

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


    db $6f, $45, $7a, $45, $7a, $45, $7a, $45, $7a, $45, $7a, $45

    ld a, d
    ld b, l

    db $92, $45, $9a, $45, $a2, $45

    ret c

    ld b, [hl]
    ret c

    ld b, [hl]

    db $ab, $45

    add $45
    db $d4
    ld b, l

    db $e0, $45, $f5, $45

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

    db $d8, $46

jr_07c_4467:
    push af
    ld a, [hl]
    ld e, a
    ld hl, $c4d1
    add hl, bc
    ld a, [hl]
    cp $80
    jr z, jr_07c_448b

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

jr_07c_448b:
    pop af
    push de
    ld hl, $c50f
    add hl, bc
    ld d, [hl]
    and $0f
    inc a
    cp d
    jr nc, jr_07c_449b

    ld e, a
    ld a, d
    ld d, e

jr_07c_449b:
    ld e, a

jr_07c_449c:
    dec d
    jr z, jr_07c_44a2

    add e
    jr jr_07c_449c

jr_07c_44a2:
    ld hl, $c4fb
    add hl, bc
    ld [hl], a
    pop de
    ld d, a
    ld a, e
    cp $d9
    ld a, d
    jr z, jr_07c_44d6

    ld e, a
    ld hl, $c4ff
    add hl, bc
    ld a, [hl]
    cp $08
    ld d, a
    ld a, e
    jr z, jr_07c_44d6

    push hl
    push bc
    ld b, $00
    ld c, a
    ld hl, $0000

jr_07c_44c3:
    add hl, bc
    dec d
    jr nz, jr_07c_44c3

    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld a, l
    pop bc
    pop hl

jr_07c_44d6:
    ld hl, $c503
    add hl, bc
    ld [hl], a
    pop af
    and $f0
    ld hl, $c4f7
    add hl, bc
    ld [hl], a
    or a
    jr nz, jr_07c_44e9

    jp Jump_07c_4565


jr_07c_44e9:
    swap a
    dec a
    ld h, a
    ld a, $03
    cp c
    ld a, h
    jr z, jr_07c_44f5

    jr jr_07c_453b

jr_07c_44f5:
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
    jr jr_07c_4565

jr_07c_453b:
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
    call Call_07c_4982
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d

Jump_07c_4565:
jr_07c_4565:
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
    jp Jump_07c_46f4


    and $07
    dec a
    ld hl, $c4ef
    add hl, bc
    push af
    ld a, c
    cp $02
    jr nz, jr_07c_458d

    pop af
    inc a
    ld [hl], a
    jp Jump_07c_46f4


jr_07c_458d:
    pop af
    ld [hl], a
    jp Jump_07c_46f4


    ld hl, $c4ef
    add hl, bc
    inc [hl]
    jp Jump_07c_46f4


    ld hl, $c4ef
    add hl, bc
    dec [hl]
    jp Jump_07c_46f4


    ld hl, $c4d1
    add hl, bc
    ld [hl], $80
    jp Jump_07c_46f4


    pop hl
    ld a, [hl+]
    push hl
    push bc
    inc c
    ld e, $ee

jr_07c_45b2:
    dec c
    jr z, jr_07c_45ba

    rlca
    rlc e
    jr jr_07c_45b2

jr_07c_45ba:
    ld d, a
    ld hl, $c4c4
    ld a, [hl]
    and e
    or d
    ld [hl], a
    pop bc
    jp Jump_07c_46f4


    pop de
    push de
    dec de
    ld hl, $c4dd
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_07c_46f4


    pop hl
    ld hl, $c4dd
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_07c_43ef


    pop de
    ld a, [de]
    inc de
    push af
    call Call_07c_46e0
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    pop af
    ld [hl], a
    inc hl
    push de
    call Call_07c_46e9
    jp Jump_07c_46f4


    call Call_07c_46e0
    dec hl
    ld a, [hl]
    dec a
    jr z, jr_07c_4607

    ld [hl-], a
    ld d, [hl]
    dec hl
    ld e, [hl]
    pop hl
    ld h, d
    ld l, e
    jp Jump_07c_43ef


jr_07c_4607:
    dec hl
    dec hl
    call Call_07c_46e9
    jp Jump_07c_46f4


    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_07c_43ef


    call Call_07c_46e0
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
    call Call_07c_46e9
    jp Jump_07c_46f4


    pop de
    call Call_07c_46e0
    dec hl
    ld a, [hl-]
    ld e, [hl]
    ld d, a
    inc de
    inc de
    push de
    call Call_07c_46e9
    jp Jump_07c_46f4


    pop de
    ld a, [de]
    inc de
    ld hl, $c52d
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07c_43ef


    pop de
    ld a, [de]
    and $c0
    inc de
    ld hl, $c4c6
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07c_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c527
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07c_43ef


    pop de
    ld a, [de]
    inc de
    ld [$c4ca], a
    ld a, $01
    ld [$c4cb], a
    ld h, d
    ld l, e
    jp Jump_07c_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c4ff
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07c_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c507
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07c_43ef


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
    jp Jump_07c_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c51f
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07c_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c50b
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07c_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c50b
    add hl, bc
    add [hl]
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07c_43ef


    pop de
    ld a, [de]
    inc de
    ld hl, $c52a
    add hl, bc
    ld [hl], a
    ld h, d
    ld l, e
    jp Jump_07c_43ef


    ld hl, $c4cd
    add hl, bc
    ld [hl], $00
    pop hl
    ret


Call_07c_46e0:
    ld hl, $c536
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_07c_46e9:
    ld d, h
    ld e, l
    ld hl, $c536
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Jump_07c_46f4:
    pop hl
    jp Jump_07c_43ef


Call_07c_46f8:
    ld a, [$c4cc]
    bit 0, a
    jr nz, jr_07c_4732

    ld a, [$c4f7]
    or a
    jr z, jr_07c_4737

    ld a, $01
    ld [$c598], a
    ld d, $00
    ld hl, $c4d1
    ld a, [hl]
    cp $80
    jr z, jr_07c_471b

    ld a, [$c527]
    ldh [rNR12], a
    ld d, $80

jr_07c_471b:
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


jr_07c_4732:
    xor a
    ld [$c598], a
    ret


Call_07c_4737:
jr_07c_4737:
    ld a, [$c598]
    or a
    jr z, jr_07c_476e

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
    jr nc, jr_07c_475f

    ld a, $00

jr_07c_475f:
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

jr_07c_476e:
    ret


Call_07c_476f:
    ld a, [$c4cc]
    bit 1, a
    jr nz, jr_07c_47a6

    ld a, [$c4f8]
    cp $00
    jr z, jr_07c_47ab

    ld a, $01
    ld [$c599], a
    ld d, $00
    ld hl, $c4d2
    ld a, [hl]
    cp $80
    jr z, jr_07c_4793

    ld a, [$c528]
    ldh [rNR22], a
    ld d, $80

jr_07c_4793:
    ld [hl], $02
    ld a, [$c4c7]
    ldh [rNR21], a
    ld a, [$c4e7]
    ldh [rNR23], a
    ld a, [$c4e8]
    or d
    ldh [rNR24], a
    ret


jr_07c_47a6:
    xor a
    ld [$c599], a
    ret


Call_07c_47ab:
jr_07c_47ab:
    ld a, [$c599]
    or a
    jr z, jr_07c_47e2

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
    jr nc, jr_07c_47d3

    ld a, $00

jr_07c_47d3:
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

jr_07c_47e2:
    ret


Call_07c_47e3:
    ld a, [$c4cc]
    bit 2, a
    jr nz, jr_07c_4827

    ld d, $00
    ld a, [$c4cb]
    or a
    jr z, jr_07c_47fa

    xor a
    ldh [rNR30], a
    call Call_07c_4831
    ld d, $80

jr_07c_47fa:
    ld a, [$c4f9]
    cp $00
    jr z, jr_07c_4828

    ld hl, $c4d3
    ld a, [hl]
    cp $80
    jr z, jr_07c_4813

    ld a, [$c529]
    ldh [rNR32], a
    xor a
    ldh [rNR30], a
    ld d, $80

jr_07c_4813:
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

jr_07c_4827:
    ret


jr_07c_4828:
    ld hl, $c4d1
    ld [hl], $00
    xor a
    ldh [rNR30], a
    ret


Call_07c_4831:
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

jr_07c_4843:
    ld a, [hl+]
    ld [de], a
    inc de
    inc b
    ld a, b
    cp $10
    jr nz, jr_07c_4843

    xor a
    ld [$c4cb], a
    ret


Call_07c_4851:
    ld a, [$c4cc]
    bit 3, a
    jr nz, jr_07c_486f

    ld a, [$c4fa]
    or a
    jr z, jr_07c_4870

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

jr_07c_486f:
    ret


jr_07c_4870:
    xor a
    ld [$c532], a
    ld hl, $ff21
    ld a, $08
    ld [hl+], a
    inc hl
    swap a
    ld [hl], a
    ret


Call_07c_487f:
    ld a, [$c4cc]
    bit 3, a
    jr z, jr_07c_488c

    xor a
    ld [$c532], a
    jr jr_07c_489f

jr_07c_488c:
    ld hl, $c530
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [de]
    cp $ff
    jr nz, jr_07c_4899

    jr jr_07c_4870

jr_07c_4899:
    ldh [rNR43], a
    inc de
    ld a, d
    ld [hl-], a
    ld [hl], e

jr_07c_489f:
    ret


Call_07c_48a0:
    ld a, [$c534]
    ldh [rNR50], a
    ld a, [$c4cc]
    or a
    ld hl, $c4c4
    ld a, [hl+]
    jr z, jr_07c_48c1

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

jr_07c_48c1:
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


Call_07c_48d0:
    ld hl, $c51f
    add hl, bc
    ld a, [hl]
    or a
    jr z, jr_07c_4925

    ld hl, $c523
    add hl, bc
    cp [hl]
    jr z, jr_07c_48e2

    inc [hl]
    jr jr_07c_4925

jr_07c_48e2:
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
    jr z, jr_07c_4911

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


jr_07c_4911:
    push hl
    ld hl, $c51b
    add hl, bc
    ld [hl], $00
    pop hl
    ld a, [hl]
    cp $80
    jr z, jr_07c_48e2

    ld hl, $c513
    add hl, bc
    ld [hl], a
    jr jr_07c_48e2

jr_07c_4925:
    ld hl, $c4e5
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


Jump_07c_492e:
    push af
    ld b, $00
    ld c, a
    call Call_07c_48d0
    pop af
    or a
    jr nz, jr_07c_4950

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


jr_07c_4950:
    dec a
    jr nz, jr_07c_496b

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


jr_07c_496b:
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


Call_07c_4982:
    ld hl, $c52d
    add hl, bc
    ld a, [hl]
    bit 7, a
    jr nz, jr_07c_4991

    add e
    ld e, a
    ld a, d
    adc b
    ld d, a
    ret


jr_07c_4991:
    xor $ff
    ld h, a
    ld a, e
    sub h
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ret


Call_07c_499b:
    ld a, [$c4cc]
    ld d, a
    bit 0, d
    jr nz, jr_07c_49ab

    ld a, $08
    ldh [rNR12], a
    swap a
    ldh [rNR14], a

jr_07c_49ab:
    bit 1, d
    jr nz, jr_07c_49b7

    swap a
    ldh [rNR22], a
    swap a
    ldh [rNR24], a

jr_07c_49b7:
    bit 3, d
    jr nz, jr_07c_49c3

    swap a
    ldh [rNR42], a
    swap a
    ldh [rNR44], a

jr_07c_49c3:
    bit 2, d
    jr nz, jr_07c_49cb

    ld a, $00
    ldh [rNR32], a

jr_07c_49cb:
    ret


Jump_07c_49cc:
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
    call Call_07c_499b
    call Call_07c_49f7
    call Call_07c_4145
    ei
    ret


    di
    call Call_07c_499b
    call Call_07c_4145
    call Call_07c_4b1c
    ei
    ret


Call_07c_49f7:
    ld a, [$c4c0]
    ld [$c59a], a
    ld a, [$c4c1]
    ld [$c59b], a
    ld a, [$c4c4]
    ld [$c59c], a
    ld hl, $c4c6
    ld de, $c59d
    ld a, $04
    call Call_07c_4c33
    ld a, [$c4ca]
    ld [$c5a1], a
    ld a, [$c4cb]
    ld [$c5a2], a
    ld hl, $c4cd
    ld de, $c5a3
    ld a, $04
    call Call_07c_4c33
    ld hl, $c4d1
    ld de, $c5a7
    ld a, $04
    call Call_07c_4c33
    ld hl, $c4d5
    ld de, $c5ab
    ld a, $08
    call Call_07c_4c33
    ld hl, $c4dd
    ld de, $c5b3
    ld a, $08
    call Call_07c_4c33
    ld a, [$c4eb]
    ld [$c5bb], a
    ld a, [$c4ec]
    ld [$c5bc], a
    ld hl, $c4ef
    ld de, $c5bd
    ld a, $04
    call Call_07c_4c33
    ld hl, $c4f3
    ld de, $c5c1
    ld a, $04
    call Call_07c_4c33
    ld hl, $c4f7
    ld de, $c5c5
    ld a, $04
    call Call_07c_4c33
    ld hl, $c4fb
    ld de, $c5c9
    ld a, $04
    call Call_07c_4c33
    ld hl, $c4ff
    ld de, $c5cd
    ld a, $04
    call Call_07c_4c33
    ld hl, $c503
    ld de, $c5d1
    ld a, $04
    call Call_07c_4c33
    ld hl, $c507
    ld de, $c5d5
    ld a, $04
    call Call_07c_4c33
    ld hl, $c50b
    ld de, $c5d9
    ld a, $04
    call Call_07c_4c33
    ld hl, $c50f
    ld de, $c5dd
    ld a, $04
    call Call_07c_4c33
    ld hl, $c517
    ld de, $c5e1
    ld a, $04
    call Call_07c_4c33
    ld hl, $c51f
    ld de, $c5e5
    ld a, $04
    call Call_07c_4c33
    ld a, $00
    ld [$c51b], a
    ld [$c51c], a
    ld [$c51d], a
    ld [$c51e], a
    ld hl, $c527
    ld de, $c5e9
    ld a, $03
    call Call_07c_4c33
    ld hl, $c52d
    ld de, $c5ec
    ld a, $03
    call Call_07c_4c33
    ld hl, $c530
    ld de, $c5ef
    ld a, $02
    call Call_07c_4c33
    ld a, $00
    ld [$c5f1], a
    ld hl, $c536
    ld de, $c5f2
    ld a, $08
    call Call_07c_4c33
    ld hl, $c53e
    ld de, $c5fa
    ld a, $30
    call Call_07c_4c33
    ret


Call_07c_4b1c:
    ld a, [$c59a]
    ld [$c4c0], a
    ld a, [$c59b]
    ld [$c4c1], a
    ld a, [$c59c]
    ld [$c4c4], a
    ld hl, $c59d
    ld de, $c4c6
    ld a, $04
    call Call_07c_4c33
    ld a, [$c5a1]
    ld [$c4ca], a
    ld a, $01
    ld [$c4cb], a
    ld hl, $c5a3
    ld de, $c4cd
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5a7
    ld de, $c4d1
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5ab
    ld de, $c4d5
    ld a, $08
    call Call_07c_4c33
    ld hl, $c5b3
    ld de, $c4dd
    ld a, $08
    call Call_07c_4c33
    ld a, [$c5bb]
    ld [$c4eb], a
    ld a, [$c5bc]
    ld [$c4ec], a
    ld hl, $c5bd
    ld de, $c4ef
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5c1
    ld de, $c4f3
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5c5
    ld de, $c4f7
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5c9
    ld de, $c4fb
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5cd
    ld de, $c4ff
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5d1
    ld de, $c503
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5d5
    ld de, $c507
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5d9
    ld de, $c50b
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5dd
    ld de, $c50f
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5e1
    ld de, $c517
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5e5
    ld de, $c51f
    ld a, $04
    call Call_07c_4c33
    ld hl, $c5e9
    ld de, $c527
    ld a, $03
    call Call_07c_4c33
    ld hl, $c5ec
    ld de, $c52d
    ld a, $03
    call Call_07c_4c33
    ld hl, $c5ef
    ld de, $c530
    ld a, $02
    call Call_07c_4c33
    ld a, [$c5f1]
    ld [$c532], a
    ld hl, $c5f2
    ld de, $c536
    ld a, $08
    call Call_07c_4c33
    ld hl, $c5fa
    ld de, $c53e
    ld a, $30
    call Call_07c_4c33
    ret


Call_07c_4c33:
    ld c, a

jr_07c_4c34:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_07c_4c34

    ret


    db $3e, $c5, $4a, $c5, $56, $c5, $62, $c5

    nop

    db $18, $30, $48, $60

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
    and b
    inc bc
    rst $18
    inc bc
    dec de
    inc b
    ld d, e
    inc b
    add a
    inc b
    cp c
    inc b

    db $e8, $04, $15, $05

    ccf
    dec b

    db $66, $05, $8c, $05, $af, $05, $d0, $05, $f0, $05, $0d, $06, $29, $06, $44, $06
    db $5d, $06, $74, $06, $8a, $06, $9f, $06, $b3, $06, $c6, $06, $d7, $06, $e8, $06
    db $f8, $06, $07, $07, $15, $07, $22, $07, $2e, $07, $3a, $07

    ld b, l
    rlca

    db $50, $07, $5a, $07, $63, $07, $6c, $07, $74, $07, $7c, $07

    add e
    rlca
    adc d
    rlca

    db $91, $07

    sub a
    rlca

    db $9d, $07

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
    jr nz, jr_07c_4d2c

jr_07c_4d2c:
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

    db $2f, $50

    ld b, d
    ld d, b

    db $55, $50

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
    adc b
    db $ed
    ld [hl], d
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

    db $88, $ed, $72, $80, $59, $3f, $35, $36, $37, $37, $37, $37, $37, $37, $37, $37
    db $37, $37, $ff

    adc b
    db $ed
    ld [hl], d
    add b
    ld e, c
    ccf
    dec h
    ld h, $27
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    rst $38

    db $88, $20, $94, $80, $5e, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $ff

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

    db $1e, $51

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

Call_07c_50e6:
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

    db $01, $01, $02, $02, $01, $01, $00, $ff, $ff, $fe, $fe, $ff, $ff, $00, $80, $80

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
    jr jr_07c_51f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07c_5203

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07c_5213

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07c_5223

    ld [hl-], a

jr_07c_51f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07c_5233

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_07c_5203:
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

jr_07c_5213:
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

jr_07c_5223:
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

jr_07c_5233:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    db $45, $53

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
    adc l
    ld d, e
    sub [hl]
    ld d, e

    db $9f, $53

    xor b
    ld d, e

    db $b1, $53

    cp d
    ld d, e

    db $c3, $53

    call z, $d553
    ld d, e

    db $de, $53

    rst $20
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
    rrca
    ldh a, [rHDMA3]
    ld a, e
    ld d, h
    rrca
    ld d, l
    sub a
    ld d, l

    db $0f, $e8, $55, $0b, $56, $2e, $56, $50, $56

    rrca
    ld h, c
    ld d, [hl]
    ld a, l
    ld d, [hl]
    sbc b
    ld d, [hl]
    or d
    ld d, [hl]
    rrca
    or a
    ld d, [hl]
    pop hl
    ld d, [hl]
    inc c
    ld d, a
    ld b, c
    ld d, a
    rrca
    ld d, a
    ld d, a
    add [hl]
    ld d, a
    or h
    ld d, a
    db $ed
    ld d, a
    rrca
    ld hl, $b358
    ld e, b
    ld c, h
    ld e, c
    and h
    ld e, c

    db $0f, $e2, $59, $38, $5a, $90, $5a, $db, $5a

    rrca
    inc b
    ld e, e
    jr c, jr_07c_53db

    ld d, a
    ld e, e
    ld [hl], a
    ld e, e
    rrca
    add b
    ld e, e
    and $5b
    inc e
    ld e, h
    db $76
    ld e, h
    rrca
    xor b
    ld e, h
    and $5c
    ld e, b
    ld e, l
    and b
    ld e, l
    rrca
    rst $20
    ld e, l
    ld l, e
    ld e, [hl]
    cp l
    ld e, [hl]
    jr jr_07c_53fe

    db $0f, $1f, $5f, $bf, $5f, $4a, $60, $9e, $60

    rrca
    ret nz

    ld h, b
    sbc d
    ld h, c
    ld a, c
    ld h, d
    xor d
    ld h, d

    db $0f, $ba, $62, $3e, $63, $e1, $63, $68, $64

    rrca
    cp [hl]
    ld h, h
    adc [hl]
    ld h, l
    ret c

    ld h, [hl]
    ld h, l
    ld h, a

    db $0f, $d0, $67, $72, $69, $9d, $6a, $a8, $6b

    rrca

jr_07c_53cd:
    cp b
    ld l, h
    ld e, [hl]
    ld l, l
    rrca
    ld l, [hl]
    ld c, h
    ld l, [hl]
    rrca
    sbc e
    ld l, [hl]
    or c
    ld l, a
    or d

jr_07c_53db:
    ld [hl], b
    ld l, a
    ld [hl], c

    db $0f, $90, $72, $9a, $73, $ab, $74, $78, $75

    rrca
    ld l, a
    db $76
    cp d
    db $76
    dec bc
    ld [hl], a
    ld d, c
    ld [hl], a
    ret nc

    ld bc, $11dc
    ld [$eb01], a
    inc e
    and $b0
    add sp, $07
    db $d3
    push hl

jr_07c_53fe:
    add b
    ld d, e
    add e
    rst $10
    inc de
    ld d, e
    inc de
    ret c

    add e

jr_07c_5407:
    ld [hl], e
    and h
    rst $10
    inc sp
    ld [hl], e
    inc sp
    ret c

    and e
    add e
    or e
    rst $10
    ld b, e
    add h
    ld b, e
    ret c

    or e

jr_07c_5417:
    and e
    rst $10
    inc de
    ld h, e
    and e
    ld h, e
    inc d
    push hl
    ld b, b
    scf
    scf
    scf
    adc b
    scf
    add a
    ld h, a
    reti


    ld l, b
    ld d, a
    reti


    ld d, a
    rla
    reti


    jr jr_07c_5477

    ld b, a
    ld b, a
    cp b
    ld b, a
    or a
    ld h, a
    ld l, b
    ld h, a
    rst $10
    rla
    ret c

    ld h, a
    rst $10
    jr jr_07c_5417

jr_07c_543f:
    add a
    scf
    ret c

    rst $00
    rst $10
    jr c, jr_07c_53cd

    ret c

jr_07c_5447:
    rst $00
    rst $10
    sub a
    ld c, b
    rla
    ld b, a
    sub a
    jr jr_07c_5407

    ld h, a
    scf
    ld l, b
    or a
    scf
    rst $10
    scf
    ret c

    cp b
    ld h, a
    scf
    ld h, a
    cp b
    rst $10
    rla
    reti


    rla
    reti


    rla
    reti


    jr jr_07c_543f

    rla
    reti


    rla
    reti


    rla
    reti


    jr jr_07c_5447

    rla
    dec d
    ld bc, $0115
    dec d
    ld [bc], a
    rla
    reti


jr_07c_5477:
    rla
    rlca
    rlca
    rst $38
    ret nc

    ld bc, $11dc
    ld [$eb01], a
    inc e
    and $90
    add sp, $07
    db $d3
    push hl
    add b

jr_07c_548a:
    inc de
    ld d, e
    add e
    rst $10
    inc de
    ret c

    add e
    ld d, e
    inc sp
    ld [hl], h
    and e
    rst $10
    inc sp
    ret c

    and e
    ld [hl], e
    ld b, e
    add e
    or e
    rst $10
    ld b, h
    ret c

    or e
    add e
    ld h, e
    and e
    rst $10
    inc de
    ld h, e
    inc de
    ret c

    and h
    push hl
    ld b, b
    add a
    add a
    add a
    rst $10
    jr c, jr_07c_548a

    add a

jr_07c_54b3:
    rst $10
    scf
    rla
    reti


    jr jr_07c_54d0

    reti


    rla
    ret c

    add a
    reti


    adc b
    or a
    or a
    or a
    rst $10
    ld c, b
    ret c

jr_07c_54c5:
    or a
    rst $10
    ld b, a
    rla
    jr jr_07c_54e2

    ld h, a
    rla
    ld l, b
    scf
    ret c

jr_07c_54d0:
    rst $00
    add a
    ret z

    rst $10
    scf
    ret c

    add a
    rst $10
    ld b, a
    jr jr_07c_54b3

    sub a
    rst $10
    rla
    ld b, a
    ret c

    sbc b
    rst $10

jr_07c_54e2:
    ld h, a
    scf
    ret c

    or a
    rst $10
    jr c, jr_07c_5550

    or a
    ld h, a
    jr c, jr_07c_54c5

    or a
    ld h, a
    or a
    rst $10
    jr c, jr_07c_554a

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
    reti


    ld d, a
    ld d, l
    ld bc, $0155
    ld d, l
    ld [bc], a
    ld d, a
    reti


    ld d, a
    rlca
    rlca
    rst $38
    ret nc

    ld bc, $00e9
    call c, $e711
    ld bc, $20e6
    add sp, $07
    jp nc, $5757

    ld d, a
    rst $10
    ld e, b
    ret c

    ld d, a
    ld d, a
    rst $10
    ld d, a
    ret c

    ld e, b
    ld d, a
    rst $10
    ld d, a
    ret c

    ld d, a
    ld e, b
    ret c

jr_07c_552f:
    add a
    reti


    add a
    add a
    rst $10
    adc b
    ret c

    add a
    rst $10
    add a
    ret c

    add a
    reti


    adc b
    add a
    rst $10
    add a
    ret c

    add a
    rst $10
    adc b
    ld b, a
    reti


    ld b, a
    ld b, a
    ret c

    cp b

jr_07c_554a:
    rst $10
    ld b, a
    ret c

    or a
    rst $10
    ld h, a

jr_07c_5550:
    reti


    ld l, b
    ld h, a
    rla
    ld h, a
    jr jr_07c_552f

    add a
    add a

jr_07c_5559:
    add a
    rst $10
    adc b
    ret c

    add a
    add a
    add a
    adc b

jr_07c_5561:
    add a
    rst $10
    add a
    ret c

    add a
    adc b
    or a
    or a
    or a
    rst $10
    cp b
    ret c

    or a
    or a
    or a
    cp b
    or a
    rst $10
    or a
    ret c

    or a
    rst $10
    cp b
    rla
    reti


    rla
    reti


    rla
    reti


    jr jr_07c_5559

    rla
    reti


    rla
    reti


    rla

Call_07c_5585:
    reti


    jr jr_07c_5561

    rla
    dec d
    ld bc, $85d8
    ld bc, $0285
    rst $10
    rla
    reti


    rla
    rlca
    rlca

jr_07c_5596:
    rst $38
    ret nc

    ld bc, $cfd1

jr_07c_559b:
    rla
    ld [$0717], sp
    rla
    ld [$0717], sp
    rla
    ld [$57c7], sp
    rla
    jr c, @+$61

    rla
    ld e, b
    rla
    scf
    ld d, a
    ld [$1717], sp
    rla
    jr c, @+$59

    scf
    rla
    ld e, b
    rla
    scf
    rla
    ld e, b
    ret nc

    jr jr_07c_5596

    sub b
    ret c

    ret nc

    ld bc, $5718
    rla
    ld d, a
    jr @+$59

    rla
    ld d, a
    jr @+$59

    rla
    ld d, a
    jr @+$59

    rla
    ld d, a
    jr @+$59

    scf
    scf
    jr c, @-$2e

    jr jr_07c_559b

    ret nc

    ld bc, $0f18
    rla
    ld [$3707], sp
    scf
    jr c, @+$41

    rlca
    rst $38

    db $d0, $09, $dc, $11, $ea, $01, $eb, $28, $e5, $80, $e6, $b0, $e8, $07, $d3, $50
    db $90, $c0, $d7, $50, $90, $c0, $d8, $70, $a0, $d7, $30, $70, $a0, $d7, $30, $e8
    db $08, $5b, $ff, $d0, $09, $dc, $11, $ea, $01, $eb, $28, $e5, $80, $e6, $90, $e8
    db $07, $d2, $c0, $d7, $50, $90, $c0, $d7, $50, $90, $d8, $30, $70, $a0, $d7, $30
    db $70, $a0, $e8, $08, $9b, $ff, $d0, $09, $e9, $00, $dc, $11, $e7, $08, $e6, $20
    db $e8, $07, $d2, $51, $50, $d8, $50, $d7, $50, $d8, $50, $d7, $31, $30, $d8, $a0
    db $d7, $30, $d8, $a0, $e8, $08, $5b, $ff, $d0, $09, $d1, $30, $20, $10, $30, $20
    db $30, $30, $10, $10, $30, $10, $10, $cb, $ff

    ret nc

    ld a, [bc]
    call c, $ea11
    ld bc, $19eb
    push hl
    ld b, b
    and $c0
    add sp, $06
    xor $22
    call nc, $d850
    ret nz

    rst $10
    ld d, b
    ld [hl], b
    sub b
    and b
    sbc b
    ld [bc], a
    rst $38
    ret nc

    ld a, [bc]
    call c, $ea11
    ld bc, $19eb
    push hl
    ld b, b
    and $b0
    add sp, $06
    xor $22
    db $d3
    ret nz

    sub b
    ret nz

    rst $10
    jr nc, @+$52

    ld [hl], b
    ld e, b
    ld [bc], a
    rst $38
    ret nc

    ld a, [bc]
    jp hl


    nop
    call c, $e711
    ld bc, $20e6
    add sp, $06
    jp nc, $d850

    ret nz

    rst $10
    ld d, b
    ld d, b
    ret c

    ret nz

    rst $10
    ld d, b
    ld e, c
    ld bc, $d0ff
    ld a, [bc]
    pop de
    ld c, $ff
    ret nc

    dec b
    call c, $e511
    nop
    and $d0
    ld [$eb01], a
    inc e
    add sp, $06
    xor $22
    call nc, $d811
    add c
    rst $10
    ld de, $3151
    ld de, $d831
    or c
    rst $10
    ld sp, $8161
    and c
    adc b
    db $10
    db $10

jr_07c_56db:
    db $10
    add sp, $08
    adc e
    inc bc
    rst $38
    ret nc

    dec b
    call c, $e511
    nop
    and $90
    ld [$eb01], a
    inc e
    add sp, $06
    xor $22
    db $d3
    add c
    ld d, c
    add c
    rst $10
    ld de, $c1d8
    and c
    or c
    ld h, c
    or c
    rst $10
    ld sp, $6151
    jr jr_07c_56db

    add b
    add b
    add b
    add sp, $08
    rst $10
    dec de
    inc bc
    rst $38
    ret nc

    ld bc, $00e9
    call c, $e711
    ld bc, $20e6
    add sp, $07
    jp nc, $d91e

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
    rst $10
    ld e, $d9
    ld e, $d9
    ld e, $d8
    add h
    add h
    add h
    add sp, $08
    rst $10
    ld e, $d9
    ld e, $d9
    ld e, $d9
    ld e, $d9
    inc d
    inc b
    add hl, bc
    rst $38
    ret nc

    dec b
    pop de
    ld sp, $2121
    ld sp, $2030
    ld hl, $2131
    ld hl, $2131
    ld hl, $30c8
    jr nz, jr_07c_5775

    call $dcff
    ld de, $40e5
    ld [$eb0e], a
    jr nz, @-$2b

    add sp, $07

jr_07c_5762:
    ret nc

    ld bc, $b0e6
    ld d, a
    ld bc, $0395
    rst $10
    ld d, l
    inc bc
    scf
    ld bc, $a5d8
    inc bc
    rst $10
    and l
    inc bc

jr_07c_5775:
    ret nc

    ld a, [bc]
    sub l
    and $80
    push hl
    add b
    add sp, $08
    db $dd
    db $d3
    sbc e
    xor e
    set 1, e
    sbc $ff
    call c, $e511
    ld b, b
    ld [$eb0e], a
    jr nz, jr_07c_5762

    add sp, $07
    ret nc

    ld bc, $90e6
    sub a
    ld bc, $03c5
    push bc
    inc bc
    rst $10
    ld [hl], a
    ld bc, $0335
    ld d, l

jr_07c_57a1:
    inc bc
    ret nc

    ld a, [bc]
    ld d, l

jr_07c_57a5:
    and $80
    push hl
    add b
    add sp, $08
    db $dd
    jp nc, $d7cb

    dec sp
    sbc e
    adc e
    sbc $ff
    ret nc

    ld bc, $11dc
    rst $20
    jr nz, jr_07c_57a1

    jr nz, jr_07c_57a5

    rlca
    pop de
    ld e, c
    rst $10
    ld e, c
    ret c

    ld e, c
    rst $10
    add hl, sp
    ret c

    xor c
    rst $10
    add hl, sp
    ld e, [hl]
    reti


    ld e, [hl]
    ret c

    ld e, c
    rst $10
    ld e, c
    ret c

    ld e, c
    db $dd
    pop de
    add hl, sp
    ld e, c
    ld d, d
    ld b, $59
    reti


    ld e, c
    dec [hl]
    inc bc
    rst $10
    add hl, sp
    ret c

    ld e, c
    rst $10
    add hl, sp
    ret c

    ld d, d
    ld b, $d7
    ld e, c
    ret c

    ld e, c
    sbc $ff
    ret nc

    dec b
    pop de
    dec d
    dec d
    dec d
    ld sp, $3131
    db $dd
    rst $10
    sub e
    ret c

    ld sp, $5111
    ld de, $3151
    ld sp, $1101
    ld sp, $02df
    ld de, $3151
    ld de, $1151
    ld d, c
    ld sp, $5131
    ld de, $e031
    ld de, $3151
    ld de, $1151
    ld d, c
    ld sp, $3131
    ld sp, $de31
    rst $38
    ret nc

    inc bc
    call c, $e511
    ld b, b
    and $b0
    add sp, $07
    ld [$eb0e], a
    ld [hl+], a
    call nc, Call_07c_5585
    add l
    and l
    ld [hl], l
    and l
    call nc, Call_000_00a1
    ld h, c
    nop
    ld de, $6100
    nop
    ld de, $a100
    nop
    pop bc
    nop
    add c
    nop
    ld sp, $c100
    nop
    ret c

    pop bc
    nop
    rst $10
    pop bc
    nop
    and $90
    rst $10
    dec hl
    reti


    dec hl
    reti


    dec hl
    and $b0
    db $dd
    call nc, $0011
    ld de, $1100
    nop
    ld d, c
    nop
    ld de, $8600
    reti


    adc d
    ld [bc], a
    ld sp, $3100
    nop
    ld sp, $6100
    nop
    ld sp, $b600
    reti


    cp d
    ld [bc], a
    add c
    nop
    ld d, c
    nop
    ld de, $5100
    nop
    ld de, $d800
    add c
    nop
    ld d, c
    nop
    add c
    nop
    rst $10
    ld de, $d800
    add c
    nop
    rst $10
    ld de, $5100
    nop
    ld h, c
    nop
    ld sp, $d800
    or c
    nop
    rst $10
    ld sp, $d800
    or c
    nop
    ld h, c
    nop
    or c
    nop
    rst $10
    ld sp, $6100
    nop
    or c
    nop
    ld h, c
    nop
    ld sp, $de00
    rst $38
    ret nc

    inc bc
    call c, $e511
    ld b, b
    and $90
    add sp, $07
    ld [$eb0e], a
    ld [hl+], a
    call nc, $1555
    ld d, l
    ld [hl], l
    dec [hl]
    ld [hl], l
    call nc, Call_000_0061
    ld de, $d800
    and c
    nop
    rst $10
    and c
    nop
    ld h, c
    nop
    rst $10
    ld de, $00d8
    add c
    nop
    ld sp, $d800
    pop bc
    nop
    rst $10
    ld sp, $8100
    nop
    rst $10
    ld sp, $e600
    ld [hl], b
    ret c

    ld e, e
    reti


    ld e, e
    reti


    ld e, e
    and $90
    db $dd
    db $d3
    ld d, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    add c
    nop
    ld d, c
    nop
    rst $10
    ld d, $d9
    ld a, [de]
    ld [bc], a
    ret c

    ld h, c
    nop
    ld h, c
    nop
    ld h, c
    nop
    or c
    nop
    ld h, c
    nop
    rst $10
    ld [hl], $d9
    ld a, [hl-]
    ld [bc], a
    ld d, c
    nop
    ld de, $d800
    add c
    nop
    rst $10
    ld de, $d800
    add c
    nop
    ld d, c
    nop
    ld de, $5100
    nop
    add c
    nop
    ld d, c
    nop
    add c
    nop
    rst $10
    ld de, $3100
    nop
    ret c

    or c
    nop
    ld h, c
    nop
    or c
    nop
    ld h, c

jr_07c_5939:
    nop
    ld sp, $6100

jr_07c_593d:
    nop
    or c
    nop
    rst $10

jr_07c_5941:
    ld sp, $6100
    nop

jr_07c_5945:
    ld sp, $d800
    or c
    nop
    sbc $ff
    ret nc

    add hl, bc
    call c, $e711
    jr nz, jr_07c_5939

    jr nz, jr_07c_593d

    rlca
    jp nc, $d810

    add b
    rst $10
    db $10
    ret c

    add b
    rst $10
    db $10
    ret c

    add b
    rst $10
    jr nc, jr_07c_593d

    and b
    rst $10
    jr nc, jr_07c_5941

    and b
    rst $10
    jr nc, jr_07c_5945

    and b
    pop de
    ld h, b
    rst $10
    ld h, b
    ret c

    ld h, b
    rst $10
    ld h, b
    ret c

    ld h, b
    rst $10
    ld h, b
    ret c

    add b
    rst $10
    add b
    ret c

    add b
    rst $10
    add b
    ret c

    add b
    rst $10

jr_07c_5985:
    add b
    ret c

    and l
    and b
    ld d, b
    ld d, b
    and b
    ld d, b
    and b
    db $dd
    rst $18
    ld [bc], a
    rst $10
    ld [de], a
    ret c

    add d
    rst $10
    ld [de], a
    ret c

    add d
    or d
    ld h, d
    or b
    or b
    or b
    ld h, b
    or b
    ld h, b
    ldh [$de], a
    rst $38
    ret nc

    add hl, bc
    pop de
    db $10
    ld d, b
    db $10
    jr nc, jr_07c_5a0c

    add b
    db $10
    db $10
    db $10
    jr nc, jr_07c_59c2

    ld d, b
    db $10
    ld d, b
    db $10
    jr nc, jr_07c_5a18

    add b
    db $10
    db $10
    db $10
    jr nc, @+$32

    jr nc, jr_07c_5985

    jr nc, jr_07c_59d2

jr_07c_59c2:
    db $10
    jr nc, @+$12

    db $10
    db $dd
    rst $18
    inc bc
    db $10
    db $10
    db $10
    jr nc, jr_07c_5a2e

    add b
    ld de, $3010

jr_07c_59d2:
    ld d, b
    db $10
    ldh [rNR10], a
    db $10
    db $10
    jr nc, @+$62

    add b
    ld de, $3010
    jr nc, @+$32

    sbc $ff

    db $d0, $01, $dc, $11, $e5, $00, $e6, $a0, $e8, $07, $ea, $01, $eb, $1c, $d4, $8e
    db $44, $44, $44, $8e, $be, $8e

    ld c, [hl]
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
    push hl
    ld b, b
    db $dd
    add sp, $06
    rst $18
    ld [bc], a
    rst $18

jr_07c_5a0c:
    ld [bc], a
    and $80
    ld [hl], $e6
    ld h, b
    ld b, a
    and $80
    add [hl]
    and $60

jr_07c_5a18:
    scf
    and $80
    ld b, [hl]
    and $60
    add a
    ldh [$df], a
    ld [bc], a
    and $80
    ld d, $e6
    ld h, b
    daa
    and $80
    ld h, [hl]
    and $60
    rla

jr_07c_5a2e:
    and $80
    ld h, $e6
    ld h, b
    ld h, a
    ldh [$e0], a
    sbc $ff

    db $d0, $01, $dc, $11, $e5, $00, $e6, $80, $e8, $07, $ea, $01, $eb, $1c, $d3, $be
    db $84, $84, $84, $be, $d7, $4e, $d8

    cp [hl]
    adc [hl]
    sbc [hl]
    reti


    sbc [hl]
    reti


    sbc [hl]
    reti


    sbc [hl]
    reti


    sbc [hl]
    reti


    sbc [hl]
    push hl
    ld b, b
    db $dd
    adc [hl]
    reti


    adc [hl]
    reti


    adc [hl]
    reti


    adc [hl]
    reti


    adc [hl]
    reti


    adc [hl]
    ret c

    ld l, $d7
    ld l, b
    dec b
    ret c

    jr z, jr_07c_5a77

    rst $10
    ld l, [hl]
    reti


    ld l, [hl]
    reti


jr_07c_5a77:
    ld l, [hl]
    adc [hl]
    reti


    adc [hl]
    reti


    adc [hl]
    reti


    adc [hl]
    reti


    adc [hl]
    reti


    adc [hl]
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
    sbc $ff

    db $d0, $01, $dc, $11, $e7, $08, $e6, $20, $e8, $07, $d2, $4e, $d9, $4e, $d9, $4e
    db $d8, $be, $4e

    cp [hl]
    rst $10
    ld l, $d9
    ld l, $d9
    ld l, $d8
    sbc [hl]
    reti


    sbc [hl]
    reti


    sbc [hl]
    db $dd
    jp nc, $d94e

    ld c, [hl]
    reti


    ld c, [hl]
    ret c

    cp [hl]
    reti


    cp [hl]
    rst $10
    ld c, [hl]
    ld l, $d9
    ld l, $d8
    sbc [hl]
    reti


    sbc [hl]
    rst $10
    ld l, $d9
    ld l, $4e
    reti


    ld c, [hl]
    reti


    ld c, [hl]
    ld c, [hl]
    ret c

    cp [hl]
    rst $10
    ld c, [hl]
    ld l, [hl]
    ld l, $1e
    ret c

    sbc [hl]
    ld l, [hl]
    sbc [hl]
    sbc $ff

    db $d0, $01, $d1, $1e, $0e, $0e, $0e, $1e

    ld c, $1e
    ld c, $0e
    ld e, $06
    scf
    ld [hl], $37
    db $dd
    rst $18
    ld [bc], a
    ld e, $0e
    ld e, $3e
    ld c, $0e
    ld d, $27
    ld h, $17
    ld h, $27
    ld d, $27
    ld h, $17
    ld d, $27

jr_07c_5b01:
    ldh [$de], a
    rst $38
    ret nc

    ld de, $11dc
    push hl
    ld b, b
    ld [$eb01], a
    ld e, $d3
    and $b0
    ret nz

    add b
    ld d, b
    jr nc, jr_07c_5b66

    ld [hl], b
    push bc
    and $95
    db $dd
    ld [c], a
    jr nz, @+$5d

    sbc $ff
    db $d3
    rst $18
    ld [bc], a
    ld d, b
    add b
    ret nz

    rst $10
    jr nc, jr_07c_5b01

    ret nz

    add b
    ldh [$df], a
    ld [bc], a
    jr nc, jr_07c_5b90

    and b
    rst $10
    db $10
    ret c

    and b
    ld h, b
    ldh [$e3], a
    ret nc

    ld de, $11dc
    push hl
    ld b, b
    ld [$eb01], a
    ld e, $e4
    db $fd
    db $d3
    nop
    and $70
    ret nz

    add b
    ld d, b
    jr nc, jr_07c_5b9d

    ld [hl], b
    push bc
    and $55
    db $dd
    ld [c], a
    jr nz, jr_07c_5bb0

    sbc $ff
    ret nc

    ld de, $11dc
    rst $20
    add hl, bc
    and $20
    add sp, $07
    pop de
    ld [de], a
    ld [hl-], a
    ld d, l
    db $dd

jr_07c_5b66:
    ld d, d
    rst $10
    ld d, b
    ret c

    ret nz

    ld d, b
    ld d, c
    ld d, b
    ld d, b
    ld d, b
    ld b, b
    dec [hl]
    ld sp, $4131
    sbc $ff
    ret nc

    ld de, $dfd1
    ld b, $05
    ldh [$de], a
    rst $38
    call c, $e511
    ld b, b
    ld [$eb01], a
    inc e
    jp nc, $d0e6

    ret nc

    ld bc, $06e8
    ld e, c

jr_07c_5b90:
    rst $10
    ld e, c
    ret c

    ld l, c
    rst $10
    ld l, c
    ret c

    ld a, c
    rst $10
    ld a, c
    ret c

    adc c
    rst $10

jr_07c_5b9d:
    adc c
    ret c

    sbc c
    rst $10
    sbc c
    ret c

    xor c
    rst $10
    xor c
    ret c

    or h
    call nz, $c0e6
    or h
    call nz, $b0e6
    or h

jr_07c_5bb0:
    call nz, $a0e6
    or h
    call nz, $90e6
    or h
    call nz, $80e6
    or h
    call nz, $70e6
    or h
    call nz, Call_07c_60e6
    or h
    call nz, Call_07c_50e6
    or h
    call nz, Call_07c_40e6
    or h
    call nz, Call_000_30e6
    or h
    ld c, $e6
    sub b
    add sp, $06
    push hl
    nop
    db $dd
    db $d3
    rst $18
    ld [bc], a
    ld [$b909], sp
    cp c
    ld [$c909], sp
    add hl, bc
    ldh [$de], a
    rst $38
    ret nc

    ld a, [bc]
    call c, $e611
    and b
    ld [$eb01], a

jr_07c_5bef:
    inc e
    db $d3
    push hl
    ld b, b
    add sp, $06
    ld [hl], b
    or b
    ld h, b
    and b
    ld d, b
    sub b
    ld b, b
    add b
    jr nc, jr_07c_5c6f

    jr nz, jr_07c_5c61

    add sp, $08
    ld e, b
    ld [bc], a
    and $80
    ret nc

    ld bc, $06e8
    push hl
    nop
    db $dd
    db $d3
    jr @-$25

    add hl, de
    ld e, c
    ld e, c
    jr z, jr_07c_5bef

    add hl, hl
    ld l, c
    reti


    ld l, c
    sbc $ff
    call c, $e611
    ld b, b

jr_07c_5c20:
    jp hl


    nop
    call nc, $14e7
    ret nc

    dec b
    add sp, $03
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc de
    ret c

    jp Jump_000_08e8


    cp b
    reti


    cp b
    ld [bc], a
    ret nc

    ld bc, $20e6
    rst $20
    ld a, [bc]
    pop de
    or [hl]
    rst $00
    add sp, $07

jr_07c_5c41:
    db $dd
    rst $18
    ld [bc], a
    rst $10
    jr jr_07c_5c20

    add hl, de
    reti


    add hl, de
    reti


    add hl, de
    ret c

    ld a, b
    reti


    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    ldh [$d7], a
    jr @-$25

    add hl, de
    reti


    add hl, de
    reti


    add hl, de
    ret c

    ld a, b
    reti


    ld a, c

jr_07c_5c61:
    reti


    ld a, c
    reti


    ld a, c
    rst $10
    jr jr_07c_5c41

    add hl, de
    reti


    add hl, de
    add hl, de
    ret c

    ld a, b
    reti


jr_07c_5c6f:
    ld a, c
    reti


    ld a, c
    reti


    ld a, c
    sbc $ff
    ret nc

    ld bc, $09d1
    add hl, bc
    add hl, bc
    add hl, bc
    cp c
    cp c
    cp c
    add hl, bc
    add hl, bc
    cp c
    add hl, bc
    cp c
    cp c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $dd
    jr @+$0b

    rst $10
    adc c
    adc c
    ret c

    jr @+$0b

    add hl, bc
    add hl, bc
    jr @+$0b

    rst $10
    adc c
    adc c
    ret c

    jr @+$0b

    add hl, de
    add hl, bc
    sbc $ff
    ret nc

    ld bc, $11dc
    add sp, $07
    ld [$eb01], a
    add hl, de
    xor $22
    db $d3
    push hl
    ld b, b
    and $b0
    add a
    rst $10
    jr jr_07c_5d15

    ret c

    and a
    rst $10
    jr c, @+$7a

    rla
    ld e, b
    adc b
    scf
    ld a, b
    xor b
    ld d, a
    ld e, b
    jr c, jr_07c_5d23

Jump_07c_5ccc:
    ld [$3758], sp
    ld e, h
    inc b
    rlca
    ld [$d008], sp
    ld a, [de]
    and $70
    add sp, $08
    db $dd
    db $d3
    sub c
    ld [hl], c
    sub c
    pop bc
    sub c
    ld [hl], c
    sub c
    and c
    sbc $ff
    ret nc

    ld bc, $11dc
    push hl
    ld b, b
    and $90
    add sp, $07
    ld [$eb01], a
    ld e, $ee
    ld [hl+], a
    db $d3
    db $e4
    db $fd
    rst $18
    ld [bc], a
    add a
    adc b
    ld [$a8a7], sp
    ld [$e4e0], sp
    nop
    rst $00
    ret z

    xor b
    rst $00
    ld [$a7c8], sp
    call z, Call_000_0704
    ld [$e608], sp
    add b
    push hl
    add b
    db $dd

jr_07c_5d15:
    db $d3
    ld d, a
    reti


    ld e, b
    ld [$0807], sp
    ld [$3807], sp
    reti


    jr c, jr_07c_5d59

    reti


jr_07c_5d23:
    jr c, jr_07c_5d59

    inc bc
    ld d, a
    reti


    ld e, b
    ld [$0807], sp
    ld [$8807], sp
    reti


    adc b
    ld [hl], a
    reti


    ld a, b
    inc [hl]
    inc bc
    ld d, a
    reti


    ld e, b
    ld [$0807], sp
    ld [$3807], sp
    reti


jr_07c_5d40:
    jr c, jr_07c_5d79

    reti


    jr c, jr_07c_5d79

jr_07c_5d45:
    inc bc
    ld d, a
    reti


    ld e, b

jr_07c_5d49:
    ld [$0807], sp
    ld [$3807], sp
    reti


    jr c, jr_07c_5d89

    reti


    jr c, jr_07c_5d99

    inc bc
    sbc $ff
    ret nc

jr_07c_5d59:
    ld bc, $11dc
    rst $20
    ld [$20e6], sp
    add sp, $07
    pop de
    rla
    reti


    jr jr_07c_5d40

    jr jr_07c_5da0

    reti


    jr c, jr_07c_5d45

    jr c, jr_07c_5d85

    rst $10
    jr jr_07c_5d49

    jr jr_07c_5daa

    reti


    jr c, @+$3a

    ld d, a
    reti


    ld e, b

jr_07c_5d79:
    rst $10
    ld e, b
    ret c

    ld d, a
    rst $10
    jr c, @+$5a

    ret c

    ld d, a
    rst $10
    ld e, b
    reti


jr_07c_5d85:
    ld e, b
    ret c

    and a
    cp b

jr_07c_5d89:
    ret z

    db $dd
    ld d, a
    ld e, b
    rst $10
    ld e, b
    ret c

    ld d, a
    rst $10
    jr c, jr_07c_5dec

    ret c

    ld d, a
    ld e, b
    reti


    ld e, b

jr_07c_5d99:
    ld d, a
    rst $10

jr_07c_5d9b:
    ld e, b
    ret c

    ld e, b
    sbc $ff

jr_07c_5da0:
    ret nc

    ld bc, $37d1
    jr jr_07c_5dbe

    scf

jr_07c_5da7:
    jr jr_07c_5dc1

    scf

jr_07c_5daa:
    jr jr_07c_5dc4

    scf
    jr c, jr_07c_5de7

    scf

jr_07c_5db0:
    jr c, jr_07c_5dca

    scf
    ld [$1738], sp
    jr c, jr_07c_5dc0

    scf
    ld [$dd38], sp
    rst $18
    inc bc

jr_07c_5dbe:
    rla
    rst $10

jr_07c_5dc0:
    adc b

jr_07c_5dc1:
    ret c

    jr c, jr_07c_5d9b

jr_07c_5dc4:
    add a
    ret c

    jr jr_07c_5de0

    scf
    rst $10

jr_07c_5dca:
    adc b
    ret c

    jr jr_07c_5de5

    jr c, jr_07c_5da7

    adc b
    ret c

    ldh [rNR22], a
    rst $10
    ld l, b
    ret c

    jr c, jr_07c_5db0

    add a
    ret c

    jr @+$1a

    scf
    rst $10
    adc b

jr_07c_5de0:
    ret c

    jr jr_07c_5e1a

    jr c, jr_07c_5e1d

jr_07c_5de5:
    sbc $ff

jr_07c_5de7:
    ret nc

    ld bc, $11dc
    push hl

jr_07c_5dec:
    nop
    and $b4
    add sp, $07
    ld [$eb01], a
    ld e, $d4
    ld e, c
    ld e, d
    add hl, bc
    ld e, d
    add hl, bc
    ld c, d
    add hl, sp
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ret c

    ret c

    ret c

    xor c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    db $dd
    call nc, $02df
    and $94
    add [hl]
    and $64
    add [hl]
    and $44
    add [hl]
    ldh [$e6], a
    sub h
    adc c

jr_07c_5e1a:
    ld h, [hl]
    and $64

jr_07c_5e1d:
    ld h, [hl]
    and $44
    ld h, [hl]
    and $94
    and [hl]
    and $74
    and [hl]
    and $64
    and [hl]
    and $54
    and [hl]
    and $44
    and [hl]
    and $34
    and [hl]
    and $24
    and [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rst $18
    ld [bc], a
    and $94
    add [hl]
    and $74
    add [hl]
    and $54
    add [hl]
    ldh [$e6], a
    sub h
    adc c
    ld h, [hl]
    and $74
    ld h, [hl]
    and $54
    ld h, [hl]
    and $94
    ld [hl], $e6
    add h
    ld [hl], $e6
    ld [hl], h
    ld [hl], $e6
    ld h, h
    ld [hl], $e6
    ld d, h
    ld [hl], $e6
    ld b, h
    ld [hl], $e6
    inc [hl]
    ld [hl], $09
    add hl, bc
    add hl, bc
    rrca
    sbc $ff
    ret nc

    ld bc, $11dc
    push hl
    nop
    add sp, $06
    ld [$eb01], a
    ld e, $d3
    and $92
    ld a, c
    ld a, d
    add hl, bc
    ld a, d
    add hl, bc
    ld l, d
    ld e, c
    ld a, [bc]
    ld c, c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    db $dd
    and $92
    adc c
    and $62
    adc d
    and $92
    add hl, de
    and $62
    ld a, [de]
    and $92
    ld c, c
    and $62
    ld c, d
    and $92
    adc c
    and $62
    adc d
    and $92
    xor c
    and $62
    xor d
    and $92
    add hl, sp
    and $62
    ld a, [hl-]
    and $92
    ld l, c
    and $62
    ld l, d
    and $92
    xor c
    and $62
    xor d
    sbc $ff
    ret nc

    ld bc, $11dc
    rst $20
    ld a, [bc]
    and $20
    add sp, $07
    jp nc, Jump_000_1a19

    reti


    add hl, de
    ld a, [de]
    reti


    add hl, de
    ret c

    jp z, $d9b9

    cp d
    xor c
    reti


    xor d
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    db $dd
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
    sbc c
    reti


    sbc d
    adc c
    reti


    adc d
    reti


    adc c
    reti


    adc d
    reti


    adc c
    reti


    adc d
    adc c
    reti


    adc d
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
    sbc c
    reti


    sbc d
    adc c
    reti


    adc d
    reti


    adc c
    reti


    adc d
    add hl, sp
    reti


    ld a, [hl-]
    reti


    add hl, sp
    reti


    ld a, [hl-]
    sbc $ff
    ret nc

    ld a, [hl+]
    pop de
    db $dd
    inc bc
    sbc $ff

    db $d0, $01, $dc, $11, $e5, $80, $e6, $b0, $e8, $07, $ea, $01, $eb, $14, $d3, $66
    db $07, $a6, $07, $d7, $16, $07, $56, $d8, $87, $06, $c7, $d7, $36, $07

    add [hl]
    rlca
    ret c

    add $07
    rst $10
    inc d
    ld d, h
    and $90
    inc d
    ld d, h
    and $80
    inc d
    ld d, h
    and $70
    inc d
    ld d, h
    inc d
    and $60
    ld d, h
    inc d
    ld d, h
    and $50
    inc d
    ld d, h
    inc d
    and $40
    ld d, h
    inc d
    ld d, h
    and $30
    inc d
    ld d, h
    inc d
    and $20
    ld d, h
    inc d
    ld d, h
    db $dd
    and $b0
    db $d3
    db $76
    rlca
    db $76
    rlca
    add [hl]
    rlca
    add [hl]
    rst $10
    rla
    ld b, $17
    ret c

    add [hl]
    rlca
    rst $10
    ld d, $07
    ld b, $07
    ret c

    db $76
    rlca
    db $76
    rlca
    add [hl]
    rlca
    add [hl]
    rlca
    add [hl]
    ld [bc], a
    add $02
    rst $10
    ld [hl], $02
    ld [hl], $02
    ret c

    add $02
    add [hl]
    ld [bc], a
    db $76
    rlca
    db $76
    rlca
    add [hl]
    rlca
    add [hl]
    rst $10
    rla
    ld b, $17
    ret c

    add [hl]
    rlca
    rst $10
    ld d, $07
    ld b, $07
    ret c

    db $76
    rlca
    db $76
    rlca
    add [hl]
    rlca
    add [hl]
    add a
    ld b, $87
    and [hl]
    rlca
    and [hl]
    rlca
    ld b, $07
    sbc $ff

    db $d0, $01, $dc, $11, $e5, $80, $e6, $90, $e8, $07, $ea, $01, $eb, $14, $d3, $1e
    db $6e, $ae, $d7, $16, $d8, $37, $d9, $36, $87, $ce, $d7

    ld a, $d8
    ld a, $54
    add h
    and $70
    ld d, h
    add h
    and $60
    ld d, h
    add h
    and $50
    ld d, h
    add h
    ld d, h
    and $40
    add h
    ld d, h
    add h
    and $30
    ld d, h
    add h
    ld d, h
    and $20
    add h
    ld d, h
    add h
    and $10
    ld d, h
    add h
    ld d, h
    add h
    ld d, h
    add h
    db $dd
    and $90
    db $d3
    ld [hl], $07
    ld [hl], $07
    ld d, [hl]
    rlca
    ld d, [hl]
    add a
    ld b, $87
    ld d, [hl]
    rlca
    add [hl]
    rlca
    ld c, $36
    rlca
    ld [hl], $07
    ld d, [hl]
    rlca
    ld d, [hl]
    rlca
    ld [hl], $02
    add [hl]
    ld [bc], a
    add $02
    add $02
    add [hl]
    ld [bc], a
    ld [hl], $02
    ld [hl], $07
    ld [hl], $07
    ld d, [hl]
    rlca
    ld d, [hl]
    add a
    ld b, $87
    ld d, [hl]
    rlca
    add [hl]
    rlca
    ld c, $36
    rlca
    ld [hl], $07
    ld d, [hl]
    rlca
    ld d, [hl]
    scf
    ld b, $37
    ld d, [hl]
    rlca
    ld d, [hl]
    rlca
    ld c, $de
    rst $38

    db $d0, $01, $dc, $11, $e7, $01, $e6, $20, $e8, $08, $d1, $6e, $6e, $d7, $6e, $d8
    db $66, $87, $d9, $86, $87, $8e, $d7

    adc [hl]
    ret c

    adc [hl]
    rst $10
    ld e, $d9
    ld e, $d8
    adc [hl]
    reti


    add [hl]
    rst $10
    rla
    reti


    ld d, $1e
    rla
    ret c

    adc [hl]
    adc [hl]
    db $dd
    jp nc, $02df

    ld a, $d9
    ld a, $d8
    xor [hl]
    reti


    and [hl]
    rst $10
    rla
    reti


    ld d, $1e
    rla
    ret c

    adc [hl]
    rst $10
    ld e, $3e
    reti


    ld a, $d8
    xor [hl]
    reti


    and [hl]
    add a
    reti


    add [hl]
    adc [hl]
    rst $10
    add a
    ret c

    xor [hl]
    rst $10
    xor [hl]
    ldh [$de], a
    rst $38

    db $d0, $01, $d1, $1e, $1e, $3e, $06, $17, $06, $1e, $17

    ld a, $1e
    ld [c], a
    or h
    ld h, b
    db $dd
    ld [c], a
    or h
    ld h, b
    sbc $ff
    ld e, $06
    rla
    ld a, $06
    rla
    ld b, $1e
    rla
    ld a, $1e
    db $e3
    ret nc

    ld bc, $11dc
    push hl
    ld b, b
    add sp, $06
    pop de
    rst $18
    ld [bc], a
    and $70
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $80
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $90
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $b0
    ld d, [hl]

Call_07c_60e6:
    ld d, a
    and $d0
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $e0
    ld d, [hl]
    ld d, a
    and $d0
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $b0
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $90
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $80
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    ldh [$e6], a
    ld [hl], b
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $80
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $90
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $b0
    db $76
    ld [hl], a
    and $d0
    rst $10
    db $76
    ret c

    ld [hl], a
    and $e0
    db $76
    ld [hl], a
    and $d0
    rst $10
    db $76
    ret c

    ld [hl], a
    and $b0
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $90
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $80
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $70
    add [hl]
    add a
    rst $10
    add [hl]
    ret c

    add a
    and $80
    add [hl]
    add a
    rst $10
    add [hl]
    ret c

    add a
    and $90
    add [hl]
    add a
    rst $10
    add [hl]
    ret c

    add a
    and $b0
    add [hl]
    add a
    and $d0
    rst $10
    add [hl]
    ret c

    add a
    and $e0
    and [hl]
    and a
    and $d0
    rst $10
    and [hl]
    ret c

    and a
    and $b0
    and [hl]
    and a
    rst $10
    and [hl]
    ret c

    and a
    and $90
    and [hl]
    and a
    rst $10
    and [hl]
    ret c

    and a
    and $80
    and [hl]
    and a
    rst $10
    and [hl]
    ret c

    and a
    sbc $ff
    ret nc

    ld bc, $11dc
    push hl
    ld b, b
    add sp, $06
    db $e4
    cp $d1
    ld b, $07
    db $dd
    rst $18
    ld [bc], a
    and $40
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $50
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $60
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $80
    ld d, [hl]
    ld d, a
    and $a0
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $b0
    ld d, [hl]
    ld d, a
    and $a0
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $80
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $60
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    and $50
    ld d, [hl]
    ld d, a
    rst $10
    ld d, [hl]
    ret c

    ld d, a
    ldh [$e6], a
    ld b, b
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $50
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $60
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $80
    db $76
    ld [hl], a
    and $a0
    rst $10
    db $76
    ret c

    ld [hl], a
    and $b0
    db $76
    ld [hl], a
    and $a0
    rst $10
    db $76
    ret c

    ld [hl], a
    and $80
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $60
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $50
    db $76
    ld [hl], a
    rst $10
    db $76
    ret c

    ld [hl], a
    and $40
    add [hl]
    add a
    rst $10
    add [hl]
    ret c

    add a
    and $50
    add [hl]
    add a
    rst $10
    add [hl]
    ret c

    add a
    and $60
    add [hl]
    add a
    rst $10
    add [hl]
    ret c

    add a
    and $80
    add [hl]
    add a
    and $a0
    rst $10
    add [hl]
    ret c

    add a
    and $b0
    and [hl]
    and a
    and $a0
    rst $10
    and [hl]
    ret c

    and a
    and $80
    and [hl]
    and a
    rst $10
    and [hl]
    ret c

    and a
    and $60
    and [hl]
    and a
    rst $10
    and [hl]
    ret c

    and a
    and $50
    and [hl]
    and a
    rst $10
    and [hl]
    ret c

    and a
    sbc $ff
    ret nc

    ld bc, $11dc
    rst $20
    ld a, [bc]
    and $20
    add sp, $07
    pop de
    rst $18
    ld [$535e], sp
    ld a, [bc]
    ld e, [hl]
    ld d, e
    ld a, [bc]
    ldh [$df], a
    inc b
    ld a, [hl]
    ld [hl], e
    ld a, [bc]
    ld a, [hl]
    ld [hl], e
    ld a, [bc]
    ldh [$df], a
    ld [bc], a
    adc [hl]
    add e
    ld a, [bc]
    adc [hl]
    add e
    ld a, [bc]
    ldh [$df], a
    ld [bc], a
    xor [hl]
    and e
    ld a, [bc]
    xor [hl]
    and e
    ld a, [bc]
    ldh [$de], a
    rst $38
    ret nc

    ld bc, $dfd1
    db $10
    ld e, $d7
    adc [hl]
    ret c

    ld e, $d7
    adc [hl]
    ret c

    ldh [$de], a
    rst $38

    db $dc, $11, $e5, $40, $e6, $b0, $e8, $07, $ea, $01, $eb, $19, $ee, $22, $d4, $d0
    db $01, $36, $3d, $3d, $36, $3d, $5d, $d0, $07, $01, $d8, $51, $01, $d0, $01, $d3
    db $94, $a8, $06, $d0, $07, $51, $00

    and c
    ld bc, $d7c1
    ld hl, $2131
    nop
    ret c

    pop bc
    nop
    and c
    rlca
    and c
    nop
    ld d, c
    nop
    and c
    ld bc, $d7c1
    ld hl, $5131
    nop
    ld sp, $2100
    ld bc, $c1d8
    and c
    sub c
    and c
    dec b
    pop bc
    nop
    and c
    nop
    sub c
    and c
    dec b
    and c
    nop
    pop bc
    nop
    rst $10
    ld hl, $31d4
    nop
    ld hl, $d800
    pop bc
    and c
    nop
    sub c
    nop

jr_07c_631c:
    and c
    pop bc
    inc bc

jr_07c_631f:
    ld d, c
    rlca
    ret nc

    ld bc, $28d3
    jr z, @+$2b

    jr c, @+$5a

    ld a, c

jr_07c_632a:
    sbc b
    reti


    sbc b

jr_07c_632d:
    xor b
    reti


    xor c
    ret z

    reti


    ret


    rst $10
    dec l
    dec c
    ld [$2928], sp
    ret nc

    rlca
    ld hl, $ff05

    db $d0, $07, $dc, $11, $e5, $40, $e8, $07, $ea, $01, $eb, $19, $ee, $22, $d3, $e6
    db $a0, $d0, $01, $c6, $cd, $cd, $86, $cd, $d7, $2d, $d0, $07, $01, $d8, $a1, $01
    db $d3, $e2, $d5, $63

    ld d, c
    nop
    ld sp, $5100
    ld [hl], c

jr_07c_6368:
    nop
    ld d, c
    nop
    ld sp, $d5e2
    ld h, e
    rst $10
    ld hl, $d800
    pop bc
    nop
    and c
    ld bc, $7191
    ld d, c
    jr nc, jr_07c_631c

    ld [hl], b
    jr nc, jr_07c_631f

    ld [hl], b
    jr nc, @-$26

    and c
    and c
    ld [hl], b
    ld sp, $d7a1
    jr nz, jr_07c_632a

    ld d, b
    jr nz, jr_07c_632d

    ld d, b
    jr nz, jr_07c_6368

    and c
    and c
    ld d, b
    ld hl, $d3a1
    pop bc
    nop
    and c
    nop
    sub c
    ld [hl], c
    nop
    ld d, c
    nop
    ld [hl], c
    ld d, b
    ret nz

    sub b
    ld d, b
    ret c

    ret nz

    sub b
    ld d, b
    pop bc
    pop bc
    sub b
    ld d, c
    pop bc
    ret nc

    ld bc, $a4d2
    inc bc
    and h
    inc bc
    and h
    inc b
    call nz, $d703
    inc h
    inc bc
    inc [hl]
    inc b
    db $d3
    ld e, b
    reti


    ld d, h
    inc bc
    ld a, b
    reti


    ld [hl], h
    inc b
    sbc b
    reti


    sub h
    inc b
    ret c

    xor l
    dec c
    ld [$a9a8], sp
    ret nc

    rlca
    and c
    dec b
    rst $38

    db $d3, $51, $00, $21, $00

    ld sp, $0071
    ld d, c
    nop
    db $31
    db $e3

    db $d0, $07, $dc, $11, $e7, $01, $e6, $20, $e8, $07, $ea, $04, $eb, $14, $d1, $80
    db $80, $00, $80, $00, $80, $80, $00, $a1, $05, $e2, $5c, $64

    pop de
    and b
    and b
    rst $10
    and c
    ld d, b
    ret c

    ld d, d
    rst $10
    ld [hl-], a
    ld [hl+], a
    ret c

    sub c
    ld [c], a
    ld e, h
    ld h, h
    and d
    ld d, d
    and c
    rst $10
    ld d, d
    ret c

    jp nz, $d751

    jr nc, @-$26

    and b
    rst $10
    ld sp, $d830
    and d
    rst $10
    ld [hl-], a
    ret c

    and d
    ld sp, $a2d1
    ld d, d
    and c
    and d
    rst $10
    ld d, d
    ret c

    and c
    rst $18
    ld [bc], a
    rst $10
    ld [hl-], a
    ret c

    and d
    rst $10
    ld sp, $e0d8
    rst $18
    ld [bc], a
    rst $10
    ld d, d
    ret c

    jp nz, $e051

    ret nc

    ld bc, $a8d1
    sbc b
    ld a, c
    ld e, b
    ld a, b
    sbc c
    ld e, b
    reti


    ld e, b
    rst $10
    ld e, b
    reti


    ld e, c
    ret c

    ld e, b
    reti


    ld e, c
    xor l
    dec c
    ld [$a9a8], sp
    ret nc

    rlca
    and c
    dec b
    rst $38

    db $d1, $a2, $d7, $52, $d8

    ld d, c
    rst $10
    ld [hl-], a
    ld [hl+], a
    ret c

    sub c
    db $e3

    db $d0, $07, $d1, $30, $30, $00, $30, $00, $30, $30, $00, $33, $a3, $e2, $b0, $64

    ld [c], a
    or b
    ld h, h
    ld [c], a
    or b
    ld h, h
    ld [de], a
    db $10
    inc de
    ld [de], a
    db $10
    jr nc, jr_07c_64b5

    jr nc, jr_07c_64b7

    rst $18
    ld [bc], a
    ld [c], a
    or a
    ld h, h
    ld [de], a
    db $10
    inc sp
    ld [de], a
    db $10
    ld sp, $e031
    ret nc

    ld bc, $58d7
    ld e, b
    ld e, c
    ret c

    cp b
    cp a
    ld [bc], a
    xor a
    ld bc, $02af
    xor a
    ld [bc], a
    jr c, jr_07c_64ae

    add hl, bc
    ld [$3938], sp
    xor a
    ld bc, $0f09

jr_07c_64ae:
    dec bc
    rst $38

    db $12, $10, $13

    ld [de], a
    db $10

jr_07c_64b5:
    inc de
    db $e3

jr_07c_64b7:
    ld [de], a
    db $10
    inc sp
    ld [de], a
    db $10
    inc sp
    db $e3
    call c, $ea11
    dec bc
    db $eb
    add hl, de

jr_07c_64c4:
    push hl
    add b
    add sp, $07

jr_07c_64c8:
    db $d3
    and $c0
    rst $18
    ld [bc], a
    ret nc

    inc de
    and e
    sub b
    and b
    ret nz

    rst $10
    jr nz, jr_07c_64ae

    ld d, l
    ld d, c
    ld [hl], e
    sub b
    and b
    ret nz

    rst $10
    ld d, b
    ld [hl-], a
    ret nc

    ld bc, $d828
    ret


    rst $10
    jr c, @-$25

    add hl, sp
    reti


    jr c, jr_07c_64c4

    add hl, sp
    reti


    jr c, jr_07c_64c8

    add hl, sp
    reti


    jr c, jr_07c_64fc

    ret c

    ld a, b
    reti


    ld a, c
    reti


    ld a, b
    reti


    ld a, c
    reti


jr_07c_64fc:
    ld a, b

jr_07c_64fd:
    reti


    ld a, c
    reti


    ld a, b
    add hl, bc
    sbc b
    reti


    sbc c
    sub l
    and l
    sub [hl]
    ret nc

    inc de
    ld [hl], b
    sub b
    and d
    add sp, $03
    ld d, b
    add sp, $07
    ld d, e
    ld [hl], d
    add sp, $03
    ld [hl], b
    add sp, $07
    and b
    sub b
    ld [hl], b
    sub b
    and a
    ldh [$e6], a
    or b
    rst $10
    ld [hl+], a
    jr nz, jr_07c_64fd

    ret nz

    rst $10
    jr nz, jr_07c_6559

    ld d, b
    ret c

    and d
    and b
    rst $10
    ld d, e
    ld h, d
    ret nc

    ld bc, $3958
    ret nc

    inc de
    ld d, c
    ret c

    and c
    rst $10
    ld [hl-], a
    ret nc

    ld bc, $d828
    ret


    ret nc

    inc de
    rst $10
    ld hl, $a1d8
    jp $d7c0


    jr nz, jr_07c_657b

    ld [hl], b
    ret nc

    ld bc, $d958
    ld e, c
    reti


    ld e, b
    reti


    ld e, c
    reti


    ld e, b
    reti


    ld e, c

jr_07c_6559:
    reti


    ld e, b
    add hl, bc

jr_07c_655c:
    ret nc

    inc de
    jr nc, jr_07c_6580

    ret c

    ret nz

jr_07c_6562:
    rst $10
    jr nz, @-$26

    and c
    nop
    ret nc

    ld bc, $a9a8
    ret nc

    inc de
    rst $10
    ld d, e
    ret c

    and c
    nop
    ret nc

    ld bc, $a9a8
    rst $10
    adc b
    reti


    adc c
    reti


jr_07c_657b:
    adc b
    ld a, c
    reti


    ld a, b
    reti


jr_07c_6580:
    ld a, c
    jr c, jr_07c_655c

    add hl, sp
    ret nc

    inc de
    ld d, a
    inc [hl]
    jr nz, jr_07c_6562

    ret nz

    sub b
    sbc $ff
    ret nc

    inc de
    call c, $ea11

jr_07c_6593:
    ld bc, $19eb
    and $90
    add sp, $07

jr_07c_659a:
    push hl
    ld b, b
    db $d3
    ld d, b
    ret c

    and b
    rst $10
    jr nz, jr_07c_65f3

    ret c

    sub b

jr_07c_65a5:
    rst $10
    jr nz, jr_07c_65f8

    ret c

    sub b
    ld [hl], b

jr_07c_65ab:
    and b
    rst $10
    rst $10
    ld d, b
    ret c

    ret c

    ld [hl], b
    ld d, b
    sub b
    rst $10
    rst $10
    ld d, b
    ret c

    ret nz

    jr nc, jr_07c_6593

    ld [hl], b

jr_07c_65bc:
    and b
    rst $10
    jr nc, jr_07c_6610

    jr nz, jr_07c_659a

    sub b
    ld d, b
    ret nz

    jr nc, jr_07c_6637

    ret nz

    and b
    ld d, b
    rst $10
    jr nz, jr_07c_65a5

    and b
    ld [hl], b
    and b
    rst $10
    jr nc, jr_07c_65ab

    ld [hl], b
    ld d, b
    sub b
    ret nz

    ld d, b
    and b
    rst $10
    jr nz, jr_07c_662c

jr_07c_65dc:
    ret c

    and b
    ld d, b
    sub b
    ret nz

    rst $10
    rst $10
    ld d, b
    ret c

    ret c

    jr nc, jr_07c_6658

    and b
    rst $10
    jr nc, jr_07c_65bc

    ld bc, $58d8
    xor c
    ret z

    rst $10
    ld e, c

jr_07c_65f3:
    ret c

    ld e, b
    sbc c
    ret z

    rst $10

jr_07c_65f8:
    ld e, c
    ret nc

    inc de

jr_07c_65fb:
    ret c

    and b
    ld d, b
    and b
    rst $10
    jr nz, jr_07c_6652

jr_07c_6602:
    jr nz, jr_07c_65dc

    and b
    ld d, b
    db $d3
    ld d, b
    ret c

    and b
    rst $10
    jr nz, jr_07c_665d

jr_07c_660d:
    ret c

    sub b
    rst $10

jr_07c_6610:
    jr nz, jr_07c_6662

    ret c

jr_07c_6613:
    sub b
    ld [hl], b
    and b
    rst $10
    ld d, b
    ret c

    ld [hl], b
    ld d, b
    sub b
    rst $10
    ld d, b
    ret c

    ret nz

    rst $10
    jr nc, jr_07c_65fb

    ld [hl], b

jr_07c_6624:
    and b
    rst $10
    jr nc, jr_07c_6678

    jr nz, jr_07c_6602

    sub b
    ld d, b

jr_07c_662c:
    ret nz

    jr nc, jr_07c_669f

    ret nz

    and b
    ld d, b
    rst $10
    jr nz, jr_07c_660d

    and b
    ld [hl], b

jr_07c_6637:
    and b
    rst $10
    jr nc, jr_07c_6613

    ld [hl], b
    ld d, b
    sub b
    ret nz

    ld d, b
    and b
    rst $10
    jr nz, jr_07c_6694

jr_07c_6644:
    ret c

    and b
    ld d, b
    sub b
    ret nz

    rst $10
    rst $10
    ld d, b
    ret c

    ret c

    jr nc, jr_07c_66c0

    and b
    rst $10

jr_07c_6652:
    jr nc, jr_07c_6624

    ld bc, $58d8
    xor c

jr_07c_6658:
    ret z

    rst $10
    ld e, c
    ret c

    ld e, b

jr_07c_665d:
    sbc c
    ret z

    rst $10
    ld e, c
    ret nc

jr_07c_6662:
    inc de
    ret c

    and b
    ld d, b
    and b
    rst $10
    jr nz, jr_07c_66ba

    jr nz, jr_07c_6644

    and b
    ld d, b
    push hl
    add b
    and $80
    db $d3
    and d
    and b
    sub b
    and b
    ret nz

jr_07c_6678:
    rst $10
    jr nz, @-$26

    ld d, d
    ld d, b
    and e
    rst $10
    ld [hl-], a
    ret nc

    ld bc, $d828
    ret


    ret nc

    inc de
    rst $10
    ld hl, $51d8
    jp nz, Jump_000_01d0

    xor b
    sbc c
    ret nc

    inc de
    and c
    ld d, c

jr_07c_6694:
    ld d, e
    ld d, b
    and b
    ret nz

    rst $10
    jr nc, @-$2e

    ld bc, $c8d8
    reti


jr_07c_669f:
    ret


    reti


    ret z

    reti


jr_07c_66a3:
    ret


    reti


    ret z

    reti


    ret


    reti


    ret z

    add hl, bc
    ret nc

    inc de
    ret nz

    and b
    sub b
    and b
    ld d, c
    nop
    ret nc

    ld bc, $5958
    ret nc

    inc de
    and e

jr_07c_66ba:
    ld d, c
    nop
    ret nc

    ld bc, $5958

jr_07c_66c0:
    rst $10
    jr c, @-$25

    add hl, sp
    reti


    jr c, jr_07c_6700

    reti


    jr c, jr_07c_66a3

    add hl, sp
    ret c

    xor b

jr_07c_66cd:
    reti


    xor c
    ret nc

    inc de
    and a
    call nz, $90a0
    ld d, b
    sbc $ff
    ret nc

    inc de
    jp hl


    nop
    call c, $e711
    ld bc, $20e6
    add sp, $07
    pop de
    rst $18
    ld [bc], a
    and d
    and b
    sub d
    sub b
    ld [hl], d
    ld [hl], b
    ld d, d
    ld d, b
    rst $10
    ld [hl-], a
    jr nc, jr_07c_6715

    jr nz, jr_07c_66cd

    jp nz, $a1c0

    and c
    rst $10
    ld [hl-], a
    jr nc, jr_07c_674e

    ret c

    ld d, c
    and d

jr_07c_6700:
    and b
    ld d, c
    ld d, c
    ld [hl-], a
    jr nc, jr_07c_6757

    ld d, c
    and d
    and b
    ld d, c
    and b
    ld d, b
    ldh [$a0], a
    and b
    and b
    and b
    sub b
    sub b
    sub b
    sub b

jr_07c_6715:
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    rst $10
    jr nc, jr_07c_6750

    jr nc, jr_07c_6752

    jr nz, jr_07c_6744

    jr nz, jr_07c_6746

    ret c

    ret nz

    ret nz

    ret nz

    ret nz

    and b
    and b
    and b
    and b
    sub b
    sub b
    sub b
    sub b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    rst $10
    jr nc, jr_07c_676e

    jr nc, jr_07c_6770

    ret c

    and b
    and b
    and b

jr_07c_6744:
    and b
    sub b

jr_07c_6746:
    sub b
    sub b
    sub b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    rst $10

jr_07c_674e:
    jr nc, @+$32

jr_07c_6750:
    jr nc, jr_07c_6782

jr_07c_6752:
    ret c

    and b
    and b
    and b
    and b

jr_07c_6757:
    sub b
    sub b
    sub b
    sub b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    sub b
    sbc $ff
    ret nc

    ld bc, $dfd1
    inc bc
    ld [c], a
    sbc [hl]
    ld h, a
    ld [c], a

jr_07c_676e:
    or a
    ld h, a

jr_07c_6770:
    ld [c], a
    sbc [hl]
    ld h, a
    ld [c], a
    sbc [hl]
    ld h, a
    ld [c], a
    sbc [hl]
    ld h, a
    ld [c], a
    or a
    ld h, a
    ld [c], a
    sbc [hl]
    ld h, a
    jr jr_07c_678a

    rst $10

jr_07c_6782:
    adc b
    ret c

    add hl, bc
    jr jr_07c_6790

    rst $10
    adc b
    ret c

jr_07c_678a:
    add hl, bc
    jr @+$0b

    rst $10
    adc b
    ret c

jr_07c_6790:
    add hl, bc
    jr jr_07c_679c

    jr c, jr_07c_67ce

    ldh [$e2], a
    sbc [hl]
    ld h, a
    ld [c], a
    or a
    ld h, a

jr_07c_679c:
    sbc $ff
    jr jr_07c_67a9

    rst $10
    adc b
    ret c

    add hl, bc
    jr jr_07c_67af

    rst $10
    adc b
    ret c

jr_07c_67a9:
    add hl, bc
    jr jr_07c_67b5

    rst $10
    adc b
    ret c

jr_07c_67af:
    add hl, bc
    jr jr_07c_67bb

    rst $10
    adc b
    adc c

jr_07c_67b5:
    ret c

    db $e3
    jr jr_07c_67c2

    rst $10
    adc b

jr_07c_67bb:
    ret c

    add hl, bc
    jr jr_07c_67c8

    rst $10
    adc b
    ret c

jr_07c_67c2:
    add hl, bc
    jr jr_07c_67ce

    rst $10
    adc b
    ret c

jr_07c_67c8:
    add hl, bc
    jr c, @+$0b

    rst $10
    adc b
    adc c

jr_07c_67ce:
    ret c

    db $e3

    db $d0, $01, $dc, $11, $ea, $01, $eb, $1e, $e5, $80, $e6, $b0, $e8, $07, $ee, $33
    db $d3, $e2, $a4, $68, $d4, $58, $d9, $59, $d9, $59, $d9, $59, $e2, $20, $69, $d4
    db $38, $d9, $39, $09, $39, $d9, $38, $09, $39, $d9, $39, $58, $79, $09, $59, $d9
    db $58, $d9, $59, $d9, $59, $d9, $59, $d9, $58, $d9, $59, $d9, $59, $d9, $59, $d9
    db $58, $d9, $59, $09, $09, $e2, $20, $69, $d4, $38, $d9, $39, $09, $29, $d9, $28
    db $09, $d8, $c9, $d9, $c9, $a8, $99, $d9, $99, $a9, $d9, $a8, $d9, $a9, $d9, $a9
    db $d9, $a9, $d9, $a8, $d9, $a9, $d9, $a9, $d9, $a9, $d9, $a8, $d9, $a9, $d9, $a9
    db $d9, $a9, $e2, $a4, $68

    call nc, $d958
    ld e, c
    reti


    ld e, c
    reti


jr_07c_684c:
    ld e, c
    ld [c], a
    ld c, c
    ld l, c
    call nc, $d938
    add hl, sp
    add hl, hl
    add hl, sp
    reti


    jr c, @+$5b

    add hl, sp
    reti


    add hl, sp
    jr z, @-$26

    ret


    reti


    ret


    rst $10
    add hl, hl
    ld [$3909], sp
    reti


    add hl, sp
    reti


    jr c, @-$25

    add hl, sp
    reti


    add hl, sp
    reti


jr_07c_686f:
    add hl, sp
    reti


    jr c, jr_07c_684c

    add hl, sp
    reti


    add hl, sp
    reti


jr_07c_6877:
    add hl, sp
    ld [c], a
    ld c, c
    ld l, c
    call nc, $d978
    ld a, c
    ld e, c
    add hl, sp
    reti


    jr c, @+$2b

    ret c

    ret


    reti


    ret


    xor b
    ret


    reti


    ret


    rst $10
    add hl, hl
    ld [$3909], sp
    reti


    add hl, sp
    reti


    jr c, jr_07c_686f

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    reti


    jr c, jr_07c_6877

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    db $de

    db $d3, $e2, $f8, $68, $d4, $08, $09, $44, $54, $d9, $59, $08, $d8, $39, $d9, $39
    db $09, $28, $d9, $29, $09, $39, $43, $54, $d9, $59, $d9, $59, $d9, $59, $d9, $58
    db $d9, $59, $d9, $59, $d9, $59, $d9, $58, $d9, $59, $d9, $59, $d9, $59, $e2, $f8
    db $68, $d4, $08, $09, $44, $54, $d9, $59, $08, $29, $d9, $29, $09, $38, $d9, $39
    db $09, $59, $43, $54, $d9, $59, $d9, $59, $d9, $59, $d9, $58, $d9, $59, $d9, $59
    db $d9, $59, $d9, $e3, $d3, $58, $d9, $59, $99, $a9, $d9, $a8, $c9, $d9, $c9, $09
    db $d7, $23, $34, $d9, $39, $09, $29, $d8, $c8, $d9, $c9, $a9, $99, $d9, $98, $a9
    db $09, $09, $d7, $43, $54, $d9, $59, $d9, $59, $d8, $59, $e3, $d4, $38, $d9, $39
    db $09, $39, $d9, $38, $09, $39, $d9, $39, $28, $39, $09, $59, $d9, $58, $d9, $59
    db $d9, $59, $d9, $59, $d9, $58, $d8, $a9, $d9, $a9, $d9, $a9, $d9, $a8, $d9, $a9
    db $d9, $a9, $d9, $a9, $e3

    call nc, $d938
    add hl, sp
    add hl, hl
    ret c

    ret


    reti


    ret z

    xor c
    sbc c
    reti


    sbc c
    xor b
    ret


    reti


    ret


    rst $10
    add hl, hl
    ld [$3909], sp
    reti


    add hl, sp
    reti


    jr c, @-$25

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    reti


    jr c, @-$25

    add hl, sp
    reti


    add hl, sp
    reti


    add hl, sp
    db $e3

    db $d0, $01, $dc, $11, $ea, $01, $eb, $1e, $e5, $80, $e8, $07, $ee, $33, $d3, $09
    db $05, $e6, $60, $e2, $a4, $68, $d4, $58, $d9, $59, $d9, $53, $e6, $80, $e2, $4c
    db $6a, $d3, $a8, $d9, $a9, $09, $a9, $d9, $a8, $09, $a9, $d9, $a9, $d7, $28, $39
    db $09, $29, $d9, $28, $d9, $29, $d9, $29, $d9, $29, $d9, $28, $d9, $29, $d9, $29
    db $d9, $29, $d9, $28, $d9, $29, $09, $09, $e2, $4c, $6a, $d3, $c8, $d9, $c9, $09
    db $a9, $d9, $a8, $09, $99, $d9, $99, $78, $59, $d9, $59, $59, $d9, $58, $d9, $59
    db $d9, $59, $d9, $59, $d9, $58, $d9, $59, $d9, $59, $d9, $59, $d9, $58, $d9, $59
    db $d9, $59, $d9, $59, $09, $05, $e6, $60, $e2, $a4, $68

    call nc, $d958
    ld e, c
    reti


    ld d, e
    and $80
    ld [c], a
    db $76
    ld l, d
    db $d3
    ret z

    reti


    ret


    xor c
    ret


    reti


    ret z

    rst $10
    add hl, hl
    ret c

    ret


    reti


    ret


    xor b
    sbc c
    reti


    sbc c
    xor c
    ld [$c909], sp
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


    reti


    ret z

    reti


    ret


    reti


    ret


    reti


    ret


    ld [c], a
    db $76
    ld l, d
    call nc, $d938
    add hl, sp
    add hl, hl
    ret c

    ret


    reti


    ret z

    xor c
    sbc c
    reti


    sbc c
    ld a, b
    sbc c
    reti


    sbc c
    xor c
    ld [$c909], sp
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


    reti


    ret z

    reti


    ret


    reti


    ret


    reti


    ret


    sbc $ff

    db $d3, $a8, $d9, $a9, $09, $a9, $d9, $a8, $09, $a9, $d9, $a9, $78, $a9, $09, $d7
    db $29, $d9, $28, $d9, $29, $d9, $29, $d9, $29, $d9, $28, $d8, $59, $d9, $59, $d9
    db $59, $d9, $58, $d9, $59, $d9, $59, $d9, $59, $e3

    db $d3
    ret z

    reti


    ret


    xor c
    sbc c
    reti


    sbc b
    ld a, c
    ld e, c
    reti


    ld e, c
    ld a, b
    sbc c
    reti


    sbc c
    xor c
    ld [$c909], sp
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


    reti


    ret z

    reti


    ret


    reti


    ret


    reti


    ret


    db $e3

    db $d0, $01, $e9, $00, $dc, $11, $e7, $08, $e6, $20, $e8, $07, $d2, $e2, $39, $6b
    db $d2, $39, $d9, $39, $49, $e2, $39, $6b, $d1, $c9, $d9, $c9, $d9, $c9, $e2, $88
    db $6b, $d1, $58, $a9, $d9, $a9, $59, $e2, $88, $6b, $d1, $a8, $59, $d9, $59, $a9
    db $e2, $88, $6b, $d1, $58, $a9, $d9, $a9, $59, $c8, $d9, $c9, $09, $c9, $d9, $c8
    db $09, $d7, $59, $d9, $59, $d8, $58, $d7, $59, $d9, $59, $d8, $59, $a8, $d9, $a9
    db $09, $a9, $d9, $a8, $09, $a9, $d9, $a9, $d9, $a8, $59, $d9, $59, $a9, $e2, $39
    db $6b, $d2, $39, $d9, $39, $49, $e2, $39, $6b

    pop de
    ret


    reti


jr_07c_6b09:
    ret


    reti


    ret


    rst $18
    rlca
    ld e, b
    reti


    ld e, c
    ld e, c
    rst $10
    ld e, c
    reti


    ld e, b
    ret c

    ld e, c
    ld e, c
    reti


    ld e, c
    ld e, b
    rst $10
    ld e, c
    reti


    ld e, c
    ret c

    ld e, c
    ldh [$38], a
    reti


    add hl, sp
    add hl, sp
    rst $10
    add hl, sp
    reti


    jr c, @-$26

    add hl, sp
    add hl, sp
    reti


    add hl, sp
    jr c, jr_07c_6b09

    add hl, sp
    reti


    add hl, sp
    ret c

    add hl, sp
    sbc $ff

    db $d2, $58, $d9, $59, $d9, $59, $39, $d9, $38, $d9, $39, $29, $d9, $29, $d9, $28
    db $d8, $c9, $d9, $c9, $59, $98, $d9, $99, $59, $a9, $d9, $a8, $d9, $a9, $c9, $d9
    db $c9, $d9, $c8, $59, $d9, $59, $d9, $59, $d7, $58, $d9, $59, $d9, $59, $d8, $59
    db $d9, $58, $d7, $59, $39, $d9, $39, $d9, $38, $d8, $59, $d9, $59, $d7, $39, $58
    db $d9, $59, $d9, $59, $39, $d9, $38, $d9, $39, $29, $d9, $29, $d9, $28, $e3, $d2
    db $38, $d9, $39, $09, $39, $d9, $38, $09, $39, $d9, $39, $d8, $a8, $d7, $39, $d9
    db $39, $d8, $a9, $a8, $d9, $a9, $09, $a9, $d9, $a8, $09, $a9, $d9, $a9, $e3, $d0
    db $01, $d2, $e2, $66, $6c, $e2, $76, $6c, $e2, $88, $6c, $e2, $66, $6c, $e2, $66
    db $6c, $e2, $76, $6c, $e2, $88, $6c, $d2, $8f, $02, $09, $8f, $02, $89, $89, $89
    db $88, $d8, $29, $39, $39, $e2, $9a, $6c, $e2, $9a, $6c, $e2, $9a, $6c, $d1, $18
    db $09, $09, $39, $08, $09, $19, $09, $08, $39, $39, $39, $e2, $9a, $6c, $e2, $9a
    db $6c, $d1, $18, $d7, $89, $d8, $69, $39, $d7, $88, $d8, $09, $19, $d7, $89, $d8
    db $88, $39, $d7, $89, $d8, $09, $18, $d7, $89, $d8, $69, $39, $d7, $88, $d8, $09
    db $19, $d7, $89, $d8, $88, $39, $39, $39, $e2, $66, $6c, $e2, $76, $6c, $e2, $88
    db $6c, $e2, $66, $6c, $e2, $66, $6c, $e2, $76, $6c

    ld [c], a
    adc b
    ld l, h
    jp nc, Jump_000_028f

    add hl, bc
    adc a
    ld [bc], a
    adc c
    adc c
    adc c
    adc b
    ret c

    add hl, hl
    add hl, sp
    add hl, sp
    ld [c], a
    xor b
    ld l, h
    ld [c], a
    xor b
    ld l, h
    ld [c], a
    xor b
    ld l, h
    pop de
    jr @+$0b

    add hl, de
    add hl, sp
    rst $10
    adc b
    adc c
    ret c

    add hl, de
    add hl, bc
    jr @+$3b

    add hl, bc
    add hl, sp
    ld [c], a
    xor b
    ld l, h
    ld [c], a
    xor b
    ld l, h
    ld [c], a
    xor b
    ld l, h
    pop de
    jr @+$0b

    add hl, de
    add hl, sp
    rst $10
    adc b
    adc c
    ret c

    add hl, de
    add hl, bc
    jr @+$3b

    add hl, sp
    add hl, sp
    sbc $ff

    db $d2, $d0, $1d, $80, $d0, $01, $89, $08, $89, $89, $89, $88, $8f, $03, $89, $e3
    db $d2, $88, $d8, $39, $d7, $09, $8f, $02, $89, $89, $89, $88, $89, $d8, $19, $d7
    db $89, $e3, $d2, $d0, $1d, $80, $d0, $01, $89, $d8, $38, $d7, $89, $89, $89, $88
    db $8f, $03, $89, $e3, $d1, $18, $09, $09, $39, $08, $09, $19, $09, $08, $39, $09
    db $09, $e3

    pop de
    jr @+$0b

    add hl, de
    add hl, sp
    rst $10
    adc b
    adc c
    ret c

    add hl, de
    add hl, bc
    jr jr_07c_6cee

    add hl, bc
    add hl, bc
    db $e3
    ret nc

    rrca
    call c, $ea11
    ld bc, $19eb
    push hl
    nop
    and $b0
    add sp, $07
    db $d3
    and b
    rst $10
    ld d, b
    jr nc, jr_07c_6d1c

    jr nz, jr_07c_6cfe

    ld d, c
    ret c

jr_07c_6cd0:
    and c
    rst $10
    ld [hl], c
    ret nc

    ld bc, $d956
    ld d, a
    reti


    ld d, [hl]
    reti


    ld d, a
    reti


    ld d, [hl]
    reti


    ld d, a
    reti


    ld d, [hl]
    rlca
    ret nc

    rrca
    jr nc, jr_07c_6d07

    ret c

    jp Jump_07c_7051


    sub b

jr_07c_6cec:
    and b
    ret nz

jr_07c_6cee:
    and b
    sub b
    ld [hl], e
    ld d, c
    ld [hl], b
    sub b
    and b
    ret nz

    and b
    ret nz

    ret nc

    ld bc, $26d7
    reti


    daa

jr_07c_6cfe:
    reti


    ld h, $d9
    daa
    reti


    ld h, $d9
    daa
    reti


jr_07c_6d07:
    ld h, $d8
    rlca
    ret nc

    rrca
    ld d, c
    ld [hl-], a
    ld d, b
    ld [hl], b
    sub b
    and e
    ld d, c
    jr nc, jr_07c_6cec

    jr nc, jr_07c_6d37

    ret c

    ret nz

    and b
    sub b
    and e

jr_07c_6d1c:
    ld d, c
    ld [hl-], a
    ld d, b
    ld [hl], b
    sub b
    and e
    ld d, c
    ld [hl], b
    sub b
    and b
    rst $10
    jr nc, jr_07c_6d49

    jr nc, jr_07c_6d7c

    ret c

    pop bc
    ld d, c
    jr nc, jr_07c_6cd0

    sub b
    and b
    ld [hl], b
    and b
    jr nz, @-$5e

    sub b

jr_07c_6d37:
    and b
    ld d, b
    and b
    ret c

    ret nz

    rst $10
    and b
    sub b
    and b
    ld [hl], b
    and b
    sub b
    ld [hl], b
    ld d, b
    jr nc, jr_07c_6d67

    ret c

    ret nz

jr_07c_6d49:
    and d
    rst $10
    jr nz, jr_07c_6d9e

jr_07c_6d4d:
    ld sp, $a171
    ld d, b
    ld b, b
    ld d, b
    ld [hl], b
    ld d, b
    ld b, b
    jr nc, jr_07c_6d78

    ret c

    ret nz

    and b
    sub c
    sbc $ff
    ret nc

    rrca
    call c, $ea11
    ld bc, $19eb
    push hl

jr_07c_6d67:
    nop
    and $70
    add sp, $07
    jp nc, $d750

    jr nz, jr_07c_6d49

    ret nz

    rst $10
    jr nz, jr_07c_6d4d

    and b
    ret nz

    rst $10

jr_07c_6d78:
    ld hl, $51d8
    rst $10

jr_07c_6d7c:
    ld sp, $01d0
    ret c

    add $d9
    rst $00
    reti


    add $d9
    rst $00
    reti


    add $d9
    rst $00
    reti


    add $07
    ret nc

    rrca
    ret nz

    and b
    sub e
    sub c
    jr nc, jr_07c_6de6

    ld [hl], b
    sub b
    ld [hl], b
    ld d, b
    ld d, e
    pop bc
    jr nc, jr_07c_6dee

jr_07c_6d9e:
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    ret nc

    ld bc, $d9a6
    and a
    reti


    and [hl]
    reti


    and a
    reti


    and [hl]
    reti


    and a
    reti


    and [hl]
    rlca
    ret nc

    rrca
    ld hl, $9072
    and b
    ret nz

    rst $10
    inc hl
    ret c

    and c
    ld [hl], b
    rst $10
    ld [hl], b
    ld d, b
    jr nc, jr_07c_6de3

    ret c

    ret nz

    rst $10
    inc hl
    ret c

    and c
    ld [hl], d
    sub b
    and b
    ret nz

    rst $10
    inc hl
    ret c

    and c
    jr nc, jr_07c_6e23

    ld [hl], b
    ret nz

    and b
    ret nz

    pop bc
    sub c
    sub c
    ld [hl], b
    rst $10
    ld [hl], b
    ld d, b
    ld [hl], b
    jr nc, jr_07c_6e51

    ret c

    ld d, b

jr_07c_6de3:
    rst $10
    ld d, b
    ld d, b

jr_07c_6de6:
    ld d, b
    jr nz, @+$52

    ret c

    sub b
    rst $10
    ld d, b
    ld d, b

jr_07c_6dee:
    ld d, b
    jr nc, jr_07c_6e41

    ld d, b
    jr nc, @+$22

    ret c

    ret nz

    and b
    sub b
    ld d, d
    and b
    rst $10
    ld hl, $a1d8
    rst $10
    ld sp, $d871
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    and b
    sub b
    ld [hl], b
    ld d, c
    sbc $ff
    ret nc

    ld e, $e9
    nop
    call c, $e711
    ld [$20e6], sp
    add sp, $08
    pop de
    and d
    ld d, d
    jp nz, $d752

    ld [hl-], a

jr_07c_6e22:
    ret c

jr_07c_6e23:
    ld d, d
    rst $10
    ld [hl-], a
    ret c

    and d
    rst $10
    ld [hl-], a
    ret c

    and d
    rst $10
    ld [hl-], a
    ld [hl+], a
    ret c

    jp nz, Jump_000_07e8

    and c
    and b
    rst $10
    jr nc, jr_07c_6e68

    jr nc, jr_07c_6e22

    ld [$91d8], sp
    ld d, b
    rst $10
    ld [hl-], a
    ret c

jr_07c_6e41:
    and d
    ld d, d
    rst $10
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ret c

    ld d, d
    ld d, d
    sbc $ff
    ret nc

    ld bc, $e2d1
    ld [hl], l

jr_07c_6e51:
    ld l, [hl]
    ld [c], a
    add [hl]
    ld l, [hl]
    ld [c], a
    add [hl]
    ld l, [hl]
    ld [c], a
    ld [hl], l
    ld l, [hl]
    ret nc

    ld e, $c2
    pop bc
    ret nc

    ld bc, $363e
    scf
    ret nc

    ld e, $c2
    pop bc

jr_07c_6e68:
    ret nc

    ld bc, $56d7
    ld d, a
    ret c

    or [hl]
    and a
    ld [c], a
    add [hl]
    ld l, [hl]
    sbc $ff
    rst $18
    inc bc
    ld e, $5e
    ld e, $3e
    xor [hl]
    ld e, [hl]
    ldh [rNR34], a
    ld c, $1e
    ld a, $ae
    ld [hl], $37
    db $e3
    rst $18
    inc bc
    ld e, $d7
    ld e, [hl]
    ret c

    ld e, $3e
    ld e, [hl]
    xor [hl]
    ldh [rNR34], a
    rst $10
    ld e, [hl]
    ret c

    ld e, $3e
    ld [hl], $37
    xor [hl]

jr_07c_6e9a:
    db $e3
    ret nc

    dec bc
    call c, $ea11
    ld bc, $14eb
    push hl
    ld b, b
    and $b0
    add sp, $07
    db $d3
    ld [c], a
    add hl, hl
    ld l, a
    ld [c], a
    add hl, hl

jr_07c_6eaf:
    ld l, a
    ld [c], a
    ld e, e
    ld l, a
    ret nc

    dec bc
    ld [c], a
    add hl, hl
    ld l, a
    jp nc, $c080

    rst $10
    jr nc, jr_07c_6f1e

    nop
    ld h, b
    jr nc, jr_07c_6e9a

    ret nz

    add b
    ret nz

    rst $10
    jr nc, @+$62

    nop
    jr nc, jr_07c_6ecb

jr_07c_6ecb:
    add b
    ret c

    and b
    rst $10
    jr nz, jr_07c_6f21

    add b
    nop
    add b
    ld d, b
    jr nz, jr_07c_6eaf

    and b
    rst $10
    jr nz, jr_07c_6f2b

    add b
    nop
    ld d, b
    nop
    and b
    ret nc

    ld bc, $1ad7
    reti


    inc d
    ret c

    push bc
    reti


    jp z, $8aaa

    reti


    adc d
    reti


    adc d
    xor d
    reti


    xor d
    reti


    xor d
    reti


    xor d
    reti


    xor d
    reti


    xor d
    reti


    xor d
    reti


    xor d
    reti


    xor d
    rst $10
    ld a, [de]
    reti


    inc d
    ret c

    push bc
    reti


    jp z, $caaa

    reti


    call nz, Call_000_15d7
    reti


    ld a, [de]
    ld a, [hl-]
    ret c

    adc d
    reti


    adc d
    reti


    adc d
    reti


    adc d
    reti


    adc d
    reti


    adc d

jr_07c_6f1e:
    reti


    adc d
    reti


jr_07c_6f21:
    adc d
    ret nc

    dec bc
    ld [c], a
    ld e, e
    ld l, a
    sbc $ff
    db $d3

jr_07c_6f2a:
    sub e

jr_07c_6f2b:
    sub b
    ld [hl], b
    ld d, b
    and b
    reti


    and a
    jp $d7c0


    jr nz, jr_07c_6f66

    ret c

    and b

jr_07c_6f38:
    reti


    and a
    sub b
    sub b
    nop
    and b
    and b
    nop

jr_07c_6f40:
    ret nz

    ret nz

    nop
    rst $10
    ld sp, $01d0
    ld [hl], $03
    ld a, [hl-]
    reti


    inc [hl]
    dec h
    reti


    ret nc

    dec bc
    jr nz, jr_07c_6f2a

    ret nz

    sub b
    and b
    ret nz

    ld d, e
    jr nc, @-$25

    scf
    db $e3
    db $d3
    ld [hl], c
    rst $10
    jr nz, jr_07c_6f38

    pop bc
    and c
    sub b
    and a
    ld [hl], c
    rst $10

jr_07c_6f66:
    jr nz, jr_07c_6f40

    pop bc
    rst $10
    ld hl, $5730
    ret nc

    ld bc, $d96a
    ld l, d
    reti


    ld l, d
    ld d, h
    dec [hl]
    ld a, [de]
    reti


    inc d
    ret c

    and l
    reti


    xor d
    rst $10
    ld a, [de]
    ret c

    jp z, $c4d9

    rst $10
    dec d
    reti


    ld a, [de]
    ld a, [hl-]
    adc d
    reti


    adc d
    ld a, [hl-]
    reti


    ld a, [hl-]
    ld e, d
    reti


    ld e, d
    reti


    ld e, d
    reti


    ld e, d
    reti


    ld e, d
    reti


    ld e, d
    reti


    ld e, d
    reti


    ld e, d
    and h
    dec b
    ld d, h
    dec b
    and h
    dec b
    inc h
    ld d, l
    inc b
    ret c

    and l
    inc b
    rst $10
    dec h
    ret c

    ld d, h
    dec b
    and h
    dec b
    db $e3
    call c, $ea11
    ld bc, $14eb
    push hl
    ld b, b
    and $90
    add sp, $07
    db $d3
    ret nc

    dec bc
    ld [c], a
    dec l
    ld [hl], b
    ld [c], a
    dec l
    ld [hl], b
    ld [c], a
    ld e, [hl]
    ld [hl], b
    ret nc

    dec bc
    ld [c], a
    dec l
    ld [hl], b
    ret nc

    ld bc, $dfd4
    inc b
    add h
    dec b
    ret c

    add h
    dec b
    rst $10
    add h
    dec b
    ret c

    add h
    dec b
    rst $10
    ldh [$df], a
    inc b
    and h
    dec b
    ret c

    and h
    dec b
    rst $10
    and h
    dec b
    ret c

    and h
    dec b
    rst $10
    ldh [$df], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ldh [$d7], a
    ld a, [de]
    reti


    inc d
    ret c

    push bc
    reti


    jp z, $8aaa

    reti


    adc d
    reti


    adc d
    xor d
    reti


    xor d
    reti


    xor d
    reti


jr_07c_700a:
    xor d
    reti


    xor d
    reti


    xor d
    reti


    xor d
    reti


    xor d
    reti


    xor d
    rst $10
    ld a, [de]
    reti


    inc d
    ret c

    push bc
    reti


    jp z, $caaa

    reti


    call nz, Call_000_15d7
    reti


    ld a, [de]
    ld a, [hl-]
    ret nc

    dec bc
    ld [c], a
    ld e, [hl]
    ld [hl], b
    sbc $ff
    db $d3
    ld d, e
    ld d, b
    jr nc, jr_07c_700a

    ret nz

    rst $10
    ld d, b
    reti


    ld d, a
    sub e
    sub b
    and b
    ret nz

    ld [hl], b
    reti


    ld [hl], a
    ld d, b
    ld d, b
    nop
    ld [hl], b
    ld [hl], b
    nop
    sub b
    sub b
    nop
    and c
    ret nc

    ld bc, $03a6
    xor d
    reti


    and h
    and l
    reti


Jump_07c_7051:
    ret nc

    dec bc
    and b
    and b
    ld d, b
    ld [hl], b
    sub b
    ret c

    jp $d9a0


    and a
    db $e3
    db $d3
    inc [hl]
    jr nc, jr_07c_70b2

    ld [hl], b
    ld d, a
    inc [hl]
    jr nc, jr_07c_70d7

    sub b
    and a
    ret nc

    ld bc, $00e5
    rst $18
    ld [bc], a
    ld h, h
    ret c

    and l
    rst $10
    inc d
    ld h, l
    ret c

    and h
    rst $10
    dec d
    ld h, h
    ret c

    and l
    rst $10
    ldh [$df], a
    ld [bc], a
    add h
    ret c

    push bc
    rst $10
    inc [hl]
    add l
    ret c

    call nz, Call_000_35d7
    add h
    ret c

    push bc
    rst $10
    ldh [$e5], a
    ld b, b
    ld a, [hl-]
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    rst $10
    ld d, h
    dec b

jr_07c_70a1:
    inc h
    dec b
    ld d, h
    dec b

jr_07c_70a5:
    ret c

    and h
    dec h
    inc b
    ret c

    ld d, l
    inc b
    and l
    inc h
    dec b
    ld d, h
    dec b
    db $e3

jr_07c_70b2:
    ret nc

    dec bc
    jp hl


    nop
    call c, $e711

jr_07c_70b9:
    jr nz, jr_07c_70a1

    jr nz, jr_07c_70a5

    rlca
    pop de
    rst $18
    jr nz, jr_07c_7112

    rst $10
    ld d, b
    ret c

    ld d, b
    rst $10
    ld d, b
    ret c

    ldh [$e2], a
    dec de
    ld [hl], c
    rst $18

jr_07c_70ce:
    db $10
    ld d, b
    rst $10
    ld d, b
    ret c

    ld d, b
    rst $10
    ld d, b
    ret c

jr_07c_70d7:
    ldh [$80], a
    ret nz

    rst $10
    jr nc, @+$62

    nop
    ld h, b
    jr nc, jr_07c_70b9

    ret nz

    add b
    ret nz

    rst $10
    jr nc, jr_07c_7147

    nop
    jr nc, jr_07c_70ea

jr_07c_70ea:
    add b
    ret c

    and b
    rst $10
    jr nz, @+$52

    add b
    nop
    add b
    ld d, b
    jr nz, jr_07c_70ce

    and b

jr_07c_70f7:
    rst $10
    jr nz, jr_07c_714a

jr_07c_70fa:
    add b

jr_07c_70fb:
    nop
    ld d, b
    nop

jr_07c_70fe:
    and b
    ret c

    rst $18
    inc b
    ld h, b
    rst $10
    ld h, b
    ret c

    ld h, b
    rst $10
    ld h, b
    ret c

    ldh [$df], a
    inc b

jr_07c_710d:
    add b
    rst $10
    add b

jr_07c_7110:
    ret c

jr_07c_7111:
    add b

jr_07c_7112:
    rst $10
    add b

jr_07c_7114:
    ret c

    ldh [$e2], a
    dec de
    ld [hl], c

jr_07c_7119:
    sbc $ff
    pop de
    rst $18

jr_07c_711d:
    ld [bc], a

jr_07c_711e:
    jr nc, jr_07c_70f7

    jr nc, jr_07c_70fa

    jr nc, jr_07c_70fb

    jr nc, jr_07c_70fe

    ldh [$df], a
    ld [bc], a
    and b
    rst $10
    and b
    ret c

    and b
    rst $10
    and b
    ret c

    ldh [$df], a
    ld [bc], a
    jr nc, jr_07c_710d

    jr nc, jr_07c_7110

    jr nc, jr_07c_7111

    jr nc, jr_07c_7114

    ldh [$30], a
    rst $10
    jr nc, jr_07c_7119

    jr nz, @-$27

    jr nz, jr_07c_711d

    jr nc, jr_07c_711e

jr_07c_7147:
    jr nc, @-$26

    ld d, b

jr_07c_714a:
    rst $10
    ld d, b
    ret c

    rst $18
    ld [bc], a
    ld h, b
    rst $10
    ld h, b
    ret c

    ld h, b
    rst $10
    ld h, b
    ret c

    ldh [$df], a
    ld [bc], a
    add b
    rst $10
    add b
    ret c

    add b
    rst $10
    add b
    ret c

    ldh [$df], a
    inc b
    and b
    rst $10
    and b
    ret c

    and b
    rst $10
    and b
    ret c

    ldh [$e3], a
    ret nc

    ld bc, $e2d1
    ld h, a
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld a, [de]
    ld h, l
    ld d, h
    ld a, [hl-]
    add l
    ld d, h
    ld a, [de]
    dec d
    ld d, h
    ld a, [hl-]
    inc [hl]
    dec [hl]
    ld [c], a
    ld h, a
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld a, [de]
    ld h, l
    ld d, h
    ld a, [hl-]
    add l
    ld d, h
    rst $10
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ret c

    or h
    or l
    and h
    and l
    ld [c], a
    ld h, a
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld a, [de]
    rst $10
    ld d, l
    ret c

    ld d, h
    ld a, [hl-]
    or h
    or l
    inc d
    and l
    dec d
    ld d, h
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld [c], a
    ld h, a
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld a, [de]
    ld h, l
    ld d, h
    ld a, [hl-]
    add l
    ld d, h
    ld a, [de]
    dec d
    ld d, h
    dec [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    dec d
    ld h, h
    ld d, h
    dec d
    ld a, [hl-]
    ld h, l
    ld d, h
    ld a, [de]
    dec d
    ld d, h
    ld a, [hl-]
    dec [hl]
    ld d, h
    dec d
    ld h, h
    ld d, h
    dec d
    ld a, [hl-]
    add l
    ld h, h
    ld a, [de]
    dec d
    ld d, h
    ld a, [hl-]
    add l
    ld d, h
    dec d
    ld h, h
    ld d, h
    dec d
    ld a, [hl-]
    add l
    ld d, h
    ld a, [de]
    dec d
    ld d, h
    ld a, [hl-]
    inc [hl]
    dec [hl]
    dec d
    ld d, h
    add h
    dec d
    ld a, [hl-]
    ld h, l
    ld d, h
    ld a, [de]
    dec d
    ld d, h
    ld a, [hl-]
    ld h, l
    ld d, h
    ld [c], a
    ld h, a
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld [c], a
    db $76
    ld [hl], d
    ld [c], a
    add e
    ld [hl], d
    ld a, [de]
    ld h, l
    ld d, h
    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    rst $10
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ret c

    or h
    or l
    and h
    and l
    sbc $ff
    rst $10
    sbc d
    ret c

    ld h, l
    ld d, h
    ld a, [hl-]
    add l
    ld d, h
    ld a, [de]
    dec d
    ld d, h
    ld a, [hl-]
    ld h, l
    ld d, h
    db $e3
    ld a, [de]
    ld h, l
    ld d, h
    ld a, [hl-]
    add l
    ld d, h
    ld a, [de]
    dec d
    ld d, h
    ld a, [hl-]
    ld h, l
    ld d, h
    db $e3
    ld a, [de]
    ld h, l
    ld d, h
    ld a, [hl-]
    add l
    ld d, h
    ld a, [de]
    dec d
    ld d, h
    ld a, [hl-]
    ld h, l
    ld d, h
    db $e3

    db $d0, $01, $dc, $11, $ea, $10, $eb, $15, $e8, $07, $d2, $e6, $b0, $e5, $40, $5c
    db $5c, $9c, $55, $a6, $d9, $a5, $56, $cc, $d7, $2c, $3c, $d8, $5c, $5c, $9c, $55

    and [hl]
    reti


    and l
    ld d, [hl]
    call z, Call_000_3cd7
    ld e, h
    and $c0
    push hl
    ld b, b
    ld [c], a
    ld a, c
    ld [hl], e
    call nc, $d93c
    dec [hl]
    ld h, $d9
    inc l
    jr c, jr_07c_72cb

    ld e, h
    reti


    ld d, l

jr_07c_72cb:
    ld [hl], $d9
    inc a
    jr z, jr_07c_72d3

    inc a
    reti


    inc a

jr_07c_72d3:
    reti


    inc a
    inc hl
    inc de
    ret c

    call nz, $ccd9
    reti


    call z, $ccd9
    inc c
    ld [c], a
    ld a, c
    ld [hl], e
    call nc, $d93c
    dec [hl]
    ld h, $d9
    inc l
    jr c, jr_07c_72ef

    ld e, h
    reti


    ld d, l

jr_07c_72ef:
    db $76
    reti


    ld a, h
    sbc b
    inc bc
    xor h
    reti


    xor h
    reti


    xor h
    sub l
    db $76
    inc a
    reti


    inc a
    reti


    inc a
    inc c
    push hl
    add b
    inc c
    inc c
    inc c
    inc c
    ret c

    ld e, h
    reti


    ld d, l
    db $76
    reti


    ld a, h
    sbc h
    xor h
    reti


    and l
    sub [hl]
    reti


    sbc h
    xor b
    inc bc
    call z, $c5d9
    and [hl]
    reti


    xor h
    sbc b
    inc bc
    adc h
    reti


    adc h
    reti


    adc h
    inc a
    reti


    inc a
    reti


    inc a
    reti


    inc a
    reti


    inc a
    inc c
    inc c
    inc c
    inc c
    cp h
    reti


    or l
    rst $10
    ld d, $d9
    inc e
    inc a
    inc e
    reti


    inc e
    reti


    inc e
    adc h
    reti


    adc h
    reti


    adc h
    reti


    adc h
    reti


    adc h
    adc h
    reti


    add l
    ld h, [hl]
    reti


    ld l, h
    adc h
    adc h
    reti


    add l
    and [hl]
    reti


    xor h
    cp h
    xor h
    reti


    xor h
    reti


    xor h
    reti


    xor h
    reti


    xor h
    reti


    xor h
    reti


    xor h
    reti


    and l
    ld b, $d8
    ret c

    adc h
    reti


    add l
    db $76
    reti


    ld a, h
    ld l, h
    reti


    ld l, h
    inc a
    inc e
    ret c

    cp h
    xor $22
    adc h
    inc c
    rst $38
    call nc, $d93c
    inc a
    reti


    inc a
    inc l
    ret c

    push bc
    ld b, $a5
    ld b, $95
    and [hl]
    reti


    and l
    or e
    jp nz, Jump_07c_5ccc

    reti


    ld e, h
    reti


    ld e, h
    dec b
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    ld [hl], l
    sub [hl]
    and l
    add $e3

    db $d0, $01, $e5, $40, $dc, $11, $ea, $10, $eb, $15, $d5, $e8, $03, $e6, $50, $ee
    db $22, $df, $08, $5c, $d8, $5c, $d7, $5c, $d8, $5c, $d7, $e0

    xor $46
    add sp, $07
    and $90
    ld [c], a
    adc h
    ld [hl], h
    add sp, $03
    and $50
    xor $22
    push de
    rst $18
    inc b
    ld e, h
    ret c

    ld e, h
    rst $10
    ld e, h
    ret c

    ld e, h
    rst $10
    ldh [$ee], a
    ld b, [hl]
    and $90
    add sp, $07
    ld [c], a
    adc h
    ld [hl], h
    xor $22
    db $d3
    ld e, h
    rst $10
    ld d, l
    ret c

    ld b, $3c
    rst $10
    dec [hl]
    ret c

    ld b, $2c
    rst $10
    dec h
    ret c

    ld b, $d8
    call z, $c5d7
    ld b, $ee
    ld b, [hl]
    ret c

    xor h
    inc a
    ld a, h
    and l
    rst $10
    ld [hl], $d9
    dec [hl]
    ret c

    and [hl]
    ld a, h
    inc a
    xor h
    adc h
    inc a
    call z, $8635
    reti


    add l
    ld [hl], $ac
    call z, $d23c
    or l
    ld h, [hl]
    rst $10
    dec [hl]
    ret c

    or [hl]
    rst $10
    ld h, l
    ld [hl], $d8
    or l
    ld h, [hl]
    or l
    ld h, [hl]
    rst $10
    dec [hl]
    ret c

    ld h, [hl]
    rst $10
    ld h, l
    ld [hl], $d8
    or l
    ld h, [hl]
    rst $10
    dec d
    ret c

    add [hl]
    rst $10
    ld d, l
    ret c

    add [hl]
    rst $10
    add l
    ld d, [hl]
    dec d
    ret c

    add [hl]
    rst $10
    dec d
    ret c

    add [hl]
    rst $10
    ld d, l
    ret c

    add [hl]
    rst $10
    add l
    ld d, [hl]
    dec d
    ret c

    add [hl]
    rst $10
    rst $10
    ld c, h
    reti


    ld b, l
    ld [hl], $d9
    inc a
    ld c, h
    ld c, h
    reti


    ld b, l
    ld h, [hl]
    reti


    ld l, h
    adc h
    ld l, h
    reti


    ld l, h
    reti


    ld l, h
    reti


    ld l, h
    reti


    ld l, h
    reti


    ld l, h
    reti


    ld l, h
    reti


    ld h, l
    ld b, $e6
    ld h, b
    xor $22
    add sp, $03
    rst $10
    add l
    ret c

    add [hl]
    rst $10
    dec [hl]
    add [hl]
    ret c

    add l
    rst $10
    add [hl]
    ret c

    add l
    rst $10
    ld [hl], $85
    ret c

    add [hl]
    rst $10
    add l
    ret c

    add [hl]
    rst $10
    dec [hl]
    add [hl]
    ret c

    add l
    rst $10
    ld [hl], $e8
    rlca
    and $90
    ret c

    adc h
    inc c
    rst $38
    jp nc, $d9ac

    and l
    sub [hl]
    reti


    sbc h
    xor h
    call z, $c5d9
    and [hl]
    reti


    xor h
    call z, $d9ac
    xor h
    reti


    xor h
    rst $10
    inc a
    reti


    inc a
    reti


    inc a
    reti


    inc a
    reti


    inc a
    db $e3

    db $d0, $01, $e7, $01, $e6, $20, $e9, $00, $dc, $11, $e8, $07, $d1, $e2, $4a, $75
    db $e2, $58, $75

    ld [c], a
    ld c, d
    ld [hl], l
    ld [c], a
    ld e, b
    ld [hl], l
    ld [c], a
    ld c, d
    ld [hl], l
    ld [c], a
    ld h, [hl]
    ld [hl], l
    ld [c], a
    ld c, d
    ld [hl], l
    ld [c], a
    ld e, b
    ld [hl], l
    ld [c], a
    ld c, d
    ld [hl], l
    ld [c], a
    ld h, [hl]
    ld [hl], l
    pop de
    ld e, h
    ld e, h
    rst $10
    ld e, h
    ret c

    ld d, l
    rst $10
    ld [hl], $d9
    dec [hl]
    ret c

    ld d, [hl]
    rst $10
    inc l
    ret c

    call z, Call_000_2cd7
    ret c

    inc a
    inc a
    rst $10
    inc a
    ret c

    dec [hl]
    rst $10
    ld h, $d9
    dec h
    ret c

    ld [hl], $cc
    xor h
    call z, $8c8c
    rst $10
    adc h
    ret c

    add l
    rst $10
    ld h, [hl]
    reti


    ld h, l
    ret c

    add [hl]
    rst $10
    inc a
    ret c

    adc h
    rst $10
    adc h
    ret c

    rst $18
    ld [bc], a
    cp h
    rst $10
    cp h
    ret c

    cp h
    rst $10
    cp h
    ret c

    ldh [$d7], a
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

    ldh [$d8], a
    rst $18
    ld [bc], a
    ld c, h
    rst $10
    ld c, h
    ret c

    ld c, h
    rst $10
    ld c, h
    ret c

    ldh [$df], a
    ld [bc], a
    ld l, h
    rst $10
    ld l, h
    ret c

    ld l, h
    rst $10
    ld l, h
    ret c

    ldh [$d7], a
    adc h
    add l
    ld [hl], l
    reti


    ld a, h
    ld l, h
    reti


    ld l, h
    inc a
    inc e
    ret c

    cp h
    adc h
    inc c
    rst $38

    db $d1, $5c, $5c, $9c, $55, $a6, $d9, $a5, $56, $cc, $d7, $2c, $3c, $e3, $d1, $5c
    db $5c, $9c, $55

    and [hl]
    reti


    and l
    ld d, [hl]
    call z, Call_000_3cd7
    ld e, h
    db $e3
    pop de
    inc a
    inc a
    rst $10
    inc a
    ret c

    dec [hl]
    rst $10
    ld h, $d9
    dec h
    ret c

    ld [hl], $cc
    xor h
    sub l
    and [hl]
    db $e3

    db $d0, $01, $d1, $1c, $55, $56, $1c, $55, $56, $1c, $55, $56, $1c, $55, $56, $1c
    db $55, $56, $1c, $55

    ld d, [hl]
    inc e
    ld d, l
    ld d, [hl]
    dec [hl]
    ld [hl], $35
    ld [hl], $d7
    sbc h
    ret c

    inc e
    dec [hl]
    ld d, [hl]
    dec d
    ld d, $05
    ld d, [hl]
    ld d, l
    ld d, $3c
    dec [hl]
    ld d, [hl]
    dec d
    ld d, [hl]
    inc e
    inc a
    dec d
    ld d, $55
    ld d, $05
    ld d, $35
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    dec d
    ld d, [hl]
    dec d
    ld d, [hl]
    inc a
    dec d
    ld d, $05
    ld d, [hl]
    ld d, l
    ld d, $3c
    dec [hl]
    ld d, [hl]
    dec d
    ld d, [hl]
    inc e
    inc a
    dec d
    ld d, $05
    ld d, $55
    ld d, $35
    ld [hl], $35
    ld [hl], $d7
    sbc h
    ret c

    dec d
    ld d, [hl]
    inc a
    dec d
    ld d, $05
    ld d, [hl]
    ld d, l
    ld d, $3c
    inc a
    dec d
    ld d, [hl]
    inc e
    dec [hl]
    ld d, [hl]
    dec d
    ld d, $05
    ld d, $55
    ld d, $3c
    inc a
    inc e
    inc e
    dec [hl]
    ld d, [hl]
    dec d
    ld d, $05
    ld d, [hl]
    ld d, l
    ld d, $35
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    dec d
    ld d, [hl]
    dec d
    ld d, [hl]
    inc a
    dec d
    ld d, $05
    ld d, $55
    ld d, $35
    ld [hl], $35
    ld [hl], $d7
    sub [hl]
    ret c

    ld d, l
    inc e
    inc a
    dec d
    ld d, $55
    ld d, $05
    ld d, $3c
    inc a
    dec d
    ld d, [hl]
    inc e
    inc a
    dec d
    ld d, $55
    ld d, $05
    ld d, $3c
    dec [hl]
    ld [hl], $15
    ld d, [hl]
    inc e
    inc a
    dec d
    dec d
    ld d, l
    ld d, $d7
    ld d, l
    ld d, [hl]
    ret c

    or l
    or [hl]
    and l
    and [hl]
    inc e
    sbc h
    inc a
    sbc h
    inc e
    sbc h
    inc a
    ld d, l
    sub [hl]
    inc e
    sbc h
    inc a
    sbc h
    inc e
    sbc h
    dec [hl]
    ld [hl], $35
    ld [hl], $d7
    sbc h
    ret c

    sbc h
    inc a
    sbc h
    inc e
    sbc h
    inc a
    ld d, l
    sub [hl]
    inc e
    sbc h
    inc a
    sbc h
    inc e
    sbc h
    dec [hl]
    ld [hl], $35
    ld [hl], $d0
    inc de
    ret nz

    ret nc

    ld bc, $0c16
    ret nc

    ld a, [de]
    ret nz

    ret nc

    ld bc, $d73c
    ld d, l
    ld d, [hl]
    ret c

    or l
    and [hl]
    ret nc

    ld a, [de]
    ret nz

    rst $38
    ret nc

    inc bc
    push hl
    ld b, b
    and $b0
    call c, $ea11
    ld bc, $14eb
    add sp, $07
    db $d3
    rrca
    db $dd
    rst $18
    ld [bc], a
    db $d3
    sub a
    and l
    ld bc, $a303
    inc bc
    and e
    inc bc
    sub e
    rlca
    sub d
    nop
    ld a, e
    sub a
    and e
    inc bc
    inc bc
    and e
    inc bc
    and e
    inc bc
    jp nz, $cb00

    reti


    set 4, b
    db $d3
    and a
    push bc
    ld bc, $c303
    inc bc
    jp $a303


    rlca
    and d
    nop
    ld a, e
    sub e
    sub e
    inc bc
    and e
    inc bc
    and e
    inc bc
    ld a, c
    reti


    ld a, c
    rst $10
    ccf
    sbc $ff
    ret nc

    inc bc
    push hl
    add b
    and $90
    call c, $ea11
    ld bc, $14eb
    add sp, $07
    db $d3
    rrca
    db $dd
    rst $18
    ld [bc], a
    jp nc, $d7c7

    dec h
    ld bc, $2303
    inc bc
    inc hl
    inc bc
    ret c

    jp $c207


    nop
    set 0, a
    rst $10
    inc hl
    inc bc
    inc bc
    inc hl
    inc bc
    inc hl
    inc bc
    ld b, d

jr_07c_76e7:
    nop
    ld c, e
    reti


    ld c, e
    ldh [$d3], a
    scf
    dec [hl]
    ld bc, $3303
    inc bc
    inc sp
    inc bc
    inc sp
    rlca
    ld [hl-], a
    nop
    ret c

    xor e
    jp Jump_000_03c3


    rst $10
    inc hl
    inc bc
    inc hl
    inc bc
    ret c

    xor c
    reti


    xor c
    rst $10
    xor a
    sbc $ff
    ret nc

    ld b, $e7
    ld bc, $20e6
    jp hl


    nop
    call c, $e811
    ld b, $07
    db $dd
    pop de
    rst $18
    db $10
    ld d, c
    rst $10
    ld d, c
    ret c

    ld d, c
    rst $10
    ld d, c
    ret c

    ldh [$df], a
    inc b
    ld sp, $31d7
    ret c

    ld sp, $31d7
    ret c

    ldh [rHDMA1], a
    ld d, c
    ret nc

    inc bc
    ld d, b
    ld [bc], a
    rst $10
    inc hl
    jr nz, @+$04

    ret nc

    ld b, $21
    ld sp, $33d8
    rst $10
    ld sp, $31d8
    rst $10
    ld sp, $31d8
    rst $10
    ld sp, $31d8
    rst $10
    ld sp, $ded8

jr_07c_7750:
    rst $38
    ret nc

    ld b, $d1
    jr nc, jr_07c_7786

    jr nc, jr_07c_7788

    jr nc, @+$32

    jr nc, @+$32

    db $dd
    rst $18
    ld [bc], a
    rst $10
    sub b
    ret c

    ld h, b
    ld d, b
    db $10
    jr nc, jr_07c_76e7

    ld d, b
    nop
    ld [c], a
    pop bc
    ld [hl], a
    ld [c], a
    jp z, $e277

    pop bc
    ld [hl], a
    ld [c], a
    jp z, $1077

    ld d, b
    stop
    jr nc, jr_07c_77db

    ld d, b
    jr nz, @+$12

    ld d, b
    stop
    jr nc, jr_07c_7793

    ld d, b
    db $10
    db $10

jr_07c_7786:
    db $10
    db $10

jr_07c_7788:
    ld d, b
    jr nc, jr_07c_77ab

    jr nc, jr_07c_77bd

    ldh [$e2], a
    jp z, $1077

    ld d, b

jr_07c_7793:
    stop
    jr nc, jr_07c_77f7

    ld d, b
    jr nz, @+$12

    ld d, b
    stop
    jr nc, jr_07c_77af

    ld d, b
    stop
    db $10
    db $10
    ld d, b
    ld sp, $3131
    ld sp, $3111

jr_07c_77ab:
    ld bc, $1131
    rst $10

jr_07c_77af:
    sub d
    ret c

    ld d, b
    ld de, $1030
    ld d, b
    stop
    db $10
    db $10
    ld d, b
    jr nc, jr_07c_77dd

jr_07c_77bd:
    jr nc, jr_07c_77ef

    sbc $ff
    db $10
    ld d, b
    stop
    jr nc, jr_07c_7827

    ld d, b
    nop
    db $e3
    db $10
    ld h, b
    ld d, b
    db $10
    jr nc, jr_07c_7750

    ld d, b
    nop
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07c_77db:
    rst $38
    rst $38

jr_07c_77dd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07c_77ef:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07c_77f7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07c_7827:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
