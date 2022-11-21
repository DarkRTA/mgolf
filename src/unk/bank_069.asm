INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $069", ROMX[$4000], BANK[$69]

Call_069_4000:
    ld a, [bc]
    ld b, b
    add e
    ld c, [hl]
    cp b
    ld e, h
    cpl
    ld h, a
    sbc h
    ld [hl], e
    ld [de], a
    ld b, b
    or e
    ld b, l
    ld a, [hl]
    ld c, l
    and b
    ld c, l
    rst $18
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    db $ed
    ld l, $2e
    ld [hl], c
    ld c, [hl]
    db $ec
    xor $e5
    push hl
    ret nc

    db $ec
    ld l, [hl]
    ld l, $6e
    cp [hl]
    ldh [rNR52], a
    cp l
    ldh [$0d], a
    dec c
    db $e3
    ld [c], a
    or h
    ldh [$0d], a
    ld hl, sp-$1e
    ldh a, [$e1]
    adc h
    and a
    jp hl


    ldh a, [$e2]
    ld l, $0e
    ret nc

    ld [$e0b2], a
    pop bc
    ldh [$4e], a
    ld sp, $c04e
    db $e4
    db $f4
    pop hl
    ld [hl], d
    ld [c], a
    ld l, $2e
    ret nz

    db $e3
    xor c
    pop hl
    dec l
    ld l, l
    rst $38
    pop hl
    dec l
    dec l
    ret nz

    db $e4
    ld l, $d0
    jp hl


    ldh a, [$e2]
    add d
    call nc, Call_000_0ee0
    ret


    ldh [$c0], a
    ld [c], a
    push af
    db $e3
    rst $30
    ld [c], a
    add b
    db $e4
    dec c
    dec de
    ld l, l
    dec c
    rst $38
    ld [c], a
    ld c, l
    dec l
    ret nc

    ldh a, [$c0]
    rst $20
    ccf
    ld [c], a
    ld bc, $890e
    ldh [$f1], a
    ret z

    rst $00
    ldh [$84], a
    ldh [$c1], a
    db $e3
    cp a
    ld [c], a
    ret c

    ret nz

    inc b
    ret nc

    db $eb
    ret nz

    db $eb
    ld c, $c0
    push hl
    adc a
    db $e3
    rst $28
    ret nz

    jp Jump_069_7ee6


    db $e3
    nop
    ret nc

    xor $80
    db $eb
    pop af
    jp $e2c0


    inc c
    ld [c], a
    pop bc
    and $45
    ldh [$3d], a
    db $e4
    ldh [$d0], a
    db $ec
    ldh a, [$ed]
    ld h, c
    jp $e60c


    ld b, $e3
    dec hl
    ld a, [bc]
    ld a, [hl+]
    ld bc, $b80b
    push hl
    rst $08

Call_069_40c0:
    jp $e8c0


    ldh a, [$eb]
    adc d
    ld [c], a
    ld c, c
    ld [$e0c3], a
    add hl, bc
    ld a, [bc]
    ret nz

    ldh [$7e], a
    db $e3
    dec l
    adc a
    call nz, $ea90
    xor $a9
    sub h
    ret nz

    pop af
    ld l, l
    ret z

    jp nz, $e608

    jp Jump_000_2ae0


    ld a, [hl+]
    dec bc
    dec bc
    nop
    cp a
    db $e3
    ret nz

    pop hl
    cp [hl]
    and a
    call nc, $9aa3
    pop bc
    rst $08
    and b
    db $d3
    and e
    ret nz

    pop hl
    ld [de], a
    call Call_000_0bc9
    ld b, e
    ld [c], a
    pop bc
    ldh [$2b], a
    ld hl, sp-$3b
    sbc c
    and e
    ret nc

    pop hl
    ld [hl], b
    call nc, $c0aa
    add sp, $02
    jp hl


    push bc
    pop hl
    dec bc
    ld c, e
    ld l, e
    rst $38
    ldh [rNR10], a
    cp h
    jp nz, $a4fc

    ld [hl], e
    and e
    ret


    and l
    ld c, l
    ld b, c
    and b
    dec d
    call nz, $e044
    ld e, b
    rst $08
    and a
    add e
    ldh [$c1], a
    ld [c], a
    ld l, e
    dec bc
    db $fd
    ret nz

    ld l, d
    dec a
    db $e3
    nop
    rst $18
    ret nz

    db $fc
    ret nz

    ld c, a
    pop hl
    ret nz

    ld [c], a
    push bc
    add d
    or a
    pop hl
    and b
    and c
    inc b
    db $e3
    ld a, [c]
    sub b
    and h
    dec hl
    ld c, [hl]
    ldh [$83], a
    ld [c], a
    dec bc
    ld l, e
    ld c, e
    ld l, e
    ld a, [hl]
    cp l
    ret nz

    ld a, [hl+]
    ld c, e
    inc c
    inc c
    inc l
    inc l
    ld a, h
    push hl
    add b
    ld [hl], b
    and d
    sub h
    and [hl]
    ld a, a
    add b
    and [hl]
    and c
    ret nz

    push hl
    pop bc

jr_069_4166:
    db $e3
    rst $38
    db $e4
    ld l, e
    ld c, l
    ld l, e
    ret


    ldh [$2c], a
    inc c
    rst $38
    db $e3
    cp a
    db $e3
    dec l
    cpl
    and c
    nop
    ret nz

    jp $a294


    ret nz

    ld [c], a
    add b
    add sp, -$3f
    add sp, -$3e
    ldh [$89], a
    pop hl
    ret nz

    db $e3
    ld b, $b9
    ldh [$2c], a
    inc c
    ret nz

    ld [c], a
    inc l
    and d
    call nc, $ffa7
    db $e4
    dec bc
    and a
    ld c, $c8
    call nz, Call_069_4b0b
    ld c, e
    add [hl]
    pop hl
    add c
    and $7a
    pop hl
    cp e
    add c
    jr jr_069_4166

    pop hl
    set 4, h
    add h
    add c
    ld l, $0e
    db $db
    add d
    ret nz

    jp hl


    ld b, c
    ld [c], a
    rrca
    dec hl
    dec bc
    ld c, e
    dec bc
    push bc
    jp hl


    ld a, $e2
    ld a, a
    rst $20
    jp Jump_000_03e2


    ld l, $4e
    db $10
    add c
    ret nz

    db $ed
    adc l
    ret nz

    cp a
    db $e3
    rst $08
    pop hl
    cp [hl]
    db $ec
    jr jr_069_420c

    add b
    ld e, e
    and e
    add e
    pop hl
    ld l, [hl]
    ld l, [hl]
    cp a
    ldh [$c0], a
    and $84
    ld h, d
    ld h, b
    ld de, $8c81

jr_069_41e3:
    ret nz

    ld [$42c2], sp
    ld [c], a
    add c
    ld [$4c2c], a
    ld b, b
    db $e4
    ld [hl], $26
    add b
    ld l, $6e
    ld b, $85
    ld l, l
    dec c
    dec a
    pop hl
    inc c
    ld h, e
    nop
    adc d
    and d
    add c
    pop bc
    ld b, c
    ldh [$86], a
    ret nz

    pop bc
    db $eb
    inc a
    ret nz

    ld a, a
    jp $e10d


jr_069_420c:
    jp nz, Jump_069_67c6

    ld l, l
    dec a
    ld [c], a
    add b
    db $e4
    adc e
    and c
    add b
    ldh [$2b], a
    dec hl
    or a
    dec hl
    dec bc
    ld l, h
    ld b, [hl]
    push bc
    ld l, h
    ld c, h
    ccf
    push bc
    inc c
    ld [bc], a
    db $76
    add b
    dec l
    ret nc

    db $e3
    ret nz

    add sp, -$52
    jp nz, $a538

    ret nz

    pop hl
    rst $38
    ret nz

    ei
    dec hl
    ld l, e
    add b
    push hl
    ld l, h
    ld l, h
    ld l, h
    ld c, h
    ld c, h
    inc b
    cp [hl]
    push hl
    ld a, [hl]

Jump_069_4243:
    ret nz

    dec l
    ld a, [hl]
    jp Jump_069_6646


    db $e3
    ld b, b
    ret nz

    db $ec
    add h
    ldh [$ac], a
    ld bc, $c6e2
    and e
    inc l
    inc l
    rst $38
    ld h, b
    ld l, h
    dec sp
    push bc
    dec bc
    add b
    or [hl]
    ld b, b
    jr jr_069_41e3

    ret nz

    add sp, $00
    ret z

    jp c, Jump_069_4540

    pop bc
    ld a, a
    and b
    dec hl
    cp $83
    push bc
    ld c, h
    ld a, [bc]
    ld a, [bc]
    dec hl
    dec hl
    ld l, h
    ld c, h
    ld b, [hl]
    or e
    push hl
    dec bc
    ld c, l
    cp a
    db $e3
    add [hl]
    ld b, l
    ld hl, sp-$5d
    ld c, $c0
    and h
    jp nc, $804d

    dec c
    inc b
    ldh [rSC], a
    ldh [rWX], a
    ld b, e
    call nz, $0c2c
    dec e
    ld c, d
    rst $38
    ld h, c
    inc c
    ld c, h
    ld c, h
    ld [hl], d
    db $e4
    cp c
    ld h, b
    or [hl]
    add d
    nop
    inc [hl]
    ld b, c
    jp nz, Jump_000_38e4

    pop bc
    ld d, c
    ld b, h
    rst $38
    and d
    jp $c1c0


    ret nz

    jp z, Jump_069_44c3

    ld a, d
    pop bc
    cp a
    ld h, b
    ld c, h
    pop af
    and $c0
    db $e3
    and d
    ld b, c
    dec l
    jp hl


    jr nz, jr_069_42e0

    dec l
    scf
    push bc
    sub c
    inc h
    call c, $c240
    add h
    dec c
    set 0, d
    jp $ab80


    ld l, h
    ld l, h
    or b
    pop bc
    dec hl
    pop af
    db $e3
    ld l, h
    ret nz

    add sp, $6d
    jr nz, jr_069_42df

    jr nz, jr_069_4318

    and l
    ret nz

jr_069_42df:
    push hl

jr_069_42e0:
    add d
    add h
    push bc
    ld h, b
    dec c
    set 0, e
    add b
    add b
    ld [hl+], a
    ld b, c
    add b
    ld c, e
    ld l, h
    and b
    db $fd
    ret nz

    cp [hl]
    and b
    dec bc
    dec d
    and e
    xor c
    jr nz, @+$08

    add l
    ldh [$2e], a
    ld c, [hl]
    ret nz

    and $e6

Call_069_4300:
    ld h, c
    sla e
    add c
    and c
    add l
    ld h, c
    ld h, l
    dec c
    ld a, $e5
    ld c, d
    ld a, [$b241]
    add b
    inc l
    ld c, h
    ld a, [hl-]
    ldh [rLCDC], a
    cp [hl]
    ld h, c
    adc b

jr_069_4318:
    ld [c], a
    ld b, h
    ldh [$84], a
    nop
    ei
    ldh [$bb], a
    add l
    ld c, $a0
    ld b, c
    inc b
    ld d, l
    ld hl, $a440
    dec c
    nop
    and h
    cp $60
    cp [hl]
    ld h, b
    ldh a, [$a0]
    push af
    and c
    nop
    ld a, d
    ld b, d
    adc b
    ld [c], a
    ret nc

    ldh [$88], a
    pop bc
    ld a, d
    pop hl
    inc a
    jp nz, $c0f4

    ld a, $c4
    ld bc, $bf4d
    and c
    pop bc
    ld [c], a
    inc b
    adc b
    or d
    add b
    jp nz, Jump_069_5ee0

    ld b, e
    ld e, c
    ld bc, $8020
    ld [c], a
    ld b, e
    add b
    jr nc, jr_069_4369

    cp a
    db $e3
    adc l
    ld b, c
    dec bc
    adc d
    and c
    dec sp
    push bc
    nop
    pop bc
    ld h, c
    ret nz

jr_069_4369:
    ld h, e
    adc l
    ld b, l
    ld [hl+], a
    inc b
    jr nc, jr_069_4376

    xor c
    ld b, e
    ld bc, $3e43
    and c

jr_069_4376:
    nop
    cp a
    pop bc
    jp Jump_000_3769


    ld h, c
    ld bc, $2ba1
    nop
    ld c, l
    ld b, a
    dec b
    ldh [$30], a
    dec b
    inc b
    ret nz

    jp hl


    db $fd
    ld h, d
    dec c
    cp a
    push bc
    cp a
    rst $20
    cp l
    ld b, b
    ld bc, $94a0
    rst $20
    nop
    jr nc, jr_069_43a3

    add b
    db $e4
    jp z, $fe04

    and d
    db $fd
    and e
    ld a, a

jr_069_43a3:
    ld l, e
    pop bc
    push hl
    ret nz

    db $eb
    ld [$0530], sp
    ld a, [hl]
    and h
    ld a, [hl]
    ld b, d
    dec hl
    inc a
    ld b, b
    ret z

    add [hl]
    ld a, l
    ld b, h
    cp a
    ld h, b
    nop
    ret nz

    push hl
    ld c, a
    inc bc
    jr nc, jr_069_43cb

    ld a, $a6
    ld a, h
    and h
    ld a, $eb
    ld [bc], a
    and c
    ld bc, $00a3
    sub h

jr_069_43cb:
    db $e3
    ret nz

    db $eb
    ld [hl], b
    ld [bc], a
    add e
    inc bc
    ret nz

    and $40
    ld b, a
    cp $22
    ld b, d
    and b
    jr nz, @-$3d

    add e
    ld b, b
    dec b
    ret nz

    rst $28
    cp $23
    cp [hl]
    inc h
    dec hl
    inc a
    jp z, $807d

    nop
    sbc $03
    ld a, [$3006]
    rrca
    ld h, h
    ld [hl+], a
    ld a, a
    daa
    cp a
    pop hl
    rst $38
    daa
    add c
    and h
    adc b
    rst $38
    jp z, Jump_000_0c30

    ret nz

    db $e3
    dec c
    ld a, [hl]
    ld b, d
    cp $03
    ei
    xor b
    ld c, h
    nop
    jp z, $c581

    add $0c
    db $e4
    sub b
    pop hl
    jr nc, jr_069_441d

    ld h, d
    add c
    cp a
    rst $00
    ret nz

    pop hl
    ld [bc], a
    add l

jr_069_441d:
    ld h, h
    ld l, h

Call_069_441f:
    db $fd
    ld h, b
    add b
    and d
    ret nc

    db $eb
    or e
    and l
    jr nc, jr_069_442f

    rst $38
    add d
    nop
    add b
    db $e3
    cp b

jr_069_442f:
    nop
    ld c, b
    add c
    add l
    ld h, b
    cp e
    ld b, b
    ret nz

    ldh [rWX], a
    add d
    ld e, c
    add h
    ret nz

    ret


    and [hl]
    ld b, c
    and b
    jr nc, jr_069_444c

    ld a, [hl]
    ld [c], a
    ld a, l
    add h
    or a
    ld b, c
    dec hl
    dec bc

jr_069_444b:
    dec bc

jr_069_444c:
    dec c
    ld c, l
    ld c, b
    add b
    ld l, e
    xor c
    and e
    add hl, de
    ld h, l
    ret nc

    rst $20
    add a
    pop hl
    nop
    jr nc, jr_069_4466

    ld a, [hl]
    ld [$c1bc], a
    rlc c
    ld l, e
    and d
    ld d, e
    ld h, b

jr_069_4466:
    db $dd
    add b
    ret nc

    db $ed
    jr c, jr_069_44ac

    ld bc, $0930
    ld a, h
    call nz, Call_069_4b6b
    ld c, e
    cp e
    push bc
    adc d
    nop
    nop
    pop bc
    ld [c], a
    sbc a
    add e
    sub c
    add b
    ret nc

    ld [$6204], a
    jr nc, @+$09

    inc a
    dec b
    cp [hl]
    rst $20
    nop
    ld [hl], l
    jr nz, jr_069_444b

    ld [c], a
    ret nz

    db $e4

Jump_069_4490:
    ld d, b

Call_069_4491:
    db $e4
    ret nc

    push hl
    ld [hl-], a
    rlca
    jr nc, @+$05

    push af
    ld hl, $8f00
    db $e4
    cp b
    rst $00
    cp [hl]
    ld [c], a
    rlca
    ld b, c
    rst $00
    ld bc, $26cd
    dec b
    ld h, h
    jr nc, jr_069_44b6

    nop

jr_069_44ac:
    inc l
    ld b, c
    cp a
    xor $32
    add d
    add l
    add e
    adc e
    ld b, d

jr_069_44b6:
    ret nc

    add sp, $40
    dec b
    jr nc, jr_069_44c6

    dec b
    ld c, l
    daa
    ld b, b
    dec l
    ld c, e
    pop hl

Jump_069_44c3:
    db $76
    ld h, b
    ld sp, hl

jr_069_44c6:
    call nz, $e2f2
    ld b, e
    jr nz, jr_069_44cc

jr_069_44cc:
    ld d, c
    ld [hl+], a
    ret nc

    db $ed
    jr nc, @+$0d

    inc sp
    ld hl, $415b
    ret z

    jp $c1b6


    ld l, l
    ld bc, $fc00
    jp nz, Jump_000_03c4

    ret nc

    db $ec
    jr nc, jr_069_44f2

    ld h, e
    add b
    or d
    ld [hl+], a
    ld a, [$6fc4]
    ld b, c
    nop
    ldh a, [$63]
    dec [hl]
    ret nz

jr_069_44f2:
    ei
    jp nz, $ecd0

    jr nc, @+$0f

    rra
    ld [c], a
    ret nz

    add sp, $3a
    ld [c], a
    add b
    or h
    and e
    cp a
    pop hl
    ret nc

    xor $30
    dec bc
    ldh a, [$e2]
    dec e
    add c
    ret nz

    rst $20
    dec c
    ld bc, $2c4d
    inc bc
    cp a
    ld [c], a
    ld a, [bc]
    jr nz, jr_069_4557

    inc c
    ldh a, [$f2]
    add b
    jp hl


    ld l, a
    ld h, h
    ld bc, $322d
    and d
    ret nz

    rst $28
    inc b
    push bc
    ldh a, [$ea]
    ret nz

    db $eb
    ldh a, [rSCX]
    and $02
    nop
    cp [hl]
    jp $e6d0


    ld b, h
    db $e3
    dec bc
    pop bc
    jr nc, jr_069_453e

    ldh a, [$e5]
    ld a, a
    push bc
    or c

jr_069_453e:
    ld b, h
    dec e

Jump_069_4540:
    dec l
    ret nz

    ldh [$2b], a
    ld l, e
    ld c, e
    adc a
    and c
    ret nc

    db $eb
    rlca
    ret nz

    nop
    rst $00
    and b
    jr nc, jr_069_4557

    ldh a, [$e8]
    ld [hl], a
    and [hl]
    xor $02

jr_069_4557:
    pop bc
    push hl
    ret nc

    db $ec
    rlca
    call nz, $3000
    rlca
    ldh a, [$e6]
    ld a, [c]
    ld bc, $e4ff
    xor l
    ld bc, $e5c1
    ret nc

    db $ed
    ld [hl], $83
    nop
    jr nc, @+$0f

    ld d, $64
    db $f4
    call nz, $e1bf
    ld b, e
    and $d0
    ld a, [c]
    jr nc, @+$07

    ldh a, [$e9]
    nop
    ld [hl], c
    ld bc, $a1a2
    ld [hl], a
    and $67
    and c
    ret nc

    db $ec
    ld a, e
    nop
    cp e
    add h
    jr nc, jr_069_4594

Call_069_4590:
Jump_069_4590:
    nop
    ldh a, [$e8]
    add b

jr_069_4594:
    ld [c], a
    ld l, $c0
    ld a, b
    db $e3
    rlca
    inc hl
    ret nc

    xor $92
    jp $c00a


    nop
    jr nc, jr_069_45a7

    ldh a, [$e9]
    ld b, b

jr_069_45a7:
    rst $20
    ret


    add b
    add a
    ld bc, $e26f
    ret nc

    db $eb
    nop
    nop
    nop
    rst $18
    ret c

    push de
    push de
    ret c

    and b
    rst $38
    db $ed
    db $d3
    ret nc

    pop af
    db $d3
    db $ec
    xor $db
    db $e4
    ret nc

    db $ed
    jp nc, $d4d6

    sub $e6
    cp l
    ld [c], a
    sbc $df
    db $e3
    pop hl
    or h
    db $e3
    rst $10
    call nc, $98d7
    ldh a, [$e2]
    and a
    jp hl


    ldh a, [$e2]
    ret c

    push de
    ret nc

    ld [$e0b2], a
    sub $df
    jp nc, $d2d0

    call nc, $91d6
    ldh [$e0], a
    pop hl
    ld [hl], e
    and b
    ret c

    db $f4
    ldh [$72], a
    ld [c], a
    jp c, $dad9

    ldh a, [$e1]
    cp a
    and b
    ld [$a0a0], a
    sbc a
    sbc l
    rst $38
    pop hl
    and d
    ld h, c
    sbc a
    ldh a, [$e2]
    ld h, a
    ldh [$d0], a

jr_069_460a:
    jp hl


    ld d, a
    pop hl
    rst $10
    call nc, $e0bf
    rst $38
    rst $10
    jp nc, $a0d8

    ld [c], a
    db $e3
    and b
    rst $10
    rst $28
    jp nc, $d1d0

    ret nc

    push af
    ldh [$a0], a
    call c, $f9db
    call c, $e1f0
    jr z, jr_069_460a

    sbc a
    or [hl]
    sub b
    jp $c690


    rst $38
    ldh [$b6], a
    sbc a
    ldh a, [$e2]
    ret nc

    db $eb
    rla
    pop hl
    db $dd
    reti


    ld a, [de]
    ld d, e
    ldh [$dd], a
    db $10
    ld [c], a
    db $eb
    jp c, $e3b3

    pop af
    add $84
    ldh [$af], a
    or [hl]
    sub b
    sub b
    call nz, $e0c0
    jp $e0bf


    and b
    and l
    db $eb
    daa
    ldh [$d2], a
    ret nc

    jp hl


    ldh a, [$e1]
    ret nc

    cp [hl]
    ldh [$dd], a
    cp l
    pop de
    ret nc

    pop bc
    db $ec
    db $ed
    call c, $b3da
    pop hl
    jp c, $c1f0

    and $c3
    ldh [$c5], a
    pop hl
    ld a, [hl]
    ldh [$c4], a
    sub b
    jp Jump_069_4bb6


    sbc a
    db $ed
    daa
    ldh [$d3], a
    ret nc

    jp hl


    ldh a, [$e1]
    call nc, $e040
    inc l
    cp $c0
    adc e
    db $e3
    call c, $06db
    ldh [$dc], a
    inc c
    push hl
    add h
    ldh [$fe], a
    ld b, h
    ldh [$c4], a
    sub c
    sub c
    call nz, $90c3
    jp $c49d


    ld a, [hl]
    pop hl
    and b
    call c, $d0d7
    ld [$e0f0], a
    reti


    ld b, $40
    ldh [$d4], a
    rst $10
    ret nc

    ret nz

    rst $28
    db $e4
    ld b, $e0
    adc b
    db $e3
    ld [$ffe2], sp
    call nz, $9190
    ld b, l
    ld c, b
    ld c, b
    ld b, [hl]
    call nz, Call_000_3bb2
    ld [c], a
    and c
    and [hl]
    jp nz, $ebd0

    jp c, $8ddb

    ldh [$d9], a
    pop bc
    jp c, $c0d0

    ld a, [bc]
    rst $20
    call Call_000_08c4
    ldh [$c3], a
    pop hl
    ld b, a
    ld h, b
    rla
    ld d, d
    ld b, c
    sub c
    xor a
    ld [c], a
    sbc [hl]
    ld e, [hl]
    ld [c], a
    ret nc

    db $eb
    ret z

    ldh [$c8], a
    db $ed
    ldh [$c2], a
    push hl
    inc c
    jp nz, Jump_069_53a1

    pop hl
    adc e
    jp nz, $ae91

    rst $38
    ld d, c
    ld e, [hl]
    ld h, b
    ld d, h
    ld d, e
    ld a, [hl+]
    cpl
    dec l
    add c
    sub c
    ld a, d
    pop bc
    ret nz

    pop hl
    cp l
    db $e3
    sub d
    pop hl
    call nc, $83a5
    and d
    db $e4
    ret


    push hl
    ld a, h
    and d
    inc e
    jp nz, $8e9e

    pop bc
    add e
    pop hl
    xor [hl]
    ld b, [hl]
    rst $30
    xor a
    ld b, c

Call_069_4721:
    ld d, e
    jp nz, Jump_000_20e0

    jr nz, @+$34

    xor [hl]
    ld h, b
    ld a, d
    pop bc
    ret nz

    db $e4
    ret nc

    db $e3
    call nc, $8ca6
    and d
    and $e7
    inc a
    and d
    ld hl, sp+$0c
    pop bc
    ld [bc], a
    db $e4
    add e
    ldh [$af], a
    scf
    jr c, jr_069_477d

    dec sp
    ld a, a
    dec sp

jr_069_4745:
    daa
    inc l
    ld sp, $bd31

jr_069_474a:
    xor a
    ld a, $e0
    call z, $c07e
    rla
    and [hl]
    and $e7
    call nc, Call_000_14a6
    and d
    add sp, -$17
    db $ec
    ld [bc], a
    db $ec
    add e
    pop hl
    ld [hl], $35
    rst $38
    ldh [$36], a
    inc sp
    ld c, c
    ld a, a
    ld c, c
    ld c, c
    ld d, d
    ld b, l
    ld b, [hl]
    ld b, [hl]
    sub c
    ld a, [hl]
    ret nz

    inc sp
    sbc l
    sbc l
    ld a, h
    ret nz

    ld d, h
    pop hl
    add sp, -$17
    call nc, Call_000_14a6
    and c

jr_069_477d:
    ld a, h
    jr nz, @-$58

    inc c
    jp nz, $91c4

    ld b, l
    scf
    scf
    add e
    ldh [$fe], a
    pop bc
    ld [c], a
    ld b, l
    ld b, l
    ld d, d
    ld d, d
    ld d, e

