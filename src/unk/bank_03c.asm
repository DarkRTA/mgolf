INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

    db $6a, $42

    add [hl]
    ld h, [hl]
    inc hl
    ld l, d

Call_03c_4006:
    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d443]
    or a
    jr z, jr_03c_403b

    cp $04
    jp z, Jump_03c_403b

    ld a, [$d442]
    ld b, a
    ld a, d
    sub b
    ld d, a
    ld a, [$d441]
    ld b, a
    ld a, h
    sub b

jr_03c_402a:
    ld h, a
    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d

Jump_03c_403b:
jr_03c_403b:
    push hl
    push de
    call Call_03c_404c
    pop de
    pop hl
    push bc
    call Call_03c_40b1
    pop bc
    ret


    xor a
    ld b, a
    ld c, a
    ret


Call_03c_404c:
    ldh a, [$96]
    push af
    ld e, h
    ld l, d
    ld h, $00
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $d000
    add hl, de
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    rrca
    rrca
    and $18
    ld b, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $d7
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    ld c, a
    and $07
    add b
    ld hl, $4091
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, [hl]
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ret


    nop
    jr nz, jr_03c_40d4

    ld h, b
    add b
    and b
    ret nz

    ldh [$80], a
    ld h, b
    ld b, b
    jr nz, jr_03c_409e

jr_03c_409e:
    ldh [$c0], a

    db $a0

    nop
    ldh [$c0], a
    and b
    add b
    ld h, b
    ld b, b
    jr nz, jr_03c_402a

    and b
    ret nz

    ldh [rP1], a
    jr nz, jr_03c_40f0

    ld h, b

Call_03c_40b1:
    ldh a, [$96]
    push af
    push hl
    push de
    ld e, h
    ld l, d
    ld h, $00
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $d000
    add hl, de
    pop de
    pop bc
    xor a
    sla c
    rla
    sla c
    rla
    ld c, a
    xor a
    sla e

jr_03c_40d4:
    rla
    sla e
    rla
    ld d, $00
    ld e, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    bit 5, [hl]
    jr z, jr_03c_40e9

    ld a, $03
    sub c
    ld c, a

jr_03c_40e9:
    bit 6, [hl]
    jr z, jr_03c_40f1

    ld a, $03
    sub e

jr_03c_40f0:
    ld e, a

jr_03c_40f1:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, de
    ld de, $d800
    add hl, de
    bit 1, c
    jr z, jr_03c_4108

    inc hl

jr_03c_4108:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 0, c
    jr nz, jr_03c_4115

    swap a

jr_03c_4115:
    and $0f
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ret


    ld a, e
    and $fc
    swap a
    ld l, a
    and $0f
    ld h, a
    xor l
    ld l, a
    ld c, d
    srl c
    srl c
    ld b, $d0
    add hl, bc
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, d
    bit 5, [hl]
    jr z, jr_03c_413e

    cpl

jr_03c_413e:
    ld c, a
    rrca
    rrca
    ld a, e
    bit 6, [hl]
    jr z, jr_03c_4147

    cpl

jr_03c_4147:
    rla
    and $07
    ld e, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    xor a
    ld h, a
    ld d, $d8
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 0, c
    jr nz, jr_03c_4167

    swap a

jr_03c_4167:
    and $0f
    ret


Call_03c_416a:
    ld a, [$d329]
    add a
    ld hl, $4189
    add l
    ld l, a
    jr nc, jr_03c_4176

    inc h

jr_03c_4176:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_03c_41ed
    add a
    ld h, $00
    ld l, a
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    db $a5, $41

    cp l
    ld b, c
    cp l
    ld b, c

    db $d5, $41

    push de
    ld b, c
    push de
    ld b, c
    push de
    ld b, c
    push de
    ld b, c
    push de
    ld b, c
    push de
    ld b, c
    push de
    ld b, c
    push de
    ld b, c
    push de
    ld b, c
    push de
    ld b, c

    db $62, $64, $5d, $5f

    ld [hl-], a
    inc a
    inc d
    ld [hl-], a
    jr z, jr_03c_41e6

    inc d
    jr z, @+$0c

    ld e, $63
    ld h, h
    inc a
    ld b, h
    ld d, a
    ld e, e
    ld d, e
    ld d, a
    jr z, jr_03c_41f4

    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld [hl-], a
    inc a
    inc d
    ld [hl-], a
    jr z, jr_03c_41fe

    inc d
    jr z, @+$0c

    ld e, $63
    ld h, h
    ld e, d
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, d
    ld e, [hl]
    jr z, jr_03c_420c

    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld d, b
    ld e, d
    ld [hl-], a
    ld d, b
    ld b, [hl]
    ld d, l
    ld [hl-], a
    ld b, [hl]
    jr z, @+$3e

    ld h, e
    ld h, h
    ld e, d

jr_03c_41e6:
    ld h, d

    db $5e, $62, $5a, $5e

    ld b, [hl]
    ld d, l

Call_03c_41ed:
    ld a, [$d445]
    or a
    jr z, jr_03c_41f5

    xor a

jr_03c_41f4:
    ret


jr_03c_41f5:
    ld a, [$d4cd]
    cp $0d
    jr z, jr_03c_4200

    cp $02

jr_03c_41fe:
    jr nz, jr_03c_4210

jr_03c_4200:
    ld a, [$d446]
    or a
    jr z, jr_03c_4235

    cp $01
    jr nz, jr_03c_420d

    ld a, $05

jr_03c_420c:
    ret


jr_03c_420d:
    ld a, $06
    ret


jr_03c_4210:
    cp $00
    jr z, jr_03c_4218

    cp $0e
    jr nz, jr_03c_4228

jr_03c_4218:
    ld a, [$d446]
    or a
    jr z, jr_03c_4235

    cp $01
    jr nz, jr_03c_4225

    ld a, $09
    ret


jr_03c_4225:
    ld a, $0a
    ret


jr_03c_4228:
    cp $01
    jr nz, jr_03c_4235

    ld a, [$d446]
    or a
    jr z, jr_03c_4235

    ld a, $0b
    ret


jr_03c_4235:
    push hl
    push de
    ld a, [$d4cd]
    ld hl, $4246
    add l
    ld l, a
    jr nc, jr_03c_4242

    inc h

jr_03c_4242:
    ld a, [hl]
    pop de
    pop hl
    ret


    ld bc, $0402
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
    ld [$0b07], sp
    inc bc
    inc b
    db $01
    db $01

Call_03c_4256:
    push de
    ld hl, $c880
    ld d, $00
    ld e, a
    ld a, [$c835]
    or a
    jr z, jr_03c_4267

    ld a, $40
    add e
    ld e, a

jr_03c_4267:
    add hl, de
    pop de
    ret


    call Call_03c_50d3
    ld [$d549], a
    ld a, [$d4cd]
    cp $06
    jp z, Jump_03c_4296

    cp $0a
    jp z, Jump_03c_4296

    rst $18

    db $04, $10

    push hl
    ld de, $f880
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_03c_4290

    call Call_03c_5751
    jp Jump_03c_4299


jr_03c_4290:
    call Call_03c_59dc
    jp Jump_03c_4299


Jump_03c_4296:
    call Call_03c_5dcd

Jump_03c_4299:
    push af
    ld a, h
    and $fe
    ld h, a
    ld a, l
    and $fe
    ld l, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld de, $0000
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    inc c
    cp $fe
    nop
    ld [bc], a
    ld [bc], a
    inc b
    and b
    ld [bc], a
    db $fc
    db $fc
    db $fc
    nop
    ld [bc], a
    inc b
    ld e, d
    dec b
    ld sp, hl
    db $fc
    db $fc
    nop
    nop
    ld [bc], a
    ld b, h
    add hl, bc
    or $fc
    db $fc
    cp $fe
    nop

    db $00, $00, $02, $00

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, l
    ld [bc], a
    xor $fe
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    ld b, d
    xor h
    ld b, d
    or h
    ld b, d
    cp h
    ld b, d
    call nz, $cc42
    ld b, d
    call nc, $dc42
    ld b, d
    db $e4
    ld b, d

    db $ec, $42

    db $f4
    ld b, d
    db $fc
    ld b, d
    inc b
    ld b, e
    inc c
    ld b, e
    inc d
    ld b, e
    inc e
    ld b, e
    inc d
    nop
    add hl, de
    nop
    jr z, jr_03c_434a

jr_03c_434a:
    inc a
    nop
    rrca
    nop
    add hl, de
    nop
    dec l
    nop
    inc a
    nop
    ld a, [bc]
    nop
    add hl, de
    nop
    inc hl
    nop
    inc a
    nop
    dec c
    ld bc, $0805

Call_03c_4360:
    push af
    push bc
    push de
    ld b, a
    sub $10
    bit 7, a
    jr nz, jr_03c_436d

    xor a
    jr jr_03c_436e

jr_03c_436d:
    ld a, b

jr_03c_436e:
    ld hl, $4324

jr_03c_4371:
    cp $00
    jr z, jr_03c_437a

    inc hl
    inc hl
    dec a
    jr jr_03c_4371

jr_03c_437a:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    pop bc
    pop af
    ret


Call_03c_4381:
    push hl
    call Call_03c_4360
    ld a, [hl]
    and $03
    pop hl
    ret


Call_03c_438a:
    push hl
    call Call_03c_4360
    ld a, [hl]
    srl a
    srl a
    and $03
    pop hl
    ret


Call_03c_4397:
    push hl
    call Call_03c_4360
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    and $03
    pop hl
    ret


Call_03c_43a8:
    push hl
    call Call_03c_4360
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    srl a
    srl a
    and $03
    pop hl
    ret


Call_03c_43bd:
    push hl
    call Call_03c_4360
    inc hl
    ld a, [hl]
    and $03
    pop hl
    ret


Call_03c_43c7:
    push hl
    call Call_03c_4360
    inc hl
    ld a, [hl]
    srl a
    srl a
    and $07
    pop hl
    ret


Call_03c_43d5:
    push hl
    call Call_03c_4360
    inc hl
    inc hl
    ld a, [hl]
    pop hl
    ret


Call_03c_43de:
    push hl
    call Call_03c_4360
    inc hl
    inc hl
    inc hl
    ld a, [$c836]
    cp $00
    jr z, jr_03c_4401

    sub $06
    bit 7, a
    jr z, jr_03c_4401

    ld a, [$c836]
    dec a

jr_03c_43f6:
    cp $00
    jr z, jr_03c_43fe

    inc hl
    dec a
    jr jr_03c_43f6

jr_03c_43fe:
    ld a, [hl]
    pop hl
    ret


jr_03c_4401:
    xor a
    pop hl
    ret


Call_03c_4404:
    push bc
    push de
    push hl
    push bc
    pop hl
    call Call_000_08ac
    bit 7, h
    jr nz, jr_03c_4422

    ld a, h
    cp $00
    jr nz, jr_03c_441e

    ld a, l
    cp $00
    jr nz, jr_03c_441e

    ld a, $00
    jr jr_03c_4424

jr_03c_441e:
    ld a, $01
    jr jr_03c_4424

jr_03c_4422:
    ld a, $02

jr_03c_4424:
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    push de
    push de
    ld hl, $d545
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop bc
    push hl
    ld hl, $d547
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop de
    jr jr_03c_4483

Call_03c_4447:
    push af
    push bc
    push de
    push de
    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop bc
    push hl
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop de
    jr jr_03c_4483

Call_03c_4466:
    push af
    push bc
    push de
    push de
    ld hl, $d401
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop bc
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop de

jr_03c_4483:
    ld a, h
    bit 7, a
    jr z, jr_03c_448a

    cpl
    inc a

jr_03c_448a:
    ld b, a
    ld a, d
    bit 7, a
    jr z, jr_03c_4492

    cpl
    inc a

jr_03c_4492:
    cp b
    jr nc, jr_03c_4496

    ld a, b

jr_03c_4496:
    ld b, $01
    cp $20
    jr nc, jr_03c_44b1

    inc b
    cp $10
    jr nc, jr_03c_44b1

    inc b
    cp $08
    jr nc, jr_03c_44b1

    inc b
    cp $04
    jr nc, jr_03c_44b1

    inc b
    cp $02
    jr nc, jr_03c_44b1

    inc b

jr_03c_44b1:
    push bc

jr_03c_44b2:
    sla e
    rl d
    sla l
    rl h
    dec b
    jr nz, jr_03c_44b2

    push de
    ld d, h
    ld e, l
    call Call_000_0c8e
    pop de
    push hl
    ld h, d
    ld l, e
    call Call_000_0c8e
    pop de
    add hl, de
    call Call_000_0f04
    ld h, a
    ld l, $00
    pop bc

jr_03c_44d3:
    srl h
    rr l
    dec b
    jr nz, jr_03c_44d3

    pop de
    pop bc
    pop af
    ret


Call_03c_44de:
    push de
    push bc
    ld hl, $d545
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_08ac
    pop bc
    push hl
    ld hl, $d547
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop de
    call Call_000_1a03
    ret


Call_03c_44fc:
    push hl
    ld hl, $d545
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d547
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    push de
    ld hl, $d401
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop bc
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop de
    call Call_000_1a03
    ret


Call_03c_4528:
    push af
    push bc
    push de
    ld d, h
    push de
    call Call_03c_453f
    ld de, $003c
    call Call_000_09ae
    pop de
    ld a, d
    call Call_000_08b9
    pop de
    pop bc
    pop af
    ret


Call_03c_453f:
    push af
    push bc
    push de
    rst $18

    db $0e, $10

    push hl
    call Call_03c_416a
    ld a, d
    add e
    pop hl
    cp $c6
    jr z, jr_03c_4560

    push hl
    ld hl, HeaderROMSize
    call Call_000_08b9
    ld de, $0080
    add hl, de
    ld a, h
    pop hl
    call Call_000_0bec

jr_03c_4560:
    pop de
    pop bc
    pop af
    ret


Call_03c_4564:
    ld a, [$d443]
    or a
    jr z, jr_03c_458c

    cp $04
    jr z, jr_03c_458c

    ld a, [$d442]
    ld b, a
    ld a, d
    sub b
    ld d, a
    ld a, [$d441]
    ld b, a
    ld a, h
    sub b
    ld h, a
    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d

jr_03c_458c:
    push hl
    push de
    call Call_03c_45af
    pop de
    pop hl
    push bc
    call Call_03c_45d5
    pop bc
    ret


Call_03c_4599:
    push bc
    push de
    push hl
    ld b, a

jr_03c_459d:
    call Call_000_0a61
    ld a, l
    sub b
    jr z, jr_03c_45aa

    bit 7, a
    jr nz, jr_03c_45aa

    jr jr_03c_459d

jr_03c_45aa:
    ld a, l
    pop hl
    pop de
    pop bc
    ret


Call_03c_45af:
    bit 7, h
    jr nz, jr_03c_45d0

    bit 7, d
    jr nz, jr_03c_45d0

    push de
    push hl
    pop de
    ld bc, $4000
    call Call_03c_4404
    pop de
    cp $02
    jr z, jr_03c_45d0

    call Call_03c_4404
    cp $02
    jr z, jr_03c_45d0

    call Call_03c_404c
    ret


jr_03c_45d0:
    ld a, $80
    ld b, $00
    ret


Call_03c_45d5:
    bit 7, h
    jr nz, jr_03c_45f6

    bit 7, d
    jr nz, jr_03c_45f6

    push de
    push hl
    pop de
    ld bc, $4000
    call Call_03c_4404
    pop de
    cp $02
    jr z, jr_03c_45f6

    call Call_03c_4404
    cp $02
    jr z, jr_03c_45f6

    call Call_03c_40b1
    ret


jr_03c_45f6:
    ld a, $07
    ret


