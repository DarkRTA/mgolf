; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $062", ROMX[$4000], BANK[$62]

Jump_062_4000:
    ld c, $40
    sbc $46
    pop de
    ld d, b
    ld d, [hl]
    ld e, c
    ld a, [hl]
    ld h, e
    rlca

Jump_062_400b:
    ld l, d
    or $72
    ld d, $40
    rst $08
    ld b, d
    ld c, b
    ld b, [hl]
    ld h, e
    ld b, [hl]
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $fa
    rst $38
    db $f4
    push af
    nop
    db $dd
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    db $f4
    ld e, e
    rst $38
    ld_long a, $fffc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $fa
    ld e, e
    rst $38
    add b
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    add b
    rst $18
    ld c, $4b
    ldh [rBGP], a
    pop hl
    db $fc
    db $eb
    cp $e3
    add b
    rst $18
    sub b
    db $e3
    inc bc
    ld c, l
    ld c, l
    db $fc
    db $e3
    cp b
    and $ed
    pop hl
    db $ec
    ldh [rIE], a
    rst $38
    ld e, h
    db $f4

jr_062_4062:
    nop
    xor l
    ldh [$d6], a
    rst $10
    sbc b
    call z, $e296
    ld b, d
    db $ec
    sub a
    and e
    cp h
    ldh [$80], a
    sbc $c0
    ld e, b
    db $ec
    or $c5
    cpl
    ld [c], a
    ld d, e
    rst $18
    jr jr_062_4062

    ret nz

    rst $00
    ld c, l
    ld c, l

Call_062_4082:
    pop bc
    dec l
    ld sp, hl
    and d
    ld a, [hl]
    db $e4
    add b
    call c, $c3c6
    add [hl]
    add sp, $6d
    dec bc
    rrca
    dec bc
    ld c, l
    dec l
    dec l
    ld b, c
    db $e3
    ld a, e
    ld [c], a
    ld a, d
    ret nc

    add [hl]
    adc $0e
    ld c, [hl]
    rst $00
    ld l, l
    dec c
    dec bc
    rst $38
    ldh [$7d], a
    pop hl
    ret nz

    rst $20
    ld b, c
    db $fd
    ld e, [hl]
    inc l
    and [hl]
    ld c, l
    ld c, l
    ld l, l
    dec c
    ret nz

    pop hl
    dec c
    cp a
    pop hl
    add b
    add $e5
    db $fd
    pop de
    jr @-$53

Jump_062_40be:
    ld [$46c3], sp
    ldh [$84], a
    ldh [$81], a
    ld [c], a
    dec c
    add e
    dec bc
    dec c
    ei
    jp nz, $c676

    nop
    cp d
    ld d, l
    call nz, $e007
    dec c
    rra
    dec bc
    dec hl
    dec bc
    ld a, [bc]
    ld a, [hl+]
    cp [hl]
    db $e3
    ld a, [hl]
    ld [c], a
    cp d
    call nz, $8078
    call c, $e382
    rlca
    ld [c], a
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, e
    add b
    adc l
    ld c, e
    inc a
    ldh [rKEY1], a
    dec l
    ccf
    jp nz, $bf00

    ld l, h
    ld h, e
    dec bc
    ld [hl-], a
    ld b, $e2
    ld c, d
    jp nz, $f5e1

    ld [c], a
    dec c
    dec bc
    ret nz

    ldh [$f8], a
    add l
    nop
    nop
    or a
    sub $a2
    ld [$c0a1], sp
    db $e3
    ld a, [$bbe5]
    pop bc
    or h
    ret nz

    cp l
    cp a
    ld hl, sp-$61
    and l
    res 4, b
    jp z, Jump_000_0de3

    ld c, e

Jump_062_4123:
    ld c, e
    dec bc
    ld c, e
    and d
    ld [hl], d
    pop hl
    ld l, l
    ld h, [hl]
    push hl
    add b
    sbc $fc
    add e
    dec l
    ret nz

    db $e4
    dec l
    add e
    dec c
    dec hl
    or h

Jump_062_4138:
    pop hl
    cp $a3
    ld a, b
    and h
    nop
    cp e
    push de
    add h
    dec l
    add b
    ld b, l
    call nz, $e0bd
    ld [hl], e
    ldh [$be], a
    and d
    rst $38
    rst $38
    nop
    and a
    dec c
    ret nz

    dec l
    ld [bc], a
    ld a, h
    pop hl
    dec hl
    dec sp
    ret nz

    ld [hl], b
    ld [c], a
    di
    ld b, d
    db $fd
    ld [hl], c
    nop
    or e
    adc h
    add d
    jr nz, @+$7e

    ldh [$c0], a
    db $e4
    inc a
    and h
    nop
    cp a
    add [hl]
    ld l, d
    ld c, l
    ld [bc], a
    and c
    pop bc
    pop bc
    nop
    inc a
    and e
    ld a, [hl+]
    ld h, l
    nop
    cp a
    ld h, [hl]
    dec h
    jp nz, Jump_000_3881

    and d
    cp b
    add b
    ld a, d
    add h
    jr jr_062_4185

jr_062_4185:
    cp [hl]
    db $fc
    and [hl]
    db $fc
    add c
    dec hl
    dec hl
    rst $38
    add e
    cp a
    and c
    nop
    jp RST_28


    cp [hl]
    ld a, h
    and [hl]
    inc bc
    add c
    ld l, e
    ld b, h
    and b
    dec hl
    or $a3
    cp $a1
    jr @+$7d

    rst $18
    ld d, l
    ld b, e
    db $fc
    add [hl]
    ld l, e
    ld l, e
    cp l
    pop bc
    rst $38
    and c
    inc [hl]
    add b
    db $10
    pop de
    inc de
    nop
    ld d, c
    db $fc
    add a
    ret nz

    ldh [rWX], a
    add c
    and c
    db $ec
    dec hl
    nop

jr_062_41bf:
    ld e, a
    inc e
    cp h
    add c
    cp $61
    dec hl
    dec bc
    ld c, e
    ld b, b
    and b
    ret nz

    ld h, l
    db $fc
    ccf
    add h
    add [hl]
    ld c, b
    add e
    jp nz, $ff6b

    add b
    call nz, $80c3
    rra
    sub d
    inc bc
    ld l, l
    inc b
    rst $38
    ldh [$3e], a
    and e
    dec c
    add d
    jp nz, Jump_062_47fe

    ld l, [hl]
    ld [hl+], a
    add b
    dec e
    jp nz, Jump_000_04e2

    ld a, [hl+]
    inc b
    pop bc
    push hl
    dec hl
    add b
    ld h, l
    rst $38
    rst $38
    ret nz

    db $e3
    inc b
    inc hl
    ld b, b
    ld h, b
    jr nc, jr_062_41bf

    db $e4
    cp a
    add d

Jump_062_4202:
    ld b, b
    call nc, $d680
    ld c, l
    dec l
    jp $87a0


    and c
    nop
    add c
    ld h, d
    nop
    add [hl]
    add b
    rst $18
    ld c, [hl]
    ld b, $01
    push hl
    add c
    ld h, d
    ld l, [hl]
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    xor $02
    ld h, d
    nop
    cp a
    add b
    inc bc
    nop
    and [hl]
    ld l, e
    ld c, e
    ld l, e
    adc [hl]
    ld a, [hl]
    and c
    ld l, e
    ld l, e
    ld c, e

jr_062_4231:
    add d
    ld b, d
    nop
    ld e, a
    add b
    dec bc
    dec c
    cpl
    dec hl
    ld l, e
    dec c
    ld l, e
    rst $38
    pop hl
    ld c, e
    add b
    and c
    nop
    ld e, a
    nop
    ld b, b
    dec b
    db $fc
    ld h, l
    ei
    ld b, d
    add e
    ld b, l
    add d
    ld h, $80
    rst $18
    ld a, [hl]
    ld b, $ba
    ld b, c
    nop
    add e
    ld b, e
    ld b, c
    rlca
    add b
    rst $18
    ld a, d
    ld b, $09
    ld h, d
    add l
    jp $bf04


    ld a, [hl-]
    inc de
    nop
    ret nc

    jr nz, jr_062_4231

    inc hl
    nop
    cp a
    ld a, d
    inc c
    or d
    ld b, d
    inc c
    add [hl]
    ld l, d
    ld b, l
    add b
    rst $18
    nop
    cp l
    xor b
    adc $26
    rst $00
    add l
    add b
    rst $18
    rst $30

Call_062_4281:
    ld a, [bc]
    ei
    jr nz, jr_062_42ff

    pop bc

Call_062_4286:
    dec b
    ret z

    nop
    add b
    rst $18
    dec e
    and [hl]
    pop de
    add sp, -$39
    call nz, $a37c
    add b
    rst $18
    sub l
    db $e4
    ld a, $ea
    nop
    ld e, [hl]
    ld b, c
    inc a
    and [hl]
    ld b, e
    rst $38
    ret nz

    rst $38
    add b
    db $dd
    ld a, [$80ff]
    jp c, $ffff

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    sub $fa
    rst $38
    nop
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add b
    rst $18
    ld a, [$3eff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_062_42c6:
    add b
    rst $18
    ld a, [$80ff]
    push de
    nop
    nop
    nop
    ccf
    db $dd
    sbc $a0
    and b
    and b
    call c, $fffa
    db $f4
    push af
    ccf
    ld [c], a
    db $e3
    db $e4
    rst $18
    ldh [$e1], a
    ld a, [$f4ff]
    push af
    ccf
    add sp, -$17
    ld [$e6e5], a
    rst $20
    ld a, [$f4ff]
    push af
    nop
    ld e, e
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]

Jump_062_42fe:
    rst $38

jr_062_42ff:
    add b
    rst $18
    ldh [rHDMA5], a
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld c, a
    db $e3
    sub $d7
    and b
    ldh a, [$fc]
    xor $fe
    db $e3
    add b
    rst $18
    ld c, a
    pop hl
    ret c

    reti


    and b
    and b
    ldh a, [$fc]
    db $ec
    cp l

Jump_062_4320:
    ld [c], a
    add b
    rst $18
    ld c, a
    db $e3
    jp c, $d6db

    rst $10
    ld h, $fc
    db $e3
    ret nc

    pop de
    db $fc
    db $e3
    or c
    ld [c], a
    and b
    add b
    rst $18
    sub d
    jp nz, $892c

    ret nz

    ld a, [hl]
    push hl
    jp nc, $fcd3

    db $e3
    and b
    xor l
    pop hl
    dec a
    db $f4
    ld a, b
    sbc [hl]
    call z, $c04b
    add [hl]
    rst $20
    call nc, $a0d5
    and b
    db $fc
    pop hl
    add e
    ret nc

    pop de
    ld a, [hl]
    db $e3
    dec a
    pop af
    sbc [hl]
    call z, $e482
    add [hl]
    db $e4
    sbc a
    rlca
    sbc l
    sbc l
    sbc a
    ld sp, hl
    and b
    ld a, b
    ldh [$7e], a
    db $e3
    add b
    call c, $c386
    cp $86
    rst $20
    sbc a
    sbc h
    ld b, [hl]
    ld b, [hl]
    sbc h
    and d
    sbc a
    ret nz

    ld a, h
    ldh [$7e], a
    db $e3
    db $76
    jp $b700


    ld [$82e9], sp
    and b
    sbc a
    sbc h
    dec bc
    xor [hl]
    ld b, [hl]
    rst $38
    ldh [$9c], a
    ld a, l
    ldh [$7e], a
    ld [c], a
    ld l, d
    jp nz, $d980

    ld hl, sp-$6a
    ret nz

    push de
    ret nz

    ld [$9fe2], sp
    and d
    sbc l
    sbc l
    sbc h
    dec bc
    xor [hl]
    xor a
    ret nz

    ldh [$ae], a
    cp a
    pop hl
    or $c1
    ld l, d
    pop bc
    ld a, d
    rst $08
    ld b, b
    add b
    rst $08
    adc d
    pop bc
    ld b, [hl]
    ldh [$84], a
    ldh [$c1], a
    pop hl
    ei
    ldh [$ae], a
    ld a, [hl]
    pop hl
    call z, $a3ec
    add b
    rst $18
    sub $d7
    add d
    pop hl
    rlca
    ldh [$af], a
    ld b, [hl]
    rrca
    ld b, l
    ld b, e
    ld c, b
    ld c, b
    cp [hl]
    db $e3
    dec a
    ldh [$f8], a
    and d
    add b
    rst $18
    db $fc
    add [hl]
    and d
    rlca

Call_062_43dd:
    db $e4
    ld c, d
    ld c, h
    ld d, h
    ld e, c
    ld a, c
    ld a, d
    adc l
    ld a, l
    inc a
    pop hl
    sbc h
    sbc a
    ld hl, sp-$5e
    nop
    cp [hl]
    adc d
    and e
    sbc [hl]
    ei
    ld b, [hl]
    xor a
    add $c1
    ld c, d
    ld d, [hl]
    ld a, c
    ld a, d
    adc a
    ei
    ld b, c
    ld a, a
    cp a
    ldh [$af], a
    ld b, [hl]
    and c
    call nc, $d8d5
    cp l
    or e
    jp $8aab


    and e
    and c
    ld b, [hl]
    add $c2
    ld b, [hl]
    ld a, c
    ccf
    ld a, [hl]
    ld a, [hl+]
    cpl
    jr nz, jr_062_4445

    add c
    ld a, h
    call nz, $b3bd
    ld h, b
    jp Jump_000_04ab


    and c

Call_062_4422:
    ld [$cbc1], sp
    ret nz

    ld b, l
    ret nz

    add d
    add e
    ret nz

    db $e3
    add b
    cp a
    pop bc
    db $f4
    add c
    cp l
    or c
    sbc [hl]
    ld l, l
    push de
    add d
    rst $00
    and b
    ld b, l
    pop bc
    add l
    rst $38
    add a
    adc c

Call_062_443f:
    add e
    inc sp
    add e
    add h
    ld b, [hl]
    xor a

Jump_062_4445:
jr_062_4445:
    add c
    sbc [hl]
    db $f4
    add e
    ld h, [hl]
    add b
    nop
    cp [hl]
    adc d
    add c
    ld b, b
    jp nz, $c205

    add l
    ccf
    add a
    adc b
    add a
    add l
    xor [hl]
    ld b, [hl]
    ret nz

    ldh [$7c], a
    and c
    jp $dbda


    add b
    rst $18
    adc [hl]
    add h
    ld b, $a0
    ld a, h
    pop hl
    ld b, l
    scf
    rrca
    scf
    ld b, l
    xor [hl]
    xor a
    rst $38
    and e
    ld [hl], d
    add b
    nop
    cp a
    nop
    jp nz, Jump_062_7ef6

    pop hl
    ret nc

    pop de
    ld [bc], a
    and c
    add hl, sp
    dec [hl]
    dec [hl]
    ld b, b
    pop bc
    xor a
    ld a, c
    and b
    inc a
    and c
    ld a, [hl]
    push bc
    nop
    cp a
    ld [$9e84], sp
    ld b, [hl]
    rra
    ld b, [hl]
    ld a, $35
    ld a, [hl-]
    xor [hl]
    ld a, [hl]
    and c
    ei
    add d
    nop
    cp a

Jump_062_449e:
    adc b
    nop
    and d
    ld a, [hl]
    db $e3
    inc b
    add b
    and c
    ret nz

    ld [c], a
    db $fc
    add b
    ld hl, sp-$7f
    sbc [hl]
    ldh a, [$7e]
    and e
    nop
    cp a
    add [hl]
    ld h, [hl]
    ld b, d
    add b
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    add l
    add hl, sp
    ld a, a
    db $e3
    and c
    db $76
    ld h, e
    add b
    ld a, a
    db $fc
    and h
    db $fc
    add d
    ld b, d
    cpl
    dec [hl]
    dec [hl]
    dec [hl]
    ld a, $7b
    add c
    xor a
    ld a, h
    add e
    nop
    cp a
    ld [$6600], sp
    inc bc
    add d
    add b
    pop hl
    ld a, $3e
    add c
    ld a, c
    ld h, d
    nop
    cp a
    nop
    ld b, h
    inc b
    db $fc
    add a
    add b
    ret nz

    add hl, sp
    add e
    pop hl
    db $ec
    and c
    add sp, $25
    nop
    ld e, a
    add [hl]
    ld b, c
    inc a
    add e
    ret nz

    jp nz, $4460

    inc a
    ld a, [hl-]
    ld b, l
    pop bc
    and c
    add d
    and h
    ld h, b
    add sp, $20
    nop
    ld e, a
    db $fc
    add e
    add e
    ret nz

    ld b, e
    ld h, b
    ld b, l
    ld [hl], $81
    ldh [$e0], a
    add c
    and b
    add d
    and e
    add sp, $21
    add b
    rst $18
    nop
    rst $20
    ld b, l
    ld b, e
    ld b, c
    push bc
    ld b, e
    db $fd
    ldh [rLYC], a
    cp $44
    nop
    cp a
    nop
    ld c, b
    and b
    sbc [hl]
    cp a
    xor a
    ld b, l
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    ret nc

    cp a
    pop hl
    nop
    add c

Jump_062_453a:
    nop
    cp a
    nop
    ld c, b
    sbc [hl]
    inc bc
    ldh [$a4], a
    ld h, h
    ld b, $ff
    ldh [$a5], a
    inc a
    cp a
    add d
    db $ec
    ld bc, $df80
    or c
    and b
    nop
    add $ff
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld hl, $8135
    ld h, b
    nop
    add [hl]
    add b
    rst $18
    sub [hl]
    ld h, l
    sbc [hl]
    ret nz

    ldh [$c0], a
    and b
    rrca
    dec [hl]
    ld l, d
    dec [hl]
    ld b, d
    db $fd
    jr nz, jr_062_45f0

    push bc
    add b
    rst $18
    nop
    db $e4
    cp a
    and b
    sbc [hl]
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, a
    inc a
    ld b, h
    sbc [hl]
    db $f4
    ld bc, $5f00
    nop
    xor e
    sbc [hl]
    ret nz

    rst $00
    pop af
    sbc [hl]
    nop
    push bc
    add b
    rst $18
    ld a, [hl]

jr_062_4595:
    add a
    and c
    ld b, [hl]
    ld b, l
    xor [hl]
    jr nc, jr_062_45dc

    push bc
    add d
    db $e4
    nop
    cp a
    nop
    and [hl]
    jp nc, $fbd3

    ld b, d
    cp $01
    nop
    inc b
    add [hl]
    add b
    rst $18
    nop
    and l
    ld a, d

jr_062_45b1:
    dec h
    add l
    ld h, c
    dec a
    ld bc, $8304
    jp Jump_000_004e


    nop
    or [hl]
    ld a, [hl]
    jp Jump_062_4138


    ld b, l
    ld [hl+], a
    ld l, [hl]
    ld h, d
    ld b, e
    ldh a, [rP1]
    or h
    ld a, d
    ld bc, $fe00
    ld b, c
    cp d
    ld b, c
    ld b, e
    inc bc
    add d
    ld hl, $f043
    add b
    ld [hl], c
    scf
    dec h
    ld a, b
    ld b, e

jr_062_45dc:
    nop
    or a
    ld b, c
    ld b, e
    ld bc, $a4ec
    add b
    sbc $37
    jr z, jr_062_45b1

    pop hl
    ld b, l
    db $e4
    add a
    and b
    nop
    add d
    ld [hl+], a

jr_062_45f0:
    add b
    rst $18
    scf
    daa
    ld [hl], l
    add d
    ld b, l
    ld [c], a
    dec b
    call nz, $bf00
    dec a
    add [hl]
    jr nc, jr_062_4595

    ld h, h
    ld hl, sp+$41
    ld sp, hl
    ld [c], a
    dec b
    ld [hl+], a
    jp c, $80db

    rst $18
    dec a
    add h
    nop
    rst $30
    inc h
    ld sp, hl
    db $eb
    add b
    rst $18
    dec a
    add [hl]
    ld a, l
    call nz, $ebf9
    add b
    rst $18
    ld a, [$00ff]
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    db $db
    ld a, [$00ff]
    ld e, c
    ld a, [$00ff]
    nop
    ld e, e
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$00ff]
    ld e, e
    rst $38
    ld a, [$00fb]
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
    dec e
    ld de, $0102
    inc e
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld hl, $0212
    inc bc
    add hl, de
    inc de
    ld [bc], a
    inc b
    inc hl
    inc de
    ld [bc], a
    dec b
    ld d, $15

Jump_062_467b:
    ld [bc], a
    ld b, $25
    dec d
    ld [bc], a
    rlca
    rla
    ld d, $02
    ld [$1716], sp
    ld [bc], a
    add hl, bc
    jr jr_062_46a3

    ld [bc], a
    ld a, [bc]
    inc h
    jr jr_062_4692

    dec bc
    inc e

jr_062_4692:
    ld a, [de]
    ld [bc], a
    inc c
    inc hl
    ld a, [de]
    ld [bc], a
    dec c
    ld [hl+], a
    dec de
    ld [bc], a
    ld c, $24
    dec de
    ld [bc], a
    rrca
    inc hl
    inc e

jr_062_46a3:
    ld [bc], a
    db $10
    ld hl, $021d
    ld de, $1d25
    ld [bc], a
    ld [de], a
    inc h
    ld e, $02
    inc de
    ld [hl+], a
    rra
    ld [bc], a
    inc d
    ld h, $1f
    ld [bc], a
    dec d
    ld a, [de]
    ld hl, $1602
    inc hl
    ld hl, $1702
    dec de
    ld [hl+], a
    ld [bc], a
    jr @+$24

    inc hl
    ld [bc], a
    add hl, de
    ld a, [de]
    dec h
    ld [bc], a
    ld a, [de]
    inc h
    daa
    ld [bc], a
    dec de
    dec e
    inc l
    ld [bc], a
    inc e
    rra
    dec l
    ld [bc], a
    dec e
    ld e, $2e
    rst $38
    rst $38
    rst $38
    and $46
    sbc $4a
    rst $10
    ld c, a
    ld a, [c]
    ld c, a
    cp a
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $fa
    db $ed
    ld c, l
    ld de, $e84d
    pop hl
    db $fc
    rst $28
    add sp, -$1d
    dec l
    ret nc

    add sp, -$3b
    ldh [$fd], a
    rst $28
    add b

Jump_062_4700:
    ld [$bce6], a
    push hl
    jp c, $c2e9

    pop hl
    db $fd
    db $fc
    add d
    and $76
    pop hl
    ld c, l
    dec de
    ld c, l
    dec l
    db $76
    add sp, $2d
    dec l
    ret nz

    db $eb
    ld b, e
    ldh a, [$6c]
    ld [c], a
    ld a, [hl]
    ret nz

    db $e4
    ld l, l
    ld l, e
    ld l, e
    dec hl
    ld l, e
    ld c, l
    ld c, a
    ldh [$e0], a
    ld d, [hl]
    push hl
    sub $ef
    add e
    xor $04
    ld [c], a
    cp $e2
    ld l, l
    dec c
    ld l, e
    add [hl]
    rst $38
    ld [c], a
    ld c, l
    dec l
    ld a, h
    ldh [rP1], a
    push hl
    rst $38
    rst $38
    call nz, $6dc5
    add hl, bc
    ld l, e
    ret nz

    ldh [$bd], a
    db $e3
    dec c
    cp a
    pop hl
    call nc, $80f5
    jp z, $e482

    ld [de], a
    ld l, b
    ret nz

    ld c, l
    add $e3
    cp [hl]
    ld [c], a
    dec c
    dec sp
    ldh [$7e], a
    db $e4
    ld d, b
    srl b
    add [hl]
    call $c246
    db $fd
    db $e3
    ld c, l
    dec c
    dec bc
    rst $38
    pop hl
    ld a, e
    ldh [$1f], a
    dec bc
    dec c
    dec bc
    ld l, e
    dec bc
    ld a, [$63c1]
    jp z, $f303

    db $fc
    adc a
    ret nz

    add l
    call nz, Call_000_0d0d
    ld c, e
    ld c, e
    dec c
    ld c, e
    daa
    dec hl
    dec bc
    dec bc
    ld sp, hl
    ldh [$ba], a
    ldh [$0b], a
    cp d
    call nz, $cb0d
    sbc b
    jp $80af


    db $e3
    cp l
    and b
    ld l, l
    ld c, e
    ret nz

    ldh [$c1], a
    ldh [$2b], a
    scf
    ld a, [bc]
    dec bc
    ld c, e
    ld hl, sp-$40
    dec bc
    ld l, l
    ld c, $e8
    add b
    ret c

    ld l, $08
    jp $0b6d


    dec bc
    add c
    ldh [rWX], a
    add c
    ld [c], a
    ret nz

    ldh [$92], a
    or a
    pop bc
    ld l, l
    ld a, [hl]
    and a
    add b
    sbc $6d
    rrca
    ldh [$c0], a
    push hl
    ld a, [bc]
    nop
    ret nz

    ld [c], a
    inc sp
    ret nz

    call z, $80aa
    sub $04
    and d
    adc $c0
    add hl, bc
    ldh [$80], a
    pop hl
    rrca
    ld c, e
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ld hl, sp-$40
    add d
    jp hl


    add b
    ret c

    jp nz, Jump_000_00e2

    ret c

    add b
    adc [hl]
    ret nz

    ld [bc], a
    pop hl
    ret nz

    pop hl
    rst $30
    ld [c], a
    ld b, h
    ld [c], a
    add b
    rst $18
    ret nz

    db $e3
    ld a, [bc]
    add b
    add b
    dec l
    add c
    ld [c], a
    dec c

