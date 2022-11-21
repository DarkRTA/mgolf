INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06b", ROMX[$4000], BANK[$6b]

    inc c
    ld b, b
    ld l, e
    ld c, d
    inc d
    ld d, l
    ld c, [hl]
    ld e, h
    add hl, de
    ld l, b
    ld a, l
    ld [hl], d
    inc d
    ld b, b
    dec d
    ld b, h
    ld sp, hl
    ld c, b
    jr jr_06b_405d

    ccf

jr_06b_4015:
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $e5
    rst $38

Jump_06b_4020:
    dec c
    dec c
    ld c, l
    ld c, l
    ld c, $0e
    ld c, l
    ld c, l
    ld bc, $e74d
    ldh [$fb], a
    db $e4
    reti


    ld [c], a
    ret c

    db $ed
    call nz, $c9e1
    pop hl
    jp $08e3


    or $e6
    jp nc, $cfe2

    db $e3
    ld c, l

Jump_06b_4040:
    cp $e0
    push af
    ld [c], a
    sbc c
    ldh [$b2], a
    pop hl
    ret nz

    ret c

    ld [$e7c4], a
    ld a, e
    db $ec
    jp $7ae4


    ldh [$fe], a
    pop hl
    dec l
    dec l
    jr nz, jr_06b_4015

    db $e3
    ld l, l
    ldh [rHDMA3], a

jr_06b_405d:
    pop af
    xor l
    rst $28
    ret nz

    db $e4
    ld l, l
    cp h
    ld [c], a
    ld a, e
    pop hl
    pop bc
    dec l
    or d
    db $e4
    add l
    rst $38
    ret nz

    db $e4
    inc d
    pop hl
    pop bc
    ldh [$2b], a
    dec bc
    ld a, a
    ld l, e
    dec hl
    ld a, [bc]
    ld a, [hl+]
    dec c
    dec c
    dec l
    add l
    or $fc
    nop
    db $f4
    add d
    db $e3
    ld a, [bc]
    ld a, [bc]
    ld l, d
    dec bc
    ld c, e
    ld c, d
    rra
    ld a, [hl+]
    ld c, d
    dec c
    dec l
    dec l
    sbc $c6
    nop
    rst $38
    adc $c1
    cp $43
    ld [c], a
    ld l, e
    ld c, d
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec bc
    dec hl
    jp $0a0a


    ret nz

    ld [c], a
    ld [hl], d
    ret nz

    nop
    rst $38
    ld [hl], l
    push bc
    dec c
    ld l, l
    cp a
    ld c, e

Jump_06b_40af:
    dec c
    ld c, e
    ld c, e
    dec hl
    dec bc
    rst $38
    ldh [rOCPD], a
    rlca
    ld c, e
    dec l
    dec c
    nop
    ldh [$b5], a
    jp nz, $ff00

    ld c, l
    pop bc
    xor $a1
    ei
    ld c, e

Jump_06b_40c7:
    ld c, e
    ld [$0ba0], a
    ld c, e
    ld c, e
    ld c, e
    ld l, e

Call_06b_40cf:
    adc e
    ld c, e
    ld l, e
    ld b, c
    ldh [$2d], a
    rst $38
    and h
    nop
    cp $c0
    push hl
    dec c
    ld e, [hl]
    ret nz

    ldh [$0b], a
    dec c
    ld c, e
    dec hl
    ld a, [hl-]
    ldh [$2d], a
    db $fd
    ldh [$a8], a
    nop
    rst $38
    add l
    and a
    res 4, c
    ld l, l
    ret nz

    ldh [$2b], a
    add d
    ldh [$2b], a
    add e
    dec c
    ld c, e
    add e
    ldh [rP1], a
    rst $38
    add l
    xor e
    ld d, [hl]
    and c
    ret nz

    ld [c], a
    dec hl
    add hl, bc
    dec bc
    inc h
    and b
    inc bc
    ret nz

    ld l, l
    ld [hl-], a
    and c
    cpl
    and b
    nop
    rst $38
    add l
    and l
    inc d
    ld b, [hl]
    ldh [$80], a
    ldh [$0b], a
    add b
    ldh [rOCPD], a
    or a
    and b
    call c, $2b82
    pop bc
    or b
    nop
    rst $38
    ld [$84a3], sp
    pop bc
    jp Jump_000_0bc0


    ld l, e
    ret nz

    pop hl
    ld l, l
    or b
    inc bc
    and d
    add c
    call nz, $db00
    ld c, [hl]
    and l
    ld c, e
    dec hl
    ld b, h
    ret nz

    ld a, [bc]
    add l
    ld c, e
    ld b, c
    ldh [rWX], a
    ret nz

    ret nz

    inc bc
    and [hl]
    nop
    rst $38
    call nz, Call_06b_4b84
    ld [hl], a
    ld l, e
    ld l, e
    dec bc
    ld b, d

jr_06b_4151:
    ret nz

    dec bc
    dec c
    ld l, e
    add b

jr_06b_4156:
    pop bc
    ld b, b
    ld b, [hl]
    add [hl]
    nop
    rst $38
    ret nz

    push hl
    ld a, [bc]
    ret nz

    ret nz

    ld [c], a
    cp d
    and b
    ld c, l
    inc bc
    ret nz

    db $10
    ld l, l
    add l
    nop
    rst $38
    ret nz

    push hl
    jp nz, $0ba0

    add c
    jp nz, $e03f

    ld [bc], a
    ret nz

    jr jr_06b_4151

    ld [hl], d
    nop
    sub e
    rst $08
    ld h, b
    ld c, l
    dec l
    adc b
    and b
    dec b
    and b
    rst $38
    ldh [rNR41], a
    ld a, h
    and b
    ld [bc], a
    jp nz, $9f00

    sbc l
    xor b
    call z, Call_06b_4b60
    add c
    and c
    ccf
    ret nz

    jr nz, jr_06b_4156

    and d
    ld [hl], c
    ld h, e
    nop
    cp a
    nop
    and l
    ld c, d
    ld h, b
    dec l
    add c
    and b
    cp e
    ret nz

    rrca
    ld a, [bc]
    dec hl
    dec c
    ld l, e
    rst $38
    ret nz

    ld l, [hl]
    ld h, l
    nop
    rst $38
    ret nz

    db $e3
    ld [bc], a
    jp Jump_000_2d40


    inc bc
    and b
    add b
    add b
    ret nz

    ldh [$bf], a
    ldh [$32], a
    ld h, e
    nop
    rst $38
    ld [$6a00], sp
    ld b, h
    ret nz

    add b
    add b
    dec bc
    inc [hl]
    ret nz

    ld a, l
    pop bc
    nop
    cp a
    ld a, e
    ld b, l
    nop
    ld d, d
    push hl
    inc b
    pop hl
    ld b, c
    and c
    cp a
    db $e3
    ld [hl], $44
    nop
    ld a, a
    ld a, a
    pop bc
    ld a, e
    and h
    inc b
    db $fd
    ld h, b
    ld a, $81
    ld l, e
    db $fd
    ld h, c
    nop
    rst $18
    nop
    ld c, b
    push bc
    ld hl, $60c1
    nop
    ld a, a
    ld h, c
    ld a, [hl]
    pop bc
    cp l
    ld h, b
    cp a
    ld [hl+], a
    nop
    rst $38
    nop
    ld h, d
    rst $38
    ld b, h
    cp a
    add c
    ld b, b
    cp [hl]
    pop bc
    cp d
    add b
    inc [hl]
    ld b, c
    cp e
    ld h, e
    nop
    rst $38
    jr c, jr_06b_4235

    ld l, l
    ld a, $82
    ld h, e
    dec bc
    ld a, [bc]
    cp a
    ld b, b
    inc a
    ld h, b
    ld a, $60
    ld c, $0e
    or a
    ld h, b
    cp b
    nop
    rst $38
    add e
    inc h
    pop bc
    ldh [$0a], a
    ld a, [bc]
    ld c, d
    ret nz

    ld b, c
    dec bc
    jp nz, $c07e

    ld c, e
    ld b, c
    ld [c], a

jr_06b_4235:
    ld [hl], a
    add d
    nop
    rst $18

jr_06b_4239:
    cp a
    add l
    ld a, [bc]
    ld a, [bc]
    add b
    ccf
    add b
    add b
    ld b, b
    cp [hl]
    ld b, c
    db $fd
    ld h, d
    add c
    ld [c], a
    nop
    rst $38
    nop
    ld b, e
    ld c, e
    ld [de], a
    pop bc
    ldh [$0a], a
    ld a, a
    ld b, b
    pop bc
    ldh [rWX], a
    ld [hl], $21
    add b
    pop hl
    nop
    rst $38
    inc b
    nop
    jp Jump_000_22bf


    ld l, e
    jp Jump_06b_4020


    ld b, c
    rst $30
    ld bc, $0342
    nop
    rst $38
    nop
    nop
    call nz, $a142
    rlca
    ld h, b
    dec a
    ld h, c
    rst $30
    inc b
    jr nc, jr_06b_427e

    nop
    rst $18
    inc a
    dec h
    nop

jr_06b_427e:
    ld bc, $fda0
    ld b, c
    jp nz, Jump_06b_4040

    ld b, b
    ret nz

    db $e3
    nop
    sbc a
    call nz, $bf04
    inc hl
    add b
    ld a, $62

jr_06b_4291:
    db $fd
    ld b, b
    ld b, d
    ld b, $00

Jump_06b_4296:
    cp a
    jp Jump_000_3ea6


    ld b, d
    ret nz

    db $e3
    dec bc
    nop

Jump_06b_429f:
    ld b, b

Jump_06b_42a0:
    add b
    rlca
    pop hl
    nop
    ccf
    add c
    ld b, l
    ld e, b
    add c
    jp nz, Jump_000_0281

    jp nz, $403c

    db $10
    cp $40
    add l
    sub $00
    pop de
    jr jr_06b_4239

    ld c, l
    jp z, $c080

    db $e4
    ei
    jr nz, jr_06b_42c0

jr_06b_42c0:
    nop
    ccf
    jr z, jr_06b_4291

    nop
    db $e3
    add c
    and e
    ld a, a
    nop
    ld [bc], a
    and b
    nop
    ld e, a
    ld a, e
    ld [$fdc0], sp
    ld h, b
    ret nz

    and $3f
    ld [bc], a
    add l
    rst $38
    nop
    adc b
    cp e
    ld [bc], a
    ld c, e
    dec c
    nop
    ccf
    ld [c], a

Jump_06b_42e2:
    add c
    pop hl
    ld b, d
    add d
    nop
    rst $38
    add c
    adc b
    cp [hl]
    and d
    ccf
    push hl
    cp [hl]
    and c
    nop
    nop
    rst $38
    ld [c], a
    ld h, l
    ld bc, $9282
    ld b, e
    ret nz

    push hl
    cp $04
    nop
    rst $18
    jr jr_06b_4345

jr_06b_4301:
    adc b
    cp d
    dec b
    ld a, [hl]
    pop bc
    cp l
    ld b, b
    ld c, e
    cp a
    and [hl]
    nop
    rst $38
    ret nz

    add l
    ld c, l
    nop
    adc h
    add b
    ld a, h
    ld bc, $c082
    add c
    add c
    nop
    cp a
    nop
    dec h
    jp $8cc3


Jump_06b_4320:
    add b

Jump_06b_4321:
    ld bc, $026b
    ld h, d
    ld [bc], a
    pop bc
    ret nz

    add l
    nop
    rst $38
    ccf
    rlca
    adc e
    ld b, b
    ld a, a
    and d
    nop
    ld b, d
    pop hl
    ret nz

    add [hl]
    nop
    rst $38
    jp $bd62


    ld h, d
    add $21
    cp a
    add d
    ret nz

    pop hl
    nop
    ld b, $e3

jr_06b_4345:
    nop
    rst $18
    add $a3
    add d
    ld b, d
    dec bc
    ld b, b
    dec b
    and c
    jp nz, $2ec1

    db $e3
    nop
    nop
    rst $38
    pop af
    inc h
    pop bc
    push hl
    rst $38
    add b
    inc a
    nop
    add d
    jp nz, $b5d8

    ld a, e
    ld c, $00
    add $a2
    jp $80c2


    ld [c], a
    ld b, b
    db $e3
    ret nz

    and $00
    rst $38
    ld [hl], l
    ld h, c
    ld b, l
    ret nz

    inc b
    ret


    ld h, b
    cp $e3
    dec bc
    ld a, e
    jr nz, jr_06b_4301

    inc bc
    nop
    rst $38
    nop
    rst $20
    add hl, bc
    ld [c], a
    ld [bc], a
    db $fc
    db $e4
    dec c
    ld [bc], a
    add b
    or b
    add d
    nop
    rst $38
    push bc
    ld b, e
    add h
    jp Jump_06b_63c3


    add b
    pop bc
    ld h, c
    ld a, a
    jp nz, $df00

    adc h
    inc b
    ld b, h
    call nz, $e5c1
    ld a, l
    ld b, b
    dec c
    db $10
    ccf
    ret nz

    nop
    rst $38
    ld b, h
    add hl, hl
    ret nz

    ld [$c00b], a
    db $e4
    nop
    rst $38
    ld a, e
    rst $20
    ld a, [de]
    add b
    ldh [$2b], a
    add $c0
    dec bc
    dec l
    ld a, a
    and l
    nop
    rst $18
    nop
    ld b, l
    nop
    sub [hl]

Jump_06b_43c5:
    inc hl
    inc b
    ld b, c
    rst $38
    push bc
    ld b, d
    ld [hl+], a
    ret nz

    jp nz, $ff7b

    ld a, e
    ld b, [hl]
    nop
    jp hl


    nop
    inc bc
    inc hl
    nop
    rst $38
    nop
    add $85
    ld h, c
    jp nz, Jump_06b_7f20

    ld b, b
    add h
    nop
    inc bc
    ld [hl+], a
    nop
    ret c

    ld d, h
    nop
    ld d, d
    ld [bc], a
    inc hl
    db $fd
    and l
    add l
    inc b
    nop
    rst $18
    nop
    ld b, a
    ld a, [hl]
    ld l, c
    nop
    ld b, [hl]
    ld bc, $64c3
    nop
    rst $38
    xor a
    ld b, $7b
    inc hl
    ld a, [hl-]
    ld [bc], a
    rst $20
    and [hl]
    nop
    rst $38
    nop
    cp c
    xor c
    dec a
    ld bc, $e7f8
    or h
    pop hl
    add l
    or $00
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    ld l, e
    db $e3
    db $e4
    or $e7
    and b
    rst $38
    ldh [$d8], a
    reti


    ld a, [$3be1]
    jp c, $f5db

    db $e4
    ret nc

    pop de
    and b
    ret c

    rst $28
    call nz, $ffe1
    push hl
    and $e7
    and b
    add sp, -$17
    ld [$63eb], a
    db $ec
    and b
    or $e7
    jp nc, $c6e1

    ldh [$f5], a
    or $b7
    pop hl
    ld b, $bb
    db $e3
    jp nc, $abd3

    ldh [$d8], a
    db $ed
    call nz, $ade1
    rst $28
    add d
    ldh [$ee], a
    jp nc, $9fe2

    and d
    sbc l
    rst $38
    ld [c], a
    and d
    sbc a
    and b
    ccf
    db $ed
    xor $d4
    push de
    rst $28
    and b
    add l
    db $ed
    ld c, c
    ld [c], a
    ld a, h
    xor l
    ldh a, [$d2]
    db $e3
    sbc a
    sbc h
    ld a, c
    ld a, d
    ld a, e
    rst $38
    ldh [rIE], a
    ld a, h
    ld a, l
    sbc h

Jump_06b_4481:
    sbc a

Call_06b_4482:
    ldh a, [$f1]
    ld a, [c]
    di
    sub c
    db $f4
    ld a, [hl+]
    ldh [rHDMA3], a
    ldh a, [rP1]
    rst $28
    and b
    jp nc, $c1e2

    ldh [$7e], a
    rst $38
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, l
    ld c, b
    ld c, b
    ld a, a
    ld a, l
    rrca
    sbc [hl]
    and b
    sub $d7
    ret c

    pop de
    nop
    or $43
    ldh [$c1], a
    ldh [rIE], a
    ld c, b
    ld c, c
    ld d, d
    ld b, l
    inc sp
    ld b, a
    ld h, b
    ld d, l
    add e
    add c
    sbc [hl]
    or d
    ret nz

    ret c

    pop de
    nop
    db $f4
    ret z

    ret nz

    add d
    ld [c], a
    ld b, a
    ccf
    ld d, a
    ld d, d
    ld a, [hl+]
    jr nz, jr_06b_44f1

    ld d, d
    ret nz

    pop hl
    ld a, b
    jp nz, Jump_000_00ec

    rst $38
    ld a, e
    jp nz, $d7d6

    inc b
    ldh [rDMA], a
    add b
    ld b, [hl]
    rst $38
    ld b, [hl]
    ld b, h
    dec hl
    inc l
    jr nz, jr_06b_44ff

    ld a, [hl+]
    ld b, e
    rst $00
    add e
    add h
    sbc [hl]
    db $76
    push bc
    nop
    rst $38

jr_06b_44e9:
    ld b, $c3
    and c
    ld b, [hl]
    rst $38
    ld b, [hl]
    add b
    or d

jr_06b_44f1:
    or d
    ld [hl], $21
    ld h, $2f
    ccf
    ld a, [hl+]
    ld b, l
    ld b, [hl]
    adc d
    add l
    sbc [hl]
    rst $28
    and b

jr_06b_44ff:
    nop
    rst $38
    db $ec
    or $a1
    call z, $9ea4
    or d
    ret nz

    ldh [$36], a
    cp e
    dec [hl]
    ld a, a
    inc a
    xor [hl]
    or d
    ld b, [hl]
    add e
    add h
    ld b, [hl]
    ret nz

    pop bc
    ldh a, [rP1]
    rst $38
    add l
    and h
    ld [bc], a
    ld [c], a
    ret nz

    ldh [rLCDC], a
    dec [hl]
    dec [hl]
    dec [hl]
    rst $38
    inc a
    xor a
    ld b, [hl]
    add e
    add [hl]
    add l
    or d
    and c
    ldh [$72], a
    and e
    nop
    rst $38
    add l
    and e
    add c
    ldh [$80], a
    ldh [$39], a
    dec [hl]

Call_06b_453a:
    dec [hl]
    rst $38
    ld l, h
    ld [hl], d
    adc b
    adc b
    add h
    add l
    or d

Jump_06b_4543:
    sbc h
    pop bc
    sbc a
    jr c, jr_06b_44e9

    add hl, hl
    and c
    nop
    rst $38
    ld d, a
    and d
    ld b, c
    ldh [rLYC], a
    add b
    rst $38
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld [hl], e
    ld l, [hl]
    or d
    ld b, [hl]
    ld b, [hl]
    ldh [$c1], a
    ldh [$03], a
    and b
    inc [hl]
    and c
    nop
    rst $38
    ld d, a
    and h
    sbc [hl]

jr_06b_4567:
    ld b, [hl]
    ld b, [hl]
    dec de
    add hl, sp
    ld l, c
    ld b, c
    ldh [rOCPS], a
    ld [hl], $c0
    ldh [$82], a
    ldh [$03], a
    and d
    ld hl, sp+$00
    cp a
    add l
    and l
    ret nz

    ldh [rLYC], a
    ld a, [hl-]
    ld l, e
    ld l, h
    rr e
    dec [hl]
    ld l, d
    jr c, jr_06b_4567

    ld b, [hl]
    sbc [hl]
    inc bc
    and e
    add l
    or b
    nop
    ld a, [c]
    db $ec
    ld d, l
    and b
    ret nz

    ld [c], a
    ld l, [hl]
    ld [hl], h
    add b
    ldh [$b2], a
    ld b, [hl]
    or d
    jp $9e46


    inc bc
    and d
    add l
    pop de
    nop
    db $d3
    ld bc, $39c3
    cp e
    nop
    ccf
    ldh [$80], a
    ld [c], a
    jp nz, Jump_000_36c0

    add c
    nop
    rst $18
    nop
    call nz, $c101
    jp z, Jump_000_3fc0

    cp e
    ld l, e
    ld l, h
    ld l, h
    ld l, l
    or d

Jump_06b_45c0:
    ccf
    ld [c], a
    ld l, l
    pop hl
    db $ec
    add l
    pop af
    nop
    sub h
    push af
    or $41
    and b
    ld b, l
    ld [hl], $6e
    rst $38
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    jr c, jr_06b_460d

    ld b, l
    ld b, [hl]
    ld b, [hl]
    ldh a, [rSC]
    jp nz, Jump_06b_6180

    nop
    rst $38
    nop
    xor b
    or d
    inc a
    cp e
    dec [hl]
    rlca
    dec [hl]
    rst $08
    rst $08
    ld a, [hl]
    ret nz

    jp nz, Jump_06b_7d82

    jp $ff00


    ld b, $64
    ei
    sbc a
    sbc h
    add c
    and b
    ld [hl], $3a
    adc $cb
    rst $08
    pop hl
    or d
    ccf
    pop bc
    add b
    ld h, e
    nop
    rst $38
    ld de, $d065
    pop de
    sbc a
    rst $38
    sbc h

jr_06b_460d:
    ld [hl], $3c
    xor [hl]
    ld a, $ce
    call z, $c0ce
    cp $a2
    add b
    ld h, h
    nop
    rst $38
    ld a, e
    ld b, b
    jp z, $d241

Call_06b_4620:
    ld b, b
    sbc [hl]
    or d
    rst $38
    ld a, [hl-]
    xor a
    add hl, sp
    rst $08
    call Call_06b_40cf
    ld b, [hl]
    ld hl, sp+$7d
    jp $bf00


    nop
    ld l, e
    and c
    or d
    ld a, [hl-]
    ld [hl], $b2
    rra
    ld [hl], $35
    ld [hl], $ae
    xor [hl]
    cp a
    db $e3
    ld a, h
    pop bc
    nop
    rst $38
    cp $00
    ld h, a
    sbc [hl]
    or d
    dec [hl]
    inc a
    or d
    or d
    inc a
    rla
    ld [hl], $af
    xor a
    ld a, a
    ldh [$b2], a
    ld a, $61
    nop
    rst $38
    nop
    ld l, b
    ld e, $fd
    ld h, b
    inc a
    dec [hl]
    ld [hl], $36
    ccf
    ldh [$fc], a
    add c
    ret nz

    ldh [$f0], a
    or [hl]
    ld hl, $ff00
    nop
    ld b, e
    db $fd
    ld h, e
    scf
    jr c, jr_06b_46a9

    rst $08
    rra
    call z, $cccc
    rst $08
    add hl, sp
    ld a, l
    add c
    or h
    ld hl, $ff00
    db $fc
    nop
    ld h, l
    rst $38
    ld b, c
    ld b, l
    or d
    ld b, b
    dec [hl]
    adc $cb
    rrca
    call z, $cecc
    add hl, sp
    cp l
    and c
    ld bc, $0082
    rst $38
    nop
    ld h, h
    ld a, $7f
    and c
    ld b, a
    ld c, h
    ld d, l
    inc a
    adc $80
    pop hl
    ld a, [hl]
    ret nz

    ldh a, [$3d]
    and e
    nop

jr_06b_46a9:
    rst $38
    nop
    ld h, [hl]
    add e
    ld b, b
    ld c, l
    ld h, c
    ld e, d
    dec [hl]

Jump_06b_46b2:
    ld c, $c0
    ldh [$cf], a
    ld [hl], $45
    db $fd
    ld h, c
    or c
    ld [bc], a
    nop
    rst $38
    nop
    ld b, h
    ld a, [hl]
    ret nz

    ld b, b
    ld d, c
    ld e, [hl]
    ld h, c
    ld d, l
    inc a
    call $c0c1
    ldh a, [$c1]
    ld [c], a
    ld [hl], a
    ld [bc], a
    nop
    rst $38
    ld a, e
    ld b, l
    and c
    or d
    or d
    ld b, l
    scf
    ld d, d
    ld d, d
    ld [hl], $be
    ld b, b
    ld [hl], $b2
    ld bc, $3f61
    ld h, h
    ld h, b
    nop
    rst $38
    ld a, e
    ld h, d
    ld b, d
    and c
    cp $40
    cp a
    ld b, b
    dec [hl]
    cp e
    pop bc
    ld [c], a
    add b
    ld b, d
    ld bc, $9f00
    or $a6
    sub h
    add b
    ld a, $81
    cp a
    ld b, b
    cp l
    and c
    and c
    or b
    ld b, d
    inc bc
    nop
    sbc a
    nop
    ld b, h
    cp l
    ld b, l
    ld b, h
    inc a
    rst $38
    jr nz, jr_06b_4746

    add c
    add hl, sp
    ld b, d
    ld b, b
    ld b, d
    dec b
    nop
    rst $38
    add l
    ld bc, $45bd
    ld b, c
    pop hl
    dec [hl]
    inc bc
    dec [hl]
    ld a, [hl-]
    pop bc
    jp $a202


    nop
    rst $38
    nop
    ld [hl+], a
    cp l
    ld b, e
    ld b, c
    ld [c], a
    inc c
    ld a, a
    pop hl
    ld a, $42
    ret c

    reti


    nop
    rst $38
    nop
    inc hl
    sub l
    ld bc, $60be
    ld b, b
    ret nz

    and $7f
    ldh [rSC], a
    and d
    nop