Call_069_4791:
    ld d, e
    ld b, l
    rrca
    ld [bc], a
    rlca
    inc b
    inc bc
    cp d
    pop bc
    cp c
    and b
    ld d, h
    db $e3
    call nc, $e0a6
    inc d
    and c
    jr jr_069_4745

    jr nz, jr_069_474a

    jp $8ac0


    pop bc
    ld [hl], $62
    ld h, l
    db $ed
    ld h, [hl]
    add e
    pop hl
    jr c, jr_069_47eb

    ret z

    pop hl
    inc bc
    inc b
    rlca
    ld a, a
    rlca
    rrca
    nop
    ld bc, $020f
    sub c
    cp e
    jp nz, Jump_069_5440

    ldh [$d0], a
    pop hl
    call nc, Call_000_14a4
    and d
    inc b
    push hl
    jp $c3c0


    pop bc
    ld [c], a
    rst $28
    ld h, a
    dec [hl]
    ld l, b
    ld h, [hl]
    jp nz, $03e0

    inc b
    rrca
    rst $18
    ld bc, $0f00
    rrca
    sbc b
    rst $38
    ldh [$99], a
    sbc c
    rst $00
    sbc b
    rrca
    dec b

jr_069_47eb:
    cp e
    set 0, [hl]
    push hl
    ld bc, $9e89
    call nz, $91df
    ld a, c
    ld a, d
    ld h, h
    ld a, b
    ld b, $e0
    ld l, d
    ld a, [hl-]
    di
    ld b, l
    dec b
    add $e0
    ret z

    ldh [$98], a
    sbc b
    sub a
    sub a
    ld b, $bd
    pop hl
    sbc b
    ld b, $39
    ret nz

    cp e
    ret z

    db $f4
    ld h, d
    jp nz, $1462

    add a
    rst $18
    sbc [hl]
    sub b
    ld a, c
    ld a, [hl]
    add hl, sp
    ret z

    pop bc
    ld l, h
    ld l, l
    rst $00
    add hl, sp
    ld b, [hl]
    ld b, $ca
    ld [c], a
    jp nz, $fee0

    db $e3
    sbc b
    ld c, $51
    dec b
    or e
    add b
    ld a, d
    and c
    call nc, $d563
    push bc
    ld h, b
    jp nc, Jump_069_6296

    db $ec
    inc b
    db $e3
    ret nz

    db $e3
    add b
    ld b, [hl]
    ret nz

    ld [c], a
    ld [hl], e
    ld l, [hl]
    ld b, b
    inc de
    ld [bc], a
    rrca
    add h
    ldh [$c3], a
    pop hl
    sub [hl]
    rst $38
    ldh [$7d], a
    ld [c], a
    ld a, a
    ldh [$2c], a
    dec sp
    jp nz, $61e4

    db $d3
    sub $06
    add c
    sub $56
    ld h, d
    inc d
    add c
    cp $84
    ld h, d
    sbc a
    or [hl]
    sub c
    add b
    ld b, [hl]
    ld b, h
    inc a
    ld a, [hl-]
    ld b, c
    ld [c], a
    dec b
    call z, $99c0
    sbc b
    sub a
    add $e0
    cp l
    pop hl
    sbc [hl]
    ld a, $e0
    sbc c
    sbc c
    ld b, $ae
    ret nz

    db $e3
    call nc, $d860
    ret nz

    bit 4, b
    adc b
    add c
    ld de, $2781
    add b
    inc c
    ld h, h
    ld b, c
    ldh [$8d], a
    ld b, [hl]
    adc l
    ld b, d
    ld b, c
    db $e3
    ld b, $99
    inc b
    pop hl
    dec b
    db $e3
    ld b, d
    pop hl
    sbc c
    rra
    nop
    ld bc, $af0a
    jp $81fa


    ret nc

    pop hl
    add $60
    ld e, $1a
    ld h, b
    reti


    db $dd
    db $d3
    jp c, $8237

    ld hl, sp-$5c
    ld b, c
    pop hl
    ld e, $80
    pop hl
    ld l, h
    ld l, a
    ld l, [hl]
    ld b, b
    ret nz

    ldh [$c6], a
    ret nz

    add h
    ret nz

    add sp, $7f
    jp nz, $e380

    db $76
    add b
    sbc [hl]
    ret nc

    db $e3
    db $d3
    ret nc

    pop de
    adc [hl]
    rst $00
    ld h, b
    ret nc

    ret nc

    rst $10
    add [hl]
    add l
    inc c
    ld h, c
    ret nz

    db $e3
    ld b, l
    ld a, l
    ld a, [hl-]
    ld [bc], a
    ldh [$3c], a
    ld b, h
    ld b, $01
    nop
    ld b, c
    ldh [$eb], a
    sbc b
    rrca
    rst $38
    and c
    rrca
    ld a, l
    jp Jump_000_050e


    sub c
    adc b
    cp d
    add l
    ld [$c661], sp
    ld b, b
    call nc, Call_069_6692

Call_069_4902:
    ld hl, sp-$5e
    ret nz

    push hl
    ld l, d
    ld sp, hl
    dec [hl]
    ld bc, $80e0
    db $e3
    rrca
    inc c
    ld b, a
    ld d, h
    ld b, d
    inc e
    db $76
    jp nz, $c03b

    ld b, $46
    sub c
    ld a, d
    add h
    ld d, l
    ld h, c
    ret z

    ld h, b
    push hl
    reti


    db $fd
    xor e
    sbc [hl]
    pop bc
    ret nz

    add b
    ret nz

    ld l, h
    ld l, l
    dec [hl]
    di
    ld a, $0a
    rlca
    jp nz, $c00b

    ld c, d
    ld h, b
    add hl, sp
    ld [hl], $3b
    dec b
    ld c, $33
    db $e3
    ld c, $02
    ld b, [hl]
    cp d
    add h
    ld d, l
    ld h, c
    ld a, [c]
    ret z

    ld h, b
    db $db
    db $ec
    inc hl
    cp l
    dec h
    and c
    ld b, [hl]
    add d
    add e
    sbc e
    ld b, l
    ld a, [hl-]
    ld [bc], a
    ldh [$35], a
    add hl, sp
    ret nz

    ldh [$ca], a
    jp nz, Jump_000_3f06

    ld c, d
    ld d, d
    ld a, $35
    add hl, sp
    ld [$c274], sp
    ld a, $e0
    add c
    inc c
    cp c
    ld h, b
    push hl
    inc hl
    ret z

    ld h, l
    db $ec
    jr nz, jr_069_49bc

    ld b, b
    cp $63
    sbc [hl]
    rst $38
    sub c
    add l
    add a
    adc b
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    dec [hl]
    db $e3
    inc a
    ld b, h
    add e
    and c
    ld c, e
    pop bc
    nop
    ldh [$3e], a
    dec [hl]
    ld a, [hl-]
    inc bc
    ld [bc], a
    rlca
    pop af
    db $e4
    ret nz

    pop hl
    push hl
    ld hl, $64ce
    ld l, a
    jr nz, jr_069_49a3

    ld b, d
    jp hl


    rst $10
    cp $63
    ld de, $9140
    ld bc, $35c2

jr_069_49a3:
    add hl, sp
    xor [hl]
    add hl, de
    ld [bc], a
    set 0, b
    ld c, e
    pop bc
    rrca
    ld [bc], a
    ld l, a
    and b
    or [hl]
    add b
    ld sp, hl
    add c
    ld b, c
    sbc c
    add b
    ld [c], a
    push hl
    ld hl, $61ce
    ld d, c

jr_069_49bc:
    ld [hl+], a
    ld sp, hl
    and e
    jp c, Jump_069_64fe

    rst $30
    sbc [hl]
    sub b
    sub b
    ld bc, $acc1
    dec [hl]
    ld a, [hl-]
    xor a
    cp [hl]
    ld b, c
    and e
    sbc c
    sbc c
    ld [$4b4a], sp
    or a
    ld h, b
    dec [hl]
    inc bc
    add hl, sp
    ld [bc], a
    ldh a, [$a0]
    ld a, $c0
    cp d
    ld h, h
    adc $61
    reti


    ld [bc], a
    sla b
    cp h
    add c
    ld b, b
    ret nz

    ld b, l
    sbc [hl]
    sub b
    jp $c845


    ld h, b
    xor l
    ld hl, sp+$7f
    pop hl
    pop bc
    add c
    add l
    add b
    ld [$574a], sp
    ld c, h
    ld c, c
    ld l, a
    ld c, b
    ld [hl], $39
    dec b
    ld [hl], h
    pop hl
    dec b
    sub c
    ld a, d
    ld b, b
    add b
    reti


    add hl, bc
    rst $30
    ld h, c
    add c
    ld b, e
    ei
    ld h, c
    inc bc
    ld h, c
    ld bc, $3f80
    ld [c], a
    xor a
    db $fc
    nop
    and e
    rst $38
    and c
    ld d, l
    ld d, a
    ld d, d
    ld b, e
    ld b, l
    ld b, $88
    push af
    and c
    add b
    and d
    ld h, c
    inc bc
    ld [$a3cd], a
    add hl, sp
    adc e
    adc h
    ld hl, $1e91
    cp a
    and b
    dec [hl]
    ld a, [hl-]
    xor [hl]
    inc c
    inc b
    add b
    ld b, e
    add c
    ld a, a
    and b
    rst $38
    ld [bc], a
    inc bc
    inc bc
    ld b, [hl]
    inc c
    ld c, $0e
    ld [bc], a
    rlca
    xor [hl]
    sub c
    call nz, Call_000_21ba
    ld c, l
    ld h, l
    reti


    ld bc, $0d30
    cp a
    ld [c], a
    sbc [hl]
    ld a, $80
    ld a, $af
    ld b, [hl]
    ld [bc], a
    cp a
    add e
    inc b
    add b
    rrca
    ld a, a
    rrca
    rrca
    inc b
    inc b
    sbc c
    ld c, $05
    ld bc, $a0a3
    adc b
    db $e4
    call nz, Call_000_3063
    ld b, $00
    ld b, l
    cp $c0
    sub b
    ld a, $a0
    ld a, [hl-]
    rst $20
    ld b, l
    xor [hl]
    ld b, [hl]

Jump_069_4a80:
    cp $83
    jp $9964


    ld bc, $3200
    ld bc, $eaa3
    ld c, l
    ld h, e
    call z, $d862
    push de
    jr nc, jr_069_4a99

    nop
    ld b, l
    add hl, de
    and c
    adc a
    nop

jr_069_4a99:
    db $fd
    ld h, c
    add hl, sp
    xor a
    cp a
    jp nz, $8145

    jp $8062


    ld a, $60
    cp $40
    ei
    daa
    ret nc

    ld b, d
    jr nc, jr_069_4ab6

    nop
    ld b, h
    rst $38
    jp nz, Jump_000_3f79

    ld a, d
    ld h, l

jr_069_4ab6:
    ld h, [hl]
    ld a, [hl-]
    ld b, l
    xor a
    db $fd
    and d
    jp nz, Jump_000_0461

    ei

Jump_069_4ac0:
    ld h, c
    rst $30
    jp nz, $c005

    ld h, e
    ret nc

    ld b, [hl]
    ld a, [hl-]
    add b
    jr nc, @+$0c

    rst $38
    and d
    ld a, [hl]
    dec a
    ld h, b
    ld b, h
    inc a
    ld l, b
    ld h, [hl]
    jr c, jr_069_4b0e

    db $fd
    and d
    inc c
    ld a, a
    ld h, h
    ccf
    ld h, d
    sbc c
    dec b
    rst $38
    jp $46c9


    cp d
    jr nz, jr_069_4b17

    ld a, [bc]
    ld [bc], a
    ret nz

    db $e3
    add b
    cp l
    ld h, c
    ld a, a
    ld b, b
    db $fd
    and l
    cp a
    db $e4
    ld b, d
    and c
    nop
    add c
    ld [$41d2], sp
    adc l
    ld h, d
    or [hl]
    ret nz

    db $d3
    jr nc, jr_069_4b0d

    ccf
    and b
    add $00
    db $fd
    ld b, e
    rra
    ld l, b
    ld h, [hl]

Call_069_4b0b:
    ld a, [hl-]
    xor a

jr_069_4b0d:
    inc c

jr_069_4b0e:
    dec sp
    add b
    ei
    ld b, d
    pop bc
    db $e3
    inc bc
    rrca
    inc c

jr_069_4b17:
    ld a, d
    ld bc, $20d6
    adc l
    ld h, e
    ld a, $c0
    ld a, $80
    jr nc, jr_069_4b2d

    ld [hl-], a
    jp $8002


    rst $38
    and c
    ld a, [hl]
    pop hl
    ld [hl], $45

jr_069_4b2d:
    inc a
    call nz, Call_069_40c0
    rra
    sbc b
    sbc b
    nop
    ld bc, $c008
    ld b, d
    sub $23
    adc d
    ld h, h
    inc a
    jr nc, jr_069_4b4c

    nop
    and b
    jp $8090


    ld b, b
    ld b, $21
    db $fd
    jr nz, jr_069_4b53

    ld b, c

jr_069_4b4c:
    jr nz, jr_069_4bc9

    ld b, [hl]
    ld b, e
    add c
    ld [bc], a
    ld a, e

jr_069_4b53:
    ld a, [bc]
    ld sp, hl
    ld h, d
    jr nc, jr_069_4b64

    ret nz

    add b
    ld l, a
    call nz, $8290
    add e
    ld a, l
    add d
    dec [hl]
    ld [hl], l
    db $fd

jr_069_4b64:
    ret nz

    ret nz

    ei
    and l
    ret nz

    inc hl
    pop bc

Call_069_4b6b:
    ret z

    bit 4, a
    jr nc, jr_069_4b79

    ld b, d
    ld [bc], a
    add l
    add a
    ld h, a
    ld [hl], c
    ld [hl], d
    ld l, h
    ld a, a

jr_069_4b79:
    db $e3

jr_069_4b7a:
    ld a, e
    ld hl, $0001
    dec sp
    and d
    rrca
    rrca
    rrca
    dec b
    jp Jump_000_23c1


    ret nc

    add sp, -$4d
    add h
    jr nc, jr_069_4b94

    adc $ff
    add e
    ld [hl], $6e
    ld l, a
    cp a

jr_069_4b94:
    ldh [$39], a
    ld h, b
    inc a
    ld b, h
    dec l
    ld b, [hl]
    ei
    nop
    sbc c
    ld c, $b9
    ld bc, $0203
    and b
    ccf
    ld bc, $0ba0
    jr nz, jr_069_4b7a

    rst $20
    ld [$3043], sp
    ld [$60bd], sp
    jp $e1bf


    ld [hl], b
    ld sp, hl

Jump_069_4bb6:
    ld [hl], c
    ld a, b
    ld h, c
    ccf
    nop
    sub b
    sub c
    inc bc
    inc b
    ld [bc], a
    add c
    ld b, [hl]
    add h
    ld bc, $a7c3
    ret nc

    add sp, -$4d

jr_069_4bc9:
    add h
    jr nc, @+$08

    ld a, h
    ld h, b
    call nz, Call_000_3db0
    ld bc, $c3bd
    ld [hl], a
    ld h, b
    rlc b
    sub c
    sub c
    jp hl


    ret nz

    sbc h
    ld bc, $839d
    ld [c], a
    inc bc
    add h
    ret nc

    and $3b
    add c
    jr nc, jr_069_4bf2

    cp $81
    ld a, [hl]
    pop hl

jr_069_4bed:
    inc e
    adc h
    ld h, c
    cp d
    pop bc

jr_069_4bf2:
    ld a, [hl-]
    ld b, l
    sub c
    ld c, c
    nop
    ld [$86c0], a
    add c
    add b
    sub a
    nop
    ld e, b
    ld hl, $e9d0
    ld a, [hl-]
    rlca
    jr nc, jr_069_4c0b

    ld a, h
    ld h, b
    adc $e0
    sub c

jr_069_4c0b:
    rst $28
    ld b, l
    ld b, e
    scf
    jr c, jr_069_4c8a

    pop bc
    jr c, jr_069_4c4b

    ld b, l
    nop
    add c
    ldh [rDMA], a
    jp Jump_000_0097


    inc bc
    add l
    rst $00
    ld l, h
    jr nc, jr_069_4c27

    ccf
    db $e4
    adc [hl]
    pop hl
    nop

jr_069_4c27:
    ld sp, hl
    pop bc
    jr c, jr_069_4bed

    cp [hl]
    db $e3
    add [hl]
    ld bc, $40c6
    inc bc
    adc b
    call nz, $c261
    ld h, d
    jr nc, jr_069_4c69

    ld [$037a], sp
    ld c, a
    ld [c], a
    ld sp, hl
    ret z

jr_069_4c40:
    add hl, sp
    ld b, [hl]
    jp nz, $51c6

    ld h, c
    jr @-$2e

    add sp, -$7a
    add d

jr_069_4c4b:
    jr nc, jr_069_4c5a

    sbc a
    sbc l
    rst $38
    ldh [$37], a
    add b
    ld [hl], a
    ret nz

    ld de, $3b3f
    ld [c], a
    ei

jr_069_4c5a:
    ret nz

    add c
    pop bc
    and d
    ld b, e
    add h
    ret nc

    db $ed
    jr nc, jr_069_4c6c

    nop
    ld [hl], $82
    push af
    ld b, l

jr_069_4c69:
    rst $00
    pop bc
    or [hl]

jr_069_4c6c:
    pop bc
    ld sp, hl
    and c
    db $fc
    jp nz, $2443

    ret nc

    add sp, -$80
    dec c
    pop bc
    jr nc, jr_069_4c83

    ldh a, [$e3]
    ld e, [hl]
    ld [hl+], a
    ld a, b
    ret nz

    ld a, [c]
    add c
    inc sp

jr_069_4c83:
    jp nz, Jump_069_6242

    ld l, c
    nop
    ld b, c
    cp b

jr_069_4c8a:
    ret nz

    inc a
    ld [c], a
    ret nc

    jp hl


    db $d3
    jp c, $0b30

    ldh a, [$f0]

jr_069_4c95:
    db $e3
    ld h, e
    ld h, d
    or l
    ld h, c
    ld a, l
    db $e4
    ccf

jr_069_4c9d:
    ld b, l
    ld b, [hl]
    ld b, l
    daa
    ld [hl], $a6
    ld [hl], $bf
    db $e3
    ret nc

    ld [$43d7], a
    ld b, h
    jr nc, @+$07

    and h
    ldh a, [$e3]
    ld e, [hl]
    jr nz, jr_069_4c9d

    ld [hl], h
    add e
    dec b
    jp nz, Jump_000_2b91

    nop
    ld [hl], $03
    ld h, d
    and a
    jr nc, jr_069_4c40

    rst $38
    ld b, [hl]
    ret nc

    push hl

jr_069_4cc4:
    db $76
    ld b, l
    jr nc, jr_069_4ccd

    ld h, [hl]
    ld b, a
    jr jr_069_4cc4

    and h

jr_069_4ccd:
    inc a
    ld [c], a
    pop bc
    pop hl
    ld h, a
    and e
    rst $28
    ld h, c
    ld b, b
    ld h, l
    ret nc

    push hl
    ret nz

    jp Jump_000_30a7


    inc bc
    or h
    jr z, jr_069_4c95

    ld h, d
    add hl, bc
    and c
    ld l, l
    ld hl, $6762
    ld c, $b0
    add b
    or a

jr_069_4cec:
    cp b
    ld b, d
    ld a, a
    add h
    ret nc

    and $35
    add a
    jr nc, jr_069_4cfb

    ld hl, sp+$20
    ld h, $b6
    add c

jr_069_4cfb:
    ld a, l
    jp nz, Jump_069_4590

    ld [hl], $b9
    cp d
    ld a, a
    and e
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    ld [hl], $45
    ei
    and c
    ld d, $d0
    db $eb
    ret c

    push de
    db $fd
    jr nz, jr_069_4cec

    jr nc, jr_069_4d1c

    ldh a, [$e8]
    ld [hl], a
    and l
    jr @-$3e

jr_069_4d1c:
    ldh [$30], a
    add b
    pop bc
    ld [c], a
    sbc h
    sbc a
    ret nc

    db $ed
    rst $00
    ld h, b
    rlca
    add b
    ld hl, $30d7
    ld b, $f0
    add sp, -$48
    and e
    or h
    and b
    sbc h
    rst $28
    ld h, c
    pop bc
    push hl
    inc b
    ret nc

    db $ec
    ret


    and e
    jp c, Jump_000_0630

    ldh a, [$e8]
    xor d
    rlca
    cp a
    pop hl
    add d
    db $e3
    nop
    ret nc

    xor $c7
    ld h, b
    add c
    ld b, b
    ld a, l
    ld [bc], a
    jr nc, jr_069_4d55

    ldh a, [$e8]

jr_069_4d55:
    xor b
    inc bc
    dec d
    ld b, c
    nop
    ld [hl], a
    db $e4
    nop
    add c
    ret nc

    db $ed
    rst $30
    ld h, b
    add c
    ld b, e
    jr nc, jr_069_4d6a

    ldh a, [$e8]
    ld l, b
    ld [bc], a

jr_069_4d6a:
    nop
    dec d
    ld b, l
    adc [hl]
    ld b, [hl]
    ret nc

    db $ec
    rst $38
    ld l, [hl]
    add hl, hl
    adc [hl]
    ld [hl+], a
    dec b
    xor a
    db $e4
    rst $08
    ld l, e
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
    ld [hl+], a
    inc b
    ld [bc], a
    ld bc, $0526
    ld [bc], a
    ld [bc], a
    ld hl, $0206
    inc bc
    inc h

Jump_069_4daf:
    ld b, $02
    inc b
    jr z, @+$08

    ld [bc], a
    dec b
    ld e, $07
    ld [bc], a
    ld b, $25
    rlca
    ld [bc], a
    rlca
    daa
    rlca
    ld [bc], a
    ld [$081a], sp
    ld [bc], a
    add hl, bc
    dec d
    add hl, bc
    ld [bc], a
    ld a, [bc]
    inc d
    ld a, [bc]
    ld [bc], a
    dec bc
    rla
    ld a, [bc]
    ld [bc], a
    inc c
    dec e
    ld a, [bc]
    ld [bc], a
    dec c
    jr z, jr_069_4de2

    ld [bc], a
    ld c, $1b
    dec bc
    ld [bc], a
    rrca
    ld h, $0b
    ld [bc], a
    db $10

jr_069_4de2:
    ld a, [de]
    inc c
    ld [bc], a
    ld de, $0c2a
    ld [bc], a
    ld [de], a
    inc de
    dec c
    ld [bc], a
    inc de
    jr @+$0f

    ld [bc], a
    inc d
    dec l
    rrca
    ld [bc], a
    dec d
    db $10
    db $10
    ld [bc], a
    ld d, $2f
    ld de, $1702
    ld l, $14
    ld [bc], a
    jr jr_069_4e32

    dec d
    ld [bc], a
    add hl, de
    add hl, de
    inc e
    ld [bc], a
    ld a, [de]
    ld d, $1d
    ld [bc], a
    dec de
    ld de, $021e
    inc e
    ld a, [de]
    ld e, $02
    dec e
    cpl
    rra
    ld [bc], a
    ld e, $19
    jr nz, jr_069_4e1f

    rra
    dec l

jr_069_4e1f:
    jr nz, jr_069_4e23

    jr nz, jr_069_4e51

jr_069_4e23:
    ld hl, $2102
    inc de
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld [bc], a
    inc hl
    dec de
    inc hl
    ld [bc], a
    inc h

jr_069_4e32:
    inc e
    inc h
    ld [bc], a
    dec h
    cpl
    dec h
    ld [bc], a
    ld h, $1d
    ld h, $02
    daa
    ld de, $0227
    jr z, jr_069_4e55

    add hl, hl
    ld [bc], a
    add hl, hl
    ld l, $2a
    ld [bc], a
    ld a, [hl+]
    dec l
    dec hl
    ld [bc], a
    dec hl
    inc d
    dec l
    ld [bc], a

jr_069_4e51:
    inc l
    add hl, hl
    dec l
    ld [bc], a

jr_069_4e55:
    dec l
    inc h
    ld l, $02
    ld l, $16
    cpl
    ld [bc], a
    cpl
    dec d
    jr nc, jr_069_4e63

    jr nc, jr_069_4e7e

jr_069_4e63:
    ld sp, $3102
    dec e
    inc sp
    ld [bc], a
    ld [hl-], a
    jr nz, jr_069_4ea1

    ld [bc], a
    inc sp
    ld e, $37
    ld [bc], a
    inc [hl]
    dec e
    jr c, jr_069_4e77

    dec [hl]
    inc h

jr_069_4e77:
    jr c, jr_069_4e7b

    ld [hl], $20

jr_069_4e7b:
    add hl, sp
    ld [bc], a
    scf

jr_069_4e7e:
    ld e, $3a
    rst $38
    rst $38
    rst $38
    adc e
    ld c, [hl]
    ret nz

    ld d, h
    dec bc
    ld e, h
    dec l
    ld e, h
    xor a
    ld c, l
    ld c, l
    dec c
    ld c, l
    rst $38
    ldh [$0d], a
    ld sp, hl
    ldh [$2e], a
    ei
    ld c, $0e
    push af
    pop hl
    ld c, l
    ld c, l
    ld l, l
    ld c, l
    dec c
    or b