Jump_062_47fe:
    ret nz

    jp nz, $c079

    add d
    and e
    db $ec
    add h
    inc h
    add b
    sbc $c4
    and c
    dec l
    call z, $80c0
    jp Jump_000_396b


    ret nz

    add d
    and a
    nop
    nop
    cp a
    ld a, [hl]
    and $42
    pop hl
    cp [hl]
    and b
    ld a, [hl-]
    pop bc
    jp Jump_000_00a0


    cp a
    ld [hl], a
    xor h
    dec hl
    dec c
    dec l
    ret nz

    db $e3
    dec hl
    ld a, [hl-]
    ldh [$0b], a
    ld a, [hl]
    add sp, $00
    cp a
    jr jr_062_48b3

    add l
    jp nz, $f8a2

    and d
    dec c
    ld l, e
    dec a
    ld [c], a
    nop
    add d
    add b
    rst $18
    ld [bc], a
    xor d
    add h
    ld c, l
    ld b, d
    and b
    cp $82
    cp c
    ret nz

    ld [hl], $a0
    cp d
    ld h, c
    add b
    ld a, [hl]
    nop
    nop
    and d
    nop
    add h
    ld [bc], a
    add c
    cp l
    ld [c], a
    ld [hl], a
    and d
    ret nz

    and d
    add sp, $41
    add b
    ld a, a
    ld [bc], a
    ld b, $63
    ld l, l
    jp $c080


    pop hl
    inc a
    and c
    or [hl]
    add c
    add b
    and a
    dec a
    adc d
    ld a, [bc]
    ld a, [hl]
    ld [hl], l
    ld l, l
    ld bc, $6ba1
    ld a, e
    and h
    db $fd
    and h
    ld a, [hl]
    ld b, h
    ld a, d
    rst $18
    inc b
    ld d, [hl]
    ld b, b
    inc c
    ld [c], a
    dec hl
    cp h
    pop hl
    cp a
    db $e3
    add b
    ret z

    ret nz

    db $eb
    jp Jump_062_5850


    db $ec
    ld hl, $e20c
    ret nz

    pop hl
    ld a, [bc]
    ld l, d
    cp [hl]
    ldh [$0d], a
    cp l
    and c
    ret nz

    ld a, [hl]
    xor c
    nop
    ld e, d
    dec a
    ld b, c
    ld [bc], a
    ret nz

    nop
    ldh [$83], a
    ldh [$0a], a
    ld a, [hl+]
    nop
    ld a, d
    ldh [$33], a

jr_062_48b3:
    add b
    jr c, @+$42

    inc hl
    ld b, l
    ld bc, $825d
    ld hl, $e0bf
    ld bc, $0fa0
    ld l, e
    ld l, e
    ld a, [bc]
    ld l, d
    ei
    and l
    ld a, [hl-]
    and b
    rra
    ret z

    nop
    ld e, h
    ld b, $7e
    db $e4
    dec hl
    ld a, [bc]
    add c
    ldh [$f9], a
    ld b, d
    ld [hl], e
    add c
    add l
    ld [hl+], a
    cp a
    ld hl, $0030
    cp a
    add sp, $01
    pop bc
    db $e3
    cp e
    ld b, d
    dec bc

jr_062_48e6:
    dec hl
    ret nz

    ld [c], a
    ld a, [hl]
    inc hl
    nop
    add d
    rst $18
    ld a, h
    add h
    add c
    pop hl
    add d
    db $e3
    ret nz

    ldh [$f2], a
    ld b, b
    add $f2
    add [hl]
    dec d
    nop
    rst $38
    add d
    ld b, h
    ld h, b
    add b
    db $e4
    cp l
    and d
    ld a, [hl]
    inc b
    add b
    ld a, b
    cp h
    ld c, d
    ret nz

    pop hl
    ld [bc], a
    cp l
    add d
    dec hl
    ld a, d
    add d
    cp $41
    call nz, $865c
    ld b, $88
    nop
    ld a, [hl]
    and c
    ld bc, $816b
    push hl
    inc a
    ld h, e
    ld a, e
    ld h, c
    nop
    cp h
    add b
    ld b, h
    call Call_062_4082
    add e
    nop
    add d
    jp nz, Jump_062_613c

    and $24
    and e
    ld [bc], a
    add b
    ld de, $a524
    call nz, Call_062_4281
    ld h, h
    nop
    jp nz, Jump_062_7c42

    jr nz, jr_062_4983

    and d
    inc hl
    ld h, d
    nop
    ld hl, $98c8
    add h
    add e
    adc a
    and d
    inc c
    ld a, [$82e1]
    ld b, d
    dec hl
    dec hl
    ld b, d
    pop bc
    nop
    ld hl, $44b9
    nop
    ld e, b
    jr nc, jr_062_48e6

    ld h, h
    adc $62
    ld c, c
    and b
    dec b
    jp nz, Jump_000_2b2b

    cp h
    add c
    cp [hl]
    add e
    nop
    cp l
    push bc
    add b
    dec d
    add d
    ld b, h
    add e
    ld b, d
    ret nz

    and $f9

jr_062_4979:
    ld h, d
    ld b, b
    inc hl
    ld b, l
    inc a
    nop
    nop
    call nz, $81c2

jr_062_4983:
    jp $8001


    ld b, e
    add b
    add d
    ld b, b
    inc h
    nop
    ld e, c
    ld [hl], b
    daa
    ld [bc], a
    ld b, l
    inc bc
    dec c
    ld b, d
    pop bc
    ld a, l
    ld h, e
    add d
    push hl
    sub $92
    or d
    dec hl
    ld a, [hl]
    and e
    nop
    ld b, e
    inc hl
    pop bc
    ldh [$86], a
    ldh [$f3], a
    ld b, e
    nop
    ld e, a
    ld l, d
    add hl, hl
    ld b, h
    ld [bc], a
    adc c
    and b
    nop
    ld b, [hl]
    db $e3
    adc b
    db $e3
    ld c, b
    db $d3
    add [hl]
    dec bc
    sbc [hl]
    inc b
    rst $38
    jp nz, Jump_062_4202

    ld b, a
    ld b, e
    nop
    add sp, -$7e
    ld h, [hl]
    ld b, [hl]
    add b

jr_062_49c7:
    pop de
    rst $20
    ld l, d
    jp Jump_062_4123


    pop hl
    ret nz

    push hl
    ld e, l
    call z, $8600
    inc d
    add d
    adc b
    add e
    inc hl
    jp $8741


    and l
    ld h, [hl]
    add l
    add b
    ret c

    ld l, d
    rst $00
    ld bc, $026d
    pop hl
    add e
    jp Jump_062_42c6


    dec c
    ld [hl], $86
    ld [hl], d
    add h
    add c
    inc b
    and e
    jr nc, jr_062_4979

    ld hl, $4186
    ld [$ec5f], sp
    ld c, b
    ld l, l
    ld l, e
    ld c, c
    ret nz

    dec bc
    and b
    jr nz, jr_062_49c7

    ld [hl+], a
    add $83
    ld [$804f], sp
    rst $08
    add d
    add [hl]
    ld l, e
    rst $38
    ldh [$84], a
    dec h
    nop
    ld a, [hl-]
    add b
    rlca
    add e
    add [hl]
    dec c
    add b
    push de
    jp c, $c060

    pop hl
    adc c
    jr nz, jr_062_4a66

    inc b
    nop
    ld [$86a2], sp
    rra
    add [hl]
    ld b, $88
    nop
    cp [hl]
    pop hl
    ld b, h
    nop
    ld [$08a4], sp
    dec h
    inc a
    add a
    ld d, c
    add [hl]
    db $10
    ld l, e
    ld l, e
    dec hl
    dec c
    adc d
    ld h, l
    ld a, [hl-]
    ld bc, $8b08
    adc c
    nop
    cp d
    add d
    ld b, h
    ld l, e
    ld c, d
    ld h, l
    ld c, b
    nop
    inc c
    ld h, h
    add [hl]
    rst $18
    ret nz

    db $f4
    ld b, [hl]
    ret nz

    ld [$650c], a
    call nc, Call_000_3d9b
    inc h
    ld h, e
    ld h, h
    ld c, l
    dec l
    inc b
    add hl, bc
    add b
    ccf
    ldh [$2d], a

jr_062_4a66:
    rst $00
    ld b, b
    adc h
    inc bc
    inc c
    ld c, l
    add b
    ld [hl], d
    ld h, d
    ld h, d
    nop
    ld a, [hl-]
    db $e3
    ret


    ld h, d
    adc c
    ld b, d
    ld c, h
    dec b
    rst $38
    rst $38
    ld a, c
    inc hl
    add d
    inc hl
    nop
    rst $20
    ld b, b
    dec a
    jr nz, jr_062_4aa3

    ld h, d
    dec c
    scf
    nop
    xor a
    ld bc, $c4c0
    and b
    ld l, e
    db $fd
    pop hl
    nop
    ld c, e
    ld b, c
    ld l, [hl]
    ld h, [hl]
    ld d, [hl]
    rla
    inc [hl]
    ld l, c
    add hl, bc
    ld hl, $c004
    pop bc
    ld b, e
    ret nz

    db $e4
    nop

jr_062_4aa3:
    db $ec
    dec b
    rst $38
    rst $38
    adc b
    inc b
    ld bc, $4ea0
    ld b, d
    adc $02
    ld [$08a4], a
    ld [hl], $04
    nop
    xor a
    ld b, b
    and e
    ld l, e
    ld [hl], l
    and d
    adc d
    ld h, [hl]
    add b
    db $dd
    add b
    ld l, b
    ld e, l
    ld [hl+], a
    nop
    call $8c42
    ld a, h
    nop
    or b
    inc e
    ld h, [hl]
    jp c, $8204

    rst $20
    add b
    rst $18
    add b
    ld [$0800], sp
    jp z, $f643

    push af
    ld b, b
    nop
    nop
    nop
    cp a
    db $dd
    sbc $a0
    and b
    and b
    call c, $eefa
    and b
    ccf
    ret c

    reti


    and b
    and b
    jp nc, $fcd3

    db $eb
    db $ec
    pop hl
    db $fc
    add sp, -$1f
    ret nc

    jp hl


    ld [c], a
    db $e3
    db $e4
    rst $18
    ldh [$e1], a
    cp $fa
    db $ec
    and b
    sub $d7
    jp c, $d0db

    pop de
    rst $08
    call nc, $a0d5
    and b
    db $fc
    db $e3
    db $f4
    pop hl
    ret nc

    pop de
    db $eb
    jp c, $e8db

    pop hl
    and b
    ret nc

    ld [$e9e8], a
    ld [$e5e7], a
    and $e7
    ld a, [$82ec]
    and $a0
    sbc a
    sbc l
    ld a, [bc]
    rst $38
    ldh [$9f], a
    ld a, [hl]
    ld [$d0a0], a
    ld [$f143], a
    sbc d
    ld [c], a
    add [hl]
    pop hl
    ld l, a
    sbc a
    and d
    sbc h
    ld b, [hl]
    rst $38
    ldh [$9c], a
    sbc a
    ld a, d
    push hl
    ld h, b
    add sp, -$1f
    inc de
    db $eb
    ld b, e
    ldh a, [rNR32]
    db $e3
    add e
    pop hl
    sbc h
    xor [hl]
    pop bc
    pop hl
    add d
    cp a
    ldh [$a2], a
    ld a, h
    ldh [$f0], a
    jp $ed13


    ld b, e
    rst $28
    add d
    db $e3
    ret nc

    cp l
    pop de
    pop bc
    ldh [rDMA], a
    xor a
    ld b, [hl]
    ld b, [hl]
    cp l
    db $e3
    xor [hl]
    dec a
    sbc h
    cp a
    ldh [$d4], a
    push de
    sub $d7
    inc de
    db $ed
    add [hl]
    db $d3
    ld a, [hl+]
    add h
    jp nz, $839e

    ld [c], a
    xor a
    cp [hl]
    ld [c], a
    xor a
    dec sp
    ldh [$e4], a
    and $20
    add b
    ret c

    inc sp
    ret nz

    sbc [hl]
    ret nz

    add e
    ldh [$84], a
    ret nz

    sbc [hl]
    ld b, d
    db $e4
    ld a, e
    db $e4
    jp $9f9c


    ld a, [hl]
    jp $da80


    rlca
    db $e3
    add l
    jp nz, $a1a0

    ld l, $42
    ld [c], a
    ld b, l
    ld b, c
    ld b, l
    cp l
    db $e4
    and c
    db $fc
    and h
    add b
    call c, $9eec
    ldh [$85], a
    pop bc
    sbc l
    sbc l
    add h
    pop bc
    xor a
    ld b, l
    ld a, [hl+]
    daa
    ld h, $2a
    ld d, b
    cp [hl]
    ldh [$f5], a
    ret nz

    sbc [hl]
    db $fc
    and l
    dec a
    jp hl


    ldh a, [$c3]
    xor a
    sbc [hl]
    and d
    call nz, $c6c0
    jp $2042


    jr nz, jr_062_4c04

    inc bc
    ld e, a
    ld b, h
    cp d
    pop bc
    cp [hl]
    pop bc
    ld a, d
    and l
    add b
    reti


    add [hl]
    and c
    pop bc
    pop hl
    ld a, h
    add e
    pop bc
    ret nz

    ldh [$27], a
    jr nz, jr_062_4c34

    ld h, b
    ld b, h
    ret nz

    jp Jump_062_6e90


    and c
    db $e4
    and e
    add b
    reti


    ld [$a1a1], sp
    ld c, c
    call nz, $e080
    ld [hl+], a
    ccf
    ld [hl+], a
    ld d, d
    ld d, d

jr_062_4c04:
    ld b, l
    ld b, [hl]
    sbc h
    rst $38
    and c
    ld a, [hl]
    and [hl]
    ld a, $80
    jp c, $d7d6

    call nc, $9ed5
    add e
    db $e3
    pop bc
    and b
    rrca
    ld b, h
    inc a
    dec [hl]
    ld b, b
    pop bc
    ldh [$c1], a
    and b
    add d
    and $80
    call c, $86b8
    add c
    ld b, b
    ld [c], a
    inc b
    jp nz, Jump_000_3539

    dec [hl]
    ld a, e
    and b
    and c
    call nz, $a482

jr_062_4c34:
    nop
    cp a
    sbc $00
    ret nz

    add h
    and e
    ret z

    and e
    ld a, [hl-]
    dec [hl]
    add c
    inc a
    ld a, e
    and b
    add d
    and e
    nop
    cp a
    nop
    and e
    ld [$4381], sp
    and e
    ld b, l
    rra
    ld [hl], $35
    dec [hl]
    ld a, [hl-]
    ld b, l
    inc a
    and b
    add d
    and d
    nop
    cp a
    ldh [rP1], a
    and e
    db $10
    add c
    ld b, [hl]
    add b
    add h
    add b
    ld b, d
    ldh [$35], a
    ld a, $ae
    xor b
    ld sp, hl
    add c
    nop
    cp a
    add [hl]
    ld l, l
    and b
    ld a, e
    ret nz

    ld a, [hl-]
    ret nz

    ldh [$3a], a
    ld b, b
    cp e
    add e
    nop
    cp a
    nop
    and [hl]
    ld a, [hl]
    pop bc
    ld a, [hl+]
    ld h, b
    ld a, e
    ret nz

    inc a
    add b
    ldh [rNR31], a
    dec [hl]
    add hl, sp
    ld a, a
    ld [c], a
    xor [hl]
    and c
    ld l, h
    add b
    nop
    cp a
    ld a, [hl]
    add a
    sbc [hl]
    ld [bc], a
    add b
    ld b, l
    ld a, [hl-]
    dec [hl]
    xor h
    ld a, a
    db $e3
    ld a, b
    add b
    sbc [hl]
    xor b
    db $fc
    ld b, l
    add b
    ld a, [hl]
    ld a, [hl]
    push bc
    xor a
    nop
    ldh [$ad], a
    cp $c0
    ld [hl], $31
    ld b, l
    ld b, c
    and e
    add d
    and e
    nop
    cp l
    rst $18
    ldh [$86], a
    ld b, c
    add h
    ld h, e
    sub c
    ld b, b
    ld b, b
    pop hl
    cp a
    ldh [$b8], a
    ld h, b
    sbc [hl]
    ld l, d
    ld b, l
    nop
    cp l
    push hl
    ld l, l
    and $7e
    and [hl]
    xor [hl]
    ld b, d
    add b
    ret nz

    jr c, @+$3a

    ld a, [hl]
    ldh [rLCDC], a
    ld b, d
    add b
    ld l, h
    ld h, c
    ld a, [hl]
    ld b, h
    nop
    cp c
    db $f4
    jr nz, jr_062_4ce5

    ld b, c
    and c
    add h
    ld h, d

jr_062_4ce5:
    ld c, $42
    and b
    ld a, [hl-]
    ld b, a
    ld d, d
    ld a, d
    ret nz

    add b
    ld h, d
    nop
    cp a
    db $f4
    inc hl
    inc a
    ld a, [hl]
    add l
    jp Jump_000_3a60


    dec [hl]
    add hl, sp
    ld d, d
    ret nz

    pop hl
    ld a, h
    ret nz

    ldh [$bd], a
    add b
    ld a, [hl]
    and e
    nop
    ld e, [hl]
    add [hl]
    ld [hl+], a
    jp nz, $ae42

    add hl, sp
    ld [hl], $33
    ld b, a
    ld d, d
    cp e
    and c
    ld a, h
    jp nz, $9f9c

    db $ec
    ld [hl+], a
    nop
    ld e, a
    db $fc
    ld a, [hl]
    and d
    cp l
    ld h, c
    xor a
    ld b, l
    ld b, a
    ld h, b
    ld d, d
    ld a, [hl-]
    rra
    ld h, d
    ld h, e
    ld h, [hl]
    dec [hl]
    add hl, sp
    ld [hl], a
    ld b, c
    ld a, [hl]
    ld h, b
    add d
    ld h, c
    add sp, $7e
    ld h, c
    nop
    ld e, l
    add b
    ld b, d
    xor [hl]
    pop bc
    pop hl
    ld [hl], $62
    ld h, a
    rrca
    dec [hl]
    ld l, b
    ld h, [hl]
    ld a, $34
    ld b, c
    ld a, c
    add b
    db $fc
    inc bc
    nop
    ld e, l
    cp $04
    ld [hl+], a
    sbc a
    sbc h
    xor a
    ld b, h
    ld c, l
    ld h, c
    add hl, sp
    ld e, [hl]
    pop bc
    ldh [$35], a
    dec [hl]
    ld l, d
    ld a, $77
    ld hl, $fc9e
    dec b
    db $fc
    nop
    cp a
    ld a, a
    ld b, d
    ld b, [hl]
    xor [hl]
    ld d, d
    ld h, c
    ld a, $69
    ld [bc], a
    inc a
    and c
    ld l, d
    cp d
    add b
    nop
    db $e4
    ld h, [hl]
    nop
    nop
    ld e, b
    add [hl]
    rlca
    add b
    ld [hl+], a
    ld [hl], a
    ld d, c
    ld d, [hl]
    ld a, [hl-]
    ret nz

    pop hl
    ld l, h
    ld l, l
    ld a, $be
    ld [hl+], a
    add [hl]
    ld l, [hl]
    ld bc, $dbda
    nop
    ld e, c
    add d
    add h
    adc b
    ld bc, $2102
    ld b, l
    ld [hl], a
    ld [hl], $62
    db $76
    inc a
    add b
    ld [hl], e
    ld l, [hl]
    add hl, sp
    ld a, a
    add e
    jr nc, jr_062_4de6

    ld b, c
    add b
    ret c

    add d
    push hl
    ld b, b
    ld h, e
    xor a
    xor [hl]
    pop bc
    ldh [rSC], a
    pop hl
    dec bc
    dec [hl]
    ld l, d
    cp e
    ld h, b
    sbc [hl]
    db $ec
    ld bc, $05a5
    add b
    ld [de], a
    inc b
    add [hl]
    ld b, $42
    ld h, [hl]
    add hl, sp
    dec [hl]
    ld [bc], a
    ld [c], a
    ld b, c
    ldh [$3f], a
    and c
    ld [bc], a
    ret nz

    daa
    ld bc, $92a0
    add b
    add b
    inc de
    inc b
    add [hl]
    ld b, e
    and c
    ret z

    ld [bc], a
    ld a, $c0
    ld [c], a
    ld l, h
    rlca
    ld l, a
    ld l, [hl]
    add hl, sp
    cp a
    ld bc, $c2ea
    add c
    ld [hl+], a

jr_062_4de6:
    add b
    rla
    jr nz, @-$5c

    ld a, b
    add [hl]
    nop
    nop
    ld b, b
    ld b, e
    nop
    ld a, $35
    ld l, e
    ld l, h
    pop bc
    pop hl
    ld bc, $3e36
    ld hl, $807e
    jp nz, Jump_062_6160

    ld h, c
    add b
    jr @+$06

    add a
    ld b, d
    ld bc, $3e3f
    dec [hl]
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], b
    pop bc

jr_062_4e0f:
    ldh [rLCDC], a
    inc h
    add [hl]
    inc h
    ld h, b
    jp c, $80db

    inc e
    add d
    ld b, h
    pop bc
    ld hl, $6080
    dec [hl]
    rlca
    dec [hl]
    dec sp
    dec sp
    add d
    ldh [rLCDC], a
    inc h
    ld bc, $00e2
    or [hl]
    inc h
    and e
    ld [hl], h
    add d
    ld b, d
    ld a, $e2
    xor a
    pop bc
    ld h, c
    ld [hl], $43
    xor [hl]
    add c
    ld bc, $c280
    dec b
    nop
    ld e, c
    and d
    ld h, l
    inc b
    and d
    ret nz

    ld h, c
    add e
    jr nz, jr_062_4e0f

    ld h, b
    xor a
    ld bc, $f39c
    and b
    nop
    ld b, c
    xor d
    and c
    nop
    ld e, c
    and d
    ld h, e
    add d
    ld b, d
    cp [hl]
    ret nz

    inc b
    jp nz, $4120

    ld b, b
    ld b, b
    add [hl]
    ld [bc], a
    jr z, @+$43

    db $ec
    ld b, b
    ld h, d
    and b
    nop
    ld e, b
    ld [$6820], sp
    rst $38
    jp $21c2


    ld b, d
    ld b, a
    ld b, e
    nop
    add hl, hl
    add b
    ld [hl], e
    add d
    and h
    jr jr_062_4e7d

jr_062_4e7d:
    and e
    call nz, $c282
    pop bc
    inc a
    ld b, h
    ld b, a
    ld b, h
    ld l, d
    ld hl, $4482
    ld b, b
    add b
    ld [hl], e
    and d
    ld c, b
    sbc d
    ld h, c
    ld a, $00
    ld b, e
    ld hl, $c107
    sbc [hl]
    ret


    add c
    nop
    add [hl]
    ld b, l
    nop
    ld e, c
    add d
    push hl
    inc b
    add d
    ld [bc], a
    ld [c], a
    ld b, $45
    add [hl]
    ld b, l
    ld h, d
    add c
    nop
    add b
    rla
    nop
    and a
    add h
    add c
    add h
    ld b, c
    rlca
    pop bc
    dec b
    ld b, c
    add [hl]
    ld b, l
    add [hl]
    ld l, c
    db $fc
    add b
    rrca
    add d
    adc c
    xor a
    ld b, [hl]
    ld b, d
    dec [hl]
    dec sp
    add hl, sp
    add b
    cp d
    and d
    add $80
    add [hl]
    inc hl
    inc b
    add c
    add b
    reti


    add d
    adc b
    ld b, d
    pop bc
    ccf
    ld bc, $0a43
    and c
    ld bc, $86c0
    inc de
    add b
    rst $08
    inc b
    push bc
    ld b, [hl]
    ld hl, $e4fd
    nop
    ld b, a
    inc b
    add [hl]
    ld de, $cf80
    inc b
    ld h, e
    ret


    ld b, b
    inc bc
    add d
    cp a
    add d
    jp nz, $f0a4

    add [hl]
    ld de, $5100
    inc b
    ld h, c
    ld b, [hl]
    jr nz, jr_062_4f47

    xor a
    ld b, c
    ld b, e
    inc bc
    ld b, e
    ld b, c
    ld b, c
    pop hl
    adc e
    jr nz, @-$75

    ld h, c
    add [hl]
    inc bc
    sub $2f
    add b
    ld l, l
    ld a, [hl+]
    call c, $9e81
    dec bc
    ld h, b
    dec sp
    adc d
    add b
    dec [hl]
    adc b
    add b
    add e
    and $78
    add [hl]
    ret nc

    add b
    ld [hl], c
    add [hl]
    inc bc
    ld b, h
    inc a
    and h
    ld h, h
    rst $38
    ldh [$87], a
    and l
    inc a
    ld b, h
    ld b, l
    and d

jr_062_4f35:
    ld [hl], e
    ld b, b
    inc c
    ld c, e
    nop
    cp e
    sbc a
    rst $38
    sbc h
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    rlca
    ld l, d

