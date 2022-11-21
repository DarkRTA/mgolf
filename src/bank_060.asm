; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $060", ROMX[$4000], BANK[$60]

Jump_060_4000:
    inc c
    ld b, b
    call nc, Call_000_104c
    ld d, [hl]
    ld h, a
    ld e, [hl]
    ld h, l
    ld h, h
    ld c, h

Jump_060_400b:
    ld [hl], d
    inc d
    ld b, b
    xor d
    ld b, l
    dec de
    ld c, h
    dec a
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

Call_060_4042:
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
    jp Jump_060_77e1


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

Jump_060_40c9:
    add d
    jp nz, Jump_060_6d03

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

jr_060_411e:
    and d
    sub e
    db $e4
    dec [hl]
    db $e3
    sbc l
    and d
    inc e

Jump_060_4126:
    push bc
    and c
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
    jr nz, jr_060_411e

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
    jp Jump_060_400b


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
    and $b7
    push hl
    ld l, b
    ret nz

Jump_060_41e2:
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

Call_060_41fe:
    inc bc
    ld a, [hl+]

Jump_060_4200:
    ld a, [bc]
    ld b, b
    ldh [$fc], a
    and b
    pop af
    and h
    ld h, h
    ld h, b
    pop hl

Call_060_420a:
    ld h, e
    ret nz

    ld a, [c]
    jr c, jr_060_4228

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

    ld d, h
    ret z

    ret nz

    db $eb

jr_060_4228:
    add l
    ld h, l
    cp [hl]
    add d
    ld a, [bc]
    jp nz, $4ba1

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
    jr nz, jr_060_42f0

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

jr_060_42b6:
    ld h, [hl]
    or e
    db $e3
    and h
    call nz, $8257
    nop
    ld b, d
    add e
    ret nz

jr_060_42c1:
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

Jump_060_42db:
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
    call nz, Call_060_43a7
    pop de
    and d
    ld b, a
    ret nz

jr_060_42f0:
    nop
    rst $38
    and c
    cp a
    ld [c], a
    pop af
    jr nz, jr_060_42b6

    ld hl, $895b
    ld [hl], b
    ld b, a
    ld b, $67
    pop bc
    ld [bc], a
    jr c, jr_060_42c1

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

Call_060_4327:
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
    jp $4025


    push hl
    cp a
    and e
    nop
    cp d
    ld [bc], a
    ret


    and e

Jump_060_4360:
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

jr_060_438b:
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

Call_060_43a0:
    ld b, $90
    ld h, c
    ld a, a
    and $4b
    db $fd

Call_060_43a7:
    ld b, l
    ld a, d
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
    jr z, jr_060_438b

    ld h, $ee
    rst $20
    db $10

jr_060_43be:
    ld h, b
    and e
    ld h, b

Jump_060_43c1:
    inc h
    pop de
    and d
    add d
    jr nz, jr_060_43cf

    ld b, c
    db $e4
    ld h, d
    ld h, e
    ret


    ld h, $00
    dec bc

jr_060_43cf:
    rst $20
    nop
    ld b, a
    ld [bc], a
    ld h, b
    jr nz, jr_060_43fc

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

Call_060_43e0:
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
    jr nz, jr_060_43be

    daa
    ld [hl], l
    ld h, c
    ret


    add d
    rlc l

jr_060_43fc:
    inc sp
    ld h, d
    or e

Call_060_43ff:
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

Call_060_4420:
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

Jump_060_443c:
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

jr_060_4464:
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
    jp nz, Jump_060_4360

    xor b
    jp z, $4064

    pop hl
    db $10

jr_060_447f:
    sub c
    ld b, e
    cp e
    ld l, a

Call_060_4483:
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
    jr nz, jr_060_44cb

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

jr_060_44cb:
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
    jr nz, jr_060_4464

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
    jr nz, jr_060_447f

    jp nz, Jump_060_6e07

jr_060_44fc:
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
    jr jr_060_4557

    ld [$433e], sp
    pop bc
    jr nz, jr_060_4598

    ldh [$2d], a
    add c
    ld b, c
    ld b, c
    and e
    add [hl]
    push bc
    ld e, d
    ld b, c
    jr nz, jr_060_44fc

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
    jr z, jr_060_457a

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

jr_060_4546:
    rst $20
    ld [bc], a
    call nc, Call_060_7607
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

jr_060_4557:
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

jr_060_457a:
    adc $64
    ld [$d046], sp
    ld h, l
    cp l
    ld l, b
    ld b, b
    rst $20
    jr jr_060_4546

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
    nop
    push de
    adc $3b
    rlca

jr_060_4598:
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

jr_060_45d5:
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


Jump_060_460a:
    ld b, [hl]
    rst $38
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


    jr nc, jr_060_45d5

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

Jump_060_46ae:
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
    jp nz, $4591

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
    jp nc, Jump_060_7dc8

    and [hl]
    db $d3
    ret nc

    ret nc

    db $dd
    rst $00
    reti


Jump_060_4745:
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
    call nz, $5591
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

Jump_060_4845:
    ld b, [hl]
    ld b, l
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

jr_060_4863:
    add d
    sub c
    ld b, l

Call_060_4866:
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
    jr nc, jr_060_48f7

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
    call nz, Call_060_41fe
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
    jr nz, jr_060_4863

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

jr_060_48f7:
    ld [hl], a
    ld [hl+], a
    sbc a
    nop
    jp nz, Jump_060_4845

    ld c, b
    scf
    jr c, jr_060_4906

    cp a
    db $e3
    add b
    ret nz

jr_060_4906:
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

Call_060_4921:
    and c
    jr nz, jr_060_4967

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
    jr nz, jr_060_4958

jr_060_4958:
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

jr_060_4967:
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
    jr nz, jr_060_49df

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

jr_060_49df:
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
    jp nz, Jump_060_7e22

    ld h, b
    ret


    daa
    and b

jr_060_4a26:
    ld de, $0046
    ld b, a
    ld h, b
    and d
    or e
    inc b
    cp $22
    call nz, Call_060_6001
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


    jr z, jr_060_4ab3

    ld h, $b7

Jump_060_4a80:
    ld h, $7c
    db $e4
    ret


    add c
    nop
    ld [$989a], sp
    ld [$3fc3], sp
    jp Jump_060_4000


    ld [c], a
    ld b, c
    add c
    ret


    jr z, jr_060_4a26

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

jr_060_4ab3:
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

jr_060_4aec:
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

Jump_060_4b2b:
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

    jp nz, Jump_060_460a

    and h
    ld [$c4f8], a
    ld hl, $2169

Jump_060_4b4b:
    cp l
    jr nz, jr_060_4aec

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
    jr nz, jr_060_4c1a

    ld b, b
    ret nz

    ldh [$c2], a
    ld b, c
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
    jr nc, jr_060_4bb6

    cp h
    jr nz, jr_060_4be4

    ld b, h

jr_060_4bb6:
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    ld h, c

jr_060_4bbe:
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
    jr z, jr_060_4c17

    ld b, [hl]
    sbc l
    or [hl]
    sub c
    dec c
    ld b, l
    ld b, b

Jump_060_4be0:
    jp $9145


    add d

jr_060_4be4:
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
    jp nz, Jump_060_62d0

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
    call nc, Call_060_420a
    or c
    ld a, $45
    ld d, a
    jr nz, jr_060_4bbe

    and d
    jr nc, jr_060_4c3c

    ld bc, $210b
    ret nc

    ld h, h
    call nc, $a00c

jr_060_4c17:
    and b
    nop
    nop

jr_060_4c1a:
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

jr_060_4c3c:
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
    jr jr_060_4c78

    ld c, $28

jr_060_4c78:
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
    jr jr_060_4cc5

    jr z, jr_060_4ca4

    add hl, de
    dec de

jr_060_4ca4:
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
    jr nz, jr_060_4ce7

    inc sp
    ld [bc], a
    ld hl, $3523

jr_060_4cc5:
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
    call c, Call_060_594c
    ld d, b
    cp $54
    dec e
    ld d, l
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $ea

jr_060_4ce7:
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
    jp Jump_060_7ce3


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

Jump_060_4d4d:
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
    jr z, jr_060_4dc4

jr_060_4dc4:
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
    jp Jump_060_6b80


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

jr_060_4e6b:
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
    jr nc, jr_060_4e6b

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

jr_060_4eda:
    cp l
    ld hl, $b800
    jr nz, jr_060_4eda

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
    call nz, Call_060_4042
    and c
    ld a, d
    ld b, c
    ld b, c
    ld hl, sp+$00
    ld d, b
    ldh a, [rDMA]
    jp nz, $a18f

    ld a, [$85e1]
    jr nz, jr_060_4f12

    ld c, e
    dec hl
    dec hl
    ret nz

    ld b, d
    pop bc
    nop
    ccf
    add l
    rlca

jr_060_4f12:
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
    jp $4222


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
    jp Jump_060_4126


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
    jp nz, Jump_060_43c1

    add hl, de
    nop
    pop de
    inc bc
    add c
    add h
    add d
    add c

jr_060_4f7f:
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
    jr jr_060_4f93

jr_060_4f93:
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

jr_060_4faf:
    rst $18
    nop
    nop
    db $ec
    add b
    ldh [$c0], a
    pop hl
    adc c
    jr nz, jr_060_4f7f

    ld h, c
    pop bc
    call c, Call_060_6b00
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
    jr nz, jr_060_4ff9

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

jr_060_4fde:
    cp $00
    adc l
    inc h
    ret nz

    rst $38

jr_060_4fe4:
    nop
    cp a
    dec l
    ret z

    add b
    adc l
    ld b, b
    dec l
    ld c, c
    jr nz, jr_060_4faf

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

jr_060_4ff9:
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
    jr nz, jr_060_4fe4

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
    jr c, jr_060_4fde

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
    jr nz, jr_060_51ab

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

jr_060_51ab:
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
    jr c, jr_060_5271

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

jr_060_5271:
    ld d, d
    db $fd
    add b
    pop bc
    bit 7, h
    jp nz, Jump_060_713e

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

Jump_060_52e0:
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

Jump_060_5306:
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

    jr nz, jr_060_5397

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

jr_060_5397:
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
    jp nz, Jump_060_40c9

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
    jr nz, jr_060_5474

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

jr_060_5474:
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
    jr jr_060_555a

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

jr_060_555a:
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
    jr nz, jr_060_5592

    ld bc, $2718

Jump_060_5580:
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
    jr jr_060_558f

    inc e

jr_060_558f:
    dec h
    jr jr_060_5594

jr_060_5592:
    dec e
    daa

jr_060_5594:
    jr jr_060_5598

    ld e, $1c

jr_060_5598:
    ld a, [de]
    ld [bc], a
    rra
    jr z, @+$1c

    ld [bc], a
    jr nz, @+$20

    dec de
    ld [bc], a
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
    jr nz, jr_060_55bc

    daa
    inc e

jr_060_55bc:
    ld hl, $2802
    dec e
    ld [hl+], a
    ld [bc], a
    add hl, hl
    add hl, de
    inc hl
    ld [bc], a
    ld a, [hl+]
    jr z, jr_060_55ec

    ld [bc], a
    dec hl
    dec de
    inc h
    ld [bc], a
    inc l
    jr jr_060_55f6

    ld [bc], a
    dec l
    daa
    ld h, $02
    ld l, $1c
    daa
    ld [bc], a
    cpl
    ld a, [de]
    jr z, jr_060_55e0

    jr nc, jr_060_5603

jr_060_55e0:
    jr z, @+$04

    ld sp, $2921
    ld [bc], a
    ld [hl-], a
    ld [hl+], a
    dec hl
    ld [bc], a
    inc sp
    ld a, [de]

jr_060_55ec:
    inc l
    ld [bc], a
    inc [hl]
    jr nz, jr_060_561f

    ld [bc], a
    dec [hl]
    jr @+$31

    ld [bc], a

jr_060_55f6:
    ld [hl], $22
    jr nc, jr_060_55fc

    scf
    inc d

jr_060_55fc:
    ld [hl-], a
    ld [bc], a
    jr c, jr_060_561f

    ld [hl-], a
    ld [bc], a
    add hl, sp

jr_060_5603:
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
    jr jr_060_5668

    ld l, c
    ld e, c
    and l
    ld e, l
    ret nz

    ld e, l
    ld sp, $ff0d
    rst $38
    rst $38
    rst $38
    ld a, [c]

jr_060_561f:
    pop af
    ld c, $0e
    call c, $c0ff
    db $fd
    add hl, bc
    ld c, $bb
    and $f2
    db $e3
    ld l, $c9
    rst $38
    ret nz

    xor $ca
    db $e3
    ld [hl], d
    db $e3
    nop
    cp [hl]
    rst $38
    ld b, l
    db $e4
    reti


    db $e4
    add b
    db $e3
    jp z, $f7e1

    db $e3
    jp nz, $b8e5

    cp $00
    sub a
    db $e4
    ld b, b
    ld [c], a
    adc h
    ld a, [c]
    db $76
    ei
    ld e, c
    db $f4
    pop af
    ret z

    jr c, @-$0f

    inc h
    rst $28
    nop
    ld a, e
    and $c0
    rst $28
    add hl, bc
    ei
    sub h
    db $ec
    cp h
    pop bc
    pop bc
    call nz, $d92c
    and h
    rst $00

jr_060_5668:
    nop
    ld b, l
    rst $00
    ld a, a
    jp $ffc0


    dec b
    push de
    rst $00
    ldh a, [$3c]
    ret c

    pop de
    and l
    add b
    db $ec
    ld h, b
    ld b, d
    pop bc
    ld hl, sp-$5c
    jr nc, @-$38

    and b
    call c, $c98e
    ld c, $6e
    res 4, a
    ld hl, sp+$30
    sub $d1
    and a
    ld b, $c5
    ld l, $0e
    ld l, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, $8d
    pop hl
    ld l, [hl]
    dec c
    ld c, [hl]
    ld l, $7c
    db $e4
    db $eb
    sbc h
    ld b, b
    rst $20
    rst $38
    ld c, $0d
    dec l
    ld c, $6e
    dec bc
    dec c
    dec bc
    rlca
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld sp, hl
    ldh [$bf], a
    ldh [rSCX], a
    call $db76
    ld c, d
    ld [c], a
    ld bc, $c00d
    ldh [rIE], a
    pop hl
    ld hl, sp-$1f
    ld [hl], a
    ldh [$7c], a
    bit 6, [hl]
    pop de
    add hl, bc
    xor d
    add c
    ld c, $c2
    db $e4
    ret nz

    pop hl
    cp c
    ldh [$bc], a
    call nz, $e8b9
    add hl, bc

Call_060_56d5:
    cp h
    ld c, $c0
    jp nz, $bbe4

    db $e4
    or $c1
    xor b
    xor [hl]
    ld c, a
    xor [hl]
    ld d, [hl]
    add h
    ld c, $2e
    ld b, b
    ld [bc], a
    pop hl
    cp a
    ld [$c1fd], a
    xor $a9
    cp e
    adc [hl]
    sub $6b
    ld l, [hl]
    pop bc
    db $ec
    jr nz, @-$42

    ret nz

    inc a
    add h
    sbc d
    sub l
    ld de, $83aa

Jump_060_5700:
    db $e4
    dec hl
    ld a, a
    jp hl


    ret nz

    push hl
    ld [hl], b
    cp h
    ld [hl], h
    ld e, $a8
    add l
    pop bc
    ld [bc], a
    push hl
    dec hl
    ld a, [bc]
    ld a, [hl+]
    cp $cd
    ld [hl], b
    ld a, $bd
    rst $08
    and b
    add l
    push bc
    jp nz, Jump_000_0ae0

    ld a, [bc]
    ld a, [bc]
    cp $c6
    ld h, b
    xor h
    and b
    jr nc, @-$5b

    cp [hl]
    cp d
    adc e
    and b
    ld b, h
    push bc
    ld a, [bc]
    ld c, d
    add d
    ldh [$63], a
    ld a, [bc]
    ld c, d
    ld sp, hl
    and h
    ei
    and a
    ld c, a
    ld a, e
    ld c, [hl]
    ld l, $04
    push bc
    add l
    ld l, e
    add h
    pop hl
    ld c, d
    ret nz

    db $e3
    ei
    and [hl]
    inc b
    db $db
    ld [hl+], a
    add b
    ld l, l
    rst $20
    ld c, [hl]
    ld c, $2e
    inc bc
    db $e4
    add l
    ldh [$2b], a
    ld c, d
    ld a, [hl+]
    add c
    ld c, e
    cp c
    and h
    ei
    sbc c
    adc l
    ld b, a
    ldh [$61], a
    ld a, l
    ldh [$81], a
    pop hl
    ld c, d
    rra
    ld c, d
    ld c, e
    ld c, e
    ld l, e
    dec bc
    cp [hl]
    jp $a033


    cp e
    and h
    add sp, $2b
    ld b, [hl]
    adc c
    inc [hl]
    dec de
    ld b, b
    dec l
    cp a
    pop hl
    dec c
    dec hl
    ld a, [hl+]
    jp Jump_000_2b2a


    add b
    and $fe
    jp Jump_060_5e3d


    adc c
    dec h
    ld c, [hl]
    ld l, $9f
    dec hl
    dec c
    dec hl
    ld l, e
    dec hl
    db $fd
    and c
    pop bc
    push hl
    dec c
    ld b, c
    dec bc
    inc [hl]
    add b
    dec [hl]
    ld h, l
    ld a, a
    ld d, c
    ld d, e
    daa
    ld b, b
    add c
    dec hl
    rst $38
    ldh [$03], a
    dec bc
    ld [$c141], sp