Call_03c_45f9:
    push bc
    push de
    push hl
    ld a, [$d4cd]
    cp $06
    jr z, jr_03c_4641

    cp $0a
    jr z, jr_03c_4641

    xor a

jr_03c_4608:
    cp $0d
    jr z, jr_03c_462d

    push af
    call Call_03c_465f
    cp $01
    jr z, jr_03c_4629

    pop af
    push af
    push bc
    call Call_03c_453f
    pop bc
    pop af
    push hl
    pop de
    ld h, a
    call Call_03c_4404
    cp $01
    ld a, h
    jr z, jr_03c_462d

    jr jr_03c_462a

jr_03c_4629:
    pop af

jr_03c_462a:
    inc a
    jr jr_03c_4608

jr_03c_462d:
    cp $00
    jr z, jr_03c_4643

    dec a
    push af
    call Call_03c_465f
    cp $01
    jr nz, jr_03c_463e

    pop af
    inc a
    jr jr_03c_4643

jr_03c_463e:
    pop af
    jr jr_03c_4643

jr_03c_4641:
    ld a, $0d

jr_03c_4643:
    push af
    sub $03
    bit 7, a
    jr z, jr_03c_465a

    ld a, [$d4cd]
    cp $00
    jr z, jr_03c_465a

    cp $0e
    jr z, jr_03c_465a

    pop af
    ld a, $03
    jr jr_03c_465b

jr_03c_465a:
    pop af

jr_03c_465b:
    pop bc
    pop de
    pop hl
    ret


Call_03c_465f:
    push bc
    push de
    push hl
    cp $00
    jr z, jr_03c_467f

    cp $01
    jr z, jr_03c_467f

    cp $02
    jr z, jr_03c_467f

    cp $0b
    jr z, jr_03c_468e

    cp $0c
    jr z, jr_03c_468e

    ld a, [$d4cd]
    cp $04
    jr z, jr_03c_468a

    jr jr_03c_468e

jr_03c_467f:
    ld a, [$d4cd]
    cp $00
    jr z, jr_03c_468e

    cp $0e
    jr z, jr_03c_468e

jr_03c_468a:
    ld a, $01
    jr jr_03c_468f

jr_03c_468e:
    xor a

jr_03c_468f:
    pop hl
    pop de
    pop bc
    ret


Call_03c_4693:
    push af
    push bc
    push de
    push hl
    ld a, c
    ld [$d526], a
    ld a, b
    ld [$d527], a
    rst $18

    db $04, $10

    ld a, l
    ld [$d528], a
    ld a, h
    ld [$d529], a
    push hl
    pop de
    ld bc, $0c80
    call Call_03c_4404
    cp $02
    jr nz, jr_03c_46bd

    call Call_03c_4a33
    cp $01
    jr z, jr_03c_4733

jr_03c_46bd:
    push hl
    pop de
    ld a, [$d526]
    ld c, a
    ld a, [$d527]
    ld b, a
    call Call_03c_4404
    cp $02
    jr z, jr_03c_4733

    ld a, [$d325]
    cp $03
    jr z, jr_03c_4718

    ld a, [$d549]
    ld b, a
    ld a, [$d325]
    add b
    dec a
    dec a
    ld b, a
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    inc a
    ld c, a
    ld a, b
    sub c
    bit 7, a
    jr nz, jr_03c_4718

    cp $00
    jr z, jr_03c_4718

    ld a, [$d43d]
    ld [$d545], a
    ld a, [$d43e]
    ld [$d546], a
    ld a, [$d43f]
    ld [$d547], a
    ld a, [$d440]
    ld [$d548], a
    ld a, [$d526]
    ld c, a
    ld a, [$d527]
    ld b, a
    call Call_03c_48d5
    jp Jump_03c_48d0


jr_03c_4718:
    ld a, [$d43d]
    ld [$d545], a
    ld a, [$d43e]
    ld [$d546], a
    ld a, [$d43f]
    ld [$d547], a
    ld a, [$d440]
    ld [$d548], a
    jp Jump_03c_48d0


jr_03c_4733:
    ld a, $02
    ld [$d525], a
    ld a, $ff
    ld [$d52e], a

Jump_03c_473d:
    ld a, [$d525]
    cp $ff
    jp z, Jump_03c_47bd

    ld c, a
    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    pop hl
    ld b, a
    rst $18

    db $00, $3d

    push de
    ld a, $ff
    ld d, a
    ld a, $e0
    ld e, a
    call Call_03c_4404
    pop de
    cp $00
    jr z, jr_03c_47b3

    call Call_03c_4466
    push bc
    push de
    push hl
    pop de
    ld a, [$d526]
    ld c, a
    ld a, [$d527]
    ld b, a
    call Call_03c_4404
    pop de
    pop bc
    cp $02
    jr z, jr_03c_47b3

    push bc
    push de
    call Call_03c_4466
    push hl
    pop de
    ld a, [$d526]
    ld c, a
    ld a, [$d527]
    ld b, a
    sra b
    rr c
    call Call_03c_4404
    pop de
    pop bc
    cp $01
    jr z, jr_03c_47b3

    call Call_03c_4447
    push bc
    push de
    push hl
    pop de
    ld a, [$d528]
    ld c, a
    ld a, [$d529]
    ld b, a
    call Call_03c_4404
    pop de
    pop bc
    cp $02
    jr z, jr_03c_47bd

    ld a, [$d525]
    ld [$d52e], a

jr_03c_47b3:
    ld a, [$d525]
    dec a
    ld [$d525], a
    jp Jump_03c_473d


Jump_03c_47bd:
jr_03c_47bd:
    push hl
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    pop hl
    cp $00
    jr nz, jr_03c_47cd

    xor a
    ld [$d52e], a

jr_03c_47cd:
    ld a, [$d52e]
    cp $ff
    jr nz, jr_03c_47e2

    ld a, [$d526]
    ld c, a
    ld a, [$d527]
    ld b, a
    call Call_03c_48d5
    jp Jump_03c_48d0


jr_03c_47e2:
    ld a, [$d52e]
    ld c, a
    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    pop hl
    ld b, a
    rst $18

    db $00, $3d

    ld a, b
    cp $ff
    jr nz, jr_03c_4808

    ld a, c
    cp $e0
    jr nz, jr_03c_4808

    ld hl, $d43d
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a

jr_03c_4808:
    ld a, c
    ld [$d545], a
    ld a, b
    ld [$d546], a
    ld a, e
    ld [$d547], a
    ld a, d
    ld [$d548], a
    ld a, c
    ld [$d52a], a
    ld a, b
    ld [$d52b], a
    ld a, e
    ld [$d52c], a
    ld a, d
    ld [$d52d], a
    call Call_03c_4a11
    cp $01
    jp z, Jump_03c_48d0

    ld a, [$d52e]
    inc a
    ld c, a
    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    pop hl
    ld b, a
    rst $18

    db $00, $3d

    ld a, b
    cp $ff
    jr nz, jr_03c_485e

    ld a, c
    cp $e0
    jr nz, jr_03c_485e

    call Call_03c_4a33
    cp $01
    jr z, jr_03c_48d0

    ld hl, $d43d
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a

jr_03c_485e:
    call Call_03c_44de
    push bc
    ld a, [$d545]
    ld c, a
    ld a, [$d546]
    ld b, a
    ld a, [$d547]
    ld e, a
    ld a, [$d548]
    ld d, a
    call Call_03c_4466
    push hl
    pop de
    ld a, [$d526]
    ld l, a
    ld a, [$d527]
    ld h, a
    call Call_000_08ac
    bit 7, h
    pop bc
    jr nz, jr_03c_48d0

    call Call_000_11ba
    ld a, [$d545]
    ld c, a
    ld a, [$d546]
    ld b, a
    add hl, bc
    ld a, l
    ld [$d545], a
    ld a, h
    ld [$d546], a
    ld a, [$d547]
    ld c, a
    ld a, [$d548]
    ld b, a
    push de
    pop hl
    add hl, bc
    ld a, l
    ld [$d547], a
    ld a, h
    ld [$d548], a
    jr jr_03c_48d0

    ld a, [$d52a]
    ld c, a
    ld a, [$d52b]
    ld b, a
    ld a, [$d52c]
    ld e, a
    ld a, [$d52d]
    ld d, a
    ld a, c
    ld [$d545], a
    ld a, b
    ld [$d546], a
    ld a, e
    ld [$d547], a
    ld a, d
    ld [$d548], a

Jump_03c_48d0:
jr_03c_48d0:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03c_48d5:
    push af
    push bc
    push de
    push hl
    ld hl, $d527
    xor a
    ld [hl], a
    ld a, c
    ld [$d525], a
    ld a, b
    ld [$d526], a

Jump_03c_48e6:
    rst $18

    db $08, $10

    ld de, $0010

Jump_03c_48ec:
    push bc
    push de
    ld a, [$d525]
    ld l, a
    ld a, [$d526]
    ld h, a
    call Call_000_11ba
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    call Call_03c_45d5
    pop de
    pop bc
    cp $00
    jr z, jr_03c_4923

    cp $06
    jr z, jr_03c_4923

    cp $0a
    jr z, jr_03c_4923

    cp $0e
    jr z, jr_03c_4923

    jp Jump_03c_4952


jr_03c_4923:
    ld a, [$d525]
    ld l, a
    ld a, [$d526]
    ld h, a
    call Call_000_11ba
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    ld a, l
    ld [$d545], a
    ld a, h
    ld [$d546], a
    ld a, e
    ld [$d547], a
    ld a, d
    ld [$d548], a
    jr jr_03c_499a

Jump_03c_4952:
    call Call_03c_499f
    dec e
    jp nz, Jump_03c_48ec

    ld hl, $d527
    ld a, [hl]
    cp $02
    jr z, jr_03c_4982

    inc a
    ld [hl], a
    ld a, [$d525]
    ld l, a
    ld a, [$d526]
    ld h, a
    sra h
    rr l
    sra h
    rr l
    push hl
    pop de
    add hl, hl
    add hl, de
    ld a, l
    ld [$d525], a
    ld a, h
    ld [$d526], a
    jp Jump_03c_48e6


jr_03c_4982:
    ld a, [$d43d]
    ld [$d545], a
    ld a, [$d43e]
    ld [$d546], a
    ld a, [$d43f]
    ld [$d547], a
    ld a, [$d440]
    ld [$d548], a

jr_03c_499a:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03c_499f:
    push hl
    ld hl, $49b3
    ld a, d
    add a
    add l
    ld l, a
    jr nc, jr_03c_49aa

    inc h

jr_03c_49aa:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    inc d
    pop hl
    ret


    db $1c, $07, $c8, $f1, $54, $15, $90, $e3, $8c, $23, $58, $d5, $c4, $31, $20, $c7
    db $fc, $3f, $e8, $b8, $34, $4e, $b0, $aa, $6c, $5c, $78, $9c, $a4, $6a, $40, $8e

    ld hl, sp+$7f
    ld [$e580], sp
    ld hl, $49eb
    ld a, d
    add a
    add l
    ld l, a
    jr nc, jr_03c_49e2

    inc h

jr_03c_49e2:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    inc d
    pop hl
    ret


    adc [hl]
    inc bc
    db $e4
    ld hl, sp-$56
    ld a, [bc]
    ret z

    pop af
    add $11
    xor h
    ld [$18e2], a
    sub b
    db $e3
    cp $1f
    ld [hl], h
    call c, Call_000_271a
    ld e, b
    push de
    ld [hl], $2e
    inc a
    adc $52
    dec [hl]
    jr nz, @-$37

    db $fc
    ccf
    inc b
    ret nz

    db $41, $ff

Call_03c_4a11:
    push bc
    push de
    push hl
    ld hl, $4a0f

jr_03c_4a17:
    ld a, [hl]
    cp $ff
    jr z, jr_03c_4a26

    ld b, a
    ld a, [$d320]
    cp b
    jr z, jr_03c_4a29

    inc hl
    jr jr_03c_4a17

jr_03c_4a26:
    xor a
    jr jr_03c_4a2b

jr_03c_4a29:
    ld a, $01

jr_03c_4a2b:
    pop hl
    pop de
    pop bc
    ret


    db $17, $3a, $46, $ff

Call_03c_4a33:
    push bc
    push de
    push hl
    ld hl, $4a2f

jr_03c_4a39:
    ld a, [hl]
    cp $ff
    jr z, jr_03c_4a48

    ld b, a
    ld a, [$d320]
    cp b
    jr z, jr_03c_4a4b

    inc hl
    jr jr_03c_4a39

jr_03c_4a48:
    xor a
    jr jr_03c_4a4d

jr_03c_4a4b:
    ld a, $01

jr_03c_4a4d:
    pop hl
    pop de
    pop bc
    ret


Call_03c_4a51:
    push af
    push bc
    push de
    push hl
    ld hl, $d527
    xor a
    ld [hl], a
    ld a, c
    ld [$d525], a
    ld a, b
    ld [$d526], a

Jump_03c_4a62:
    rst $18
    ld [$1110], sp
    stop

Jump_03c_4a68:
    push bc
    push de
    ld a, [$d525]
    ld l, a
    ld a, [$d526]
    ld h, a
    call Call_000_11ba
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    call Call_03c_45d5
    pop de
    pop bc
    cp $00
    jr z, jr_03c_4a97

    cp $0e
    jr z, jr_03c_4a97

    jp Jump_03c_4acd


jr_03c_4a97:
    ld a, [$d525]
    ld l, a
    ld a, [$d526]
    ld h, a
    call Call_000_11ba
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    call Call_03c_4e74
    cp $01
    jr z, jr_03c_4acd

    ld a, l
    ld [$d545], a
    ld a, h
    ld [$d546], a
    ld a, e
    ld [$d547], a
    ld a, d
    ld [$d548], a
    jr jr_03c_4b15

Jump_03c_4acd:
jr_03c_4acd:
    call $49d7
    dec e
    jp nz, Jump_03c_4a68

    ld hl, $d527
    ld a, [hl]
    cp $04
    jr z, jr_03c_4afd

    inc a
    ld [hl], a
    ld a, [$d525]
    ld l, a
    ld a, [$d526]
    ld h, a
    sra h
    rr l
    sra h
    rr l
    push hl
    pop de
    add hl, hl
    add hl, de
    ld a, l
    ld [$d525], a
    ld a, h
    ld [$d526], a
    jp Jump_03c_4a62


jr_03c_4afd:
    ld a, [$d43d]
    ld [$d545], a
    ld a, [$d43e]
    ld [$d546], a
    ld a, [$d43f]
    ld [$d547], a
    ld a, [$d440]
    ld [$d548], a

jr_03c_4b15:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push de
    push hl
    push hl
    pop de
    ld hl, $d52d
    ld [hl], a
    ld hl, $d52e
    ld [hl], d
    ld a, c
    ld [$d525], a
    ld a, b
    ld [$d526], a
    ld hl, $d52d
    ld a, [hl]
    call Call_03c_453f
    xor a
    ld d, a
    ld a, $3c
    ld e, a
    call Call_000_09ae
    push hl
    ld hl, $d52e
    ld a, [hl]
    pop hl
    call Call_000_08b9
    ld a, l
    ld [$d527], a
    ld a, h
    ld [$d528], a
    xor a
    ld de, $0020
    ld a, e
    ld [$d529], a
    ld a, d
    ld [$d52a], a