jr_062_4f47:
    dec [hl]
    ld b, d
    ld b, $c3
    inc c
    ld c, l
    nop
    cp c
    inc b
    add c
    ret nz

    ldh [$80], a
    call z, $c022
    pop hl
    or $21
    db $ec
    ld hl, $f243
    nop
    or b
    ld [$4421], sp
    ld [hl], a
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    ld b, h
    ld b, h
    jp $86d0


    db $d3
    nop
    or e
    add d
    ld b, c
    ret nz

    add $ae
    call z, $d241
    db $d3
    ld [hl], b
    adc d
    add d
    jp Jump_000_00b1


    ld d, d
    add l
    add b
    ld b, l
    ld b, e
    xor [hl]
    ld b, b
    jp nz, $af01

    adc [hl]
    ld bc, $2134
    db $ec
    ld bc, $df80
    inc b
    add h
    ld bc, $80a3
    ld b, d
    inc bc
    sbc h
    sbc a
    adc d
    ld h, e
    inc b
    and c
    add b
    rst $18
    inc b
    add a
    jp $0ae3


    ld h, c
    jr jr_062_4f35

    ld h, [hl]
    add b
    rst $18
    nop
    and h
    ret nc

    pop de
    jp $cd01


    ld b, e
    db $76
    ld bc, $8600
    add d
    ld b, e
    di
    nop
    or d
    ld e, d
    ld b, e
    reti


    inc bc
    inc c
    ld h, [hl]
    add b
    rst $18
    nop
    and h
    nop
    nop
    ld b, h
    sub d
    ld b, d
    add d
    and $43
    push af
    ld b, h
    nop
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
    ld e, $05
    ld [bc], a
    ld bc, $0621
    ld [bc], a
    ld [bc], a
    daa
    ld b, $02
    inc bc
    inc hl
    rlca
    ld [bc], a
    inc b
    inc e
    ld [$0502], sp
    ld h, $08
    ld [bc], a
    ld b, $1f
    add hl, bc
    ld [bc], a
    rlca
    add hl, hl
    add hl, bc
    ld [bc], a
    ld [$0b1b], sp
    ld [bc], a
    add hl, bc
    daa
    dec bc
    ld [bc], a
    ld a, [bc]
    jr jr_062_502b

    ld [bc], a
    dec bc
    dec e
    ld c, $02
    inc c
    rra
    rrca
    ld [bc], a
    dec c
    inc hl
    rrca
    ld [bc], a

jr_062_502b:
    ld c, $1b
    db $10
    ld [bc], a
    rrca
    dec h
    ld de, $1002
    inc hl
    ld [de], a
    ld [bc], a
    ld de, $131d
    ld [bc], a
    ld [de], a
    ld h, $13
    ld [bc], a
    inc de
    inc h
    inc d
    ld [bc], a
    inc d
    add hl, hl
    inc d
    ld [bc], a
    dec d
    inc e
    dec d
    ld [bc], a
    ld d, $20
    dec d
    ld [bc], a

Jump_062_504f:
    rla
    ld h, $16
    ld [bc], a
    jr jr_062_506f

    rla
    ld [bc], a
    add hl, de
    dec e
    jr jr_062_505d

    ld a, [de]
    daa

jr_062_505d:
    jr jr_062_5061

    dec de
    inc e

jr_062_5061:
    ld a, [de]
    ld [bc], a
    inc e
    jr z, jr_062_5080

    ld [bc], a
    dec e
    ld e, $1b
    ld [bc], a
    ld e, $2a
    inc e
    ld [bc], a

jr_062_506f:
    rra
    dec e
    dec e
    ld [bc], a
    jr nz, jr_062_5093

    rra
    ld [bc], a
    ld hl, $1f29
    ld [bc], a
    ld [hl+], a
    inc e
    ld hl, $2302

jr_062_5080:
    dec e
    ld [hl+], a
    ld [bc], a
    inc h
    add hl, de
    inc hl
    ld [bc], a
    dec h
    jr z, jr_062_50ad

    ld [bc], a
    ld h, $1b
    inc h
    ld [bc], a
    daa
    jr jr_062_50b7

    ld [bc], a

jr_062_5093:
    jr z, jr_062_50bc

    ld h, $02
    add hl, hl
    inc e
    daa
    ld [bc], a
    ld a, [hl+]
    ld a, [de]
    jr z, jr_062_50a1

    dec hl
    inc hl

jr_062_50a1:
    jr z, @+$04

    inc l
    ld hl, $0229
    dec l
    ld [hl+], a
    dec hl
    ld [bc], a
    ld l, $1a

jr_062_50ad:
    inc l
    ld [bc], a
    cpl
    jr nz, @+$30

    ld [bc], a
    jr nc, jr_062_50cd

    cpl
    ld [bc], a

jr_062_50b7:
    ld sp, $3022
    ld [bc], a
    ld [hl-], a

jr_062_50bc:
    inc d
    ld [hl-], a
    ld [bc], a
    inc sp
    rra
    ld [hl-], a
    ld [bc], a
    inc [hl]
    ld d, $33
    ld [bc], a
    dec [hl]
    dec e
    ld a, [hl-]
    ld [bc], a
    ld [hl], $17

jr_062_50cd:
    dec sp
    rst $38
    rst $38
    rst $38
    reti


    ld d, b
    ld a, [hl-]
    ld d, h
    or b
    ld e, b
    bit 3, b
    cp a
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $fa
    db $ed
    ld c, l
    rlca
    ld c, l
    ld c, $0e
    db $fc
    db $ed
    reti


    pop hl
    sub $ef
    push bc
    ldh [$fd], a
    rst $28
    nop
    ld_long $fff3, a
    rst $38
    or e
    push hl
    sub d
    push hl
    db $fc
    db $ed
    sub l
    pop af
    ld b, e
    rst $28
    add d
    ld sp, hl
    nop
    sub $ff
    inc d
    rst $20
    ld a, [hl]
    add sp, -$10
    pop bc
    rst $38
    rst $38
    ld h, [hl]
    rst $28
    ld [hl], h
    ld a, [$f26d]
    inc c
    add d
    rst $20
    ld a, e
    ret nz

    dec l

jr_062_5119:
    dec l
    ld h, e
    jp nz, $e37e

    ld e, b
    ret nz

    ld d, [hl]
    ret nc

    cp $86
    push de
    dec c
    dec c
    ld l, l
    dec bc
    dec bc
    dec c
    ld c, l
    ldh [$bf], a
    ldh [rTIMA], a
    db $eb
    ld c, e
    db $fd
    add d
    and $c1
    ldh [$0b], a
    dec c
    dec bc
    ld bc, $7b4d
    ldh [$ec], a
    rst $20
    add b
    rst $18
    rst $38
    and l
    add e
    pop hl
    cp a
    ldh [$fd], a
    pop hl
    jp $2d4d


    ld d, [hl]
    rst $18
    add [hl]
    rst $00
    sub [hl]
    and e
    add e
    ld [c], a
    ld a, [bc]
    ld a, [bc]
    and c
    ld a, [hl+]
    ld a, h
    db $e3
    ld a, [hl]
    pop hl
    ld a, [hl]
    rst $18
    call c, Call_000_0de7
    add l
    pop hl
    dec hl
    rra
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    ld a, c
    ld [c], a
    ld a, $e1
    add b
    rst $18
    db $fc
    jr nc, jr_062_5119

    sbc b
    jp nz, Jump_000_0b0b

    ld c, d
    ld a, [bc]
    dec bc
    dec hl
    add b
    pop bc
    ldh [$3b], a
    pop hl
    ld a, d
    jp $c17e


    ld a, d
    rst $08
    ld b, [hl]
    xor a
    xor [hl]
    add d
    dec bc
    ld a, a
    dec bc
    ld l, e
    ld a, [hl+]
    dec bc
    ld c, e
    dec bc
    dec hl
    db $fc
    pop bc
    ld h, c
    dec c
    add b
    push hl
    cp d
    rst $10
    add e
    xor b
    sub [hl]
    add c
    ld c, l
    dec l
    add e
    ret nz

    inc bc
    ld l, e
    ld l, e
    cp a
    call nz, $e2c0
    db $76
    and [hl]
    adc l
    adc h
    ld b, e
    adc c
    jp c, Jump_000_3ec7

    cp a
    pop hl
    ld a, [bc]
    ld l, d
    ld c, e
    ld c, e
    ld l, e
    ld a, $e2
    nop
    db $eb
    ldh a, [rBCPS]
    and [hl]
    sub $90
    inc d
    add [hl]
    ld a, [hl]
    ldh [rWY], a
    ld c, d
    ld a, [bc]
    ld c, d
    ldh [$ba], a
    pop bc
    nop
    push hl
    ld l, [hl]
    adc c
    ld a, [hl]
    db $dd
    xor d
    ld h, c
    ld l, e
    ld a, [bc]
    ld a, [bc]
    add d
    cp l
    ret nz

    ld a, [bc]
    cp e
    ldh [$3a], a
    and a
    add b
    rst $18
    sub d
    add l
    cp l
    jp nz, Jump_000_060d

    cp [hl]
    ret nz

    ld a, [bc]
    ld a, [bc]
    ld a, [hl-]
    and d
    cp $e3
    db $76
    ld h, h
    nop
    cp b
    ld l, [hl]
    ld h, l
    ld l, [hl]
    add d
    and b
    dec c
    dec bc
    dec c
    cp a
    ldh [$0b], a
    dec hl
    ld sp, $9061
    jr c, @-$5c

    rst $38
    sbc a
    inc bc
    jp Jump_062_42fe


    dec l
    ret nz

    ld [c], a
    ld a, h
    pop bc
    dec hl
    add c
    dec c
    ld a, [$7ac2]
    db $e3
    inc hl
    ld l, l
    jp $fd4f


    ld b, h
    dec a
    pop bc
    dec c
    ld a, $3b
    jp Jump_000_2b2b


    ld a, [bc]
    ld c, d
    ld c, e
    ld [hl], e
    add d
    sbc e
    rst $20
    ld h, b
    ld d, [hl]
    ld a, c
    sub d
    ld b, d
    db $fd
    and c
    ld a, a
    db $e4
    db $76
    add b
    ld a, [bc]
    ld l, d
    rst $30
    add d
    ld h, b
    db $76
    ld b, a
    scf
    cp $3f
    pop hl
    call Call_000_3c61
    and d
    dec hl
    ld a, [hl+]
    push af
    add c
    ld h, c
    dec bc
    db $76
    adc c
    add b
    sub $fc
    add l
    call nz, Call_000_2b61
    ld l, e
    cp a
    db $e3
    nop
    or e
    add b
    ret nz

    ld [c], a
    ld hl, sp+$67
    add b
    sbc $bb
    add c
    ld [hl], a
    add c
    ld a, [hl]
    db $e3
    db $f4
    and c
    ld b, b
    rst $30
    add b
    db $e3
    ld a, $00
    ret z

    ret nz

    and $32
    add d
    ld [hl], h
    add b
    dec c
    ret nz

    pop hl
    ld [$40f8], sp
    add b
    rst $18
    ld a, [$0d65]
    add b
    add b
    ret nz

    db $e3
    or e
    jp $e380


    stop
    cp b
    ld e, b
    ld h, l
    ld a, [hl]
    and h
    dec sp
    and b
    ld c, e
    ret nz

    rst $20
    scf
    add c
    inc l
    ld e, a
    inc b
    db $ec
    ld b, $4c
    and e
    ld l, e
    ld [bc], a
    add b
    rst $30
    ld b, d
    push af
    ld h, c
    or $44
    ld l, l
    dec a
    or h
    ld a, d
    ld h, a
    inc c
    ld b, c
    dec l
    or $a2
    dec bc
    ld c, e
    cp [hl]
    and b
    ld l, l
    nop
    nop
    cp [hl]
    cp $ac
    add a
    push hl
    ret nz

    pop hl
    pop bc
    ldh [$c8], a
    cp a
    jp Jump_062_7ea5


    jp $fe00


    ld hl, $e4c1
    or [hl]
    ld h, b
    nop
    cp a
    ld a, d
    ld h, h
    xor b
    push bc
    cp h
    add d
    add c
    db $e3
    nop
    ld [hl], a
    ld h, c
    ld [hl], h
    ld h, $00
    cp a
    add [hl]
    dec b
    call nz, $c181
    push hl
    ld b, c
    ldh [$e4], a
    ld h, [hl]
    nop
    dec a
    rst $38
    ld hl, sp+$25
    ld a, [hl]
    ld b, d
    call nz, $c3c0
    jp nz, $cc5e

    add b
    ld [hl], e
    ld a, [hl]
    ld [$6d01], sp
    add c
    db $e4
    ld b, e
    add b
    inc b
    and e
    ld h, [hl]
    and h
    nop
    cp a
    ld a, [hl]
    dec b
    inc a
    ld b, d
    nop
    ld a, d
    ld b, b
    ret nz

    ldh [$5d], a
    ld c, $86
    ret c

    ld a, [hl]
    inc bc
    ld b, c
    db $e4
    ld b, $c1
    ld b, h
    add d
    nop
    add d
    rst $20
    nop
    ld d, l
    add d
    db $eb
    ld b, e
    ret nz

    ret nz

    ld [c], a
    ei
    inc bc
    ld d, b
    add hl, de
    add [hl]
    rst $08
    nop
    ld a, l
    ld [bc], a
    add c
    add sp, $04
    add l
    adc d
    rst $18
    inc b
    and $41
    inc h
    ld a, h
    inc bc
    inc b
    or e
    nop
    nop
    xor d
    inc b
    inc hl
    add d
    add sp, -$79
    and l
    ccf
    add c
    inc b
    and [hl]
    add b
    dec d
    add $02
    inc b
    add [hl]

jr_062_5352:
    ret z

    ld a, [bc]
    add d
    ld l, e
    add $a3
    jp $80a2


    call c, $0286
    add [hl]
    ld h, [hl]
    nop
    ret nz

    push hl
    add $a1
    add d
    ld [c], a
    add sp, $25
    nop
    cp c
    jr nc, @-$78

    inc bc
    rst $20
    ld a, $04
    nop
    pop bc
    pop hl
    dec c
    sub h
    ld [$c1ae], sp
    rst $28
    add [hl]
    add l
    and d
    rlca
    ld a, [bc]
    cp l
    ret nc

    ld b, b
    ld bc, $c52b
    add c
    cp $e1
    ld b, h
    and l
    add b
    rst $18
    add [hl]
    rlca
    bit 4, l
    ld b, d
    add d
    nop
    db $76
    and c
    add [hl]
    db $10
    add b
    push de
    ld [$c041], sp
    ld [$80c5], a
    ld c, d
    rst $38
    ld b, b
    pop bc
    inc b
    ld [$4947], sp
    db $e3
    dec bc
    ld b, $63
    ret nz

    ld [c], a
    add d
    push hl
    sub d
    ld d, d
    add [hl]
    dec bc
    nop
    ld [$4061], sp
    push hl
    ret nz

    and $93
    ld d, [hl]
    ld a, [hl]
    pop de
    nop
    db $ec
    ld b, d
    call z, $ff35
    add hl, sp
    dec l
    rst $00
    and b
    add l
    and b
    dec c
    dec bc
    ld l, e
    ret nz

    jr nz, jr_062_5352

    db $db
    ld e, b
    ld [hl], e
    adc l
    add [hl]
    dec h
    cp a
    ldh [rWX], a
    dec l
    add c
    and b
    dec hl
    add d
    add $03
    dec l
    dec l
    cp a
    ld b, e
    add b
    ld a, d
    cp $c5
    add $c4
    jp nz, Jump_000_0a01

    ld b, l
    nop
    ret nz

    ldh [rLYC], a
    rst $38
    add [hl]
    inc b
    push bc
    ld [hl+], a
    ld [hl], l
    and d
    add [hl]
    and a
    ret nz

    di
    or b
    pop de
    nop
    cp e
    ld b, c
    call nz, $6ee3
    ld l, e
    add b
    db $dd
    sbc [hl]
    ld c, b
    db $fd
    db $e4
    inc c
    and e
    add d
    db $e3
    nop
    ld b, e
    rst $38
    sub h
    db $eb
    ld [hl+], a
    dec bc
    ret nz

    rst $30
    jr nc, @+$4f

    ld hl, sp+$65
    ld hl, sp-$17
    ld e, h
    ld de, $8000
    ld [de], a
    sbc d
    db $f4
    ld b, e
    rst $38
    ld e, c
    and $18
    ld b, h
    ld a, d
    jp hl


    ld b, [hl]
    reti


    add b
    ld de, $dc00
    rst $38
    add b
    rlca
    nop
    nop
    nop
    cp a
    db $dd
    sbc $a0
    and b
    and b
    call c, $eefa
    and b
    di
    ret c

    reti


    db $fc
    ld a, [c]
    sub $ee
    ld [c], a
    db $e3
    db $e4
    rst $18
    ei
    ldh [$e1], a
    ld a, [$a0ec]
    sub $d7
    jp c, $fcdb

    db $fc
    pop af
    sub $ee
    rst $18
    add sp, -$17
    ld [$e6e5], a
    sub c
    rst $20
    ld a, [$82ec]
    push af
    sub $ef
    push hl
    ld b, e
    pop af
    add d
    pop hl
    ret nc

    ld sp, $fcd1
    db $eb
    ld l, [hl]
    pop hl
    add hl, de
    rst $28
    call c, Call_062_43dd
    ldh a, [rDIV]
    ld [c], a
    dec de
    jp nc, $fcd3

    db $eb

jr_062_5485:
    ret c

    reti


    add hl, de
    rst $28
    rlca
    pop hl
    ld b, e
    rst $28
    ld e, $82
    db $e3
    call nc, $a0d5
    and b
    db $fc
    db $e3
    db $f4
    pop hl
    ldh a, [$c1]
    ldh a, [rSCX]
    ldh a, [rTAC]
    ldh [$86], a
    db $d3
    add d
    pop hl
    sbc a
    sbc l
    sbc l
    and d
    add c
    sbc a
    ld h, e
    ret nz

    add d
    db $e3
    ld l, h
    pop bc
    ld d, [hl]
    pop de
    add [hl]
    pop de
    add d
    ld [c], a
    sbc a
    rra
    sbc h
    ld b, [hl]
    ld b, [hl]
    xor [hl]
    sbc h
    cp a
    ldh [$7e], a
    pop hl
    ld [hl], d
    pop bc
    or b
    jr jr_062_5485

    dec a
    ldh a, [$86]
    pop de
    inc b
    ldh [$9f], a
    and d
    pop bc
    ldh [rDMA], a
    ccf
    xor a
    ld b, [hl]
    sbc h
    sbc l
    sbc l
    sbc a
    ld a, [hl]
    rst $20
    add b
    sbc $30
    inc b
    push hl
    add e
    ld [c], a
    cp a
    ldh [$fd], a
    pop hl
    sbc h
    sbc a
    ld a, [hl]
    db $e3
    sbc c
    or c
    ld hl, sp-$80
    res 0, [hl]
    add $44
    pop hl
    ld b, [hl]
    xor a
    ld c, b
    ld c, [hl]
    ld c, b
    ld h, c
    ld b, l
    cp c
    pop hl
    dec sp
    ldh [$72], a
    pop bc
    add b
    rst $18
    and b
    and b
    adc d
    and c
    ld a, [$c086]
    sbc [hl]
    ld b, h
    ldh [rLYC], a
    ld b, a
    ld d, h
    ld d, h
    ld d, d
    sbc $c0
    ldh [$af], a
    ld b, [hl]
    ld b, [hl]
    sbc [hl]
    db $76
    ret nz

    sub $d7
    add sp, -$80
    rst $18
    db $f4
    add c
    sub [hl]
    jp nz, Jump_062_449e

    ldh [rHDMA1], a
    ld e, b
    cp l
    add hl, bc
    cp l
    add c
    ldh [$3b], a
    pop hl
    sbc [hl]
    ldh a, [$84]
    cp $e6
    add b
    ret c

    add [hl]
    and c
    ei
    and b
    sbc [hl]
    adc e
    ldh [rLYC], a
    ld d, [hl]
    ld [hl-], a
    cp [hl]
    ld sp, $2b1d
    cp [hl]
    pop hl
    xor [hl]
    sbc [hl]
    and b
    ld a, [hl]
    push bc
    ld a, d
    rst $08
    ld b, $ad
    ld a, [hl]
    nop
    rst $20
    ld b, l
    dec l
    jr nz, jr_062_5574

    jr nz, jr_062_5583

    ld a, d
    pop bc
    add c
    sbc [hl]
    db $fc
    and [hl]
    ld a, d
    rst $08
    ld b, e
    adc c
    sbc [hl]
    db $e3
    adc [hl]
    and c
    inc bc
    pop bc
    ld c, d
    rrca
    ld d, d
    dec hl
    inc l
    ld h, $c0
    pop hl
    nop
    ld [c], a

jr_062_5570:
    ld hl, sp-$79
    ld a, d
    db $e3

jr_062_5574:
    ld hl, sp+$00
    or c
    inc c
    add l
    ld a, [hl]
    jp $604a


    ld e, l
    ld d, l
    dec [hl]
    inc bc
    ld [hl], $48

jr_062_5583:
    ld a, h
    ret nz

    nop
    pop hl
    ld hl, sp-$79
    db $f4
    adc e
    ld b, e
    adc c
    inc e
    pop bc
    cp $7e
    jp $d1d0


    and c
    xor [hl]
    ld b, l
    ld e, e
    ld d, d
    rst $38
    ld d, l
    inc a
    inc a
    ld d, d
    ld h, c
    ld d, l
    ld b, l
    and c
    ldh [$9d], a
    ld h, b
    db $f4
    add l
    add sp, $63
    nop
    cp a
    cp l
    jp nz, Jump_000_36ae

    dec [hl]
    rlca
    ld [hl], $52

jr_062_55b3:
    ld d, l
    ld a, [hl-]
    and d
    nop
    and e
    db $f4
    add h
    nop
    cp b
    db $fc
    and l
    xor $fd
    and b
    xor [hl]
    ld b, [hl]
    xor a
    cp a
    ldh [$3b], a
    ld [hl], $af
    ld bc, $3aae
    and b
    jr c, jr_062_5570

    ld l, [hl]
    add c
    ld a, d
    ld l, l
    add b
    rst $08
    inc b
    ld h, e
    pop bc
    add b
    rst $38
    xor a
    ld b, [hl]
    xor [hl]
    xor a
    ld b, h
    inc a
    dec [hl]
    dec [hl]
    rlca
    ld [hl], $af
    ld b, e
    ld a, [$7ac1]
    db $e3
    ld a, d
    ld l, l
    jp $824f


    ld h, e
    cp $7c
    and d
    xor a
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    dec [hl]
    rra
    jr c, jr_062_5634

    ld d, d
    ld e, b
    ld b, h
    ld [hl], e
    add d
    db $76
    add [hl]
    add b
    ld a, b
    cp h
    add d
    ld h, h
    inc a
    and c
    ld b, [hl]
    ld a, c
    ld a, l
    add hl, sp
    ret nz

    ldh [$35], a
    ld e, a
    dec [hl]
    add hl, sp
    ld c, l
    ld d, d
    ld b, l
    ld [hl], e
    add b
    sbc a
    db $f4
    ld h, l
    ld hl, sp-$80
    ld a, c
    db $fc
    add h
    nop
    add b
    xor [hl]
    ld a, c
    ld a, [hl]
    ld a, a
    ld a, l
    cp l
    ld [hl], $bf
    pop hl
    ld a, $56
    ld d, d
    ld b, h
    jr nc, jr_062_55b3

    and c

jr_062_5634:
    ldh a, [rPCM12]
    ld h, e
    scf
    adc c
    ld b, $4f
    sub d
    ld h, l
    sbc a
    sbc h
    xor a
    add b
    dec sp
    ld b, l
    ccf
    cp a
    db $e3
    ld a, $48
    ld c, b
    ret nz

    pop hl
    rst $30
    add b
    ld hl, sp+$76
    ld h, d
    add b
    jp c, $e400

    and b
    and b
    and c
    ld b, [hl]
    add b
    rst $30
    xor [hl]
    dec [hl]
    add hl, sp
    ld a, [hl]
    ld [c], a
    ld a, [hl-]
    ld d, d
    ld h, c
    ld e, h
    ldh [$f7], a
    add c
    ld hl, sp+$62
    nop
    cp h
    add d
    ld b, l
    ld a, [hl-]
    add b
    add b
    xor a
    inc a
    ld l, a
    ld a, [hl-]
    xor [hl]
    ld a, a
    ld a, l
    ld a, h
    ret nz

    jr c, jr_062_56b1

    cp a
    ret nz

    jp $9eaf


    add sp, -$1e
    nop
    ld e, h
    ld a, [hl]
    and l
    ret nz

    pop hl
    ld b, b
    dec [hl]
    adc a
    dec [hl]
    xor a
    xor [hl]
    add c
    inc a
    ret nz

    cp l
    ret nz

    ld a, [c]
    and b
    sbc [hl]
    ld hl, sp+$76
    ld b, c
    nop
    or a
    nop
    ld c, h
    sbc [hl]
    ld b, [hl]
    add d
    add e
    ld a, [hl-]
    ld l, a
    ld a, [hl-]
    xor [hl]
    xor a
    add c
    ld a, l
    jp nz, Jump_062_453a

    ld [hl], a
    add c
    db $fc
    nop
    cp d
    ld a, d
    ld l, l

jr_062_56b1:
    xor [hl]
    add l
    add [hl]
    add e
    ld b, e
    xor a
    dec de
    add e
    add h
    add b
    ld [c], a
    dec [hl]
    ld b, d
    ld [hl], a
    ld h, b
    nop
    cp a
    ld a, d
    ld l, c
    rst $38
    xor a
    ld b, [hl]
    add l
    add a
    adc b
    adc b
    add a
    add l
    db $10
    ld b, b
    ld [c], a
    add b
    ldh [rP1], a
    add $80
    dec e
    rst $18
    ld a, d
    ld h, d
    cp d
    ld b, d
    rst $30
    ld b, b
    ld b, b
    cp $a2
    nop
    ldh [$f3], a
    jr nz, jr_062_56e5