jr_06b_4746:
    rst $38
    nop
    and a
    cp [hl]
    nop
    and c
    ld b, b
    db $e4
    rlca
    dec [hl]
    inc a
    ld b, h
    add d
    add b
    db $ec
    nop
    nop
    ld e, a
    or $06
    ld d, h
    ld hl, $c082
    push bc
    dec [hl]
    add c
    and b
    ld b, d
    add b
    add l
    ld a, [c]
    nop
    sub l
    cp e
    ld bc, $639e
    ld b, [hl]
    or d
    rst $38
    jp nz, $e181

    ld [bc], a
    add b
    ret nc

    pop de
    nop
    rst $38

Jump_06b_4778:
    ld h, $7b
    ld [$d3d2], sp
    dec a
    nop
    ld a, a
    jp $bf42


    ld bc, $4081
    jr nz, jr_06b_4788

jr_06b_4788:
    rst $38
    nop
    call nz, $a4fe
    inc a
    nop
    rst $38
    and d
    ld b, b
    add e
    ld h, b
    cp $03
    ret nz

    nop
    rst $18
    or $a0
    ret nz

    add c
    ld b, b
    ld h, h
    ccf
    ld [c], a
    add d
    add b
    ld b, [hl]
    and c
    inc b
    cp a
    and l
    nop
    rst $38
    rst $18
    dec sp
    add d
    add b
    ld h, e
    ccf
    and c
    add d
    ret nz

    jp Jump_000_2044


    nop
    rst $38
    nop
    add l
    ld d, l
    ld hl, $207f
    ld a, a
    and e
    ld b, d
    ret nz

    ld [bc], a
    xor l
    jr nz, jr_06b_47d2

    nop
    rst $38
    nop
    and e
    sbc $df
    ld d, l
    ld hl, $00be
    ret nz

    add d

jr_06b_47d2:
    jp nz, Jump_000_01a0

    sbc [hl]
    pop af
    ld b, b
    xor h
    nop
    nop
    rst $18
    nop
    and e
    ld d, l
    inc hl
    ld a, $00
    ret nz

    add c
    add c
    dec sp
    inc b
    ld h, b
    inc bc
    ret nz

    add l
    ld [hl], h
    nop
    ld [hl-], a
    sub e
    add d

Jump_06b_47f0:
    ld b, c
    pop hl
    ld b, l
    ld a, [c]
    jp Jump_06b_4320


    add c
    nop
    jp $d0a0


    pop de
    sbc $df
    call z, $ff00
    nop
    ld h, d
    sub $d7
    ld b, e
    ld b, d
    call z, Call_06b_4620
    ld b, l
    ld bc, $433f
    nop
    add b
    ld [c], a
    add e
    ld bc, $ff00
    add l
    and d
    add e
    inc bc
    pop bc
    pop hl
    nop
    db $fc
    push hl
    ld [bc], a
    call nz, $ff00
    or $62
    add e
    ld b, b
    pop bc
    jp hl


    add d
    nop
    ld [bc], a
    jp RST_10


    rst $38
    nop
    ld b, h
    add e
    ld b, b
    add d
    jp hl


    or d
    add d
    ld b, b
    push bc
    ld b, d
    nop
    rst $38
    ld hl, sp-$0a
    ld bc, $c104
    add h
    ret nz

    ld b, [hl]
    ld b, l
    ld b, e
    ld b, c
    ld b, e
    ret nz

    db $fd
    ldh [rIE], a
    push bc
    jr z, jr_06b_48b0

    nop
    rst $38
    ld e, [hl]
    ld h, c

jr_06b_4854:
    inc b
    push bc
    ld [hl], $3b
    inc bc
    dec [hl]
    dec sp
    db $fd
    ldh [rSCX], a
    add c
    add e
    inc h
    nop
    cp $c7
    add l
    add e
    ld [hl+], a
    rla
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    ld b, d
    add c
    ld b, e
    jr nz, jr_06b_48a1

    jr nz, @-$06

    nop
    rst $38
    nop
    ld b, b
    push bc
    ld b, l
    ld b, [hl]
    ld b, d
    dec [hl]
    ld l, c
    and e
    rrca
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld b, d
    add b
    inc bc
    ld hl, HeaderNewLicenseeCode
    nop
    rst $38
    ld [bc], a
    nop
    call nz, $43a0
    jr nz, jr_06b_4854

    ldh [rSCX], a
    ld b, c
    ret nz

    ld [c], a
    ld b, h
    ld [bc], a
    and a
    add e
    ld a, [$bf00]
    db $e4

jr_06b_48a1:
    push bc
    ld b, c
    or d
    or d
    ld b, h
    inc a
    ld l, e
    dec b
    ld [hl], c
    rst $38
    ldh [$6d], a
    add d
    ld h, b
    inc bc

jr_06b_48b0:
    ld hl, $01eb
    nop
    rst $18
    nop
    rst $00
    ld bc, $c0b2
    rst $00
    inc bc
    ld [hl+], a
    adc [hl]
    nop
    nop
    rst $38
    nop
    ld [hl+], a
    ld b, e
    and b
    ld [bc], a
    ld [hl+], a
    and b
    ld b, b
    push bc
    inc bc
    inc h
    nop
    rst $18
    nop
    add a
    ld [bc], a
    ld hl, $ff9d
    push hl
    sbc a
    ld h, b
    ld [hl], b
    add e
    nop
    rst $18
    ld a, e
    dec b
    dec d
    ld h, h
    cp $e5
    sub $d7
    inc bc
    ld [hl+], a
    nop
    db $e3
    and b
    nop
    rst $38
    or $02
    call nc, $1004
    ld [hl+], a
    db $76
    add b
    or c
    add c
    nop
    sbc e
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
    and $ff
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ld bc, $1900
    ld [$0101], sp
    ld a, [de]
    ld [$0201], sp
    ld d, $09
    ld bc, $1903
    add hl, bc
    ld bc, $1b04
    add hl, bc
    ld bc, $1f05
    add hl, bc
    ld bc, $1606
    ld a, [bc]
    ld [bc], a
    rlca
    ld e, $0a
    ld bc, $2308
    ld a, [bc]
    ld bc, $1509
    dec bc
    ld bc, $160a
    dec bc
    ld bc, $220b
    dec bc
    ld bc, $150c
    inc c
    ld bc, $1e0d
    inc c
    ld bc, $210e
    inc c
    ld bc, $1e0f
    dec c
    ld bc, $1d10
    ld c, $01
    ld de, $0e1e
    ld bc, $1d12
    rrca
    ld bc, $1f13
    rrca
    ld bc, $1814
    db $10
    ld bc, $1d15
    db $10
    ld bc, $1e16
    db $10
    ld bc, $1717
    ld de, $1801
    jr @+$13

    ld bc, $1d19
    ld de, $1a01
    ld e, $11
    ld bc, $1f1b
    ld de, $1c01
    jr jr_06b_499f

    ld bc, $1a1d
    inc de
    ld bc, $201e
    inc de
    ld bc, $201f
    inc d
    ld bc, $2020
    dec d
    ld bc, $1921

jr_06b_499f:
    ld d, $02
    ld [hl+], a
    dec de
    ld d, $01
    inc hl
    add hl, de
    rla
    ld bc, $1c24
    rla
    ld bc, $1925
    jr @+$03

    ld h, $1c
    jr jr_06b_49b6

    daa

jr_06b_49b6:
    dec e
    jr jr_06b_49bb

    jr z, jr_06b_49db

jr_06b_49bb:
    jr @+$04

    add hl, hl
    ld hl, $0118
    ld a, [hl+]
    dec h
    jr jr_06b_49c6

    dec hl

jr_06b_49c6:
    add hl, de
    add hl, de
    ld bc, $222c
    add hl, de
    ld bc, $252d
    add hl, de
    ld bc, $192e
    ld a, [de]
    ld bc, $242f
    ld a, [de]
    ld bc, $1a30

jr_06b_49db:
    dec de
    ld bc, $1631
    ld e, $01
    ld [hl-], a
    ld d, $1f
    ld bc, $1733
    rra
    ld bc, $2034
    rra
    ld bc, $2135
    rra
    ld bc, $1736
    jr nz, jr_06b_49f6

    scf

jr_06b_49f6:
    ld e, $20
    ld bc, $1f38
    jr nz, jr_06b_49fe

    add hl, sp

jr_06b_49fe:
    jr nz, @+$22

Jump_06b_4a00:
    ld bc, $1f3a
    ld hl, $3b01
    jr nz, @+$23

    ld bc, $203c
    ld [hl+], a
    ld bc, $233d
    dec h
    ld bc, $233e
    ld h, $01
    ccf
    inc hl
    daa
    ld bc, $1940
    jr z, jr_06b_4a1e

    ld b, c

jr_06b_4a1e:
    ld [hl+], a
    jr z, jr_06b_4a22

    ld b, d

jr_06b_4a22:
    inc hl
    jr z, jr_06b_4a26

    ld b, e

jr_06b_4a26:
    add hl, de
    add hl, hl
    ld bc, $2244
    add hl, hl
    ld bc, $1945
    ld a, [hl+]
    ld bc, $1a46
    ld a, [hl+]
    ld bc, $2247
    ld a, [hl+]
    ld bc, $1948
    dec hl
    ld bc, $1a49
    dec hl
    ld bc, $194a
    inc l
    ld bc, $1e4b
    inc sp
    ld bc, $1f4c
    inc [hl]
    ld bc, $204d
    ld [hl], $01
    ld c, [hl]
    jr nz, @+$39

    ld bc, $134f
    add hl, sp
    ld bc, $1350
    ld a, [hl-]
    ld bc, $1451
    ld a, [hl-]
    ld bc, $1452
    dec sp
    ld bc, $1553
    inc a
    rst $38
    rst $38
    rst $38
    ld [hl], e
    ld c, d
    and [hl]
    ld c, [hl]
    xor [hl]
    ld d, e
    call $ff53
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, l
    ld c, l
    ld c, l
    inc b
    ld hl, sp-$20
    push af
    ldh [rKEY1], a
    push af
    ldh [$ee], a
    ld [c], a
    di
    pop hl
    ei
    pop hl
    cp $e2
    inc b
    or $fb
    jp z, Jump_06b_4de0

    ret nc

    ld [c], a
    or l
    pop hl
    or [hl]
    ldh [$b1], a
    ld [c], a
    or b
    ldh [rNR23], a
    xor a
    pop hl
    ld a, [$f6e4]
    ei
    ld c, $0e
    ret nz

    db $e3
    cp d
    ldh [rPCM12], a
    pop hl
    pop bc
    dec l
    or e
    db $e4
    add l
    rst $38
    ld [c], a
    push hl
    add b
    pop hl
    ld c, h
    pop hl
    ld c, l
    dec c
    ccf
    ld l, l
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld c, l
    dec l
    add e
    pop hl
    add l
    rst $38
    ld d, b
    ld [c], a
    push hl
    rst $00
    ld [c], a
    add h
    pop hl
    jp Jump_06b_6be0


    ret nz

    ldh [rWY], a
    ret nz

    pop hl
    ld hl, sp+$00
    rst $38
    nop
    db $eb
    inc a
    pop hl
    dec hl
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    rla
    dec hl
    ld a, [hl+]
    ld a, [bc]
    ccf
    ldh [$0d], a
    nop
    rst $38
    nop
    db $eb
    dec sp
    pop hl
    ei
    dec l
    dec hl
    ret nz

    ldh [rOCPD], a
    ld a, [hl+]
    ld c, e
    dec l
    dec l
    ldh a, [$ee]
    ret nz

    add l
    rst $38
    nop
    ld [$c2bc], a
    ld l, e
    dec bc
    dec bc
    ld c, e
    rst $20
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    rst $38
    nop
    db $f4
    dec hl
    ld c, e
    ld c, e
    add d
    ret nz

    ldh [rWX], a
    ret nz

    pop hl
    ld a, [$85a3]
    rst $38
    nop
    call nz, $a2cb
    dec bc
    rst $38
    ld l, e
    ld a, [bc]
    dec hl
    ld l, e
    ld l, e
    ld c, e
    dec c
    ld l, l
    ldh a, [rSC]
    jp nz, $ff85

    call c, $84e8
    and d
    dec l
    ld l, e
    ld l, e
    dec hl
    rlca
    ld l, e
    dec c
    ld l, e
    pop bc
    pop bc

jr_06b_4b39:
    xor e
    and d
    add l
    rst $38
    nop
    push bc
    ld d, c

jr_06b_4b40:
    and h
    ret nz

    ret nz

    db $e4
    cp a
    and e
    db $76
    and c
    ld a, e
    rst $38
    ld [hl+], a
    db $e3
    pop bc
    and e
    ld l, l
    dec hl
    pop bc
    dec bc
    add b
    pop hl
    ld a, a
    and c
    or e
    and d
    add l
    rst $38
    nop
    jp hl


    ld c, l
    dec c
    add c
    ld l, e

Call_06b_4b60:
    ret nz

    ld [c], a
    cp a
    pop hl
    rst $28
    add e
    ld a, [$00c7]
    sbc $c0
    db $e3
    ld c, e
    ld bc, $fe0a
    and b
    cp a
    db $e4
    ld a, h
    pop bc
    ld a, e
    rst $18
    ld [c], a
    db $e3
    ld c, e
    add d
    add b
    ldh [$82], a
    add c
    and c
    dec hl
    cp a
    db $e3

Jump_06b_4b83:
    inc a

Call_06b_4b84:
    jp nz, $bf7b

    nop
    and l
    add l
    add d
    dec l
    rst $38
    ld l, e
    ld c, e
    ld c, e
    ld l, e
    dec hl
    dec hl
    dec hl
    ld c, e
    rlca
    dec bc
    dec hl
    dec bc
    inc a
    db $e3
    jr c, jr_06b_4b40

    nop

Jump_06b_4b9e:
    rst $38
    rst $38
    add d
    add b
    and b
    ld c, $c0
    ldh [$0b], a
    ld c, e
    ld c, e
    cp c
    ret nz

    cp a
    ld [c], a
    ld a, e
    rst $18
    jr jr_06b_4b39

    ld [bc], a
    rst $38
    and d
    dec bc
    pop bc
    ret nz

    cp c
    pop bc
    ld hl, sp-$40
    ld a, d
    and d
    nop
    rst $38
    nop
    db $e3
    xor $dd
    db $e4
    ld c, l
    dec c
    dec l
    add b
    pop bc
    ld l, e
    ld c, e
    dec bc
    nop
    db $76
    add b
    ld a, [$7b84]
    rst $18
    nop
    push hl
    ld b, c
    ld h, d
    cp a
    pop hl
    ld bc, $fee0
    jp $ae60


    ld h, c
    ld a, e
    rst $38
    nop
    and d
    ld a, l
    and l

jr_06b_4be6:
    cp a
    pop hl
    ld l, e
    dec hl
    scf
    ret nz

    ld bc, $b92b
    add b
    cp $c2
    nop
    rst $38
    cp $44
    adc e
    ld b, h
    cp $80
    cp a

jr_06b_4bfb:
    ldh [$80], a
    cp c
    add c
    ld a, e

jr_06b_4c00:
    ld e, a
    nop
    rst $20
    adc l
    ld b, c
    call z, $fda3
    ret nz

    ld a, [$6ba0]
    and b
    nop
    ldh [$c0], a
    db $e3
    nop
    rst $38
    sbc l
    rst $20
    cp d
    add e
    dec c
    add b
    ret nz

    ld l, e
    ld bc, $f94b
    add h
    nop
    rst $38
    inc a
    ld b, l
    jr c, @+$45

    add hl, sp
    and c
    db $fc
    and b
    or [hl]
    ld h, b
    ret nz

    cp a
    call nz, $bf7b
    sbc l
    db $e4
    cp e

jr_06b_4c33:
    and e
    ld sp, hl
    add c
    ld a, e
    and c
    dec c
    dec c
    jr nz, jr_06b_4bfb

    call nz, $ff00
    sbc l
    add e
    ld a, e
    jr nz, jr_06b_4cbe

    add d
    ld l, l
    ret nz

    jr nz, jr_06b_4c00

    ld b, c
    ld bc, $7f0d
    pop hl
    nop
    cp a
    nop
    db $ec
    ld a, [hl-]
    add b
    cp e
    and b
    cp b
    add e
    ld a, l
    and h
    ld [$ff00], sp
    jr jr_06b_4be6

    pop bc
    jp nz, Jump_06b_7e4b

    ret nz

    cp l
    add b
    ccf
    ldh [$a6], a
    inc b
    nop
    nop
    rst $38
    jr jr_06b_4c33

    cp c
    ld hl, $e141
    ret nz

    ld [c], a
    db $fd
    add c
    ld h, a
    add e
    ld a, e
    db $dd
    ld [$a79d], sp
    cp a
    and l
    db $fd
    and c
    dec hl
    db $fd
    add b
    cp d
    ld h, d
    add hl, sp
    call nz, $fd00
    inc c
    add b
    ld bc, $a37f
    ld c, e
    dec bc
    db $fc
    add c
    ei
    ld h, c
    ld a, [hl-]
    ld h, e
    nop
    rst $38
    nop
    ld a, [$b904]
    ld b, d
    cp [hl]
    add c
    ld hl, sp+$00
    ld a, d
    ret nz

    rst $38
    ret nz

    ld [hl], $23
    nop
    rst $38
    nop
    adc [hl]
    ld b, h
    cp d
    ld h, d
    add d
    ldh [$c1], a
    pop bc
    db $fd
    add d
    xor [hl]
    and d
    nop
    rst $38
    sub a
    add d
    nop
    rst $38

jr_06b_4cbe:
    and h
    ld a, $83
    ld sp, hl
    ld h, c
    ld a, [hl]
    add d
    and h
    add e
    nop
    rst $38
    ld a, c
    dec h
    ld a, a
    add b
    nop
    add c
    and e
    ld a, [hl]
    add l
    nop
    rst $38
    jr jr_06b_4d1c

    call $c042
    ld [c], a
    rst $30
    ld b, b
    ld a, [hl]
    add l
    inc c
    nop
    rst $38
    sbc l
    xor d
    ld c, l
    dec l
    ld b, c
    ld h, b
    add hl, sp
    ld b, b
    add c
    jp nz, $2376

    nop
    or $5d
    sbc l
    rst $20
    rst $08
    add d
    ld hl, sp+$21
    ld a, b
    jr nz, @+$80

    ld h, c
    ld a, c
    ld [hl+], a
    ld [hl+], a
    ld bc, $00c8
    rst $38
    jr @-$59

    cp b
    ld hl, $770a
    ld b, b
    cp h
    add b
    ld c, l
    dec l
    ld d, c
    ld l, l
    cp a
    push bc
    nop
    rst $38
    or l
    ld b, $6d
    inc b
    pop hl
    dec bc
    or $20
    and b
    ei

jr_06b_4d1c:
    inc h
    db $fd
    db $e3
    sbc $64
    nop
    reti


    ld b, b
    adc e
    dec bc
    ld a, [hl-]
    add b
    ld c, e
    and b
    ld sp, $3d60
    db $e3
    sbc [hl]
    ld b, h
    nop
    jp c, Jump_06b_45c0

    dec l
    pop bc
    ld [c], a
    ld c, e
    ld h, b
    ld a, b
    ld b, b
    dec sp
    ret nz

    ld a, l
    and $ba
    jp $9f00


    ld l, e
    ld c, l
    ld bc, $00a1
    rst $38
    ld [c], a
    ld a, [$baa0]
    ld h, c
    ld a, a
    call nz, $ff00
    dec d
    ld [c], a
    ret


    ld b, b
    nop
    add c
    ld b, b
    cp [hl]
    db $e3
    cp a
    db $e3
    push af
    ld [bc], a
    db $10
    ld c, c
    nop
    ld [hl], e
    rst $38
    daa
    ld c, e
    rst $38
    ld h, e
    nop
    inc sp
    nop
    ld [hl], h
    ld [hl+], a
    ld [hl], e
    inc bc
    sbc l
    add d
    nop
    ei
    cp d
    inc bc
    ld [hl], a
    ld bc, $837c
    nop
    cp b
    jp nz, Jump_000_0273

    ld h, l
    add e
    or h
    and h
    nop
    sub a
    ccf
    add h
    ld a, $60
    dec sp
    add c
    nop
    ret nz

    db $e3
    di
    ld [bc], a
    ld [hl], a
    jp nz, Jump_06b_429f

    ld l, $03
    nop
    ld [hl], b
    ld d, [hl]
    ld h, d
    cp $c5
    jr jr_06b_4ddb

    ld [c], a
    pop bc
    db $e4
    or d
    ld bc, $2b2b
    ld h, [hl]
    jr nz, jr_06b_4dde

    and h
    nop
    cp c
    nop
    dec [hl]
    ld [hl+], a
    add [hl]
    ld hl, $e289
    rst $38
    and $72
    ld b, c
    ld sp, hl
    pop bc
    ld [hl], h
    and h
    inc d
    ld b, e
    nop
    nop
    or c
    push af
    inc bc
    dec a
    ld b, b
    ld a, l
    ld hl, $e7c0
    db $76
    push bc
    db $f4
    ld b, h
    and a
    ld h, $00
    nop
    xor [hl]
    call nc, $be63
    pop hl
    ld a, l
    nop
    cp l
    ld [$e4bf], a
    add hl, sp
    pop hl

jr_06b_4ddb:
    ld d, [hl]
    inc b
    adc b

jr_06b_4dde:
    nop
    sub b

Jump_06b_4de0:
    ld a, e
    ld h, c
    ld c, d
    inc bc
    dec c
    ld a, l
    ret nz

    dec [hl]
    jr nz, jr_06b_4e65

    push hl
    ld l, e
    nop
    ld [hl], b
    and b
    xor h
    ld h, b
    ld l, d
    ld b, c
    ld a, d
    ld [c], a
    nop
    sub a
    sbc e
    call nz, RST_38
    ld a, [hl-]
    pop bc
    inc c
    cp l
    db $e4
    ld [hl], e
    db $e3
    ld c, e
    ld c, e
    rst $28
    and d
    ld h, [hl]
    inc b
    ld h, a
    ld b, a
    sbc l
    ld l, h
    nop
    rst $30
    nop
    rst $10
    jp $e0bd


    ld a, [$f540]
    ret nz

    ld l, a
    inc bc
    pop bc
    ld [c], a
    cp a
    db $e3
    add b
    or b
    add d
    nop
    sub e
    db $10
    add l
    ld l, [hl]
    and h
    rst $30
    ret nz

    ld b, [hl]
    ld [c], a
    pop bc
    push hl
    dec l
    nop
    ld [hl-], a
    pop bc
    cpl
    xor b
    and a
    ld [hl], c
    ld d, e
    and h
    add [hl]
    ld b, c
    ld l, e
    nop
    ld a, d
    pop hl
    ld [hl], b
    and b
    nop
    add d
    db $e3
    ld l, c
    ld hl, $41e6
    db $ec
    ld h, l
    ld [hl+], a
    ld [de], a
    or a
    inc hl
    push bc
    ld h, e
    add sp, -$7d
    ld [$e136], sp
    add d
    ld [c], a
    ld h, l
    ld b, b
    dec hl
    daa
    ld b, c
    nop
    inc [hl]
    or $27
    ld e, c
    and d
    nop
    add d
    ld h, h
    ld h, l
    ld [hl+], a
    db $ed

jr_06b_4e65:
    and b
    add b
    db $e3
    xor b
    ld [hl+], a
    db $d3
    inc hl
    nop
    db $f4
    ld [hl], c
    inc h
    nop
    jp nz, $e943

    inc h
    ld l, a
    pop bc
    xor a
    and b
    pop bc
    db $e3
    db $ec
    ld a, [bc]
    and a
    ld d, e
    ld c, [hl]
    ld h, d
    nop
    ld c, c
    ld h, c
    xor c
    dec h
    and c
    add [hl]
    xor c
    inc h
    nop
    ld hl, sp+$71
    xor b
    ld b, b
    inc bc
    ld a, h
    and $00
    inc sp
    ld bc, $6417
    nop
    rst $30
    jr jr_06b_4f08

    and h
    ld b, a
    db $dd
    dec b
    sub d
    inc bc
    nop
    add d
    nop
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    and b
    and b
    and b
    rst $18
    ret nc

    pop de
    and b
    ret c

    reti


    ld hl, sp-$20
    and b
    and b
    di
    jp c, $efdb

    pop hl
    add sp, -$1e
    ldh [$e1], a
    ld [c], a
    db $e3
    db $dd
    db $e4
    or $fb
    push hl
    and $e7
    jp z, $d2e2

    db $d3
    add $c7
    ldh [$f5], a
    or $be
    ld [c], a
    cp c
    pop hl
    add sp, -$1f
    add sp, -$17
    rst $20
    ld [$eceb], a
    or $fc
    sbc l
    ld [c], a
    and b
    db $ed
    xor $f7
    call nc, $efd5
    ld a, d
    ldh [$9f], a
    sbc l
    sbc l
    sbc l
    sbc a
    sbc a
    push af
    or $d6
    rst $10
    add sp, -$1d
    ld a, e
    rst $38
    rst $18
    cp $9d
    ld [c], a
    and b
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    sbc a
    rst $38
    sbc l

jr_06b_4f08:
    and d
    sbc h
    ld c, b
    ld c, [hl]
    ld c, b
    sbc h
    sbc a
    ld [hl], b
    ld [hl], $e0
    add l
    rst $38
    ld h, a
    db $e4
    nop
    push hl
    push af
    or $9f
    jp Jump_000_3fe0


    ld b, h
    ld e, c
    ld d, h
    ld h, b