jr_060_57ab:
    ld a, $c0
    ld [hl], l
    add b
    pop bc
    ld [c], a
    ld a, h
    ld e, b
    ld d, e
    add hl, hl
    ld [bc], a
    ret nz

    jp hl


    ld c, e
    pop bc
    pop bc
    dec [hl]
    add c
    rst $20
    and c
    ld b, b
    sub c
    sub e
    add hl, hl
    ld d, e
    inc h
    ld a, [hl]
    ld c, d
    ld h, c
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld l, e
    ld l, e
    ld [$e041], sp
    add e
    dec c
    dec bc
    cp h
    and d
    pop bc
    ld [c], a
    nop
    sub e
    db $e4
    ld b, h
    ld d, e
    ld h, $2d
    rst $28
    ld c, $4e
    ld l, [hl]
    dec hl
    ret nz

    ldh [$2b], a
    ld l, e
    dec bc
    inc sp
    ld a, [bc]
    dec hl
    ld a, c
    ld h, b
    ld a, h
    and b
    ld c, $2e
    add d
    db $e3
    add b
    ld [hl], c
    ld [c], a
    add [hl]
    cpl
    ld l, [hl]
    jp $ffc0


    ld [c], a
    cp e
    add l
    ld c, $6e
    ld c, l
    nop
    db $f4
    ld h, $7c
    ld a, [de]
    ld b, h
    ld h, h
    ret nz

    ld [c], a
    cp h
    ldh [$7b], a
    add c
    inc a
    ldh [$80], a
    ld h, b
    ret z

    or h
    dec h
    pop bc
    inc e
    sbc d
    ld [c], a
    dec c
    add d
    db $e3
    ret nz

    ld [c], a
    ld c, e
    ld c, e
    ret z

    ret nz

    add sp, $7f
    jr jr_060_57ab

    ld c, b
    ld c, $81
    db $e3
    ccf
    ret nz

    ld l, e
    ld l, e
    add d
    ld [bc], a
    ret nz

    ld [$8bc4], sp
    dec hl
    inc d
    ld b, h
    ld c, b
    call nz, Call_000_01a2
    db $e3
    ld l, e
    dec e
    ld l, e
    ld b, d
    call nz, Call_000_2e4e
    dec l
    ld h, d
    ret z

    cp a
    db $76
    db $e3
    inc bc
    ld [bc], a
    add e
    and b
    dec bc
    ld bc, $c1e3
    ld [c], a
    ld b, d
    add l
    ld a, [hl-]
    rra
    inc e
    inc h
    ld bc, $00a1
    cp l
    jp nz, Jump_000_22fe

    ld sp, hl
    ld hl, $20f3
    db $fd
    dec h
    ld a, d
    ld de, $4eb6
    ld b, [hl]
    ld hl, $0080
    ld h, b
    ret nz

    and $bf
    ld b, h
    add [hl]
    ld hl, sp-$1c
    ld h, $dc
    and d
    ld bc, $0da0
    nop
    pop bc
    ld b, l
    cp c
    ld [c], a

jr_060_5881:
    ld hl, sp+$01
    ld b, h
    ld b, [hl]
    dec b
    ld d, [hl]
    ld a, h
    ret z

    add c
    ld b, a
    ld a, [hl]
    and c
    ld b, b
    ld [$c242], a
    ld l, b
    cp d
    or d
    cp [hl]
    add l
    ret nz

    rst $20
    cp $00
    dec l
    ld b, c
    ld b, l
    nop
    add $09
    inc a
    ld d, l
    inc a
    jp z, $4901

    inc b
    ld h, l
    dec a
    dec e
    jr c, jr_060_58b3

    inc a
    pop bc
    ld [hl], b
    cp c
    daa
    add $64

jr_060_58b3:
    inc bc
    cp h
    rst $20
    adc c
    dec l
    ld c, $6b
    inc b
    ld h, b
    add b
    ld a, a
    and b
    cp l
    and c
    add $67
    pop bc
    sbc c
    add c
    ld b, $77
    ld bc, $807c
    ld l, e
    rlca
    ld l, e
    ld l, e
    dec c
    db $fc
    ldh [$c1], a
    db $e3
    ld c, b
    or l
    dec sp
    ld c, a
    ld a, l
    ld b, l
    nop
    cp a
    and h
    ld b, a
    ld b, d
    rst $38
    rst $38
    ld [$db47], a
    ld h, h
    ld d, d
    ld b, b
    ld a, [hl-]
    add e
    add l
    and l
    nop
    add d
    cp a
    cp [hl]
    adc $3b
    and e
    ret nz

    db $fd
    ld l, e
    rrca
    inc d
    add e
    inc a
    ld b, c
    ei
    add c
    jr nc, jr_060_5881

    add $c2
    sub l
    add b
    di
    dec a
    db $e3
    ld c, $2e
    ld b, $61
    ld b, l
    xor b
    db $10
    add d
    inc a
    db $76
    xor b
    ld a, c
    ld hl, $6007
    ld c, l
    and b
    pop af
    add d
    ld [hl], $b8
    ld b, $00
    ld a, b
    add e
    ld c, e
    ld b, d
    inc c
    dec l
    add b
    ei
    ld sp, hl
    and a
    ld [hl], e
    ld [$bbc4], a
    ld [hl-], a
    ld d, c
    nop
    ld c, [hl]
    ld b, d
    ld b, h
    rst $00
    ld h, h
    inc h
    cp [hl]
    rst $38
    db $76
    ld h, a
    ld d, h
    inc h
    ld d, e
    ld a, [hl+]
    call nz, Call_000_00ff
    rst $00
    jp hl


    sub c
    jp nz, $ffc0

    dec sp
    ld l, e
    ret nz

    db $eb
    ret z

    ld e, a
    ld sp, hl
    ld c, l

Call_060_594c:
    push de
    jr z, jr_060_594f

jr_060_594f:
    ld de, $80c7
    sbc a
    add b
    ld [$4bad], a
    add b
    jr z, jr_060_59d4

    rst $18
    ld l, e
    ld c, l
    add b
    jp hl


    nop
    ld a, $9d
    ld l, d
    jr jr_060_596e

    sub d
    nop
    nop
    nop
    ld sp, $ffa0
    rst $38
    rst $38

jr_060_596e:
    rst $38
    ld a, [c]
    pop af
    ld [c], a
    db $e3
    call c, $faff
    ld sp, hl
    ld a, a
    db $e4
    push hl
    and b
    and b
    sub $d7
    ret c

    or d
    add sp, -$19
    call nc, $d4d5
    ret


    rst $38
    rst $20
    and $e6
    rst $20
    and b
    rrca
    and b
    reti


    jp c, $cadb

    db $e4
    or d
    pop hl
    cp [hl]
    rst $38
    push hl
    db $e4
    adc $d9
    and $dc
    db $dd
    sbc $ca
    db $e4
    or d
    pop hl
    and b
    call nc, $c238
    push hl
    cp b
    cp $97
    db $e4
    rst $18
    ldh [$e1], a
    jp z, $9de8

    ld a, [c]
    nop
    ld a, a
    di
    ld e, c
    di
    pop af
    rst $00
    xor h
    ldh a, [rNR50]
    rst $28
    ld [de], a
    db $e4
    ld [hl], a
    rst $00
    pop af
    pop bc
    nop
    ld c, e
    rst $38
    sub h
    db $ed
    ld [hl], a
    ret nz

    ld a, b
    call nz, $c3f1
    ld c, e
    rst $38
    dec b
    pop bc
    sub h

jr_060_59d4:
    db $e3
    nop
    ccf
    pop bc
    ld [hl], a
    ret nz

    add a
    db $e4
    pop af
    jp nz, $ffff

    dec b
    jp nz, $c385

    ld c, [hl]
    db $e4
    nop
    add a
    jp hl


    inc a
    ret c

    pop de
    and l
    dec b
    pop bc
    sub h
    db $e3
    ccf
    pop bc
    ld c, d
    ret nz

    ld a, b
    pop bc
    ldh [rDIV], a
    jp nz, $a26b

    ld a, [$e0b6]
    rst $08
    ccf
    pop bc
    sbc a
    sbc l
    sbc a
    ldh [rOCPD], a
    xor d
    ld h, e
    call nc, $a5d1
    db $db
    and e
    sub [hl]
    and b
    sbc a
    sbc l
    sbc l
    ld a, $c6
    pop hl
    sbc a
    sbc h
    xor [hl]
    sbc h
    sbc a
    add $a0
    inc [hl]
    and d
    ldh a, [$b9]
    and d
    rst $38
    sub $e0
    push bc
    add hl, bc
    and d
    sbc a
    sbc h
    ld b, [hl]
    xor [hl]
    ld a, a
    ld b, [hl]
    sbc h
    sbc l
    sbc l
    sbc h
    ld b, [hl]
    xor a
    cp a
    ldh [rSVBK], a
    ld b, e
    call $9aa2
    add hl, bc
    and c
    adc c
    ldh [rDMA], a
    xor a
    ld b, [hl]
    rst $38
    pop hl
    ld b, b
    ld hl, sp-$1f
    cp a
    ldh [rSCX], a
    call nz, $84ad
    ldh a, [$83]
    add hl, bc
    cp b
    sbc [hl]
    jp nz, Jump_000_15e4

    ld b, [hl]
    cp d
    db $e3
    sbc [hl]
    cp h
    jp $bcd4


    and l
    scf
    di
    add hl, bc
    xor b
    ld bc, $c29e
    db $e4
    cp e
    db $e4
    ld a, $e1
    xor l
    adc b
    ld c, a
    or h
    ld h, d
    add c
    ret z

    ld h, b
    nop
    sbc b
    add b
    ld [bc], a
    ldh [$bf], a
    ld [$c1fd], a
    xor [hl]
    ld h, d
    cp h
    xor c
    ld sp, $9189
    ld h, [hl]
    ld [hl], d
    ret z

    ld h, c
    sbc a
    jp z, $80c0

    db $eb
    xor a
    xor [hl]
    sbc [hl]
    inc c
    xor $20
    ld h, a
    adc d
    rst $28
    add $c8
    ld h, b
    add e
    db $ed
    ld a, [$9ec2]
    ld b, e
    call nz, Call_060_74bc
    db $f4
    ld h, $c3
    ld b, [hl]
    call nz, Call_000_03ae
    and $45
    ld c, b
    ld c, b
    ld b, l
    ldh [$fe], a
    call z, Call_060_79c2
    ld b, [hl]
    call nz, $c585
    jp nz, Jump_060_52e0

    ld h, c
    ld e, h
    ldh [$bf], a
    db $e3
    cp d
    and d
    rst $28
    ld b, c
    add b
    or a
    ld c, a
    ld h, e
    sbc a
    ret nc

    xor a
    db $fc
    add $a0
    dec b
    jp nz, $5e51

    ld d, d
    ld a, [hl+]
    dec l
    ld b, a
    ld h, c
    ld d, l
    add hl, sp
    call nz, $a0ba
    cp $76
    ld c, a
    ld l, c
    db $d3
    ret nc

    inc b
    push bc
    ld a, a
    ld b, l
    ld e, e
    ld a, [hl+]
    jr nz, jr_060_5b15

    ld c, e
    ld d, [hl]
    ld a, $e4
    ld [hl], b
    ei
    and b
    rst $28
    ld b, d
    ld h, $53
    and h
    ld c, b
    db $d3
    pop de
    ret nc

    inc bc
    db $e3
    ld a, a
    ld b, a
    ld d, l
    jr nc, jr_060_5b1e

    jr nc, jr_060_5b4a

    ld d, d
    cp $c2
    add b
    db $ec
    ret nz

    cp e
    and e
    add h
    or d
    and h
    ld b, [hl]
    ret


    inc hl
    ld a, l
    ldh [$c0], a
    ld [c], a
    ld d, [hl]
    rrca
    ld a, [hl+]

jr_060_5b15:
    ld h, $21
    ld b, b
    cp [hl]
    jp $a033


    cp e
    and h

jr_060_5b1e:
    ld h, $40
    ldh a, [$37]
    ld d, a
    ret


    jr nz, jr_060_5b7f

    ld b, c
    cp a
    pop hl
    xor [hl]
    ld b, [hl]
    ld e, h
    ld d, d
    rlca
    add hl, sp
    dec [hl]
    inc a
    add b
    db $e4
    rst $30
    add c
    ld [hl], a
    add d
    ld a, a
    ld e, e
    ret


    ld hl, $89fc
    ld hl, $c2fb
    ld b, l
    ld b, h
    ld a, [hl-]
    dec [hl]
    dec [hl]
    add hl, sp
    ld e, $c1
    push hl
    xor a

jr_060_5b4a:
    ld b, [hl]
    ret nc

    sbc a
    ld l, l
    dec h
    dec hl
    ld d, b
    ld d, e
    daa
    ld a, [$4298]
    jp nc, $c102

    ld [hl], $b3
    jp z, Jump_000_3acb

    inc de
    ld b, l
    jp $e202


    pop bc
    ldh [$d3], a
    ld a, h
    ld e, c
    ld d, e
    daa
    adc c
    ld [hl+], a
    ld a, [hl]
    cp a
    add c
    ld b, b
    dec [hl]
    or h
    ret z

    ret


    ld a, [hl-]
    cp a
    and c
    add b
    dec [hl]
    add c
    pop bc
    pop hl
    ld a, h
    ld b, l
    and d

jr_060_5b7f:
    add hl, bc
    ld a, [hl+]
    inc h
    ld d, e
    daa
    ld c, d
    ld h, d
    sbc h
    cp a
    ld b, [hl]
    add $c7
    ld b, l
    ld a, [hl-]
    or l
    ld b, b
    ldh [$ae], a
    add b
    or $e0
    pop bc
    push hl
    ld a, h
    ld b, l
    nop
    adc e
    add sp, $02
    ld d, e
    add hl, hl
    cp a
    add d
    call nz, $c5ff
    ld b, [hl]
    add hl, sp
    dec [hl]
    jp Jump_060_443c


    xor a
    ld b, $f6
    pop hl
    ret nc

    pop de
    add d
    pop hl
    dec hl
    ld b, $37
    ld l, d
    ld e, $2e
    ld b, h
    ld h, d
    ld a, $83
    ld h, c
    ld b, h
    inc a
    dec [hl]
    dec [hl]
    ld b, b
    ld a, d
    ld h, c
    dec b
    ldh [$a0], a
    inc sp
    ld bc, $c162
    ld a, h
    dec de
    cp d
    pop bc
    ld b, h
    ld h, l
    xor [hl]
    rst $38
    ret nz

    dec [hl]
    rla
    inc a
    ld b, h
    ret nz

jr_060_5bd8:
    add hl, sp
    ld h, b
    jp nc, $0333

    ret nz

    ld b, l
    scf
    rla
    ld [$c1ba], a
    sbc [hl]
    cp a
    add h
    xor a
    add b
    pop hl
    ld a, [hl-]
    ld b, l
    pop bc
    ret nz

    ld b, b
    ld h, d
    ld b, d
    inc l
    dec a
    ld c, $d9
    inc b
    inc b
    ld h, d
    cp a
    add [hl]
    ld b, l
    ld a, [hl-]
    rrca
    dec [hl]
    add hl, sp
    ld b, [hl]
    jp nz, $a2c6

    ld h, d
    ld c, e
    dec hl
    rrca
    xor [hl]
    ld b, h
    inc e
    adc $22
    cp a
    add [hl]
    ld b, [hl]
    add hl, sp
    ld [hl], $42
    call nz, Call_060_43ff
    jr nz, jr_060_5bd8

    db $10
    ld a, d
    inc d
    push hl
    add hl, hl
    ld bc, $baa3
    ld h, c
    ld b, l

Call_060_5c21:
    ld b, h
    xor b
    cp [hl]
    ld c, [hl]

jr_060_5c25:
    cp d
    sub e
    ld b, b
    reti


    ld b, c
    dec a
    add b
    ld bc, $7742
    ld h, d
    ld [hl], d
    ld h, c
    db $ed
    ld h, b
    sbc [hl]
    ld e, [hl]
    and h

jr_060_5c37:
    ld hl, sp+$7a
    ld de, $c96b
    push hl
    ld [hl+], a
    db $d3
    ret nc

    xor a
    xor [hl]
    ld b, [hl]
    ld a, a
    ld b, l
    ld b, e
    xor a
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    cp c
    ld [hl+], a
    pop bc
    xor [hl]
    rst $38
    ld b, b
    ld b, h
    or a
    jp $fe23


    add e
    inc e
    inc hl
    jp nc, $bf46

    xor a

jr_060_5c5d:
    ld b, l
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    ld bc, $0245
    and c
    call nz, Call_000_3980
    ld b, $05
    ld d, h
    add b
    dec b

jr_060_5c71:
    or [hl]
    add c
    ret nz

    jr nz, jr_060_5c25

    ld b, h
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    ld a, [hl]
    and c
    xor [hl]
    add b
    call nz, Call_060_5e81
    and d
    ld b, $a3
    cp d
    or d
    cp $81
    sbc [hl]
    push bc
    add b
    jr nz, jr_060_5cd2

    rst $38
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    dec [hl]
    ld bc, $3b42
    jr nz, jr_060_5c5d

    and b
    rla
    ld c, b
    inc a
    inc de
    add b
    dec b
    cp d
    ld b, e
    ret nz

    pop hl
    add c
    dec [hl]
    rst $38
    ldh [$c0], a
    ld [c], a
    rst $38
    nop
    jr nz, jr_060_5c37

    dec a
    dec de
    jr c, jr_060_5cbe

    db $d3
    rst $18
    ret nc

    ld b, h
    inc a
    ld l, e
    ld [hl], c

jr_060_5cbe:
    rst $38
    ldh [$6d], a
    inc a
    ld hl, $4444
    add b
    add h
    ld b, e
    inc bc
    cp h
    cp c
    adc d
    jp nc, $c7c0

    add $62
    ret c