jr_062_56e5:
    cp [hl]
    ld a, d
    ld l, c
    cp c
    ld b, c
    xor [hl]
    pop bc
    push hl
    ld sp, $f936
    ld h, e
    nop
    cp a
    ld a, d
    ld l, e
    xor a
    ld b, [hl]
    ccf
    and e
    pop bc
    ldh [rP1], a
    cp c
    ld b, c
    nop
    cp a
    ld a, d
    ld l, d
    jr c, jr_062_5744

    cp a
    add d
    pop bc
    ld [c], a
    inc [hl]
    ld hl, $bf00
    inc c
    nop
    and e
    ld a, [hl]
    inc b
    and c
    ld b, [hl]
    add c
    db $e3
    ld b, h
    ret nz

    ld a, c
    jr nz, jr_062_5790

    ld b, $14
    nop
    cp a
    ld a, [hl]
    inc b
    sbc h
    add c
    db $e4
    add hl, sp
    inc sp
    jr nz, jr_062_5762

    ld h, b
    db $76
    ld b, $10
    nop
    cp a
    ld a, [hl]
    dec b
    ret nz

    ld h, c
    call nz, $afc1
    inc b
    pop bc
    add d
    db $e4
    nop
    cp a
    nop
    add d
    db $e4
    cp [hl]
    nop
    ld bc, $8681
    and b
    or h

jr_062_5744:
    nop
    inc b
    and d
    nop
    ld e, a
    add d
    jp hl


    ld [bc], a
    add c
    ld h, h
    add hl, sp
    ei
    inc bc
    inc b
    push hl
    add b
    rla
    nop
    ld c, b
    jp $81a4


    rst $20
    db $10
    inc b
    add l
    add b
    add hl, de
    add [hl]
    ret z

jr_062_5762:
    add h
    and h
    ld a, $81
    and $04
    and l
    add b
    jr jr_062_576c

jr_062_576c:
    add [hl]
    set 0, b
    push hl
    add a
    and b
    add c
    pop hl
    inc b
    ld h, a
    add b
    inc d
    add [hl]
    call $e14c
    nop
    add e
    and b
    add a
    and c
    add c
    ldh [rDIV], a
    and [hl]
    add d
    and b
    add b
    db $d3
    add [hl]
    ld l, c
    ret z

    and b
    ld c, $4c
    ld [c], a

jr_062_5790:
    ld b, [hl]
    ld b, l
    ld b, c
    ccf
    ld bc, $a384
    ld a, [hl]
    ld b, $80
    ld d, $00
    add [hl]
    ld b, h
    ld b, d
    and $fa
    and $3f
    ld [hl+], a
    inc b
    add l
    add b
    rst $10
    add [hl]
    ld b, h
    pop bc
    xor $f0
    add h
    and c
    inc b
    dec h
    add b
    reti


    add [hl]
    jr z, jr_062_57fc

    ld b, l
    ld b, e
    ld b, c
    add hl, bc
    ld b, e
    db $fd
    ldh [rSTAT], a
    pop hl
    xor [hl]
    add [hl]
    add e
    inc b
    add e
    add b
    reti


    add [hl]
    jr z, jr_062_57e8

    ld b, l
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$c1], a
    jp nz, $8886

    ld l, b
    ld d, [hl]
    ld l, [hl]
    add [hl]
    rrca
    ld c, d
    add b
    xor [hl]
    ld [$a4a0], sp
    ld h, h
    rst $38
    ldh [$83], a
    and l
    inc a
    ret


    inc hl
    add [hl]

jr_062_57e8:
    add l
    ld d, [hl]
    ld l, a
    add [hl]
    rrca
    ld a, [bc]
    add b
    xor a
    rst $38
    ld b, [hl]
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld bc, $ca6a

jr_062_57fc:
    ld b, c
    add l
    and b
    ld [$9364], sp
    ld c, a
    nop
    xor h
    ld [$c066], sp
    ldh [$c0], a
    rst $00
    ld bc, $e5c0
    ld [$9963], sp
    ld c, [hl]
    nop
    or b
    ld [$4464], sp
    inc a
    dec bc
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    pop hl
    inc bc
    jp nz, $cf86

    nop
    or e
    inc b
    ld [$c064], sp
    jp nz, $c0ac

    pop bc
    add $62
    ld [$4321], sp
    ldh a, [$80]
    ld l, [hl]
    ld l, $04
    inc h
    and c
    ld b, [hl]
    xor [hl]
    ld b, b
    pop bc
    xor a
    ld b, b
    pop bc
    add d
    add $e0
    ld b, $ad
    add b
    ld [hl], c
    add [hl]
    inc h
    ld b, l
    nop
    add [hl]
    and l
    sbc l
    sbc l

Jump_062_5850:
    sbc a
    nop
    inc b
    call nz, Call_062_6018
    sub $30
    ld b, e
    dec l
    sbc [hl]
    add e
    ld a, $a2
    call nz, $c3e0
    ldh [rP1], a
    add [hl]
    and [hl]
    add [hl]
    ld l, l
    add b
    ld de, $a47e
    ld b, e
    ld h, b
    call nz, $f4e3
    pop hl
    adc d
    ld b, a
    nop
    add b
    db $dd
    ld a, [hl]
    adc b
    ld de, $72e4
    add c
    inc c
    ld c, a
    add b
    ld [hl], l
    add [hl]
    dec b
    adc d
    db $e3
    nop
    inc c
    and l
    inc c
    ld c, a
    add b
    rst $10
    db $fc
    ld h, a
    add [hl]
    jp hl


    inc c
    ld c, l
    nop
    ld e, c
    db $fc
    and e
    nop
    db $fc
    rst $20
    inc c
    add e
    ld b, e
    db $f4
    nop
    ld d, [hl]
    db $fc
    db $ed
    ld b, e
    db $f4
    add b
    ld [de], a
    sbc d
    ld h, e
    nop
    db $fc
    jp hl


    ld b, e
    or $07
    jr nz, jr_062_58ae

jr_062_58ae:
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
    dec e
    ld [$0102], sp
    ld a, [de]
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld hl, $020b
    inc bc
    ld d, $0d
    ld [bc], a
    inc b
    inc hl
    ld c, $02
    dec b
    add hl, de
    ld [de], a
    ld [bc], a
    ld b, $1d
    inc de
    ld [bc], a
    rlca
    inc hl
    inc de
    ld [bc], a
    ld [$141b], sp
    ld [bc], a
    add hl, bc
    ld e, $14
    ld [bc], a
    ld a, [bc]
    inc h
    inc d
    ld [bc], a
    dec bc
    dec e
    dec d
    ld [bc], a
    inc c
    ld a, [hl+]
    ld d, $02
    dec c
    inc e
    jr jr_062_5906

    ld c, $1e

jr_062_5906:
    ld a, [de]
    ld [bc], a
    rrca
    inc l
    ld a, [de]
    ld [bc], a
    db $10
    ld hl, $021b
    ld de, $1b2b
    ld [bc], a
    ld [de], a
    ld [hl+], a
    inc e
    ld [bc], a
    inc de
    inc l
    inc e
    ld [bc], a
    inc d
    ld hl, $021d
    dec d
    inc e
    ld e, $02
    ld d, $1f
    ld hl, $1702
    daa
    dec h
    ld [bc], a
    jr jr_062_594a

    daa
    ld [bc], a
    add hl, de
    ld h, $27
    ld [bc], a
    ld a, [de]
    dec h
    add hl, hl
    ld [bc], a
    dec de
    inc h
    dec hl
    ld [bc], a
    inc e
    add hl, de
    inc l
    ld [bc], a
    dec e
    inc hl
    jr nc, jr_062_5946

    ld e, $15

jr_062_5946:
    ld [hl-], a
    ld [bc], a
    rra
    inc e

jr_062_594a:
    ld [hl], $02
    jr nz, jr_062_596f

    ld [hl], $02
    ld hl, $3717
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    ld e, c
    ld b, d
    ld e, l
    add h
    ld h, d
    sbc a
    ld h, d
    cp a
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $fa
    ld [c], a
    ld c, l
    rlca
    ld c, $0e
    ld c, l
    db $fc
    db $e4
    db $ed

jr_062_596f:
    pop hl
    db $fc
    ld a, [c]
    sub $e3
    ld a, [$00e8]
    push bc
    ldh [$fd], a
    db $e3
    jp nz, $fee0

    rst $20
    ret nz

    pop af
    cp $fc
    add [hl]
    ld [$e3fe], a
    cp a
    ld c, l
    ld l, l
    ld c, l
    ld c, l
    ld c, l
    dec l
    ei
    ldh [$2d], a
    ldh [$ee], a
    pop hl
    sbc l
    db $ec
    sub [hl]
    add sp, $3d
    db $e4
    add b
    ld [$4d4d], a
    ld l, l
    dec b
    dec bc
    rst $38
    ld [c], a
    dec c
    ld sp, hl
    ldh [$b9], a
    pop hl
    ld d, [hl]
    ld [c], a
    cp b
    db $e3
    dec a
    ld [$4310], a
    db $e3
    ld [$c3ed], sp
    pop hl
    add $e0
    dec hl
    ret nz

    db $e3
    cp d
    ldh [$7c], a
    pop hl
    ret nz

    jr c, @+$01

    inc b
    and $86
    ld [c], a
    jp nz, $bfe0

    ldh [$7d], a
    ld [c], a
    dec c
    dec bc
    ld hl, $d02d
    rst $30
    adc d
    rlc d
    ld [c], a
    ld c, b
    pop hl
    dec hl
    jp Jump_000_3de2


    db $e4
    nop
    ret nz

    pop hl
    ld h, [hl]
    jp $ce80


    db $db
    ret nz

    add [hl]
    ret


    dec b
    ldh [rDIV], a
    pop hl
    ld [$bfe0], sp
    ld l, e
    ld c, e
    ld l, e
    ld l, e
    ld a, [bc]
    ld c, d
    ld sp, hl
    jp nz, Jump_000_036d

    dec c
    ld l, l
    ld h, h
    add $86
    adc $ff
    pop hl
    add [hl]
    add $06
    db $e4
    ld b, e
    ld [c], a
    add hl, bc
    ld a, [bc]
    rst $38
    pop hl
    inc [hl]
    db $e3
    ld l, l
    reti


    and d
    db $fc
    and l
    add b
    call $c708
    ld sp, hl
    ld l, l
    ld [de], a
    db $e3
    inc bc
    ld [c], a
    ld c, e
    ld c, d
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    add c
    ld c, e
    ld [bc], a
    db $e3
    add $ca
    add b
    adc $24
    and $47
    db $e3
    ret z

    call nz, Call_000_044b
    add h
    ldh [$b6], a
    jp Jump_062_400b


    jp nz, $e918

    add [hl]
    db $d3
    inc c
    jp $c0c5


    nop
    inc b
    pop bc
    inc b
    ldh [$c0], a
    db $e4
    pop bc
    pop bc
    ld b, [hl]
    sub $92
    and e
    adc d
    and e
    pop de
    and e
    inc c
    dec c
    jp nz, $c0c5

    ld a, [bc]
    ld a, [bc]
    add c
    push hl
    ret nz

    pop hl
    nop
    or [hl]
    add d
    and [hl]
    jr jr_062_5aaa

    jp $c109


    ld b, h
    pop hl
    ld a, [bc]
    ld l, e
    ld b, c
    rst $20
    ret nz

    pop bc
    rst $08
    cp b
    nop
    inc h
    db $e4
    add hl, bc
    pop bc
    adc a
    and l
    call nz, $c2c0
    rst $20
    add c
    jp nz, $b900

    add b
    rst $20
    ld c, $8d
    and h
    dec bc
    dec bc
    ld c, d
    inc bc
    ldh [rSB], a
    and d
    add d
    jp hl


    nop
    cp c
    nop
    adc c
    and e
    adc d
    and [hl]
    inc bc
    db $e4
    ld a, [hl]
    ret nz

    db $ec
    and b
    ld e, [hl]
    rst $20
    ld b, $bb
    ret z

    jp nz, $8806

    add e

jr_062_5aa1:
    dec hl
    ld c, e
    add h
    and $da
    ld h, a
    ret nz

    sub c

jr_062_5aa9:
    add [hl]

jr_062_5aaa:
    ld h, a
    nop
    db $e3
    nop
    ret nz

    db $e4
    add d
    push hl
    add a
    and c
    ldh [$c6], a
    add b
    call nc, Call_062_6484
    ret nz

    db $e4
    ld a, a
    db $e4
    nop
    ld b, a
    add e
    ld [$6081], sp
    add $86
    ld [hl], h
    adc $81
    nop
    and $7f
    db $e4
    ld b, a
    add l
    db $10
    ret nz

    ld [c], a
    ld [hl+], a
    ld h, d
    sbc e
    ld l, [hl]
    add b
    db $d3
    dec c
    adc c
    add b
    cp c
    jp nz, $e0fa

    jr jr_062_5aa1

    db $ec
    jp Jump_000_004e


    xor l
    ld c, l
    dec l
    ld c, b
    add h
    add hl, bc
    add a
    inc b
    ld h, d
    nop
    inc e
    adc h
    cp e
    ld e, b
    cp a
    ldh [$0c], a
    ld h, c
    ld a, h
    jp nz, $8377

    add $9e
    nop
    and l
    nop
    ld a, [hl]
    add sp, -$40
    ld [c], a
    ccf
    db $e3
    ld b, l
    add c
    ld l, d
    ld c, b
    nop
    cp d
    ld a, [hl]
    db $e4
    ld a, $e7
    nop
    add c
    ld b, d
    add [hl]
    add a
    jp $a654


    ld h, [hl]
    db $fc
    add $4a
    ld b, b
    cp h
    pop bc
    add l
    ld b, e
    jr nz, jr_062_5aa9

    ld b, e
    ld l, d
    ld [hl+], a
    add b

jr_062_5b27:
    ret c

    ld [hl], a
    jr z, jr_062_5b27

    pop bc
    dec c
    ld a, e
    pop bc
    ld b, l
    ld b, a
    sub b
    ld e, d
    dec h
    ld [hl], h
    and h
    nop
    ld c, [hl]
    ld a, [hl]
    db $ec
    dec c
    ld a, b
    ret nz

    ld b, b
    and b
    dec hl
    add h
    ld a, [c]
    ld h, h
    ld a, [hl]
    rst $20
    ld l, l
    cp d
    ld b, [hl]
    ld a, d
    jr nc, jr_062_5bc7

    ld c, c
    ret nz

    add b
    ld c, d
    rlca
    ld l, e
    dec bc
    dec hl
    add d
    ld h, h
    inc b
    ld d, [hl]
    di
    ld c, c
    nop
    ld a, [hl+]
    ld b, b
    add b
    ld b, c
    ld a, [bc]
    dec sp
    push bc
    inc b
    ld b, [hl]
    nop
    ld d, h
    add hl, hl
    ld c, [hl]
    ld a, d
    ld b, d
    dec hl
    ld b, $43
    ld [hl], b
    cp [hl]
    ld b, c
    inc b
    ld b, a
    ld a, d
    rst $18
    ld a, d
    ld b, [hl]
    ld c, d
    ld c, d
    ld a, [bc]
    ld b, l
    inc h
    ld b, b
    inc b
    ld c, b
    ld a, d
    rst $08
    ld [hl], e
    jp hl


    nop
    inc h
    add [hl]
    nop
    push bc
    ld bc, $392a
    ld b, c
    nop
    push bc
    ld b, h
    adc [hl]
    ld c, a
    ld c, d
    ld de, $237a
    add l
    rlca
    cp a
    db $e4
    add [hl]
    ld b, $7a
    ld a, a
    nop
    ld b, [hl]
    ld bc, $034f
    call nz, $c408
    ld [hl+], a
    sub h
    adc c
    ld d, d
    adc $e6
    ld b, [hl]
    add [hl]
    ld bc, $bb00
    ld c, c
    inc a
    jr nz, @+$7e

    add l
    ldh [$c9], a
    add b
    jp nc, $8332

    ret nz

    inc h
    ld b, l
    inc b
    ld [$01bb], sp
    ld a, h
    add c
    ld b, c
    add b
    dec l
    ld a, [hl]
    dec h

jr_062_5bc7:
    ld a, [$1c97]
    jp nz, Jump_062_62fd

    ld b, $7b
    ld b, l
    ld c, e
    dec hl
    cp h
    and d
    or $66
    ld hl, sp-$5f
    add b
    db $db
    ret nz

    add e
    nop
    ld b, c
    push hl
    ld a, c
    add h

jr_062_5be1:
    cp e
    inc bc
    ld hl, sp-$7c
    db $10
    add l
    cpl
    ld [hl], c
    db $fc
    ld bc, $617b
    nop
    ld bc, $f8e6
    add sp, $3b
    ld [bc], a
    ret c

    inc b
    or d
    ld a, e
    add b
    ld h, b
    dec sp
    ld b, l
    db $76
    ld c, b
    nop
    ld a, h
    rlca
    add b
    push de
    ld a, d
    ld h, $bc
    ld b, b
    cp h
    inc hl
    jr c, jr_062_5c0c

    ld a, d

jr_062_5c0c:
    add e
    ei
    inc bc
    nop
    ld hl, sp+$67
    add b
    push de
    ld a, d
    dec h
    ld a, h
    ld b, d
    ld a, [hl-]
    ld b, d
    cpl
    dec h
    ld a, [$7a8b]
    jr @+$16

    cp e
    ld b, d
    ret nz

    ld h, c
    dec hl
    db $f4
    dec b
    ld l, e
    ld [hl], a
    inc hl
    nop
    call nz, $bc00
    ret nz

    ld a, d
    ld b, h
    db $fd
    ld b, a
    jp Jump_000_00c6


    cp l
    jr nz, jr_062_5be1

    db $fd
    ld b, e
    ld c, e
    ld l, e

jr_062_5c3e:
    add b
    di
    dec b
    xor h
    nop
    ld a, h
    and d
    ret c

    ld b, a
    ld a, d
    ld a, c
    ret nz

    db $e4
    ld [hl], l
    nop

jr_062_5c4d:
    ld l, e
    inc bc
    ld l, e
    ld c, e
    db $76
    ld b, l
    or a
    inc h
    add b
    ld [hl], a
    or b
    ld h, l
    ld hl, sp+$03
    ld a, [$0083]
    ld a, b
    and b
    jr nc, jr_062_5c63

    di

jr_062_5c63:
    ld [bc], a
    inc a
    and c
    call c, Call_000_3d65
    add a
    inc sp
    dec c
    ld a, [hl]
    push bc
    nop
    ld a, l
    db $e4
    jr nc, @+$05

    ld a, e
    pop hl
    or $61
    db $76
    ld c, b
    ld a, [$fc95]
    jr z, jr_062_5c3e

    push hl
    jr nz, jr_062_5cf8

    ld b, c
    rst $30
    ld b, l
    ld d, [hl]
    daa
    add b
    ld [hl], d
    xor [hl]
    dec b
    ld c, l
    inc sp
    ld bc, $e4bb
    ld b, b
    db $76
    ret


    db $fc
    jp z, $b200

    sbc d
    ld c, b
    cp e
    pop hl
    or b
    ld [bc], a
    ld l, e
    ld a, [$0261]
    di
    and c
    dec hl
    or $63
    inc [hl]
    ld e, c
    xor [hl]
    dec hl
    ld [hl], $e6
    push af
    ld h, e
    cp $ca
    ld b, d
    add b
    db $d3
    dec c
    inc d
    ld c, l
    ld [hl], l
    push bc
    dec hl
    ld h, h
    ld [hl-], a
    inc bc
    ld l, l
    scf
    ld h, $86
    inc l
    xor h
    dec l
    dec l
    sub h
    ld a, [hl+]
    dec [hl]
    call nz, $83f7
    jr z, jr_062_5c4d

    ld c, l
    ld [bc], a
    ld [hl], h
    ld [hl+], a
    ld l, l
    scf
    dec [hl]
    ret nz

    ldh [$be], a
    pop hl
    sub d
    daa
    or c
    ld b, d
    ld a, b
    add e
    nop
    ld l, e
    ld h, e
    ld [hl], d
    ld b, d
    ret nz

    rst $20
    or b
    ld c, $f6
    inc c
    cp l
    ld [bc], a
    add d
    ld [c], a
    or e
    and b
    rlca
    dec hl
    ld l, e
    ld c, e
    ld [hl], h
    inc hl
    add b
    ld [hl], l
    dec sp
    push hl
    db $fc

jr_062_5cf8:
    db $e3
    db $76
    and e
    nop
    ld [hl-], a
    add [hl]
    pop bc
    pop hl
    nop
    db $e4
    ld [hl], $9a
    ret nz

    ld [c], a
    ld [hl], h
    dec h
    or [hl]
    and e
    ld [hl-], a
    add e
    nop
    cp c
    ldh [$3a], a
    add d
    add b
    jp c, $ca7a

    ei
    and [hl]
    ld a, e
    and c
    ld b, e
    ldh [$f5], a
    ld [bc], a
    nop
    nop
    ld [c], a
    nop
    or h
    ld a, d
    adc $50
    add d
    adc l
    ld b, e
    or a
    nop
    ld b, h
    dec h
    add b
    sub $00
    ld a, d
    adc $6e
    add l
    ld a, [hl]
    add hl, hl
    nop
    pop bc
    add b
    rst $10
    and h
    ld de, $8648
    ld c, d
    ld c, $00
    nop
    nop
    cp a
    db $dd
    sbc $a0
    and b
    and b
    call c, $e2fa
    and b
    dec de
    ret c

    reti


    db $fc
    db $e3
    jp nc, $fcd3

    di
    ldh [$e0], a
    sub $e3
    ld a, [hl]
    ld a, [$e2e8]
    db $e3
    db $e4
    rst $18
    ldh [$e1], a
    ld a, [$dfe0]
    and b
    sub $d7
    jp c, $fcdb

    db $e3
    call nc, Call_062_7bd5
    and b
    and b
    db $fc
    rst $28
    ret nc

    pop de
    jp c, $d6db

    ld [c], a
    db $fc
    ret nc

    db $e3
    ld a, [$e8e4]
    jp hl


    ld [$e6e5], a
    rst $20
    ld [hl], b
    ld a, [$82e0]
    and $7a
    pop hl
    ld [hl], d
    pop hl

jr_062_5d8d:
    sbc a
    and d
    sbc l
    rst $38
    pop hl
    ld [bc], a
    ld a, [$9fe1]
    ld h, d
    pop hl
    ld l, d
    ldh [$d6], a
    db $e3
    ld a, [$43ea]
    push hl
    add d
    push hl
    cp $9a
    pop hl
    ret nc

    pop de
    and b
    sbc a
    sbc l
    sbc l
    sbc h
    push de
    ld b, [hl]
    rst $38
    ld [c], a
    xor [hl]
    ld sp, hl
    ldh [$9c], a
    cp l
    pop hl
    call nc, $43d5
    sub $d7
    ld a, [de]
    pop hl
    dec a
    db $eb
    ld b, e
    db $e4
    inc b
    db $ec
    sbc a
    jp Jump_062_5ee1


    add $e0
    ld b, l
    ld b, l
    ld b, [hl]
    xor a
    cp d
    db $e3
    sbc h
    ld a, h
    ldh [rLCDC], a
    ldh [$c1], a
    ld b, e
    ld [$e007], a
    ld b, e
    db $e3
    add d
    rst $20
    inc b
    db $e3
    sbc [hl]
    add h
    pop hl
    cp a
    xor a
    ld b, l
    dec hl
    inc l
    ld a, [hl+]
    ld b, l
    ld a, l
    db $e3
    xor a
    dec de
    ld b, [hl]
    and c
    nop
    pop hl
    sub $d7
    dec a
    db $ed
    add [hl]
    rst $08
    db $76
    pop bc
    cp $c0
    ldh [$ae], a
    ld b, [hl]
    ld b, l
    dec l
    jr nz, jr_062_5e22

    jr nz, jr_062_5d8d

    inc [hl]
    cp a
    ldh [$7d], a
    ld [c], a
    sbc [hl]
    ld a, [hl]
    call nz, $ec3d
    ld b, e
    ld [c], a
    and b
    ld hl, sp-$7e
    add sp, -$37
    jp nz, $e004

    xor a
    scf
    jr c, jr_062_5e40

    cpl
    rst $28
    inc l
    dec hl
    ld b, a
    ld d, l

jr_062_5e22:
    ld sp, hl
    jp nz, $9c91

    sbc a
    add b
    nop
    pop hl
    ld e, [hl]
    pop bc
    dec a
    db $eb
    add [hl]
    pop bc
    inc b
    push bc
    ld [$06c1], sp
    push hl
    xor [hl]
    rst $38
    add hl, sp
    dec [hl]
    dec [hl]
    inc a
    ld c, b
    ld c, c
    ld e, l
    ld h, b

jr_062_5e40:
    add l
    ld d, l
    cp a
    pop bc
    ld b, [hl]
    ld bc, $e0e1
    and l
    add b
    ret nc

    add d
    rst $20
    sbc h
    cp $12
    db $e3

