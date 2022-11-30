INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    db $22, $47, $fd, $47, $80, $48, $01, $49, $02, $4b, $bc, $4b, $b4, $47, $66, $46
    db $62, $50

    and $50
    ld h, c
    ld b, c
    cp b
    ld b, e
    ld e, a
    ld d, l

    db $09, $51, $d2, $51, $7c, $60, $e6, $60, $bc, $60, $32, $64

    and e
    ld c, d

Call_008_4028:
    push de
    ld hl, wPlayer1
    ld d, $00
    ld e, a
    ld a, [$c835]
    or a
    jr z, jr_008_4039

    ld a, $40
    add e
    ld e, a

jr_008_4039:
    add hl, de
    pop de
    ret


Call_008_403c:
    ld a, [$c83a]
    push de
    push af
    ld a, a
    ld de, $0905
    call Call_000_22a5
    pop af
    pop de
    or a
    ld a, $00
    ret nz

    push bc
    push de
    push hl
    ld a, [$c837]
    push de
    push af
    ld a, a
    ld de, $0906
    call Call_000_22a5
    pop af
    pop de
    ld d, $00
    ld c, a
    dec c
    jr z, jr_008_4077

    ld hl, $c96e
    ld b, $01

jr_008_406a:
    ld a, [hl+]
    sub b
    jr c, jr_008_4074

    jr nz, jr_008_4073

    inc d
    jr jr_008_4074

jr_008_4073:
    dec d

jr_008_4074:
    dec c
    jr nz, jr_008_406a

jr_008_4077:
    ld a, d
    pop hl
    pop de
    pop bc
    ret


Call_008_407c:
    call Call_008_403c
    cpl
    inc a
    ret


Call_008_4082:
    call Call_008_4091
    push de
    push af
    ld a, a
    ld de, $0902
    call Call_000_22a5
    pop af
    pop de
    ret


Call_008_4091:
    push bc
    ld a, [$c839]
    push de
    push af
    ld a, a
    ld de, $0903
    call Call_000_22a5
    pop af
    pop de
    ld b, a
    call Call_008_403c
    push de
    push af
    ld a, a
    ld de, $0904
    call Call_000_22a5
    pop af
    pop de
    ld c, a
    bit 7, a
    jr z, jr_008_40b6

    cpl
    inc a

jr_008_40b6:
    cp b
    jr nz, jr_008_40c2

    bit 7, c
    ld a, $01
    jr z, jr_008_40c0

    inc a

jr_008_40c0:
    jr jr_008_40d3

jr_008_40c2:
    jr c, jr_008_40c8

    ld a, $ff
    jr jr_008_40d3

jr_008_40c8:
    dec b
    jr z, jr_008_40ce

    cp b
    jr nz, jr_008_40d2

jr_008_40ce:
    ld a, $03
    jr jr_008_40d3

jr_008_40d2:
    xor a

jr_008_40d3:
    pop bc
    ret


Call_008_40d5:
    dec a
    cp $02
    ret nc

    ld [$c83b], a
    ret


Call_008_40dd:
    call Call_008_40e1
    ret


Call_008_40e1:
    ld a, [$c835]
    push af
    xor $01
    ld [$c835], a
    ld a, $2a
    call Call_008_4028
    ld b, [hl]
    ld a, $20
    call Call_008_4028
    ld c, [hl]
    pop af
    ld [$c835], a
    ld a, $20
    call Call_008_4028
    ld a, [hl]
    inc b
    dec b
    jr z, jr_008_411d

    dec c
    cp c
    jr c, jr_008_411c

    jr nz, jr_008_4119

    call Call_008_4082
    ld b, a
    ld a, [$c835]
    inc a
    cp b
    ld a, $01
    ret nz

    ld a, $03
    ret


jr_008_4119:
    ld a, $00
    ret


jr_008_411c:
    inc c

jr_008_411d:
    cp c
    jr nc, jr_008_4147

    ld d, b
    ld e, a
    call Call_008_4082
    ld b, a
    ld a, [$c835]
    inc a
    cp b
    jr nz, jr_008_4130

    ld a, $03
    ret


jr_008_4130:
    ld a, [$c835]
    xor $01
    inc a
    cp b
    ld a, $02
    ret nz

    inc d
    dec d
    ret z

    ld a, e
    add $02
    cp c
    ld a, $01
    ret nc

    ld a, $02
    ret


jr_008_4147:
    inc c
    cp c
    jr nc, jr_008_415e

    inc b
    dec b
    jr nz, jr_008_415e

    call Call_008_4082
    ld b, a
    ld a, [$c835]
    inc a
    cp b
    ld a, $00
    ret nz

    ld a, $03
    ret


jr_008_415e:
    ld a, $00
    ret


Call_008_4161:
    call Call_008_4199
    ld c, $00
    or a
    ret z

    ld b, a
    call Call_008_4082
    or a
    ld c, a
    ld a, b
    ret z

    cp $01
    jr nz, jr_008_417f

    call Call_008_403c
    bit 7, a
    jr nz, jr_008_4195

    ld a, b
    ld c, $01
    ret


jr_008_417f:
    cp $02
    jr nz, jr_008_418e

    call Call_008_407c
    bit 7, a
    jr nz, jr_008_4195

    ld a, b
    ld c, $02
    ret


jr_008_418e:
    ld a, c
    cp $03
    jr z, jr_008_4195

    ld a, b
    ret


jr_008_4195:
    ld a, b
    ld c, $00
    ret


Call_008_4199:
    ld a, [$c835]
    push af
    ld a, $01
    ld [$c835], a
    ld a, $2a
    call Call_008_4028
    ld b, [hl]
    ld a, $20
    call Call_008_4028
    ld c, [hl]
    xor a
    ld [$c835], a
    ld a, $2a
    call Call_008_4028
    ld d, [hl]
    ld a, $20
    call Call_008_4028
    pop af
    ld [$c835], a
    ld e, [hl]
    ld a, d
    or b
    ret z

    inc d
    dec d
    jr z, jr_008_41d7

    inc b
    dec b
    jr z, jr_008_41ef

    ld a, c
    cp e
    ld a, $03
    ret z

    ld a, $02
    ret c

    dec a
    ret


jr_008_41d7:
    inc b
    dec b
    jr z, jr_008_41ef

    ld a, c
    dec a
    cp e
    ld a, $02
    ret c

    ld a, $00
    ret nz

    call Call_008_4082
    cp $02
    ld a, $00
    ret nz

    ld a, $03
    ret


jr_008_41ef:
    ld a, e
    dec a
    cp c
    ld a, $01
    ret c

    ld a, $00
    ret nz

    call Call_008_4082
    cp $01
    ld a, $00
    ret nz

    ld a, $03
    ret


Call_008_4203:
    xor a
    ld hl, $c897
    ld [hl+], a
    ld [hl+], a
    ld hl, $c8d7
    ld [hl+], a
    ld [hl+], a
    ret


Call_008_420f:
    xor a
    ld hl, $d494
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d498], a
    ld a, [$d325]
    cp $03
    jr nz, jr_008_4230

    ld a, $2a
    rst $18
    ld [$213b], sp
    nop
    add hl, de
    ld a, $ff
    call Call_008_4244
    jr jr_008_4243

jr_008_4230:
    cp $05
    jr nz, jr_008_4243

    ld a, $29
    rst $18
    ld [$213b], sp
    nop
    nop
    ld a, $ff
    call Call_008_4244
    jr jr_008_4243

jr_008_4243:
    ret


Call_008_4244:
    ld [$d491], a
    ld a, l
    ld [$d48f], a
    ld a, h
    ld [$d490], a
    ret


Call_008_4250:
    ld hl, $d498
    ld a, [hl]
    cp $02
    ret nc

    inc [hl]
    ld a, [$d325]
    cp $03
    jr nz, jr_008_42cf

    ld a, $2a
    call Call_008_4028
    ld a, [hl]
    or a
    jr z, jr_008_426d

    ld hl, $0000
    jr jr_008_4277

jr_008_426d:
    rst $18
    inc [hl]
    db $10
    cp $06
    jr nz, jr_008_4294

    rst $18
    inc b
    db $10

jr_008_4277:
    push hl
    ld hl, $d48f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    push hl
    call Call_000_08ac
    ld d, h
    ld e, l
    pop hl
    ld a, d
    or e
    jr z, jr_008_4294

    bit 7, d
    jr z, jr_008_4294

    ld a, [$c835]
    call Call_008_4244

jr_008_4294:
    ld a, [$d498]
    cp $02
    jp c, Jump_008_432e

    ld a, [$d491]
    cp $ff
    jp z, Jump_008_432e

    push af
    and $01
    ld hl, $d496
    add l
    ld l, a
    jr nc, jr_008_42af

    inc h

jr_008_42af:
    inc [hl]
    pop af
    push af
    ld a, [$d443]
    cp $01
    jr z, jr_008_42c1

    rst $18
    inc b
    ld c, d
    ld a, $01
    rst $18
    nop
    inc de

jr_008_42c1:
    pop af
    call Call_008_437c
    ld a, $22
    rst $18
    ld [$cd3b], sp
    sub c
    ld b, e
    jr jr_008_432e

jr_008_42cf:
    cp $05
    jr nz, jr_008_432e

    rst $18
    inc [hl]
    db $10
    cp $00
    jr z, jr_008_42e6

    cp $06
    jr z, jr_008_42e6

    cp $0a
    jr z, jr_008_42e6

    cp $0e
    jr nz, jr_008_4307

jr_008_42e6:
    rst $18
    jr c, jr_008_42f9

    push hl
    ld hl, $d48f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc de
    pop hl
    push hl
    call Call_000_08ac
    ld d, h
    ld e, l
    pop hl

jr_008_42f9:
    ld a, d
    or e
    jr z, jr_008_4307

    bit 7, d
    jr nz, jr_008_4307

    ld a, [$c835]
    call Call_008_4244

jr_008_4307:
    ld a, [$d498]
    cp $02
    jp c, Jump_008_432e

    ld a, [$d491]
    cp $ff
    jr z, jr_008_432e

    push af
    and $01
    ld hl, $d494
    add l
    ld l, a
    jr nc, jr_008_4321

    inc h

jr_008_4321:
    inc [hl]
    pop af
    call Call_008_437c
    ld a, $20
    rst $18
    ld [$cd3b], sp
    sub c
    ld b, e

Jump_008_432e:
jr_008_432e:
    ret


Call_008_432f:
    ldh a, [$96]
    ld de, $0808
    call Call_000_22d2
    ld a, [$d494]
    ld hl, $c897
    add [hl]
    ld [hl], a
    ld a, [$d496]
    ld hl, $c898
    add [hl]
    ld [hl], a
    ld a, [$d495]
    ld hl, $c8d7
    add [hl]
    ld [hl], a
    ld a, [$d497]
    ld hl, $c8d8
    add [hl]
    ld [hl], a
    ld a, [$c897]
    ld de, $0809
    call Call_000_22d2
    ld a, [$c898]
    ld de, $080a
    call Call_000_22d2
    ld a, [$c8d7]
    ld de, $080b
    call Call_000_22d2
    ld a, [$c8d8]
    ld de, $080c
    call Call_000_22d2
    ret


Call_008_437c:
    or a
    jr nz, jr_008_4388

    ld a, $20
    ld hl, $439e
    call Call_000_23e8
    ret


jr_008_4388:
    ld a, $20
    ld hl, $43ab
    call Call_000_23e8
    ret


    ld hl, $439e
    call Call_000_2449
    ld hl, $43ab
    call Call_000_2449
    ret


    ld hl, $0201
    ld de, $4838
    ld bc, $0c5c
    call Call_000_2756
    ret


    ld hl, $0201
    ld de, $4838
    ld bc, $0d6c
    call Call_000_2756
    ret


    ld hl, $c96e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or l
    ret nz

    ld hl, $1900
    ret


Call_008_43c5:
    ld a, [$c836]
    or a
    jr z, jr_008_43d1

    cp $06
    jr nc, jr_008_43d1

    xor a
    ret


jr_008_43d1:
    xor a
    inc a
    ret


Call_008_43d4:
    push de
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
    jr nc, jr_008_43e8

    inc h

jr_008_43e8:
    ld de, $c980
    add hl, de
    pop de
    ret


Call_008_43ee:
    call Call_008_43c5
    ret nz

    call Call_008_43d4
    ld a, $06
    add l
    ld l, a
    jr nc, jr_008_43fc

    inc h

jr_008_43fc:
    ld de, $c96e
    ld c, $01
    call Call_000_03eb
    ret


Call_008_4405:
    cp $00
    jr z, jr_008_4417

    cp $0e
    jr z, jr_008_4417

    cp $06
    jr z, jr_008_4417

    cp $0a
    jr z, jr_008_4417

    xor a
    ret


jr_008_4417:
    xor a
    inc a
    ret


Call_008_441a:
    call Call_008_43c5
    ret nz

    ld a, [$d445]
    or a
    ret z

    rst $18
    inc [hl]
    db $10
    call Call_008_4405
    ld b, a
    ld hl, $c973
    ld a, [hl]
    cp $ff
    jr z, jr_008_4439

    inc [hl]
    inc hl
    ld a, [hl]
    add b
    ld [hl], a
    jr jr_008_444c