jr_069_4ea1:
    ldh a, [$e1]
    ei
    ld [c], a
    push af
    ld [c], a
    rst $38
    ldh [rKEY1], a
    ld l, $e1
    ldh [$0e], a
    jp hl


    ld c, [hl]
    sbc $e4
    set 4, b
    ld l, l
    rst $38
    ldh [$2e], a
    ld l, $2e
    inc a
    jp $d1e2


    ldh [rKEY1], a
    ld c, l
    ld l, $6e
    pop hl
    ldh [$be], a
    ld [c], a
    rlca
    dec c
    dec c
    ld c, $fd
    ldh [$e9], a
    ld [c], a
    or l
    ldh [$f4], a
    ldh [$c4], a
    ldh [rNR41], a
    ret nz

    pop hl
    cp [hl]
    pop hl
    ret nz

    db $e4
    sbc e
    ldh [$c3], a
    ldh [$2e], a
    or b
    pop hl
    add l
    ldh [$c8], a
    ldh [$e1], a
    sbc a
    rst $20
    pop bc
    ldh [$0e], a
    add a
    pop hl
    ld l, b
    ldh [$2d], a
    dec l
    push bc
    ld c, l
    db $f4
    pop hl
    ld l, [hl]
    ld h, [hl]
    ldh [$c0], a
    db $eb
    add b
    ldh [$2e], a
    ld l, $0f
    ld l, [hl]
    ld l, [hl]
    ld l, $4e
    ld b, l
    ld [c], a
    ldh [$e1], a
    sbc a
    rst $20
    ld d, c
    pop hl
    inc b
    add l
    pop hl
    ld c, c
    ld [c], a
    dec l
    rra
    pop hl
    and b
    db $e3
    add b
    ld [c], a
    dec [hl]
    pop hl
    ld c, $e2
    add e
    ld l, $6e
    ld b, d
    ldh [$d1], a
    ld [c], a
    add b
    ld [c], a
    ld e, e
    ld [c], a
    ret nz

    rst $20
    ld l, l
    rrca
    dec c
    dec bc
    dec hl
    dec l
    cp a
    push hl
    and $c2
    cp [hl]
    ld [c], a
    dec hl
    pop hl
    nop
    or $e1
    ld c, h
    ld [c], a
    ret nz

    db $e3
    db $dd
    pop bc
    add $c0
    db $10
    ldh [$1f], a
    db $e4
    sbc l
    pop hl
    ccf
    ld l, l
    dec c
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld l, d
    cp a
    and $e0
    pop hl
    nop
    rst $38
    rst $20
    sub b
    jp $e5c0


    ld h, b
    ld [c], a
    and l
    ret nz

    add h
    pop bc
    ldh a, [$e4]
    add d
    ldh [$9f], a
    dec c
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    adc b
    ret nz

    ld a, h
    ldh [$6d], a
    jr jr_069_4fcf

    ret nz

    sub e
    pop bc
    sub d
    pop bc
    ld c, $6d
    ld h, h
    ret nz

    jp nc, $c0c2

    add sp, -$30
    ld a, $c2
    and h
    add $43
    ld [c], a
    sub d
    db $e4
    dec bc
    cp a
    pop hl
    ld l, l
    ld c, l
    inc b
    jp z, $92e0

    call nz, $174e
    ldh [$b2], a
    pop bc
    ld l, $c0
    ld b, b
    db $e4
    ld [hl], c
    db $e3
    rst $00
    ld l, $0e
    ld l, [hl]
    ld b, c
    ret nz

    jp nz, $c1c4

    db $e3
    dec hl
    dec bc
    inc bc
    dec hl
    dec bc
    ret nz

    ldh [$bd], a
    pop bc
    dec d
    jp $c192


    cp a
    jp nz, $c2d2

    ret nz

    nop
    and $e2
    and d
    rst $30
    and b
    ld [bc], a
    ret nz

    ld bc, $17c2
    db $e4
    dec hl
    ld l, e
    cpl
    dec bc
    dec bc
    dec bc
    dec hl
    ld a, [hl]
    pop hl
    dec c

jr_069_4fcf:
    ret nz

    pop hl
    sub d
    call nz, $ff80
    and d
    adc d
    jp $e430


    sbc b
    and d
    or e
    push bc
    and b
    and c
    rst $10
    call nz, Call_000_3f0a
    ld c, d
    ld c, e
    dec bc
    dec bc
    ld l, e
    ld c, e
    ld a, h
    pop bc
    scf
    ret nz

    nop
    db $d3
    and d
    ret nz

    db $e3
    ld e, b
    and e
    and c
    and b
    or [hl]
    and [hl]
    ret nz

    add sp, $3e
    and d
    ld c, b
    pop bc
    rst $38
    dec bc
    ld a, [hl+]
    ld a, [bc]
    dec hl
    ld c, e
    ld l, e
    dec bc
    dec l
    ld bc, $bf2d
    pop bc
    ret nz

    db $ec
    ld [hl-], a
    and c
    ret c

    and e
    inc bc
    and e
    ret nz

    db $ed
    cp a
    ld [c], a
    rst $38
    ld l, e
    ld a, [bc]
    dec hl
    dec hl
    dec bc
    dec c
    dec l
    dec l
    ld bc, $b26d
    jp nz, $e880

    ld e, d
    push bc
    ld hl, sp-$7c
    res 0, e
    add b
    add sp, $17
    push bc
    adc l
    dec hl
    rst $38
    ldh [$0b], a
    dec bc
    pop bc
    ldh [$6e], a
    jp nz, $e640

    ld l, l
    ld bc, $d80d
    add h
    adc c
    add h
    res 0, h
    ret nz

Call_069_5047:
    jp hl


    add hl, bc
    and b
    adc l
    add c
    pop bc
    pop hl
    nop
    ld [bc], a
    jp $ecc0


    ld [hl], a
    add e
    ld c, c
    add d
    ld [$6ac3], sp
    add b
    ret nz

    ld [$a300], a
    nop
    ret nz

    pop bc
    rst $38
    add c
    add hl, sp
    and c
    ret z

    and b
    jp nz, $c0a3

    and b
    ld [hl], a
    add h
    ld l, a
    and h
    jr @+$6c

    add a
    ld h, d
    add l
    cp a
    and [hl]
    ld c, e
    ld c, e
    ld b, c
    jp nz, $c000

    rst $20
    ld h, b
    nop
    ld de, $4183
    ldh [$d8], a
    add l
    db $e3
    ld h, e
    dec bc
    and a
    jp hl


    ld h, e
    rst $18
    add d
    add b
    and h
    rrca

Call_069_5091:
    dec hl
    ld c, e
    dec c
    dec hl
    ld a, h
    add e
    ld a, d
    pop hl
    ld d, b
    add c
    db $10

jr_069_509c:
    add b
    nop
    or [hl]
    ld h, c
    rst $30
    ld l, c
    ld [$ab64], a
    and h
    ld h, b
    add c
    ld b, d
    xor b
    ld a, h
    and b
    ld a, e
    add c
    ld b, $2e
    ret nz

    ld c, $2d
    ld d, b
    add h
    inc sp
    pop hl
    ret c

    add l
    ld a, [hl]
    ld h, c
    ld l, d
    add h
    jr c, jr_069_509c

    ld h, d
    ld l, l
    ld h, b
    inc bc
    xor b
    dec hl
    ld l, e
    dec c
    ld a, l
    and b
    cp l
    add d
    ld bc, $b72d
    ld h, b
    ld [de], a
    add c
    ld e, $62
    ld a, h
    ld h, a
    cp l
    ld h, c
    ld c, c
    push hl
    ld e, l
    ld h, c
    jr jr_069_50e4

    add e
    ret z

    add c
    rst $00
    add b
    dec bc
    dec c

jr_069_50e4:
    ld a, $a1
    db $fc
    ret nz

    ld a, d
    add c
    nop
    rst $28
    ld b, b
    ret nz

    and $d7
    rst $00
    cp l

jr_069_50f2:
    ld h, c
    ret nz

    ld b, d
    ld h, c
    ld h, c
    dec b
    ret z

    call nz, $0260
    inc b
    and c
    ld l, e
    cp [hl]
    ret nz

    dec sp
    and b
    ret nz

    ld [$c081], a
    sub l
    add [hl]
    xor l
    ld [c], a
    db $10
    ld a, [hl+]
    add l
    db $dd
    ld h, h
    ld c, e
    ld h, c
    ld [$0be2], sp
    ld b, e
    add c
    cp e
    ld h, c
    ret nz

    push hl
    add b
    add d
    jp nz, $c241

    sub l
    add [hl]
    dec l
    ld [c], a
    ld a, [hl+]
    add e
    ld [hl], $a4
    ld d, l
    ld b, d
    dec bc
    ld l, c
    dec l
    ld b, e
    ld h, b
    add l
    add c
    ld c, e
    ld a, e
    ld h, b
    ld a, [bc]
    ld c, d
    cp h
    ld h, b
    jr nz, jr_069_50f2

    ld b, b
    or $80
    ld d, $40
    sub [hl]
    and h
    res 4, a
    ld c, $2a
    add [hl]
    ld c, e
    ld b, d
    ldh a, [$c4]
    add d
    ld a, [bc]
    and b
    ld c, b
    pop hl
    ld b, b
    add c
    dec bc
    dec hl
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, e
    ld h, c
    xor h
    add c
    dec d
    ld h, e
    dec d
    xor c
    rst $28
    and c
    ld l, d
    add l
    db $fc
    inc hl
    cp a
    db $e4
    ld d, $83
    and b
    ld c, e
    ld l, e
    cp l
    db $e4

jr_069_516d:
    ld c, e
    cp e
    ld h, d
    jr c, @+$43

    cp l
    ld hl, $c000
    ld [$4279], a
    ret


    add [hl]
    and b
    and e
    sub e
    ld [hl+], a
    rst $08
    and b
    cp a
    ld b, b
    ld a, h

jr_069_5184:
    pop hl
    inc b
    or l
    jp nz, $a3bc

    dec l
    ld sp, hl
    ld [hl+], a
    sub l
    adc b
    ld b, b
    and e
    add b
    push hl
    and b
    and h
    inc e
    xor a
    ld h, c
    db $fd
    ld h, d
    ld a, [bc]
    ld a, [bc]
    ld l, d
    add e
    pop bc
    ld a, $c0
    inc l
    db $e3
    add b
    dec a
    jp nz, Jump_000_21a8

    ld d, l
    adc e
    ld b, b
    and $f0
    inc h
    sub e
    ld h, c
    db $db
    ld hl, $6c0a
    rst $38
    ldh [$c0], a
    and c
    dec bc
    ld c, e
    cp h
    ld h, d
    dec c
    ld l, l
    add hl, sp
    ld b, e
    nop
    add a
    ld b, h
    dec d
    add h
    ld sp, $2ae2
    add d
    ld [hl], e
    call nz, $e3c0
    pop bc
    ld hl, $4240
    nop
    cp e
    pop bc
    cp h
    ld h, d
    pop bc
    ld [c], a
    reti


    ld [hl+], a
    ld c, e
    add [hl]
    adc d
    nop
    ld [$eaa4], sp
    ld h, d
    jr nz, jr_069_5184

    and l
    ld a, $a2
    ld b, l
    jr nz, jr_069_516d

    ld b, b
    call nz, Call_069_6bc0
    cp c
    ret nz

    add b
    ld h, d
    nop
    ld b, a
    add c
    ld h, a
    nop
    jp nz, Jump_000_0424

    ld l, b
    ld a, [hl+]
    add h
    and b
    and [hl]
    ld b, h
    ld bc, $a2bb
    inc c
    ld b, b
    jp Jump_000_23f5


    ld l, l
    ld l, l
    rst $38
    ld h, d
    and d
    jp nz, Jump_000_23d0

    inc a
    ld l, d
    nop
    or h
    ld h, d
    and b
    and e
    ld b, [hl]
    ld bc, $84fd
    cp $a2
    push af
    ld bc, $80d7
    nop
    ld b, d
    nop
    ld d, d
    ld bc, $e480
    inc a
    ld h, h
    pop bc
    ld b, e
    adc h
    ld [bc], a
    rra
    inc hl
    ld d, d
    ld [bc], a
    sla c
    dec c
    ld l, e
    ld bc, $2bc1
    dec bc
    jp nz, Jump_000_3480

    pop bc
    ld c, h
    ld b, b
    sub d
    ld b, $00
    sbc c
    and d
    inc a
    ld h, l
    ld [hl], d
    db $e4
    ld c, e
    ld h, d
    ld [c], a
    and d
    ld a, [hl]
    add [hl]
    pop bc
    and d
    ld a, [hl]
    ld b, b
    nop
    ld b, h
    add b
    ret nz

    ld [c], a
    add d
    add [hl]
    ld b, e
    inc h
    inc sp
    ld b, $8e
    ld h, $29
    inc hl
    ld [$0024], sp
    push bc
    jr nz, jr_069_52a5

    and d
    add l
    ld h, c
    ret nz

    add sp, $30
    ld [hl+], a
    ret nz

    db $ec
    add b
    db $e4
    cp $66
    nop
    ld [bc], a
    push hl
    ld a, [hl]
    pop bc
    cp a
    db $e3
    res 4, e
    ld b, d
    add d
    sbc b
    dec b
    add b
    jp hl


    xor a
    ld [hl+], a
    add b
    ld [hl+], a
    jp Jump_069_4243


    ld a, $a3
    ld a, l
    add b
    ld a, $e4
    cp a
    nop
    and d
    call nz, $206d
    sbc b
    ld [$c3f2], sp
    nop
    and $2b
    ld h, h
    ld b, e
    and d
    ld c, l
    add a
    inc bc
    ret nz

jr_069_52a5:
    ld hl, $6b01
    add b
    ld h, c
    add e
    add d
    ld b, d
    add d
    sbc b
    ld [$a5f8], sp
    ld [$68c5], a
    ld h, a
    nop
    sub b
    ld b, c
    ld b, c
    ld bc, $02bf
    jp nz, $5da2

    pop bc
    rra
    ld h, d
    inc bc
    add a
    ld d, h
    ld h, l
    nop
    ld [hl], d
    ld h, $65
    add sp, -$42
    ld bc, $613e
    inc a
    add b
    db $ed
    ld b, h
    ld de, $8360
    adc h
    ld b, b
    cp d
    ld [bc], a
    add b
    add l
    ld c, c
    ld bc, $6768
    ld a, h
    ld [hl+], a

jr_069_52e3:
    jp $2b41


    ld b, h
    and d
    nop
    ld a, $42
    and c
    jp $8b03


    ld b, b
    ld b, d
    ld [hl], d
    ld h, $68
    ld l, b
    cp a
    and e
    ld b, c
    jp $8300


    ld b, e
    jr jr_069_52e3

    ret nz

    db $ec
    xor l
    ld hl, $edc0
    ld [hl], e
    add d
    cp $40
    ret nz

    ld [c], a
    nop
    cp a
    pop hl
    add b
    push hl
    rst $00
    and c
    sbc b
    add hl, bc
    ld a, [hl-]
    and c
    ld b, b
    ld b, b
    ld [hl], d
    dec h
    ret nz

    ld [$7e00], a
    nop
    ld b, b
    ld h, h
    ld b, c
    inc hl
    sub h
    add e
    ld [bc], a
    ld h, h
    ld b, e
    ld h, [hl]
    dec l
    and c
    ld a, [hl]
    call nz, $8000
    ld [$027d], a
    ret nz

    and d
    inc bc
    ld h, d
    add b
    ld h, b
    jp nc, $c1e8

    inc h
    add hl, sp
    ld [hl+], a
    ld b, b
    dec bc
    inc hl
    ld [hl], a
    inc bc
    dec a
    rlca
    ld c, h
    add e
    ld [bc], a
    jp $c2bf


    ld c, l
    jp c, $8022

    rla
    ld b, h
    ld b, [hl]
    ld [c], a
    dec [hl]
    ld b, c
    ld b, b
    ld b, e
    cp a
    add a
    ret nz

    db $ed
    ld bc, $2d86
    add b
    and l
    ld b, d
    rla
    ld b, h
    adc $a6
    ret nz

    jp $a26b


    ld a, [hl]
    inc hl
    ld h, $26
    ld l, l
    ld [bc], a
    ld [hl], e
    add b
    ld l, l
    ccf
    jp nz, $c280

    rst $38
    ld h, c
    ld b, c
    add h
    rst $10
    ld b, h
    adc $a3
    nop
    dec c
    ld b, e
    ld h, a
    and $e0
    ld hl, $6561
    ld a, e
    ld bc, $4100
    add d
    and h
    sra c
    nop
    adc $a6
    add l
    add e
    ld [hl], $80
    ld a, [hl]
    dec h
    ei
    ld h, d
    ld a, e
    rlca
    ld a, a
    ret nz

    inc bc
    and d
    nop
    add d

Jump_069_53a1:
    and d
    ret nz

    db $ec
    ld d, $a2
    ret nz

    db $e3
    ld h, a
    and $32
    ld b, d
    db $ed
    ld h, e
    xor a
    call nz, $c500
    ld b, d
    add d
    and e
    adc b
    xor c
    ret nz

    push hl
    pop bc
    add h
    or d
    ld h, $24
    ld h, h
    dec sp
    ld b, $01
    dec c
    sub c
    ld b, e
    ld b, d
    jp nz, $268b

    rst $18
    ld b, b
    inc b
    add h
    adc d
    ld b, c
    or h
    ld [bc], a
    nop
    ret nz

    rst $20
    xor d
    ld b, h
    ei
    dec b
    ld l, b
    ld h, e
    ret nz

    db $ec
    ld a, [hl]
    add $2d
    call nz, $a96f
    nop
    xor d

jr_069_53e4:
    ld b, l
    cp h
    ld h, h
    add sp, -$5c
    ld b, c
    jr nz, @+$5d

    add $17
    ld b, b
    sub d
    ld h, h
    db $10
    ld [hl+], a
    nop
    rrca
    jr nz, jr_069_545e

    rst $20
    or h
    inc h
    ret nz

    add h
    ld b, d
    ld h, e
    add c
    ld h, e
    pop bc
    ld h, d
    jp nc, $0021

    ld c, a
    ld bc, $22fd
    sub c
    ld b, c
    ld l, [hl]
    ld b, e
    ret nz

    add sp, -$1a
    add $a8
    ld b, c
    ld [bc], a
    ld h, e
    ld [bc], a
    ld [hl], a
    ld h, d
    dec l
    ld e, $42
    sbc h
    ld h, b
    sub d
    ret nz

    call z, Call_069_5047
    add h
    ld h, a
    and $70
    inc [hl]
    inc bc
    ld h, [hl]
    call nz, $2180
    jp nz, Jump_000_2d00

    dec bc
    dec hl
    cp a
    inc hl
    nop
    sub b
    dec h
    sbc h
    ld b, d
    dec de

jr_069_5439:
    ld h, d
    ret nz

    and $ff
    db $e4
    pop hl
    ld h, e

Jump_069_5440:
    ld h, $c4
    add b
    daa
    nop
    ret nz

    ldh [$80], a
    ld hl, $2590
    ld c, c
    inc h
    db $76
    add l
    ld [hl], $a6
    ld h, c
    ld h, d
    jp c, Jump_000_0065

    ldh a, [rNR43]
    ld bc, $7f83
    jr nz, jr_069_53e4

    nop

jr_069_545e:
    add d
    ld b, d
    ld e, d
    ld h, d
    add hl, bc
    ld h, $c0
    jp hl


    ld [$43f8], sp
    ld h, e
    add c
    ld sp, $2d47
    ret nz

jr_069_546f:
    jr nz, jr_069_546f

    ldh [$81], a
    ld b, b
    ld [bc], a
    ld h, c
    nop
    ret z

    pop bc
    ld e, d
    ld h, d
    ret nc

jr_069_547c:
    inc b
    ld b, b
    add sp, -$80
    push hl
    and e
    jr z, jr_069_547c

    jp hl


    jp nz, $0000

    ret nz

    jp hl


    ld d, l
    ld [hl+], a
    ld e, b
    inc hl
    adc b
    add h
    ld b, c
    db $e4
    ld [bc], a
    ld b, h
    inc e
    ld b, c
    jr z, jr_069_5439

    inc bc
    ld c, $2d
    rst $38
    and $02
    ld h, l
    and $c5
    ret nc

    inc b
    ld l, h
    ld h, h
    ld hl, sp+$27
    inc h
    or l
    ld b, $dc
    ld [bc], a
    dec l
    dec [hl]
    nop
    ret


    and c
    ld l, l
    ld e, h
    dec h
    and $c5
    nop
    push de
    and $32
    ld h, c
    or e
    ldh [rP1], a
    nop
    nop
    sbc l
    and b
    rst $38
    rst $20
    ret c

    push de
    ret c

    ld a, [c]
    add sp, -$0b
    db $ed
    rst $10
    rst $18
    jp nc, $d1d0

    ret nc

    jp nc, $ebde

    ret c

    push de
    db $dd
    push de
    pop bc
    add sp, -$2e
    ret nc

    jp nc, $e5be

    db $eb
    and b
    db $e3
    and b
    ld [$e5a6], a
    db $f4
    ldh [$a6], a
    pop hl
    jp c, $d4d7

    ld a, [hl-]
    rst $18
    ldh [$d7], a
    jp $d6ea


    call nc, $86d6
    rst $20
    sbc a
    and $ef
    db $e4
    push hl
    db $ec
    db $ed
    ld l, c
    ldh [$9f], a
    sbc l
    sbc l
    rst $28
    sbc l
    and d
    sbc a
    and b
    db $f4
    pop hl
    db $d3
    ret nc

    db $d3
    rst $38
    and b
    call c, $d9da
    rst $10
    call nc, $dad7
    add [hl]
    ld d, b
    rst $20
    db $d3
    sub $af
    pop hl
    push af
    db $e3
    ldh [$e0], a
    sbc a
    rst $20
    and $fd
    rst $20
    jp $a2e0


    sbc l
    or [hl]
    sub b
    jp $d790


    sub b
    or [hl]
    sbc a
    ld b, h
    ld [c], a
    call nc, $e088
    call c, Call_000_3fdb
    jp c, $dad9

    call c, $dfde
    ld d, c
    and $2e
    ldh [$e3], a
    jp nc, Jump_000_24d4

    db $e3
    ldh [$e2], a
    sbc a
    push hl
    add sp, -$17
    and b
    ld a, a
    sbc a
    or [hl]
    sub c
    ld b, l
    ld b, e
    sub c
    call nz, $e5bf
    db $fc
    rst $00
    ldh [$30], a
    pop hl

Jump_069_5560:
    call c, $dcdb
    and b
    ldh [$e1], a
    ld l, $26
    db $e4
    db $d3
    ret nc

    db $dd
    ld [hl], b
    ldh [$d9], a
    ret nz

    jp nz, $e1e0

    ld sp, hl
    db $eb
    sbc a
    db $e4
    rlca
    pop hl
    sbc a
    or [hl]
    sub b
    ld c, d
    ld c, c
    ld a, a
    ld c, c
    ld d, d
    sub c
    call nz, $9090
    jp $e17e


    db $ec
    rst $00
    pop hl
    sub a
    call nz, $e3e2
    ld b, c
    push hl
    ret nc

    pop de
    db $dd
    rlca
    reti


    db $dd
    ret nc

    add b
    jp nz, $e0a7

    dec c
    ld [c], a
    ret c

    db $e4
    pop bc
    ldh [rIE], a
    jp $5455


    ld e, c
    ld d, e
    ld a, c
    ld a, h
    ld a, l
    ld [bc], a
    cp l
    ldh [$9e], a
    sub d
    ret z

    ld e, a
    jp nz, $c358

    or c
    pop bc
    ld b, b
    push hl
    db $e3
    add sp, -$02
    pop bc
    db $e3
    sub b
    call nz, Call_069_7a79
    ld a, e
    ld a, e
    adc a
    rrca
    ld b, [hl]
    ld a, a
    ld a, l
    sub c
    ret nz

    ldh [$75], a
    pop bc
    sub d
    jp $c25f


    ld c, h
    jp nc, Jump_000_2cc2

    ldh [$d7], a
    call nc, $e540
    dec b
    ret nz

    jp nc, $c074

    db $fc
    and b
    db $e3
    pop bc
    pop hl
    sub b
    ld a, c
    ld a, [hl]
    ld l, $26
    ld a, [hl+]
    sbc a
    ld b, c
    ld b, l
    xor [hl]
    ld a, a
    ld a, l
    cp l
    call nz, $c392
    sub $b8
    sub a
    pop bc
    or d
    jp nz, $c2b1

    reti


    jp c, Jump_000_33db

    push hl
    sub $ea
    or e
    pop bc
    sub $a7
    pop hl
    and c
    adc b
    ret nz

    sub c
    add b
    ld b, h
    rst $38
    ld l, $20
    jr nz, jr_069_563a

    ld a, [hl+]
    xor a
    ld b, [hl]
    add c
    rla
    sub b
    sub b
    and c
    sub d
    rst $00
    rst $10
    ld d, a
    jp nz, $c0b2

    ld a, [bc]
    db $e3
    add $e9
    jp $e5e4


    rra
    ret nz

    ld [c], a
    and e
    and b
    and c
    sbc [hl]
    sub b
    rst $38
    call nz, Call_069_7990
    adc l
    ld c, d
    ld d, [hl]
    cp l

jr_069_563a:
    jr nz, @+$41

    jr nz, jr_069_5668

    ld b, l
    add e
    add h
    sub b
    rst $38
    jp nz, $c492

    pop bc
    db $dd
    cp a
    and c
    or d
    jp nz, $a09e

    ld b, l
    and l
    db $10
    ret nz

    rst $10
    jp nc, $dde5

    ld [c], a
    and c
    db $dd
    ld hl, sp-$5f
    ld bc, $80e1
    ld b, [hl]
    ld d, l
    rst $38
    ld h, c
    add hl, sp
    ld [hl+], a
    ld [hl+], a
    ld b, b
    add e
    add [hl]

jr_069_5668:
    add l
    inc c
    db $fd
    and e
    sub d
    call nz, $d3d0
    cp a
    and h
    sbc [hl]
    and d
    inc b
    and h
    db $10
    ret nz

    cpl
    jp c, $d0d3

    ret nc

    ld [hl], d
    ret nz

    pop de
    and $c2
    ld b, d
    ret nz

    rst $38
    add d
    add e
    ld b, l
    ld d, e
    ld a, [hl-]
    ld l, h
    ld [hl], d
    adc b
    sbc a
    add a
    add l
    sub c
    or [hl]
    sbc a
    call $92a1
    call nz, $91d4
    rst $10
    scf
    ret nz

    ret c

    adc d
    res 0, e
    call c, $c0b4
    ld [hl], c
    jp nz, $fdd7

    and b
    sbc a
    and b
    sbc [hl]
    sub b
    add l
    add [hl]
    add e
    ld b, b
    rra
    ld l, h
    ld l, a
    ld l, [hl]
    add hl, sp
    ld b, [hl]
    pop bc
    ldh [$cd], a
    and c
    sub d
    push bc
    adc h
    ld b, $e1
    ret c

    adc c
    and b
    and b
    res 0, h
    or h
    ret nz

    ld [hl], c
    jp nz, $fcda

    sbc a
    and c
    add d
    and b
    add l
    add a
    adc b
    ld [hl], b
    ld l, [hl]
    dec [hl]
    inc bc
    ld a, [hl-]
    xor [hl]
    ld [bc], a
    pop bc
    call $92a1
    call nz, $a1b8
    ld [hl], a
    adc e
    ld l, d
    add h
    call nc, $c0b4
    ld [hl], c
    jp nz, $9fdc

    and d
    and c
    adc b
    and b
    sub c
    ld [hl], $3f
    dec [hl]
    dec [hl]
    ld [hl], $af
    sub b
    or [hl]
    cp l
    add b
    ld [hl], b
    add d
    ldh [$92], a
    push bc
    ld [hl], a
    adc h
    ld l, d
    add a
    rst $18
    and $bf
    and e
    sub b
    xor [hl]
    ld [hl], $c7
    ld a, [hl-]
    xor [hl]
    ld b, [hl]
    cp l
    add e
    jp nc, $dfc4

    ld h, c
    db $e4
    push hl
    sub b
    ld [hl], a
    adc e
    ld l, d
    add h
    ld [de], a
    add l
    rlca
    add b
    sbc a
    add [hl]
    add b
    rst $38
    pop hl
    call nz, Call_069_441f