jr_060_5cd2:
    jr nz, @-$77

    ld a, h
    reti


    cp [hl]
    inc b
    push de
    call nc, $807c
    ld b, l
    ld b, e
    inc bc
    ld b, c
    xor [hl]
    ld b, b
    ret nz

    pop bc
    db $e3
    jr nz, jr_060_5c71

    cp [hl]
    ld a, [$4360]
    dec sp
    and b
    nop
    ld c, e
    ld h, d
    or h
    ld hl, $c6c3
    dec b
    db $fc
    xor [hl]
    inc bc
    sbc $c4
    cp l
    and b
    add l
    xor e
    nop
    ld b, b
    ld [bc], a
    jp c, Jump_060_7447

    sbc b
    or h
    ld b, e
    ld a, b
    ld [hl+], a
    or l
    nop
    add l
    and l
    ld b, [hl]
    jp nz, $c200

    sub e
    xor e
    ld l, l
    or [hl]
    and e
    ld a, [$b581]
    nop
    add l
    and l
    ld b, [hl]
    jp nz, $92c2

    jr @+$34

    adc [hl]
    call nc, Call_000_3d64
    pop hl
    ret nc

    pop de
    ld b, $61
    res 0, [hl]
    jp c, $0041

    dec a
    ld [hl], a
    ld l, c
    ld b, l
    or h
    ld b, c
    ld a, b
    add e
    ld c, e
    ld b, d
    jp nc, $fb6e

    ld d, l
    ldh [rOBP1], a
    nop
    ld a, b
    add e
    ld c, e
    ld b, d
    inc l
    push bc
    adc a
    ld d, [hl]
    cp e
    ld l, d
    db $76
    inc b
    ld d, a
    and [hl]
    add a
    ld b, h
    nop
    call nz, Call_000_32bb
    ld d, c
    ld l, $21
    xor [hl]
    ld h, b
    add a
    ld b, l
    inc c
    ld h, d
    add a
    add hl, hl
    cp d
    db $fd
    nop
    jr nc, @-$7a

    add a
    ld c, d
    add a
    dec hl
    ei
    jr c, jr_060_5d9a

    inc h
    res 4, b
    ld c, a
    ld l, d
    add c
    sbc b
    nop
    dec sp
    ld h, a
    or a
    ld h, h
    ld l, $21
    rla
    daa
    add [hl]
    or c
    ld sp, hl
    ld d, h
    push de
    jr z, jr_060_5d94

    add b
    nop
    db $e3
    ld b, h
    ld h, d
    ld h, e
    add b
    sbc d
    ld hl, sp+$05
    db $db
    xor l
    add hl, hl
    ld [bc], a
    add b
    dec h
    ld a, d

jr_060_5d94:
    rst $18
    nop
    ld l, e
    ld c, l
    sub e
    inc hl

jr_060_5d9a:
    ld b, [hl]
    inc b
    ld a, $9c
    ld l, d
    jr jr_060_5daa

    sub d
    nop
    nop
    nop
    pop bc
    nop
    rst $38
    rst $38
    rst $38

jr_060_5daa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $fe80
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    inc hl
    ld c, $02
    ld bc, $0f1c
    ld [bc], a
    ld [bc], a
    inc h
    rrca
    ld [bc], a
    inc bc
    ld a, [de]
    db $10
    ld [bc], a
    inc b
    ld [hl+], a
    db $10
    ld [bc], a
    dec b
    daa
    inc de
    ld [bc], a
    ld b, $28
    inc d
    ld [bc], a
    rlca
    dec d
    ld d, $02
    ld [$1714], sp
    ld [bc], a
    add hl, bc
    add hl, hl
    rla
    ld [bc], a
    ld a, [bc]
    ld d, $18
    ld [bc], a
    dec bc
    add hl, hl
    ld a, [de]
    ld [bc], a
    inc c
    dec de
    inc e
    ld [bc], a
    dec c
    dec hl
    inc e
    ld [bc], a
    ld c, $2a
    dec e
    ld [bc], a
    rrca
    daa
    ld e, $02
    db $10
    inc hl
    jr nz, @+$04

    ld de, $2218
    ld [bc], a
    ld [de], a
    ld d, $23
    ld [bc], a
    inc de
    inc e
    inc hl
    ld [bc], a
    inc d
    dec d
    inc h
    ld [bc], a
    dec d
    rla
    dec h
    ld [bc], a
    ld d, $25
    dec h
    ld [bc], a
    rla
    dec de
    daa
    ld [bc], a
    jr jr_060_5e4a

    daa
    ld [bc], a
    add hl, de
    add hl, de
    jr z, @+$04

    ld a, [de]
    ld e, $28
    ld [bc], a
    dec de
    inc hl
    jr z, jr_060_5e33

    inc e
    add hl, hl

jr_060_5e33:
    jr z, jr_060_5e37

    dec e
    ld a, [de]

jr_060_5e37:
    add hl, hl
    ld [bc], a
    ld e, $28
    add hl, hl
    ld [bc], a

Jump_060_5e3d:
    rra
    dec h
    ld a, [hl+]
    ld [bc], a
    jr nz, jr_060_5e6a

    dec hl
    ld [bc], a
    ld hl, $301f
    ld [bc], a
    ld [hl+], a

jr_060_5e4a:
    inc e
    ld sp, $2302
    ld [hl+], a
    ld sp, $2402
    ld e, $32
    ld [bc], a
    dec h
    inc h
    ld [hl-], a
    ld [bc], a
    ld h, $20
    inc sp
    ld [bc], a
    daa
    inc hl
    inc sp
    ld [bc], a
    jr z, jr_060_5e82

    inc [hl]
    rst $38
    rst $38
    rst $38
    ld l, a
    ld e, [hl]
    xor [hl]

jr_060_5e6a:
    ld h, b
    add a
    ld h, e
    and d
    ld h, e
    ld bc, $ff0d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a

Call_060_5e81:
    rst $38

jr_060_5e82:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $2d
    ld c, $0e
    jp $2d0e


    ld sp, hl
    and $ff
    rst $38
    xor $ed
    pop bc
    ldh [$0e], a
    ld c, $00
    ld sp, hl
    and $ff
    rst $38
    ret nz

    db $fd
    ld [hl], a
    rst $38
    ld b, [hl]
    db $ec
    ld [hl], b
    di
    rst $38
    rst $38
    sub $e8
    nop
    rst $08
    db $e3
    ld a, [$c0e5]
    rst $38
    ret nz

    ld sp, hl
    ld a, $ff
    ld [hl], l
    rst $10
    ld a, b
    ret nz

    or h
    ret nz

    ret c

    ld a, [hl]
    rst $38
    ld c, c
    rst $00
    rst $10
    db $e3
    ld c, l
    ld c, l
    sub b
    pop hl
    ld l, l
    dec c
    ldh a, [$f9]
    ldh [$c0], a
    rst $38
    ld c, c
    call z, $e0c8
    dec bc
    dec c
    dec bc
    ld c, l
    jp Jump_060_4d4d


    ld sp, hl
    ldh [$bf], a
    pop hl
    rst $38
    rst $38
    sbc c
    call z, $0d6d
    ld [de], a
    rst $00
    ldh [$0b], a
    rst $38
    ldh [$f8], a
    ldh [$0b], a
    cp a
    rst $38
    rst $28
    xor $82
    ldh [$0c], a
    push bc
    ld [c], a
    ld hl, sp-$1f
    dec bc
    dec bc
    ret nz

    ld [c], a
    ld b, c
    rst $38
    ret nz

    jp hl


    rst $38
    ld [c], a
    nop
    ld sp, hl
    db $e4
    ld a, a
    db $e3
    ret nz

    rst $38
    ld [bc], a
    and [hl]
    ld [bc], a
    ldh [rIE], a
    ld [$c5fd], a
    dec sp
    rst $18
    nop
    db $e4
    db $e3
    pop bc
    jp hl


    ld a, [$adc1]
    pop hl
    cp c
    cp a
    jp nz, Jump_000_3cec

    jp hl


    ret nz

    rst $38
    inc e
    add e
    add sp, $03
    rst $20
    dec hl
    ld a, [bc]
    ld a, [hl+]
    cp $c8
    push bc
    rst $38
    ld b, [hl]
    jp $4e38


    ld [c], a
    ld b, h
    ret nz

    jp nz, Jump_000_0ae0

    ld a, [bc]
    ld a, [bc]
    cp $c7
    ret nz

    rst $38
    jp c, $a18a

    dec l
    ld c, c
    add $0a
    ld c, d
    add d
    ldh [$0a], a
    ld c, d
    ld d, b
    db $76
    call nz, $bffb
    cp a
    push hl
    ld c, c
    push bc
    ld l, e
    add h
    pop hl
    ld c, d
    ret nz

    ldh [$a8], a

jr_060_5f5b:
    ld [hl-], a
    jp $ffc0


    ld a, [hl]
    push hl
    dec l
    ld [bc], a
    jp nz, $852b

    pop hl
    dec hl
    add a
    ld c, d
    ld a, [hl+]
    ld c, e
    cp c
    and h
    ret nz

    rst $38
    ld a, l
    add sp, -$7f
    pop hl
    ld c, d
    rra
    ld c, d
    ld c, e
    ld c, e
    ld l, e
    dec bc
    cp [hl]
    jp $a034


    ccf
    rst $38
    ld a, $bf
    ld [$2b0d], a
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    add b
    db $e3
    cp $df
    ld a, [hl]
    cp d
    rst $08
    dec hl
    dec c
    dec hl
    ld l, e
    dec hl
    dec hl
    cp [hl]
    add b
    jr nz, jr_060_5f5b

    push hl
    xor a
    add b
    ld h, l
    ret nz

    rst $38
    rst $38
    ld a, $a4
    dec hl
    rst $38
    ldh [$bc], a
    xor c
    inc b
    pop bc
    rst $38
    ret nz

    di
    ld c, e
    ld b, c
    pop hl
    inc a
    and d
    pop bc
    rst $38
    cp $89
    add b
    ldh [$03], a
    ld l, e
    ld l, e
    ld b, c
    pop hl
    ld [hl], l
    add l
    pop bc
    rst $38
    cp e
    xor b
    pop bc
    pop hl
    cp a
    ldh [rP1], a
    ld a, $a0
    nop
    and l
    pop bc
    rst $38
    add e
    jp hl


    ld bc, $c1e2
    pop bc
    cp [hl]
    pop bc
    add e
    pop hl
    ld bc, $ca4d
    rst $38
    cp a
    adc b
    ret nz

    ld [c], a
    cp l
    ret nz

    ret nz

    push hl
    ld b, a
    rst $18
    db $ec
    db $eb
    nop
    ld b, d
    ld [c], a
    ret nz

    ld [c], a
    pop bc
    jp nz, $ffc0

    pop bc
    db $ec
    ld b, c
    db $e4
    cp a
    ret nz

    jp Jump_000_18a0


    add l
    cp a
    call nz, $01b0
    db $e3
    ld l, e

Call_060_6001:
    ld l, e
    ret nz

    db $e3
    cp a
    ldh [$be], a
    rst $38
    ld [bc], a
    add e
    xor c
    dec bc
    ld bc, $c1e3
    pop hl
    ld b, h
    cp a
    dec a
    sub d
    ld a, l
    pop bc
    rst $38
    inc h
    ld [$22fb], sp
    ret nz

    rst $38
    cp e
    ld l, e
    dec c
    dec b
    add $02
    and e
    ret nz

    rst $38
    cp l
    call Call_000_0400
    ld b, h
    cp [hl]
    and d
    add hl, hl
    ld h, d
    rst $38
    rst $38
    ret nz

    add hl, hl
    ret nz

    jp hl


    pop bc
    rst $38
    ret nz

    ld a, [c]
    nop
    adc e
    ld h, c
    ld a, b
    inc hl
    ld b, d
    rst $38
    nop
    adc [hl]
    ld b, b
    push hl
    ld a, a
    cp a
    inc a
    push de
    nop
    push hl
    inc b
    add e
    sbc a
    db $fd
    ld de, $046b
    ld h, b
    ld a, $80
    cp l
    and c
    pop bc
    rst $38
    rst $38
    ld [hl], c
    rrca
    ld l, e
    ld l, e
    ld l, e
    dec c
    db $fc
    ldh [$c1], a
    rst $38
    dec sp
    or a
    ld b, a
    ld e, a
    nop
    ld a, b
    add hl, sp
    ld a, [hl-]
    add e
    add e
    rst $18
    ld a, l
    ld e, b
    dec sp
    and c
    ret nz

    rst $38
    inc a
    ld d, a
    ret nz

    ld [c], a
    nop
    ld bc, $3dff
    ld hl, sp-$3f
    rst $38
    ld [hl], h
    ld a, [de]
    rlca
    ld a, a
    ld a, b
    ld e, e
    call c, $ffff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$0000]
    nop
    ld bc, $ffa0
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, $dcdb

    ld hl, sp-$07
    add sp, -$01
    rst $38
    db $ed
    db $ec
    db $dd
    sbc $df
    ldh [$e1], a
    ld hl, sp-$07
    and $ff
    rst $38
    xor $ed
    ld [c], a
    db $e3
    db $e4
    push hl
    and $30
    ld sp, hl
    and $77
    rst $38
    ld b, [hl]
    rst $28
    rst $10
    add sp, -$2c
    push de
    ld [hl], a
    rst $38
    ld b, [hl]
    db $ec
    adc $cd
    ldh [$a0], a
    ret nc

    pop de
    add $e1
    ld a, [$d6e0]
    rst $10
    ld [hl], b
    ld [hl], a
    add sp, $46
    rst $38
    ld b, [hl]
    pop hl
    call $a0e0
    jp nc, $c6d3

    pop hl
    add [hl]
    ld a, [$d8e0]
    reti


    ld a, $ff
    db $ed
    db $ec
    call $c6e3
    pop hl
    sbc a
    add e
    and d
    sbc a
    ld [hl], l
    ld [c], a
    ld a, $ff
    ld c, c
    rst $00
    ld b, [hl]
    ldh [$c8], a
    ldh [$9d], a
    ld a, l
    sbc l
    add $e0
    sbc a
    sbc h
    xor [hl]
    sbc h
    sbc a
    ld [hl], l
    pop hl
    ld hl, sp+$3e
    rst $38
    ld c, c
    rst $00
    ld b, [hl]
    ldh [$9f], a
    sbc h
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ccf

Jump_060_6141:
    sbc h
    sbc l
    sbc l
    sbc h
    ld b, [hl]
    xor a
    cp a
    pop hl
    rst $28
    jp nz, $ff20

    rst $38
    ld c, c
    jp $c090


    adc c
    ldh [$c7], a
    ldh [rDMA], a
    rst $38
    ldh [$f8], a
    ldh [rSTAT], a
    ld b, [hl]
    ld a, [hl]
    ldh [$ef], a
    pop bc
    rst $38
    rst $38
    db $e4
    db $e3
    sub b
    ret nz

    sbc [hl]
    jp z, Jump_000_38e0

    rst $00
    ldh [$be], a
    ldh [$f8], a
    ldh [rDMA], a
    ld b, [hl]
    sbc [hl]
    cp h
    pop bc
    ld a, [hl+]
    pop hl
    ld [$ffff], sp
    inc de
    ret nz

    sub b
    ret nz

    sbc [hl]
    add l
    pop hl
    jp $7ae4


    ldh [$3e], a
    pop hl
    nop
    ld [hl], b
    pop bc
    rst $38
    rst $38
    ld d, a
    db $e3
    ld [bc], a
    ldh [rIE], a
    ld [$c1bc], a
    cp $c2
    dec sp
    rst $18
    jr c, jr_060_61e8

    jp nz, $e9c1

    ld a, [$afc1]

jr_060_61a1:
    xor [hl]
    and c
    db $ed
    and d
    dec sp
    rst $18
    ld [$e883], sp
    pop bc
    jp nz, $c4ff

    xor a
    cp $c2
    dec sp
    rst $18
    ld b, h
    ld [c], a
    rst $00
    rst $20
    rrca
    ld b, l
    ld c, b
    ld c, b
    ld b, l
    cp $c7
    cp a
    rst $18
    pop bc
    db $e3
    adc l
    pop bc
    inc e
    ld b, h
    pop bc
    jp nz, Jump_060_52e0

    ld h, c
    ld e, h
    cp a
    db $e3
    cp d
    and h
    rst $38
    rst $38
    ei
    sbc a
    sbc h
    ld c, c
    add $51
    ld e, [hl]
    ld d, d
    ld a, [hl+]
    dec l
    add e
    ld b, a
    ld d, l
    db $76
    call nz, $c27c
    rst $38
    rst $38
    add [hl]
    and c
    ld c, c

jr_060_61e8:
    call nz, Call_060_7f45
    ld e, e
    ld a, [hl+]
    jr nz, jr_060_621d

    ld c, e
    ld d, [hl]
    ld b, l
    or $c4
    pop hl
    sbc [hl]
    call nz, $c0ff
    jp $a04b


    pop bc
    ld [c], a
    ld b, a
    ld d, l
    jr nc, jr_060_61a1

    jr nz, jr_060_6234

    ld c, d
    ld d, d
    ld b, l
    or h

Jump_060_6208:
    and c
    ld [hl], h
    and b
    and c
    db $fc
    push bc
    rst $38
    ld a, [hl]
    jp z, Jump_060_4745

    ld d, [hl]
    ld a, [hl+]
    ld h, $21
    pop hl
    ld b, b
    cp [hl]
    jp $a071


jr_060_621d:
    ccf
    rst $38
    dec a
    jp z, Jump_060_46ae

    ld e, h
    rrca
    ld d, d
    add hl, sp
    dec [hl]
    inc a
    add b
    pop hl
    ld hl, sp-$5c
    cp a
    rst $38
    ei
    srl a
    ld b, l
    ld b, h

jr_060_6234:
    ld a, [hl-]
    dec [hl]
    dec [hl]
    add hl, sp
    pop bc
    push hl
    cp [hl]
    rst $18
    ld a, [$e9ea]
    and c
    ld b, b
    pop bc
    ld [hl], $35
    xor h
    dec [hl]
    ld a, [hl-]
    ldh [rIE], a
    and c
    cp b
    add d
    pop bc
    rst $38
    jp hl


    add sp, -$41
    add c
    ld b, b
    dec [hl]
    dec [hl]
    and c
    xor l
    ret nz

    db $e3
    ld a, e
    add c
    pop bc
    rst $38
    inc a
    xor l
    ld b, l
    ld b, c
    ldh [$35], a
    pop af
    add hl, sp
    add hl, sp
    and h
    pop bc