jr_03c_4b5a:
    ld a, [$d527]
    ld c, a
    ld a, [$d528]
    ld b, a
    ld a, [$d529]
    ld e, a
    ld a, [$d52a]
    ld d, a
    call Call_03c_4404
    cp $00
    jr z, jr_03c_4bcd

    cp $02
    jr z, jr_03c_4bcd

    ld a, [$d525]
    ld c, a
    ld a, [$d526]
    ld b, a
    ld a, [$d529]
    ld l, a
    ld a, [$d52a]
    ld h, a
    call Call_000_11ba
    push bc
    push de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    push hl
    pop bc
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    push hl
    pop de
    push bc
    pop hl
    pop bc
    call Call_03c_4de2
    cp $00
    jr z, jr_03c_4bab

    jr jr_03c_4bc1

jr_03c_4bab:
    ld a, [$d529]
    ld l, a
    ld a, [$d52a]
    ld h, a
    ld de, $0080
    add hl, de
    ld a, l
    ld [$d529], a
    ld a, h
    ld [$d52a], a
    jr jr_03c_4b5a

jr_03c_4bc1:
    ld a, [$d529]
    ld c, a
    ld a, [$d52a]
    ld b, a
    ld a, $01
    jr jr_03c_4bce

jr_03c_4bcd:
    xor a

jr_03c_4bce:
    pop hl
    pop de
    ret


Call_03c_4bd1:
    push bc
    push de
    push hl
    push bc
    pop hl
    push hl
    push de
    call Call_03c_45d5
    pop de
    pop hl
    cp $03
    jr z, jr_03c_4bee

    cp $05
    jr z, jr_03c_4bee

    cp $07
    jr z, jr_03c_4bee

    call Call_03c_4e74
    jr jr_03c_4bf0

jr_03c_4bee:
    ld a, $01

jr_03c_4bf0:
    pop hl
    pop de
    pop bc
    ret


    rst $00
    ld bc, $fc72
    ld d, l
    dec b
    db $e4

jr_03c_4bfb:
    ld hl, sp-$1d
    ld [$f556], sp
    ld [hl], c
    inc c
    ret z

    pop af
    rst $38
    rrca
    ld a, [hl-]
    xor $8d
    inc de
    xor h
    ld [$171b], a
    ld e, $e7
    xor c
    ld a, [de]
    sub b
    db $e3
    scf
    ld e, $02
    ldh [$c5], a
    ld hl, $dc74
    ld d, e
    dec h
    and $d8
    pop hl
    jr z, jr_03c_4c7b

    push de
    ld l, a
    inc l
    jp z, $fdd1

    cpl
    inc a
    adc $8b
    inc sp
    xor [hl]
    jp z, Jump_000_3719

    jr nz, jr_03c_4bfb

    and a
    ld a, [hl-]
    sub d
    jp Jump_000_3e35


    inc b
    ret nz

    jp Jump_03c_7641


    cp h
    ld d, c
    ld b, l
    add sp, -$48
    rst $18
    ld c, b
    ld e, d
    or l
    ld l, l
    ld c, h
    call z, $fbb1
    ld c, a
    ld a, $ae
    adc c
    ld d, e
    or b
    xor d

Call_03c_4c54:
    push bc
    push hl
    push hl
    ld hl, $d552
    ld [hl], a
    pop hl
    ld a, h
    ld [$d558], a
    ld a, c
    ld [$d553], a
    ld a, b
    ld [$d554], a
    ld a, e
    ld [$d556], a
    ld a, d
    ld [$d557], a
    ld b, $30
    ld hl, $4bf4

jr_03c_4c75:
    ld a, b
    cp $00
    jr z, jr_03c_4cd5

    push hl

jr_03c_4c7b:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    push hl
    push bc
    ld a, [$d556]
    ld l, a
    ld a, [$d557]
    ld h, a
    add hl, de
    ld a, l
    ld [$d556], a
    ld a, h
    ld [$d557], a
    push hl
    pop bc
    ld a, [$d558]
    ld h, a
    ld a, [$d552]
    call Call_03c_4f97
    cp $00
    pop bc
    pop hl
    jr nz, jr_03c_4cc3

    push hl
    push bc
    ld a, [$d556]
    ld l, a
    ld a, [$d557]
    ld h, a
    push hl
    pop bc
    ld a, [$d558]
    ld h, a
    ld a, [$d552]
    call Call_03c_4cda
    call Call_03c_4bd1
    pop bc
    pop hl
    cp $00
    jr z, jr_03c_4cc8

jr_03c_4cc3:
    inc hl
    inc hl
    dec b
    jr jr_03c_4c75

jr_03c_4cc8:
    ld a, [$d556]
    ld l, a
    ld a, [$d557]
    ld h, a
    push hl
    pop de
    xor a
    jr jr_03c_4cd7

jr_03c_4cd5:
    ld a, $01

jr_03c_4cd7:
    pop hl
    pop bc
    ret


Call_03c_4cda:
    push af
    push hl
    ld e, h
    call Call_03c_453f
    push de
    xor a
    ld d, a
    ld a, $3c
    ld e, a
    call Call_000_09ae
    pop de
    ld a, e
    call Call_000_08b9
    call Call_000_11ba
    push de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    push hl
    pop bc
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    push hl
    pop de
    pop hl
    pop af
    ret


Call_03c_4d0a:
    push af
    push bc
    push de
    push hl
    pop de
    ld hl, $d52d
    ld [hl], a
    ld hl, $d52e
    ld [hl], d
    ld a, c
    ld [$d525], a
    ld a, b
    ld [$d526], a
    ld hl, $d52d
    ld a, [hl]
    call Call_03c_453f
    xor a
    ld d, a
    ld a, $3c
    ld e, a
    call Call_000_09ae
    push hl
    ld hl, $d52e
    ld a, [hl]
    pop hl
    call Call_000_08b9
    ld a, l
    ld [$d527], a
    ld a, h
    ld [$d528], a
    ld a, l
    ld [$d529], a
    ld a, h
    ld [$d52a], a

Jump_03c_4d47:
    xor a
    ld d, a
    ld e, a
    ld a, [$d529]
    ld c, a
    ld a, [$d52a]
    ld b, a
    call Call_03c_4404
    cp $00
    jp z, Jump_03c_4ddb

    cp $02
    jp z, Jump_03c_4ddb

    ld a, [$d525]
    ld c, a
    ld a, [$d526]
    ld b, a
    ld a, [$d529]
    ld l, a
    ld a, [$d52a]
    ld h, a
    call Call_000_11ba
    push bc
    push de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    push hl
    pop bc
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    push hl
    pop de
    push bc
    pop hl
    pop bc
    push hl
    push de
    call Call_03c_45d5
    pop de
    pop hl
    cp $00
    jr z, jr_03c_4dc4

    cp $02
    jr z, jr_03c_4dc4

    cp $06
    jr z, jr_03c_4dc4

    cp $09
    jr z, jr_03c_4dc4

    cp $0a
    jr z, jr_03c_4dc4

    cp $0e
    jr z, jr_03c_4dc4

    ld a, [$d529]
    ld l, a
    ld a, [$d52a]
    ld h, a
    ld de, $0020
    call Call_000_08ac
    ld a, l
    ld [$d529], a
    ld a, h
    ld [$d52a], a
    jp Jump_03c_4d47


jr_03c_4dc4:
    ld hl, $d52d
    ld a, [hl]
    call Call_03c_453f
    push hl
    pop bc
    ld a, [$d529]
    ld e, a
    ld a, [$d52a]
    ld d, a
    call Call_03c_5021
    ld h, a
    jr jr_03c_4dde

Jump_03c_4ddb:
    ld a, $ff
    ld h, a

jr_03c_4dde:
    pop de
    pop bc
    pop af
    ret


Call_03c_4de2:
    push bc
    push de
    push hl
    ld a, [$c836]
    cp $03
    jr z, jr_03c_4e32

    cp $04
    jr z, jr_03c_4e32

    push de
    push hl
    call Call_03c_45af
    pop hl
    pop de
    srl a
    srl a
    srl a
    srl a
    srl a
    srl a
    cp $00
    jr z, jr_03c_4e2d

    cp $01
    jr z, jr_03c_4e2d

    ld a, l
    sub $40
    bit 7, a
    jr nz, jr_03c_4e1b

    ld a, l
    sub $a0
    bit 7, a
    jr z, jr_03c_4e1b

    jr jr_03c_4e29

jr_03c_4e1b:
    ld a, e
    sub $40
    bit 7, a
    jr nz, jr_03c_4e2d

    ld a, e
    sub $a0
    bit 7, a
    jr z, jr_03c_4e2d

jr_03c_4e29:
    ld a, $01
    jr jr_03c_4e2e

jr_03c_4e2d:
    xor a

jr_03c_4e2e:
    pop hl
    pop de
    pop bc
    ret


jr_03c_4e32:
    push de
    push hl
    call Call_03c_45af
    pop hl
    pop de
    srl a
    srl a
    srl a
    srl a
    srl a
    srl a
    cp $00
    jr z, jr_03c_4e6f

    cp $01
    jr z, jr_03c_4e6f

    ld a, l
    sub $20
    bit 7, a
    jr nz, jr_03c_4e5d

    ld a, l
    sub $c0
    bit 7, a
    jr z, jr_03c_4e5d

    jr jr_03c_4e6b

jr_03c_4e5d:
    ld a, e
    sub $20
    bit 7, a
    jr nz, jr_03c_4e6f

    ld a, e
    sub $c0
    bit 7, a
    jr z, jr_03c_4e6f

jr_03c_4e6b:
    ld a, $01
    jr jr_03c_4e70

jr_03c_4e6f:
    xor a

jr_03c_4e70:
    pop hl
    pop de
    pop bc
    ret


Call_03c_4e74:
    push bc
    push de
    push hl
    push de
    ld de, $ff60
    add hl, de
    pop de
    push hl
    push de
    pop hl
    ld de, $ff60
    add hl, de
    push hl
    pop de
    pop hl
    ld a, l
    ld [$d52f], a
    ld a, h
    ld [$d530], a
    ld a, e
    ld [$d531], a
    ld a, d
    ld [$d532], a
    ld de, $0140
    add hl, de
    ld a, l
    ld [$d533], a
    ld a, h
    ld [$d534], a
    ld a, [$d531]
    ld l, a
    ld a, [$d532]
    ld h, a
    add hl, de
    ld a, l
    ld [$d535], a
    ld a, h
    ld [$d536], a

jr_03c_4eb4:
    ld a, [$d535]
    ld c, a
    ld a, [$d536]
    ld b, a
    ld a, [$d531]
    ld e, a
    ld a, [$d532]
    ld d, a
    call Call_03c_4404
    cp $01
    jr nz, jr_03c_4f2b

jr_03c_4ecb:
    ld a, [$d533]
    ld c, a
    ld a, [$d534]
    ld b, a
    ld a, [$d52f]
    ld e, a
    ld a, [$d530]
    ld d, a
    call Call_03c_4404
    cp $01
    jr nz, jr_03c_4f11

    push de
    pop hl
    ld a, [$d531]
    ld e, a
    ld a, [$d532]
    ld d, a
    call Call_03c_45d5
    cp $03
    jr z, jr_03c_4f27

    cp $07
    jr z, jr_03c_4f27

    cp $0c
    jr z, jr_03c_4f27

    ld a, [$d52f]
    ld l, a
    ld a, [$d530]
    ld h, a
    ld de, $0020
    add hl, de
    ld a, l
    ld [$d52f], a
    ld a, h
    ld [$d530], a
    jr jr_03c_4ecb

jr_03c_4f11:
    ld a, [$d531]
    ld l, a
    ld a, [$d532]
    ld h, a
    ld de, $0020
    add hl, de
    ld a, l
    ld [$d531], a
    ld a, h
    ld [$d532], a
    jr jr_03c_4eb4

jr_03c_4f27:
    ld a, $01
    jr jr_03c_4f2c

jr_03c_4f2b:
    xor a

jr_03c_4f2c:
    pop hl
    pop de
    pop bc
    ret


Call_03c_4f30:
    push bc
    push de
    push hl
    push hl
    pop de
    ld hl, $d52d
    ld [hl], a
    ld hl, $d52e
    ld [hl], d
    ld a, c
    ld [$d525], a
    ld a, b
    ld [$d526], a
    ld hl, $d52d
    ld a, [hl]
    call Call_03c_453f
    xor a
    ld d, a
    ld a, $3c
    ld e, a
    call Call_000_09ae
    push hl
    ld hl, $d52e
    ld a, [hl]
    pop hl
    call Call_000_08b9
    ld a, l
    ld [$d527], a
    ld a, h
    ld [$d528], a
    ld a, [$d525]
    ld c, a
    ld a, [$d526]
    ld b, a
    ld a, [$d527]
    ld l, a
    ld a, [$d528]
    ld h, a
    call Call_000_11ba
    push de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    push hl
    pop bc
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    push hl
    pop de
    push bc
    pop hl
    call Call_03c_4e74
    pop hl
    pop de
    pop bc
    ret


Call_03c_4f97:
    push bc
    push de
    push hl
    push af
    push bc
    ld hl, $d418
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d598
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $d41c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d59a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, [$d329]
    ld [$d59c], a
    rst $18

    db $52, $10

    pop bc
    pop af
    ld [$d329], a
    ld hl, $d418
    ld a, c
    ld [hl+], a
    ld [hl], b
    xor a
    ld [$d41c], a
    rst $18

    db $3e, $10

    ld a, $fa
    push af

jr_03c_4fd2:
    pop af
    dec a
    cp $00
    jr z, jr_03c_4ff9

    push af
    rst $18

    db $40, $10

    ld hl, $d37a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0200
    call Call_000_08ac
    bit 7, h
    jr z, jr_03c_4ff8

    rst $18

    db $1a, $08

    cp $00
    jr z, jr_03c_4fd2

    pop af
    ld a, $01
    jr jr_03c_4ffa

jr_03c_4ff8:
    pop af

jr_03c_4ff9:
    xor a

jr_03c_4ffa:
    push af
    rst $18

    db $54, $10

    ld a, [$d59c]
    ld [$d329], a
    ld hl, $d59a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d41c
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld hl, $d598
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d418
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop af
    pop hl
    pop de
    pop bc
    ret


Call_03c_5021:
    push bc
    push de
    push hl
    call Call_03c_4404
    cp $01
    jr z, jr_03c_502f

    ld a, $3c
    jr jr_03c_5057

jr_03c_502f:
    push de
    pop hl
    ld de, $0060
    add hl, de
    push hl
    pop de
    push bc
    pop hl
    push de
    pop bc
    ld d, $00
    ld e, $3c
    xor a
    call Call_000_0ddb
    push hl
    pop de
    push bc
    pop hl
    xor a
    call Call_000_0ddb
    ld a, l
    sub $3d
    bit 7, a
    jr nz, jr_03c_5056

    ld a, $3c
    jr jr_03c_5057

jr_03c_5056:
    ld a, l

jr_03c_5057:
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    push de
    ld a, h
    cp $3c
    jr z, jr_03c_507e

    push hl
    pop bc
    ld l, h
    xor a
    ld h, a
    ld d, a
    ld e, $0a
    call Call_000_09ae
    ld a, b
    add l
    ld b, a
    sub $3c
    bit 7, a
    jr nz, jr_03c_507a

    ld a, $3c
    ld b, a

jr_03c_507a:
    ld h, b
    ld l, c
    jr jr_03c_507e

jr_03c_507e:
    pop de
    pop bc
    pop af
    ret


    push bc
    push de
    ld d, a
    ld a, [$d4cd]
    cp $01
    jr z, jr_03c_50aa

    cp $02
    jr z, jr_03c_50a0

    cp $0c
    jr z, jr_03c_5096

    jr jr_03c_50cf

jr_03c_5096:
    ld a, d
    call Call_03c_4528
    push hl
    ld de, $0008
    jr jr_03c_50b2

jr_03c_50a0:
    ld a, d
    call Call_03c_4528
    push hl
    ld de, $0009
    jr jr_03c_50b2