jr_069_5727:
    ccf
    xor a
    ld b, e
    xor a
    cp $84
    sbc h
    and e
    ret nz

    ld h, b
    ret nz

    ld h, e
    add b
    ret c

    add h
    add [hl]
    ld h, e
    di
    push hl
    add e
    ld h, e
    rlca
    add b
    sbc a
    or [hl]
    db $fc
    ld c, c
    add b
    ret z

    add b
    sub b
    sub c
    ld [hl], $ac
    jr c, jr_069_5783

    sub e
    ld [hl], $91
    ld a, [c]
    and b
    dec sp
    add b
    ld [$61a1], a
    add b
    ld h, b
    rst $10
    nop
    ld h, e
    add b
    sub [hl]
    add c
    or b
    add l
    ld c, [hl]
    ld h, b
    and e
    add e
    dec hl
    and e
    add l
    add d
    inc b
    and b
    rst $38
    ld a, h
    ld a, l
    call nz, Call_069_4491
    ld a, [hl-]
    xor l
    ld h, d
    inc bc
    ld h, e
    ld h, h
    cp l
    add b
    cp [hl]
    and e
    add b
    and e
    ret nz

    ld h, b
    dec b
    ret z

    add hl, bc
    and b
    ldh a, [$50]

jr_069_5783:
    ld h, l
    db $dd
    ld h, c
    ld [hl], a
    and b
    ld b, [hl]
    add b
    sub c
    ld a, c
    ld a, [hl]
    ld b, [hl]
    cp $c7
    add b
    ld b, l
    xor [hl]
    add hl, sp
    ld h, d
    ld h, a
    dec [hl]
    ld a, [hl-]
    dec c
    ld b, l
    cp $80
    jp Jump_069_6c9e


    ld h, b
    ld b, b
    ld h, b
    ld h, c
    ret nz

    jr c, jr_069_5727

    and b
    sub l
    add [hl]
    ld l, l
    pop hl
    or d
    and l
    db $dd
    ld h, c
    add a
    ld h, b
    and c
    pop bc
    pop hl
    xor [hl]
    rst $38
    ld b, [hl]
    ld b, l
    ld [hl], $6a
    ld [hl], $af
    ld b, l
    add b
    ld l, a
    dec a
    jr c, jr_069_57fb

    ld b, l
    cp $80
    call nz, Call_069_6ca1
    ld h, b
    ret nz

    ld b, b
    ld h, b
    ld h, c
    pop bc
    sub l
    adc c
    ld a, a
    ld h, c
    ld a, [hl+]
    add l
    and h
    ld h, c
    add sp, -$17
    db $fc
    inc bc
    ldh [$82], a
    ldh [$af], a
    ld b, l
    ld [hl], $6c
    ld l, l
    xor h
    xor a
    add hl, sp
    ld a, c
    adc l
    ld b, a
    cp e
    ld h, b
    ld b, l
    cp [hl]
    add b
    sbc [hl]
    add b
    ld l, h
    ld h, c
    cp e
    ld h, h
    sub l
    adc b
    ld l, l
    pop hl
    ld a, [hl+]
    add [hl]
    scf
    ld b, d

jr_069_57fb:
    call nz, $8280
    rst $38
    add e
    ld b, [hl]
    add e
    adc c
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    xor l
    rst $38
    ld a, [hl-]
    add b
    ccf
    ld d, d
    ld d, h
    ld d, h
    ld h, c
    ld d, l
    inc bc
    add c
    sub c
    ld a, [$1544]
    ld b, b
    ld l, e
    ld b, b
    sub l
    adc b
    ld l, l
    pop hl
    ld a, [hl+]
    add l
    ld hl, sp-$18
    ld b, b
    ld b, a
    ld h, e
    add [hl]
    and b
    add a
    add l
    ld [hl], $3b
    dec [hl]
    rst $28
    dec [hl]
    dec [hl]
    ld l, e
    ld l, h
    add b
    ret nz

    ld d, d
    ld d, l
    adc h
    nop
    cp h
    ld h, b
    cp c
    ld b, c
    adc [hl]
    add h
    sub l
    adc c
    rst $28
    ld b, b
    ld a, [hl+]
    add l
    dec de
    and c
    jp $ff65


    sub b
    sub b
    sub c
    ld b, e
    ld [hl], $38
    jr c, jr_069_58bd

    dec bc
    ld l, a
    ld l, h
    ld a, l
    and b
    ld b, h
    ld a, e
    ld h, b
    inc a
    add c
    inc l
    ld b, b
    sbc a
    ld [hl+], a
    add b
    sub l
    adc d
    ld h, l
    ld b, d
    ld a, [hl+]
    add d
    add sp, $41
    ld a, a
    ld hl, $410a
    ld b, l
    ld b, b
    sub c
    rst $38
    xor [hl]
    ld c, c
    ld c, c
    ld [hl], $6e
    ld [hl], h
    dec [hl]
    xor h
    inc bc
    dec [hl]
    ld [hl], $be
    pop bc
    dec sp
    add l
    adc h
    pop hl
    sub l
    add a
    ld b, h
    ld hl, $872a
    db $fc
    and b
    and e
    cp $44
    jp Jump_069_4daf


    ld h, c
    ld d, d
    ld [hl], $07
    ld l, c
    dec [hl]
    xor l
    ld a, $c0
    cp h
    ld h, c
    ld a, e
    ld h, d
    ld b, a
    ld h, e
    sub l
    add a
    ldh a, [rDIV]
    ld hl, $872a
    and b
    and e

Call_069_58a5:
    rst $30
    jp $c4a1


    ld c, d
    ld h, b
    cpl
    ld h, c
    ld e, b
    xor [hl]
    ld l, e
    ccf
    ldh [$39], a
    cp h
    ld h, c
    ld sp, hl
    daa
    nop
    ld c, c
    ld h, d
    sub l
    add h
    add hl, de

jr_069_58bd:
    ld hl, $852a
    and b
    and [hl]
    ld [de], a
    add c
    nop
    ld b, b
    ld b, b
    ld b, c
    rra
    xor a
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], c
    cp h
    ld h, c
    ld a, c
    inc h
    ld sp, hl
    ld h, $80
    ld b, $64
    add hl, de
    ld hl, $852a
    inc sp
    jp nz, Jump_000_21c1

    rst $18
    jr nz, jr_069_5921

Jump_069_58e2:
    ld b, c
    ld b, l
    rst $38
    ld [hl], $62
    ld h, [hl]
    ld [hl], $36
    jr c, jr_069_5929

    scf
    ld bc, $4045
    and b
    ld b, b
    add $a2
    ld h, c
    ld e, h
    dec bc
    ld c, e
    add [hl]
    and b
    and l
    nop
    ld b, e
    ld a, a
    sub c
    ld [hl], $62
    ld h, a
    ld l, b
    ld h, [hl]
    ld [hl], $c3
    ld [c], a
    inc bc
    sbc l
    sbc l
    ret nz

    add c
    sbc e
    inc bc
    ld e, c
    call nz, Call_069_6b3c
    or h
    ld b, e
    ld e, e
    inc hl
    db $fd
    db $eb
    db $fd
    add e
    ld a, d
    ld h, h
    ld a, b
    dec [hl]
    dec [hl]
    ld l, b
    inc bc

jr_069_5921:
    ld h, [hl]
    add hl, sp
    add h
    and $a2
    call nz, $2441

jr_069_5929:
    inc a
    ld l, d
    ld d, d
    ld [bc], a
    rst $38
    ld h, h
    or [hl]
    ld b, [hl]
    nop
    sbc [hl]
    jp $80be


    ld b, l
    ld a, [hl-]
    cp a
    and b
    ld l, h
    ld bc, $c06d
    ldh [rSC], a
    ld b, b
    adc h
    nop
    and d
    push bc
    ld [hl], h
    ld h, c
    db $10
    ld b, b
    inc a
    ld l, e
    ld e, h
    add hl, hl
    db $e3
    xor c
    ld b, h
    sbc a
    or [hl]
    call nz, $81be
    add hl, sp
    ld a, a
    and b
    rlca
    ld [hl], e
    ld l, [hl]
    ld b, b
    ld [bc], a
    ld b, d
    adc h
    nop
    ld b, d
    add [hl]
    sub d
    ldh [rNR10], a
    ld b, b
    ldh [$3c], a
    ld l, e
    add hl, hl
    db $e3
    ld [c], a
    and c
    or l
    jr nz, jr_069_5974

    ld h, b
    add b
    ld b, [hl]
    xor a

jr_069_5974:
    rst $38
    ld b, [hl]
    ld b, l
    scf
    jr c, jr_069_59af

    ld l, d
    dec [hl]
    add hl, sp
    nop
    inc b
    and d
    adc h
    nop
    ld b, d
    add a
    db $10
    ld b, d
    inc a
    ld l, e
    ld l, d
    inc bc
    add hl, hl
    ld hl, $20b5
    db $eb
    sbc [hl]
    sub b
    ld [bc], a
    ld b, b
    ld b, [hl]
    rst $38
    ldh [rLY], a
    inc a
    ld l, d
    ld b, b
    ld bc, $c380
    add h
    and d
    add $51
    add [hl]
    inc a
    ld l, b
    or $45
    jp c, Jump_000_21b5

    ld a, [hl]
    cp l
    add e
    adc c
    add e
    ld b, [hl]

jr_069_59af:
    ld b, b
    ld l, h
    ld l, l
    ld a, [hl]
    ld b, b
    ld bc, $0045
    ld h, h
    dec h
    inc bc
    inc bc
    adc b
    inc a
    ld h, a
    ld a, h
    call nz, Call_069_652b
    ld [bc], a
    ld b, b
    inc hl
    ld b, [hl]
    ld b, [hl]
    nop
    ld b, b
    rst $38
    ld hl, $e1c0
    call nz, Call_000_01ff
    ld de, $c122
    ld [$0a98], a
    ld a, a
    ld a, [hl+]
    ld a, h
    pop bc
    ld l, b
    ld h, l
    inc a
    ld h, c
    xor [hl]
    ld b, l
    inc bc
    scf
    scf
    rst $38
    ld hl, $a4c2
    add e
    add l
    sbc b
    add hl, bc
    db $fd
    ld b, h
    ld [hl], d
    dec h
    db $f4
    ld l, b
    ld l, b
    cp h
    ld b, b
    xor a
    add b
    ret nz

    ld [hl], $36
    ld [hl], $45
    add b

jr_069_59fc:
    nop
    ld b, e
    adc b
    ld h, e
    rrca
    add b
    sbc b
    add hl, bc
    pop af
    ld h, l
    ld [hl], d
    inc h
    ld h, l
    rst $20
    ld [$3d7a], a
    nop
    sub c
    ld b, b
    pop bc
    ld [hl], $44
    sub c
    call nz, $0141
    nop
    ld l, d
    ret nz

    add e
    add h
    inc bc
    adc h
    dec c
    add b
    ld [hl], d
    ld h, $65
    jp hl


    ld b, b
    jr nz, @-$3f

    and d
    nop
    ld b, c
    ret nz

    ld b, [hl]
    add c
    xor b
    ld b, b
    add e
    add h
    inc bc
    adc h
    or h
    ld b, b
    ld [hl], d
    ld h, $68
    ld l, c
    nop
    ei
    jr nz, jr_069_59fc

    and d
    ld b, c
    pop bc
    jp $2143


    and l
    inc bc
    adc d
    ld b, b
    ld b, d
    ld a, a
    dec h
    ld [hl], h
    ld l, b
    ld l, d
    ld a, [hl]
    nop
    ld b, l
    ret nz

    nop
    dec [hl]
    add hl, sp
    ld b, [hl]
    ld b, c
    ld h, $80
    ld b, [hl]
    add [hl]
    inc bc
    add l
    ld b, b
    ld b, h
    rst $00
    add e
    jp hl


    nop
    ld l, b
    ld h, a
    ld e, e
    add b
    sbc [hl]
    ld b, b
    ld a, a
    db $e3
    ret nz

    ldh [rSTAT], a
    jp nz, $2300

    ld e, c
    ld b, e
    ld [hl], a
    dec b
    db $eb
    dec c
    add d
    db $10
    inc [hl]
    add h
    inc l
    and c
    ld l, b
    ld h, [hl]
    ld [hl-], a
    and b
    sbc [hl]
    rst $38
    jp nz, $8040

    di
    nop
    dec b
    sbc [hl]
    ld [bc], a
    ld hl, $17d5
    ld b, l
    sub [hl]
    dec b
    push de
    nop
    xor l
    ld hl, $64f4
    ld l, b
    ldh [rNR43], a
    ld l, b
    ld h, l
    cp l
    ld h, b
    sbc [hl]
    ld a, a
    pop bc
    inc a
    ld b, h
    jp nz, Jump_000_0601

    ld [bc], a
    ld [hl+], a
    db $d3
    sub $17
    ld b, l
    inc b
    adc c
    ld l, e
    and l
    ret nz

    dec h
    ld h, l
    push hl
    db $10
    ld a, h
    and c
    ld b, c
    ld [c], a
    add b
    pop bc
    ld b, c
    ld bc, $d0d8
    jr nz, jr_069_5ad7

    ld b, h
    inc b
    adc e
    jr nz, jr_069_5b2c

    ldh a, [$7e]
    ld h, h
    ret nz

    pop bc
    ld b, b
    pop bc
    ld b, [hl]
    ld b, h
    db $dd
    rla
    ld b, l
    inc b
    adc h
    and h
    ld h, a
    add sp, $24

jr_069_5ad7:
    ld h, c
    db $eb
    ld a, e
    inc b
    cp l
    jr nz, jr_069_5b23

    add c
    and d
    or [hl]
    dec e
    sbc a
    dec c
    ld h, c
    db $d3
    ret nc

    pop de
    rla
    ld b, [hl]
    inc b
    adc e
    ld h, a
    add sp, -$60
    ei
    ld h, b
    add c
    ld h, b
    ld a, e
    ld [bc], a
    ld c, c
    and b
    cp a
    ldh [rLYC], a
    add c
    and b
    and c
    nop
    ld h, [hl]
    ld [hl+], a
    pop de
    ld h, c
    rla
    ld b, l
    inc b
    adc e
    ld h, a
    add sp, $24
    ld h, e
    dec a
    add b
    cp d
    nop
    nop
    dec sp
    ld [hl+], a
    ld [bc], a
    db $e3
    ld h, [hl]
    ld hl, $61d1
    rla
    ld b, h
    ld d, a
    add c
    inc b
    add l
    add $c0
    nop
    ld h, a
    add sp, $3d

jr_069_5b23:
    ld l, b
    ei
    ld [bc], a
    ei
    db $e3
    ld [bc], a
    jp nz, $61d1

jr_069_5b2c:
    rla
    ld b, e
    db $d3
    ld b, d
    nop
    sub l
    ld b, d
    dec l
    jp $e867


jr_069_5b37:
    xor d
    ld b, a
    cp a
    jp hl


    add b
    ld b, h
    ld h, l
    add $fd
    ld h, $b0
    dec l
    jp $e767


    and [hl]
    ret


    pop bc
    and b
    scf
    dec a
    rst $38
    ldh [$37], a
    nop
    add c
    ld h, h
    ld b, h
    inc b
    sbc [hl]
    ld [bc], a
    ld d, [hl]
    inc b
    dec l
    call nz, $e667
    ld a, l
    inc hl
    xor d
    ld b, d
    ld l, [hl]
    ccf
    add c
    add hl, sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    add hl, sp
    add c
    ld h, d
    add b
    ld e, $42
    cp h
    ld hl, $017e
    db $fd
    inc h
    dec l
    call nz, $e867
    xor d
    ld c, b
    sbc [hl]
    rst $38
    sub b
    ld a, $69
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld bc, $bf3e
    inc h
    adc h
    and h
    rrca
    and a
    dec l
    push bc
    add hl, sp
    ld l, d
    xor d
    ld b, [hl]
    ret nz

    pop hl
    ld [bc], a
    ld b, b
    add b
    dec [hl]
    ret nz

    ldh [$c1], a
    db $e3
    sub b
    inc h
    rrca
    and a
    dec l
    push bc
    or c
    rst $20
    ld hl, sp-$53
    ld h, d
    dec sp
    ld hl, $00dc
    and c
    sub b
    add hl, sp
    ld l, e
    ld [hl], c
    nop
    rst $38
    ldh [$7f], a
    jr nz, jr_069_5b37

    jr nz, jr_069_5c13

    ld h, a
    adc e
    ld c, b
    dec l
    call nz, $e7b1
    ld h, c
    ld h, b
    ld l, h
    ld d, a
    ld h, d
    sub c
    ld hl, $b69f
    ret nz

    push bc
    or [hl]
    sbc a
    ld b, d
    ld h, c
    ret nz

    sub b
    dec hl
    ld [hl], e
    ld b, d
    dec l
    call nz, Call_069_4902
    ld d, a
    ld h, e
    or e
    ld [hl+], a
    sbc a
    sbc l
    ld [bc], a
    rst $38
    db $e4
    sbc a
    ld b, d
    ld h, d
    sub b
    dec h
    or $42
    or d
    jp $c92d


    add d
    dec b
    nop
    pop bc
    jr nz, @-$46

    inc bc
    ld d, b
    push bc
    dec h
    add h
    sub b
    ld h, $9f
    db $e3
    rst $38
    cp $6e
    ld [bc], a
    nop
    ret c

    and e
    ld l, d
    add [hl]
    sbc a
    push hl
    jp nz, Jump_000_00ec

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

jr_069_5c13:
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
    inc e
    inc b
    ld [bc], a
    ld bc, $051d
    ld [bc], a
    ld [bc], a
    jr nz, jr_069_5c3f

    ld [bc], a
    inc bc
    rla
    rlca
    ld [bc], a
    inc b

jr_069_5c3f:
    ld e, $09
    ld [bc], a
    dec b
    inc d
    ld a, [bc]
    ld [bc], a
    ld b, $1e
    rrca
    ld [bc], a
    rlca
    jr jr_069_5c5d

    ld [bc], a
    ld [$111a], sp
    ld [bc], a
    add hl, bc
    dec e
    ld de, $0a02
    rra
    ld de, $0b02
    ld [hl+], a
    ld [de], a

jr_069_5c5d:
    ld [bc], a
    inc c
    inc de
    inc de
    ld [bc], a
    dec c
    jr jr_069_5c78

    ld [bc], a
    ld c, $1c
    inc de
    ld [bc], a
    rrca
    ld a, [de]
    dec d
    ld [bc], a
    db $10
    inc h
    dec d
    ld [bc], a
    ld de, $1614
    ld [bc], a
    ld [de], a
    db $10

jr_069_5c78:
    rla
    ld [bc], a
    inc de
    add hl, de
    rla
    ld [bc], a
    inc d
    jr jr_069_5c9c

    ld [bc], a
    dec d
    rra
    dec de
    ld [bc], a
    ld d, $17
    inc e
    ld [bc], a
    rla
    inc e
    dec e
    ld [bc], a
    jr jr_069_5ca3

    ld [hl+], a
    ld [bc], a
    add hl, de
    ld d, $23
    ld [bc], a
    ld a, [de]
    ld [hl+], a
    ld h, $02
    dec de
    rla

jr_069_5c9c:
    jr z, jr_069_5ca0

    inc e
    rra

jr_069_5ca0:
    add hl, hl
    ld [bc], a
    dec e

jr_069_5ca3:
    ld hl, $022d
    ld e, $20
    cpl
    ld [bc], a
    rra
    ld e, $33
    ld [bc], a
    jr nz, jr_069_5cc6

    inc [hl]
    ld [bc], a
    ld hl, $3821
    rst $38
    rst $38
    rst $38
    ret nz

    ld e, h
    ld [c], a
    ld h, b
    ld a, [$1c65]
    ld h, [hl]
    rra
    ld l, $0e
    ld c, $0e
    ld c, l

jr_069_5cc6:
    rst $38
    add sp, -$10
    rst $38
    ldh [$eb], a
    ld h, a
    ld l, [hl]
    ld l, $6e
    adc $e0
    call Call_000_0de0
    dec c
    jp nc, Jump_069_58e2

    ldh a, [rIE]
    ldh [$eb], a
    pop de
    ldh [$4e], a
    ld c, [hl]
    ret nc

    rst $20
    ld l, $f0
    rst $38
    ld a, [de]
    ldh [$ec], a
    ld l, $4e
    pop hl
    ld c, [hl]
    ld c, $f0
    rst $38
    ldh a, [$f9]
    ld c, a
    ld [c], a
    nop
    ld [$f0e0], sp
    rst $38
    ldh a, [$f7]
    ret z

    pop bc
    ldh a, [rIE]
    ldh a, [$f7]
    call $f0c0
    rst $38
    nop
    ldh a, [$fc]
    rrca
    ld [c], a
    ldh a, [rIE]
    ldh a, [$f4]
    rst $08
    call nz, $fff0
    ldh [$e8], a
    sbc $a3
    ld bc, $d76d
    and d
    adc $a7
    ldh a, [$e0]
    nop
    jp nz, $e8f0

    ldh [$ed], a
    ret nc

    db $e4
    add hl, bc
    dec c
    ret c

    and b
    cp $e0
    dec c
    ld [$c9c1], sp
    and e
    ldh a, [$e3]
    ret nz

    and d
    nop
    cp c
    and c
    ld [$e0e2], sp
    rst $28
    ret nc

    push hl
    db $dd
    and b
    sub e
    and d
    add hl, de
    push bc
    ldh a, [$e5]
    nop
    add b
    rst $20
    sbc d
    db $e3
    ldh [$ed], a
    ret nc

    and $51
    and b
    ld a, e
    pop hl
    reti


    and b
    dec b
    and e
    ld [$e4f0], sp
    ret


    db $e3
    or $80
    dec l
    ld e, e
    db $e3
    ldh [$ed], a
    ret nc

    push hl
    add a
    pop hl
    ld a, b
    inc a
    pop hl
    ldh a, [$ed]
    sub d
    jp nz, $0b6d

    dec bc
    dec bc
    cp [hl]
    ldh [rSB], a
    dec l
    ldh [$f0], a
    sub b
    and $8f
    add b
    sub [hl]
    and c
    push af
    add c
    add l
    add b
    dec e
    ret nz

    ld a, d
    ldh a, [$e4]
    dec c
    jp Jump_000_0ce1


    inc c
    inc l
    inc l
    cp l
    ldh [$c0], a
    ld a, h
    pop hl
    ldh [$ed], a
    ret nc

    jp hl


    sub h
    jp $c17e


    ldh a, [$e6]
    dec c
    ld l, l
    add hl, bc
    dec c
    jp nz, $c1e0

    ldh [$2c], a
    cp l
    ldh [$3b], a
    ld [c], a
    ldh [$eb], a
    ret nc

    push hl
    add c
    ld l, l
    rst $38
    add sp, $08
    add b
    scf
    ret nz

    xor $e0
    jp Jump_069_68e0


    ret nz

    inc c
    inc sp
    inc c
    ld c, h
    rst $38
    pop hl
    ld a, h
    pop hl
    ld c, l
    dec l
    ldh [$e4], a
    ld [c], a
    pop hl
    inc l
    call $a4e6
    add c
    ld l, $0e
    ret nc

    pop hl
    dec c
    db $e4
    ld [c], a
    inc c
    add e
    ld c, $c1
    push hl
    dec bc
    inc c
    ld c, h
    cp d
    pop hl
    cp a
    db $e4
    ld a, [$f8c0]
    jp nz, $9018

    ld [c], a
    ret nc

    ldh [$c3], a
    pop hl
    ld l, $4e
    inc c
    pop bc
    ret nz

    push hl
    call z, Call_000_3864
    ret


    pop bc
    add d
    pop hl
    ld b, c
    pop hl
    dec c
    dec bc
    dec hl
    cp a
    pop hl
    dec sp
    ldh [$0c], a
    or d
    ld h, b
    ret nz

    xor $6e
    ld l, [hl]
    cp a
    ldh [$c0], a
    rst $20
    add b
    db $e3
    ld b, l
    db $e3
    ld c, $80
    db $e3
    inc l
    dec c
    ld c, e
    cp a
    pop hl
    cp e
    pop bc
    sbc c
    and c
    ld a, b
    jp $8f6c


    pop hl
    ld d, b
    ldh [$2e], a
    ld l, [hl]
    ld h, $85
    ld l, l
    dec c
    dec a
    pop hl
    ld hl, sp+$04
    db $e3
    pop bc
    add sp, -$40
    ld [c], a
    dec c
    ld l, e
    dec hl
    dec bc
    dec c
    sub d
    cp e
    pop bc
    dec bc
    cp a
    db $e3
    inc c
    pop hl
    ld c, [hl]
    ret nc

    ld [c], a
    and $67
    ld l, l
    ret nc

    dec a
    ld [c], a
    db $10
    and h
    jp nz, Jump_000_00e6

    ldh [$6c], a
    ld c, d
    ldh [$2b], a
    ld l, e
    ld bc, $b82d
    ret nz

    or $c3
    dec a
    ldh [$cc], a
    ret nz

    adc l
    ld [c], a
    ret nz

    ld [$c3a4], a
    ld [hl], h
    ret nc

    add h
    call nc, $0da0
    push de
    call nz, $2c6c
    inc c
    db $f4
    ld [c], a
    ld d, a
    inc c
    inc l
    ld l, h
    ret nz

    db $e3
    dec c
    add b
    ld [c], a
    ld c, $74
    jp nz, Jump_069_66c2

    ld h, [hl]
    ld l, l
    ret nz

    db $eb
    ld e, e
    ld [c], a
    dec [hl]
    ret nz

    adc h
    and b
    dec bc
    ld l, h