jr_060_6268:
    rst $38
    ld a, $cf
    add hl, sp
    dec [hl]
    dec [hl]
    inc a
    add l
    ld b, h
    rst $38
    ld h, d
    sbc h
    inc [hl]
    ld h, c
    rst $38
    rst $38
    cp a
    add [hl]
    call nz, Call_060_4483
    rrca
    inc a
    dec [hl]
    dec [hl]
    ld b, b
    add e
    rst $38
    cp a
    sub b
    db $fd
    add e
    rst $38
    ret nz

    inc bc
    inc a
    ld b, h
    dec sp
    ld h, c
    push bc
    cp a
    add l
    ret


    cp a
    add d
    ld b, c
    ld h, c
    add b
    ldh [$e0], a
    add c
    jp nz, $bf45

    add l
    jp z, Jump_060_6208

    rst $38
    add d
    ld a, [hl-]
    dec [hl]
    add hl, sp
    jr c, jr_060_6268

    ld h, d
    ld b, b
    rst $38
    cp a
    sub d
    ld b, [hl]
    add hl, sp
    ld [hl], $01
    add b
    ld b, e
    rst $18
    ld b, b
    ld a, a
    ld [hl], d
    cp $62
    ld b, h
    cp a
    ld a, a
    sub $8b
    add e
    nop
    ld h, h
    ld b, [hl]
    rst $38
    ld b, b
    db $fc
    rst $38
    rst $38
    cp e
    ld l, c
    xor [hl]
    ld b, [hl]
    ld b, l
    ld b, e
    xor a
    ld b, e

Jump_060_62d0:
    rla
    ld b, e
    ld b, c
    ld b, e
    rst $38
    ld [hl+], a
    xor [hl]
    rst $38
    ld b, b
    rst $38
    rst $38
    ld bc, $bfa9
    xor a
    ld b, l
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    pop af
    ld b, l
    cp d
    ld hl, $ff40
    ld bc, $44ad
    inc a
    and h
    ld h, h
    jp nz, $e0ff

    and l
    ld a, [hl]
    and c
    db $fd
    ld [bc], a
    rst $38
    rst $38
    pop bc
    adc d
    ld b, d
    dec [hl]
    rst $38
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    dec [hl]
    ld b, d
    jr nz, jr_060_634d

    ld b, d
    rst $38
    rst $38
    db $fc
    inc l
    ret nz

    ldh [$c1], a
    add b
    dec [hl]
    ret nz

    ld [c], a
    cp a
    cp a
    ld e, [hl]
    cp e
    cpl
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld a, $a1
    ldh [rSTAT], a
    rst $38
    cp a
    ld l, a
    ret nz

    rst $00
    pop bc
    rst $38
    dec sp
    ld [hl-], a
    ld b, l
    ld b, e
    ld b, c
    ld bc, $40ae
    ret nz

    pop bc
    rst $38
    inc a
    sub a
    ld b, a
    ld e, a
    ld a, b
    dec a
    add l
    and c
    jp $80df


    ld a, b
    ld [hl], $3e
    and b
    add l
    cp a
    ld a, c
    ld a, b

jr_060_634d:
    ld b, e
    ld h, b
    add l
    cp a
    or l
    add hl, de
    sbc h
    ld bc, $069d
    ld a, a
    jr c, jr_060_6392

    add h
    rst $38
    or $7b
    pop bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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

jr_060_6392:
    rst $38
    nop
    nop
    ld bc, $fe80
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    inc hl
    ld c, $02
    ld bc, $0f1c
    ld [bc], a
    ld [bc], a
    inc h
    rrca
    ld [bc], a
    inc bc
    ld a, [de]
    db $10
    ld [bc], a
    inc b
    dec e
    db $10
    ld [bc], a
    dec b
    ld [hl+], a
    db $10
    ld [bc], a
    ld b, $1f
    ld de, $0702
    daa
    inc de
    ld [bc], a
    ld [$1423], sp
    ld [bc], a
    add hl, bc
    jr z, jr_060_63de

    ld [bc], a
    ld a, [bc]
    inc e
    dec d
    ld [bc], a
    dec bc
    dec d
    ld d, $02
    inc c
    inc d
    rla
    ld [bc], a
    dec c
    add hl, de
    rla
    ld [bc], a
    ld c, $29
    rla

jr_060_63de:
    ld [bc], a
    rrca
    ld d, $18
    ld [bc], a
    db $10
    ld h, $19
    ld [bc], a
    ld de, $1a29
    ld [bc], a
    ld [de], a
    dec de
    inc e
    ld [bc], a
    inc de
    dec hl
    inc e
    ld [bc], a
    inc d
    ld a, [hl+]
    dec e
    ld [bc], a
    dec d
    jr nz, jr_060_6418

    ld [bc], a
    ld d, $27
    ld e, $02
    rla
    inc hl
    jr nz, jr_060_6405

    jr jr_060_641d

jr_060_6405:
    ld [hl+], a
    ld [bc], a
    add hl, de
    ld d, $23
    ld [bc], a
    ld a, [de]
    inc e
    inc hl
    ld [bc], a
    dec de
    dec d
    inc h
    ld [bc], a
    inc e
    rla
    dec h
    ld [bc], a
    dec e

jr_060_6418:
    inc h
    dec h
    ld [bc], a
    ld e, $1b

jr_060_641d:
    daa
    ld [bc], a
    rra
    daa
    daa
    ld [bc], a
    jr nz, jr_060_643e

    jr z, @+$04

    ld hl, $281e
    ld [bc], a
    ld [hl+], a
    inc hl
    jr z, jr_060_6431

    inc hl
    add hl, hl

jr_060_6431:
    jr z, jr_060_6435

    inc h
    ld a, [de]

jr_060_6435:
    add hl, hl
    ld [bc], a
    dec h
    jr z, jr_060_6463

    ld [bc], a
    ld h, $25
    ld a, [hl+]

jr_060_643e:
    ld [bc], a
    daa
    daa
    dec hl
    ld [bc], a
    jr z, jr_060_6464

    jr nc, jr_060_6449

    add hl, hl
    inc e

jr_060_6449:
    ld sp, $2a02
    ld [hl+], a
    ld sp, $2b02
    ld e, $32
    ld [bc], a
    inc l
    inc h
    ld [hl-], a
    ld [bc], a
    dec l
    jr nz, jr_060_648d

    ld [bc], a
    ld l, $23
    inc sp
    ld [bc], a
    cpl
    rra
    inc [hl]
    rst $38

jr_060_6463:
    rst $38

jr_060_6464:
    rst $38
    ld l, l
    ld h, h
    add l
    ld l, c
    ld [hl-], a
    ld [hl], c
    ld c, l
    ld [hl], c
    ccf
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $fa
    and $f3
    pop hl
    ld b, $f0
    pop hl
    inc c
    dec l
    jp hl


    ldh [$fd], a
    db $e4
    db $fc
    db $ed
    ret nc

    jp hl


    pop de
    db $e3
    inc b
    ld a, [$c2e5]
    push hl
    dec c

jr_060_648d:
    ret nz

    db $e4
    rst $18
    xor $dd
    and $fa
    di
    sub d
    push hl
    cp a
    ld c, l
    ld l, l
    inc c
    ld c, l
    dec c
    ld c, l
    rst $38
    pop hl
    dec l
    ldh [$b8], a
    db $e3
    add d
    db $eb
    xor l
    db $ed
    ld [hl], e
    jp hl


    inc a
    pop hl
    ld l, l
    dec c
    dec bc
    rst $38
    inc c
    dec bc
    dec hl
    ld a, [bc]
    ld l, d
    dec bc
    dec bc
    dec bc
    rlca
    dec c
    ld c, l
    dec l
    ld a, $e7
    ld h, d
    and $0d
    add sp, -$47
    jp hl


    ld hl, sp-$3e
    add hl, sp
    ld c, l
    pop bc
    ldh [$c0], a
    pop hl
    ld c, d
    ld c, d
    ld a, [hl+]
    ret nz

    pop hl
    cp a
    ldh [$d0], a
    db $eb
    pop hl
    db $76
    db $ec
    ccf
    or $84
    pop hl
    dec bc
    db $fd
    ldh [$0c], a
    inc c
    inc hl
    ld a, [bc]
    ld a, [bc]
    add c
    ldh [$f4], a
    pop hl
    dec sp
    ldh [$6d], a

jr_060_64eb:
    push af
    pop hl
    db $76
    pop hl
    ldh a, [rSCX]
    rst $30
    ret z

    call nz, $e084
    cp a
    ldh [$0b], a
    dec bc
    ld l, h
    inc c
    ld bc, $c02a
    db $e3
    or d
    ld [c], a
    or [hl]
    db $e3
    db $76
    ldh [$5a], a
    and $80
    call $c548
    ld a, h
    ld c, a
    ldh [$7f], a
    ld [c], a
    ld l, h
    inc l
    ld l, e
    dec hl
    dec bc
    db $fc
    ret nz

    ld a, $c0
    db $e3
    dec c

jr_060_651c:
    inc l
    inc c
    inc l
    inc l
    db $76
    ldh [$7e], a
    and $f0
    ld l, c
    pop de
    jr jr_060_64eb

    pop de
    db $e3
    rst $38
    jp nz, Jump_060_4b4b

    ld l, e
    ld l, e
    ld h, l
    ld c, d
    dec sp
    ld [c], a
    dec c
    ret nz

    ldh [$bf], a
    ldh [$0b], a
    dec bc
    push af
    ret nz

    inc c
    ld a, d
    ret nc

    or [hl]
    ret z

    ld c, l
    dec l
    ld [bc], a
    pop hl
    xor h
    and b
    jp nc, $80e0

    ldh [$b7], a
    dec bc
    ld a, [bc]
    ld c, e
    rst $00
    pop hl
    dec c
    inc c
    rst $38
    pop hl
    inc l
    pop bc
    inc c
    db $fd
    ret nz

    ld e, h
    call nz, $d180
    add b
    and e
    ret nz

    db $e3
    dec bc
    inc l
    inc sp
    ld c, h
    dec hl
    ret nz

    pop hl
    or a
    ret nz

    inc l
    inc l
    add e
    ldh [$fe], a
    db $e3
    ld [hl], b
    cp h
    pop bc
    add d
    reti


    jr c, jr_060_651c

    adc h
    jp nz, $0c2c

    ld c, h
    jp nz, Jump_000_00c4

    call nz, Call_060_7fe5
    pop hl
    ld a, e
    jp nz, $ad4d

    add b
    add $00
    call nz, $c24a
    add c
    ldh [$82], a
    ret nz

    rst $28
    ld c, h
    daa
    pop bc
    ld a, [c]
    and c
    or c
    and l
    add b
    ret nc

    add c
    db $e3
    dec bc
    ld l, c
    inc c
    ret nz

    db $e3
    ld a, l
    ret nz

    ld l, h
    ld a, a
    and $6c
    ld c, h
    dec h
    pop bc
    ret nc

    xor b
    add h
    jp hl


    sub d
    ld b, l
    and e
    sub c
    pop bc
    inc l
    add c
    push hl
    dec bc
    ld l, h
    pop bc
    ld c, h
    ld b, c
    rst $20
    and $a1
    ret nz

    ldh a, [$36]
    and [hl]
    pop bc
    and l
    dec c
    inc l
    rst $30
    ld c, h
    ld l, e
    ld l, e
    add d
    and d
    ld c, e
    dec bc
    dec bc
    ld c, h
    nop
    rst $38
    ldh [$80], a
    jp $e100


    db $e4
    add b
    add b
    push de
    ld bc, $81c2
    and d
    dec d
    pop hl
    ld b, $c0
    ld [c], a
    ld l, e
    ld c, e
    add d
    and d
    cp [hl]
    db $e4
    rst $38
    and b
    ld h, b
    and d
    dec a
    sub h
    ld c, $c1
    and [hl]
    inc l
    inc c
    ld l, h
    dec a
    pop bc
    ld bc, $f4e2
    add b
    ld [hl], a
    add c
    add e
    ld c, h
    ld c, h
    ld a, [hl-]
    ret nz

    ld l, l
    ret nz

    or h
    add c
    ld b, e
    or $c1
    and l
    inc l
    ld c, b
    sub a
    ret nz

    dec bc
    and l
    cp h
    and c
    ld a, [bc]
    ld [hl], a
    add b
    inc a
    ldh [$6c], a
    ret nz

    and $20
    nop
    or b
    add d
    ld h, h
    add b
    and b
    inc b
    add b
    sub a
    ret nz

    dec hl
    cp a
    rst $20
    db $fc
    ret nz

    adc [hl]
    or h
    and b
    ld c, h
    ld c, h
    ld l, h
    ld a, h
    adc b
    ld a, d
    ld [hl], d
    nop
    call nz, $2d0d
    inc c
    ccf
    add b
    ld l, e
    dec c
    ccf
    push bc
    dec c
    ld [hl], a
    and e
    ld a, d
    add h
    jr nz, @-$4c

    ld h, l
    add b
    ld l, a
    ret nz

    push hl
    inc b
    ld h, b
    jp z, $2b60

    rst $38
    ldh [rSTAT], a
    add h
    rra
    dec hl
    ld c, e
    ld l, e
    ld c, e
    ld l, e
    ret nz

    db $ec
    nop
    cp b
    ld b, h
    ld h, c
    ld [$406b], sp
    pop bc
    push hl
    cp e
    and c
    dec hl
    inc [hl]
    ld h, e
    add b
    ld [c], a
    db $fd
    ld d, e
    adc b
    ld b, [hl]
    ld [hl], b
    add c
    ld h, c
    ld b, b
    ld [c], a
    nop
    jp $c47b


    dec bc
    ld a, [bc]
    ld a, [hl+]
    or $a0
    nop
    ld bc, $c3c6
    ld d, d
    ret nz

    and e
    call nz, $9781
    and c
    add c
    and $76
    ret


    and [hl]
    ld b, b
    nop
    adc l
    ld d, c
    adc c
    ld b, l
    inc bc
    ld h, e
    ld b, c
    pop bc
    ld b, d
    and [hl]
    cp b
    call nz, $a3f7
    and a
    ld b, c
    jr nz, jr_060_66ad

    ld e, d
    inc bc
    ld h, d
    sbc b
    add b
    add h

jr_060_66ad:
    add h
    add d
    and b
    ld l, e
    ld [hl], $c0
    or a
    and [hl]
    ret nz

    ld b, l
    adc l
    add h
    ld [$c5c2], a
    sbc b
    add b
    ld b, l
    add h
    ld b, b
    ld h, b
    dec c
    ld c, e
    nop
    ld [hl], d
    ld b, b
    or l
    add [hl]
    ld l, l
    inc h
    add b
    ld l, a
    add $27
    ld b, h
    and d
    ld b, d
    rst $20
    ld [hl], h
    ld b, c
    nop
    scf
    add $80
    db $e4
    ld a, a
    ld [hl-], a
    ld b, h
    add $44
    and b
    ld [bc], a
    push hl
    call nz, $c0a1
    ld [c], a
    nop
    dec [hl]
    add l
    ld b, e
    ld h, e
    add b
    ld [hl], d
    call nz, Call_060_4866
    ld h, c
    jp nz, Jump_000_39c7

    add $f4
    ld b, e
    nop
    rst $38
    inc h
    add hl, sp
    push hl
    nop
    ld c, h
    ret nz

    db $e3
    db $d3
    and $80
    call nz, $c5f4
    cp [hl]
    inc l
    add b
    add [hl]
    ld de, $81c3
    sbc e
    ld b, b
    add [hl]
    and [hl]
    ld b, [hl]
    push bc
    nop
    rst $00
    cp l
    call nz, Call_060_790e
    ld c, $35
    ld a, [hl+]
    add b
    ld h, a
    dec bc
    dec c
    ld l, h
    inc c
    rst $00
    add e
    ld b, b
    add h
    db $e3
    ld a, l
    jr nz, @-$76

    and e
    xor $a5
    nop
    ld e, h
    ld [$2c20], sp
    ret nz

    push hl
    add hl, bc
    dec hl
    ld c, e
    and b
    dec a
    jr nz, jr_060_67a6

    ld b, l
    db $e3
    ld l, a
    and h
    ret nz

    ld l, a
    inc [hl]
    xor e
    inc c
    inc bc
    and c
    ld b, c
    and $2a
    ld c, d
    ld a, l
    ld b, d
    dec sp
    ld h, b
    rst $30
    add [hl]
    cp l
    xor a
    ld [hl], h
    jp $8148


    ld [hl+], a
    inc c
    call Call_000_2bc4
    dec bc
    ld c, e
    ld a, $01
    rlca
    dec hl
    ld a, [bc]
    ld c, d
    ld [hl], b
    ret


    inc a
    ld bc, $5200
    add d
    ld h, h
    ret nz

    ld [c], a
    ld a, $95
    add d
    dec hl
    dec hl
    ld c, e
    ld a, [hl+]
    ld a, [hl+]
    rlca
    add b
    cp [hl]
    nop
    add b
    ld [hl], b
    ret


    ld a, [hl]
    ld [bc], a
    add d
    db $76
    ld a, [hl]
    ret nz

    ld a, a
    pop bc
    ld [bc], a
    and h
    ld a, $01
    ld c, e
    add c
    ld c, e
    ld e, a
    add b
    ld b, h
    add c
    ld a, [hl-]
    ld h, c
    rst $38
    jp Jump_060_5700


    ccf
    ld b, c
    ld l, h
    jr nz, @+$41

    ldh [rDIV], a
    ld b, c
    jp z, $ff60

    ld [hl+], a
    cpl
    ld h, c

jr_060_67a3:
    dec c
    dec [hl]
    nop

jr_060_67a6:
    cp c
    call nz, $8008
    db $e3
    nop
    ld d, e
    rst $38
    ld [hl+], a
    ld l, h
    ld a, [de]
    ld b, b
    cp $c5
    ld b, c
    add c
    cp a
    add c
    inc b
    ld a, [hl]
    ldh [$c1], a
    jr nz, jr_060_6809

    cp e
    and c
    ld b, b
    ld h, a
    db $fc
    inc sp
    ld a, [hl]
    and d
    inc b
    inc hl
    ld [$207e], sp
    ld b, e
    ldh [$be], a
    ld b, b
    dec hl
    ld l, h
    ld b, c
    jr c, jr_060_67d4

jr_060_67d4:
    ret nz

    db $e4
    ld b, e
    dec [hl]
    ldh [rLCDC], a
    inc hl
    ld e, d
    ld hl, $8300
    add $e1
    ld [hl], d
    ld bc, $6b6b
    dec l
    inc bc
    dec c
    inc l
    nop
    ld hl, $a124
    db $fd
    add l
    add b
    jp nc, Jump_060_6141

    ld a, a
    adc b
    inc c
    ccf
    add d
    jp nz, $2de1

    dec l
    ret nz

    pop hl
    dec h
    and b
    add b
    inc b
    dec sp
    sub h
    inc d
    dec b
    dec h
    ld b, [hl]

