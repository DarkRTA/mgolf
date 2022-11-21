INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $067", ROMX[$4000], BANK[$67]

Jump_067_4000:
    ld a, [bc]
    ld b, b
    jp nc, Jump_000_0e4c

    ld d, [hl]
    sub c
    ld h, e
    ld a, [hl-]
    ld l, a
    ld [de], a

Jump_067_400b:
    ld b, b
    xor b
    ld b, l
    add hl, de
    ld c, h
    dec sp
    ld c, h
    rst $08
    ld c, l
    ld c, l
    dec c
    ld c, l
    rst $38
    ldh [$fb], a
    ld [c], a
    ld c, l
    ld l, l
    rst $38
    ld l, l
    ld l, l
    ld l, $2e
    ld c, $6d
    ld l, l

Jump_067_4025:
    ld c, l
    ld de, $ff0d
    ldh [$e6], a
    ldh [$fb], a
    db $e3
    dec l
    pop af
    ldh [$dc], a
    rst $20
    ei
    db $e3
    ldh a, [$e2]
    pop hl
    db $ec
    add sp, -$36
    ldh [$c0], a
    ld [c], a
    ld l, $2e
    ld l, [hl]
    ld l, $23
    ld c, [hl]
    ld c, $c4
    ldh [$bf], a
    ldh [$ee], a
    ldh [$6d], a
    cp $e4
    ld a, [c]
    db $e3
    inc a
    cp $f4
    add b
    pop hl
    ld l, [hl]
    ld c, $0e
    ld c, l
    rst $08
    ldh [$c2], a
    ldh [rNR41], a
    add b
    ldh [$c0], a
    ldh [$80], a
    ld [c], a

Jump_067_4064:
    adc d
    db $e3
    ld h, d
    ldh [$2d], a
    or e
    ldh [$a0], a
    ldh [rP1], a
    add b
    db $f4
    ld b, b
    pop hl
    add b
    pop hl
    cp l
    ldh [$c2], a
    pop hl
    ret nz

    pop hl
    cp [hl]
    ld [c], a
    ld sp, $01e0
    dec bc
    rst $38
    db $e3
    cp l
    db $e3
    ld e, e
    db $e3
    and a
    ld [c], a
    dec a
    db $e4
    dec sp
    push hl
    ld b, b
    ldh [rNR10], a
    and b
    pop hl
    add hl, sp
    pop hl
    ret nz

    ld [c], a
    ld [hl], e
    pop hl
    dec c
    jp Jump_067_77e1


    db $e3
    di
    jp nz, Jump_000_2d01

    ld e, e
    ld [c], a
    and [hl]
    pop hl
    call nz, $f2e4
    add $80
    ld [c], a
    call $80e2
    db $e4
    db $e3
    ld l, l
    ld l, l
    nop
    ldh [$84], a
    ld [c], a
    ret nz

    rst $20
    dec c
    ld l, l
    dec c
    ld hl, $800d
    add sp, -$30
    pop bc
    add b
    jp hl


    or b
    jp nz, $c00d

    pop bc
    add d
    jp nz, Jump_067_6d03

    dec c
    jp nz, $c0ec

    db $e3
    ld e, e
    db $e3
    and a
    pop bc
    ret nc

    pop bc
    ld a, b
    push bc
    inc b
    ld b, h
    db $e4
    ld e, e
    pop bc
    ld c, $4b
    jp $e094


    cp $ed
    dec l
    pop bc
    dec de

Call_067_40e7:
    db $e4
    jr c, @-$49

    pop bc
    ld d, b
    call nz, $c245
    ld l, [hl]
    ld c, $4e
    ld [bc], a
    ld [c], a
    ld hl, sp-$5f
    inc c
    dec bc
    jp $e709


    dec hl
    dec bc
    add h
    ret nz

    pop bc
    db $e4
    ret c

    and d
    rst $10
    push bc
    ret nz

    add b
    rst $20
    ld c, a
    pop bc
    cp [hl]
    ldh [$bb], a
    jp $e35f


    ret


    add $0b
    dec bc
    inc bc
    dec hl
    dec hl
    cp a
    ld [c], a
    pop bc
    ret nz

    cp h

jr_067_411c:
    and d
    sub e
    db $e4
    dec [hl]
    db $e3
    sbc l
    and d
    inc e
    push bc
    and c

Jump_067_4126:
    rst $00
    ld [c], a
    ld l, $0e
    ld l, [hl]
    ld [hl], l
    ldh [$bd], a
    ld [c], a
    adc h
    db $e3
    rst $08
    dec c
    dec c
    ld l, e
    ld l, e
    cp a
    ldh [$7b], a
    jp $2d4d


    pop bc
    dec l
    ld a, [hl+]
    ret nz

    sub e
    add sp, $74
    and [hl]
    ret nz

    and $84
    and b
    ld c, $4e
    ld a, h
    dec [hl]
    db $e3
    cp a
    db $e4
    ld c, l
    ld l, e
    ld c, e
    ld c, e
    ld c, e
    dec sp
    push bc
    nop
    db $fd
    and l
    jr nz, jr_067_411c

    or l
    pop hl
    and b
    and e
    ret nz

    jp nz, $e2ed

    add [hl]
    and b
    dec [hl]
    rst $20
    ld e, $7e
    db $e4
    ld l, e
    dec hl
    dec bc
    ld l, e
    ei
    and [hl]
    ld a, c
    and b
    ld d, e
    and $60
    ld c, b
    ret


    ld [bc], a
    call nz, $e5c0
    or h
    jp $c4c1


    dec hl
    ld c, e
    cp e
    xor b
    nop
    cp h
    and c
    and b
    and e
    sbc b
    add b
    sub a
    add b
    sub [hl]
    add d
    sub e
    add b
    add a
    add d
    ld b, h
    and c
    ld [$e5c0], sp
    add c
    and c
    rst $38
    jp Jump_067_400b


    ldh [$f2], a
    push bc
    dec sp
    jp nz, $c1d8

    push af
    ld c, $98
    add c
    ld l, $98
    add b
    ld c, [hl]
    ld l, $0e
    dec c
    ld c, b
    or a
    and $80
    ld [$c4bd], a
    dec hl
    nop
    pop hl
    ld a, [hl-]
    and a
    ld l, l
    call c, Call_000_0081
    ld h, e
    add c
    ld e, b
    add c
    ld d, a
    add c

Call_067_41c5:
    add hl, bc
    db $e3
    or a
    ld [c], a
    inc bc
    and d
    ld b, b
    db $e4
    inc bc
    push bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    cp a
    ret nz

    ret nz

    jp hl


    pop hl
    ld h, e
    call z, $14a1

Call_067_41db:
    and $b7
    push hl
    ld l, b
    ret nz

    db $eb
    cp a
    ld h, c
    pop bc
    ldh [$2a], a
    ld b, b
    ldh [$2b], a
    ld c, e
    pop bc
    rst $20
    add b
    pop hl
    ld h, e
    call nc, $89c9
    pop bc
    ld c, e
    and $be
    and d
    ret z

    ld h, b
    ret nz

    ld h, e
    ld l, e
    inc bc
    ld a, [hl+]

Call_067_41fe:
    ld a, [bc]
    ld b, b
    ldh [$fc], a
    and b
    pop af
    and h
    ld h, h
    ld h, b
    pop hl
    ld h, e
    ret nz

Call_067_420a:
    ld a, [c]
    jr c, jr_067_4226

    and l
    dec e
    db $e3
    sub c
    add c
    ld c, l
    ld a, [hl+]
    ld a, [hl+]
    nop
    pop hl
    ld a, e
    ldh [rP1], a
    ret nz

    ld h, b
    add hl, sp
    and c
    adc l
    jp nz, $8216

Jump_067_4222:
    ld d, h
    ret z

    ret nz

    db $eb

jr_067_4226:
    add l
    ld h, l
    cp [hl]
    add d
    ld a, [bc]
    jp nz, Jump_067_4ba1

    ei
    ret nz

    ld l, d
    ei
    add b
    db $ed
    ld b, c
    ret nz

    and $14
    rst $00
    or c
    ld l, l
    add b
    db $ed
    ei
    and $bf
    ld b, c
    dec bc
    ld l, e
    ld a, a
    and b
    dec hl
    rrca
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    dec bc
    add d
    and d
    add b
    db $e4
    or $62
    ret nz

    db $ed
    pop de
    ld l, l
    scf
    jp nz, $e1e4

    ld b, d
    adc b
    dec hl
    add b
    pop bc
    ld c, e
    dec bc
    rlca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, a
    ld h, d
    ld h, e
    ld b, h
    rst $08
    and b
    jp nz, $c9a5

    and e
    and b
    ld [hl], a
    ld [c], a
    add l
    ld b, [hl]
    ld b, e
    adc b
    ld b, b
    jp nz, $e0c0

    ld a, [hl+]
    ld a, l
    pop bc
    ld c, l
    inc bc
    dec l
    ld l, l
    ld l, l
    ld b, c
    ld e, e
    add l
    dec sp
    ld b, l
    or a
    push hl
    add l
    ld c, d
    ld bc, $34c5
    ld b, b
    pop bc
    ccf
    ret nz

    ld c, e
    add hl, hl
    db $e3
    ld l, l
    ld c, $a3
    ld b, b
    ld e, e
    add l
    jr nz, jr_067_42ee

    ld b, c
    dec sp
    ld h, d
    ret nz

    inc h
    and h
    add $42
    add a
    ld a, [bc]
    ld b, b
    pop bc
    ld a, $c0
    nop
    dec a
    and h
    inc d
    and c
    ld e, e
    add a
    rrca
    ld b, b
    dec sp

jr_067_42b4:
    ld h, [hl]
    or e
    db $e3
    and h
    call nz, $8257
    nop
    ld b, d
    add e
    ret nz

jr_067_42bf:
    ld [c], a
    cp c
    ldh [$c0], a
    ret nz

    ld b, d
    and e
    ld [$90a2], sp
    ld h, a
    add b
    and $00
    dec b
    ld b, [hl]
    ld b, c
    ld hl, $66c0
    add l
    and b
    add b
    and c
    pop bc
    ret nz

    ret nz

    ret nz

    ld a, a
    ld b, c
    nop
    adc e
    add d
    ld e, e
    add [hl]
    or b
    ld b, d
    add b
    ld b, [hl]
    and h
    call nz, Call_067_43a7
    pop de
    and d
    ld b, a
    ret nz

jr_067_42ee:
    nop
    rst $38
    and c
    cp a
    ld [c], a
    pop af
    jr nz, jr_067_42b4

    ld hl, $895b
    ld [hl], b
    ld b, a
    ld b, $67
    pop bc
    ld [bc], a
    jr c, jr_067_42bf

    ld b, l
    adc b
    pop hl
    ld a, a
    inc hl
    ld a, [bc]
    ld c, e
    dec l
    cp e
    inc b
    ret nz

    ld [$7da0], a
    dec h
    ld b, $68
    ld [hl], a
    ld hl, $2305
    ret nz

    pop bc
    ld a, [hl+]
    ld b, b
    inc h
    dec bc
    inc bc
    ld [$ea4b], sp
    call nz, $8b9b
    add e
    dec h
    ld b, $68
    jp nz, $fe04

    ld hl, $4d09
    ld b, d
    ld h, b
    rst $38
    ld [bc], a
    ld l, e
    ret nz

    pop hl
    nop
    ld h, e
    dec de
    adc b
    cp [hl]
    ld c, c
    inc [hl]
    ld b, $67
    cp a
    add hl, hl
    dec hl
    ret nz

    db $e4
    dec hl
    ld c, e
    ret nz

    pop hl
    sub c
    pop hl
    nop
    ei
    nop
    add hl, de
    ld b, a
    or [hl]
    and [hl]
    ld b, $69
    and l
    ld b, e
    jp Jump_067_4025


    push hl
    cp a
    and e
    nop
    cp d
    ld [bc], a
    ret


    and e
    adc [hl]
    ld bc, $4311
    ld a, l
    and e
    ld l, e
    rst $00
    ld a, l
    and a
    push bc
    ld b, b
    ld c, $bf
    and $0d
    dec c
    ld [$8520], sp
    inc b
    inc h
    ld de, $8045
    db $ec
    nop
    cp b
    inc bc
    adc h
    inc hl
    jp nz, $c020

    xor $fc
    inc hl
    ld a, d
    ld [c], a
    ld de, $3d43
    inc hl

jr_067_4389:
    nop
    ld b, [hl]
    ld b, [hl]
    jr nz, @+$26

    ld a, [bc]
    ld [hl+], a
    add c
    ld hl, $c4bf
    ret nz

    ld [$e580], a
    ret nz

    db $e4
    db $10
    add $49
    or e
    ld b, $90
    ld h, c
    ld a, a
    and $4b
    db $fd
    ld b, l
    ld a, d

Call_067_43a7:
    ld bc, $eec0
    nop
    xor b
    dec b
    dec l
    and h
    or e
    ld [bc], a
    ld bc, $c145
    set 1, c
    jr z, jr_067_4389

    ld h, $ee
    rst $20
    db $10

jr_067_43bc:
    ld h, b
    and e
    ld h, b
    inc h
    pop de

Jump_067_43c1:
    and d
    add d
    jr nz, jr_067_43cd

    ld b, c
    db $e4
    ld h, d
    ld h, e
    ret


    ld h, $00
    dec bc

jr_067_43cd:
    rst $20
    nop
    ld b, a
    ld [bc], a
    ld h, b
    jr nz, jr_067_43fa

    pop de
    inc bc
    ret nz

    and b
    ret nz

    pop hl
    ld b, c
    push hl
    nop
    ld b, b
    ld b, d
    ld [de], a
    ld b, l
    ret nz

    and $00
    ld b, [hl]
    ld l, a
    and d
    ret nz

    rst $20
    ld b, b
    inc bc
    ret nz

    ld [c], a
    nop
    rst $28
    ld b, e
    dec e
    jr nz, jr_067_43bc

    daa
    ld [hl], l
    ld h, c
    ret


    add d
    rlc l

jr_067_43fa:
    inc sp
    ld h, d
    or e
    dec b
    inc b
    cp [hl]
    inc h
    ld a, $c3
    dec hl
    ld b, c
    db $e3
    ret


    ld c, c
    pop bc
    ld h, d
    adc b
    ld h, a
    ret nz

    push hl
    nop
    db $e4
    push bc
    cp d
    ld h, d
    or l
    ld b, c
    rst $38
    add d
    ld a, $02
    add c
    add c
    ld e, l
    add hl, bc
    dec [hl]
    daa
    ld a, b
    add b
    push hl
    db $e4
    rst $00
    pop af
    ld h, d
    inc c
    inc c
    inc c
    inc l
    cp a
    pop bc
    add b
    ld bc, $46a1
    call nz, Call_000_2949
    dec [hl]
    add hl, hl
    ret nz

    push hl
    or $05
    sbc a
    ld bc, $000d
    ret nz

    ld [c], a
    cp a
    and h
    ld b, $a2
    add b
    jp hl


    push af
    add $84
    and d
    add c
    db $e3
    xor l
    rlca
    ld e, $7d
    add d
    ld c, h
    ld c, h
    ld c, h
    ld l, h
    cp [hl]
    add e
    jp nz, $84a3

    add b
    nop
    ret


    dec l
    push af
    dec b
    ld b, c
    and $41

jr_067_4462:
    dec bc
    ld a, $a5
    add e
    add h
    cp a
    ld h, b
    ret


    daa
    nop
    ret nz

    db $eb
    xor b
    and h
    ld b, c
    ld [$467d], sp
    jp nz, $4360

    xor b
    jp z, Jump_067_4064

    pop hl
    db $10

jr_067_447d:
    sub c
    ld b, e
    cp e
    ld l, a
    add b
    db $e3
    ei
    dec h
    ld l, e
    ld [bc], a
    ld b, b
    pop af
    dec b
    ld b, b
    ld b, b
    nop
    adc c
    add b
    call nz, $1262
    jr nz, jr_067_44c9

    inc h
    ret nz

    inc hl
    nop
    ld b, e
    xor l
    dec b
    sub h
    ld h, d
    ld [bc], a
    cp a
    db $e3
    ld c, l
    pop bc
    rst $20
    inc b
    add d
    and b
    add h
    ret z

    ld b, c
    ret nz

    ld b, a
    nop
    ld b, c
    nop
    xor l
    ld [$8220], sp
    ld hl, sp+$09
    ld h, l
    dec b
    and b
    adc d
    nop
    ld l, b
    push af
    ld b, d
    xor l
    rlca
    nop
    and b
    ld h, d
    ret nz

    xor $46
    ld h, b
    call nz, $c163
    ld b, c

jr_067_44c9:
    ld e, l
    ld b, e
    add b
    rst $20
    ld [hl], a
    ld b, h
    nop
    or $05
    ld a, [hl-]
    inc h
    nop
    ld h, l
    or d
    ld [hl+], a
    add c
    ldh [$5e], a
    ld hl, $87a0
    ld sp, hl
    ld b, e
    jr nz, jr_067_4462

    inc h
    ld bc, $4484
    jp nz, Jump_000_03fa

    add c
    add c
    dec c
    add b
    ld b, h
    ld bc, $0060
    cpl
    ld b, c
    rlca
    ld h, c
    jr nz, jr_067_447d

    jp nz, Jump_067_6e07

jr_067_44fa:
    ld h, c
    cp a
    ld h, $60
    ld h, h
    cp l
    ld [hl+], a
    nop
    ret nz

    add sp, $01
    and h
    sbc [hl]
    inc h
    adc a
    inc b
    add b
    db $e4
    nop
    ld h, d
    cp a
    dec h
    jr jr_067_4555

    ld [$433e], sp
    pop bc
    jr nz, jr_067_4596

    ldh [$2d], a
    add c
    ld b, c
    ld b, c
    and e
    add [hl]
    push bc
    ld e, d
    ld b, c
    jr nz, jr_067_44fa

    ld b, h
    ld b, e
    ld h, e
    ld l, d
    add hl, bc
    ld a, [hl]
    ld b, d
    ld a, [hl]
    add b
    ld l, l
    nop
    ld c, b
    ld sp, $00e2
    ret nc

    inc b
    pop bc
    jr z, jr_067_4578

    and $6a
    inc l
    ei
    inc h
    ret nz

    dec h
    rst $38
    ld h, c
    or b
    ld b, b
    ld b, b

Jump_067_4544:
jr_067_4544:
    rst $20
    ld [bc], a
    call nc, Call_067_7607
    db $e4
    ret nz

    xor $6a
    dec b
    add e
    and d
    dec bc
    inc a
    ld b, b
    dec b
    ld l, e

jr_067_4555:
    ld a, $a1
    dec l
    ld c, l
    pop hl
    call nc, $c00c
    dec b
    ccf
    ld a, [hl+]
    ld a, $46
    ld b, $4e
    nop
    ld l, e
    ld c, e
    rst $38
    db $e3
    jp z, $d020

    ld h, h
    reti


    add [hl]
    add a
    ld [hl+], a
    nop
    cp l
    and $bf
    add hl, hl
    or [hl]
    inc bc

jr_067_4578:
    adc $64
    ld [$d046], sp
    ld h, l
    cp l
    ld l, b
    ld b, b
    rst $20
    jr jr_067_4544

    db $ec
    sbc [hl]
    and l
    sub c
    nop
    dec l
    dec l
    db $fc
    ldh [$89], a
    ld bc, $64e1

Jump_067_4591:
    nop
    push de
    adc $3b
    rlca

jr_067_4596:
    ld [hl], h
    ld h, $3e
    ld b, [hl]
    cp e
    pop bc
    dec d
    add b
    add a
    ld [bc], a
    db $10
    add l
    nop
    add b
    xor $00
    nop
    nop
    db $dd
    and b
    rst $38
    db $ec
    ret c

    push de
    ret c

    db $ed
    pop hl
    sbc $df
    or $e7
    ldh [$e8], a
    jp hl


    ld [c], a
    ldh [$e2], a
    db $e3
    and b
    and b
    db $e3
    and $e7
    reti


    db $ed
    jp z, $c2f3

    ldh [$d2], a
    ret nc

    jp nc, $bf9e

    pop hl
    ldh [$e1], a
    and b
    ld [$e7a5], a

jr_067_45d3:
    or a
    ldh [$eb], a
    sbc $be
    ld a, [$d0d3]
    db $d3
    and b
    db $dd
    ldh [$d8], a
    jp nc, $d0df

    pop de
    ret nc

    jp nc, $8ad7

    db $e4
    and b
    sbc a
    ld a, l
    sbc l
    rst $38
    db $e3
    sbc a
    and b
    and b
    db $ec
    db $ed
    ld a, [hl]
    ld a, [$d7d7]
    call nc, $ddd7
    pop hl
    rst $10
    add d
    ldh [$d4], a
    rst $10
    ld e, c
    jp c, $e293

    jp $9ce0


    ld b, [hl]
    rst $38

Jump_067_460a:
    db $e3
    sbc h
    cp l
    ld [c], a
    db $76
    dec h
    db $e3
    db $e4
    push hl
    dec [hl]
    pop af
    jp c, $dad9

    ld sp, hl
    ld [c], a
    xor [hl]
    cp b
    ldh [$d9], a
    jp c, $93dc

    pop hl

Jump_067_4622:
    sbc a
    jp $c3e1


    and l
    sub b
    rst $38
    push hl
    or [hl]
    ld a, h
    ldh [$5b], a
    pop hl
    ld [$d3f5], a
    call c, $db8b
    call c, $c1cd
    call c, $e0b8
    or $e0
    ld b, a
    ldh [$a2], a
    ld [de], a
    add h
    ld [c], a
    call nz, $e0c0
    cp h
    db $e4
    sbc [hl]
    ld e, e
    db $e3
    xor h
    jp $c6d0


    jr nc, jr_067_45d3

    ret


    call $b8c0
    ld [c], a
    ld [$b6e0], sp
    sub b
    ld b, [hl]
    pop hl
    add e
    db $e3
    nop
    cp h
    db $e3

Call_067_4661:
    add b
    pop hl
    ld e, e
    db $e4
    or l
    pop bc
    ret nc

    jp nz, $cc84

    ld d, a
    ret nz

    adc l
    pop bc
    jp $e7e6


    pop bc
    ldh [$88], a
    rst $20
    cp h
    db $e3
    ld b, c
    ldh [$de], a
    rst $18
    ret nz

    and e
    db $e3
    or l
    jp nz, $e275

    rrca
    call nz, $c04e
    ld [hl], d
    jp hl


    add sp, -$17
    ld a, c
    sbc [hl]
    ld c, h
    ld [c], a
    ld b, h
    pop hl
    sub c
    ld b, l
    ld b, l
    sub c
    ld b, d
    push hl
    ret nz

    ld h, c
    pop hl
    pop hl
    and [hl]
    ld [hl], l
    push hl
    add l
    pop bc
    ld c, h
    jp nz, $a1cb

    ret c

    push de
    ld a, [c]
    call nz, $9ea3
    ld c, h
    ld [c], a
    pop bc
    pop hl
    cp l
    inc l
    inc l
    cp l
    add b
    cp a
    ld [c], a
    pop bc
    ret nz

    ld l, $c2
    sub e
    push hl
    ld [hl], l
    db $e4
    adc h
    call nz, $a0cc
    rst $10
    adc [hl]
    push bc
    and c
    sub $d4
    sub $bd
    pop hl
    ld b, b
    db $e3
    add l
    ret nz

    ld b, [hl]
    rst $18
    dec l
    jr nz, @+$22

    ld [hl-], a
    ld b, l
    add b
    jp $9fa2


    ld e, b
    xor a
    and c
    sub e
    rst $20
    add l
    rst $00
    jp c, $02d9

    ret nz

    jp c, $a0bd

    push bc
    sub $02
    pop bc
    sub $b7
    and b
    ret nz

    ret nz

    ld b, [hl]
    jp nz, Jump_067_4591

    rrca
    ld a, [hl+]
    ld h, $24
    ld b, d
    ld a, [hl]
    call nz, $c13e
    sub e
    and $64
    xor b
    call nz, $c044
    ld [bc], a
    ret nz

    call c, $a07d
    ld [hl], a
    db $e3
    ld b, c
    and c
    sbc a
    or [hl]
    cp [hl]
    ld a, $e3
    ld b, [hl]
    add hl, sp
    dec [hl]
    inc a
    ld b, h
    ld [hl-], a
    db $e4
    jp $fd50


    and c
    sub e
    push hl
    ld [bc], a
    rst $08
    add h
    and b
    db $dd
    ld [hl], a
    pop hl
    db $dd
    ld h, [hl]
    jp nz, $a17d

    ld a, [hl]
    jp Jump_000_3a44


    dec [hl]
    dec [hl]
    ld b, d
    ld a, h
    push bc
    ldh a, [$bc]
    and d
    sub e
    db $e4
    jp nc, Jump_067_7dc8

    and [hl]
    db $d3
    ret nc

    ret nc

    db $dd
    rst $00
    reti