jr_069_5e8c:
    add b
    ret nz

    ld [c], a
    cp h

jr_069_5e90:
    and d
    xor l
    jp $f3c0


    inc b
    push bc
    add hl, bc
    ld b, e
    db $f4
    and l
    dec l
    ld [bc], a
    ld a, a
    ld [c], a
    inc c
    db $fd
    ldh [$f8], a
    and b
    ld bc, $80e1
    db $e3
    inc b

jr_069_5ea9:
    ret z

    and [hl]
    ld b, d
    ret nz

    ld hl, sp-$5d
    rst $38
    ld h, c
    ld [c], a
    and d
    pop bc
    and d
    ldh a, [$e1]
    ld a, [hl]
    ldh [$2d], a
    dec l
    ld e, $45
    jp nz, $0c0c

    ld l, h
    ld c, h
    ld l, e
    call nz, $e4c0
    ldh [$e2], a
    jr nc, jr_069_5e8c

    and d
    cp d
    and e
    jr c, jr_069_5e90

    cp l
    and b
    dec l
    ld l, l
    call c, $f0a0
    jp hl


    add hl, de
    ld c, l
    cp a
    ldh [$7d], a
    and b
    ld l, h
    ld l, h
    inc l

Jump_069_5ee0:
    push bc
    ld a, [hl]
    call nz, $ead0
    ld [hl], b
    scf
    call nz, $a2ad
    or e
    and c
    ldh a, [$e8]
    ld l, l
    dec c
    ld c, l
    ld a, a
    add b
    inc bc
    dec bc
    dec c
    ld b, d
    db $e4
    ld a, [hl]
    jp $eed0


    ld b, $83
    and e
    pop bc
    ld l, a
    and b
    nop
    ldh a, [$e8]
    jr z, jr_069_5ea9

    or l
    add h
    db $eb
    and [hl]
    db $db
    pop hl
    ret nc

    ld a, [c]
    ld b, h
    pop hl
    call nz, Call_069_4000
    ldh [$e6], a
    inc [hl]
    ldh [$c0], a
    db $e4
    ei
    ld [$e9e0], a
    ret nc

    ld [c], a
    dec l

jr_069_5f21:
    cp e
    add [hl]
    ld bc, $f50e
    ldh [$f3], a
    and b
    ldh a, [$e7]
    ld a, [hl-]
    jp $ecc0


    ret nc

    xor $b2
    call nz, $8000
    ld [c], a
    ldh a, [$eb]
    ld sp, hl
    and h
    ret nz

    db $ec
    ret nc

    db $ec
    jr nc, jr_069_5f4d

    ldh a, [$e8]
    xor $62
    inc b
    ld a, [hl]
    db $ec
    ld e, l
    pop bc
    dec l
    or d
    ld h, d
    and d

jr_069_5f4d:
    ld b, h
    jr nc, jr_069_5f5d

    ldh a, [$ea]
    cp l
    push bc
    nop
    ld b, c
    add sp, -$25
    pop bc
    ld e, d
    and d
    ret nc

    db $e4

jr_069_5f5d:
    jr nc, @+$10

    ldh a, [$e9]
    ld d, l
    add d
    ld bc, $00ec
    ld [$c043], sp
    push hl
    jr nc, jr_069_5f80

    ldh a, [$e4]
    ld [hl], $65
    ld b, c
    add sp, -$28
    inc h
    ret nz

    db $ec
    nop
    jr nc, jr_069_5f8a

    ldh a, [$e0]
    cp $a4
    cp e
    and c
    db $76

jr_069_5f80:
    jp nz, $c39c

    ld c, b
    ld b, c
    db $fc
    ret nz

    ld d, b
    ret nc

    db $ed

jr_069_5f8a:
    jr nc, jr_069_5f99

    call c, $be00
    and d
    dec hl
    ld a, h
    and c
    dec bc
    cp b
    ld h, b
    nop
    ret nz

    db $ec

jr_069_5f99:
    ret nc

    db $ed
    jr nc, jr_069_5fad

    jr c, jr_069_5f21

    ret nz

    db $e3
    add hl, sp
    and b
    rst $20
    ld h, d
    ld hl, sp+$24
    ret nz

    ld a, h
    jp nz, $eed0

    ld h, b

jr_069_5fad:
    add hl, bc
    ld l, b
    ld hl, $4135
    rst $38
    add d
    dec bc
    dec l
    nop
    or [hl]
    ld b, c
    ret nz

    ld [c], a
    ld d, [hl]
    inc bc
    ret nz

    db $e4
    jr nc, jr_069_5fd0

    ldh a, [$c6]
    add sp, $01
    inc [hl]
    ld b, c
    nop
    add d
    db $e4
    ret nz

    db $e3
    ld a, [hl-]
    ld b, d
    db $fc
    db $e3

jr_069_5fd0:
    inc hl
    inc b
    jr nc, @+$0f

    ldh a, [$e7]
    ld l, b
    ld bc, $440a
    ld bc, $406b
    db $e3

jr_069_5fde:
    ld c, e
    jp nz, $88a1

    pop hl
    cp l
    db $e4
    ret nc

    db $e4
    or b
    jr nc, jr_069_5ff7

    ldh a, [$e5]
    inc sp
    add e
    add hl, sp
    ld hl, $4b6b
    rst $38
    pop hl
    ld l, e
    ld c, $c0

jr_069_5ff7:
    ldh [$6d], a
    ld c, l
    ld c, $b5
    nop
    or c
    nop
    ret nc

    add sp, $30
    ld c, $08
    ldh a, [$e4]
    di
    ld h, e
    scf
    ld [hl+], a
    ld c, l
    ld [bc], a
    ld h, h
    ld l, l
    ld h, d
    ret nc

    xor $30
    inc c
    nop
    ldh a, [$e5]
    inc d
    inc hl
    dec b
    xor d
    rrca
    and h
    ret nc

    db $eb
    jr nc, jr_069_602d

    ldh a, [$e5]
    inc d
    inc hl
    nop
    adc b
    adc c
    add b
    inc hl
    ret nc

    db $ed
    jr nc, jr_069_603f

jr_069_602d:
    ld [hl], d
    ret nz

    call nc, Call_000_3302
    ld h, $85
    ld [bc], a
    nop
    call z, $d083
    pop af
    jr nc, @+$0a

    ldh a, [$e5]
    sub h

jr_069_603f:
    ld [c], a
    pop bc
    and $a4
    ld h, $90
    db $e3
    nop
    ret nc

    add sp, $30
    dec c
    ld e, $45
    inc sp
    add hl, hl
    ldh [$f1], a
    ret nc

    push hl
    inc a
    ld b, d
    jr nc, @+$0a

    nop
    ldh a, [$e5]
    jr nz, jr_069_5fde

    inc sp
    inc hl
    ldh [$f2], a
    ret nc

    push hl
    ld b, b
    dec b
    jr nc, jr_069_6073

    ret nz

    jp nz, $8e00

    ld bc, $63bb
    ldh [$ee], a
    ret nc

    db $ed
    jr nc, jr_069_607b

jr_069_6073:
    ret nz

    rst $20
    ld d, c
    dec h
    ldh [$f0], a
    nop
    ret nc

jr_069_607b:
    add sp, $30
    dec c
    ldh a, [$e2]
    db $ec
    dec b
    cp d
    ld hl, $f1e0
    ret nc

    add sp, $30
    dec c
    nop
    xor h
    ld b, $7c
    db $e4
    ldh [$f2], a
    sub b
    add sp, $70
    dec bc
    ldh a, [$e4]
    ld bc, $3c41
    db $e4
    nop
    ldh [$f2], a
    ld b, b
    ld [$f2f0], sp
    add b
    add sp, -$30
    db $fd
    jr nc, @+$0c

    rra
    jp z, $abe4

    nop
    ret nc

    ld a, [c]
    jr nc, jr_069_60c0

    ldh a, [$e5]
    xor b
    xor c
    ldh [$f1], a
    sub d
    and l
    jr nc, @+$0e

    ldh a, [rIE]
    nop
    ldh [$eb], a

jr_069_60c0:
    jr nc, @+$10

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_069_60db

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_069_60d3

    nop
    ldh a, [rIE]
    ldh [$eb], a

jr_069_60d3:
    jr nc, jr_069_60e3

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_069_60e7

jr_069_60db:
    ldh a, [rIE]
    ldh [$eb], a
    nop
    nop
    nop
    rra

jr_069_60e3:
    ret c

    push de
    push de
    ret c

jr_069_60e7:
    and b
    rst $38
    add sp, -$10
    rst $38
    ldh [$eb], a
    ld l, a
    jp nc, $d4d6

    sub $cd
    ld [c], a
    sbc $df
    jp nc, $fce2

    ldh a, [rIE]
    ldh [$eb], a
    sub $d2
    ret nc

    jp nc, $d6d4

    rst $18
    db $d3
    and b
    and b
    ldh [$e1], a
    adc c
    ldh [$d3], a
    ret nc

    db $ec
    ldh a, [rIE]
    ldh [$eb], a
    rst $10
    call nc, $e0cf
    rst $10
    jp nc, $e7d8

    and b
    ld [c], a
    db $e3
    ldh a, [rIE]
    ldh a, [$f0]
    db $dd
    reti


    rst $10
    rst $28
    call nc, $ddd7
    ret nc

    adc a
    ldh [$a0], a
    db $eb
    and b
    and a
    and b
    rst $10
    jp nc, $fff0

    ldh [$eb], a
    ret nc

    cp [hl]
    ldh [$dd], a
    db $fd
    pop de
    ret nc

    pop hl
    db $ec
    db $ed
    and b
    and b
    jp c, $a4d3

    ldh a, [rIE]
    ldh [$eb], a
    call nc, $e050
    ld c, $e0
    rst $10
    adc h
    jp $e9dc


    rst $10
    ldh a, [rIE]
    ldh [$eb], a
    reti


    ld d, b
    ldh [$d4], a
    rst $10
    reti


    ld h, l
    jp c, $c44c

    jp c, $fff0

    ldh [$eb], a
    db $db
    db $db
    call $17e0
    jp c, $dcdb

    inc c
    call nz, $f0dc
    rst $38
    ldh [$eb], a
    db $dd
    ld [c], a
    ld [bc], a
    jp nc, $d8e1

    ret z

    and l
    ldh a, [$e4]
    nop
    jp nz, $e8f0

    ldh [$ed], a
    ret nc

    and $ce
    sub d
    and c
    db $e4
    push hl
    ret c

    ld [$86c0], sp
    and a
    db $e4
    push hl
    ld h, d
    nop
    jp nz, $e0ea

    rst $30
    ret nc

    and $88
    ld [c], a
    and $e7
    db $76
    ret nz

    inc bc
    pop de
    ret nc

    add hl, bc
    ret nz

    ldh a, [$e5]
    nop
    jp $a536


    ldh [$ef], a
    ret nc

    and $1d
    db $d3
    inc d
    pop bc
    add sp, -$17
    jp c, $a3c7

    ldh a, [$e6]
    db $fc
    add d
    rra
    sbc a
    sbc l
    sbc l
    sbc l
    sbc a
    ld a, [c]
    add c
    ldh [$ef], a
    ret nc

    and $84
    pop de
    and b

jr_069_61ce:
    ld d, [hl]
    jp nz, $c7da

    and c
    adc c
    ret nz

    ldh a, [$e4]
    jp $9ce2


    ccf
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc l
    and d
    cp l
    pop hl
    ldh [$ed], a
    ld d, d
    ret nc

    and $da
    ld d, h
    ret nz

    jr jr_069_61ce

    call c, $c087
    jp c, $c089

    ld a, d
    ldh a, [$e5]
    sbc a
    jp $03e1


    inc b
    inc b
    inc bc
    cp l
    ldh [$88], a
    cp a
    ld [c], a
    ldh [$ec], a
    ret nc

    push hl
    call c, $c854
    ld c, d
    pop bc
    ldh a, [$e2]
    sbc a
    rst $28
    sbc l
    and d
    or [hl]
    xor [hl]
    jp nz, $0fe0

    sbc b
    sbc b
    rrca
    rrca
    rlca
    inc b
    inc bc
    cp a
    ld [c], a
    ldh [$e9], a
    ret nc

    add sp, -$03
    pop af
    rst $38
    sbc a
    or [hl]
    sub b
    sub b
    sub b
    xor a
    ld [bc], a
    rrca
    ld a, l
    rlca
    rst $38
    ldh [rIF], a
    nop
    ld bc, $020f
    cp a
    db $e3
    ldh [$d2], a
    db $ed
    call nc, $d261
    ld h, d
    inc d
    push bc

Jump_069_6242:
    inc c
    call nz, $b69f
    jp $c0fe


    ldh [rDMA], a
    ld [$7906], sp
    ld a, d
    ld a, h
    ld a, l
    ld b, c
    ld [bc], a
    cp a
    db $e3
    cp b
    jp nz, $e9d8

    sub a
    ld h, b
    push de
    ld h, b
    jp nc, $8296

    ld [hl], b
    inc d
    add d
    inc de
    ret nz

    inc c
    add c
    adc h
    ret nz

    or [hl]
    jp $c0c4


    db $e3
    rst $28
    add b
    dec hl
    dec hl
    ld a, a
    cp a
    ldh [$98], a
    sbc b
    ld [$aec7], sp
    sub b
    or [hl]
    ld [hl], a
    ret nz

    db $ec
    ld h, d
    ret nc

    db $e4
    db $d3
    sub $02
    ld d, $81
    sub $56
    add d
    inc d
    push bc
    inc c
    add b
    add h
    pop hl
    pop bc
    ldh [$7f], a
    ldh [rIE], a
    ld b, [hl]

Jump_069_6296:
    ld [$8008], sp
    ld a, [hl+]
    jr nz, jr_069_62c6

    ld a, a
    rst $38
    ld a, l
    ld [$9897], sp
    ld [$c3af], sp
    jp $bf00


    ldh [$ec], a
    ld h, b
    ld e, c
    and d
    ld hl, sp-$1f
    db $db
    ld h, b
    sbc b
    add c
    dec c
    pop bc
    rla
    add b
    ldh [rTMA], a
    rst $20
    add h
    ldh [$82], a
    ldh [$be], a
    ldh [$c0], a
    ldh [$82], a
    add e
    ld l, $ef

jr_069_62c6:
    jr nz, jr_069_630a

    add c
    ld [$e080], sp
    ld b, [hl]
    call nz, $e0c4
    cp a
    pop hl
    pop de
    and e
    ret nc

    pop hl
    add $60
    rst $10
    ld h, b
    reti


    db $dd
    db $d3
    ret


    jp c, $8217

    db $10
    and l
    and c
    jp $fee1


    ld [c], a
    call nz, $ff46
    ld b, $08
    add l
    adc e
    ld l, $2a
    add e
    add h
    rra
    ld [$0100], sp
    ld b, $ae
    ld l, e
    ldh [$bf], a
    ld [c], a
    and d
    ld h, b
    xor $d0
    ld [c], a
    db $d3
    ret nc

    pop de
    rst $10
    ld h, b
    ret nc

    ret nc

    rst $10

jr_069_630a:
    ret z

    sub [hl]
    add l
    inc h
    db $e3
    add [hl]
    pop bc
    or [hl]
    adc d
    and b
    ld a, a
    ret nz

    sub c
    dec b
    rst $38
    rrca
    dec b
    add d
    add e
    add e
    add [hl]
    add l
    ld [$98ef], sp
    rrca
    dec b
    xor a
    pop bc
    ldh [$c4], a
    sub b
    and c
    db $10
    pop de
    and e
    ld h, b
    ld b, c
    jr jr_069_6393

    sub $40
    call nc, $8517
    db $10
    and l
    ld c, l
    and b
    db $fc
    ld c, [hl]
    and c
    ld a, $c0
    jp Jump_000_0646


    ld b, $85
    add a
    cp e
    add a
    add l
    ret nz

    ret nz

    ld [$9146], sp
    ld a, [hl+]
    pop hl
    jp $9e51


    pop de
    and a
    ld d, c
    and c

jr_069_6357:
    ret c

    ld h, b
    reti


    db $fd
    or a
    call nz, $e07f
    ld l, a
    rlca
    rlca
    inc b
    inc b
    rst $38
    and b
    ld b, $46
    xor e
    ret nz

    jr nz, jr_069_6357

    ret nz

    ret nz

    ldh [$e4], a
    dec h

jr_069_6371:
    ld d, c
    and c
    ret c

    ld h, b
    db $db
    call c, $cd23
    ld a, [hl+]
    jr z, jr_069_6371

    ld h, e

Call_069_637d:
    ld bc, $45a1
    pop bc
    sbc b
    ret nz

    and b
    dec b
    add c
    pop hl
    ld l, b
    ret nz

    nop
    ret nz

    db $e4
    push de
    ld h, e
    ret z

    ld h, h
    call c, Call_069_4721

jr_069_6393:
    add b
    ld c, $80
    adc [hl]
    ld h, $f0
    push hl
    rst $28
    sbc a
    sbc h
    inc bc
    inc b
    ld a, l
    and b
    inc b
    inc bc
    sub c
    ld b, b
    inc l
    ret nz

    rst $38
    pop bc
    ld a, [hl]
    jp nz, $ecd0

    rst $00
    ld h, b
    rlca
    add b
    rst $10
    ld c, $80
    call c, Call_069_637d
    ldh a, [$e8]
    and b
    and c
    sub c
    ld a, a
    add b
    ld b, [hl]
    xor [hl]
    add c
    ld b, [hl]
    ld l, $c0
    ld b, b
    ret nz

    ld [$bba0], a
    and b
    ret nc

    db $ed
    ld sp, hl
    and e
    jp c, $0ed8

    add c
    push af
    ld h, d
    ldh a, [$e8]
    and b
    sbc [hl]
    jr c, @-$5d

    sub c
    xor a
    ld bc, $2f91
    jp $a0ea


    cp [hl]
    ret nz

    ret nc

    db $ed
    rst $00
    ld h, b
    sub c
    ld b, b
    ret nc

    ld b, d
    inc c
    push af
    ld h, d
    ldh a, [$e8]
    and b
    sbc [hl]
    dec bc
    ldh [$f1], a
    and e
    ret nz

    pop bc
    ld h, a
    and c
    ld de, $d09e
    xor $c7
    ld h, b
    sub c
    ld b, e
    ld [$c324], a
    ldh a, [$e8]
    ld a, e
    pop bc
    ld [$e4c1], sp
    ld [bc], a
    pop bc
    cp h
    pop bc
    sbc [hl]
    ret nc

    xor $ff
    ld [hl], e

jr_069_6416:
    scf
    adc c
    ld [hl], e
    and c
    nop
    add d
    and b
    ld l, e
    and d
    cp [hl]
    and b
    rst $08
    ld l, e
    jr nc, jr_069_6432

    ldh a, [$ec]
    cp a
    add sp, $3b
    pop hl
    nop
    db $fd
    add d
    inc d
    jp z, Jump_000_0d30

jr_069_6432:
    ldh a, [$eb]
    cp l
    call nz, $c3c2
    cp $80
    ld a, a
    and b
    jr nz, jr_069_6416

    dec h
    ret nc

    db $e4
    jr nc, jr_069_6450

    ldh a, [$ea]
    nop
    ld b, b
    sbc [hl]
    or b
    add e
    xor a
    ld h, c
    ld [bc], a
    cp $80
    sbc [hl]

jr_069_6450:
    ld de, $d8c1
    inc hl
    ret nc

    db $e4
    jr nc, jr_069_6465

    ldh a, [$eb]
    rst $38
    rst $00
    nop

jr_069_645d:
    add d
    jp nz, $60bc

    ret c

    ld h, $d0
    db $e4

jr_069_6465:
    jr nc, @+$0f

    ldh a, [$eb]
    cp $a2
    cp e
    and d
    ret nz

    cp a
    add d
    ret nz

    add b
    ret c

    ld h, $d0
    db $e4
    jr nc, jr_069_6485

    ldh a, [$eb]
    and b
    and c
    rst $18
    call nz, Call_069_4590
    scf
    dec a
    rst $38
    ldh [$37], a

jr_069_6485:
    ld b, l
    add b
    xor l
    ld b, b
    add b
    add c
    ret c

    dec h
    ret nc

    db $e4
    jr nc, jr_069_649e

    ldh a, [$eb]
    db $76
    ld b, b
    sub c
    scf
    add hl, sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    add hl, sp

jr_069_649e:
    inc l
    ld h, b
    add b
    add c
    ldh [$d8], a
    dec h
    ret nc

    db $e4
    jr nc, jr_069_64b6

    ldh a, [$e6]
    ld [hl], b
    inc b
    sbc [hl]
    ld b, [hl]
    ld a, $7f
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e

jr_069_64b6:
    ld l, d
    ld a, $81
    jp Jump_000_0840


    ld c, h
    ld a, $80
    jr nc, jr_069_64cc

    ldh a, [$e6]
    add sp, $02
    ret nz

    db $e3
    dec [hl]
    rst $38
    ldh [$03], a
    ld l, d

jr_069_64cc:
    ld a, $7f
    ld h, b
    add b
    ld h, b
    adc $2c
    ld a, a
    ld [hl+], a
    jr nc, jr_069_64e2

    jr z, jr_069_645d

    cp [hl]
    add sp, $04
    sbc [hl]
    sub c
    add hl, sp
    ld l, e

jr_069_64e0:
    ld [hl], c
    rst $38

jr_069_64e2:
    ldh [$6d], a
    inc bc
    add hl, sp
    sub b
    ld b, c
    add e
    db $db
    ld l, d
    jr nc, @+$12

    ldh a, [$e4]
    rla
    ld h, h
    or l
    jr nz, @-$7e

    ret nz

    add $fe
    jr nz, jr_069_64e0

    ld bc, $ecd0
    jr nc, jr_069_650b

Jump_069_64fe:
    ldh a, [$e4]
    ld hl, sp+$04
    or [hl]
    ld b, $33
    ld b, b
    sub c
    ld b, [hl]
    ret nz

    ld h, c
    ld b, h

jr_069_650b:
    and l
    ret nc

    db $ed
    jr nc, jr_069_651d

    ldh a, [$e4]
    nop
    cpl
    ld h, e
    ld b, d
    and h
    db $ec
    ld hl, $a505
    ret nc

    db $ed

jr_069_651d:
    jr nc, jr_069_652c

    ld [$f0e4], sp
    inc hl
    nop
    ld b, d
    and c
    rst $00
    ld b, c
    dec l
    ld b, b
    nop

Call_069_652b:
    dec h

jr_069_652c:
    ret nc

    db $ed
    jr nc, @+$0f

    ldh a, [$e5]
    db $f4
    ld [bc], a
    nop
    ld a, b
    nop
    ld b, [hl]
    add c
    adc c
    add l
    nop
    ld hl, $edd0
    ld bc, $f495
    ld [bc], a
    add $63
    nop
    ld c, d
    add [hl]
    ret c

    ld bc, $6dd1
    inc b
    sub a
    inc sp
    jr nz, @-$74

    ld b, b
    ld c, c
    ret z

    call nc, Call_000_0071
    dec b
    ld b, d
    jr nc, jr_069_6563

    ldh a, [$e6]
    ldh a, [rP1]
    cp h
    jr nz, jr_069_6568

    db $e3

jr_069_6563:
    ldh [$f1], a
    ret nc

    db $e4
    nop

jr_069_6568:
    ld b, b
    ld [bc], a
    jr nc, jr_069_6579

    db $f4
    ld bc, $e200
    inc sp
    inc hl
    ldh [$f2], a
    ret nc

    jp hl


    jr nc, @+$0a

    nop

jr_069_6579:
    ldh a, [$e5]
    ldh a, [rTIMA]
    db $e4
    dec b
    ldh [$ed], a
    ret nc

    push hl
    dec [hl]
    add c
    jr nc, jr_069_6590

    ldh a, [$e5]
    jr jr_069_65ba

    add hl, hl
    ldh [$f1], a
    ret nc

    push hl

jr_069_6590:
    db $d3
    jp c, $8317

    jr nc, jr_069_659b

    ldh a, [$e5]
    ld [$a7fc], sp

jr_069_659b:
    ldh [$f3], a
    ret nc

    push hl
    rst $10
    dec [hl]
    add h
    jr nc, jr_069_65a9

    ldh a, [$e5]
    db $fc
    and [hl]
    nop

jr_069_65a9:
    and [hl]
    inc b
    ldh [$ed], a
    ret nc

    push hl
    rlca
    add a
    jr nc, jr_069_65b6

    rst $30
    ld h, l
    db $10

jr_069_65b6:
    add $e0
    db $f4
    nop

jr_069_65ba:
    ret nc

    push hl
    rlca
    add a
    jr nc, jr_069_65c3

    db $ed
    xor h
    rla

jr_069_65c3:
    add a
    ldh [$ec], a
    ret nc

    push hl
    jr nc, jr_069_65d9

    nop
    dec h
    adc h
    ldh [$f6], a
    ret nc

    push hl
    jr nc, @+$0e

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_069_65e6

jr_069_65d9:
    ldh a, [rIE]
    nop
    ldh [$eb], a
    jr nc, jr_069_65ed

    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_069_65f3

jr_069_65e6:
    ldh a, [rIE]
    ldh [$eb], a
    jr nc, jr_069_65f9

    nop

jr_069_65ed:
    ldh a, [rIE]
    ldh [$eb], a
    rst $38
    db $76

jr_069_65f3:
    ldh a, [rIE]
    rst $30
    ld hl, $0000

jr_069_65f9:
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
    ld a, [de]
    db $10
    ld [bc], a
    ld bc, $1216
    ld [bc], a
    ld [bc], a
    dec d
    inc de
    ld [bc], a
    inc bc
    daa
    inc de
    ld [bc], a
    inc b
    ld [de], a
    inc d
    ld [bc], a
    dec b
    inc d
    inc d
    ld [bc], a
    ld b, $17
    inc d
    ld [bc], a
    rlca
    jr z, @+$16

    ld [bc], a
    ld [$1429], sp
    ld [bc], a
    add hl, bc
    ld de, $0215
    ld a, [bc]

Jump_069_6646:
    add hl, de
    dec d
    ld [bc], a
    dec bc
    ld a, [hl+]
    dec d
    ld [bc], a
    inc c
    daa
    ld d, $02
    dec c
    add hl, hl
    ld d, $02
    ld c, $2b
    ld d, $02
    rrca
    jr z, jr_069_6673

    ld [bc], a
    db $10
    ld a, [hl+]
    rla
    ld [bc], a
    ld de, $181a
    ld [bc], a
    ld [de], a
    inc l
    jr jr_069_666b

    inc de
    daa