jr_03c_50aa:
    ld a, d
    call Call_03c_4528
    push hl
    ld de, $000a

jr_03c_50b2:
    call Call_000_09ae
    push hl
    pop de
    pop hl
    add hl, de
    push hl
    pop bc
    call Call_03c_45f9
    push af
    push bc
    call Call_03c_453f
    pop af
    pop de
    push hl
    pop bc
    ld l, a
    call Call_03c_5021
    ld h, a
    ld a, l
    jr jr_03c_50d0

jr_03c_50cf:
    ld a, d

jr_03c_50d0:
    pop de
    pop bc
    ret


Call_03c_50d3:
    push bc
    push de
    push hl
    ld a, [$c834]
    cp $02
    jr z, jr_03c_50e6

    ld a, $3e
    call Call_03c_4256
    ld a, [hl]
    ld [$d526], a

jr_03c_50e6:
    xor a
    ld [$d526], a
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_4381
    ld [$d539], a
    call Call_03c_51f6
    ld a, b
    ld [$d53a], a
    ld a, c
    ld [$d53b], a
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_43d5
    ld b, a
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_43de
    ld c, a
    ld a, b
    add c
    ld [$d525], a
    ld a, [$d525]
    ld hl, $d526
    ld b, [hl]
    sub b
    jr nz, jr_03c_5127

    jp Jump_03c_51ef


jr_03c_5127:
    ld [hl], a
    xor a
    ld hl, $d527

jr_03c_512c:
    cp $12
    jr z, jr_03c_5136

    ld [hl], $00
    inc a
    inc hl
    jr jr_03c_512c

jr_03c_5136:
    ld hl, $d53a
    ld b, [hl]
    ld c, $00
    ld hl, $d527

jr_03c_513f:
    ld a, c
    cp $09
    jr z, jr_03c_515c

    ld a, b
    cp $00
    jr z, jr_03c_515c

    ld a, b
    bit 7, a
    jr nz, jr_03c_5154

    ld a, [hl]
    inc a
    ld [hl], a
    dec b
    jr jr_03c_5158

jr_03c_5154:
    ld a, [hl]
    dec a
    ld [hl], a
    inc b

jr_03c_5158:
    inc hl
    inc c
    jr jr_03c_513f

jr_03c_515c:
    ld hl, $d53b
    ld b, [hl]
    ld hl, $d527
    push de
    ld de, $0009
    add hl, de
    pop de

jr_03c_5169:
    ld a, c
    cp $12
    jr z, jr_03c_5186

    ld a, b
    cp $00
    jr z, jr_03c_5186

    ld a, b
    bit 7, a
    jr nz, jr_03c_517e

    ld a, [hl]
    inc a
    ld [hl], a
    dec b
    jr jr_03c_5182

jr_03c_517e:
    ld a, [hl]
    dec a
    ld [hl], a
    inc b

jr_03c_5182:
    inc hl
    inc c
    jr jr_03c_5169

jr_03c_5186:
    ld a, [$c837]
    dec a
    ld c, a
    ld hl, $d527
    xor a

jr_03c_518f:
    cp c
    jr z, jr_03c_5196

    inc hl
    inc a
    jr jr_03c_518f

jr_03c_5196:
    push af
    xor a
    ld b, a
    pop af

jr_03c_519a:
    cp $12
    jr z, jr_03c_51a7

    push af
    ld a, [hl]
    add b
    ld b, a
    pop af
    inc a
    inc hl
    jr jr_03c_519a

jr_03c_51a7:
    push hl
    ld hl, $d526
    ld a, [hl]
    sub b
    ld b, a
    ld [hl], b
    pop hl

jr_03c_51b0:
    ld a, [$c837]
    dec a
    ld c, a
    ld hl, $d527
    xor a

jr_03c_51b9:
    cp c
    jr z, jr_03c_51c0

    inc hl
    inc a
    jr jr_03c_51b9

jr_03c_51c0:
    ld a, b
    cp $00
    jr z, jr_03c_51dd

    ld a, c
    cp $12
    jr z, jr_03c_51b0

    ld a, b
    bit 7, a
    jr nz, jr_03c_51d5

    ld a, [hl]
    inc a
    ld [hl], a
    dec b
    jr jr_03c_51d9

jr_03c_51d5:
    ld a, [hl]
    dec a
    ld [hl], a
    inc b

jr_03c_51d9:
    inc hl
    inc c
    jr jr_03c_51c0

jr_03c_51dd:
    ld a, [$c837]
    dec a
    ld hl, $d527

jr_03c_51e4:
    cp $00
    jr z, jr_03c_51ec

    inc hl
    dec a
    jr jr_03c_51e4

jr_03c_51ec:
    ld a, [hl]
    jr jr_03c_51f2

Jump_03c_51ef:
    xor a
    jr jr_03c_51f2

jr_03c_51f2:
    pop hl
    pop de
    pop bc
    ret


Call_03c_51f6:
    push af
    push de
    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_4381
    ld d, a
    ld a, [hl]
    call Call_03c_43d5
    ld b, a
    ld a, [hl]
    call Call_03c_43de
    ld c, a
    ld a, b
    add c
    ld e, a
    ld b, $00
    ld c, $00
    bit 7, e
    jr z, jr_03c_521a

    xor a
    sub e

jr_03c_521a:
    bit 0, a
    jr z, jr_03c_522a

    dec a
    push af
    ld a, d
    cp $02
    jr z, jr_03c_5228

    inc b
    jr jr_03c_5229

jr_03c_5228:
    inc c

jr_03c_5229:
    pop af

jr_03c_522a:
    srl a
    push af
    add b
    ld b, a
    pop af
    add c
    ld c, a
    ld a, d
    cp $00
    jr z, jr_03c_5245

    cp $02
    jr z, jr_03c_5241

    dec b
    dec b
    inc c
    inc c
    jr jr_03c_5245

jr_03c_5241:
    inc b
    inc b
    dec c
    dec c

jr_03c_5245:
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_43d5
    bit 7, a
    jr z, jr_03c_5258

    xor a
    sub b
    ld b, a
    xor a
    sub c
    ld c, a

jr_03c_5258:
    pop hl
    pop de
    pop af
    ret


Call_03c_525c:
    push bc
    push de
    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_4397
    ld b, a
    ld a, [$d325]
    ld c, a
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    ld d, a
    ld a, c
    cp $03
    jp z, Jump_03c_52fb

    ld a, c
    cp $05
    jr nz, jr_03c_5287

    ld a, d
    cp $00
    jr nz, jr_03c_5287

    xor a
    jr jr_03c_5303

jr_03c_5287:
    call Call_03c_4a11
    cp $01
    jr z, jr_03c_5295

    ld a, [$d549]
    bit 7, a
    jr nz, jr_03c_52fb

jr_03c_5295:
    push af
    ld a, c
    sub $02
    ld c, a
    pop af
    add c
    sub d
    bit 7, a
    jr nz, jr_03c_52fb

    ld a, b
    cp $00
    jr nz, jr_03c_52cb

    ld a, d
    cp $00
    jr nz, jr_03c_52af

    ld e, $01
    jr jr_03c_52f0

jr_03c_52af:
    cp $01
    jr nz, jr_03c_52c9

    ld a, c
    cp $03
    jr nz, jr_03c_52c9

    ld a, $02
    call Call_03c_465f
    cp $00
    jr nz, jr_03c_52c5

    ld e, $02
    jr jr_03c_52f0

jr_03c_52c5:
    ld e, $03
    jr jr_03c_52f0

jr_03c_52c9:
    jr jr_03c_52fb

jr_03c_52cb:
    ld a, d
    cp $00
    jr nz, jr_03c_52d4

    ld e, $00
    jr jr_03c_52f0

jr_03c_52d4:
    cp $01
    jr nz, jr_03c_52ee

    ld a, c
    cp $03
    jr nz, jr_03c_52ee

    ld a, $01
    call Call_03c_465f
    cp $00
    jr nz, jr_03c_52ea

    ld e, $01
    jr jr_03c_52f0

jr_03c_52ea:
    ld e, $03
    jr jr_03c_52f0

jr_03c_52ee:
    jr jr_03c_52fb

jr_03c_52f0:
    ld a, e
    call Call_03c_465f
    cp $00
    jr nz, jr_03c_52fb

    ld a, e
    jr jr_03c_5303

Jump_03c_52fb:
jr_03c_52fb:
    rst $18

    db $04, $10

    push hl
    pop bc
    call Call_03c_45f9

jr_03c_5303:
    pop hl
    pop de
    pop bc
    ret


Call_03c_5307:
    push bc
    push de
    push hl
    ld e, a
    ld a, [$d4cd]
    cp $02
    jr z, jr_03c_5345

    ld a, [$d549]
    ld b, a
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    inc a
    ld c, a
    ld a, [$d325]
    sub $02
    ld d, a
    add b
    bit 7, a
    jr z, jr_03c_5345

    cp c
    jr nz, jr_03c_5345

    ld e, a
    push af
    call Call_03c_453f
    push hl
    pop de
    rst $18
    inc b
    db $10
    push hl
    pop bc
    call Call_03c_4404
    cp $01
    jr nz, jr_03c_5348

    pop af
    call Call_03c_45f9
    jr jr_03c_5349

jr_03c_5345:
    ld a, e
    jr jr_03c_5349

jr_03c_5348:
    pop af

jr_03c_5349:
    pop hl
    pop de
    pop bc
    ret


    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

    db $02

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    rst $38
    rst $38

    db $fe

    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0001
    nop
    rst $38
    rst $38
    cp $fd
    cp $ff
    rst $38
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    ld bc, $0001
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $00
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    rst $38
    rst $38
    cp $ff
    rst $38
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0001
    nop
    rst $38
    cp $fd
    db $fd
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc bc
    inc bc
    ld [bc], a
    ld bc, $ff00
    cp $fd
    db $fd
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc bc
    inc bc
    ld [bc], a
    ld bc, $ff00
    rst $38
    cp $fe
    cp $ff
    rst $38
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    rst $38
    cp $fd
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff00
    cp $fc
    db $fc
    db $fc
    cp $ff
    nop
    ld bc, $0402
    inc b
    inc b
    ld [bc], a
    ld bc, $fe00
    db $fd
    db $fc
    db $fc
    db $fc
    db $fd
    cp $00
    ld [bc], a
    inc bc
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    nop
    rst $38
    rst $38
    cp $fe
    cp $ff
    rst $38
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    cp $fe
    db $fd
    db $fd
    db $fd
    cp $fe
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    cp $fd
    db $fc
    db $fc
    db $fc
    db $fd
    cp $00
    ld [bc], a
    inc bc
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    nop
    cp $fd
    db $fc
    db $fc
    db $fc
    db $fd
    cp $00
    ld [bc], a
    inc bc
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ei
    db $fd
    rst $38
    nop
    nop
    nop
    ld bc, $0503
    inc bc
    ld bc, $0000
    nop
    rst $38
    db $fd
    ei
    db $fd
    rst $38
    nop

    db $00

    ld bc, $0503
    rlca
    dec b
    inc bc
    ld bc, $0000
    rst $38
    db $fd
    or $f6
    ei
    db $fd
    nop
    inc bc
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec b
    inc bc
    nop
    db $fd
    ei
    or $f6
    ei
    db $fd
    rst $38
    nop
    ld bc, $0503
    ld a, [bc]
    dec b
    inc bc
    ld bc, $ff00
    db $fd
    ei
    db $fd
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    or $f9
    inc bc
    nop
    inc bc
    rlca
    ld a, [bc]
    rrca
    ld a, [bc]
    rlca
    inc bc
    nop
    db $fd
    ld sp, hl
    or $f6
    ld sp, hl
    ei
    inc bc
    nop
    inc bc
    dec b
    rlca
    ld a, [bc]
    rlca
    dec b
    inc bc
    nop
    db $fd
    ei
    ld sp, hl
    or $f9
    ei
    db $fd
    nop
    inc bc
    dec b
    rlca
    ld a, [bc]
    rlca
    dec b
    inc bc
    nop
    db $fd
    ei
    ld sp, hl
    or $fb
    db $fd
    nop
    nop
    nop
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec b
    nop
    nop
    nop
    db $fd
    ei
    or $fb
    db $fd
    nop
    nop
    nop
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec b
    nop
    nop
    nop
    db $fd
    ei
    jp hl


    db $ec
    pop af
    ld a, [$0600]
    ld a, [bc]
    rrca
    inc d
    rrca
    ld a, [bc]
    ld b, $00
    ld a, [$ecf1]
    rst $20
    db $ec
    pop af
    ld a, [$0600]
    ld a, [bc]
    rrca
    inc d
    rrca
    ld a, [bc]
    ld b, $00
    ld a, [$ecf1]
    or $fb
    db $fd
    nop
    nop
    nop
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec b
    nop
    nop
    nop
    db $fd
    ei
    or $fb
    db $fd
    nop
    nop
    nop
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec b
    nop
    nop
    nop
    db $fd
    ei
    db $ec
    rst $28
    pop af
    ld a, [$0600]
    ld a, [bc]
    rrca
    inc d
    rrca
    ld a, [bc]
    ld b, $00
    ld a, [$eff1]
    rst $20
    db $ec
    pop af
    ld a, [$0600]
    ld a, [bc]
    rrca
    inc d
    rrca
    ld a, [bc]
    ld b, $00
    ld a, [$ecf1]

Call_03c_555d:
    push af
    push de
    push hl
    ld hl, $d525
    ld [hl], a
    ld a, [$c815]
    sub $02
    bit 7, a
    jr nz, jr_03c_55b6

    call Call_03c_569a
    push bc
    ld a, [$c815]
    ld b, a
    ld hl, $d525
    ld a, [hl]
    call Call_03c_561c
    pop bc
    ld d, a
    bit 7, a
    jr z, jr_03c_5584

    xor a
    sub d

jr_03c_5584:
    ld hl, $01c7
    call Call_000_08b9
    add hl, hl
    push hl
    push de
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    ld hl, $534d
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    push de
    ld e, a
    ld d, $00
    call Call_000_09ae
    pop de
    ld a, d
    push hl
    pop de
    push bc
    pop hl
    bit 7, a
    jr nz, jr_03c_55b1

    add hl, de
    jr jr_03c_55b4

jr_03c_55b1:
    call Call_000_08ac

jr_03c_55b4:
    push hl
    pop bc

jr_03c_55b6:
    pop hl
    pop de
    pop af
    ret


Call_03c_55ba:
    push bc
    push de
    push hl
    ld c, a
    sub $03
    bit 7, a
    jr z, jr_03c_55c9

    ld hl, $545d
    jr jr_03c_55e4

jr_03c_55c9:
    ld a, c
    sub $07
    bit 7, a
    jr z, jr_03c_55d5

    ld hl, $549d
    jr jr_03c_55e4

jr_03c_55d5:
    ld a, c
    sub $0b
    bit 7, a
    jr z, jr_03c_55e1

    ld hl, $54dd
    jr jr_03c_55e4

jr_03c_55e1:
    ld hl, $551d

jr_03c_55e4:
    ld a, b
    sub $0a
    bit 7, a
    jr nz, jr_03c_560a

    push de
    ld d, $00
    ld e, $10
    add hl, de
    pop de
    ld a, b
    sub $0e
    jr nz, jr_03c_560a

    push de
    ld d, $00
    ld e, $10
    add hl, de
    pop de
    ld a, b
    sub $11
    jr nz, jr_03c_560a

    push de
    ld d, $00
    ld e, $10
    add hl, de
    pop de

jr_03c_560a:
    ld a, d
    srl a
    srl a
    srl a
    srl a
    ld e, a
    xor a
    ld d, a
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    pop bc
    ret