Call_06b_4f22:
    ld d, l
    sbc [hl]
    db $fd
    ret nz

    nop
    rst $38
    db $fc
    nop
    db $eb
    ld c, [hl]
    ldh [$9e], a
    ld b, h
    ld e, c
    dec hl
    inc l
    cpl
    rrca
    ld a, [hl+]
    ld d, [hl]
    ld d, l
    sbc [hl]
    ld sp, hl
    pop bc
    add l
    rst $38
    nop
    jp hl


    add h
    pop bc
    rst $38
    sbc a
    sbc h
    dec l
    jr nz, @+$22

    jr nz, jr_06b_4f72

    ld d, b
    jp $9e45


    or d
    pop hl
    add l
    rst $38
    nop
    jp hl


    ld c, [hl]
    pop hl
    and b
    sbc [hl]
    ld a, $c0
    ldh [$2e], a
    ld c, d
    ld e, l
    ld e, h
    and c
    nop
    rst $38
    nop
    di
    ccf
    add hl, sp
    ld hl, $2d26
    ld c, a
    ld d, [hl]
    add b
    ldh [rP1], a
    rst $38
    db $fc
    nop
    call $a0c1

jr_06b_4f72:
    sbc [hl]
    ld b, [hl]
    add hl, sp
    swap l
    ld a, $83
    ld b, l
    ld b, e
    add b
    ret nz

    or d
    and b
    add l
    rst $38
    nop
    ld [$a0c1], a
    sbc a
    ld a, a
    sbc h
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld a, $b2
    ld b, [hl]
    pop bc
    pop bc
    ld b, $b2
    and b
    and b
    and b
    nop
    rst $38
    nop
    push bc
    pop bc
    and e
    ld a, a
    ldh [$c0], a
    ld [c], a
    ld [hl], b
    or d
    and [hl]
    nop
    rst $38
    nop
    call nz, $a3c1
    sbc h
    ld b, l
    ld [hl], $80
    pop hl
    res 3, h
    sbc a
    or d
    and d
    and b
    nop
    rst $38
    nop
    res 4, c
    ld b, [hl]
    rra
    add hl, sp
    rst $08
    rst $08
    ld a, $b2
    cp a
    pop hl
    or c
    and c
    inc a
    ret nz

    db $fc
    nop
    rst $38
    nop
    ret


    sbc [hl]
    ld b, [hl]
    ld a, $cb
    adc $3a
    pop bc
    ld b, l
    cp a
    db $e4
    ld [hl], d
    add d
    nop
    rst $38
    nop
    ret z

    ret nz

    ldh [$ce], a
    call z, $cf1b
    ld [hl], $bf
    ld [c], a
    and d
    sbc a
    xor $a2
    nop
    rst $38
    nop
    set 7, a
    rst $08
    call Call_000_35cf
    jr c, jr_06b_5029

    ccf
    scf
    add e
    scf
    ld b, l
    dec sp
    pop bc
    add sp, $62
    nop
    rst $38
    nop
    add e
    rst $38
    add c
    ld b, l
    dec sp
    scf
    dec a
    jp Jump_000_38e0


    dec [hl]
    rst $08

jr_06b_500a:
    ld a, d
    ldh [$7a], a
    add b
    ldh a, [$3a]
    and b
    ld a, e
    rst $18
    sbc l
    push bc
    rst $38
    add d
    ld b, [hl]
    ld b, [hl]
    or d
    or d
    ld a, a
    or d
    ld b, b
    dec [hl]
    adc $cb
    rst $08
    add hl, sp
    add hl, sp
    ret nz

    db $e3
    ret c

    reti


    nop

jr_06b_5029:
    rst $38
    nop
    add e
    ld a, e
    ld h, b
    jp c, $d0db

    rst $28
    pop de
    sbc a
    sbc l
    sbc h
    cp a
    ldh [rLYC], a
    ld a, [hl-]
    rst $08
    rlca
    call z, Call_000_3acb
    ld a, [hl-]
    and d

jr_06b_5041:
    nop
    rst $38
    nop
    add l
    adc h
    and h
    ld a, l
    ldh [$2f], a
    or d
    or d
    ld a, $35
    cp b
    ret nz

    add hl, sp
    cp c
    ld h, b
    ld sp, $f061
    nop
    rst $38
    nop
    ld h, e
    ld a, $64
    cp a
    pop hl
    add hl, sp
    dec [hl]
    rst $08
    rlc e
    adc $3e
    ld a, b
    and b
    xor e
    ld b, c
    nop
    rst $38
    sbc l
    and e
    ld a, $62
    cp d
    and d
    jr jr_06b_50b2

    ldh [$be], a
    ret nz

    add b
    ldh [$f5], a
    or $ab
    ld b, b
    nop
    rst $38
    sbc l
    and d
    jr c, jr_06b_500a

    ld b, e
    cp e
    jp $e03f


    dec [hl]
    inc a
    ld b, h
    ld sp, hl
    add l
    nop
    rst $38
    ld a, b
    jr @-$57

    cp d
    ld h, d
    ret nz

    ldh [$cb], a
    rst $08
    dec [hl]
    ld b, b
    ld sp, hl
    add h
    ld hl, sp+$00
    rst $38
    jr jr_06b_5029

    rst $38
    jr nz, jr_06b_5041

    ld b, [hl]
    ld b, [hl]
    ld a, $cf
    rlca
    call Call_06b_453a
    ld sp, hl
    add c
    ldh a, [rNR43]
    nop
    rst $38
    sbc l

jr_06b_50b2:
    db $e3
    cp d
    ld b, e
    db $76
    ret nz

    pop hl
    add hl, sp
    dec [hl]
    ld hl, sp+$60
    or d
    ld b, [hl]
    and c
    xor c
    ld b, c
    ld hl, sp+$00
    rst $38
    sbc l
    add h
    nop
    and $83
    adc c
    adc b
    ld [hl], d
    ld l, h
    ldh [$b8], a
    add b
    ld a, b
    add c
    dec l
    jr nz, jr_06b_50d5

jr_06b_50d5:
    rst $38
    nop
    ld [$469e], a
    adc d
    sbc a
    add l
    ld b, b
    ld l, [hl]
    ld [hl], h
    dec [hl]
    cp b
    add b
    or [hl]
    ld h, b
    jp c, $dbf1

    nop
    rst $38
    jr jr_06b_5155

    pop bc
    pop bc
    add c
    ld b, [hl]
    ld b, b
    cp e
    rrca
    ld l, e
    ld l, h
    dec [hl]
    add hl, sp
    ld [hl], $63
    nop
    rst $38
    sbc l
    ld l, b
    ld a, d
    nop
    ccf
    sbc a
    sbc h
    adc h
    ld a, l
    ld b, d
    cp e
    ld a, a
    ldh [$be], a
    ret nz

    ldh [$be], a
    and b
    ld a, e
    sbc [hl]
    sbc l
    ld l, e
    ld a, d
    nop
    ld a, a
    ldh [rLYC], a
    ld a, [hl-]
    cp e
    inc bc
    ld l, c
    dec [hl]
    ld a, $e0
    ld a, [hl]
    and b
    ld a, h
    add h
    nop
    rst $38
    ld a, e
    ld hl, $027a
    dec b
    and c
    ccf
    ldh [$3e], a
    ret nz

    ldh [$7d], a
    and d
    xor [hl]
    pop bc
    nop
    rst $38
    jr jr_06b_5199

    cp $7a
    inc b
    sbc [hl]
    ld b, [hl]
    adc h
    ld a, l
    ld a, $62
    db $76
    rlca
    dec [hl]
    cp e
    cp e
    db $fd
    add c
    or [hl]
    jr nz, jr_06b_5149

jr_06b_5149:
    rst $38
    nop
    push bc
    bit 0, d
    ld a, [hl]
    ret nz

    and b
    adc [hl]
    ld h, h
    ld a, b
    dec [hl]

jr_06b_5155:
    rst $08
    cp e
    ld a, l
    add d
    ret nz

    nop
    rst $38
    nop
    ret


    cp c
    ld b, e
    ld a, $81
    pop bc
    ldh [rP1], a
    ld [c], a
    ret nc

    pop de
    ldh [$27], a
    pop hl
    nop
    rst $38
    jr jr_06b_51b2

    cp c
    ld b, e
    ld a, a
    add c
    cp e

jr_06b_5174:
    cp e
    ld a, [hl-]
    jr nc, jr_06b_5174

    ld b, b
    ld a, [hl]
    add d
    nop
    rst $38
    nop
    ret z

    push af
    or $c0
    add b
    ld b, b
    and b
    rra

jr_06b_5186:
    rst $08
    rst $08
    ld a, [hl-]
    ld b, l
    and c
    db $eb
    ld h, e
    nop
    rst $38
    sbc l
    xor b
    dec de
    sub $d7
    ld a, l
    ld h, b
    ld a, $cb
    cp a

jr_06b_5199:
    pop hl
    ld a, [hl]
    ld h, b
    ld [hl], a
    inc h
    jr jr_06b_51a0

jr_06b_51a0:
    rst $38
    jr jr_06b_5209

    cp b
    inc hl
    dec [hl]
    dec [hl]
    add c
    call nz, Call_000_2279
    nop
    rst $38
    ret z

    jr jr_06b_51d7

    cp b
    inc hl

jr_06b_51b2:
    add b
    ldh [$bb], a
    ld [hl], l
    jr nz, jr_06b_51ee

    ld bc, $d9d8
    nop
    and $a0
    nop
    rst $38
    nop
    add a
    cp l
    ld b, b
    ld b, b
    add b

jr_06b_51c6:
    db $fc
    jr nz, jr_06b_5186

    add b
    ld a, [hl]
    add b
    ret nz

    ld a, c
    jr nz, jr_06b_51c6

    ld a, [de]
    nop
    adc l
    ld b, b
    add h
    cp [hl]
    ret nz

jr_06b_51d7:
    rst $38
    and b
    ld b, [hl]
    sbc h
    and c
    sbc l
    ld a, [$f640]
    ld bc, $82f6
    nop
    sbc a
    reti


    ld a, d
    nop
    adc d
    add e
    add l
    add hl, sp
    ld b, b
    add b

jr_06b_51ee:
    cp a
    and c
    inc sp
    nop
    ld [hl], e
    ld bc, $e37d
    and b
    add b
    nop
    rst $38

jr_06b_51fa:
    ld bc, $01c3
    and c
    ld b, b
    add b
    cp h
    ret nz

    inc sp
    nop
    ld [hl], e
    ld b, $e3
    rst $20
    db $e4

jr_06b_5209:
    ret nc

    pop de
    nop
    rst $38
    ld b, b
    add e
    add hl, sp
    cp e
    ld l, [hl]
    ld sp, $bf6f
    pop hl
    inc sp
    ld bc, $0773
    jp nc, Jump_000_00d3

    db $fc
    ld a, h
    inc hl
    sbc $40
    add c
    ld [hl], $bb
    ld l, [hl]
    ld [hl], b
    db $fc
    pop bc
    jr c, jr_06b_5268

    rlca
    dec a
    scf
    ld b, e
    or [hl]
    ld b, d
    and b
    dec h
    nop
    ld a, d
    ld a, h
    ld [hl+], a
    cp a
    ld h, c
    jr jr_06b_51fa

    ldh [$bd], a
    ld h, c
    rst $38
    ld [c], a
    dec sp
    jr c, jr_06b_5275

    ld [bc], a
    ld h, h
    add d
    or e
    add c
    adc b
    nop
    sbc b
    sub c
    and e
    ld a, $63
    cp e
    cp l
    ld h, c
    cp $e4
    ld [hl-], a
    nop
    sbc l
    ld bc, $f19d
    ld [bc], a
    dec l
    inc bc
    nop
    sub l
    ld hl, sp+$01
    ccf
    and c
    ld a, a
    ld [c], a
    db $fd
    ld h, b
    add b

jr_06b_5268:
    cp a
    add sp, $77
    ret nz

    cp [hl]
    ldh [$b2], a
    and e
    ld a, [de]
    jr nz, jr_06b_5273

jr_06b_5273:
    or [hl]
    dec a

jr_06b_5275:
    ld b, e
    adc [hl]
    jp Jump_06b_7b7b


    db $fd
    ld h, b
    rst $38
    add sp, $72
    ld b, c
    dec [hl]
    call nz, $dfde
    ld hl, sp-$10
    and e
    nop
    or e
    sub [hl]
    jp nz, $9d9f

    sbc h
    ld b, l
    scf

jr_06b_5290:
    rla
    dec a
    jr c, jr_06b_52cf

    cp [hl]
    add sp, $39
    dec [hl]
    call nz, $012d
    ld [hl], e
    pop bc
    ldh a, [$66]
    ld bc, $b100
    ld a, e
    ld h, h
    cp [hl]
    ldh [rDMA], a
    ld b, l
    ld b, e
    scf
    inc [hl]
    cp l
    rst $20
    dec [hl]
    push bc
    sbc l
    rst $30
    call nz, $d3d2
    nop
    ld d, h
    db $d3
    and d
    call z, Call_000_00f9
    jr c, jr_06b_52bd

jr_06b_52bd:
    or d
    or d
    cp l
    pop hl
    ld a, d
    jp $443c


    ld e, $f0
    pop hl
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld b, c
    xor d
    add c
    ld d, a

jr_06b_52cf:
    jp nz, $9200

    sbc h
    ld a, e
    ld h, h
    inc a
    ldh [$9c], a
    ld b, [hl]
    ld b, [hl]
    cp l
    ld [c], a
    ld a, e
    ld [c], a
    dec sp
    inc e
    cp [hl]
    pop bc
    rst $28
    ldh [rLYC], a
    ld [hl], $a6
    xor d
    add c
    add sp, $63
    nop
    sub c
    db $e4
    or $85
    or a
    jr nz, jr_06b_5290

    inc a
    ldh [$cc], a
    ld [c], a
    ld b, e
    ld b, c
    ccf
    inc e
    cp e
    and b
    pop bc
    db $e3
    ld h, d
    and a
    ld h, [hl]
    ld l, c
    add d
    db $ec
    ld h, [hl]
    ld [hl+], a
    ld [hl], c
    ld b, $ee
    ld h, b
    jp nc, Jump_000_35d3

    add c
    ld [de], a
    ldh [$bb], a
    pop hl
    ld b, [hl]
    ld [c], a
    pop bc
    db $e3
    rla
    ld h, a

jr_06b_5319:
    and e
    ld l, b
    cp a
    ldh [$9e], a

jr_06b_531e:
    ld h, a
    rlca
    ld [hl+], a
    ld [hl], c
    ld d, e
    and h
    ldh a, [$85]
    ld h, e
    scf
    ld [c], a
    ld l, h
    ld b, b
    pop bc
    db $e3
    dec [hl]
    dec [hl]
    ld l, h
    or a
    add a
    cp b
    ld b, d
    sbc [hl]
    ld h, a
    rlca
    ld [hl+], a
    ld de, $a477
    ld [hl-], a
    nop
    sub $e7
    rst $10
    push af
    or $7a
    pop hl
    di
    pop bc
    ld b, l
    ld [hl], $b9
    ccf
    cp d
    and e
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    daa
    ld hl, $0667
    ret nz

    nop
    db $f4
    pop af
    add c
    add h
    jr nz, jr_06b_5319

    ld [c], a
    or d
    pop bc
    di
    ret nz

    ld b, l
    ld [hl], $60
    ld l, d
    add b
    pop bc
    ld [c], a
    daa
    ld b, c
    nop
    ld sp, hl
    ld [hl], c
    ld h, l
    push af
    or $bd
    ld [c], a
    dec bc
    push af
    or $d2
    and c
    sbc a
    cp a
    ld [c], a
    pop bc
    db $e3
    pop bc
    and c
    nop
    ld hl, sp+$00
    ld a, e
    jp hl


    dec b
    add h
    rst $20
    jr nz, @-$4c

    jp nz, $c1ae

    ld a, [hl+]
    jr nz, jr_06b_53e6

    nop
    nop
    ld hl, sp+$06
    db $ec
    ld c, b
    pop hl
    ld [c], a
    or d
    srl a
    and d
    jr jr_06b_531e

    nop
    rst $30
    sub e
    ld c, l
    nop
    or d
    add $0a
    ld [c], a
    push af
    ld b, b
    xor c
    inc h
    nop
    add d
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
    and $ff
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ld bc, $1000
    ld a, [bc]
    ld bc, $1001
    dec bc
    ld bc, $1002
    inc c
    ld bc, $1003
    dec c
    ld bc, $1104
    dec c
    ld bc, $1105
    ld c, $01

jr_06b_53e6:
    ld b, $12
    ld c, $01
    rlca
    ld [de], a
    rrca
    ld bc, $1308
    rrca
    ld bc, $0f09
    ld [de], a
    ld bc, $100a
    ld [de], a
    ld bc, $110b
    ld [de], a
    ld bc, $100c
    inc de
    ld bc, $110d
    inc de
    ld bc, $110e
    inc d
    ld bc, $120f
    inc d
    ld bc, $1210
    dec d
    ld bc, $1211
    ld d, $01
    ld [de], a
    inc de
    rla
    ld bc, $1313
    jr jr_06b_541f

    inc d

jr_06b_541f:
    jr jr_06b_543b

    ld bc, $1915
    ld a, [de]
    ld bc, $1916
    dec de
    ld bc, $1a17
    inc e
    ld bc, $1518
    dec e
    ld bc, $1a19
    dec e
    ld bc, $151a
    ld e, $01
    dec de

jr_06b_543b:
    ld d, $1f
    ld bc, $161c
    jr nz, jr_06b_5443

    dec e

jr_06b_5443:
    add hl, de
    ld hl, $1e01
    ld a, [de]
    ld hl, $1f01
    add hl, de
    ld [hl+], a
    ld bc, $1320
    inc hl
    ld bc, $1421
    inc hl
    ld bc, $1822
    inc hl
    ld bc, $1323
    inc h
    ld bc, $1724
    inc h
    ld bc, $1825
    inc h
    ld bc, $1326
    dec h
    ld bc, $1827
    daa
    ld bc, $1928
    daa
    ld bc, $1829
    jr z, jr_06b_5477

    ld a, [hl+]

jr_06b_5477:
    ld a, [de]
    ld a, [hl+]
    ld bc, $1a2b
    dec hl
    ld bc, $1d2c
    dec hl
    ld bc, $152d
    inc l
    ld bc, $1d2e
    inc l
    ld bc, $1e2f
    inc l
    ld bc, $1f30
    inc l
    ld bc, $1531
    dec l
    ld bc, $1e32
    dec l
    ld bc, $1f33
    dec l
    ld bc, $2034
    dec l
    ld bc, $1635
    ld l, $01
    ld [hl], $17
    cpl
    ld bc, $1837
    cpl
    ld bc, $1738
    jr nc, jr_06b_54b3

    add hl, sp

jr_06b_54b3:
    jr jr_06b_54e5

    ld bc, $193a
    jr nc, jr_06b_54bb

    dec sp

jr_06b_54bb:
    jr @+$33

    ld bc, $283c
    ld [hl-], a
    ld bc, $283d
    inc sp
    ld bc, $293e
    inc sp
    ld bc, $2a3f
    inc sp
    ld bc, $2940
    inc [hl]
    ld bc, $2a41
    inc [hl]
    ld bc, $2b42
    inc [hl]
    ld bc, $1a43
    dec [hl]
    ld bc, $1b44
    dec [hl]
    ld bc, $1c45
    dec [hl]

jr_06b_54e5:
    ld bc, $2a46
    dec [hl]
    ld bc, $2b47
    dec [hl]
    ld bc, $2c48
    dec [hl]
    ld bc, $1d49
    ld [hl], $01
    ld c, d
    ld e, $36
    ld bc, $1f4b
    ld [hl], $01
    ld c, h
    inc h
    jr c, jr_06b_5503

    ld c, l

jr_06b_5503:
    dec h
    jr c, jr_06b_5507

    ld c, [hl]

jr_06b_5507:
    ld h, $38
    ld bc, $274f
    add hl, sp
    ld bc, $2850
    add hl, sp
    rst $38
    rst $38
    rst $38
    inc e
    ld d, l
    push bc
    ld d, a
    inc d
    ld e, e
    inc sp
    ld e, e
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $ff
    nop
    db $ec
    rst $28
    db $dd
    pop hl
    rst $10
    db $e3
    or $ff
    or $f6
    sbc c
    rst $38
    or $f9
    sbc c
    rst $38
    nop
    add l
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    add l
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    sbc c
    rst $38
    add l
    rst $38
    ld [hl-], a
    or $f8
    ld c, l
    rst $38
    ldh [$b6], a
    pop hl
    ld c, l
    ld c, l
    nop
    rst $38
    adc a
    ld a, [c]
    db $10
    call c, $fce2
    push hl
    ld a, e
    rst $38
    ld a, [bc]
    and $0d
    add a
    ld [c], a
    add h
    pop hl
    ret nz

    pop hl
    ld [bc], a
    push af
    pop hl
    ld c, l
    or a
    ld [c], a
    nop
    rst $38
    ld c, b
    db $e4
    nop
    ld [c], a
    ret nz

    ld [c], a
    or a
    ret nz

    ldh [$3c], a
    ldh [$85], a
    rst $38
    adc a
    jp z, $e14a

    adc e
    ld [c], a
    dec l
    ld c, l
    dec l
    ret nz

    inc bc
    pop hl
    or b
    db $e3
    nop
    rst $38
    add l
    call nz, $e34a
    dec a
    ret nz

    ld l, l
    ld c, e
    add c
    dec bc
    push bc
    ret nz

    cp l
    ldh [rHDMA3], a
    ret c

    inc d
    rst $08
    ld c, e
    ld [c], a
    ld c, c
    ldh [rKEY1], a
    rla
    ld l, l
    dec c
    dec bc
    cp $e0
    dec c
    ld a, h
    db $e3
    nop
    rst $38
    ld a, [bc]
    rst $00
    inc l
    ret nz

    ret nz

    add h
    pop hl
    dec c
    dec hl
    or [hl]
    db $e4
    dec l
    add l
    rst $38
    adc a
    xor c
    ld [hl], $08
    ret nz

    dec c
    ld l, l
    ld a, d
    db $e4
    dec hl
    dec bc
    ld a, h
    ldh [$c0], a
    db $e4
    ld hl, sp+$00
    rst $38
    add l
    and l
    pop bc
    pop hl
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    dec bc
    ld l, e
    rlca
    dec hl
    dec bc
    dec hl
    ld a, $e0
    add b
    ldh [rP1], a
    rst $38
    nop
    rst $20
    ld bc, $bfa0

jr_06b_55f7:
    ld c, e
    dec c
    ld c, d
    ld c, d
    ld a, [hl+]
    ld a, [bc]
    jp Jump_000_0be0


    db $e3
    ld l, e
    ld c, e
    add b
    ldh [rP1], a
    rst $18
    jr z, jr_06b_55f7

    dec hl
    ld a, [bc]
    dec bc
    ld a, a
    dec bc
    dec bc
    dec hl
    ld l, e
    ld l, e
    ld c, e
    dec l
    add b
    ld [c], a
    ld hl, sp-$7b
    rst $38
    nop
    jp hl


    add b
    ld [c], a
    ld c, e
    ld l, e
    ld c, e
    ld l, e
    ld a, [bc]
    ccf
    ld a, [bc]
    dec l
    dec l
    dec l
    dec c
    ld l, l
    nop
    rst $38
    nop
    db $ec
    inc d
    ld b, b
    add b
    ld bc, $0ae0
    rst $38

jr_06b_5634:
    ldh [$0d], a
    pop bc
    ldh [rP1], a
    rst $18
    nop
    db $ed
    ld a, [bc]
    ld b, [hl]
    pop bc
    ld a, [bc]
    add d
    ldh [$2a], a
    ld b, d
    pop hl
    ld a, [hl]
    and c
    nop
    rst $38
    jr z, jr_06b_5634

    dec [hl]
    ld c, l
    dec bc
    ldh [$0d], a
    add l
    ret nz

    dec l
    dec c
    ld b, d
    ldh [$80], a
    and d
    nop
    add l
    rst $38
    nop
    jp z, $e3bf

    inc b
    ldh [$bd], a
    and b
    push af
    and b
    nop
    rst $38
    adc a
    ld l, b
    db $10
    call z, $ce61
    ld h, c
    ld b, $a0
    add h
    pop bc
    ld l, l
    ld b, e
    and e
    nop
    rst $38
    ld b, $a6
    ld [bc], a
    jp nz, Jump_06b_4b83

    call nz, $bda0
    add b
    ld [hl], e
    and c
    ld l, l
    add h
    nop
    rst $38
    ret nz

    and $0f
    dec c
    ld l, l
    dec hl
    dec hl
    rst $38
    add b
    inc b
    db $e4
    dec l
    add e
    nop
    rst $38
    inc c
    inc c
    ld h, d
    add c
    add h
    ld c, e
    ld c, e
    jp nz, Jump_06b_4481

    add h
    nop
    ld a, a
    adc a
    ld b, a
    ld b, $c0
    add e
    dec c
    dec hl
    rlca
    and c
    add $a1
    ld a, [c]
    ld b, a
    nop
    rst $38
    ld a, [bc]
    ld b, c
    inc e
    adc d