Jump_062_5e51:
    ld b, [hl]
    xor a
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld e, [hl]
    rst $28
    ld d, d
    ld d, e
    ld d, e
    ld b, l
    cp a
    ret nz

    xor [hl]
    ld b, [hl]
    sbc [hl]
    dec de
    and b
    and b
    nop
    db $e3
    jp c, $80db

    pop de
    add d
    jp hl


    adc a
    jp nz, $45ff

    ld [hl], $35
    dec [hl]
    dec [hl]
    add hl, sp
    ld e, e
    xor [hl]
    nop
    ld b, c
    jp nz, $c07c

    add c
    ret nz

    ld a, [hl]
    and e
    add b
    db $d3
    adc d
    and h
    ld c, c
    jp nz, $c2c5

    ld e, $c1
    pop hl
    ld [hl], $4b
    ld d, l
    xor a
    ld b, c
    call nz, $c0c1
    nop
    jp nz, $da93

    db $db
    add b
    db $d3
    adc d
    and h
    and c
    pop de
    and e
    push bc
    ret nz

    dec [hl]
    ccf
    dec [hl]
    jr c, jr_062_5ede

    ld c, d
    ld h, b
    ld d, l
    add c
    db $e3
    cp l
    and c
    pop bc
    and c
    ldh [$83], a
    nop
    or c
    add d
    and h
    adc d
    and b
    add hl, bc
    ret nz

    xor a
    ld b, [hl]
    dec a
    xor [hl]
    ld b, h
    ld [c], a
    ld a, [hl-]
    ld b, a
    ld e, l
    ld b, e
    ld b, c
    ldh [$c2], a
    and d
    ret nz

    cp l
    and b
    pop bc
    and b
    nop
    or [hl]
    add d
    rst $00
    ret


    and e
    dec b
    pop hl
    dec [hl]
    add hl, sp
    inc bc
    ld e, [hl]
    ld d, d
    jp nz, Jump_000_3fe4

    and d

jr_062_5ede:
    cp $80
    nop

Jump_062_5ee1:
    cp c
    adc d
    add h
    adc c
    and d
    add b
    ld b, a
    ret nz

    ret nz

    ld [c], a
    inc bc
    ldh [rSB], a
    and d
    add d
    push hl
    nop
    cp a
    add b
    ld [c], a
    ld b, l
    ld a, $47
    ret nz

    dec [hl]
    ld h, d
    ld h, [hl]
    ld a, [hl-]
    ld d, d
    inc bc
    db $e3
    add l
    ret nz

    ldh [$80], a
    add d
    add d
    and l
    nop
    or a
    nop
    db $e3
    ret nz

    ld [c], a
    ld h, d
    ld h, a
    ld l, b
    jp Jump_000_3666


    push bc
    add c
    add e
    add b
    add $a2
    add d
    db $e3
    jp c, $e1db

    and b
    dec a
    adc [hl]
    add [hl]
    ld h, a
    nop
    push hl
    add a
    and b
    ld l, c
    dec [hl]
    dec [hl]
    inc bc
    ld l, b
    ld h, [hl]
    add d
    db $e4
    inc b
    add l
    add sp, $63
    add b
    call nc, $e900
    ccf
    ldh [rNR21], a
    ret nz

    ldh [$35], a
    ld l, d
    ld b, a
    add e
    and c
    adc b
    and b
    ld [hl], d
    ld h, c
    add d
    ld [c], a
    ldh a, [rSCX]
    adc l
    nop
    xor h
    add b
    jp $c0bf


    ld l, e
    ld l, h
    dec [hl]
    ld l, h
    dec bc
    ld l, l
    ld b, b
    call nz, $9e62
    ld a, [c]
    ld b, c
    rst $00
    ld h, b
    ld l, d
    ld h, d
    add b
    db $76
    ld hl, sp+$00
    call nz, $a0c0
    add e
    and d
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    ld bc, $4742
    add d
    adc b
    and c
    and a
    ld b, c
    inc b
    pop hl
    jp Jump_000_004e


    xor l
    ld bc, $86a4
    inc bc
    and d
    dec [hl]
    add hl, sp
    add a
    add a
    rst $00
    pop bc
    ld b, e
    pop af
    nop
    xor h
    ret nc

    add hl, bc
    pop de
    rst $38
    add l
    inc a
    pop bc
    ld a, [hl-]
    add a
    add d
    add [hl]
    and e
    ldh [rSTAT], a
    jp $1050


    nop
    xor h
    ld a, [hl]
    db $e4
    ld c, d
    and b
    cp h
    and c
    inc a
    ccf
    ld [c], a
    ld b, l
    add c
    add [hl]
    ld [hl], e
    nop
    nop
    xor l
    ld a, [hl]
    and $3e
    push hl
    cp a
    ret nz

    rlca
    ld h, c
    add [hl]
    add c
    inc b
    ld h, e
    add b
    rst $10
    inc b
    add [hl]
    jr z, jr_062_5ffc

    add e
    xor [hl]
    nop
    add b
    rst $38
    jp $a504


    add [hl]
    ld l, [hl]
    nop
    xor e
    add hl, bc
    and b
    ld a, [hl]
    jp hl


    add h
    ld b, c
    ld [hl], $ff
    jp nz, Jump_062_4445

    inc b
    ld h, [hl]
    nop
    ld e, a
    ld a, h
    ld a, d
    ret nz

    call nz, Call_062_4422
    ld [hl], $35
    ld [hl], $45
    ld a, h
    and a
    ldh [$e4], a
    dec b
    nop
    ld d, e
    ld a, [hl]
    ld b, l
    ld a, d
    jp Jump_062_62b7


    ld c, d
    ld d, [hl]
    ld a, [hl-]
    inc bc
    dec [hl]
    ld [hl], $82
    ld h, h
    inc b
    ld b, h

jr_062_5ffc:
    nop
    ld d, [hl]
    add b
    ld [bc], a
    add d
    add hl, bc
    ret nz

    jr nz, jr_062_6010

    ld c, d
    ld e, b
    ld a, [hl]
    ld b, b
    add hl, sp
    nop
    ld h, e
    inc b
    ld b, [hl]
    nop
    ld d, d

jr_062_6010:
    add b
    inc b
    db $fc
    db $fc
    add hl, hl
    ld a, d
    ld b, b
    ld b, h

Call_062_6018:
    ld c, l
    ld d, l
    inc a
    dec [hl]
    ld a, [hl-]
    add d
    add d
    ld b, b
    xor [hl]
    ld b, e
    ld b, b
    inc b
    ld b, l
    nop
    ld d, d
    dec a
    push hl
    db $fc
    ld a, [hl+]
    xor a
    dec bc
    ld d, c
    ld e, [hl]
    ret nz

    ldh [$35], a
    ld b, l
    ld hl, $4904
    nop
    ld d, h
    ld a, d
    ld h, l
    ld a, [c]
    nop
    ld hl, $869f
    nop
    adc e
    nop
    ld b, h
    ld d, e
    ld [hl], $62
    inc bc
    ld h, [hl]
    inc a
    jp nz, Jump_000_0401

    ld b, h
    db $fc
    rst $00
    ld a, d
    ret


    ld [hl], e
    jp hl


    nop
    rst $00
    add b
    ei
    add d
    cp d
    ld h, d
    ld a, l
    add d
    ld l, d
    inc b
    ld a, d
    pop de
    or b
    ret


    db $fc
    ld hl, $019f
    sbc h
    jp z, $c1a3

    pop hl
    cp d
    ld h, c
    add h
    ld b, e

jr_062_606f:
    ld l, d
    inc bc
    ld a, [hl]
    dec h
    ld a, d
    ld l, c
    inc b
    or b
    ld l, b
    ld a, d
    ld [bc], a
    and c
    add b
    dec h
    pop bc
    pop hl
    cp d
    ld h, b
    ld a, [hl-]
    add b
    ld a, h
    ld h, h
    jr nz, jr_062_6101

    ld [hl], e
    ld b, e
    add sp, $00
    ld [c], a
    dec a
    ld b, c
    ld c, h
    jr nz, jr_062_60ca

    pop bc
    db $e3
    cp d
    ld h, c
    inc b
    db $fc
    ld b, c
    ld l, l
    nop
    and d
    ld a, d
    and c
    db $fc
    ld bc, $d780
    add d
    pop bc
    cp $03
    inc sp
    ld b, l
    ld a, [hl-]
    dec a
    ld h, c
    dec sp
    ld h, b
    ld l, [hl]
    ld b, b
    ld a, $21
    ld a, l
    ld b, $18
    ld h, d
    pop bc
    add b
    rst $10
    db $fc
    rlca
    ld b, h
    inc a

jr_062_60bb:
    ret nz

    db $e4
    cp [hl]
    and b
    ld a, a
    inc hl
    jr nz, jr_062_60bb

    add a
    db $10
    inc hl
    add b
    pop de
    inc e
    add e

jr_062_60ca:
    ld a, a
    add c
    ld b, d
    cp l
    ld b, d
    ret nz

    pop hl
    inc bc

jr_062_60d2:
    ld a, [hl-]
    ld b, l
    cp a
    inc b
    ld [hl], $82
    ld hl, sp+$65
    add b
    db $d3
    db $fc
    ld [bc], a
    ld b, e
    and c
    rlca
    xor [hl]
    ld b, l
    ld a, [hl-]
    cp l
    ld b, b
    add b
    ld [c], a
    ld a, a
    pop hl
    jr c, jr_062_606f

    ld a, h
    ld bc, $f870
    ld h, h
    add b
    call nc, $e420
    ld a, l
    pop bc
    add hl, sp
    ld l, [hl]
    ld l, a
    cp a
    ldh [$0b], a
    ld l, h
    ld [hl], b
    or a
    nop

jr_062_6101:
    ld b, e
    inc a
    and b
    rst $30
    ld h, l
    ld a, d
    inc h
    add b
    call nc, $8274
    add h
    ld a, [hl-]
    ld [hl+], a
    ld [hl], $bf
    ldh [$6c], a
    ld l, l
    ld l, [hl]
    ld a, e
    ret nz

    add c
    dec sp
    db $76
    jr nz, jr_062_60d2

    ld b, e
    ld a, d
    dec h
    nop
    cp h
    ld a, [hl]
    ld h, d
    dec sp
    ld b, c
    ld [hl], b
    nop
    pop bc
    pop hl
    ld [hl], h
    ld bc, $412a
    add d
    rst $20
    nop
    cp b
    ld a, d
    ld c, b
    dec sp
    ld b, e
    ld [hl], h

jr_062_6136:
    ld [bc], a
    jp nz, $c0bc

    xor a
    ld [hl], a

Jump_062_613c:
    jr nz, jr_062_6136

    ld b, a
    nop
    or [hl]
    ld hl, sp+$09
    xor [hl]
    scf
    rrca
    jr c, @+$3d

    dec [hl]
    dec sp
    ld a, a
    push hl
    add e
    jp nz, $107a

    or b
    ld l, c
    ld a, h
    ld hl, sp+$0b
    cp d
    and b
    ld b, e
    ld b, c
    ld b, e
    scf
    jr c, jr_062_61dc

    db $e3
    add b
    ld a, b

Jump_062_6160:
    inc bc
    db $76
    ld b, l
    nop
    or d
    ld a, d
    ld h, [hl]
    add c
    ld h, c
    ld c, h
    push bc
    jr nc, jr_062_616f

    inc a
    dec l

jr_062_616f:
    ld b, h
    ld a, [$9d81]
    sbc l
    db $76
    ld b, [hl]
    rst $18
    or a
    ld b, [hl]
    jr nc, jr_062_61c7

    db $10
    db $fc
    ld h, d
    ld bc, $8d61
    and e
    jr nc, jr_062_6188

    dec [hl]
    db $f4
    nop
    scf

jr_062_6188:
    ld h, c
    db $76
    ld b, d
    nop
    db $f4
    dec hl
    jr nc, jr_062_61dc

    db $fc
    and e
    add hl, sp
    inc h
    ld [hl], l
    add l
    add b
    ld [c], a
    ld sp, $bb02
    ret nz

    nop
    db $f4
    inc l

jr_062_619f:
    nop
    xor e
    db $fc
    and l
    dec a
    ld b, b
    dec sp
    ld b, d
    push af
    ld h, h
    ld [hl], l
    inc hl
    cp e
    call nz, $f460
    inc hl
    nop
    or l
    db $fc
    ld b, l
    rst $30
    add c
    cp h
    push hl
    ld b, l
    ccf
    ei
    add c
    rlca
    ld b, l
    ld b, c
    ld b, l
    or $64
    nop
    ldh [rP1], a

Jump_062_61c5:
    or h
    ld a, [hl]

jr_062_61c7:
    push bc
    db $fc
    ld hl, $f4c8
    add d
    ld [hl], $e5
    dec hl
    ld bc, $77a6
    and b
    ld [hl], d
    ld [bc], a
    jp c, $c0db

    add b
    rst $10
    ld a, d

jr_062_61dc:
    ld b, a
    ld a, d
    db $e3

jr_062_61df:
    or [hl]
    jr nz, jr_062_61df

    ld [hl+], a
    pop af
    ld b, b
    and a
    ld h, [hl]
    ld [bc], a
    ld [hl], $a0
    and c
    ld h, d
    push hl
    add b
    call nc, $a5fc
    db $76
    dec h
    di
    add b
    ld a, e
    ld hl, $b20a
    ld b, c
    and e
    or c
    ld b, b
    ld b, l
    db $f4
    inc hl
    dec a
    add a
    add b
    rst $08
    ld [hl], d
    inc c
    inc a
    add d
    push hl
    or d
    ld b, b
    ld l, h
    or a
    cp b
    ld b, h
    ld [hl-], a
    ld b, c
    ret c

    ld h, d
    ldh [rP1], a
    or b
    ld a, d
    ld h, l
    db $f4
    rlca
    scf
    jr nz, jr_062_619f

    db $e3
    cp c
    cp d
    and e
    rrca
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    add b
    pop hl
    db $fc
    ld b, d
    nop
    ld d, d
    ld a, d
    rlc b
    ld [hl], d
    ld h, d
    or a
    nop
    ld [hl-], a
    add [hl]
    pop bc
    pop hl
    cp h
    ld h, b
    ld e, [hl]
    ld hl, $7380
    ld a, d
    rlc b
    ld [hl], d
    ld h, d
    or [hl]
    and h
    pop af
    ld h, c
    pop bc
    ld [c], a
    db $fc
    ld b, h
    add b
    ret c

    ld a, d
    call z, $a4fb
    nop
    or b
    ld h, b
    ld b, e
    pop hl
    cp $81
    ld a, d
    dec bc
    nop
    xor h
    ld a, d
    call z, $a3f8
    ld [hl], d
    and d
    nop
    ld l, [hl]
    and c
    ld a, [hl]
    ld h, b
    db $f4
    inc bc
    add b
    sub $7a
    call z, $a7f8
    ld a, [hl]
    daa
    ld h, d
    and h
    nop
    add b
    sub $31
    add l
    ld [hl], d
    ld h, l
    ld [hl], d
    and a
    db $f4
    db $e3
    db $fc
    inc hl
    adc l
    and l
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
    ld hl, $0204
    ld bc, $051b
    ld [bc], a
    ld [bc], a
    daa
    dec b
    ld [bc], a
    inc bc
    inc h
    ld b, $02
    inc b
    add hl, de
    rlca
    ld [bc], a
    dec b
    dec d

Jump_062_62b6:
    add hl, bc

Jump_062_62b7:
    ld [bc], a
    ld b, $18
    add hl, bc
    ld [bc], a
    rlca
    ld [hl+], a
    add hl, bc
    ld [bc], a
    ld [$0a12], sp
    ld [bc], a
    add hl, bc
    dec h
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld e, $0b
    ld [bc], a
    dec bc
    jr nz, jr_062_62da

    ld [bc], a
    inc c
    inc d
    inc c
    ld [bc], a
    dec c
    db $10
    dec c
    ld [bc], a
    ld c, $1f

jr_062_62da:
    dec c
    ld [bc], a
    rrca
    inc h
    dec c
    ld [bc], a
    db $10
    ld [de], a
    ld c, $02
    ld de, $0e1d
    ld [bc], a
    ld [de], a
    dec de
    rrca
    ld [bc], a
    inc de
    ld [hl+], a
    rrca
    ld [bc], a
    inc d
    jr nz, jr_062_6303

    ld [bc], a
    dec d
    inc e
    ld de, $1602
    ld e, $12
    ld [bc], a
    rla

Jump_062_62fd:
    ld a, [de]
    inc de
    ld [bc], a
    jr jr_062_631f

    dec d

jr_062_6303:
    ld [bc], a
    add hl, de
    ld de, $0216
    ld a, [de]
    dec de
    rla
    ld [bc], a
    dec de
    dec d
    jr @+$04

    inc e
    ld e, $18
    ld [bc], a
    dec e
    inc de
    add hl, de
    ld [bc], a
    ld e, $20
    add hl, de
    ld [bc], a
    rra
    rla
    dec de

jr_062_631f:
    ld [bc], a
    jr nz, @+$1e

    dec de
    ld [bc], a
    ld hl, $1c22
    ld [bc], a
    ld [hl+], a
    ld e, $1d
    ld [bc], a
    inc hl
    jr nz, jr_062_634e

    ld [bc], a
    inc h
    jr jr_062_6353

    ld [bc], a
    dec h
    ld [hl+], a
    jr nz, jr_062_633a

    ld h, $1f

jr_062_633a:
    ld hl, $2702
    ld d, $22
    ld [bc], a
    jr z, jr_062_6362

    inc hl
    ld [bc], a
    add hl, hl
    ld [de], a
    inc h
    ld [bc], a
    ld a, [hl+]
    inc d
    ld h, $02
    dec hl
    ld [hl+], a

jr_062_634e:
    ld h, $02
    inc l
    dec h
    daa

jr_062_6353:
    ld [bc], a
    dec l
    ld a, [hl+]
    jr z, jr_062_635a

    ld l, $15

jr_062_635a:
    ld a, [hl+]
    ld [bc], a
    cpl
    inc h
    ld a, [hl+]
    ld [bc], a
    jr nc, jr_062_6389

jr_062_6362:
    dec l
    ld [bc], a
    ld sp, $2f1a
    ld [bc], a
    ld [hl-], a
    jr jr_062_639c

    ld [bc], a
    inc sp
    dec e
    ld [hl-], a
    ld [bc], a
    inc [hl]
    add hl, hl
    ld [hl-], a
    ld [bc], a
    dec [hl]
    inc hl
    scf
    ld [bc], a
    ld [hl], $21

Jump_062_637a:
    add hl, sp
    rst $38
    rst $38
    rst $38
    add [hl]
    ld h, e
    dec d
    ld h, [hl]
    ld c, l
    ld l, c
    ld l, b
    ld l, c
    ccf
    ld c, $0e

jr_062_6389:
    dec c
    dec c
    dec c
    ld c, $fa
    rst $38
    db $f4
    push af
    nop
    db $dd
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    db $f4

jr_062_639c:
    ld e, e
    rst $38
    ld_long a, $fffc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $fa
    ld e, e
    rst $38
    add b
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [de]
    add b
    rst $18
    ld c, $4b
    ldh [rKEY1], a
    ld c, l
    ld h, [hl]
    db $e3
    db $fc
    db $eb
    add b
    rst $18
    add b
    sub d
    push hl
    ret nz

    pop hl
    cp h
    db $ed
    xor h
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    sbc $4d
    nop
    ld b, d
    di
    ld a, [hl+]
    pop hl
    add b
    rst $18
    dec b
    ldh [$58], a
    ld [$c5fa], a
    ld d, h
    and h
    ld [hl], e
    rst $38
    inc b
    add d
    db $ec
    ld [hl], d
    pop hl
    dec l
    rst $30
    and d
    db $fc
    jp nz, $df80

    sbc e
    and $80
    jp Jump_062_6d0f


    ld l, e
    ld l, e
    ld l, e
    cp a
    pop hl
    sub h
    xor b
    add b
    sbc $42
    jp $826a


    and b
    ld l, l
    pop bc
    ldh [$0d], a
    cp $e0
    ld c, l
    dec l
    ld a, h
    ldh [$8c], a
    inc [hl]
    db $ed
    xor d
    rst $18
    ld l, l
    dec c
    add e
    ldh [$3b], a
    and b
    ld a, [$4de1]
    ld bc, $802d
    rst $18
    add b
    push bc
    call nz, $84a4
    ldh [$83], a
    pop hl
    cp e
    pop hl
    cp d
    ldh [rSVBK], a
    ld a, [hl]
    ld [c], a
    add sp, -$5d
    add b
    rst $18
    add sp, $62
    ld l, e
    dec c
    ld c, e
    ld b, e
    ldh [rNR41], a
    pop bc
    db $e3
    dec sp
    ld [c], a
    and d
    and [hl]
    add b
    call c, $e600
    ld c, e
    push bc
    db $e4
    ld a, h
    ld [c], a
    pop bc
    dec c
    cp d
    jp nz, $a266

    add b
    rst $18
    ld [bc], a
    db $e3
    nop
    ldh [$2b], a
    dec bc
    ld bc, $fa0b
    jp nz, $c0f8

    cp $c9
    add b
    ld a, h
    add h
    jp nz, $e249

    ret nz

    ldh [$37], a
    dec bc
    dec hl
    dec bc
    rst $30
    pop bc
    dec c
    ld l, l
    db $fc
    sbc a
    xor h
    ld l, d
    sbc $88
    db $e3
    dec bc
    dec bc
    ld l, e
    ld c, e
    ld a, l
    ldh [$0d], a
    ld l, e
    or b
    ld a, $c1
    add b
    rst $18
    nop
    and a

Call_062_6484:
    add $c3
    dec hl
    ld c, e
    ei
    ret nz

    ld a, [bc]
    inc bc
    dec bc
    dec hl
    ret nz

    pop hl
    ld l, $82
    nop
    cp a
    ld e, h
    ld [c], a
    ld c, e
    and b
    ld c, b
    pop bc
    ld a, $81
    ldh [$2b], a
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld c, e
    add b
    ld a, [$b100]
    inc a
    rst $08
    and b
    ld [$0bc2], sp
    dec bc
    ld c, e
    ld c, e
    ld a, b
    pop bc
    ld [hl], e
    and c
    or b
    nop
    cp a
    add b
    ret


    cp a
    ldh [rLY], a
    and c
    dec bc
    dec hl
    cp c
    and c
    ld c, e
    jr nc, @-$3c

    pop bc
    nop
    cp a
    nop
    xor d
    adc b
    add c
    ld l, e
    ld l, e
    add c
    ldh [$fc], a
    add b
    ld bc, $822b
    and l
    nop
    cp a
    ld l, b
    daa
    db $fc
    jp $a07b


    ld a, [$4280]
    pop hl
    ld c, b
    ld d, d
    ld h, $00
    ld e, e
    ret nz

    ld b, [hl]
    dec c
    sub b
    ld h, c
    ld sp, hl
    jp $c26d


    ld b, e
    nop
    add b
    ld a, a
    sub d
    ld l, d
    ld a, [hl]
    ld b, c
    ld c, h
    ld h, c
    pop bc
    ld [c], a
    add b
    ld a, a
    rst $18
    add $3e
    ld c, d
    nop
    cp $e5
    nop
    ld h, d
    add b
    rst $18
    sbc e
    xor $fe
    ld c, c
    ld a, [c]
    ld b, [hl]
    nop
    ld e, a
    ld a, [hl]
    ld d, d
    nop
    add d
    rst $18
    add h
    di
    ret z

    ei
    nop
    ld d, a
    add c
    ld b, [hl]
    ld l, d
    rst $00
    nop
    cp a
    ld e, h
    add [hl]
    ld [bc], a
    add d
    ld b, b
    dec hl
    rst $38
    ldh [$3f], a
    ld b, b
    ld a, $43
    rst $38
    rst $38
    ret nz

    dec h
    ld a, [hl]
    ld b, l
    rlca
    dec hl
    dec c
    dec hl
    ld a, a
    add c
    ld [hl], l
    and d
    add d
    add l

Call_062_653c:
    add b
    rst $18
    cp h
    ld h, a
    add hl, de
    dec hl
    ret nz

    add b
    cp a
    ld h, b
    dec c
    dec hl
    ld b, b
    ld b, d
    nop
    cp a
    nop
    ld c, e
    add c
    ld l, l
    add e
    ld h, c
    cp a
    pop hl
    ld a, a
    ld h, b
    ld b, b
    ld b, c
    nop
    cp a
    ld b, $2b
    dec hl
    add d
    ret nz

    add sp, $2b
    nop
    ld b, h
    nop
    cp a
    nop
    rst $20
    ret nz

    pop hl
    rst $38
    ld h, b
    dec l
    db $10
    db $fd
    ld b, b
    ld b, b
    add b
    nop
    cp a
    nop
    ld c, h
    ld l, l
    jp Jump_000_3d42


    db $e3
    add b
    add h
    inc c
    ld a, e
    jr c, jr_062_6580