jr_069_666b:
    add hl, de
    ld [bc], a
    inc d
    add hl, hl
    add hl, de
    ld [bc], a
    dec d
    ld a, [hl+]

jr_069_6673:
    ld a, [de]
    ld [bc], a
    ld d, $2c
    ld a, [de]
    ld [bc], a
    rla
    ld h, $1b
    ld [bc], a
    jr jr_069_66a7

    dec de
    ld [bc], a
    add hl, de
    add hl, hl
    dec de
    ld [bc], a
    ld a, [de]
    dec hl
    dec de
    ld [bc], a
    dec de
    inc hl
    inc e
    ld [bc], a
    inc e
    ld a, [hl+]
    inc e
    ld [bc], a
    dec e

Call_069_6692:
    dec l
    inc e
    ld [bc], a
    ld e, $1e
    dec e
    ld [bc], a
    rra
    ld l, $1d
    ld [bc], a
    jr nz, @+$21

    ld e, $02
    ld hl, $1e27
    ld [bc], a
    ld [hl+], a
    add hl, hl

jr_069_66a7:
    ld e, $02
    inc hl
    dec hl
    ld e, $02
    inc h
    dec l
    ld e, $02
    dec h
    ld h, $1f
    ld [bc], a
    ld h, $28
    rra
    ld [bc], a
    daa
    ld l, $1f
    ld [bc], a
    jr z, jr_069_66e6

    jr nz, jr_069_66c3

    add hl, hl

Jump_069_66c2:
    add hl, hl

jr_069_66c3:
    jr nz, @+$04

    ld a, [hl+]
    jr z, jr_069_66e9

    ld [bc], a
    dec hl
    inc l
    ld hl, $2c02
    ld hl, $0222
    dec l
    dec hl
    ld [hl+], a
    ld [bc], a
    ld l, $2d
    ld [hl+], a
    ld [bc], a
    cpl
    daa
    inc hl
    ld [bc], a
    jr nc, jr_069_670b

    inc hl
    ld [bc], a
    ld sp, $2429
    ld [bc], a
    ld [hl-], a

jr_069_66e6:
    dec hl
    inc h
    ld [bc], a

jr_069_66e9:
    inc sp
    jr nz, jr_069_6711

    ld [bc], a
    inc [hl]
    dec hl
    daa
    ld [bc], a
    dec [hl]
    ld a, [hl+]
    jr z, jr_069_66f7

    ld [hl], $2c

jr_069_66f7:
    jr z, jr_069_66fb

    scf
    dec hl

jr_069_66fb:
    add hl, hl
    ld [bc], a
    jr c, jr_069_6720

    dec hl
    ld [bc], a
    add hl, sp
    ld h, $2c
    ld [bc], a
    ld a, [hl-]
    jr z, jr_069_6734

    ld [bc], a
    dec sp
    rra

jr_069_670b:
    dec l
    ld [bc], a
    inc a

jr_069_670e:
    dec h
    dec l
    ld [bc], a

jr_069_6711:
    dec a
    ld [hl+], a
    ld l, $02
    ld a, $21
    cpl
    ld [bc], a
    ccf
    inc hl
    cpl
    ld [bc], a
    ld b, b
    jr nz, jr_069_6750

jr_069_6720:
    ld [bc], a
    ld b, c
    ld [hl+], a
    jr nc, @+$04

    ld b, d
    ld e, $31
    ld [bc], a
    ld b, e
    rra
    ld sp, $ffff
    rst $38
    scf
    ld h, a
    ld d, e
    ld l, h
    cp a

jr_069_6734:
    ld [hl], d
    pop hl
    ld [hl], d
    sbc a
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    add sp, -$10
    ld [$e30d], a
    dec c
    dec c
    db $e4
    jp hl


    ldh [$ee], a
    rst $00
    ldh [$6e], a
    ld l, $6e
    jr jr_069_670e

jr_069_6750:
    ldh [$bd], a
    ldh [$d5], a
    ld [c], a
    ld l, $0e
    ldh a, [$e9]
    pop bc
    ld [c], a
    cp l
    push hl
    ld e, b
    ldh [$f0], a
    sub d
    pop hl

Jump_069_6762:
    pop bc
    ldh [$4e], a
    ld c, [hl]
    ret nz

    rst $20
    ld l, $f0
    jp hl


    sbc c
    dec c
    ld h, [hl]
    pop hl
    ld a, l
    pop hl
    ld c, $6d
    ldh [$f2], a
    ret nc

    ld [c], a
    ld l, $e6
    ld a, $e1
    ld c, [hl]
    ld c, $f0
    pop af
    add b
    push hl
    ld l, l
    dec c
    ld c, l
    ld b, e
    dec l
    dec l
    ret nc

    ld a, [$e23f]
    ld hl, sp-$40
    ldh a, [$ed]
    ld l, l
    rst $38
    ldh [$0a], a
    pop bc
    ldh [$6d], a
    ld hl, sp-$40
    dec l
    ldh [$f1], a
    ret nz

    jp hl


    cp b
    pop bc
    ldh a, [$ed]
    ld [bc], a
    ret z

    pop hl
    ld c, l
    pop bc
    pop hl
    cp a
    pop hl
    ret nc

    db $fc
    sub c
    ret nz

    ldh a, [$ed]
    add a
    ld [c], a
    ld h, $41
    ldh [$2b], a
    dec hl
    ld b, c
    ldh [$b7], a
    ldh [$0d], a
    ret nc

    db $fc
    rst $28
    jp $b0fc


    rst $20
    add a
    ld [c], a
    dec c
    dec c

Jump_069_67c6:
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    dec bc
    add c
    dec l
    ret nz

    ld [c], a
    ldh [$ec], a
    ret nc

    db $ec
    xor a
    call nz, $e880
    ret nz

    ld [c], a
    dec bc
    ld c, $c0
    ldh [rWX], a
    dec hl
    dec l

jr_069_67df:
    cp $c0
    ret nz

    db $ec
    pop de
    and c
    adc $a6
    ldh [$b7], a
    and b
    cp [hl]
    xor d
    push bc
    and c
    adc e
    ret nz

    add d
    ldh [$2a], a
    dec hl
    dec hl
    rrca
    ld c, e
    dec hl
    dec bc
    dec hl
    ccf
    ldh [$9e], a
    xor c
    ret nc

    db $e4
    sbc l
    and c
    ret nz

    sub $a1
    ld hl, sp-$5f
    cp c
    and e
    ldh a, [$e3]
    or b
    and d
    ret z

    pop bc
    ld l, e
    ld a, [bc]
    cp a
    ld a, [hl+]
    ld l, e
    dec bc

jr_069_6815:
    dec bc
    ld a, [bc]
    ld c, d
    ret nz

    ldh [$2d], a
    nop
    cp l
    ret nz

    ret nc

    db $ed
    call $83a0
    and d
    ld sp, hl
    and l
    ldh a, [$e5]
    ld [$3fc3], sp
    and b
    ccf
    dec hl
    dec hl
    dec hl
    dec bc
    dec bc
    dec hl
    ret nz

    ld [c], a
    inc sp
    pop bc
    nop
    ret nc

    xor $41
    and b
    jr jr_069_67df

    cp c
    and b
    push af
    add e
    ldh a, [$e4]
    inc b
    pop bc
    ld b, a
    jp nz, $0a77

    dec hl
    ld l, e
    rst $38
    ldh [$0a], a
    ld a, [hl+]
    ld l, l
    ret nz

    ld [c], a
    add c
    ld l, l
    ret nc

    db $ed
    add a
    pop hl
    reti


    add c
    ldh a, [$ed]
    ret z

    and b
    pop bc
    db $e3
    ld a, [bc]
    rlca
    dec hl
    dec bc
    ld c, e
    cp $a3
    xor a
    ldh [$b6], a
    and b
    ret nc

    db $ec
    adc a
    add c
    ret nz

    jr jr_069_6815

    add b
    db $e3
    db $fd
    and b
    ldh a, [$e4]
    jp nc, $45e1

    pop bc
    ld a, [bc]
    dec bc
    nop
    ret nz

    ldh [$c1], a
    db $e3
    ret nz

    pop hl
    ret nc

    ld a, [c]
    ld e, c
    add e
    ld a, [hl]
    pop bc
    ldh a, [$e9]
    inc bc
    pop hl
    dec bc
    ld c, d
    ld a, [hl+]
    inc bc
    ldh [$0b], a
    ld a, a
    and c
    ld b, b
    ret nz

    ret nz

    and $d0
    add sp, -$40
    ld e, $a1
    db $fc
    push hl
    or h
    add c
    ldh a, [$e7]
    ld a, [bc]
    and c
    call nz, $0dc1
    ld l, e
    add b
    add b
    ld [c], a
    ld [bc], a
    ld [c], a
    db $fc
    db $eb
    add h
    add c
    adc $e2
    inc h
    pop hl
    ld [hl], l
    add c
    ld c, [hl]
    inc sp
    ld c, $4e
    ldh a, [$e6]
    ld a, [bc]
    and e
    ld l, e
    dec bc
    db $fc
    db $e3
    ld b, c
    and b
    db $d3
    dec l
    dec l
    call c, $d0a4
    ld [$c00e], a
    rst $20
    ld l, [hl]
    ld l, [hl]
    ldh a, [$bf]
    ldh [$f0], a
    push hl
    add d
    ld [c], a
    jp Jump_000_0be0


Jump_069_68e0:
    dec c
    dec bc
    dec hl
    ld h, c
    ld c, e
    cp b
    and c
    dec a
    add b
    call c, $d0a4
    ld a, [c]
    ld l, $6e
    ld [hl], $85
    ld c, h
    ret c

    jp nz, $c345

    ld a, [hl+]
    ld a, [hl+]
    inc b
    ret nz

    ld a, $e0
    dec c
    ld [hl], a
    and c
    ld de, $202d
    ldh [$d5], a
    ld h, d
    ret nc

    db $ed
    dec c
    dec bc
    pop hl
    or $67
    ldh a, [$e1]
    ld [$e204], sp
    ret z

    add c
    nop
    pop hl
    ld c, e
    add b
    jp $e080


    ld e, h
    call nz, $ecd0
    ldh [$3d], a
    ld [c], a
    ldh a, [$ea]
    ld b, e
    db $e3
    add hl, bc
    and b
    ld b, d
    ldh [$0d], a
    dec c
    ld c, e
    add b
    ei
    pop hl
    cp [hl]
    ld h, c
    sbc h
    and h
    ret nc

    db $ed
    xor b
    and d
    ldh a, [$ea]
    ld c, c
    and c
    dec c
    add b
    ld b, a
    ld [c], a
    nop
    ldh [$81], a
    ret nz

    cp b
    add d
    rst $38
    ld h, b
    ld e, h
    and e
    ret nc

    db $eb

jr_069_694b:
    ld l, l
    ld [hl], b
    ret nz

    db $ec
    ldh a, [$e0]
    adc a
    ld h, e
    rlca
    ld [c], a
    dec bc
    ld c, e
    ld l, e
    jp nz, $80c0

    ld [bc], a
    ld h, c
    cp a
    ld h, c
    ld e, d
    add e
    ret nz

    db $ed
    inc b
    push bc
    ldh a, [$e6]
    inc b
    pop hl
    dec c
    ld de, $c82d
    and b
    ld b, $a0
    jp nz, Jump_000_2be2

    ld a, $62
    ret nz

    add b
    ld a, l
    add b
    jr nz, jr_069_694b

    db $ec
    ret z

    and e
    ret


    and b
    ld b, h
    ld b, c
    ld b, h

jr_069_6983:
    push bc
    dec hl
    adc a
    ld h, b
    add a
    jp Jump_000_0800


    pop bc
    jp nz, Jump_000_33e3

    ld h, b
    jp $d0e5


    ld [$c107], a
    rst $00
    and b
    pop hl
    pop hl
    ld [hl], h
    and c
    ld [c], a
    dec bc
    ld h, c
    ld c, l
    ld c, c
    and c
    dec bc
    dec bc
    ld l, e
    add [hl]
    ld h, c
    nop
    ld b, e
    and d
    pop bc
    db $e3
    add c
    db $e3
    ret nc

    db $ec
    rlca
    call nz, $a27d
    or e
    and c
    bit 0, d
    nop
    inc c
    add c
    ld b, $c0
    ld a, b
    ldh [rTMA], a
    ld h, c
    add $61
    inc bc
    add c
    ldh [$e2], a
    ret nc

    db $ed
    adc b
    dec sp
    and e
    inc a
    add b
    ldh [$a1], a
    ld c, [hl]
    rlca
    and l
    add d
    pop bc
    cp a
    pop hl
    ld c, e
    nop
    push bc
    ld b, b
    dec b
    and h
    ldh [$e4], a
    ret nc

    db $ed
    ret nz

    db $e4
    push hl
    pop bc
    or h
    nop
    sbc h
    ld h, c
    ld a, d
    adc e
    ld b, d
    ld l, e
    cp [hl]
    db $e3
    dec hl
    ld c, d
    ld a, [bc]
    ld c, d
    add a
    ld h, b
    jr nz, jr_069_6983

    and d
    ldh [$e3], a
    ret nc

    db $ec
    xor e
    and b
    cp e
    add h
    ld c, $a0
    and c
    di
    and b
    ld [$61b1], sp
    ret nz

    and $06
    ld h, b
    ld a, [bc]
    ld b, d
    jr nz, jr_069_6a14

    add d
    ldh [$e3], a
    ret nc

jr_069_6a14:
    xor $e8
    ld c, e
    add h
    add b
    pop hl
    ret nz

    ld [c], a
    ld l, l
    adc c
    ld b, d
    ld l, e
    ld c, e
    ld c, e
    ld b, $fe
    jp nz, Jump_069_6b0b

    add [hl]
    pop hl
    ret nz

    add sp, -$30
    db $ec
    jr nc, jr_069_6a3a

    ld a, [c]
    ld h, e
    ld [$4248], sp
    ld [$7da0], sp
    pop bc
    ld c, e
    push af

jr_069_6a3a:
    and b
    ld a, $01
    ld b, e
    ld b, h
    ld [de], a
    ld b, l
    nop
    call Call_000_30e6
    ld a, [bc]
    db $f4
    and l
    add l
    ld [bc], a
    ret z

    ld h, b
    db $fc
    add c
    add b
    pop bc
    ld bc, $0022
    inc a
    nop
    call nc, $d020
    ld [$a12f], a
    jr nc, jr_069_6a66

    db $f4
    and h
    sub c
    ld bc, $2246
    nop
    ld b, h
    ld b, c

jr_069_6a66:
    ei
    ld h, c
    ret nz

    inc bc
    ld b, b
    inc bc
    ret nc

    jp hl


    jr nc, jr_069_6a7d

    ei
    ld h, h
    add hl, bc
    inc h
    ld bc, $c34d
    pop hl
    nop
    add b
    jp nz, Jump_000_0183

jr_069_6a7d:
    and e
    ret nc

    db $eb
    jr nc, jr_069_6a8f

    inc [hl]
    push bc
    nop
    ld b, a
    inc hl
    add b
    ld h, b
    ld a, [$81a3]
    add h
    inc e
    and e

jr_069_6a8f:
    ret nc

    jp hl


    jr nc, jr_069_6aa0

    db $f4
    and l
    ld [bc], a
    adc b
    inc b
    ld l, e
    ld a, l
    jp nz, Jump_000_2082

    ld b, b
    ld b, l
    ret nc

jr_069_6aa0:
    db $ed
    ld b, b
    dec c
    xor a
    ld b, [hl]
    ld a, [bc]
    add $03
    ld c, l
    cp a
    db $e3
    dec hl
    ret nz

    ld [c], a
    pop bc
    ret nz

    ld e, d
    ld hl, $0b40
    nop
    ret nz

    db $ec
    db $f4
    and l
    cp a
    push hl
    ld a, [$3d84]
    pop bc
    inc bc
    ld b, b
    ld e, b
    jr nz, jr_069_6b04

    dec bc
    nop
    adc $c1
    jr nc, @+$0e

    sbc e
    ld hl, $22fc

jr_069_6ace:
    dec sp
    and e
    add [hl]
    nop
    ret nz

    and $98
    ld hl, $d042
    xor $2e
    jr nc, @+$0f

    ld hl, sp-$3f
    sbc b
    ld [bc], a
    cp h
    and c
    dec hl
    ret nz

    ld [c], a
    nop
    cp l
    and d
    jp $be03


    xor b
    ret nc

    db $e4
    jr nc, jr_069_6afd

    ldh a, [$e5]
    cp a
    ld [c], a
    ld a, $c0
    ld [bc], a
    ld [bc], a
    jr nz, jr_069_6b45

    add d
    ld h, c
    ld c, d

jr_069_6afd:
    ld h, e
    ld h, l
    inc bc
    ret nc

    jp hl


    jr nc, @+$10

jr_069_6b04:
    ldh a, [$e4]
    nop
    ld c, l
    and c
    ld a, $c3

Jump_069_6b0b:
    pop bc

jr_069_6b0c:
    jp $2440


    ret nc

    rst $28
    jr nc, @+$0e

    ldh a, [$e5]
    ret nz

    inc b
    nop
    ret nz

    ld [$a30f], a
    ret nc

    db $eb
    jr nc, jr_069_6b2d

    ldh a, [$e5]
    add b
    inc bc
    cp a
    pop bc
    cp [hl]
    add d
    nop
    pop bc
    and e
    jr z, jr_069_6ace

jr_069_6b2d:
    ret nc

    db $ec
    jr nc, @+$14

    ld l, [hl]
    add e
    cp a
    jp nz, $4040

    pop bc
    ld b, e
    nop
    xor e
    pop bc

Call_069_6b3c:
    inc e
    and d
    ret nc

    ldh a, [$30]
    ld [$e8f0], sp
    cp [hl]

jr_069_6b45:
    and e
    pop bc
    push hl
    inc hl
    add b
    jr nz, jr_069_6b0c

    and $d0
    add sp, $30
    dec c
    pop af
    rst $20
    cp d
    ld [hl+], a
    ld c, l
    ld b, e
    ld b, h
    ld bc, $8082
    call nc, $d0e9
    push hl
    inc c
    ld b, l
    jr nc, jr_069_6b68

    ldh a, [$e6]
    ld a, e
    inc hl
    db $fc

jr_069_6b68:
    push hl
    dec l
    nop
    ld b, h
    push hl
    sbc e
    ld h, d
    ret nc

    add sp, $40
    dec b
    jr nc, jr_069_6b82

    cp l
    add l
    ld a, l
    jr nz, jr_069_6bbd

    ld [bc], a
    nop
    ret nc

    ld h, c
    inc c
    call nz, $f2d0

jr_069_6b82:
    jr nc, jr_069_6b8c

    ld a, h
    ld [hl+], a
    cp a
    ld h, d
    nop
    and h
    ld a, h
    nop

jr_069_6b8c:
    nop
    ret nz

    db $e3
    push de
    ld h, e
    ret nc

    db $ed
    jr nc, @+$0f

    ldh a, [$e2]
    ret nz

    add sp, $38
    ld hl, $00cb
    nop
    and d
    add d
    ld e, h
    jp nz, $ecd0

    jr nc, @+$0f

    rst $38
    add a
    cp $00
    jp nz, JoypadTransitionInterrupt

    add d
    nop
    add b
    ld [hl+], a
    call c, $d0a3
    db $ed
    jr nc, jr_069_6bc2

    dec a
    ld b, d
    ld a, l
    ld h, b
    cp [hl]
    add c

jr_069_6bbd:
    db $fd
    inc h
    nop

Call_069_6bc0:
    add b
    add h

jr_069_6bc2:
    call $9c00
    and d
    ld b, b
    dec c
    ldh a, [$f2]
    ld b, b
    and d
    ld b, c
    add d
    ld a, a
    add b
    ld b, b
    ld bc, $5aa4
    add h
    ret nz

    db $ed
    jr nc, jr_069_6be3

    rst $38
    and l
    ret nz

    db $e3
    ld c, e
    rst $38
    pop hl
    ld bc, $c06b

jr_069_6be3:
    pop hl
    inc b
    ret nc

    add [hl]
    ld b, d
    jr nc, jr_069_6bf0

    jp nz, Jump_069_7aa8

    ld h, d
    ld a, a
    add d

jr_069_6bf0:
    ld bc, $3e4d
    ld b, b
    cp [hl]
    and c
    cp [hl]
    inc bc
    sbc b
    and a
    ret nc

    jp hl


    jr nc, @+$0e

    ldh a, [$e8]
    nop
    ld a, c
    ld b, h
    push bc
    ld b, d
    ldh [$f1], a
    ret nc

    ld [c], a
    jr nc, jr_069_6c19

    ldh a, [$e7]
    ld c, d
    jr nz, @+$01

    ld [c], a
    nop
    xor $00
    ld e, l

jr_069_6c15:
    and e
    ldh [$ec], a
    ret nc

jr_069_6c19:
    db $e3
    jr nc, jr_069_6c2f

    rst $08
    ld h, c
    db $fc
    ld h, c
    sub c
    and c
    nop
    ld e, b
    ld h, e
    ldh [$ef], a
    ret nc

    jp hl


    jr nc, jr_069_6c30

    ldh a, [$e9]
    inc hl
    ld h, b

jr_069_6c2f:
    sub c

jr_069_6c30:
    jp nz, $2114

    jr nz, jr_069_6c15

    pop af
    ret nc

    pop hl
    jr nc, jr_069_6c48

    ldh a, [$e8]
    call c, Call_000_2d01
    add $e0
    ret nz

    ld [c], a
    nop
    ldh [$f0], a
    jr nc, jr_069_6c59

jr_069_6c48:
    ldh a, [$e9]
    ret nz

    ld [$f0e0], a
    ld de, $0081
    nop
    nop
    sbc a
    ret c

    push de
    push de
    ret c

    and b

jr_069_6c59:
    rst $38
    add sp, -$10
    db $eb
    add sp, -$07
    jp hl


    ld hl, sp-$15
    ldh [$ed], a
    and b
    and b
    jp nc, $d4d6

    dec c
    sub $bd
    ld [c], a
    sbc $df
    jp nz, $f0e2

    db $eb
    and [hl]
    ldh [$f8], a
    ld [$e0fe], a
    db $ed
    ret c

    push de
    sub $d2
    ret nc

    jp nc, $bfd4

    sub $d3
    and b
    and b
    ldh [$e1], a
    ld a, c
    ldh [$d3], a
    add l
    ret nc

    ldh a, [$ea]
    ld [$e066], a
    ld hl, sp-$17
    ldh [$ed], a
    ret nc

    ldh [$d7], a
    db $fd
    call nc, $e0bf
    rst $10

Jump_069_6c9e:
    jp nc, $a0d8