Jump_060_6808:
    ld b, l

jr_060_6809:
    ld l, e
    add c
    ld h, c
    dec c
    jp nz, Jump_060_7fe0

    rlca
    ld a, e
    ld h, c
    cp $00
    ld d, c
    dec c
    dec c
    ld c, l
    ld c, l
    dec c
    ld c, l
    ld l, l
    jr jr_060_6877

    nop
    sbc d

jr_060_6821:
    jr nz, jr_060_67a3

    ld h, l
    ld l, e
    ld l, e
    ld c, d
    ld [bc], a
    ld b, b
    dec b
    nop
    jr nz, jr_060_683d

    ld e, a
    ld b, d
    ld c, d
    ret nc

    ld c, b
    ld b, b
    sbc $e3
    ld l, h
    add $00
    ld c, a
    and h
    sla b
    ret nz

jr_060_683d:
    ld a, [bc]
    db $e3
    ret nz

    push hl
    nop
    jr nz, jr_060_6821

    ld b, d
    rst $38
    ld d, c
    add [hl]
    ldh [$6c], a
    ld l, h
    ld bc, $c20d
    nop
    ld d, a
    ld [hl+], a
    jp z, $0e61

    add c
    call nz, $c3e7
    nop
    ldh [$e0], a
    add b
    ld bc, $4443
    ld [hl], c
    add hl, bc
    ld h, b

jr_060_6862:
    call nz, $c220
    ld [bc], a
    jp z, Jump_060_7c64

    ld b, c
    ld l, h
    add b
    ld c, e
    nop
    jp nz, $68e3

    ldh [rSB], a
    ld b, d
    add d
    ld b, $80

jr_060_6877:
    ld b, $c0
    db $e4
    ld c, h
    jr nc, jr_060_6862

    ld hl, $61a0
    jr jr_060_68a4

    ccf
    ld b, h
    ld l, h
    ld c, h
    ld b, $e6
    or h
    ld b, c
    jr jr_060_6890

    db $e4
    ld a, a
    ld b, l
    ld a, h

jr_060_6890:
    add hl, hl
    inc c
    ld c, h
    ld h, [hl]
    ld h, e
    cp [hl]
    add c
    ld a, $68
    dec b
    ld c, h
    cp a
    ld [c], a
    inc l
    ld b, $e5
    ld b, $66
    ei
    ld l, e

jr_060_68a4:
    adc l
    ld bc, $e5a4
    ld hl, sp+$40
    db $e4
    add h
    ret nz

    rrca
    ld [hl+], a
    ld c, h
    ld c, h
    inc l
    inc l
    inc l
    ld [bc], a
    xor e
    pop bc
    dec c
    add h
    ld c, d
    add b
    ld l, e
    add d
    pop bc
    and a
    ld h, c
    cp h
    ld b, l
    add l
    inc hl
    ld h, b
    ld a, [hl]
    push hl
    ld l, h
    pop bc
    ld b, d
    nop
    push bc
    ld b, e
    ld b, a
    inc [hl]
    inc l
    inc l
    dec h
    ld b, d
    jr jr_060_6953

    and d
    rst $38
    push af
    ret nz

    ld hl, sp+$6d
    inc l

jr_060_68dc:
    ld bc, $2ae0
    ld b, e
    adc e
    ld b, [hl]
    jr nz, jr_060_68dc

    db $ed
    dec b
    ld h, d
    ld b, e
    dec l
    add b
    pop bc
    dec a
    nop
    inc l
    pop bc
    ret nz

    cp [hl]
    ld b, l
    nop
    ld c, a
    ld c, d
    ld b, e
    ld c, c
    ccf
    or $42
    add $7c
    ld [bc], a
    ld d, e
    add c
    sub [hl]
    nop
    db $fc
    db $ec
    nop
    ccf
    ld hl, sp+$42
    add $7e
    ld b, e
    add b
    push af
    call nz, Call_060_4327
    ld a, [hl+]
    ld a, [bc]
    jp nz, $c142

    ld [hl], b
    nop
    jp hl


    ret nz

    ld a, [c]
    ld h, c
    and b
    inc b
    ld d, e
    dec c
    ld c, l
    inc c
    ld l, d
    ld h, [hl]
    ld h, a
    ld c, l
    dec l
    ld l, e
    inc de
    ld h, e
    db $fc
    db $ec
    ld l, e
    ld c, e
    add $93
    ld hl, sp-$7e
    and h
    ld a, [hl+]
    ld b, e
    db $fc
    inc bc
    dec c
    dec hl
    ld l, e
    ld c, e
    dec hl
    ret nz

    db $fc
    db $e4
    dec sp
    ld h, b
    db $f4
    db $e3
    add $81
    inc b
    and [hl]
    dec a
    db $ec
    ld c, $0e
    ld hl, $040c
    and b
    inc [hl]
    add l
    ld e, e
    ldh [$cb], a
    ld h, d

jr_060_6953:
    dec hl
    cp c
    nop
    sub $84
    sub b
    ld d, d
    ld h, c
    ld c, b
    add [hl]
    add [hl]
    dec c
    ld [hl], d
    ld bc, $c20c
    add $76
    daa
    ld c, l
    rlca
    dec hl
    dec hl
    ld l, l
    dec c
    jp $e5ea


    ld b, [hl]
    inc d
    add b
    pop hl
    ld sp, hl
    ld c, h
    ld b, $da
    add d
    dec hl
    dec hl
    inc c
    and b
    and [hl]
    ld b, [hl]
    adc e
    add hl, hl
    add b
    jp z, $0000

    nop
    cp a
    and b
    and b
    and b
    call c, $dedd
    ld a, [$a0e6]
    rst $38
    ret c

    reti


    ret nc

    pop de
    call nc, $9ed5
    ld de, $9e7f
    and b
    jp nc, $a0d3

    call nc, $f0d5
    ldh [$ec], a
    db $ec
    pop hl
    db $fc
    rst $20
    jp c, $d0db

    ld [$e4dc], a
    rst $18
    rst $28
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [$a0e4]
    ret nc

    pop de
    adc e
    jp c, $c8db

    ldh [$a0], a
    ret nz

    pop hl
    jp $a3e0


    ldh [$da], a
    ld e, c
    db $db
    db $ec
    pop hl
    add sp, -$1f
    sub $d7
    db $fc
    pop hl
    and b
    ret nc

    jp hl


    ld a, [hl]
    call nz, $eae0
    push hl
    and $e7
    add sp, -$17
    ld a, [$fce4]
    adc h
    pop hl
    adc e
    ldh [$9f], a
    sbc l
    sbc h
    ld de, $a29c
    dec c
    sbc l
    rst $38
    pop hl
    and d
    sbc a
    db $ec
    ld [c], a
    xor h
    pop hl
    db $76
    db $e4
    ret nc

    jp hl


    db $ec
    call nz, Call_060_43e0
    jp hl


    sub $d7
    adc h
    ld [c], a
    sbc a
    sbc h
    xor [hl]
    rst $38
    ld b, [hl]
    ld de, $4546
    ld c, b
    ld d, e
    ld b, l
    ld b, [hl]
    rrca
    ld b, [hl]
    xor [hl]
    sbc h
    sbc a
    ld a, b
    pop hl
    ld [hl], h
    pop hl
    ld a, d
    push hl
    ld a, [de]
    pop hl
    ld hl, sp+$0d
    rst $20
    ld b, e
    add sp, $14
    ld [c], a

jr_060_6a1f:
    sbc a
    sbc l
    and d
    sbc h
    xor [hl]
    db $fd
    xor a
    ret nz

    ldh [rHDMA1], a
    ld e, [hl]
    ld d, h
    ld b, h
    ld b, l
    ld b, [hl]
    ld bc, $bfaf
    ldh [$eb], a
    pop hl
    db $76
    and $f0
    pop bc
    dec c
    jp hl


    ld b, e
    rst $20
    jr nz, jr_060_6a1f

    cp $84
    ld [c], a
    ld b, [hl]
    xor a
    ld b, [hl]
    ld b, [hl]
    ld [$4a05], sp
    xor a
    ld d, [hl]
    ld a, [hl+]
    ld h, $34
    db $f4
    pop hl
    sbc h
    xor [hl]
    ldh [rDMA], a
    ld h, b
    rst $38
    ldh [rPCM12], a
    pop hl
    ld hl, sp-$3d
    dec c
    ld [$c480], a
    sub $d7
    add d

Call_060_6a61:
    ld [c], a
    db $fc
    add h
    ldh [$bf], a
    ldh [rDMA], a
    ld b, [hl]
    ld b, $06
    ld d, l
    ld e, d
    rrca
    daa
    jr nz, jr_060_6a9e

    ld b, e
    dec a
    pop hl
    jp $bfe1


    ldh [rPCM12], a
    pop hl
    sub b
    ld hl, sp-$3b
    add b
    adc $48
    ret nz

    sub [hl]
    pop bc
    sbc [hl]
    ld c, a
    ldh [$82], a
    ldh [$ae], a
    rst $38
    ld b, [hl]
    dec b
    ld [$2d45], sp
    jr nz, jr_060_6ab1

    ld [hl-], a
    ei
    ld c, e
    ld b, h
    ld [hl], d
    ld [c], a
    xor [hl]
    dec b
    rlca
    inc b
    inc bc
    ld b, b
    db $76

jr_060_6a9e:
    ldh [$7e], a
    and $7a
    rst $00
    add [hl]
    push bc
    jr z, @-$3e

    ld c, $c0
    and c
    pop de
    db $e3
    cp $7c
    ldh [rNR11], a
    ld b, [hl]

jr_060_6ab1:
    cp l
    inc hl
    inc hl
    cp l
    ld e, [hl]
    db $fd
    ld e, h
    add [hl]
    ld [c], a
    xor a
    ld b, $9a
    sbc b
    dec c
    ld [bc], a
    ld b, a
    ld b, [hl]
    ld b, [hl]
    and c
    db $76
    add $80
    ret nc

    add d
    pop bc
    sbc a
    ld d, $e0
    db $fd
    xor [hl]
    ld a, h
    pop hl
    dec b
    ld [$3946], sp
    dec [hl]
    dec [hl]
    rst $28
    ld b, b
    ld e, e
    ld b, l
    ld [bc], a
    add [hl]
    pop hl
    ld [bc], a
    rrca
    sbc b
    rrca
    sub a
    sbc b
    rrca
    dec b
    db $fd
    ret nz

    xor l
    and b
    ld a, [hl]
    pop bc
    add b
    pop de
    ld a, [c]
    jr z, @-$1c

    sbc [hl]
    jp nz, $80c1

    ret nz

    ld b, $06
    ld b, l
    ld a, [hl-]
    rst $30
    dec [hl]
    dec [hl]
    add hl, sp
    or a
    ret nz

Call_060_6b00:
    ld bc, $0d00
    rlca
    ld e, $c1
    ldh [$96], a
    sub a
    sbc b
    ld b, $bc
    pop bc
    ld e, [hl]
    and c
    add b
    db $d3
    or $96
    and c
    and b
    sbc [hl]
    jp nz, $afc1

    ld b, [hl]
    dec b
    rrca
    rst $38
    dec b
    ld [hl], $35
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld e, e
    ld [$ff98], sp
    pop hl
    sub a
    sub [hl]
    ret nz

    ldh [$08], a
    ld a, e
    jp nz, Jump_000_3e08

    and b
    add b
    db $d3
    sbc d
    and d
    sbc [hl]
    ld b, h
    ret nz

    add c
    jp nz, $e042

    cp a
    ldh [rIE], a
    ld b, d
    ld b, [hl]
    ld [$9899], sp
    sub a
    sub a
    sub a
    inc de
    sub [hl]
    sub l
    add b
    ld [c], a
    inc h
    ret nz

    sbc [hl]
    db $db
    add c
    dec a
    add sp, -$80
    rst $00
    ret c

    add d
    and d
    cp a
    ret nz

    ld c, a
    pop bc
    ld [$4205], sp
    ldh [$35], a
    dec [hl]
    rst $08
    inc a
    ld b, h
    ld b, [hl]
    ld b, $82
    db $e3
    ld b, c
    ldh [rIF], a
    dec b
    add d
    ld h, l
    pop bc
    sbc [hl]
    call c, Call_000_3d80
    jp hl


    add b
    rst $00
    nop
    call nz, $a0c1
    xor [hl]
    xor a

Jump_060_6b80:
    dec b
    ld [$3c44], sp
    add b
    ld [c], a
    add hl, sp
    ld [hl], $e0
    sbc e
    inc b
    ld b, c
    ldh [rSB], a
    pop hl
    ld [$a1a8], sp
    ld a, l
    ret nz

    ld l, b
    add b
    dec a
    add sp, $43
    add a
    db $e4
    add d
    and e
    pop bc
    and c
    xor a
    jp nz, $c0c3

    ld [c], a
    ld b, [hl]
    ld [bc], a
    rlca
    dec de
    rlca
    dec c
    cp [hl]
    pop hl
    sbc b
    rrca
    ccf
    ret nz

    ld a, [hl]
    jp $b400


    or d
    pop bc
    and [hl]
    ld [bc], a
    ld d, l
    ret nz

    nop
    ld [c], a
    ld [hl], $45
    add d
    and d
    inc bc
    inc bc
    inc b
    rrca
    cp d
    pop bc
    ret nz

    ret nz

    di
    add c
    nop
    or l
    rst $08
    ld h, b
    ld b, d
    jp nz, $833e

    ret nz

    ld [bc], a
    ld b, [hl]
    ld a, c
    ld a, d
    ld h, [hl]
    ld bc, $f4e2
    add b
    ld e, $77
    add c
    ld [bc], a
    rrca
    ld bc, $4000
    pop bc
    jp nz, Jump_000_00c1

    or d
    db $fc
    ld l, c
    add c
    pop bc
    and l
    ld b, $06
    ld b, [hl]
    ld a, c
    ld a, [hl]
    ld [hl], $f9
    ld l, b
    cp a
    ldh [rP1], a
    ret nz

    ld b, [hl]
    ld b, [hl]
    ld c, d
    ld h, b
    ld d, h
    rrca
    ld b, h
    ld b, [hl]
    ld [bc], a
    dec c
    ret nz

    and c
    add d
    jp nz, $b200

    add c
    pop bc
    db $f4
    add d
    ld h, b
    add b
    and b
    xor a
    add h
    add b
    ld a, c
    ld a, [hl]
    add hl, sp
    xor h
    ei
    dec [hl]
    ld l, d
    nop
    jp nz, $4646

    ld b, e
    cp l
    inc l
    add e
    inc l
    cp l
    inc a
    ldh [rSB], a
    db $e3
    nop
    or h
    add c
    jp nz, $c100

    xor [hl]
    rst $38
    ld b, [hl]
    xor [hl]
    ld de, $8046
    ld b, [hl]
    add hl, sp
    xor l
    ei
    ld l, h
    ld l, l
    rst $38
    call nz, $2e45
    jr nz, jr_060_6c62

    ld l, $45
    ld b, l
    ld a, d
    add h
    sbc [hl]
    nop
    or [hl]
    rst $20
    ld b, b
    pop de
    ld b, b
    sbc [hl]
    add b
    add b
    rst $38
    ld de, $8246
    add e
    ld b, b
    ld l, h
    ld l, a
    ld l, [hl]
    cp $bf
    and e
    xor a
    ld b, d
    ld hl, $2c23

jr_060_6c62:
    ld a, [hl+]
    ld b, h
    ld b, [hl]
    xor b
    and e
    ld b, [hl]
    sbc [hl]
    db $76
    ld h, e
    add b
    ld [hl], c
    ld b, d
    and b
    and b
    ret nz

    and b
    sbc [hl]
    add h
    ld h, c
    add l
    add a
    adc b
    ld [hl], b
    pop bc
    ld [c], a
    cp $81
    ld b, h
    rra
    inc a
    inc a
    ld b, h
    ld c, c
    ld d, d
    ld [hl], $e1
    ld bc, $bdc2
    ld c, h
    adc b
    jp $8847


    ld b, c
    add c
    ld h, d
    ld de, $60cd
    nop
    call nz, $80fe
    ld b, l
    ld b, $f7
    add b
    ld b, b
    ld d, e
    db $f4
    ld b, c
    ld bc, $bda3
    ld c, h
    ld b, $47
    inc de
    ld b, b
    ldh a, [$c1]
    jp nz, $8045

    ld c, e
    ret nz

    ret nz

    and e
    ld h, d
    ld h, e
    ld a, e
    ld a, h
    inc c
    ld a, b
    push bc
    ld a, $60
    sbc l
    sbc a
    dec sp
    ld b, c
    nop
    ld d, c
    ld l, l
    ld h, d
    inc bc
    ld h, d
    xor $41
    pop bc
    ld b, l
    scf
    jr c, @-$3d

    db $e3
    ld h, a
    ld [hl], $ae
    dec b
    add hl, sp
    scf
    ret nz

    ld a, $ea
    add d
    ld b, e
    adc a
    add b
    ld l, b
    ld b, h
    add b
    inc bc
    ld h, e
    cp $83
    and b
    ld b, l
    ld [hl], $62
    ld h, e
    ld h, l
    ld h, [hl]
    dec [hl]
    ld a, a
    jr c, jr_060_6d23

jr_060_6ceb:
    ld l, c
    ld [hl], $ae

jr_060_6cee:
    xor a
    ld a, [hl-]
    scf
    ret nz

    ld [bc], a
    ret nz

    pop hl
    xor a
    push bc
    add d
    ld b, e
    adc e
    nop
    ld b, [hl]
    ld b, h
    add e
    ld c, b
    ld b, b
    sub l
    ld h, b
    cp l

Jump_060_6d03:
    ld [bc], a
    pop bc
    ldh [$67], a
    dec [hl]
    dec [hl]
    ld l, d
    dec b
    ldh [$80], a
    rrca
    ld b, l
    xor a
    ld [hl], $35
    scf
    ret nz

    ld hl, sp-$5e
    ld b, l
    add b
    ld h, l
    ld hl, $4348
    adc c
    nop
    ld b, h
    add $24
    and c
    add l