Call_067_4743:
    db $dd
    pop de
    sbc e
    and c
    cp l
    ret nz

    ld b, $c2
    ld b, b
    dec [hl]
    ld b, a
    dec [hl]
    dec [hl]
    add hl, sp
    ld a, [hl]
    jp nz, $a276

    cp h
    and b
    db $eb
    db $dd
    and e
    ld [hl], b
    sub l
    ret nz

    db $d3
    ret nz

    ld c, b
    jp $c489


    call c, $d4d7
    or a
    ret nz

    ld hl, sp+$00
    and c
    cp [hl]
    and e
    ld b, c
    pop bc
    ld b, h
    ld [hl], $35
    dec [hl]
    ld a, [hl-]
    or h
    cp a
    jp nz, $c26e

    sbc [hl]
    cp c
    add [hl]
    db $d3
    sub $8b
    pop bc
    sub $0c
    adc d
    add b
    or a
    rst $20
    jp c, $b7d9

    ret nz

    nop
    and c
    inc bc
    add c
    ld a, a
    ldh [rIF], a
    sub c
    ld b, l
    ld c, b
    ld c, c
    ld a, a
    pop hl
    ccf
    push hl
    db $fc
    add d
    pop hl
    ld h, e
    ld bc, $d9d8
    ret nz

    sub [hl]
    add c
    ld c, d
    add b
    or a
    and $fc
    add b
    or a
    ret nz

    nop
    and d
    cp h
    inc bc
    add b
    ccf
    ldh [rLYC], a
    ld b, a
    ld h, b
    ld d, d
    add b
    ldh [$35], a
    cp c
    ld b, b
    cp l
    add a
    pop hl
    ld h, l
    db $d3
    ret nc

    db $dd
    sub [hl]
    add c
    db $dd
    sub b
    dec d
    add b
    or a
    and $b9
    add e
    cp b
    add b
    db $eb
    adc l
    ld h, c
    ld a, h
    and b
    ld b, l
    rst $38
    ld d, [hl]
    ld h, c
    add hl, sp
    dec [hl]
    dec [hl]
    jr c, @+$39

    ld b, h
    ld [hl], c
    sub c
    nop
    and c
    ld a, [$e161]
    ld h, [hl]
    db $d3
    ret nc

    pop de
    push de
    ret nz

    rra
    ret nc

    ret nc

    db $d3
    jp c, $b7a0

    and $27
    add l
    sub $62
    sbc $be
    add b
    call nz, Call_067_5591
    ld d, d
    add c
    ret nz

    ld b, b
    ld e, a
    ccf
    ld c, c
    ld b, l
    sub c
    call nz, $a190
    rlca
    add c
    pop hl
    ld h, l
    inc a
    pop de
    ld h, b
    sub $c2
    call nc, $dcd7
    and b
    or a
    and $1c
    ld h, d
    ld l, [hl]
    ld c, h
    ld h, d
    sbc a
    and d
    sbc l
    cp [hl]
    add d
    ld b, l
    ld b, e
    pop bc
    ret nz

    cpl
    ld [hl], $52
    ld h, c
    ld d, e
    ei
    add b
    sbc [hl]
    db $fc
    ld b, c
    pop hl
    ld h, h
    nop
    pop de
    ld h, c
    sub $c2
    bit 4, c
    or a
    and $27
    add e
    and c
    ld h, b
    add c
    add c
    add c
    and e
    ei
    ld b, [hl]
    ld b, l

Jump_067_4845:
    nop
    ret nz

    ld [hl], $52
    ld h, b
    ld b, a
    ld b, l
    nop
    ret nz

    ld h, b
    or e
    ld b, b
    pop hl
    ld h, l
    adc l
    and d
    sub $60
    ret


    and d
    or a
    push hl
    add l
    ld b, e
    call c, $8442
    cp a

jr_067_4861:
    add d
    sub c
    ld b, l
    ld d, b
    rst $38
    ret nz

    dec [hl]
    add hl, sp
    rlca
    ld e, [hl]
    ld h, c
    ld e, h
    ld b, c
    and h
    ret


    add a
    sub $c2
    ld b, [hl]
    ld h, e
    or a
    db $e4
    ret c

    add l
    ld b, e
    ld b, d
    add l
    ld b, e
    add d
    ld b, a
    ld e, l
    cp a
    and c
    ld a, [hl-]
    ld d, e
    ld bc, $bc53
    add c
    ld a, $61
    ld a, e
    ld b, b
    adc c
    xor l
    or a
    push hl
    add l
    ld b, [hl]
    ld b, d
    add [hl]
    ld l, $40
    push bc
    dec [hl]
    ld b, b
    ld b, [hl]
    ei
    ld h, b
    jp $a2c2


    ld e, e
    add a
    jr nc, jr_067_48f5

    ld b, c
    dec sp
    ld l, c
    and h
    add $42
    add [hl]
    ld b, l
    ld d, d
    ld b, b
    pop bc
    ld a, $c0
    add l
    ld b, d
    cp e
    ld h, c
    call nz, Call_067_41fe
    ld e, e
    adc b
    cpl
    ld b, b
    dec sp
    ld l, b
    db $eb
    cp b
    and h
    rst $00
    ld bc, $8683
    ld b, b
    sub c
    ld b, l
    ld e, e
    pop bc
    add b
    dec [hl]
    daa
    ld [hl], $47
    ld c, h
    ret nz

    ret nz

    ld a, [hl]
    ld b, d
    ld [$8a5b], a
    dec sp
    ld l, b
    ldh [$e2], a
    jr nz, jr_067_4861

    ld b, h
    ld b, c
    ld hl, $6100
    add [hl]
    ld b, b
    sub c
    ld b, [hl]
    ld b, h
    dec c
    inc a
    ret nz

    pop hl
    ld d, d
    ld h, c
    ret nz

    add $5b
    adc e
    dec sp
    ld l, b
    and h
    add $fa

jr_067_48f5:
    ld [hl], a
    ld [hl+], a
    sbc a
    nop
    jp nz, Jump_067_4845

    ld c, b
    scf
    jr c, jr_067_4904

    cp a
    db $e3
    add b
    ret nz

jr_067_4904:
    sbc [hl]
    db $ed
    ld [bc], a
    ld e, e
    adc b
    or b
    ld b, [hl]
    inc [hl]
    adc d
    ld [hl], a
    ld hl, $c4bc
    nop
    nop
    add c
    ld d, c
    ld e, a
    ld h, c
    ld e, h
    ret nz

    jp nz, Jump_000_0539

    ld e, e
    cp d
    ld b, b
    and c
    jr nz, jr_067_4965

    ld e, e
    add a
    or b
    ld b, e
    rlc h
    xor e
    push bc
    ld h, b
    ld [hl], a
    ld [hl+], a
    pop bc
    add e
    ret nz

    ret nz

    add c
    jp $803e


    ret nz

    ld b, [hl]
    add d
    ld h, b
    ret nz

    db $ed
    ld [bc], a
    ld e, e
    add a
    sbc $02
    jp Jump_000_0604


    ld h, [hl]
    ld [hl], a
    ld [hl+], a
    ld [c], a
    db $e3
    ld d, [hl]
    ld a, l
    and d
    sub c
    ld b, l
    add c
    jp nz, Jump_000_3d35

    ld h, b
    pop bc
    db $76
    jr nz, jr_067_4956

jr_067_4956:
    rst $38
    jp $875b


    add e
    add hl, bc
    xor e
    ret z

    rst $38
    add d
    ld a, l
    and e
    ld b, d
    and c
    ld a, a

jr_067_4965:
    ld [c], a
    add e
    ld b, b
    jp nz, Jump_000_2174

    ld a, l
    add d
    adc $a9
    ccf
    ld h, l
    ld b, $69
    ld [$8404], a
    ld bc, $23bf
    sub c
    add c
    db $e4
    dec a
    ld h, b
    cp a
    and e
    inc a
    call nz, $64bd
    ret c

    ld de, $0644
    ld l, e
    ld b, c
    add c
    db $e4
    push hl
    cp a
    inc hl
    ld b, [hl]
    ld a, $04
    ret nz

    push hl
    dec a
    ld h, c
    push bc
    ld a, $64
    inc b
    dec h
    ld de, $0645
    ld l, l
    rst $38
    rlca
    cp [hl]
    add b
    rst $20
    dec [hl]
    ld b, d
    jp $c690


    db $76
    ld [bc], a
    sbc [hl]
    nop
    ld a, [$8361]
    ret nz

    or [hl]
    and a
    cp h
    add h
    ld b, $64
    jr nz, jr_067_49dd

    cp a
    inc hl
    nop
    and $1f
    inc a
    ld b, h
    call nz, $c790
    ld a, $43
    ld a, [$5261]
    add d
    nop
    ld de, $ab45
    res 6, e
    dec b
    cp a
    ld [hl+], a
    rst $38
    add $7d
    ld b, e
    inc a
    add d
    ld a, [$0061]
    ld a, c
    ld [bc], a

jr_067_49dd:
    ld de, $3045
    adc e
    or e
    ld b, $bf
    ld [hl+], a
    ld bc, $bf41
    and d
    pop bc
    call nz, $be00
    add c
    sbc e
    dec b
    ld de, $8945
    rlca
    ld h, b
    and d
    dec hl
    push hl
    rst $38
    ld [hl+], a
    nop
    and b
    ld sp, $00b3
    jp nz, $e033

    ld sp, $b600
    sbc a
    ret


    add hl, hl
    ld de, $6e44
    or a
    daa
    ldh [$e1], a
    ld [$06b3], a
    sbc $df
    cp h
    ld bc, $420f
    dec [hl]
    dec [hl]
    or h
    add b
    and d
    jp nz, Jump_067_7e22

    ld h, b
    ret


    daa
    and b

jr_067_4a24:
    ld de, $0046
    ld b, a
    ld h, b
    and d
    or e
    inc b
    cp $22
    call nz, Call_067_6001
    or l
    nop
    ld a, $26
    ld bc, $c941
    daa
    reti


    and c
    ld de, $0042
    ld c, d
    or e
    ld b, $fe
    ld [hl+], a
    inc b
    cp [hl]
    and l
    cp [hl]
    ld bc, $84b6
    and c
    ret


    jr z, @+$39

    dec h
    nop
    ld b, a
    xor l
    ld [$2210], sp
    nop
    dec a
    add e
    ccf
    ldh [rSB], a
    db $e4
    and c
    dec hl
    ld hl, $28c9
    sub c
    ld b, h
    pop af
    and b
    nop
    ld b, a
    db $e4
    ret


    dec sp
    ld h, b
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [$c1bf], sp
    ccf
    ld hl, $00c3
    sbc [hl]
    ld b, c
    add c
    ret


    jr z, jr_067_4ab1

    ld h, $b7
    ld h, $7c
    db $e4
    ret


    add c
    nop
    ld [$989a], sp
    ld [$3fc3], sp
    jp Jump_067_4000


    ld [c], a
    ld b, c
    add c

Call_067_4a90:
Jump_067_4a90:
    ret


    jr z, jr_067_4a24

    ld b, [hl]
    or a
    dec h
    db $e4
    ret


    ld [bc], a
    ld hl, $e180
    ld bc, $40c4
    ld [c], a
    ccf
    inc bc
    nop
    ld b, c
    ret


    add hl, hl
    dec [hl]
    dec h
    or a
    dec h
    xor l
    ld [$e407], sp
    push hl
    and c
    inc a

jr_067_4ab1:
    ld b, h
    ld a, $82
    jp nz, $bfa4

    inc h
    ret


    dec h
    ld b, b
    dec [hl]
    dec h
    or a
    dec h
    xor l
    ld [$247c], sp
    ld a, l
    ld b, c
    ld a, a
    nop
    ld [hl], $43
    and c
    nop
    add e
    add c
    ld b, b
    ld b, b
    ld c, e
    pop bc
    jp c, Jump_000_3503

    ld h, $00
    ld b, [hl]
    xor l
    rlca
    or $00
    ld e, $7d
    ld b, h
    sub b
    ld b, l
    ld [hl], $36
    inc bc
    ld b, c
    xor $22
    ret nz

    ld hl, $cc80

jr_067_4aea:
    daa
    dec [hl]
    daa
    nop
    ld b, h
    xor l
    rlca
    ld a, l
    ld h, [hl]
    inc a
    ld h, c
    pop bc

Call_067_4af6:
    db $e4
    jp $ff40


    inc bc
    and b
    add l
    cp $ec
    nop
    ld b, c
    xor l
    ld b, $69
    ld hl, $beea
    ld b, d
    nop
    ld [hl], $25

Jump_067_4b0b:
    xor a
    ld bc, $4500
    and b
    add e
    ld e, c
    nop
    cp e
    xor $f6
    rst $00
    ld a, l
    jp $c404


    and $b0
    ld [bc], a
    and c
    xor d
    and c
    and b
    add [hl]
    ld sp, hl
    ld h, b
    rst $38
    or $69
    inc hl
    cp [hl]
    ld a, h
    ld h, b
    ld b, l
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [$af], a
    add b
    nop
    and b
    ld b, c
    ld bc, $00d0
    and b
    add l
    db $dd
    ret nz

    jp nz, Jump_067_460a

    and h
    ld [$c4f8], a
    ld hl, $2169
    cp l
    jr nz, jr_067_4aea

    sub b
    ld b, d
    xor h
    dec sp
    or e
    dec [hl]
    dec sp
    db $fd
    ldh [$7e], a
    ret nz

    or [hl]
    sbc a
    ld b, c
    and d
    db $d3
    ret nz

    and b
    add l
    ld sp, hl
    ld b, [hl]
    cp a
    dec l
    xor d
    jr nz, @-$5e

    ld h, c
    cp l
    ld [hl+], a
    ld b, d
    xor l

Call_067_4b6b:
    dec sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    ld b, h
    ld b, c
    and l
    ret nc

    ld bc, $81c2
    ld h, e
    db $eb
    jp nz, $bf08

    add hl, hl
    xor d
    inc h
    add b
    add d
    ld b, d
    dec [hl]
    ccf
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld a, a
    add b
    ld b, c
    and h
    nop
    ret nc

    ld b, $42
    nop
    jp nz, $bf08

    ld l, $fb
    jr nz, jr_067_4c18

    ld b, b
    ret nz

    ldh [$c2], a
    ld b, c

Jump_067_4ba1:
    nop
    ret nz

    pop hl
    ld b, a
    ld b, d
    rlca
    ld h, e
    ccf
    ld h, [hl]
    ld a, h
    daa
    ld l, d
    ld a, [bc]
    jr nc, jr_067_4bb4

    cp h
    jr nz, jr_067_4be2

    ld b, h

jr_067_4bb4:
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    ld h, c

jr_067_4bbc:
    add e
    and l
    and b
    call nc, Call_000_3d09
    ld h, $bf
    ld a, [hl+]
    sbc [hl]
    and h
    add c
    ld h, c
    ld [hl], $c0
    push bc
    call nz, $83e0
    and e
    call nc, $060c
    rst $00
    cp a
    jr z, jr_067_4c15

    ld b, [hl]
    sbc l
    or [hl]
    sub c
    dec c
    ld b, l
    ld b, b
    jp $9145


    add d

jr_067_4be2:
    ld h, d
    push hl
    ld [hl+], a
    dec d
    rst $28
    cp a
    inc l
    nop
    ld a, $46
    ld a, l
    ld h, b
    rst $38
    and $03
    jp nz, Jump_067_62d0

    dec d
    xor $85
    and l
    ld l, d
    dec b
    nop
    sbc [hl]
    and l
    ld e, [hl]
    xor h
    ret nc

    ld h, l
    call nc, Call_067_420a
    or c
    ld a, $45
    ld d, a
    jr nz, jr_067_4bbc

    and d
    jr nc, jr_067_4c3a

    ld bc, $210b
    ret nc

    ld h, h
    call nc, $a00c

jr_067_4c15:
    and b
    nop
    nop

jr_067_4c18:
    nop
    pop bc
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
    nop
    nop
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $eb
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $f4
    nop
    nop

jr_067_4c3a:
    nop
    ld [bc], a
    nop
    dec e
    dec b
    ld [bc], a
    ld bc, $0621
    ld [bc], a
    ld [bc], a
    dec h
    rlca
    ld [bc], a
    inc bc
    add hl, de
    ld [$0402], sp
    dec d
    add hl, bc
    ld [bc], a
    dec b
    rla
    inc c
    ld [bc], a
    ld b, $23
    inc c
    ld [bc], a
    rlca
    add hl, hl
    dec c
    ld [bc], a
    ld [$0e1b], sp
    ld [bc], a
    add hl, bc
    daa
    rrca
    ld [bc], a
    ld a, [bc]
    add hl, de
    inc de
    ld [bc], a
    dec bc
    dec h
    inc de
    ld [bc], a
    inc c
    ld d, $16
    ld [bc], a
    dec c
    inc de
    jr jr_067_4c76

    ld c, $28

jr_067_4c76:
    add hl, de
    ld [bc], a
    rrca
    rla
    dec de
    ld [bc], a
    db $10
    daa
    rra
    ld [bc], a
    ld de, $2019
    ld [bc], a
    ld [de], a
    ld d, $22
    ld [bc], a
    inc de
    add hl, hl
    ld [hl+], a
    ld [bc], a
    inc d
    ld h, $24
    ld [bc], a
    dec d
    dec hl
    inc h
    ld [bc], a
    ld d, $18
    dec h
    ld [bc], a
    rla
    jr z, @+$29

    ld [bc], a
    jr jr_067_4cc3

    jr z, jr_067_4ca2

    add hl, de
    dec de

jr_067_4ca2:
    add hl, hl
    ld [bc], a
    ld a, [de]
    inc h
    inc l
    ld [bc], a
    dec de
    inc e
    ld l, $02
    inc e
    rla
    cpl
    ld [bc], a
    dec e
    ld h, $30
    ld [bc], a
    ld e, $1a
    ld sp, $1f02
    dec e
    inc sp
    ld [bc], a
    jr nz, jr_067_4ce5

    inc sp
    ld [bc], a
    ld hl, $3523

jr_067_4cc3:
    ld [bc], a
    ld [hl+], a
    inc e
    scf
    ld [bc], a
    inc hl
    ld a, [de]
    dec sp
    ld [bc], a
    inc h
    dec h
    dec sp
    rst $38
    rst $38
    rst $38
    jp c, Jump_067_574c

    ld d, b
    db $fc
    ld d, h
    dec de
    ld d, l
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $ea

jr_067_4ce5:
    ld a, [de]
    ld [$4de1], a
    ld [c], a
    pop hl
    ld c, l
    inc c
    rst $38
    ld sp, hl
    ret


    pop hl
    jp Jump_067_7ce3


    or $ed
    db $fd
    pop hl
    ld c, l
    ld c, l
    dec c
    ld c, l
    ld l, l
    ret nz

    db $fd
    ldh a, [$85]
    xor $71
    ldh [$86], a
    pop hl
    ld h, l
    ld [c], a
    ld l, l
    ld l, e
    dec c
    ld c, h
    pop de
    ld c, h
    ret nz

    db $fc
    add l
    xor $32
    db $e4
    ld c, l
    pop bc
    pop hl
    ld l, e
    dec c
    ld h, c
    ld l, e
    cp a
    ld sp, hl
    nop
    db $f4
    push bc
    ldh [$83], a
    pop hl
    dec c
    ld l, e
    rst $38
    ld [c], a
    ld bc, $ff4c
    ldh [rP1], a
    rst $38
    or $c9
    ld b, h
    push hl
    add c
    pop hl
    cp h
    pop hl
    dec sp
    or $04
    add l
    db $d3
    inc b
    ld [c], a
    ld c, l
    add $e3
    cp [hl]
    ld [c], a
    dec sp
    or $85
    ret nc

    ld b, h
    pop hl
    ld a, [c]
    ld bc, $0be3
    rst $38
    pop hl
    rst $38
    ret nz

    dec bc
    dec c
    dec bc
    ld l, e
    pop hl
    dec bc
    cp c
    db $d3
    nop
    pop de
    ld a, l
    db $e3
    add sp, -$60
    ld c, e
    ld c, e
    dec c
    ld c, a
    ld c, e
    dec hl
    dec bc
    dec bc
    ld sp, hl
    ldh [$ba], a
    ldh [$0b], a
    nop
    rst $38
    sbc h
    pop bc
    rst $20
    ld [$4dc0], sp
    ld l, l
    ld c, e
    ret nz

    ldh [$c1], a
    ldh [$2b], a
    add a
    ld a, [bc]
    dec bc
    ld c, e
    ld a, c
    ret nz

    ret nz

    or $85
    call $c308
    dec bc
    dec b
    dec bc
    add c
    ldh [rWX], a
    add c
    ld [c], a
    ret nz

    ldh [rPCM34], a
    ret nz

    nop
    rst $18
    add l
    and a
    adc b
    pop bc
    ldh [$0b], a
    ldh [$c0], a
    db $e4
    ld a, [bc]
    ret nz

    ld [c], a
    nop
    rst $18
    add l
    xor b
    dec c
    ld hl, sp-$32
    ret nz

    add hl, bc
    ldh [$80], a
    pop hl
    ld c, e
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    ld bc, $004b
    cp a
    nop
    xor b
    dec bc
    and b
    adc [hl]
    ret nz

    ld [bc], a
    pop hl
    ret nz

    pop hl
    cp b
    pop hl
    jr z, jr_067_4dc2

jr_067_4dc2:
    cp a
    ld a, e
    adc c
    res 0, b
    dec l
    add c
    ld [c], a
    dec c
    ret nz

    jp nz, $c079

    add h
    nop
    cp a
    ld a, e
    add a
    ld c, l
    ld c, d
    add c
    cp a
    ldh [$82], a
    pop hl
    add b
    ret nz

    ld a, [bc]
    ld hl, $396b
    ret nz

    cp l
    sub a
    add l
    sub b
    ld a, [bc]
    add e
    dec l
    add b
    pop bc
    ld b, d
    pop bc
    or b
    ld a, [hl-]
    pop bc
    jp Jump_000_00b4


    sub [hl]
    call nz, Call_000_0d61
    dec l
    ret nz

    db $e3
    dec hl
    ld h, d
    ld a, [hl-]
    ldh [$0b], a
    ld a, [hl]
    or $00
    cp b
    ld [bc], a
    ld [c], a
    ld a, [bc]
    dec hl
    ld hl, sp-$5f
    add e
    dec c
    ld l, e
    dec a
    push af
    nop
    or c
    ld [$4780], sp
    ld h, d
    cp $c2
    ld l, e
    pop bc
    ld a, [bc]
    or a
    and b
    ld [hl], $a1
    nop
    rst $38
    nop
    xor h
    ld [bc], a
    add c
    ld a, [bc]
    dec c
    and c
    ld c, e
    ld [hl], a
    and h
    ret nz

    or $00
    or b
    cp a
    ld h, d
    ld l, l
    jp Jump_067_6b80


    inc b
    ld a, e
    jp nz, $e03d

    dec c
    cp [hl]
    or l
    add l
    ld d, d
    ld a, $a2
    ld b, e
    ld [c], a
    ld a, e
    and h
    ld d, b
    db $fd
    or a
    add l
    ld d, b
    cp [hl]
    add d
    inc bc
    ld [c], a
    dec c
    ld b, e
    pop bc
    ld l, e
    cp a
    db $e3
    call nz, $df00
    or $26
    ld c, l
    cp [hl]
    pop bc
    inc c
    ld [c], a
    inc bc
    pop bc
    ld a, [bc]
    ld l, d
    ld [de], a
    cp [hl]
    and b
    dec c
    add b
    ret c

    nop
    sub d
    ld c, l

jr_067_4e69:
    ld [bc], a
    ret nz

    nop
    ldh [$83], a
    ldh [$03], a
    ld a, [bc]
    ld a, [hl+]
    cp l
    and b
    inc sp
    add b
    cp h
    ld d, e
    add l
    dec [hl]
    db $fd
    add b
    ld bc, $02a1
    ld a, [hl]
    ret nz

    ld l, d
    dec a
    add c
    di
    ld h, d
    rst $30
    ld sp, $f100
    ld a, a
    jp $e27e


    inc bc
    dec hl
    ld a, [bc]
    add c
    ldh [$f9], a
    ld b, d
    ld [hl], e
    add c
    nop
    rst $38
    ld a, l
    ld h, [hl]
    add sp, $01
    nop
    pop bc
    db $e3
    cp e
    ld b, d
    ld sp, hl
    add b
    ret nz

    push af
    nop
    sub c
    ld a, $e4
    add c
    pop hl
    add d
    pop hl
    jr nc, jr_067_4e69

    add h
    ret nz

    db $f4
    nop
    jr nc, @+$01

    add [hl]
    ld a, [hl+]
    ld a, [bc]
    add e
    ld [c], a
    cp e
    ld b, b
    ret nc

    ld a, [$0074]
    pop de
    cp e
    dec h
    ld a, [hl]
    and b
    ld a, [hl+]
    ld [bc], a
    pop hl
    dec c
    ld l, e
    ld b, c
    dec hl
    ret nz

    pop hl
    nop
    rst $18
    or $c8
    db $fc
    and b
    ld a, [hl]
    and c
    ld l, e

jr_067_4ed8:
    cp l
    ld hl, $b800
    jr nz, jr_067_4ed8

    ld h, b
    nop
    cp a
    nop
    ld h, [hl]
    inc bc
    and c
    inc bc
    ld b, c
    ld [bc], a
    ld b, c
    ld bc, $00e3
    db $fc
    ld d, [hl]
    nop
    rst $08
    ld b, c
    ld b, d
    call nz, $4042
    and c
    ld a, d
    ld b, c
    ld b, c
    ld hl, sp+$00
    ld d, b
    ldh a, [rDMA]
    jp nz, $a18f

    ld a, [$85e1]
    jr nz, jr_067_4f10

    ld c, e

Jump_067_4f07:
    dec hl
    dec hl
    ret nz

    ld b, d
    pop bc
    nop
    ccf
    add l
    rlca

jr_067_4f10:
    ld b, l
    ld b, d
    cp d
    pop hl
    dec b
    jp nz, Jump_000_2b2b

    nop
    cp h
    add c
    ret nz

    push de
    add l
    xor h
    inc bc
    and h
    ld b, e
    ld [hl+], a
    ret nz

    push hl
    ld sp, hl
    ld h, d
    nop
    rst $38
    nop
    or $87
    jp nz, $c381

    ld bc, $6000
    add d
    nop
    ld a, $80
    ret nz

    ld a, d
    nop
    pop de
    nop
    jp Jump_067_4222


    pop bc
    ld a, l
    ld h, e
    ccf
    ld [hl], $00
    push de
    ld b, e
    inc hl
    pop bc
    ldh [$7b], a
    add b
    nop
    ld b, d
    scf
    nop
    sub [hl]
    ld b, h
    inc bc
    adc c
    and b
    ld b, [hl]
    rst $30
    nop
    or d
    push bc
    ld h, d
    ld [bc], a
    add e
    nop
    add d
    ld [hl+], a
    ld c, b
    add c
    ret nz

    cp $85
    db $ec
    jp Jump_067_4126


    pop hl
    ret nz

    rst $38
    add l
    ld l, e
    nop
    ld b, h
    add h
    add e
    inc hl
    jp nz, Jump_067_43c1

    add hl, de
    nop
    pop de
    inc bc
    add c
    add h
    add d
    add c