jr_062_6580:
    ld c, a
    ld c, e
    dec c
    jp nz, Jump_062_7fc3

    ld b, b
    inc b
    ld b, l
    dec sp
    ld sp, $802e
    dec d
    ld c, l
    dec l
    dec hl
    cp a
    jr nz, @+$0d

    db $fd
    ld b, b
    call nz, $0021
    nop
    cp a
    nop
    xor [hl]
    cp a
    ldh [$bd], a
    ld b, d
    ld b, d
    ld h, h
    add d
    rst $18
    cp d
    adc [hl]
    pop bc
    ld h, c
    ld bc, $ba2b
    and c
    add d
    ld h, l
    nop
    cp a
    inc d
    xor d
    ei
    ld b, e
    pop bc
    pop hl
    ld e, l
    ld h, d
    ld bc, $3c2d
    nop
    add b
    ld a, [hl]
    inc l
    ld a, [hl+]
    inc a
    ld h, e
    add d
    ld h, l
    rst $38
    rst $38
    di
    ld b, l
    nop
    ld a, [hl]
    jp hl


    add d
    adc c
    add b
    rst $18
    dec de
    ld l, l
    ld [bc], a
    adc [hl]
    nop
    cp a
    inc b
    ld h, d
    db $fc
    pop af
    nop
    rst $38
    rst $38
    ret nz

    db $eb
    rst $38
    rst $38
    ld l, l
    push af
    cp e
    push bc
    nop
    ld l, d
    sub $f4
    nop
    ld a, a
    nop
    ld a, [hl]
    rst $38
    db $f4
    add hl, sp
    add [hl]
    ld [hl], a
    add b
    push de
    ld l, [hl]
    ld [hl], h
    add hl, de
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $18
    nop
    ld a, [$80ff]
    inc b
    nop
    nop
    nop
    ccf
    db $dd
    sbc $a0
    and b
    and b
    call c, $fffa
    db $f4
    push af
    ccf
    ld [c], a
    db $e3
    db $e4
    rst $18
    ldh [$e1], a
    ld a, [$f4ff]
    push af
    ccf
    add sp, -$17
    ld [$e6e5], a
    rst $20
    ld a, [$f4ff]
    push af
    nop
    ld e, e
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    add b
    rst $18
    ldh [rHDMA5], a
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld c, a
    db $e3
    sub $d7
    and b
    ld a, b
    db $fc
    ld a, [c]
    add b
    rst $18
    ld c, a
    db $e3
    ret c

    reti


    and b
    and b
    db $fc
    pop af
    cp h
    add b
    rst $18
    ld c, a
    db $e3
    jp c, $d6db

    rst $10
    db $fc
    db $e3
    ret nc

    dec c
    pop de
    db $fc
    rst $20
    sub $d7
    add b
    rst $18
    sub d
    jp nz, $c089

    ld a, [hl]
    push hl
    inc hl
    jp nc, $fcd3

    rst $20
    ld l, d
    pop hl
    add b
    rst $18
    db $e4
    ld c, e
    ret nz

    add [hl]
    rst $20
    rrca
    call nc, $a0d5
    and b
    db $fc
    db $e3
    ld a, [hl]
    db $e3
    dec a
    pop af
    sbc [hl]
    call z, $827c
    db $e4
    add [hl]
    push hl
    sbc a
    sbc l
    sbc l
    sbc l
    sbc a
    rst $30
    and b
    ldh a, [$7e]
    db $e4
    add b
    rst $18
    rst $08
    and b
    add [hl]
    add sp, -$61
    sbc h
    ld b, [hl]
    ld b, [hl]
    inc bc
    ld b, [hl]
    sbc h
    cp a
    ldh [$7e], a
    and $80
    rst $18
    dec a
    ldh [$08], a
    pop hl
    add h
    pop hl
    ld l, a
    and d
    sbc h
    ld b, [hl]
    xor [hl]
    cp $e0
    sbc h
    and d
    ld a, h
    ldh [$4c], a
    db $fc
    push bc
    add b
    rst $18
    sub $d7
    db $10
    pop hl
    add h
    ldh [$ae], a
    add e
    ldh [rPCM34], a
    xor a
    xor [hl]
    xor a
    ld a, l
    ldh [$ae], a
    sbc h
    sbc a
    db $fc
    push bc
    ld [$df80], sp
    add [hl]
    jp $e045


    xor a
    add e
    pop hl
    pop bc
    pop hl
    cp d
    ldh [$3b], a
    ldh [$08], a
    ld a, d
    db $d3
    add b
    rst $08
    add [hl]
    jp $c49e


    ld [c], a
    cp l
    ldh [$81], a
    pop hl
    cp d
    ldh [rNR41], a
    ld a, [hl]
    pop hl
    add sp, -$5d
    or a
    xor e
    add b
    rst $08
    ld [$a1c3], sp
    ld b, a
    ld [c], a
    add c
    ldh [$84], a
    ld a, [hl-]
    ldh [$3d], a
    ld [c], a
    sbc [hl]
    ld l, d
    and [hl]
    nop
    cp [hl]
    add [hl]
    jp nz, $e2c6

    ld b, l
    ld a, e
    ld b, e
    ld b, c
    nop
    ld [c], a
    ld b, [hl]
    xor [hl]
    xor a
    and c
    ld a, d
    and e
    jp $dbda


    nop
    cp a
    ld [$c3c0], sp
    pop bc
    add h
    ldh [$2d], a
    ld h, $ef
    ld l, $bd
    dec hl
    ld b, l
    cp h
    ret nz

    xor a
    sbc h
    sbc a
    ret c

    ld a, d
    and e
    add b
    rst $18
    ld [$9ea1], sp
    xor [hl]
    ld b, $e2
    xor a
    dec l
    ld e, a
    jr nz, jr_062_6774

    cp [hl]
    ld l, $44
    dec sp
    pop hl
    sbc [hl]
    db $76
    and b
    add sp, -$18
    add c
    add b
    rst $18
    ld [$a1a1], sp
    ld c, b
    jp Jump_000_3946


    ld hl, $261f
    inc l
    cp l
    ld c, c
    ld b, h
    ld a, d
    ret nz

    ld bc, $6ae0

jr_062_6774:
    add c
    ldh a, [rP1]
    cp a
    nop
    ld [c], a
    ld bc, $47e1
    pop bc
    ld a, $35
    inc a
    ld c, d
    rlca
    ld e, l
    ld d, d
    ld b, l
    add b
    ld [c], a
    ld [hl], d
    add c
    nop
    cp a
    sub [hl]
    add h
    ld b, [hl]
    and d
    rst $38
    ld b, [hl]
    xor [hl]
    ld a, $35
    ld a, [hl-]
    ld b, e
    xor [hl]
    ld b, l
    ret nz

    cp c
    and b
    nop
    jp $bf00


    nop
    and h
    cp a
    ld [c], a
    jp Jump_000_39a0


    dec [hl]
    dec c
    ld a, $fc
    and d
    sbc h
    sbc a
    ld [hl], d
    add c
    nop
    cp a
    nop
    xor b
    ld a, $c0
    ld e, a
    xor [hl]
    ld b, [hl]
    ld b, l
    ld [hl], $39
    ld a, l
    and d
    and c
    nop
    cp a
    inc e
    nop
    xor l
    db $fd
    and d
    ld b, [hl]
    ld b, l
    ld b, l
    nop
    and c
    ld a, l
    add b
    add d
    and e
    ld sp, $3da0
    xor $00
    or l
    ld a, a
    add d
    sbc l
    sbc l
    ld sp, hl
    jp nz, $813e

    nop
    ld a, [hl]
    ld h, h
    nop
    ld e, [hl]
    nop
    and c
    ld a, [hl]
    push hl
    ld a, d
    add c
    cp a
    ld h, b
    cp [hl]
    ld h, d
    db $f4
    ld b, c
    nop
    add b
    ld a, a
    nop
    and e
    inc b
    ld l, c
    cp $e5
    db $ec
    ld h, d
    add b
    rst $18
    nop
    ld b, d
    ld a, [hl]
    push hl
    nop

Jump_062_6800:
    ld a, d
    and $04
    ret nz

    add d
    jp Jump_000_21e4


    nop
    cp a
    add d
    ld c, a
    ld a, [hl]
    ld b, l
    nop
    cp a
    ld h, b
    nop
    ld b, l
    add d
    ld c, c
    ld a, [hl]
    ld b, a
    nop
    cp a
    ld a, [hl]
    ret


    sbc a
    and d
    add c
    ld b, h
    ldh a, [$7e]
    ld b, a
    nop
    cp a
    nop
    ld b, h
    add d
    ld b, l
    ld b, [hl]
    sbc h
    sbc l
    and d
    nop
    ld a, $41
    add d
    ld h, e
    add b
    rst $18
    nop
    ret z

    dec a
    ld h, c
    ld b, c
    ld h, d
    nop
    add $80
    rst $18
    ld hl, sp+$00
    ld b, d
    ld a, [hl]
    ld h, d
    inc bc
    ld b, b
    ld b, l
    xor a
    ld b, c
    ld b, e
    ld b, e
    add e
    ld b, c
    ld b, e
    inc bc
    ld h, c
    add d
    add d
    nop
    cp a
    dec a
    inc hl
    ld a, [hl]
    add h
    ld b, l
    ld l, a
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    ld b, l
    ld b, b
    ld b, b
    ld hl, sp+$00
    cp a
    nop
    ld b, a
    ld a, [hl]
    add d
    and c
    ld b, [hl]
    ld b, h
    inc a
    and h
    dec l
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    ld a, a
    ld h, b
    sbc [hl]
    nop
    cp a
    nop
    xor h
    rst $38
    sbc [hl]
    ld b, [hl]
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
    inc a
    ld [hl+], a
    nop
    cp a
    nop
    ld b, l
    ld a, [hl]
    ld h, e
    dec b
    xor [hl]
    ret nz

    ldh [$35], a
    rst $38
    ldh [$c0], a
    ldh [rP1], a
    db $e4
    nop
    cp a
    nop
    and a
    db $dd
    sbc [hl]
    ld b, l
    jr nz, jr_062_68e1

    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    inc sp
    xor [hl]
    and c

Jump_062_68ae:
    nop
    cp a
    nop
    xor e
    ret nc

    pop de
    ld b, b
    ld hl, $c5c0
    add e
    xor a
    sbc [hl]
    nop
    cp a
    nop
    xor e
    inc b
    and b
    ld b, h
    nop
    jp nz, Jump_062_4320

    rrca
    ld b, e
    xor [hl]
    ld b, e
    ld b, l
    add d
    rst $00
    nop
    cp a
    nop
    and e
    add d
    add c
    nop
    pop bc
    ld h, e
    add b
    nop
    add d
    ld h, [hl]
    nop
    cp a
    nop
    xor e
    inc a
    ld h, e
    add d

jr_062_68e1:
    ld h, a
    nop
    cp a
    nop
    nop
    and l
    db $fc
    ld b, l
    add b
    ld h, c
    add d
    ld h, l
    nop
    cp a
    nop
    and a
    ld a, [hl]
    rst $20
    add d
    adc d
    nop
    add b
    rst $18
    nop
    and h
    db $fc
    ld c, d
    add d
    ld h, h
    add [hl]
    dec c
    nop
    cp e
    ld a, [hl]
    ld l, l
    add [hl]
    rst $08
    nop
    add b
    ld [hl], l
    ld a, [hl]
    ld b, c
    ld a, d
    ld b, l
    db $fc
    rst $20
    add [hl]
    rst $08
    nop
    ld d, h
    db $f4
    ld h, $f8
    ld b, l
    nop
    add [hl]
    push de
    nop
    ld d, e
    or c
    ld b, a
    ld a, d
    db $e3
    ldh a, [rNR44]
    add [hl]
    pop de
    add b
    ld [hl], d
    db $f4
    ld l, $00
    add [hl]
    ld [hl], a
    add b
    dec d
    ld l, [hl]
    ld de, $f7dc
    ld b, e
    db $f4
    ld a, [$00ff]
    ld d, [hl]
    ld a, [$00ff]
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    call c, $fffa
    add b
    rst $18
    ld a, [$00fe]
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
    rra
    ld de, $0102
    ld hl, $0211
    ld [bc], a
    dec de
    ld [de], a
    ld [bc], a
    inc bc
    jr nz, @+$14

    ld [bc], a
    inc b
    dec h
    ld [de], a
    ld [bc], a
    dec b
    inc e
    inc de
    ld [bc], a
    ld b, $1e
    inc de
    ld [bc], a
    rlca
    ld h, $13
    ld [bc], a
    ld [$141a], sp
    ld [bc], a
    add hl, bc
    rra
    inc d
    ld [bc], a
    ld a, [bc]
    inc h
    inc d
    ld [bc], a
    dec bc
    add hl, de
    dec d
    ld [bc], a
    inc c
    ld hl, $0215
    dec c
    jr z, jr_062_69b5

    ld [bc], a
    ld c, $1b
    ld d, $02
    rrca
    dec h
    ld d, $02
    db $10
    daa
    ld d, $02
    ld de, $1718
    ld [bc], a
    ld [de], a
    dec e
    rla
    ld [bc], a

jr_062_69b5:
    inc de
    inc h
    rla
    ld [bc], a
    inc d
    rla
    jr jr_062_69bf

    dec d
    add hl, de

jr_062_69bf:
    jr jr_062_69c3

    ld d, $26

jr_062_69c3:
    jr @+$04

    rla
    jr jr_062_69e1

    ld [bc], a
    jr jr_062_69f1

    ld a, [de]
    ld [bc], a
    add hl, de
    dec e
    dec de
    ld [bc], a
    ld a, [de]
    ld [hl+], a
    dec de
    ld [bc], a
    dec de
    dec de
    inc e
    ld [bc], a
    inc e
    inc hl
    inc e
    ld [bc], a

jr_062_69dd:
    dec e
    inc e
    dec e
    ld [bc], a

jr_062_69e1:
    ld e, $21
    dec e
    ld [bc], a
    rra
    dec e
    daa
    ld [bc], a
    jr nz, jr_062_6a0e

    daa
    ld [bc], a
    ld hl, $2925
    ld [bc], a

jr_062_69f1:
    ld [hl+], a
    ld a, [de]
    inc l
    ld [bc], a
    inc hl
    dec de
    dec l
    ld [bc], a
    inc h
    inc h
    dec l
    ld [bc], a
    dec h
    ld hl, $022f
    ld h, $20
    jr nc, @+$01

    rst $38
    rst $38
    rrca
    ld l, d
    adc d
    ld l, l
    db $e4
    ld [hl], c
    rst $38

jr_062_6a0e:
    ld [hl], c
    cp a
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $fa
    rst $20
    ld c, $07
    ld c, $4d
    ld c, l
    ld hl, sp-$1d
    db $fc
    ld a, [c]
    sub $e8
    ret nc

    push hl
    cp $ea
    nop
    call nz, $eee0
    push hl
    cp h
    db $ed
    rst $38
    rst $38
    ret nz

    pop hl
    add d
    pop hl
    ld a, [hl]
    db $e3
    cp $ed
    jr nc, jr_062_69dd

    ld [$ea9a], a
    dec a
    db $eb
    add d
    push hl
    dec c
    dec c
    or e
    ldh [$fd], a
    push hl
    pop bc
    dec l
    ld d, [hl]
    db $e3
    cp b
    db $e3
    dec c
    ld [$f07d], a
    add d
    db $e3
    ld l, l
    dec c
    ld b, c
    dec bc
    rst $38
    db $e4
    rst $30
    ldh [$bf], a
    pop hl
    jr c, @+$01

    ld l, b
    jp hl


    ld l, l
    xor b
    ret nz

    adc h
    add $e1
    ret nz

    db $e3
    dec bc
    dec l
    add $f6
    add b
    res 0, d
    add $0b
    ld b, $fe
    jp nz, Jump_000_2b2b

    ld a, e
    db $e4
    ret nz

    pop hl
    add sp, -$3a
    add b
    rst $10
    ld [hl], b
    add $7e
    ret nz

    db $e3
    dec bc
    ld c, d
    ld c, d
    dec bc
    ld a, [bc]
    ld a, [hl+]
    ccf
    pop hl
    add sp, -$80
    rst $20
    dec a
    ld a, [$c604]
    ld l, l
    add b
    ld [c], a
    dec hl
    ld a, [bc]
    ld a, [bc]
    rrca
    dec bc
    ld a, [bc]
    ld c, d
    ld c, d
    ret nz

    ld [c], a
    db $e4
    and [hl]
    add b
    db $db
    inc b
    call nz, $c9fe
    jp nz, Jump_062_6b0d

    ld a, [bc]
    ld a, [hl+]
    ld l, e
    dec hl
    ld c, d
    add hl, bc
    ld a, [bc]
    nop
    db $ed
    add b
    call nc, $860d
    and [hl]
    ret nz

    ld [c], a
    add c
    ret nz

    ld [bc], a
    pop hl
    ld b, a
    ld l, e
    ld l, e
    ld c, e
    ret nz

    call nz, $df82
    inc b
    add $6d
    adc d
    jp $c236


    ret nz

    ld c, e
    ld c, e
    ld a, d
    jp nz, $2d4d

    add b
    sbc $86
    xor b
    jr nz, @+$06

    ret nz

    ld b, d
    ret nz

    jp nz, $fee1

    ldh [rP1], a
    pop bc
    dec c
    cp $a1
    db $e4
    add c
    ld d, b
    add b
    sub $46
    and d
    add d
    push hl
    dec b
    jp nz, $842b

    ldh [rOCPD], a
    add c
    ldh [rP1], a
    cp l
    and h
    cp $a3
    adc e
    or h
    ld b, $a2
    add [hl]
    and [hl]
    ld b, h
    push hl
    ld b, e
    pop hl
    cp a
    and l
    ld bc, $7e0d
    and l

Jump_062_6b0d:
    add b
    rst $10
    add h
    ret z

    add $c2
    ld b, c
    pop hl
    ld a, c
    jp nz, $c171

    nop
    ret nz

    ldh [$50], a
    rst $10

jr_062_6b1e:
    inc b
    xor e
    ret nz

    and $43
    pop hl
    ld [hl], a
    add h
    ld a, [hl]
    and a
    add d
    rst $18
    nop
    ld b, $c1
    ret nz

    db $e3
    jp $c081


    db $e4
    add b
    db $e4
    nop
    cp b
    jr nz, jr_062_6b1e

    dec b
    add e
    ld bc, $074b
    ret nz

    add d
    and b
    ld b, d
    pop bc
    ret nz

    push hl
    ldh [$e6], a
    add b
    ld [hl], c
    ld [hl-], a
    add [hl]
    cp $86
    add d
    dec c
    dec c
    ld l, e
    dec bc
    ld c, e
    ld a, [bc]
    ld a, [hl+]
    nop
    ret nz

    ldh [$bf], a
    add c
    ld [hl], a
    add d
    ld a, [hl]
    add l
    ld a, c
    ld sp, hl
    inc b
    ld h, d
    add $83
    inc bc
    add b
    pop bc
    ld a, [bc]
    ld [bc], a
    and b
    rst $38
    rst $20
    ld a, [hl]
    add [hl]
    add b
    db $dd
    sub c
    db $e3
    dec hl
    dec bc
    ld b, $07
    and b
    ld a, [bc]
    ld l, e
    rst $38
    ld h, [hl]
    cp $69
    nop
    or l
    inc b

Call_062_6b80:
    and e
    dec b
    and [hl]
    ld d, a
    dec hl

jr_062_6b85:
    ld a, [bc]
    ld l, d
    ret nz

    pop hl
    dec hl
    ld [hl], h
    and c
    dec bc
    xor a
    ld h, d
    ld [$df82], sp
    add b
    db $e3
    push bc
    add h
    dec hl
    ld b, b
    ld [c], a
    cp l
    ld h, b
    db $76
    ld h, b
    ld [hl], b
    ld h, b
    inc b
    nop
    cp a
    add d
    ld b, d
    dec l
    cp a
    and a
    add l
    ldh [$b5], a
    and h
    nop
    add l
    nop
    cp a
    ld b, d
    ld b, h
    add h
    ld l, e
    dec b
    and $fd
    add d
    add d
    add $00
    cp a
    ld c, l
    adc b
    ld b, e
    jr nc, jr_062_6b85

    jp $a43b


    nop
    ld l, c
    nop
    cp l
    ld c, l
    dec l
    ld c, l
    ld b, d
    add $45
    nop
    cp [hl]
    ld b, e
    add b
    rst $20
    nop
    cp a
    cp a
    ldh [rLY], a
    ld b, b
    ccf
    db $e4
    or [hl]
    add e
    add d
    call nz, Call_062_7e00
    rst $18
    ld a, [hl]
    push hl
    jp Jump_000_3f20


    db $e4
    cp e
    add d
    add d
    sub $80
    ld l, c
    inc b
    jr z, jr_062_6c00

    dec a
    add a
    ld a, a
    ld h, d
    inc b
    jp Jump_000_0166


    dec l
    ld [hl], a
    inc hl
    add b
    ld a, b
    ld [bc], a
    ld b, e
    nop

jr_062_6c00:
    db $fd
    ld h, [hl]
    jp nz, Jump_000_0241

    inc h
    ld d, h
    inc bc
    rst $30
    ld d, h
    add d
    ld h, h
    add d
    dec h
    ld b, b
    ld h, d
    add b
    pop bc
    db $e4
    ret nz

    db $e3
    add d
    db $e3
    ret nz

    db $ed
    add [hl]
    rrca
    add d
    dec h
    ccf
    ld h, [hl]
    dec c
    ld bc, $840b
    ld c, l
    nop
    cp b
    nop
    push hl
    adc b
    and h
    ld b, d
    add e
    ld b, h
    ld b, b
    dec bc
    pop hl
    inc bc
    ld l, l
    ld l, l
    add h
    rst $18
    xor [hl]
    inc b
    ld b, l
    dec b
    inc bc
    call nz, Call_000_3cd2
    add b
    ld h, h
    nop
    sbc [hl]
    ld [$ebc0], sp
    inc b
    ld b, h
    sbc l
    ld b, e
    add b
    ld a, l
    jp nz, $ff03

    db $eb
    inc b
    ld [hl], l
    nop
    ld a, c
    db $eb
    add d
    add $c1
    db $e3
    rst $38
    add h

jr_062_6c59:
    ld [hl], l
    ld h, c
    inc b
    ld b, h
    inc d
    ld [hl-], a
    add b
    rst $08
    nop
    cp [hl]
    ld h, h
    ret z

    ld [bc], a
    jp $8463


    ld b, l
    jp Jump_000_00ac


    or h
    jp nz, Jump_062_7fc5

    call nz, $f400
    ld b, b
    jp nz, Jump_000_0001

    push bc
    scf
    rst $38
    ld [bc], a
    pop hl
    ld a, $25
    ld a, d
    add h
    add d
    inc b
    nop
    ret nz

    pop af
    nop
    ld c, a
    dec c
    dec h
    ret nz

    jp hl


    inc b
    daa
    nop
    ld e, [hl]
    ld bc, $4080
    rst $20

jr_062_6c94:
    jr nz, jr_062_6c94

    inc bc
    cp $a3
    ld a, e
    jp c, Jump_062_4700

    ret nz

    push hl
    dec hl
    cp [hl]
    ld h, b
    ld b, c
    ld [bc], a
    nop
    ret nz

    db $e3
    inc b
    ld h, b
    add b
    rst $18
    add b
    jp hl


    add c
    push hl
    ld a, [hl]
    and [hl]
    jp nz, $8081

    reti


    nop
    jr nz, jr_062_6c59

    ld [hl+], a
    add b
    ld b, b
    pop hl
    pop bc
    call nz, Call_062_653c
    ld b, d
    ld b, e
    add d
    rst $18
    add d
    ld h, [hl]
    nop
    ld b, b
    ld hl, $407e
    add l
    ld b, d
    add b
    cp h
    nop
    ld c, l
    add d
    add h
    ld a, [hl]
    ld b, d
    ld b, c
    and $00
    nop
    cp a
    add b
    ld l, b
    add d
    add l
    ret nz

    db $e4
    add h
    ld [$f842], sp
    nop
    ld b, h
    ld a, [hl]
    inc bc
    nop
    add e
    jp $a47b


    ld b, e
    inc hl
    nop
    pop hl
    add b
    rst $18
    ld [bc], a
    ld h, [hl]
    ld [bc], a
    ld c, d
    nop
    ld h, [hl]
    nop
    ld b, e
    inc l
    nop
    ld c, [hl]
    ld a, [hl]
    rlca
    ret nz

    rst $28
    ldh [rLYC], a
    or h
    ld a, e
    ld [hl], l
    ld b, d
    ld a, a
    jr nz, jr_062_6d0b

jr_062_6d0b:
    ret z

    add e
    ld [hl], l
    and h