jr_008_4439:
    inc hl
    push hl
    ld a, [hl]
    add b
    ld l, a
    ld h, $00
    jr nc, jr_008_4443

    inc h

jr_008_4443:
    ld d, $00
    ld e, h
    call Call_000_08ac
    ld a, l
    pop hl
    ld [hl], a

jr_008_444c:
    ld a, b
    or a
    ret z

    ld a, [$d329]
    or a
    jr nz, jr_008_44ab

    ld hl, $c970
    ld a, [hl]
    cp $80
    jr z, jr_008_4480

    inc [hl]
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    rst $18
    jr c, jr_008_4477

    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l

jr_008_4477:
    srl h
    rr l
    pop de
    add hl, de
    pop de
    jr jr_008_44a6

jr_008_4480:
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    rst $18
    jr c, jr_008_4499

    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l

jr_008_4499:
    srl h
    rr l
    pop de
    add hl, de
    ld d, $00
    ld e, h
    call Call_000_08ac
    pop de

jr_008_44a6:
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a

jr_008_44ab:
    rst $18
    jr c, jr_008_44be

    push hl
    ld de, $e701
    add hl, de
    bit 7, h
    pop hl
    jr nz, @+$21

    push hl
    ld hl, $c96e
    ld a, [hl+]
    ld d, [hl]

jr_008_44be:
    ld e, a
    inc de
    pop hl
    push hl
    call Call_000_08ac
    bit 7, h
    pop hl
    jr nz, @+$0f

    ld de, $c96e
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, $1d
    rst $18
    ld [$c93b], sp

Call_008_44d8:
    ld hl, $c975
    ld a, [hl]
    cp $ff
    jr z, jr_008_44f1

    inc [hl]
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c8a1]
    add l
    ld l, a
    jr nc, jr_008_44ee

    inc h

jr_008_44ee:
    pop de
    jr jr_008_4505

jr_008_44f1:
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c8a1]
    add l
    ld l, a
    jr nc, jr_008_44fe

    inc h

jr_008_44fe:
    ld d, $00
    ld e, h
    call Call_000_08ac
    pop de

jr_008_4505:
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, [$d325]
    dec a
    ld b, a
    ld a, [$c8a1]
    ld c, a
    ld a, [$c8a0]
    sub c
    sub b
    jr nc, jr_008_451e

    ld b, $01
    jr jr_008_4520

jr_008_451e:
    ld b, $00

jr_008_4520:
    ld hl, $c97a
    ld a, [hl]
    cp $ff
    jr z, jr_008_452f

    inc [hl]
    inc hl
    ld a, b
    add [hl]
    ld [hl], a
    jr jr_008_4542

jr_008_452f:
    inc hl
    push hl
    ld a, b
    add [hl]
    ld l, a
    ld h, $00
    jr nc, jr_008_4539

    inc h

jr_008_4539:
    ld d, $00
    ld e, h
    call Call_000_08ac
    ld a, l
    pop hl
    ld [hl], a

jr_008_4542:
    ld a, [$d325]
    inc a
    ld b, a
    ld a, [$c8a0]
    sub b
    jr nc, jr_008_4551

    ld b, $01
    jr jr_008_4553

jr_008_4551:
    ld b, $00

jr_008_4553:
    ld hl, $c978
    ld a, [hl]
    cp $ff
    jr z, jr_008_4562

    inc [hl]
    inc hl
    ld a, b
    add [hl]
    ld [hl], a
    jr jr_008_4575

jr_008_4562:
    inc hl
    push hl
    ld a, b
    add [hl]
    ld l, a
    ld h, $00
    jr nc, jr_008_456c

    inc h

jr_008_456c:
    ld d, $00
    ld e, h
    call Call_000_08ac
    ld a, l
    pop hl
    ld [hl], a

jr_008_4575:
    ld a, [$c895]
    bit 0, a
    ret z

    ld hl, $c97c
    ld a, [hl]
    cp $ff
    jr z, jr_008_458a

    inc [hl]
    inc hl
    ld a, b
    add [hl]
    ld [hl], a
    jr jr_008_459d

jr_008_458a:
    inc hl
    push hl
    ld a, b
    add [hl]
    ld l, a
    ld h, $00
    jr nc, jr_008_4594

    inc h

jr_008_4594:
    ld d, $00
    ld e, h
    call Call_000_08ac
    ld a, l
    pop hl
    ld [hl], a

jr_008_459d:
    ret


Call_008_459e:
    call Call_008_43c5
    ret nz

    call Call_008_43d4
    push hl
    ld a, $06
    add l
    ld l, a
    jr nc, jr_008_45ad

    inc h

jr_008_45ad:
    ld d, h
    ld e, l
    ld hl, $c96e
    ld c, $01
    call Call_000_03eb
    pop bc
    ld hl, $0000
    add hl, bc
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    call Call_008_4607
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld a, [$c8be]
    add $36
    ld e, a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    or a
    jr nz, jr_008_45d9

    dec a

jr_008_45d9:
    cp e
    jr c, jr_008_45dd

    ld [hl], e

jr_008_45dd:
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_008_45f2

    inc [hl]
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    pop de
    jr jr_008_4601

jr_008_45f2:
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00
    add hl, de
    ld d, $00
    ld e, h
    call Call_000_08ac
    pop de

jr_008_4601:
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ret


Call_008_4607:
    push de
    push hl
    ld de, $d8f0
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_008_4615

    ld hl, $270f

jr_008_4615:
    pop de
    ret


Call_008_4617:
    xor a
    ld [$c83b], a
    ret


Call_008_461c:
    ld a, [$c8d0]
    cp $ff
    jp z, Jump_008_4661

    ld a, [$c837]
    cp $01
    jr z, jr_008_465d

    dec a
    dec a
    push af
    ld hl, $c8ac
    add l
    ld l, a
    jr nc, jr_008_4636

    inc h

jr_008_4636:
    ld a, [hl]
    and $0f
    ld d, a
    pop af
    ld hl, $c8ec
    add l
    ld l, a
    jr nc, jr_008_4643

    inc h

jr_008_4643:
    ld a, [hl]
    and $0f
    cp d
    jr z, jr_008_4658

    jr c, jr_008_4651

    xor a
    ld [$c83b], a
    jr jr_008_465b

jr_008_4651:
    ld a, $01
    ld [$c83b], a
    jr jr_008_465b

jr_008_4658:
    ld a, [$c83b]

jr_008_465b:
    xor $01

jr_008_465d:
    ld [$c835], a
    ret


Jump_008_4661:
    xor a
    ld [$c835], a
    ret


    ld hl, $c0f4
    ld a, [hl]
    push af
    or a
    jr z, jr_008_4670

    ld [hl], $02

jr_008_4670:
    ld hl, $d438
    ld a, [hl]
    push af
    ld [hl], $00
    rst $08

    db $62

    call Call_000_2e3b
    ldh a, [$96]
    push af
    ld hl, $4695
    call Call_008_470d
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld [$d438], a
    pop af
    ld [$c0f4], a
    ld a, b
    ret


    nop
    nop
    or l
    ld b, [hl]

    db $c6, $46

    or l
    ld b, [hl]

    db $d7, $46

    sbc $46
    ld [c], a
    ld b, [hl]
    rst $28
    ld b, [hl]
    nop
    nop
    nop
    nop
    sbc $46
    sbc $46
    ld [c], a
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$c33f]
    or a
    jr nz, jr_008_46c2

    rst $18
    ld a, [bc]
    ld b, c
    call Call_008_46f3
    ret


jr_008_46c2:
    rst $18
    ld b, $41
    ret


    ld a, [$c33f]
    or a
    jr nz, jr_008_46d3

    rst $18

    db $0c, $41

    call Call_008_46f3
    ret


jr_008_46d3:
    rst $18
    ld b, $41
    ret


    rst $18

    db $0e, $41

    call Call_008_46f3
    ret


    rst $18
    jr jr_008_4722

    ret


    rst $30
    add b
    inc c
    jr z, jr_008_46eb

    rst $18
    db $10
    ld b, c
    ret


jr_008_46eb:
    rst $18
    ld [de], a
    ld b, c
    ret


    rst $18
    ld [de], a
    ld b, c
    ret


Call_008_46f3:
    push af
    ldh a, [$9e]
    or a
    jr z, jr_008_470b

    ldh a, [$90]
    bit 2, a
    jr z, jr_008_4702

    rst $18
    jr nz, @+$43

jr_008_4702:
    ldh a, [$90]
    bit 6, a
    jr z, jr_008_470b

    rst $18
    ld [bc], a
    ld b, h

jr_008_470b:
    pop af
    ret


Call_008_470d:
    ld a, [$c834]
    cp $10
    ret nc

    and $0f
    add a
    add l
    ld l, a
    jr nc, jr_008_471b

    inc h

jr_008_471b:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or l
    ret z

    jp hl


jr_008_4722:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $473f
    call Call_008_470d
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
    nop
    ld e, a
    ld b, a

    db $8c, $47

    and [hl]
    ld b, a

    db $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_008_475c:
    nop
    nop
    nop
    rst $08
    jr c, jr_008_475c

    ld [hl], $c8
    cp $05
    jr nz, jr_008_476b

    rst $20
    ldh [rIF], a

jr_008_476b:
    call Call_008_43ee
    call Call_008_4617
    xor a
    ld [$c4bd], a
    rst $18

jr_008_4776:
    ld b, $0e
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d800
    rst $18
    inc b
    ld c, $ea
    ld [hl], l

Call_008_4786:
    ret z

    xor a
    ld [$c96c], a
    ret


    rst $08

    db $38

    xor a
    ld [$c83a], a
    ld [$c83b], a
    ld hl, $c96e
    ld bc, $0012
    call Call_000_039f
    call Call_008_4203
    xor a
    ld [$c96c], a
    ret


    rst $08
    jr c, jr_008_4776

    rla
    ld b, [hl]
    ld a, [$c8d0]
    cp $ff
    call nz, Call_008_4203
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
    ld hl, $47d1
    call Call_008_470d
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
    nop
    pop af
    ld b, a

    db $f5, $47

    ld sp, hl
    ld b, a

    db $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_008_4ef4
    ret


    call Call_008_4ef4
    ret


    call Call_008_4ef4
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
    ld hl, $481a

Call_008_480d:
    call Call_008_470d
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
    nop
    ld a, [hl-]
    ld c, b

    db $47, $48

    dec sp
    ld c, b

    db $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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


    call Call_008_461c
    ld a, [$c8d0]
    cp $ff
    call nz, Call_008_420f
    ret


    ld a, [$c83a]
    or a
    jr nz, jr_008_4854

    ld a, [$c837]
    cp $01
    jr z, jr_008_4859

jr_008_4854:
    ld a, [$c83b]
    xor $01

jr_008_4859:
    ld [$c835], a
    call Call_008_420f
    ld a, [$c83a]
    or a
    jr z, jr_008_486b

    ld a, $1e
    rst $18
    ld [$c93b], sp

jr_008_486b:
    call Call_008_4082
    dec a
    cp $02
    ret nc

    ld a, $01
    ld [$c832], a
    rst $18
    db $10
    ld [$263e], sp
    rst $18
    ld [$c93b], sp

    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $489d
    call Call_008_470d
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
    nop
    db $fd
    ld c, b

    db $bd, $48

    db $fd
    ld c, b

    db $eb, $48

    nop
    nop
    db $f4
    ld c, b
    db $f4
    ld c, b
    nop
    nop
    nop
    nop
    db $fd
    ld c, b
    nop
    nop
    db $f4
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop

    call Call_008_4f30
    call Call_008_40dd
    or a
    ret z

    cp $01
    jr nz, jr_008_48cf

    ld a, $1c
    rst $18

    db $08, $3b

    ret


jr_008_48cf:
    cp $02
    jr nz, jr_008_48df

    ld a, [$d4cd]
    cp $06
    ret nz

    ld a, $1a
    rst $18
    ld [$c93b], sp

jr_008_48df:
    ld a, [$d4cd]
    cp $06
    ret nz

    ld a, $1a
    rst $18
    ld [$c93b], sp

    call Call_008_4f30
    ld a, $0f
    ld [wPlayer1_Round_PowerShots], a
    ret


    call Call_008_5062
    ld a, $0f
    ld [wPlayer1_Round_PowerShots], a
    ret


    call Call_008_4f30
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
    ld hl, $491e
    call Call_008_470d
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $00, $00

    ld a, $49

    db $4b, $49

    ld b, d
    ld c, c

    db $39, $4a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_008_441a
    ret


    ld a, [$c8d0]
    cp $ff
    call nz, Call_008_4250
    ret


    call Call_008_4250
    ld hl, $d48e
    bit 7, [hl]
    jr z, jr_008_4973

    ld a, [$c835]
    push af
    xor $01
    ld [$c835], a
    ld a, $2a
    call Call_008_4028
    ld a, [hl]
    or a
    jr nz, jr_008_496f

    ld [hl], $01
    ld a, $20
    call Call_008_4028
    inc [hl]

jr_008_496f:
    pop af
    ld [$c835], a