jr_067_4f7d:
    ld [c], a
    nop
    cp d
    pop bc
    add e
    rla
    nop
    ldh a, [rLCDC]
    ld bc, $8082
    ld [bc], a
    ld b, b
    inc b
    and e
    ld a, b
    ld b, c
    jr jr_067_4f91

jr_067_4f91:
    rst $38
    add l
    add hl, hl
    ld b, h
    ld b, b
    ld l, l
    ld l, e
    ld c, l
    ld b, b
    dec bc
    and b
    jp $1022


    ld a, a
    db $db
    nop
    ld l, h
    ld b, $60
    ld b, e
    add b
    ld l, e
    rst $38
    ldh [$84], a
    dec h
    add b

jr_067_4fad:
    rst $18
    nop
    nop
    db $ec
    add b
    ldh [$c0], a
    pop hl
    adc c
    jr nz, jr_067_4f7d

    ld h, c
    pop bc
    call c, Call_067_6b00
    adc b
    ld b, $50
    cp [hl]
    pop hl
    add a
    nop
    ld b, e
    db $fd
    nop
    ld sp, $cc4d
    jr nz, jr_067_4ff7

    ld c, [hl]
    ld h, b
    nop
    inc c
    ld b, d
    jp nz, Jump_000_00fd

    ld [hl], b
    ld b, d
    ldh [$cf], a
    inc hl
    ld c, c
    ld b, c
    pop bc

jr_067_4fdc:
    cp $00
    adc l
    inc h
    ret nz

    rst $38

jr_067_4fe2:
    nop
    cp a
    dec l
    ret z

    add b
    adc l
    ld b, b
    dec l
    ld c, c
    jr nz, jr_067_4fad

    rst $38
    nop
    nop
    pop de
    rlca
    and c
    ld c, d
    inc hl
    ret nz

    rst $38

jr_067_4ff7:
    add l
    dec c
    ldh a, [rSB]
    ld b, b
    rst $20
    ld b, l
    cp d
    ld [$7200], sp
    rst $38
    jp nz, Jump_000_20c9

    ld l, e
    db $fd
    pop hl
    ld b, d
    sbc $00
    sub c
    pop bc
    and c
    nop
    pop bc
    ld b, h
    ld c, e
    ld b, c
    ld a, [hl]
    db $fc
    add l
    ld l, [hl]
    jp $0141


    and b
    ld c, [hl]
    ld b, d
    ld a, [hl]
    jr nz, jr_067_4fe2

    dec l
    dec a
    db $fc
    nop
    ld c, [hl]
    ld a, $c2
    ccf
    and d
    ld [hl], l
    and d
    ld c, l
    dec l
    nop
    nop
    rst $38
    nop
    ld c, d
    ld b, e
    ld h, c
    jr c, jr_067_4fdc

    or b
    ld [hl+], a
    ld b, b
    rst $38
    nop
    db $ed
    ld a, c
    ld h, d
    ld bc, $b44d
    and d
    inc sp
    add b
    ld a, h
    db $db
    add l
    ld c, $47
    nop
    ld a, d
    add h
    push af
    ld h, d
    nop
    ld [hl], h
    jr nz, @-$7e

    ld a, d
    nop
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    ei
    db $e3
    db $e4
    or $ec
    and b
    and b
    sub $d7
    and b
    rst $38
    jp c, $a0db

    and b
    sbc [hl]
    ld [$9798], sp
    rst $28
    sub a
    sub [hl]
    sub [hl]
    sub l
    rst $38
    di
    push hl
    and $e7
    ld a, a
    and b
    add sp, -$17
    ld [$eceb], a
    and b
    or $eb
    cp $c3
    ldh [$d8], a
    reti


    and b
    and b
    and b
    sbc a
    sbc l
    rlca
    sbc h
    ld [$bf98], sp
    ld [c], a
    cp l
    di
    add l
    pop af
    ld [hl], c
    ldh [$c3], a
    pop hl
    ld a, [hl]
    add e
    pop hl
    sbc a
    sbc h
    ld b, [hl]
    xor [hl]
    ld [bc], a
    rrca
    cp a
    pop hl
    ldh a, [$7c]
    db $f4
    add l
    ldh a, [$71]
    ld [c], a
    ld b, [hl]
    pop hl
    and b
    sbc a
    and d
    sbc h
    rrca
    ld b, [hl]
    ld b, [hl]
    xor a
    ld b, [hl]
    cp a
    pop hl
    ld a, h
    db $e3
    dec sp
    rst $28
    nop
    db $f4
    ld l, a
    and b
    and b
    push af
    or $83
    ldh [$ae], a
    ld b, [hl]
    rst $38
    ld [c], a
    rst $00
    ld [bc], a
    rlca
    rlca
    ld a, h
    ld [c], a
    ld a, [$00d0]
    db $f4
    ret nc

    pop de
    ld c, $44
    ld [c], a
    xor a
    ld b, [hl]
    ld b, [hl]
    cp l
    db $e3
    dec sp
    db $e4
    cp d
    rst $08
    add l
    db $d3
    daa
    and b
    jp nc, $87d3

    ret nz

    add e
    ld [c], a
    xor a
    cp [hl]
    ld [c], a
    dec sp
    db $e3
    db $fc
    ret nz

    ldh a, [$85]
    ret nc

    and b
    and b
    db $ed
    xor $d4
    push de
    rlca
    rst $28
    and b
    sbc [hl]
    ld b, d
    db $e4
    ld a, e
    db $e4
    cp c
    ret nz

    add b
    ldh a, [rP1]
    pop de
    rst $38
    and b
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    and b
    and c
    ld c, $42
    ld [c], a
    ld b, l
    ld b, c
    ld b, l
    cp l
    db $e4
    ld hl, sp-$60
    nop
    rst $38
    or $a1
    db $f4
    push bc
    ret nz

    ld [$9dc0], sp
    add h
    ret nz

    ld b, [hl]
    xor a
    ld b, l
    ld a, [hl+]
    rlca
    ld h, $2a
    ld d, b
    cp [hl]
    ldh [$79], a
    ret nz

    ret nz

    ld a, [c]
    add l
    ret nc

    adc b
    and b
    db $fc
    ld [$c6c1], sp
    jp $2042


    jr nz, @+$30

    ld e, a
    ld b, h
    add b
    cp d
    pop bc
    ld b, b
    di
    add l
    or b
    adc b
    and b
    pop bc
    pop hl
    add e
    pop bc
    ret nz

    ldh [$27], a
    adc a
    jr nz, jr_067_51a9

    ld h, b
    ld b, h
    ret nz

    rst $10
    add l
    or b
    dec bc
    and b
    and c
    ld a, h
    ld c, c
    call nz, $e080
    ld [hl+], a
    ld [hl+], a
    ld d, d
    ld d, d
    ld b, l
    cp $a0
    ldh [rLCDC], a
    call nc, $b100
    ld b, l
    pop bc
    add e
    ld [c], a
    pop bc
    and b
    ld b, h
    inc a
    dec [hl]
    ld bc, $c140
    ldh [$7e], a
    and c
    cp d
    sub d
    add l
    adc a
    jp nz, $c4c2

    pop bc
    inc b
    jp nz, Jump_000_3907

    dec [hl]
    dec [hl]
    ld a, e
    and b
    cp l
    add d
    ld a, e
    sub d
    nop
    pop de
    ld b, a
    add b
    ld e, $c0
    push bc
    xor a
    ld a, [hl-]
    srl h
    ld a, e
    and b
    add d

jr_067_51a9:
    and h
    nop
    cp a
    ld hl, sp-$7b
    add c
    ld b, a
    add d
    ld b, e
    and e
    ld b, l
    ld [hl], $cf
    rst $08
    ld a, [hl-]
    ld h, c
    ld b, l
    inc a
    and b
    ld b, c
    or l
    nop
    sub d
    jp z, $d060

    pop de
    rlca
    add b
    rst $38
    ld b, [hl]
    ld b, [hl]
    add hl, sp
    rst $08
    call z, Call_000_3ece
    xor [hl]
    ldh a, [$f9]
    add c
    ld b, c
    or h
    nop
    cp c
    ld a, e
    ret nz

    ld a, [hl-]
    adc $cb
    adc $f1
    ld a, [hl-]
    cp e
    add e
    ld b, c
    or e
    nop
    cp d
    ld b, [hl]
    xor a
    inc a
    rst $08
    cpl
    call $cbcf
    add hl, sp
    ld a, a
    ld [c], a
    xor [hl]
    ld b, c
    or d
    nop
    cp b
    ld a, [hl]
    ld [bc], a
    add b
    ld b, l
    ld a, [hl-]
    res 5, h
    dec [hl]
    dec [hl]
    ld a, a
    pop hl
    ldh a, [$b9]
    ld h, b
    ret nz

    di
    nop
    jp nc, $a43e

    xor a
    ld b, [hl]
    add hl, sp
    dec [hl]
    rst $38
    xor l
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $45
    xor [hl]
    or d
    db $10
    ld b, b
    push af
    add l
    ld d, d
    ld a, $a2
    add h
    ld h, c
    ld b, b
    jp nz, $bfe0

    pop hl
    cp b
    ld h, b
    ld h, b
    cp d
    ld b, c
    cp h
    ld d, b
    nop
    sub d
    ld c, c
    ld b, b
    ld a, [hl]
    and d
    xor [hl]
    ld b, d
    add d
    ldh [$83], a
    jr c, jr_067_526f

    ld a, [hl]
    ldh [rSCY], a
    add c
    cp l
    or d
    nop
    sub d
    ld c, b
    ld b, b
    and c
    db $fc
    add h
    ld h, d

Jump_067_5245:
    ld b, d
    and b
    ld a, [hl-]
    ld b, a
    ld d, d
    ld a, [hl-]
    cp e
    dec [hl]
    ldh a, [$bb]
    ld b, h
    ld a, $6f
    nop
    sub [hl]
    ccf
    add d
    ld b, l
    ld a, [hl-]
    dec [hl]
    add hl, sp
    rra
    ld d, d
    ld d, d
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld a, h
    ret nz

    cp l
    add e
    cp b
    dec l
    ld a, h
    add l
    ld [hl], $c2
    ld b, d
    xor [hl]
    add hl, sp
    ld [hl], $47

jr_067_526f:
    ld d, d
    db $fd
    add b
    pop bc
    bit 7, h
    jp nz, Jump_067_713e

    nop
    ld [hl], d
    ld a, $a5
    add c
    ld h, b
    ld b, a
    ld h, b
    ld a, a
    ld d, d
    ld a, [hl-]
    ld h, d
    ld h, e
    ld h, [hl]
    dec [hl]
    add hl, sp
    ld [hl], a
    ld b, c
    db $ec
    ld a, $70
    nop
    di
    jp c, Jump_000_3fdb

    ld b, b
    sbc [hl]
    ld b, [hl]
    xor [hl]
    cp $c1
    pop hl
    ld [hl], $62
    ld h, a
    dec [hl]
    ld l, b
    ld h, [hl]
    ld a, $e0
    inc [hl]
    ld b, c
    cp $50
    nop
    sub d
    call nz, Call_000_3f20
    ld b, b
    sbc a
    sbc h
    xor a
    rst $38
    ld b, h
    ld c, l
    ld h, c
    add hl, sp
    ld h, d
    ld h, a
    rst $08
    rst $08
    rst $00
    dec [hl]
    ld l, d
    ld a, $b6
    ld hl, $50be
    add l
    ld de, $d7d6
    inc a
    ccf
    ld b, e
    ld a, d
    ld h, b
    ld d, [hl]
    ld h, c
    ld a, $69
    cp h
    add b
    ret nz

    ldh [$ec], a
    cp $54
    nop
    ld d, c
    ret c

    reti


    ccf
    and h
    ld b, [hl]
    xor a
    ld d, l
    rst $38
    ld d, d
    ld a, [hl-]
    ld l, c
    adc $bb
    rst $08
    ld l, h
    ld l, l
    and c
    ld a, $be
    inc [hl]
    nop
    ld sp, $a0c1
    ld b, c
    ld b, b
    sbc l
    ld [bc], a
    ld hl, $ff45
    ld [hl], $62
    db $76
    adc $bb
    dec [hl]
    ld [hl], e
    ld l, [hl]
    or c
    add hl, sp
    db $fd
    ld [hl], h
    nop
    ld [hl], e
    ld b, b
    ld h, e
    xor a
    xor [hl]
    pop bc
    ldh [$67], a
    ret nz

    ld b, c
    ld [c], a
    cp e
    ld h, b
    inc a
    ld h, d
    add b
    xor [hl]
    nop
    rst $08
    ld b, d
    ld l, c
    add hl, sp
    dec [hl]
    jp Jump_000_3569


    dec a
    add b
    ld b, c
    ldh [$3f], a
    and e
    nop
    cp a
    and $e7
    ld hl, sp+$42
    ld h, b
    ld b, e
    and c
    ret z

    ld [bc], a
    ld a, $cb
    ld l, c
    dec [hl]
    rr a
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    add hl, sp
    ccf
    and d
    nop
    ld e, a
    jp $bc85


    ld c, c
    ld bc, $0043
    ld a, $35
    ld l, e
    ld l, h
    pop bc
    pop hl
    ld [hl], $c0
    ld a, $21
    nop
    ccf
    ld b, $40
    inc b
    ld hl, $44c3
    ret nz

    jr nz, jr_067_5395

    dec [hl]
    rrca
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], b
    pop bc
    ldh [rLCDC], a
    ld [hl], $00
    db $d3
    nop
    ld b, e
    inc c
    add b
    ld h, b
    ld b, d
    ldh [$3b], a
    dec sp
    add d
    ldh [rLCDC], a
    ld [hl], $00
    db $d3
    ld a, $e3
    dec e
    xor a
    pop bc
    ld h, c
    ld [hl], $43
    xor [hl]
    add c
    ld bc, $553f
    nop
    call nc, $fef0
    ret nz

    adc c
    ld b, b
    add e
    jr nz, @-$38

    ld h, b
    xor a
    ld [bc], a
    rlca
    rlca
    ld b, b
    ld bc, $0024
    ccf
    nop
    inc hl

jr_067_5395:
    cp [hl]
    pop bc
    jp nz, Jump_000_0720

    add b
    ld b, b
    add $64
    ld h, b
    add b
    dec [hl]
    add l
    ld [hl], b
    jp Jump_000_3f20


    inc bc
    inc b
    jr nz, @+$37

    ld b, d
    ld b, a
    ld b, c
    ret nz

    ld b, [hl]
    ld h, c
    ld b, c
    inc sp
    nop
    ld c, l
    add h
    add l
    call nz, $8181
    pop hl
    inc a
    ld b, h
    nop
    ld b, a
    ld b, d
    add $41
    pop bc
    ld a, [c]
    nop
    ret nc

    jp $8126


    pop hl
    rlca
    pop bc
    add [hl]
    ld b, d
    nop
    call nz, Call_000_00f1
    ret nc

    ld b, e
    ld h, b
    add h
    add l
    ld [bc], a
    pop hl
    rlca
    ret c

    nop
    db $f4
    push bc
    ld hl, $8280
    add b
    ld [bc], a
    ld b, b
    add h
    ld b, c
    rlca
    pop bc
    add a
    or h
    nop
    db $f4
    ld b, $66
    ld b, [hl]
    rrca
    ld b, d
    dec [hl]
    dec sp
    add hl, sp
    cp d
    and d
    ret nz

    ld a, [$4d85]
    inc b
    add c
    ld e, $43
    add d
    ld b, [hl]
    ld b, l
    ccf
    ld b, e
    ld a, [bc]
    and c
    ld bc, $40c0
    ld sp, hl
    inc b
    add l
    ld l, h
    dec b
    ld b, c
    sbc [hl]
    ld b, [hl]
    ld hl, $e4fd
    ld [$00a3], sp
    rst $38
    ld a, e
    ld h, e
    nop
    ld [bc], a
    jp nz, $40c9

    inc bc
    add d
    cp a
    add d
    ld c, d
    ld h, h
    nop
    rst $38
    ld a, e
    ld b, h
    add [hl]
    nop
    ld a, [hl]
    ld b, [hl]
    jr nz, jr_067_5472

    xor a
    ld b, c
    ld b, e
    ld b, e
    ld b, c
    ld b, c
    pop hl
    ld [hl], b
    adc e
    inc hl
    push bc
    or e
    nop
    ld [hl], c
    push bc
    add d
    ld b, l
    ld [hl], $3b
    adc d
    add b
    pop bc
    dec [hl]
    adc b
    add b
    dec bc
    dec h
    ld bc, $00f6
    adc l
    add [hl]
    ld [bc], a
    ld b, h
    inc a
    dec sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    ld b, h
    adc e
    inc d
    nop
    cp d
    rst $38
    sbc a
    sbc h
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    rrca
    and e
    ld l, d
    dec [hl]
    ld b, d
    ld b, l
    and h
    pop bc
    rst $30
    nop
    xor [hl]
    add $00

jr_067_5472:
    add hl, bc
    sbc [hl]
    ret nz

    ldh [rLYC], a
    and b
    dec [hl]
    ret nz

    ld [c], a
    call z, $c041
    ld sp, hl
    add l
    dec c
    sbc $c4
    ld h, c
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    ld hl, $8e44
    ld hl, $fb40
    add l
    dec c
    call nz, $a160
    ret nz

    add $4b
    ld b, d
    jr @+$44

    reti


    nop
    sub d
    ld a, a
    ret nz

    ld b, e
    xor [hl]
    ld b, b
    jp nz, $c002

    add a
    ld h, d
    inc a
    ret nz

    ld hl, sp+$00
    inc l
    push af
    or $d0
    pop de
    ld bc, $80a3
    ld b, d
    rlca
    sbc h
    sbc l
    sbc h
    rlc d
    ld b, b
    rst $10
    nop
    adc [hl]
    ld b, a
    nop
    ld b, e
    ld h, d
    ld b, $c3
    pop hl
    sbc l
    sbc a
    dec sp
    nop
    pop bc
    ld h, e
    nop
    rst $38
    add l
    ld [bc], a
    jp $1461


    jp $c002


    nop
    sbc a
    inc sp
    ld h, d
    sbc [hl]
    ld [$0033], sp
    ld d, h
    ld b, a
    ld [bc], a
    nop
    ei
    ld b, d
    dec [hl]
    pop bc
    or d
    add d
    adc b
    inc b
    ld a, [hl]
    db $f4
    add l
    ld c, a
    ld a, e
    dec h
    push af
    ld h, d
    nop
    di
    ld h, c
    cp a
    ld a, [$0000]
    nop
    pop bc
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
    nop
    nop
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $ff
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [hl+], a
    inc bc
    ld [bc], a
    ld bc, $051e
    ld [bc], a
    ld [bc], a
    ld hl, $0206
    inc bc
    daa
    ld b, $02
    inc b
    inc hl
    rlca
    ld [bc], a
    dec b
    inc e
    ld [$0602], sp
    ld h, $08
    ld [bc], a
    rlca
    rra
    add hl, bc
    ld [bc], a
    ld [$0929], sp
    ld [bc], a
    add hl, bc
    dec de
    dec bc
    ld [bc], a
    ld a, [bc]
    daa
    dec bc
    ld [bc], a
    dec bc
    jr jr_067_5558

    ld [bc], a
    inc c
    dec e
    ld c, $02
    dec c
    rra
    rrca
    ld [bc], a
    ld c, $23
    rrca
    ld [bc], a

jr_067_5558:
    rrca
    dec de
    db $10
    ld [bc], a
    db $10
    dec h
    ld de, $1102
    inc hl
    ld [de], a
    ld [bc], a
    ld [de], a
    dec e
    inc de
    ld [bc], a
    inc de
    ld h, $13
    ld [bc], a
    inc d
    inc h
    inc d
    ld [bc], a
    dec d
    add hl, hl
    inc d
    ld [bc], a
    ld d, $1c
    dec d
    ld [bc], a
    rla
    jr nz, jr_067_5590

    ld bc, $2718
    dec d
    ld [bc], a
    add hl, de
    ld h, $16
    ld [bc], a
    ld a, [de]
    ld a, [de]
    rla
    ld [bc], a
    dec de
    dec e
    jr jr_067_558d

    inc e

jr_067_558d:
    dec h
    jr jr_067_5592

jr_067_5590:
    dec e

Call_067_5591:
    daa

jr_067_5592:
    jr jr_067_5596

    ld e, $1c

jr_067_5596:
    ld a, [de]
    ld [bc], a
    rra
    jr z, @+$1c

    ld [bc], a
    jr nz, @+$20

    dec de
    ld [bc], a

Jump_067_55a0:
    ld hl, $1c2a
    ld [bc], a
    ld [hl+], a
    dec e
    dec e
    ld [bc], a
    inc hl
    ld e, $1f
    ld bc, $2424
    rra
    ld [bc], a
    dec h
    add hl, hl
    rra
    ld bc, $2426
    jr nz, jr_067_55ba

    daa
    inc e

jr_067_55ba:
    ld hl, $2802
    dec e
    ld [hl+], a
    ld [bc], a

Jump_067_55c0:
    add hl, hl
    add hl, de
    inc hl
    ld [bc], a
    ld a, [hl+]
    jr z, jr_067_55ea

    ld [bc], a
    dec hl
    dec de
    inc h
    ld [bc], a
    inc l
    jr jr_067_55f4

    ld [bc], a
    dec l
    daa
    ld h, $02
    ld l, $1c
    daa
    ld [bc], a
    cpl
    ld a, [de]
    jr z, jr_067_55de

    jr nc, jr_067_5601

jr_067_55de:
    jr z, @+$04

    ld sp, $2921
    ld [bc], a
    ld [hl-], a
    ld [hl+], a
    dec hl
    ld [bc], a
    inc sp
    ld a, [de]

jr_067_55ea:
    inc l
    ld [bc], a
    inc [hl]
    jr nz, @+$30

    ld [bc], a
    dec [hl]
    jr jr_067_5622

    ld [bc], a

jr_067_55f4:
    ld [hl], $22
    jr nc, jr_067_55fa

    scf
    inc d

jr_067_55fa:
    ld [hl-], a
    ld [bc], a
    jr c, @+$21

    ld [hl-], a
    ld [bc], a
    add hl, sp

jr_067_5601:
    ld d, $33
    ld [bc], a
    ld a, [hl-]
    dec e
    ld a, [hl-]
    ld [bc], a
    dec sp
    rla
    dec sp
    rst $38
    rst $38
    rst $38
    ld d, $56
    rrca
    ld e, h
    db $f4
    ld h, d
    ld d, $63
    push af
    ld c, l
    rst $38
    db $e4
    ld l, $ff
    ldh [$0e], a
    ld l, $0e
    ld c, $ee

jr_067_5622:
    ldh a, [$e0]
    dec c
    ld c, l
    ld l, [hl]

jr_067_5627:
    ld hl, sp-$20
    dec c
    ld c, l
    dec c
    add hl, bc
    dec c
    db $f4
    pop hl
    db $fc
    db $e3
    ld c, l
    push hl
    ldh [$e4], a
    pop hl
    push de
    db $e3
    or $e2
    ld l, b
    rst $18
    ldh [$fb], a
    ld [c], a
    pop hl
    ld [c], a
    dec c
    ret nz

    rst $20
    dec c
    ld c, $de
    ld [c], a
    db $fc
    ret nz

    push hl
    or [hl]
    ldh [$0d], a
    dec c
    ld l, $0e
    ld l, [hl]
    ld l, $80
    xor e
    ldh [$e1], a
    ld [c], a
    and d
    ld [c], a
    adc c
    ld [c], a
    add $e3
    push af
    db $e4
    add b
    db $e3
    ld l, l
    jr nc, jr_067_5627

    ldh [$c0], a
    ldh [$78], a
    db $e3
    sbc [hl]

jr_067_566c:
    pop hl
    dec l
    ld l, l
    pop bc
    ldh [$a2], a
    pop hl
    rrca
    ld l, [hl]
    ld c, $4e
    ld c, [hl]
    ret nz

    db $e3
    and d
    ld [c], a
    adc c
    db $e3
    db $fc
    rst $20
    adc e
    dec l
    ld l, l
    ld b, b
    ldh [$6d], a
    db $d3
    ldh [rOBP1], a
    pop hl
    jr c, jr_067_566c

    dec c
    ld a, e
    dec c
    ld c, $3e
    ldh [$6d], a
    dec hl
    ld c, l
    dec l
    add b
    ld [c], a
    ld c, $21
    ld [c], a
    ld c, $0e
    ld c, [hl]
    db $eb
    pop hl
    and d
    push hl
    cp $e6
    ld a, d
    and $78
    add hl, de
    add sp, $79
    pop hl
    pop bc
    ldh [$0a], a
    ld l, d
    ld c, l
    dec l
    call Call_000_00e1
    ret nz

    db $e4
    xor b
    pop hl
    ret nz

    db $e4
    ld h, b
    ld [c], a
    call c, $c2c6
    push hl
    add hl, de
    and $b8
    pop bc
    rst $38
    ld l, l
    dec bc
    dec hl
    ld c, d
    ld a, [bc]
    ld c, e
    dec l
    ld c, l
    pop bc
    ld c, $c0
    db $eb
    sub c
    add sp, -$07
    db $ec
    add hl, de
    rst $20
    cp b
    pop bc
    ld l, l
    dec hl
    rra
    dec hl
    dec bc
    ld a, [hl+]
    ld a, [bc]
    dec bc
    ccf
    pop hl
    ret nz

    db $ed
    inc b
    add sp, -$08
    ld a, [hl-]
    jp hl


    add hl, de
    rst $20
    jp nz, $0ac1

    ld l, d
    ld l, e
    dec bc
    dec hl
    ld h, c
    ld c, e
    ret nz

    pop hl
    ld hl, $40c4
    ld [c], a
    inc [hl]
    bit 1, l
    ld l, l
    rst $38
    ldh [$f0], a
    dec b
    pop bc
    push bc
    pop bc
    add hl, de
    add sp, -$40
    ld [c], a
    ld a, [bc]
    ld c, e
    ld c, e
    ld l, e
    add c
    dec hl
    ld a, l