jr_06b_56b6:
    ld b, c
    add c
    add b
    ld c, e
    dec bc
    ld c, e
    ld [bc], a
    pop hl
    call nz, Call_000_0046
    rst $38
    nop
    ld l, h
    ld b, h
    ld c, l
    ld b, c
    add $60
    add [hl]
    add c
    adc b
    add d
    add l
    rst $38
    nop
    db $eb
    inc bc
    add e
    ld bc, $804b
    pop hl
    ret z

    add b
    nop
    rst $38
    adc a
    dec l
    call nz, Call_000_0864
    add [hl]
    ret c

    inc a
    nop
    inc d
    ld a, [hl+]
    add hl, bc
    ld b, d
    add b
    call nz, $c582
    nop
    rst $38
    adc a
    jr z, jr_06b_56b6

    ld bc, $c005
    nop
    ld c, b
    ld h, c
    inc bc
    ld h, b
    ld b, d
    ld b, b
    add l
    rst $38
    add l
    xor c
    ld b, d
    db $e3
    rst $00
    ld h, b
    db $fd
    pop hl
    add c
    dec hl
    add a
    ld h, d
    nop
    rst $38
    add l
    xor b
    ld b, d
    ld [c], a
    call $c040
    db $e3
    dec bc
    ret nc

    ret nz

    jr nz, jr_06b_5718

jr_06b_5718:
    rst $38
    nop
    db $eb
    sub l
    nop
    ld l, e
    adc l
    ld b, c
    dec bc
    dec l
    ld bc, $7f0b
    pop bc
    nop
    rst $38
    nop
    db $ec
    ld l, $20
    ret nz

    ldh [$3e], a
    db $e3
    ret nz

    db $e4
    ret nz

    add l
    rst $38
    add $8a
    ld b, b
    db $eb
    nop
    rst $38
    nop
    db $eb
    ld d, d
    jr nz, @+$0f

    ld c, e
    rlca
    ld l, e
    dec bc
    ld l, e
    db $fd
    pop hl
    ld b, b
    xor b
    ld a, e
    rst $38
    ld [$8525], sp
    ld h, e
    nop
    jp $03e1


    add d
    nop
    rst $38
    ld a, e
    ld h, $db
    ld [hl+], a
    ld b, h
    ld h, d
    adc b
    ld h, c
    ld b, $60
    nop
    adc b
    ld b, e
    add l
    rst $38
    nop
    jp z, $e3ff

    jp Jump_000_04e1


    ld [c], a
    ld h, h
    inc hl
    nop
    rst $38
    nop
    nop
    jp Jump_06b_4296


    inc a
    and c
    add $e9
    nop
    rst $38
    or $0a
    db $fc
    ld [$f585], a
    nop
    nop
    sbc b
    ret nz

    db $ec
    add l
    rst $38
    add l
    add hl, bc
    ld sp, hl
    push bc
    cpl
    and a
    ret c

    jr jr_06b_5792

jr_06b_5792:
    ld sp, $c100
    rst $20
    rst $00
    ld bc, $f685
    ld a, e
    ccf
    or $ff
    and e
    rst $38
    add l
    rst $38
    sbc c
    rst $38
    nop
    nop
    rst $38
    adc a
    rst $38
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    add l
    rst $38
    or $ff
    nop
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    add l
    cp $00
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    di
    db $e3
    db $e4
    or $ff
    db $ec
    pop af
    push hl
    and $e7
    and b
    ccf
    add sp, -$17
    ld [$eceb], a
    and b
    or $ff
    db $ec
    pop af
    nop
    sbc c
    rst $38
    or $fb
    sbc c
    rst $38
    or $fb
    sbc c
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    nop
    adc a
    rst $38
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    ret nc

    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    and b
    rst $38
    ldh [$d0], a
    pop de
    db $e3
    and b
    db $e4
    ld hl, sp-$20
    nop
    rst $38
    adc a
    ldh a, [$d6]
    rst $10
    and b
    rra
    and b
    jp nc, $a0d3

    and b
    ld hl, sp-$1f
    nop
    rst $38
    ld a, [bc]
    add sp, -$04
    add a
    pop hl
    jp $d8e0


    reti


    db $ed
    xor $d4
    push de
    add c
    rst $28
    ld hl, sp-$20
    db $76
    ldh [rP1], a
    rst $38
    ld a, [bc]
    rst $20
    ld c, d
    pop hl
    set 4, b
    jp c, $db3f

    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ld hl, sp-$20
    db $76
    ldh [$f8], a
    nop
    rst $38
    ld a, [bc]
    add sp, $4a
    ldh [$da], a
    db $db
    and b
    and b
    sbc a
    ld a, a
    and d
    sbc l
    sbc a
    and b
    and b
    push af
    or $7e
    pop hl
    ld hl, sp+$00
    rst $38
    adc a
    add $4a
    db $e3
    sbc $df
    sbc a
    sbc h
    ld b, [hl]
    scf
    ld b, [hl]
    sbc h
    sbc l
    cp l
    pop hl
    jp c, Jump_000_00db

    rst $38
    ld a, [bc]
    add $fd
    and b
    ld c, d
    ld [c], a
    sbc a
    sbc l
    sbc l
    sbc h
    or d
    ld b, [hl]
    add [hl]
    cp $e0
    or d
    sbc h
    ld a, h
    ld [c], a
    nop
    rst $38
    ld a, [bc]
    add $4f
    ldh [$a0], a
    db $fc
    add h
    pop hl
    pop bc
    ldh [$79], a
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    sbc h
    pop bc
    sbc a
    nop
    rst $38
    ld a, [bc]
    set 0, c
    ldh [$c6], a
    ldh [rIE], a
    ldh [$8f], a
    ld b, l
    sbc a
    ld b, l
    ld b, [hl]
    add c
    ld b, [hl]
    and c
    nop
    rst $38
    adc a
    xor c
    sub $fd
    rst $10
    pop bc
    ldh [$7e], a
    ld c, b
    ld c, [hl]
    ld c, b
    ld b, l
    ld b, [hl]
    ld a, a
    ld b, l
    ld [hl], $36
    ld b, l
    add c
    or d
    sbc [hl]
    nop
    rst $38
    cp $00
    jp hl


    ret c

    reti


    and c
    ld b, [hl]
    add b
    ld d, c
    ld e, [hl]
    cp a
    ld d, h
    ld e, c
    dec hl
    dec hl
    jr c, jr_06b_5915

    ret nz

    ldh [rDMA], a
    ld sp, hl
    sbc [hl]
    nop
    rst $18
    ld a, [bc]
    xor c
    jp c, $9edb

    or d
    add b
    rst $38
    ld b, l
    ld e, e
    ld a, [hl+]
    jr nz, jr_06b_5914

    daa
    scf
    ld b, c
    sbc a
    ld b, l
    add e
    add h
    or d
    sbc [hl]
    nop
    rst $38
    ld a, [bc]
    xor e
    sbc [hl]
    cp $80
    ldh [rRP], a
    ld a, [hl+]
    inc l
    inc l
    ld a, [hl+]
    ld b, a
    ld e, d
    sbc a
    add e
    add [hl]
    add l
    sbc h
    sbc a
    nop
    rst $38

jr_06b_5914:
    nop

jr_06b_5915:
    db $eb
    sbc [hl]
    rst $38
    or d
    add d
    add e
    ld d, d
    ld c, c
    ld b, e
    ld c, [hl]
    ld c, c
    rst $00
    ld h, b
    ld d, l
    adc d

Jump_06b_5924:
    pop bc
    ldh [rP1], a
    rst $18
    nop
    db $ec
    sbc [hl]
    ld b, [hl]
    rst $38
    add l
    add [hl]
    add e
    ld e, e
    ld b, l
    ld d, e
    ld e, c
    ld d, e
    ldh a, [rSCY]
    pop hl
    ld a, [hl]
    and c
    nop
    rst $38
    nop
    jp hl


    sbc a
    sbc h
    or d
    add l
    rst $38
    adc e
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    add e
    adc c
    add [hl]
    add l
    ld b, e
    or d
    and c
    ld a, [hl-]
    add d
    nop
    rst $38
    nop
    srl [hl]
    ldh [rDMA], a
    inc b
    ldh [$c1], a
    ld b, [hl]
    add c
    and d
    ld a, [hl-]
    add b
    nop
    rst $38
    adc a
    ld h, [hl]
    call z, $a060
    sbc [hl]
    rst $38
    or d
    add l
    add a
    adc b
    add a
    add l
    or d
    sbc h
    ret nz

    cp [hl]
    add b
    ld a, [hl-]
    add d
    nop
    rst $38
    ld a, [bc]
    ld h, d
    sub d
    add c
    call z, $a161
    or d
    nop
    ld b, c
    ldh [$83], a
    db $e3
    ldh a, [$83]
    nop
    rst $38
    ld a, [bc]
    ld h, c
    ld c, l
    ld h, b
    call z, $8562
    add c
    rlca
    ld b, [hl]
    ld b, [hl]
    xor [hl]
    call nz, $82c0
    ld h, d
    ld [hl], $60
    nop
    rst $38
    add l
    ld h, h
    jp c, $62cc

    sbc [hl]
    add c
    pop hl
    or d
    xor a
    ret nz

Call_06b_59a7:
    pop hl
    ret c

    reti


    inc c
    nop
    ld e, a
    adc a
    ld b, a
    sub $d7
    add d
    add c
    ld bc, $42e0
    pop hl
    ld b, l
    add b
    rrca
    sub $d7
    jp c, Jump_000_00db

    ld e, a
    inc d
    ld b, a
    inc d
    ld h, d
    add c
    pop bc
    add $02
    db $e4
    ret c

    reti


    nop
    ld e, a
    nop
    jp hl


    ld c, c
    ld h, b
    db $e3
    db $e4
    ld c, $c1
    db $e3
    ld b, [hl]
    ld b, [hl]
    and c
    add d
    pop hl

Jump_06b_59db:
    nop
    ld e, a
    add l
    ld c, l
    jp nz, Jump_06b_42a0

    add d
    jp $869e


    ld b, c
    nop
    ccf
    nop
    db $eb
    pop bc
    ld [c], a
    xor [hl]
    ld b, c
    ret nz

    pop bc
    or d
    ld [$fc81], sp
    ld hl, $ff00
    adc a
    daa
    inc d
    ld b, b
    and c
    or d
    add c
    or d
    add [hl]
    ret nz

    rlca
    ld h, b
    add d
    jp $ff00


    inc d
    daa
    sub d
    pop bc
    sbc a
    ld a, a
    sbc h
    ld b, l
    ld b, e
    or d
    or d
    ld b, e
    ld b, e
    ei
    ldh [$e0], a
    add [hl]
    add d
    nop
    rst $38
    add l
    and l
    add d
    ld [c], a
    push bc
    add b
    ld [hl], $3b
    dec [hl]
    dec c
    dec sp
    db $fd
    ldh [$36], a
    or d
    add a
    ld h, d
    nop
    rst $38
    add l
    and [hl]
    sla c
    cp a
    sbc [hl]
    or d

jr_06b_5a36:
    ld b, h
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    db $e3
    inc a
    ld b, h
    ld b, l
    add b
    nop
    rst $38
    add l
    ld l, l
    or d
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
    jr nz, jr_06b_5a59

    add b
    nop
    rst $38
    ld a, e
    add hl, bc

jr_06b_5a59:
    ld d, d
    nop
    ret nz

    ld [c], a
    dec [hl]
    rst $38
    ldh [$c0], a
    db $e3
    ld l, b
    nop
    rst $38
    nop
    jp hl


    ld d, d
    nop
    and c
    ld b, b
    ldh [rOCPD], a
    ld [hl], c
    rst $38
    ldh [rSB], a
    ld l, l
    ld b, b
    ldh [$c5], a
    ld h, b
    nop
    rst $38
    add l
    add [hl]
    add [hl]
    add h
    ret nz

    rst $00
    ld b, [hl]
    jr nz, jr_06b_5a81

jr_06b_5a81:
    nop
    rst $38
    add l
    and a
    ld d, d
    inc bc
    add d
    and c
    ld b, c
    ret nz

    ei
    and b
    rlca
    ld hl, $ff00
    jr jr_06b_5a36

    and $58
    nop
    inc d
    add b
    push af
    or $c6
    ld [bc], a
    add a
    ld h, b
    ld b, h
    nop
    nop
    nop
    cp a
    nop
    adc $01
    inc hl
    ld c, d
    ld [bc], a
    ldh a, [$e3]
    nop
    rst $38
    nop
    rst $00
    sub [hl]
    ld b, d
    inc c
    inc c
    ld [c], a
    ld hl, sp+$61
    ret nc

    pop de
    ldh a, [$a0]
    add l
    ld [hl], e
    nop
    or [hl]
    inc b
    ld h, c
    nop
    db $fc
    ld h, c
    ld hl, sp+$61
    ld hl, sp+$40
    add l
    push af
    nop
    sub h
    ld a, [hl]
    jp nz, $c10c

    ld [$00c0], sp
    ld [hl], d
    jp nz, $f585

    nop
    ld d, h
    ld a, [hl]
    jp nz, Jump_000_24ec

    ld [hl], d
    jp nz, $f585

    nop
    ld [hl], $00
    sub h
    ld b, c
    or $ed
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    nop
    ccf
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    sbc c
    rst $38
    nop
    rst $38
    nop
    sbc c
    rst $38
    nop
    rst $38
    adc a
    rst $38
    nop
    rst $38
    or $ff
    nop
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
    and $ff
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ld bc, $2100
    ld [de], a
    ld bc, $2301
    ld [de], a
    ld bc, $2502
    ld [de], a
    ld bc, $2603
    ld [de], a
    ld bc, $2004
    inc de
    ld bc, $2205
    inc de
    ld bc, $2806
    dec d
    ld bc, $1b07
    rla
    ld bc, $2808
    rla
    ld bc, $1b09
    add hl, de
    ld bc, $260a
    ld a, [de]
    ld bc, $1c0b
    dec de
    ld bc, $260c
    dec de
    ld bc, $1d0d
    inc e
    ld bc, $250e
    inc e
    ld bc, $1d0f
    dec e
    ld bc, $2310
    dec e
    ld bc, $1d11
    ld e, $01
    ld [de], a
    ld [hl+], a
    ld e, $01
    inc de
    ld [hl+], a
    rra
    ld bc, $1c14
    jr nz, jr_06b_5b89

    dec d

jr_06b_5b89:
    jr nz, jr_06b_5bab

    ld [bc], a
    ld d, $21
    jr nz, jr_06b_5b91

    rla

jr_06b_5b91:
    ld [hl+], a
    jr nz, @+$03

    jr jr_06b_5bb2

    ld hl, $1901
    jr nz, @+$23

    ld bc, $211a
    ld hl, $1b01
    inc e
    ld [hl+], a
    ld bc, $201c
    ld [hl+], a
    ld bc, $1b1d
    inc hl

jr_06b_5bab:
    ld bc, $1a1e
    inc h
    ld bc, $1b1f

jr_06b_5bb2:
    inc h
    ld bc, $2020
    inc h
    ld bc, $1921
    dec h
    ld bc, $1a22
    dec h
    ld bc, $1c23
    dec h
    ld bc, $1f24
    dec h
    ld bc, $2025
    dec h
    ld bc, $1826
    ld h, $01
    daa
    add hl, de
    ld h, $01
    jr z, @+$1c

    ld h, $02
    add hl, hl
    dec de
    ld h, $01
    ld a, [hl+]
    inc e
    ld h, $01
    dec hl
    ld e, $26
    ld bc, $1f2c
    ld h, $01
    dec l
    jr nz, @+$28

    ld bc, $1a2e
    daa
    ld bc, $1b2f
    daa
    ld bc, $1f30
    daa
    ld bc, $2031
    daa
    ld bc, $1732
    jr z, jr_06b_5c01

    inc sp

jr_06b_5c01:
    jr nz, jr_06b_5c2b

    ld bc, $1634
    add hl, hl
    ld bc, $2135
    add hl, hl
    ld bc, $1636
    ld a, [hl+]
    ld bc, $2137
    ld a, [hl+]
    ld bc, $1638
    dec hl
    ld bc, $2139
    dec hl
    ld bc, $163a
    inc l
    ld bc, $213b
    inc l
    ld bc, $173c
    dec l
    ld bc, $203d
    dec l

jr_06b_5c2b:
    ld bc, $183e
    ld l, $01
    ccf
    add hl, de
    ld l, $01
    ld b, b
    ld a, [de]
    ld l, $01
    ld b, c
    dec e
    ld l, $01
    ld b, d
    ld e, $2e
    ld bc, $1f43
    ld l, $01
    ld b, h
    dec de
    cpl
    ld bc, $1c45
    cpl
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    ld e, h
    add [hl]
    ld h, b
    rlca
    ld h, [hl]
    ld h, $66
    cp a
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    ld c, l
    rlca
    dec c
    dec c
    ld c, l
    rst $38
    ldh [$f0], a
    pop hl
    or $e0
    add sp, -$19
    or $fb
    add hl, bc
    ld c, $c1
    db $e3
    cp e
    ldh [rKEY1], a
    pop bc
    ldh [$c7], a
    ld [c], a
    ld a, [c]
    db $e4
    ld [c], a
    and $38
    or $fb
    sbc l
    and $c0
    pop hl
    ld c, l
    ld c, l
    dec l
    ld l, a
    ldh [rPCM34], a
    ld [c], a
    ld [hl], b
    add l
    db $e4
    or $e7
    ld [hl], c
    push af
    ld a, a
    db $e4
    ld c, l
    dec c
    ld l, l
    add $e2
    add c
    dec l
    dec a
    push hl
    jr z, @-$1b

    dec l
    ld [c], a
    ld a, e
    ld hl, sp-$6d
    pop hl
    dec c
    db $e3
    ld l, l
    inc sp
    dec c
    ld c, e
    rst $38
    ldh [rTMA], a
    ldh [$2d], a
    dec c
    add e
    ldh [$7f], a
    pop hl
    ldh [$f8], a
    db $e3
    ei
    db $e3
    ldh a, [$e2]
    nop
    ld a, [c]
    sub b
    and $2b
    ld c, e
    dec bc
    inc b
    db $fd
    ldh [$be], a
    ldh [$2d], a
    call nc, $c0e2
    db $e4
    and b
    push bc
    nop
    rst $30
    sub h
    pop bc
    ld d, $8e
    pop bc
    dec hl
    dec bc
    rst $38
    pop hl
    ld c, e
    inc a
    add sp, -$78
    ld [c], a
    or e
    push hl
    nop
    ld h, d
    ret nz

    nop
    di
    ld c, e
    jp nz, $e002

    ret nz

    db $e3
    ei
    call nz, $c2b9
    xor [hl]
    jp $f3a0


    pop hl
    or e
    db $e4
    nop
    di
    sub h
    ret nz

    rst $08
    ldh [rWX], a
    add c
    ld [c], a
    dec hl
    db $fc
    add b
    push bc
    cp b
    pop bc
    ld l, l
    ld c, e
    dec c
    dec bc
    dec c
    ld c, e

jr_06b_5d0c:
    ld b, b
    ld l, h
    call nz, $f700
    ret nz

    ld [$e040], a
    cp d
    ret nz

    cp [hl]
    and c
    ld c, l
    ld l, a
    jp nz, Jump_06b_6c70

    jp nz, $e443

    nop
    db $f4
    sub c
    jp nz, $0d2d

    ld l, e
    ld bc, $3ce2
    rst $38
    and $f7
    and d
    ld a, [bc]
    ld l, d
    dec bc
    ld a, [bc]
    dec hl
    jp nz, $c476

    ldh a, [rP1]
    or $0e
    ldh [$c0], a
    push bc
    cp a
    add sp, $0a
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    rra
    ld a, [bc]
    ld c, d
    dec c
    ld c, e
    ld l, l
    ld h, b
    and c
    nop
    or $ff
    add c
    adc [hl]
    adc b
    and b
    ld l, e
    dec bc
    ld c, e
    db $fd
    ldh [$ef], a
    add b
    ld a, a
    push hl
    ld c, e
    rst $38
    ld c, e
    ld a, [hl+]
    ld a, [bc]
    dec bc
    dec hl
    ld a, [hl+]
    ld a, [bc]
    dec c
    inc bc
    ld c, e
    dec l
    jr nz, jr_06b_5d0c

    dec hl
    jp $f100


    ccf
    db $e4
    ld c, d
    and $bb
    db $e3
    ld a, $b0
    and b
    dec hl
    ld l, e
    ld l, e
    dec hl
    ld a, [bc]
    ccf
    db $e3
    add sp, -$7c
    ret nz

    nop
    or e
    ld e, b
    and d
    dec b
    and e
    nop
    and d
    ld a, [$b781]
    pop bc
    ld a, [bc]
    ld a, [bc]
    ld b, b
    db $eb
    and b
    ld l, $e0
    add hl, hl
    and d
    nop
    cp b
    cp a
    add h
    call nz, $6d81
    ld d, e
    and d
    ld h, $b4
    db $e4
    ld a, [bc]
    ld c, d
    inc l
    and b
    db $ed
    and b
    ld c, e
    cp $c0
    nop
    sub $e0
    inc b
    add e
    sub c
    and l
    ldh a, [$c2]
    nop
    add c
    db $76
    add c
    ld a, [hl+]
    ld a, [bc]
    ld l, d
    dec de
    ld l, e
    ld l, e
    xor l
    and c
    ld c, e
    ld l, l
    nop
    or [hl]
    db $db
    ld h, h
    ld a, e
    add sp, $32
    ld b, [hl]
    and h
    dec l
    dec [hl]
    and b
    ccf
    ldh [rWX], a
    dec hl
    cp h
    and b
    ld h, e
    add b
    ret nz

    pop bc
    add $00
    sub b
    db $fd
    add h
    sbc h
    add e
    add $87
    rst $30
    pop bc
    ld l, e
    ld c, e
    ld bc, $ed6b
    add b
    jp hl


    ld h, b
    sub l
    ld h, h
    nop
    di
    ld b, l
    db $e3
    ld b, [hl]
    db $e4
    inc l
    jp $b402


    ld h, l
    ld l, e
    ld b, d
    ret nz

    xor a
    jp nz, Jump_06b_612a

    nop
    db $f4
    jr jr_06b_5e72

    ld b, $83
    ld e, $c8
    db $e4
    dec l
    dec l
    dec c
    ld l, l
    nop
    ld a, a
    jr jr_06b_5e7a

    cp d
    jp Jump_06b_7504


    ld h, b
    jr nc, jr_06b_5e78

    dec bc
    cp h
    add b
    jp nz, Jump_000_00c1

    ld a, l
    sub e
    ld c, l
    cp h
    ld h, e
    nop
    db $e3
    ld h, d
    inc l
    ret nz

    nop
    cp b
    and a
    ld d, [hl]
    ld hl, sp+$44
    rst $18
    ld h, e
    cp b
    ld h, l
    nop
    rst $38
    nop
    db $ec
    and l
    dec [hl]
    ld b, l
    ld [hl], b
    ld b, d
    add b
    and d
    db $d3
    ld h, h
    nop
    rst $38
    rst $00
    dec h
    ret


    ld h, h
    inc bc
    ld l, l
    ld c, e
    cp e
    ld h, b
    xor e
    ld b, c
    sbc b
    inc hl
    nop
    rst $38
    ld h, a
    ld h, a
    ld [hl], d
    ld [hl+], a
    add d
    dec hl
    ld h, b
    dec bc
    and $22
    ldh [$a5], a
    nop
    rst $38
    ld h, a
    ld h, l
    ld [$6da1], a
    ret nz

    ld h, [hl]
    ld b, b
    add hl, sp
    ld h, e
    ret c

    ld [hl+], a
    nop
    rst $38
    call nz, $ea26
    ld bc, $0b6d

jr_06b_5e72:
    add b
    ld h, a
    ld b, b
    inc a
    and c
    ld h, l

jr_06b_5e78:
    inc h
    nop

jr_06b_5e7a:
    rst $38
    ld l, l
    daa
    ld l, d
    ld hl, $202e
    dec hl
    pop bc
    dec bc
    cp e
    add b
    cp b
    ld b, d
    ld [hl], c
    cpl
    nop
    ld sp, hl
    ld l, e
    ld bc, $0d6b
    add c
    dec l
    rst $20
    ld [hl+], a
    xor c
    ld b, b
    ld a, [$0043]
    rst $38
    db $ec
    add [hl]
    ret nz

    db $e3
    dec hl
    inc bc
    dec hl
    ld a, [bc]
    jr z, jr_06b_5ee6

    ret nz

    push hl
    nop
    rst $38
    ld a, a
    inc b
    db $fd
    ld bc, $e041

jr_06b_5eae:
    nop
    jr z, jr_06b_5ed1

    and a
    ld [hl+], a
    add b
    db $e4
    nop
    rst $38
    ld b, a
    inc h
    ld l, e
    ld [bc], a
    ld b, c
    push hl
    jr c, jr_06b_5f20

    nop
    ld h, l
    ld [bc], a
    nop
    rst $38
    db $ec
    dec b
    ld l, e
    ld [bc], a
    add c
    ldh [rSTAT], a
    pop hl
    dec sp
    ldh [rP1], a
    pop hl
    nop

jr_06b_5ed1:
    dec d
    inc hl
    nop
    rst $38
    ld l, e
    ld b, $c2
    push bc
    cp e
    ld h, b
    ld a, d
    add e
    nop
    rst $18
    rrca
    and h
    ld [hl-], a
    cp a
    inc bc
    ld l, e
    add e