Call_03c_561c:
    push bc
    push de
    push hl
    ld c, a
    sub $03
    bit 7, a
    jr z, jr_03c_562b

    ld hl, $535d
    jr jr_03c_5646

jr_03c_562b:
    ld a, c
    sub $07
    bit 7, a
    jr z, jr_03c_5637

    ld hl, $539d
    jr jr_03c_5646

jr_03c_5637:
    ld a, c
    sub $0b
    bit 7, a
    jr z, jr_03c_5643

    ld hl, $53dd
    jr jr_03c_5646

jr_03c_5643:
    ld hl, $541d

jr_03c_5646:
    ld a, b
    sub $0a
    bit 7, a
    jr nz, jr_03c_566c

    push de
    ld d, $00
    ld e, $10
    add hl, de
    pop de
    ld a, b
    sub $0e
    jr nz, jr_03c_566c

    push de
    ld d, $00
    ld e, $10
    add hl, de
    pop de
    ld a, b
    sub $11
    jr nz, jr_03c_566c

    push de
    ld d, $00
    ld e, $10
    add hl, de
    pop de

jr_03c_566c:
    ld a, d
    srl a
    srl a
    srl a
    srl a
    ld e, a
    xor a
    ld d, a
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    pop bc
    ret


    push bc
    push de
    push hl
    sub b
    bit 7, a
    jr nz, jr_03c_5690

    ld d, a
    sub $0c
    bit 7, a
    jr z, jr_03c_5694

    ld a, d
    jr jr_03c_5696

jr_03c_5690:
    ld a, $00
    jr jr_03c_5696

jr_03c_5694:
    ld a, $0c

jr_03c_5696:
    pop hl
    pop de
    pop bc
    ret


Call_03c_569a:
    push af
    push bc
    push hl
    push bc
    pop de
    ld a, d
    and $0f
    sub $08
    bit 7, a
    jr nz, jr_03c_56b0

    ld a, d
    and $f0
    add $10
    ld d, a
    jr jr_03c_56b4

jr_03c_56b0:
    ld a, d
    and $f0
    ld d, a

jr_03c_56b4:
    xor a
    ld e, a
    ld h, a
    ld l, a
    call Call_000_08ac
    push hl
    pop de
    ld a, [$c816]
    ld h, a
    xor a
    ld l, a
    add hl, de
    push hl
    pop de
    pop hl
    pop bc
    pop af
    ret


Call_03c_56ca:
    ld [$d525], a
    ld a, b
    ld [$d526], a
    ld a, c
    ld [$d527], a
    ld a, d
    ld [$d528], a
    ld a, e
    ld [$d529], a
    ld a, h
    ld [$d52a], a
    ld a, l
    ld [$d52b], a
    ld a, [$c815]
    cp $00
    jr z, jr_03c_5735

    call Call_03c_569a
    ld a, [$c815]
    ld b, a
    ld a, [$d525]
    call Call_03c_55ba
    cp $00
    jr z, jr_03c_5735

    ld b, a
    bit 7, a
    jr z, jr_03c_5704

    xor a
    sub b

jr_03c_5704:
    ld hl, $0020
    call Call_000_08b9
    push hl
    pop de
    ld a, [$d52a]
    ld h, a
    ld a, [$d525]
    call Call_03c_4528
    bit 7, b
    jr nz, jr_03c_571d

    add hl, de
    jr jr_03c_5720

jr_03c_571d:
    call Call_000_08ac

jr_03c_5720:
    push hl
    pop bc
    call Call_03c_45f9
    ld [$d525], a
    push bc
    call Call_03c_453f
    push hl
    pop bc
    pop de
    call Call_03c_5021
    ld [$d52a], a

jr_03c_5735:
    ld a, [$d526]
    ld b, a
    ld a, [$d527]
    ld c, a
    ld a, [$d528]
    ld d, a
    ld a, [$d529]
    ld e, a
    ld a, [$d52a]
    ld h, a
    ld a, [$d52b]
    ld l, a
    ld a, [$d525]
    ret


Call_03c_5751:
    ld a, $14
    call Call_03c_4256
    ld a, [hl]
    cp $07
    jp z, Jump_03c_59c4

    call Call_03c_6530
    push de
    ld a, d
    cp $00
    jr z, jr_03c_5775

    xor a
    push af
    call Call_03c_453f
    push hl
    ld de, $199a
    call Call_000_0cb5
    pop de
    add hl, de
    jr jr_03c_5783

jr_03c_5775:
    call Call_03c_525c
    ld hl, $d608
    ld [hl], a
    call Call_03c_5307
    push af
    call Call_03c_453f

jr_03c_5783:
    push hl
    push hl
    pop bc
    call Call_03c_4693

Jump_03c_5789:
    ld a, [$d545]
    ld c, a
    ld a, [$d546]
    ld b, a
    ld a, [$d547]
    ld e, a
    ld a, [$d548]
    ld d, a
    call Call_03c_4466
    push hl
    pop de
    pop bc
    call Call_03c_5021
    ld h, a
    ld l, $00
    push hl
    call Call_03c_44fc
    pop hl
    pop af
    pop de
    ld [$d54a], a
    ld a, c
    ld [$d54c], a
    ld a, b
    ld [$d54d], a
    ld a, e
    ld [$d54e], a
    ld a, d
    ld [$d54f], a
    ld a, l
    ld [$d550], a
    ld a, h
    ld [$d551], a
    call Call_03c_63f8
    ld a, e
    ld [$d54e], a
    ld a, d
    ld [$d54f], a
    ld a, d
    cp $00
    jr z, jr_03c_57e9

    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld h, $3c
    ld a, l
    ld [$d550], a
    ld a, h
    ld [$d551], a

jr_03c_57e9:
    ld a, [$d54a]
    call Call_03c_555d
    ld a, c
    ld [$d54c], a
    ld a, b
    ld [$d54d], a
    ld a, [$d54c]
    ld c, a
    ld a, [$d54d]
    ld b, a
    ld a, [$d54e]
    ld e, a
    ld a, [$d54f]
    ld d, a
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld a, [$d54a]
    call Call_03c_56ca
    ld [$d54a], a
    ld a, c
    ld [$d54c], a
    ld a, b
    ld [$d54d], a
    ld a, e
    ld [$d54e], a
    ld a, d
    ld [$d54f], a
    ld a, l
    ld [$d550], a
    ld a, h
    ld [$d551], a
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld a, [$d54a]
    call Call_03c_4f97
    cp $00
    jr nz, jr_03c_5865

    ld a, [$d320]
    cp $17
    jp z, Jump_03c_58fe

    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld a, [$d54c]
    ld c, a
    ld a, [$d54d]
    ld b, a
    ld a, [$d54a]
    call Call_03c_4f30
    cp $00
    jp z, Jump_03c_58fe

jr_03c_5865:
    ld a, [$d54a]
    ld [$d54b], a

jr_03c_586b:
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld a, [$d54c]
    ld e, a
    ld a, [$d54d]
    ld d, a
    ld a, [$d54a]
    call Call_03c_4c54
    cp $00
    jr z, jr_03c_58b2

jr_03c_5885:
    ld a, [$d54a]
    inc a
    cp $0d
    jr z, jr_03c_58a2

    ld [$d54a], a
    push af
    ld a, [$d54b]
    ld b, a
    pop af
    sub b
    sub $03
    jr nz, jr_03c_586b

    ld a, $0c
    ld [$d54a], a
    jr jr_03c_586b

jr_03c_58a2:
    ld a, [$d54b]
    ld [$d54a], a
    jr jr_03c_58fe

    ld a, [$d54c]
    ld e, a
    ld a, [$d54d]
    ld d, a

jr_03c_58b2:
    push de
    pop bc
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    cp $00
    jr z, jr_03c_58d9

    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld a, [$d54a]
    call Call_03c_4d0a
    ld a, h
    cp $ff
    jr z, jr_03c_5885

    sub $0a
    bit 7, a
    jr nz, jr_03c_5885

    jr jr_03c_58e3

jr_03c_58d9:
    ld a, c
    ld [$d54c], a
    ld a, b
    ld [$d54d], a
    jr jr_03c_58fe

jr_03c_58e3:
    push af
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    pop af
    ld h, a
    ld a, l
    ld [$d550], a
    ld a, h
    ld [$d551], a
    ld a, c
    ld [$d54c], a
    ld a, b
    ld [$d54d], a

Jump_03c_58fe:
jr_03c_58fe:
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    cp $00
    jr nz, jr_03c_5957

    ld hl, $d608
    ld a, [hl]
    cp $00
    jr z, jr_03c_591a

    cp $01
    jr z, jr_03c_591a

    cp $02
    jr z, jr_03c_591a

    jr jr_03c_5957

jr_03c_591a:
    ld a, [$d4cd]
    cp $00
    jr z, jr_03c_5923

    jr jr_03c_5957

jr_03c_5923:
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld a, [$d54a]
    call Call_03c_4528
    push hl
    pop de
    ld a, [$d608]
    call Call_03c_453f
    push hl
    pop bc
    call Call_03c_5021
    push af
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    pop af
    ld h, a
    ld a, l
    ld [$d550], a
    ld a, h
    ld [$d551], a
    ld a, [$d608]
    ld [$d54a], a

jr_03c_5957:
    ld a, $14
    call Call_03c_4256
    ld a, [hl]
    cp $07
    jr z, jr_03c_598e

    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    call Call_03c_6213
    ld a, [$d54e]
    ld e, a
    ld a, [$d54f]
    ld d, a
    ld a, [$d54a]
    cp $00
    jr z, jr_03c_5986

    cp $01
    jr z, jr_03c_5986

    cp $02
    jr z, jr_03c_5986

    call Call_03c_62ca

jr_03c_5986:
    ld a, l
    ld [$d550], a
    ld a, h
    ld [$d551], a

jr_03c_598e:
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld a, h
    sub $0a
    bit 7, a
    jr z, jr_03c_59a8

    ld a, $06
    ld h, a
    ld a, l
    ld [$d550], a
    ld a, h
    ld [$d551], a

jr_03c_59a8:
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld a, [$d54e]
    ld e, a
    ld a, [$d54f]
    ld d, a
    ld a, [$d54c]
    ld c, a
    ld a, [$d54d]
    ld b, a
    ld a, [$d54a]
    ret


Jump_03c_59c4:
    ld de, $0000
    push de
    ld a, $0b
    push af
    call Call_03c_453f
    push hl
    push hl
    pop bc
    call Call_03c_4a51
    ld a, $ee
    ld [$d549], a
    jp Jump_03c_5789


Call_03c_59dc:
    ld a, [$d43d]
    ld [$d545], a
    ld a, [$d43e]
    ld [$d546], a
    ld a, [$d43f]
    ld [$d547], a
    ld a, [$d440]
    ld [$d548], a
    call Call_03c_44fc
    call Call_03c_63f8
    push de
    ld a, $10
    call Call_03c_4256
    cp $07
    jr z, jr_03c_5a6d

    ld a, [$d549]
    ld b, a
    ld a, [$d325]
    add b
    dec a
    dec a
    ld b, a
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    inc a
    ld c, a
    ld a, b
    sub c
    bit 7, a
    jr nz, jr_03c_5a6d

    ld a, $02
    call Call_03c_63c7
    ld l, a
    bit 7, l
    jr z, jr_03c_5a2b

    ld h, $ff
    jr jr_03c_5a2d

jr_03c_5a2b:
    ld h, $00

jr_03c_5a2d:
    ld a, $20
    call Call_000_08b9
    push hl
    pop de
    ld a, [$d545]
    ld l, a
    ld a, [$d546]
    ld h, a
    add hl, de
    ld a, l
    ld [$d545], a
    ld a, h
    ld [$d546], a
    ld a, $02
    call Call_03c_63c7
    ld l, a
    bit 7, l
    jr z, jr_03c_5a53

    ld h, $ff
    jr jr_03c_5a55

jr_03c_5a53:
    ld h, $00

jr_03c_5a55:
    ld a, $20
    call Call_000_08b9
    push hl
    pop de
    ld a, [$d547]
    ld l, a
    ld a, [$d548]
    ld h, a
    add hl, de
    ld a, l
    ld [$d547], a
    ld a, h
    ld [$d548], a

jr_03c_5a6d:
    call Call_03c_44fc
    push bc
    ld a, [$d545]
    ld c, a
    ld a, [$d546]
    ld b, a
    ld a, [$d547]
    ld e, a
    ld a, [$d548]
    ld d, a
    call Call_03c_4466
    pop bc
    push de
    push hl
    ld a, [$d549]
    ld d, a
    ld a, [$d325]
    add d
    dec a
    dec a
    ld d, a
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    inc a
    ld e, a
    ld a, d
    sub e
    bit 7, a
    jr nz, jr_03c_5aa2

    xor a
    ld c, a

jr_03c_5aa2:
    call Call_03c_5ce4
    ld [$d54a], a
    pop hl
    pop de
    cp $0d
    jp nz, Jump_03c_5b33

    push hl
    ld de, $fc40
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_03c_5ac5

    ld h, $3c
    ld l, $00
    pop de
    ld d, $02
    ld a, $0b
    jp Jump_03c_5b7a


jr_03c_5ac5:
    push hl
    ld de, $fec0
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_03c_5afb

    add hl, hl
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
    inc l
    res 0, l
    ld a, l
    cp $00
    jr nz, jr_03c_5aee

    ld l, $04

jr_03c_5aee:
    ld h, l
    ld l, $00
    pop de
    ld d, $01
    ld e, $ff
    ld a, $0d
    jp Jump_03c_5b7a


jr_03c_5afb:
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, hl
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
    inc l
    res 0, l
    ld a, l
    cp $00
    jr nz, jr_03c_5b1e

    ld l, $04

jr_03c_5b1e:
    ld a, l
    sub $08
    bit 7, a
    jr z, jr_03c_5b27

    ld l, $08

jr_03c_5b27:
    ld h, l
    ld l, $00
    pop de
    ld d, $00
    ld e, $ff
    ld a, $0d
    jr jr_03c_5b7a

Jump_03c_5b33:
    push hl
    ld de, $fc40
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_03c_5b5c

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
    inc l
    res 0, l
    ld h, l
    ld l, $00
    pop de
    ld d, $02
    jr jr_03c_5b7a

jr_03c_5b5c:
    add hl, hl
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
    inc l
    res 0, l
    ld h, l
    ld l, $00
    pop de
    ld d, $03

Jump_03c_5b7a:
jr_03c_5b7a:
    ld a, c
    ld [$d54c], a
    ld a, b
    ld [$d54d], a
    ld a, e
    ld [$d54e], a
    ld a, d
    ld [$d54f], a
    ld a, l
    ld [$d550], a
    ld a, h
    ld [$d551], a
    ld a, [$d4cd]
    cp $02
    jr z, jr_03c_5c08

    cp $0c
    jr z, jr_03c_5c08

    cp $01
    jr z, jr_03c_5c08

    cp $05
    jr z, jr_03c_5c08

    cp $09
    jr z, jr_03c_5c08

jr_03c_5ba9:
    call Call_03c_6213
    ld a, [$d550]
    ld c, a
    ld a, [$d551]
    ld b, a
    ld b, h
    ld a, c
    ld [$d550], a
    ld a, b
    ld [$d551], a
    ld a, [$d54c]
    ld c, a
    ld a, [$d54d]
    ld b, a
    ld a, [$d54e]
    ld e, a
    ld a, [$d54f]
    ld d, a
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld a, [$d54a]
    call Call_03c_62ca
    ld a, [$d550]
    ld c, a
    ld a, [$d551]
    ld b, a
    ld c, l
    ld a, c
    ld [$d550], a
    ld a, b
    ld [$d551], a
    ld a, [$d54c]
    ld c, a
    ld a, [$d54d]
    ld b, a
    ld a, [$d54e]
    ld e, a
    ld a, [$d54f]
    ld d, a
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld a, [$d54a]
    ret