jr_067_5711:
    ret nz

    pop hl
    and l
    ret nz

    db $e3
    inc [hl]
    rst $00
    ld h, [hl]
    pop bc
    jp Jump_000_2ee1


    rst $20
    ld c, [hl]
    ld c, $4e
    db $ec
    and c
    ret nz

    db $ec
    ld a, [hl+]
    ld a, [hl+]
    dec c
    add b
    ld a, a
    ldh [$ba], a
    and b
    ld a, l
    pop bc
    cp [hl]
    and [hl]
    inc [hl]
    ret z

    and b
    and c
    ld c, c
    ret nz

    ld l, [hl]
    pop hl
    ld l, [hl]
    cp a
    ldh [$b1], a
    ld [c], a
    add b
    add sp, -$37
    pop hl
    ld c, e
    dec c
    dec bc
    rra
    dec bc
    ld c, e
    ld c, e
    dec c
    dec c
    dec a

Jump_067_574c:
    jp nz, $e194

    jr nz, jr_067_5711

    ret z

    and e
    and c
    dec de
    rst $20
    ld c, b
    and b
    ld l, [hl]
    call $40e9
    ld [$2d4d], a
    ld e, a
    dec bc
    ld l, e
    dec bc
    ld c, e
    dec bc
    ret nz

    ldh [$2d], a
    inc de
    jp $fd00


    and d
    dec de
    ld [$c7cd], a
    ret nz

    ldh a, [$83]
    and b
    ret nz

    pop hl
    nop
    ret nz

    cp a
    pop hl
    add b
    xor $80
    jp hl


    add b
    or l
    call nz, $c6b4
    ld h, [hl]
    rst $08
    rst $10
    add l
    ld a, a
    and c
    dec c
    rra
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld l, d
    ld l, d
    cp a
    pop hl
    ld a, [hl+]
    and c
    rst $00
    add h
    ldh a, [$80]
    push af
    ld h, b
    ld [c], a
    dec hl
    push bc
    cp l
    db $e4
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    pop bc
    ld a, [hl+]
    ld a, $e2
    cp [hl]
    ldh [$e9], a
    add d
    dec de
    db $eb
    ld b, b
    add sp, $6d
    ld c, l
    ld hl, sp-$59
    add e
    ld [hl], b
    add d
    and e
    jp Jump_067_6d4d


    dec bc
    dec bc
    dec bc
    rlca
    dec hl
    dec bc
    dec c
    ld a, $e2
    inc a
    add e
    db $db
    jp z, $ea40

    ld c, c
    add h
    ret z

    ld c, b
    pop hl
    ld b, e
    and e
    add h
    ldh [rOCPD], a
    ret nz

    ldh [$3e], a
    ret nz

    ld a, [bc]

jr_067_57d9:
    ld l, d
    jr nz, jr_067_57d9

    pop bc
    ld sp, hl
    and c
    jp nc, $f284

    ld l, b
    jp nz, Jump_067_6da5

    ld c, c
    add l
    jp z, $0663

    pop bc
    ld [c], a
    ld a, [bc]
    ld c, d
    ret nz

    pop hl
    ei
    add c
    ei
    and c
    cp b
    add b
    or $80
    nop
    and h
    add e
    cp b
    push hl
    add b
    and b
    sub a
    ld h, d
    ld b, e
    add d
    add hl, bc
    add h
    add b
    ld h, b
    inc c
    add c
    push de
    ld l, e
    dec b
    ldh [$0a], a
    ld b, c
    ldh [$2b], a
    inc a
    ldh [rWY], a
    ld c, d
    ld bc, $3b2d
    ret nz

    ld d, l
    and [hl]
    sbc $66
    ret nz

    ld [c], a
    inc a
    and b
    ld [c], a
    ld h, b
    ld a, h
    and b
    and b
    inc l
    add d
    rlca
    add b
    adc $62
    push bc
    and b
    call nz, $4be0
    ld a, a
    db $e3
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld l, l
    jp $55a1


    and a
    or d
    ld h, c
    rla
    add l
    cp h
    and [hl]
    sub a
    ld h, c
    sbc b
    ld a, [$81e3]
    pop hl
    dec b
    pop hl
    ld a, [bc]
    ld l, d
    cp a
    ld [c], a
    cp l
    ret nz

    dec c
    ld bc, $166d
    ld [c], a
    ld d, l
    and h
    or [hl]
    and e
    ld a, a
    and e
    call nz, $c543
    ld b, c
    or $44
    db $f4
    and a
    ld h, d
    dec b
    db $e3
    ld a, [hl+]
    ld a, $e2
    dec bc
    dec hl
    ld l, l
    dec l
    rrca
    ld c, l
    dec l
    ld c, $6d
    ld d, l
    xor b
    sub h
    ld b, e
    call $c0a6
    rst $20
    inc e
    ld l, d
    ld h, h
    dec b
    ld [c], a
    ld c, e
    dec bc
    ld c, e
    ld a, [hl]
    pop bc
    ld a, [hl-]
    ldh [$2d], a
    pop hl
    ret nz

    and d
    adc d
    ret nz

    db $e4
    ld h, h
    ld b, l
    push bc
    ld b, e
    ld [hl], b
    ld h, h
    ret nc

    ld b, c
    ld a, [hl+]
    ld a, [hl+]
    ld [de], a
    ld b, $c0
    ld c, e
    add d
    and c
    ld a, [hl]
    and c
    ld c, e
    rst $38
    add c
    ld h, d
    adc e

Call_067_58a5:
    ret nz

    push hl
    add d
    sub $a0
    ld c, $c0
    pop bc
    nop
    add e
    inc c
    ld b, e
    jp nc, Jump_000_0780

    jp Jump_000_1f0b


    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld l, e
    ld c, d
    ld sp, hl
    ld h, b
    ccf
    add d
    ei
    ld c, c
    ret nz

    db $ed
    ld h, b
    ld a, [$3844]
    add d
    add $c2
    ld c, d
    ld b, h
    cp [hl]
    jr nz, jr_067_58fd

    dec c
    ld h, [hl]
    ld c, e
    ret nz

    ld c, e
    ld c, e
    add l
    and b
    add e
    jp nz, $6d2a

    ld a, e
    ld b, d
    ld bc, $550e
    xor c
    add h
    ld h, [hl]
    ld l, h
    ld b, d
    ret nc

    ld [hl+], a
    ld l, h
    call nz, $e23f
    ret z

    and d
    ld bc, $000b
    add c
    ld sp, hl
    pop bc
    ld a, [hl]
    add c
    dec l
    and b
    dec d
    and a
    ld c, d
    ld b, h
    ld b, a

jr_067_58fd:
    ld h, d
    ret nz

    ld l, b

jr_067_5900:
    ld hl, $22ae
    db $eb
    ld h, a
    ret nz

    db $e3
    adc b
    ret nz

    cp b
    ld [c], a
    ld a, [bc]
    ld a, [hl+]
    nop
    ld a, [hl]
    add b
    cp $61
    ret nc

    db $e3
    rst $30
    and e
    add e
    ld h, d
    add h
    ld h, c
    ld [hl], c
    push bc
    add hl, hl
    ld [hl+], a
    jr nz, jr_067_5900

    ld h, d
    ld d, b
    ld hl, $a107
    jp nz, Jump_067_7ea5

    add b
    ld l, l
    ld a, l
    ld h, e
    ld c, c
    and d
    ld [bc], a
    ld [hl], b
    jr nz, jr_067_599f

    sub a
    add h
    add h
    ld h, c
    ld sp, $22c3
    add h
    inc l
    call nz, Call_067_41c5
    daa
    ld l, d
    ld c, e
    ld a, [bc]
    add e
    and e
    db $fd
    ld h, b
    ld c, d
    db $fc
    ld b, c
    db $d3
    ld b, h
    nop
    ld e, c
    pop bc
    add b
    ld [c], a
    call z, $c005
    and $6c
    call nz, $c27e
    ld a, [bc]
    add b
    jp nz, Jump_000_0085

    cp e
    and c
    cp [hl]
    nop
    ld a, e
    ld b, b
    add hl, de
    and h
    ld a, [hl]
    daa
    ld b, l
    add [hl]
    inc [hl]
    ld [hl+], a
    ld l, h
    call nz, Call_067_4af6
    inc bc
    ld l, e
    ld c, e
    add h
    and d
    dec bc
    dec bc
    dec c
    dec bc
    ld bc, $036b
    and b
    ld b, b
    and c
    ld d, c
    ld [c], a
    ld e, c
    and e
    ret nz

    ld [$22fc], a
    db $fd
    inc h
    inc d
    scf
    ld [hl+], a
    daa
    ld b, e
    ld c, l
    pop bc
    db $e3
    dec c
    ld a, d
    ret nz

    pop bc
    ld [c], a
    add hl, de
    and [hl]
    inc c
    ld h, e
    ld h, d
    or b
    ld b, h
    ld l, $2e
    ld a, b

jr_067_599f:
    push hl
    db $fd
    ld [hl+], a
    cp h
    ld h, e
    inc a
    nop
    nop
    ld c, h
    ld bc, $c202
    db $fd
    ld b, b
    add h
    pop bc
    db $fc
    nop
    ret nz

    rst $20
    ld a, [de]
    add l
    ret nz

    push hl
    nop
    db $fd
    daa
    dec [hl]
    push bc
    jp nc, $83c2

    ld h, d
    ret nz

    pop hl
    db $76
    ld b, d
    ei
    inc bc
    add hl, de
    and c
    nop
    ld e, e
    ld [$a047], sp
    ld [hl], b
    ld bc, $27fd
    inc a
    ld h, e
    adc l
    inc hl
    ret nz

    db $e3
    ld b, h
    add c
    inc b
    pop bc
    jp nz, Jump_067_649b

    ld l, l
    ld b, c
    nop
    ld e, e
    add hl, bc
    ld l, a
    ld c, l
    sbc h
    ld b, h
    ld b, b
    push hl
    nop
    ld bc, $9161
    and c
    nop
    jp nz, Jump_000_0d5b

    ld [hl], $02
    jp z, $c00b

    add sp, -$3d
    ld b, d
    nop
    ccf
    inc hl
    ld b, c
    jp nz, Jump_000_2181

    jp z, $c1c5

    ld l, l
    ld l, a
    jr z, @-$5d

    jp $a01d


    ld [bc], a
    ld a, h
    add h
    ld c, e
    ld [de], a
    and d
    rlca
    ld hl, $2181
    ld e, e
    ld a, [bc]
    db $d3
    ld h, h
    add sp, -$76
    nop
    ld [hl], a
    ld b, d
    db $fd
    ld b, d
    inc bc
    ld h, d
    jp Jump_000_0261


    jp nz, $a41a

    call c, $4004
    daa
    nop
    xor b
    ld l, c
    cp [hl]
    ld h, d
    xor a
    ld b, c
    cp $43
    ld [bc], a
    ld b, d
    ld b, c
    ld [c], a
    ld [bc], a
    and b
    ld b, a
    ld bc, $4000
    ld b, $51
    jp hl


    db $fd
    jr z, jr_067_5aad

    add e
    ld a, l
    ld h, h
    ld a, h
    and b
    jp nz, $c222

    push bc
    nop
    adc $64
    ld hl, sp-$5d
    ld de, $e9e9
    add l
    ld b, l
    and l
    ret nz

    push hl
    cp a
    and e
    jp nz, Jump_000_00c4

    daa
    pop hl
    sub [hl]
    inc h
    ret nz

    db $ec
    ld [bc], a
    ld b, l
    ld a, c
    add e
    rst $38
    inc b
    sub d
    add d
    ld b, d
    ld hl, $8200
    jp $a16e


    inc bc
    ld b, a
    ld d, l
    ld h, e
    ld bc, $e9c7
    add e
    ld b, a
    nop
    add sp, -$59
    nop
    rst $38
    jp $c0bf


    add d
    jp nz, $a142

    ld e, e
    and a
    and e
    nop
    or $a4
    ld e, h
    inc bc
    db $10
    ld [bc], a
    ld b, l
    add sp, -$59
    xor $44
    ld a, e
    add b
    ld l, e
    inc bc
    push bc
    sbc h
    dec h
    db $db
    and a
    nop
    inc d
    ld b, h
    ld a, [$a962]
    add d
    add sp, -$56
    pop de
    ld h, d

jr_067_5aad:
    rst $30
    inc bc
    inc b
    add b
    xor b
    add d
    nop
    inc bc
    ld b, [hl]
    sub $46
    sub [hl]
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    cp c
    xor e
    ld c, $62
    or d
    inc h
    ld h, h
    ld [bc], a
    nop
    inc bc
    ld c, c
    ld b, d
    ld a, [hl+]
    ld [bc], a
    ld b, l
    add hl, sp
    xor c
    ld a, h
    add $0e
    ld h, h
    adc d
    xor d
    add d
    daa
    nop
    ld a, [hl-]
    ld b, e
    adc d
    and d
    ret nz

    db $ed
    add d
    rst $20
    inc bc
    call nz, Call_067_4743
    ret nz

    ld [$a4ce], a
    nop
    ld l, d
    ld h, d
    ret nz

    ld [$a5b3], a
    push bc
    ld b, d
    db $db
    adc b
    ld a, b
    add c
    ld b, d
    inc h
    dec hl
    ld hl, $b300
    ld h, h
    ld [$80e2], a
    di
    add c
    jp nz, $a75b

    sub e
    pop hl
    ld e, c
    add h
    ld a, d
    ld h, c
    nop
    rst $38
    inc hl
    inc h
    add [hl]
    and b
    jp nz, $847f

    add d
    ld [hl+], a
    add $01
    jp $4062


    ld b, d
    nop
    ret nz

    db $e3
    rst $38
    jp hl


    or $63
    jp nz, Jump_067_4622

    add d
    xor l
    ld [bc], a
    ld b, b
    add d
    ret nz

    ld h, e
    nop
    add b
    ld h, c
    xor [hl]
    ld bc, $833a
    rlca
    ld b, e
    add c
    and [hl]
    dec [hl]
    ld b, e
    ld c, e
    ld [hl+], a
    dec a
    ld hl, $1d40
    jr nz, @+$6e

    inc bc
    ret nz

    ld b, a
    ld a, [hl]
    db $e3
    pop af
    ld b, b
    ld [$0ee1], sp
    ld d, d
    pop hl
    nop
    ld [bc], a
    ld b, c
    ccf
    ld h, [hl]
    ret nz

    db $e3
    add d
    inc h
    dec [hl]
    and c
    cp l
    ld [bc], a
    ccf
    add e
    inc b
    ld b, c
    inc bc
    dec bc
    dec l
    ld a, a
    ld [c], a
    cp $c2
    push de
    pop bc
    ld a, l
    ld h, d
    ccf
    ld h, a
    ld c, $e4
    nop
    ld l, [hl]
    ld bc, $253d
    cp l
    inc bc
    ret nz

    db $e3
    nop
    ld h, e
    rrca
    ld hl, $46d5
    rla
    inc hl
    nop
    ccf
    ld l, b
    xor h
    and [hl]
    db $fd
    ld [$2080], sp
    ld c, l
    nop
    nop
    ld h, l
    jp $8c21


    inc bc
    ret nz

    sbc d
    and $7f
    ld h, a
    ld b, b
    push hl
    or l
    ld b, e
    and a
    and [hl]
    ret nc

    ld bc, $4b6b
    nop
    rst $38
    pop hl
    cp [hl]
    add b
    add h
    jr nz, jr_067_5ba9

    dec h
    ld d, b
    ld c, [hl]
    nop
    db $e4

jr_067_5ba9:
    jp z, Jump_000_0962

    jr nz, jr_067_5bae

jr_067_5bae:
    rst $20
    and [hl]
    sla d
    cp a
    ldh [rHDMA2], a
    ld bc, $8110
    inc e
    add h
    inc a
    ld b, d
    ld d, b
    ld c, l
    nop
    sub b
    ld [c], a
    ld [hl], h
    ld b, d
    cp l
    inc b
    inc d
    ld b, d
    ret nz

    add h
    db $ec
    nop
    inc h
    add e
    inc e
    add d
    nop
    ld a, b
    jp nz, Jump_067_673f

    ld e, e
    add h
    pop hl
    add $af
    ld b, e
    or c
    and h
    add l
    add e
    dec hl
    ld h, b
    ld b, b
    ld [hl], h
    jr nz, jr_067_5ba9

    ld b, $5a
    db $e3
    dec [hl]
    add a
    ret nz

    db $eb
    xor c
    ld l, b
    ld c, $3d
    jr nz, jr_067_5bf1

jr_067_5bf1:
    sla c
    adc b
    inc hl
    dec b
    ld h, $77
    ret z

    pop bc
    ld b, l
    ld b, c
    ld bc, $427a
    ld l, c
    xor d
    ld [hl+], a
    ret nz

    ldh [$0e], a
    ret nz

    rst $20
    dec b
    inc h
    sbc b
    rst $28
    ld c, l
    nop
    nop
    nop
    db $fd
    and b
    rst $38
    db $e4
    jp c, $d2d7

    ret nc

    jp nc, $bbd4

    rst $10
    jp c, $e2f0

    db $d3
    ret nc

    db $d3
    add sp, -$20
    db $e4
    ld a, c
    push hl
    db $e3
    push hl
    db $db
    ldh [$d8], a
    push de
    push de
    ret c

    push af
    and $fc
    or $e5
    ldh [$e8], a
    call c, $d7da
    call nc, $d9d7
    sbc e
    jp c, $b0dc

    ldh [$eb], a
    and b
    push af
    ldh [$a8], a
    ldh [$e6], a
    cp l
    rst $20
    and e
    pop hl
    ld [$dea0], a
    rst $18
    jp nz, $d2e0

    rst $00
    sub $d4
    sub $bd
    db $e4
    and d
    db $e3
    cp a
    rst $28
    reti


    jp c, $db9d

    pop bc
    pop hl
    db $ec
    db $ed
    and b
    push af
    ldh [rBCPS], a
    ldh [$e8], a
    rst $38
    jp hl


    and b
    sbc a
    sbc l
    sbc a
    and b
    and b
    ldh [$15], a
    pop hl
    ld l, a
    ldh [$d6], a
    ld h, c
    pop hl
    sub $c7
    ld [c], a
    and d
    db $e3
    ld a, [hl]
    rst $28
    db $fc
    jp nz, $f5e2

    rst $20
    db $eb
    and b
    and b
    sbc a
    sbc h
    ld b, l
    rst $18
    sbc h
    sbc a
    and b
    ld [c], a
    db $e3
    cpl
    ldh [$d7], a
    call nc, Call_000_2006
    ldh [$d7], a
    jp nc, $e13c

    and d
    db $e3
    db $fd
    di
    add hl, de
    rst $20
    ld a, c
    ldh [$e6], a
    pop bc
    ldh [rBGP], a
    ld d, d
    cp a
    ldh [$8d], a
    ldh [$d2], a
    db $dd
    reti


    ld a, [de]
    jr nz, @-$1e

    db $dd
    add sp, -$40
    db $e4
    push hl
    sub a
    add sp, -$3e
    xor $19
    add sp, $7e
    add d
    ldh [$bd], a
    cp l
    ld c, e
    ld d, [hl]
    ld b, l
    and c
    db $fd
    ret nz

    rst $38
    jp c, $d0d3

    ret nc

    db $dd
    reti


    db $dd
    pop de
    ret nc

    xor b
    ret nz

    ld [$7fc3], a
    di
    add hl, de
    rst $20
    ld [$e243], a
    ld l, $2e
    ld l, a
    ld d, l
    ld d, l
    ld b, [hl]
    sbc [hl]
    and d
    pop bc
    rst $10
    call nc, $e040
    ldh a, [$5f]
    pop bc
    ld [$c0c1], a
    ld hl, sp+$19
    add sp, -$5f
    ld c, d
    ld d, d
    ld l, $07
    jr nz, jr_067_5d26

    ld b, h
    ret nz

    ld [c], a
    xor [hl]
    ret nz

    ld b, b
    ldh [$5f], a
    pop bc
    inc [hl]
    call z, Call_000_24fc
    rr c
    add sp, -$60
    and b
    sbc [hl]
    ld c, a
    ld e, b
    cp l
    rst $18
    ld h, $21
    ld [hl], $ae
    or [hl]
    rst $38
    pop bc
    call c, Call_067_41db
    db $db
    cp l
    ldh [$5f], a
    jp nz, $eb1b

    rst $20
    and c

jr_067_5d26:
    dec h
    ret nz

    jp nc, $a2e2

    db $fc
    add hl, de
    add sp, -$40
    ldh [rHDMA5], a
    ld d, d
    xor [hl]
    ld a, [hl-]
    dec [hl]
    inc a
    inc bc
    xor a
    sub b
    cp a
    ldh [$b5], a
    and c
    cp l
    ldh [$5f], a
    jp nz, $ca34

    sub h
    and b
    dec [hl]
    sub $66
    pop bc
    sub $8e
    and b
    sbc $df
    add hl, de
    add sp, $43
    jp nz, $afff

    ld a, $35
    ld a, [hl-]
    ld b, l
    sub b
    sub b
    sbc [hl]
    ld a, [de]
    set 1, b
    db $eb
    inc [hl]
    res 4, b
    ret c

    dec hl
    ret nz

    ld b, a
    and c
    ld c, [hl]
    and b
    db $fc
    ret c

    and b
    add hl, de
    add sp, -$22
    rst $18
    sbc a
    sbc h
    ld b, [hl]
    add hl, sp
    ccf
    dec [hl]
    add hl, sp
    ld b, [hl]
    sub b
    sub b
    and c
    set 0, h
    ld b, a
    and b
    add sp, -$5d
    and b
    dec de
    ld [$a015], a
    db $dd
    ld b, a
    and c

jr_067_5d89:
    db $dd
    jp nc, $f0d7

    ret c

    and c
    add hl, de
    add sp, -$76
    and b
    pop bc
    and b
    ccf
    ld b, l
    ld b, [hl]
    sub c
    and b
    ccf
    pop hl
    or c
    and d
    jp hl


    add e
    dec de
    ld [$80d5], a
    pop de
    daa
    ret nz

    ret nc

    di

jr_067_5da9:
    ret nc

    db $d3
    xor h

jr_067_5dac:
    and l
    add hl, de
    push hl
    ld [c], a
    db $e3
    ld [$3fa0], a
    and c
    ld b, [hl]
    ld c, b
    ld c, c
    ld d, h
    ld d, e
    cp a
    ld [c], a
    ld a, [hl+]
    and b
    jr nc, jr_067_5da9

    add h
    dec de
    ld [$80d5], a
    jr z, jr_067_5d89

    call nc, $a6d7
    jp nz, $86a7

    db $fc
    ld b, e
    and b
    ld a, l
    pop bc
    ld b, l
    ld d, e
    ld e, c
    ld e, c
    ld d, e
    ld b, [hl]
    add e
    sub b
    jp $a1fc


    cp d
    and b
    jp hl


    add b
    or e
    add b
    inc [hl]
    jp z, $e0da

    jr z, jr_067_5dac

    rst $08
    add d
    ld c, c
    add d
    ld c, d
    add d
    ld b, e
    and c
    sbc l
    sbc l
    sbc l
    rst $38
    sbc h
    ld [hl], $62
    ld h, [hl]
    ld [hl], $45
    xor [hl]
    sub c
    ld bc, $3cc4
    jp nz, $82de

    or e
    add b
    inc [hl]
    ret z

    jp z, $2881

    jp nz, $8086

    and $49
    add h
    and $e7
    add h
    and b
    push bc
    add d
    ld d, b
    ld d, b
    ld b, b
    rst $38
    ld h, d
    ld h, a
    ld l, b
    ld h, [hl]
    ld [hl], $af
    ld c, b
    ld d, e
    add c
    jp $e3bf


    add hl, hl
    ld [c], a
    dec de
    jp hl


    rrca
    add sp, $49
    add l
    ld h, b
    and c
    sbc a
    rst $38
    sbc l
    and d
    or [hl]
    ld b, l
    ld b, a
    ld e, l
    ld e, l
    ld d, l
    scf
    ld l, e
    ld l, h
    dec [hl]
    cp a
    ldh [rBGP], a
    ld e, b
    ei
    and d
    di
    ld h, d
    ldh a, [rNR43]
    add sp, -$78
    adc e
    and d
    ld h, b
    ld a, $84
    sbc a
    sbc l
    or [hl]
    sub b
    rst $38
    sub b
    sub b
    ld b, h
    ld d, e
    ld e, c
    ld d, h
    ld d, l
    ld l, [hl]
    rst $38
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld l, b
    ld h, [hl]
    add hl, sp
    ld e, [hl]
    ld d, l
    ld b, c
    sub c
    dec sp
    ret nz

    ld a, c
    ld h, [hl]
    sbc $60
    ld a, h
    ld l, e
    and c
    ld h, b
    ret nc

    pop af
    and e
    xor [hl]
    add e
    ld h, b
    sbc a
    or [hl]
    jp $e0c1


    sub c
    dec b
    ld [c], a
    ld [hl], $ff
    dec [hl]
    ld h, d
    db $76
    dec [hl]
    ld l, d
    ld a, $52
    ld d, l
    adc c
    sub c
    ld a, [hl-]
    and c
    ld d, l
    and a
    ret c

    inc de
    ld h, b
    ld a, [hl-]
    ld h, a
    ld a, [c]
    ldh [$d1], a
    db $fc
    db $e3
    ld h, b
    ld a, [bc]
    add h
    sbc [hl]
    jp $c3c4


    sub b
    sub c
    cp [hl]
    dec b
    ld [c], a
    ld c, d
    ld d, d
    ld [hl], $69
    dec [hl]
    ret nz

    ldh [rDMA], a
    ld bc, $789c
    ld h, c
    ld d, l
    xor b
    db $d3
    ld b, b
    adc $e0
    rst $28
    ld b, l
    push bc
    ld b, h
    ret nc

    ld b, h
    ld a, a
    sbc [hl]
    call nz, $c4c3
    sub c
    ld b, a
    ld d, l
    rst $00
    pop hl
    rst $38
    ld d, l
    ld h, c
    ld e, h
    ld l, e
    ld l, h
    ld l, h
    ld l, l
    ld a, $05
    sub c