Call_069_6ca1:
    ld [c], a
    db $e3
    ld a, b
    ldh a, [$f0]
    ld h, $e0
    add sp, -$1f
    sbc a
    sbc l
    and d
    sbc a
    ldh [$f2], a
    rst $38
    db $d3
    ret nc

    db $dd
    reti


    rst $10
    call nc, $ddd7
    db $fd
    ret nc

    ld a, a
    ldh [$a0], a
    db $eb
    and b
    and b
    rst $10
    jp nc, $f0fc

    db $eb
    and $c3
    sbc a
    or [hl]
    sub b
    jp $9fb6


    ld l, [hl]
    ldh [$f1], a
    rst $10
    jp nc, $bed0

    ldh [$dd], a
    pop de
    ret nz

    pop hl
    cp a
    db $ec
    db $ed
    and b
    and b
    jp c, $f0d3

    db $eb
    sbc a
    scf
    and d
    sbc l
    sbc a
    pop bc
    pop hl
    sub b
    call nz, $e0bf
    ldh [$f0], a
    and a
    jp c, $d4d3

    ld b, b
    ldh [$fe], a
    ret nz

    rst $10
    ld a, h
    jp $f9dc


    rst $10
    ldh a, [$ea]
    add a
    ld [c], a
    sbc l
    or [hl]
    sub c
    ld b, [hl]
    ld b, [hl]
    ld a, a
    sub c
    call nz, $9e90
    and b
    db $e4
    push hl
    ldh [$ec], a
    ld a, d
    ret nc

    ldh [$d9], a
    ld b, b
    ldh [$d4], a
    rst $10
    reti


    jp c, $c43c

    ld sp, hl
    jp c, $e9f0

    add a
    db $e3
    sub b
    sub c
    ld c, b
    ld c, [hl]
    ld c, b
    sbc e
    ld b, l
    sub c
    ret nz

    ldh [$e6], a
    rst $20
    ldh [$eb], a
    ret nc

    pop hl
    db $db
    ld e, l
    db $db
    call $dae0
    db $db
    call c, $a4fc
    call c, $e9f0
    ei
    sbc [hl]
    sub b
    rst $38
    ldh [$c4], a
    sub c
    ld b, l
    ld d, e
    ld d, h
    ccf
    ld d, d
    ld b, l
    ld b, [hl]
    sub c
    or [hl]
    sbc a
    ld a, [c]
    and b
    ldh [$ea], a
    ld [$e14f], sp
    call $c2e2
    pop hl
    ret c

    cp b
    and l
    ldh a, [$e4]
    ldh a, [$a0]
    rlca
    pop hl
    rst $38
    sub b
    sub c
    ld b, a
    ld b, a
    dec l
    ld a, [hl+]
    ld b, h
    ld b, l
    jp $4645


    ccf
    ldh [$e0], a
    jp hl


    ret nc

    and $82
    and c
    db $e4
    push hl
    reti


    ret c

    ld hl, sp-$60
    db $76
    and a
    db $e4
    push hl
    ldh a, [$a2]
    sbc [hl]
    jp $90ff


    sub b
    ld b, l
    ld d, d
    ld d, d
    dec l
    jr nz, @+$2f

    jp $5547


    ret nz

    ld [c], a
    rst $28
    and c
    ret nc

    db $ec
    adc b
    ld [c], a
    and $e7
    ld b, [hl]
    db $76
    ret nz

    pop de
    ret nc

    ld sp, hl
    and b
    ldh a, [$e5]
    ldh a, [$a2]
    sbc [hl]
    ld [bc], a
    ldh [rIE], a
    ld b, [hl]
    ld b, l
    dec l
    cpl
    jr nz, @+$34

    ld e, [hl]
    ld d, [hl]
    ld [hl], h
    add b
    push hl
    ret nc

    db $ed
    db $d3
    inc b
    pop bc
    add sp, -$17
    jp c, $a3b7

    db $fc
    ldh a, [$e6]
    ld [$c3c3], sp
    call nz, Call_069_5091
    add hl, sp
    inc h
    rst $38
    ld h, $2c
    cp l
    ld d, e
    ld d, e
    sub c
    sub b
    and c
    db $10
    ret c

    add d
    ret nc

    db $ed
    pop bc
    and b
    ld b, [hl]
    jp nz, $b7da

    and c
    ld a, c
    ret nz

    ldh a, [$e4]
    cp $c9
    and e
    call nz, Call_069_4791
    ld d, [hl]
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]
    ld b, e
    xor [hl]
    sub c
    or [hl]
    ret nz

    cp [hl]
    and b
    call c, $d081
    db $ed
    jp c, $c044

    jp z, $a118

    call c, $c077
    jp c, $c079

    ldh a, [$e5]
    and b
    and b
    db $fd
    and c
    jp Jump_069_4ac0


    ld h, b
    ld d, l
    inc a
    dec [hl]
    add hl, sp
    ld hl, $f8af
    ret nz

    ld a, a
    and b
    call c, $d082
    db $ed
    call c, $c844
    ld a, [hl-]
    pop bc
    db $fc
    ldh a, [$e7]
    ld b, c
    ret nz

    ld b, [hl]
    ld c, d
    ld d, d
    ld [hl], $35
    dec [hl]
    inc bc
    ld b, d
    sub c
    ld a, [$82a0]
    pop bc
    call c, $d081
    db $ed
    inc b
    sub [hl]
    ld a, [bc]
    and b
    rst $38
    sub c
    ld b, [hl]
    ld b, l
    ld [hl], $35
    xor h
    inc a
    ld b, h
    nop
    ld b, b
    and b
    ld b, d
    push bc
    call nc, $c26d
    ld h, d
    inc b
    add c
    or a
    ld h, b
    push af
    ld h, b
    inc a
    jp $f4fe


    ld h, c
    sbc a
    sbc h
    ld a, c
    ld a, d
    ld a, h
    ld a, l
    ld b, h
    rra
    inc a
    xor h
    xor l
    dec [hl]
    ld b, b
    cp b
    and c
    ld [bc], a
    pop bc
    call c, Call_069_58a5
    ret nc

    add sp, -$7a
    add d
    inc b
    add c
    db $d3
    sub $36
    add c
    sub $f0
    push hl
    cp $c1
    ldh [$7e], a
    ld b, l
    ld b, l
    adc [hl]
    ld a, e
    ld h, [hl]
    xor l
    add a
    dec [hl]
    inc a
    ld b, h
    pop bc
    call nz, $a6dc
    ret nc

    db $ed
    inc b
    add b
    ret c

    ldh a, [$fb]
    ld h, b
    cp b
    add c
    ldh a, [$e4]
    pop bc
    pop hl
    xor [hl]
    ld b, a
    ld c, c
    ld c, b
    ld a, a
    add hl, sp
    ld [hl], a
    ld h, h
    ld h, h
    ld h, h
    ld a, h
    ld a, l
    add b
    pop bc
    ld bc, $529e
    add c
    call c, $d0a3
    add sp, $0d
    pop bc
    rla
    add c
    or $60
    rst $30
    ld h, b
    di
    reti


    db $dd
    ldh a, [$e3]
    add d
    ld [c], a
    xor a
    ld d, d
    ld h, c
    ld d, d
    rst $38
    ld a, [hl-]
    dec [hl]
    dec [hl]
    xor h
    ld a, [hl-]
    ld b, l
    ld a, a
    ld a, l
    sbc a
    sub b
    sub b
    jp $a09e


    call c, $d0a5
    jp hl


    db $d3
    ld l, c
    jp c, $8207

    ld b, [hl]
    ld h, b
    pop de
    rst $30
    ld h, b
    ret nc

    ret nc

    ldh a, [$e2]
    ei
    sbc a
    or [hl]
    ld b, e
    ldh [$36], a
    dec sp
    ld [hl], $3f
    ld [hl], $ff
    xor h
    dec [hl]
    xor h
    xor l
    add hl, sp
    xor [hl]
    ld b, [hl]
    add c
    ld h, $fe
    ld h, b
    or [hl]
    sbc a
    call c, $d0a4
    ld [$86d7], a
    add h
    jr c, @+$63

    ld a, [$40f6]
    call nc, $e2f0
    and c
    sub b
    add b
    ld b, [hl]
    xor [hl]
    ld sp, hl
    dec [hl]
    add l
    ldh [$c3], a
    ret nz

    xor l
    ld [hl], $45
    xor a
    add e
    dec bc
    add h
    sub b
    or $80
    and c
    call c, $d0a6
    add sp, $07
    add a
    ld hl, sp+$62
    cp $f7
    ld h, d
    sbc a
    or [hl]
    sub c
    add d
    add e
    xor a
    inc a
    rst $38
    dec [hl]
    dec [hl]
    xor l
    xor l
    dec [hl]
    dec sp
    ld [hl], $45
    rrca
    add e
    adc c
    add a
    add l
    ld hl, sp+$61
    add b
    add c
    jp nc, $d0a6

    push hl
    ld hl, sp+$07
    add a
    ld hl, sp+$62
    rst $30
    ld h, d
    sbc [hl]
    sub c
    ld b, [hl]
    add l
    add a
    rst $38
    adc b
    ld [hl], c
    ld [hl], d
    ld l, h
    jr c, @+$39

    ld b, c
    ld b, e
    ld e, $c2
    pop hl
    ld b, [hl]
    sub c
    sub b
    jp $acfe


    ret nc

    push hl
    xor l
    add [hl]
    cp $08
    adc b
    sbc [hl]
    ld b, [hl]
    ld c, d
    ld b, a
    ld b, e
    ld [hl], $35
    rlca
    ld l, [hl]
    ld [hl], b
    adc b
    rst $38
    ldh [$c2], a
    ld [c], a
    cp a
    and c
    ccf
    and c
    sbc h
    dec h
    ret nz

    ret nc

    add sp, -$34
    ld hl, $8047
    ld c, $80
    ld a, c
    inc hl
    ld hl, sp+$20
    sbc [hl]
    sub c
    ld a, $49
    and b
    ld h, d
    ld h, e
    ld h, [hl]
    inc a
    ld b, h
    ld b, [hl]
    ld h, e
    rst $38
    ld [c], a
    db $10
    pop bc
    and $d0
    db $ec
    rst $00
    ld h, b
    rlca
    add b
    rst $10
    inc h
    ld h, b
    ld a, l
    ld h, e
    ld hl, sp+$20
    rst $38
    sbc [hl]
    sub b

jr_069_6fb2:
    ld b, [hl]
    ld b, b
    ld h, d
    ld h, a
    dec [hl]
    ld l, b
    rst $18
    ld h, [hl]
    ld [hl], $52
    ld d, h
    ld d, e
    jp $b6a0


    sbc l
    jr nz, @+$01

    ldh [$c1], a
    add b
    ld e, l
    ld h, d
    ret nc

    db $ed
    ret


    and e
    jp c, $2116

    push af
    ld h, d
    adc $c1
    jp nz, Jump_069_7a79

    ld a, b
    add c
    ret nz

    cp a
    ldh [rLY], a
    ld c, d
    inc bc
    ld b, a
    ld b, l

jr_069_6fe1:
    dec b
    and [hl]
    push de
    ld h, d
    ret nc

    db $ed
    rst $00
    ld h, b
    add c
    ld b, b
    ret nz

    ld b, d
    or [hl]
    push af
    ld h, h
    sbc [hl]
    sub b
    add h
    and b

jr_069_6ff4:
    ld a, [hl-]
    xor h
    cp a
    db $e3
    ld c, d
    inc bc
    ld h, c
    ld d, l
    rst $00
    ld h, b
    scf
    jr nz, jr_069_6fe1

    nop
    push de
    ld h, d
    ret nc

    db $ed
    rst $00
    ld h, b
    or d
    add c
    ld b, e
    ld [$62f5], a
    dec bc
    jr nz, jr_069_6fb2

    sub b
    ld b, d
    ret nz

    add hl, sp
    db $fd
    xor l
    nop
    ret nz

    dec [hl]
    ld l, d
    dec [hl]
    ld b, b
    ld d, d
    ld d, l
    ldh [$84], a
    ld hl, $02e0
    ldh [$e2], a
    ret nc

    xor $2f
    adc [hl]
    sbc a
    or [hl]
    add l
    rst $18
    add [hl]
    add e
    ld b, l
    scf
    jr c, jr_069_6ff4

    ld [c], a
    ld b, d
    ld b, l
    ld b, b
    inc bc
    add b
    inc b
    add h
    rst $18
    ld l, l
    push bc
    ld h, c
    jr nc, jr_069_704f

    db $10
    ld [hl+], a
    sbc h
    cp a
    ldh [$7b], a
    ld b, [hl]
    xor [hl]
    add $60
    ld l, d
    inc a
    ld b, h

jr_069_704f:
    ld b, [hl]
    dec b
    ret nz

    ld h, b
    cp a
    ret nz

    add d
    rst $00
    ret nc

    db $eb
    jr nc, jr_069_7066

    ld sp, hl
    inc h
    sbc [hl]
    sub c
    ld a, [hl]
    ldh [$7f], a
    xor a
    ld b, l
    ld [hl], $6c

jr_069_7066:
    ld l, l
    dec [hl]
    ld [hl], $80
    ldh [rNR23], a
    ld b, c
    rst $00
    inc d
    ret nz

    ret nc

    ld [$d5d8], a
    jr nc, jr_069_7081

    db $f4
    and e
    add a
    jr nz, @+$7f

    sub c
    ld a, a
    and b
    adc b
    adc b
    ld [hl], b

jr_069_7081:
    ld l, [hl]
    dec [hl]
    cp a
    ldh [$80], a
    ld a, d
    jr nz, jr_069_7089

jr_069_7089:
    ld h, h
    add e
    ld b, b
    ret nc

    db $eb
    jr nc, jr_069_709c

    db $f4
    and h
    ld b, a
    inc hl
    sub b
    dec de
    sub c
    ld b, b
    cp l
    pop bc
    dec [hl]
    add hl, sp

jr_069_709c:
    add e
    ld b, b
    ld a, [$8100]
    ld [hl+], a
    ldh [$d0], a
    db $ec
    ld a, [hl-]
    add c
    jr nc, jr_069_70b2

    db $f4
    and h
    ld b, a
    inc hl
    jp Jump_069_4490


    adc [hl]
    cp l

jr_069_70b2:
    add b
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld a, [hl]
    and c
    cp c
    nop
    ld bc, $d741
    ld bc, $d0d2
    ld [$a1f3], a
    jr nc, jr_069_70ce

    db $f4
    and [hl]
    add $00
    rst $08
    add b
    jp Jump_000_3240


jr_069_70ce:
    ld a, a
    ld [c], a
    ld b, [hl]
    ld a, [c]
    pop hl
    ld bc, $daa2
    db $d3
    ret nc

    ld [$e0f0], a
    jr nz, jr_069_710d

    ld a, [bc]
    db $f4
    and [hl]
    push bc
    ld hl, $0047
    ld a, a
    db $e3
    ld a, $c0
    ldh [$c1], a
    ld [c], a
    ld h, a
    db $e4
    push hl
    call c, Call_000_0023
    ret nc

    add sp, -$60
    call c, $803e
    jr nz, jr_069_7129

    add hl, bc
    di
    ld h, $bf
    db $e3
    ret nz

    rst $20
    add e
    ld bc, $dceb

jr_069_7104:
    add b
    ld b, e
    nop
    ld [bc], a
    ret nc

    jp hl


    and b
    ld a, $80

jr_069_710d:
    jr nc, @+$0c

    pop af
    ld hl, $6121
    add e
    ld hl, $e03f
    inc c
    ld bc, $c060
    and $ec
    db $ed
    ld [$4300], a
    nop
    ret nc

    ld [$227f], a
    jr @+$32

    dec bc

jr_069_7129:
    ld hl, $bd62
    jp Jump_000_3946


    nop
    push hl
    pop bc
    jr z, jr_069_7104

    db $ed
    jr nz, jr_069_7167

    inc c
    ldh a, [$e4]
    ld a, h
    jp nz, $c2ff

    add b
    pop bc
    jp $64c2


    rst $20
    inc bc
    db $10
    ret nc

    ld [$0d30], a
    ldh a, [$e4]
    ld a, [hl]
    db $e3
    ld b, d
    pop bc
    push bc
    nop
    inc hl
    ld d, e
    ld h, [hl]
    nop
    ret nc

    add sp, $30
    dec c
    ldh a, [$e4]
    ret nz

    inc bc
    cp $a1
    add c
    pop bc
    ld [bc], a
    ld l, b
    ret nc

    db $ed
    nop

jr_069_7167:
    jr nc, @+$0f

    ei
    ld h, h
    add b
    inc bc
    cp a
    pop bc
    ld bc, $fdc1
    add b
    pop bc
    and c
    add sp, $01
    db $10
    ret nc

    db $ed
    jr nc, jr_069_7189

    ldh a, [$e5]
    ld b, b
    inc bc
    add hl, sp
    ld b, b
    ld b, b
    rst $38
    ld b, d
    db $fc
    ld h, l
    ld [hl], b
    ret nc

jr_069_7189:
    xor $30
    dec c
    pop af
    ld h, a
    ld a, [$9180]
    ld b, l
    ld b, e
    pop bc
    add sp, $20
    call c, $d182
    ld l, [hl]
    jr nc, jr_069_71a7

    ld a, [$fb68]
    add c
    sub c
    ld b, e
    ld b, d
    ld b, c
    ret


    ld b, b
    ret nc

jr_069_71a7:
    db $ec
    jp nz, $3062

    ld [$e6f0], sp
    cp h
    add d
    db $fd
    and $9e
    call c, Call_000_00e4
    sub h
    ld h, e
    ret nc

    add sp, $40
    ld [bc], a
    jr nc, jr_069_71cb

    ldh a, [$e1]
    cp l
    add c
    add c
    ldh [rIE], a
    ldh [$80], a
    ld b, e
    inc bc
    add sp, $20

jr_069_71cb:
    call c, $d0a6
    db $ed
    jr nc, jr_069_71d9

    ldh a, [$e5]
    db $fc
    ld h, b
    jp $c4af


    ld b, l

jr_069_71d9:
    scf
    dec a
    rst $38
    ldh [$37], a
    cp [hl]
    ld h, b
    sbc [hl]
    add b
    add sp, $21
    call c, $d0a6
    add sp, $0d
    pop bc
    jr nc, jr_069_71f5

    ldh a, [$e5]
    ld a, h
    nop
    call nz, $c36f
    add hl, sp
    and h

jr_069_71f5:
    ld h, h
    rst $38
    ldh [$a5], a
    add hl, sp
    add c
    call nz, $dc0c
    and l
    ret nc

    jp hl


    db $d3
    jp c, $a30f

    jr nc, jr_069_720c

    ldh a, [$e5]
    dec a
    add d
    rst $38

jr_069_720c:
    ld a, $69
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld a, $08
    add d
    ld h, h
    call c, $d0a4
    ld [$7fd7], a
    inc b
    jr nc, @+$07

    ldh a, [$e3]
    rst $28
    and c
    ld d, $ff
    add b
    ld a, $69
    ei
    ld [hl+], a
    ld a, $43
    ld [bc], a
    db $db
    and b
    call c, $e0a5
    ret nc

    add sp, $37
    add [hl]
    jr nc, jr_069_723d

    daa
    add l
    ret nz

    and d

jr_069_723d:
    add hl, sp
    ld l, e
    ld [hl], c
    ld b, $ff
    ldh [$6d], a
    add hl, sp
    add d
    nop
    add c
    and c
    inc bc
    ld c, c
    ret nc

    push hl
    call nz, $0c27
    jr nc, jr_069_7255

    rst $30
    ld l, b
    sbc [hl]

jr_069_7255:
    sub b
    ret nz

    rst $00
    ld b, e
    rlca
    ret nc

    db $ec
    jr nc, @+$11

    ld [$66f5], sp
    ld a, $80
    ld b, b
    call nz, $c1b6
    ld h, $e0
    add sp, -$30
    push hl
    jr nc, @+$0e

    add b
    ldh a, [$e8]
    cp l
    and l

jr_069_7273:
    inc b
    ld h, e
    ldh [$ef], a
    adc a
    inc hl
    jr nc, jr_069_7287

    ldh a, [$e8]
    and b
    inc bc
    sbc a
    sbc l
    rst $38
    ld [c], a
    pop bc
    ld bc, $f1e0

jr_069_7287:
    ld d, h
    ld [hl+], a
    jr nc, jr_069_7298

    ldh a, [$e8]
    nop
    di
    ld b, [hl]
    rrca
    jr nz, jr_069_7273

    pop af
    push bc
    ld h, d
    jr nc, jr_069_72a5

jr_069_7298:
    ldh a, [$e8]
    db $ec
    nop
    di
    ld b, e
    nop
    db $e4
    inc b
    ldh [$ed], a
    push bc
    ld h, d

jr_069_72a5:
    jr nc, jr_069_72b4

    ldh a, [$e8]
    db $ec
    inc bc
    ldh [$84], a
    ldh [$f0], a
    nop
    ret nc

    ld [c], a
    rst $38
    ld a, b

jr_069_72b4:
    inc e
    inc hl
    ld hl, sp-$19
    rst $18
    ld l, l
    rst $38
    ld h, c
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
    daa
    dec b
    ld [bc], a
    ld bc, $0628
    ld [bc], a
    ld [bc], a
    jr nz, @+$09

    ld [bc], a
    inc bc
    ld hl, $0208
    inc b
    ld e, $0b
    ld [bc], a
    dec b
    rra
    inc c
    ld [bc], a
    ld b, $1e
    dec c
    ld [bc], a
    rlca
    dec h
    ld c, $02
    ld [$0f26], sp
    ld [bc], a
    add hl, bc
    daa
    db $10
    ld [bc], a
    ld a, [bc]
    ld [hl+], a
    ld de, $0b02
    ld hl, $0212
    inc c
    dec de
    inc d
    ld [bc], a
    dec c
    ld [hl+], a
    dec d
    ld [bc], a
    ld c, $29
    dec d
    ld [bc], a
    rrca
    rra
    ld d, $02
    db $10
    ld hl, $0216
    ld de, $1624
    ld [bc], a
    ld [de], a
    add hl, de
    rla
    ld [bc], a
    inc de
    dec e
    rla
    ld [bc], a
    inc d
    ld e, $17
    ld [bc], a
    dec d
    jr z, jr_069_7350

    ld [bc], a
    ld d, $29
    jr @+$04

    rla
    jr z, @+$1b

    ld [bc], a
    jr jr_069_735b

    ld e, $02
    add hl, de
    add hl, de
    ld e, $02
    ld a, [de]
    inc hl
    rra
    ld [bc], a
    dec de
    inc h

jr_069_7350:
    jr nz, jr_069_7354

    inc e
    ld a, [de]

jr_069_7354:
    ld hl, $1d02
    inc hl
    ld hl, $1e02

jr_069_735b:
    ld h, $23
    ld [bc], a
    rra
    daa
    inc h
    ld [bc], a
    jr nz, jr_069_737e

    dec h
    ld [bc], a
    ld hl, $2528
    ld [bc], a
    ld [hl+], a
    add hl, de
    ld h, $02
    inc hl
    daa
    ld h, $02
    inc h
    ld a, [de]
    daa
    ld [bc], a
    dec h
    dec de
    jr z, jr_069_737c

    ld h, $26

jr_069_737c:
    dec hl
    ld [bc], a

jr_069_737e:
    daa
    daa
    inc l
    ld [bc], a
    jr z, jr_069_73aa

    dec l
    ld [bc], a
    add hl, hl
    inc e
    inc sp
    ld [bc], a
    ld a, [hl+]
    dec de
    inc [hl]
    ld [bc], a
    dec hl
    inc e
    dec [hl]
    ld [bc], a
    inc l
    dec h
    ld [hl], $02
    dec l
    ld h, $37
    rst $38
    rst $38
    rst $38
    and h
    ld [hl], e
    rst $08
    ld [hl], a
    cp b
    ld a, h
    db $d3
    ld a, h
    ld l, a
    dec c
    ld c, $0e
    ld c, $fc

jr_069_73aa:
    pop af
    ld c, l
    ld c, l
    db $fc
    ldh a, [rP1]
    db $d3
    ldh [$fc], a
    pop hl
    call z, $fee9
    db $fd
    ret nc

    ld [c], a
    call z, $b0e1
    ldh [rIE], a
    rst $38
    call c, $eac6
    ld a, [hl]
    ld [c], a
    ld c, l
    ld c, l
    dec c
    cp $e0
    ld c, l
    ld c, l
    pop hl
    dec l
    ld hl, sp-$20
    ld a, [hl]
    db $e3
    rst $38
    rst $38
    add d
    jp hl


    dec c
    dec c
    ld l, l
    dec c
    ld l, e
    rst $38
    pop hl
    ld c, l
    dec l
    ld a, [hl]
    push hl
    cp h
    db $ed
    ld b, $ef
    cp $e3
    ld a, h
    ld c, h
    pop hl
    jp nz, Jump_000_2be0

    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    cp a
    ld [c], a
    add b
    ld [hl], l
    ldh [$ae], a
    ld [c], a
    adc $cc
    ld a, d
    db $ed
    ld [de], a
    pop hl
    jp nz, Jump_000_0cc1

    pop hl
    ld c, l
    cp $c1
    ldh [$2a], a
    ld a, [bc]
    ld a, [bc]
    ld l, d
    dec bc
    dec c
    ld l, e
    rlca
    ld l, e
    dec l

jr_069_7410:
    dec c
    db $fc
    rst $18
    jp z, $82e3

    jp $e246


    add d
    ldh [rTMA], a
    ret nz

    ldh [$2a], a
    ld c, e
    ret nz

    ldh [$3e], a
    ldh [$f7], a
    ret nz

    ret nz

    rst $38
    jr z, jr_069_7410

    ld l, $07
    ld [c], a
    ld a, [bc]
    ld a, [hl+]
    dec bc
    rst $38
    ldh [$2b], a
    ld a, $e4
    ld d, d
    ldh a, [$88]
    ld [$4dd6], sp
    ldh [rWY], a
    ldh [$2b], a
    pop bc
    pop hl
    ret nz

    ldh [$3e], a
    pop hl
    ld l, l
    xor b
    nop
    rst $18
    ld [$88c8], sp
    ret nz

    dec c
    pop bc
    ldh [rWX], a
    add b
    ldh [rWX], a
    rlca
    ld l, e
    ld a, [bc]
    ld c, d
    ret nz

    db $e4
    rst $38
    rst $38
    jp c, $d5c1

    ret nz

    ld c, c
    jp Jump_000_2b47


    ld c, e
    ld c, e
    jp $ffe0


    pop hl
    ld [hl], d
    ldh [$6d], a
    ld a, [hl]
    jp nz, $ffc4

    rst $38
    inc b
    db $e3
    dec c
    ld [$c0e1], sp
    pop hl
    pop bc
    pop hl
    ld a, [hl+]
    ld c, e
    ld b, b
    ld b, c
    pop hl
    ld l, d
    call nz, $d700
    ld [$8dc3], sp
    and b
    call z, $0da0
    ld a, [bc]
    pop hl
    add hl, bc
    dec bc
    add b
    db $e3
    ld a, a
    jp nz, Jump_000_006d

    rst $18
    ld [$8cc4], sp
    and c
    set 0, d
    ld h, [hl]
    pop bc
    ldh [rOCPD], a
    ld c, e
    cp c
    ret nz

    cp $e1
    ld l, e
    dec l
    ld c, b
    rst $38
    nop
    inc e
    and e
    ld b, d
    db $e3
    add [hl]
    jp nz, $e2c1

    jp nz, Jump_000_01e2

    ldh [rP1], a
    cp a
    add d
    db $e4
    jr nz, @+$52

    and b
    add l
    pop bc
    add b
    db $e3
    pop bc
    ldh [$fe], a
    add c
    dec c
    ld b, d
    jp nz, $aec0

    ld l, h
    nop
    adc d
    ld b, [hl]
    and d
    ld c, l
    dec c
    ld de, $6ba1
    dec hl
    ld b, $c3
    pop bc
    dec bc
    pop bc
    pop hl
    cp d
    add b
    pop bc
    ld [c], a
    inc b
    call z, $f373
    ld c, l
    ld c, l
    inc c
    ld [de], a
    and c
    ld b, c
    db $e3
    dec bc
    ld l, e
    ld b, $a1
    add l
    ldh [$b2], a
    add c
    xor e
    ld h, b
    inc e
    nop
    rst $38
    sub $61
    dec bc
    dec c
    dec hl
    ld b, [hl]
    ret nz

    add c
    db $e3
    add h
    add c
    jr nz, jr_069_7549

    add b
    jp Jump_000_02e3


    cp a
    ld b, [hl]
    ld h, d
    jp z, Jump_069_4a80

    ld c, b
    and e
    add d
    ret nz

    ld h, b
    ld b, a
    jp nz, $8368

    ld a, [hl+]
    add e
    cp $99
    ld [$6da2], sp
    dec bc
    inc c
    add c
    adc b
    pop bc
    and c
    ld [bc], a
    ret nz

    cp a
    ld h, b
    dec bc
    ld [$d6a3], sp
    ld d, l
    ld c, $6e
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
    rst $38
    rst $38
    ld c, h
    inc b
    add [hl]
    ld bc, $0ae0
    ld c, d
    ret nz

    and b
    ld a, b
    ret nz

    ld c, e

jr_069_7549:
    cp d
    pop hl
    ld hl, sp+$08
    and b
    add $7f
    add b
    jp hl


    dec c
    ld l, e
    ld c, d
    ld a, [bc]
    dec hl
    ld b, $7f
    and b
    ld c, e
    ld c, e
    ld b, d
    add d
    ld [$92a4], sp
    ld [hl], h
    nop
    ld c, c
    adc [hl]
    ld b, e
    sub [hl]
    rst $08
    ld h, b
    ld a, [hl+]
    ld a, [hl+]
    ld b, [hl]
    ret nz

    dec bc
    add $80
    ld b, [hl]
    ld h, b
    dec bc
    jr nc, @+$49

    ld h, b
    ld [$008f], sp
    ld d, a