Jump_062_6d0f:
    ld a, [bc]
    and [hl]
    ret nz

    ld sp, $cbb0
    db $fc
    inc bc
    ld b, d
    daa
    ld b, b
    ld h, l
    nop
    inc b
    daa
    add b
    call nc, $a43a
    ld a, [hl]
    dec b
    nop
    db $eb
    db $e3
    add sp, -$40
    cp a
    add c
    ld [hl+], a
    ld [hl], a
    dec c
    ld c, e
    ld l, e
    dec a
    ld bc, $6b6b
    ld c, e
    pop bc
    ld h, d
    ret nc

    add d
    add [hl]
    add b
    reti


    sbc d
    rst $00
    call z, Call_062_6b80
    rst $38
    db $e3
    ld c, e
    dec hl
    nop
    add d
    add [hl]
    ld b, e
    adc a
    add b
    inc c
    nop
    ld h, $3e
    ld bc, $6406
    add e
    inc bc
    nop
    db $e3
    nop
    cp l
    cp a
    di
    ld b, $fc
    ld h, d
    ld a, b
    and h
    ld b, h
    nop
    nop
    ld e, a
    or b
    rlca
    ld a, [hl]
    db $e3
    nop
    ld [hl], b
    ld h, e
    db $f4
    ld [hl+], a
    add e
    ld bc, $6466
    add b
    sbc $fc
    add a
    or [hl]
    dec b
    xor [hl]
    inc b
    nop
    add b
    rst $18
    ld a, d
    db $10
    cp h
    add sp, -$7e
    dec h
    add b
    sbc $9b
    ei
    nop
    ld c, [hl]
    nop
    nop
    nop
    cp a
    db $dd
    sbc $a0
    and b
    and b
    call c, $e7fa
    ret c

    dec c
    reti


    db $fc
    db $e3
    jp nc, $fcd3

    rst $28
    db $e4
    ldh [$d6], a
    add sp, -$36
    db $e3
    cp a
    ld [c], a
    db $e3
    db $e4
    rst $18
    ldh [$e1], a
    ld a, [$a0e6]
    rst $38
    jp c, $d6db

    rst $10
    jp c, $d0db

    pop de
    rst $28
    call nc, $a0d5
    and b
    db $fc
    db $eb
    ret nc

    pop de
    jp c, $dbf9

    sub $e8
    jp z, $e8e4

    jp hl


    ld [$e6e5], a
    ld bc, $fae7
    and $73
    ldh [$82], a
    push hl
    cp $ed
    ld l, [hl]
    ldh [$d6], a
    jp hl


    jp z, Jump_062_70e4

    ld b, e
    ld [$e237], a
    ld a, [hl]
    pop hl
    add d
    pop hl
    sbc a
    and d
    sbc l
    rst $38
    rst $20
    dec c
    sbc a
    ld [hl], d
    pop hl
    sub $d7
    xor d
    pop hl
    dec a
    db $eb
    ld [hl], e
    ld [$e33d], a
    ld a, $fc
    jp nz, $9fa0

    sbc h
    xor [hl]
    ld b, [hl]
    rst $38
    db $e4
    rst $30
    ldh [$81], a
    sbc h
    cp a
    ldh [$e4], a
    jp nz, $edd0

    ld l, l
    rst $28
    nop
    db $e3
    pop bc
    ldh [$af], a
    ld l, c
    xor [hl]
    add $e1
    cp e
    ldh [$af], a
    or a
    ldh [$a1], a
    and b
    nop
    pop hl
    db $e3
    sub $d7
    dec a
    db $ed
    add b
    call $c582
    sbc [hl]
    ld b, [hl]
    xor a
    ld l, $bf
    ldh [$af], a
    ld b, l
    ld b, e
    ld a, e
    db $e4
    sbc [hl]
    ld a, [hl]
    push bc
    dec a
    db $ec
    db $ec
    add b
    call $c582
    sbc [hl]
    ld b, [hl]
    pop bc
    pop hl
    ld b, [hl]
    ld d, c
    ld d, [hl]
    cpl
    ld b, l
    ld c, b
    ld c, b
    ld b, l
    ld [hl], $e0
    sbc [hl]
    nop
    ld [c], a
    ld h, d
    pop bc
    ret c

    dec a
    db $eb
    add b
    call $c404
    sbc a
    sbc h
    add b
    ld [c], a
    ld b, l
    ld b, a
    ld e, a
    ld e, b
    ld b, h
    ld d, h
    ld h, c
    ld e, h
    ccf
    ldh [$9e], a
    ld h, [hl]
    call nz, $e0e8
    and b
    add b
    ret c

    inc b
    add $9e
    add hl, bc
    ld [c], a
    xor a
    ld b, h
    ld e, c
    sbc a
    ld d, e
    cp [hl]
    inc l
    ld c, e
    ld e, h
    ld b, b
    ld [c], a
    nop
    db $e3
    jp c, $dbe9

    add b
    rst $10
    inc b
    ret z

    and c
    add h
    jp Jump_000_2a45


    cpl
    rrca
    jr nz, @+$2c

    ld b, e
    ld b, l

Jump_062_6e90:
    nop
    add sp, -$80
    reti


    add [hl]
    and a
    ld b, c
    ldh [$be], a
    add h
    jp nz, $2042

    jr nz, jr_062_6ecd

    ld b, l
    ld a, d
    jp nz, $c19c

    sbc a
    ld a, [hl]
    and e
    add b
    ret c

    add [hl]
    and a
    inc b
    pop bc
    jp $45c0


    ld b, c
    cpl
    ld [hl], $21
    jr nz, @+$2f

    ld b, b
    jp nz, $feae

    and c
    ld l, d
    and [hl]
    ldh [rP1], a
    or c
    cp c
    add b
    add [hl]
    and [hl]

jr_062_6ec4:
    inc b
    ret nz

    dec bc
    ret nz

    ld b, l
    ld [hl], $35
    daa
    dec [hl]

jr_062_6ecd:
    ld [hl], $41
    ld b, e
    pop hl
    db $fd
    and d
    and c
    ld a, [hl]
    and l
    nop
    or e
    sub b
    rrca
    and d
    add [hl]
    and h
    adc $a2
    pop bc
    pop hl
    ld a, [hl-]
    jp nz, Jump_062_76e3

    and c
    xor [hl]
    ldh a, [$7e]
    push bc
    add b
    rst $10
    add [hl]
    add e
    add h
    jp nz, $4546

    scf
    jr c, jr_062_6ec4

    dec [hl]
    dec [hl]
    dec [hl]
    add hl, sp
    ld b, d
    and d
    db $76
    and c
    ld b, [hl]
    xor a
    db $10
    ld a, [hl]
    jp $b900


    ld [$c084], sp
    ld [c], a
    ld b, d
    jp nz, $81e0

    ld [c], a
    ld a, d
    and c
    ldh [$bf], a
    ld [c], a
    ld a, [hl]
    and e
    nop
    cp c
    add [hl]
    add h
    add l
    and b
    ld b, [hl]
    xor [hl]
    ld b, h
    add hl, bc
    inc a
    add c
    db $e4
    pop bc
    db $e3
    xor a
    ld b, b
    pop hl
    ld a, [hl]
    add c
    add b
    reti


    add [hl]
    add h
    db $fd
    and c
    adc l
    ld [c], a
    ld [hl], $35
    jr c, @+$39

    ld d, b
    ld c, b
    rlca
    ld b, h
    ccf
    ld b, l
    cp c
    and b
    or l
    add c
    ld b, b
    ldh [rP1], a
    cp d
    add d
    and [hl]
    ei
    sbc a
    sbc h
    add $83
    ccf
    ld b, l
    ld c, d
    ld e, l
    ld d, [hl]
    rlca
    ld [hl], $35
    ld [hl], $c2
    and b
    ld [hl], d
    pop bc
    ld a, [hl]
    and [hl]
    add b
    rst $10
    add [hl]
    add l
    inc e
    add $82
    inc bc
    add b
    ld c, a
    ld h, c
    ld d, l
    ld a, [hl-]
    ldh [$bc], a
    pop bc
    ld a, [hl]
    adc d
    ldh a, [$80]
    db $76
    add [hl]
    ld h, e
    ld b, [hl]
    add b
    ld c, $81
    ld b, l
    scf
    scf
    ld c, d
    rlca
    ld h, c
    ld e, h
    ld a, [hl-]
    inc a
    jp nz, Jump_062_62b6

    ld a, [hl]
    add l
    nop
    cp l
    ld b, c
    jp nz, Jump_062_467b

    ld b, [hl]
    cp a
    ret nz

    ld [hl], $52
    ld d, d
    add hl, sp
    dec sp
    ret nz

    add e
    ld [hl], $45
    ld b, b
    pop bc
    ld a, [hl]
    ld h, h
    nop
    cp a
    add c
    pop bc
    ccf
    call nz, $1d36
    ld e, e
    ld a, l
    and b
    dec [hl]
    inc a
    ld b, h
    ld a, [hl]
    ld h, b
    ccf
    ld h, c
    nop
    cp a
    ld hl, sp+$08
    ld b, c
    ret nz

    ret nz

    add b
    db $e4
    dec [hl]
    dec [hl]
    dec sp
    dec [hl]
    xor h
    ld b, d
    cp d
    and b
    ld b, d
    ld b, b
    ld h, d
    ld l, d
    ld c, b
    nop
    cp e
    ld b, h
    add e
    ld b, l
    dec b
    ldh [rSC], a
    ld a, [hl]
    and b
    xor l
    dec sp
    and h
    nop
    add c
    nop
    cp a
    add [hl]
    ld b, d
    rst $38
    call nz, $e105
    nop
    cp l
    ld [c], a
    ld a, a
    jp nz, Jump_062_6800

    nop
    cp l
    inc bc
    add h
    ld a, [hl]
    and d
    ld bc, $82e3
    ret z

    inc b
    nop
    cp a
    ld a, a
    add e
    xor [hl]
    ccf
    push hl
    ld bc, $00e3
    ld e, a
    nop
    and [hl]
    ld a, [hl]
    db $e3
    nop
    inc c
    ld b, b
    ccf
    db $e4
    inc a
    add c
    add d
    push bc
    nop
    cp a
    add [hl]
    inc bc
    ld bc, $7d62
    add d
    nop
    inc a
    add d
    add d
    ld [c], a
    nop
    ld e, h
    add d
    ld b, h
    ld a, [hl]
    db $e3
    db $fd
    ld h, d
    rst $38
    jp $a100


    nop
    ld b, e
    ret nz

    add d
    jp $bf00


    add d
    dec h

jr_062_7022:
    dec bc
    jr nz, jr_062_7022

    ld h, d
    pop bc
    add c
    inc bc
    ld b, c
    ld h, b
    add d
    push bc
    nop
    cp l
    add d
    daa
    cp [hl]
    and d
    cp [hl]
    ld h, d
    ld b, [hl]
    sbc [hl]
    add d
    rst $20
    ld d, b
    nop
    cp a
    nop
    pop hl
    cp h
    add c
    rst $38
    and d
    ld a, $c1
    ld [bc], a
    sbc [hl]
    add d
    rst $20
    ld [$bd00], sp
    ld a, [hl]
    ld b, e
    db $fd
    ld b, d
    ld a, $c0
    db $e4
    jp Jump_000_0400


    ld b, e
    ldh [rNR42], a
    nop
    nop
    cp l
    sbc [hl]
    inc bc
    add c
    ld [hl+], a
    ret nz

    rst $20
    inc b
    ld b, h
    ld h, d
    ret nz

    jp Jump_000_00ab


    ld d, b
    nop
    ld a, [hl]
    and [hl]
    add b
    db $e3
    ccf
    ld b, h
    add d
    dec b
    jp Jump_000_00ac


    ld d, d
    ld a, [hl]
    add c
    rst $38
    add a
    ld bc, $0339
    ld b, d
    add d
    inc b
    ld b, e
    adc l
    nop
    ld d, d
    add d
    pop bc
    jp Jump_000_0303


    add c
    ld bc, $353e
    and c
    rst $38
    and b
    inc b
    ld h, h
    ld b, e
    db $eb
    nop
    or h
    ld a, [hl]
    ld h, h
    db $fd
    ld h, d
    inc c
    ld a, a
    ret nz

    db $f4
    ld b, b
    sbc h
    sbc a
    add d
    add l
    nop
    cp a
    ld [bc], a
    db $e3
    add d
    ld [bc], a
    nop
    ld a, a
    add $7e
    pop bc
    add d
    add e
    nop
    cp a
    ret nz

    ld h, e
    ld a, a
    ld b, c
    add b
    db $e4
    add e
    ld b, e
    nop
    db $e4
    inc bc
    add b
    jp c, Jump_000_2900

    cp [hl]
    ld h, l
    cp $03
    ld a, [hl]
    and c
    inc b
    add b
    ld b, e
    db $ed
    nop
    nop
    ld d, d
    ld bc, $3ee6
    ld h, c
    ld a, a
    ld [bc], a
    jp Jump_000_0421


    ld h, d
    add b
    call c, Call_000_2600
    nop
    pop bc
    rst $00
    jp Jump_000_0426


    ld h, e
    nop

Jump_062_70e4:
    ld h, c
    nop
    cp l
    add c
    jp nz, $c4c1

    ld b, h
    ld h, e
    nop
    add c
    ld h, e
    nop
    cp a
    nop
    ld h, a
    ld b, b
    ld [hl+], a
    ld a, [hl]
    ld b, b
    add c
    and h
    nop
    add $00
    cp a
    add b
    add d
    ld h, e
    ld bc, $7e22
    ld b, b
    inc b
    ld l, $00
    cp [hl]
    add d
    ld h, [hl]
    ld a, a
    and c
    ccf
    ldh [rSC], a
    and d
    add c
    pop bc
    nop
    cp a
    nop
    ld l, b
    add b
    and d
    ld b, l
    ld b, e
    ld b, c
    add c
    ld b, e
    db $fd
    ldh [rSCY], a
    ld [bc], a
    add d
    ld b, l
    nop
    cp a
    ld a, [hl]
    inc b
    inc bc
    and c
    dec sp
    add e
    dec [hl]
    dec sp
    db $fd
    ldh [rLCDC], a
    ld h, l
    nop
    cp a
    nop
    ld b, e
    ld a, [hl]
    dec b
    ld b, h
    rla
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    jp nz, $0022

    ld l, b
    nop
    cp e
    or $fc
    ld bc, $d1d0
    ld a, a
    ld hl, $3542
    ld l, c
    and e
    rrca
    dec [hl]
    dec [hl]
    and e
    ld l, d
    jp Jump_000_0002


    ld h, [hl]
    nop
    cp d
    ld a, d
    ld h, h
    nop
    ld a, [hl]
    and e
    ret nz

    ldh [$c3], a
    ld hl, $e4c0
    inc b
    ld h, $80
    ld [hl], a
    cp l
    ld b, h
    ld a, [hl]
    and l
    cpl
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    db $e3
    inc b
    inc h
    inc d
    nop
    cp c
    db $ed
    ld b, e
    rst $18
    ld a, [hl]
    dec b
    xor [hl]
    ret nz

    add $41
    jp nz, $1086

    ld c, b
    add b
    rst $08
    ld a, [hl]
    add [hl]
    ld b, c
    jr nz, @-$4f

    ld b, b
    add $b4
    and b
    and c
    add d
    add d
    nop
    jp Jump_000_00af


    ld d, l
    rst $38
    ld b, h
    ei
    add c
    add c
    ld b, e
    db $ec
    ld bc, $9043
    nop
    ld c, h
    nop
    ld a, [hl]
    and a
    ld a, a
    ld b, e
    ld a, [hl-]
    and e
    ld b, h
    ld bc, $2104
    jp $80b0


    ret nc

    ld a, [hl]
    push hl
    ld bc, $ff9d
    rst $20
    add e
    ld bc, $1086
    add b
    db $d3
    ld a, [hl]
    push hl
    adc [hl]
    and c
    db $fc
    jp hl


    nop
    add [hl]
    rrca
    add b
    jp nc, $887a

    db $fc
    db $ed
    nop
    cp a
    ld a, d
    dec b
    ld a, [hl]
    ld bc, $edfc
    nop
    add [hl]
    rrca
    rlca
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
    dec de
    dec b
    ld [bc], a
    ld bc, $0524
    ld [bc], a
    ld [bc], a
    ld a, [de]
    ld b, $02
    inc bc
    inc e
    ld b, $02
    inc b
    ld e, $06
    ld [bc], a
    dec b
    dec de
    rlca
    ld [bc], a
    ld b, $1d
    rlca
    ld [bc], a
    rlca
    ld a, [de]
    ld [$0802], sp
    inc e
    ld [$0902], sp
    dec h
    ld [$0a02], sp
    dec de
    add hl, bc
    ld [bc], a
    dec bc
    dec e
    add hl, bc
    ld [bc], a
    inc c
    ld a, [de]
    inc c
    ld [bc], a
    dec c
    inc h
    inc c
    ld [bc], a
    ld c, $17
    dec c
    ld [bc], a
    rrca
    add hl, de
    dec c
    ld [bc], a
    db $10
    daa
    dec c
    ld [bc], a
    ld de, $0e16
    ld [bc], a
    ld [de], a
    dec h
    rrca
    ld [bc], a
    inc de
    add hl, hl
    rrca
    ld [bc], a
    inc d
    ld [hl+], a
    db $10
    ld [bc], a
    dec d
    inc h
    db $10
    ld [bc], a
    ld d, $26
    db $10
    ld [bc], a
    rla
    ld hl, $0211
    jr @+$25

    ld de, $1902
    dec h
    ld de, $1a02
    daa
    ld de, $1b02
    dec d
    ld [de], a
    ld [bc], a
    inc e
    rla
    ld [de], a
    ld [bc], a
    dec e
    ld [hl+], a
    ld [de], a
    ld [bc], a
    ld e, $24
    ld [de], a
    ld [bc], a
    rra
    ld h, $12
    ld [bc], a
    jr nz, @+$2b

    ld [de], a
    ld [bc], a
    ld hl, $1314
    ld [bc], a
    ld [hl+], a
    ld d, $13
    ld [bc], a
    inc hl
    jr jr_062_72a2

    ld [bc], a
    inc h
    dec h
    inc de
    ld [bc], a
    dec h
    daa
    inc de
    ld [bc], a
    ld h, $15
    inc d
    ld [bc], a
    daa
    rla
    inc d
    ld [bc], a
    jr z, @+$16

jr_062_72a2:
    dec d
    ld [bc], a
    add hl, hl
    ld d, $15
    ld [bc], a
    ld a, [hl+]
    dec h
    ld d, $02
    dec hl
    ld h, $17
    ld [bc], a
    inc l
    inc d
    jr @+$04

    dec l
    jr nz, jr_062_72d0

    ld [bc], a
    ld l, $17
    inc e
    ld [bc], a
    cpl
    jr jr_062_72dc

    ld [bc], a
    jr nc, jr_062_72db

    ld hl, $3102
    jr jr_062_72e9

    ld [bc], a
    ld [hl-], a
    inc hl
    ld [hl+], a
    ld [bc], a
    inc sp
    ld [hl+], a
    daa
    ld [bc], a

jr_062_72d0:
    inc [hl]
    inc hl
    jr z, @+$04

    dec [hl]
    jr jr_062_7301

    ld [bc], a
    ld [hl], $24
    inc l

jr_062_72db:
    ld [bc], a

jr_062_72dc:
    scf
    rla
    cpl
    ld [bc], a
    jr c, jr_062_72f8

    jr nc, jr_062_72e6

    add hl, sp
    inc hl

jr_062_72e6:
    ld [hl-], a
    ld [bc], a
    ld a, [hl-]

jr_062_72e9:
    jr @+$3b

    ld [bc], a
    dec sp
    ld [hl+], a
    add hl, sp
    ld [bc], a
    inc a
    inc e
    dec sp
    rst $38
    rst $38
    rst $38
    cp $72

jr_062_72f8:
    jr z, jr_062_7371

    or [hl]
    ld a, e
    pop de
    ld a, e
    cp a
    dec c
    dec c

jr_062_7301:
    dec c
    ld c, $0e
    ld c, $fa
    ld [$2e4d], a
    ldh a, [$e1]
    ld c, $0e
    ld c, l
    ld hl, sp-$20
    ld c, l
    db $e3
    ldh [$f4], a
    db $eb
    nop
    ret nc

    rst $28
    db $fd
    xor $eb
    db $e4
    ret nz

    ld [c], a
    or h
    pop hl
    db $fc
    db $e4
    db $e3
    ld [$f9fa], a
    ld a, $6d
    ld [c], a
    dec c
    dec c
    ld c, l
    ld c, l
    ld c, l
    db $fc
    pop hl
    db $fd
    db $e3
    pop bc
    dec l
    db $76
    and $d0
    db $f4
    dec a
    rst $20
    ld l, e
    db $e3
    call nz, Call_000_0de1
    ld l, l
    rst $38
    ld l, e
    inc l
    inc c
    inc c
    inc l
    inc l
    ld l, e
    ld l, e
    ld [c], a
    or e
    ldh [$2d], a
    ret nc

    di
    add e
    rst $28
    ld b, h
    db $e3
    dec c
    ld l, l
    dec bc
    rst $20
    ld l, e
    ld l, e
    ld l, e
    jp nz, $bfe1

    pop hl
    dec c
    ld l, e
    ld l, e
    add hl, sp
    dec l
    inc de
    di
    ret nz

    push af
    ld c, l
    dec bc
    dec c
    jp nz, $fee0

    db $e3
    ld c, $7e
    pop hl

jr_062_7371:
    ld l, e
    ld c, l
    dec l
    db $d3
    db $d3
    or b
    ret nc

    inc b
    ldh [$81], a
    ldh [$3d], a
    dec c
    pop bc
    ldh [$6c], a
    ld c, h
    ld c, h
    ld c, h
    cp a
    pop hl
    ld a, a
    ld [c], a
    pop hl
    ld c, l
    rst $20
    call nz, $df80
    ld c, b
    ret nz

    ld b, e
    ldh [rOCPD], a
    ld c, h
    ld c, h
    rrca
    ld l, h
    dec bc
    dec bc
    dec hl
    cp [hl]
    ldh [$c0], a
    db $e4
    add d
    rst $18
    ld b, a
    jp Jump_000_043a


    pop bc
    dec l
    set 0, b
    ld l, e
    dec hl
    dec bc
    rst $38
    pop hl
    ld a, c
    ldh [$c1], a
    ld l, h
    db $f4
    ret nz

    ret nz

    or $ed
    or d
    adc $c0
    set 0, b
    ld c, e
    ld c, e
    scf
    dec bc
    dec bc
    ld c, e
    pop bc
    db $e3
    dec c
    ld l, l
    xor b
    and h
    add b
    db $db
    nop
    adc $a2
    adc d
    and c
    ccf
    pop hl
    cp a
    pop hl
    ld a, h
    pop bc
    ld bc, $00e3
    ldh [rSCX], a
    rst $38
    inc c
    ld a, e
    and [hl]
    ret nz

    db $e3
    dec bc
    dec hl
    ld b, c
    pop hl
    ld b, b
    jp $b0c5


    di
    xor [hl]
    ld e, b
    add d
    push hl
    push bc
    and b
    dec bc
    pop bc
    dec hl
    dec hl
    ret nz

    ldh [$6c], a
    ld b, c
    pop bc
    ret nc

    ret nz

    db $e3
    ld h, [hl]
    pop bc
    add b
    jp c, $e502

    ld c, l
    ld c, $e1
    ld l, e
    ld c, e
    ld [bc], a
    ret nz

    pop hl
    ld c, h
    jp $c0c1


    and b
    and e
    add $04
    cp a
    ld b, [hl]
    and c
    ld [bc], a
    ld [c], a
    ld c, $80
    pop hl
    ld c, e
    ld c, e
    ld c, e
    ld [hl-], a
    pop bc
    ld b, b
    and b
    nop
    cp a
    add h
    add e
    add b
    ld d, l
    and b
    jp nz, Jump_000_3fc5

    ldh [rPCM12], a
    ld [c], a
    add c
    ret nz

    nop
    cp a
    add c
    add l
    dec l
    ld b, b
    add c
    db $e4
    ld bc, $c0e1
    ld [c], a
    ld [bc], a
    jp nz, $d3c0

    rst $38
    ld [hl], c
    dec l
    ld b, $e0
    rst $38
    dec c
    ld l, e
    dec c
    ld c, e
    dec c
    dec hl
    dec bc
    dec hl
    rlca
    ld l, e
    dec bc
    dec bc
    jp nz, $8281

    and d
    add b
    rst $18
    ld [hl], a
    ld h, e
    ld b, d
    and b
    ld [hl], d
    sub a
    ld h, d
    dec c
    ld b, d
    ld [c], a
    ret nz

    pop hl
    dec bc
    dec c
    ld l, l
    db $e3
    push hl
    jp nc, $df80

    ld c, $c3
    add c
    ld d, [hl]
    ld h, c
    ld c, e
    add b
    pop hl
    ld l, e
    ld c, e
    or b
    ld sp, hl
    and c
    ld [bc], a
    add h
    cp a
    cp [hl]
    inc c
    ld h, d
    dec c
    dec bc
    ret nz

    ldh [$2b], a
    ld [bc], a
    add c
    ldh [$0b], a
    jp nz, Jump_000_3ec0

    and b
    pop af
    ldh [$c2], a
    ret nz

    ld l, d
    ld h, d
    nop
    cp b
    ld a, h
    and c
    add l
    push bc
    ld h, c
    dec bc
    dec c
    dec hl
    ld a, [bc]
    ld l, d
    ret nz

    ld [c], a
    ld b, $c3
    pop hl
    dec bc
    dec bc
    ld b, d
    pop hl
    and d
    ld h, [hl]
    add b
    ld [hl], h
    ld h, c
    add e
    inc c
    ld h, b
    cp [hl]
    add c
    ldh [$0b], a
    dec bc
    ld c, d
    ld a, [bc]
    ld a, [bc]
    ld b, h
    add b
    dec hl
    ret nz

    ld a, l
    add c
    ret nz

    ld [c], a
    dec b
    and $49
    sbc c
    ld b, $64
    adc l
    pop hl
    dec hl
    ld a, [bc]
    dec sp
    ld a, [bc]
    dec hl
    add c
    and b
    dec bc
    ld a, [bc]
    ld c, d
    inc a
    add c
    add h
    ld [hl], e
    ld e, b
    jp Jump_062_504f


    ld b, d
    ld b, c
    db $e3
    ld a, [bc]
    ld a, [hl+]
    ld b, d
    jp nz, $c04a

    ld [c], a
    ldh [$82], a
    jp nz, $22e8

    nop
    ld e, d
    add d
    jp $61cb


    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ld [bc], a
    rst $00
    pop bc
    ld l, e
    ld a, c
    ldh [rIE], a
    pop bc
    add d
    ld b, a
    dec a
    db $fd
    dec bc
    ld b, b
    adc e
    ld h, c
    inc b
    add [hl]
    ld h, e
    ld a, l
    ld b, b
    ld c, d
    ccf
    ldh [$bf], a
    pop bc
    db $76
    dec h
    ld c, a
    or d
    dec a
    inc hl
    ld l, h
    db $e3
    add h
    ld bc, $4be3
    dec c
    ret z

    add c
    dec bc
    ld a, [bc]
    rst $38
    ldh [rP1], a
    dec sp
    ld h, c
    cp a
    jr nz, jr_062_7522