jr_03c_5c08:
    ld a, h
    sra a
    sra a
    add h
    ld h, a
    sub $3d
    bit 7, a
    jr nz, jr_03c_5c18

    ld a, $3c
    ld h, a

jr_03c_5c18:
    ld a, l
    ld [$d550], a
    ld a, h
    ld [$d551], a
    jr jr_03c_5ba9

Call_03c_5c22:
    push bc
    push de
    push hl
    ld a, $ff
    ld hl, $d592
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    rst $18
    ld [$df10], sp
    inc b
    db $10
    ld a, c
    ld [$d525], a
    ld a, b
    ld [$d526], a
    ld a, l
    ld [$d527], a
    ld a, h
    ld [$d528], a
    xor a
    ld h, a
    ld l, a
    ld a, l
    ld [$d529], a
    ld a, h
    ld [$d52a], a

Jump_03c_5c4f:
    ld a, [$d529]
    ld l, a
    ld a, [$d52a]
    ld h, a
    push hl
    ld a, [$d527]
    ld e, a
    ld a, [$d528]
    ld d, a
    call Call_000_08ac
    bit 7, h
    pop hl
    jr z, jr_03c_5cdf

    ld a, [$d525]
    ld c, a
    ld a, [$d526]
    ld b, a
    call Call_000_11ba
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    add hl, bc
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    push hl
    pop de
    pop hl
    push hl
    push de
    push bc
    call Call_03c_4564
    pop bc
    pop de
    pop hl
    cp $00
    jr z, jr_03c_5cc4

    cp $06
    jr z, jr_03c_5ca2

    cp $0a
    jr z, jr_03c_5ca2

    cp $09
    jr z, jr_03c_5ca2

    jr jr_03c_5cdb

jr_03c_5ca2:
    ld a, [$d592]
    ld c, a
    ld a, [$d593]
    ld b, a
    ld a, b
    cp $ff
    jr nz, jr_03c_5cc4

    ld a, c
    cp $ff
    jr nz, jr_03c_5cc4

    ld a, l
    ld [$d592], a
    ld a, h
    ld [$d593], a
    ld a, e
    ld [$d594], a
    ld a, d
    ld [$d595], a

jr_03c_5cc4:
    ld a, [$d529]
    ld l, a
    ld a, [$d52a]
    ld h, a
    ld de, $0010
    add hl, de
    ld a, l
    ld [$d529], a
    ld a, h
    ld [$d52a], a
    jp Jump_03c_5c4f


jr_03c_5cdb:
    ld a, $01
    jr jr_03c_5ce0

jr_03c_5cdf:
    xor a

jr_03c_5ce0:
    pop hl
    pop de
    pop bc
    ret


Call_03c_5ce4:
    push bc
    push de
    push hl
    rst $18

    db $34, $10

    cp $02
    jr nz, jr_03c_5cf3

    ld a, $0c
    jp Jump_03c_5d5c


jr_03c_5cf3:
    cp $00
    jr z, jr_03c_5cfd

    cp $0a
    jr z, jr_03c_5cfd

    jr jr_03c_5d56

jr_03c_5cfd:
    call Call_03c_5c22
    cp $00
    jr nz, jr_03c_5d56

    ld a, [$d592]
    ld c, a
    ld a, [$d593]
    ld b, a
    ld a, [$d594]
    ld e, a
    ld a, [$d595]
    ld d, a
    call Call_03c_4466
    ld de, $0020
    call Call_000_08ac
    bit 7, h
    jr nz, jr_03c_5d5a

    ld a, h
    cp $00
    jr nz, jr_03c_5d2d

    ld a, l
    cp $00
    jr nz, jr_03c_5d2d

    jr jr_03c_5d5a

jr_03c_5d2d:
    ld a, [$d43d]
    ld c, a
    ld a, [$d43e]
    ld b, a
    ld a, [$d43f]
    ld e, a
    ld a, [$d440]
    ld d, a
    call Call_03c_4466
    ld de, $0020
    call Call_000_09ae
    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_438a
    pop hl
    call Call_03c_5d60
    jr jr_03c_5d5c

jr_03c_5d56:
    ld a, $0b
    jr jr_03c_5d5c

jr_03c_5d5a:
    ld a, $0d

Jump_03c_5d5c:
jr_03c_5d5c:
    pop hl
    pop de
    pop bc
    ret


Call_03c_5d60:
    push bc
    push de
    push hl
    push hl
    pop bc
    ld hl, $4344

jr_03c_5d68:
    cp $00
    jr z, jr_03c_5d74

    ld e, $08
    ld d, $00
    add hl, de
    dec a
    jr jr_03c_5d68

jr_03c_5d74:
    xor a

jr_03c_5d75:
    cp $04
    jr z, jr_03c_5d97

    push af
    push hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_03c_4404
    cp $02
    jr nz, jr_03c_5d91

    pop af
    ld hl, $435c
    ld e, a
    xor a
    ld d, a
    add hl, de
    ld a, [hl]
    jr jr_03c_5d99

jr_03c_5d91:
    pop af
    inc a
    inc hl
    inc hl
    jr jr_03c_5d75

jr_03c_5d97:
    ld a, $0b

jr_03c_5d99:
    pop hl
    pop de
    pop bc
    ret


    nop
    nop
    nop
    rst $38
    db $fd
    ei

    db $fe

    ei
    rst $30
    db $fd
    ld hl, sp-$0d
    db $fc
    push af
    pop af
    db $fd
    ld hl, sp-$0d
    cp $fb
    rst $30
    rst $38
    db $fd
    ei
    nop
    nop
    nop
    ld bc, $0503
    ld [bc], a
    dec b
    add hl, bc
    inc bc
    ld [$040d], sp
    dec bc
    rrca
    inc bc
    ld [$020d], sp
    dec b
    add hl, bc
    ld bc, $0503

Call_03c_5dcd:
    ld a, [$d43d]
    ld [$d545], a
    ld a, [$d43e]
    ld [$d546], a
    ld a, [$d43f]
    ld [$d547], a
    ld a, [$d440]
    ld [$d548], a
    rst $18

    db $04, $10

    push hl
    pop de
    ld bc, $0040
    call Call_03c_4404
    cp $01
    jr z, jr_03c_5e68

    ld a, [$d549]
    ld b, a
    ld a, [$d325]
    add b
    ld b, a
    ld a, $10
    call Call_03c_4256
    cp $07
    jr z, jr_03c_5e68

    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    inc a
    ld c, a
    ld a, b
    sub c
    bit 7, a
    jr nz, jr_03c_5e68

    cp $00
    jr z, jr_03c_5e68

    ld a, $02
    call Call_03c_63c7
    ld l, a
    bit 7, l
    jr z, jr_03c_5e26

    ld h, $ff
    jr jr_03c_5e28

jr_03c_5e26:
    ld h, $00

jr_03c_5e28:
    ld a, $10
    call Call_000_08b9
    push hl
    pop de
    ld a, [$d545]
    ld l, a
    ld a, [$d546]
    ld h, a
    add hl, de
    ld a, l
    ld [$d545], a
    ld a, h
    ld [$d546], a
    ld a, $02
    call Call_03c_63c7
    ld l, a
    bit 7, l
    jr z, jr_03c_5e4e

    ld h, $ff
    jr jr_03c_5e50

jr_03c_5e4e:
    ld h, $00

jr_03c_5e50:
    ld a, $10
    call Call_000_08b9
    push hl
    pop de
    ld a, [$d547]
    ld l, a
    ld a, [$d548]
    ld h, a
    add hl, de
    ld a, l
    ld [$d547], a
    ld a, h
    ld [$d548], a

jr_03c_5e68:
    call Call_03c_44fc
    push bc
    ld a, [$d545]
    ld c, a
    ld a, [$d546]
    ld b, a
    ld a, [$d547]
    ld e, a
    ld a, [$d548]
    ld d, a
    call Call_03c_4466
    pop bc
    push hl
    ld de, $fc40
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_03c_5e97

    ld h, $3c
    ld l, $00
    ld d, $01
    ld e, $ff
    ld a, $0d
    jp Jump_03c_5f18


jr_03c_5e97:
    push hl
    ld de, $fee0
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_03c_5ecc

    add hl, hl
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
    inc l
    res 0, l
    ld a, l
    cp $00
    jr nz, jr_03c_5ec0

    ld l, $04

jr_03c_5ec0:
    ld h, l
    ld l, $00
    ld d, $01
    ld e, $ff
    ld a, $0d
    jp Jump_03c_5f18


jr_03c_5ecc:
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, hl
    srl d
    rr e
    add hl, de
    srl d
    rr e
    srl d
    rr e
    add hl, de
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
    inc l
    res 0, l
    ld a, l
    cp $00
    jr nz, jr_03c_5efd

    ld l, $04

jr_03c_5efd:
    ld a, l
    sub $08
    bit 7, a
    jr z, jr_03c_5f06

    ld l, $08

jr_03c_5f06:
    ld a, l
    sub $3d
    bit 7, a
    jr nz, jr_03c_5f0f

    ld l, $3c

jr_03c_5f0f:
    ld h, l
    ld l, $00
    ld d, $00
    ld e, $ff
    ld a, $0d

Jump_03c_5f18:
    call Call_03c_5f1c
    ret


Call_03c_5f1c:
    ld [$d54a], a
    ld a, b
    ld [$d54c], a
    ld a, c
    ld [$d54d], a
    ld a, d
    ld [$d54e], a
    ld a, e
    ld [$d54f], a
    ld a, h
    ld [$d550], a
    ld a, l
    ld [$d551], a
    ld a, [$d54e]
    cp $00
    jr nz, jr_03c_5f43

    ld hl, $0140
    jr jr_03c_5f46

jr_03c_5f43:
    ld hl, $03c0

jr_03c_5f46:
    ld a, l
    ld [$d552], a
    ld a, h
    ld [$d553], a
    ld a, [$d550]
    ld b, a
    ld de, $003c
    call Call_000_09ae
    ld a, b
    call Call_000_08b9
    ld a, l
    ld [$d552], a
    ld a, h
    ld [$d553], a
    ld a, $00
    ld [$d558], a
    ld [$d559], a
    ld [$d55e], a
    ld a, [$d552]
    ld l, a
    ld a, [$d553]
    ld h, a
    push hl
    srl h
    rr l
    push hl
    pop de
    pop hl
    call Call_000_08ac
    ld a, l
    ld [$d55a], a
    ld a, h
    ld [$d55b], a
    xor a
    ld h, a
    ld l, a
    ld a, l
    ld [$d55c], a
    ld a, h
    ld [$d55d], a
    ld h, a
    ld l, a
    ld a, l
    ld [$d554], a
    ld a, h
    ld [$d555], a

Jump_03c_5f9f:
    ld a, [$d552]
    ld c, a
    ld a, [$d553]
    ld b, a
    ld a, [$d554]
    ld e, a
    ld a, [$d555]
    ld d, a
    call Call_03c_4404
    cp $01
    jp nz, Jump_03c_6099

    push de
    pop hl
    ld a, [$d54c]
    ld b, a
    ld a, [$d54d]
    ld c, a
    call Call_000_11ba
    push de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    push hl
    pop bc
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    add hl, de
    push hl
    pop de
    push bc
    pop hl
    call Call_03c_4564
    ld a, c
    ld d, b
    srl a
    srl a
    srl a
    srl a
    and $03
    ld e, a
    ld a, [$d54c]
    ld b, a
    ld a, [$d54d]
    ld c, a
    ld a, e
    cp $00
    jp z, Jump_03c_6079

    push de
    xor a
    ld e, a
    push de
    pop hl
    push bc
    pop de
    call Call_000_08ac
    ld a, l
    ld [$d556], a
    ld a, h
    ld [$d557], a
    bit 7, h
    jr z, jr_03c_6018

    push hl
    pop de
    xor a
    ld h, a
    ld l, a
    call Call_000_08ac

jr_03c_6018:
    push hl
    pop bc
    pop hl
    ld a, [$000c]
    and $01
    jr nz, jr_03c_6046

    ld de, $3000
    call Call_03c_4404
    cp $01
    jr z, jr_03c_6035

    ld a, [$d558]
    sub l
    ld [$d558], a
    jr jr_03c_6046

jr_03c_6035:
    ld de, $5000
    call Call_03c_4404
    cp $02
    jr z, jr_03c_6046

    ld a, [$d558]
    add l
    ld [$d558], a

jr_03c_6046:
    ld a, [$d55a]
    ld c, a
    ld a, [$d55b]
    ld b, a
    ld a, [$d554]
    ld e, a
    ld a, [$d555]
    ld d, a
    call Call_03c_4404
    cp $01
    jr z, jr_03c_6079

    ld a, [$d559]
    sub l
    bit 7, a
    jr z, jr_03c_6079

    ld a, l
    ld [$d559], a
    ld a, [$d556]
    ld e, a
    ld a, [$d557]
    ld d, a
    ld a, e
    ld [$d55c], a
    ld a, d
    ld [$d55d], a

Jump_03c_6079:
jr_03c_6079:
    ld a, [$d554]
    ld l, a
    ld a, [$d555]
    ld h, a
    ld de, $0020
    add hl, de
    ld a, l
    ld [$d554], a
    ld a, h
    ld [$d555], a
    ld a, [$d55e]
    inc a
    and $01
    ld [$d55e], a
    jp Jump_03c_5f9f


Jump_03c_6099:
    ld a, [$d559]
    cp $00
    jr z, jr_03c_6106

    ld a, [$d55c]
    ld l, a
    ld a, [$d55d]
    ld h, a
    ld a, h
    srl a
    srl a
    srl a
    srl a
    ld b, a
    ld a, h
    and $0f
    sub $08
    bit 7, a
    jr nz, jr_03c_60c0

    ld a, b
    inc a
    and $0f
    ld b, a

jr_03c_60c0:
    ld a, [$d559]
    dec a
    ld c, a
    ld hl, $5d9d

jr_03c_60c8:
    ld a, b
    cp $00
    jr z, jr_03c_60d3

    inc hl
    inc hl
    inc hl
    dec b
    jr jr_03c_60c8

jr_03c_60d3:
    ld a, c
    cp $00
    jr z, jr_03c_60dc

    inc hl
    dec c
    jr jr_03c_60d3

jr_03c_60dc:
    ld a, [hl]
    ld b, a
    bit 7, a
    jr z, jr_03c_60e4

    cpl
    inc a

jr_03c_60e4:
    ld hl, $00b6
    call Call_000_08b9
    push hl
    pop de
    ld a, [$d54c]
    ld h, a
    ld a, [$d54d]
    ld l, a
    bit 7, b
    jr nz, jr_03c_60fb

    add hl, de
    jr jr_03c_60fe

jr_03c_60fb:
    call Call_000_08ac

jr_03c_60fe:
    ld a, h
    ld [$d54c], a
    ld a, l
    ld [$d54d], a

jr_03c_6106:
    rst $18

    db $04, $10

    ld a, [$d558]
    cp $00
    jp z, Jump_03c_61cf

    bit 7, a
    jr z, jr_03c_6117

    cpl
    inc a

jr_03c_6117:
    push af
    sub $05
    bit 7, a
    jr nz, jr_03c_6123

    pop af
    ld a, $06
    jr jr_03c_6124

jr_03c_6123:
    pop af

jr_03c_6124:
    push af
    ld a, [$d558]
    ld b, a
    pop af
    bit 7, b
    jr z, jr_03c_6137

    srl a
    srl a
    cp $00
    jp z, Jump_03c_61cf