jr_008_4973:
    call Call_008_4161
    or a
    ret z

    push af
    call Call_008_40d5
    pop af
    push bc
    push af
    ld a, [$c837]
    dec a
    cp $12
    jr c, jr_008_4989

    ld a, $11

jr_008_4989:
    ld hl, $c96e
    add l
    ld l, a
    jr nc, jr_008_4991

    inc h

jr_008_4991:
    pop af
    push af
    cp $01
    jr nz, jr_008_49c8

    ld d, a
    ld a, [$c83a]
    or a
    jr nz, jr_008_499f

    ld [hl], d

jr_008_499f:
    rst $18
    ld [hl], $10
    ld a, [$c835]
    push af
    ld a, $01
    ld [$c835], a
    ld a, [$c8a0]
    inc a
    ld [$c8e0], a
    rst $18
    ld [hl], $10
    pop af
    ld [$c835], a
    ld a, [wPlayer1_Char_IsAi]
    cp $03
    jr z, jr_008_49c4

    rst $08
    jr nz, jr_008_49db

    ld [bc], a

jr_008_49c4:
    rst $08
    ld hl, $6018

jr_008_49c8:
    cp $02
    jr nz, jr_008_49fc

    ld d, a
    ld a, [$c83a]
    or a
    jr nz, jr_008_49d4

    ld [hl], d

jr_008_49d4:
    rst $18
    ld [hl], $10
    ld a, [$c835]
    push af

jr_008_49db:
    xor a
    ld [$c835], a
    ld a, [$c8e0]
    inc a
    ld [$c8a0], a
    rst $18
    ld [hl], $10
    pop af
    ld [$c835], a
    ld a, [wPlayer1_Char_IsAi]
    cp $03
    jr z, jr_008_49f8

    rst $08
    ld hl, $0218

jr_008_49f8:
    rst $08
    jr nz, @+$1a

    inc l

jr_008_49fc:
    ld a, [$c83a]
    or a
    jr nz, jr_008_4a04

    ld [hl], $00

jr_008_4a04:
    rst $18

    db $36, $10

    ld a, [$c835]
    ld b, a
    ld a, $20
    call Call_008_4028
    ld c, [hl]
    ld a, b
    xor $01
    ld [$c835], a
    ld a, $20
    call Call_008_4028
    ld [hl], c
    push bc
    rst $18

    db $36, $10

    pop bc
    ld a, b
    ld [$c835], a
    rst $08

    db $22

    pop bc
    ld a, $01
    ld [$c8aa], a
    ld [$c8ea], a
    pop bc
    ld a, c
    or a
    ret z

    ld [$c96c], a
    ret


    rst $18

    db $2a, $10

    rst $18

    db $0c, $11

    ld a, [$c8aa]
    or a
    jr z, jr_008_4a4a

    rst $18
    ld d, $41
    jr jr_008_4a5a

jr_008_4a4a:
    ld a, [$d443]
    cp $02
    jr nz, jr_008_4a51

jr_008_4a51:
    call Call_000_2e3b
    rst $18

    db $0c, $11

    rst $18

    db $14, $41

jr_008_4a5a:
    cp $02
    jr nz, jr_008_4a65

    call Call_008_4aa3
    rst $18

    db $10, $12

    ret


jr_008_4a65:
    cp $03
    jr nz, jr_008_4a77

    ld hl, $c8aa
    ld [hl], $01
    ld hl, $c837
    dec [hl]
    ld hl, $c839
    inc [hl]
    ret


jr_008_4a77:
    cp $04
    jr nz, jr_008_4a8b

    ld hl, $c8aa
    ld [hl], $01
    ld hl, $c839
    ld [hl], $01
    ld a, $01
    ld [$c96c], a
    ret


jr_008_4a8b:
    cp $05
    jr nz, jr_008_4a9e

    ld hl, $c8aa
    ld [hl], $01
    ld hl, $c839
    ld [hl], $01
    xor a
    ld [$c96c], a
    ret


jr_008_4a9e:
    xor a
    ld [$c96c], a
    ret


Call_008_4aa3:
    ld hl, $c8aa
    ld [hl], $00
    rst $18

    db $64, $02

    ld hl, $c8a2
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
    ld [hl], a
    ld hl, $d4e7
    ld [hl], $01
    inc hl
    ld a, [$d329]
    ld [hl+], a
    push hl
    ld hl, $d369
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ld a, [$d35d]
    ld [de], a
    inc de
    ld a, [$d35e]
    ld [de], a
    ld a, [$d447]
    ld [$c8bf], a
    ld a, [$d35a]
    ld [$c8a0], a
    ld a, [$d35b]
    ld [$c8a1], a
    ld a, [$d359]
    ld [$c8a9], a
    ld a, [$d35c]
    ld [$c8ab], a
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
    ld hl, $4b1f
    call Call_008_470d
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $00, $00

    ccf
    ld c, e

    db $64, $4b

    sub e
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor a
    ld [$c4bd], a
    rst $18
    ld b, $0e
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d800
    rst $18
    inc b
    ld c, $ea
    ld [hl], l
    ret z

    call Call_008_44d8
    ld a, $01
    ld [$c4bd], a
    rst $18
    nop
    ld c, $cd
    ld [hl], l
    ld c, a
    ret


    call Call_008_432f
    ld a, $01
    ld [$c4bd], a
    rst $18

    db $04, $3e

    ld a, [$c96c]
    or a
    jr nz, jr_008_4b8d

    ld a, [$c839]
    cp $02
    jr nc, jr_008_4b86

    ld a, $01
    ld [$c83a], a
    ld a, $02
    ld [$c839], a

jr_008_4b86:
    call Call_008_4f75
    call Call_008_4baa
    ret


jr_008_4b8d:
    ld a, $01
    ld [$c839], a
    ret


    ld a, [$c8d0]
    cp $ff
    call nz, Call_008_432f
    ld a, $01
    ld [$c4bd], a
    rst $18
    nop
    ld c, $cd
    ld [hl], l
    ld c, a
    call Call_008_4baa
    ret


Call_008_4baa:
    ld a, [$c837]
    cp $11
    ret c

    ld a, [$c8d0]
    cp $ff
    ret z

    ld a, $01
    ld [$c832], a
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
    ld hl, $4bd9
    call Call_008_470d
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $00, $00

    ld sp, hl
    ld c, e
    ld a, l
    ld c, l
    cp a
    ld c, [hl]
    ld a, [c]
    ld c, [hl]
    di
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ld c, [hl]
    di
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_008_459e
    ld a, $12
    ld [$c837], a
    ld a, $02
    ld [$c4bd], a
    rst $18
    ld b, $0e
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d800
    rst $18
    inc b
    ld c, $57
    inc a
    ld [$c96c], a
    ld a, $01
    rst $18
    jr jr_008_4c2a

    ld a, [$c96c]
    cp $04
    jp nc, Jump_008_4d0e

    ld l, $14
    add l

jr_008_4c2a:
    ld l, a
    ld a, [$c836]
    ld h, a
    push af
    rst $18
    ld c, h
    ld [bc], a
    jr nz, jr_008_4c3b

    rst $18
    ld c, d
    ld [bc], a
    call Call_008_4d18

jr_008_4c3b:
    pop af
    push af
    ld b, a
    ld a, [$c960]
    cp $00
    jp nz, Jump_008_4cae

    ld a, b
    and $0f
    add a
    add a
    ld hl, $4c6e
    add l
    ld l, a
    jr nc, jr_008_4c53

    inc h

jr_008_4c53:
    ld a, [hl]
    or a
    jr z, jr_008_4cae

    ld [$c960], a
    ld a, [$c96c]
    add l
    ld l, a
    jr nc, jr_008_4c62

    inc h

jr_008_4c62:
    ld a, [hl]
    ld [$c961], a
    ld a, $32
    ld [$c967], a
    jp Jump_008_4cae


    nop
    ld bc, $0101
    jr jr_008_4c76

    inc bc
    inc b

jr_008_4c76:
    add hl, de
    ld [bc], a
    inc bc
    inc b
    ld a, [de]
    ld [bc], a
    inc bc
    inc b
    dec de
    ld [bc], a
    inc bc
    inc b
    dec e
    ld b, $06
    ld b, $00
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0101

Jump_008_4cae:
jr_008_4cae:
    pop af
    cp $01
    jr nz, jr_008_4cc2

    rst $20
    nop
    ld c, $fa
    ld l, h
    ret


    cp $01
    jr nz, jr_008_4d0e

    rst $20
    nop
    ld de, $4c18

jr_008_4cc2:
    cp $02
    jr nz, jr_008_4cd5

    rst $20
    jr nz, jr_008_4cd7

    ld a, [$c96c]
    cp $01
    jr nz, jr_008_4d0e

    rst $20
    jr nz, jr_008_4ce4

    jr jr_008_4d0e

jr_008_4cd5:
    cp $03

jr_008_4cd7:
    jr nz, jr_008_4ce8

    rst $20
    ld b, b
    ld c, $fa
    ld l, h
    ret


    cp $01
    jr nz, jr_008_4d0e

    rst $20

jr_008_4ce4:
    ld b, b
    ld de, $2618

jr_008_4ce8:
    cp $04
    jr nz, jr_008_4cfb

    rst $20
    ld h, b
    ld c, $fa
    ld l, h
    ret


    cp $01
    jr nz, jr_008_4d0e

    rst $20
    ld h, b
    ld de, $1318

jr_008_4cfb:
    cp $05
    jr nz, jr_008_4d0e

    rst $20
    add b
    ld c, $fa
    ld l, h
    ret


    cp $01
    jr nz, jr_008_4d0e

    rst $20
    and b
    ld c, $18
    nop

Jump_008_4d0e:
jr_008_4d0e:
    ld de, $000a
    rst $18
    ld d, h
    ld [bc], a
    call Call_008_4f03
    ret


Call_008_4d18:
    ld a, [$c96c]
    cp $04
    ret nc

    ld [$caad], a
    add a
    ld h, a
    ld a, [$c836]
    and $07
    add a
    add a
    add a
    add h
    ld hl, $4d3d
    add l
    ld l, a
    jr nc, jr_008_4d34

    inc h

jr_008_4d34:
    ld a, [hl+]
    ld [$caae], a
    ld a, [hl]
    ld [$caaf], a
    ret


    nop
    nop
    jr z, jr_008_4d41

jr_008_4d41:
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    jr z, jr_008_4d49

jr_008_4d49:
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld b, [hl]
    nop
    inc hl
    nop
    rrca
    nop
    nop
    nop
    adc h
    nop
    ld b, [hl]
    nop
    inc hl
    nop
    nop
    nop
    ret z

    nop
    ld h, h
    nop
    ld [hl-], a
    nop
    nop
    nop
    sub b
    ld bc, $00c8
    ld h, h
    nop
    nop
    nop
    inc l
    ld bc, $0096
    ld c, e
    nop
    nop
    nop
    jr z, jr_008_4d79

jr_008_4d79:
    inc d
    nop
    ld a, [bc]
    nop
    ld a, $00
    rst $18
    jr jr_008_4d8d

    ld a, [$c96c]
    cp $01
    jp nz, Jump_008_4e5f

    ld a, [$c33f]

jr_008_4d8d:
    or a
    jp nz, Jump_008_4e8d

    ld a, [$c8d0]
    cp $04
    jr nz, jr_008_4dae

    ld de, $0a00
    ld hl, $0028
    ld c, $14
    call Call_008_4e97
    push de
    ld de, $0080
    rst $18
    ld b, h
    ld [bc], a
    pop de
    jp Jump_008_4e8d


jr_008_4dae:
    cp $05
    jr nz, jr_008_4dc8

    ld de, $0a40
    ld hl, $0046
    ld c, $15
    call Call_008_4e97
    push de
    ld de, $00a0
    rst $18
    ld b, h
    ld [bc], a
    pop de
    jp Jump_008_4e8d


jr_008_4dc8:
    cp $06
    jr nz, jr_008_4de2

    ld de, $0a80
    ld hl, $008c
    ld c, $16
    call Call_008_4e97
    push de
    ld de, $00c0
    rst $18
    ld b, h
    ld [bc], a
    pop de
    jp Jump_008_4e8d


jr_008_4de2:
    cp $07
    jr nz, jr_008_4e12

    ld de, $0ac0
    ld hl, $00c8
    ld c, $17
    call Call_008_4e97
    push de
    ld de, $00e0
    rst $18
    ld b, h
    ld [bc], a
    pop de
    ld a, [$c960]
    cp $00
    jr nz, jr_008_4e0f

    rst $30
    add b
    rla
    jr nz, jr_008_4e0f

    ld a, $30
    ld [$c960], a
    ld a, $05
    ld [$c961], a

jr_008_4e0f:
    jp Jump_008_4e8d


jr_008_4e12:
    cp $08
    jr nz, jr_008_4e2b

    ld de, $0b00
    ld hl, $0190
    ld c, $18
    call Call_008_4e97
    push de
    ld de, $0100
    rst $18
    ld b, h
    ld [bc], a
    pop de
    jr jr_008_4e8d

jr_008_4e2b:
    cp $09
    jr nz, jr_008_4e44

    ld de, $0b40
    ld hl, $0032
    ld c, $19
    call Call_008_4e97
    push de
    ld de, $0120
    rst $18
    ld b, h
    ld [bc], a
    pop de
    jr jr_008_4e8d