jr_062_7522:
    cp l
    dec c
    ld [hl+], a
    inc b
    ld hl, $c24e
    ret nz

    db $e3
    cp d
    ret nz

    ld b, c
    ld a, [bc]
    rst $38
    and d
    ld a, $c0
    ldh a, [rSB]
    ret


    ld e, l
    ld [$2d22], sp
    jp z, $0041

    ld c, d
    add b
    add d
    add b
    add b
    pop hl
    nop
    ret nz

    cp $a8
    ld b, e
    ld a, [hl-]
    jp nc, Jump_000_0002

    jp $c040


    rst $20
    adc h
    ld bc, $bf00
    ld [bc], a
    xor d
    adc h
    add b
    add b
    db $e4
    ld l, e
    pop bc
    ld [c], a
    add e
    dec c
    ld c, e
    cp a
    and b
    nop
    cp a
    add e
    pop hl
    xor $40
    sub b
    ld h, b
    ld c, e
    ld [$e3c0], sp
    ld b, d
    ld b, b
    ld [hl], a
    add e
    ld c, e
    jp nz, Jump_000_3440

    ld [bc], a
    nop
    cp a
    ret nz

    db $e3
    nop
    cp a
    db $e4
    inc bc
    and c
    db $76
    add d
    add b
    call nz, $bf00
    ld d, [hl]
    ld bc, $c405
    cp [hl]
    jp $2b05


    ret nz

    pop bc
    ld c, e
    cp a
    ldh [rP1], a
    cp a
    add b
    add l
    adc c
    ld [c], a
    cp [hl]
    push hl
    nop
    ld b, b
    add c
    ld [hl], e
    pop bc
    nop
    ld h, a
    nop
    cp h
    ld a, a
    pop hl
    add $a0
    cp e
    ret z

    ld a, $80
    ld bc, $7f4b
    ret nz

    nop
    ld e, a
    inc b
    dec h
    push bc
    jp nz, $807c

    ld a, [$c1a2]
    ld h, c
    nop
    add c
    ldh [$80], a
    and h
    nop
    ld e, d
    nop
    and d
    cp [hl]
    and c
    add $c3
    db $fd
    jp Jump_062_40be


    nop
    db $fc
    jr nz, @-$3c

    dec b
    nop
    ld e, a
    ld d, [hl]
    add c
    cp a
    ld [c], a
    ld a, d
    and h
    dec sp
    ld [bc], a
    ret nz

    jp nz, $0000

    ld e, a
    ld a, l
    inc hl
    cp $42
    ld a, e
    add c
    push bc
    db $e3
    dec [hl]
    ldh [$7c], a
    jr nz, @-$3e

    inc d
    nop
    cp c
    or h
    db $fc
    add b
    ld a, e
    add c
    ret nz

    push hl
    ld a, l
    ld h, c
    add b
    rst $18
    dec e
    and [hl]
    db $fc
    add d
    nop
    ret nz

    pop bc
    or a
    add l
    ei
    nop
    ret nz

    nop
    ld a, l
    and e
    nop
    ld e, a
    ld a, [hl+]
    ld bc, $e606
    ld bc, $712b
    and d
    ld b, b
    ret nz

    nop
    cp a
    ld a, l
    dec h
    cp [hl]
    ld hl, $c7c6
    push af
    ld h, c
    ld hl, $400b
    ret nz

    ld a, [hl]
    ld h, c
    ld b, d
    ld [de], a
    or b
    ld [hl], b
    ld c, l
    db $fc
    add d
    jp nz, Jump_000_00c4

    ld b, b
    jp Jump_000_2366


    nop
    ld e, b
    sbc $27
    db $fc
    add b
    ld b, h
    ld h, c
    ld a, h
    jp $a2c2


    ld h, b
    add c
    and c
    ld h, [hl]
    ld hl, $df84
    or a
    and h
    cp [hl]
    and b
    ld c, e
    dec bc
    add $a2
    ld [bc], a
    ret nz

    db $e3
    dec l
    call nz, Call_000_3095
    ld c, e
    ld a, [hl]
    rst $20
    add [hl]
    and d
    cp l
    ldh [$83], a
    jp Jump_062_4000


    add b
    db $e3
    add b
    ld h, d
    inc hl
    nop
    cp a
    ld a, [hl-]
    ld b, c
    ei
    ld h, e
    ld sp, hl
    ld b, e
    ld [hl], l
    ld b, c
    nop
    cp $05
    cp e
    cp d
    inc e
    ld b, l
    cp l
    nop
    ld c, d
    jp Jump_062_637a


    ret nz

    push hl
    ld a, [hl]
    ld [c], a
    nop
    add b
    rst $18
    ret nz

    pop hl
    call nz, $bbe6
    push hl
    nop
    cp a
    nop
    xor c
    ld bc, $39c2
    ld b, [hl]
    nop
    inc [hl]
    ld b, d
    ld a, [hl]
    ld [hl+], a
    rst $38
    rst $38
    ld [bc], a
    push hl
    ld a, l
    ld bc, $243b
    ld a, $c3
    add b
    ld a, a
    nop
    nop
    and [hl]
    ld b, c
    pop hl
    ld bc, $f4a5
    ld [bc], a
    ret nz

    db $e4
    add d
    ret nz

    nop
    cp a
    add d
    jp nz, Jump_000_2d01

    ld c, e
    ld hl, $e7c0
    pop bc
    add b
    nop
    cp a
    nop
    and a
    nop
    add h
    rlca
    ld h, d
    dec b
    dec bc
    ld [hl-], a
    inc h
    dec l
    nop
    cp a
    nop
    and [hl]
    ld b, c
    adc c
    nop
    push hl
    nop
    ld h, e
    inc b
    nop
    cp a
    nop
    add h
    dec l
    nop
    db $ed
    nop
    push bc
    rst $38
    rst $38
    db $fc
    inc hl

jr_062_76e2:
    db $fc

Jump_062_76e3:
    ld [bc], a
    add c
    ld l, e
    db $fc
    jr nz, jr_062_76e2

    ld hl, $4241
    add b
    rst $18
    nop
    and a
    ld a, e
    nop
    dec c
    daa
    dec l
    dec hl
    ld l, e
    rst $38
    db $e3
    nop
    ld h, b
    dec c
    ld [bc], a
    ret nz

    nop
    pop hl
    nop
    ld h, d
    ld bc, $bf00
    cp $83
    sub $e0
    cp $e5
    ld b, h
    pop bc
    nop
    ld e, a
    nop
    xor b
    nop
    ret nz

    db $e3
    sub d
    add b
    ld a, [$86e1]
    inc bc
    db $fc
    db $e4
    nop
    cp a
    or [hl]
    ld l, d
    jp z, Jump_000_00d1

    dec a
    ld [$0000], a
    nop
    cp a
    and b
    and b
    and b
    call c, $dedd
    ld a, [$d8eb]
    rra
    reti


    and b
    and b
    jp nc, $fcd3

    rst $28
    add sp, -$1f
    ret nc

    db $ed
    cp a
    db $e4
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [$a0ea]
    rst $38
    jp c, $d0db

    pop de
    call nc, $a0d5
    and b
    cp $fc
    db $eb
    ret nc

    pop de
    jp c, $d6db

    rst $10
    and b
    ld a, [hl]
    ret nc

    db $ec
    ld [$e6e5], a
    rst $20
    add sp, -$17
    ld a, [$58ea]
    ld l, l
    ldh [$82], a
    pop hl
    ld h, [hl]
    ldh [$9f], a
    sbc l
    rst $38
    push hl
    sbc a
    ld a, [hl]
    and $e0
    ret nc

    db $ec
    ld b, e
    xor $2f
    ldh [$82], a
    ld [c], a
    call nz, $a2e0
    sbc h
    ld b, [hl]
    rst $38
    dec bc
    inc bc
    add hl, bc
    inc bc
    dec bc
    ld b, [hl]
    ld b, [hl]
    xor [hl]
    rst $00
    sbc h
    sbc l
    sbc a
    ld a, [hl]
    db $e3
    inc de
    db $ed
    ld b, e
    xor $a0
    sub $dd
    rst $10
    inc b
    pop hl
    sbc a
    sbc h
    ld b, [hl]
    rst $38
    ldh [rSC], a
    dec c
    rst $38
    ld bc, $9800
    dec c
    ld [bc], a
    ld b, [hl]
    xor a
    ld b, [hl]
    ld h, e
    ld b, [hl]
    sbc [hl]
    db $ec
    pop bc
    inc de
    rst $28
    ld b, e
    rst $28
    ret c

    reti


    inc b
    pop hl
    rst $38
    sbc [hl]
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld [bc], a
    rlca
    rrca
    sbc b
    cp a
    sbc c
    sbc b
    sub a
    sbc b
    ld c, $0c
    or h
    ldh [$9c], a
    or c
    sbc a
    ldh a, [$c0]
    inc de
    ld a, [c]
    add b
    call z, $dbda
    ld b, $e1
    sbc h
    rst $38
    ld b, [hl]
    xor a
    inc c
    ld c, $9b
    rrca
    rlca
    rlca
    rra
    rlca
    sbc b
    sbc b
    sbc b
    ld [bc], a
    or e
    ldh [$7f], a
    pop hl
    ld h, e
    pop hl
    ldh a, [$80]
    rst $18
    nop
    ldh [$81], a
    ldh [rSCY], a
    pop hl
    rlca
    ld [bc], a
    ld b, c
    dec hl
    ld e, a
    dec hl
    ld [bc], a
    rrca
    sbc b
    ld [$e13f], sp
    and c
    add sp, -$1f
    db $e3
    ret c

    reti


    add b
    rst $18
    inc b
    pop bc
    ld bc, $aee1
    ld b, [hl]
    ld b, l
    ld a, a
    ld a, [hl+]
    ld h, $20
    jr nz, @+$2f

    ld [$3f9a], sp
    ld [c], a
    ld l, l
    sbc [hl]
    db $ec
    and c
    jp c, $80db

    sbc $d6
    rst $10
    inc d
    pop bc
    inc sp
    and c
    ld b, [hl]
    set 0, b
    ret nz

    db $e4
    rrca
    ld [bc], a
    nop
    push hl
    sub e
    xor a
    ld a, b
    add b
    rst $08
    add d
    and e
    ccf
    ld [c], a
    ld b, [hl]
    ld b, l
    ld a, $22
    ld b, b
    ldh [$99], a
    ld [$e601], sp
    add b
    rst $18
    sub $d7
    add d
    and e
    ret nz

    db $e3
    ld b, [hl]
    rst $08
    ld a, $35
    ld b, d
    ld [$c0c1], sp
    ld b, b
    jp $d1d0


    ldh a, [$80]
    call c, $a061
    inc b
    and h
    nop
    db $e3
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    dec [hl]
    inc bc
    ld b, b
    ld [$c241], sp
    nop
    jp $bc00


    rst $00
    add b
    inc b
    and h
    add b
    pop bc
    ld a, $cb
    and b
    ld b, d
    dec [hl]
    dec [hl]
    ld b, d
    ld [bc], a
    ld [bc], a
    pop hl
    ret nz

    and b
    ldh a, [$ec]
    add c
    nop
    cp h
    dec b
    jp nz, $a782

    ld b, [hl]
    ld b, [hl]
    add hl, sp
    dec [hl]
    inc sp
    dec [hl]
    add hl, sp
    ld a, b
    and b
    ld [bc], a
    ret nz

    ld b, [hl]
    sbc [hl]
    nop
    cp a
    dec a
    db $e3
    ld e, b
    add [hl]
    add c
    add d
    ret nz

    ld bc, $35e4
    ld a, $76
    db $e3
    sbc h
    nop
    and b
    add b
    db $e4
    pop bc
    add b
    db $dd
    inc e
    add d
    add c
    push hl
    ld bc, $c0e0
    ld [c], a
    push af
    add b
    and c
    and b
    rst $10
    ld h, b
    jp Jump_000_00ae


    or b
    inc b
    add c
    add d
    and c
    xor [hl]
    cp $e1
    ld b, h
    rra
    inc a
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld b, c
    db $e3
    ld l, d
    add b
    jp Jump_062_68ae


    add b
    ret nc

    add [hl]
    ld h, d
    jp $af80


    cp $e1
    ld b, b
    dec [hl]
    rst $38
    ldh [rSB], a
    ld b, b
    ld b, c
    db $e3
    db $ec
    ld h, e
    nop
    cp e
    ld b, a
    ld h, b
    add [hl]
    ld h, c
    jp $bf81


    pop hl
    dec c
    ld b, [hl]
    add b
    pop hl
    ld [hl], $45
    add d
    ret


    nop
    cp e
    add l
    add b
    ld [$7e61], sp
    ld b, c
    pop hl
    xor a
    ld b, l
    xor a
    xor [hl]
    ld b, l
    ld [hl], $c1
    push hl
    add e
    sbc h
    sbc a
    nop
    ld h, h
    nop
    cp c
    inc hl
    ld h, b
    add d
    jp nz, Jump_062_61c5

    xor a
    xor a
    ld b, l

jr_062_791b:
    ld b, a
    ld d, d
    xor a
    ld bc, $40e1
    cp b
    and d
    sbc [hl]
    ret nz

    db $f4
    ld b, b
    ld h, [hl]
    and c
    nop
    cp c
    adc c
    ld b, c
    sbc [hl]
    ld b, d
    ld b, e
    jp nz, Jump_062_5e51

    dec bc
    ld e, b
    ld b, h
    add c
    ld [c], a
    ld b, l
    add e
    ld h, h
    ld l, d
    ld b, d
    add b
    reti


    adc c
    ld b, b
    call c, Call_062_4286
    add d
    jp $4d44


    ld h, c
    jp nz, Jump_000_3cc0

    ld b, h
    add e
    ld b, a
    ld d, l
    ld b, d
    jp $4382


    add b
    ld a, [hl]
    ld [$4140], sp
    db $e4
    ld h, b
    dec c
    ld d, d
    ld b, c
    ld [c], a
    ld e, [hl]
    ld d, [hl]
    ret nz

    pop bc
    inc b
    add d
    nop
    ld e, a
    inc b
    add d
    xor $85
    ld h, d
    ld b, l
    ld d, e
    ld d, e
    jp nz, Jump_000_3cc1

    ld b, h
    ld c, l
    inc hl
    ld e, b
    ld b, h
    or $40
    add d
    and c
    nop
    ld e, a
    ld [$2286], a
    ret nz

    db $e3
    rst $30
    scf
    dec a
    jr c, jr_062_798a

    ret nz

    ld [hl], $42

jr_062_798a:
    ld e, [hl]
    ld h, c
    pop bc
    ld d, l
    add d
    ld b, [hl]
    nop
    cp h
    and e
    jr nz, jr_062_791b

    ld hl, $a283
    add hl, sp
    dec [hl]
    dec a
    xor h
    call nz, $aca0
    ld b, b
    ld b, a
    ld h, b
    ret nz

    ldh [$82], a
    ld b, l
    xor b
    nop
    cp e
    ld hl, $86e3
    ld h, d
    xor a
    ret z

    ld h, b
    xor l
    add h
    and b
    xor l
    nop
    cp d
    ret nz

    nop
    ld [c], a
    ld a, [hl]
    push bc
    add b
    db $dd
    inc b
    ld h, c
    add $22
    add a
    add b
    ld b, h
    and d
    rlca
    ld e, [hl]
    ld h, c
    ld e, d
    push af
    add d
    nop
    cp a
    add [hl]
    ld b, $43
    add d
    ret nz

    push hl
    rlca
    ld d, d
    ld h, c
    ld d, l
    ld [hl], $a2
    nop
    cp a
    add [hl]
    ld b, $46
    ld [hl+], a
    rst $00
    ld h, b
    ld c, $c4
    add c
    ld b, d
    ld b, l
    ld e, e
    or [hl]
    add d
    ld b, d
    ld hl, $bf00
    add [hl]
    inc bc
    ld [$8243], sp
    dec b
    and c
    add e
    add b
    add hl, sp
    ld [hl], a
    add h
    ld bc, $0082
    cp a
    nop
    push bc
    xor $d1
    nop
    ld b, l
    ld [hl], $3b
    ld b, e
    add b
    ld a, [hl-]
    ld b, l
    xor a
    ld h, b
    ld [hl], l
    add d
    ld [bc], a
    ld hl, $c100
    nop
    cp a
    inc b
    ld h, [hl]
    ld b, l
    ld b, e
    ld a, l
    pop hl
    rlca
    jr c, jr_062_7a59

    scf
    cp l
    pop hl
    ld a, [hl]
    add l
    nop
    cp a
    inc b
    inc h
    adc $41
    nop
    ld b, d
    ld h, c
    inc a
    ld [c], a
    add b
    ld b, e
    add d
    ld b, c
    nop
    cp a
    inc b
    inc h
    adc l
    and b
    cp e
    push bc
    nop
    cp a
    ld b, b
    add d
    nop
    ld b, c
    nop
    nop
    cp a
    inc b
    daa
    ld c, e
    ld b, d
    ld bc, $ff61
    ld b, d
    nop
    ccf
    and d
    nop
    cp a
    nop
    and e
    ld a, [hl]
    add e
    pop bc
    ld [bc], a
    ccf
    db $e3
    cp l
    ld h, b
    ld a, [hl]

jr_062_7a59:
    adc b
    nop
    nop
    ld e, a
    ld a, [hl]
    ld h, e
    ld bc, $fc44
    ld h, c
    ld a, $63
    nop
    ld e, a
    nop
    ld b, [hl]
    ld a, h
    add e
    nop
    cp a
    call nz, Call_062_443f
    rst $38
    jr nz, jr_062_7a73

jr_062_7a73:
    ld e, a
    nop
    ld b, h
    pop bc
    inc b
    ld b, c
    ld b, d
    ccf
    ld hl, $b200
    pop bc
    nop
    jr nz, jr_062_7a82

jr_062_7a82:
    ld e, a
    nop
    ld b, h
    ld a, l
    ld b, d
    ld b, c
    ld b, e
    ret nz

    ld hl, $03c0
    nop
    nop
    cp a
    add b
    ld bc, $c37e
    cp h
    ld b, e
    add d
    nop
    ld b, c
    push bc
    nop
    db $e4
    nop
    ld e, a
    nop
    ld a, [hl]
    ret


    cp e
    add d
    ld b, c
    push hl
    nop
    cp a
    or a
    and d
    inc e
    pop bc
    db $fc
    ld b, d
    call z, Call_000_00a0
    ei
    ld h, c
    ld b, c
    and $00
    cp [hl]
    dec a
    add h
    db $fc
    ld b, l
    dec bc
    ld h, b
    cp e
    ld h, c
    ld b, c
    and $00
    nop
    add d
    add b
    rst $18
    sbc d
    ld hl, $64fc
    ld b, b
    ld [c], a
    add d
    call nz, $0041
    nop
    cp a
    ld [$41bd], sp
    ld a, [hl]
    and e
    ld a, e
    ld b, h
    ld [hl], $c2
    inc b
    ld bc, $00a3
    cp a
    ld b, b
    and b
    jr jr_062_7ae3

jr_062_7ae3:
    pop bc
    db $fc
    nop
    rst $38
    jp Jump_000_3f45


    add e
    ld [bc], a
    add b
    pop bc
    nop
    cp a
    nop
    dec a
    inc h
    jr jr_062_7b57

    ld a, l
    add [hl]
    ld a, b
    and d
    add b
    jp $bf00


    nop
    and [hl]
    cp l
    inc bc
    nop
    db $fc
    ld [$bf00], a
    nop
    xor b
    ret nz

    add l
    cp d
    jp hl


    ld a, [hl]
    jr nz, jr_062_7b0f

jr_062_7b0f:
    cp a
    nop
    and h
    ld e, $7e
    ld h, h
    ld b, l
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [$c0], a
    add e
    nop
    cp a
    ld d, b
    nop
    and a
    add c
    add c
    ld bc, $bd80
    ld b, b
    dec sp
    db $fd
    ldh [$36], a
    cp e
    ld b, b
    ld a, b
    nop
    cp a
    nop
    xor b
    nop
    add h
    ld b, h
    inc a
    and h
    ld h, h
    rst $38
    ldh [$e1], a
    and l
    rst $38
    ld h, d
    nop
    cp a
    nop
    and a
    nop
    add h
    ld b, d
    dec [hl]
    ld l, c
    ld a, a
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    dec [hl]
    ld b, d
    ld bc, $0083
    nop
    cp a
    nop
    and d

jr_062_7b57:
    nop
    add c
    nop
    and d
    ret nz

    ldh [rSTAT], a
    ld h, c
    ret nz

    ldh [rP1], a
    ld h, $d8
    nop
    cp a
    nop
    add $01
    add c
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    ld bc, $c044
    ld b, d
    nop
    cp a
    nop
    and e
    nop
    add [hl]
    ret nz

    rst $00
    ret nz

    add d
    nop
    cp a
    sbc $00
    xor b
    sbc a
    sbc l
    sbc l
    sbc h
    ld b, b
    rst $00
    sbc h
    sbc l
    ld b, b
    ld bc, $00a1
    cp a
    nop
    and d
    ld a, [hl]
    ld h, h
    cp l
    pop hl
    cp $e5
    sbc a
    db $ec
    ld b, c
    nop
    nop
    cp a
    nop
    and e
    ld a, [hl]
    add h
    rst $38
    ld [$c104], a
    nop
    cp a
    cp l
    ld b, e
    ld a, [hl]
    rst $20
    nop
    db $fc
    rst $20
    inc b
    pop bc
    nop
    or e
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
    ld h, $04

Call_062_7bd5:
    ld [bc], a
    ld bc, $061a
    ld [bc], a
    ld [bc], a
    daa
    rlca
    ld [bc], a
    inc bc
    dec de
    add hl, bc
    ld [bc], a
    inc b
    ld h, $0b
    ld [bc], a
    dec b
    dec de
    dec c
    ld [bc], a
    ld b, $25
    rrca
    ld [bc], a
    rlca
    jr jr_062_7c03

    ld [bc], a
    ld [$121a], sp
    ld [bc], a
    add hl, bc
    inc e
    ld [de], a
    ld [bc], a
    ld a, [bc]
    inc h
    ld [de], a
    ld [bc], a
    dec bc
    rla
    inc de
    ld [bc], a
    inc c

jr_062_7c03:
    add hl, de
    inc de
    ld [bc], a
    dec c
    dec de
    inc de
    ld [bc], a
    ld c, $18
    inc d
    ld [bc], a
    rrca
    ld a, [de]
    inc d
    ld [bc], a
    db $10
    rla
    dec d
    ld [bc], a
    ld de, $151b
    ld [bc], a
    ld [de], a
    inc hl
    ld d, $02
    inc de
    ld d, $18
    ld [bc], a
    inc d
    inc h
    ld a, [de]
    ld [bc], a
    dec d
    dec d
    inc e
    ld [bc], a
    ld d, $19
    inc e
    ld [bc], a
    rla
    dec e
    inc e
    ld [bc], a
    jr @+$25

    ld e, $02
    add hl, de
    dec h
    ld e, $02
    ld a, [de]
    ld [hl+], a
    rra
    ld [bc], a
    dec de
    inc h
    rra
    ld [bc], a

Jump_062_7c42:
    inc e
    ld hl, $0220
    dec e
    inc hl
    jr nz, jr_062_7c4c

    ld e, $25

jr_062_7c4c:
    jr nz, jr_062_7c50

    rra
    dec d

jr_062_7c50:
    ld hl, $2002
    jr nz, jr_062_7c76

    ld [bc], a
    ld hl, $2122
    ld [bc], a
    ld [hl+], a
    inc h
    ld hl, $2302
    inc hl
    ld [hl+], a
    ld [bc], a
    inc h
    dec h
    ld [hl+], a
    ld [bc], a
    dec h
    rla
    inc h
    ld [bc], a
    ld h, $25
    dec h
    ld [bc], a
    daa
    ld a, [de]
    ld h, $02
    jr z, jr_062_7c99

    add hl, hl
    ld [bc], a

jr_062_7c76:
    add hl, hl
    ld a, [de]
    ld a, [hl+]
    ld [bc], a
    ld a, [hl+]
    inc h
    inc l
    ld [bc], a
    dec hl
    add hl, de
    ld l, $02
    inc l
    inc hl
    cpl
    ld [bc], a
    dec l
    ld a, [de]
    ld [hl-], a
    ld [bc], a
    ld l, $24
    ld [hl-], a
    ld [bc], a
    cpl
    add hl, de
    ld [hl], $02
    jr nc, jr_062_7cb9

    ld [hl], $02
    ld sp, $3a19

jr_062_7c99:
    ld [bc], a
    ld [hl-], a
    dec h
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_062_7cb9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_062_7e00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_062_7ea5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_062_7ef6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_062_7fc3:
    rst $38
    rst $38

Jump_062_7fc5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