jr_06b_5ee6:
    and b
    jp nz, Jump_000_0bc0

    ld a, [bc]
    ld h, e
    jr nz, jr_06b_5eae

    and h
    nop
    nop
    rst $38
    ld b, a
    dec b
    call nz, $c0a0
    ldh [$29], a
    ld [hl+], a
    cp h
    and c
    add b
    and h
    nop
    rst $38
    inc b
    db $ec
    ld h, $81
    pop hl
    dec c
    ld a, a
    ld b, b
    nop
    ld [c], a
    add b
    pop hl
    xor l
    add l
    nop
    rst $18
    inc d
    sub [hl]
    add e
    ret nz

    pop hl
    dec c
    ld l, b
    inc bc
    dec hl
    cp [hl]
    add b
    cpl
    and e
    nop
    rst $38
    nop

jr_06b_5f20:
    nop
    call nz, $e141
    dec bc
    and b
    ld [bc], a
    jp $c280


    nop
    rst $18
    ld [hl], c
    ld b, [hl]
    jp nz, Jump_000_00c4

    ld b, d
    and b
    ld l, b
    ld bc, $c180
    ld b, b
    and h
    nop
    rst $38
    add e
    add h
    ld b, d
    jp nz, $80c3

    add b
    add c

jr_06b_5f43:
    and d
    ei
    jr nz, jr_06b_5f47

jr_06b_5f47:
    and e
    nop
    rst $38
    jr nc, jr_06b_5f6d

    rlca
    add d
    ld b, h
    and b
    dec l
    add d
    jp $0b83


    ld h, a
    ld bc, $21f8
    db $fc

jr_06b_5f5a:
    inc b
    nop
    db $fd
    rlca
    add e
    dec l
    nop
    rlca
    ld b, b
    pop bc
    db $e3
    ld b, e
    jp nz, $a440

    nop
    db $fd
    ld b, $a5

jr_06b_5f6d:
    pop bc
    pop hl
    jp nz, $80e5

    inc a
    nop
    ld a, [$3b21]
    ld b, d
    nop
    db $fd
    cp a
    inc b
    rlca
    add [hl]
    ld [bc], a
    db $e4
    dec c
    rlca
    dec bc
    dec l
    dec l
    nop
    ld e, a
    inc [hl]
    ld b, $47
    add d
    jp nz, $bee5

    ld bc, $ba00
    ld hl, $307b
    ld a, [bc]
    dec hl
    adc [hl]
    ld h, $c6
    add a
    add e
    db $e3
    ld a, e
    ld hl, $a503
    ld b, b
    nop
    call nc, Call_000_259f
    ld b, $a4
    ld b, a
    add c
    ld b, h
    and $01
    ld h, b
    ld l, l
    ccf
    dec b
    nop
    nop
    inc sp
    jr z, jr_06b_5f5a

    call z, $4d42
    ld b, b
    ld b, a
    add c
    rlca
    push bc
    cp l
    add b
    ld b, h
    pop bc
    jr nz, jr_06b_5f43

    db $e3
    nop
    di
    ret


    add $11
    ld b, b
    jp Jump_06b_6be0


    rst $00
    add d
    adc l
    and b
    inc b
    dec b
    ld [c], a
    pop af
    pop hl
    ld l, l
    ld b, e
    ld b, [hl]
    nop
    ret c

    ld d, b
    ld b, d
    ld d, [hl]
    add b
    adc a
    ld hl, $8600
    add c
    ret


    and b
    or $e3
    ccf
    ld [bc], a
    inc bc
    push bc
    nop
    or [hl]
    ld d, l
    ld [bc], a
    db $d3
    ld [hl+], a
    nop
    ld d, b
    ld b, d
    cp $e6
    add h
    ldh [$75], a
    inc h
    nop
    rst $30
    ld c, $85
    db $d3
    ld b, l
    cp a
    add sp, $00
    ld b, l
    ldh [$2e], a
    and h
    nop
    call c, $c104
    sub $21
    ld a, [hl]
    db $e3
    ld b, a
    push hl
    cp e
    dec b
    nop
    add l
    xor a
    nop
    xor l
    ret nz

    db $e4
    ld d, c
    ld b, e
    ld b, d
    add e
    ret


    pop bc
    ld e, b
    ld h, $59
    ld [hl], c
    nop
    nop
    ld [$4062], a
    call nc, Call_06b_4f22
    nop
    dec c
    jr nz, jr_06b_6078

    db $e3
    dec bc
    ld h, h
    add l
    ldh a, [rNR10]
    nop
    xor $05
    pop bc
    ld e, b

Jump_06b_603c:
    ld b, b
    ld d, e
    ld h, c
    dec hl
    add a
    ld b, b
    add h
    db $e4
    ld l, c
    jp Jump_06b_5924


    rla
    ld a, [bc]
    adc e
    dec l
    cp a
    pop hl
    pop bc
    pop hl
    ld l, l
    pop bc
    ld [bc], a
    adc a
    ld h, e
    inc b
    ld a, [bc]
    adc [hl]
    nop
    sub [hl]
    dec c
    cp a
    ld [c], a
    pop bc
    pop hl
    inc l
    xor b
    ld e, c
    add hl, de
    nop
    jp z, $8700

    inc h
    dec c
    jp nz, $86ec

    sbc $53
    nop
    di
    add [hl]
    ld h, h
    ld b, d
    dec h
    adc a
    or c
    ld h, b

Jump_06b_6077:
    nop

jr_06b_6078:
    sbc c
    ld c, $e4
    ret nc

    jp $223a


    add l
    ld a, [$0e0d]
    nop
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    xor a
    db $e3
    db $e4
    sub $d7
    or $e0
    and b
    rst $38
    ld [c], a
    jp nc, $d3e1

    ld hl, sp-$1f
    add sp, -$1c
    sbc $e7
    or $f1
    push hl
    and $e7
    rst $38
    and b
    add sp, -$17
    ld [$eceb], a
    and b
    ret c

    db $fd
    reti


    jp $f5e1


    or $a0
    db $ed
    xor $d4
    rra
    push de
    rst $28
    db $e3
    db $e4
    and b
    add sp, -$1c
    sbc $e7
    or $f1
    cp [hl]
    sbc l
    rst $20
    jp c, $a0db

    sbc a
    sbc l
    rst $38
    ldh [$9f], a
    rra
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ld [hl], a
    ldh [$85], a
    db $e4
    or $e7
    db $fc
    ld [hl], c
    pop af
    sbc l
    push hl
    ret nc

    pop de
    and b
    and b
    sbc a
    sbc h
    ld l, l
    or d
    rst $38
    ldh [$9c], a
    sbc a
    ld a, d
    pop hl
    sub $d7
    inc sp
    ldh [$80], a
    ld h, e
    ldh [$2a], a
    ldh [$2c], a
    pop hl
    ld a, e
    or $9d
    push hl
    dec c
    ldh [$c1], a
    ldh [rDMA], a
    ld c, $ff
    ldh [$b2], a
    sbc h
    and d
    cp [hl]
    ldh [$32], a
    pop hl
    xor h
    pop hl
    ld a, [hl+]
    ld [c], a
    db $f4
    cp e
    db $e4
    nop
    push af
    and b
    dec c
    db $e3
    and c
    or d
    ld b, l
    ccf
    ld l, a
    scf
    scf
    ccf
    ld b, l
    cp [hl]
    ldh [$9f], a
    and b
    ld [hl-], a
    ldh [$fc], a

Jump_06b_612a:
    cp c
    jp nz, $e02a

    push af
    or $d8
    reti


    db $e3
    db $e4
    db $f4
    ld e, a
    ldh [rP1], a
    or $a0
    dec c
    ld [c], a
    sbc [hl]
    or d
    ld b, b
    dec [hl]
    ld b, $ff
    ldh [rLCDC], a
    ld b, [hl]
    inc a
    db $e3
    cp c
    jp nz, $c370

    or e
    db $e3
    ld h, d
    pop bc
    add sp, $00
    di
    adc b
    jp nz, $e002

    add hl, sp
    ret nz

    pop hl
    add hl, sp
    or d
    xor [hl]
    add b
    ei
    jp nz, $c2b9

    xor [hl]
    jp nz, $e030

    or e
    rst $20
    nop
    di
    inc bc
    ret nz

    sbc [hl]
    ld [hl], a
    or d
    ld b, [hl]
    ld a, $80
    pop hl
    ld a, $b2
    xor a
    cp d
    pop bc
    inc l
    ld [hl], a
    ret nz

    xor [hl]
    pop bc
    ld b, [hl]
    or d
    cp $e0

Jump_06b_6180:
    sbc h
    ld l, h
    jp $f700


    ldh [$03], a
    pop bc
    ret nz

    and $40
    ldh [$ba], a
    ret nz

    ld [hl], a
    ret nz

    and d
    sbc l
    sbc h
    rst $38
    or d
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    ld a, h
    ld a, l
    sbc h
    ld bc, $e89f
    and b
    nop
    ld hl, sp-$2f
    pop bc
    ld b, b
    and $7b
    pop bc
    db $fc
    ld [c], a
    ld [hl-], a
    ret nz

    ld a, a
    ld a, c
    ld a, [hl]
    ld c, b
    ld d, e
    ld b, l
    ld d, b
    ld a, a
    cp a
    ldh [$e0], a
    ld a, e
    jp $f800


    ccf
    ldh [$c0], a
    push bc
    cp [hl]
    push hl
    ld a, c
    ld a, d
    adc a
    rst $38
    ld c, d
    ld h, b
    ld d, h
    ld d, c
    ld e, a
    ld d, l
    add c
    ld b, [hl]
    add c
    sbc [hl]

jr_06b_61cf:
    ld h, b
    and h
    nop
    db $d3
    ld [bc], a
    and d
    ld b, b
    push bc
    cp e
    and b
    ld a, l
    db $e4
    add b
    rst $38
    ld b, [hl]
    ld b, [hl]
    ld d, l
    ld d, [hl]
    ld a, [hl+]
    ld a, [hl+]
    ld d, [hl]
    ld e, d
    rlca
    add c
    ld b, [hl]
    and c
    ld l, $c1
    xor e
    and c
    nop
    di
    ld [bc], a
    and c
    ret nz

    and l
    db $f4
    ld a, e
    and c
    inc a
    ret nz

    xor [hl]
    ret nz

    ld [c], a
    ld b, h
    ld b, e
    ld l, $30
    rlca
    ld c, a
    ld d, l
    add c
    ld l, d
    and c
    ld hl, sp-$5f
    nop
    or [hl]
    ret nc

    and c
    ld b, b
    and e
    ld a, [$c185]
    sbc l
    add $c0
    xor a
    or d
    ld b, [hl]
    add d
    add e
    rst $38
    ld b, [hl]
    ld c, d
    ld e, d
    ld l, $20
    dec l
    ld b, l
    add c
    jr nc, jr_06b_61cf

    and d
    xor e
    and b
    nop
    or [hl]
    ld a, [hl-]
    add b
    ret nc

    pop de
    ret nz

    add d
    ld c, b
    pop bc
    cp $f4
    add h
    add l
    add [hl]
    add e
    ld c, a
    ld d, [hl]
    ld a, [hl+]
    ld h, $04
    ret nz

    ldh [rNR52], a
    and b
    sbc [hl]
    inc h
    add e
    nop
    or c
    nop
    add b
    ld a, [bc]
    add [hl]
    dec a
    add d
    db $fc
    or d
    add b
    ld [hl], h
    add b
    sbc h
    or d
    add l
    adc e
    ld d, l
    ld h, c
    ld a, a
    ld d, d
    add hl, sp
    inc a
    ld b, h
    adc h
    ld a, l
    or d
    cp [hl]
    ret nz

    ret nz

    sbc h
    add b
    nop
    sub a
    ld a, [bc]
    add d
    adc b
    add c
    cp a
    ld h, a
    jp nz, $82a0

    add e
    rra
    ld d, e
    ld e, c
    ld b, h
    inc a
    ld [hl], $3f
    ldh [rBCPD], a
    add b
    xor c
    ld h, c
    sbc b
    nop
    sub l
    db $fd
    add e
    adc b
    add c
    sbc $df
    ld b, $a3
    ld l, [hl]
    jp nz, $df85

    add a
    adc c
    add e
    ld b, l
    ld [hl], $c0
    ldh [$b2], a
    sbc [hl]
    add b
    xor c
    ld h, h
    nop
    push af
    rst $38
    db $e4
    adc b
    add c
    cp a
    ld h, e
    ld l, [hl]
    jp $c1fc


    ld b, l
    rra
    ld b, l
    add e
    add h
    or d
    and c
    xor c
    ld h, h
    nop
    db $f4
    jr @+$70

    db $fc
    ld l, [hl]

jr_06b_62b0:
    jp $c077


    add l
    add a
    adc b
    adc b
    add a
    add l
    rrca
    sbc h
    sbc a
    sub $d7
    nop
    ld a, e
    jr jr_06b_632d

    rst $30
    ld b, c
    add h
    ld h, d
    ldh [$aa], a
    ld h, c
    cp [hl]
    add c
    ldh [rLCDC], a
    nop
    ld a, e
    sub e
    ld c, a
    ret c

    reti


    push af
    ld bc, $2bf6
    call nz, $c203
    nop
    or [hl]
    sbc l
    ld d, h
    ld a, h
    ld h, l
    ld a, [hl+]
    push bc
    jr c, jr_06b_6346

    jr jr_06b_62e6

jr_06b_62e6:
    rst $38
    ld c, $46
    jr z, jr_06b_634f

    sub $d7
    and e
    ld h, b
    pop af
    ld h, d
    ld h, e
    pop bc
    sub b

jr_06b_62f4:
    ld [hl], c
    ld c, h
    ld [hl+], a
    ld e, e
    dec [hl]
    ld b, d
    push hl
    add d
    ld b, [hl]
    rst $38
    and c
    dec e
    ld b, b
    ret nc

    ld b, c
    pop de
    and $21
    nop
    rst $38
    inc b
    ld b, l
    ld l, d
    jr nz, jr_06b_62f4

    jr nz, jr_06b_62b0

    xor h
    ld h, c
    ldh [$27], a
    ld b, c
    ld h, l
    ld [hl+], a
    nop
    rst $38
    db $ec
    and a
    ld l, d
    ld hl, $9d9f
    sbc h
    add c
    ld b, l
    add hl, hl
    add b
    add hl, sp
    ld h, b
    xor h
    ld b, h
    nop
    rst $38
    db $ec
    inc b
    ld h, a
    ld h, h

jr_06b_632d:
    ld b, [hl]
    rrca
    ld b, l
    ld [hl], $35
    ld [hl], $bf
    ldh [$bc], a
    and h
    nop
    rst $38
    db $ec
    dec b
    cp $f1
    ld bc, $9c9f

Jump_06b_6340:
    add e
    adc c
    adc b
    ld [hl], d
    ld l, h
    add e

jr_06b_6346:
    inc a
    ld b, h
    cp b
    ld b, c
    ld sp, hl
    ld b, c
    ld [hl], c
    ld a, [hl+]
    nop

jr_06b_634f:
    db $fc
    ld l, c
    ld h, c
    ld b, [hl]
    rra
    adc d
    add l
    add hl, sp
    ld l, [hl]
    ld [hl], h
    jr z, jr_06b_639b

    ld a, h
    add c
    jr nc, jr_06b_6380

    ld hl, sp+$00
    rst $38
    db $ec
    add [hl]
    ld l, b
    ld b, c
    ld b, [hl]
    add c
    ld b, l
    ld a, [hl-]
    rlc c
    ld l, c
    jr z, jr_06b_63af

    inc a
    add c
    ld e, d
    ld [bc], a
    nop
    rst $38
    adc c
    inc b
    add hl, sp
    jr nz, jr_06b_63bb

    ldh [$7f], a
    add h
    ld b, h
    inc a
    dec [hl]

jr_06b_6380:
    ld l, c
    dec [hl]
    ld a, [hl-]
    cp [hl]
    ret nz

    and c
    sbc [hl]
    jr z, jr_06b_63ab

    nop
    rst $38
    ld [hl], c
    add h
    ld l, e
    ld bc, $419e
    pop hl
    dec [hl]
    rrca
    ld h, d
    db $76
    rst $08
    rst $08
    daa
    ld b, b
    ld a, h

jr_06b_639b:
    ld h, b
    cp $c2
    nop
    rst $38
    reti


    db $e4
    cp a
    add c
    ld l, e
    ld [bc], a
    add e
    add h
    ld b, c
    ld [c], a
    cp e

jr_06b_63ab:
    adc $01
    ld a, $7c

jr_06b_63af:
    ld h, c
    ld [hl-], a
    and c
    nop
    rst $38
    db $ec

jr_06b_63b5:
    ld [bc], a
    ld b, e
    and d
    add c
    db $e3
    ld b, c

jr_06b_63bb:
    ldh [$c0], a
    add b
    pop hl
    xor c
    nop
    ld l, l
    pop hl

Jump_06b_63c3:
    nop
    rst $38
    nop
    ld [c], a
    cp a
    ld [bc], a
    and c
    ld b, [hl]
    rst $38
    add c
    or d
    ld a, $cb
    ld h, d
    db $76
    dec [hl]
    res 0, e
    inc a
    ld b, h
    ei
    jr nz, jr_06b_63b5

    ld b, d
    nop
    rst $38
    ld [hl], c
    ld h, [hl]
    cp a
    nop
    add c
    ld b, $69
    nop
    ld l, c
    dec [hl]
    add b
    ld [c], a
    inc a
    ld h, e
    nop
    rst $38
    db $ec
    and h
    ld l, e
    ld bc, $463f
    or d
    adc h
    ld a, l
    ld b, l
    ld a, [hl-]
    ret nz

    ldh [rP1], a
    ldh [$c3], a
    ld b, [hl]
    sbc [hl]
    db $db
    ld b, e
    nop
    rst $38
    db $ec
    and e
    inc bc
    jp nz, $b2b2

    inc b
    ccf
    ldh [$80], a
    ldh [$ce], a
    ret nz

    ldh [$bc], a
    ld hl, $8181
    nop
    rst $38
    nop
    jp nz, Jump_000_03f6

    pop bc
    ld b, [hl]
    or d
    call nz, Call_000_3e40
    ld l, e
    ld l, h
    dec [hl]
    inc bc
    adc $bb
    add b
    jp nz, $612c

    nop
    rst $38
    db $ec
    ld [bc], a
    ld l, l
    ld bc, $8048
    rrca
    adc d
    add l
    ld b, l
    ld a, [hl-]
    ld b, c
    and b
    nop
    call nz, Call_000_037a
    nop
    rst $38
    ld [bc], a
    ld l, a
    ld bc, $08a0
    add c
    ld b, l

jr_06b_6447:
    ld b, b

jr_06b_6448:
    add c
    and d
    ld a, a
    add d
    add b
    and e
    nop
    rst $38
    ret c

    add l
    add b
    rlca
    add d
    add l
    add b
    add a
    add l
    ld b, e
    add b
    dec [hl]
    ld l, e
    pop bc
    ld l, h
    ld b, c
    and b
    ccf
    add b
    add b
    add e
    nop
    rst $38
    rlca
    add h
    add e
    add [hl]
    ei
    add l
    or d
    pop bc
    pop hl
    dec [hl]
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    adc c
    pop bc
    add e
    add b
    and d
    and $80
    nop
    db $fd
    ld b, $a4
    pop bc
    ld [c], a
    ld b, l
    scf
    add hl, sp
    jr c, jr_06b_6447

    ldh [$be], a
    ldh [$39], a
    add l
    adc e
    ld a, a
    ld h, b
    pop hl
    inc bc
    ld b, b
    nop
    db $fc
    ld b, $a3
    rlca
    add d
    add e
    ld [c], a
    cp a
    pop hl
    add c
    ld h, b
    add b
    ld b, c
    add d
    ldh [rP1], a
    ld e, [hl]
    adc $40
    ld c, c
    ld b, d
    add $82
    pop bc
    db $e4
    jr c, jr_06b_64e4

    ld b, l
    rlca
    or d
    ld a, c
    adc l
    ld a, [hl]
    ld b, d
    nop
    ld e, e
    call Call_06b_7463
    ld [bc], a
    add $84
    ld a, [hl]
    add e
    db $e3
    ld a, c
    ld a, d
    ld a, e
    adc a
    sbc h
    sbc a
    jr nc, jr_06b_6448

    ld b, b
    nop
    jr c, @+$11

    add e
    ld e, b
    ld [hl+], a
    add h
    jp nz, $8047

    pop bc
    push hl
    ld a, [hl]
    nop
    ld b, d
    ret c

    ld [hl], e
    jr nz, jr_06b_64db

jr_06b_64db:
    scf
    ld e, b

jr_06b_64dd:
    ld hl, $d3d2
    rlca
    add e
    sbc a
    and d

jr_06b_64e4:
    ld h, e
    sbc l
    sbc h
    add hl, bc
    ld h, b
    adc b
    ld h, b
    pop bc
    and $46
    and c
    ld b, e
    ld b, e
    ld b, b
    nop
    dec [hl]
    rrca
    add l
    ld c, e

Jump_06b_64f7:
    inc bc
    ret nc

    ldh [$08], a
    and b
    ld c, c

jr_06b_64fd:
    ld b, b
    dec sp
    dec b
    pop hl
    adc l
    add b
    pop bc
    ldh [$9c], a
    sbc a
    ld b, e
    ld b, e
    nop
    jr c, jr_06b_652e

    ld b, e
    sbc a
    rst $20
    sbc h
    ld b, l
    ld b, c
    db $d3
    jr nz, jr_06b_64dd

    add c
    or d
    ld b, l
    ccf
    rlca
    ld b, e
    ld b, l
    ld b, [hl]
    add $c1
    ld a, [hl]
    ld bc, $2075
    dec hl
    nop
    nop
    ld hl, sp-$04
    adc a
    ld b, b
    sub $00
    sbc h
    ld b, l

jr_06b_652e:
    ld [hl], $62
    ld [hl], $45

Jump_06b_6532:
    ld c, $4f
    ldh [$8c], a
    ld a, l
    or d
    rst $38
    ldh [$c6], a
    jp Jump_000_2575


    nop
    ld hl, sp+$58
    adc a
    ld bc, $810e
    pop bc
    ldh [$a7], a
    ld h, [hl]

Jump_06b_6549:
    cp a
    ld [c], a
    ld a, a
    cp a
    ldh [$83], a
    ld a, c
    ld a, [hl]
    add h
    ld [c], a
    ld hl, sp+$04
    add l
    adc d
    nop
    sub b
    ld [de], a
    jr nz, jr_06b_64fd

    rst $18
    ld [hl], $62
    ld h, a
    and e
    ld l, b
    cp a
    ld [c], a
    or d
    adc [hl]
    add hl, de
    ld a, e
    add h
    db $e3
    ld a, b
    ld b, b
    ret c

    reti


    add l
    ld l, $00
    ld l, a
    ld e, a
    ld bc, $9e3f
    xor b
    xor c
    ld l, h
    dec [hl]
    dec [hl]
    cp a
    pop hl
    adc l
    ld bc, $848c
    ldh [$72], a
    and e
    jp c, Jump_06b_59db

    inc sp
    nop
    ld a, [hl+]
    inc h
    ld b, c
    sbc [hl]
    rst $38
    ld [hl], $6e
    ld l, a
    ld l, h
    dec [hl]
    and e
    xor d
    cp e
    inc c
    db $fc
    ret nz

    ld c, [hl]
    ld bc, $d7d6
    dec bc
    ld h, l
    ld e, c
    ld [hl-], a
    nop
    db $eb
    ret


    ld b, b
    ld a, h
    nop
    ldh [$bf], a
    ldh [$6c], a
    ld l, a
    ld l, [hl]
    ld [hl], $9c

Call_06b_65af:
    ld [$8fe0], sp
    push af
    or $d8
    reti


    adc e
    inc bc
    ld e, c
    inc d
    nop
    inc l
    ret nc

    dec c
    pop de
    add b
    pop bc
    ld l, [hl]
    ld l, a
    pop bc
    pop hl
    jp z, Jump_06b_72c7

    ld b, e
    ld e, c
    ld [de], a
    jr nz, jr_06b_65d7

    adc h
    adc [hl]
    ld [hl+], a
    ld a, [hl]
    ldh [$c1], a
    pop hl
    jp z, $a0c2