jr_069_757a:
    adc b
    add d
    ld a, [bc]
    ld l, d
    cp $a0
    add [hl]
    add c
    ld b, a
    ld c, d
    dec c
    dec bc
    adc b
    ld [hl], d
    nop
    ld sp, hl
    ret nz

    pop hl
    ld a, [bc]
    push bc
    and b
    dec b
    dec hl
    ld b, $80
    ld c, d
    ld b, c
    ld h, b
    inc bc
    ld b, c
    call nz, Call_000_00ff
    add sp, $7f
    pop bc
    inc b
    ld a, a
    ldh [rSB], a
    ldh [rWY], a
    ld [hl], $c2
    add $80
    inc b
    or c
    nop
    db $d3
    ret nz

    pop hl
    ld a, [hl-]
    dec bc
    ld b, b
    ld a, [bc]
    add l
    ld h, c
    dec bc
    ld a, [bc]
    ld a, [bc]
    jr c, jr_069_757a

    add [hl]
    add d
    call nc, $df00
    nop
    push bc
    dec hl
    pop bc
    pop hl
    ld a, [hl+]

jr_069_75c4:
    ld b, l
    ld h, c
    dec hl
    ld a, [hl+]
    ld b, c
    ld a, [hl+]
    ld a, c
    ld h, c
    add b
    ld [c], a
    rst $38
    rst $38
    inc b
    ld b, h
    add e
    pop hl
    ld a, [bc]
    add b
    add b
    ld b, $05
    ld h, b
    ld c, e
    dec hl
    pop bc
    ld b, c
    rst $38
    and c
    call nz, $8eff
    ld b, $cc
    ld hl, $4904
    ld b, b
    add $41
    ld c, e
    ret nz

    ret nz

    add b
    cp e
    inc b
    ld c, d
    nop
    add e
    jp nz, Jump_000_22a0

    ld c, e
    ld b, b
    ld c, e
    ld b, [hl]
    ld b, b
    ld sp, hl
    pop bc
    nop
    and b
    dec l
    ld [$fe23], sp
    jp nc, $8c8e

    db $10
    dec l
    ld a, [hl+]
    ld a, [bc]
    add c
    db $e3
    ld c, b
    ld b, d
    ld a, c
    ld b, b
    ld c, l
    db $10
    ld b, $62
    rst $00
    ld [bc], a
    ld b, h
    ld a, [hl]
    ret nz

    ld bc, $cc6b
    inc hl
    add e
    ret nz

    ld b, $21
    nop
    ld b, b
    pop bc
    add [hl]
    ld b, e

jr_069_7627:
    ret nz

    rst $38
    adc d
    inc bc
    jp $c765


    ld [bc], a
    ld b, b
    jp nz, $9ffe

    inc c
    nop
    adc e
    jp nz, Jump_000_0d67

    dec c
    ccf
    jr nz, jr_069_75c4

    jr nz, jr_069_7643

    ld d, e
    nop
    sub h
    adc b

jr_069_7643:
    push bc
    ld b, h
    add c
    add b
    nop
    add d
    ld c, e
    ld b, l
    nop
    ld c, b
    rst $38
    nop
    add a
    dec l
    inc c
    jp nz, $8821

    inc b
    dec c
    ld c, e
    cp $e1
    ld a, $61
    nop
    rst $38
    add b
    and h
    inc bc
    ld c, e
    dec l
    ld b, e
    add c
    cp a
    db $e4
    ld a, a
    nop
    cp [hl]
    ldh [$7e], a
    jp $df00


    ld [hl+], a
    nop
    ld b, d
    dec l
    rst $00
    add c
    rst $38
    and $bf
    pop hl
    ld c, e
    ld a, $e0
    ld h, [hl]
    inc hl
    jr nz, jr_069_7682

    ld a, [hl-]
    add b

jr_069_7682:
    add $93
    nop
    cp a
    rst $20
    ret nz

    ld [c], a
    ld c, e
    db $fc
    ld h, e
    db $fc
    cp l
    stop
    ld b, e
    add l
    and b
    ret nz

    add sp, -$08
    add b
    dec c
    ld a, a
    ld [c], a
    db $fc
    cp a
    cp h
    and h
    jr c, jr_069_7627

    add c
    ld a, $e7
    ret nz

    pop hl
    inc c
    inc c
    inc l
    ld a, h
    sub $00
    ld c, a
    ld l, h
    dec b
    and b
    rst $38
    ret


    ld c, e
    inc c
    rst $38
    ldh [$2c], a
    inc l
    ld a, d
    ld b, e
    ld [hl], b
    ld [hl], l
    ld [hl+], a
    nop
    ld e, l
    add [hl]
    add b
    rst $38
    rst $00
    dec hl
    ld c, e
    ld c, h
    rst $38
    ldh [$93], a
    ld l, h
    ld l, h
    ld a, d
    inc hl
    nop
    rst $38
    ld c, l
    db $10
    ld [c], a
    cp a
    jp z, $0f4c

    dec c
    ld c, h
    ld l, h
    ld c, e
    ld b, b
    inc de
    add b
    sub c
    ret nz

    ld [c], a
    ld b, e
    ld h, b
    inc b
    ret nz

    inc b
    cp $a2
    ld c, e
    cp h
    and d
    nop
    call c, Call_069_4300
    ld a, a
    ldh [$85], a
    ld h, c
    inc b
    ld a, d
    add d
    ccf
    rst $00
    ld c, e
    rst $20
    and b
    ld h, d
    ld [bc], a
    nop
    rst $18
    ld b, a
    ld h, c
    ld a, l
    ld [c], a
    add b
    cp $a8
    ld l, e
    pop bc
    ld a, d
    or a
    nop
    ld l, d
    ret nz

    push hl
    inc a
    rst $20
    ret nz

    db $e4
    ld c, e
    nop
    db $76
    ld [hl+], a
    nop
    rst $18
    rst $00
    ld b, c
    adc c
    and e
    or [hl]
    ld h, d
    ld a, $a3
    ld sp, hl
    add c
    ld hl, sp+$32
    sub b
    nop
    ld c, [hl]
    cp a
    ret nz

    ld c, l
    and d
    cp [hl]
    ld b, e
    ld c, e
    ld a, d
    nop
    or c
    and b
    dec hl
    ld d, e
    dec bc
    dec hl
    ret nz

    ld [c], a
    nop
    rst $18
    dec c
    db $dd
    ldh [$0d], a
    cp l
    pop hl
    ld b, b
    ld b, h
    add b
    rst $30
    and d
    ld hl, sp+$21
    cp b
    add e
    ld hl, sp+$3e
    sbc [hl]
    and h
    dec c
    ld a, h
    db $e3
    ld [$e20c], sp
    add e
    db $e3
    ld [hl], a
    add e
    ld l, l
    nop
    db $fd
    inc e
    inc hl
    ld d, b
    inc bc
    ld a, [hl-]
    db $e4
    ld [bc], a
    db $f4
    add h
    dec l

jr_069_7762:
    or e
    ld h, c
    ld a, b
    jr nc, @+$2c

    dec l
    db $fc
    and e
    ld hl, sp+$02
    dec sp
    ld [c], a
    ld [$8085], sp
    ld [hl-], a
    ld h, c

jr_069_7773:
    ld a, h
    ld [c], a
    dec c
    nop
    ld [c], a
    nop
    ld e, l
    ld [hl], h
    rst $20
    or a
    pop bc
    dec [hl]
    dec c
    or l
    add d
    dec l
    cp a
    ret nz

    dec hl
    ld l, e
    cp $9f
    db $fc
    ld h, a

jr_069_778b:
    nop
    db $76
    add d
    db $76
    jp nz, $c33c

    pop bc
    ldh [rSB], a
    pop bc
    nop
    rst $18
    jr nz, jr_069_7762

    db $76
    ret nz

    nop
    cp a
    push hl
    pop bc
    pop hl
    cp c
    nop
    ld a, h
    ld [hl], c
    inc l
    ld d, e
    jp c, $78a1

    pop bc
    rst $38
    jr nz, jr_069_77af

    dec l

jr_069_77af:
    ld [hl], b
    jr nz, jr_069_7773

    ld [c], a
    nop
    sbc a
    jr nc, jr_069_77e8

    cp h
    ld [c], a
    cp b
    jr nz, jr_069_77be

    rst $38
    nop

jr_069_77be:
    jr c, jr_069_778b

    db $76
    push bc
    jp nz, $ece2

    and d
    nop
    sbc a
    xor d
    jr c, jr_069_77cd

    ld [hl], h
    nop

jr_069_77cd:
    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc
    ld a, [c]
    and b
    ret c

    reti


    rst $08
    and b
    and b
    jp nc, $fcd3

    db $eb
    db $ec
    pop hl
    sub $d7
    sbc $cc
    jp hl


    rst $18

jr_069_77e8:
    ldh [$e1], a
    ld [c], a
    db $fc
    pop af
    sub $d7
    rst $38
    jp c, $d0db

    pop de
    call nc, $a0d5
    and b
    cp $fc
    rst $20
    ret nc

    pop de
    jp c, $d6db

    rst $10
    ret c

    dec a
    reti


    call z, $e3e9
    db $e4
    push hl
    and $fc
    pop af
    add d
    push hl
    rst $38
    and b
    and b
    sbc a
    sbc l
    and d
    sbc l
    sbc l
    sbc l
    reti


    sbc a
    push af
    ldh [$7e], a
    db $e3
    jp c, $ccdb

    jp hl


    rst $20
    add sp, -$0d
    jp hl


    ld [$f1fc], a
    add d
    push hl
    sbc a
    and d
    sbc h
    ld b, [hl]
    ld [hl-], a
    rst $38
    pop hl
    sbc h
    cp a
    ldh [$7e], a
    db $e3
    and b
    and b
    call z, Call_000_06e9
    pop af
    db $fc
    cp $e3
    add d
    ld [c], a
    sbc a
    sbc h
    ld b, l
    ld d, b
    ld d, b
    ld b, e
    ld b, c
    ld b, l
    cp a
    db $e4
    ld l, [hl]
    db $e3
    adc $ca
    ld [bc], a
    rst $28
    sbc $c2
    and b
    inc b
    pop hl
    rst $38
    sbc a
    sbc l
    sbc l
    sbc h
    ld b, l
    ld b, a
    ld e, l
    ld e, l
    ld a, a
    ld c, h
    ld d, d
    ld b, l
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    and c
    inc sp
    ldh [$8f], a
    call nc, $d6d5
    rst $10
    adc $cb
    ld [bc], a
    rst $28
    add [hl]
    add $9f
    cp $46
    ldh [rLYC], a
    ld b, a
    ld h, b
    ld d, h
    ld e, c
    ld e, c
    ld d, e
    inc bc
    ld b, l
    xor a
    ld a, a
    db $e4
    ld l, d
    ret nz

    adc $cb
    ld [bc], a
    rst $28
    add [hl]
    push bc
    pop bc
    pop hl
    rst $38
    ld b, [hl]
    ld b, l
    ld d, e
    ld d, e
    ld a, [hl+]
    ld h, $20
    ld h, $e1
    ld a, [hl+]
    ld a, $e4
    ld a, [hl]
    pop bc
    adc $cb
    ld [$a1d7], sp
    ld b, [hl]
    ld b, [hl]
    cp $4a
    ldh [rLYC], a
    scf
    daa
    jr nz, jr_069_78cc

    jr nz, @+$32

    add l
    ld b, h
    ld a, $e1
    sbc [hl]
    ldh a, [$a2]
    nop
    db $db
    ld [$42c6], sp
    pop hl
    xor a
    rst $28
    ld b, [hl]
    ld b, l
    ld [hl], $35
    ret nz

    ldh [rNR52], a
    ld a, [hl+]
    ld b, a
    ld b, l
    ld d, l
    ld a, $e0
    sbc [hl]
    nop

jr_069_78cc:
    ld [c], a
    nop
    db $db
    inc b
    push hl
    sbc l
    ld c, c
    jp Jump_000_39ff


    dec [hl]
    dec [hl]
    ld hl, $482a
    ld c, [hl]
    ld c, c
    jp Jump_069_5560


    ld a, [hl]
    call nz, $dd00
    inc b
    rst $20
    adc l
    ret nz

    ld b, [hl]
    ld b, l
    rst $38
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld d, c
    ld e, a
    ld h, c
    ld h, c
    ld b, l
    ld d, d
    dec a
    ret nz

    sbc [hl]
    ld l, d
    pop bc
    nop
    call c, $a49a
    sbc [hl]
    call z, $fea0
    ld b, e
    ldh [$37], a
    jr c, jr_069_793c

    dec [hl]
    dec [hl]
    add hl, sp
    ld b, l
    add c
    ld d, e
    ld a, a
    ret nz

    ld bc, $00e2
    sbc $08
    jp $c246


    ld b, h
    ret nz

    ld [hl], $ae
    jp nz, Jump_000_35e0

    ld [hl], $45
    cp c
    ret nz

    xor [hl]
    push af
    ret nz

    ld b, [hl]
    ld b, c
    and c
    ldh a, [$81]
    nop
    db $db
    adc [hl]
    add e
    ld b, d
    db $e3
    pop bc
    rst $20
    xor a
    jp nz, $58e1

    ld a, $a0
    ld a, [hl]
    add e
    nop
    reti


jr_069_793c:
    sub $d7
    add d
    push hl
    xor a
    push bc
    pop bc
    ld [bc], a
    ld b, d
    ldh [rLCDC], a
    pop bc
    pop hl
    rst $38
    add h
    ld [hl], d
    add c
    nop
    jp c, $820c

    rlca
    pop bc
    call nc, $c4c5
    ld [bc], a
    ldh [rSCY], a
    pop bc
    pop hl
    sbc h
    ld a, a
    add d
    ret nc

    pop de
    ret nz

    inc b
    adc h
    nop
    adc l
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
    jp $b3e0


    ld h, b
    inc b
    adc e
    nop
    adc l
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
    ld b, b
    db $76
    ld h, b
    or e
    ld h, b
    inc b

Call_069_7990:
    adc e
    nop
    adc l
    and d
    ld h, c
    adc [hl]
    ld h, b
    sbc [hl]
    jp z, Jump_000_0180

    ld d, l
    ld [bc], a
    db $e3
    add d
    ret nz

    ld c, b
    and d
    db $76
    ld h, e
    or d
    ld h, c
    ret nc

    ld l, l
    ld [bc], a
    ld l, e
    ld a, h
    inc c
    ld h, c
    adc c
    add b
    ld b, h
    ld c, l
    ld e, d
    ld a, $ac
    ld b, e
    pop bc
    rra
    ld a, [hl-]
    ld b, l
    xor [hl]
    xor a
    xor [hl]
    ld [$d6a4], sp
    ld d, e
    ld [bc], a
    ld l, e
    db $fc
    inc c
    ld h, c
    call nz, $51a0
    ld e, [hl]
    ld e, d
    ld a, $ad
    dec [hl]
    ld a, [bc]
    cp [hl]
    ldh [$39], a
    pop bc
    ldh [$af], a
    ld [$d6a4], sp
    ld d, e
    nop
    rst $08
    pop bc
    ret nz

    rla
    ld b, h
    ld c, l
    ld d, [hl]
    rlca
    and b
    xor l
    call nz, $05a0
    pop bc
    ld [$b8a4], sp
    sub $53
    nop
    rst $08
    pop bc
    pop bc
    ld c, e
    ld e, b
    ld b, h
    ld b, $a1
    ld b, l
    ldh [rDMA], a
    ld h, d
    ld [$d6a4], sp
    ld d, e
    inc c
    ld c, a
    inc b
    and c
    ld d, l
    ld d, d
    ld b, h
    ld b, $86
    add b
    add hl, sp
    ld b, a
    ld b, [hl]
    ld h, d
    ld b, a
    ld h, b
    ld [$008f], sp
    rst $10
    pop bc
    and c
    rst $28
    ld b, h
    ld b, a
    ld d, d
    ld b, b
    add h
    and b
    ld d, d
    ld h, c
    ld h, c
    ld h, b
    ld [$8680], sp
    and d
    ld [$004d], sp
    rst $10
    add h
    add c
    ld b, h
    ld c, l
    ccf
    pop hl
    rra
    ld [hl], $45
    ld d, d
    ld h, c
    ld d, [hl]
    add h
    ld b, b
    ld b, h
    ld b, c
    ld [$bc4d], sp
    nop
    rst $10
    add c
    and c
    ld d, c
    ld e, [hl]
    ld h, c
    ld d, d
    push bc
    ld h, b
    ld [hl], $2f
    ld b, l
    ld c, e
    ld h, c
    ld e, h
    ld a, [hl-]
    ld h, b
    sbc [hl]
    ld [$004f], sp
    rst $10
    db $ec
    add c
    and b
    rst $38
    and b
    ld h, c
    ld e, b
    ccf
    ldh [$35], a
    add hl, sp
    ld c, a
    push hl
    ld e, b
    ld b, l
    add c
    sbc [hl]
    nop
    rst $18
    nop
    ret


    ld b, l
    ld b, e
    ld d, b
    ld a, e
    ld d, d
    ld d, a
    add b
    pop hl
    dec [hl]
    ld a, $55
    ld d, d
    ld b, l
    add c
    ld sp, hl
    sbc [hl]
    nop
    rst $18
    nop
    ret z

Call_069_7a79:
Jump_069_7a79:
    ld b, l
    ld b, a
    ld c, h
    ld e, l
    ld e, h
    dec de
    ld b, e
    ld b, e
    add b
    add c
    add hl, sp
    ld b, l
    add l
    dec h
    nop
    rst $18
    nop
    add $de
    ld b, e
    ldh [rHDMA2], a
    ld b, l
    ld [hl], $3b
    add h
    ld h, d
    ld b, a
    ld d, l
    cp b
    ld bc, $00e1
    rst $18
    nop
    ret


    ld b, l
    ld c, e
    ld d, [hl]
    ld b, l
    ld h, d
    ld a, [hl-]
    dec d
    ccf
    add d
    jr nz, jr_069_7b02

Jump_069_7aa8:
    add d
    ld h, b
    and c
    db $76
    inc b
    nop
    rst $18
    adc d
    ld bc, $9f27
    sbc h
    ld d, l
    add d
    add e
    pop bc
    and b
    ld h, b
    nop
    pop bc
    add h
    nop
    and $86
    ld bc, $a0a0
    nop
    rst $18
    add [hl]
    ld [hl+], a
    and c
    ld b, l
    ld b, l
    dec b
    ld a, $45
    ld h, d
    ld c, l
    ld c, b
    ld b, c
    jp $8641


    ld b, h
    nop
    rst $18
    nop
    add l
    ld [bc], a
    ld b, h
    ld h, d
    add hl, sp
    ld a, e
    ret nz

    ld b, b
    add b
    ld b, b
    pop bc
    add [hl]
    inc bc
    nop
    rst $18
    nop
    add h
    dec e
    ld b, d
    push bc
    ld b, d
    ld a, [hl-]
    ccf
    ld b, e
    ld bc, $c682
    ld [hl+], a
    db $e4
    ld b, h
    inc c
    nop
    rst $18
    nop
    add c
    ld b, h
    inc a
    add d
    ld h, l
    ld bc, $c780

jr_069_7b02:
    nop
    add [hl]
    inc b
    nop
    db $fc
    or c
    nop
    sub d
    inc bc
    ld h, l
    rst $38
    ld h, h
    ld a, [hl]
    ld h, l
    db $fc
    or c
    nop
    sub d
    inc b
    ld b, h
    ld b, $43
    jr nz, @+$3a

    scf
    cp a
    and b
    cp l
    ld h, c
    ld a, [hl]
    pop bc
    db $fc
    or c
    nop
    ld c, a
    nop
    ld b, a
    ld bc, $e53f
    ld b, b
    inc hl
    ld a, l
    and e
    db $fc
    or e
    nop
    ld d, d
    jp Jump_069_7e25


    ld [hl+], a
    dec b
    add hl, sp
    or c
    ld [hl+], a
    and c
    ld b, c
    ld b, b
    db $fc
    or c
    nop
    ld d, d
    jp nz, Jump_000_3e25

    ld [hl+], a
    ld bc, $353e
    ld [bc], a
    cp h
    ld hl, $b1fc
    nop
    ld d, b
    ld b, b
    ld hl, $c33e
    ret nz

    push hl
    rrca
    xor a
    dec bc
    inc bc
    inc bc
    ld a, d
    ld h, h
    nop
    rst $18
    ld b, e
    ld [bc], a
    rst $38
    ret z

    rst $38
    ld a, $46
    ld [bc], a
    rlca
    dec c
    sbc d
    dec c
    ld [bc], a
    ldh [$fb], a
    and c
    db $fc
    xor a
    nop
    ld d, d
    rst $38
    jp z, $e0c0

    dec c
    rlca
    dec c
    ldh [$c0], a
    pop hl
    db $fc
    or c
    nop
    pop de
    ret nz

    ld bc, $c7ff
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    rrca
    dec bc
    xor [hl]
    inc bc
    inc bc
    db $fc
    or h
    nop
    rst $08
    ld b, b
    jr nz, jr_069_7be0

    nop
    rla

jr_069_7b95:
    ld b, l
    scf
    jr c, jr_069_7b95

    and l
    ld b, b
    cp $a1
    ld a, [$fc01]
    or c
    ldh [rP1], a
    rst $08
    rst $38
    ld [hl+], a
    dec a
    pop hl
    db $fc
    ld h, c
    ccf
    rst $00
    ld b, [hl]
    sbc h
    sbc l
    nop
    db $fc
    and e
    ld hl, sp+$2b
    nop
    db $d3
    ld c, l
    jp nz, $e5bf

    ccf
    ldh [$3d], a
    jp nz, $62f8

    db $10
    ld hl, sp+$2d
    nop
    call nc, $e24e
    inc a
    push hl
    ld b, d
    ldh a, [$e4]
    db $76
    ld hl, $2df8
    jr jr_069_7bd2

jr_069_7bd2:
    call nc, $e4fd
    jr c, jr_069_7c39

    inc a
    ld b, h
    cpl
    db $e3
    ld hl, sp+$32
    nop
    adc a
    ld [hl], h

jr_069_7be0:
    rst $38
    and e
    cp a
    and $3b
    cp $82
    ld b, l
    ld b, c
    ld b, l
    ld hl, sp+$33
    call z, $cf00
    cp [hl]
    and b
    sbc l
    sbc l
    cp l
    ld [c], a
    push bc
    ld h, c
    ld b, l
    ld b, e
    dec c
    ccf
    pop bc
    pop hl
    ld [hl], $a6
    cp b
    add c
    ld hl, sp+$30
    nop
    adc a
    sbc d
    add d
    jr c, jr_069_7c84

    and d
    inc c
    ld [c], a
    ld [hl], l
    jp $a762


    ld h, [hl]
    ld [hl], a
    add b
    ld a, b
    ld h, b
    ret nz

    nop
    db $db
    jr jr_069_7c7b

    sub [hl]
    ld b, c
    ld a, d
    ld b, b
    ld a, l
    db $e3
    pop bc
    push hl
    ld h, a
    and e
    ld bc, $bf68
    ldh [$f8], a
    ld [bc], a
    nop
    sbc b
    db $fc
    ld h, d
    inc d
    ld hl, $2110
    cp [hl]
    db $e3
    cp $38
    jp nz, Jump_069_6762

jr_069_7c39:
    dec [hl]
    dec [hl]
    ld l, h
    or a
    cp b
    add e
    sbc h
    sbc a
    nop
    db $db
    db $fc
    and e
    inc d
    ld hl, $4310
    or [hl]
    add c
    xor a
    cp $b8
    and b
    cp c
    cp d
    and e
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    pop bc
    ld [hl], $7e
    and c
    nop
    reti


    db $fc
    ld h, l
    ld hl, sp+$64
    ld [hl], l
    add h
    ld b, l
    ld [hl], $17
    ld l, [hl]
    ld l, a
    ld l, h
    pop bc
    pop hl
    ld b, l
    ld bc, $00c0
    jp c, $63fc

    inc bc
    and b
    and b
    ld hl, sp+$23
    ld a, [hl]
    push hl
    cp a
    ld [c], a
    pop bc

jr_069_7c7b:
    pop hl
    ld a, d
    ld b, h
    nop
    reti


    inc b
    ld hl, sp+$29
    ld a, [hl]

jr_069_7c84:
    db $e3
    sbc l
    inc [hl]
    ret nz

    ld a, [hl]
    ldh [$c1], a
    db $e3
    db $fc
    ld b, e
    nop
    sbc b
    nop
    ld hl, sp+$67
    db $fc
    push bc
    inc c
    ld h, b
    cp h
    pop hl
    cp c
    ldh [$fc], a
    ld hl, $dd00
    ld hl, sp+$27
    nop
    db $fc
    push bc
    adc d
    ld b, h
    add l
    ld b, d
    nop
    sbc a
    ld hl, sp+$27
    db $f4
    inc bc
    ld a, d
    add sp, -$7e
    db $e4
    nop
    nop
    adc l
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
    jr z, jr_069_7cf4

    ld [bc], a
    dec b
    inc h
    ld c, $02
    ld b, $26
    ld c, $02
    rlca
    jr jr_069_7d02

    ld [bc], a

jr_069_7cf4:
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

jr_069_7d02:
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
    jr jr_069_7d58

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
    jr nz, jr_069_7d6b

    ld [bc], a
    dec e
    rra
    dec h
    ld [bc], a
    ld e, $21
    dec h
    ld [bc], a
    rra
    jr nz, jr_069_7d79

    ld [bc], a
    jr nz, jr_069_7d78

    ld h, $02

jr_069_7d58:
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

jr_069_7d6b:
    ld [bc], a
    ld h, $18
    ld [hl-], a
    ld [bc], a
    daa
    jr z, jr_069_7da5

    ld [bc], a
    jr z, jr_069_7da1

    inc [hl]
    ld [bc], a

jr_069_7d78:
    add hl, hl

jr_069_7d79:
    inc e
    ld [hl], $02
    ld a, [hl+]
    jr nz, jr_069_7db8

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_069_7da1:
    rst $38
    rst $38
    rst $38
    rst $38

jr_069_7da5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_069_7db8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_069_7e25:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_069_7ee6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