jr_03c_6137:
    push hl
    ld hl, $0010
    push af
    ld a, [$d558]
    ld b, a
    pop af
    call Call_000_08b9
    push hl
    pop de
    pop hl
    bit 7, b
    jr nz, jr_03c_614e

    add hl, de
    jr jr_03c_6151

jr_03c_614e:
    call Call_000_08ac

jr_03c_6151:
    ld de, $0010
    add hl, de
    push hl
    ld de, $fee0
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_03c_6182

    add hl, hl
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
    inc l
    res 0, l
    ld a, l
    cp $00
    jr nz, jr_03c_617e

    ld l, $04

jr_03c_617e:
    ld d, $01
    jr jr_03c_61c7

jr_03c_6182:
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, hl
    srl d
    rr e
    add hl, de
    srl d
    rr e
    srl d
    rr e
    add hl, de
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
    inc l
    res 0, l
    ld a, l
    cp $00
    jr nz, jr_03c_61b3

    ld l, $04

jr_03c_61b3:
    ld a, l
    sub $08
    bit 7, a
    jr z, jr_03c_61bc

    ld l, $08

jr_03c_61bc:
    ld a, l
    sub $3d
    bit 7, a
    jr nz, jr_03c_61c5

    ld l, $3c

jr_03c_61c5:
    ld d, $00

jr_03c_61c7:
    ld a, l
    ld [$d550], a
    ld a, d
    ld [$d54e], a

Jump_03c_61cf:
    jr jr_03c_61f7

    ld a, [$d549]
    ld b, a
    ld a, [$d325]
    add b
    ld b, a
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    inc a
    ld c, a
    ld a, b
    sub c
    bit 7, a
    jr nz, jr_03c_61f7

    ld a, [$d550]
    ld h, a
    call Call_03c_6213
    ld a, h
    cp $00
    jr z, jr_03c_61f7

    ld [$d550], a

jr_03c_61f7:
    ld a, [$d54c]
    ld b, a
    ld a, [$d54d]
    ld c, a
    ld a, [$d54e]
    ld d, a
    ld a, [$d54f]
    ld e, a
    ld a, [$d550]
    ld h, a
    ld a, [$d551]
    ld l, a
    ld a, [$d54a]
    ret


Call_03c_6213:
    push af
    push bc
    push de
    ld a, [$d549]
    ld b, a
    ld a, [$d325]
    add b
    ld b, a
    push hl
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    inc a
    ld c, a
    pop hl
    ld a, b
    sub c
    bit 7, a
    jp nz, Jump_03c_62c6

    cp $00
    jp z, Jump_03c_62c6

    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    pop hl
    cp $0b
    jr z, jr_03c_626f

    cp $0d
    jr z, jr_03c_626f

    ld a, [$d4cd]
    cp $01
    jr z, jr_03c_626f

    cp $02
    jr z, jr_03c_626f

    cp $04
    jr z, jr_03c_626f

    cp $03
    jr z, jr_03c_626f

    cp $08
    jr z, jr_03c_626f

    cp $0b
    jr z, jr_03c_626f

    cp $0c
    jr z, jr_03c_626f

    push hl
    call Call_000_0a61
    pop de
    ld a, l
    and $03
    dec a
    jr jr_03c_62a3

jr_03c_626f:
    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_438a
    pop de
    cp $00
    jr z, jr_03c_628d

    cp $01
    jr z, jr_03c_6299

    push de
    call Call_000_0a61
    pop de
    ld a, l
    and $03
    dec a
    jr jr_03c_62a3

jr_03c_628d:
    push de
    call Call_000_0a61
    pop de
    ld a, l
    and $0f
    sub $07
    jr jr_03c_62a3

jr_03c_6299:
    push de
    call Call_000_0a61
    pop de
    ld a, l
    and $07
    sub $04

jr_03c_62a3:
    ld c, a
    ld a, d
    add c
    ld d, a
    sub $03
    bit 7, a
    jr nz, jr_03c_62b8

    ld a, d
    sub $3c
    bit 7, a
    jr z, jr_03c_62bf

    push de
    pop hl
    jr jr_03c_62c6

jr_03c_62b8:
    ld a, $03
    ld d, a
    push de
    pop hl
    jr jr_03c_62c6

jr_03c_62bf:
    ld a, $3c
    ld d, a
    push de
    pop hl
    jr jr_03c_62c6

Jump_03c_62c6:
jr_03c_62c6:
    pop de
    pop bc
    pop af
    ret


Call_03c_62ca:
    push af
    push bc
    push de
    ld [$d329], a
    ld a, d
    ld [$d32a], a
    push hl
    rst $18

    db $32, $10

    pop hl
    cp $00
    jp z, Jump_03c_6392

    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    pop hl
    cp $07
    jp z, Jump_03c_6392

    ld a, [$d549]
    ld b, a
    ld a, [$d325]
    add b
    ld b, a
    push hl
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    inc a
    ld c, a
    pop hl
    ld a, b
    sub c
    bit 7, a
    jp nz, Jump_03c_6392

    cp $00
    jp z, Jump_03c_6392

    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    pop hl
    cp $0b
    jr z, jr_03c_634e

    cp $0d
    jr z, jr_03c_634e

    ld a, [$d4cd]
    cp $01
    jr z, jr_03c_634e

    cp $02
    jr z, jr_03c_634e

    cp $04
    jr z, jr_03c_634e

    cp $03
    jr z, jr_03c_634e

    cp $08
    jr z, jr_03c_634e

    cp $0b
    jr z, jr_03c_634e

    cp $0c
    jr z, jr_03c_634e

    ld a, h
    sub $38
    bit 7, a
    jr nz, jr_03c_6392

    push hl
    rst $18

    db $32, $10

    pop de
    cp $00
    jr z, jr_03c_638f

    call Call_03c_6396
    jr jr_03c_638f

jr_03c_634e:
    push hl
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_438a
    pop de
    cp $00
    jr z, jr_03c_636d

    cp $01
    jr z, jr_03c_637f

    push de
    rst $18
    ld [hl-], a
    db $10
    pop de
    srl a
    call Call_03c_6396
    jr jr_03c_638f

jr_03c_636d:
    push de
    rst $18
    ld [hl-], a
    db $10
    pop de
    cp $00
    jr z, jr_03c_638f

    inc a
    inc a
    inc a
    inc a
    call Call_03c_6396
    jr jr_03c_638f

jr_03c_637f:
    push de
    rst $18
    ld [hl-], a
    db $10
    pop de
    cp $00
    jr z, jr_03c_638f

    srl a
    call Call_03c_6396
    jr jr_03c_638f

jr_03c_638f:
    ld e, a
    push de
    pop hl

Jump_03c_6392:
jr_03c_6392:
    pop de
    pop bc
    pop af
    ret


Call_03c_6396:
    push bc
    push de
    push hl
    cp $00
    jr z, jr_03c_63c3

    ld b, a

jr_03c_639e:
    call Call_000_0a61
    ld a, l
    and $0f
    ld l, a
    ld a, l
    cp $00
    jr z, jr_03c_63b5

    sub b
    cp $00
    jr z, jr_03c_63b5

    bit 7, a
    jr nz, jr_03c_63b5

    jr jr_03c_639e

jr_03c_63b5:
    bit 0, h
    jr z, jr_03c_63c2

    ld a, l
    cp $00
    jr z, jr_03c_63c3

    cpl
    inc a
    jr jr_03c_63c3

jr_03c_63c2:
    ld a, l

jr_03c_63c3:
    pop hl
    pop de
    pop bc
    ret


Call_03c_63c7:
    push bc
    push de
    push hl
    cp $00
    jr z, jr_03c_63f4

    ld b, a

jr_03c_63cf:
    call Call_000_0a61
    ld a, l
    and $0f
    ld l, a
    ld a, l
    cp $00
    jr z, jr_03c_63cf

    sub b
    cp $00
    jr z, jr_03c_63e6

    bit 7, a
    jr nz, jr_03c_63e6

    jr jr_03c_63cf

jr_03c_63e6:
    bit 0, h
    jr z, jr_03c_63f3

    ld a, l
    cp $00
    jr z, jr_03c_63f4

    cpl
    inc a
    jr jr_03c_63f4

jr_03c_63f3:
    ld a, l

jr_03c_63f4:
    pop hl
    pop de
    pop bc
    ret


Call_03c_63f8:
    push af
    push bc
    push hl
    ld a, c
    ld [$d525], a
    ld a, b
    ld [$d526], a
    ld a, d
    ld [$d527], a
    ld a, [$d4cd]
    cp $02
    jp z, Jump_03c_6526

    cp $0b
    jp z, Jump_03c_6526

    cp $06
    jp z, Jump_03c_6526

    cp $0a
    jp z, Jump_03c_6526

    cp $05
    jp z, Jump_03c_6526

    cp $0c
    jp z, Jump_03c_6526

    ld a, [$d545]
    ld c, a
    ld a, [$d546]
    ld b, a
    ld a, [$d43d]
    ld e, a
    ld a, [$d43e]
    ld d, a
    call Call_03c_4404
    cp $00
    jp nz, Jump_03c_649c

    ld a, [$d547]
    ld c, a
    ld a, [$d548]
    ld b, a
    ld a, [$d43f]
    ld e, a
    ld a, [$d440]
    ld d, a
    call Call_03c_4404
    cp $00
    jp nz, Jump_03c_649c

    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_43c7
    add $05
    ld b, a
    ld a, [$c815]
    sub b
    bit 7, a
    jp nz, Jump_03c_6526

    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_43a8
    cp $00
    jp z, Jump_03c_6483

    cp $01
    jp z, Jump_03c_648e

    jp Jump_03c_6526


Jump_03c_6483:
    call Call_000_0a61
    bit 0, l
    jp nz, Jump_03c_651c

    jp Jump_03c_6526


Jump_03c_648e:
    call Call_000_0a61
    ld a, l
    and $03
    cp $00
    jp z, Jump_03c_651c

    jp Jump_03c_6526


Jump_03c_649c:
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    cp $00
    jp nz, Jump_03c_6526

    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_43c7
    add $05
    ld b, a
    ld a, [$c815]
    sub b
    bit 7, a
    jr nz, jr_03c_6526

    ld a, [$d525]
    ld c, a
    ld a, [$d526]
    ld b, a
    call Call_03c_569a
    bit 7, d
    jp z, Jump_03c_64d4

    ld h, $00
    ld l, $00
    call Call_000_08ac
    push hl
    pop de

Jump_03c_64d4:
    ld bc, $2000
    call Call_03c_4404
    cp $02
    jp z, Jump_03c_64e2

    jp Jump_03c_64f0


Jump_03c_64e2:
    ld bc, $6000
    call Call_03c_4404
    cp $01
    jp z, Jump_03c_6526

    jp Jump_03c_6506


Jump_03c_64f0:
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_43a8
    cp $00
    jp z, Jump_03c_651c

    cp $01
    jp z, Jump_03c_651c

    jp Jump_03c_6526


Jump_03c_6506:
    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_43a8
    cp $02
    jp z, Jump_03c_6521

    cp $01
    jp z, Jump_03c_6521

    jp Jump_03c_6526


Jump_03c_651c:
    ld e, $40
    jp Jump_03c_6528


Jump_03c_6521:
    ld e, $80
    jp Jump_03c_6528


Jump_03c_6526:
jr_03c_6526:
    ld e, $ff

Jump_03c_6528:
    ld a, [$d527]
    ld d, a
    pop hl
    pop bc
    pop af
    ret


Call_03c_6530:
    push af
    push bc
    push hl
    ld a, $20
    call Call_03c_4256
    ld a, [hl]
    cp $00
    jr nz, jr_03c_6592

    ld a, [$d325]
    cp $03
    jr z, jr_03c_6592

    ld a, $28
    call Call_03c_4256
    ld a, [hl]
    cp $00
    jr z, jr_03c_6592

    call Call_03c_4a11
    cp $01
    jr z, jr_03c_6592

    ld a, $10
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_43bd
    cp $00
    jr z, jr_03c_6583

    cp $01
    jr z, jr_03c_6578

    ld a, [$d325]
    cp $05
    jr z, jr_03c_658e

    ld a, $05
    call Call_03c_4599
    cp $03
    jr z, jr_03c_658e

    jr jr_03c_6592

jr_03c_6578:
    ld a, $08
    call Call_03c_4599
    cp $04
    jr z, jr_03c_658e

    jr jr_03c_6592

jr_03c_6583:
    ld a, $0e
    call Call_03c_4599
    cp $07
    jr z, jr_03c_658e

    jr jr_03c_6592

jr_03c_658e:
    ld d, $01
    jr jr_03c_6594

jr_03c_6592:
    ld d, $00

jr_03c_6594:
    pop hl
    pop bc
    pop af
    ret


Call_03c_6598:
    push bc
    push de
    push hl
    ld hl, $d596
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    pop hl
    ld b, a
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    push de
    ld d, h
    ld e, l
    pop hl
    ld a, l
    add hl, hl
    add hl, hl
    add hl, hl
    add h
    ld h, a
    add hl, hl
    or a
    call Call_000_08ac
    ld de, $3039
    add hl, de
    push hl
    pop de
    ld hl, $d596
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, d
    pop hl
    pop de
    pop bc
    ret


Call_03c_65c8:
    push bc
    ld b, a

jr_03c_65ca:
    call Call_03c_6598
    ld c, a
    ld a, b
    dec a
    jr z, jr_03c_65e1

jr_03c_65d2:
    add a
    jr c, jr_03c_65d9

    srl c
    jr jr_03c_65d2

jr_03c_65d9:
    ld a, b
    dec a
    cp c
    jr c, jr_03c_65ca

    ld a, c
    pop bc
    ret


jr_03c_65e1:
    xor a
    pop bc
    ret


    rrca
    ld [bc], a
    rla
    nop
    ld c, $00
    rla
    nop
    ld c, $01
    ld b, $00
    dec c
    ld [bc], a
    ld b, $00
    dec c
    nop
    ld d, $00
    inc c
    ld bc, $0016
    inc c
    ld [bc], a
    dec b
    nop
    dec bc
    nop
    dec b
    nop
    inc c
    ld bc, $0015
    ld a, [bc]
    ld [bc], a
    dec d
    nop
    ld a, [bc]
    nop
    inc b
    nop
    add hl, bc
    ld bc, $0004
    add hl, bc
    ld [bc], a
    inc d
    nop
    ld [$1400], sp
    nop
    ld [$0301], sp
    nop
    rlca
    ld [bc], a
    inc bc
    nop
    rlca
    nop
    inc de
    nop
    ld b, $01
    inc de
    nop
    ld b, $02
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    ld bc, $0012
    inc b
    ld [bc], a
    ld [de], a
    nop
    inc b
    nop
    ld bc, $0300
    ld bc, $0001
    inc bc
    ld [bc], a
    ld de, $0200
    nop
    ld de, $0000
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fd
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld hl, $c9fe
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d596
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop hl
    push hl
    xor a

jr_03c_66a0:
    cp $1b
    jr z, jr_03c_66b0

    call Call_03c_67e2
    push af
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop af
    inc hl
    inc a
    jr jr_03c_66a0

jr_03c_66b0:
    pop hl
    call Call_03c_69d7
    call Call_03c_6821
    xor a

jr_03c_66b8:
    cp $1b
    jr z, jr_03c_66d2

    push af
    push hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    pop af
    call Call_03c_66ef
    push af
    push hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop hl
    pop af
    inc hl
    inc hl
    inc a
    jr jr_03c_66b8