jr_06b_65d7:
    adc a
    xor l
    nop
    reti


    nop
    ld hl, $8043
    and b
    cp $e0
    ld [de], a
    and d
    db $f4
    add c
    ld h, e
    dec d
    nop
    ld d, b
    ld hl, $0043
    call c, $d563
    inc hl
    sub d
    ld h, b
    sbc $39
    nop
    ld c, [hl]
    ld c, h
    ld bc, $6006
    cp [hl]
    ld h, b
    nop
    jp z, $85c4

    ld hl, sp+$00
    ld b, d
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
    and $ff
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ld bc, $0e00
    inc bc
    ld bc, $0f01
    inc bc
    ld bc, $1002
    inc bc
    ld bc, $1103
    inc bc
    ld bc, $0d04
    inc b
    ld bc, $1205
    inc b
    ld bc, $0c06
    dec b
    ld bc, $1407
    dec b
    ld bc, $0c08
    ld b, $01
    add hl, bc
    inc d
    ld b, $01
    ld a, [bc]
    dec d
    ld b, $01
    dec bc
    inc c
    rlca
    ld bc, $130c
    rlca
    ld bc, $150d
    rlca
    ld bc, $160e
    rlca
    ld bc, $0b0f
    ld [$1001], sp
    inc de
    ld [$1102], sp
    inc d
    ld [$1201], sp
    dec d
    ld [$1301], sp
    ld d, $08
    ld bc, $1714
    ld [$1501], sp
    ld hl, $0108
    ld d, $23
    ld [$1701], sp
    dec bc
    add hl, bc
    ld bc, $1418
    add hl, bc
    ld bc, $1519
    add hl, bc
    ld bc, $181a
    add hl, bc
    ld bc, $191b
    add hl, bc
    ld bc, $1a1c
    add hl, bc
    ld bc, $1f1d
    add hl, bc
    ld bc, $0c1e
    ld a, [bc]
    ld bc, $1c1f
    ld a, [bc]
    ld bc, $1d20
    ld a, [bc]
    ld bc, $1e21
    ld a, [bc]
    ld bc, $0c22
    dec bc
    ld bc, $1423
    dec bc
    ld bc, $0c24
    inc c
    ld bc, $1325
    inc c
    ld bc, $1426
    inc c
    ld bc, $1527
    inc c
    ld bc, $0d28
    dec c
    ld bc, $1229
    dec c
    ld bc, $132a
    dec c
    ld bc, $142b
    dec c
    ld bc, $152c
    dec c
    ld bc, $162d
    dec c
    ld bc, $182e
    dec c
    ld bc, $192f
    dec c
    ld bc, $2730
    dec c
    ld bc, $0e31
    ld c, $01
    ld [hl-], a
    rrca
    ld c, $01
    inc sp
    db $10
    ld c, $01
    inc [hl]
    ld de, $010e
    dec [hl]
    ld [de], a
    ld c, $01
    ld [hl], $19
    ld c, $02
    scf
    ld a, [de]
    ld c, $01
    jr c, @+$1d

    ld c, $01
    add hl, sp
    jr z, @+$10

    ld bc, $1a3a
    rrca
    ld bc, $1b3b
    rrca
    ld bc, $1c3c
    rrca
    ld bc, $273d
    rrca
    ld bc, $1d3e
    db $10
    ld bc, $283f
    db $10
    ld bc, $1e40
    ld [de], a
    ld bc, $2841
    ld [de], a
    ld bc, $1f42
    inc de
    ld bc, $2043
    inc de
    ld bc, $2844
    inc de
    ld bc, $2345
    dec d
    ld bc, $2546
    dec d
    ld bc, $2847
    ld a, [de]
    ld bc, $2948
    ld a, [de]
    ld bc, $2a49
    dec de
    ld bc, $2b4a
    inc e
    ld bc, $2b4b
    dec e
    ld bc, $2b4c
    ld e, $01
    ld c, l
    inc l
    ld e, $01
    ld c, [hl]
    dec hl
    rra
    ld bc, $2c4f
    rra
    ld bc, $2c50
    jr nz, jr_06b_676c

    ld d, c

jr_06b_676c:
    add hl, hl
    ld [hl+], a
    ld bc, $2c52
    ld [hl+], a
    ld bc, $2353
    inc h
    ld bc, $2354
    dec h
    ld bc, $2155
    ld h, $01
    ld d, [hl]
    add hl, hl
    ld h, $01
    ld d, a
    ld hl, $0127
    ld e, b
    ld [hl+], a
    daa
    ld bc, $2459
    daa
    ld bc, $215a
    jr z, jr_06b_6794

    ld e, e

jr_06b_6794:
    inc h
    jr z, jr_06b_6798

    ld e, h

jr_06b_6798:
    ld a, [hl+]
    jr z, jr_06b_679c

    ld e, l

jr_06b_679c:
    inc l
    jr z, jr_06b_67a0

    ld e, [hl]

jr_06b_67a0:
    jr nz, @+$2b

    ld bc, $215f
    add hl, hl
    ld bc, $2060
    ld a, [hl+]
    ld bc, $2361
    ld a, [hl+]
    ld bc, $2c62
    ld a, [hl+]
    ld bc, $2b63
    dec hl
    ld bc, $2c64
    dec hl
    ld bc, $2165
    inc l
    ld bc, $2c66
    inc l
    ld bc, $2a67
    ld l, $01
    ld l, b
    add hl, hl
    cpl
    ld bc, $1a69
    inc sp
    ld bc, $1c6a
    inc sp
    ld bc, $246b
    inc sp
    ld bc, $176c
    inc [hl]
    ld bc, $196d
    inc [hl]
    ld bc, $1a6e
    inc [hl]
    ld bc, $1c6f
    inc [hl]
    ld bc, $1d70
    inc [hl]
    ld bc, $2371
    inc [hl]
    ld bc, $1d72
    dec [hl]
    ld bc, $1e73
    dec [hl]
    ld bc, $1f74
    dec [hl]
    ld bc, $2075
    dec [hl]
    ld bc, $1e76
    ld [hl], $01
    ld [hl], a
    rra
    ld [hl], $01
    ld a, b
    inc e
    scf
    ld bc, $1b79
    jr c, jr_06b_6810

    ld a, d

jr_06b_6810:
    inc e
    jr c, jr_06b_6814

    ld a, e

jr_06b_6814:
    add hl, de
    add hl, sp
    rst $38
    rst $38
    rst $38
    ld hl, $3b68
    ld l, h
    rst $38
    ld [hl], b
    ld e, $71
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $ea
    ld b, a
    dec c
    ld c, l
    ld c, l
    db $e4
    ldh [$e1], a
    ldh [$f8], a
    pop hl
    ld c, l
    db $dd
    ldh [rNR41], a
    pop af
    pop hl
    call nc, $dbf1
    pop hl
    ld a, [$f6e4]
    add sp, $4d
    xor c
    ld [c], a
    ret nz

    ld [c], a
    jr nz, @-$49

    pop hl
    db $f4
    db $e4
    sub l
    db $e4
    call nc, $85eb
    rst $28
    dec c
    sub h
    db $e3
    ld a, b
    push hl
    ld [bc], a
    cp $e0
    dec l
    or b
    ldh [rHDMA5], a
    pop hl
    ld e, c
    xor $85
    ldh a, [rLY]
    pop hl
    call nz, $ffe4
    dec c
    dec c
    ld l, l
    ld a, [bc]
    ld a, [hl+]
    ld l, e
    ld c, e
    ld c, e
    rlca
    ld c, e
    ld c, l
    dec l
    pop af
    db $e3
    inc d
    ld [c], a
    ld c, a
    db $eb
    nop
    ld a, [c]
    inc de
    db $e3
    rst $38
    ld c, l
    ld c, l
    ld l, l
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec hl
    add a
    dec bc
    dec bc
    dec c
    ld a, [hl]
    ld [c], a
    dec hl
    db $e3
    nop
    rst $38
    inc de
    db $e4
    ld l, l
    rst $30
    ld l, e
    dec c
    dec c
    call nz, Call_000_0be0
    dec bc
    ld a, [bc]
    ld c, d
    rlca
    dec c
    ld c, e
    dec l
    cp c
    pop bc
    cp b
    pop bc
    nop
    rst $38
    sub a
    db $e3
    pop bc
    ldh [$fd], a
    dec hl
    add l
    ldh [rOCPD], a
    dec bc
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    and c
    ld c, e
    ret nz

    ld [c], a
    nop
    rst $38
    ld b, h
    call nz, $c14e
    ld l, l
    add h
    ldh [rOCPD], a
    rst $38
    ld c, e
    dec hl
    ld c, e
    ld l, e
    ld c, e
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    pop hl
    dec bc
    pop af
    ldh [$39], a
    pop bc
    nop
    rst $38
    ld [bc], a
    rst $20
    dec hl
    dec bc
    ld c, e
    ld e, a
    ld a, [bc]
    ld c, d
    dec bc
    dec hl
    dec hl
    ld hl, sp-$20
    ld c, e
    or d
    ldh [$f8], a
    ret nz

    rst $00
    nop
    db $fd
    add b
    db $e3
    dec c
    ld l, e
    ld c, e
    dec bc
    ld a, [hl+]
    ld l, a
    ld c, d
    ld l, e
    ld a, [bc]
    dec hl
    add c

jr_06b_68f9:
    ret nz

    dec c
    ld l, l
    or e
    and c
    jr nc, jr_06b_68f9

    and b
    nop
    rst $38
    dec c
    rst $00
    cp a
    ldh [$0a], a
    ld a, [bc]
    add c
    ldh [$82], a
    db $e3
    ld hl, sp-$7e
    and a
    nop
    rst $38
    push bc
    and e
    ld c, e
    dec hl
    dec bc
    ld a, [bc]
    ld a, [bc]
    add [hl]
    ld b, b
    ldh [rWX], a
    dec c
    jp nz, $aaa4

    jp nz, $ff00

    add l
    and l
    ld c, e
    add c
    ld l, e
    ld a, a
    pop bc
    add c
    pop hl
    add d
    and c
    ld [hl], b
    and l
    nop
    rst $38
    add b
    and $4b
    ld bc, $c36b
    ret nz

    ld bc, $04e1
    jp $80b0


    call nc, Call_000_0092
    or b
    add b
    add d
    rla
    dec l
    ld c, e
    ld l, e
    add d
    ret nz

    ld l, e
    cp b
    ldh [rDIV], a
    jp nz, $a4c4

    ret nz

    nop
    rst $38
    ld e, b
    and d
    ld c, h
    add c
    inc bc
    ret nz

    inc bc
    ldh [$78], a
    ldh [rKEY1], a
    dec l
    ld [hl], b
    add h
    and c
    ld e, c
    or e
    nop
    sub h
    inc c
    add c
    dec hl
    dec c
    dec c
    ld b, $a0
    nop
    scf
    pop hl
    inc bc
    and e
    nop
    rst $38
    ldh a, [$66]
    call z, $c662
    and b
    rst $38
    pop bc
    ccf
    db $e4
    ld [hl], b
    nop
    rst $38
    nop
    adc b
    dec bc
    add b
    pop bc
    add b
    ld l, e
    dec c
    ld l, e
    ld a, $a0
    nop
    add c
    and b
    jp $6d82


    ld h, e
    nop
    rst $38
    pop bc
    ld h, d
    nop
    and b
    add b
    pop bc
    inc hl
    ld h, b
    add b
    ld bc, $8381
    add d
    ld a, [hl]
    and e
    nop
    rst $38
    ld [bc], a
    add d
    jp nz, $fec0

    ldh [$0b], a
    add b
    db $fd
    ret nz

    ccf
    jp nz, $c601

    nop
    rst $38
    adc $43
    add c
    and b
    ld a, a
    and c
    dec bc
    ld b, c
    dec bc
    ccf
    jp nz, $6640

    nop
    rst $38
    inc bc
    call nz, $600d
    ld c, e
    dec b
    and c
    add h
    add b
    add b
    or [hl]
    add b
    dec hl
    ld b, b
    ld h, l
    nop
    rst $38
    ld c, b
    ld h, e
    ld c, b
    ld b, c
    dec l
    inc hl
    ld l, e
    ld c, e
    jp Jump_06b_7aa0


    ret nz

    cp d
    ret nz

    ld l, e
    cp [hl]
    ld b, b
    cp e
    and [hl]
    nop
    nop
    db $dd
    jp nc, $0985

    add b
    rst $38
    and b
    db $fc
    pop bc
    cp l
    ld b, b
    ld b, b
    ld h, h
    nop
    rst $38
    inc d
    inc b
    ld b, d
    ret nz

    db $e3
    dec hl
    pop bc
    pop hl
    dec c
    ld a, [$3740]
    ret nz

    dec a
    call nz, RST_30
    rst $38
    ld [bc], a
    ld h, h
    ld b, l
    ld b, b
    ret nz

    pop bc
    ld a, [bc]
    dec bc
    ld a, [$37a2]
    ld b, b
    jr nc, jr_06b_6a48

    ld h, d
    nop
    rst $38
    add c
    push bc
    ld bc, $6ba0
    ld l, e
    add e
    ld b, b
    call nz, $02e1
    or a
    and b
    ld l, l
    dec sp
    ld hl, $e1fe
    nop
    cp $c1
    ld b, e
    ret nz

    and c
    rlca
    ld h, c
    ld b, b
    add l
    pop hl
    scf
    add b
    add d
    ld b, d
    ccf
    rst $20
    nop
    ld e, d
    rst $08
    inc bc
    ld l, l

jr_06b_6a48:
    inc bc
    ldh [$80], a
    add h
    ld h, c
    cp h
    add b
    ld b, d

jr_06b_6a50:
    db $e4
    add l
    rst $28
    nop
    inc sp
    add d
    db $e3
    adc e
    jr nz, jr_06b_6a85

    inc bc
    dec hl
    ld a, [bc]
    add c
    add b
    db $fd
    jr nz, @+$41

    ld h, d
    nop
    sbc a
    add l
    adc b
    call nz, Call_000_0820
    push bc
    ld b, c
    ld b, h
    ld b, b
    ld b, b
    and b
    ld l, e
    jp Jump_000_0023


    sbc a
    ld d, [hl]
    ld [bc], a
    inc bc
    and e
    nop
    jp Jump_06b_7fe2


    ldh [$bc], a
    ld hl, $4102
    db $ec
    ld b, $00

jr_06b_6a85:
    ld a, [$c3da]
    call Call_000_0061
    add [hl]
    jr nz, jr_06b_6a50

    pop hl
    ld b, c
    ld b, c
    add e
    ret nz

    ld b, e
    ld b, $00
    rst $38
    cp a
    and e
    add $00
    nop
    call nz, $8262
    ld hl, $a0c5
    add l
    inc [hl]
    nop
    cpl
    ld b, l
    and [hl]
    add [hl]
    nop
    ld b, [hl]
    jr nz, jr_06b_6aad

jr_06b_6aad:
    ld a, $40
    add c
    jr nz, @+$07

    and b
    ld b, [hl]
    add [hl]
    nop
    call c, Call_06b_4482
    ld b, [hl]
    nop
    ld [$0321], sp
    dec hl
    dec c
    cp [hl]
    ldh [rSCY], a
    ld l, b
    nop
    ld a, [hl]
    add l
    ld h, l
    ld b, c
    ldh [$c9], a
    nop
    ld bc, $820b
    nop
    inc bc
    ld [hl+], a
    ld [hl], b
    ld [bc], a
    add l
    or b
    nop
    adc a
    call nz, Call_000_10a3
    and c
    ld a, [bc]
    push bc
    ld h, b
    dec bc
    rst $38
    jr nz, jr_06b_6aee

    inc bc
    inc h
    add l
    sub d

jr_06b_6ae7:
    nop
    ldh a, [$c0]
    push hl
    nop
    pop bc
    pop hl

jr_06b_6aee:
    dec sp
    ldh [$83], a
    ld [hl+], a
    add $42
    pop bc
    and h
    nop
    db $dd
    add [hl]
    inc hl
    rlca
    jr nz, jr_06b_6afd

jr_06b_6afd:
    rst $00
    add d
    ld b, e
    dec h
    add l
    or $00
    call Call_000_221a
    add l
    ld h, c
    ld c, b
    ldh [rTMA], a
    and c
    nop
    ld [bc], a
    db $e4
    add l
    db $f4

jr_06b_6b12:
    nop
    ldh a, [$57]
    inc b
    adc d
    ld bc, $4246
    add l
    ld b, c
    xor e
    and l
    inc h
    nop
    rst $38
    add l
    ld h, [hl]
    ld l, e
    ld c, b
    jr nz, jr_06b_6ae7

    ld b, d
    dec c
    rst $00
    ld b, e
    add l
    db $f4
    ld [$f300], sp
    nop
    pop bc
    ld c, c
    and c
    dec hl
    dec b
    and c
    push bc
    nop
    add l
    ld hl, sp+$00
    xor $00
    cp l
    add d
    pop bc
    pop hl
    add a
    ld b, b
    inc bc
    jp Jump_06b_6549


    nop
    rst $38
    add l
    ld b, d
    nop
    jp nz, $c70c

    ld h, d
    add e
    pop bc
    dec c
    ld l, l
    ld b, $22
    add l
    sub h
    nop
    db $d3
    ret nc

    ld hl, $0b01
    pop bc
    ld h, c
    pop bc
    ld [c], a
    or $41
    add l
    or [hl]
    nop
    ret nc

    add b
    and e
    add e
    and d
    ld b, b
    ld b, $a3
    nop
    rst $38
    nop
    res 1, l
    ld bc, $2086
    adc c
    nop
    dec bc
    ld c, b
    ld h, b
    nop
    sbc $13
    nop
    reti


    ret nz

    ld [c], a
    cp a
    pop hl
    push bc
    jr nz, jr_06b_6b12

    ld b, d
    ld a, [bc]
    ld d, h
    nop
    rst $30
    inc b
    ld b, $20

jr_06b_6b91:
    rst $38
    ld [c], a
    dec c
    inc bc
    pop bc
    ld a, [bc]
    ld d, h
    nop
    sub [hl]
    add c
    ld h, e
    adc h
    ld hl, $6b81
    jp Jump_000_30a0


    and e
    nop
    rst $38
    or l
    ld h, $41
    and h
    ld b, c
    add d
    dec bc
    ld hl, $490b
    ld bc, $6406
    nop
    rst $38
    ld a, l
    ld h, a
    ld l, l
    jp nz, Jump_000_3be3

    ret nz

    nop
    ld [bc], a
    and l
    nop
    rst $38
    nop
    add l
    ld b, d
    and c
    ret z

    nop
    ret nz

    rst $20
    ld a, [hl+]
    call nz, $ff00
    jr c, jr_06b_6b91

    ld h, l
    call nz, $c920
    jr nz, jr_06b_6be0

    dec bc
    dec l
    jp nz, Jump_06b_4a00

    inc b
    nop
    nop
    rst $38
    nop
    ld b, [hl]

Jump_06b_6be0:
jr_06b_6be0:
    ld b, h
    ld b, c
    inc b
    ld h, c
    rst $38
    jp Jump_06b_43c5


    nop
    rst $38
    inc l
    ld h, e
    nop
    ld b, d
    and h
    dec c
    jr nz, jr_06b_6bf2

jr_06b_6bf2:
    and $80
    ld [c], a
    nop
    rst $38
    add l
    ld b, $42
    ld h, c
    ld b, [hl]
    and b
    ld bc, $416b
    ld h, b
    ld a, $61
    nop
    and c
    nop
    rst $38
    nop
    add hl, hl
    ld a, h
    ld h, b
    pop bc
    and b
    nop
    add [hl]
    ld h, c
    add d
    add h
    db $eb
    ld b, d
    nop
    rst $38
    nop
    ld h, e
    ret nz

    and h
    cp c
    dec h
    ld [$0023], sp
    nop
    rst $38
    nop
    ret z

    adc a
    db $e3
    adc h
    jp Jump_06b_6532


    nop
    rst $38
    ld [hl+], a
    push hl
    rst $10
    inc bc
    nop
    ld c, e
    jp $85b2


    inc b
    ld b, h
    nop
    di
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
    and b
    ret nc

    pop de
    ld [hl], a
    and b
    ret c

    reti


    ld hl, sp-$20
    jp c, $a0db

    rst $30
    pop hl
    db $fc
    pop af
    ldh [$d4], a
    rst $28
    push hl
    and $e7
    and b
    add sp, -$17
    rst $08
    ld [$eceb], a
    and b
    or $eb
    rst $38
    pop hl
    jp nc, Jump_000_26d3

Jump_06b_6c70:
    push bc
    ld [c], a
    push af
    or $bc
    db $e3
    pop af
    ldh [$a0], a
    call nc, $85ee
    db $f4
    rst $38
    db $e3
    db $e4
    and b
    db $ed
    xor $d4
    push de
    rst $28
    cpl
    and b
    sbc a
    and d
    sbc l
    rst $38
    pop hl
    sbc a
    pop af
    db $e4
    ld e, c
    xor $fe
    add l

jr_06b_6c94:
    db $f4
    and b
    sub $d7
    ldh a, [$f1]
    ld a, [c]
    di
    cp a
    db $f4
    sbc a
    sbc h
    ld c, b
    ld c, b
    ld b, [hl]
    rst $38
    ldh [$9c], a
    pop bc
    sbc a
    pop af
    ld [c], a
    dec hl
    ldh [rVBK], a
    db $ec
    nop
    db $f4
    rlca
    ld [c], a
    sbc a
    sbc l
    rst $38
    sbc l
    sbc h
    ld b, h
    ld e, c
    ld d, e
    dec hl
    dec hl
    ld b, e
    rrca
    ld b, l
    xor [hl]
    sbc h
    sbc a
    dec l
    ld [c], a
    nop
    rst $38
    or $c4
    call z, $ffc0
    sbc a
    sbc h
    ld b, [hl]
    or d
    or d
    ld b, l
    ld a, [hl+]
    cpl
    ld a, a
    jr nz, jr_06b_6c94

    ld c, e
    ld d, l
    xor a
    ld b, [hl]
    and c
    ld l, l
    ldh [$f0], a
    nop
    rst $38
    add l
    push bc
    call z, $c1c0
    ldh [rLYC], a
    scf
    scf
    ld [hl], $ff
    dec h
    jr nz, @+$2c

    ld c, c
    ld h, b
    ld d, l
    ld b, [hl]
    ld b, [hl]
    pop hl
    sbc [hl]
    ld [hl], h
    jp nz, $ff00

    add l
    jp nz, $e095

    sbc a
    sbc h
    or d
    rst $38
    ld b, l
    ld [hl], $38
    jr c, @+$37

    cp h
    ld [hl+], a
    ld b, b
    rlca
    ld d, e
    ld d, e
    ld b, l
    rst $38
    ret nz

    add hl, sp
    jp nz, $ff00

    or $a0
    ld [de], a
    jp nz, $a1fd

    pop bc
    ldh [$3a], a
    ld b, a
    ld d, l
    inc a
    dec [hl]
    dec [hl]
    add e
    ld [hl], $45
    ret nz

    pop bc
    add hl, sp
    jp $ff00


    or $a0
    adc $a2
    sbc [hl]
    ld a, [hl]
    ret nz

    pop hl
    ld d, [hl]
    ld d, [hl]
    ld a, [hl-]
    swap l
    ld a, [hl-]
    add d
    ld [c], a
    ldh a, [$c2]
    and c
    nop
    rst $38
    add l
    and l
    add e
    ret nz

    sbc h
    or d
    ld b, b
    ld a, [hl-]
    ccf
    ld c, e
    ld d, [hl]
    ld a, [hl-]
    dec [hl]
    dec [hl]
    add hl, sp
    ld b, e
    pop hl
    or e
    and b
    ret c

    ld l, h
    and c
    nop
    rst $38
    add l
    and c
    push af
    or $45
    and b
    sbc [hl]
    ld b, [hl]
    rst $38
    ld b, d
    ld a, [hl-]
    ld d, d
    ld e, d
    inc a
    dec [hl]
    inc a
    ld b, h
    jp $9eb2


    or e
    and h
    nop
    rst $38
    nop
    db $e4
    ld b, l
    and c
    sbc [hl]
    ld b, [hl]
    inc bc
    ld b, l
    ld a, [hl-]
    ret nz

    ret nz

    ld b, c
    ldh [$c0], a
    ldh [$b3], a
    and d
    call nc, Call_000_0091
    ld a, [c]
    cp [hl]
    ld b, l
    and d
    sbc [hl]
    ld b, [hl]
    ld b, [hl]
    add hl, sp
    dec [hl]
    rst $38
    ldh [$39], a
    ld h, b
    ld b, h
    pop bc
    inc b
    jp nz, $91d4

    add l
    sub d
    ld b, l
    and h
    ld b, [hl]
    ld b, h
    add d
    pop bc
    jp Jump_06b_46b2


    call nz, Call_06b_78a0
    add d
    ld e, c
    sub c
    add l
    sub e
    push af
    or $fe
    sub e
    and b
    sbc [hl]
    ld b, [hl]
    ld b, h
    jr c, jr_06b_6de8

    ld a, [hl-]
    or d
    add $c0
    ldh [$9c], a
    sbc a
    dec a
    add c
    ld e, c
    sub c
    nop
    cp c
    and c
    ld b, l
    daa
    or d
    or d
    inc a
    ret nz

    ldh [$7f], a
    ldh [$9e], a
    dec sp
    add d
    nop
    rst $38
    ld [hl], $00
    xor d
    sbc [hl]
    ld b, d
    pop bc
    pop bc
    jr c, jr_06b_6e0f

    ret nz

    ld [c], a
    inc bc
    and c
    ld hl, sp+$00
    rst $38
    nop
    ret z

    pop bc
    add b
    ld b, l
    ld a, [hl-]
    cp e
    jr c, jr_06b_6e1f

jr_06b_6de8:
    pop bc
    ld [hl], $bf
    jp Jump_06b_6077


    nop
    rst $18
    nop
    xor e
    add b
    ret nz

    inc a
    or d
    rlca
    or d
    xor [hl]
    ld a, [hl-]
    ld a, a
    jp nz, Jump_06b_603c

    ld a, [hl]
    and e
    nop
    rst $38
    nop
    and e
    rst $38
    sbc [hl]
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    or d
    inc a
    ld [hl], $b2
    rlca
    xor a

jr_06b_6e0f:
    ld a, [hl-]
    ld b, b
    add e
    add b
    inc a
    ld h, c
    ld b, b
    ld h, c
    nop
    rst $38
    nop
    and [hl]
    rst $38
    ld b, [hl]
    xor a
    ld b, [hl]