jr_008_4e44:
    cp $0a
    jr nz, jr_008_4e5d

    ld de, $0b80
    ld hl, $0190
    ld c, $1a
    call Call_008_4e97
    push de
    ld de, $0140
    rst $18
    ld b, h
    ld [bc], a
    pop de
    jr jr_008_4e8d

jr_008_4e5d:
    jr jr_008_4e8d

Jump_008_4e5f:
    ld a, [$c33f]
    or a
    jp nz, Jump_008_4e8d

    ld a, [$c8d0]
    cp $04
    jr nz, jr_008_4e73

    rst $20
    add b
    db $10
    jp Jump_008_4e8d


jr_008_4e73:
    cp $05
    jr nz, jr_008_4e7d

    rst $20
    and b
    db $10
    jp Jump_008_4e8d


jr_008_4e7d:
    cp $06
    jr nz, jr_008_4e86

    rst $20
    ret nz

    db $10
    jr jr_008_4e8d

jr_008_4e86:
    cp $07
    jr nz, jr_008_4e8d

    rst $20
    ldh [rNR10], a

Jump_008_4e8d:
jr_008_4e8d:
    ld de, $000a
    rst $18
    ld d, h
    ld [bc], a
    call Call_008_4f03
    ret


Call_008_4e97:
    call Call_000_2d10
    jr nz, jr_008_4eaa

    push de
    ld a, c
    ld [$caad], a
    ld a, l
    ld [$caae], a
    ld a, h
    ld [$caaf], a
    pop de

jr_008_4eaa:
    push de
    call Call_000_2d2e
    pop de
    ld a, [$c814]
    or a
    ret nz

    ld a, $20
    add e
    ld e, a
    jr nc, jr_008_4ebb

    inc d

jr_008_4ebb:
    call Call_000_2d2e
    ret


    ld a, [$c8d0]
    cp $ff
    jr z, jr_008_4ee8

    ld hl, $c96c
    ld a, [$c8be]
    add $36
    ld b, a
    ld a, [$c8fe]
    add $36
    cp b
    jr nz, jr_008_4edb

    ld [hl], $03
    jr jr_008_4ee3

jr_008_4edb:
    jr nc, jr_008_4ee1

    ld [hl], $02
    jr jr_008_4ee3

jr_008_4ee1:
    ld [hl], $01

jr_008_4ee3:
    ld a, $02
    rst $18
    jr jr_008_4ef3

jr_008_4ee8:
    ld de, $000a
    rst $18
    ld d, h
    ld [bc], a
    call Call_008_4f03
    ret


    ret


jr_008_4ef3:
    ret


Call_008_4ef4:
    ld hl, $c96d
    ld a, [hl]
    ld [hl], $02
    push hl
    push af
    rst $18

    db $34, $02

    pop af
    pop hl
    ld [hl], a
    ret


Call_008_4f03:
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    call Call_000_23b6
    call Call_000_2683
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld a, [$c2a5]
    and $0f
    cp $0f
    jr z, @+$0f

    ld hl, $c83c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, $01
    ld h, $00
    rst $18
    ld [$cd48], sp
    db $f4
    ld c, [hl]
    ret


Call_008_4f30:
    ld a, [$d4cd]
    cp $06
    jp nz, Jump_008_5062

    ld a, [$d325]
    ld b, a
    ld a, $20
    call Call_008_4028
    ld a, [hl]
    inc a
    sub b
    jr z, jr_008_4f55

    cp $ff
    jr z, jr_008_4f5d

    cp $fe
    jr z, jr_008_4f65

    cp $fd
    jr z, jr_008_4f6d

    rst $08
    inc hl
    ret


jr_008_4f55:
    rst $08

    db $0d

    ld a, $15
    rst $18

    db $08, $3b

    ret


jr_008_4f5d:
    rst $08
    ld c, $3e
    rla
    rst $18
    ld [$c93b], sp

jr_008_4f65:
    rst $08
    ld c, $3e
    inc d
    rst $18
    ld [$c93b], sp

jr_008_4f6d:
    rst $08
    ld c, $3e
    ld d, $df
    ld [$c93b], sp

Call_008_4f75:
    ld a, [$c839]
    cp $0a
    ret nz

    rst $18
    ld a, [bc]
    ld c, b
    rst $18
    ld a, [bc]
    ld bc, $f0c9
    sub [hl]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [$d444], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $c600
    ld hl, $d100
    ld c, $08

jr_008_4f9e:
    push bc
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
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $002c
    add hl, bc
    ld a, $0c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec c
    jr nz, jr_008_4f9e

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d100
    ld c, $08

jr_008_4ff6:
    push bc
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
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $002c
    add hl, bc
    ld a, $0c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec c
    jr nz, jr_008_4ff6

    ld hl, $c600
    ld de, $b880
    ld c, $10
    call Call_000_0468
    ld hl, $c700
    ld de, $9880
    ld c, $10
    call Call_000_0468
    call Call_000_0460
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_008_5062:
Jump_008_5062:
    push af
    push hl
    ld a, [$c96d]
    or a
    jr z, jr_008_50c3

    ld a, [$c82c]
    or a
    jr z, jr_008_5075

    call Call_000_2c19
    jr jr_008_50c3

jr_008_5075:
    ld a, [$c834]
    cp $08
    jr nz, jr_008_5080

    rst $08
    dec b
    jr jr_008_50c3

jr_008_5080:
    cp $04
    jr nz, jr_008_5088

    rst $08

    db $07

    jr jr_008_50c3

jr_008_5088:
    ld a, [$c832]
    or a
    jr z, jr_008_5092

    rst $08
    ld a, [hl+]
    jr jr_008_50c3

jr_008_5092:
    ld a, [$c33f]
    or a
    jr nz, jr_008_50b2

    ld a, [$c8d0]
    cp $ff
    jr z, jr_008_50b2

    and $0f
    ld hl, $50d6
    add l
    ld l, a
    jr nc, jr_008_50a9

    inc h

jr_008_50a9:
    ld a, [hl]
    or a
    jr z, jr_008_50b2

    call Call_000_2c19
    jr jr_008_50c3

jr_008_50b2:
    ld hl, $50c6
    ld a, [$c836]
    and $0f
    add l
    ld l, a
    jr nc, jr_008_50bf

    inc h

jr_008_50bf:
    ld a, [hl]
    call Call_000_2c19

jr_008_50c3:
    pop hl
    pop af
    ret


    jr z, jr_008_50d0

    ld a, [bc]
    add hl, bc
    dec bc
    inc c
    ld d, $07
    jr z, @+$2a

jr_008_50d0:
    ld d, $16
    ld d, $16
    ld d, $16
    nop
    nop
    nop
    nop
    ld de, $1312
    inc d
    inc c

    db $16

    dec d
    nop
    nop
    nop
    nop
    nop
    ld a, [$d4cd]
    cp $06
    jp nz, Jump_008_5062

    ld a, [$c818]
    bit 0, a
    jp nz, Jump_008_5062

    ld a, [$d325]
    ld b, a
    ld a, $20
    call Call_008_4028
    ld a, [hl]
    sub b
    jr nc, jr_008_5106

    rst $08
    ld c, $c9

jr_008_5106:
    rst $08
    dec c
    ret


    ld a, [$d443]
    cp $01
    jp z, Jump_008_51d0

    ld a, [$d519]
    ld h, a
    ld a, [$d378]
    cp h
    jr nz, jr_008_5128

    ld a, [$d516]
    ld h, a
    ld a, [$d375]
    cp h
    jr nz, jr_008_5128

    jp Jump_008_51d0


jr_008_5128:
    ld a, [$d378]
    and $3f
    ld h, a
    ld l, $00
    srl h
    rr l
    srl h
    rr l
    ld a, [$d375]
    and $3f
    ld d, $d0
    ld e, a
    add hl, de
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $d7
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 7, a
    jp z, Jump_008_51d0

    ld b, a
    ld hl, $d37a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    ld a, h
    ld d, h
    cp $18
    jr nc, jr_008_51d0

    and $1f
    ld hl, $d4f3
    add l
    ld l, a
    jr nc, jr_008_5179

    inc h

jr_008_5179:
    ld a, [hl]
    or a
    jr z, jr_008_51d0

    ld c, a
    ld a, [$d377]
    and $f0
    ld h, a
    ld a, [$d374]
    swap a
    and $0f
    or h
    ld e, a
    push bc
    push de
    ld hl, $d37c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d37e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1a03
    pop de
    ld hl, $5326
    ld a, e
    add l
    ld l, a
    jr nc, jr_008_51a8

    inc h

jr_008_51a8:
    ld a, [hl]
    sub b
    push af
    ld hl, $5426
    ld a, e
    add l
    ld l, a
    jr nc, jr_008_51b4

    inc h

jr_008_51b4:
    ld l, [hl]
    ld h, $00
    pop af
    call Call_000_0b31
    bit 7, d
    jr z, jr_008_51c5

    xor a
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a

jr_008_51c5:
    ld a, e
    pop bc
    ld b, c
    res 0, b
    cp b
    jr nc, jr_008_51d0

    xor a
    inc a
    ret


Jump_008_51d0:
jr_008_51d0:
    xor a
    ret


    ld a, [$d519]
    ld h, a
    ld a, [$d405]
    cp h
    jr nz, jr_008_51e7

    ld a, [$d516]
    ld h, a
    ld a, [$d402]
    cp h
    jr nz, jr_008_51e7

    ret


jr_008_51e7:
    ld a, [$d443]
    cp $01
    ret z

    cp $02
    ret z

    ld a, [$d405]
    and $3f
    ld h, a
    ld l, $00
    srl h
    rr l
    srl h
    rr l
    ld a, [$d402]
    and $3f
    ld d, $d0
    ld e, a
    add hl, de
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $d7
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 7, a
    ret z

    ld b, a
    ld hl, $d407
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    ld a, h
    ld d, h
    cp $18
    ret nc

    and $1f
    ld hl, $d4f3
    add l
    ld l, a
    jr nc, jr_008_523e

    inc h

jr_008_523e:
    ld a, [hl]
    or a
    ret z

    ld c, a
    ld a, [$d404]
    and $f0
    ld h, a
    ld a, [$d401]
    swap a
    and $0f
    or h
    ld e, a
    push de
    push bc
    ld a, [$d414]
    ld b, a
    ld hl, $5326
    ld a, e
    add l
    ld l, a
    jr nc, jr_008_5260

    inc h

jr_008_5260:
    ld a, [hl]
    sub b
    push af
    ld hl, $5426
    ld a, e
    add l
    ld l, a
    jr nc, jr_008_526c

    inc h

jr_008_526c:
    ld l, [hl]
    ld h, $00
    pop af
    call Call_000_0b31
    bit 7, d
    jr z, jr_008_527d

    xor a
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a

jr_008_527d:
    ld a, e
    pop bc
    pop de
    ld b, c
    res 0, b
    cp b
    ret nc

    ld a, [$d405]
    ld [$d519], a
    ld a, [$d402]
    ld [$d516], a
    bit 0, c
    jr z, jr_008_52d5

    ld hl, $5326
    ld a, e
    add l
    ld l, a
    jr nc, jr_008_529e

    inc h

jr_008_529e:
    ld c, [hl]
    ld a, [$d414]
    sub c
    cpl
    inc a
    add $80
    add c
    ld b, a
    ld c, $00
    ld a, [$d413]
    srl a
    ld h, a
    ld l, $00
    call Call_000_11ba
    ld a, e
    ld [$d40b], a
    ld a, d
    ld [$d40c], a
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    ld hl, $d48e
    set 4, [hl]
    ld a, [$d413]
    or a
    ret z

    xor a
    call Call_008_5526
    ret


jr_008_52d5:
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $e6
    call Call_000_0bce
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $e6
    call Call_000_0bce
    ld a, l
    ld [$d40b], a
    ld a, h
    ld [$d40c], a
    ld hl, $d40d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $f0
    call Call_000_0bce
    ld a, l
    ld [$d40d], a
    ld a, h
    ld [$d40e], a
    ld hl, $d48e
    set 4, [hl]
    ld a, [$d413]
    or a
    ret z

    ld a, $01
    call Call_008_5526
    ret


    ld h, b
    ld e, b
    ld c, b
    ld b, b
    ld b, b
    jr c, jr_008_534d

    jr nz, @-$5e

    and d
    and l
    xor c
    xor l
    or c
    or [hl]
    cp d
    ret nz

    add $ca
    rst $08
    db $d3
    rst $10
    db $db
    sbc $9d
    and b
    and e
    and [hl]
    xor d
    xor a
    or h
    cp d
    ret nz

    add $cc
    pop de
    sub $da
    db $dd
    ldh [$9a], a
    sbc h
    and b
    and e
    xor b
    xor l
    or d