jr_060_6d23:
    ld b, b
    ld b, h
    and c
    ld b, h
    pop bc
    pop hl
    jr nz, jr_060_6ceb

    pop hl
    jr c, jr_060_6cee

    pop bc
    ldh [$37], a
    pop bc
    ld [hl], a
    and d
    and c
    ld b, e
    ld h, e
    add b
    ld l, a
    cp b
    ld l, h
    ld b, h
    add e
    ld b, b
    ld b, h
    and c
    ld b, [hl]
    ld b, d
    ld l, c
    call nz, Call_060_6a61
    ld e, $03
    add b
    add l
    add a
    ld [hl], c
    ld [hl], c
    scf
    jp nz, $a277

    ld b, e
    ld h, e
    ld [hl], b
    add b
    ld [hl], d
    and $02
    inc b
    ld h, b
    ret z

    jr nz, jr_060_6da3

    ld b, [hl]
    ld b, b
    ret nz

    db $e3
    add b
    ld [bc], a
    ld h, c
    add hl, sp
    push bc
    or [hl]
    add c
    ld b, e
    ld h, h
    add c
    ld h, h
    nop
    ld c, a
    ret nz

    ld [c], a
    ld de, $961a
    jr nz, jr_060_6dae

    add b
    ld [c], a
    ld [hl], l
    ld h, [hl]
    ld [bc], a
    and c
    add hl, sp
    ld h, e
    rst $38
    call nz, Call_000_34a0
    ld hl, $a19a
    cp d
    nop
    nop
    ld d, c
    ld b, e
    ld b, b
    xor [hl]
    add b
    ldh [rLYC], a
    ld bc, $403a
    ld [c], a
    ccf
    ld [c], a
    add e
    and b
    ret nz

    add sp, $7d
    pop bc
    nop
    and c
    dec d
    and b
    db $fc
    add b
    db $10
    add d
    ld [hl+], a

jr_060_6da3:
    ld b, $06
    xor [hl]
    ld b, d
    ld h, d
    db $76
    ld e, $c0
    db $e3
    ld [hl], $43

jr_060_6dae:
    ld b, l
    ld b, c
    add d
    and c
    or [hl]
    ld h, h
    ld a, l
    jp Jump_000_009c


    ld d, a
    add d
    ld [hl+], a
    dec b
    ld [$01af], sp
    db $e3
    ld c, c
    ret nz

    ld c, d
    ld l, a
    ld c, a
    dec l
    jr nz, jr_060_6df5

    or l
    and l
    jr c, jr_060_6e03

    inc [hl]
    add c
    db $ec
    nop
    add e
    add b
    inc de
    call nc, Call_000_03d5
    ld b, c
    ld de, $3946
    ei
    ld l, e
    ld l, h
    ld b, h
    ld b, c
    ld [hl], e
    ld l, [hl]
    ld d, l
    ld d, [hl]
    ld [hl-], a
    daa
    jr nz, jr_060_6e15

    ld b, e
    rst $38
    add d
    ld a, l
    push hl
    and c
    cp l
    xor [hl]
    add b
    ld l, b
    db $ec
    ld b, e
    add c
    ret nz

jr_060_6df5:
    pop hl
    ld l, [hl]
    ld l, a
    cp a
    ldh [$6c], a
    ld l, l
    ld a, [hl-]
    ld a, a
    ld c, d
    ld h, b
    ld [hl-], a
    jr nz, jr_060_6e2a

jr_060_6e03:
    ld c, a
    ld d, l
    db $fc
    push bc

Jump_060_6e07:
    and $72
    ld hl, $9f9c
    cp l
    xor l
    ld b, e
    daa
    sub $d7
    sbc a
    cp l
    sbc h

jr_060_6e15:
    ld b, e
    add c
    ld b, l
    ld [hl], $6e
    ld [hl], b
    add hl, bc
    pop bc
    add hl, sp
    rst $38
    ld d, l
    ld d, d
    dec l
    ld h, $21
    ld c, d
    ld d, l
    ld b, [hl]
    ld bc, $7542

jr_060_6e2a:
    add e
    ld [hl], d
    ld h, d
    nop
    add b
    cp l
    xor e
    ld b, e
    ld h, $67
    add c
    ld b, c
    ld h, b
    db $ec
    rst $38
    and b
    inc b
    ld b, e

jr_060_6e3c:
    ld [hl], $45
    ld b, l
    add c
    ld a, [hl-]
    ld b, e
    ld a, c
    dec bc
    ld a, d
    ld a, l
    dec [hl]
    ld hl, $b13b
    ld b, e
    add c
    jr nz, @-$41

    xor e
    nop
    ld c, c
    ret c

    ccf
    ld b, c
    add d
    add c
    add h
    ld hl, $443c
    ld a, e
    add d
    add hl, sp
    ld a, c
    rst $38
    ld a, [hl]
    ld b, c
    ld a, a
    ld a, l
    ld [hl], $3b
    ld [hl], $43
    inc b
    ldh a, [rP1]
    or c
    nop
    sbc [hl]
    nop
    ld h, c
    nop
    ld d, h
    ccf
    ld b, d
    ld b, a
    nop
    inc b
    ld b, e
    db $fd
    add hl, sp
    cp $01
    ld [hl], $79
    ld a, [hl]
    ld a, [hl+]
    ld h, $2a
    rst $38
    ld a, a
    ld a, l
    ld b, e
    ld [bc], a
    rlca
    ld [bc], a
    ld [hl], $3b
    ld a, b
    ret nz

jr_060_6e8c:
    pop hl
    nop
    ld h, c
    add b
    db $d3
    ret nc

    pop de
    call nc, Call_000_01d5
    jr nz, jr_060_6e8c

    ld a, [hl]
    and b
    ld b, e
    ld [hl+], a
    ld a, $c0
    ldh [$3a], a
    ld a, c
    ld a, [hl]
    dec l
    rst $38
    jr nz, jr_060_6ec6

    daa
    ld b, h
    add c
    ld b, [hl]
    ld [$379b], sp
    rrca
    ld [bc], a
    ld b, e
    nop
    db $e3
    ret nc

    pop de
    nop
    ld d, e
    and [hl]
    ld b, b
    db $e4
    ld b, b
    jr nz, jr_060_6e3c

    pop hl
    ld b, b
    ld b, [hl]
    ld h, d
    ld a, [$3ee0]
    add b
    ld b, [hl]
    rst $38

jr_060_6ec6:
    ld [hl-], a
    jr nz, jr_060_6ef5

    dec hl
    add e
    add h
    dec b
    ld c, $07
    sbc b
    sbc b
    ld c, $00
    ld b, b
    ld b, b
    ld hl, $823b
    add b
    ret nc

    pop bc
    ld [hl+], a
    db $fc
    ld a, a
    and b
    dec bc
    and l
    ld b, b
    inc a
    dec [hl]
    ld a, [hl-]
    add d
    add e
    ld a, a
    dec l
    ld a, [hl+]
    add e
    adc c
    add a
    add l
    ld b, $ff
    ld bc, $40c0
    ld [bc], a
    dec sp

jr_060_6ef5:
    add h
    add b
    ret nc

    ccf
    add c
    dec b
    ld [hl+], a
    call nz, Call_000_3a05
    dec [hl]
    dec e
    ld [hl], $77
    ld b, b
    adc b
    add a
    add l
    nop
    ld hl, $00bf
    ld a, a
    nop
    ld sp, hl
    xor [hl]
    ld a, [hl]
    dec h
    add b
    ld l, l
    sbc a
    sbc l
    sbc l
    and d
    sbc l
    pop af
    sbc h
    rst $10
    nop
    sbc d
    jr nz, jr_060_6f63

    dec b
    add hl, sp
    ld [hl], $03
    inc b
    ld b, e
    rlca
    ld [bc], a
    jp nz, $8000

    ld bc, $00c0
    add b
    ldh [$af], a
    ld a, [hl]
    add b
    db $f4
    cp l
    ld c, e
    jp $9f43


    push bc
    ldh [rTAC], a
    inc de
    inc de
    rlca
    db $e3
    inc b
    inc bc
    ld b, h
    ld b, c
    ld c, a
    and d
    nop
    ret nz

    dec b
    rrca
    sbc d
    dec de
    sbc b
    rrca
    ld b, d
    inc b
    nop
    ld bc, $2000
    pop bc
    pop hl
    add b
    ld [hl], c
    ld a, a
    sbc a
    sbc h
    ld [bc], a
    rrca
    inc b
    inc bc
    sbc h
    jp nz, $c800

    ld a, a

jr_060_6f63:
    ld [bc], a
    rst $38
    and c
    dec b
    ld hl, $8806
    db $e3
    ld b, l
    ldh [$98], a
    dec c
    nop
    and l
    ldh [$7e], a
    ld b, d
    nop
    xor a
    add [hl]
    ld h, c
    ld c, l
    nop
    inc hl
    ld b, b
    rst $38
    ld h, c
    sbc c
    ld [hl+], a
    ld d, h
    dec b
    ret nz

    ld c, l
    ld b, c
    ld b, $4b
    nop
    sub a
    rst $38
    ldh [$98], a
    and e
    ldh [$e0], a
    ld a, [hl]
    ld b, c
    ccf
    ld b, c
    add d
    call nz, $0680
    ld a, [c]
    ld [bc], a
    sbc [hl]
    ld b, $06
    add c
    sbc h
    push hl
    jr nz, jr_060_6fdf

    ld b, b
    cp [hl]
    add b
    ld d, [hl]
    ld h, b
    ld c, $a0
    add l
    ld bc, $1005
    ret


    ret nz

    add d
    ld [c], a
    db $eb
    ld b, b
    jp $9d20


    add d
    ld h, c
    sbc b
    ld b, b
    rst $38
    ld h, c
    inc a
    ld a, [$c726]
    ld [bc], a

Jump_060_6fc0:
jr_060_6fc0:
    sbc [hl]
    ld [$9e05], sp
    jr z, jr_060_6fc8

    cp [hl]
    add c

jr_060_6fc8:
    or h
    ld d, $60
    cp [hl]
    pop bc
    ld b, b
    ld c, $60
    ld [bc], a
    rrca
    ret


    ret nz

    sbc b
    add c
    sbc d
    ld b, $c0
    ld b, l
    ld h, c
    ld a, [de]
    ld b, e
    sub e
    ld b, e

jr_060_6fdf:
    cp l
    ld b, [hl]
    ld b, c
    ld b, d
    sbc [hl]
    ld h, c
    ld de, $42e5
    inc h
    ld h, b
    ld a, a
    and b
    sub $40
    ld b, l
    ld [hl], $d1
    ld h, e
    rst $38
    ld b, [hl]
    ld [bc], a
    dec c
    ld bc, $9b00
    dec c
    ld [bc], a
    ld [hl], $87
    ret nz

    and c
    and b
    dec b
    ld h, c
    call nc, Call_060_56d5
    inc bc
    dec a
    daa
    ld [hl+], a
    pop bc
    jp $a711


    ld h, c
    cp h
    ld [hl+], a
    sbc c
    inc bc
    ld b, l
    sub c
    inc b
    ld b, e
    ret nz

    ld b, b
    ld l, h
    pop bc
    ld b, $60
    add a
    and e
    ld b, e
    inc l
    call nz, $c121
    jp nz, Jump_060_6808

    add b
    ret nz

    cp h
    ld hl, $00bf
    rst $38
    push af
    dec b
    ld h, c
    add [hl]
    ld a, [bc]
    rlca
    inc h
    ret c

    reti


    rst $08
    sbc a
    sbc h
    ld b, $06
    jr z, jr_060_6fc0

    dec a
    ld b, b
    ld b, l
    ld b, c
    rla
    ld b, c
    scf
    scf
    db $fc
    rst $28
    ld b, l
    dec b
    ld h, d
    ld b, e
    dec l
    add b
    pop bc
    sbc e
    jp c, Jump_060_42db

    ret nz

    dec b
    sbc [hl]
    ld h, a
    ld bc, $417e
    ld b, d
    dec de
    and h
    ld h, h
    rst $38
    ldh a, [$a5]
    ld b, d
    inc b
    jp Jump_000_0f80


    jp nz, $f800

    ld b, d
    jp nz, Jump_000_213e

    nop
    add b
    xor [hl]
    ld b, b
    ld l, c
    and e

jr_060_7072:
    dec [hl]
    dec bc
    dec [hl]
    and e
    db $fc
    db $ed
    ld l, d
    ld [hl], d
    ret nz

    pop bc
    ld [bc], a
    add b
    ld c, $c2
    nop
    ret z

    ld b, d
    jp nz, Jump_000_213e

    ld a, [hl]
    ld b, b
    xor a
    inc bc
    inc hl
    db $fc
    db $ed
    ld l, d
    ld b, d
    add c
    xor [hl]
    pop bc
    ld [bc], a
    ld b, e
    db $ec
    ld b, h
    nop
    jp nz, Jump_060_4200

    jp nz, Jump_000_03bc

    and c
    ld l, a
    ld b, [hl]
    ld b, b
    ld l, e
    ld [hl], c
    rst $38
    ldh a, [$6d]
    ld b, b
    dec b
    and d
    call nz, $d080
    adc d
    and c
    ld de, $e002
    ld l, d
    ld hl, $417e
    ld b, l
    xor [hl]
    ld l, a
    dec a
    jr c, jr_060_70f3

    dec a
    db $fc
    db $ed
    scf
    ld b, l
    add e
    ld bc, $d633
    rst $10
    add b
    rst $08
    ld b, [hl]
    ld bc, $9e11
    ld b, b
    ld [bc], a
    ld a, [hl]
    ld b, e
    add c
    xor a
    inc bc
    jp nz, $edfc

    ld e, [hl]
    and $43
    ld [$c080], a
    ld b, [hl]
    ld bc, $0111
    sbc a
    ld l, $83
    ld a, [hl]
    ld b, c
    rst $30
    ld h, b
    cp $e1
    ld [hl], l
    add d
    dec c
    and b
    cp $e5
    jr nz, jr_060_7072

    ldh [$86], a
    ld b, c

jr_060_70f3:
    add [hl]
    ld l, c
    add a
    ld b, e
    or d
    ld h, c
    ld de, $44ae
    and d
    add d
    ld a, [hl]
    inc hl
    ld [bc], a
    and b
    and c
    sub c
    ld b, [hl]
    ld b, [hl]
    sub c
    ld c, h
    and b
    ld b, b
    sub h
    add d
    ld c, h
    nop
    ldh [rSCX], a
    add [hl]
    ld l, d
    dec a
    add e
    ld [$11c1], sp
    ld [hl], c
    inc b
    ld hl, sp+$7e
    and c
    ld h, e
    ld h, c
    ld hl, sp-$80
    sbc [hl]
    sub b
    ld b, [hl]
    ld b, [hl]
    sub b
    ld bc, $c69e
    rst $20
    ldh [rSCY], a
    add [hl]
    ld l, e
    dec a
    inc hl
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

Jump_060_713e:
    nop
    nop
    ld bc, $fe80
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    dec d
    inc b
    ld [bc], a
    ld bc, $041f
    ld [bc], a
    ld [bc], a
    inc d
    dec b
    ld [bc], a
    inc bc
    jr nz, jr_060_7162

    ld [bc], a
    inc b
    ld de, $0206

jr_060_7162:
    dec b
    db $10
    rlca
    ld [bc], a
    ld b, $12
    rlca
    ld [bc], a
    rlca
    ld [hl+], a
    rlca
    ld [bc], a
    ld [$072a], sp
    ld [bc], a
    add hl, bc
    ld de, $0208
    ld a, [bc]
    dec d
    ld [$0b02], sp
    dec h
    ld [$0c02], sp
    inc d
    add hl, bc
    ld [bc], a
    dec c
    ld d, $09
    ld [bc], a
    ld c, $24
    add hl, bc
    ld [bc], a
    rrca
    ld [de], a
    ld a, [bc]
    ld [bc], a
    db $10
    dec d
    ld a, [bc]
    ld [bc], a
    ld de, $0b14
    ld [bc], a
    ld [de], a
    db $10
    inc c
    ld [bc], a
    inc de
    dec l
    dec c
    ld [bc], a
    inc d
    inc de
    ld c, $02
    dec d
    inc l
    ld c, $02
    ld d, $10
    rrca
    ld [bc], a
    rla
    inc d
    rrca
    ld [bc], a
    jr jr_060_71bf

    db $10
    ld [bc], a
    add hl, de
    ld de, $0210
    ld a, [de]
    db $10
    ld de, $1b02
    jr nz, jr_060_71ce

    ld [bc], a
    inc e

jr_060_71bf:
    ld de, $0213
    dec e
    jr @+$16

    ld [bc], a
    ld e, $10
    dec d
    ld [bc], a
    rra
    ld [de], a
    dec d
    ld [bc], a

jr_060_71ce:
    jr nz, jr_060_71f1

    dec d
    ld [bc], a
    ld hl, $1528
    ld [bc], a
    ld [hl+], a
    ld de, $0216
    inc hl
    db $10
    jr jr_060_71e0

    inc h
    dec d

jr_060_71e0:
    jr @+$04

    dec h
    ld c, $1a
    ld [bc], a
    ld h, $20
    ld a, [de]
    ld [bc], a
    daa
    add hl, hl
    ld a, [de]
    ld [bc], a
    jr z, jr_060_71fd

    dec de

jr_060_71f1:
    ld [bc], a
    add hl, hl
    rrca
    dec de
    ld [bc], a
    ld a, [hl+]
    rra
    dec de
    ld [bc], a
    dec hl
    inc c
    inc e

jr_060_71fd:
    ld [bc], a
    inc l
    dec c
    dec e
    ld [bc], a
    dec l
    inc l
    jr nz, jr_060_7208

    ld l, $0e

jr_060_7208:
    ld hl, $2f02
    ld de, $0222
    jr nc, jr_060_721d

    inc h
    ld [bc], a
    ld sp, $250e
    ld [bc], a
    ld [hl-], a
    rrca
    dec hl
    ld [bc], a
    inc sp
    dec l
    inc l

jr_060_721d:
    ld [bc], a
    inc [hl]
    ld l, $2d
    ld [bc], a
    dec [hl]
    dec l
    ld l, $02
    ld [hl], $11
    cpl
    ld [bc], a
    scf
    dec hl
    jr nc, jr_060_7230

    jr c, jr_060_723f