jr_067_5ed2:
    inc a
    add b
    ld [$a955], a
    db $d3
    ld b, b
    ld [hl], c
    ld h, c
    add h
    ld b, [hl]
    push bc
    ld b, d
    db $fc
    ret nc

    ld b, c
    call nc, $a140
    sub b
    call nz, Call_067_4a90
    ld h, b
    cp $c5
    pop bc
    ld l, d
    ld b, b
    ld e, e
    ld b, b
    ld l, [hl]
    ld [hl], b
    ld [hl], b
    rrca
    ld l, [hl]
    add hl, sp
    or [hl]
    sbc a
    cp h
    ld b, b
    ld d, l
    xor c
    db $d3
    ld b, b
    sub c
    ld b, b
    ret nc

    adc l
    and [hl]
    push bc
    ld b, e
    and $61
    call nc, $9e40
    jp Jump_067_55c0


    ld d, d
    rst $38
    ld [hl], $6e
    ld [hl], h
    dec [hl]
    ld l, d
    ld c, d
    ld c, h
    ld d, d
    ccf
    ccf
    ld c, b
    ld c, [hl]
    ld d, e
    ld b, l
    sbc [hl]
    cp h
    ld b, c
    ld d, l
    xor d
    and b
    add hl, bc
    pop bc
    ld d, e
    ld b, d
    add hl, hl
    ld b, d
    push bc
    ld b, a
    call nc, $9f40
    add d
    ret nz

    ld b, l
    rst $38
    ld [hl], $62
    ld h, e
    ld a, b
    ld l, h
    ld l, l
    ld d, l
    ld d, h
    ld a, a
    ld d, e
    ccf
    ld b, a
    ld h, c
    ld e, b
    ld b, h
    and c
    add hl, bc
    jp nz, Jump_067_55a0

    xor c
    sub c
    ld b, [hl]
    jr c, jr_067_5ed2

    jr nz, @-$1e

    sbc $22
    ld [$e1bf], a
    add hl, sp
    ld a, a
    ld h, d
    ld h, a
    dec [hl]
    dec [hl]
    ld [hl], e
    ld l, [hl]
    ld b, h
    add b
    and c
    dec de
    ld d, d
    ld d, d
    add e
    jp nz, $eba0

    ld d, l
    xor c
    and [hl]
    ld h, $6c
    ld b, d
    call c, Call_000_22ae
    ld l, h
    rst $00
    sbc [hl]
    sub b
    ld a, $89
    ret nz

    dec [hl]
    ld l, d
    dec de
    ld a, [hl-]
    xor [hl]
    add b
    and c
    ld b, d
    ld b, l
    cp a
    add h
    ld d, l
    and a
    ld l, e
    jr z, @+$42

    ld l, h
    ld b, d
    ld d, b
    ld [hl+], a
    ld l, h
    rst $00

jr_067_5f8b:
    ret nz

    ldh [$87], a
    and b
    adc b
    ret nz

    xor a
    ld b, d
    pop bc
    dec bc
    ld c, d
    ld c, c
    ld a, [hl]
    add b
    sbc [hl]
    ld a, l
    ld l, d
    ld a, $25
    add h
    ld h, b
    ld l, h
    ld b, d
    inc e
    ld d, b
    ld [hl+], a
    ld l, h
    rst $00
    sbc [hl]
    sub b
    add hl, sp
    add a
    and b
    adc b
    ret nz

    ld [bc], a
    jp nz, Jump_067_4f07

    ld h, c
    ld d, d
    ret nz

    pop hl
    ld [hl-], a
    jr nz, jr_067_5ffb

    and e
    ld sp, $3e20
    inc h
    or b
    add h
    ld h, l
    ld d, b
    inc hl
    ld l, h
    call nz, Call_000_00ca
    and c
    sub c
    adc e
    ret nz

    ld b, e
    ld h, a
    ld d, b
    ld b, c
    ld [hl], $83
    and b
    ret nz

    pop hl
    ld d, l
    sub b
    db $fc
    ld b, b
    jr nz, @+$4a

    ld b, d
    push bc
    ld bc, $2031
    ld a, $24
    add h
    ld h, h
    jp c, $2445

    ld l, h
    jp $cafe


    nop
    sbc a
    sbc h
    ld d, e
    ld d, h
    ld d, d
    ld c, d
    ld e, l
    ld bc, $bb55
    pop bc
    cp e
    and c
    ret nz

    ldh [rSB], a

jr_067_5ffb:
    and d
    add hl, de
    and e
    ld sp, $3e20

Call_067_6001:
    inc h
    ldh a, [$84]
    ld h, d
    jr c, jr_067_5f8b

    db $fd
    ld b, $e0
    ld hl, $919e
    ld b, l
    ld b, l
    ld a, h
    ret


    ldh [$bb], a
    pop bc
    xor h
    ld l, d
    ld b, l
    ld e, e
    sub c
    add b
    pop hl
    jr nz, jr_067_6036

    xor c
    push de
    inc b
    db $ec
    ld bc, $04cb
    db $ed
    add hl, hl
    ld [$80fd], a
    cp a
    add b
    dec a
    ld e, e
    inc b
    and c
    xor h
    xor l
    ld l, d
    ld b, h
    ld [hl], e
    add b
    db $fc

jr_067_6036:
    ld [hl+], a
    db $10
    add hl, de
    and h
    ld b, c
    add a
    add h
    ld h, c
    db $fd
    dec hl
    db $eb
    inc a
    ld h, e
    db $fd
    add b
    ccf
    add b
    ld e, [hl]
    ld [bc], a
    pop hl
    xor l
    xor h
    ld l, d
    xor [hl]
    add c
    ldh [$9e], a
    cpl
    ld hl, $1918
    and h
    push af
    ld b, d
    ld c, [hl]
    inc b
    jp c, $fdd9

    ld a, [hl+]
    daa
    add b
    sbc h
    ld b, d
    cp a
    sbc a
    or [hl]
    call nz, $9090
    ld b, b
    ld b, c
    ld [c], a
    xor l
    add a
    ld l, d
    xor a
    xor [hl]
    ld b, c
    ld [c], a
    ld [c], a
    jr nz, jr_067_608e

    and e
    ld b, b
    add hl, hl
    call c, $db45
    db $fd
    dec hl
    ld [$429c], a
    dec b
    ld b, b
    cp [hl]
    ld h, b
    ld b, d
    cp h
    and c
    rra
    xor l
    ld l, h
    ld l, l
    xor [hl]
    xor a
    or d

jr_067_608e:
    ld h, b
    cp $82
    ld b, a
    inc bc
    jr z, jr_067_60d5

    inc l
    db $fd
    ld a, [hl+]
    rst $10
    ld bc, $d3da
    add c
    and c
    ld a, a
    ld h, b
    ld a, h
    and c
    ld [bc], a
    dec sp
    and b
    xor a
    pop bc
    ret nz

    ld a, l
    jr nz, jr_067_60b2

    ld h, e
    ld b, b
    cpl
    db $fd
    inc l
    inc a
    ld h, c

jr_067_60b2:
    add h
    db $d3
    add b
    ld a, e
    add b
    ld b, b
    inc bc
    ld h, b
    dec sp

jr_067_60bb:
    and c
    ccf
    jr nz, @+$43

    push bc
    ret c

    ld h, b
    ld a, d
    and c
    ld b, b
    dec hl
    db $fd
    inc l
    inc b
    ld b, h
    ld b, b
    ld [c], a
    ld l, [hl]
    ld l, a
    dec sp
    and c
    ld de, $8139
    pop hl
    ld a, h

jr_067_60d5:
    nop
    rlca
    ld hl, $f7d3
    ld bc, $2b40
    db $fd
    ld a, [hl+]
    jr z, jr_067_60bb

    ld h, c
    inc b
    ld b, d
    cp a
    ld b, d
    inc a
    dec sp
    and d
    ld b, b
    ld b, c
    jp $2107


    add b
    add c
    jr nz, jr_067_6154

    ld b, b
    ld b, b
    dec hl
    db $fd
    ld a, [hl+]
    jp c, Jump_067_7f61

    add e
    cp l
    ld b, b
    ld b, l
    ld bc, $003a
    pop hl
    ld b, c
    ld [c], a
    add c
    ld hl, $c3e5
    ld b, b
    ld l, $0c
    inc l
    jr nc, jr_067_614e

    ld d, [hl]
    ld sp, hl
    ld b, b
    sbc [hl]
    sub b
    cp l
    ld b, c
    add hl, sp
    ret nz

    pop bc
    ld a, $c2
    jp $8200


    add e
    ld a, [de]
    and b
    ld hl, sp-$5f
    ld b, b
    add hl, hl
    ld [bc], a
    ld b, a
    db $eb
    dec h
    rst $38
    add b
    add b
    ldh [$0a], a
    rst $38
    and b
    ld b, d
    add b
    pop bc
    add hl, sp
    jp nz, $82c1

    add d
    ld [$40c6], sp
    ld a, [hl+]
    ld b, b
    jp hl


    add [hl]
    db $eb
    ld [hl+], a
    cp a
    ld bc, $207f
    ret nz

    and b
    ld a, a
    and c
    inc a
    ld b, c
    db $e4
    ld b, $42
    and b

jr_067_614e:
    add sp, -$17
    inc bc
    ld b, a
    or l
    ret nz

jr_067_6154:
    ld b, b
    add hl, hl
    ld [bc], a
    ld b, l
    add sp, -$57
    nop
    ccf
    ldh [$fb], a
    ld b, c
    add c
    ldh [$03], a
    jp Jump_000_00ed


    inc bc
    ld b, a
    ld b, b
    and [hl]
    ld [bc], a
    ld c, d
    ld [hl], d
    add sp, -$58
    ld [$a1c1], a
    ld a, l
    jr nz, @+$47

    scf
    scf
    inc bc
    rst $00
    nop
    inc bc
    ld b, a
    add b
    ld h, a
    ld [bc], a
    ld c, c
    add sp, -$56
    ccf
    jp nz, Jump_000_203b

    add l
    and c
    pop bc
    pop bc
    add b
    inc bc
    pop bc
    ld e, e
    and a
    ld b, d
    dec hl
    jp hl


    add l
    add sp, -$56
    cp h
    inc bc
    db $fd
    db $e3
    or [hl]
    ld bc, $a89f
    add d
    inc bc
    ld b, a
    ld b, d
    dec hl
    adc c
    dec b
    add sp, -$57
    inc e
    ld h, b
    cp c
    ld hl, $46c2
    and c
    jp Jump_000_2383


    inc bc
    ld c, c
    ld b, d
    dec hl
    dec a
    inc bc
    db $e4
    push hl
    ld [$a9e8], sp
    ld a, c
    inc h
    pop bc
    pop hl
    call nz, Call_000_2383
    inc bc
    ld c, c
    ld b, d
    dec hl
    jp nz, $cc23

    add hl, bc
    ld h, b
    add sp, -$58
    ld [c], a
    db $e3
    cp $c4
    or a
    and b
    or [hl]
    sbc a
    nop
    add e
    ld hl, $a65b
    or $01
    ld b, d
    ld h, $40
    jr nz, jr_067_625b

    inc b
    add hl, bc
    ld h, b
    add sp, -$56
    nop
    ld a, [hl]
    jp nz, $e3bf

    ld b, d
    and e
    ld e, e
    and l
    or $00
    ld a, h
    and b
    ld c, $26
    or $6a
    db $ec
    scf
    and h
    ld a, a
    add h
    sub c
    ld b, [hl]
    rst $38
    ldh [$91], a
    sub b
    call nz, $0380
    ld h, b
    dec h
    inc b
    inc e
    and [hl]
    ld bc, $f6c7
    ld h, l
    dec a
    xor b
    ld a, a
    add d
    jp $90cf


    ld b, l
    scf
    dec a
    rst $38
    ldh [$fe], a
    and c
    or [hl]
    sbc a
    ld h, b
    ld b, c
    and d
    add a
    daa
    sub d
    ld c, b
    or $65
    xor l
    ld hl, $edec
    cp l
    dec b
    xor [hl]
    cp a
    add c
    add hl, sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    nop
    add c
    and c
    inc bc
    add sp, -$17
    add h
    ld hl, $63fd
    ccf
    ld l, e
    or $65
    xor l
    ld [hl+], a
    cp l
    ld b, $fe
    ccf
    ld b, b
    call nz, $693e
    and e
    dec [hl]
    dec [hl]
    and e
    rlca
    ld l, d
    ld a, $46
    ld b, b
    add l
    db $fd
    ld h, h
    ccf
    ld l, e

jr_067_625b:
    or $65
    dec a
    ld [hl+], a
    sbc $e7
    and [hl]
    sbc [hl]
    call nz, $9190
    ld a, h
    ld [bc], a
    dec [hl]
    ld l, d
    nop
    ccf
    add b
    ld [bc], a
    ld b, d
    db $fd
    ld h, a
    ccf

jr_067_6272:
    ld l, d
    or $65
    dec a
    ld [hl+], a
    rst $20
    and [hl]
    ld b, b
    and b
    ld l, a
    sub c
    add hl, sp
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    add hl, sp
    pop bc
    db $e4
    nop
    rst $20
    ld [hl+], a
    rla
    ld [hl+], a
    ccf
    ld l, d
    or $6a
    rst $20
    and a
    rst $38
    add b
    ret nz

    push bc
    add h
    ld [hl+], a
    add b
    dec b
    inc hl
    rst $08
    add h
    ccf
    ld l, c
    or $6a
    rst $20
    and l
    ld a, h
    ld bc, $c340
    sub c
    inc bc
    or [hl]
    sbc l
    push bc
    ld b, c
    dec b
    dec h
    jr c, jr_067_6272

    ccf
    ld l, d
    or $69
    di
    add [hl]
    ld h, b
    ld a, h
    ld bc, $837e
    rlca
    ld hl, $41c5
    dec b
    inc h
    and $e7
    ld a, b
    pop bc
    inc [hl]
    ccf
    ld l, a
    rst $28
    ld l, d
    ld [$027c], a
    sbc a
    sbc l
    rst $38

Jump_067_62d0:
    pop hl
    push bc
    and h
    nop
    dec b
    dec h
    ld h, e
    ld bc, $6f3f
    cp c
    pop af
    sbc h
    dec b
    ld b, $63
    dec b
    ld h, $8e
    ld c, l
    nop
    cp [hl]
    push af
    sbc h
    ld bc, $a1cd
    pop af
    ld b, d
    inc e
    add a
    ld c, a
    rst $28
    nop
    nop
    nop
    pop bc
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
    nop
    nop
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $eb
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $f4
    nop
    nop
    nop
    ld [bc], a
    nop
    ld hl, $0209
    ld bc, $0a1d
    ld [bc], a
    ld [bc], a
    dec h
    rrca
    ld [bc], a
    inc bc
    inc hl
    db $10
    ld [bc], a
    inc b
    ld h, $11
    ld [bc], a
    dec b
    inc d
    inc d
    ld [bc], a
    ld b, $13
    dec d
    ld [bc], a
    rlca
    dec d
    dec d
    ld [bc], a
    ld [$1614], sp
    ld [bc], a
    add hl, bc
    dec e
    dec de
    ld [bc], a
    ld a, [bc]
    jr nz, jr_067_6362

    ld [bc], a
    dec bc
    ld d, $21
    ld [bc], a
    inc c
    rra
    ld hl, $0d02
    rla
    ld [hl+], a
    ld [bc], a
    ld c, $20
    ld [hl+], a
    ld [bc], a
    rrca
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    db $10
    rra
    inc hl
    ld [bc], a
    ld de, $2323
    ld [bc], a
    ld [de], a
    ld [hl+], a
    inc h

jr_067_6362:
    ld [bc], a
    inc de
    rla
    add hl, hl
    ld [bc], a
    inc d
    jr @+$2c

    ld [bc], a
    dec d
    rla
    dec hl
    ld [bc], a
    ld d, $18
    inc l
    ld [bc], a
    rla
    ld hl, $0231
    jr jr_067_6399

    ld [hl-], a
    ld [bc], a
    add hl, de
    ld hl, $0233
    ld a, [de]
    ld [hl+], a
    inc [hl]
    ld [bc], a
    dec de
    jr @+$38

    ld [bc], a
    inc e
    add hl, de
    scf
    ld [bc], a
    dec e
    rla
    jr c, @+$01

    rst $38
    rst $38
    sbc c
    ld h, e
    ld sp, $4d68
    ld l, [hl]
    ld l, a
    ld l, [hl]

jr_067_6399:
    sbc a
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    add sp, -$10
    and $6e
    ld h, [hl]
    add sp, -$17
    dec c
    dec c
    ldh [$ee], a
    set 4, h
    ld l, [hl]
    ld l, $d7
    ldh [$ec], a
    cp l
    pop hl
    db $dd
    ld [c], a
    ld l, $0e
    ldh a, [$e5]
    dec c
    ld l, $2e
    add h
    ei
    ldh [$c9], a
    db $e4
    ld l, l
    cp l
    push hl
    ldh [$e7], a
    ret nc

    push hl
    pop bc
    ldh [$4e], a
    ld b, l
    ld c, [hl]
    ret nz

    rst $20
    ld l, $f0
    and $67
    ldh [$89], a
    and $2e
    ret nz

    and $38
    ldh [$e7], a
    ret nc

    push hl
    sbc b
    ldh [$0e], a
    ld c, $4e
    sub h
    db $e4
    ldh a, [$e8]
    inc b
    ret nz

    push hl
    ld b, l
    db $e4
    dec l
    ret nc

    ld a, [$e23f]
    adc e
    pop hl
    ldh a, [$ec]
    ld b, $e0
    inc bc
    ld l, l
    dec c
    rst $38
    ld [c], a
    cp a
    ldh [$e0], a
    ldh a, [$c0]
    jp hl


    ld c, e
    ld [c], a
    ldh a, [$ec]
    ld b, $c1
    push hl
    dec hl
    dec l
    cp a
    ldh [$d0], a
    db $fc
    sbc d
    ret nz

    ldh a, [$ee]
    add d
    push hl
    dec b
    dec hl
    cp a
    ldh [$2d], a
    ldh [$f0], a
    ret nz

    db $ed
    rst $28
    jp nz, $e7b0

    ld b, e
    ld [c], a
    ccf
    dec hl
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    dec bc
    pop bc
    ldh [$7c], a
    ldh [$e0], a
    ldh [$ec], a
    ret nc

    db $ec
    xor a
    call nz, $e770
    pop bc
    ld [c], a
    dec hl
    ld c, d
    ld c, d
    scf
    ld a, [hl+]
    ld a, [bc]
    ld c, e
    cp c
    ldh [rKEY1], a
    dec l
    ret nc

    ldh a, [$ce]

jr_067_6449:
    and [hl]
    ldh a, [$50]
    pop bc
    cp [hl]
    xor c
    ret


    ret nz

    push bc
    jp nz, Jump_000_2b2b

    dec hl

jr_067_6456:
    ld a, [bc]
    rrca
    dec bc
    dec bc
    dec hl
    dec bc
    cp b
    ret nz

    ret nz

    ldh [$9e], a
    and a
    ret nc

    db $e4
    inc b
    and l
    pop bc
    jr jr_067_6449

    dec c
    ld hl, sp-$5f
    cp c
    and e
    ldh a, [$e3]
    ret nz

    pop hl
    add a
    jp $2b7f


    ld a, [bc]
    ld c, d
    dec bc
    dec bc
    ld l, e
    ld c, e
    ld a, c
    ret nz

    ld bc, $f72d
    and b
    ret nc

    db $ed
    call $83a0
    and d
    ld sp, hl
    and l
    ldh a, [$e5]
    ret nz

    and $ff
    dec c
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld l, e
    dec bc
    dec hl
    nop

jr_067_6498:
    ret nz

    ld [c], a
    ret nc

Jump_067_649b:
    ldh a, [rNR23]
    and c
    dec e
    ret nz

    ld d, c
    and b
    push af
    add e
    ldh a, [$e4]
    ld a, $e3
    ld e, $04
    jp Jump_067_4b0b


    ld l, e
    ld c, e
    ret nz

    and $d0
    db $ec
    jr jr_067_6456

    jr jr_067_6498

    and c
    ldh a, [$ed]
    ret nz

    ld [$4b6b], a
    cp d
    and d
    ld a, h