jr_008_534d:
    cp c
    ret nz

    rst $00
    adc $d3
    ret c

    db $dd
    ldh [$e4], a
    sub [hl]
    sbc c
    sbc h
    and b
    and h
    xor c
    or b
    or a
    ret nz

    ret


    ret nc

    rst $10
    call c, $e4e0
    rst $20
    sub d
    sub l
    sub a
    sbc e
    and b
    and l
    xor l
    or [hl]
    ret nz

    jp z, $dbd3

    ldh [$e5], a
    jp hl


    db $eb
    adc [hl]
    sub b
    sub d
    sub [hl]
    sbc d
    and b
    xor b
    or d
    ret nz

    adc $d8
    ldh [$e6], a
    ld [$f0ee], a
    adc c
    adc e
    adc l
    adc a
    sub d
    sub a
    and b
    xor l
    ret nz

    db $d3
    ldh [$e9], a
    xor $f1
    di
    push af
    add l
    add l
    add [hl]
    adc b
    adc c
    adc l
    sub d
    and b
    ret nz

    ldh [$ee], a
    di
    rst $30
    ld hl, sp-$06
    ei
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
    nop
    nop
    ld a, e
    ld a, e
    ld a, d
    ld a, b
    ld [hl], a
    ld [hl], e
    ld l, [hl]
    ld h, b
    ld b, b
    jr nz, jr_008_53d3

    dec c
    add hl, bc
    ld [$0506], sp
    ld [hl], a
    ld [hl], l
    ld [hl], e
    ld [hl], c
    ld l, [hl]
    ld l, c
    ld h, b
    ld d, e
    ld b, b
    dec l
    jr nz, jr_008_53e9

    ld [de], a

jr_008_53d3:
    rrca
    dec c
    dec bc
    ld [hl], d
    ld [hl], b
    ld l, [hl]
    ld l, d
    ld h, [hl]
    ld h, b

jr_008_53dc:
    ld e, b
    ld c, [hl]
    ld b, b
    ld [hl-], a
    jr z, jr_008_5402

    ld a, [de]
    ld d, $12
    db $10
    ld l, [hl]
    ld l, e
    ld l, c

jr_008_53e9:
    ld h, l
    ld h, b
    ld e, e
    ld d, e
    ld c, d
    ld b, b
    ld [hl], $2d
    dec h
    jr nz, jr_008_540f

    rla
    dec d
    ld l, d
    ld h, a
    ld h, h
    ld h, b
    ld e, h
    ld d, a
    ld d, b
    ld c, c
    ld b, b
    scf
    jr nc, jr_008_542b

jr_008_5402:
    inc h
    jr nz, jr_008_5421

    add hl, de
    ld h, [hl]
    ld h, h
    ld h, b
    ld e, l
    ld e, b
    ld d, e
    ld c, [hl]
    ld b, a
    ld b, b

jr_008_540f:
    add hl, sp
    ld [hl-], a
    dec l
    jr z, jr_008_5437

    jr nz, jr_008_5432

    ld h, e
    ld h, b
    ld e, l
    ld e, d
    ld d, [hl]
    ld d, c
    ld c, h
    ld b, [hl]
    ld b, b
    ld a, [hl-]
    inc [hl]

jr_008_5421:
    cpl
    ld a, [hl+]
    ld h, $23
    jr nz, jr_008_53dc

    xor d
    and b
    sub [hl]
    adc a

jr_008_542b:
    adc b
    add e
    add b
    add b
    add b
    add e
    adc b

jr_008_5432:
    adc a
    sub [hl]
    and b
    xor d
    xor d

jr_008_5437:
    sbc [hl]
    sub e
    adc c
    add b
    ld a, c
    ld [hl], h
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], h
    ld a, c
    add b
    adc c
    sub e
    sbc [hl]
    and b
    sub e
    add a
    ld a, h
    ld [hl], e
    ld l, e
    ld h, l
    ld h, c
    ld h, b
    ld h, c
    ld h, l
    ld l, e
    ld [hl], e
    ld a, h
    add a
    sub e
    sub [hl]
    adc c
    ld a, h
    ld [hl], c
    ld h, [hl]
    ld e, l
    ld d, [hl]
    ld d, c
    ld d, b
    ld d, c
    ld d, [hl]
    ld e, l
    ld h, [hl]
    ld [hl], c
    ld a, h
    adc c
    adc a
    add b
    ld [hl], e
    ld h, [hl]
    ld e, d
    ld d, b
    ld b, a
    ld b, c
    ld b, b
    ld b, c
    ld b, a
    ld d, b
    ld e, d
    ld h, [hl]
    ld [hl], e
    add b
    adc b
    ld a, c
    ld l, e
    ld e, l
    ld d, b
    ld b, e
    add hl, sp
    ld [hl-], a
    jr nc, jr_008_54b2

    add hl, sp
    ld b, e
    ld d, b
    ld e, l
    ld l, e
    ld a, c
    add e
    ld [hl], h
    ld h, l
    ld d, [hl]
    ld b, a
    add hl, sp
    dec l
    inc hl
    jr nz, jr_008_54b3

    dec l
    add hl, sp
    ld b, a
    ld d, [hl]
    ld h, l
    ld [hl], h
    add b
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    ld [hl-], a
    inc hl
    ld d, $10
    ld d, $23
    ld [hl-], a
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_54cd

    stop
    db $10
    jr nz, jr_008_54e2

jr_008_54b2:
    ld b, b

jr_008_54b3:
    ld d, b
    ld h, b
    ld [hl], b
    add b
    ld [hl], c
    ld h, c
    ld d, c
    ld b, c
    ld [hl-], a
    inc hl
    ld d, $10
    ld d, $23
    ld [hl-], a
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    add e
    ld [hl], h
    ld h, l
    ld d, [hl]
    ld b, a
    add hl, sp
    dec l

jr_008_54cd:
    inc hl
    jr nz, jr_008_54f3

    dec l
    add hl, sp
    ld b, a
    ld d, [hl]
    ld h, l
    ld [hl], h
    adc b
    ld a, c
    ld l, e
    ld e, l
    ld d, b
    ld b, e
    add hl, sp
    ld [hl-], a
    jr nc, jr_008_5512

    add hl, sp
    ld b, e

jr_008_54e2:
    ld d, b
    ld e, l
    ld l, e
    ld a, c
    adc a
    add b
    ld [hl], e
    ld h, [hl]
    ld e, d
    ld d, b
    ld b, a
    ld b, c
    ld b, b
    ld b, c
    ld b, a
    ld d, b
    ld e, d

jr_008_54f3:
    ld h, [hl]
    ld [hl], e
    add b
    sub [hl]
    adc c
    ld a, h
    ld [hl], c
    ld h, [hl]
    ld e, l
    ld d, [hl]
    ld d, c
    ld d, b
    ld d, c
    ld d, [hl]
    ld e, l
    ld h, [hl]
    ld [hl], c
    ld a, h
    adc c
    and b
    sub e
    add a
    ld a, h
    ld [hl], e
    ld l, e
    ld h, l
    ld h, c
    ld h, b
    ld h, c
    ld h, l
    ld l, e

jr_008_5512:
    ld [hl], e
    ld a, h
    add a
    sub e
    xor d
    sbc [hl]
    sub e
    adc c
    add b
    ld a, c
    ld [hl], h
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], h
    ld a, c
    add b
    adc c
    sub e
    sbc [hl]

Call_008_5526:
    push hl
    and $01
    ld h, a
    ld a, [$c836]
    and $0f
    add a
    add h
    ld hl, $553f
    add l
    ld l, a
    jr nc, jr_008_5539

    inc h

jr_008_5539:
    ld a, [hl]
    call Call_000_2c19
    pop hl
    ret


    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, h
    ld d, e
    ld d, h
    ld d, h
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    call Call_000_23b6
    xor a
    ldh [$c1], a
    call Call_000_304d
    call Call_000_0341
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_2683
    ld hl, $55e2
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $5e87
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $9800
    ld c, $40
    call Call_000_04db
    ld hl, $5fd5
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b800
    ld c, $40
    call Call_000_04db
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld a, $07
    ldh [rWX], a
    ld a, $90
    ldh [rWY], a
    ld hl, $603c
    ld de, $0008
    call Call_000_056c
    call Call_000_05f6
    call Call_000_0371
    rst $08
    ld b, $cd
    add d
    cpl
    ldh a, [$94]
    or a
    jr z, @-$06

    ret


    sub l
    nop
    rst $38
    db $ec
    rst $38
    rst $38
    db $ec
    nop
    cp $ed
    rst $08
    db $e4
    add d
    cp a
    nop
    ld [de], a
    nop
    ld [hl], $00
    ld h, [hl]
    pop bc
    ld [c], a
    inc b
    rst $38
    nop
    ld [$1900], sp
    nop
    inc de
    nop
    inc sp
    jp Jump_000_3700


    cp a
    ldh [$ce], a
    push hl
    push de
    ldh [$fa], a
    pop hl
    rst $38
    add b
    add $fd
    ldh [$c8], a
    or a
    ld a, [$f4e0]
    db $e3
    and $e2
    xor l
    ld d, d
    cp e
    ld b, b
    cp a
    and d
    db $e3
    rst $38
    rst $38
    ld bc, $e0fd
    ld l, e
    pop af
    sub l
    ld a, [$92e0]
    db $e4
    adc $e1
    and e
    call c, $a1de
    db $fc
    adc $e3
    ld l, a
    pop hl
    nop
    rst $38
    dec l
    jp nc, Jump_000_0df2

    cp h
    ld h, l
    db $e3
    adc $e3
    dec de
    push hl
    push af
    dec bc
    adc $e3
    ld l, [hl]
    adc $5f
    db $ec
    ld [hl], a
    nop
    ld a, a
    cp $e0
    ld c, c
    pop hl
    rst $30
    ld [$f30f], sp
    inc c
    ld sp, hl
    ld b, $2f
    jp hl


    or h
    db $e3
    ld h, [hl]
    push hl
    ld e, [hl]
    db $e3
    rst $38
    cp h
    jp $9ce3


    sbc a
    ldh [$f0], a
    adc a
    rst $38
    adc a
    ldh a, [$f0]
    adc a
    rst $18
    and b
    add b
    rst $38
    rst $38
    adc $31
    add hl, sp
    add $c7
    jr c, jr_008_56f5

    add a
    rst $38
    adc a
    ld [hl], b
    ldh a, [rIF]
    rra
    ldh [rP1], a
    rst $38
    rst $38
    call z, Call_000_3b33
    call nz, Call_000_39c6
    ld a, c
    add [hl]
    sbc $f0
    push hl
    dec e
    db $e3
    rst $20
    add hl, de
    add d
    pop hl
    rrca
    pop af
    rst $28
    ld sp, hl
    rlca
    rlca
    ld sp, hl
    ld c, d
    pop hl
    ret


    rst $30
    jp z, $f57f

    set 6, h
    ret


    or $cb
    db $f4
    cp $e1
    cp $c0
    pop bc
    ld a, a
    rst $38
    rra
    rst $38
    ld c, a
    cp a
    ld c, a
    rst $38
    cp a
    dec hl
    rst $18
    ld l, e
    rst $18
    rst $18
    jr nz, @-$2f

    rst $38
    jr nc, jr_008_572c

    sbc b
    ld h, a
    sbc b
    inc hl
    call c, $ff23
    call c, $fe01
    ld bc, $f8fe
    rlca
    db $fc
    rst $38

jr_008_56d5:
    inc bc
    sbc h
    ld h, e
    call z, Call_008_6633
    sbc c
    ld h, [hl]
    rra
    sbc c
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
    ld a, [$62c5]
    db $eb
    sub a
    jp nz, $83fe

    jp $9b80


    db $e4
    or $89
    call $ffb2
    cp e

jr_008_56f5:
    call nz, $99e6
    sbc c
    and $f7
    adc b
    rst $38
    rst $38
    nop
    rst $08
    jr nc, jr_008_5772

    adc a
    adc a
    ld [hl], b
    rst $38
    db $76
    adc c
    sbc c
    ld h, [hl]
    and $19
    jr c, jr_008_56d5

    rst $38
    rst $38
    nop
    jp $fc3c


    inc bc
    inc bc

jr_008_5716:
    db $fc
    rst $38
    db $fc
    inc bc
    daa
    ret c

    call c, Call_000_3323
    call z, $ffff
    ld bc, $619f
    ld [hl], c
    adc a
    adc a
    ld [hl], c
    rst $38
    ld a, c
    add a

jr_008_572c:
    rst $00
    add hl, sp
    dec a

jr_008_572f:
    jp $1de3


    cp $6a
    pop hl
    call $cdf2
    or $c9
    or $cd
    db $fd
    ld a, [c]
    ld e, [hl]
    pop hl

jr_008_5740:
    ld l, e
    rst $18
    dec hl
    rst $18
    ld c, e
    cp a
    sbc $fe
    db $e3
    dec bc
    rst $38
    ld c, e
    cp a
    jr nz, jr_008_5716

    ld bc, $f7ff
    inc bc
    rst $38
    rlca
    db $10
    jp nz, $ff10

    ld h, b
    rst $38

jr_008_575b:
    dec e
    ret nz

    ld c, b
    ret nz

    adc b
    rst $38
    jr jr_008_572f

    add $c4
    rst $00
    push af
    xor c
    rst $18
    rst $38
    nop
    rrca
    rst $38
    sbc [hl]
    cp $e0
    cp [hl]
    rst $38