jr_060_7230:
    ld sp, $3902
    db $10
    ld [hl-], a
    ld [bc], a
    ld a, [hl-]
    daa
    inc sp
    ld [bc], a
    dec sp
    ld h, $34
    ld [bc], a
    inc a

jr_060_723f:
    rrca
    add hl, sp
    ld [bc], a
    dec a
    jr z, jr_060_727f

    ld [bc], a
    ld a, $11
    inc a
    rst $38
    rst $38
    rst $38
    ld d, h
    ld [hl], d
    ret nc

    db $76
    ret nc

    ld a, e
    db $eb
    ld a, e
    cp a
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $fa
    db $ed
    ld c, $07
    ld c, $4d
    ld c, l
    db $fc
    ldh a, [$e8]
    pop hl
    db $d3
    ldh [$d6], a
    db $eb
    cp $f0
    add b
    ld [$d0e8], a
    ld [c], a
    call z, $b0e1
    ldh [rIE], a
    rst $38
    ret nz

    push hl
    ld a, [hl]
    rst $20
    ld c, l
    dec de
    ld c, l
    dec c

jr_060_727f:
    ei
    pop hl
    ld c, l
    dec l
    ld hl, sp-$20
    add d
    rst $20
    push de
    jp hl


    ld a, b
    ld b, e
    db $eb
    db $fc
    push hl
    add d
    push hl
    dec c
    dec c
    ld l, l
    ld l, e
    rst $38
    pop hl
    add e
    ld c, l
    dec l
    ld a, [hl]
    rst $20
    ld [$0de1], a
    and $b4
    db $ec
    inc b
    jp hl


    dec c
    ld a, [hl]
    pop bc
    ldh [$6d], a
    dec hl
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    cp a
    ld [c], a
    or b
    ld [hl], l
    ldh [$fc], a
    call nz, $f434
    or b
    xor $4d
    ld c, l
    pop bc
    ldh [$2a], a
    rst $38
    ld a, [bc]
    ld a, [bc]
    ld l, d
    dec bc
    dec c
    ld l, e
    ld l, e
    dec l
    ld bc, $fc0d
    push bc
    ret nz

    db $eb
    add [hl]
    call $e218
    add d
    pop hl
    ld b, [hl]
    pop hl
    add d
    ldh [rTMA], a
    ret nz

    ldh [$2a], a
    ld c, e
    ret nz

    ldh [$3e], a
    ldh [$f5], a
    ret nz

    ld d, [hl]
    rst $08
    add [hl]
    push de
    inc d
    rlca
    ld [c], a
    add c
    ldh [$0b], a
    rst $38
    ldh [$2b], a
    ld a, $e4

jr_060_72f0:
    ld h, e
    call z, $d046
    ld [$c708], sp
    ld c, l
    ldh [rWY], a
    ldh [$2b], a
    pop bc
    pop hl
    ret nz

    ldh [$3e], a
    db $e3
    xor [hl]
    jp nz, $8054

    sub $e6
    ret


    ld c, l
    adc b
    pop bc
    dec c
    pop bc
    ldh [rWX], a
    add b
    ldh [rIF], a
    ld c, e
    ld l, e
    ld a, [bc]
    ld c, d
    ret nz

    db $e4
    ld e, [hl]
    ret z

    add b
    adc $8a
    push bc
    ld a, [hl-]
    ld l, h
    and c
    ld c, l
    ld c, c
    jp Jump_060_4b2b


    ld c, e
    jp $ffe0


    pop hl
    ld [bc], a
    ld [hl], d
    ldh [$6d], a
    ld a, [hl]
    jp nz, $b48c

    ld a, a
    xor e
    add e
    pop hl
    ld [$c0e1], sp
    pop hl
    ld b, $c1
    pop hl
    ld a, [hl+]
    ld c, e
    ld a, a
    pop bc
    ld a, h
    or d
    nop
    and [hl]
    sub e
    and b
    jr jr_060_72f0

    dec d
    ld c, l
    call z, $0da0
    ld a, [bc]
    pop hl
    dec bc
    add b
    db $e3
    ld a, a
    jp nz, $a07d

    ret nz

    nop
    cp b
    jp nz, Jump_060_41e2

    and l
    adc h
    and b
    set 0, d
    pop bc
    ldh [rOCPD], a
    ld c, e
    inc c
    cp c
    ret nz

    cp $e1
    ld l, e
    dec l
    ld c, b
    ld a, [$e882]
    ld b, d
    db $e3
    add [hl]
    jp nz, $c100

    ld [c], a
    jp nz, Jump_000_01e2

    ldh [rP1], a
    cp l
    add d
    and $50
    and b
    add l
    pop bc
    add b
    db $e3
    inc c
    pop bc
    ldh [$fe], a
    add c
    dec c
    ld l, l
    ld d, h
    add a
    nop
    cp b
    adc a
    add c
    ld de, $8ba1
    ld l, e
    dec hl
    ld b, $c3
    dec bc
    pop bc
    pop hl
    db $dd
    ld h, b
    pop bc
    ldh [$2d], a
    call z, $c340
    cp $fd
    ld c, l
    ld c, l
    ld [de], a
    and c
    ld b, c
    db $e3
    dec bc
    ld l, e
    ldh [rTMA], a
    and c
    add l
    ldh [$b2], a
    add c
    nop
    db $f4
    add b
    ld h, [hl]
    dec c
    ld c, $2e
    inc b
    inc b
    jp nz, $e0c0

    dec hl
    ld b, [hl]
    ret nz

    add c
    db $e3
    add h
    add c
    ld b, l
    add b
    ld l, [hl]
    ld h, c
    ld d, b
    ret nz

    ret nz

    ld [hl], a
    pop hl
    nop
    or h
    inc c
    add a
    ld c, l
    jp z, Jump_060_4a80

    ld c, b
    and e
    nop
    add d
    ret nz

    ld b, a
    jp nz, $8d92

    ld c, h
    ld [hl], e
    ld [$c163], sp
    ret nz

    inc c
    add c
    pop bc
    and c
    add h
    ld [bc], a
    ret nz

    ld [c], a
    ld b, b
    dec bc
    ld [$a4a3], sp
    ld h, l
    add b
    db $76
    ld c, $65
    dec bc
    rla
    dec bc
    ld a, [bc]
    ld c, d
    ret nz

    pop hl
    dec c
    pop bc
    db $e3
    ret nz

    db $e3
    ld d, b
    ld [hl], l
    sbc b
    add [hl]
    ld l, e
    inc e
    ld h, d
    ld bc, $0ae0
    ld c, d
    ret nz

    and b
    ld a, b
    ret nz

    ld c, e
    ld h, b
    cp d
    pop hl
    ld [$eca0], sp
    ld h, l
    add [hl]
    ld a, a
    ret nz

    ld [c], a
    ld l, e
    ld c, d
    ret nc

    add b
    inc b
    ld b, h
    and c
    ld b, l
    ld h, b
    dec bc
    ld b, c
    ldh [rTMA], a
    ld h, a
    ld a, d
    ld d, b
    add [hl]
    ld l, l
    ld b, b
    ldh [rNR22], a
    dec bc
    ld a, [hl+]

jr_060_743b:
    ld a, [hl+]
    ld b, [hl]
    ret nz

    dec bc
    add $80
    ld b, [hl]
    ld h, b
    ld bc, $30e0
    nop

Jump_060_7447:
    and $d6
    ld sp, $4d0c
    adc b
    add d
    ld a, [bc]
    ld l, d
    cp $a0

jr_060_7452:
    add [hl]
    add c
    rlca
    ld c, d
    dec c
    dec bc
    adc b
    ld h, h
    add [hl]
    ld a, l
    jp c, $c025

    db $e3
    ccf
    pop hl
    dec b
    dec hl
    ld b, $80
    ld c, d
    ld b, c
    ld h, b
    inc bc
    ld b, c
    ld b, [hl]
    push de
    nop
    or b
    ld b, l
    ret nz

    inc e
    ld a, a
    ret nz

    ld a, a
    ldh [rWX], a
    dec hl
    dec bc
    rst $30
    ret nz

    ld a, $e1
    adc d
    ld b, [hl]
    ret nc

    inc de
    cpl
    nop
    xor [hl]
    ld b, a
    pop bc
    add b
    pop hl
    ld a, [bc]
    inc b
    add b
    dec bc
    ld a, [bc]
    add c
    ld a, [bc]
    jr c, jr_060_7452

    ld b, [hl]
    add b
    inc b
    ld hl, $ffff
    nop
    db $e3
    jp nz, Jump_000_2ae2

    ld b, $45
    ld h, c
    dec hl
    ld a, [hl+]
    ret nz

    ldh [$7e], a
    ret nz

    inc de
    ld a, $80
    ld h, d
    inc b
    ld h, h
    ld a, [de]
    add e
    ld [c], a
    ld a, [bc]
    ld b, l
    ld h, d
    ld c, e
    dec hl
    pop bc
    ld b, c
    rst $38
    and c
    inc b
    and h
    jr nz, jr_060_743b

    rst $10

Call_060_74bc:
    add d
    ld h, a
    call z, Call_060_4921
    ld b, b
    add $41
    ld c, e
    ret nz

    ret nz

    add b
    and a
    ld e, b
    ld b, $5a
    and d
    inc b
    ld [$4a41], sp
    ld a, [bc]
    ld c, e
    ld b, b
    ld c, e
    ld b, [hl]
    ld b, b
    ld [hl], b
    add a
    ld b, c
    nop
    xor c
    add b
    db $db
    adc h
    dec b
    dec l
    ld a, [hl+]
    ld a, [bc]
    add c
    db $e3
    nop
    ld c, b
    ld b, d
    ld a, c
    ld b, b
    ld b, [hl]
    add c
    daa
    ld b, $00
    or d
    adc [hl]
    ld b, $7e
    ld [bc], a
    jp $0041


    call z, $8120
    pop hl
    ld b, $20
    ld a, [hl]
    and c
    add [hl]
    ld b, [hl]
    ld b, e
    inc [hl]
    add sp, -$77
    ld c, a
    add b
    add b
    ld b, h
    ld h, h
    rst $00
    ld [bc], a
    ld b, b
    jp nz, Jump_060_5306

    nop
    xor [hl]
    nop
    add [hl]
    jp nz, $0a64

    inc b
    ld bc, $3f81
    jr nz, jr_060_754a

    ld [$fc41], a
    add [hl]
    nop
    cp a
    push bc
    ld b, h
    add b
    and b
    ld [hl+], a
    nop
    add d
    ld c, e
    ld b, l
    nop
    ld e, l
    ld [de], a
    nop
    or h
    dec l
    rst $38
    jp nz, $0348

    adc e
    dec c
    ld c, e
    cp $e1
    ld l, l
    ld h, d
    call nz, $82dc
    nop
    ld e, l
    ld c, e
    ld bc, $432d
    add c
    cp a
    db $e4
    ld a, a

jr_060_754a:
    nop
    cp [hl]
    ldh [$7e], a
    rst $00
    nop
    ld e, c
    nop
    jp $4d23


    dec l
    rst $00
    add c
    rst $38
    and $bf
    pop hl
    ld c, e
    ld a, $e0
    ldh [$a4], a
    nop
    rst $38
    rst $38
    rrca
    pop hl
    ccf
    and $7c
    inc hl
    dec sp
    nop
    ld a, h
    ld c, c
    nop
    ld d, [hl]
    nop
    and e
    nop
    adc [hl]
    ret nz

    inc bc
    ret nz

    ld a, a
    rst $20
    ccf
    pop hl
    ld a, a
    pop hl
    ld a, d

jr_060_757e:
    ld b, d
    ld h, c
    jr nz, jr_060_757e

    ld [c], a
    inc b
    add b
    ld a, b

jr_060_7586:
    jp nc, Jump_060_4be0

    pop bc
    daa
    ret nz

    db $e4
    ld a, h
    push bc
    sub [hl]
    and [hl]
    nop
    ld e, b
    ld [$a005], sp
    rst $38
    ret


    ld b, b
    ld [c], a
    ld c, e
    ld a, h
    ret nz

    ld e, [hl]
    add [hl]
    ret nz

    add sp, -$4a
    rrca
    nop
    nop
    ld h, b
    add [hl]
    add b
    rst $38
    rst $00
    ret nz

    rst $20
    add a
    ld d, d
    nop
    ld c, [hl]
    inc de
    ldh [rNR10], a
    ldh [rNR41], a
    cp a
    sra l
    pop hl
    ld b, b
    ld bc, $85dc
    nop
    ld e, d
    dec l
    ret nz

    ld [c], a
    ld b, e
    ld h, b
    jr nz, jr_060_7586

    inc b
    ret nz

    push hl
    call nz, $b636
    ld h, l
    sbc [hl]
    inc hl
    ld c, l
    ret nz

    pop bc
    jp $0262


    ccf
    jp z, $e74b

    and b
    inc b
    add sp, -$80
    call c, $e37d
    cp $a8
    ld a, l
    jp RST_20


    ld e, a
    sbc d
    and c
    ret nz

    db $e4
    inc a
    rst $20
    ret nz

    db $e4
    ld c, e
    db $76
    ld [hl+], a
    nop
    cp [hl]
    jr nz, @+$42

    ld [c], a
    adc c
    and e
    inc a
    ld [c], a
    ld a, $a3
    ld sp, hl
    add c
    ld l, l
    ld a, d
    ld [hl], b
    nop
    ld c, [hl]
    ret z

    rst $38
    add b

Call_060_7607:
    ld c, $c3
    cp [hl]
    ld b, e
    ld c, e
    ld a, d
    nop
    or c
    and b
    dec hl
    dec bc
    ld h, c
    dec hl
    ret nz

    ld [c], a
    ld e, [hl]
    and e
    ld a, d
    add hl, de
    scf
    ld b, b
    dec c
    dec c
    cp l
    pop hl
    nop
    ld b, h
    add b
    rst $30
    and d
    ld hl, sp+$21
    cp b
    add e
    add b
    and $00
    or e
    db $fc
    dec h
    ld e, $a1
    db $10
    ld a, h
    pop hl
    ld [hl], a
    call nz, $e183
    ld [hl], a
    add e
    ld l, l
    ret c

    and e
    add b
    dec d
    rst $18
    dec b
    ld [$0350], sp
    ld a, [hl-]
    db $e4
    db $f4
    add h
    dec l
    or e
    ld h, c
    nop
    ld [c], a
    ld [hl], e
    inc [hl]
    nop
    ld h, [hl]
    db $10
    ld hl, sp-$59
    ld a, h
    db $e4
    ld [hl-], a
    ld h, c
    ld a, h
    ld [c], a
    dec c
    nop
    ld [c], a
    or l
    ld l, l
    or [hl]
    ld de, $96d4
    add e
    or a
    pop bc
    dec c
    or h
    ld h, d
    dec l
    cp a
    ret nz

    dec hl
    ld l, e
    ld [de], a
    cp $83
    dec l
    ld a, [c]
    nop
    add b
    dec c
    ld l, l
    ld h, [hl]
    ret nz

    db $fc
    pop hl
    sbc [hl]
    adc c
    nop
    halt
    db $76
    jp nz, $c33c

    pop bc
    ldh [rSB], a
    pop bc
    rst $38
    nop
    ret nz

    pop hl
    add c
    call $c000
    push hl
    ld [hl+], a
    add l
    sbc a
    add l
    cp a
    and $c1
    pop hl
    cp c
    nop
    add b
    ld a, [de]
    db $f4
    adc [hl]
    ld [bc], a
    sub [hl]
    ld h, h
    dec l
    cp d
    and b
    pop bc
    ld [c], a
    inc b
    adc c
    add b
    ld c, $71
    ld [$abae], a
    nop
    inc h
    jp $9580


    ret nz

    pop af
    ld a, d
    rst $00
    and $a4
    ld a, [bc]
    ld h, d
    ld b, d
    ld h, h
    nop
    ld d, [hl]
    ld b, $b7
    ld b, e
    ld c, l
    ld c, l
    or d
    pop bc
    ld [c], a
    ld l, d
    ld b, h
    ld c, l
    nop
    ld c, b
    nop
    nop
    nop
    cp a
    db $dd
    sbc $a0
    and b
    and b
    call c, $edfa
    ret c

    adc l
    reti


    db $fc
    db $e3
    jp nc, $fcd3

    db $eb
    add sp, -$1c
    ret nc

    add sp, -$1e
    rst $18
    db $e3
    db $e4
    rst $18
    ldh [$e1], a
    ld a, [$a0ec]
    jp c, $dbff

    sub $d7
    jp c, $d0db

    pop de
    call nc, $d537
    and b
    and b
    db $fc
    rst $20
    ret nc

    pop de
    add sp, -$1d
    ret nc

    jp hl


    ccf
    add sp, -$17
    ld [$e6e5], a
    rst $20
    ld a, [$6dec]
    ldh [$5e], a
    add d
    push hl
    and b
    and b
    sbc a
    sbc l
    rst $38
    pop hl
    sbc a
    ld e, c
    ldh [$98], a
    ld a, [hl]
    db $e4
    ret nc

    ld [$eb43], a
    sub $d7
    db $fc
    push hl
    add d
    push hl
    sbc a
    rla
    and d
    sbc h
    ld b, [hl]
    rst $38
    pop hl
    sbc h
    cp a
    ldh [$7e], a
    push hl
    xor d
    pop hl
    ldh a, [$0d]
    push hl
    ld c, c
    ld [$e608], a
    add d
    and $9f
    sbc h
    ld b, l
    ld d, b
    rlca
    ld d, b
    ld b, e
    ld b, l
    cp a
    db $e4
    db $fc
    add $0d
    rst $20
    ld c, c
    db $eb
    ld [$fce3], sp
    inc b
    push hl
    ld b, [hl]
    ldh [$9c], a
    ld b, l
    ld b, a
    ld e, l
    ld e, l
    ld c, h
    cp a
    ld d, h
    ld b, h
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    and c
    sub a
    ret nz

    call nc, $d5a5
    add sp, -$3f
    and b
    dec a
    add sp, -$7a
    ret c

    sbc a
    ld b, [hl]
    ldh [rLYC], a
    rst $38
    ld b, a
    ld h, b
    ld d, h
    ld e, c
    ld e, c
    ld d, e
    ld b, l
    xor a
    ldh [$7f], a
    db $e4
    ld h, [hl]
    jp nz, $d880

    add [hl]
    ret z

    pop bc
    pop hl
    ld b, [hl]
    ld b, h
    ld e, c
    ccf
    ld d, e
    ld a, [hl+]
    ld h, $20
    ld h, $2a
    ld a, $e4
    ld a, [hl]
    pop bc
    cp b
    ld b, e
    add sp, -$80
    rst $08
    add [hl]
    ret z

    and c
    ld b, [hl]
    ld b, [hl]
    ld c, d
    ldh [rLYC], a
    rst $38
    scf
    daa
    jr nz, jr_060_77c9

    jr nz, jr_060_77db

    ld b, h
    ld b, l
    jp nz, $e03e

    sbc [hl]
    ld l, [hl]
    jp $d680


    add [hl]
    jp z, $e142

    xor a
    ld b, [hl]
    rst $30
    ld b, l
    ld [hl], $35
    ret nz

    ldh [rNR52], a
    ld a, [hl+]
    ld c, e
    ld d, l
    ld b, d
    ld a, $e0
    sbc [hl]