jr_06b_6e1f:
    add hl, sp
    rst $08
    call $cfcd
    add b
    ccf
    pop bc
    jp nz, Jump_06b_7e60

    and h
    nop
    rst $38
    add l
    ld b, b
    adc $41
    ld bc, $3a81
    rra
    rst $08
    call $cecc
    ld [hl], $3e
    jp Jump_06b_6340


    nop
    rst $38
    ld hl, sp-$7b
    ld b, e
    ld b, l
    ld b, b
    ret nz

    ret nz

    scf
    scf
    xor [hl]
    rst $08
    cp e
    ret nz

    ld a, a
    ld [c], a
    cp l
    add d
    ld h, $a2
    nop
    rst $38
    nop
    and h
    cp a
    add b
    ld b, [hl]
    or d
    rra
    xor a
    inc a
    adc $cc
    rst $08
    cp l
    and c
    ld b, b
    ld h, h
    nop
    rst $38
    ld a, h
    nop
    and [hl]
    cp a
    add c
    or d
    ld [hl], $cf
    call z, $c0bb
    pop hl
    pop bc
    xor [hl]
    ld b, b
    ld h, h
    nop
    rst $38
    add $21
    nop
    and l
    ret nz

    ret nz

    set 1, h
    ld h, d
    cp a
    jp nz, Jump_06b_40af

    ld h, h
    nop
    rst $38
    add l
    ld hl, $d7d6
    adc h
    jr nz, jr_06b_6e9d

    and c
    add b
    add b
    adc $cc
    pop bc
    pop hl
    cp $82
    add d
    ld b, d
    nop
    rst $38

jr_06b_6e9d:
    ld h, e
    pop hl
    ld [c], a
    ldh a, [rP1]
    inc bc
    ld b, d
    add c
    ld b, b
    ld [hl], $cf
    ld b, c
    pop bc
    nop
    pop bc
    pop bc
    add d
    ld b, d
    nop
    cp a
    nop
    ld h, h
    inc bc
    ld b, d
    inc bc
    ldh [$c3], a
    ld h, b
    pop bc
    add b
    inc bc
    ld b, l
    ld b, [hl]
    jp nz, $bb21

    nop
    nop
    cp a
    add l
    ld [hl+], a
    ret c

    ld hl, $a003
    rst $18
    ld [hl], $3b
    dec [hl]
    dec [hl]
    bit 0, c
    add b
    add hl, sp
    add hl, sp
    add e
    ld b, [hl]
    xor a
    add b
    add e
    nop
    sbc a
    ld a, e
    ld [bc], a
    ld c, h

jr_06b_6ede:
    nop
    call nz, $cbc1
    ld c, $83
    ld h, c
    dec [hl]
    add hl, sp
    or d
    nop
    and e
    inc [hl]
    nop
    nop
    sbc a
    add l
    add e
    ld [hl], d
    ld b, e
    and d
    ld b, l
    add a
    ld b, b
    ld b, d

jr_06b_6ef7:
    ld h, b
    swap l
    dec sp
    ld bc, $f040
    inc bc
    jr nz, jr_06b_6f44

    ld bc, $ff00
    db $dd
    pop hl
    ret nc

    pop de
    push af
    or $09
    and c
    call nz, $c2c0
    ld [c], a
    dec [hl]
    add c
    ld b, b
    add e
    nop
    inc [hl]
    inc bc
    nop
    rst $38
    jr nz, @-$4d

    and c
    add l
    and e
    add l
    ld h, b
    ld b, b
    ld [c], a
    ld bc, $a141
    add c
    ld b, e
    ld e, c
    ld [hl], b
    xor h
    nop
    ld l, $85
    and [hl]
    or d
    or d
    add h
    ld b, c
    ld [hl], $c1
    ld [hl+], a
    sbc [hl]
    add sp, -$51
    inc bc
    nop
    rst $38
    add l
    ld c, b
    or d
    ld b, h
    ld b, c
    inc a
    or d
    ld a, [hl-]
    add a

jr_06b_6f44:
    jr c, jr_06b_6f7d

    ld b, l
    ld b, c
    ld b, h
    ld e, c
    ld l, [hl]
    nop
    pop af
    add l
    ld h, l
    or d
    dec c
    or d
    ret nz

    pop bc
    ld a, [hl-]
    add hl, sp
    inc b
    jr nz, jr_06b_6ede

    ld bc, $4241
    nop
    rst $38
    inc b
    add l
    ld h, [hl]
    ld bc, $39e4
    ret nz

    pop hl
    inc bc
    ld hl, $0145
    ld e, c
    ld d, c
    nop
    rst $28
    ld [bc], a
    add l
    ld h, e
    ld b, [hl]
    add h
    and c
    push bc
    jr nz, jr_06b_6ef7

    pop hl
    ld [bc], a

jr_06b_6f79:
    ldh [rLYC], a
    ld [bc], a
    nop

jr_06b_6f7d:
    rst $38
    add b
    add l
    ld l, b
    ld b, [hl]
    jr nz, jr_06b_6fcb

    ld b, b
    call nz, Call_06b_59a7
    ld d, c
    nop
    di
    add l
    ld h, e
    add hl, sp
    ld h, d
    ld b, $a2
    ld [hl], $c4
    and l
    add l
    ld a, [c]
    nop
    ld a, [c]
    sbc $df
    sbc c
    ld b, c
    dec sp
    and c
    ld b, d
    ld b, a
    and b
    or d
    ld b, b
    dec [hl]
    add l
    ld b, c
    or e
    ld h, d
    db $e4
    ld e, c
    inc [hl]
    nop
    sub $44
    ld b, $40
    ld bc, $4440
    ld b, [hl]
    or d
    ld d, c
    and c
    or e
    ld [bc], a
    ld e, c
    dec [hl]
    nop
    push de
    ld b, b
    push bc
    pop hl
    ld a, [hl-]
    dec b
    and b
    jp $9eb2


    or e
    ld h, d
    nop
    rst $38
    add l

jr_06b_6fcb:
    ld b, h
    ret nz

    push bc
    ld a, [hl-]
    ld b, l
    ret nz

    add e
    jp nz, $a004

    or e
    ld h, c
    nop
    rst $38
    add l
    ld h, $47
    ld [bc], a
    ld b, l
    ld a, [hl-]
    ret nz

    ld bc, $47e0
    ld hl, $6409
    add l
    sub d
    nop
    db $d3
    ld b, l
    ld [hl+], a
    add hl, sp
    dec [hl]
    rlca
    ld [hl], $37
    jr c, jr_06b_6f79

    add d
    inc b
    call nz, $ff00
    add l
    dec b
    ld b, l
    ld [hl+], a
    ld h, b
    inc bc
    and c
    rlca
    add c
    ld c, b
    ld bc, $f685
    nop
    call nc, $f6f5
    jp nz, Jump_000_0f60

    ld [hl], $38
    scf
    ld b, e
    jp Jump_06b_73c1


    ld h, b
    add l
    or $00
    call nc, $020e
    ret nz

    ld b, [hl]
    ld b, [hl]
    ld b, l
    ret z

    add b
    ld a, [$4880]
    ld [bc], a
    add l
    sub l
    nop
    nop
    or e
    ld b, $22
    jp $bbe1


    add c
    ld c, b
    ld [bc], a
    nop
    rst $38
    nop
    ld l, c
    ld b, $25
    jp nz, $e280

    and c
    or l
    inc bc
    nop
    rst $38
    add l
    dec b
    ld b, $24
    ld b, l
    or d
    ccf
    ld b, c
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld b, l
    adc d
    ld bc, $41c6
    ret nc

    nop
    rst $38
    ld a, e
    inc b
    ld b, $24
    inc b
    ld b, b
    dec sp
    db $fd
    ldh [$36], a
    ld b, l
    ld hl, sp+$02
    and e
    nop
    rst $38
    nop
    add a
    push af
    or $9f
    sbc h
    ld b, h
    rst $30
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    ld b, h
    sbc [hl]
    ldh a, [$b5]
    ld [bc], a
    nop
    rst $38
    add l
    dec b
    ld b, d
    ld h, e
    ld b, d
    dec [hl]
    ld l, c
    and e
    ccf
    dec [hl]
    dec [hl]
    and e
    ld l, d
    dec [hl]
    ld b, d
    dec b
    ld h, e
    nop
    rst $38
    inc b
    nop
    add l
    ld b, d
    ld h, d
    xor [hl]
    ret nz

    ldh [$82], a
    ld b, c
    ret nz

    ld [c], a
    dec b
    ld h, d
    nop
    rst $38
    db $fc
    add l
    inc bc
    add $01
    and c
    ld b, [hl]
    xor a
    ld b, h
    inc a
    ld l, e
    dec b
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    ldh [rTIMA], a
    ld h, d
    nop
    rst $38
    nop
    ld h, [hl]
    ld bc, $c0e1
    ld b, a
    nop
    ret nz

    call nz, $41c4
    inc bc
    ld h, d
    nop
    rst $38
    nop
    dec h
    ret nc

    pop de
    nop
    cp a
    pop hl
    ld b, e
    ret nz

    ld b, b
    ret nz

    ld b, [hl]
    ld b, b
    ld [hl-], a
    ld h, b
    nop
    rst $38
    nop
    ld l, c
    rst $10
    nop
    dec sp
    sbc a
    sbc l
    rst $38
    db $e4
    sbc a
    push af

jr_06b_70dd:
    or $c8
    ld bc, $ff00
    nop
    ld a, e
    ld b, [hl]
    ret nz

    and e
    ld d, b
    inc hl
    adc e
    jr nz, jr_06b_70dd

    db $e4
    nop
    rst $38
    and a
    add l
    ld de, $00c4
    ld d, b
    ld hl, $c174
    ld [bc], a
    call nz, $f800
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
    and $ff
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ld bc, $1e00
    dec b
    ld bc, $1f01
    dec b
    ld [bc], a
    ld [bc], a
    daa
    dec b
    ld bc, $1b03
    rlca
    ld bc, $1a04
    ld [$0501], sp
    ld a, [de]
    add hl, bc
    ld bc, $1b06
    ld a, [bc]
    ld bc, $2407
    dec bc
    ld bc, $2408
    inc c
    ld bc, $2209
    ld c, $01
    ld a, [bc]
    ld hl, $010f
    dec bc
    ld [hl+], a
    rrca
    ld bc, $1d0c
    db $10
    ld bc, $1e0d
    db $10
    ld bc, $210e
    db $10
    ld bc, $220f
    db $10
    ld bc, $2310
    db $10
    ld bc, $2311
    ld de, $1201
    ld e, $12
    ld bc, $1f13
    inc de
    ld bc, $2014
    inc de
    ld bc, $1d15
    inc d
    ld bc, $2016
    inc d
    ld [bc], a
    rla
    ld hl, $0214
    jr jr_06b_719c

    dec d
    ld bc, $2319
    dec d
    ld bc, $231a
    ld d, $01
    dec de
    inc h
    ld d, $01
    inc e
    ld hl, $0117
    dec e
    inc h
    rla
    ld bc, $1e1e
    jr jr_06b_719d

    rra

jr_06b_719c:
    rra

jr_06b_719d:
    jr @+$03

    jr nz, jr_06b_71c5

    jr @+$03

    ld hl, $1825
    ld bc, $1e22
    add hl, de
    ld bc, $2223
    add hl, de
    ld bc, $2424
    add hl, de
    ld bc, $2525
    add hl, de
    ld bc, $2426
    ld a, [de]
    ld [bc], a
    daa
    daa
    ld a, [de]
    ld bc, $2328
    dec de
    ld bc, $2429

jr_06b_71c5:
    dec de
    ld bc, $222a
    inc e
    ld bc, $232b
    inc e
    ld bc, $1b2c
    dec e
    ld bc, $202d
    dec e
    ld bc, $212e
    dec e
    ld bc, $222f
    dec e
    ld bc, $2030
    ld e, $01
    ld sp, $1e21
    ld [bc], a
    ld [hl-], a
    dec h
    ld e, $01
    inc sp
    ld hl, $011f
    inc [hl]
    jr jr_06b_7214

    ld bc, $1935
    ld [hl+], a
    ld bc, $1836
    inc hl
    ld bc, $1937
    inc hl
    ld bc, $1838
    inc h
    ld bc, $1e39
    inc h
    ld bc, $173a
    dec h
    ld bc, $183b
    dec h
    ld bc, $173c
    ld h, $01
    dec a

jr_06b_7214:
    jr @+$28

    ld bc, $173e
    daa
    ld bc, $1d3f
    daa
    ld bc, $1c40
    jr z, jr_06b_7224

    ld b, c

jr_06b_7224:
    dec e
    jr z, jr_06b_7228

    ld b, d

jr_06b_7228:
    ld a, [de]
    add hl, hl
    ld bc, $1b43
    add hl, hl
    ld bc, $1c44
    add hl, hl
    ld bc, $1a45
    ld a, [hl+]
    ld bc, $1b46
    ld a, [hl+]
    ld bc, $1947
    dec hl
    ld bc, $1a48
    dec hl
    ld bc, $2049
    dec hl
    ld bc, $1b4a
    inc l
    ld bc, $204b
    inc l
    ld bc, $1a4c
    dec l
    ld bc, $194d
    ld l, $01
    ld c, [hl]
    ld a, [de]
    ld l, $01
    ld c, a
    dec e
    ld sp, $5001
    dec e
    ld [hl-], a
    ld bc, $1c51
    inc sp
    ld bc, $1d52
    inc sp
    ld bc, $1853
    inc [hl]
    ld bc, $1d54
    inc [hl]
    ld bc, $1755
    dec [hl]
    ld [bc], a
    ld d, [hl]
    inc d
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    add l
    ld [hl], d
    push af
    db $76
    ld b, [hl]
    ld a, l
    ld h, c
    ld a, l
    ld [hl], c
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    pop hl
    ld c, $0e
    ld l, $f5
    ldh a, [$2c]
    rst $38
    rst $38
    cp [hl]
    db $ed
    ld c, $0e
    or c
    db $e3
    ld c, [hl]
    rst $38
    jp hl


    rst $20
    db $e3
    ld [hl], b
    sbc a
    db $e3
    rst $18
    db $e4
    ld a, a
    rst $28
    pop hl
    jp hl


    ld c, $6e
    dec bc
    rst $38
    jp hl


    inc b
    cp a
    ld [c], a
    ld e, e
    ld [c], a
    ld c, $c0
    or $e1
    jp hl


    pop bc
    db $ec
    cp a
    and $c0
    rst $38
    ld a, h
    db $f4
    jp $e082


    inc c
    inc c
    inc c
    inc l

Jump_06b_72c7:
    inc l
    db $fc
    ldh [rP1], a
    ld hl, sp-$1e
    ld a, [hl]
    push hl
    rst $18
    and $de
    call $e44a
    ld b, e
    and $c2
    ldh [$fd], a
    add sp, $01
    inc l
    cp [hl]
    ldh [$fc], a
    call nz, $e503
    sbc h
    call z, $e9c0
    pop bc
    xor $7d
    db $e3
    ld h, b
    db $fc
    push bc
    db $d3
    ret


    add b
    db $ec
    ld b, e
    push hl
    add d
    add sp, $4c
    ld l, h
    scf
    ldh [$03], a
    ld l, h
    ld c, h
    cp a
    push hl
    dec de
    ret nz

    add b
    call z, $ca13
    pop hl
    pop hl
    ld b, e
    ld [$6c0b], a
    ld c, h
    cp $e0
    ld l, h
    cp h
    pop hl
    ld a, [hl]
    and $40
    adc $27
    jp z, Jump_06b_47f0

    ret nz

    call $8bc1
    pop hl
    ret


    pop hl
    ld c, h
    dec hl
    dec bc
    ld c, h
    ld bc, $b36c
    jp nz, $c0b6

    db $fc
    push bc
    sub a
    call nz, $a5f0
    rst $20
    push bc
    rst $20
    ld [c], a
    ld a, b
    ld [$c0c0], sp
    ld [c], a
    adc e
    ldh [rWX], a
    ld c, e
    ld c, h
    ld c, h
    ret nz

    ldh [rNR32], a
    rst $30
    and c
    ld a, h
    ldh [$4c], a
    inc c
    inc c
    ld hl, sp-$55
    ld b, $d1
    pop bc
    add sp, -$41
    dec bc
    dec bc
    ld c, e
    ld c, e
    dec hl
    dec hl
    pop bc
    ldh [$0a], a
    ld bc, $b50a
    and c
    dec [hl]
    jp nz, $aaf8

    ld b, $d0
    adc d
    and d
    ld b, c
    ld [c], a
    adc b
    db $e4
    rla
    ld c, e
    dec hl
    ld c, e
    ret nz

    ld [c], a
    ld c, e
    dec hl
    db $e3
    db $76
    and [hl]
    ret nz

    push af
    ld [de], a
    pop bc
    push hl
    ld l, h
    ld c, b
    db $e4
    rst $00
    ldh [rWX], a
    rst $38
    ld [c], a
    db $ec
    jp nz, $e17f

    sub c
    dec bc
    ld a, a
    ret nz

    and d
    sub [hl]
    ret nz

    and $2c
    pop bc
    db $e4
    ei
    add e
    dec hl
    pop hl
    dec hl
    ret nz

    db $e3
    ld a, a
    ld [c], a
    ld h, l
    sub b
    ld b, [hl]
    add l
    ld c, $6e
    ld a, [bc]
    sub c
    ld a, [bc]
    add e
    jp $ebc0


    cp [hl]
    ldh [$4c], a
    pop bc
    ret nz

    inc sp
    and c
    ld a, [bc]
    pop hl
    ld a, [bc]
    ld a, h
    add $3f
    xor [hl]
    adc h
    add b
    ret nz

    jp hl


    ld l, e
    ld c, e
    ld l, e
    ld bc, $790b
    rst $20
    cp c

jr_06b_73c0:
    and c

Jump_06b_73c1:
    db $ed
    add b
    or e
    ret nz

    cp c
    and d
    inc a
    jp nz, $aa6f

    ld hl, sp+$67
    add b
    jp $cac5


    add c
    ld l, e
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add c
    ld l, e
    dec sp
    add a
    ld b, b
    pop bc
    cp $c6
    pop de
    add [hl]
    sbc b
    ld h, a
    ret nz

    db $eb
    inc c
    dec b
    inc c
    pop bc
    pop hl
    ld c, d
    ld b, [hl]
    jp nz, Jump_06b_64f7

    ccf
    ld [c], a
    cp $ca
    add hl, bc
    and $40
    xor a
    ld h, h
    add d
    ret nz

    pop bc
    and $16
    pop hl
    cp a
    ldh [$7f], a
    rst $20
    dec hl

jr_06b_7403:
    ccf
    db $e3
    jr jr_06b_7403

    and c
    ld a, [hl]
    call $f1c0
    inc c
    inc l
    ret nz

    db $ed
    ld l, $85
    ld a, [hl]
    jp Jump_06b_7fc0


    xor c
    xor h
    ld h, d
    dec hl
    and c
    jr jr_06b_73c0

    ret z

    add h
    add b
    pop hl
    ld a, [bc]
    ld l, d
    ld bc, $c04b
    db $ed
    or l
    ld h, b
    ret nz

    db $ed
    add a
    ld h, l
    jp nz, $9aa0

    call nz, $80c4
    inc h
    pop bc
    ld [c], a
    cp [hl]
    ret nz

    ld c, e
    cp [hl]
    db $e4
    add b
    push hl
    ld c, h
    ret nz

    ld a, [$668f]
    add c
    ld c, d
    ret nz

    db $e4
    cp b
    and [hl]
    cp [hl]
    and l
    add b
    rst $38
    jp z, $8162

    db $e3
    ld a, [hl+]
    ld h, b
    add b
    rst $08
    add b
    db $e4
    ld b, d
    or h
    jp nz, $c1ca

    ld [$4c0b], a
    inc a
    add e
    ldh a, [$80]
    ld [c], a

Call_06b_7463:
    sub $29
    adc b
    daa
    ld b, b
    ret


    ld c, d
    ld c, d
    ld a, [bc]
    ld a, [hl+]
    daa
    ld a, [hl+]
    ld a, [bc]
    ld c, e
    ld bc, $3de6
    and d
    inc l
    dec sp
    and c
    add b
    push bc
    add b
    scf
    ld h, a
    ld b, [hl]
    ld [hl+], a
    add b
    and e
    db $db
    and h
    ld c, d
    ld b, b
    rst $38
    pop bc
    ld b, c
    pop hl
    dec hl
    ld [bc], a
    ld a, h
    and a
    ld l, e
    inc [hl]
    ld b, c
    ld [hl], e
    ld h, b
    ld sp, hl
    ld b, e
    ld d, [hl]
    daa
    ld a, [hl+]
    ld h, l
    nop
    jp z, Jump_06b_7f06

    ldh [$0a], a
    ld a, [hl+]
    add $60
    pop bc
    add sp, $00
    ret


    pop bc
    stop
    jp z, $96fe

    add b
    ld c, e
    ld c, d
    ld c, d
    ld c, d

jr_06b_74b0:
    ld c, e
    ld c, e
    ld l, e
    ld [bc], a
    rst $30
    ld h, h
    ld l, e
    pop bc
    db $e4
    add b
    call nz, $9402
    nop
    push bc
    ld c, b
    ld b, b
    inc a
    ld [c], a
    add c
    ld l, d

Call_06b_74c5:
    ld a, $8d
    nop
    jp z, $064d

    dec a
    db $e4
    add b
    xor b
    ld b, e
    jr nz, jr_06b_751e

    rrca
    ld c, e
    ld c, e
    ld a, [bc]
    ld a, [hl+]
    ld a, a
    ldh [$be], a
    and h
    db $fd
    ld h, l
    nop
    jp nc, $8098

    rst $28
    inc bc
    jr nz, jr_06b_752b

    ld h, b
    dec bc
    dec bc

jr_06b_74e8:
    sub h
    ld bc, $a47c
    ld l, h
    ldh a, [$f3]

jr_06b_74ef:
    ld bc, $bf80
    ld a, l
    add a
    add d
    ld b, b
    dec c
    dec c
    dec hl
    dec hl
    ret nz

    cp [hl]
    pop hl
    cp l
    ld h, [hl]
    add b
    cp e
    add b
    add a
    pop bc

Jump_06b_7504:
    jr nz, @+$06

    and b
    dec c
    dec c
    ld b, $7d
    ld h, d
    dec c
    dec c
    or [hl]
    ld h, b
    ld a, [hl]

jr_06b_7511:
    add h
    ld b, b
    sub d
    add b
    add l
    ld a, [de]
    ld h, c
    jr nz, jr_06b_74ef

    jr nz, jr_06b_74b0

    and d
    ret z

jr_06b_751e:
    ld [c], a
    add hl, sp
    ld h, c
    or $40
    ld c, l
    db $76
    ld h, d
    cpl
    ld [hl+], a
    jr nz, jr_06b_74e8

    ld b, [hl]

jr_06b_752b:
    jp nz, Jump_06b_40c7

    add a
    jp c, $8520

    add c
    ld l, d
    ld c, h
    ld hl, $e188
    ld [$4283], sp
    ret nz

    pop hl
    ld a, c
    jr nz, @+$4d

    ld a, [hl-]
    inc hl
    ld b, b
    ld l, a
    add b
    ld l, b
    ld c, $21
    nop
    add a
    ld h, d
    add d
    ld b, e
    ret nz

    pop hl
    ld a, b
    ld b, d
    ret nz

    pop hl
    cp [hl]
    ld h, e
    ret nz

    add sp, -$40
    ld d, b
    jr nc, @-$79

    add l
    ld b, a
    ld h, b
    add e
    jp $433a


    dec l
    dec c
    add b
    pop hl
    xor b
    inc bc
    ld b, b
    ret nz

    ld c, b
    add b
    xor a
    ld a, [de]
    ld hl, $6287
    ld c, l
    ld hl, $c143
    dec l
    ld a, l
    ld [c], a
    dec de
    dec c
    dec l
    add b
    db $e4
    ld l, h
    ld c, h
    add b
    xor [hl]
    dec sp
    rst $20
    ld b, b
    ld h, h
    ld a, [de]
    push bc
    ld h, d
    ld l, e
    ret


    jp nz, Jump_000_2a0a

    ld d, [hl]
    jr nz, jr_06b_7511

    db $e4
    dec a
    ld b, c
    add b
    ld l, $00
    nop
    push hl
    add b
    ld [$4539], sp
    ld b, b
    ld h, h
    add l
    ld h, d
    ld b, a
    and d
    dec hl
    ld h, h
    rst $38
    ld b, b
    dec d
    ld hl, $812d
    pop hl
    ld a, e
    ld hl, $0b6c
    ret nz

    and h
    nop
    sub c
    inc b
    or h
    inc bc
    or b
    push hl
    nop
    ld h, c
    add hl, bc
    and c
    add $43
    add h
    ld h, b
    ld a, l
    ld h, d
    ld b, c
    ld a, [hl+]
    ld a, l
    nop
    ld a, $88
    ret nz

    jp hl


    ret nz

    ld c, a
    ld a, a
    jp nz, $822c

    ld h, h
    add hl, sp
    ld a, [hl+]
    inc a
    ld h, e
    or l
    rlca
    ld l, e
    ld c, e