jr_008_5772:
    rst $30
    inc a
    rst $38
    ld a, l
    cp $e0
    rst $38
    rst $38
    jr nc, @+$01

    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    db $fd
    rst $28
    or l
    and d
    inc c
    di
    ei
    inc b
    call z, $fb33
    scf
    ret z

    or d
    pop bc
    pop hl
    ld e, $00
    rst $38
    rst $00
    ld a, a
    jr c, jr_008_575b

    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, jr_008_5740

    pop bc
    rst $38
    di
    inc c
    nop
    rst $38
    ld a, $c1
    pop bc
    ld a, $ff
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    add b
    ret nz

    ccf
    rst $38
    ccf
    ret nz

    nop
    rst $38
    ccf
    ret nz

    ldh [$1f], a
    rst $38
    rra
    ldh [$f0], a
    rrca
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $38
    rst $18
    jr nz, jr_008_57cb

jr_008_57cb:
    rst $38
    cp d
    ld a, l
    ld b, l
    add $ff
    rst $00
    ld b, h
    ld b, h
    rst $00
    rst $00
    ld b, h
    call nz, $ff47
    ld b, a
    call nz, $c744
    rst $20
    jr jr_008_5819

    rst $00
    rst $38
    adc a
    ld [hl], b
    ld e, b
    cp a
    xor a
    ld h, h
    rst $20
    daa
    rst $38
    inc h
    db $e4
    inc h
    db $e4
    inc c
    di
    ld sp, hl
    rlca
    rst $38
    swap [hl]
    ld [hl], $cc
    db $f4
    inc c
    sbc h
    db $e4
    rst $28
    db $f4
    ld a, h
    jr jr_008_580e

    and b
    ldh [$c0], a
    ld [hl], b
    ld c, a
    rst $38
    ld c, a
    ld [hl], b
    ld a, b
    ld b, a
    ld [hl], a
    ld a, b

jr_008_580e:
    ld c, e
    ld c, h
    ei
    ld c, b
    rrca
    ret nc

    db $e3
    ld a, b
    add a
    add a
    ld a, b

jr_008_5819:
    ld hl, sp-$09
    rlca
    rlca
    ld hl, sp+$6a
    and c
    inc a
    jp Jump_000_38c7


    rst $38
    ld sp, hl
    ld b, $0e
    pop af
    or $09
    add hl, de
    and $fd
    rst $20
    rra
    ldh [$dc], a
    inc hl
    ld h, a
    sbc b
    cp b
    ld b, a
    rst $38
    rst $08
    jr nc, @-$08

    add hl, bc
    add hl, sp
    add $cf
    jr nc, jr_008_58bc

    rst $38
    nop
    ld h, d
    pop hl
    ld sp, $fece
    ld bc, $c1ac
    rst $38
    adc a
    ld [hl], b
    rst $38
    nop
    sbc d
    ld h, l
    db $76
    adc c
    rst $28
    call Call_000_3b32
    call nz, $e1d0
    rst $30
    ld [$fdc7], sp
    ld b, h
    db $76
    pop hl
    rst $00
    ld b, e
    ld b, b
    ret nz

    ret nz

    ld b, b
    rst $38
    ret nz

    ld b, b
    ccf
    rst $38
    db $e4
    inc h
    and h
    ld h, h
    rst $38
    inc h
    db $e4
    call nz, Call_000_24e4
    inc h
    inc [hl]
    inc h
    rst $38
    inc [hl]
    inc [hl]
    set 7, a
    inc c
    inc b
    inc b
    inc b
    rst $30
    ld h, h
    ld b, h
    ld h, h
    rst $38
    db $e4
    sbc e
    rst $38
    rra
    ld [$34ff], sp
    dec sp
    scf
    jr jr_008_58a3

    rra
    dec de
    inc c
    cp a
    ld c, [hl]
    ld b, l
    ld h, l
    ld b, [hl]
    cp c
    cp $50
    jp $ff9b


    ld h, h
    ld l, h

jr_008_58a3:
    sub e
    rst $00
    jr c, @-$06

    rlca
    rrca
    ld a, a
    ldh a, [rIE]
    nop
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    ld e, [hl]
    pop hl
    rst $38
    rst $00
    jr c, @+$3e

    jp $1ce3


    ld e, $e1

jr_008_58bc:
    rst $38
    di
    inc c
    rrca
    ldh a, [$d8]
    ccf
    xor a
    ld h, h
    ei
    ld h, a
    and a
    xor e
    ldh [$e4], a
    ld [hl-], a
    call Call_000_02fd
    ei
    inc bc
    db $fc
    ld [hl], d
    ldh [rIE], a
    cp h
    call nz, Call_008_7cf4
    rst $38
    dec de
    rrca
    ld a, c
    add [hl]
    add $39
    ld e, a
    ldh [rIE], a
    and b
    cp a
    or a
    cp b
    ld [$0d0f], sp
    dec bc
    rst $38
    or e
    cp [hl]
    call z, Call_000_3a33
    push bc
    call nz, Call_008_7f3b
    ld a, c
    add [hl]

jr_008_58f7:
    ld [hl], e
    rst $38
    ret c

    adc h
    adc h
    add h
    ldh [$ef], a
    dec sp
    call nz, $837c
    and [hl]
    pop hl
    ld h, [hl]
    rst $38
    pop af
    rst $38
    sbc c
    sbc c
    ld [$0808], sp
    jr jr_008_58f7

    or d
    rst $38
    ld c, l
    cpl
    ret nc

    ld l, b
    sub a
    jp c, $eee5

    rst $38
    ccf
    inc sp
    ld de, $1111
    ld a, [de]
    push hl
    ld h, e
    rst $38
    sbc a
    call nz, $943c
    ld l, h
    inc d
    db $ec

jr_008_592b:
    db $ec
    rst $38
    inc d
    cp b
    ld a, h
    ld h, [hl]
    call nz, $cb34
    call c, $e3ff
    ld h, e
    inc a
    ld [hl], $19
    dec de
    rrca
    ld [$0cff], sp
    ld c, h
    ld b, h
    ld c, a
    ld b, a
    ld a, c
    add [hl]
    ld b, [hl]
    ld l, l
    cp c
    and b
    push hl
    add hl, bc
    rrca
    and b
    pop hl
    dec sp
    call nz, $81f0
    rst $38
    ld [hl], a
    ld hl, sp-$28
    adc a
    adc [hl]
    dec b
    dec b
    rlca
    rst $38
    db $ed
    ld e, $1a
    di
    di
    ld [hl+], a
    ld h, d
    and e
    rst $38
    and e
    ld h, d
    and e
    ld h, d
    ld [c], a
    jp $0382


    rst $38
    ld e, $e1
    pop hl
    ld e, $9f
    ld h, b
    ld h, b
    sbc a
    ld a, a
    rst $18
    jr nz, jr_008_592b

    ld c, a
    ld a, a
    add b
    nop
    ldh a, [$c2]
    ei
    ld h, h
    and h
    ld b, [hl]
    pop hl
    db $f4
    inc h
    inc d
    db $f4
    set 7, a
    ccf
    rrca
    inc b
    ld b, $05
    ld h, l
    ld b, [hl]
    ld h, [hl]
    rst $38
    ld h, l
    ld h, a
    ld h, h
    ld h, h
    ld h, a
    ld h, a
    ld h, h
    sbc c
    rst $38
    cp $b6
    xor h
    xor h
    cp b
    cp b
    sbc b
    sub h
    rst $38
    sbc b
    call c, $4e8c
    call z, $cf4b
    or [hl]
    rst $38
    ld a, c
    ld c, h
    ld b, h
    jr jr_008_59c1

    ld [hl], h
    inc a
    ld h, h
    rst $38
    ld a, h
    inc [hl]
    inc e
    inc e
    inc c
    adc h
    inc c
    di

jr_008_59c1:
    rst $38
    rst $38
    ld [hl], b
    jr c, @-$25

    ld l, b
    adc c
    ld sp, hl
    cp c
    rst $38
    ret


    ret


    cp c
    ret


    cp c
    sbc c
    jp hl


    ld [hl], $ff
    rst $08
    pop hl
    ld [hl], c
    sbc c
    pop af
    add hl, bc
    ld hl, sp-$04
    rst $38
    ld [$4cb4], sp
    ld b, $fc
    inc bc
    cp $0d
    rst $38
    di
    ld b, [hl]
    add $4e
    add $ca
    adc [hl]
    ld c, $ff
    ld a, [bc]
    ld a, [de]
    ld c, $36
    ld a, [de]
    ld h, d
    ld a, $d1
    rst $38
    rst $28
    dec de
    inc c
    ld [hl], $19
    ld h, c
    ld a, $4e
    rst $38
    ld [hl], c
    ld b, e
    ld a, h
    ld d, b
    ld l, a
    ld h, c
    ld e, [hl]
    or b
    rst $28
    rst $08
    ld c, a
    ld b, [hl]
    ld a, [de]
    or b

jr_008_5a0f:
    ldh [$66], a
    ld a, h
    inc sp
    rst $38
    ld e, $1d
    dec bc
    adc [hl]
    add hl, bc
    ldh a, [rIE]
    inc bc
    rst $38
    ld [bc], a
    inc hl
    ld [bc], a
    ld [hl-], a
    inc hl
    inc sp
    ld [de], a
    inc bc
    rst $38
    ld [bc], a
    add e
    ld [bc], a
    ld [c], a
    db $e3
    db $dd
    ld a, $ff
    rst $38
    nop
    rst $00
    jr c, jr_008_5a6b

    rst $00
    cp e
    ld a, h
    ld l, h
    sbc [hl]
    xor [hl]
    and b
    ld l, [hl]
    push bc
    cp c
    ld a, [hl]
    adc h
    pop bc
    ld a, [hl]
    pop bc
    rst $08
    rst $30
    jr nc, jr_008_5a78

    call Call_008_614e
    rlca
    rst $38
    ld hl, sp+$08
    ei
    ld [$fcf8], sp
    db $e3
    xor b
    ld e, b
    ld [$ccf8], sp
    rst $38
    di
    ld [hl], d
    dec a
    jr jr_008_5a6c

    dec c
    ld b, $c7
    ei
    add e
    jp nz, $e1ff

    add d
    ld l, [hl]
    sub c
    ld e, b
    and a
    rst $38

jr_008_5a6b:
    inc [hl]

jr_008_5a6c:
    sra l
    jp nc, $feb1

    ld a, b
    ld c, a
    db $fd
    ld c, [hl]
    ldh a, [$c0]
    ld h, b

jr_008_5a78:
    sbc a
    pop hl
    ld e, $8b
    ld [hl], h
    rst $28
    sbc d
    ld h, l
    jr c, @+$01

    xor [hl]
    ldh [$83], a
    add e
    ld [bc], a
    rst $38
    rst $20
    jr jr_008_5a0f

    ld a, e
    rst $30
    ld [$f936], sp
    rst $38
    ld l, c
    rst $08
    res 1, [hl]
    adc [hl]
    inc c
    inc [hl]
    jr @+$01

    daa
    ret c

    rst $28
    db $10
    sbc [hl]
    ld h, c
    ret nc

    rst $28
    rst $38
    and a
    jr c, jr_008_5ad4

    ld sp, $3f20
    call $ff73
    ld c, $f1
    add a
    ld a, b
    ld de, $4cee
    cp a
    rst $38
    ld a, $f3
    ld h, e
    pop bc
    pop bc
    add c
    add c
    ld bc, $6cff
    sub e
    ld [hl], d
    adc l
    inc e
    db $e3
    jr nz, @-$1f

    rst $38
    sbc c
    ld h, [hl]
    ld [hl], c
    cp $9e
    adc a
    add e
    add c
    rst $38
    ld l, a
    sub b
    ld l, c
    rst $30

jr_008_5ad4:
    cp e
    sbc [hl]
    adc [hl]
    add h
    rst $38
    call nz, Call_008_7084
    ldh [rNR24], a
    ldh a, [$09]
    ld sp, hl
    rst $38
    ld l, [hl]
    pop af
    db $d3
    sbc h
    inc e
    inc de
    ld [hl], $19
    rst $38
    ld l, e
    inc [hl]
    call z, $b773
    ret z

    nop
    rst $38
    cp a
    ld a, a
    add b
    adc h
    ld [hl], e
    di
    inc c
    adc d
    pop bc
    ld a, a
    rst $20
    add b
    sbc h
    ld h, e
    sbc d
    ld b, c
    ret nc

    adc c
    ld sp, $f8ce
    rst $38
    ld [$c838], sp
    ret z

    jr c, @+$6a

    sbc b
    sbc b
    rst $38
    ld [hl], b
    pop af
    db $10
    ld de, $eef1
    rra
    ld b, $ff
    ld [bc], a
    inc e
    ld c, $72
    ld a, $d2
    xor $82
    rst $38
    cp $f2
    adc [hl]
    ld [bc], a
    cp $f1
    rrca
    dec sp
    rst $38
    ld e, $66
    inc a
    ld b, h
    ld a, h
    db $76
    ld c, h
    ld d, d
    rst $38
    ld l, [hl]
    ld b, e
    ld a, [hl]
    ld h, c
    ld e, a
    add b
    rst $38
    ld h, $ff
    ld [hl+], a
    dec c
    ld b, $39
    rra
    ld [hl-], a
    dec a
    dec de
    rst $38
    dec c
    dec c
    rlca
    push bc
    add a
    ld a, d
    db $fd
    ld a, c
    rst $38
    jr c, jr_008_5b6f

    ld [$0c8e], sp
    adc d
    adc [hl]
    sbc [hl]
    rst $38
    inc c
    inc [hl]
    inc e
    ld l, l
    inc [hl]
    di
    rst $08
    db $d3
    rst $38
    xor $62
    ld a, $2a
    ld [hl], $2a
    ld [hl], $61
    rst $38
    ccf
    ret nz

    ld a, a