jr_03c_66d2:
    push hl
    ld a, $3e
    call Call_03c_4256
    ld a, [hl]
    ld d, a
    ld a, [$c837]
    ld e, a
    ld a, [$c4bd]
    cp $00
    jr nz, jr_03c_66e6

    dec e

jr_03c_66e6:
    pop hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03c_66ef:
    push af
    push bc
    push hl
    ld b, a
    ld c, d
    push bc
    add a
    add a
    ld hl, $65e4
    ld e, a
    ld d, $00
    add hl, de
    pop bc
    inc hl
    inc hl
    ld a, [hl]
    and $0f
    ld d, a
    ld a, [$c4bd]
    cp $00
    jr nz, jr_03c_6713

    ld a, [hl]
    and $10
    cp $00
    jr z, jr_03c_6713

jr_03c_6713:
    ld a, [$c4bd]
    cp $00
    jr nz, jr_03c_6720

    ld a, [$c837]
    dec a
    jr jr_03c_6723

jr_03c_6720:
    ld a, [$c837]

jr_03c_6723:
    add d
    ld e, a
    cp $00
    jp z, Jump_03c_67ac

    sub $13
    bit 7, a
    jr nz, jr_03c_6733

    ld a, $12
    ld e, a

jr_03c_6733:
    ld l, c
    bit 7, l
    jr z, jr_03c_673c

    ld a, l
    cpl
    inc a
    ld l, a

jr_03c_673c:
    ld a, e
    ld h, $00
    call Call_000_08b9
    push de
    ld e, $12
    ld d, $00
    call Call_000_09ae
    pop de
    ld a, c
    bit 7, a
    jr z, jr_03c_675b

    push de
    push hl
    pop de
    ld h, $00
    ld l, $00
    call Call_000_08ac
    pop de

jr_03c_675b:
    ld d, l
    ld a, b
    call Call_03c_67b1
    add d
    ld d, a
    ld a, e
    ld a, b
    cp $1a
    jr nz, jr_03c_67a8

    ld a, [$c837]
    cp $12
    jr nz, jr_03c_67a8

    push de
    ld a, [$c836]
    dec a
    ld hl, $67dd
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    call Call_03c_6a04
    push hl
    pop de
    ld a, $3e
    call Call_03c_4256
    ld a, [hl]
    call Call_03c_6a04
    push hl
    pop bc
    call Call_03c_4404
    pop de
    cp $00
    jr z, jr_03c_6796

    jr jr_03c_67a8

jr_03c_6796:
    push de
    ld a, d
    call Call_03c_6a04
    push hl
    pop de
    call Call_03c_4404
    pop de
    cp $00
    jr nz, jr_03c_67a8

    ld a, d
    inc a
    ld d, a

jr_03c_67a8:
    pop hl
    pop bc
    pop af
    ret


Jump_03c_67ac:
    xor a
    ld d, a
    ld e, a
    jr jr_03c_67a8

Call_03c_67b1:
    push bc
    push de
    push hl
    push de
    add a
    add a
    ld hl, $65e4
    ld e, a
    ld d, $00
    add hl, de
    inc hl
    ld a, [hl]
    ld b, a
    inc hl
    inc hl
    ld a, [hl]
    ld c, a
    ld hl, $0012
    ld a, b
    call Call_000_08b9
    push hl
    pop de
    ld hl, $6650
    add hl, de
    pop de
    ld d, $00
    dec e
    add hl, de
    ld a, [hl]
    add c
    pop hl
    pop de
    pop bc
    ret


    rst $38
    db $fd
    ei
    ld hl, sp-$0b

Call_03c_67e2:
    push af
    push bc
    push hl
    ld b, a
    add a
    add a
    ld hl, $65e4
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld c, a
    ld hl, $67dd
    ld a, [$c836]
    dec a

jr_03c_67f8:
    cp $00
    jr z, jr_03c_6800

    inc hl
    dec a
    jr jr_03c_67f8

jr_03c_6800:
    ld a, [hl]
    add c
    ld c, a
    ld a, b
    cp $1a
    jr z, jr_03c_681e

    ld a, $05
    call Call_03c_65c8
    ld d, a
    ld a, $05
    call Call_03c_65c8
    add d
    srl a
    sub $02
    add c
    ld d, a

jr_03c_681a:
    pop hl
    pop bc
    pop af
    ret


jr_03c_681e:
    ld d, c
    jr jr_03c_681a

Call_03c_6821:
    push af
    push bc
    push de
    push hl
    ld a, l
    ld [$d552], a
    ld a, h
    ld [$d553], a
    xor a

jr_03c_682e:
    cp $1b
    jr z, jr_03c_685c

    push af
    push hl
    push de
    ld a, [$c836]
    dec a
    ld hl, $67dd
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    ld b, a
    inc hl
    ld a, [hl]
    ld c, a
    sub b
    bit 7, a
    jr nz, jr_03c_684e

    jr jr_03c_6857

jr_03c_684e:
    ld a, c
    bit 7, a
    jr z, jr_03c_6855

    cpl
    inc a

jr_03c_6855:
    add b
    ld [hl], a

jr_03c_6857:
    pop af
    inc hl
    inc a
    jr jr_03c_682e

jr_03c_685c:
    ld de, $d554
    ld bc, $d572
    ld a, [$d552]
    ld l, a
    ld a, [$d553]
    ld h, a
    xor a

jr_03c_686b:
    cp $1b
    jr z, jr_03c_6881

    inc hl
    push hl
    push af
    ld a, [hl]
    push de
    pop hl
    ld [hl], a
    pop af
    push bc
    pop hl
    ld [hl], a
    pop hl
    inc hl
    inc de
    inc bc
    inc a
    jr jr_03c_686b

jr_03c_6881:
    ld hl, $d554
    ld de, $d572
    ld a, $1b
    call Call_03c_6921
    ld hl, $d554
    ld a, [hl]
    ld b, a
    inc hl
    ld a, [hl]
    cp b
    jr nz, jr_03c_68ba

    ld hl, $d572
    inc hl
    ld a, $01

jr_03c_689c:
    cp $1b
    jr z, jr_03c_68ba

    push af
    ld a, [hl]
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$d552]
    ld e, a
    ld a, [$d553]
    ld d, a
    add hl, de
    inc hl
    ld a, [hl]
    inc a
    ld [hl], a
    pop hl
    pop af
    inc a
    inc hl
    jr jr_03c_689c

jr_03c_68ba:
    ld hl, $d554
    inc hl
    ld a, [hl]
    ld b, a
    inc hl
    ld a, [hl]
    cp b
    jr nz, jr_03c_68ea

    ld hl, $d572
    inc hl
    inc hl
    ld a, $02

jr_03c_68cc:
    cp $1b
    jr z, jr_03c_68ea

    push af
    ld a, [hl]
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$d552]
    ld e, a
    ld a, [$d553]
    ld d, a
    add hl, de
    inc hl
    ld a, [hl]
    inc a
    ld [hl], a
    pop hl
    pop af
    inc a
    inc hl
    jr jr_03c_68cc

jr_03c_68ea:
    ld hl, $d554
    inc hl
    inc hl
    ld a, [hl]
    ld b, a
    inc hl
    ld a, [hl]
    cp b
    jr nz, jr_03c_691c

    ld hl, $d572
    inc hl
    inc hl
    inc hl
    ld a, $03

jr_03c_68fe:
    cp $1b
    jr z, jr_03c_691c

    push af
    ld a, [hl]
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$d552]
    ld e, a
    ld a, [$d553]
    ld d, a
    add hl, de
    inc hl
    ld a, [hl]
    inc a
    ld [hl], a
    pop hl
    pop af
    inc a
    inc hl
    jr jr_03c_68fe

jr_03c_691c:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03c_6921:
    push af
    push bc
    push de
    push hl
    ld [$d54a], a
    ld a, e
    ld [$d54e], a
    ld a, d
    ld [$d54f], a
    ld a, l
    ld [$d550], a
    ld a, h
    ld [$d551], a
    ld b, $00

Jump_03c_693a:
    ld a, [$d54a]
    dec a
    sub b
    jp z, Jump_03c_69d2

    bit 7, a
    jp nz, Jump_03c_69d2

    ld c, b
    ld d, b
    inc d

jr_03c_694a:
    ld a, [$d54a]
    sub d
    jr z, jr_03c_697e

    bit 7, a
    jr nz, jr_03c_697e

    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    push de
    ld e, d
    ld d, $00
    add hl, de
    pop de
    ld a, [hl]
    ld e, a
    push de
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld e, c
    ld d, $00
    add hl, de
    pop de
    ld a, [hl]
    sub e
    jr z, jr_03c_697b

    bit 7, a
    jr nz, jr_03c_697b

    ld c, d

jr_03c_697b:
    inc d
    jr jr_03c_694a

jr_03c_697e:
    push bc
    push de
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    ld e, c
    ld d, $00
    add hl, de
    push hl
    ld a, [hl]
    push af
    ld a, [$d550]
    ld l, a
    ld a, [$d551]
    ld h, a
    pop af
    ld e, b
    ld d, $00
    add hl, de
    push af
    ld a, [hl]
    ld b, a
    pop af
    ld [hl], a
    pop hl
    ld a, b
    ld [hl], a
    pop de
    pop bc
    push bc
    push de
    ld a, [$d54e]
    ld l, a
    ld a, [$d54f]
    ld h, a
    ld e, c
    ld d, $00
    add hl, de
    push hl
    ld a, [hl]
    push af
    ld a, [$d54e]
    ld l, a
    ld a, [$d54f]
    ld h, a
    pop af
    ld e, b
    ld d, $00
    add hl, de
    push af
    ld a, [hl]
    ld b, a
    pop af
    ld [hl], a
    pop hl
    ld a, b
    ld [hl], a
    pop de
    pop bc
    inc b
    jp Jump_03c_693a


Jump_03c_69d2:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03c_69d7:
    push af
    push bc
    push de
    push hl
    push hl
    ld de, $0034
    add hl, de
    inc hl
    ld a, [hl]
    ld b, a
    pop hl
    xor a

jr_03c_69e5:
    cp $1a
    jr z, jr_03c_69ff

    push af
    inc hl
    ld a, [hl]
    sub b
    cp $00
    jr z, jr_03c_69f7

    bit 7, a
    jr nz, jr_03c_69f7

    jr jr_03c_69fa

jr_03c_69f7:
    ld a, b
    inc a
    ld [hl], a

jr_03c_69fa:
    pop af
    inc hl
    inc a
    jr jr_03c_69e5

jr_03c_69ff:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03c_6a04:
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
    jr nz, jr_03c_6a1d

    push bc
    pop hl
    ld h, $ff
    jr jr_03c_6a1f

jr_03c_6a1d:
    push bc
    pop hl

jr_03c_6a1f:
    pop de
    pop bc
    pop af
    ret


    ld hl, $0153
    ld de, $0501
    call Call_000_20b1
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ldh [$97], a
    ld [$4000], a
    ld bc, $0400
    call Call_03c_6a55
    ld hl, $6a4c
    ld de, $000a
    call Call_000_20b1
    call Call_000_2e3b

jr_03c_6a4a:
    jr jr_03c_6a4a

    ld b, e
    ld c, a
    ld c, l
    ld d, b
    ld c, h
    ld b, l
    ld d, h
    ld b, l
    nop

Call_03c_6a55:
    push bc
    rst $18
    inc d
    ld [bc], a
    pop bc
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $c893
    ld [hl], $01
    ld hl, $c8d3
    ld [hl], $00
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0001
    rst $18
    db $10
    db $10
    ld a, $01
    ld [$d334], a
    ld a, $00
    ld [$d4bf], a
    ld a, $03
    ldh [$9e], a
    rst $18
    ld d, b
    db $10
    rst $18
    ld [$df13], sp
    ld b, $10
    rst $18
    ld c, b
    db $10
    rst $18
    ld a, [hl-]
    db $10
    ld a, $00
    ld [$d4d9], a
    ld a, $3c
    ld [$d4d8], a
    ld a, $00
    ld [$d44f], a
    ld a, $3c
    ld [$d450], a
    ld a, [$c89a]
    ld [$d4c6], a
    ld a, [$c89b]
    ld [$d4c7], a
    ld a, [$c89e]
    ld [$d4c9], a
    ld a, [$c89d]
    ld [$d4ca], a
    ld a, [$c89c]
    ld [$d4c8], a
    ld a, [$c89f]
    ld [$d4cb], a
    ld a, $00
    ld [$bff0], a
    ld a, $a0
    ld [$bff1], a
    ld bc, $0000

Jump_03c_6adb:
    push bc
    ld a, b
    ld [$d329], a
    push de
    ld de, $0202
    call Call_000_22d2
    pop de
    ld a, $00
    ld [$d32a], a
    ld [$d32b], a
    ld a, $00
    ld [$d445], a
    call Call_03c_4006
    ld [$d4cd], a
    ld [$d44b], a
    ld [$d44c], a
    ld b, $c0

jr_03c_6b03:
    ld a, b
    ld [$c816], a
    push de
    ld de, $0203
    call Call_000_22a5
    pop de
    ld c, $01

jr_03c_6b11:
    ld a, c
    push bc
    ld [$c815], a
    push de
    ld de, $0204
    call Call_000_22d2
    pop de
    call Call_03c_6bca
    pop bc
    call Call_000_2e3b
    call Call_03c_6b59
    inc c
    ld a, c
    cp $0a
    jr nz, jr_03c_6b11

    ld a, b
    add $10
    ld b, a
    cp $c0
    jr nz, jr_03c_6b03

    pop bc
    inc b
    ld a, b
    cp $0d
    jp nz, Jump_03c_6adb

    ret


Call_03c_6b3f:
    push af
    push bc
    push hl
    push bc
    pop de
    push de
    ld de, $c000
    xor a
    ld e, a
    ld h, a
    ld l, a
    call Call_000_08ac
    push hl
    pop de
    pop hl
    add hl, de
    push hl
    pop de
    pop hl
    pop bc
    pop af
    ret


Call_03c_6b59:
    push af
    push bc
    push de
    push hl
    ld hl, $bff0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_03c_6bfe
    push hl
    push bc
    pop hl
    ld de, $020a
    call Call_000_22bc
    pop hl
    call Call_03c_6b3f
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    push de
    pop hl
    ld de, $0206
    call Call_000_22bc
    pop hl
    push hl
    ld a, [$d439]
    ld c, a
    ld a, [$d43a]
    ld b, a
    ld a, [$d43b]
    ld e, a
    ld a, [$d43c]
    ld d, a
    call Call_03c_4466
    push hl
    ld de, $020b
    call Call_000_22bc
    pop hl
    push hl
    ld a, [$d329]
    rst $18
    ld c, $10
    push hl
    pop de
    pop hl
    call Call_000_08ac
    push hl
    pop de
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    push hl
    push de
    pop hl
    ld de, $0207
    call Call_000_22bc
    pop hl
    ld a, l
    ld [$bff0], a
    ld a, h
    ld [$bff1], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03c_6bca:
    push af
    push bc
    push de
    push hl
    xor a
    ld hl, $d4cf
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $18
    ld b, $10
    rst $18
    ld c, b
    db $10
    ld hl, $c000
    ld a, l
    ld [$d418], a
    ld a, h
    ld [$d419], a
    ld a, $04
    ld [$d4d6], a
    rst $18
    ld c, d
    db $10

jr_03c_6bf1:
    rst $18
    ld c, h
    db $10
    rst $18
    ld c, [hl]
    db $10
    jr z, jr_03c_6bf1

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03c_6bfe:
    ld hl, $d401
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push de
    ld hl, $d439
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop bc
    push hl
    ld hl, $d43b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push bc
    pop hl
    call Call_000_08ac
    pop de
    call Call_000_1a03
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_03c_7641:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