jr_06b_75d9:
    inc l
    ld [$c0a1], a
    ld a, [$d828]
    ld bc, $e5bf
    db $fd
    ld b, d
    ld c, e
    cp l
    ld b, a
    ld c, e
    ld bc, $7ea2
    ld c, $06
    nop
    ld b, l
    ld c, [hl]
    ld l, $4e
    ldh [rNR31], a
    and e
    nop
    ld h, e
    ld a, l
    ld hl, $e7c1
    call z, Call_000_02fb
    ld h, [hl]
    ret nz

    ld c, $6e
    ld c, c
    dec hl
    ld [hl], e
    rlca
    ld c, [hl]
    ld l, $08
    ret nz

    ldh [$57], a
    inc bc
    cp a
    and $2b
    scf
    jp nz, $253c

    xor d
    jr nz, jr_06b_75d9

    ldh [rNR10], a
    pop bc
    ld c, c
    cp b
    ld b, a
    add hl, hl
    ld h, c
    ld d, a
    inc b
    inc l
    dec a
    and $be
    ld b, b
    cp l
    dec h
    pop bc
    dec l
    ld [hl], d
    ld b, e
    ld [de], a
    ld h, h
    pop bc
    ld b, a
    ld a, $4b
    ld d, a
    inc b
    ld l, h
    ld l, h
    dec b
    dec bc
    ccf
    nop
    ld a, [hl+]
    ld b, c
    inc hl
    cp l
    add d
    cp e
    ld [hl+], a
    add d
    inc b
    ret nz

    dec bc
    nop
    ld sp, $fe67
    ret nz

    inc a
    inc hl
    pop bc
    ldh [$c1], a
    and c
    add a
    rst $00
    add d
    ld [c], a
    inc [hl]
    ld hl, $0200
    push hl
    ld b, b
    xor a
    ld [hl], d
    ld b, c
    cp a
    pop hl
    jp c, Jump_06b_4321

    add c
    jp Jump_06b_7e29


    db $e3
    nop
    pop bc
    di
    or e
    dec h
    ld [hl-], a
    ld b, d
    cp a
    ld [c], a
    add d
    nop
    ret nz

    db $ec
    ld a, [$b562]
    nop
    nop
    add h
    jp $afc2


    ld l, l
    ld hl, $23f2
    dec sp
    ret nz

    ret nz

    ld h, b
    pop bc
    db $ed
    ld b, b
    ld b, c
    nop
    rst $38
    ld h, b
    ld b, l
    call nz, $a442
    add d
    ld c, d
    xor $86
    ld a, [$c0a0]
    pop af
    rst $38
    jr nz, jr_06b_769d

    ld c, e

jr_06b_769d:
    ld b, $c2
    ld d, d
    ld h, l
    cp h
    inc sp
    cp e
    push bc
    ld a, a
    ldh a, [$c1]
    db $e3
    ret nz

    db $fd
    nop
    xor e
    ld h, b
    cp a
    db $f4
    rst $00
    and c
    push bc
    ld [hl], d
    inc a
    ld h, [hl]
    dec a
    add sp, -$3f
    ld a, [c]
    rst $38
    ld hl, sp+$00
    or h
    dec b
    dec a
    or $c5
    jp z, $fdc0

    db $fc
    rst $08
    res 0, c
    dec c
    inc hl
    add [hl]
    ld c, c
    nop
    cp d
    or h
    daa
    nop
    cp e
    call z, $c586
    ld b, a
    ld h, a
    cp [hl]
    di
    ret nz

    and $33
    add b
    nop
    rst $38
    jp hl


    add [hl]
    push bc
    rlca
    ld h, [hl]
    cp $8e
    ld l, [hl]
    jp hl


    ld hl, $cdd1
    sub l
    rst $38
    rst $38
    nop
    rst $38
    ei
    nop
    nop
    nop
    ld [hl], c
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    pop hl
    call nc, $d4d5
    push af
    ldh a, [$6c]
    rst $38
    rst $38
    cp [hl]
    db $ed
    ld [c], a
    db $e3
    sub $e2
    sbc a
    sbc l
    rst $38
    jp hl


    ld h, c
    sbc a
    sbc a
    add sp, -$21
    db $e4
    ld a, a
    rst $28
    add b
    db $e3
    db $e4
    push hl
    pop bc
    ld [c], a
    res 3, h
    ld b, [hl]
    rst $38
    jp hl


    sbc h
    cp a
    pop hl
    ld a, [hl]
    ldh [$d6], a
    rst $10
    ld sp, $dfd8
    db $e4
    ld [hl], c
    ld a, [c]
    pop hl
    pop hl
    and $e7
    pop bc
    rst $28
    cp a
    and $87
    reti


    jp c, $dfdb

    db $e3
    ld [hl-], a
    di
    pop hl
    pop hl
    add d
    push hl
    inc bc
    rst $38
    inc b
    rlca
    inc b
    inc bc
    dec bc
    inc bc
    add hl, bc
    inc b
    add hl, sp
    rlca
    ld hl, sp-$20
    ld a, [hl]
    push hl
    call c, $dedd
    sbc $d3
    ld a, [bc]
    db $e3
    cp h
    pop hl
    db $e4
    ld b, e
    ldh [$03], a
    inc b
    dec c
    sbc c
    rst $38
    and $98
    add hl, sp
    dec c
    cp [hl]
    ldh [$3d], a
    ld [c], a
    rst $18
    ldh [$e1], a
    sbc h
    db $d3
    ld a, [bc]
    db $e3
    call z, $e3e1
    inc b
    ldh [rSC], a
    db $10
    jp z, $c7e0

    ldh [rP1], a
    ld bc, $ba3e
    pop hl
    nop
    ld bc, $0d98
    ld [bc], a
    db $fc
    add $d3
    ret


    jr c, jr_06b_77f9

    add $2b
    add sp, -$3f
    pop hl
    rrca
    sbc c
    sbc b
    pop bc
    ldh [$86], a
    ldh [$f7], a
    sbc b
    ld b, $06
    ld a, b
    ldh [$0d], a
    dec c
    sbc b
    rrca
    add b
    cp a
    db $e3
    sbc e
    ret nz

    add b

jr_06b_77aa:
    call z, $ca13
    ld a, h
    ret nz

    pop bc
    db $e3
    add a
    db $e3
    sbc b
    rst $38
    sbc d
    ld c, $05
    dec b
    ld c, $0f
    inc b
    inc bc
    rlca
    ld [$9999], sp
    cp a
    db $e4
    ld e, a
    push bc
    add $b0
    ld b, $c2
    ld b, a
    ret nz

    ei
    dec b
    dec c
    add d
    ld [c], a
    dec c
    rlca
    rlca
    sbc c
    sbc b
    ld a, a
    ld b, $39
    add hl, sp
    inc bc
    inc bc
    scf
    ld b, h
    ret nz

    ldh [rTAC], a
    sbc c
    rrca
    dec b
    add hl, sp
    jp $c15f


    jr c, jr_06b_77aa

    rrca
    push bc
    ld [$e8c2], sp
    daa
    push bc
    ld [$4ec1], sp
    pop hl
    sbc c
    adc e
    ldh [$3f], a
    ccf

jr_06b_77f9:
    inc bc
    rst $38
    inc b
    dec b
    ld a, [hl-]
    ld a, [hl-]
    scf
    jr c, @+$37

    ld b, d
    ccf
    ld [bc], a
    rlca
    rlca
    rrca
    sbc c
    ld b, $f8
    and a
    ld d, a
    push bc
    ld e, b
    ld b, [hl]
    jp z, $c006

    ret


    and c
    dec b
    ld c, $93
    pop hl
    ld [bc], a

jr_06b_781a:
    ret


    ldh [rIE], a
    dec [hl]
    jr c, @+$39

    add hl, sp
    dec [hl]
    dec [hl]
    jp z, $0fcb

    dec [hl]
    ld b, d
    ld b, e
    ld b, l
    ld [$7fe0], a
    ldh [$b7], a
    and l
    jr c, @-$39

    sub b
    dec hl
    and [hl]
    daa
    jp $a28a


    add c
    ld [c], a
    ld b, $c7
    ldh [$fe], a
    pop hl
    ld [hl], $ff
    ld [hl], $35
    ret z

    ret


    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, h
    ld b, b
    cp c
    pop bc
    ld a, a
    ldh [rPCM12], a
    and h
    jr c, jr_06b_781a

    jp hl


    add h
    daa
    jp Jump_06b_4b9e


    and b
    sbc $81
    pop hl
    sbc b
    ld c, $05
    ld a, [hl-]
    ret nz

    db $e3
    dec [hl]
    add hl, sp
    dec a
    dec a
    rst $38
    ldh [$38], a
    add hl, sp
    dec b
    ld c, $31
    ret nz

    ld a, a
    pop hl
    jp $9e46


    ld b, h
    adc $a6
    add a
    ret nz

    pop hl
    ld d, b
    ret nz

    sbc b
    sbc b
    cp e
    ld [$c140], sp
    db $e4
    dec [hl]
    dec [hl]
    dec sp
    add hl, sp
    pop hl
    ld b, l
    ret


    ld b, $30
    jp nz, $e17f

    sbc [hl]
    add $96
    res 0, b
    add $c7
    or d
    ld [bc], a
    ldh [$98], a
    ret nz

    ld [$e339], a
    ld [bc], a
    dec c

Call_06b_78a0:
    ldh a, [$a1]
    rrca
    add a
    dec b
    add $c7
    or l
    add d
    ld a, h
    adc a
    ld c, c
    add b
    adc h
    add b
    call nz, $c5f3
    ld b, $8b
    and c
    add b
    ld [c], a
    jr c, jr_06b_78f6

    scf
    ccf
    ld a, [de]
    ld a, d
    and $39
    ld a, a
    db $e4
    call nz, Call_06b_74c5
    add d
    ld e, e
    add c
    jp c, $e86b

    ld c, c
    add b
    ld [bc], a
    db $e3
    add d
    ldh [$98], a
    nop
    pop hl
    ld [hl], $48
    ld c, [hl]
    dec sp
    ld c, c
    ld b, h
    ld a, [hl-]
    and $3a
    dec b
    ld c, $3a
    and b
    cp $c5
    ld [hl], b
    ld a, h
    add h
    sbc b
    ld l, c
    ld c, c
    add b
    ld [bc], a
    db $e3

jr_06b_78eb:
    sbc b
    sbc b
    sub a
    ld b, h
    and b
    rst $38
    ld b, $43
    ld c, d
    ld h, b
    ld h, c

jr_06b_78f6:
    ld h, c
    ld e, h
    inc a
    ld [bc], a
    ld a, a
    rst $20
    ld [$e1a7], sp
    cp $ca
    db $fc
    add l
    xor a
    ld h, l
    add d
    ret nz

    sbc c
    ret nz

    ld sp, hl
    sub a
    rst $38
    ldh [$7f], a
    pop hl
    ld c, a
    ld h, c
    ld h, c
    ld h, c
    ld d, l
    ld e, [hl]
    ld a, d
    push bc
    dec [hl]
    dec [hl]
    ld a, $06
    and $e1
    sbc b
    db $fc
    and c
    ld [hl], b
    ld a, [hl]
    call Call_06b_65af
    ld b, d
    ret nz

    db $db
    ldh [$96], a
    sub [hl]
    sub [hl]
    cp a
    ldh [$cb], a
    sbc c
    ld a, [bc]
    ret nz

    pop hl
    ld d, [hl]
    ld a, [$c0a4]
    pop hl
    ld a, [bc]
    sub a
    ld b, $e5
    ldh [$97], a
    sbc b
    ld a, e
    and b
    ld a, [hl]
    pop bc
    ccf
    and d
    add h
    add a
    jr nc, jr_06b_78eb

    ld a, $02
    ret nz

    ld [$9a98], sp
    sub [hl]
    sub l
    jp c, $13e0

    and b
    db $dd
    ld c, e
    add b
    ldh [$61], a
    ld d, d
    ld [hl], $c0
    rst $20
    sbc b
    sub a
    rra
    sub l
    sub l
    sub a
    sbc b
    ld [$c33e], sp
    ccf
    xor h
    add a
    ld h, d
    sbc h
    add b
    db $e3
    sbc d
    ld [c], a
    inc b
    inc bc
    ld c, b
    ld bc, $7fe0
    ldh [rSCX], a
    ret nz

    add hl, sp
    and c
    ret nz

    push hl
    add b
    add sp, $3f
    xor h
    ld l, b
    ld h, d
    add d
    and b
    ld a, [bc]
    sbc c
    add d
    nop
    db $e3
    ld [bc], a
    jp nz, $ffc1

    jp nz, $a0c1

    ccf
    add $e6
    pop bc
    ld a, [bc]
    ret nz

    cp [hl]
    and e
    ccf
    xor h
    ld l, b
    ld h, d
    ret nz

    pop bc
    ld d, e
    ld h, b
    pop bc
    pop bc
    ld b, $4a
    inc e
    pop bc
    ld [c], a
    ld b, c
    rst $20
    dec [hl]
    ld b, d
    ld [$60ad], sp
    ld [hl], a
    ld h, b
    ret nz

    jp nz, Jump_06b_42e2

    or [hl]
    inc c
    adc h
    ld h, d
    jp nz, $c1c4

    jp hl


    dec [hl]
    add hl, sp
    ld [bc], a
    dec de
    dec c
    dec c
    ldh a, [$60]
    sbc c
    inc c
    cp $82
    sub $28
    adc b
    daa
    db $f4
    add b
    db $e3
    cp a
    ld [c], a
    ld b, $02
    ret nz

    ld d, h
    ld d, e
    ld d, b
    ld [hl], $fb
    jr c, jr_06b_7a1a

    ld bc, $35e4
    ld a, [hl-]
    scf
    dec bc
    dec bc
    ld bc, $ec05
    ld b, b
    add b
    db $e4
    ld d, d
    ld hl, $25f7
    ld b, [hl]
    ld [hl+], a
    adc c
    jr nz, jr_06b_79f3

jr_06b_79f3:
    ld [c], a
    or $90
    ld b, d
    sbc c
    ld c, $81
    ret nz

    ld e, l
    ld c, h
    ld d, d
    ld b, e
    scf
    ld a, [hl+]
    cpl
    ld a, [hl+]
    db $fd
    and [hl]
    dec sp
    ld [hl], $f5
    ld b, c
    nop
    db $e3
    ret nz

    sub h
    ld [hl+], a
    rst $30
    inc h
    adc b
    inc hl
    ld b, b
    and e
    add l
    ld h, d
    sub [hl]
    add d
    ld c, d
    ld h, b

jr_06b_7a1a:
    rst $38
    ld d, a
    ld h, c
    ld c, h
    ld e, d
    jr nc, @+$22

    jr nc, jr_06b_7a61

    ld b, $bc
    add [hl]
    dec d
    rrca
    db $fc
    ld h, e
    nop
    ld a, [c]
    ld b, b
    and e
    db $db
    ret nz

    cp a
    db $e3
    rst $10
    ld c, $05
    ld e, e
    ld a, $a0
    ld d, [hl]
    add b
    rst $20
    jr c, jr_06b_7a74

    and e
    inc bc
    inc b
    xor $21
    nop
    call nz, $9402
    ld b, $87
    ld b, h
    sbc c
    rst $38
    sbc c
    jr jr_06b_7a61

    rlca
    rla
    ld c, e
    ld h, c
    ld d, h
    ld bc, $bf44
    and l
    add d
    ld [c], a
    db $ed
    jr nz, @-$7e

    xor c
    ld c, l
    ld b, $c5
    inc bc

jr_06b_7a61:
    nop
    db $e3
    db $fc
    ld [$8442], sp
    jr nz, jr_06b_7a6b

    dec bc
    ld b, [hl]

jr_06b_7a6b:
    ld b, e
    ld d, e
    ld d, e
    dec e
    ld b, l
    cp l
    add $36
    ld [bc], a

jr_06b_7a74:
    rrca
    ld h, [hl]
    jp nz, $b280

    add b
    jp z, Jump_06b_4778

    inc hl
    rst $08
    jr nz, jr_06b_7afe

    ld bc, $7a79
    ld a, h
    ld a, l
    ld a, h
    and e
    ld b, $fd
    ld h, b
    sbc d
    sub a
    nop
    push bc
    cp a
    ld c, h
    nop
    and l
    nop
    pop bc
    cp $a3
    cp $cf
    jr nz, jr_06b_7ab2

    ld b, e
    ld b, e
    ld b, l
    ld a, c
    ld a, [hl]

Jump_06b_7aa0:
    ld b, [hl]
    rst $28
    ld b, [hl]
    adc [hl]
    ld a, h
    ld a, l
    ld sp, hl
    add c
    ld a, [hl-]
    dec b
    sbc c
    ret nz

    xor b
    add b
    nop
    jp nz, $4ebf

jr_06b_7ab2:
    nop
    and l
    add b
    db $e4
    push de
    ld h, c
    dec c
    ld [bc], a
    db $fd
    ld b, l
    pop bc
    ld [c], a
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld a, a
    ld a, l
    ld b, $b1
    ld b, b
    inc a
    inc c
    db $ed
    ld bc, $9040
    adc b
    jr nz, jr_06b_7ad0

jr_06b_7ad0:
    and a
    add $21
    ccf
    add hl, bc
    inc b
    rrca

jr_06b_7ad7:
    rrca
    ld [bc], a
    dec bc
    ret z

    ldh [$82], a
    pop hl
    ld d, $c0
    pop hl
    ld b, [hl]
    add c
    ld sp, $4041
    ld a, d
    ld hl, $a400
    add d
    ld l, c
    ld hl, sp-$78
    jr nz, jr_06b_7af0

jr_06b_7af0:
    and l
    db $d3
    nop
    rrca
    ld [bc], a
    ld b, a
    ld c, h
    ld d, d
    rst $38
    ld [bc], a
    ld [bc], a
    ld [hl], $35
    ld b, d

jr_06b_7afe:
    ld b, [hl]
    ld b, [hl]
    add b
    nop
    db $fd
    jp nz, $e1c0

    ld [hl], b
    ld b, c
    ret nz

    ldh [$c0], a
    push bc
    ld b, l
    xor d
    add h
    dec b
    ret nz

    and e
    xor e
    ld b, $47
    ld b, a
    ld h, b
    ld d, l
    ld [$4480], sp
    ret nz

    db $ec
    inc a
    pop bc
    inc c
    db $fd
    ld b, b
    add b
    and h
    adc l
    ld h, d
    inc a
    ld a, [bc]
    ld b, b
    and [hl]
    dec b
    ld e, [hl]
    ld l, [hl]
    add a
    ld h, c
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]
    ld [$82e0], sp
    add e
    ld a, a
    db $e3
    inc bc
    add e
    add h
    jr c, jr_06b_7b5d

    ret nz

    ret nz

    rst $38
    ld b, e
    ret nz

    ld b, [hl]
    dec sp
    ld l, h
    ld b, b
    and e
    cp l
    inc c
    ret nz

    pop hl
    ld h, c
    ld a, $35
    add hl, sp
    dec [hl]
    jr nz, jr_06b_7ad7

    ld e, e
    add a
    adc c
    cp [hl]
    ld [c], a
    adc d
    add l
    ld [hl], c
    jr nz, jr_06b_7b9a

    db $e3

jr_06b_7b5d:
    ld h, b
    and e
    dec c
    dec c
    add b
    xor [hl]
    dec sp
    rst $20
    ld b, b
    and d
    sbc c
    ld b, a
    ld h, d
    ld e, b
    ld a, e
    add hl, sp
    ld [hl], $c9
    pop bc
    ld c, d
    ld b, a
    add l
    add [hl]
    ld a, l
    ldh [$3c], a
    add c
    ld [c], a
    dec a
    ld b, b

Jump_06b_7b7b:
    rrca
    dec c
    ld [bc], a
    ld [$6340], sp
    ld bc, $e869
    add hl, sp
    ld b, [hl]
    nop
    db $e4
    push bc
    ld h, d
    ld d, d
    adc d
    pop bc
    ld b, l
    ld c, e
    ld h, c
    ccf
    ld d, d
    add l
    add a
    adc b
    adc b
    add a
    add c
    pop hl
    or h

jr_06b_7b9a:
    nop
    rrca
    inc bc
    inc bc
    ld b, l
    ld [$43c0], sp
    ld b, b
    inc bc
    ccf
    ld b, e
    add hl, sp
    ld b, c
    db $ec
    ret nz

    ld b, l
    ld e, d
    ld [bc], a
    ld d, d
    ld d, a
    ld b, l
    ld b, b
    ld d, h
    ld c, b
    ld b, l
    cp l
    ld b, [hl]
    db $fd
    ld hl, $494c
    ld b, l
    ccf
    db $fc
    ld b, l
    dec sp
    add a
    ld [hl], $05
    ld c, $80
    ld h, e
    ld b, b
    dec c
    ret nz

    ld b, l
    ld b, e
    ld bc, $3718
    inc b
    inc bc
    ld d, d
    add h
    ld b, c
    ld c, c
    ld c, b
    ld a, l
    ld b, e
    inc a
    ld b, a
    rlca
    ld [hl], $45
    ld b, $c0
    inc h
    ld b, b
    dec c
    ret nz

    and l
    ld b, d
    ld bc, $205a
    or l
    ld [bc], a
    cp a
    ld [c], a
    ld h, b
    ld a, l
    ld b, c
    ld d, d
    ld b, l
    cp h
    ld h, $3a
    db $e3
    ld b, l
    ld [bc], a
    ld b, b
    dec h
    push bc
    dec c
    ret nz

    and d
    sbc a
    ret nc

    ld b, [hl]
    set 0, [hl]
    rst $00
    ccf
    ld hl, $bf98
    db $e4
    cp [hl]
    ld hl, $4445
    ld a, d
    inc a
    ld h, $3a
    add c
    ldh [$c6], a
    rst $00
    ld b, [hl]
    ret nc

    ld a, a
    ld bc, $7c7c
    add hl, bc
    add b
    dec h
    and b
    db $d3
    ret nc

    call nz, Call_06b_7fc5
    ldh [$9c], a
    add b
    nop
    cp a
    and $55
    ld b, l
    ld b, e
    cp $45
    ld a, [hl]
    ld h, b
    dec b
    rra
    dec b
    call nz, $d0c5
    db $d3
    ret z

    inc b
    ret


    and $b3
    inc b
    jp c, Jump_000_00b4

    jp nc, Jump_000_03be

    sub a
    sbc d
    ld a, [hl]
    ldh [rHDMA3], a
    ld d, h
    ld l, $79
    jp nz, Jump_06b_4543

    ld b, l
    cp l
    inc h
    and e
    cp e
    nop
    sbc $c0
    ld [hl], c
    jp nc, Jump_000_0586

    cp h
    xor a
    ld a, $05
    sbc d
    sub a
    sub a
    ld [bc], a
    add b
    inc bc
    ld b, l

jr_06b_7c63:
    ld d, d
    ld a, [hl-]
    jp $80bd


    ld a, [hl-]
    dec h
    xor h
    and c
    add d
    ld b, d
    ret nz

    ld a, [bc]
    jr nz, jr_06b_7c63

    daa
    cp $c0
    cp h
    ld bc, $c1ff
    jp $5b61


    pop bc
    add l
    cp a
    ldh [rNR41], a
    add d
    ldh [$2d], a
    and d
    ld [bc], a
    push hl
    cp h
    dec l
    xor a
    inc bc
    db $d3
    cp a
    ldh [$3c], a
    nop
    nop
    sbc d
    ld b, c
    cp $ea
    ld a, [hl]
    db $e3
    dec l
    and b
    ld [bc], a
    ldh [$82], a
    dec l
    cp a
    inc hl
    cpl
    ld h, h
    ld [bc], a
    cp a
    pop hl
    ld b, $01
    ld b, b
    ret nz

    db $ec
    dec a
    ld [c], a
    xor [hl]
    add b
    pop bc
    db $e3
    ld b, d
    xor d
    sbc b
    ld a, l
    inc h
    xor a
    dec b
    ld a, [hl]
    ldh [rTIMA], a
    ld c, $81
    db $ed
    inc [hl]
    and c
    ld a, [hl-]
    ld b, b
    jp nz, $82c0

    db $e4
    ld b, d
    and h
    add d
    ld c, d
    xor a
    ld b, $3d
    ldh [rSC], a
    add c
    xor $00
    ld h, [hl]
    and b
    xor [hl]
    add b
    ld b, e
    ld [c], a
    ld d, d
    ld h, l
    cp e
    db $10
    rst $28
    inc bc
    db $fc
    pop bc
    ret nz

    ldh a, [rSB]
    ld b, l
    pop bc
    db $e3
    ld d, d
    ld h, [hl]
    ld a, e
    db $10
    rst $28
    ld bc, $60ab
    cp a
    db $f4
    rst $00
    and c
    nop
    adc [hl]
    ld h, b
    add hl, bc
    ret nc

    ld [hl], h
    dec b
    scf
    ld h, l
    ld a, [hl]
    ld a, [c]
    add [hl]
    ret nc

    add l
    db $ec
    and [hl]
    rst $00
    nop
    dec a
    ldh a, [rBGP]
    call nz, $cd85
    pop bc
    ld [$c7a6], sp
    db $fc
    ret nc

    ld [$e1c1], sp
    pop bc
    nop
    ld c, b
    inc h
    ld b, h
    ld b, [hl]
    or l
    inc c
    ld l, c
    inc hl
    or h
    ld b, b
    cp e
    call z, $a2c9
    rst $08
    add c
    jr nc, jr_06b_7d6d

    ld h, $be
    di
    ld l, c
    inc hl
    and [hl]
    add c
    db $d3
    pop de
    rst $38
    jp hl


    adc d
    and d
    nop
    jr jr_06b_7d76

    ld c, b
    dec h
    cp $8e
    ld l, [hl]
    jp hl


    sbc l
    pop de
    call $ff95
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06b_7d6d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06b_7d76:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06b_7d82:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06b_7e29:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06b_7e4b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06b_7e60:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06b_7f06:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06b_7f20:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06b_7fc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_06b_7fc5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06b_7fe2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