jr_008_5b6f:
    sbc b
    rst $20
    jr nc, @-$2f

    ld sp, $11ff
    ld sp, $3131
    ld de, $0101
    add b
    rst $38
    nop
    ldh [$c0], a
    cp h
    ld a, b
    ld h, a
    sbc a
    add c
    ld a, a
    add b
    add b
    add b
    adc h
    adc b
    inc c
    adc h
    rst $38
    db $e3
    rst $38
    ld [hl], e
    rst $38
    sbc c
    jp hl


    sbc c
    jp hl


    ret


    cp c
    res 1, c
    ld sp, hl
    db $fc
    db $e3
    ld b, $bf
    jr nz, jr_008_5bb2

    adc c
    ld l, [hl]
    sub c
    ld a, e
    rst $38
    nop
    db $10
    adc c
    ldh [$1f], a
    rst $28
    db $10
    and b
    adc c
    rst $38
    nop

jr_008_5bb2:
    rst $38
    ld [hl], $cf
    ret


    add hl, sp
    ld sp, hl
    add hl, bc
    cp a
    sbc c
    ld l, c
    ld l, c
    sbc c
    ret


    add hl, sp
    db $76
    pop bc
    ld h, e
    rst $38
    sbc h
    sbc b
    ld h, a
    ld [hl], c
    adc [hl]
    adc h
    ld [hl], e
    ld a, b
    rst $38
    add a
    adc [hl]
    rst $38
    db $d3
    ld [hl], c
    ld h, c
    ld sp, $ffd0
    cpl
    add hl, sp
    add $c3
    inc a
    di
    inc c
    inc bc
    rst $38
    rst $38
    inc [hl]
    call z, $fc38
    ld h, a
    rst $00
    ld b, [hl]
    rst $38
    cp c
    ret nz

    ccf
    ld h, b
    rst $38
    sub b
    sbc a
    sbc e
    db $fd
    sbc a
    add a
    add b
    inc b
    sbc e
    sbc a
    ld a, a
    add b
    ld [hl], b
    rst $38
    adc a
    ld l, a
    ldh a, [$91]
    sbc [hl]
    sbc d
    sbc l
    ld b, $de
    ld d, d
    and b
    sbc e
    sbc [hl]
    xor $11
    ld b, b
    add c
    call z, $ff33
    jr nc, @+$01

    ld sp, hl
    rst $08
    adc [hl]
    ld b, $04
    ld b, $ff

jr_008_5c18:
    ld h, d
    sbc l
    ld b, e
    cp h
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$7f
    inc e
    db $e3

jr_008_5c23:
    rst $10
    add sp, $78
    ccf
    inc c
    ld a, [hl]
    add b
    rst $38
    sbc [hl]
    ld h, c
    ld d, e
    xor a
    adc h
    ld [hl], h
    ld e, h
    cp h
    rst $38
    ldh [rNR41], a
    jr nz, jr_008_5c18

    inc e
    db $fc
    swap h
    rst $38
    inc e
    db $e3
    rla
    add sp, -$47
    add $cd
    di
    rst $38
    scf
    ld l, $2c
    jr c, jr_008_5c23

    ldh a, [$b3]
    ld c, h
    cp $e0
    ld h, e
    adc a
    ldh a, [$d6]
    ld l, c
    ld a, c
    ld h, $20
    rst $00
    ccf
    sbc a
    ld h, b
    ldh [rBCPD], a
    ld a, [de]
    ld hl, $83e0
    adc a
    ld [hl], b
    cp $a0
    ld h, c
    db $fc
    inc bc
    add sp, $18
    add hl, sp
    pop de
    pop de
    rst $38
    ld sp, $9070
    sub b
    ld [hl], b
    ldh a, [rNR10]
    rla
    rst $38
    di
    db $ed
    ld e, $31
    ld de, $1119
    add hl, de
    rst $38
    jr jr_008_5cbf

    jr jr_008_5ce9

    inc a
    sub $ec
    ld a, e
    rst $38
    add [hl]
    pop bc
    ccf
    push bc
    ld b, [hl]
    call $c846
    rst $38
    adc a
    ld [$1e0f], sp
    add hl, bc
    inc [hl]
    dec de
    ld h, e
    rst $38
    inc a
    sbc $e1
    sbc a
    sub b
    sub l
    sbc d
    sbc e
    rst $38
    adc h
    adc d
    adc l
    call Call_008_4786
    call nz, $ffc4
    ld b, a
    dec sp
    db $fc
    sub d
    sbc [hl]
    sub [hl]
    sbc h
    sbc h
    rst $38
    adc h
    adc b
    adc h
    adc $84
    ld b, a
    add $c5

jr_008_5cbf:
    cp a
    ld b, a
    cp d
    ld a, l
    ld h, [hl]
    ld [bc], a
    ld h, d
    rst $38
    ldh [$66], a
    rst $38
    ld b, d
    inc b
    ld b, $1a
    ld c, $b6
    ld a, [hl-]
    push bc
    rst $38
    ei
    rlca
    ld [bc], a
    ld [bc], a
    inc bc
    inc sp
    ld [hl+], a
    ld [hl-], a
    db $fd
    inc sp
    cp $e1
    inc sp
    ld [hl-], a
    call $9cfe
    ld h, h
    rst $38
    sub h
    ld l, h
    inc a

jr_008_5ce9:
    call nz, $dc24
    ld a, [hl]
    add h
    rst $38
    ld a, [c]
    ld c, $fe
    ld [bc], a
    pop bc
    ccf
    db $d3
    or b
    rst $38
    or e
    db $e3
    db $e3
    ld h, e
    ld b, e
    ld h, d
    ld [hl], b
    jr nz, @+$01

    jr c, jr_008_5d33

    dec l
    add hl, sp
    sub $ef
    ccf
    db $10
    rst $38
    dec e
    ld [de], a
    inc de
    inc e
    ld a, $11
    ld hl, $f73e
    rst $18
    ld h, b
    add b
    jp nz, $ffa0

    nop
    add $39
    rst $28
    cp a
    ld b, b
    ld h, b
    sbc a
    jr c, @-$1b

    cp d
    ld b, l
    sub e
    rst $38
    ld l, h
    xor $11
    xor c
    ld d, [hl]
    ld d, [hl]
    xor c
    pop de
    rst $30
    ld l, $26
    reti


jr_008_5d33:
    sub b
    ld b, c
    sbc b
    ld h, a
    ld a, a
    add b
    rst $38
    call nz, Call_000_3f3b
    ret nz

    jp Jump_008_7d3c


    add d
    xor a
    add [hl]
    ld a, c
    nop
    rst $38
    jp nc, Jump_000_3841

    adc d
    ld b, b
    inc a
    rst $38
    jp Jump_000_3cc3


    ld a, [hl]
    add c
    nop
    rst $38
    pop hl
    rst $38
    ld e, $9e
    ld h, c
    ld h, c
    sbc [hl]
    rst $18
    jr nz, jr_008_5dcb

    rst $38
    rst $38
    sbc [hl]
    sub e
    sub e
    add c
    add c
    add c
    sub c
    rst $38
    ld l, [hl]
    ld a, h
    add e
    ret nz

    ccf
    ld a, $c1
    xor $ff
    rra
    sbc e
    ld [hl], c
    ld sp, $60e0
    ret nz

    ld d, l
    rst $38
    xor d
    ld d, d
    xor l
    ld l, b
    sub a
    dec c

jr_008_5d81:
    cp $9a
    cp a
    ld [hl], e

jr_008_5d85:
    ld [hl-], a
    db $e3
    ld [c], a
    jp $b8cc


    nop
    adc $ff
    ld sp, $e718
    ldh a, [rIF]
    call c, Call_000_363f
    db $fd
    db $e3
    ld c, $a1
    adc [hl]
    ld [hl], c
    ccf
    ret nz

    ld e, b
    cp a
    rst $18
    rst $20
    inc h
    and $e7
    ld bc, $e0ff
    and $e7
    ld a, [$e5b0]
    jr nz, jr_008_5d85

    nop
    jr nc, jr_008_5d81

    nop
    rst $38
    add c
    rst $38
    ld a, [hl]
    ld a, [hl]
    add c
    pop bc
    ld a, $3e
    pop bc
    db $e3
    rst $38
    inc e
    sbc h
    ld h, e
    ld [hl], a
    adc b
    nop
    rst $38
    ld d, l
    rst $38
    xor d
    ld d, [hl]
    xor c

jr_008_5dcb:
    jp hl


    ld d, $6f
    sub b
    or b
    rst $18
    ld c, a
    rst $18
    jr nz, @+$63

    sbc [hl]
    ld b, h
    ld bc, $6699
    rst $28
    db $76
    adc c
    rst $08
    jr nc, jr_008_5e4c

    pop hl
    inc e
    db $e3
    di
    rst $38
    inc c
    rst $38
    nop
    di
    inc c
    inc e
    db $e3
    and $ff
    add hl, de
    dec sp
    call nz, Call_000_33cc
    ld [hl], a
    adc b
    cp b
    rst $30
    ld b, a
    rst $38
    nop
    ldh [$89], a
    db $e3
    inc e
    adc [hl]
    add a
    rst $38
    sbc e
    adc l
    sub a
    sbc c
    sub c
    sbc a
    sbc [hl]
    sub c
    rst $38
    sub d
    sbc l
    sbc a
    sub b
    ld h, b
    rst $38
    ret


    adc b
    rst $38
    add e
    ld bc, $070e
    adc h
    rrca
    add [hl]
    add e
    rst $38
    jp Jump_008_7181


    pop hl
    ld e, $ff
    sbc l
    adc a
    rst $38
    ld b, a
    add d
    ld h, d
    jp nz, $e223

    rst $20
    ld b, e
    rst $38
    call $5847
    rst $08
    cp a
    ld [hl], b
    sub e
    ld de, $06ff
    inc bc
    inc e
    rrca
    dec de
    inc e
    inc c
    rlca
    rst $38
    add a
    ld [bc], a
    ld [c], a

jr_008_5e43:
    jp Jump_008_7ebd


    rst $20
    inc h
    rst $38
    push hl
    ld h, $26

jr_008_5e4c:
    db $e3
    ld [c], a
    inc hl
    inc sp
    pop hl
    cp a
    pop de
    ld sp, $9171
    xor [hl]
    ld e, a
    and b
    db $e3
    inc e
    ld a, a
    rst $38
    rst $30
    ld [hl+], a
    ld h, e
    and d
    or [hl]
    ld h, e
    or b
    ld h, c
    or [hl]
    ret nz

    ld l, c
    ret nz

    ccf
    ldh [rSB], a
    ld bc, $c2fe
    inc hl
    and a
    rst $38
    ld e, b
    add hl, sp
    add $ff
    nop
    inc sp
    call z, $dfdc
    inc hl
    ld h, e
    sbc h
    cp [hl]
    ld b, c
    cp d
    ld b, c
    sbc a
    ld h, b
    nop
    nop
    nop
    ld b, l
    ld bc, $f0ff
    nop
    rst $38
    add sp, -$20
    rst $38
    ldh [$fb], a
    ld c, $ff
    ldh a, [$de]
    ret nz

    jp hl


    jr @+$1a

    ld b, $07
    rst $38
    ld [$1808], a
    db $fd
    jr jr_008_5e43

    jp hl


    ld [hl+], a
    ld [hl+], a
    db $10
    ld de, $2726
    rst $38
    jr z, jr_008_5ed6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr z, jr_008_5edc

    cp a
    ld de, $122e
    inc de
    ld [hl+], a
    ld [hl+], a
    add b
    jp hl


    ld [bc], a
    rst $38
    ld [bc], a
    ld a, [de]
    dec de
    cpl
    jr nc, jr_008_5ef5

    ld [hl-], a
    inc sp
    rst $38
    inc [hl]
    dec [hl]
    ld [hl], $31
    ld [hl-], a
    scf
    jr c, jr_008_5eeb

    rst $30
    dec e
    ld [bc], a
    ld [bc], a
    ld h, b
    jp hl


    dec b

jr_008_5ed6:
    dec b
    db $10
    ld de, $39ff
    ld a, [hl-]

jr_008_5edc:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    rst $38
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld [de], a
    inc de
    dec b
    dec b

jr_008_5eeb:
    cp $40
    jp hl


    rrca

jr_008_5eef:
    rrca
    ld a, [de]
    dec de
    ld b, l
    ld b, [hl]
    ld b, a