jr_060_77c9:
    nop
    ld [c], a
    ld e, d
    jp $d180


    inc b
    jp hl


    sbc l
    ld c, c
    jp Jump_000_39ff


    dec [hl]
    dec [hl]
    ld hl, $482a

jr_060_77db:
    ld c, [hl]
    ld c, c
    add e
    ld h, b
    ld d, l
    ld a, [hl]

Jump_060_77e1:
    call nz, $a366
    add b
    db $d3
    inc b
    db $eb
    adc l
    ret nz

    ld b, [hl]
    rst $38
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld d, c
    ld e, a
    ld h, c
    dec de
    ld h, c
    ld d, d
    dec a
    ret nz

    sbc [hl]
    and b
    nop
    ld [c], a
    ld h, [hl]
    and c
    add b
    jp nc, $8af2

    xor b
    sbc [hl]
    call z, Call_060_43a0
    ldh [$37], a
    jr c, jr_060_7841

    dec [hl]
    rrca
    dec [hl]
    add hl, sp
    ld b, l
    ld d, e
    ld a, a
    ret nz

    ld bc, $fce2
    add l
    nop
    or c
    add sp, -$7e
    and d
    inc b
    add sp, $44
    ret nz

    ld [hl], $c2
    ldh [$35], a
    ld [hl], $45
    ld a, [de]
    cp c
    ret nz

    xor [hl]
    push af
    ret nz

    ld b, [hl]
    and c
    ldh a, [$81]
    nop
    or [hl]
    inc c
    xor b
    inc b
    ld b, d
    db $e3
    pop bc
    rst $20
    xor a
    jp nz, Jump_000_3ee1

    and b
    nop
    cp l

jr_060_7841:
    adc d
    add c
    add d
    push hl
    add hl, bc
    xor a
    push bc
    pop bc
    ld b, d
    ldh [rLCDC], a
    pop bc
    pop hl
    rst $38
    add h
    add d
    and e
    inc de
    adc e
    ld d, b
    nop
    xor a
    rlca
    pop bc
    push bc
    call nz, $e002
    ld b, d
    pop bc
    pop hl
    sbc h
    ld a, a
    add h
    ret nz

    add [hl]
    jp z, $af00

    inc c
    add e
    jp $85c0


    pop bc
    add c
    db $e3
    inc a
    ld b, h
    ret nz

    ld b, [hl]
    and h
    add sp, -$20
    add d
    and d
    inc de
    adc l
    add b
    ret


    adc [hl]
    ld h, h
    sbc [hl]
    ld b, [hl]
    scf
    xor a
    ld b, l
    ld b, l
    add c
    db $e4
    dec [hl]
    ld b, d
    ld b, d
    add b
    add $81
    and b
    db $76
    ld h, l
    ld e, b
    jp nz, $d280

    add [hl]
    add e
    adc [hl]
    ld h, b
    sbc [hl]
    jp z, Jump_060_5580

    nop
    ld [bc], a
    db $e3
    add d
    ret nz

    ld c, b
    and d
    add [hl]
    jp $a382


    nop
    or h
    inc c
    ld h, [hl]
    adc c
    add b
    rst $18
    ld b, h
    ld c, l
    ld e, d
    ld a, $ac
    ld b, e
    pop bc
    ld a, [hl-]
    ld b, l
    rlca
    xor [hl]
    xor a
    xor [hl]
    ld [$eca4], sp
    ld b, l
    add b
    ld [hl], e
    ld [$c487], sp
    and b
    cp a
    ld d, c
    ld e, [hl]
    ld e, d
    ld a, $ad
    dec [hl]
    cp [hl]
    ldh [$39], a
    jp nz, $e0c1

    xor a
    ld [$eca4], sp
    ld b, e
    sub e
    ld c, l
    add [hl]
    ld l, l
    jp nc, Jump_000_2ed3

    pop bc
    ret nz

    ld b, h
    ld c, l
    ld d, [hl]
    rlca
    and b
    xor l
    call nz, $05a0
    pop bc
    or b
    ld [$43a8], sp
    db $ec
    add b
    ld h, [hl]
    add [hl]
    ld h, a
    call nc, $c1d5
    pop bc
    ld c, e
    dec de
    ld h, c
    ld e, h
    ld b, $a1
    ld b, l
    ld d, b
    ld b, [hl]
    ld h, c
    ld [$43a8], sp
    adc h
    cp b
    add b
    ld l, d
    inc c
    ld b, l
    inc b
    and c
    ld d, l
    ld d, d

Call_060_790e:
    ld b, h
    add [hl]
    add b
    add hl, sp
    rlca
    ld b, a
    ld e, l
    ld d, d
    ld [$4780], sp
    ld h, b
    inc b
    ld b, l
    sub $2f
    inc c
    ld c, a
    sbc $c1
    and c
    ld b, h
    ld b, a
    ld d, d
    ld b, b
    add h
    and b
    ld d, d
    ld h, c
    pop bc
    ld h, c
    ld [$8680], sp
    and [hl]
    ld b, e
    xor $00
    or d
    add h
    add c
    ld b, h
    ld c, l
    ld a, $3f
    pop hl
    ld [hl], $45
    ld d, d
    ld h, c
    ld d, [hl]
    add h
    ld b, b
    ld b, h
    ld b, c
    ld a, b
    add [hl]
    rst $08
    nop
    or l
    add c
    and c
    ld d, c
    ld e, [hl]
    ld h, c
    ld d, d
    push bc
    ld h, b
    add hl, bc
    ld [hl], $f7
    pop bc
    ld a, [hl-]
    ld h, b
    sbc [hl]
    ld [$1962], sp
    cpl
    nop
    ld d, d
    add c
    and b
    ld l, [hl]
    add b
    pop hl
    ld h, c
    ld e, h
    inc a
    inc b
    add b
    ld c, a
    ld e, b
    ld b, l
    add c
    pop hl
    sbc [hl]
    ld hl, sp+$01
    ld b, e
    ldh a, [rP1]
    or d
    add c
    and b
    ld d, b
    ld d, b
    ld d, d
    ld e, [hl]
    add b
    ld [c], a
    dec [hl]
    ld a, $55
    ld d, [hl]
    ld b, l
    add c
    sbc [hl]
    ld [$7441], sp
    ld b, e
    ldh a, [rP1]
    or d
    sbc [hl]
    call Call_060_5c21
    ld e, e
    ld b, e
    add b
    add c
    rlca
    add hl, sp
    ld b, e
    ld b, e
    ld b, h
    inc h
    ld [$8042], sp
    jp c, $c600

    jp Jump_060_6fc0


    ld d, d
    ld b, l
    ld [hl], $3b
    add h
    ld h, d
    ld c, e
    ld d, l
    ld bc, $b8e1
    ld [$8064], sp
    db $db
    nop
    add $45
    ld c, e
    ld d, [hl]
    ld b, l
    ld h, d
    ld a, [hl-]
    ld e, a
    ccf
    ld d, b
    ld b, a
    ld h, b
    ld e, d
    add d
    ld h, b
    and c

Call_060_79c2:
    add [hl]
    ld [de], a
    sbc [hl]
    nop
    or l
    sbc a
    sbc h
    ld d, l
    ld e, d
    add h
    ld h, d
    pop bc
    and b
    ld h, b
    ldh a, [rP1]
    pop bc
    add h
    nop
    add [hl]
    ld de, $b500
    and b
    and c
    ld b, l
    ld b, e
    ld bc, $453e
    ld h, d
    ld a, e
    ret nz

    add b
    and c
    ld a, a
    add c
    add [hl]
    stop
    or l
    nop
    add c
    ld [bc], a
    ld b, h
    ld h, d
    add hl, sp
    ld a, e

jr_060_79f2:
    ret nz

    ld b, b
    add b
    ld b, b
    pop bc
    add [hl]
    dec b
    ld a, d
    rst $08
    add [hl]
    rrca
    ld a, [hl-]
    adc c
    nop
    ld b, d
    push bc
    ld b, d
    ld a, [hl-]
    ccf
    ld e, e
    ld bc, $c682
    ld [hl+], a
    ld [$8800], sp
    nop
    cp h
    call nz, Call_060_4420
    push bc
    and b
    inc b
    ld b, e
    ld bc, $c780
    nop
    nop
    add [hl]
    inc b
    call c, $80c3
    ld [hl], l
    nop
    adc b
    inc bc
    ld h, l
    rst $38
    ld h, h
    ld a, [hl]
    ld l, h
    nop
    cp [hl]
    inc c
    inc b
    ld b, l
    ld b, e
    jr nz, @+$3a

    scf
    rlca
    jr nz, jr_060_79f2

    ld h, c
    ld a, [hl]
    push bc
    nop
    ld e, a
    nop
    ld b, a
    ld bc, $e53f
    ld b, b
    inc hl
    ld a, l
    and e
    db $fc
    ld b, e
    nop
    cp a
    jp Jump_000_3f01


    and $04
    ret nz

    ld bc, $22b1
    and c
    add d
    jr nz, jr_060_7a54

jr_060_7a54:
    ld e, a
    nop
    ld b, h
    jp nz, Jump_000_3e25

    ld [hl+], a
    ld bc, $353e
    ld [bc], a
    cp h
    ld hl, $4600
    ld a, [$0028]
    ld d, b
    ld b, b
    ld hl, $c33e
    nop
    ret nz

    push hl
    pop bc
    inc bc
    nop
    ld [hl+], a
    ld e, d
    ld bc, $e2fc
    nop
    ld e, c
    rst $38
    jp z, $e080

    nop
    rst $28
    ld [bc], a
    ei
    and c
    ld e, d
    ld b, l
    ld a, d
    rst $00
    nop
    ld d, d
    rst $38
    jp z, $e7c0

    db $fc
    and a
    db $10
    ld a, d
    rst $00
    nop
    ld d, c
    ret nz

    ld bc, $c7ff
    ld a, [hl-]
    cp $40
    ld a, e
    and e
    ld a, d
    daa
    cp b
    nop
    cp c
    ld b, b
    jr nz, jr_060_7af0

    nop

jr_060_7aa4:
    ld b, l
    scf
    jr c, jr_060_7aa4

    and l
    ld b, b
    nop
    rst $38
    jp Jump_000_217a


    ld hl, sp+$25
    nop
    ld e, c
    rst $38
    ld [hl+], a
    dec a
    pop hl
    db $fc
    ld h, c
    ccf
    rst $00
    rlca
    ld b, [hl]
    sbc h
    sbc l
    db $fc
    and l
    nop
    ld e, e
    ret nz

    db $e3
    adc c
    nop
    cp a
    push hl
    nop
    ccf
    pop hl
    ld a, $e2
    ld hl, sp+$61
    call c, $0021
    cp e
    add b
    db $e3
    ret


    ld b, c
    inc a
    push hl
    add c

jr_060_7adb:
    ld b, d
    ldh a, [$e4]
    db $76
    ld hl, $bf00
    nop
    jp nz, $c44c

    jr c, @+$64

    inc a
    add c
    ld b, h
    ld a, a
    jp $24f8


    ld a, d

jr_060_7af0:
    ld l, e
    nop
    xor a
    rst $38
    and e
    cp a
    and $3b
    ld c, $fe
    add d
    ld b, l
    ld b, c
    ld b, l
    ld hl, sp+$25
    ld a, d
    ld l, e
    or b
    ld l, c
    ld a, d
    ld h, c
    sbc [hl]
    nop
    and b
    and b
    sbc a
    sbc l
    sbc l
    cp l
    ld [c], a
    push bc
    ld h, c
    ld b, l
    dec de
    ld b, e
    ccf
    pop bc
    pop hl
    ld [hl], $a6

jr_060_7b19:
    cp b
    add c
    ld hl, sp+$22
    ld a, d
    dec bc
    ret nz

    nop
    xor c
    dec hl
    and c
    inc e
    and h
    ld a, e
    and d
    inc c
    ld [c], a
    ld [hl], l
    jp $a762


    add c
    ld h, [hl]
    ld [hl], a
    add b
    ld [hl], $00
    ld a, d
    dec c
    nop
    ld c, c
    jr z, jr_060_7adb

    sub [hl]
    ld b, c
    and b
    ld [hl], d
    sub d
    ld h, b
    sbc a
    ld a, l
    db $e3
    pop bc
    push hl
    ld h, a
    and e
    ld l, b
    cp a
    ldh [$c0], a
    ld hl, sp+$03
    nop
    ld e, h
    sbc d
    add c
    sub [hl]
    add c
    cp [hl]
    db $e3
    jr c, jr_060_7b19

    ld h, d
    ld h, a
    ld a, a
    dec [hl]
    dec [hl]
    ld l, h
    or a
    cp b
    sbc h
    sbc a
    ld a, [hl]
    add d
    ret nc

    nop
    ld e, d
    ld a, [hl]
    pop bc
    ld a, d
    push hl
    or [hl]
    add c
    xor a
    cp b
    and b
    cp c
    cp d
    ccf
    and e
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    ld [hl], $7e
    and c
    ld a, [hl]
    add l
    ld hl, sp+$00
    or l
    ld a, d
    jp hl


    ld [hl], l
    add e
    ld b, l
    ld [hl], $6e
    ld l, a
    ld l, h
    ld [bc], a
    pop bc
    pop hl
    ld b, l
    ld bc, $00c0
    cp b
    db $fc
    jp hl


    ld a, [hl]
    jp hl


    cp a
    ld [c], a
    pop bc
    pop hl
    db $10
    ld a, d
    ld c, b
    add b
    ld [hl], d
    rst $20
    ld c, b
    ld a, [hl]
    rst $20
    sbc l
    inc [hl]
    ret nz

    ld a, [hl]
    ldh [$c1], a
    db $e3
    nop
    nop
    cp c
    or a
    ld c, d
    ld a, [hl]
    rst $20
    ld [hl], d
    ret nz

    cp h
    pop hl
    cp c
    ldh [$fc], a
    ld hl, $b800
    nop
    or a
    xor e
    db $76
    jp z, $a9e4

    nop
    cp c
    or a
    and a
    db $76
    call $a3ec
    db $fc
    inc bc
    nop
    nop
    ld c, e
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
    ld bc, $fe80
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    daa
    ld b, $02
    ld bc, $091d
    ld [bc], a
    ld [bc], a
    add hl, hl
    add hl, bc
    ld [bc], a
    inc bc
    ld a, [de]
    inc c
    ld [bc], a
    inc b
    jr z, jr_060_7c0c

    ld [bc], a
    dec b
    inc h
    ld c, $02
    ld b, $26
    ld c, $02
    rlca
    jr jr_060_7c1a

    ld [bc], a

jr_060_7c0c:
    ld [$0f23], sp
    ld [bc], a
    add hl, bc
    ld [hl+], a
    db $10
    ld [bc], a
    ld a, [bc]
    ld hl, $0211
    dec bc
    dec d

jr_060_7c1a:
    ld [de], a
    ld [bc], a
    inc c
    ld hl, $0214
    dec c
    add hl, de
    dec d
    ld [bc], a
    ld c, $20
    dec d
    ld [bc], a
    rrca
    ld [hl+], a
    dec d
    ld [bc], a
    db $10
    dec de
    ld d, $02
    ld de, $161f
    ld [bc], a
    ld [de], a
    ld hl, $0216
    inc de
    inc d
    rla
    ld [bc], a
    inc d
    ld hl, $0219
    dec d
    inc d
    inc e
    ld [bc], a
    ld d, $23
    inc e
    ld [bc], a
    rla
    ld hl, $021d
    jr jr_060_7c70

    jr nz, @+$04

    add hl, de
    ld hl, $0221
    ld a, [de]
    ld hl, $0223
    dec de
    inc hl
    inc hl
    ld [bc], a
    inc e
    jr nz, jr_060_7c83

    ld [bc], a
    dec e
    rra
    dec h
    ld [bc], a

Jump_060_7c64:
    ld e, $21
    dec h
    ld [bc], a
    rra
    jr nz, jr_060_7c91

    ld [bc], a
    jr nz, jr_060_7c90

    ld h, $02

jr_060_7c70:
    ld hl, $2714
    ld [bc], a
    ld [hl+], a
    inc h
    daa
    ld [bc], a
    inc hl
    dec h
    dec hl
    ld [bc], a
    inc h
    dec d
    cpl
    ld [bc], a
    dec h
    ld h, $2f

jr_060_7c83:
    ld [bc], a
    ld h, $18
    ld [hl-], a
    ld [bc], a
    daa
    jr z, jr_060_7cbd

    ld [bc], a
    jr z, jr_060_7cb9

    inc [hl]
    ld [bc], a

jr_060_7c90:
    add hl, hl

jr_060_7c91:
    inc e
    ld [hl], $02
    ld a, [hl+]
    jr nz, jr_060_7cd0

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_060_7cb9:
    rst $38
    rst $38
    rst $38
    rst $38

jr_060_7cbd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_060_7cd0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_060_7ce3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_060_7dc8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_060_7e22:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_060_7f45:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_060_7fe0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_060_7fe5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