Jump_067_64c1:
    and c
    ret nc

    db $ed
    add b
    adc a
    add c
    sub [hl]
    and d
    add b
    db $e3
    db $fd
    and b
    ldh a, [$e4]
    ld c, h
    and e
    push bc
    and b
    dec bc
    nop
    ld [bc], a
    db $e4
    ret nz

    ld [c], a
    ldh [$e7], a
    ret nc

    jp hl


    ld h, c
    add e
    adc $82
    ldh a, [$e8]
    cp l
    jp $c022


    ldh [rOCPD], a
    dec sp
    and h
    dec [hl]
    and c
    ret nc

    db $ed
    ld l, l
    rst $38
    add sp, -$4c
    add c
    nop
    ldh a, [$e6]
    ret nz

    rst $20
    add e
    db $e3
    or e
    and b
    rst $38
    db $ed
    add h
    add c
    adc $e2
    db $e4
    pop hl
    adc $75
    add c
    ld c, [hl]
    ld c, $4e
    ldh a, [$e5]
    push bc
    add [hl]
    ld l, e
    ld c, e
    and c
    ld c, e
    cp h
    add e
    xor l
    ldh [$dc], a
    and e
    ret nc

    ld [$c00e], a
    rst $20
    ld l, [hl]
    pop af
    ld l, [hl]
    cp a
    ldh [$f0], a
    push hl
    add [hl]
    add [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, d
    sbc [hl]
    ld b, e
    add b
    dec l
    ld l, l
    ld l, l
    dec l
    call c, $d0a4
    ld a, [c]
    ld l, $41
    ld l, [hl]
    ld [hl], $85
    ld [hl], b
    db $e3
    daa
    ldh [$83], a
    and h
    ld [bc], a
    and b
    ld l, l
    pop bc
    ld [c], a
    add hl, bc
    dec l
    push de
    ld h, h
    ret nc

    db $ed
    dec c
    dec bc
    pop hl
    or $67
    ldh a, [$e2]
    add hl, bc
    add l
    ld [bc], a
    add c
    ret nz

    dec hl
    ccf
    ldh [$c5], a
    and [hl]
    ld e, h
    jp nz, $ecd0

    dec a
    ld [c], a
    ldh a, [$eb]
    inc c
    dec b
    and h
    call nz, $0ba1
    dec bc
    rlca
    pop bc
    ld b, e
    add b
    call c, $d0a6
    db $ed
    nop
    dec h
    ldh [$f0], a
    db $ec
    add $84
    ld b, $c0
    inc bc
    pop bc
    cp a
    ldh [$c0], a
    db $e3
    call c, $e0a4
    ret nc

    db $eb
    add sp, -$40
    ldh a, [$ee]
    rlca
    push bc
    cp a
    pop hl
    ld c, e
    ld c, e
    ld a, [bc]
    ld bc, $c04a
    push hl
    xor d
    ld b, e
    ret nz

    db $ed
    inc b
    push bc
    ldh a, [$e7]
    add a
    and d
    add e
    db $e3
    rra
    ld c, e
    ld c, e
    ld c, d
    ld c, d
    ld a, [bc]
    add c
    jp nz, $c1be

    call nc, $80aa
    add [hl]
    ld b, d
    ret z

    and e
    ret


    and b
    ld b, h
    ld b, c
    jp nz, $89a4

    ld h, e
    ld b, h
    ld [c], a
    ld a, [bc]
    rrca
    ld l, d
    dec bc
    dec hl
    ld a, [bc]
    ld b, c
    pop bc
    rst $38
    rst $20
    ret nc

    db $ed
    dec c
    ld b, b
    inc [hl]
    rst $00
    and b
    ld d, h
    ld h, b
    dec l
    ld e, l
    ret nz

    dec l
    ld l, l
    ld l, h
    and c
    ld c, b
    and l
    ld b, $45
    add b
    ld a, [bc]
    ld a, [bc]
    call nz, $c5e1
    add c
    ldh [$e4], a
    ret nc

    db $ed
    rlca
    call nz, Call_067_7d08
    and d
    or e
    and c
    ld c, b
    add l
    dec hl
    call z, Call_067_4661
    ld h, d
    call nz, Call_000_3aa0
    ld b, c
    ld h, b
    ldh [$e4], a
    ret nc

    db $ed
    dec sp
    and e
    inc a
    add b
    or l
    ldh [$2e], a
    ld c, [hl]
    ret nz

    jp hl


    inc c
    call z, $0860
    add b
    dec hl
    dec hl
    or e
    and h
    ldh [$e4], a
    ret nc

    db $ed
    ret nz

    db $e4
    nop
    ld b, h
    pop hl
    or h
    nop
    add h
    call nz, $8448
    jp $05a0


    ld b, c
    rlca
    ld h, c
    ldh [$e6], a
    ld [$ecd0], sp
    ld l, e
    and b
    cp e
    add h
    ld c, $60
    and c
    add l
    jp $c802


    ld [bc], a
    db $e3
    nop
    res 0, c
    ldh [$e4], a
    ret nc

    db $ed
    add d
    jp $a121


    ret nz

    ldh a, [$c9]
    ld b, c
    jp Jump_000_0083


    ldh [$e6], a
    ret nc

    db $ec
    jr nc, jr_067_665d

    ld [$8866], sp
    ld h, b
    rlca
    ld h, b
    adc c
    ld b, b
    ld b, b
    and c
    ld b, b
    sbc $e7

jr_067_665d:
    ret nc

    db $ed
    jr nc, jr_067_666b

    db $fc
    inc hl
    ret nz

    jp hl


    ld [bc], a
    and b
    dec hl
    ld [hl], h
    add b
    ld [bc], a

jr_067_666b:
    ld b, b
    ld b, $0e
    ret nc

    ld [$a12f], a
    jr nc, jr_067_667c

    db $fc
    dec h
    ld [$c966], sp
    jr nz, jr_067_667c

    dec l

jr_067_667c:
    dec [hl]
    add c
    rst $10
    inc hl
    ld b, b
    inc bc
    ret nc

    add sp, $30
    dec c
    db $fc
    ld h, $c7
    ld b, c
    ld bc, $846b
    ldh [$c1], a
    jp nz, Jump_000_21c9

    call c, $d020
    ldh a, [$30]
    dec c
    db $fc
    inc h
    nop
    dec b
    ld h, b
    cp a
    rst $20
    inc b
    add d
    db $ec
    ld hl, $e0e0
    ret nc

    db $ed
    jr nc, jr_067_66b6

    ret nz

    rst $20
    nop
    ld a, [hl]
    jp hl


    add b
    db $e4
    ldh [$e0], a
    ret nc

    db $ed
    add b
    db $eb

jr_067_66b6:
    db $fc
    ld h, $d2
    call nz, Call_000_00c6
    add b
    ld [$4421], sp
    ld h, b
    call nc, $d006
    db $ec
    ldh a, [$ed]
    ld a, d
    inc b
    ld b, l
    ld b, l
    ld c, l
    nop
    ret nz

    ld [c], a
    ret


    ld [bc], a
    ret nc

    push hl
    ld b, b
    dec bc
    ldh a, [$ed]
    inc l
    ld bc, $4305
    ld a, l
    add a
    nop

jr_067_66de:
    inc b
    ld h, l
    and b
    push hl
    sub b
    db $ed
    jr nc, jr_067_66f3

    inc b
    ld b, d
    jp nz, Jump_067_4544

    jr nz, @-$3a

    ld b, c
    ld bc, $884d
    inc bc
    ld e, h

jr_067_66f3:
    push hl
    ret nc

    db $eb
    jr nc, @+$0f

    ld b, h
    ld b, e
    dec a
    add e
    jp nz, Jump_000_01a0

    ld c, e
    inc bc
    ld h, c
    rst $30
    ld bc, $a5e4
    ret nc

    db $ed
    jr nc, @+$0f

    inc b
    ld b, d
    ld a, h
    add h
    ld b, c
    ld c, e
    add a
    ld [$a6e4], sp
    ret nc

    db $ec
    jr nc, jr_067_6725

    ld b, a
    add hl, bc
    ld l, e
    add a
    ld [$5000], sp
    ld b, $d0
    db $ec
    jr nc, jr_067_6731

    add [hl]

jr_067_6725:
    ld bc, $e6c0
    add c
    db $e4
    ret nz

    ldh [$e0], a
    rst $20
    nop
    ret nc

    db $ec

jr_067_6731:
    jr nc, @+$10

    rlca
    ld h, $3f
    pop bc
    ld a, d
    inc h
    add d
    ld hl, $e5e0
    ret nc

    db $ed

Jump_067_673f:
    nop
    jr nc, jr_067_674e

    ld b, c
    add sp, -$08
    rst $20
    add b
    ldh [$e0], a
    and $d0
    db $ec
    jr nc, jr_067_675b

jr_067_674e:
    ld [hl-], a
    ld [bc], a
    nop
    ret nz

    xor $e0
    ld [$ead0], a
    adc $e4
    jr nc, jr_067_6761

jr_067_675b:
    db $fc
    jr nz, jr_067_66de

    ldh a, [$a8]
    and b

jr_067_6761:
    nop
    ldh [$e7], a
    ret nc

    ld [$0540], a
    jr nc, jr_067_6772

    ret nz

    push af
    ldh [$e5], a
    ret nc

    db $ed
    jr nc, jr_067_6780

jr_067_6772:
    nop
    add b
    pop af
    ldh [$e8], a
    ret nc

    xor $30
    inc c
    ccf
    ld b, l
    dec b
    ld b, b
    ld [hl], d

jr_067_6780:
    ld b, h
    ld c, h
    ld [hl+], a
    ld [$f6d0], sp
    jr nc, jr_067_6795

    add d
    ld [$412b], sp
    and c
    ret nz

    db $ed
    ret nc

    db $ed
    jr nc, @+$0d

    ld [bc], a
    ret nz

jr_067_6795:
    ld [$000b], a
    ld h, b
    add b
    xor $40
    dec c
    jr nc, jr_067_67ac

    ret nz

    ld b, c
    ld b, d
    ld b, d
    inc bc
    dec bc
    dec l
    ld a, a
    db $e4
    ret nc

    ei
    jr nc, jr_067_67b6

jr_067_67ac:
    dec a
    ld bc, $407f
    add c
    push hl
    ldh [$3f], a
    ld [c], a
    ret nc

jr_067_67b6:
    ld sp, hl
    add sp, -$5d
    jr nc, jr_067_67c3

    and h
    and d
    dec l
    ld c, l
    ld l, e
    add b
    ld b, c
    db $e3

jr_067_67c3:
    add b
    add c
    ld b, c
    ld b, d
    ldh [$e6], a
    ret nc

    db $ed
    jr nc, @+$0f

    ld h, h
    and e
    dec l
    inc bc
    ld l, e
    ld c, e
    rst $38
    pop hl
    ld b, b
    ld hl, $4202
    ld bc, $e040
    db $e4
    ret nc

    db $ed
    nop

jr_067_67e0:
    jr nc, jr_067_67ef

    inc h
    and e
    adc h
    ld h, b
    ld b, b
    pop bc
    add d
    db $e3
    rst $20
    add d
    ldh [$e5], a
    ret nc

jr_067_67ef:
    db $ed
    nop
    jr nc, jr_067_6800

    di

Call_067_67f4:
    dec b
    adc b
    nop
    db $fd
    pop hl
    ld b, l
    ld hl, $a047
    add c

jr_067_67fe:
    jr nz, jr_067_67e0

jr_067_6800:
    db $e4
    nop
    ret nc

    db $ed
    jr nc, jr_067_6812

    ld d, h
    dec h
    and b
    ld bc, $45f0
    ld l, e
    ld b, d
    ldh [$e5], a
    ret nc

    db $ec

jr_067_6812:
    nop
    jr nc, jr_067_6823

    ret nz

    push hl
    ldh a, [$e0]
    ret nz

    and $41
    jr nz, jr_067_67fe

    and $d0
    db $ed
    jr nc, jr_067_682f

jr_067_6823:
    nop
    ret nz

    and $80
    db $e4
    add sp, $04
    ldh [$e7], a
    ret nc

    db $ec
    nop

jr_067_682f:
    nop
    nop
    sbc a
    ret c

    push de
    push de
    ret c

    and b
    rst $38
    add sp, -$10
    and $d3
    sbc e
    ret nc

    db $d3
    add sp, -$19
    add sp, -$17
    ldh [$ee], a
    set 4, h
    jp nc, $d637

    call nc, $bdd6
    ld [c], a
    sbc $df
    jp nz, $f0e2

    and $87
    rst $10
    call nc, $ecd7
    db $e3
    and d
    db $e4
    ldh [$ed], a
    ret nc

    db $e4
    sub $df
    jp nc, $d2d0

    call nc, $95d6
    ldh [$e0], a
    pop hl
    sbc h
    adc e
    ld [c], a
    ldh a, [$e6]
    jp c, $dad9

    db $ec
    db $e3
    ld h, d
    ldh [$ea], a
    ret c

    ld e, [hl]
    ldh [$e0], a
    db $ed
    ret nc

    db $e4
    rst $10
    call nc, $e0bf
    rst $10
    jp nc, $d8ef

    and b
    ld [c], a
    db $e3
    ldh a, [$eb]
    call c, $dcdb
    ld l, $ec
    ld [c], a
    sbc a
    and d
    sbc l
    rst $38
    pop hl
    sbc a
    ldh [$ed], a
    ret nc

    db $e4
    xor e
    db $dd
    reti


    ld d, a
    ldh [$dd], a
    inc d
    ld [c], a
    db $eb
    ld c, e
    ldh [$d2], a
    ld l, h
    ldh a, [$eb]
    pop bc
    ldh [$b6], a
    sub b
    rst $38
    ld [c], a
    or [hl]
    sbc a
    ldh [$f1], a
    or a
    rst $10
    jp nc, $bed0

    ldh [$dd], a
    pop de
    call nc, $ecc1
    push hl
    db $ed
    ld c, e
    ldh [$d3], a
    ldh a, [$eb]
    pop bc
    ld [c], a
    sub c
    xor [hl]
    xor [hl]
    ld [hl], e
    ld b, [hl]
    sub c
    cp a
    ldh [$e0], a
    ldh a, [$da]
    db $d3
    call nc, $e040
    sbc d
    cp $c0
    rst $10
    ld a, h
    jp $d7dc


    ldh a, [$eb]
    pop bc
    db $e3
    xor a
    db $eb
    xor a
    ld b, [hl]
    cp a
    ldh [$9e], a
    ldh [$f0], a
    call c, $d9d7
    ld h, $40
    ldh [$d4], a
    rst $10
    call nc, Call_000_3bc0
    jp $f0da


    ld [$e282], a
    rst $38
    ld b, [hl]
    xor a
    ld c, b
    ld c, [hl]
    ld c, b
    ld b, l
    xor [hl]
    sub c
    ld e, b
    ld a, $e0
    ldh [$ed], a
    sbc d
    ret nz

    db $db
    db $db
    call $dae0
    call nc, $f8c0
    ld a, a
    db $e4
    ldh a, [$e9]
    inc b
    ld [c], a
    ld b, [hl]
    ld b, [hl]
    ld d, c
    ld e, [hl]
    ld d, h
    rrca
    ld e, c
    ld b, l
    xor a
    ld b, [hl]
    db $fd
    pop bc
    ldh [$eb], a
    ld c, a
    pop hl
    call $b2e2
    jp nz, $d8e1

    cp b
    and l
    ldh a, [$e4]
    sbc $df
    push bc

jr_067_6939:
    pop bc
    jp $c0fe


    ldh [rLYC], a
    ld e, e

Call_067_6940:
    ld a, [hl+]
    cpl

Jump_067_6942:
    ld a, [hl+]
    ld b, l
    sub c
    rst $00
    sub b
    sub b
    and c
    ldh [$e9], a
    ret nc

    and $82
    and c
    db $e4
    push hl
    ld e, c
    ret c

    ld hl, sp-$60
    db $76
    and a

jr_067_6957:
    db $e4
    push hl
    ldh a, [$a0]
    sbc [hl]
    pop bc
    ldh [rIE], a
    call nz, $9190
    ld b, l
    ld b, a
    ld d, l
    jr nz, jr_067_6987

    rrca
    ld a, [hl+]
    ld b, l
    jp $fe90


    ret nz

    rst $30
    and c
    ret nc

    db $ec
    adc b
    ld [c], a
    dec de
    and $e7
    db $76

jr_067_6978:
    ret nz

    pop de

jr_067_697a:
    ret nc

    ld sp, hl
    and b
    ldh a, [$e5]
    ldh a, [$a0]
    ld a, [$e0c0]
    call nz, $c043

jr_067_6987:
    ld b, l
    ld d, d
    ld d, l
    jr nc, jr_067_69bc

    adc a
    ld b, d
    ld b, [hl]
    call nz, $bec3
    jp nz, $eed0

    jr jr_067_6939

    add sp, -$7d
    jp hl


    jp c, $a3b7

    ldh a, [$e6]
    db $ec
    add b
    add b
    pop hl
    inc bc
    ret nz

    xor [hl]
    ccf
    xor [hl]
    ld [hl], $21
    ld a, [hl+]
    ld b, l
    ld b, [hl]
    ld [hl], l
    ldh [$c0], a
    ld [c], a
    ld [$edd0], sp
    jr jr_067_6957

    ld b, [hl]
    pop bc
    jp c, $a1b7

    ld a, c

jr_067_69bc:
    ret nz

    ldh a, [$e4]
    xor h
    add b
    db $fd
    and c
    add b
    ld [c], a
    sub c
    xor a
    xor a
    inc a
    inc a
    ld b, h
    dec c
    sub c
    ld [hl], $e0
    sub b
    sbc [hl]
    call c, $d081
    db $ed
    jr jr_067_6978

    jr nz, jr_067_697a

    push bc
    call c, $c077
    jp c, $c079

    ldh a, [$e5]
    add l
    and l
    ld b, l
    scf
    cpl
    jr c, @+$37

    ld [hl], $45
    ld [hl], $e2
    sbc [hl]
    call c, $d081
    db $ed
    ldh [rNR23], a
    and c
    ld b, h
    push bc
    ld a, [hl-]
    pop bc
    ldh a, [$e7]
    ccf
    pop hl
    sub b
    sub b
    ld b, h
    rrca
    inc a
    dec [hl]
    ld [hl], $ae
    add e
    ret nz

    dec a
    and c
    call c, $d081
    db $ed
    ld a, h
    inc b
    sub c
    ret nz

    jp hl


    add hl, sp
    dec [hl]
    ld a, [hl-]
    xor [hl]
    xor a
    cp $84
    nop
    rst $38
    db $ec
    call nz, $c261
    ld h, d
    inc b
    add c
    or a
    ld h, b
    push af
    ld h, b
    inc a
    jp $8308


    ld e, $c5
    add e
    add hl, sp
    dec sp
    add hl, sp
    xor a
    add c
    pop hl
    add c
    and c
    call c, Call_067_58a5
    ret nc

    add sp, -$66
    ld h, d
    inc b
    add c
    db $d3
    sub $36
    add c
    sub $f0
    and $be
    add [hl]
    add h
    sub c
    ld c, b
    ld c, [hl]
    ld c, c
    ld d, d
    jp nz, $9d80

    db $10
    pop bc
    pop hl
    call c, $d0a5
    db $ed
    inc b
    add b
    ret c

    ei
    ld h, b
    cp b
    add c
    ldh a, [$e5]
    ei
    sbc a
    sbc l
    inc b
    and d
    ld b, [hl]
    ld b, [hl]
    ld d, e
    ld d, h
    ld d, a
    nop
    ret nz

    ldh [$85], a
    and d
    call c, $d0a6
    add sp, $0d
    pop bc
    rla
    add c
    or $60
    ld c, [hl]
    ld h, b
    db $e3
    reti


    db $dd
    ldh a, [$e4]
    add hl, bc
    add d
    ld b, a
    add b
    xor [hl]
    ld b, l
    scf
    add a
    scf
    ld b, e
    ld b, l
    add l
    and c
    and e
    add c
    call c, $d0a4
    jp hl


    db $d3
    db $dd
    jp c, $8317

    db $d3
    ret nc

    pop de
    rst $30
    ld h, b
    ret nc

    ret nc

    db $fc
    ldh a, [$e3]
    pop bc
    db $e3
    ld b, [hl]
    xor a
    xor a
    xor a
    ld [hl], $62
    add a
    ld h, e
    ld a, h
    ld a, l
    ld b, e
    add c
    ldh [rLCDC], a
    call c, $d0a4
    ld [$c8d7], a
    add [hl]
    add h
    jr c, jr_067_6b1d

    or $40
    call nc, $e2f0
    add d
    db $e3
    ld b, l
    scf
    rst $38
    dec a
    dec a
    jr c, jr_067_6b2c

    ld h, a
    ld [hl], $43
    ld a, a
    ld bc, $037d
    add b
    ldh [rSTAT], a
    call c, $d0a5
    add sp, $07
    add a
    ld hl, sp+$62
    rst $30
    ld h, e
    xor $86
    and b
    sub b
    xor [hl]
    ld b, l
    add l
    ldh [$64], a
    ld h, h
    ld a, b
    dec b
    ld a, [hl-]
    ret nz

    add b
    add c
    jp $e060


    ld b, d
    jp nc, $d0a7

    push hl
    rlca
    add a
    ldh a, [$f8]
    ld h, d
    rst $30
    ld h, e
    add [hl]
    add c
    ld b, [hl]

Call_067_6b00:
    ldh [$67], a
    dec [hl]
    dec [hl]
    jr c, jr_067_6b15

    jr c, jr_067_6b41

    ld d, c
    ld e, [hl]
    ret nz

    ld [c], a
    inc bc
    call z, $e5d0
    xor l
    add [hl]
    db $ec
    ld hl, sp+$65

jr_067_6b15:
    call z, $c444
    ld b, h
    pop bc
    pop hl
    ld [hl], $47

jr_067_6b1d:
    ld d, d
    rra
    ld b, h
    ld b, [hl]

Jump_067_6b21:
    ld e, e
    add e
    add h
    ret nz

    db $eb
    ret nc

    db $eb
    call z, $f020
    ld b, a

jr_067_6b2c:
    add b
    ld c, $80
    inc d
    ld b, l
    adc l
    ld b, d
    jp Jump_067_6942


    dec [hl]
    rst $38
    jr c, jr_067_6b71

    ld c, d
    ld h, b
    ld h, c
    ld e, h
    xor [hl]
    add e
    rrca

jr_067_6b41:
    add [hl]
    add l
    sub b
    sbc [hl]
    ldh [$e6], a
    ret nc

    db $ed
    rst $00
    ld h, b
    rlca
    add b
    pop af
    rst $10
    ld c, $80
    ld a, l
    ld h, l
    add hl, bc
    and d
    call nz, Call_067_6940
    inc a
    rst $38
    ld b, h
    xor [hl]
    ld c, d
    ld d, d
    ld e, e
    ld b, l
    xor a
    adc d
    ld hl, $0485
    ld h, b
    ldh [$e6], a
    ret nc

    db $ed
    ret


    and e
    jp c, $211e

    dec c
    inc h

jr_067_6b71:
    ld a, c
    sbc [hl]
    add hl, bc
    add d
    add b
    ldh [$36], a
    xor a
    ld b, l
    ld b, l
    cp [hl]
    and b
    ld bc, $c581

Jump_067_6b80:
    ld b, c
    ldh [$e6], a
    ret nc

    db $ed
    rst $00
    ld h, b
    add c
    ld b, b
    ret nz

    ld b, d
    push af
    ld h, d
    rst $28
    sbc $df
    sbc [hl]
    sub b
    sub h
    ld h, b
    sub b
    ld b, h
    ld l, c
    ld a, a
    dec [hl]
    dec [hl]
    dec sp
    add hl, sp
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld [bc], a
    rst $20
    db $10
    push de
    ld h, d
    ret nc

    db $ed
    rst $00
    ld h, b
    add c
    ld b, e
    ld [$220d], a
    ld [$5363], sp
    ld h, b
    ld e, $c0
    pop hl
    dec [hl]
    ld a, [hl-]
    ld b, l
    xor a
    ld [bc], a
    ld [c], a
    ei
    inc bc
    ldh [$e2], a
    ld h, b
    ret nc

    db $ed
    rst $38
    ld l, l
    ld [$c862], sp
    ld b, b
    ret nz

    ret nz

    dec [hl]
    dec [hl]
    db $fd
    ret nz

    rlca
    adc d

jr_067_6bcf:
    add l
    xor [hl]
    ld b, d
    push bc
    rst $18
    ld l, l
    db $dd
    ld bc, $0d30
    ld [$de63], sp
    ret z

    ld b, b
    ld b, b
    ld l, c
    dec [hl]
    xor h
    add b
    pop hl
    add c
    ld b, [hl]
    add c
    xor a
    ld b, a
    ld b, h
    call c, Call_000_3072
    ld a, [bc]
    db $fc
    inc hl
    add d
    and c
    ret nz

    ret nz

    ld l, e
    cpl
    ld l, h

jr_067_6bf7:
    xor l
    dec [hl]
    add hl, sp
    jp nz, $46c0

    add [hl]
    inc hl
    db $ec
    ld h, d
    ret nz

    inc d
    ret nz

    ret nc

    jp hl


    add d
    ldh [$30], a
    add hl, bc
    db $fc
    inc h
    adc l
    inc bc
    ld b, h
    ld l, [hl]
    sbc e
    ld l, a
    ld l, h
    rlca
    ld h, b
    add e
    add h
    ld b, a
    inc hl
    db $ec
    ld h, e
    db $d3
    pop hl
    ret nc

    ret nc

    jp hl


    jr nc, jr_067_6c2f

    db $fc
    dec h
    ld c, h
    ld [bc], a
    ld b, l
    ld [hl], $6e
    rra
    ld [hl], b
    ld [hl], c
    ld [hl], c
    adc b
    add a

jr_067_6c2f:
    jp nz, Jump_067_64c1

    ld hl, $a200
    nop
    ret nc

    db $eb
    ld a, [hl-]
    add d
    jr nc, jr_067_6c44

    db $fc
    ld h, $3f
    and c
    ret nz

    add b
    ld a, a
    ret nz

jr_067_6c44:
    ccf
    ret nz

    jr jr_067_6bcf

    nop
    rst $20
    and e
    add hl, bc
    add b
    rst $10
    jp nc, $e9d0

    di
    and d
    jr nc, jr_067_6c5d

    ld h, h
    db $fc
    ld h, $45
    ld b, c
    xor a
    cp a
    ld [c], a

jr_067_6c5d:
    ccf
    ret nz

    jp $e79e


    and e
    add [hl]
    add hl, bc
    add c
    jp c, $d0d3

    jp hl


    ldh a, [$e1]
    jr nc, jr_067_6c78

    jr nz, jr_067_6bf7

    sbc [hl]
    ld a, [$20c8]
    ld b, [hl]
    ld b, l
    ld b, b
    dec [hl]

jr_067_6c78:
    ld b, d
    sub c
    call nz, Call_000_009e
    rla
    call nz, $0191
    inc hl
    nop
    ret nc

    add sp, -$10
    ldh [$30], a
    inc c
    ld a, [c]
    dec h
    dec b
    ld b, c
    inc bc
    sub c

jr_067_6c8f:
    ld b, d
    rst $38
    and c
    ret


    ld bc, $27dc
    ld b, e
    nop
    ret nc

    ld [$803e], a
    nop
    jr nc, @+$0c

    pop af
    inc h
    ld a, l
    call nz, $e180
    inc b
    ld h, h
    call $d0a6
    db $eb
    ld a, a
    ld [hl+], a
    db $10
    jr nc, jr_067_6cba

    inc b
    ld b, c
    rst $38
    ld h, c
    ld d, b
    nop
    add hl, sp
    ccf
    and c
    rst $00

jr_067_6cba:
    dec h
    inc b
    ld b, l
    jr nz, jr_067_6c8f

    db $ed
    jr nc, @+$0f

    inc b
    ld b, b
    rlca
    ld [hl+], a
    ret nc

    nop
    ld a, $80
    pop bc
    push bc
    ld [hl+], a
    add b
    ldh [$e8], a
    ret nc

    db $ed
    jr nc, @+$0f

    jr jr_067_6d36

    ld [$7b22], sp
    and b
    ret nz

    ldh [rSCY], a
    dec b
    sub c
    dec a
    ld bc, $e0a1
    add sp, -$30
    db $ed
    jr nc, jr_067_6cf5

    ret z

    dec b
    dec b
    ld [hl+], a
    inc b
    add a
    ld bc, $e0bf
    sbc [hl]
    ldh [$e8], a
    ret nc

jr_067_6cf5:
    db $ed
    jr nc, jr_067_6d05

    add c
    ld b, d
    adc e
    pop hl
    ld c, $45
    nop
    ld b, c
    ld b, l
    sub c
    ld [hl], l

Jump_067_6d03:
    add c
    ld b, b

Call_067_6d05:
jr_067_6d05:
    add c
    db $e4
    and [hl]
    ret nc

    db $ed
    nop
    jr nc, jr_067_6d1a

    add e
    pop bc
    call z, $bfe1
    ld [hl+], a
    pop bc
    db $e3
    nop
    add d
    inc b
    ld b, l
    ret nc

jr_067_6d1a:
    db $ed
    nop
    jr nc, jr_067_6d2d

    add b
    ld h, e
    db $fc
    call nz, $e2b6
    nop
    add e
    ld bc, $3091
    ld c, $00
    add [hl]
    nop

jr_067_6d2d:
    cp [hl]
    and $00
    pop hl
    inc b
    sub e

jr_067_6d33:
    call nz, $c261

jr_067_6d36:
    ld h, d
    jr nc, jr_067_6d41

    or d
    ld h, b
    add b
    ld b, d
    ld [bc], a
    ld a, [hl]
    add sp, -$3d

jr_067_6d41:
    ld b, b
    ld h, d
    ldh [$e7], a
    ret nc

    ld [$428d], a
    jr nc, jr_067_6d56

    ld b, b
    ld b, e

Jump_067_6d4d:
    nop
    add e
    and $73
    ld h, b
    nop
    ld h, c
    ldh [$e7], a

jr_067_6d56:
    ret nc

    db $ed
    jr nc, jr_067_6d64

    ret nz

    push hl
    add e
    rst $20
    nop
    ret nz

    jp $e8e0


    ret nc

jr_067_6d64:
    ld [$8111], a
    jr nc, jr_067_6d72

    ld bc, $c080
    ld b, c
    ld b, d
    ld bc, $0562
    ld b, b

jr_067_6d72:
    sub c
    ret nz

    add $e0
    add sp, -$30
    ld [$dad3], a
    daa
    add d
    ld [hl], b
    jr nc, @+$08

    ldh a, [$e0]
    ret nz

    ld b, d
    ld b, e
    ld bc, $3d3d
    scf
    ld bc, $08a0
    ret nz

    push hl
    ldh [$e6], a
    ret nc

    ld [$7fd7], a
    inc b
    jr nc, @+$07

    ldh a, [$e0]
    ld b, d
    ld bc, $916f
    add hl, sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    add hl, sp
    ld b, b

Jump_067_6da5:
    and e
    ret nz

    ldh [$ea], a
    ret nc

    ld [$8637], a
    jr nc, @+$06

    cp [hl]
    jr nz, jr_067_6d33

    ld bc, $3e46
    rst $38
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld a, $46
    nop
    dec [hl]
    ld b, b
    cp a
    ld b, c
    ldh [$e8], a
    ret nc

    ld [$a7c3], a
    jr nc, jr_067_6dce

    daa
    add c
    ld b, b

jr_067_6dce:
    nop
    inc b
    ret nz

    ldh [$81], a
    jr nz, @+$37

    ret nz

    ldh [rLCDC], a
    add h
    ldh [$e9], a
    ret nc

    jp hl


    jr nc, @+$10

    sbc $00
    add e
    sub c
    add hl, sp
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    add hl, sp
    pop bc
    sub c
    ld bc, $d884
    ld h, [hl]
    ret nc

    db $ed
    jr nc, jr_067_6e01

    jr jr_067_6e38

    sbc a
    or [hl]
    nop
    ret nz

    add $c1
    db $e4
    ldh [$e6], a
    ret nc

    db $ed

jr_067_6e01:
    jr nc, jr_067_6e10

    jr z, jr_067_6e47

    ld a, [hl]
    pop hl

Jump_067_6e07:
    ld b, b
    jp $c340


    ld hl, $a15b
    ldh [$e6], a

jr_067_6e10:
    ret nc

    db $ed
    jr nc, jr_067_6e21

    cp $45
    sbc l
    rst $38
    db $e3
    nop
    add h
    ld hl, $61dd
    ldh [$e6], a
    ret nc

jr_067_6e21:
    db $ed
    jr nc, jr_067_6e31

    db $fc
    ld b, l
    db $db
    dec b
    ldh a, [rLCDC]
    nop
    add sp, -$1b
    dec b
    add d
    ret nc

    db $ed

jr_067_6e31:
    jr nc, jr_067_6e41

    inc d
    dec h
    db $eb
    ld h, c
    db $e4

jr_067_6e38:
    add e
    add sp, -$1d
    nop
    ldh [$e4], a
    ret nc

    xor $2f

jr_067_6e41:
    sub b
    db $fc
    jp $e6f4


    db $dd

jr_067_6e47:
    ld h, l
    rst $38
    ld [hl], c
    nop
    nop
    nop
    pop bc
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
    nop
    nop
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $eb
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $f4
    nop
    nop
    nop
    ld [bc], a
    nop
    inc h
    ld b, $02
    ld bc, $0625
    ld [bc], a
    ld [bc], a
    inc hl
    rlca
    ld [bc], a
    inc bc
    jr z, jr_067_6e87

    ld [bc], a
    inc b
    rra
    ld a, [bc]
    ld [bc], a
    dec b
    ld e, $0b

jr_067_6e87:
    ld [bc], a
    ld b, $29
    dec bc
    ld [bc], a
    rlca
    ld a, [hl+]
    inc c
    ld [bc], a
    ld [$0d1e], sp
    ld [bc], a
    add hl, bc
    ld [hl+], a
    dec c
    ld [bc], a
    ld a, [bc]
    inc hl
    dec c
    ld [bc], a
    dec bc
    add hl, hl
    dec c
    ld [bc], a
    inc c
    jr z, jr_067_6eb1

    ld [bc], a
    dec c
    dec h
    db $10
    ld [bc], a
    ld c, $24
    ld de, $0f02
    dec e
    dec d
    ld [bc], a
    db $10

jr_067_6eb1:
    ld e, $15
    ld [bc], a
    ld de, $151f
    ld [bc], a
    ld [de], a
    add hl, de
    jr @+$04

    inc de
    jr jr_067_6ed8

    ld [bc], a
    inc d
    jr @+$1d

    ld [bc], a
    dec d
    ld [hl+], a
    dec de
    ld [bc], a
    ld d, $1d
    inc e
    ld [bc], a
    rla
    dec d
    dec e
    ld [bc], a
    jr jr_067_6ee8

    ld e, $02
    add hl, de
    jr nz, @+$20

    ld [bc], a

jr_067_6ed8:
    ld a, [de]
    rla
    rra
    ld [bc], a
    dec de
    ld d, $20
    ld [bc], a
    inc e
    jr nz, @+$22

    ld [bc], a
    dec e
    inc hl
    jr nz, jr_067_6eea

jr_067_6ee8:
    ld e, $1c

jr_067_6eea:
    ld hl, $1f02
    add hl, de
    dec h
    ld [bc], a
    jr nz, jr_067_6f13

    dec h
    ld [bc], a
    ld hl, $261a
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld h, $02
    inc hl
    add hl, de
    ld a, [hl+]
    ld [bc], a
    inc h
    ld hl, $022c
    dec h
    ld [hl+], a
    dec l
    ld [bc], a
    ld h, $16
    ld l, $02
    daa
    ld hl, $022e
    jr z, jr_067_6f27

    cpl

jr_067_6f13:
    ld [bc], a
    add hl, hl
    jr nz, @+$31

    ld [bc], a
    ld a, [hl+]
    ld d, $30
    ld [bc], a
    dec hl
    ld [hl+], a
    ld sp, $2c02
    jr @+$34

    ld [bc], a
    dec l
    inc hl
    ld [hl-], a

jr_067_6f27:
    ld [bc], a
    ld l, $1f
    inc sp
    ld [bc], a
    cpl
    jr nz, jr_067_6f63

    ld [bc], a
    jr nc, jr_067_6f48

    dec [hl]
    ld [bc], a
    ld sp, $3721
    rst $38
    rst $38
    rst $38
    ld b, d
    ld l, a
    jp $ec74


    ld a, e
    ld c, $7c
    ld e, a
    ld l, $0e
    ld c, $0e
    ld c, l

jr_067_6f48:
    rst $38
    db $e4
    ld l, [hl]
    push af
    db $e4
    ld [hl], e
    dec c
    dec c
    xor $e3
    ld hl, sp-$1b
    ld l, $2e
    ld c, [hl]
    db $dd
    push hl
    adc c
    ld c, l
    ret nc

    jp hl


    call z, Call_000_2ee2
    jp z, $bde0

jr_067_6f63:
    pop hl
    set 4, b
    ld l, $61
    ld l, $e5
    add sp, -$45
    add sp, -$64
    ldh [$ab], a
    db $e4
    ld l, $0e
    ret nc

    jp hl


    ld c, h
    or d
    pop hl
    pop bc
    ldh [$4e], a
    ld c, [hl]
    ret nz

    push hl
    ld [hl], l
    pop hl
    ld c, $82
    ldh [rNR11], a
    dec l
    ret nz

    db $ec
    xor b
    pop hl
    ret nz

    db $e3
    ld l, $d0
    jp hl


    ldh a, [$e2]
    adc e
    ldh [$ef], a
    ld c, $0e
    ld c, [hl]
    ld c, $98
    push hl
    dec c
    ld l, l
    ld l, l
    ld h, e
    dec c
    dec l
    cp a
    pop hl
    dec sp
    ldh [$39], a
    ldh [$2d], a
    dec l
    ret nz

    db $ed
    ld d, b
    ret nc

    add sp, -$40
    rst $20
    ccf
    ld [c], a
    dec b
    ld [c], a
    ld l, l
    adc $e0
    dec l
    cp a
    db $e4
    inc bc
    ld l, l
    dec c
    ld [hl], h
    db $e4
    ld [$d8c3], a
    ret nz

    ret nc

    ld [$ecf0], a
    add l
    pop hl
    inc b
    add e
    ldh [rIE], a
    pop hl
    dec l
    cp [hl]
    ldh [$b9], a
    pop bc
    di
    pop hl
    ld [hl], h
    db $e4
    daa
    ldh [rSVBK], a
    ret nz

    db $ec
    ldh a, [$ed]
    add l
    pop hl
    ld d, d
    ldh [$0d], a
    dec c
    ld c, e
    cp a
    pop hl
    add b
    ld [hl], l
    pop hl
    cp a
    and $6f
    call nz, $c19e
    sub b
    add sp, -$10
    db $eb
    ld d, d
    ldh [rWX], a
    ld [$e0ff], sp
    ret nz

    pop hl
    ld a, $e0
    ld c, l
    ld [hl], h

jr_067_6ffe:
    ldh [$b3], a
    ld [c], a
    ld [hl], d
    pop hl
    ret nz

    rst $20
    ld hl, sp-$31
    jp nz, $e8c0

    ldh a, [$e8]
    dec c
    dec c
    dec hl
    dec bc
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld a, [hl+]
    ld b, c
    db $e4
    db $fd
    and $fd
    push bc
    inc h
    pop hl
    adc a
    call nz, $e680
    call nc, $a1e5
    xor $a3
    ld l, l
    ld d, d
    pop hl
    ld a, [bc]
    pop bc
    ldh [$2a], a
    dec bc
    ccf
    dec hl
    dec bc
    ld c, e
    ld c, e
    dec hl
    dec bc
    push bc
    db $e4
    db $f4
    pop bc
    nop
    jr nc, jr_067_6ffe

    or h
    ret nz

    ret nz

    pop hl
    cp [hl]
    and h
    or l
    ldh [$eb], a
    and d
    db $db
    jp nz, $c058

    cp $ca
    jp nz, $0a4a

    dec bc
    dec bc
    dec bc
    dec hl
    dec hl
    ld [hl], c
    dec hl
    cp l
    ldh [$fb], a
    ldh [$36], a
    pop hl
    dec bc
    ld c, e
    dec hl
    ld a, $e4
    add b
    ret nz

    db $e4
    add hl, de
    pop bc
    ret nc

    db $e3
    ret z

    and c
    ld b, [hl]
    and d
    db $e3
    and h
    ld d, l
    ret nz

    ld l, e
    pop hl
    dec hl
    ret nz

    pop hl
    cp h
    ldh [$b9], a
    ldh [$f7], a
    pop bc
    dec hl
    ld a, [bc]
    ld a, [hl+]
    rlca
    ld a, [bc]
    ld a, [hl+]
    dec bc
    ret nz

    ld [$e7d0], a
    ret


    and l
    dec bc
    and d
    jr @-$3c

    ccf
    dec c
    ld c, l
    ld c, e
    ld l, e
    ld l, e
    ld c, e
    ld b, d
    ldh [$c0], a
    ld [c], a
    inc c
    or b
    pop hl
    cpl
    ldh [$0a], a
    ld c, d
    inc a
    push bc
    db $fc
    push bc
    ret nc

    db $e4
    inc d
    and b
    ld h, b
    push bc
    add d
    or a
    pop hl
    reti


    and c
    sub l
    and b
    sub d
    call nz, Call_067_4b6b
    cp $e1
    scf
    dec c
    dec bc
    dec c
    jr c, @-$1d

    ld a, [bc]
    ld a, [bc]
    rst $30
    ldh [$ba], a
    and l
    nop
    db $fc
    pop bc
    ret nc

    push hl
    ret nz

    push hl
    xor a
    add c
    and [hl]
    and c
    adc c
    add d
    cp c
    ret nz

    ld c, l
    and b
    db $10
    cp a
    pop hl
    db $fc
    and b
    scf
    ld [c], a
    dec l
    ldh [$2b], a
    cp a
    db $e3
    cp h
    push bc
    ret nc

    push hl
    nop
    add b
    db $e3
    and e
    add d
    add b
    db $e3
    dec e
    push bc
    ld b, c
    add b
    inc [hl]
    ldh [$c0], a
    ld [c], a
    di
    jp $7200


    ret nz

    scf
    and e
    ret nz

    and $1f
    add e
    pop de
    add h
    cp $e7
    or h
    add c
    ldh a, [$e2]
    nop
    di
    ret nz

    push af
    ret nz

    di
    ret nz

    or e
    jp $a16e


    inc a
    and $d0
    db $ec
    adc $e2
    inc a
    push de
    add b
    jp Jump_000_2ee1


    ld c, [hl]
    ld c, $4e
    cp [hl]
    ld [c], a
    adc b
    add b
    inc b
    add e
    jp nz, $c3b5

    ld l, e
    ld a, b
    and [hl]
    inc c
    jp $ead0


    call nz, $c0a0
    push hl
    and e
    ld l, [hl]
    ld l, [hl]
    cp a
    ldh [$f0], a
    ld [c], a
    ld l, [hl]
    ld h, b
    dec l
    ld b, e
    ret nz

    ld a, [bc]

Jump_067_713e:
    add d
    ld [bc], a
    pop hl
    ld l, e
    inc a

jr_067_7143:
    call nz, $80aa
    inc c
    call nz, $efd0
    ld d, l
    add b
    ld l, $f1
    ld l, [hl]
    ld [hl], $85
    ld d, a
    and d
    dec a
    ldh [rWX], a
    ld a, [bc]
    ld c, d
    ld l, e
    dec bc
    dec bc
    dec bc
    dec sp
    ret nz

    ld a, [hl+]
    rst $30
    add h
    jr nz, jr_067_7143

    push de
    ld h, d
    ret nc

    db $ed
    pop bc
    dec c
    dec bc
    pop hl
    or $67
    ldh a, [$e1]
    ret nz

    ldh [rSVBK], a
    and c
    dec c
    ld c, e
    rrca
    dec bc
    dec hl
    ld c, d
    ld a, [hl+]
    ld l, c
    add h
    add l
    ret nz

    adc h
    call nz, $ecd0
    ld [$e23d], sp
    ldh a, [$ea]
    ld [hl], $c2
    dec c
    call nz, Call_000_2fa0
    and c
    di
    ld h, b
    or a
    ld h, c
    adc b
    dec c
    and c
    call z, $d0a3
    db $ed
    dec l
    add h
    call nz, $e7f0
    or $a3
    ld c, d
    ld [bc], a
    nop
    pop hl
    dec bc
    or l
    add b
    pop bc
    ld [c], a
    inc c
    rst $00
    ret nc

    db $eb
    jr @-$7e

    ldh a, [$ee]
    jr @+$47

    ld h, c
    ld b, e
    ld h, b
    ret nz

    pop bc
    ld l, e
    ld l, e
    add hl, sp
    ld h, c
    ld b, h
    add d
    inc c
    push bc
    nop
    ret nz

    db $ed
    inc b
    push bc
    ldh a, [$ea]
    jr c, @+$63

    ld b, b
    ret nz

    xor a
    ld h, d
    daa
    ld h, c
    inc c
    ld b, a
    ret nz

    ret nc

    db $eb
    ret z

    and e
    cp [hl]
    call nz, $e4b3
    cp c
    and c
    cp l
    and c
    ld c, d
    ld c, d
    dec b
    ld c, e
    add c
    add b
    ld c, e
    ld b, c
    add c
    ld l, a
    ret nz

    call nz, $d0e9
    jp hl


    dec l
    ld b, b
    call nz, $a0c7
    sub d
    ld b, b
    dec l
    rst $38
    ld b, c
    ldh a, [$e5]
    ld hl, sp-$7f
    ld a, [bc]
    ld a, [bc]
    nop
    call nz, Call_067_72a2
    ld b, l
    dec hl
    ld b, c
    ldh [$e6], a
    ret nc

    and $07
    call nz, $a27d
    or e
    and c
    inc e
    rst $30
    and h
    jr nc, jr_067_7254

    ld l, e
    ld a, [bc]
    ld l, d
    ld bc, $bd84
    ld b, c
    ldh [$eb], a
    db $10
    ret nc

    rst $20
    ld [hl], $83
    ld c, e
    ld b, b
    nop
    and b
    ld c, [hl]
    ldh a, [$e6]
    ld_long a, $ff01
    ld h, b
    nop
    ld a, [hl-]
    add c
    ld a, [hl]
    ld [c], a
    ldh [$ed], a
    ret nc

    db $ed
    ld b, e
    ld b, c
    or h
    nop
    cp e
    pop hl
    ldh a, [$e4]
    add h
    scf
    ld b, c
    ld l, $61
    ld l, e
    xor a
    ld hl, $e224
    ldh [$eb], a
    ret nc

    db $e3
    dec l
    add d
    cp e
    add [hl]
    ld c, $f5
    ldh [$f3], a
    and b

jr_067_7254:
    xor e
    add l
    add d
    ld [hl+], a
    inc sp
    ld h, c
    ld l, e
    add b
    ld [hl], b
    ld b, d
    ldh [$ee], a
    ret nc

    push hl
    add d
    call nz, $e280
    ldh a, [$e8]
    pop bc
    add sp, $0d
    ld b, b
    ld [hl], d
    ld b, c
    ldh [$ed], a
    ret nc

    push hl
    jr nc, jr_067_7281

    cp b
    ld h, l
    jp nz, Jump_067_6b21

    ret nz

    add b
    nop
    ld [bc], a
    add b
    jr nc, jr_067_72a5

    ld b, d

jr_067_7281:
    ld b, [hl]
    ret nc

    jp hl


    jr nc, jr_067_7290

    inc b
    push bc
    add hl, bc
    ld b, d
    cp a
    pop hl
    nop
    or a
    ld b, c
    ld l, h

jr_067_7290:
    ld hl, $026e
    ccf
    and d
    ret nc

    ld [$a12f], a
    jr nc, jr_067_72a4

    inc b
    push bc
    ld [bc], a
    ret nz

    db $e3
    dec l
    ld l, [hl]

Call_067_72a2:
    jr nz, @-$7b

jr_067_72a4:
    ld h, c

jr_067_72a5:
    dec hl
    jr nz, jr_067_730b

    ld b, b
    ld a, b
    ld [bc], a
    sbc h
    ld h, b
    jr nc, @-$2e

jr_067_72af:
    jp hl


    jr nc, jr_067_72bf

    inc b
    push bc
    ret nc

    ld b, d
    dec l
    dec c
    ld a, b
    jr nz, jr_067_72af

    ld [hl+], a
    nop
    ld [hl], h
    pop hl

jr_067_72bf:
    ld [hl], $20
    ret nc

    rst $28
    jr nc, jr_067_72d2

    inc b
    add $96
    and c
    add c
    ldh [$b3], a
    ld [hl+], a
    nop
    ccf
    add c
    ld hl, sp+$00

jr_067_72d2:
    reti


    ld h, b
    ret nc

    xor $30
    dec c
    ret nz

    rst $20
    inc sp
    ld bc, $e241
    add b
    ccf
    add e
    cp a
    pop bc
    inc de
    ld b, d
    ret nc

    db $eb
    jr nc, jr_067_72f6

    xor a
    ld b, h
    pop bc
    db $e3
    dec l
    dec b
    ld c, e
    add c
    jp nz, $b40b

    jr nz, jr_067_7365

jr_067_72f6:
    ld bc, $0240
    ret nc

    db $ec
    ret nz

    db $ed
    nop
    db $76
    add h
    pop bc
    db $e3
    pop bc
    and h
    ret nz

    pop hl
    dec sp
    inc b
    sbc $c1
    ret nz

jr_067_730b:
    db $eb
    jr nc, jr_067_731c

    nop
    cp d
    inc h
    add d
    jp nz, $e440

    ld [hl], l
    inc bc
    ld a, a
    pop bc
    ld hl, sp+$60
    ld d, c

jr_067_731c:
    and d
    ret nc

    add sp, $49
    ld l, $30
    dec c
    ret nz

    add sp, $0b
    ld b, b
    db $e3
    add b
    inc h
    dec c
    ld c, b
    ld b, d
    ld c, b
    dec [hl]
    add b
    ret nc

    db $eb
    jr nc, jr_067_7341

    dec c
    di
    ld [bc], a
    adc [hl]
    jp nz, $f90d

    nop
    nop
    ld [hl-], a
    inc b
    db $fc
    nop

jr_067_7341:
    dec sp
    ld b, h
    ld e, b
    ld bc, $e9d0
    jr nc, jr_067_7357

    ldh a, [$e2]
    ld [hl-], a
    nop
    ld [$410b], sp
    rst $38
    and h
    dec a
    ldh [rOCPD], a
    inc [hl]
    ret nz

jr_067_7357:
    ld sp, hl
    inc hl
    sub d
    ld b, b
    ret nc

    ld [$3010], a
    inc c
    ldh a, [$e2]
    ld [hl-], a
    ld [bc], a
    sbc [hl]

jr_067_7365:
    and b
    ld c, e
    ld a, $a1
    add c
    ld [c], a
    ld hl, sp-$7e
    add b
    cp c
    inc bc
    and b
    pop bc
    ret nc

    rst $20
    jr nc, jr_067_7383

    ldh a, [$e2]
    cp a
    and $b9
    nop
    ld l, e
    nop
    ccf
    and b
    rst $30
    and e
    cp a

jr_067_7383:
    db $e3
    ld [de], a
    ld b, b
    ret nc

    jp hl


    jr nc, @+$14

    cp [hl]
    and d
    ld c, e
    ld [hl+], a
    dec b
    ld l, e
    ld b, e
    and b
    ld l, e
    add hl, sp
    dec b
    ld b, b
    push hl
    ret nc

    xor $30
    ld [$e6f0], sp
    ld [$c2a7], sp
    ld b, l
    add d
    scf
    dec b
    dec hl
    ld hl, sp+$02
    add b
    db $e4
    ret nc

    push hl
    jr nc, jr_067_73ba

    db $10
    ld a, [c]
    and $0d
    ld h, c
    sbc e
    add b
    ld b, e
    jr nz, @+$4f

    ld a, b
    ret nz

    ld [hl], a

jr_067_73ba:
    jp nz, Jump_000_02f8

    nop
    pop bc
    inc hl
    call z, Call_067_40e7
    rlca
    jr nc, jr_067_73c8

    ldh a, [$e6]

jr_067_73c8:
    cp l
    pop bc
    rst $38
    and $bd
    pop hl
    add b
    db $76
    add c
    db $76
    and e
    ld b, b
    ld [bc], a
    ret z

    inc h
    ld b, b
    dec b
    jr nc, jr_067_73e8

    cp a
    db $ed
    ld c, e
    nop
    ld [hl], e
    ld h, d
    db $fd
    and e
    ld h, h
    ld h, b
    ret z

    ld h, $c0

jr_067_73e8:
    push hl
    jr nc, @+$0a

    ldh a, [$e3]
    sbc h
    ld h, e
    nop
    ld c, l
    jp nz, Jump_000_22bc

    ld a, [$b3c0]
    pop bc
    xor l
    ld h, b
    or e
    ld h, c
    ret c

    ld h, $80
    nop
    inc b
    jr nc, jr_067_7410

    ldh a, [$e4]

jr_067_7405:
    ld c, [hl]
    ld c, l
    ld [hl+], a
    sub c
    and c
    ld a, [c]
    jp nz, $c0fa

    ld [hl], b
    and b

jr_067_7410:
    inc bc
    dec hl
    dec bc
    or a
    and d
    cp h
    nop
    ret z

    inc h
    ld b, b
    nop
    jr nc, jr_067_742a

    ldh a, [$e3]
    nop
    ld [hl], h
    ld hl, $c378
    ldh a, [rSTAT]
    or c
    jp $e2c1


jr_067_742a:
    xor d
    ld h, b
    ld [hl], c
    add c
    ret nz

    rst $20
    add b
    jr nc, jr_067_743e

    ldh a, [$e6]
    ret nz

    db $e4
    ld b, [hl]
    ld hl, $017e
    ldh a, [$a1]
    add d

jr_067_743e:
    pop hl
    dec l
    nop
    cp a
    db $e3
    ld hl, sp+$25
    cp l
    nop
    jr nc, @+$0f

    ret nz

    jp hl


    ld h, e
    jp $c270


    or c
    ld b, c
    nop
    add d
    pop hl
    ld a, [hl]
    ldh [$6e], a
    ld b, c
    ld c, d
    inc b
    rrca
    push bc
    ret nz

    add sp, -$02
    db $ec
    ld d, e
    call nz, Call_067_6d05
    add d
    and $2b
    xor [hl]
    ld h, c
    ret z

    xor e
    jr nc, jr_067_7476

    ldh a, [$e5]
    ldh [$ed], a
    add b
    ld sp, $b280
    ld h, c

jr_067_7476:
    pop bc
    pop hl
    inc hl
    jr nz, jr_067_7405

    xor c
    jr nc, jr_067_7488

    ldh a, [$f6]
    ld c, l
    ld bc, $382d
    and c
    add d
    push hl
    ret nc

jr_067_7488:
    and $30
    ld c, $f0
    or $bf
    ld [c], a
    ld b, e
    pop hl
    nop
    ld a, [hl+]
    push hl
    ret nc

    db $e3
    jr nc, @+$15

    ldh a, [$f1]
    ld a, [hl]
    pop hl
    pop bc
    ld [c], a
    xor l
    jp nz, $ebd0

    nop
    jr nc, jr_067_74aa

    ldh a, [$f9]
    rst $20
    ld [bc], a
    ld l, l

jr_067_74aa:
    call nz, $e5d0
    jr nc, jr_067_74bd

    ldh a, [$f8]
    ld c, c
    ld [bc], a
    nop
    ld l, l
    add $d0
    db $e4
    jr nc, jr_067_74c6

    ldh a, [$f9]
    ret nz

jr_067_74bd:
    and $d0
    add sp, $00
    nop
    nop
    rst $18
    ret c

    push de

jr_067_74c6:
    push de
    ret c

    and b
    rst $38
    db $e4
    db $d3
    ret nc

    dec c
    db $d3
    push af
    ld [c], a
    add sp, -$17
    xor $e3
    ld hl, sp-$1b
    add sp, -$1b
    ret c

    pop hl
    cp h
    ret nc

    jp hl


    ret z

    pop hl
    jp nc, $d4d6

    sub $bd
    ld [c], a
    sbc $1f
    rst $18
    and b
    rst $10
    call nc, $e5d7
    rst $20
    ldh a, [$e0]
    ld hl, sp-$1b
    call z, $e2e8
    ldh a, [$e2]
    ret c

    push de
    ret nc

    jp hl


    or d
    pop hl
    sub $d2
    rst $28
    ret nc

    jp nc, $d6d4

    adc b
    ldh [$e0], a
    pop hl
    and b
    rst $38
    jp c, $dad9

    and b
    and b
    ld [$a29f], a
    add e
    sbc l
    sbc a
    ld l, [hl]
    ldh [$f0], a
    ldh [rBCPS], a
    ld [c], a
    add sp, -$1b
    ldh a, [$e2]
    db $d3
    reti


    ret nc

    ret nc

    jp hl


    ld c, [hl]
    pop hl
    rst $10
    call nc, $e0bf
    rst $10
    jp nc, $d8ff

    and b
    ld [c], a
    db $e3
    and b
    call c, $dcdb
    ld a, a
    and b
    sbc a
    sbc l
    or [hl]
    jp $b690


    cp a
    ldh [$3e], a
    ldh a, [$e0]
    sbc a
    sbc l
    sbc l
    and d
    sbc a
    add sp, -$1c
    ldh [$e1], a
    xor h
    ret nc

    db $ed
    ld c, $e1
    db $dd
    reti


    ld c, d
    ldh [$dd], a
    rra
    and $9f
    rra
    or [hl]
    sub b
    sub b
    call nz, $bf90
    ld [c], a
    db $f4
    pop hl
    or l
    db $e3
    ld a, $e0
    call nz, $a0eb
    and b
    rst $10
    jp nc, $e8d0

    ldh a, [$e2]
    call $bed0
    ldh [$dd], a
    pop de
    rst $00
    jp nz, $e091

    sbc l
    or [hl]
    rst $38
    sub c
    ld a, c
    ld a, d
    ld a, h
    ld a, l
    sub c
    sub b
    sbc [hl]
    ld [c], a
    xor h
    ret nz

    sbc [hl]
    or l
    ldh [$74], a
    db $e3
    db $f4
    jp nz, $edec

    and b
    daa
    and b
    jp c, $d0d3

    rst $20
    ldh a, [$e3]
    call nc, $e040
    cp $c0
    db $fc
    rst $00
    ret nz

    add l
    pop hl
    sub b
    sub c
    ld a, c
    ld a, [hl]
    xor [hl]
    ld b, [hl]
    jp Jump_067_7d7f


    ret nz

    pop hl
    add c
    ld [c], a
    ld [hl], h
    db $e3
    db $f4
    push bc
    and b
    call c, $d769
    ret nc

    rst $20
    ldh a, [$e3]
    reti


    ld b, b
    ldh [$d4], a
    rst $10
    rst $00
    ret nz

    rst $28
    sbc a
    or [hl]
    sub c
    ld b, [hl]
    rst $38
    ldh [$82], a
    add e
    xor a
    rra
    ld b, [hl]
    add e
    add h
    sub b
    or [hl]
    ld [hl], l
    ldh [$36], a
    ld [c], a
    xor h
    ldh [$c9], a
    sbc [hl]
    inc b
    db $e3
    ld a, [de]
    jp nz, $d0da

    and $f0
    db $e4
    db $db
    db $db
    ld a, [$e0ed]
    jp c, $c0c7

    sbc [hl]
    sub b
    ld b, l
    ld b, e
    ld c, b
    rst $38
    ld c, [hl]
    ld c, b
    add l
    add a
    adc b
    adc b
    add a
    add l
    ld bc, $c791
    ld [c], a
    ei
    db $e4
    db $fd
    ret z

    sbc l
    ret nz

    ret nc

Call_067_7607:
    push hl
    ld l, a
    db $e4
    db $ed
    ld [c], a
    db $fc
    and c
    ret nz

    rst $00
    ret nz

    ld c, d
    ld c, h
    ld h, c
    ld d, h
    ld d, e
    ld b, c
    ccf
    ld b, e
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld b, l
    cp a
    pop hl
    push af
    ret nz

    add c
    ld a, e
    db $f4
    pop bc
    or d
    jp $a5f0


    ret nc

    db $e4
    or a
    and b
    cp b
    xor b
    db $e4
    rst $38
    push hl
    and c
    jp Jump_067_4a90


    ld d, [hl]
    dec hl
    inc l
    rst $38
    jr nz, jr_067_765e

    dec sp
    ld [hl], $37
    scf
    ld [hl], $38
    ccf
    scf
    ld b, l
    ld b, [hl]
    ld a, c
    ld a, d
    adc a
    cpl
    ldh [$f4], a
    ret nz

    inc d
    ld a, $e1
    ldh a, [$a4]
    ld [$e6d0], a

jr_067_7656:
    ret c

    ret z

    and b
    ld b, [hl]
    and d
    cp b
    ld [c], a
    rst $38

jr_067_765e:
    and $e7
    sbc [hl]
    call nz, $4590
    dec l
    jr nz, jr_067_7656

    jr nz, jr_067_7689

    daa
    dec [hl]
    rst $38
    ld [c], a
    ld a, [hl-]
    ld b, l
    ld a, c
    scf
    ld a, [hl]
    ld b, l
    ld c, b
    rst $38
    ldh [rLYC], a
    add c
    ret nz

    db $e4
    db $fc
    push bc
    call z, $e4d0
    ld b, [hl]
    ret nz

    pop de
    ret nc

    ret


    and b
    dec bc
    and e
    add sp, -$17

jr_067_7689:
    cp $07
    ret nz

    sub c
    cp l
    ld sp, $412b
    inc sp
    scf
    push af
    jr c, @-$40

    pop hl
    add hl, sp
    ld a, b
    ret nz

    ld b, h
    ld d, h
    ld d, a
    ld d, a
    daa
    ld h, c
    ld d, l
    add c
    ei
    xor e
    ret nc

    push hl
    jp c, $a387

    db $ed
    and b
    ld hl, sp+$0b
    and h
    add $a1
    adc d
    ret nz

    sbc l
    sbc h
    ld b, l
    ld [hl], $38
    ld a, a
    jr c, jr_067_76f0

    ld b, l
    add b
    ld b, [hl]
    xor a
    ld [hl], $36
    ldh [$8f], a
    ld d, d
    ld d, l
    add c
    ld b, l
    ei
    and h
    db $ec
    add h
    db $db
    add h
    call c, $da81
    add a
    and c
    db $10
    and b
    dec bc
    and c
    add hl, hl
    ld [c], a
    ld d, d
    and b
    adc d
    and d
    sbc h
    jp hl


    ld b, l
    rst $38
    ldh [$38], a
    ret nz

    ld [hl], $36
    pop hl
    jr c, jr_067_771f

    ld l, d
    ld c, e
    ld [hl], $45
    ld l, a
    and c
    and d
    db $ec
    add l

jr_067_76f0:
    ret nc

    push hl
    call c, $c047
    pop hl
    jp c, $c281

    ld [hl], h
    push bc
    dec a
    and l
    dec b
    pop bc
    sub c
    add l
    add a
    rst $38
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld l, h
    dec [hl]
    dec [hl]
    ld [hl], l
    inc bc
    ld h, [hl]
    ld [hl], $72
    jp nz, $84ec

    ret nc

    add sp, -$3a
    xor $f4
    ld h, [hl]
    ld a, [$ed80]
    ld b, [hl]
    add hl, sp
    pop hl
    ld l, [hl]

jr_067_771f:
    ld [hl], h
    or d
    ret nz

    ld [hl], a
    ld h, l
    ld a, l
    inc bc
    ld b, [hl]
    sub b
    ei
    call z, Call_067_67f4
    jp nz, $1462

    add c
    or a
    ld h, b
    push af
    ld h, b
    ld l, h
    ld l, h
    jp $80b9


    ld b, l
    ld c, c
    rst $38
    ldh [$36], a
    ld l, c
    ld [hl], d
    ret nz

    ei
    dec sp
    ld [hl], $30
    and b
    jp $90c4


    jp $b09e


    inc c
    add $d0
    add sp, -$73
    ld h, d
    inc d
    add c
    db $d3
    sub $36
    add c
    sub $fa
    ld a, l
    ld h, d
    ld [$c0fa], a
    ld d, d
    ld d, h
    ld d, h
    ld d, [hl]
    add hl, sp
    rst $08
    ld l, e
    ld l, h
    dec [hl]
    ld [hl], $3c
    jp nz, $e0c1

    call nz, $889e
    inc c
    add $d0
    db $ed
    inc b
    add b
    ret c

    ei
    ld h, b
    cp b
    add c
    ld d, l
    ld h, l
    sbc a
    rst $38
    sbc h
    ld b, [hl]
    ld c, d
    ld d, [hl]
    add hl, sp
    ld l, [hl]
    ld [hl], h
    ld [hl], $67
    ld c, c
    ld h, b
    ld d, h
    ldh a, [$80]
    ld a, [hl+]
    add b
    or [hl]
    sbc a
    inc c
    add $60
    ret nc

    add sp, $3d
    pop bc
    daa
    add b
    or $61
    ld b, c
    ld h, b
    reti


    db $dd
    ldh a, [$e5]
    rst $38
    and b
    and c
    xor [hl]
    ld c, d
    ld d, [hl]
    xor [hl]
    ld [hl], $69
    ccf
    ld [hl], $4b
    ld d, d
    add e
    add [hl]
    add l
    ld a, [$0c83]

jr_067_77b5:
    push bc
    and [hl]
    ret nc

    jp hl


    db $d3
    jp c, $8227

    call nz, $d140
    rst $30
    ld h, b
    ret nc

    ld sp, hl
    ret nc

    ldh a, [$e2]
    inc b
    ld h, c
    sbc [hl]
    xor a
    ld c, d
    ld d, [hl]
    xor a
    rrca
    ld [hl], $6b
    ld l, h
    ld [hl], $c1
    ldh [$fc], a
    add h
    inc c
    call nz, $ead0
    sub c
    rst $10
    or [hl]
    add h
    jr c, jr_067_7842

Jump_067_77e1:
    or $40
    call nc, $e2f0
    inc b
    ld h, c
    sbc [hl]
    rst $38
    sub c
    ld c, d
    ld e, b
    add hl, sp
    dec [hl]
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld c, $72
    add c
    or [hl]
    sbc l
    sbc a
    inc c
    ret


    ret nc

    add sp, $37
    add [hl]
    ld hl, sp+$63
    ld a, h
    daa
    add e
    inc b
    ld h, c
    or [hl]
    sub b
    xor [hl]
    ld d, [hl]

jr_067_7809:
    ld a, [hl-]
    cp a
    and b
    inc bc
    scf
    xor [hl]
    pop bc
    ldh [$3b], a
    ld h, [hl]
    jp nc, $d0a6

    push hl
    di
    and a
    ld hl, sp+$62
    call c, $8627
    ld b, e
    ld h, b
    xor a
    ld c, b
    ld [hl], $b8
    add b
    xor [hl]
    xor a
    ret nz

    ld b, $d0
    ret nc

    rst $20
    xor l
    add [hl]
    jr z, jr_067_77b5

    dec h
    add h
    or a
    ld b, b
    ld b, h
    ld c, l
    rst $38
    ld d, l
    inc a
    ld a, [hl-]
    xor [hl]
    xor a
    ld b, [hl]
    sub b
    and c
    jr nc, jr_067_7809

    xor [hl]

jr_067_7842:
    ret nc

    jp hl


    db $ec
    jr nz, @+$79

    add b
    db $e4
    push hl
    sbc [hl]
    daa
    ldh a, [$e1]
    cp $bd
    and c
    ld d, d
    ld d, l
    ld [hl], $36
    xor a
    ld a, c
    ld a, l
    pop bc
    sub c
    ld sp, $e041
    db $ed
    ret nc

    and $f7
    ld h, b
    scf
    add b
    rst $10
    and $f1
    rst $20
    xor l
    ld h, h
    ldh a, [$e4]
    cp a
    pop bc
    ld b, h
    ld c, e
    ld d, d
    ld b, h
    add a
    ld a, c
    ld a, [hl]
    ld a, a
    cp a
    ld [c], a
    ldh [$ed], a
    ret nc

    and $c9
    and e
    jp c, Jump_000_0cf0

    ld hl, $2200
    ldh a, [$e4]
    ld b, c
    ld b, b
    jp Jump_067_5245


    ld e, b
    ld l, a
    ld b, h
    add b
    scf
    scf
    ld [hl], c
    ld b, b
    or [hl]
    sbc a
    ldh [$ed], a
    ret nz

    ret nc

    and $f7
    ld h, b
    add c
    ld b, b
    ldh a, [rSCY]
    nop
    ld [hl+], a
    ldh a, [$e6]
    sbc [hl]
    call nz, $4617
    xor [hl]
    ld d, [hl]
    cp $80
    inc a
    add c
    and c
    ldh a, [rNR42]
    ldh [$ec], a
    adc b
    push bc
    ld h, h
    rst $30
    ld h, b
    or c
    ld b, e
    ld [$2300], a
    ldh a, [$e5]
    ccf
    pop bc
    xor a
    ccf
    ld [hl], $62
    db $76
    dec [hl]
    ld [hl], $8a
    add c
    and b
    or b
    jr nz, @-$0e

    ldh [$ec], a
    ret nc

    push hl
    cpl
    adc [hl]
    rst $28
    ld h, e
    sbc a
    or [hl]
    jp Jump_000_06c3


    pop bc
    db $e3
    xor [hl]
    add c
    ld b, c
    add b
    add b
    ld [c], a
    ldh [$e9], a
    rst $38
    ld h, l
    jr nc, jr_067_78f6

    sbc $f8
    rlca
    call nz, $45c4
    ld a, [hl-]
    ld b, b
    add b
    ld b, b
    xor a
    pop bc
    adc h

jr_067_78f6:
    jr nc, jr_067_791c

    call c, $e96b
    inc b
    jr nc, jr_067_7909

    add hl, hl
    ld b, h
    sbc $df
    db $ed
    and c
    push bc
    nop
    sub b
    xor [hl]
    ld b, b

jr_067_7909:
    add b
    ld a, [hl-]
    xor [hl]
    ld b, [hl]
    ld h, e
    ld b, [hl]
    adc h
    cp a
    pop bc
    inc h
    push bc
    ret nc

    ld [$d5d8], a
    jr nc, jr_067_7925

    xor $04

jr_067_791c:
    call nz, $e1e0
    sbc [hl]
    ld a, d
    ld bc, $42af
    ld l, [hl]

jr_067_7925:
    rst $00
    ld [hl], h
    ld a, [hl-]
    xor a
    ld a, [hl+]
    jr nz, jr_067_79a8

    ld b, b
    ld a, b
    inc bc
    db $d3
    ret nc

    ret c

    ret nc

    db $eb
    jr nc, jr_067_7942

    inc b
    push bc
    ld [c], a
    db $e3
    jr c, @+$03

    jp $bf46


    add hl, sp
    dec [hl]
    ld l, c

jr_067_7942:
    dec [hl]
    add hl, sp
    ld b, l
    ldh a, [rSB]
    call nz, $9003
    and c
    nop
    ld b, c
    ret nc

    db $ec
    ld a, [hl-]
    add c
    jr nc, jr_067_795c

    inc b
    add $43
    inc bc
    add a
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld a, a

jr_067_795c:
    ld h, c
    nop
    add d
    add hl, sp
    nop
    add hl, bc
    add b
    rst $10
    pop bc
    jp nc, $ead0

    di
    and c
    jr nc, jr_067_7975

    db $f4
    and a
    add b
    pop hl
    sub c
    add hl, sp
    ld h, c
    dec [hl]
    ld b, b

jr_067_7975:
    add c
    ccf
    add d
    cpl
    nop
    add hl, bc
    add c
    jp c, $d0d3

    ld [$f090], a
    ldh [$30], a
    ld a, [bc]
    db $f4
    and [hl]
    ld b, c
    pop hl
    sub b
    ld b, c
    ldh [$33], a
    ld hl, $033c
    ld b, h
    xor [hl]
    db $fd
    inc b
    sub c
    nop
    ld c, e
    add b
    ret nc

    add sp, -$10
    ldh [$30], a
    dec bc
    ret c

    di
    inc h
    pop bc
    ld [c], a
    add c
    nop
    ld h, l
    ld h, [hl]
    ld a, [c]

jr_067_79a8:
    nop
    ld [hl], $45
    ld de, $3baf
    rlca
    dec de
    add b
    ret nc

    jp hl


    and b
    ld a, $80
    jr nc, jr_067_79c2

    inc bc
    add l
    cp [hl]
    ld b, d
    ret nz

    ld a, c
    ld a, [hl]
    add hl, sp
    dec [hl]
    ld l, b

jr_067_79c2:
    cp a
    ldh [$36], a
    ld bc, $0145
    ld b, b
    nop
    ld h, d
    ld e, [hl]
    ld hl, $ecd0
    ld a, a
    ld [hl+], a
    jr nc, jr_067_79e1

    ld b, d
    jp nz, $8065

    ld b, b
    pop hl
    ld [hl], a
    ld a, l
    ldh [$80], a
    ld hl, $ae91
    inc a

jr_067_79e1:
    ld h, b
    jp nz, $01de

    sbc a
    ret nc

    pop af
    jr nc, jr_067_79f3

    di
    ld bc, $e201
    add d
    add e
    ld sp, hl
    ld b, l
    ld [hl], h

jr_067_79f3:
    ld bc, $e07d
    add hl, sp
    ld b, [hl]
    ld b, l
    ld b, c
    xor a
    ret nz

    inc a
    ld hl, $0675
    ret nc

    add sp, $30
    dec c
    ld a, b
    ld [c], a
    ld bc, $85c1
    add [hl]

jr_067_7a0a:
    rst $38
    add e
    ld b, [hl]
    ld b, h
    inc a
    dec [hl]
    dec [hl]
    ld l, d
    dec [hl]
    rlca
    ld a, [hl-]
    ld b, e
    ld [hl], $f8
    ld b, b
    ld a, [$7501]
    nop
    or $82
    ret nc

    add sp, -$08
    jr nc, jr_067_7a31

    ldh a, [$e2]
    ld [hl-], a
    ld bc, $8591
    adc e
    ld b, [hl]
    xor [hl]
    jr @-$40

    ld b, b
    ret nz

jr_067_7a31:
    ldh [rPCM34], a
    pop bc
    ld h, d
    ld a, h
    ld sp, hl
    add b
    ld l, d
    and b
    or [hl]
    add d
    ldh a, [$d0]
    add sp, $30
    dec c
    ldh a, [$e4]
    cp a
    pop hl
    add d
    add e
    xor a
    add hl, sp
    rst $18
    jr c, jr_067_7a83

    add c
    ld [hl], $39
    ld a, b
    ld b, b
    ld h, d
    ld h, a
    ld bc, $7740
    ld h, b
    scf
    add $d0
    rst $20
    jr nc, @+$0f

    ldh a, [$e5]
    ld a, h
    ret nz

    ld a, $e0
    ld e, a
    ld b, l
    ld b, l
    add e
    add h
    ld b, l
    ld hl, sp-$5f
    ld l, c
    jr c, @-$3e

    ldh [$b8], a
    nop
    ld [hl], $83
    ret nc

    jp hl


    ld bc, $4093
    jr nz, jr_067_7a0a

    call nz, Call_000_3c91
    db $fd
    ret nz

    ld b, e
    jr nz, @+$48

    add hl, sp

jr_067_7a83:
    dec sp
    dec [hl]
    scf
    and e
    ld hl, sp+$01
    or b
    ld [hl], e
    ld b, a
    rst $00
    ld h, a
    inc h
    sub c
    ld a, $a2
    add l
    add a
    add d
    jr nz, @-$6d

    rrca
    ld b, [hl]
    ld b, e
    scf
    jr c, jr_067_7ad4

    and e
    or a
    and a
    rst $30
    dec h
    ld a, [c]
    ld h, d
    and b
    jr nc, jr_067_7aaf

    ldh a, [$e6]
    inc a
    and e
    ld c, l
    pop bc
    or $60

jr_067_7aaf:
    sub c
    dec [hl]
    jp nz, $0139

    ld b, [hl]
    ld [$f661], a
    nop
    call nc, $5068
    ld [bc], a
    jr nc, jr_067_7acc

    db $f4
    ld h, d
    ei
    add e
    ld [hl], a
    jp $c3c4


    or $60
    sub b
    sub c
    ld b, [hl]

jr_067_7acc:
    ld [hl], e
    add b
    inc bc
    ld a, [hl-]
    ld b, l
    ld [$f361], a

jr_067_7ad4:
    ld bc, $67d4
    ld d, d
    jp nz, $0830

    ldh a, [$e6]
    xor [hl]
    ld a, h
    ld hl, $9d9d
    or [hl]
    pop bc
    pop hl
    or [hl]
    ld hl, sp-$20
    sub c
    ld a, [hl]
    ld a, [$3cc0]
    ld b, h
    sub c
    sub c
    ld b, l
    ld b, c
    ld [hl], d
    and b
    nop
    ld [hl], e
    ld bc, $24c8
    dec c
    pop bc
    jr nc, jr_067_7b06

    ldh a, [$e7]
    ld sp, hl
    and c
    jr c, jr_067_7a83

    pop bc
    ldh [$fe], a

jr_067_7b06:
    add l
    ld h, b
    sbc a
    or [hl]
    sub c
    ld b, l
    ld b, e
    ld b, c
    ld b, l
    adc a
    ld b, [hl]
    ld b, l
    ld [hl], $a8
    ld sp, $72a0
    ld h, c
    ld hl, sp+$24
    db $d3
    ld bc, $27da
    add d
    jr nc, jr_067_7b27

    ldh a, [$e5]
    inc h
    ld b, d
    inc e
    ld h, b

jr_067_7b27:
    call z, $f881
    ld [c], a
    dec sp
    or [hl]
    jp $e13b


    ld [hl], $66
    and a
    cp a
    ldh [$ac], a
    pop hl
    ld [bc], a
    ret z

    inc h
    rst $10
    add [hl]
    add h
    jr nc, jr_067_7b44

    ldh a, [$e5]
    inc d
    ld b, d
    db $ec

jr_067_7b44:
    ld b, d
    ld d, $20
    or $e4
    ld b, c
    and c
    call nz, $c0ba
    ld [hl], $66
    ld l, b
    and e
    ld bc, $7e67
    ldh [$39], a
    ret nz

    ret z

    inc h
    scf
    add [hl]
    jr nc, jr_067_7b62

    daa
    add l
    inc d
    ld b, d

jr_067_7b62:
    ldh [rNR32], a
    ld h, d
    ld b, $20
    db $e4
    ld b, c
    ld a, $e1
    pop bc
    ldh [$35], a
    dec [hl]
    ld l, h
    rlca
    xor c
    xor b
    ld b, d
    xor a
    ld hl, $24f2
    jr nc, jr_067_7b86

    db $ed
    xor h
    inc d
    and d
    cp $2b
    add h
    ld b, l
    ld [hl], $ab
    xor d
    and e

jr_067_7b86:
    dec [hl]
    ld l, h
    inc bc
    ld l, a
    ld l, [hl]
    add b
    ldh [$fa], a
    xor d
    jr nc, jr_067_7b9c

    dec h
    adc h
    push hl
    ld h, [hl]
    ret nz

    ldh [$87], a

jr_067_7b98:
    ld l, [hl]
    ld l, a
    ld l, h
    pop bc

jr_067_7b9c:
    ld [c], a
    ld l, $02
    jr nc, jr_067_7bb5

    ldh a, [$f6]
    sbc a
    add hl, bc
    sbc h
    cp a
    pop hl
    add d
    pop hl
    sbc h
    xor l
    ret nz

    ret nc

    and $30
    dec c
    ldh a, [$f7]
    nop
    cp a

jr_067_7bb5:
    ld [c], a
    pop bc
    pop hl
    or l
    ld hl, $e6d0
    jr nc, jr_067_7bcb

    ldh a, [$f8]
    ld a, [hl]
    pop hl
    pop bc
    ld [c], a
    nop
    ld b, h
    jr nz, jr_067_7b98

    and $30
    dec c

jr_067_7bcb:
    ldh a, [$f8]
    cp a
    ld b, c
    pop af
    and c
    jr nz, @-$5a

    ret nc

    db $e3
    nop
    jr nc, @+$0f

    ldh a, [$f8]
    adc a
    add $44
    ld [hl+], a
    ret nc

    db $e4
    rst $38
    db $76
    ldh a, [$ef]
    ld h, $cd
    nop
    cp $a1
    nop
    nop
    nop
    pop bc
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
    nop
    nop
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $eb
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $f4
    nop
    nop
    nop
    ld [bc], a
    nop
    inc de
    inc b
    ld [bc], a
    ld bc, $051e
    ld [bc], a
    ld [bc], a
    rra
    ld b, $02
    inc bc
    ld [de], a
    rlca
    ld [bc], a
    inc b
    dec e
    rlca
    ld [bc], a
    dec b
    add hl, bc
    dec bc
    ld [bc], a
    ld b, $1a
    dec c
    ld [bc], a
    rlca
    inc hl
    dec c
    ld [bc], a
    ld [$0e24], sp
    ld [bc], a
    add hl, bc
    jr z, jr_067_7c47

    ld [bc], a
    ld a, [bc]
    daa
    ld [de], a
    ld [bc], a
    dec bc
    ld a, [hl+]
    ld [de], a
    ld [bc], a
    inc c
    add hl, hl
    inc de
    ld [bc], a
    dec c
    ld a, [de]
    dec d
    ld [bc], a

jr_067_7c47:
    ld c, $1d
    dec d
    ld [bc], a
    rrca
    dec de
    jr jr_067_7c51

    db $10
    ld [hl+], a

jr_067_7c51:
    jr @+$04

    ld de, $1921
    ld [bc], a
    ld [de], a
    jr nz, jr_067_7c74

    ld [bc], a
    inc de
    dec de
    dec e
    ld [bc], a
    inc d
    dec e
    ld e, $02
    dec d
    inc e
    rra
    ld [bc], a
    ld d, $1a
    jr nz, jr_067_7c6d

    rla
    dec de

jr_067_7c6d:
    jr nz, jr_067_7c71

    jr jr_067_7c93

jr_067_7c71:
    jr nz, jr_067_7c75

    add hl, de

jr_067_7c74:
    add hl, de

jr_067_7c75:
    ld [hl+], a
    ld [bc], a
    ld a, [de]
    inc e
    ld [hl+], a
    ld [bc], a
    dec de
    ld hl, $0222
    inc e
    daa
    inc hl
    ld [bc], a
    dec e
    dec de
    inc h
    ld [bc], a
    ld e, $24
    daa
    ld [bc], a
    rra
    rla
    add hl, hl
    ld [bc], a
    jr nz, @+$2a

    ld a, [hl+]
    ld [bc], a

jr_067_7c93:
    ld hl, $2b2e
    ld [bc], a
    ld [hl+], a
    cpl
    inc l
    ld [bc], a
    inc hl
    ld e, $2d
    ld [bc], a
    inc h
    dec de
    cpl
    ld [bc], a
    dec h
    ld hl, $0232
    ld h, $23
    ld [hl-], a
    ld [bc], a
    daa
    cpl
    ld [hl-], a
    ld [bc], a
    jr z, jr_067_7cd1

    inc sp
    ld [bc], a
    add hl, hl
    ld [hl+], a
    inc sp
    ld [bc], a
    ld a, [hl+]
    ld hl, $0234
    dec hl
    dec [hl]
    dec [hl]
    ld [bc], a
    inc l
    ld a, [hl+]
    ld [hl], $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_067_7cd1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_067_7ce3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_067_7d08:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_067_7d7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_067_7dc8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_067_7e22:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_067_7ea5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_067_7f61:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