jr_008_5ef5:
    rst $38
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld b, a
    ld c, l
    ld c, [hl]
    rst $18
    ld c, a
    inc e
    dec e
    rrca
    rrca
    jr nz, jr_008_5eef

    add hl, de
    add hl, de
    rst $38
    db $10
    ld de, $5150
    ld d, d
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
    ld [de], a
    inc de
    ei
    add hl, de
    add hl, de
    nop
    jp hl


    inc hl
    inc hl
    ld a, [de]
    dec de
    ld e, h
    rst $38
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld a, a
    ld h, l
    ld h, [hl]
    ld h, a
    inc e
    dec e
    inc hl
    inc hl
    ldh [$c9], a
    rst $38
    nop
    nop
    db $10
    ld de, $6968
    ld l, d
    ld l, e
    rst $38
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ei
    ld [de], a
    inc de
    ld [c], a
    db $eb
    inc bc
    inc b
    ld a, [de]
    dec de
    ld [hl], h
    rst $38
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, a
    ld a, l
    ld a, [hl]
    ld a, a
    inc e
    dec e
    inc bc
    inc b
    and b
    ret


    rst $38
    inc c
    dec c
    db $10
    ld de, $8180
    add d
    add e
    rst $38
    add h
    add l
    add [hl]
    add a
    add d
    adc b
    adc c
    adc d
    rst $28
    ld [de], a
    inc de
    inc c
    dec c
    add b
    ret


    ld d, $17
    ld a, [de]

jr_008_5f82:
    rst $38
    dec de
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    inc e
    dec e
    ld d, $bd
    rla
    ld h, b
    ret


    jr nz, jr_008_5fbb

    add hl, bc
    ld a, [bc]
    rst $38
    ld [$db0b], a
    jr nz, jr_008_5fc3

    ld b, b
    ret


    inc h
    dec h
    cp $e4
    inc d
    dec d
    ld a, [de]
    or $e5
    dec h
    jr nz, jr_008_5f82

    ld e, $1f
    nop
    jp nc, $ffff

    rst $38
    rst $38
    nop
    rst $38
    rst $38

jr_008_5fbb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_008_5fc3:
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    nop
    nop
    nop
    adc l
    dec c
    rst $38
    ldh a, [rBCPS]
    ld [$e7ff], sp
    ldh [rIE], a
    sbc $ef
    ld c, b
    ld b, h
    ret nz

    rst $38
    ldh [$e8], a
    adc e
    rst $38
    db $ec
    ldh [rIE], a
    ld h, b
    db $eb
    dec bc
    rst $38
    db $ec
    ret nz

    ldh [rIE], a
    ld h, b
    db $eb
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f5], a
    ld a, [bc]
    ld a, [bc]
    ld b, $40
    db $ed
    ld a, [bc]
    ld a, [bc]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e5], a
    cp $e4
    db $10
    rst $00
    pop hl
    di
    db $e4
    ldh [rIE], a
    rst $38
    db $eb
    ld c, b
    rst $38
    db $ec
    pop hl
    db $ec
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
    rst $38
    rst $38
    rst $38
    ld e, d
    add d
    nop
    nop
    nop
    ret nz

    add hl, de
    ld e, a
    ld h, a
    cp $3d
    rrca
    nop
    ld h, b
    ld bc, $7fff
    rst $28
    dec a
    nop
    nop
    ld hl, sp+$03
    ld b, h
    inc bc
    nop
    ld [bc], a
    ld b, b
    ld bc, $7f56
    rra
    ld [de], a
    sub $00
    nop
    nop
    rst $38
    inc bc
    rra
    ld [de], a
    sub $00
    nop
    nop
    sbc $7b
    adc [hl]
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, l
    sbc $7b
    jr jr_008_60d3

    ld d, d
    ld c, d
    adc h
    ld sp, $7bde
    jr @+$65

    ld d, d
    ld c, d
    adc h
    db $31

    push hl
    push hl
    add $08
    and $0f
    add a
    ld hl, $609c
    add l
    ld l, a
    jr nc, jr_008_608b

    inc h

jr_008_608b:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    srl b
    rr c
    ld a, c
    add hl, hl
    call Call_000_0bce
    ld b, h
    ld c, l
    pop hl
    ret


    push af
    ld a, [c]
    push af
    ld a, [c]
    push af
    ld a, [c]
    push af
    ld a, [c]
    push af
    ld a, [c]
    adc a
    rst $30

    db $16, $fc, $48, $fe

    nop
    nop

    db $b8, $01

    ld [$7103], a
    ld [$0d0b], sp
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec c

    push hl
    add $08
    and $0f
    ld hl, $60d6
    add l
    ld l, a
    jr nc, jr_008_60c9

    inc h

jr_008_60c9:
    ld a, [hl]
    pop hl
    or a
    ret z

    push de
    push hl
    call Call_000_0bec
    pop de

jr_008_60d3:
    add hl, de
    pop de
    ret


    ld c, $0e
    ld c, $0e
    ld c, $04

    db $01, $00

    nop

    db $00

    ld bc, $0e04
    ld c, $0e
    db $0e

    push hl
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    res 0, l
    ld bc, $6110
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    ld a, [$d443]
    cp $01
    ret nz

    srl b
    rr c
    srl b
    rr c
    ret


    nop
    ld b, b
    jp hl


    ccf
    ld c, [hl]
    dec d
    call nc, Call_008_480d
    ld a, [bc]
    ld sp, $d008
    ld b, $d5
    dec b
    add hl, de
    dec b
    adc b
    inc b

    db $13, $04

    or h
    inc bc
    ld h, l
    inc bc
    ld [hl+], a
    inc bc
    jp hl


    ld [bc], a
    or a
    ld [bc], a
    adc e
    ld [bc], a
    ld h, l
    ld [bc], a
    ld b, e
    ld [bc], a
    inc h
    ld [bc], a
    add hl, bc
    ld [bc], a
    ldh a, [rSB]
    jp c, $c501

    ld bc, $01b2
    and c
    ld bc, $0191
    add d
    ld bc, $0174
    ld h, a
    db $01

    db $5b, $01

Call_008_614e:
    ld d, b
    ld bc, HeaderSGBFlag
    inc a
    ld bc, $0132
    ld a, [hl+]
    ld bc, $0121
    ld a, [de]
    ld bc, $0112
    dec bc
    ld bc, HeaderLogo
    cp $00
    ld hl, sp+$00
    ld a, [c]
    nop
    db $ed
    nop
    rst $20
    nop
    ld [c], a
    nop
    sbc $00
    reti


    nop
    push de
    nop
    ret nc

    nop
    call z, $c800
    nop
    push bc
    nop
    pop bc
    nop
    cp l
    nop
    cp d
    nop
    or a
    nop
    or h
    nop
    or c
    nop
    xor [hl]
    nop
    xor e
    nop
    xor b
    nop
    and l
    nop
    and e
    nop

    db $a0, $00, $9e, $00

    sbc e
    nop
    sbc c
    nop
    sub a
    nop
    sub l
    nop
    sub e
    nop
    sub c
    nop
    adc a
    nop
    adc l
    nop
    adc e
    nop
    adc c
    nop
    add a
    nop
    add [hl]
    nop
    add h
    nop
    add d
    nop
    add c
    nop
    ld a, a
    nop
    ld a, l
    nop
    ld a, h
    nop
    ld a, e
    nop

    db $79, $00

    ld a, b
    nop
    halt
    ld [hl], l
    nop
    ld [hl], h
    nop
    ld [hl], d
    nop
    ld [hl], c
    nop
    ld [hl], b
    nop

    db $6f, $00

    ld l, [hl]
    nop
    ld l, l
    nop
    ld l, e
    nop
    ld l, d
    nop
    ld l, c
    nop
    ld l, b
    nop
    ld h, a
    nop
    ld h, [hl]
    nop
    ld h, l
    nop
    ld h, h
    nop
    ld h, e
    nop
    ld h, d
    nop
    ld h, c
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld e, a
    nop
    ld e, [hl]
    nop
    ld e, l
    nop
    ld e, h
    nop
    ld e, e
    nop
    ld e, e
    nop
    ld e, d
    nop
    ld e, c
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld d, a
    nop
    ld d, [hl]
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, h
    nop
    ld d, e
    nop
    ld d, e
    nop
    ld d, d
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld c, a
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, l
    nop
    ld c, l
    nop
    ld c, h
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, d
    nop
    ld c, d
    nop
    ld c, c
    nop
    ld c, c
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld b, a
    nop
    ld b, a
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, b
    nop

    db $40, $00

    ld b, b
    nop
    ccf
    nop
    ccf
    nop
    ld a, $00
    ld a, $00
    ld a, $00
    dec a
    nop
    dec a
    nop
    dec a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    dec sp
    nop
    dec sp
    nop
    dec sp
    nop

    db $3a, $00

    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    jr c, jr_008_6284

jr_008_6284:
    jr c, jr_008_6286

jr_008_6286:
    jr c, jr_008_6288

jr_008_6288:
    scf
    nop
    scf
    nop
    scf
    nop
    scf
    nop
    ld [hl], $00
    ld [hl], $00
    ld [hl], $00
    dec [hl]
    nop
    dec [hl]
    nop
    dec [hl]
    nop
    dec [hl]
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld sp, $3100
    nop
    ld sp, $3100
    nop
    jr nc, jr_008_62c0

jr_008_62c0:
    jr nc, jr_008_62c2

jr_008_62c2:
    jr nc, jr_008_62c4

jr_008_62c4:
    jr nc, jr_008_62c6

jr_008_62c6:
    jr nc, jr_008_62c8

jr_008_62c8:
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop

    db $2e, $00

    ld l, $00
    ld l, $00
    ld l, $00
    dec l
    nop
    dec l
    nop
    dec l
    nop
    dec l
    nop
    dec l
    nop
    dec l
    nop
    inc l
    nop
    inc l
    nop
    inc l
    nop
    inc l
    nop
    inc l
    nop
    dec hl
    nop
    dec hl
    nop
    dec hl
    nop
    dec hl
    nop
    dec hl
    nop
    dec hl
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    jr z, jr_008_6316

jr_008_6316:
    jr z, jr_008_6318

jr_008_6318:
    jr z, jr_008_631a

jr_008_631a:
    jr z, jr_008_631c

jr_008_631c:
    jr z, jr_008_631e

jr_008_631e:
    jr z, jr_008_6320

jr_008_6320:
    daa
    nop
    daa
    nop
    daa
    nop
    daa
    nop
    daa
    nop
    daa
    nop

    db $27, $00

    ld h, $00
    ld h, $00
    ld h, $00
    ld h, $00
    ld h, $00
    ld h, $00
    ld h, $00
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc hl
    nop
    inc hl
    nop
    inc hl
    nop

    db $23, $00

    inc hl
    nop
    inc hl
    nop
    inc hl
    nop
    inc hl
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    jr nz, jr_008_6394

jr_008_6394:
    jr nz, jr_008_6396

jr_008_6396:
    jr nz, jr_008_6398

jr_008_6398:
    jr nz, jr_008_639a

jr_008_639a:
    jr nz, jr_008_639c

jr_008_639c:
    jr nz, jr_008_639e

jr_008_639e:
    jr nz, jr_008_63a0

jr_008_63a0:
    jr nz, jr_008_63a2

jr_008_63a2:
    jr nz, jr_008_63a4

jr_008_63a4:
    jr nz, jr_008_63a6

jr_008_63a6:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    dec de
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop

    ld a, [$c834]
    cp $01
    jr z, jr_008_6444

    cp $02
    jr z, jr_008_6444

    cp $03
    jr z, jr_008_6444

    jp Jump_008_64b1


jr_008_6444:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d445], a
    xor a
    ld [$d4d5], a
    ld [$d454], a
    xor a
    ld [$d44f], a
    ld a, $80
    ld [$d450], a
    rst $18

    db $58, $10

    ld a, $01
    rst $18

    db $00, $13

    ld c, $7f
    call Call_000_258d
    ld a, $04
    rst $18

    db $56, $10

    xor a
    ld [$d328], a
    ld bc, $00b4

jr_008_6478:
    call Call_000_2e3b
    ldh a, [$94]
    or a
    jr z, jr_008_6484

    rst $08

    db $5c

    jr jr_008_6489

jr_008_6484:
    dec bc
    ld a, b
    or c
    jr nz, jr_008_6478

jr_008_6489:
    ld a, $04
    ld [$d438], a
    ld a, $00
    rst $18

    db $00, $13

    ld a, $01
    ld [$d438], a
    call Call_000_2ed5

    db $0a

jr_008_649c:
    call Call_000_2e3b
    ldh a, [$94]
    or a
    jr nz, jr_008_64ab

    rst $18

    db $0a, $11

    or a
    jr z, jr_008_649c

    ret


jr_008_64ab:
    rst $08

    db $5c

    rst $18

    db $02, $13

    ret


Jump_008_64b1:
    ld a, $01
    ld [$d438], a
    ld hl, $d4d5
    ld [hl], $00
    ld a, [$d329]
    cp $0d
    jr nz, jr_008_64c4

    ld [hl], $01

jr_008_64c4:
    rst $18

    db $3a, $10

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

Call_008_6633:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_008_7084:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_008_7181:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_008_7cf4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_008_7d3c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_008_7ebd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_008_7f3b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
