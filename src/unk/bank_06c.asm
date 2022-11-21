INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06c", ROMX[$4000], BANK[$6c]

    inc c
    ld b, b
    ld a, [c]
    ld c, d
    db $fd
    ld d, h
    jp nc, $cf5c

    ld h, [hl]
    ld h, [hl]
    ld [hl], d
    inc d
    ld b, b
    call nc, $d443
    ld c, b
    di
    ld c, b
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $f9
    sub e
    ld c, l
    ld c, l
    db $fc
    db $e3
    db $d3
    pop hl
    dec c
    db $f4
    db $e4
    ld a, [c]
    db $e3
    ld c, $00
    pop bc
    db $e3
    or $fb
    jp nc, $c0e2

    db $e3
    sub b
    ldh [$c4], a
    db $ed
    ld a, e
    rst $38
    adc d
    pop hl
    ld [hl], $c8

Jump_06c_403f:
    ldh [$0d], a
    ld c, l
    rst $38
    ldh [$2d], a
    dec l

Jump_06c_4046:
    ld a, [$84e0]
    db $e4
    ld hl, sp-$7b
    rst $38
    ld h, a
    db $e3
    ld c, d
    ld [c], a
    ld c, l
    dec c
    ld l, l
    dec bc
    dec hl
    rra
    dec bc
    dec bc
    dec bc
    ld c, l
    dec l
    ld b, e
    pop hl
    add l
    rst $38
    db $ec
    rst $00
    inc a
    ld c, d
    db $e3
    pop bc
    pop hl
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    cp a
    pop hl
    nop
    rst $38
    db $ec
    db $ec
    bit 0, a
    ldh [$0d], a
    ld l, l
    jp nz, $0ae1

    ld a, [bc]
    ld a, [hl+]
    db $e3
    ld c, e
    dec bc
    ld a, a
    pop hl
    nop
    rst $38
    nop
    db $ec
    ld l, l
    dec c
    ld c, d
    inc bc
    ld c, d
    ld a, [hl+]
    ld b, c
    ldh [$3d], a
    ldh [$c0], a
    and $85
    rst $38
    ld h, a
    jp $c246


    rla
    dec bc
    ld l, e
    ld c, e
    ld [bc], a
    ldh [rOCPD], a
    ld a, [$80e0]
    ld [c], a
    add l
    rst $38
    inc b
    db $ec
    xor h
    call nz, $4be0
    jp nz, $bbe0

    ldh [rP1], a
    rst $38
    nop
    rst $28
    pop bc
    ldh [$8c], a
    ld b, h
    ld [c], a
    ld a, a
    ret nz

    dec c
    ld l, l
    nop
    rst $38
    db $ec
    db $ec
    ret nz

    db $e3
    dec hl
    rrca
    dec hl
    dec bc
    dec hl
    ld c, e
    pop bc
    pop hl
    nop
    rst $38
    nop
    db $ec
    inc bc
    ret nz

    ld a, $40
    ldh [$2b], a
    dec bc
    ld a, [bc]
    dec hl
    dec c
    add d
    jp nz, $ff85

    ret nz

    db $ec
    ldh a, [$c2]
    and c
    ret nz

    db $e4
    set 4, e
    nop
    rst $38
    ld [c], a
    rst $20
    ld c, l
    dec l
    ld b, e
    dec c
    dec c
    ret nz

    jp hl


    nop
    rst $38
    db $ec
    db $eb
    rlca
    and b
    dec c

Jump_06c_40f5:
    ld b, b
    ret nz

    pop bc
    ld l, e
    add d
    jp $e4c0


    add l
    rst $38
    nop
    and $9b
    pop hl
    dec hl
    ld c, e
    ld bc, $bc6b
    ldh [$80], a
    db $e4
    add l
    rst $38
    nop
    adc h
    pop bc
    pop hl
    cp [hl]
    and c
    nop
    rst $38
    adc h
    nop
    or c
    ret nz

    pop hl
    ld l, e
    dec c
    dec a
    pop hl
    nop
    rst $38
    nop
    di
    dec c
    ld a, a
    ld l, e
    dec hl
    dec bc
    dec c
    dec c
    ld l, e
    ld c, e
    nop
    rst $38
    nop
    nop
    or c
    add b
    add c
    add l
    and b
    ld sp, hl
    add b
    ld [hl], a
    ret nz

    pop bc
    xor b
    add l
    rst $38
    ld [c], a
    db $e4
    add c
    ld l, l
    add d
    and b
    ld a, [hl]
    and b
    ret nz

    push hl
    nop
    rst $38
    nop
    xor h
    inc b
    pop hl
    ld a, [bc]
    nop
    cp a
    pop hl
    add b
    db $e4
    nop
    rst $38
    ld [c], a
    add sp, -$38
    ld b, c
    jp $c083


    ld [c], a
    cp c
    ld b, d
    ld [$ff00], sp
    ld [c], a
    push hl
    ret


    ld b, c
    dec c
    ld b, c
    pop hl
    ret nz

    db $e3
    jp nz, $85c2

    rst $38
    ld [$8685], sp
    inc bc
    ld b, d
    ld b, e
    and c
    ld a, [bc]
    ret nz

    ld h, c
    ret nz

    ld b, b
    add d
    push hl
    nop
    rst $38
    inc b
    rst $00

Jump_06c_4180:
    ld h, $80
    ldh [rWX], a
    ld b, h
    and b
    add c
    ld h, e
    nop
    rst $38
    add l
    and $83
    ld h, $06
    rlca
    ret nz

    dec hl
    dec bc
    add b
    ld h, c
    ld bc, $c060
    and $85
    cp $87
    and d
    ld [bc], a
    ld bc, $6de2
    add d
    pop hl
    db $fd
    ld b, e
    add b
    db $e3
    ld a, [bc]
    cp $14
    inc hl
    adc c
    ld hl, $0d2f
    ld l, l
    ld l, l
    ld l, l
    ld b, b
    ld h, d
    ld l, e
    ld a, [hl-]
    ld h, c
    db $76
    ld b, b
    nop
    nop
    cp $5d
    and e
    rlca
    ld b, l
    ld a, [bc]
    ld [hl+], a
    add e
    ld b, d
    cp e
    ld b, b
    ld [bc], a
    ld h, h
    nop
    rst $30
    jr jr_06c_421e

    jp nz, $c50a

    pop bc
    and $0b
    ld c, e
    ld [bc], a
    ldh [$c1], a
    db $e3
    ret nz

    add a
    db $10
    inc d
    ld [hl], h
    ld h, e
    ld b, d
    adc $81
    ret nc

    ld bc, $0b6d
    and c
    ld b, d
    ld b, d
    add d
    ld b, d
    add b
    db $f4
    ld h, l
    nop
    jp c, $81d1

    rrca
    ld hl, $424b
    ret nz

    ld [c], a
    add e
    pop hl
    dec hl
    nop
    ld a, a
    ld h, b
    ld b, d
    jp hl


    nop
    rst $10
    adc l
    and d
    pop bc
    rst $20
    adc c
    nop
    dec b
    add b
    ld a, a
    jr nz, jr_06c_425b

    or [hl]
    ret nz

    ld b, d
    push hl
    nop
    reti


    ld d, c
    ld b, d
    ld c, l
    add d
    rst $20
    dec bc
    add $61
    nop
    pop bc
    ld h, d
    dec b
    ld b, b

jr_06c_421e:
    ld b, h
    inc hl
    nop
    ld hl, sp-$2c
    ld h, d
    ld e, h
    jp nz, Jump_000_20d2

    dec b
    db $e3
    ld bc, $c02b
    add d
    add c
    ld h, b
    inc b
    rst $20
    inc d
    or [hl]
    call nc, $cc63
    call nz, Call_000_208d
    ld [bc], a
    adc e
    jr nz, jr_06c_4248

    add a
    ld [hl+], a
    ld b, d
    ld h, b
    add l
    ld h, b
    adc $8b
    sbc c
    ld d, d

jr_06c_4248:
    ld c, $c0
    nop
    sub [hl]
    ld h, e
    rst $38
    db $e3
    ld c, d
    ld b, d
    jp nz, $b8e1

    and b
    jp z, $ce86

    ld l, c
    ld a, e
    add l

jr_06c_425b:
    jr nz, @-$68

    add h
    pop bc
    ld [c], a
    ld c, l
    pop hl
    ret nz

    db $e3
    ld c, a
    nop
    ld l, e
    ld c, e
    nop
    pop bc
    ld [c], a
    or b
    ld b, [hl]
    rst $00
    nop
    or d
    ld b, e
    and $97
    ld bc, $0d6b
    sub b
    add c
    ld a, [bc]
    inc b
    add $e0
    ld a, [bc]
    ld b, b
    dec l
    rst $38
    pop hl
    add d
    db $e4
    add l
    sub e
    add hl, de
    add e
    sub $04
    nop
    pop bc
    ld [c], a
    adc a
    ld h, d
    ld b, [hl]
    ldh [$87], a
    ld [c], a
    and $c4
    ld b, l
    ld h, a
    nop
    adc l
    ld c, e
    and h
    nop
    add hl, bc
    jp $e181


    ld b, $e1
    dec c
    add b
    rlca
    pop bc
    ld c, b
    pop hl
    dec [hl]
    add e
    adc $72
    inc b
    sbc c
    ld h, h
    sub b
    add h
    ld l, l
    ld d, [hl]
    ld h, b
    sub [hl]
    ld b, c
    jp nz, Jump_000_06c4

    ldh [$0e], a
    and h
    ld [$aa0a], sp
    nop
    adc a
    jp c, Jump_06c_6d44

    ld e, d
    nop
    call nz, $c1e5
    push hl
    rrca
    ld b, l
    nop
    ld a, [bc]
    ld h, l
    add l
    xor $05
    push hl
    ld b, [hl]
    pop bc
    jp Jump_06c_52e8


    ld h, c
    sub b
    add c
    add h
    push hl
    nop
    add l
    call Call_06c_6300
    ld h, c
    ld h, d
    ld [$93c3], sp
    add b
    sbc l
    ld h, e
    ld b, h
    push hl
    ret nc

    add l
    nop
    ld a, [hl-]
    ld b, a
    adc $30
    ld e, l
    ld h, e
    xor c
    ld h, d
    ld [$14e7], sp
    ld h, e
    inc b
    rst $20
    ld e, l
    ld d, $00
    ld c, $a8
    ldh [rNR43], a
    jp z, $8fa6

    ld h, b
    inc b
    push hl
    ret c

    ld [hl], $8f

jr_06c_430c:
    ld h, a
    inc d
    add h
    add b
    adc b
    call nz, $e33b
    inc b
    db $e3
    ld a, [bc]
    rst $28
    nop
    xor l
    ld c, l
    and h
    inc c
    push hl
    ld c, e
    ld [bc], a
    db $fc
    push bc
    dec l
    inc d
    adc a
    adc $2f
    ld h, h
    inc bc
    adc h
    jp z, $c4bd

    sub c
    add b
    nop
    inc d
    adc h
    nop
    ld a, [c]
    ld h, h
    ld bc, $8594
    ld sp, hl
    ld [$0096], a
    ld h, a
    rra
    ld [hl], c
    ld h, h
    nop
    add $c7
    pop bc
    rst $20
    sub d
    ld h, d
    ld h, a
    ld e, $bd
    ld [bc], a
    add a
    jp $ebbe


    ld d, [hl]
    ld b, e
    nop
    ld e, l
    dec de
    ret nz

    rst $20
    ld h, e
    ld b, d
    ld b, e
    jp Jump_06c_448a


    ld b, h
    add $53
    jr jr_06c_430c

    and h
    add b
    pop de
    add e
    ld sp, hl
    and $f7
    add e
    ld a, $24
    ld e, l
    ld a, [de]
    nop
    and e
    adc c
    xor b
    dec hl
    nop
    add d
    pop hl
    pop bc
    db $e4
    adc a
    sub h
    nop
    ld l, a
    and e
    ld hl, $a3cf
    cp a
    ld [c], a
    add d
    push hl
    nop
    adc a
    sub c
    or $cf
    ret nz

    db $e3

Jump_06c_438a:
    ld h, [hl]
    inc bc
    sub d
    ld b, b
    ld d, $61
    ld d, l
    ld h, b
    db $fc
    dec b
    inc c
    add l
    ret c

    nop
    rst $00
    ld c, l
    dec l
    dec h
    inc b
    pop bc
    pop hl
    ld h, b
    ld [bc], a
    sbc d
    daa
    add b
    nop
    rst $38
    adc $01
    cp a
    db $e4
    pop bc
    db $e3
    inc c
    and h
    inc d
    ld l, l
    nop
    cp c
    ld c, l
    nop
    sbc a
    ld b, d
    sbc d
    ld b, l
    ret nz

    rst $20
    add l
    cp c
    add sp, -$59
    and d
    ld b, e
    ld a, [$d5e5]
    ld h, [hl]
    nop
    add l
    cp h
    nop
    xor b
    jp nz, $fc42

    push hl
    sub l
    ld l, c
    nop
    db $dd
    nop
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    ld a, e
    db $e3
    db $e4
    or $fb
    and b
    and b
    ret c

    reti


    db $fc
    pop hl
    sbc a
    db $ed
    xor $d4
    push de
    rst $28
    db $f4
    ld [c], a
    adc $e3
    push hl
    rst $38
    and $e7
    and b
    add sp, -$17
    ld [$eceb], a
    db $fd
    and b
    or $fb
    ret nc

    pop de
    jp c, $a0db

    and b
    ld a, a
    jp c, $f0db

    pop af
    ld a, [c]
    di
    db $f4

Jump_06c_440e:
    ld hl, sp-$20
    rst $00
    sub $d7
    and b
    adc $e2
    add l
    rst $38
    ld h, a
    pop hl
    and b
    and b
    rst $38
    jp nc, $a0d3

    push af
    or $a0
    sbc a
    sbc l
    ld [hl], $ff
    ldh [$a2], a
    sbc a
    ldh a, [$e0]
    ret c

    reti


    ld c, c
    db $e3
    add l
    rst $38
    db $fc
    ld h, a
    pop hl
    ld c, d
    db $e3
    and b
    sbc a
    sbc h
    ld b, [hl]
    ld b, l
    ld b, l
    ccf
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc a
    and b
    rst $10
    ld [hl], d
    ldh [rOBP1], a
    ld [c], a
    ldh a, [rP1]
    rst $38
    ld [c], a
    pop hl
    ld c, d
    db $e3
    pop bc
    pop hl
    ld b, a
    ld c, c
    ld c, [hl]
    ld c, b
    pop hl
    ld b, l
    cp a
    ldh [rP1], a
    rst $38
    db $ec
    db $eb
    dec a
    ldh [$9f], a
    sbc h
    ld b, l
    rst $38
    ld c, b
    ld c, b
    ld d, e
    ld e, c
    ld e, c
    ld d, e
    ld b, l
    ld b, [hl]
    di
    sbc [hl]
    and b
    nop
    rst $38
    db $ec
    db $eb
    sub $d7
    sbc a
    sbc h
    rst $38
    or d
    ld d, c
    ld e, [hl]
    ld d, d
    dec hl
    ld sp, $2a2c
    ldh a, [$c0]
    pop hl
    nop
    rst $38
    ld h, a
    ld [$c042], a
    and c
    or d

Jump_06c_448a:
    ld b, [hl]
    ld b, l
    rra
    ld b, e
    ld a, [hl+]
    jr nz, @+$22

    cpl
    ret nz

    ld [c], a
    nop

jr_06c_4495:
    rst $38
    db $ec
    db $eb
    rst $38
    jp c, $9edb

    or d
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld a, [hl+]
    sub a
    ld h, $21
    ld b, d
    cp [hl]
    ret nz

    sbc [hl]
    nop
    rst $38
    nop
    xor $9e
    dec a
    ld b, [hl]
    rst $38
    ldh [$39], a
    dec [hl]
    dec [hl]
    add hl, sp
    ld a, a
    jp nz, $ff00

    ld a, h
    db $ec
    db $eb
    ret nz

    db $e3
    ld b, l
    ld a, [hl-]
    rst $08
    rst $08
    add hl, sp
    ld b, b
    pop bc
    ldh a, [rP1]
    rst $38
    nop
    db $ec
    add b
    ldh [rLCDC], a
    ldh [rSCY], a
    rst $08
    set 1, [hl]
    rst $00
    or d
    ld b, [hl]
    and c
    add d
    ldh [rP1], a
    rst $38
    db $ec
    db $eb
    sub $d7
    ld a, a
    sbc [hl]
    or d
    xor [hl]
    ld b, [hl]
    ld b, b
    adc $cc
    ret nz

    ldh [$f8], a
    add d
    pop bc
    nop
    rst $38
    db $ec
    db $eb
    ret c

    reti


    sbc a
    sbc h
    xor a
    inc bc
    xor [hl]
    add hl, sp
    ret nz

    db $e4
    db $f4
    add c
    nop
    rst $38
    ld h, a
    jp hl


    jp nz, $bf80

    ldh [$5f], a
    ld a, $ce
    call z, $40cf
    add d
    jp nz, Jump_06c_49a0

    db $e4
    jr nc, jr_06c_4495

    rst $38
    nop
    push hl
    ld a, $e1
    pop bc
    ret nz

    cp e
    ld b, h
    add d
    and h
    nop
    rst $38
    ld a, $00
    adc l
    sbc [hl]
    ld b, h
    inc a
    jr c, jr_06c_455d

    ld b, b
    ret nz

    nop
    rst $38
    db $fc
    nop
    or c
    cp [hl]
    and b
    add hl, sp
    inc a
    or d
    or d
    ld [hl], $3a
    ld sp, hl
    ld b, l
    nop
    rst $38
    nop
    or c
    and b
    and b
    and c
    add hl, sp
    dec [hl]
    rrca
    add hl, sp
    or d
    xor [hl]
    ld [hl], $c0

Call_06c_4545:
    ldh [rP1], a
    rst $38
    nop
    xor a
    ld [bc], a
    add b
    rst $38
    add hl, sp
    dec [hl]
    ld a, [hl-]
    or d
    xor a
    xor [hl]
    ld b, [hl]
    sbc [hl]
    adc a
    push af
    or $d0
    pop de
    nop
    rst $38
    nop

jr_06c_455d:
    xor h
    ld b, c
    add b
    ld a, [hl-]
    rra
    dec [hl]
    dec [hl]
    dec sp
    ld [hl], $af
    ld [bc], a
    and c
    ld [hl], c
    ld h, b
    nop
    rst $38
    cp $00
    xor h
    or d
    or d
    inc a
    dec [hl]
    set 1, a
    rst $08
    rst $00
    ld [hl], $b2
    sbc [hl]
    ld [hl], c

Jump_06c_457c:
jr_06c_457c:
    ld h, h
    nop
    rst $38
    ld [c], a
    rst $20
    push af
    or $6b
    sbc [hl]
    or d
    jp Jump_000_3580


    rst $38
    and b
    or d
    sbc [hl]
    cp e
    ld b, d
    jr jr_06c_4591

jr_06c_4591:
    rst $38
    nop
    xor h
    ld b, c
    pop hl
    rst $08
    call z, $a03f
    ret nz

    jp $ff00


    db $f4
    add l
    add [hl]
    jp $a0a1


    ld [bc], a
    ret nz

    dec [hl]
    set 1, [hl]
    call z, Call_06c_7fc0
    and b
    ld bc, $0062
    rst $38
    add l
    ld h, l
    dec d
    add c
    jp $9e20


    add hl, sp
    dec de
    ld a, [hl-]

Jump_06c_45bb:
    ld a, [hl-]

jr_06c_45bc:
    ld b, c
    pop hl
    ld [hl], $45
    ld a, a
    add d
    nop
    rst $18
    add l
    db $e3
    di
    db $e3
    db $e4
    add a
    ld hl, $20c3
    sbc [hl]
    add hl, sp
    add hl, sp
    ld a, [hl-]

jr_06c_45d1:
    ld hl, $c135
    ret nz

    add c
    ld h, d
    ld [hl], e
    jr nz, jr_06c_45da

jr_06c_45da:
    rst $38
    and b
    adc d
    jr nz, @-$77

    and d
    ld b, $82
    ld b, e
    ld b, h
    ld [hl], $c0
    ret nz

    pop bc
    pop hl
    ld a, a
    add h
    nop
    ei
    sbc h
    and d
    ld a, h
    adc d
    jr nz, jr_06c_457c

    ld [hl+], a
    and d
    sbc l
    sbc l
    sbc h
    or d
    pop bc
    pop hl
    add c
    inc a
    ei
    ld b, b
    add b
    ld h, d
    nop
    db $fd
    rrca
    ld b, c
    adc d
    inc h
    adc c
    jr nz, jr_06c_45bc

    ld l, a
    xor [hl]
    or d
    or d
    or d
    jp nz, Jump_000_35a0

    ld [hl], $bb
    ld b, b
    ld b, b
    ld [bc], a
    ld h, h
    nop
    rst $30
    ld hl, $67a2
    ret nz

    call nc, Call_06c_4a03
    jr nz, jr_06c_45d1

    ld c, d
    and b
    rra
    or d
    ld [hl], $39
    inc a
    dec sp
    add c
    pop hl
    ld [bc], a
    ld h, e
    nop
    cp b
    ld hl, sp+$13
    add e
    ld a, [bc]
    ld b, d
    ret nc

    ld [bc], a
    sbc h
    ld b, [hl]
    xor a
    or d
    xor [hl]
    rra
    xor a
    or d
    inc a
    ld [hl], $36
    ret nz

    add b
    ld b, h
    ld b, e
    add b
    add d
    add sp, $00
    reti


    pop de
    add b
    sub c
    ld bc, $119c
    pop hl
    ld b, [hl]
    ld b, [hl]
    or d
    rst $38
    or d
    xor a
    or d
    ld [hl], $3b
    ld [hl], $ae
    ld a, [hl-]
    pop bc
    cp e
    add e
    ld b, d
    ld b, d
    db $e3
    nop
    jp c, $e29f

    pop bc
    and $ae
    scf
    ld [hl], a
    dec a
    jr c, jr_06c_46a7

    cp e
    ldh [$3c], a
    ld [hl], $b2
    ld b, d
    push hl
    ldh a, [rP1]
    sbc c
    ld h, d
    ld h, d
    adc h
    ret nz

    add d
    rst $20
    rst $08
    call $ae36
    dec de
    xor [hl]
    or d
    pop bc
    ld h, b
    sbc h
    sbc a
    ld l, c
    ldh [rSCY], a
    ldh [rOBP1], a
    and [hl]
    cp b
    inc d
    sub h
    adc h
    pop bc

jr_06c_4697:
    adc l
    ret nz

    ld b, [hl]
    ld b, l
    ccf
    ld sp, hl
    pop hl
    ld [hl], $7f
    adc $ce
    or d
    xor a
    xor a
    or d
    ld a, [hl-]

jr_06c_46a7:
    add l
    add b
    ldh [$71], a
    and e
    ld d, e
    ld h, a
    ld a, [bc]
    pop de
    sub h
    ld b, d
    pop bc
    pop hl
    or d
    scf
    jr c, jr_06c_4697

    rst $08
    call $cdcd
    rst $08
    jp z, Jump_000_3820

Jump_06c_46c0:
    jr c, @+$0f

    dec sp
    rst $38
    ret nz

    or d
    and c
    or [hl]
    ld h, d
    adc $68
    sbc c
    ld d, b
    rst $00
    jp nz, $cb38

    pop bc
    adc $a0
    sub b
    add b
    call z, $cdcc
    res 0, b
    rst $00
    ld h, b
    ld b, $3a
    ret nz

    sbc h
    sbc a
    add [hl]
    ld [hl+], a
    adc $68
    nop
    adc d
    ld e, b
    and c
    ld b, e
    db $e3
    ret c

    inc d
    ld hl, $60d0
    pop bc
    ld [c], a
    rst $08
    dec sp
    bit 4, b
    ld b, c
    ld b, e
    ret nz

    ld a, h
    ret nz

    ret z

    nop
    call nz, Call_06c_53c2
    ld c, b
    sbc c
    ld d, b
    ld c, c
    jp nz, Jump_000_3745

    ld a, [$c08e]
    ld a, [hl-]
    ld d, c
    add b
    set 1, a
    ld a, [hl-]
    or d
    scf
    dec bc
    scf
    sbc h
    rst $30
    and c
    sbc l
    add d
    db $e4
    nop
    di
    db $db
    add c
    ret nc

    add d
    ld h, $d6
    ld bc, $3645
    dec d
    and b
    ret nz

    ld [c], a
    rst $08
    adc h
    ld b, b
    ld c, d
    jp nz, Jump_06c_6380

    push hl
    adc $6b
    ld e, $48
    rst $08
    and b
    ret nc

    add c
    jp z, Jump_06c_55a2

    ld h, b
    ld [hl], $3f
    scf

jr_06c_4741:
    jr c, @+$37

    rst $08
    call $b8cf
    pop hl
    ld c, $a4
    add e
    ret nc

    pop de
    adc b
    and c
    adc $6b
    inc d
    adc c
    jp hl


    ld b, e
    adc e
    and b
    ld b, l
    ld sp, $9643
    ld b, c
    ld [de], a
    ld h, b
    db $fd
    pop hl
    ld [hl], $45
    ld c, $a5
    ld [hl], d
    add c
    ld h, b
    ld d, e
    ld c, l
    nop
    ld h, [hl]
    sbc d
    ld h, b
    ret nc

    add d
    add l
    ret nz

    ld b, l
    ld [hl], $c4
    push hl
    nop
    pop bc
    and $cc
    and b
    adc e
    ld b, h
    ld d, e
    ld c, h
    ld e, $66
    ld l, e
    and h
    pop bc
    ld [c], a
    jp nz, Jump_000_03e7

    jr c, jr_06c_47c0

    pop bc
    db $e3
    ld [hl], c
    add b
    ld [hl], d
    add e
    ret c

    dec c
    and e
    ld b, e
    dec e
    ld h, b
    ld a, [de]
    ld e, a
    ld bc, $4c9d
    and b
    ld b, [hl]
    ld b, [hl]
    ret c

    ld b, b
    add e
    rst $20
    ld [de], a
    add l
    add b
    ld a, e
    ld b, e
    xor h
    add b
    nop
    pop af
    ld h, d
    jr nz, @-$6c

    add e
    ld c, [hl]
    and b
    add c
    rst $20
    dec sp
    inc bc
    ld [hl], $41
    pop bc
    ld [c], a
    ld b, h
    jr nz, jr_06c_4818

    scf
    and e
    inc bc
    jr nc, jr_06c_4741

jr_06c_47c0:
    ld c, $a1
    ld a, [bc]
    ld d, d
    add c
    ld b, d
    ld b, [hl]
    push hl
    ld b, e
    dec d
    ld h, b
    inc b
    db $e4
    ld e, l
    scf
    ld e, $46
    nop
    inc d
    add l
    ld b, c
    db $e4
    ret c

    ld b, d
    sub h
    ld h, d
    ld c, h
    pop hl
    ld h, a
    rla
    add l
    call nz, $a34d
    inc b
    db $d3
    ld h, d
    push bc
    and b
    dec sp
    pop bc
    db $e4
    rla
    ld b, l
    adc a
    adc c
    nop
    rst $08
    ld h, h
    inc bc
    inc c

jr_06c_47f3:
    pop bc
    push hl
    rlca
    and b
    ld b, c
    ld b, e
    rlca
    ldh [$88], a
    ld h, d
    rla
    ld b, d
    ld e, l
    ld a, [hl-]
    nop
    nop
    ld hl, $0164
    ld b, e
    db $e4
    ld a, [$16eb]
    jr nz, jr_06c_4823

    ld h, b
    ld h, a
    dec e
    db $db
    jr nz, jr_06c_4818

    and c
    push bc
    jp nz, $8945

jr_06c_4818:
    db $e4
    pop bc
    and $17
    ld b, e
    ld e, l
    ld a, [de]
    reti


    ld b, b
    adc b
    db $db

jr_06c_4823:
    jr nz, jr_06c_47f3

    add b
    ld b, a
    pop bc
    and [hl]
    add hl, bc
    db $e4
    push af

jr_06c_482c:
    call nz, Call_000_21d8
    sub $f1
    rst $10
    ld [c], a
    inc e
    db $db
    ld [hl+], a
    ret nz

    pop hl
    ld b, l
    ld [hl], $62
    and a
    ld sp, $8966
    jp Jump_06c_438a


    ret c

    jr nz, @-$09

    or $00
    db $fd
    db $db
    inc hl
    ld e, l
    sbc [hl]
    pop bc
    ld [c], a
    ld h, a
    and e
    ld l, b
    cp a
    ld [c], a
    or d
    add h
    ld h, c
    ldh a, [$4c]
    add h
    nop
    db $fd
    sbc c
    inc bc
    ret nz

    ldh [rSCY], a
    xor b
    xor c
    ld l, h
    inc bc
    dec [hl]
    dec [hl]
    cp a
    pop hl
    ld e, l
    jr nz, jr_06c_482c

    db $e4
    ld b, [hl]
    ld bc, $f785
    nop
    ret z

    cp $80
    ld [c], a
    ld l, [hl]
    ld l, a
    ld l, h
    dec [hl]
    and e
    xor d
    xor e
    add b
    cp a
    ldh [$82], a
    push hl
    rla
    ld b, d
    nop
    ei
    nop
    jp $e040


    cp a
    db $e3
    ld l, h
    inc bc
    ld l, a
    ld l, [hl]
    ld a, a
    ldh [rHDMA2], a
    ld h, b
    ld b, e
    push hl
    add l
    cp b
    nop
    jp z, $e4bf

    nop
    pop bc
    pop hl
    ld h, b
    inc b
    inc [hl]
    ld h, e
    add l
    cp b
    nop
    adc c
    cp a
    push hl
    pop bc
    db $e4
    ld e, b
    add c
    nop
    inc [hl]
    ld h, c
    add l
    jp c, $ab00

    sbc a
    ld b, d
    sbc d
    ld b, l
    inc [hl]
    ld h, l
    add l
    cp e
    nop
    xor b
    nop
    rst $38
    ld [$0122], a
    sub d
    ld h, e
    add l
    cp d
    nop
    xor b
    ret nz

    db $eb
    ldh a, [$e6]
    add l
    cp e
    nop
    nop
    ld [hl+], a
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
    ld bc, $2c00
    ld b, $01
    ld bc, $072b
    ld bc, $2b02
    ld [$0301], sp
    dec hl
    dec bc
    ld bc, $3204
    dec bc
    ld bc, $2b05
    inc c
    ld bc, $3206
    inc c
    ld [bc], a
    rlca
    inc l
    dec c
    ld bc, $3208
    dec c
    ld [bc], a
    add hl, bc
    dec l
    ld c, $01
    ld a, [bc]
    dec l
    rrca
    ld bc, $310b
    rrca
    ld bc, $2f0c
    ld de, $0d01
    jr nc, @+$13

    ld bc, $300e
    ld [de], a
    ld bc, $300f
    inc de
    ld [bc], a
    db $10
    ld sp, $0213
    ld de, $1432
    ld bc, $2b12
    dec d
    ld bc, $2c13
    dec d
    ld bc, $3314
    dec d
    ld bc, $2b15
    ld d, $01
    ld d, $33
    ld d, $01
    rla
    inc sp
    rla
    ld bc, $2a18
    inc e
    ld bc, $3019
    inc e
    ld bc, $261a
    dec e
    ld bc, $281b
    dec e
    ld bc, $291c
    dec e
    ld bc, $2a1d
    dec e
    ld bc, $301e
    dec e
    ld bc, $261f
    ld e, $02
    jr nz, jr_06c_499d

    ld e, $01
    ld hl, $1e29
    ld bc, $2f22
    ld e, $02
    inc hl
    dec h
    rra
    ld bc, $2624
    rra
    ld [bc], a
    dec h
    jr z, @+$21

    ld bc, $2926
    rra
    ld bc, $1f27
    jr nz, @+$03

    jr z, @+$27

    jr nz, jr_06c_4999

    add hl, hl

jr_06c_4999:
    ld h, $20
    ld [bc], a
    ld a, [hl+]

jr_06c_499d:
    daa
    jr nz, jr_06c_49a1

Jump_06c_49a0:
    dec hl

jr_06c_49a1:
    jr z, jr_06c_49c3

    ld bc, $2e2c
    jr nz, jr_06c_49a9

    dec l

jr_06c_49a9:
    ld e, $21
    ld bc, $242e
    ld hl, $2f01
    ld a, [hl+]
    ld hl, $3001
    dec hl
    ld hl, $3102
    inc l
    ld hl, $3201
    cpl
    ld hl, $3301
    dec e
    ld [hl+], a

jr_06c_49c3:
    ld bc, $2334
    ld [hl+], a
    ld bc, $2435
    ld [hl+], a
    ld [bc], a
    ld [hl], $25
    ld [hl+], a
    ld bc, $2b37
    ld [hl+], a
    ld bc, $2e38
    ld [hl+], a
    ld bc, $1a39
    inc hl
    ld bc, $1b3a
    inc hl
    ld bc, $1c3b
    inc hl
    ld bc, $1d3c
    inc hl
    ld bc, $213d
    inc hl
    ld bc, $223e
    inc hl
    ld bc, $233f
    inc hl
    ld bc, $2440
    inc hl
    ld bc, $2841
    inc hl
    ld [bc], a
    ld b, d
    add hl, hl
    inc hl
    ld [bc], a
    ld b, e
    ld a, [hl+]
    inc hl

Call_06c_4a03:
    ld bc, $2b44
    inc hl
    ld bc, $2e45
    inc hl
    ld bc, $1946
    inc h
    ld bc, $1a47
    inc h
    ld bc, $1b48
    inc h
    ld bc, $1c49
    inc h
    ld bc, $1d4a
    inc h
    ld bc, $2e4b
    inc h
    ld bc, $1a4c
    dec h
    ld bc, $1b4d
    dec h
    ld bc, $1c4e
    dec h
    ld bc, $2c4f
    dec h
    ld [bc], a
    ld d, b
    dec l
    dec h
    ld bc, $1b51
    ld h, $01
    ld d, d
    inc e
    ld h, $01
    ld d, e
    ld a, [hl+]
    ld h, $02
    ld d, h
    dec hl
    ld h, $01
    ld d, l
    inc l
    ld h, $01
    ld d, [hl]
    ld d, $27
    ld bc, $1c57
    daa
    ld bc, $2458
    daa
    ld bc, $1559
    jr z, jr_06c_4a5d

    ld e, d

jr_06c_4a5d:
    dec de
    jr z, jr_06c_4a61

    ld e, e

jr_06c_4a61:
    inc e
    jr z, jr_06c_4a65

    ld e, h

jr_06c_4a65:
    inc h
    jr z, jr_06c_4a69

    ld e, l

jr_06c_4a69:
    dec h
    jr z, jr_06c_4a6d

    ld e, [hl]

jr_06c_4a6d:
    dec d
    add hl, hl
    ld bc, $235f
    add hl, hl
    ld bc, $2460
    add hl, hl
    ld bc, $1461
    ld a, [hl+]
    ld bc, $0d62
    ld l, $01
    ld h, e
    ld c, $2e
    ld bc, $0f64
    ld l, $01
    ld h, l
    inc c
    cpl
    ld bc, $0d66
    cpl
    ld bc, $0b67
    jr nc, jr_06c_4a95

    ld l, b

jr_06c_4a95:
    dec e
    ld [hl-], a
    ld bc, $0869
    inc sp
    ld bc, $1d6a
    inc sp
    ld bc, $076b
    inc [hl]
    ld bc, $086c
    inc [hl]
    ld bc, $1c6d
    inc [hl]
    ld bc, $076e
    dec [hl]
    ld bc, $076f
    ld [hl], $01
    ld [hl], b
    dec d
    ld [hl], $01
    ld [hl], c
    inc d
    scf
    ld bc, $1672
    scf
    ld bc, $1773
    scf
    ld bc, $1874
    scf
    ld bc, $1975
    scf
    ld bc, $1376
    jr c, jr_06c_4ad1

    ld [hl], a

jr_06c_4ad1:
    ld d, $38
    ld bc, $1778
    jr c, jr_06c_4ad9

    ld a, c

jr_06c_4ad9:
    jr jr_06c_4b13

    ld bc, $147a
    add hl, sp
    ld bc, $157b
    add hl, sp
    ld bc, $167c
    add hl, sp
    ld bc, $177d
    add hl, sp
    ld bc, $147e
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    ld a, [$b24a]
    ld c, [hl]
    and e
    ld d, e
    jp nz, Jump_000_3f53

    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $e2
    sub h
    pop af
    db $e3
    or $e2
    ld c, l
    db $e3
    pop hl
    ld c, l
    pop hl
    pop hl
    or $e0
    ld c, l

jr_06c_4b13:
    nop
    pop af
    db $e3
    call nc, $c9ea
    db $e4
    ld a, [$b7e6]
    ld [c], a
    or d
    db $e3
    adc $e1
    rst $38
    and $00
    cp l
    ld [c], a
    or c
    pop hl
    call nc, $c4ed
    db $e4
    or c
    ld [$e876], a
    add $e0
    cp e
    ld [c], a
    add c
    dec l
    ret nz

    and $85
    db $eb
    ld b, l
    db $e4
    or c
    db $ec
    ld sp, $45e1
    ld [c], a
    ld l, l
    nop
    dec h
    ldh [$fd], a
    ld [c], a
    cp a
    ldh [rNR32], a
    and $4f
    xor $00
    rst $28
    ret


    pop hl
    rst $30
    db $e3
    ccf
    dec bc
    ld l, e
    dec bc
    dec hl
    dec bc
    dec hl
    cp a
    ld [c], a
    xor h
    db $e4
    db $fc
    nop
    rst $38
    ret nz

    add sp, $0a
    ld a, [hl+]
    ld c, e
    dec bc
    dec bc
    dec bc
    rrca
    ld a, [bc]
    ld c, d
    dec c
    dec c
    ret nz

    db $e4
    nop
    rst $38
    cp [hl]
    rst $20
    ld l, b
    ret nz

    rst $38
    ld c, d
    ld a, [bc]
    ld c, d
    dec bc
    dec bc
    ld c, e
    ld a, [bc]

Jump_06c_4b80:
    ld a, [bc]
    rlca
    ld l, e
    dec c
    dec l
    or e
    pop bc
    nop
    rst $38
    ld a, a
    add sp, $47
    pop bc
    ld a, a
    pop hl
    rra
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec l
    add b
    ldh [rNR30], a
    call nz, $ff00
    db $fc
    nop
    jp $c24a


    dec c
    ld l, e
    dec hl

Jump_06c_4ba3:
    ld c, e
    ld l, e
    ld c, d
    add e
    ld a, [hl+]
    dec l
    rst $38
    ldh [$f4], a
    and c
    nop
    rst $38
    pop af
    xor d
    ld c, c
    ret nz

    ld l, e
    inc de
    dec hl
    ld a, [bc]
    ccf
    ldh [rSC], a
    ldh [$6d], a
    and [hl]
    and c
    nop
    rst $38
    nop
    call z, $0d1b
    ld l, e
    pop bc
    ret nz

    dec bc
    dec bc
    pop bc
    pop bc
    ld h, [hl]
    call nz, $ff00
    nop
    nop
    call nz, $a24e
    cp a
    db $e3
    ld b, b
    ret nz

    ld bc, $23e1
    xor b
    nop
    rst $38
    ret nz

    call nz, Call_000_0d07
    dec c
    dec hl
    ld a, [hl]
    ld [c], a
    cp a
    and [hl]
    nop
    rst $38
    nop
    and l
    call Call_000_0181
    dec l
    ret nz

    and b
    add b
    ldh [$bf], a
    db $e3
    rst $28
    add d
    nop
    rst $38
    cp $a6
    ld a, a
    add c
    inc de
    dec c
    dec l
    cp a
    and c
    ld a, l
    and b
    dec bc
    db $fd
    add c
    nop
    rst $38
    pop af
    add a
    ld a, h
    jp nc, Jump_000_3d83

    and c
    dec bc

Jump_06c_4c12:
    dec bc
    ld l, e
    ld c, e
    ld l, e
    ret nz

    ldh [$d0], a
    daa
    and [hl]
    nop
    rst $38
    ccf
    add d
    di
    ld h, h
    dec bc
    cp $e0
    dec c
    ld c, e
    db $10
    cp l
    add h
    nop
    rst $18
    pop af
    ld h, [hl]
    ret nz

    add sp, $2b
    ld a, e
    ldh [$bd], a
    add e
    ld a, e
    or d
    add sp, $00
    sub e
    add c
    jp $e240


    dec bc
    ld hl, sp-$60
    dec c
    ld c, e
    ld c, l
    and c
    dec l
    xor l
    ld h, c
    ld a, e
    pop af
    nop
    push af
    ld h, $60
    ld l, l
    nop
    ldh [$2b], a
    cpl
    dec bc
    dec c
    dec hl
    ld l, e
    inc [hl]
    and b
    dec l
    ld l, $c2
    nop
    rst $38
    jr z, @+$41

    ld h, a
    cp [hl]
    ld h, c
    ret nz

    and b
    dec hl
    pop bc
    pop hl
    ld c, e
    ret nz

    ldh [rP1], a
    rst $18
    ld [hl], b
    nop
    jp z, $80c0

    jp Jump_06c_7ec1


    pop bc
    dec c
    ld l, e
    ld l, e
    db $fc
    add [hl]
    jr nc, jr_06c_4c7c

jr_06c_4c7c:
    rst $38
    ld a, e
    ld h, d
    add b
    add e
    ccf
    pop bc
    ld a, [bc]
    ld c, e
    or [hl]
    pop hl
    ld [hl-], a
    ld h, b
    nop
    ld l, b
    ld b, h
    nop
    rst $38
    ret c

    db $e4
    rst $38
    ld b, c
    cp a
    add e
    add d
    ldh [$af], a
    call nz, $ff00
    nop
    inc b
    add e
    ld c, $41
    ld b, c
    ldh [rLCDC], a
    and d
    or a
    pop bc
    daa
    ld h, a
    nop
    db $fd
    push bc
    ld h, e
    inc b
    ld bc, $40e2
    add e
    dec hl
    add h
    ret nz

    ld b, e
    ret nz

    nop
    rst $18
    nop

jr_06c_4cb8:
    db $eb
    add b
    db $e4

jr_06c_4cbb:
    rrca
    dec hl
    dec bc
    ld a, [bc]
    dec bc
    ret nz

    push hl
    nop
    ld a, a
    nop
    adc b
    add hl, bc
    ld b, c
    inc c
    call nz, Call_000_3ee0
    ld b, b
    ld c, e
    ld l, e
    cp $21
    jr z, jr_06c_4cb8

    nop
    rst $38
    inc de
    ld h, [hl]
    ld [bc], a
    add d
    and d
    ld a, [bc]
    ret nz

    add b
    ccf
    ldh [rSB], a
    ld b, e
    nop
    rst $38
    nop
    add sp, -$3e
    ld h, b
    ld b, b
    nop
    ld h, b
    ld b, c
    and b
    add c

jr_06c_4ced:
    pop bc
    pop bc
    add sp, $00
    rst $38
    ld b, [hl]
    inc hl
    ld l, l
    nop
    ld h, h
    ld b, b
    inc bc
    add $00
    sbc a
    ld [hl], b
    rlca
    nop
    jr nz, jr_06c_4d44

    ld h, e
    ld bc, $2de0
    cp a
    ld b, [hl]
    nop
    nop
    rst $38
    add [hl]
    and d
    inc bc
    and d
    ret


    ld h, b
    add b
    db $e4
    ret nz

    pop hl
    ret nz

    ld h, a
    nop
    cp $00
    ld b, d
    ld b, l
    nop
    push bc
    ret nz

    ld b, h
    nop
    rst $38
    ld [hl], a

Jump_06c_4d22:
    ld b, e
    add l
    ld [hl+], a
    ret nz

    add sp, $3e
    ld h, b
    jr nz, jr_06c_4ced

    ld h, h
    nop
    rst $38
    ld [hl], b
    ld h, e
    ld b, c
    and d
    add c
    jr nz, jr_06c_4d42

    add b
    ld bc, $e4bf
    jr c, jr_06c_4cbb

    ld b, e
    nop
    rst $38
    db $dd
    push hl
    ld c, l
    ld c, l

jr_06c_4d42:
    dec l
    add hl, bc

jr_06c_4d44:
    add c
    ld a, $e4
    ld bc, $ff4b
    and l
    nop
    rst $38
    ld d, l
    ld bc, $2181
    cp a
    db $e3
    ld a, l
    jp Jump_06c_403f


    nop
    cp l
    ld bc, $5f00
    nop
    ret z

    cp [hl]
    ld [bc], a
    ld a, [hl]
    and e
    cp e
    nop
    ret nz

    ld b, e
    nop
    rst $38
    nop
    dec hl
    ld b, $7e
    add e
    add b
    db $e4
    db $fd

jr_06c_4d70:
    jr nz, jr_06c_4d70

    inc h
    nop
    rst $38
    ret nz

    inc bc
    ld a, $88
    ld bc, $392b
    jr nz, jr_06c_4d7f

    ld h, l

jr_06c_4d7f:
    nop
    rst $38
    add c
    and [hl]
    dec a
    jp nz, Jump_000_00c0

    ret nz

    ld b, d
    ld bc, $010b
    ld h, e
    nop
    rst $38
    jp nz, $c024

    ld b, e
    cp [hl]
    ld h, d
    add c
    ld b, d
    ld bc, $0064
    nop
    rst $38
    dec hl
    ret z

    ld b, b
    ld b, b
    ld a, l
    and d
    pop bc
    ld [c], a
    or b
    dec h
    nop
    rst $38
    nop
    ld b, [hl]
    inc b
    ld b, b
    ld b, c
    dec a
    ld h, e
    dec c
    add b
    ld h, d
    nop
    cp a
    nop
    add hl, hl
    cp h
    ld b, b
    cp [hl]
    and b
    inc bc
    ld l, e
    dec hl
    ld a, l
    and d
    ld b, b
    ld h, c
    pop bc
    daa
    nop
    rst $38
    ld bc, $7e41
    ld hl, $bf02
    ldh [rOCPD], a
    ld b, b
    nop
    ret nz

    ld [c], a
    nop
    ld a, a
    nop
    jr z, @+$15

    jr nz, jr_06c_4e56

    inc hl
    ld b, $7b
    add b
    ld c, e
    ld c, e
    jp nz, Jump_06c_7fa1

Call_06c_4de1:
    add a
    nop
    rst $38
    add hl, sp
    and e
    ret nz

    db $e4
    ld bc, $bf4b
    pop hl
    ld b, c
    and e
    ret nz

    add e
    nop
    rst $38
    ld a, a
    ld [bc], a
    ld a, e
    add l
    add b
    pop hl
    nop
    ld b, c
    and h
    nop
    rst $38
    nop
    ld b, a
    ld a, h
    ld b, [hl]
    cp c
    ld h, b
    cp h
    nop
    ld a, $42
    ld l, b
    ld b, l
    ld [bc], a
    nop
    rst $38
    dec l
    ld a, [hl-]
    ld h, e
    cp c
    ld h, h
    db $fc
    pop bc
    cp l
    ld h, b
    jr z, jr_06c_4e5a

    nop
    rst $38
    nop
    add hl, sp
    add e
    dec a
    and l
    ret nz

    db $e4
    or c
    ld hl, $324f
    nop
    push af
    ret nc

    jp nz, Jump_06c_457c

    ld bc, $bf0b
    ldh [$fb], a
    ld b, b
    db $fc
    and b
    nop
    rst $38
    nop
    add a
    pop bc

jr_06c_4e37:
    rst $20
    ld a, e
    ld bc, $7d00
    ld [hl+], a
    nop
    rst $38
    nop
    ld b, l
    ld bc, $c0c2
    and $bd
    add d
    nop
    rst $38
    xor h
    inc b
    ld bc, $3b2d
    inc bc
    ld b, b
    add b
    add a
    ldh [rSTAT], a
    and b
    db $fd

jr_06c_4e56:
    add b
    ld a, h
    ld h, $7b

jr_06c_4e5a:
    adc h
    nop
    nop
    sub l
    pop de
    and e
    ret nz

    ldh [$bb], a
    inc h
    cp h
    jr z, jr_06c_4e67

jr_06c_4e67:
    rst $38
    nop
    push hl
    cp [hl]
    nop
    nop
    cp a
    ld b, a
    ld e, [hl]
    adc h
    nop
    ei
    dec sp
    ld [bc], a
    ret


    jr nz, jr_06c_4eb3

    jr nz, jr_06c_4e37

    add c
    ld a, [hl]
    ld b, $00
    nop
    rst $38
    nop
    ld [c], a
    ld d, l
    and h
    db $fc
    jr nz, jr_06c_4ec9

    and c
    ld [bc], a
    ret nz

    cp a
    ld h, b
    nop
    ld a, a
    inc b
    nop
    ld l, h
    cp d
    xor b
    ld l, l
    add c
    rlca
    nop
    rst $18
    jp nz, $b945

    add d
    ld c, e
    jr nz, jr_06c_4e9f

jr_06c_4e9f:
    cp $e1
    ld l, [hl]
    ld h, d
    nop
    sbc a
    nop
    adc b
    ld c, [hl]
    ld [bc], a
    adc e
    ld h, h
    add a
    and h
    nop
    rst $08
    nop
    nop
    nop
    rst $38

jr_06c_4eb3:
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    di
    db $e3
    db $e4
    or $e2
    pop af
    push hl
    and b
    and b
    sub $d7
    rra
    and b
    and b

jr_06c_4ec9:
    jp c, $a0db

    rst $38
    pop hl
    ld sp, hl
    ldh [$f2], a
    pop hl
    ld sp, hl
    and b
    call nc, $caec
    ld [c], a
    push hl
    and $e7
    and b
    add sp, -$61
    jp hl


    ld [$eceb], a
    and b
    or $e2
    pop af
    rst $20
    ret c

    add hl, de
    reti


    call nz, $bfe2
    ld [c], a
    push af
    or $f2
    ld [c], a
    call nc, $caec
    ld [c], a
    ld hl, sp-$4f
    db $ec
    db $76
    push hl
    add h
    ld [c], a
    sbc a
    sbc l
    sbc l
    and d
    sbc l
    add d

jr_06c_4f03:
    rst $38
    pop hl
    sbc a
    db $76
    db $e3
    add l
    db $ec
    ld b, l
    ld [c], a
    or c
    db $ec
    db $76
    and $d0
    ld a, a
    pop de
    and b
    sbc a
    sbc h
    ld a, c
    ld a, d
    ld a, e
    rst $38
    ldh [rIF], a
    ld a, h

jr_06c_4f1d:
    ld a, l
    sbc h
    sbc a
    jr nc, jr_06c_4f03

    add l
    db $ed
    ld b, l
    ld [c], a
    nop
    pop af
    cp $0b
    pop hl
    jp nc, $a0d3

    sbc [hl]
    ld a, c
    ld a, [hl]
    ld b, e
    ccf
    cp [hl]
    ld h, $bd
    ld b, l
    ld b, e
    ld a, a
    cp a
    pop hl
    jr nc, jr_06c_4f1d

    ld hl, sp+$00
    rst $38
    nop
    ld [c], a
    call z, $edc0
    xor $d4
    push de
    rst $28
    rst $38
    sbc [hl]
    add b
    ld c, d
    ld c, e
    ld a, [hl+]
    jr nz, jr_06c_4f71

    dec l
    rra
    ld c, e
    ld d, l
    ld a, a
    ld a, l
    sbc [hl]
    or h
    pop bc
    nop
    rst $38
    nop
    db $e3
    ld a, a
    and b
    and b
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ret nz

    ldh [rIE], a
    ld h, c
    ld d, [hl]
    jr nc, @+$22

    dec l
    ld e, [hl]
    ld d, l
    ld b, [hl]

jr_06c_4f71:
    jp $a181


    ld [hl], a
    pop bc
    nop
    rst $38
    nop
    db $e3
    adc l
    jp $9ea0


    rst $38
    add d
    add e
    ld d, e
    ld d, e
    ld [hl+], a
    ld [hl+], a
    ld c, d
    ld h, b
    adc a
    ld e, h
    add e
    add h
    sbc [hl]
    ldh a, [$e0]
    nop
    rst $38
    nop
    ret


    and b
    rst $38
    and b
    sbc [hl]
    add l
    adc e
    ld b, [hl]
    ld b, h
    inc a
    inc a
    ccf
    ld c, d
    ld d, d
    add e
    add [hl]
    add l
    sbc [hl]
    xor a
    pop bc
    nop
    rst $38
    cp $00
    ret z

    sub $d7
    sbc a
    sbc h
    add b
    ld b, [hl]
    add hl, sp
    ccf
    swap l
    add hl, sp
    ld b, l
    adc d
    add l
    ld a, a
    ret nz

    xor a
    ret nz

    ld hl, sp+$00
    rst $38
    nop
    ret z

    ret nz

    and b
    and c
    add b
    ld b, [hl]
    ld a, $35
    ccf
    dec [hl]
    ld a, [hl-]
    ld b, l
    add c
    or d
    sbc [hl]
    xor a
    jp nz, $a073

    ldh a, [rP1]
    rst $38
    db $76
    and h
    ld b, h
    and c
    rst $38
    ret nz

    add hl, sp
    dec [hl]
    dec [hl]
    dec [hl]
    ld bc, $c036
    ldh [$af], a
    jp nz, $a2a8

    nop
    rst $38
    nop
    and d
    ret nz

    ret nz

    rst $38
    ret nz

    rst $38
    add a
    adc b
    ld [hl], d
    ld l, h
    dec [hl]
    dec [hl]
    ld l, d
    add hl, sp
    ldh [$bf], a
    and e
    inc d
    and b
    nop
    rst $38
    pop af
    add l
    rst $38
    jp nz, Jump_06c_4046

    ld l, [hl]
    ccf
    ld [hl], h
    dec [hl]
    ld l, h
    ld l, l
    ld a, [hl-]
    ld b, l
    cp a
    and e
    or d
    add b
    ld hl, sp+$00
    rst $38
    db $76
    add h
    cp a
    add c
    sbc a
    sbc l
    sbc h
    ld [hl], $69
    ld a, a
    dec [hl]
    ld [hl], e
    ld l, [hl]
    dec [hl]
    ld [hl], $45
    and c
    ld [hl], e
    add e
    ldh a, [rP1]
    rst $38
    nop
    push hl
    ld b, e
    add b
    db $fc
    add b
    sbc [hl]
    or d
    ld l, c
    dec [hl]
    rra
    ld l, d
    ld [hl], $36
    inc a
    ld b, h
    rst $38
    and c
    inc sp
    add d
    nop
    rst $38
    db $fc
    pop af
    ld h, e
    db $fc
    add h
    or d
    ld l, c
    xor h
    ld l, d
    or d
    or d
    jp $b23c


    cp l
    add e
    nop
    rst $18
    nop
    rst $20
    db $fc
    add e
    or d
    ld l, c
    ccf
    xor l
    ld l, d
    ld [hl], $b2
    dec [hl]
    add hl, sp
    cp a
    pop hl
    db $ed
    ld h, c
    add sp, $00
    rst $38
    nop
    push hl
    db $fc
    add d
    and c
    ld b, b
    ldh [$75], a
    ld h, [hl]
    or d
    ccf
    ld a, [hl-]
    ld a, [hl-]
    or d
    ld b, [hl]
    sbc h
    sbc a
    ld [hl], c
    ld h, d
    nop
    rst $38
    cp $00
    db $e4
    sub $d7
    push af
    or $9f
    sbc h
    or d
    rst $38
    ld l, e
    ld l, h
    ld l, h
    ld l, l
    or d
    ld a, [hl-]
    ld [hl], $b2
    add a
    or d
    ld b, [hl]
    sbc [hl]
    dec hl
    jp nz, $ff00

    nop
    db $e4
    add b
    pop bc
    sbc h
    rst $38
    or d
    or d
    ld l, [hl]
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    add hl, sp
    inc a
    add [hl]
    pop bc
    ldh [rDMA], a
    and c
    xor e
    ld h, c
    nop
    rst $38
    nop
    push bc
    ld a, a
    and c
    ld b, [hl]
    rrca
    or d
    ld [hl], $ac
    cp e
    ld a, l
    and c
    pop bc
    ldh [$fc], a
    add e
    nop
    rst $38
    db $fc
    nop
    ld h, h
    jp z, $9e41

    ld b, [hl]
    ld b, d
    xor h
    xor l
    ld h, d
    scf
    ld h, [hl]
    srl c
    ld b, d
    ldh [$9c], a
    sbc a
    db $fc
    add e
    nop
    rst $38
    db $fc
    nop
    and e
    ld b, b
    ld b, b
    sbc a
    sbc h
    xor [hl]
    or d
    xor l
    ld h, d
    add a
    ld h, a
    ld l, b
    ld h, [hl]
    pop bc
    ld [c], a
    xor e
    ld h, e
    nop
    rst $38
    nop
    ld h, d
    sbc $fd
    rst $18
    ld b, b
    ld b, b
    sbc [hl]
    ld b, [hl]
    xor a
    ld [hl], $62
    ld h, a
    ld [bc], a
    ld b, b
    and b
    or d
    ld bc, $b1c0
    pop bc
    add sp, -$1f
    nop

jr_06c_5104:
    rst $38
    ld [$c443], sp
    jr nz, jr_06c_5111

    and c
    ld b, [hl]
    ld b, b
    pop bc
    ldh [rLCDC], a
    and b

jr_06c_5111:
    add h
    pop bc
    ret nz

    ld b, e
    nop
    rst $38
    ld h, h
    nop
    ld b, h
    add b
    add d
    ld b, [hl]
    ld b, d
    and b
    pop bc
    add b
    srl c
    add h
    ret nz

    ld [hl], b
    ret nz

    ld b, e
    nop
    cp a
    nop
    add l
    rst $38
    ld [hl+], a
    or d
    ld l, c
    set 0, c
    add c
    ld bc, $8339
    pop bc
    rst $38
    add h
    nop
    rst $38
    nop
    ld b, b
    ld a, h
    ld b, b
    rst $38
    jr nz, jr_06c_5104

    add d
    ccf
    dec [hl]
    ld l, d
    swap [hl]
    ld b, l
    ld b, [hl]
    jp $eba0


    pop hl
    jr jr_06c_5150

jr_06c_5150:
    rst $38
    nop
    db $e4
    ld d, b
    ld h, e
    sbc [hl]
    ld b, h
    add b
    ldh [rSTAT], a
    and b
    inc bc
    jp nz, Jump_06c_6e70

    jr nz, jr_06c_5161

jr_06c_5161:
    sbc a
    db $76
    dec b
    rst $38
    ld [hl+], a
    sbc a
    sbc h
    ld b, b
    nop
    ldh [$83], a
    dec [hl]
    ld l, d
    ld b, d
    jp nz, $e26f

    nop
    sbc a
    db $76
    inc b
    ld b, d
    ld bc, $139f
    sbc h
    ld b, l
    jp nz, $4160

    ld h, b
    ld b, b
    dec b
    and b
    cp a
    ld b, l

jr_06c_5185:
    nop
    rst $38
    ld e, h
    nop
    ld [hl+], a
    inc bc
    and d
    ld b, [hl]
    ld b, b
    dec [hl]
    add b
    db $e4
    and c
    jp $f8a4


    nop
    rst $38
    nop
    call nz, $c102
    or d
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    ld l, e
    ld a, [de]
    pop bc
    ld b, c
    ld [hl], $01
    ld h, b
    push af
    or $6d
    pop hl
    nop
    rst $38
    nop
    inc hl
    inc a
    add d
    ld b, d
    adc l
    add b
    add hl, sp
    ld l, [hl]
    ld l, a
    ld l, h
    nop
    add b
    ld b, b
    jp nz, $f086

    ld b, b
    push af
    or $00
    rst $38
    db $76
    jr nz, jr_06c_5185

    ld hl, $2181
    or d
    inc a
    add c
    add b
    add b
    ld b, b
    dec [hl]
    ld l, d
    ld a, [hl-]
    ld b, l
    jp nz, Jump_000_0065

    rst $38
    ld e, b
    pop af
    nop
    inc l
    ld hl, $c3ff
    or d
    or d
    cp [hl]
    pop bc
    ld l, d
    add b
    ld b, b
    nop
    rst $38

jr_06c_51e6:
    and c
    nop
    ld a, a
    nop
    and a
    ld d, h
    ld h, c
    cp a
    ld [c], a
    ret nz

jr_06c_51f0:
    ld [c], a
    ccf
    ld b, b
    cp a
    and b
    inc a
    nop
    ld a, a
    nop
    jr z, jr_06c_51f0

    or $d0
    pop de
    add b
    ld h, c
    ld a, [hl]
    and d
    rlca
    dec [hl]
    dec [hl]
    ld b, b
    ld a, l
    jr nz, jr_06c_5236

    jr nz, jr_06c_520b

jr_06c_520b:
    rst $38
    db $76
    inc bc
    dec sp
    add c
    inc l
    ld b, c
    ld b, c
    cp [hl]
    add d
    ld [hl], l
    ld h, [hl]
    ccf
    pop hl
    and c
    cp $23
    nop
    rst $38
    jr nc, jr_06c_5220

jr_06c_5220:
    ld [hl+], a
    rst $08
    and e
    ld a, $80
    ld a, [hl]
    add d
    inc a
    ld b, h
    cp $81
    or b
    jr nz, jr_06c_51e6

    nop
    rst $38
    pop af
    dec h
    adc [hl]
    ld [bc], a
    sbc [hl]
    ld b, [hl]

jr_06c_5236:
    add hl, sp
    add b
    ld b, b
    ld l, a
    ld bc, $006e
    ld h, b
    ld bc, $0063
    rst $38
    nop
    ld h, [hl]
    dec a
    and c
    ret nz

    ldh [$80], a
    ld b, c
    ldh [rSCY], a
    ld b, b
    ld bc, $0064
    rst $38
    nop
    ld h, $3d
    and e
    ld b, l
    ld a, [hl-]
    dec [hl]
    pop bc
    dec [hl]
    ld b, d
    ld b, b
    ld bc, $0066
    rst $38
    nop
    ld b, l
    ld b, b
    ld b, e
    ld b, [hl]
    add hl, sp
    ld c, $41
    ld b, b
    add hl, sp
    or d
    sbc [hl]
    or c
    ld [hl+], a
    nop
    cp a
    nop
    jr z, jr_06c_52b3

    ld b, b
    ld a, [hl]
    cp l
    add b
    ld b, [hl]
    ld b, h
    inc a
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, c
    nop
    ldh a, [rP1]
    ld a, a
    nop
    inc l
    inc a
    and e
    ccf
    pop hl
    dec sp
    ld a, [hl-]
    ld b, h
    sbc [hl]
    add sp, $00
    ld a, a
    nop
    db $ed
    sub b
    and d
    sbc [hl]
    cp h
    add b
    ld [hl], $43
    ld b, e
    ld h, b
    cp a
    ld h, d
    ld a, a
    add e
    nop
    rst $38
    nop
    inc h
    dec a
    ld b, h
    ld b, [hl]

jr_06c_52a5:
    ld b, l
    ld [bc], a
    ld h, b
    nop
    nop
    ld h, d
    ld b, c
    and c
    nop
    rst $38
    nop
    jp hl


    ld a, $a2

jr_06c_52b3:
    jp nz, $02e1

    ld [hl+], a
    ld b, c
    ld [bc], a
    ld [$ff00], sp
    nop
    push hl
    ld a, h
    ld b, e
    sbc [hl]
    add [hl]
    ld bc, $c079
    ld a, $43
    add hl, hl
    ld h, b
    nop
    nop
    rst $38
    nop
    push hl
    dec c
    ld h, d
    ret nz

    db $e3
    ld a, [hl]
    db $e4
    inc l
    ld bc, $ff00
    nop
    push hl
    inc b
    ld a, $a3
    pop bc
    push hl
    ld b, [hl]
    cp h
    and c
    inc l
    nop
    nop
    rst $38
    nop
    push hl

Jump_06c_52e8:
    ld a, h
    ld b, h
    daa
    ld b, e

jr_06c_52ec:
    ld b, c
    ld b, e
    db $fd
    ldh [$bd], a
    jr nz, jr_06c_52a5

    ld a, [hl]
    add c
    nop
    rst $38
    ld a, h
    nop
    add $7d
    ld h, d
    ld b, l
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [rTAC], a
    ld [hl], $45
    or d
    ld a, e
    and b
    cp h
    jr nz, jr_06c_530c

jr_06c_530c:
    rst $38
    ret c

    and e
    ld a, [hl]
    ld [bc], a
    dec l
    sbc [hl]
    add c
    and b
    and h
    ld h, h

jr_06c_5317:
    rst $38
    ldh [$a5], a
    db $fc
    add e
    cp h
    jr nz, jr_06c_5317

    nop
    rst $38
    nop
    add e
    ld a, l
    ld h, d
    and c
    ld b, [hl]
    ld b, d
    dec [hl]
    ld l, c
    ccf
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    dec [hl]
    ld a, [hl]
    add l
    ld a, e
    inc l
    inc c
    nop
    rst $10
    pop de
    ld bc, $b29e
    ret nz

    ldh [$3d], a
    jr nz, @-$41

    ld b, b
    cp l
    add b
    ldh a, [$bc]
    inc h
    ld a, e
    xor d
    nop
    cp b
    inc a
    jr nz, jr_06c_52ec

    or d
    ld b, h
    inc a
    inc de
    ld l, e
    ld [hl], c
    rst $38
    ldh [$7e], a
    ld h, b
    and c
    ld a, l
    add e
    nop
    rst $38
    nop
    push hl
    jp nz, $423d

    or d
    ret nz

    push bc
    cp [hl]
    inc hl
    nop
    cp a
    nop
    rst $20
    jp c, Jump_000_00db

    ld a, [hl]
    ld b, c
    ld b, b
    call nz, $81bf
    ccf
    and b
    nop
    cp a
    nop
    and [hl]
    pop de
    ld h, b
    ld c, l
    nop
    dec bc
    sbc a
    sbc l
    rst $38
    db $e3
    sbc a
    ret nz

    ld h, e
    nop
    rst $18
    nop
    add a
    ld c, l
    ld b, $c0
    inc sp
    add l
    add l
    db $ec
    nop
    sbc l
    ld c, l
    inc bc
    ld c, b
    ld h, c
    or l
    ld b, c
    jp c, Jump_000_00db

    add l
    db $ed
    nop
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

Call_06c_53c2:
    ld bc, $2500
    ld a, [bc]
    ld bc, $2501
    dec bc
    ld bc, $2002
    rrca
    ld bc, $2003
    db $10
    ld bc, $2404
    db $10
    ld bc, $2505
    db $10
    ld bc, $2706
    db $10
    ld bc, $2007
    ld de, $0802
    ld [hl+], a
    ld de, $0901
    dec h
    ld de, $0a01
    jr z, @+$13

    ld bc, $200b
    ld [de], a
    ld bc, $250c
    ld [de], a
    ld bc, $280d
    ld [de], a
    ld bc, $200e
    inc de
    ld bc, $250f
    inc de
    ld bc, $2810
    inc de
    ld bc, $2911
    inc de
    ld bc, $1f12
    inc d
    ld bc, $2013
    inc d
    ld bc, $2714
    inc d
    ld bc, $2815
    inc d
    ld bc, $1f16
    dec d
    ld bc, $2217
    dec d
    ld bc, $2718
    dec d
    ld [bc], a
    add hl, de
    ld hl, $0116
    ld a, [de]
    ld h, $16
    ld bc, $271b
    ld d, $01
    inc e
    rra
    rla
    ld [bc], a
    dec e
    jr nz, jr_06c_5451

    ld bc, $251e
    rla
    ld bc, $261f
    rla
    ld [bc], a
    jr nz, @+$20

    jr @+$03

    ld hl, $1825
    ld bc, $2622
    jr jr_06c_5450

    inc hl

jr_06c_5450:
    dec h

jr_06c_5451:
    add hl, de
    ld bc, $1e24
    ld a, [de]
    ld bc, $1e25
    dec de
    ld bc, $1e26
    inc e
    ld bc, $2427
    dec e
    ld bc, $2428
    ld e, $01
    add hl, hl
    inc h
    jr nz, jr_06c_546c

    ld a, [hl+]

jr_06c_546c:
    dec de
    ld hl, $2b01
    dec de
    ld [hl+], a
    ld bc, $1c2c
    inc hl
    ld bc, $1e2d
    inc hl
    ld bc, $1e2e
    inc h
    ld bc, $1f2f
    inc h
    ld bc, $1f30
    dec h
    ld bc, $2031
    dec h
    ld bc, $1f32
    ld h, $01
    inc sp
    jr nz, jr_06c_54b8

    ld bc, $2034
    daa
    ld bc, $2735
    add hl, hl
    ld bc, $2636
    ld a, [hl+]
    ld bc, $2737
    ld a, [hl+]
    ld bc, $2538
    dec hl
    ld bc, $2639
    dec hl
    ld bc, $1f3a
    inc l
    ld bc, $263b
    inc l
    ld bc, $213c
    ld sp, $3d01

jr_06c_54b8:
    ld hl, $0132
    ld a, $22
    ld [hl-], a
    ld bc, $263f
    ld [hl-], a
    ld bc, $2140
    inc sp
    ld bc, $2241
    inc sp
    ld bc, $2142
    inc [hl]
    ld bc, $2a43
    inc [hl]
    ld bc, $2b44
    dec [hl]
    ld bc, $2a45
    ld [hl], $01
    ld b, [hl]
    dec hl
    ld [hl], $01
    ld b, a
    add hl, hl
    scf
    ld bc, $2a48
    scf
    ld bc, $2949
    jr c, jr_06c_54ec

    ld c, d

jr_06c_54ec:
    rra
    add hl, sp
    ld bc, $294b
    add hl, sp
    ld bc, $1f4c
    ld a, [hl-]
    ld bc, $204d
    dec sp
    rst $38
    rst $38
    rst $38
    dec b
    ld d, l
    ld [$ac58], sp
    ld e, e
    bit 3, e
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
    ld a, [$e7cb]
    nop
    add l
    rst $38
    and e
    db $fc
    add d
    db $e4
    nop
    rst $38
    sbc c
    di
    ld b, e
    ld [c], a
    ld a, e
    rst $38
    ld e, $f0
    rra
    ld c, l
    ld c, l
    dec l
    dec l
    dec l
    and l
    jp $ff00


    and e
    ldh a, [$03]
    ld c, l
    ld c, l
    ld b, b
    db $e4
    ld [c], a
    cp a
    ld a, [bc]
    ld a, [c]
    ld b, a
    ld [c], a
    or $e9
    nop
    rst $38
    add b
    ld a, [bc]
    jp hl


    ret nz

    push hl
    add hl, sp
    ldh [$c0], a
    add sp, $7b
    rst $38
    ret c

    call nz, $e57c
    ld l, l
    add e
    ld c, e
    dec bc
    cp a
    ldh [$32], a
    ldh [$33], a
    db $ec
    nop
    db $fc
    dec a
    db $e4
    ld c, l
    inc bc
    ld l, l
    ld c, e
    rst $38
    ldh [$7e], a
    pop hl
    inc sp
    db $e4
    add l
    rst $38
    inc d
    push bc
    add h
    db $e3
    dec b
    dec bc
    ret nz

    pop hl
    ld c, e
    ret nz

    rst $20
    or $d6
    ld a, [bc]
    call z, $c1cf
    add h
    ldh [rIF], a
    dec c
    dec bc
    ld c, e
    dec bc
    db $fc
    pop bc
    ld a, a

Jump_06c_55a2:
    pop hl
    or h
    and [hl]
    ld a, e
    rst $38
    inc b
    inc d
    jp $e0c1


    dec c
    pop bc
    pop hl
    ld sp, hl
    ldh [$bb], a
    jp nz, $bdf6

    nop
    db $ed
    ld [$e0c1], sp
    cp h
    pop hl
    ld sp, hl
    pop hl
    dec c
    db $fc
    push bc
    add l
    rst $38
    nop
    rst $00
    add b
    pop hl
    db $10
    add e
    ldh [$c0], a
    ld [c], a
    inc a
    db $e3
    xor e
    and c
    ld c, l
    nop
    rst $38
    ld b, h
    and c
    add b
    and b
    ld a, c
    dec l
    inc b
    ldh [rSB], a
    ld [c], a
    dec c
    dec bc
    dec bc
    dec hl
    ei
    add $ec
    nop
    rst $38
    cp a
    add $4b
    ld c, e
    add c
    ret nz

    dec c
    dec c
    dec l
    ld a, [de]
    ld a, [$2bc0]
    cp c
    ret nz

    ld c, l
    dec l
    or l
    and e
    nop
    rst $38
    ret nz

    rst $20
    nop

jr_06c_55fe:
    ccf
    pop bc
    push af
    pop bc
    ld a, [hl]
    ld [c], a
    or $a2
    ld d, e
    ld [hl], h
    nop
    or b
    ccf
    ldh [$c8], a
    pop hl
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    cp b
    jp nz, $ae6b

    pop bc
    ld l, e
    dec l
    dec h
    ld [c], a
    ret nz

    ld a, e
    ldh a, [rP1]
    or c
    cp a
    ld [c], a
    ret nz

    ldh [$bf], a
    pop hl
    or [hl]
    ld h, d
    dec bc
    dec bc
    ld hl, sp+$76
    and h
    nop
    rst $38
    ld a, l
    call nz, Call_000_0b0b
    ld l, e
    ld c, d
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld l, d
    jr nc, jr_06c_55fe

    ld l, e
    add b
    ldh [$b0], a
    ld h, d
    ld a, e
    jp nc, $ac00

    sbc [hl]
    cp $c5
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, e
    and c
    ld a, [hl-]
    and b
    ld l, e
    pop hl
    ld l, e
    db $76
    and h
    ld a, [hl-]
    ret nz

    nop
    cp $be
    push bc
    ld l, e
    ld a, [bc]
    ld a, [bc]
    dec e
    ld a, [hl+]
    cp h
    and d
    dec l
    dec l
    dec bc
    cp a
    and $ec
    ld c, [hl]
    nop
    adc a
    ld b, b
    dec a
    ld h, c
    db $fd
    and b
    nop
    and c
    ret z

    ldh [$78], a
    add c
    pop af
    and b
    ld l, e
    or h
    add b
    sbc b
    ld l, c
    ld h, a
    ld a, e
    rst $38
    ld a, h
    and d
    dec c
    dec c
    pop bc
    ld [c], a
    ld a, [hl]
    ret nz

    ld l, e

jr_06c_5687:
    jr nz, jr_06c_5687

    pop bc
    nop

jr_06c_568b:
    rst $18
    ld a, e
    ld h, a
    add b
    and e
    ret nz

    pop hl
    ld l, e
    ld hl, sp-$7e
    ld a, [hl]
    pop bc
    jr nz, jr_06c_568b

    ld b, [hl]
    nop
    ld e, e
    inc a
    and h
    ret nz

    ld [$802e], a
    ld l, l
    dec l
    ld h, b
    nop
    ld e, a
    ldh a, [rNR14]
    ld h, h
    ld b, $83
    add a
    ret nz

    ld bc, $0de3
    ld l, e
    dec c
    ld l, l
    ld e, b
    nop
    cp a
    ld a, e
    ld l, e
    ret nz

    ld h, b
    dec l
    dec l
    ret nz

    pop bc
    dec bc
    nop
    ret nz

    ld b, b
    add d
    ldh [$e6], a
    ld hl, $ff00
    ld b, h
    ld h, $3b
    and c
    ld b, e
    and b
    ld l, e
    add [hl]
    ret nz

    nop
    jp Jump_000_00c2


    cp a
    inc d
    ld c, d
    add hl, sp
    add c
    ld a, [bc]
    ret nz

    ld b, b
    ret nz

    ld a, [$f7e1]
    ld b, d
    add b
    nop
    sbc a
    inc d
    jr z, @+$3a

    ld h, e
    ld a, [$80a3]
    and $00
    rst $38
    ld a, e
    xor e
    dec bc
    jr nc, jr_06c_5739

    jp Jump_06c_633a


    nop
    sbc a
    nop
    db $eb
    dec c
    ld l, l
    ei
    ld h, b
    ld b, e
    add c
    nop
    cp b
    and d
    nop
    sbc a
    ld a, e
    add hl, hl
    inc d
    ld h, c
    ld b, c
    pop hl
    inc bc
    add d

jr_06c_570f:
    ld a, b
    and d
    or l
    ld [hl+], a
    nop
    nop
    rst $18
    ld d, b
    inc b
    call nc, Call_000_3f41
    jr nz, jr_06c_5767

    and b
    inc bc
    ld b, d
    ld hl, sp-$5f
    ld a, $e7
    ld b, b
    ld a, e
    cp $c0
    ld [c], a
    ccf
    ld hl, $a00a
    cp c
    ld b, d
    ld a, a
    add b
    ld c, e
    ld b, b
    and h
    stop
    rst $38
    add c
    and d

jr_06c_5739:
    pop bc
    nop
    ld c, e
    ld h, b
    dec hl
    ld sp, hl
    ld b, b
    db $fd
    pop hl
    ld a, h
    add d
    stop
    cp a
    or $04
    db $fc
    ld h, $c1
    push hl
    dec hl
    di
    ld bc, $623e
    nop
    sbc [hl]
    jr nc, jr_06c_570f

    ld h, [hl]
    ld a, h
    ld hl, $e7c0
    or c
    nop
    dec bc
    dec l
    ld [hl], $08
    ld a, e
    ld a, [$8000]
    add a
    inc bc

jr_06c_5767:
    ld b, b
    add $40
    dec sp
    db $e3
    cp $83
    ld a, e
    or d
    nop
    adc [hl]
    ld a, [hl]
    ld h, d
    rlca
    dec bc
    dec c
    dec hl
    nop
    push hl
    ld sp, hl
    pop bc
    cp $84
    ld e, $c5
    nop
    add hl, sp
    nop
    add b
    add e
    add h
    ld hl, $e740
    ld bc, $0081
    rst $38
    db $10
    ld b, l
    ld b, a
    ld [bc], a
    ld b, d
    and b
    ld bc, $c76b
    ld b, b
    db $fc
    ld b, c
    ld b, d
    ldh [$a2], a
    jp hl


    ld a, e
    db $dd
    sub e
    nop
    add b
    add e
    nop
    ld b, a

jr_06c_57a5:
    pop bc
    ld hl, sp-$5f
    jp Jump_000_0045


    rst $18
    or l
    ld h, d
    ret nz

    db $e3
    ld c, a
    nop
    ret nz

    ld h, d
    nop
    ld [bc], a
    ret nz

    jp $85c5


    rst $38
    nop
    adc b
    rst $38
    pop hl
    ld a, a
    ld h, b
    nop
    ld hl, $6004
    nop
    ret c

    ld [hl], h
    nop
    sub l
    sub e
    ld [hl+], a
    rst $30
    add h
    add l
    push af
    ld a, e
    cp d
    ld d, $23
    ld [hl], a
    add d
    nop
    ld [$5322], sp
    ld a, b
    xor l
    ld a, [c]
    jr c, jr_06c_57a5

    jp z, $85c8

    rst $38
    or $2f
    ld a, [bc]
    db $d3
    nop
    nop
    rst $38
    db $ec
    xor l
    nop
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
    or $ff
    nop
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
    ret nz

    adc a
    rst $38
    nop
    rst $38
    ld [hl-], a
    db $e3
    add l
    rst $38
    nop
    rst $38
    add l
    ldh [$a0], a
    and b
    ld sp, $7ba0
    rst $38
    nop
    rst $30
    pop bc
    ldh [$d6], a
    rst $10
    ld a, e
    rst $38
    nop
    ldh a, [$7e]
    rst $38
    ld [c], a
    db $e3
    db $e4
    and b
    and b
    ret c

    reti


    ld [c], a
    rst $18
    ld l, [hl]
    nop
    pop de
    and b
    ret nc

    pop de
    cp e
    ld [c], a
    jp c, Jump_000_00db

    rst $38
    ld a, h
    nop
    call $e282
    jp nc, $a0d3

    push af
    or $00
    ldh [$e3], a
    push af
    or $3d
    ldh [rP1], a
    rst $38
    ld a, [bc]
    db $eb
    and b
    db $ed
    xor $ff
    call nc, $efd5
    and b
    sbc a
    sbc l
    sbc l
    sbc a
    add $3d
    ld [c], a
    and b
    and b
    nop
    rst $38
    sbc c
    rst $00
    adc d
    ret nz

    ldh a, [$f1]
    rst $38
    ld a, [c]
    di
    db $f4
    sbc a
    sbc h
    ld b, [hl]
    ld b, [hl]
    sbc h
    pop bc
    sbc a
    dec a
    ldh [$33], a
    db $e3
    nop
    rst $38
    inc d
    call nz, $e14b
    and b
    sbc a
    inc bc
    and d
    sbc l
    pop bc
    ldh [$bf], a
    ld [c], a
    inc sp
    ld [c], a
    dec [hl]
    ret nz

    nop
    rst $38
    inc d
    jp Jump_06c_4c12


    ret nz

    and b

jr_06c_58c4:
    add h
    pop hl
    cp $e3
    and c
    inc sp
    db $e4
    ld a, [c]
    and b
    nop
    rst $38
    add sp, $0a
    jp nz, $c04c

    ld b, l
    pop hl
    or d
    add c
    ldh [$79], a
    ld a, d
    ld a, l
    add e
    sbc h
    sbc a
    inc sp
    ld [c], a
    di
    and c
    nop
    rst $38
    inc d
    jp nz, $e00f

    sbc [hl]
    db $fc
    pop bc
    ldh [$c0], a
    ldh [$79], a
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld a, l
    sbc h
    ld [hl], b
    cp e
    pop bc
    ld a, c
    jp nz, $ff00

    nop
    db $e3
    sbc $df
    sbc [hl]
    pop bc
    ldh [$da], a
    add b
    ldh [$80], a
    cp d
    ldh [$7f], a
    ld a, l
    db $fc
    jp $d9d8


    add sp, $00
    rst $38
    ld a, [bc]
    and [hl]
    add b
    ld [c], a
    or d
    ret nz

    ld [c], a
    or d
    adc [hl]
    ld a, h
    ld h, b
    inc a
    ldh [$b6], a
    and c
    jr nc, jr_06c_58c4

    nop
    rst $38
    call z, $d080
    pop de
    nop
    db $e4
    ld a, a
    add d
    add e
    or d
    or d
    dec hl
    ld sp, $3c2b
    ldh [$c0], a
    dec a
    ld [c], a
    ld a, [c]
    add c
    nop
    rst $38
    add h
    and d
    rst $38
    ret nz

    ld b, d
    ret nz

    add l
    add a
    cp a
    adc c
    add e
    ld a, [hl+]
    jr nz, jr_06c_597a

    ld b, h
    ei
    ret nz

    and d
    call nc, $a3b5
    nop
    rst $38
    db $ec
    add h
    and d
    and c
    ld b, c
    call nz, $8685
    rra
    add e
    ld b, c
    jr nc, @+$22

    inc l
    ei
    ret nz

    or l
    and h
    nop
    cp $be
    add h
    and a
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld c, b
    ld c, b
    cp a
    ldh [$2a], a
    ld e, e
    cpl
    ld a, [hl+]
    cp d
    pop bc
    ld b, [hl]
    sbc [hl]
    dec h

jr_06c_597a:
    ld [c], a
    and b
    nop
    rst $38
    cp h
    jp z, $bf81

    and d
    ld b, h
    ld e, [hl]
    ld h, b
    ld b, a
    ld a, [hl]
    ldh [$b2], a
    rrca
    xor [hl]
    or d
    or d
    add c
    ret nz

    db $e3
    xor c
    add b
    nop
    rst $38
    ld a, l
    push bc
    rst $38
    ld b, [hl]
    ld b, l
    ld c, e
    ld h, c
    ld h, c
    ld d, d
    add l
    adc e
    rrca
    or d
    xor a
    or d
    ld b, [hl]
    ret nz

    ld [c], a
    xor c
    add e
    nop
    cp a
    adc c
    ld h, c
    cp [hl]
    cp [hl]
    jp nz, Jump_06c_6155

    ld h, c
    ld e, b
    ld b, h
    ld a, d
    ret nz

    ld b, [hl]
    add e
    add e
    add h
    or h
    add c
    db $76
    and l
    nop
    sbc [hl]
    adc c
    ld h, b
    ld a, [hl]
    jp nz, $ff45

    ld d, e
    ld e, c
    ld d, e
    ld b, l
    add l
    add a
    adc b
    adc b
    inc bc
    add a
    add l

jr_06c_59d2:
    or h
    add l
    ld [$0040], a
    rst $38
    ld c, h
    add b
    cp [hl]
    add d
    nop
    and b
    inc b
    cp b
    add l
    pop af
    add c
    and c
    ldh a, [rSTAT]
    or $8f
    nop
    ld [hl], b
    add h
    ld h, b
    db $fc
    add b
    inc hl
    ld a, c
    ld a, [hl]
    add a
    jp nz, $e2c1

    or c
    add c
    sbc [hl]
    ldh a, [rLCDC]
    nop
    cp a
    add h
    add l
    ld b, h
    db $fd
    and b
    add b
    ld a, [$8780]
    ret nz

    pop bc
    ld [c], a
    or b
    add c
    sbc [hl]
    nop
    ldh a, [rLCDC]
    nop
    cp a
    adc a
    ld b, b
    inc a
    and h
    ld b, b
    and c
    ret nz

    and $b4
    ld h, h
    nop
    ld e, a
    adc h
    adc a
    ld b, d
    ret nz

    ld b, b
    sbc a
    sbc h
    add d
    and b
    add a
    pop bc
    ld b, b
    db $e4
    sbc h
    ld hl, $6b9f
    ld b, b
    nop
    cp a
    adc a
    ld hl, $43c0
    sbc [hl]
    rst $38
    add b
    add a
    jp nz, $c100

    jp nz, Jump_06c_40f5

    jr c, jr_06c_5aa1

    nop
    rst $38
    adc a
    jr nz, jr_06c_59d2

    ld h, e
    dec sp
    ld h, a
    or $41
    or c
    sbc [hl]
    ld l, e
    ld b, e
    nop
    rst $38
    adc a
    dec h
    sub $d7
    cp a
    ld [$209e], a
    ld l, e
    ld b, d
    nop
    sbc a
    adc a
    ld h, $bb
    and l
    ld a, [$a1a4]
    ld a, [c]
    ld [bc], a
    nop
    rst $38
    nop
    add l
    ld b, $07
    ld b, b
    add hl, sp
    add d
    ld a, [$7ca0]
    ld h, b
    push af
    ld hl, $9f00
    ld a, e
    add hl, hl
    nop
    ld a, [hl-]
    ld b, l
    ld a, [$f9a1]

jr_06c_5a7e:
    ld b, c
    ld [bc], a
    pop bc
    nop
    sbc a
    ld a, e
    ld h, $7d
    and e
    cp h
    jr nz, jr_06c_5a8a

jr_06c_5a8a:
    ld a, [hl-]
    ld h, c
    ccf
    add c
    ld [hl], h
    jr nz, jr_06c_5a7e

    nop
    nop
    rst $38
    adc a
    ld bc, $a218
    cp e
    inc h
    ld [bc], a
    cp $61
    or d
    ld a, a
    add e
    nop

jr_06c_5aa1:
    and b
    nop
    rst $38
    ld a, e
    ld h, c
    rlc c
    ld a, h
    ld h, $e0
    ld a, a
    add [hl]
    nop
    cp a
    sbc c
    dec b
    ld a, a
    add e
    ld a, l
    jr nz, jr_06c_5afb

    ld b, e
    ld b, c
    dec b
    ld b, e
    db $fd
    ldh [rLYC], a
    inc [hl]
    inc h
    nop
    cp a
    nop
    and h
    cp h
    ld hl, $207c
    ld e, a
    ld b, l
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    cp a
    ld [c], a
    ldh [$fe], a
    ld b, c
    and h
    nop
    nop
    rst $38
    ld a, e
    ld bc, $227c
    ld b, h
    inc a
    and h
    dec e
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    ld b, h
    ret nz

    db $e3
    ld [hl], $02
    nop
    sbc a
    db $fc
    add b
    add h
    dec sp
    jr nz, jr_06c_5b28

    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    rlca
    ld l, d
    dec [hl]

jr_06c_5afb:
    ld b, d
    inc [hl]
    inc bc
    ld [hl], $02
    nop
    rst $38
    cp h
    ld [hl+], a
    rst $38
    pop bc
    rrca
    ld b, d
    dec [hl]
    ld l, c
    dec [hl]
    rst $38
    ldh [$c0], a
    db $e3
    cp $84
    nop
    ld a, a
    cp h
    add b
    add h
    cp e
    jr nz, jr_06c_5b5d

    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ldh [rLCDC], a
    pop hl
    ld [hl], $06
    nop
    ld a, a
    add b
    add [hl]

jr_06c_5b28:
    ret nz

    ret z

    sbc h
    sbc a
    sub $41
    rst $10
    jr z, @-$5c

    nop
    rst $38
    nop
    and e
    add b
    add d
    ld b, b
    rst $00
    and c
    db $eb
    and d
    jr c, jr_06c_5b3e

jr_06c_5b3e:
    sbc a
    ld a, e
    ld b, [hl]
    cp h
    and b
    sbc a
    sbc l
    sbc l
    dec a
    add l
    ld bc, $3024
    nop
    cp a
    or $66
    pop de
    ld [c], a
    cp e
    ld h, e
    sbc h
    sbc l
    add c
    ld bc, $74d8
    ret z

    nop
    sub l
    ld a, [hl-]

jr_06c_5b5d:
    ld b, d
    cp e
    ld h, b
    sbc l
    jp Jump_000_08e0


    ret nz

    push af
    or $00
    ret c

    push af
    nop
    sub c
    ld a, e
    ld b, d
    db $76
    inc hl
    di
    ld hl, $c208
    ret c

    db $f4
    nop
    ld d, c

jr_06c_5b78:
    nop
    or $06
    inc c
    ld [c], a
    ret z

    inc b
    ret c

    push af
    jr z, jr_06c_5b78

    or $23
    ld [c], a
    ld b, b
    or c
    ld b, d
    nop
    add l
    ld a, [c]
    nop
    ld a, [$6d71]
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    nop
    or $ff
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
    ld bc, $1600
    ld de, $0101
    dec d
    ld [de], a
    ld bc, $1602
    ld [de], a
    ld bc, $1403
    inc de
    ld bc, $1504
    inc de
    ld bc, $1605
    inc de
    ld bc, $1b06
    inc de
    ld bc, $1c07
    inc de
    ld bc, $1508
    inc d
    ld bc, $1609
    inc d
    ld bc, $170a
    inc d
    ld bc, $1b0b
    inc d
    ld bc, $1c0c
    inc d
    ld bc, $1d0d
    inc d
    ld bc, $160e
    dec d
    ld bc, $1b0f
    dec d
    ld bc, $1c10
    dec d
    ld bc, $2211
    jr jr_06c_5c15

    ld [de], a

jr_06c_5c15:
    jr nz, @+$1b

    ld bc, $2213
    add hl, de
    ld bc, $2314
    add hl, de
    ld bc, $2015
    ld a, [de]
    ld [bc], a
    ld d, $21
    ld a, [de]
    ld bc, $2217
    ld a, [de]
    ld bc, $2118
    dec de
    ld bc, $2519
    dec e
    ld bc, $1b1a
    ld e, $01
    dec de
    inc h
    ld e, $01
    inc e
    dec h
    ld e, $01
    dec e
    ld a, [de]
    rra
    ld bc, $1b1e
    rra
    ld bc, $1c1f
    rra
    ld bc, $2320
    rra
    ld bc, $2421
    rra
    ld bc, $2522
    rra
    ld bc, $2623
    rra
    ld bc, $1b24
    jr nz, jr_06c_5c61

    dec h

jr_06c_5c61:
    inc e
    jr nz, @+$03

    ld h, $23
    jr nz, jr_06c_5c69

    daa

jr_06c_5c69:
    inc h
    jr nz, @+$03

    jr z, @+$27

    jr nz, jr_06c_5c71

    add hl, hl

jr_06c_5c71:
    inc h
    ld hl, $2a01
    dec h
    ld hl, $2b01
    inc h
    ld [hl+], a
    ld bc, $212c
    ld h, $01
    dec l
    jr nz, jr_06c_5caa

    ld bc, $212e
    daa
    ld bc, $222f
    daa
    ld bc, $2330
    daa
    ld bc, $2131
    jr z, jr_06c_5c95

    ld [hl-], a

jr_06c_5c95:
    ld [hl+], a
    jr z, jr_06c_5c99

    inc sp

jr_06c_5c99:
    inc hl
    jr z, jr_06c_5c9d

    inc [hl]

jr_06c_5c9d:
    inc h
    jr z, jr_06c_5ca1

    dec [hl]

jr_06c_5ca1:
    ld [hl+], a
    add hl, hl
    ld bc, $2336
    add hl, hl
    ld bc, $1937

jr_06c_5caa:
    dec hl
    ld bc, $1938
    inc l
    ld bc, $1a39
    inc l
    ld bc, $183a
    dec l
    ld bc, $193b
    dec l
    ld bc, $1a3c
    dec l
    ld bc, $193d
    ld l, $01
    ld a, $1a
    ld l, $01
    ccf
    dec de
    ld l, $01
    ld b, b
    ld a, [de]
    cpl
    rst $38
    rst $38
    rst $38
    jp c, $a85c

    ld h, b
    ld h, l
    ld h, l
    add h
    ld h, l
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $ea
    ld l, [hl]
    db $eb
    ldh [rKEY1], a
    dec c
    ld c, l
    db $fd
    pop hl
    ld c, l
    ld c, l
    db $db
    ldh [$09], a
    ld c, l
    reti


    ld [c], a
    call nc, Call_000_0ef1
    pop bc
    db $e3
    cp e
    pop hl
    or $e8
    jp nc, Jump_000_00e4

    db $fd
    db $e3
    or l
    ldh [$bd], a
    pop hl
    call nc, $85f4
    rst $28
    adc [hl]
    ld [c], a
    rst $30
    db $e3
    add c
    ldh [rSTAT], a
    dec l
    add b
    pop hl
    ld e, b
    pop hl
    ld e, c
    pop af
    add l
    ld a, [c]
    ld d, l
    db $e4
    ld l, l
    ld a, a
    db $e3
    jp $2d4d


    ld b, h
    db $e3
    ld e, c
    pop af
    or c
    pop af
    ld b, e
    push hl
    ld l, l
    ld l, e
    rra
    dec c
    dec hl
    ld a, [bc]
    ld a, [hl+]
    dec bc
    cp a
    db $e4
    nop
    rst $38
    or $c6
    cp $08
    db $e4
    ld l, e
    dec c
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld c, e
    pop bc
    ld a, [bc]
    ld a, [hl]
    pop hl
    cp [hl]
    ld [c], a
    nop
    rst $38
    jp nz, $81e8

    pop hl
    ld a, [bc]
    ld a, [bc]
    cpl
    dec bc
    dec bc
    dec hl
    dec hl
    ld a, [hl]
    ldh [rOCPD], a
    inc a
    ldh [rNR11], a
    rst $20
    db $fc
    nop
    rst $38
    ld d, c
    pop bc
    ld l, e
    ld l, e
    dec c
    ld c, d
    ld c, d
    ld c, e
    add c
    ld c, e
    cp [hl]
    pop hl
    ld [hl], h
    ldh [$c0], a
    db $e4
    ld a, e
    ldh a, [rP1]
    jp nc, $c003

    dec l
    cp $40
    ldh [$0a], a
    ld a, [hl+]
    ld l, e
    ld c, e
    ld c, e
    ld l, e

jr_06c_5d80:
    ld a, [bc]
    pop hl
    ld c, e
    ret nz

    db $e3
    nop
    rst $38
    ldh a, [$a9]
    nop
    pop hl
    dec c
    ld c, d
    ld c, e
    dec b
    dec bc
    ret nz

    ldh [$2d], a
    add b
    pop hl
    nop
    rst $38
    jp nz, $c0c8

    ld [c], a
    cp a
    pop hl
    ld a, a
    ld c, e
    ld l, e
    dec hl
    dec c
    dec l
    dec l
    dec l
    ld b, b
    ldh [$e1], a
    ld c, l
    nop
    rst $18
    nop
    add $44
    and c
    add b
    pop bc
    ld l, e
    dec c
    ld l, e
    ld e, $02
    pop hl
    dec l
    dec bc
    dec c
    ld l, l
    ld d, e
    xor b
    nop
    rst $18
    ld bc, $06c4
    cp l
    ret nz

    dec hl
    ld c, e
    jp nz, $b5c1

    and b
    ld a, h
    and h
    nop
    rst $38
    inc b
    and l
    inc c
    ld bc, $82e1
    ldh [rWX], a
    dec hl
    ld a, e
    ldh [$7e], a
    and b
    add l
    pop af
    nop
    jp c, Jump_06c_440e

    ldh [$0d], a
    dec c
    dec hl
    nop
    ret nz

    ret nz

    db $e3
    ld a, [c]
    add e
    nop

jr_06c_5dec:
    rst $38
    jr c, jr_06c_5e44

    add b
    jp nz, Jump_000_0183

    ld [c], a
    dec bc
    dec bc
    dec c
    add b
    ldh [$fd], a
    add d
    ldh [rNR21], a
    add c
    jr nc, jr_06c_5d80

    nop
    cp $17
    and h
    jp z, Jump_06c_6b82

    ld l, e
    ld c, e
    ld bc, $036b
    ret nz

    cp h
    add d
    ldh a, [$60]

jr_06c_5e11:
    ei
    ld h, e
    nop
    rst $38
    cp a
    ld h, e
    add b
    pop bc
    rrca
    ld l, e
    dec bc
    ld c, e
    dec bc
    db $76
    and c
    add b
    and d
    or l
    ld h, b
    nop
    rst $38
    inc c
    nop
    xor b
    ld b, d
    pop bc
    dec bc
    dec hl
    dec a
    ldh [$be], a
    jp $63f9


    nop
    rst $38
    jr nc, jr_06c_5e3a

    jp nz, $e0c2

jr_06c_5e3a:
    pop bc
    pop bc
    jp Jump_06c_4b80


    dec bc
    add b
    db $e3
    ld b, b
    add d

jr_06c_5e44:
    jr jr_06c_5e46

jr_06c_5e46:
    rst $38
    sub l
    ld h, e
    pop bc
    db $e4
    dec bc
    ld c, e
    rst $38
    and d
    cp [hl]
    ret z

    nop
    rst $38
    db $10
    inc b
    and e
    add c
    pop hl
    ld b, d
    pop hl
    ret nz

    ret nz

    ld c, e
    db $f4
    ld [c], a
    cp h
    ld h, [hl]
    nop
    rst $38
    jr c, jr_06c_5dec

    jp nz, $a184

    ret nz

    pop hl

jr_06c_5e6a:
    ld c, e
    dec c
    ld c, e
    jr c, jr_06c_5e11

    ld a, [hl]
    jp RST_30


    rst $38
    ld a, [de]
    pop bc
    dec c
    ld h, b
    add b
    ld [c], a
    dec bc
    dec bc
    ld b, l
    add c
    ret nz

    ld [c], a

jr_06c_5e80:
    ld b, b
    ld a, [hl]
    push bc
    nop
    rst $38
    ld d, e
    ld b, d
    cp a
    pop hl
    inc b
    and b
    ld b, b
    ldh [$0d], a
    rst $38
    ld b, b
    ldh [$b7], a
    add d
    ld a, [hl]
    ld l, b
    nop
    sbc h
    ld b, d
    ld b, d
    add b
    ld [c], a
    ld c, e
    ld a, [bc]
    ld c, e
    ld bc, $404b
    ld h, c
    ccf
    db $e4
    and c
    ld l, b
    nop
    ld e, d
    ret nz

    push hl
    add e
    ld h, b
    ld a, a
    db $e4
    ld h, b
    ld [hl], h
    add c
    cp $c5
    nop
    sbc a
    ld bc, $0564
    ldh [rWX], a
    ld a, [bc]
    ccf
    add b
    ld e, $bf
    ld b, c
    dec c
    ld c, e
    ld c, e
    ld c, e
    cp h
    ld b, d
    nop
    rst $38
    jr jr_06c_5e6a

    nop
    ld bc, $8264
    ret nz

    cp $c4
    db $f4
    ld h, d
    or b
    jr nz, jr_06c_5f54

    add e
    nop
    sbc a
    rst $08
    nop
    ld h, h
    ret nz

    ld b, b
    ld [bc], a
    and c
    ld a, [bc]
    dec a
    pop hl
    add c
    ld b, b
    ld l, e
    ld l, e
    jr c, jr_06c_5f0d

    ld [$ff00], sp
    sub [hl]
    and h
    ld a, a
    jp nz, $800b

    add b
    ccf
    and c
    ld [hl], d
    ld b, b
    ld a, h
    ld h, d
    nop
    nop
    rst $38
    ret nz

    jr z, jr_06c_5e80

    add b
    ld a, a
    ret nz

    ccf
    and d
    add c
    ldh [$3f], a
    and e
    nop
    rst $38
    nop
    ld c, b
    inc bc

jr_06c_5f0d:
    ld [bc], a
    jr nz, jr_06c_5f11

    add e

jr_06c_5f11:
    ld a, a
    and b
    or h
    jp nz, Jump_06c_647c

    nop
    rst $38
    ld bc, $0266
    ret nz

    nop
    ld l, e
    ld a, $a1
    cp $63
    ld a, c
    ld bc, $9f00
    nop
    rst $00
    ld b, b
    ld b, d
    nop
    ld b, b
    ld h, b
    db $fd
    and c
    ccf
    db $e4
    nop
    ld e, a
    nop
    and e
    ret nz

    add sp, -$80
    add c
    ld a, [hl]
    ld h, d
    add c
    ld c, e
    ld a, l
    ld h, e
    nop
    rst $38
    cp [hl]
    inc hl
    ld [bc], a
    ld b, c
    ret nz

    ld [c], a

jr_06c_5f48:
    ret nz

    jp Jump_06c_602d


    ret nz

    push hl
    nop
    rst $38
    ld a, a
    add d
    add c
    and e

jr_06c_5f54:
    ret nz

    db $e4
    dec bc
    dec bc
    ld a, $20
    ld bc, $c14b
    and d
    nop
    rst $38
    ld b, c
    inc h
    add d
    ld bc, $4140
    add b
    pop hl
    cp l
    ld b, b
    nop
    ld bc, $00c1
    ld a, a
    jr nc, @-$37

    add c
    and d
    ret nz

    push hl
    dec sp
    add b
    inc bc
    and c
    nop
    ld a, a
    nop
    ld h, c
    ld l, b
    rst $38
    add d
    cp h
    ld b, b
    add b
    ld [c], a
    db $fd
    jr nz, jr_06c_5f48

    and l
    nop
    sbc a
    ld a, $c8
    add b
    nop
    ld b, d
    cp $60
    pop bc
    and a
    nop
    rst $38
    reti


    push hl
    cp a
    inc b
    ld a, a
    pop hl
    dec bc
    nop
    ld a, c
    ld b, b
    pop bc
    and c
    add h
    call nz, $ff00
    jp nc, $fe03

    jp nz, $e13f

    cp e
    ld b, c
    add b
    pop bc
    ld h, l
    nop
    rst $38
    ld [hl], c
    ld h, [hl]
    cp $c3
    ld a, a
    ret nz

    ei
    nop
    ld l, $41
    ld c, l
    ld bc, $002d
    rst $18
    ld a, e
    ld h, a
    ld a, h
    and l
    cp l
    and c
    ld hl, sp-$1e
    ld a, [hl]
    add d
    nop
    rst $38
    nop
    ld [hl], c
    xor c
    cp h
    and e
    ld b, e
    and c
    ret nz

    ld h, c
    db $fc
    nop
    nop
    ld e, a
    ld a, e
    ret


    cp [hl]
    jp $0300


    ld h, d
    cp a
    and b
    cp [hl]
    and a
    nop
    rst $38
    cp [hl]
    ret z

    ld a, c
    jp nz, $a1ff

    ld bc, $0061
    ld c, a
    ld d, c
    nop
    db $f4
    cp e
    ld b, [hl]
    ld a, e
    push hl
    ld a, [hl]
    inc b
    nop
    rst $38
    cp d
    ld l, b
    ld a, d
    ld b, d

jr_06c_6000:
    inc b
    nop
    jr nz, jr_06c_6000

    nop
    dec bc
    ret nz

    ld h, c
    push hl
    ld b, l
    nop
    rst $38
    ld a, e
    ld b, h
    cp l
    call nz, $bc02
    ld bc, $be4b
    and c
    nop
    rst $18
    ld a, e
    ld [$0377], sp
    inc [hl]
    ld [bc], a
    cp e
    ld bc, $bde0
    add c
    nop
    cp a
    ld a, e
    daa
    sub d
    and c
    cp d
    ld b, c
    dec hl
    dec c

Jump_06c_602d:
    dec bc
    nop
    add hl, sp
    ld h, b
    dec sp
    pop bc
    jp Jump_000_00a6


    rst $38
    cp d
    ld b, l
    ld a, d
    nop
    jp nz, $fde0

    pop hl
    jr nz, @-$03

    and c
    nop
    ccf
    ld a, e
    dec hl
    ret nz

    db $e3
    add b
    ldh [$2d], a
    ret nz

    push hl
    nop
    rst $38
    ld [bc], a
    nop
    add sp, $4d
    ld a, [$8001]
    jp hl


    nop
    ccf
    ld a, e
    add hl, hl
    ld a, c
    ld b, h
    ld b, b
    db $e3
    ld [bc], a
    cp c
    jr nz, jr_06c_6090

    add c
    jp $ff00


    ld a, l
    add a
    sla c
    add b
    jp nz, $2141

    nop
    cp $44
    nop
    rst $38
    cp c
    jr z, @+$38

    add $7d
    ld b, b
    ld b, b
    and l
    nop
    rst $38
    ld [bc], a
    db $e4
    nop
    dec a
    and e
    rst $38
    db $e4
    nop
    cp a
    ld a, e
    rrca
    adc [hl]
    ld b, d
    ld [hl], b
    dec b
    rst $38
    ld b, a
    nop

jr_06c_6090:
    rst $38
    nop
    cp [hl]
    ret z

    inc sp
    ld h, e
    add [hl]
    ld [bc], a
    add d
    jp $ff00


    ld a, $aa
    ld c, e
    ld h, c
    ld [hl], e
    and $00
    nop
    xor [hl]
    nop
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    ld a, e
    db $e3
    db $e4
    or $ec
    and b
    ret c

    reti


    and b
    rst $38
    push hl
    di
    sub $d7
    push af
    ld [c], a
    call nc, $e5f1
    and $e7
    and b

Jump_06c_60c7:
    cp a
    add sp, -$17
    ld [$eceb], a
    and b
    or $eb
    and b
    ccf
    and b
    jp c, $a0db

    push af
    or $bd
    db $e3
    or l
    ldh [rBGP], a
    ret nc

    pop de
    and b
    sbc $ec
    jp z, $85e3

    ld a, [c]
    and b
    pop de
    ld [c], a
    xor a
    and b
    sbc a
    and d
    sbc l
    rst $38
    pop hl
    sbc a
    or l
    pop hl
    jp nc, $d3d3

    and b
    call nc, $85f2
    ld a, [c]
    and b
    pop de
    ld [c], a
    sbc a
    sbc h
    rst $38
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    ld a, h
    ld a, l
    sbc h
    sbc a
    cp a
    and b
    db $ed
    xor $d4
    push de
    rst $28
    ld e, c
    pop af
    add sp, -$04
    nop
    pop af
    pop de
    db $e3
    sbc a
    sbc h
    ld b, [hl]
    add b
    ld b, l
    ld c, b
    rst $30
    ld c, b
    ld b, l
    ld a, a
    cp a
    ldh [$f0], a
    pop af
    ld a, [c]
    di
    jp hl


    db $f4
    nop
    rst $38
    or $c4
    and b
    pop de
    ld [c], a
    sbc [hl]
    ld b, [hl]
    ld a, c
    cp a
    adc l

jr_06c_6136:
    ld b, e
    ld e, c
    ld e, c
    ld b, h
    res 7, a
    ldh [$a2], a
    pop bc
    sbc a
    db $f4
    pop bc
    nop
    rst $38
    nop
    push hl
    rst $00
    ret nz

    add c
    pop hl
    ld c, d
    ld e, d
    cpl
    ld a, [hl+]
    cpl
    inc l
    dec hl
    ld a, [hl]
    ldh [rDMA], a
    inc a

Jump_06c_6155:
    ldh [$7b], a
    jp nz, Jump_000_00bc

    rst $38
    nop
    db $e3
    and b
    and b
    sbc [hl]
    ld b, [hl]
    ret nz

    ldh [rRP], a
    cp a
    ld a, [hl+]
    cpl
    jr nz, jr_06c_6189

    ld a, [hl+]
    ld b, e
    cp a
    ldh [$9e], a
    ret c

    jr nc, jr_06c_6136

    nop
    rst $38
    or $a1
    sub $d7
    ld bc, $82e0
    add e
    rst $38
    ld d, d
    ld c, b
    ld b, h
    ld hl, $2a26
    ld c, e
    ld b, h
    adc l
    add c
    ret nz

    ldh [$da], a

jr_06c_6189:
    db $db
    nop
    rst $38
    or $a6
    jp $9ea0


    rst $38
    ld b, [hl]
    add l
    adc e
    or d
    ld c, e
    ld b, h
    inc a
    ld a, [hl-]
    ccf
    ld b, h
    ld d, [hl]
    add e
    add h
    ld b, [hl]
    sbc [hl]
    nop
    rst $38
    nop
    ret


    ld a, [$a0c3]
    and c
    ccf
    ldh [$b2], a
    or d
    ld b, l
    ld a, [hl-]
    ld a, $0f
    or d
    add e
    add [hl]
    add l
    ld b, b
    ldh [rP1], a
    rst $18
    nop
    rst $00
    ld c, a
    and c
    ld l, [hl]
    add b
    pop bc
    ld b, [hl]
    or d
    ld b, h
    ret nz

    ldh [$8a], a
    add l
    ret nz

    ret nz

    jp $d1d0


    nop
    rst $18
    nop
    push bc
    inc b
    and c
    ld bc, $46c1
    ld b, [hl]
    ccf
    or d
    add hl, sp
    dec [hl]
    ld a, $b2
    add c
    add c
    pop bc
    ld a, a
    and b
    ldh a, [rP1]
    rst $38
    nop
    call nz, $a104
    ld bc, $b2c1
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    add a
    dec [hl]
    ld a, $46
    jp nz, Jump_06c_7fc0

    and d
    nop
    rst $38
    nop
    and [hl]
    push af
    ei
    or $9e
    add c
    ldh [$b2], a
    or d
    add hl, sp
    rst $08

Call_06c_6204:
    rst $08
    ld b, d
    ret nz

    pop hl
    and c
    ld a, a
    and e
    nop
    rst $18
    add l
    add e
    sub e
    add c
    sbc [hl]
    ld b, c
    ret nz

    rst $38
    ld b, [hl]
    or d
    ld a, $ce
    cp e
    ld a, $46
    adc h
    ldh [$fd], a
    add c
    dec sp
    add b
    ld [hl], c
    add d
    nop
    cp $c2
    add [hl]
    add l
    add [hl]
    add e
    dec e
    ld b, [hl]
    add b
    ldh [$39], a
    or d
    ld b, [hl]
    db $fd
    add c
    ldh a, [$63]
    nop
    rst $38
    di
    db $eb
    db $ec
    sub e
    add d

Call_06c_623d:
    ld a, a
    and c
    add l
    adc e
    ld b, [hl]
    ld b, h
    inc bc
    inc a
    dec [hl]
    ret nz

    ldh [$fe], a
    pop bc
    ldh a, [$61]
    xor a
    ld h, b
    nop
    rst $38
    jp nz, $e783

    sbc a
    and d
    sbc h
    ccf
    and b
    add b
    pop hl
    ld a, [hl-]
    ld b, l
    or d
    sub b
    cp [hl]
    pop bc
    or h
    ld h, b
    cp h
    ld h, b
    nop
    rst $38
    rst $20
    ld d, d
    ld h, d
    ld b, e
    add b
    ld b, [hl]
    ld a, [hl]
    add b
    add b
    ld b, l
    ld a, [hl-]
    adc $bb
    dec [hl]
    add hl, sp
    add b
    db $e3
    ldh a, [$eb]
    ld h, e
    nop
    rst $38
    inc bc
    call nz, $e0c1
    ld a, [hl]
    ld b, l
    ld [hl], $35
    jp $cebb


    rst $38
    and b
    cp [hl]
    jp nz, Jump_06c_62bc

    nop
    rst $38
    db $eb
    db $ec
    jr jr_06c_6296

    jp nz, $e081

jr_06c_6296:
    ld b, d
    ld [c], a
    rst $08
    rst $08
    add b
    pop hl
    dec a
    rst $00
    nop
    rst $38
    ld hl, sp+$03
    jp $e1c0


    ld b, d
    ldh [$ce], a
    dec [hl]
    dec [hl]
    cp e
    ld b, b
    pop bc
    or d
    rst $38
    pop bc
    cp $63
    nop
    rst $38
    nop
    ld h, d
    ld bc, $80e2
    ld b, h
    ld a, a
    inc a

Jump_06c_62bc:
    adc $cb
    dec [hl]
    cp e
    ld [hl], $45
    ret nz

    ldh [$e9], a
    adc h
    cp $66
    nop
    cp a
    db $e4
    ld [bc], a
    add e
    ld b, [hl]
    add b
    ld b, d
    ld bc, $8035
    ldh [$81], a
    pop hl
    ld a, a
    ld [c], a
    ld a, $c2
    nop
    rst $38
    nop
    ld h, c
    ld [bc], a
    add d
    ld e, $80
    pop hl
    rst $08
    swap l
    dec [hl]
    add b
    pop hl
    ccf
    db $e4
    or a
    jr nz, jr_06c_62ee

jr_06c_62ee:
    nop
    rst $38
    add l
    jr nz, @+$04

    add h
    jp $c180


    ret nz

    ld a, a
    ld [c], a
    cp h
    add b

Call_06c_62fc:
    db $fc
    ld b, c
    ldh a, [$6c]

Call_06c_6300:
    jr nz, jr_06c_6302

jr_06c_6302:
    rst $38
    adc c
    ld [hl+], a
    ld bc, $8260
    add e
    add hl, sp
    dec [hl]
    rlca
    dec [hl]
    set 1, a
    ld a, a
    ld [c], a
    ret nz

    pop hl
    ld a, h
    and e
    nop
    rst $38
    nop
    add b
    ld a, e
    ret nc

    pop de
    ld [bc], a
    ld b, b
    add l
    adc e
    ld b, d
    dec [hl]
    cp $c5
    add b
    add b
    db $e3
    jr nc, jr_06c_634a

    nop
    rst $38
    add c
    inc hl
    pop bc
    ld hl, $a002

jr_06c_6331:
    ld a, [hl]
    ret nz

    inc a
    add a
    ld b, h
    or d
    ld b, [hl]
    cp $40

Jump_06c_633a:
    ld a, l
    ld b, b
    ei
    nop
    nop
    rst $38
    sbc $79
    rst $18
    cp a
    add e
    rst $38
    ld h, b
    ld b, d
    dec [hl]
    rst $08

jr_06c_634a:
    call z, $c0ff
    ld b, b
    ccf
    and b
    dec a
    ld h, d
    ei
    ld [bc], a
    nop
    rst $38
    cp a
    add h
    ld b, c
    ld hl, $ff3a
    and b
    adc c
    dec [hl]
    ccf
    and c
    pop bc
    ret nz

    and c
    ld l, b
    add e
    nop
    rst $38
    nop
    ld h, b
    push af
    ld bc, $02f6
    jr nz, jr_06c_6331

    ld b, b
    add c
    ld h, b
    ld a, a
    and b
    cp a
    add b
    ret nz

    and c
    ei
    inc bc
    ld c, b
    nop
    rst $38
    add c
    ld b, d

Jump_06c_6380:
    ld [bc], a
    jr nz, jr_06c_6401

    add d
    ld b, c
    cp a
    pop hl
    ld b, d
    cp $62
    jr nz, jr_06c_6408

    ld h, c
    nop
    sbc a
    nop
    ld [hl+], a
    jp nz, $0122

    ld h, c
    ld b, [hl]
    ld b, b
    ld h, b
    ret nz

    pop bc
    ld [bc], a
    nop
    jp nz, Jump_000_269e

    add b
    nop
    cp a
    nop
    ld h, c
    jp nz, $c022

    db $e3
    ccf
    pop hl
    ld [$637e], sp
    db $fd
    inc b
    nop
    rst $38
    db $e4
    add d
    inc b
    add b
    ld [c], a
    pop bc
    ret nz

jr_06c_63b8:
    rst $38
    ld h, c
    ret nz

    ld b, b
    jp $613d


    nop
    rst $38
    add d
    inc b
    add c
    ld b, c
    ret nz

    db $e3
    ld a, [hl-]
    ld b, l
    ld b, b
    ld a, $21
    pop bc
    and e
    nop
    rst $38
    nop
    ld b, b
    add d
    ld [bc], a
    add c
    ld b, c
    or d
    add b
    ld [c], a
    inc bc
    dec [hl]
    ld b, d
    ld bc, $00c3
    ld a, a
    nop
    ld b, h
    ld b, c
    inc hl
    add c

jr_06c_63e5:
    ld b, b
    ret nz

    db $e3
    ld h, c
    inc a
    ld b, b
    nop
    cp a
    ld bc, $7f00
    nop
    add h
    jp c, $ffdb

    add d
    nop
    nop
    jr nz, jr_06c_63b8

    add b
    ld b, b
    pop hl
    pop bc
    and [hl]
    nop
    sbc a

jr_06c_6401:
    nop
    db $e3
    ld d, [hl]
    and b
    ld a, a
    ld [hl+], a
    add b

jr_06c_6408:
    cp $80
    add b
    and b
    pop bc
    xor b
    nop
    rst $38
    nop
    jr nz, jr_06c_63e5

    ld [bc], a
    ret nz

    jr nz, @-$78

    ld bc, $fd83
    ld h, b
    ret nz

    pop bc
    pop bc
    ld h, [hl]
    nop
    rst $38
    nop
    ld hl, $85ff
    ld a, a
    jr nz, @-$38

    ccf
    pop hl
    inc a
    ld b, h
    pop bc
    ld h, a
    nop
    rst $38
    ld [hl], c
    ld [bc], a
    push af
    or $76
    db $fc
    ld b, d
    add b
    ld b, [hl]
    db $fd
    jr nz, jr_06c_6477

    ld [hl], $45
    ret nz

    ld b, c
    ldh [$7f], a
    add b
    nop
    rst $18
    ld a, e
    rlca
    cp d
    jr nz, jr_06c_64c6

    and d
    ld b, l
    ccf
    ld b, e
    add hl, de
    ld b, l
    rst $30
    and b
    add b
    ld h, e
    push af
    or $00
    rst $38
    ld [hl], c
    ld b, h
    cp d
    ld [hl+], a
    ld [bc], a
    cp h
    and d
    ld b, [hl]
    pop bc
    ldh [$80], a
    and c
    inc a
    ld hl, $ff00
    ld a, e
    xor d
    cp h
    and d
    ld bc, $81b2
    ldh [$c0], a
    ld h, b
    cp [hl]
    and h
    nop
    rst $38
    ld a, e

jr_06c_6477:
    call nz, Call_06c_62fc
    cp a
    db $e3

Jump_06c_647c:
    add b
    add c
    ld b, l
    ld a, a
    ld h, c
    nop
    rst $38
    ld a, e
    dec h
    cp e
    ld b, h
    ret nz

    ld [c], a
    rst $38
    and b
    and c
    nop
    add hl, hl

jr_06c_648e:
    jp $ff00


    ld a, e
    ld b, l
    cp e
    ld b, e
    cp c
    add c
    rst $38
    inc b
    add hl, hl
    jp nz, $ff00

    nop
    sbc l
    jp Jump_06c_45bb


    ld a, [$8081]
    ret nz

    ld a, [hl]
    and b
    ld a, a
    ld h, e
    nop
    rst $38
    ld [hl], c
    inc bc
    jr c, jr_06c_6501

    and e
    add hl, sp
    ld hl, HeaderTitle
    ld b, [hl]
    ld b, [hl]
    ld a, a
    cp [hl]
    ld bc, $3f00
    ld hl, sp+$7b
    ld [$40fa], sp
    cp d
    ld b, d
    ld b, l
    or d
    ld b, e

jr_06c_64c6:
    ld b, e
    ld b, e
    ld h, b
    cp [hl]
    inc bc
    nop
    ccf
    ld a, e
    jr z, jr_06c_648e

    and d
    dec sp
    ld b, b
    and h
    ld h, h
    rst $38
    ldh [$81], a
    and l
    ld a, h
    add b
    ccf
    ld h, d
    nop
    rst $38
    ld a, e
    dec h
    cp [hl]
    and d
    ld a, e
    jr nz, jr_06c_654f

    rra
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    db $fc
    ld h, b
    nop
    ccf
    nop
    rlc l
    and b
    dec sp
    inc hl
    ld l, c
    db $fc
    ld b, c
    ret nz

    ld [c], a
    nop
    ccf
    nop
    ret


    ld sp, hl
    inc hl

jr_06c_6501:
    xor a
    add b
    ld b, l
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    cp h
    ld h, b
    and c
    ld h, b
    nop
    ld e, a
    ld a, e
    add hl, hl
    add hl, sp
    ld h, e
    cp e
    ld h, b
    ld a, a
    jp nz, $8483

    cp $43
    ld a, b
    nop
    rst $38
    ld a, e
    ld b, [hl]
    ld d, c
    add c
    sbc [hl]
    add l
    add a
    adc b
    rst $38
    ld [c], a
    add e
    add a
    add l
    cp $43
    nop
    rst $38
    ld a, e
    ld h, h
    dec a
    and [hl]
    rst $38
    db $e4
    sbc h
    ld b, c
    sbc a
    ld l, b
    ld [bc], a
    nop
    rst $38
    nop
    and l
    cp c
    jr nz, jr_06c_657e

    and c
    sbc l
    rst $38
    db $e4
    ld bc, $699f
    ld h, e
    nop
    rst $38
    nop
    and $4f
    inc bc

jr_06c_654f:
    rst $38
    and $aa
    nop
    nop
    sbc a
    nop
    nop
    jp hl


    adc [hl]
    ld b, e
    ret


    pop hl
    ld [hl], e
    ld [c], a
    ld [bc], a
    ld h, c
    nop
    xor [hl]
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

jr_06c_657e:
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ld bc, $1e00
    add hl, bc
    ld bc, $1e01
    ld a, [bc]
    ld bc, $1f02
    ld a, [bc]
    ld bc, $2303
    ld a, [bc]
    ld bc, $1f04
    dec bc
    ld bc, $2305
    dec bc
    ld bc, $1f06
    inc c
    ld bc, $2307
    inc c
    ld bc, $1d08
    dec c
    ld bc, $1d09
    ld c, $01
    ld a, [bc]
    ld e, $0e
    ld bc, $1e0b
    rrca
    ld bc, $210c
    rrca
    ld bc, $230d
    db $10
    ld bc, $230e
    ld de, $0f01
    inc h
    ld [de], a
    ld bc, $2110
    inc de
    ld bc, $2011
    inc d
    ld bc, $2412
    inc d
    ld bc, $2213
    ld d, $01
    inc d
    inc h
    ld d, $01
    dec d
    dec h
    ld d, $01
    ld d, $21
    rla
    ld bc, $2417
    rla
    ld bc, $2518
    rla
    ld bc, $2119
    jr jr_06c_65ee

    ld a, [de]

jr_06c_65ee:
    inc hl
    jr jr_06c_65f2

    dec de

jr_06c_65f2:
    inc h
    jr jr_06c_65f6

    inc e

jr_06c_65f6:
    dec h
    jr jr_06c_65fa

    dec e

jr_06c_65fa:
    ld h, $18
    ld bc, $241e
    add hl, de
    ld bc, $251f
    add hl, de
    ld bc, $2620
    add hl, de
    ld bc, $2221
    ld a, [de]
    ld bc, $2422
    ld a, [de]
    ld bc, $2523
    ld a, [de]
    ld bc, $2624
    ld a, [de]
    ld bc, $2525
    dec de
    ld bc, $2626
    dec de
    ld bc, $2327
    inc e
    ld bc, $2528
    inc e
    ld bc, $2629
    inc e
    ld bc, $252a
    dec e
    ld bc, $232b
    ld e, $01
    inc l
    dec h
    rra
    ld bc, $232d
    jr nz, @+$03

    ld l, $1d
    ld hl, $2f01
    dec h
    ld hl, $3001
    inc e
    ld [hl+], a
    ld bc, $1d31
    ld [hl+], a
    ld bc, $2132
    ld [hl+], a
    ld bc, $2533
    ld [hl+], a
    ld bc, $2634
    ld [hl+], a
    ld bc, $1c35
    inc hl
    ld bc, $1d36
    inc hl
    ld bc, $2537
    inc hl
    ld bc, $1c38
    inc h
    ld bc, $1d39
    inc h
    ld bc, $253a
    inc h
    ld bc, $1d3b
    dec h
    ld bc, $1e3c
    ld h, $01
    dec a
    ld e, $27
    ld bc, $203e
    dec l
    ld bc, $263f
    dec l
    ld bc, $2140
    ld l, $01
    ld b, c
    dec h
    ld l, $01
    ld b, d
    ld [hl+], a
    cpl
    ld bc, $2343
    cpl
    ld bc, $2544
    cpl
    ld bc, $2345
    jr nc, jr_06c_669e

    ld b, [hl]

jr_06c_669e:
    inc h
    jr nc, jr_06c_66a2

    ld b, a

jr_06c_66a2:
    dec h
    jr nc, jr_06c_66a6

    ld c, b

jr_06c_66a6:
    inc hl
    ld sp, $4901
    inc h
    ld sp, $4a01
    dec h
    ld sp, $4b01
    inc h
    ld [hl-], a
    ld bc, $254c
    ld [hl-], a
    ld bc, $264d
    ld [hl-], a
    ld bc, $244e
    inc sp
    ld bc, $264f
    inc sp
    ld bc, $2450
    dec [hl]
    ld bc, $2851
    dec [hl]
    rst $38
    rst $38
    rst $38
    rst $10
    ld h, [hl]
    inc bc
    ld l, e
    ld a, b
    ld [hl], b
    sub a
    ld [hl], b
    add a
    ld c, $0e
    dec c
    rst $38
    pop hl
    ld sp, hl
    ld [c], a
    db $f4
    pop hl
    ldh a, [$e0]
    ld c, $38
    rst $38
    db $e3
    ld [$f6e2], a
    rst $38
    ld c, $4d
    ld c, l
    call z, $b9e2
    ld [c], a
    ld [hl], b
    call $fce7
    db $e4
    or $ff
    adc h
    db $e3
    dec c
    dec c
    ld c, l
    rst $38
    ldh [$3b], a
    dec l
    dec l
    ld [hl], a
    ldh [rKEY1], a
    dec c
    ld c, l
    add l
    rst $38
    ld [c], a
    and $fc
    db $d3
    pop hl
    inc a
    pop hl
    ld l, l
    dec c
    dec c
    ld a, [bc]
    ld a, [hl+]
    dec bc
    jp $2d4d


    add hl, sp
    and $85
    rst $38
    sbc $e2
    ld c, c
    db $e4
    dec c
    ld c, e
    ccf
    dec hl
    ld c, e
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    ld c, e
    cp a
    pop hl
    ld l, b
    and $f4
    ld a, e
    rst $38
    add hl, bc
    and $6d
    ret nz

    ldh [$2b], a
    dec bc
    dec hl
    ld a, [bc]
    adc c
    ld a, [hl+]
    ld a, [hl]
    ldh [$ad], a
    ret nz

    ld c, l
    add l
    rst $38
    nop
    rst $20
    ld a, l
    jp nz, $df4b

    ld l, e
    ld c, e
    dec bc
    dec bc
    ld l, e
    ld a, l
    ldh [rKEY1], a
    dec l
    ldh a, [$af]
    call nz, $ff00
    adc h
    call nz, $e3c0
    dec hl
    ld c, e
    ld c, e
    ld l, e
    rra
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, e
    dec c
    ld a, $e4
    add l
    rst $38
    sbc $e7
    rst $38
    dec c
    ld c, l
    dec l
    ld c, e
    dec hl
    ld a, [bc]
    dec bc
    ld l, e
    rrca
    ld c, d
    ld a, [hl+]
    ld c, e
    dec c
    ret nz

    db $e3
    nop
    rst $38
    ld [c], a
    and $7a
    jp $2dff


    ld l, e
    dec bc
    dec bc
    ld a, [bc]
    dec hl
    dec hl
    ld c, e
    add c
    dec bc
    add b
    pop hl
    push bc
    db $e3
    add l
    rst $38
    ld [c], a
    db $e4
    jp nc, $bfc1

    pop hl
    dec hl
    add c
    dec bc
    db $fc
    ret nz

    ld a, l
    call nz, $c3bd
    ld a, e
    rst $38
    db $db
    db $e3
    ld a, [hl-]
    and c
    dec bc
    rrca
    dec bc
    dec hl
    ld l, e
    dec c
    cp a
    db $e4
    ld l, b
    and d
    ld a, e
    rst $38
    ld h, e
    db $e3
    ld l, h
    ld bc, $c0a4
    ldh [$0b], a
    dec bc
    ld hl, sp-$60
    dec bc
    ld c, e
    dec a
    jp nz, $a7e0

    and e
    nop
    rst $38
    ld [de], a
    jp nz, $a1fe

    jp nz, Jump_000_2be0

    dec hl
    dec c
    add e
    dec c
    ld l, e
    ret nz

    pop hl
    ld h, a
    and e
    nop
    rst $38
    ld h, c
    push hl
    ld b, b
    and b
    ld l, e
    ld [hl], $bf
    ret nz

    ld l, e
    dec bc
    ret nz

    pop hl
    dec bc
    dec l
    nop
    rst $18
    nop
    db $ec
    db $fc
    cp a
    and e
    ld a, l
    ret nz

    dec hl
    dec hl
    dec bc
    ld l, e
    dec c
    ld l, l
    ld l, b
    nop
    rst $18
    nop
    ld [$a47f], a
    ld l, e
    ld a, $e1
    dec bc
    ld c, e
    ld bc, $10e4
    inc sp
    adc c
    nop
    call c, $a33f
    ld b, b
    and b
    dec hl
    ld a, e
    pop bc
    ld bc, $81e2
    push bc
    nop
    ld a, e
    rst $38
    ld a, a
    and [hl]
    nop
    and b
    ld [hl], l
    ld h, b
    ret nz

    ldh [$7c], a
    add [hl]
    and a
    ld h, c
    ld a, e
    rst $38
    ld [$a57f], sp
    ld bc, $fbe1
    and b
    ld c, e
    dec sp
    add d
    ld l, d
    jp $ff85


    sbc l
    jp Jump_000_3d00


    ld h, c
    push bc
    ld h, b
    dec a
    and b
    jp nz, Jump_000_36c0

    ldh [$7d], a
    and h
    add l
    rst $38
    ld a, d
    ld h, [hl]
    nop
    cp c
    ld b, d
    ret nz

    pop hl
    db $fd
    and c
    cp l
    pop bc
    or a
    ld b, [hl]
    ld a, e
    rst $38
    db $fd
    ld b, [hl]
    ld b, d
    and c
    ld b, $bc
    add b
    dec hl
    dec c
    ret nz

    db $e4
    or $5f
    nop
    ret z

    add b
    pop hl
    ld a, h
    pop bc
    nop
    ld a, [$7c82]
    add l
    ld e, d
    ld h, [hl]
    nop
    db $fc
    cp c
    ld b, c
    cp [hl]
    pop bc
    ret nz

    pop hl
    ld a, [hl-]
    ret nz

    add b
    ld a, e
    ld h, c

jr_06c_687b:
    db $eb
    dec h
    or $7e
    cp a
    ld h, $bf
    ld [c], a
    ld a, c
    add b
    cp $80
    ld c, e
    nop
    inc sp
    ld b, c
    ld [hl], a
    ld c, e
    nop
    cp c
    cp a

jr_06c_6890:
    inc h
    cp e
    ld h, b
    ld b, d
    ret nz

    ld a, c
    and c
    dec sp
    ret nz

    ld [hl], b
    ld a, h
    rst $20
    or $7e
    db $76
    ld b, [hl]
    cp a
    ld [c], a
    dec hl
    dec hl
    ld l, e
    ld a, c
    add b
    nop
    ld a, [hl-]
    jp nz, $c439

    or $bb
    ld d, e
    ld h, h
    sub l
    db $e4

jr_06c_68b2:
    ld a, l
    ldh [$7e], a
    ret nz

    scf
    add c
    jr nz, jr_06c_68b2

    and h

jr_06c_68bb:
    dec [hl]
    xor b
    nop
    or a
    cp c
    add a
    rst $30
    ld b, b
    ld l, e
    cp a
    ld [c], a
    di
    add b
    nop
    cp b
    jp Jump_000_3e71


jr_06c_68cd:
    cp h
    and a
    or a
    ld h, d
    ld b, b
    ldh [$37], a
    ret nz

    inc sp
    ret nz

    inc [hl]
    and c
    jr nz, jr_06c_68cd

    jr nz, jr_06c_687b

    nop
    ld e, e
    ld b, $00
    rst $30
    push af
    daa
    ld l, e
    dec a
    and b
    ld [hl], d
    add c
    nop
    ld l, [hl]
    add b
    cp c
    ldh [$ee], a
    inc b
    db $ec
    jr jr_06c_6890

    xor c
    ret nz

    db $e3
    pop bc
    jp nz, $8173

    ld bc, $b46b
    ldh [$f6], a
    and c
    ld e, e
    inc b
    jr jr_06c_6966

    nop
    or $32
    dec b
    ld [hl], $21
    nop
    ld [hl], e
    ld b, b
    ld [hl-], a
    ld b, b
    cp [hl]
    ld [c], a
    ld l, l
    ld [bc], a
    sbc l

jr_06c_6914:
    add b
    jr nc, jr_06c_68bb

    nop
    rst $30
    or [hl]
    daa
    db $10
    ld b, h
    pop hl
    or e
    jr nz, jr_06c_6914

    ld b, b
    db $ed
    jr nz, jr_06c_6990

    or l
    and b
    cp c
    push bc
    xor $61
    nop
    nop
    push af
    reti


    add d
    scf
    add h
    di
    ld bc, $6077
    ld [hl], c
    add h
    ld a, [hl-]
    ldh [$7b], a
    pop hl
    add b
    or d
    add d
    ld h, a
    db $10
    or c
    dec bc
    ld [hl], h
    ld h, h
    or d

jr_06c_6946:
    ld [bc], a
    di
    add d
    dec l
    ld b, b
    dec bc
    add b
    ld a, [hl-]
    pop hl
    ld sp, hl
    call nz, $fb00
    ld [hl], e
    dec b
    cp c
    jr nz, jr_06c_6946

    ld b, c
    ld a, [hl-]
    pop hl
    ld c, e
    ld bc, $ad0b
    jr nz, @-$3f

    db $e3
    ld a, e
    call nc, $eb00

jr_06c_6966:
    inc [hl]
    ld b, d
    add b
    pop bc
    scf
    and c
    nop
    ld a, [hl-]
    pop hl
    cpl
    ld h, b
    cp a
    db $e3
    db $76
    and c
    or $b2
    sbc l
    ld l, b
    add l
    ld b, e
    or e
    ld b, b
    dec l
    dec c
    nop
    pop bc
    ld l, e
    ld a, [bc]
    dec l
    add b
    ld c, e
    ei
    ldh [$3e], a
    ldh [rP1], a
    or $a0
    ld l, $24
    db $ec

jr_06c_6990:
    ld l, h
    nop
    db $eb
    ld d, b
    and d
    ld [hl], d
    ld b, c
    ldh a, [rNR41]
    cp [hl]
    and d
    nop
    or [hl]
    jp $a2f6


    ld [$e346], a
    ld [bc], a
    nop
    di
    adc [hl]
    add h
    cp a
    pop hl
    xor [hl]
    jr nz, jr_06c_69ad

jr_06c_69ad:
    cp a
    push hl
    daa
    nop
    or $a6
    and e
    ld a, [bc]
    ld [hl+], a
    ld [hl], h
    ld c, c
    and d
    add d
    and b
    ld a, l
    pop hl
    nop
    xor e
    ld b, c
    db $fd
    call nz, $a2f5
    and [hl]
    ld b, e
    db $ec
    ld l, c
    sbc l
    ld c, h
    ld e, a
    and $33
    add b
    nop
    ld l, d
    ld b, d
    ei
    pop bc
    jr z, jr_06c_69d5

jr_06c_69d5:
    dec sp
    ld [c], a
    rst $28
    add l
    ld [c], a
    daa
    sbc l
    ld c, l
    ld b, l
    ld b, h
    nop
    ld [hl], h
    and h
    ld l, a
    ld [bc], a
    ld sp, hl
    call nz, $e3bd
    db $e3
    inc hl
    db $ec
    ld h, a
    jr jr_06c_6a3d

    sub b
    add h
    nop
    xor e
    ld [hl+], a
    or b
    ld [hl+], a
    ld sp, $bd80
    and $ee
    add h
    or $88
    sbc l
    ld l, $45
    ld b, a
    nop
    ei
    jp nz, $a1ff

    or d
    and e
    xor d
    add d
    push af
    and l
    ld e, l
    rlca
    nop
    db $ed
    adc a
    add e
    nop
    ld l, h
    ld b, [hl]
    or c
    ld h, b
    inc sp
    add c
    ld e, a
    nop
    jr nz, jr_06c_6a5f

    dec hl
    add b
    or l
    and a
    and a
    ld d, a
    db $10

jr_06c_6a24:
    and b
    db $e4
    jr nc, jr_06c_6a89

    ld [hl], b
    ld h, b
    ld l, e
    ld hl, $f34b
    jp nz, $6066

    ret nz

    ld [c], a
    nop
    ld [hl+], a
    ld e, h
    ld l, h
    inc h
    xor b
    inc bc
    ld a, l
    ld [c], a
    ld l, l

jr_06c_6a3d:
    add c
    ld h, e
    ld h, e
    db $ec
    ld h, e
    rst $00
    dec b
    nop
    sbc l
    jr @+$75

    and h
    ei
    jp Jump_000_0363


    ld l, d
    ld h, e
    or l
    and l
    nop
    jp nc, $8d71

    ld [bc], a
    cp e
    nop
    dec l
    ld l, h
    ld hl, $20a5
    and a
    add b

jr_06c_6a5f:
    xor d
    and c
    dec sp
    push bc
    nop
    ld sp, hl
    nop
    dec h
    ld a, [bc]
    ld a, [$b4c4]
    pop bc
    ld [hl+], a
    ld b, c
    ld [$2160], a
    inc h
    ld [hl+], a
    inc e
    ld a, d
    call nz, $b910
    push bc
    add h
    ld [c], a
    ld hl, $3320
    and b
    dec hl
    jr c, jr_06c_6a24

    ldh a, [rLY]
    ld [hl+], a
    add hl, sp
    nop
    ret nz

    inc h

jr_06c_6a89:
    db $f4
    ld bc, $c275
    ld [c], a
    nop
    and h
    ld b, c
    ret nz

    ldh [$ba], a
    and [hl]
    ld a, e
    db $fc
    ld [$0025], sp
    and l
    ld b, [hl]
    pop bc
    ld [c], a
    dec l
    ld h, e
    ld b, c
    ld [hl], e
    adc b
    ld a, e
    db $fc
    adc e
    ld b, d
    nop
    and [hl]
    ld b, c
    ld h, e
    ld hl, $42ed
    cp e
    ld [c], a
    add l
    rst $38
    or $aa
    db $10
    jp $e182


    ld b, $a0
    ld bc, $4b6b
    nop
    rst $38
    or $ab
    ld h, h
    inc hl
    inc l
    ld b, e
    rst $20
    ld b, b
    inc bc
    dec c
    ld l, l
    ld b, l
    rst $20
    ld a, e
    rst $38
    db $ec
    add l
    and h
    ld hl, $402d
    pop bc
    pop hl
    nop
    ld d, d
    ld l, b
    ld a, e
    rst $38
    and [hl]
    ld b, a
    ld l, l
    ld b, c
    add d
    push hl
    nop
    sub l
    db $ec
    ld [hl], d
    and h
    inc h
    ld [bc], a
    xor d
    add e
    ld l, l
    sbc e
    ld h, h
    nop
    ld [hl], l
    db $ec
    or l
    rst $30
    and l
    inc b
    add h
    nop
    rst $38
    nop
    ld [c], a
    dec bc
    ld l, l
    ld h, d
    dec e
    ld b, e
    ld b, l
    and l
    nop
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    and b
    and b
    ret c

    rst $38
    reti


    and b
    and b
    and b
    jp c, $a0db

    and b
    rst $38
    sub $d7
    and b
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    db $fc
    add sp, -$1e
    or $ff
    db $e4
    push hl
    and $a0
    and b
    ret nc

    call $c5d1
    pop hl
    push af
    or $bd
    ldh [$b7], a
    ldh [$e8], a
    jp hl


    rst $38
    ld [$eceb], a
    and b
    push hl
    and $e7
    and b
    cp $f6
    rst $38
    db $ec
    and b
    db $e3
    db $e4
    and b
    and b
    jp nc, $d3df

    and b
    and b
    sbc a
    sbc l
    rst $38
    ldh [$a2], a
    sbc a
    ld a, [c]
    ld a, h
    ld [c], a
    and b
    add l
    rst $38
    ld [c], a
    and $a0
    and b
    db $ed
    xor $ff
    call nc, $efd5
    sbc a
    sbc h
    or d
    or d
    ld c, b
    rrca
    ld c, b
    ld b, l
    sbc h
    sbc a
    ld a, c
    ldh [$3d], a
    ldh [$85], a
    rst $38
    ld [c], a
    push hl
    rst $38
    and b
    and b
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    and c
    ld a, a
    ld b, [hl]
    ld b, l
    inc sp
    ld d, h

Jump_06c_6b82:
    ld h, b
    ld b, h
    ld b, [hl]
    cp a
    ldh [$d0], a
    db $f4
    ret nz

    ld l, e
    ldh [$85], a
    rst $38
    ld [c], a
    db $e3
    and b
    ld [$9fe2], sp
    sbc h
    rst $38
    ld b, [hl]
    dec l
    jr nz, jr_06c_6bc4

    ld a, [hl+]
    ld a, [hl+]
    ld c, b

Call_06c_6b9d:
    ld c, b
    ldh [$7e], a
    ldh [$3d], a
    ld [c], a
    add l
    rst $38
    nop
    and $8d
    ret nz

    sbc [hl]
    or d
    ld b, [hl]
    ld a, a
    dec l
    ld h, $20
    jr nz, jr_06c_6bdc

    ld e, [hl]
    ld d, d
    dec a
    pop hl
    ldh [$af], a
    pop bc
    add l
    rst $38
    nop
    push hl
    ld b, h
    pop bc
    ret nz

    ldh [rLY], a
    inc a
    ld [hl+], a

jr_06c_6bc4:
    ld a, a
    ld [hl+], a
    ld c, d
    ld h, b
    ld e, h
    ld b, [hl]
    or d
    and c
    xor a
    pop bc
    ldh [$85], a
    rst $38
    ld [c], a
    db $e4
    nop
    ret nz

    add hl, bc
    ret nz

    ld b, b
    ldh [$39], a
    swap l

jr_06c_6bdc:
    ld a, a
    inc a
    ld c, d
    ld d, d
    ld b, l
    or d
    or d
    sbc [hl]
    xor a
    jp nz, $85f4

    rst $38
    nop
    push bc
    rst $20
    ld b, $c1
    sbc a
    sbc h
    add hl, sp
    dec [hl]
    rst $38
    dec [hl]
    srl b
    scf
    ccf
    ld b, l
    or d
    sbc [hl]
    ldh [$af], a
    jp nz, $ff85

    ld [c], a
    db $e3
    sbc l
    ldh [$86], a
    and b
    sub $d7
    sbc a
    rst $38
    sbc h
    ld a, [hl-]
    rst $08
    rst $08
    dec [hl]
    dec sp
    dec [hl]
    add hl, sp
    sub b
    ld a, l
    ret nz

    dec a
    jp $a0e5


    ld a, e
    rst $38
    rst $18
    sbc l
    ld [c], a
    db $fd
    jp nz, Jump_06c_7f3e

    adc $ce
    inc a
    or d
    ld [hl], $3a
    ld b, l
    inc a
    pop bc
    and b
    dec a
    jp nz, $df7b

    nop
    db $e3
    nop
    and b
    ld b, $a0
    and c
    ret nz

    ldh [$35], a
    ld a, a
    add hl, sp
    or d
    ld [hl], $36
    ld b, l
    ld b, [hl]
    sbc [hl]
    ld a, d
    and e
    ld hl, sp+$00
    rst $38
    nop
    db $e4
    rst $38
    jp $ce3a


    call z, Call_000_3ecf
    rrca
    or d
    or d
    ld a, [hl-]
    add hl, sp
    ret nz

    ldh [$f3], a
    add e
    nop
    rst $38
    nop
    ld [c], a
    xor $fd
    add c
    sbc a
    sbc h
    ld b, l
    ret nz

    pop hl
    ld a, [hl-]
    or d
    or d
    adc a
    add hl, sp
    ld a, [hl-]
    ld b, l
    sbc [hl]
    ld a, e
    sbc a
    nop
    db $ec
    cp a
    and c
    add hl, sp
    cp $c0
    ret nz

    dec [hl]
    jr c, jr_06c_6cb1

    ld [hl], $36
    sbc h
    sbc a
    ld hl, sp+$7b
    sbc a
    nop
    ret


    ld a, a
    and h
    ld b, l
    ld a, [hl-]
    ld l, h
    ld [hl], d
    ld [hl], c
    rra
    ld [hl], d
    ld l, h
    ld a, [hl-]
    ld b, l
    and c
    ld a, e
    sbc a
    nop
    bit 7, a
    and e
    rst $38
    ld b, [hl]
    ld a, $73
    ld l, [hl]
    cp e
    ld l, [hl]
    ld [hl], h
    ld a, $83
    ld b, [hl]
    sbc [hl]
    or $60
    ccf
    jp nz, $ff7b

    nop
    jp $a37f


    ld b, [hl]
    ld a, a
    ld a, $6a
    cp e

jr_06c_6cb1:
    cp e
    cp e
    ld l, c
    ld a, $7c
    add a
    ld hl, sp+$7b
    sbc a
    nop
    call nz, $a27f
    ld b, [hl]
    add hl, sp
    ld [hl], l
    ld h, [hl]
    cp e
    rrca
    ld h, d
    db $76
    add hl, sp
    ld b, [hl]
    dec sp
    add c
    ld a, $e3
    nop
    rst $38
    nop
    call nz, Call_000_3dfc
    ld h, b
    cp [hl]
    ld h, b
    ld a, [hl-]
    ld [hl], a
    ld h, h
    ld a, b
    inc a
    or d
    ldh [$36], a
    ldh [$7c], a
    add e
    nop
    rst $38
    nop
    push bc
    dec a
    ld h, d
    sbc [hl]
    or d
    add hl, sp
    rra
    dec [hl]
    rst $08
    call Call_000_36cf
    cp a
    pop hl
    db $fd
    ret nz

    dec hl

jr_06c_6cf4:
    ld h, b
    ld hl, sp+$00
    rst $38
    nop
    call nz, Call_06c_623d
    and c
    or d
    or d
    inc a
    adc $7f
    call z, $cfcb
    jr c, jr_06c_6d3e

    or d
    ld b, [hl]
    ld a, h
    add e
    ld hl, sp+$7b
    rst $18
    nop
    and h
    dec a
    ld h, d
    sbc [hl]
    or d
    ld b, l
    ld [hl], $cf
    rst $38
    call z, $cccc
    rst $08
    inc a
    or d
    ld b, [hl]
    and c
    add [hl]
    dec hl
    ld h, d
    sub $d7
    ld l, h
    ld b, b
    nop
    rst $38
    nop
    ld b, b
    inc a
    ld h, h
    ld b, l
    dec bc
    ld [hl], $ce
    cp a
    pop hl
    or d
    ld sp, hl
    ld b, d
    db $eb
    inc h
    ld a, e
    call c, $e400
    sbc h
    ret z

jr_06c_6d3e:
    ld hl, $40fb
    ld b, b
    rst $08
    cp e

Jump_06c_6d44:
    ld a, a
    ldh [$7d], a
    pop bc
    sbc l
    dec c
    sbc l
    inc [hl]
    ld b, e
    sub $d7
    nop
    rst $38
    jr jr_06c_6cf4

    ld a, a
    ld hl, $80fb
    dec b
    ld [hl], $be
    ret nz

    dec [hl]
    inc a
    add b
    rst $38
    ldh [$34], a
    ld b, d
    ld h, a
    inc hl
    nop
    sbc l
    ld hl, sp+$18
    ret nz

    ld c, l
    and d
    cp d
    add b
    scf
    jr c, jr_06c_6da5

    dec [hl]
    dec [hl]
    add b
    ld a, h
    ret nz

    ld a, [hl-]
    pop bc
    or c
    jr nz, jr_06c_6daf

    and h
    nop
    sbc h
    ld a, e
    ld h, c
    ret z

    ld [hl+], a
    sbc a
    ld bc, $7d9d
    ldh [$bf], a
    ldh [$7c], a
    ret nz

    ld hl, sp-$5d
    dec [hl]

jr_06c_6d8d:
    and e
    nop
    ld a, h
    jr @-$3b

    db $ec
    cp h
    nop
    rst $30
    ld b, d
    ld b, l
    ld a, [hl-]
    ld a, [hl]
    ldh [$35], a
    dec [hl]
    dec sp
    ldh [$f7], a
    and c
    or c
    inc hl
    or $99

jr_06c_6da5:
    ld [hl], $28
    adc d
    add e
    and c
    ld b, l
    ld a, [hl-]
    ld a, $3b
    add b

jr_06c_6daf:
    dec [hl]
    cp e
    jr c, jr_06c_6deb

    dec sp
    dec [hl]
    and [hl]
    sbc a
    nop
    ret c

    or $b5
    sbc l
    and [hl]
    ld a, d
    push bc
    sbc [hl]
    ld b, b
    dec a
    and b
    or d
    ld [hl], $34
    dec [hl]
    ld h, c
    push af
    add b
    or d
    ld [hl], $c2
    jp nc, $99d3

    ld bc, $fa00
    inc l
    sub e
    ld h, d
    or l
    ld [hl+], a
    ld b, l
    ld a, [hl-]
    pop bc
    pop bc
    inc a
    ld [hl], l
    ld h, b
    inc l
    add b
    ret nz

    or c
    ld hl, $a374
    ld l, l
    ld b, d
    nop
    ld sp, hl
    sub e

jr_06c_6deb:
    add c
    dec b
    jr nz, jr_06c_6d8d

    ld b, [hl]
    ld a, l
    add hl, sp
    cp c
    ld b, b
    rst $08
    call $cfcd
    add hl, sp
    cp h
    call nz, $9fb0
    ld [bc], a
    or e
    and h
    nop
    ld hl, sp-$0a
    ld [hl+], a
    push af
    or $fb
    and c
    ld a, [hl-]
    rst $18
    or d

jr_06c_6e0b:
    rst $08
    call z, $cecb
    di
    ld b, b
    scf
    scf

jr_06c_6e13:
    ld [bc], a
    ld sp, $9d40
    or h
    and c
    xor d
    ld bc, $a05a
    nop
    rst $30
    ld a, e
    call nz, $8237
    dec sp
    inc a
    ld [hl], $f6
    add b
    adc $35
    dec sp
    ld [hl], c
    add l
    scf
    jp $ddf0


    jp $f900


    or $60
    scf
    add b
    sbc a
    sbc h
    scf
    jr c, jr_06c_6e43

    cp a
    ldh [$cf], a
    res 6, d
    add d

jr_06c_6e43:
    jr nc, @-$7e

    ld [hl], c
    and b
    rst $28
    add d
    or $b1
    call z, Call_06c_6b9d
    ld c, c
    add e
    sbc [hl]
    ld b, [hl]
    cp c
    jr nz, jr_06c_6ed1

    ret nz

jr_06c_6e56:
    rst $08
    call Call_000_3ac0
    ldh [$2c], a
    jr nz, jr_06c_6e0b

    jr nz, jr_06c_6e56

    or [hl]
    nop
    db $eb
    push de
    jp $46a1


    ld a, [bc]
    ccf
    ret nz

    dec sp
    inc [hl]
    ld b, b
    ld a, [hl-]
    ld a, [hl-]
    pop hl

Jump_06c_6e70:
    jr nc, jr_06c_6e13

    ld a, [hl]
    db $e3
    or $b1
    cp b
    nop
    db $ed
    call nz, $b301
    ld b, c
    or d
    ccf
    or d
    push af
    add b
    rlc h
    db $ec
    ld hl, $0027
    ld b, h
    or $a3
    ld l, d
    ld h, c
    or $ac
    nop
    db $ed
    ld a, [bc]
    add d
    nop
    ld [hl], d
    ld b, c
    inc b
    pop bc
    ld a, e
    ldh [$b2], a
    add b
    ld l, b
    nop
    xor e
    ld b, b
    or $b4
    sbc l
    ld c, e
    ld h, [hl]
    jp z, $da61

    db $db
    dec sp
    pop bc
    cp a
    ld [c], a
    ld b, l
    ld b, e
    or e
    add c
    dec b
    rst $08
    jr z, jr_06c_6ed5

    ccf
    cp h
    jp nz, $b0f6

    sbc l
    ld c, a
    or h

jr_06c_6ebd:
    ld h, h
    add d
    and d
    dec b
    ld b, [hl]
    dec sp
    pop hl
    dec [hl]
    ld h, a
    nop
    cp h
    jp $a0f6


    xor c
    ld h, e
    rst $18
    nop
    ret nc

    nop

jr_06c_6ed1:
    db $d3
    ld [hl], c
    ld [bc], a
    or h

jr_06c_6ed5:
    ld h, d
    call nc, $9ce1
    or a
    ret nz

    or d
    ld a, [hl-]
    inc d
    ccf
    pop hl
    db $ec
    ld h, b
    ld b, e
    xor d
    ld h, c
    or d
    ld sp, hl
    jp $6226


    nop
    pop de
    sub b
    ld a, e
    and d
    sbc a
    db $e3
    or b
    ld h, d
    db $76
    ret nz

    add hl, sp
    ld [hl-], a
    add d
    cpl
    add b
    jr c, jr_06c_6ebd

    scf
    cp l
    ld [c], a
    ld h, c
    ld hl, $20a1
    nop
    jp nc, $c47b

    db $e3
    db $e4
    ld a, b
    db $f4
    ld h, d
    xor e
    ld hl, $c035

jr_06c_6f10:
    inc a
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld l, a
    add b
    ld [bc], a
    db $ec
    ld h, c
    jr c, jr_06c_6f4b

    and b
    ld [hl], e
    and l
    nop
    push af
    ld a, e
    jp nz, $2240

    xor e
    jr nz, jr_06c_6f30

    and c
    cp e
    ret nz

    dec l
    ld h, b
    ld a, $f5
    add b
    xor d

jr_06c_6f30:
    ld h, d
    or h
    and l
    ld [hl], d
    add e
    ld b, b
    nop
    db $f4
    db $f4
    ld h, e
    xor e
    ld [hl+], a
    ld [hl], $c2
    xor a
    add c
    ld a, c
    ld [c], a
    ld [hl], $24
    ld h, b
    ld [bc], a
    dec [hl]
    pop bc
    and c

jr_06c_6f49:
    dec h
    ld b, c

jr_06c_6f4b:
    xor e

jr_06c_6f4c:
    ld h, d
    nop
    ldh a, [$71]
    ld h, l
    ld c, c
    add e
    cp a
    db $e4
    ld d, $6b
    jr nz, jr_06c_6f95

    dec [hl]
    db $e4
    nop
    ld a, [hl-]
    xor b
    ld h, b
    ld hl, $a020
    ld bc, $0d00
    jr nz, @+$69

    ld b, b
    sbc l
    dec d
    db $eb
    ld [hl+], a
    ld [hl], e
    and e
    xor a
    nop
    db $ec
    ld b, b
    or l
    and c
    rlca
    ld [hl], $b2
    add hl, sp
    ld h, l
    ld b, d
    dec h
    ld b, b
    rra
    dec h
    sbc l
    add hl, de
    ld [hl], e
    and l
    ld b, d
    ld l, [hl]
    nop
    add hl, sp
    ret nz

    ld [c], a
    ld h, $61
    jr nc, jr_06c_6f10

    xor e
    ld h, e
    and b
    nop
    pop de
    ld hl, sp+$71
    xor c
    xor h

jr_06c_6f95:
    ld b, c
    push af
    and b
    sbc h
    ld b, l
    ccf
    ld b, e
    scf
    rrca
    jr c, jr_06c_6fdb

    ld [hl], $45
    xor d
    and e

jr_06c_6fa4:
    ld h, $43
    jr c, jr_06c_6f49

    nop
    rst $30
    ldh [$67], a
    ld [c], a
    or b
    add e
    db $e4
    ld [bc], a
    ld [hl-], a
    and c
    ld l, b
    ld [hl+], a
    ld b, [hl]
    ld b, l
    ld b, c
    add b
    rst $28
    ld h, e
    cp e
    and a
    sbc l
    ld d, $ba
    inc bc
    jp hl


    ld [hl+], a
    adc b
    db $e3
    ld [hl], d
    jp nz, $80a6

    jr nc, jr_06c_6f4c

    cp h
    jp nz, $fb00

    ld h, a
    inc hl
    cp d
    inc bc
    jr nc, @-$5d

    ld l, d
    add d
    ld b, l
    xor a
    ld [hl], $62

jr_06c_6fdb:
    and a
    ld h, [hl]
    rst $28
    ld h, b
    sbc [hl]
    db $d3
    ld b, c
    and b
    pop bc
    and b
    ld [hl+], a
    dec de
    ld a, e
    push hl
    ld [hl], $03
    add sp, $61
    pop bc
    ldh [$67], a
    and e
    ld h, c
    ld l, b
    cp a
    ldh [$c0], a
    ldh [rNR43], a
    rra
    ld [hl], c
    and e
    db $e3
    db $e4
    ld h, l
    ld hl, $7bf6
    jr nz, jr_06c_6fa4

    or d
    pop bc
    pop hl
    dec [hl]
    dec [hl]
    ld l, h
    or a
    rlca
    cp b
    ld b, d
    sbc [hl]
    rst $20
    nop
    xor d
    jr nz, jr_06c_7035

    dec de
    or $a8
    and [hl]
    ld b, c
    rst $38
    sbc [hl]
    or d
    ld [hl], $b9
    cp d
    and e
    dec [hl]
    ld l, h
    rrca
    ld l, a
    ld l, [hl]
    ld [hl], $45
    ld a, h
    and d
    nop
    rst $38
    db $ec
    ld h, l
    and [hl]
    ld b, d
    ccf
    sbc [hl]
    ld b, l
    ld [hl], $6e
    ld l, a
    ld l, h

jr_06c_7035:
    pop bc
    ld [c], a
    rst $20
    inc bc
    jr nc, jr_06c_703b

jr_06c_703b:
    rst $38
    ld [c], a
    dec b
    ld a, e
    ld [hl+], a
    and h
    ld hl, $6f6e
    pop bc
    db $e3
    xor h
    ld [bc], a
    nop
    nop
    rst $38
    or $ab
    cp a
    ld [c], a
    add d
    db $e3
    ld h, e
    add b
    nop
    sub l
    or $b7
    ld l, c
    ld h, e
    nop
    jr nc, jr_06c_707c

    rst $10
    ld [hl+], a
    nop
    sub l
    db $ec
    sub l
    rlca
    ld h, e
    ld [hl], $22
    xor h
    ld [bc], a
    nop
    ld [hl], h
    inc c
    or $b9
    ld a, d
    inc bc
    sub $d7
    pop af
    ld bc, $2200
    nop
    nop
    nop
    pop bc
    nop
    rst $38
    rst $38

jr_06c_707c:
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
    ld bc, $0900
    inc bc
    ld bc, $0a01
    inc bc
    ld bc, $0702
    ld b, $01
    inc bc
    rlca
    rlca
    ld bc, $1104
    rlca
    ld bc, $1005
    ld [$0601], sp
    ld de, $0108
    rlca
    ld de, $0109
    ld [$0b0e], sp
    ld bc, $0f09
    inc c
    ld bc, $0f0a
    dec c
    ld bc, $100b
    dec c
    ld bc, $0f0c
    ld c, $01
    dec c
    db $10
    ld c, $01
    ld c, $08
    rrca
    ld bc, $080f
    db $10
    ld bc, $0810
    ld de, $1101
    ld c, $11
    ld bc, $0d12
    ld [de], a
    ld bc, $0e13
    ld [de], a
    ld bc, $0f14
    ld [de], a
    ld bc, $0e15
    inc de
    ld bc, $0b16
    inc d
    ld bc, $1117
    inc d
    ld bc, $1218
    inc d
    ld bc, $0b19
    dec d
    ld bc, $121a
    dec d
    ld bc, $131b
    dec d
    ld bc, $0b1c
    ld d, $01
    dec e
    inc c
    ld d, $01
    ld e, $14
    ld d, $01
    rra
    dec bc
    rla
    ld bc, $1420
    rla
    ld bc, $1421
    jr jr_06c_7121

    ld [hl+], a

jr_06c_7121:
    db $10
    add hl, de
    ld bc, $1623
    dec de
    ld bc, $1724
    dec de
    ld bc, $1825
    dec de
    ld bc, $1826
    inc e
    ld bc, $1927
    inc e
    ld bc, $1a28
    inc e
    ld bc, $1b29
    dec e
    ld bc, $1c2a
    dec e
    ld bc, $182b
    ld e, $01
    inc l
    inc d
    rra
    ld bc, $152d
    rra
    ld bc, $162e
    rra
    ld bc, $1a2f
    rra
    ld bc, $1f30
    rra
    ld bc, $1531
    jr nz, jr_06c_7161

    ld [hl-], a

jr_06c_7161:
    ld d, $20
    ld bc, $1733
    jr nz, jr_06c_7169

    inc [hl]

jr_06c_7169:
    ld a, [de]
    jr nz, jr_06c_716d

    dec [hl]

jr_06c_716d:
    dec de
    jr nz, @+$03

    ld [hl], $1c
    jr nz, jr_06c_7175

    scf

jr_06c_7175:
    jr nz, jr_06c_7197

    ld bc, $1638
    ld hl, $3901
    inc e
    ld hl, $3a01
    dec e
    ld hl, $3b01
    ld e, $21
    ld bc, $163c
    ld [hl+], a
    ld bc, $1c3d
    ld [hl+], a
    ld bc, $1d3e
    ld [hl+], a
    ld bc, $143f
    inc hl

jr_06c_7197:
    ld bc, $2140
    inc hl
    ld bc, $2241
    inc hl
    ld bc, $2242
    inc h
    ld bc, $2343
    inc h
    ld bc, $1644
    dec h
    ld bc, $1945
    dec h
    ld bc, $1a46
    dec h
    ld bc, $1647
    ld h, $01
    ld c, b
    rla
    ld h, $01
    ld c, c
    jr jr_06c_71e6

    ld bc, $1a4a
    daa
    ld bc, $294b
    daa
    ld bc, $1c4c
    jr z, jr_06c_71cd

    ld c, l

jr_06c_71cd:
    ld a, [hl+]
    jr z, jr_06c_71d1

    ld c, [hl]

jr_06c_71d1:
    add hl, de
    ld a, [hl+]
    ld bc, $1a4f
    ld a, [hl+]
    ld bc, $1f50
    ld a, [hl+]
    ld bc, $1f51
    dec hl
    ld bc, $2052
    dec hl
    ld bc, $2153

jr_06c_71e6:
    dec hl
    ld bc, $2f54
    dec hl
    ld bc, $3055
    dec hl
    ld bc, $2056
    inc l
    ld bc, $2157
    inc l
    ld bc, $2158
    dec l
    ld bc, $2259
    dec l
    ld bc, $275a
    dec l
    ld bc, $275b
    ld l, $01
    ld e, h
    jr z, jr_06c_7239

    ld bc, $275d
    cpl
    ld bc, $285e
    cpl
    ld bc, $295f
    cpl
    ld bc, $2960
    jr nc, jr_06c_721d

    ld h, c

jr_06c_721d:
    dec l
    jr nc, jr_06c_7221

    ld h, d

jr_06c_7221:
    ld l, $30
    ld bc, $3263
    jr nc, jr_06c_7229

    ld h, h

jr_06c_7229:
    inc hl
    ld sp, $6501
    ld l, $31
    ld bc, $3166
    ld sp, $6701
    ld [hl-], a
    ld sp, $6801

jr_06c_7239:
    inc sp
    ld sp, $6901
    inc h
    ld [hl-], a
    ld bc, $2e6a
    ld [hl-], a
    ld bc, $2f6b
    ld [hl-], a
    ld bc, $306c
    ld [hl-], a
    ld bc, $316d
    ld [hl-], a
    ld bc, $326e
    ld [hl-], a
    ld bc, $2f6f
    inc sp
    ld bc, $3070
    inc sp
    ld bc, $2e71
    jr c, jr_06c_7261

    ld [hl], d

jr_06c_7261:
    ld l, $39
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    ld [hl], d
    or $75
    ld a, a
    ld a, d
    sbc [hl]
    ld a, d
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $ff
    ret nz

    db $ec
    rst $28
    db $dd
    pop hl
    rst $10
    db $e3
    or $ff
    or $f6
    sbc c
    ld [$0e0e], a
    ld bc, $ff4d
    pop hl
    add l
    rst $38
    ld [c], a
    push hl
    sbc c
    db $ec
    ret nz

    db $e3
    add l
    rst $38
    and e
    ld a, [c]
    ld d, $87
    db $e3
    ld c, h
    dec l
    cp a
    ldh [$0d], a
    ld a, l
    ldh [rPCM12], a
    db $e4
    nop

jr_06c_72a5:
    rst $38
    inc c
    inc d
    db $e4
    ld c, [hl]
    pop hl
    dec c
    ld c, l
    ret nz

    pop hl
    db $e4
    jp $e1bc


    ld a, e
    rst $38
    nop
    sbc c
    rst $00
    ret nz

    pop af
    ld [hl-], a
    ld [c], a
    nop
    rst $38
    ld [hl], b
    add $80
    rst $20
    jr nc, jr_06c_72a5

    or d
    pop bc
    ret z

    add l
    rst $38
    sbc c
    add $cb
    ld [c], a
    ld l, l
    nop
    pop hl
    cp l
    ret nz

    ld c, l
    ld c, l
    ldh [$f8], a

jr_06c_72d6:
    ld [c], a
    ld l, a
    ret nz

    nop
    rst $38
    inc d
    jp $c286


    ld l, l
    ld c, h
    inc l
    ld h, [hl]
    call nz, Call_06c_4de1
    ld l, l
    or c
    ret nz

    or a
    pop hl
    ld c, $0e
    or $e0
    adc b
    nop
    rst $38
    inc d
    call nz, $c0c2
    inc l
    ld [hl], a
    push hl
    cp a
    pop hl
    or l
    pop bc
    ld l, l
    db $fc
    db $ec
    cp d
    sbc c
    xor e
    ld c, l
    dec c
    inc c
    dec c
    dec c
    ld l, e
    cp e
    dec bc
    dec hl
    ld bc, $0be2
    dec bc
    dec bc
    inc a
    ldh [$6d], a
    jr nc, jr_06c_72d6

    ldh [$66], a
    jp nz, $ff00

    ret nz

    db $e4
    ld c, e
    ld c, e
    cp [hl]
    ldh [$bd], a
    ldh [$e0], a
    ret nz

    ldh [$bf], a
    pop hl
    ld [hl-], a
    push bc
    nop
    rst $38
    add [hl]
    and c
    inc c
    ld l, h
    dec c
    ld a, a
    dec c
    dec l

jr_06c_7334:
    dec c
    ld l, e
    ld a, [bc]
    dec bc
    dec bc
    ret nz

    ld [c], a
    ldh a, [$b9]
    jp $e6c0


    nop
    cp e
    adc h
    and c
    dec l
    inc c
    inc c
    inc c
    cp l
    inc l
    dec a
    ldh [rOCPD], a
    dec l
    dec c
    dec hl
    jr c, jr_06c_7334

    dec bc
    or b
    ld [hl], a
    ret nz

    ld [hl-], a
    jp nz, $ff00

    ld c, h
    and d
    ld l, l
    dec l
    cp l
    pop bc
    dec bc
    rlca
    dec l
    dec l
    dec l
    rst $38
    ret nz

    cp a
    ld [c], a
    ld a, [$dec1]
    adc c
    nop
    or a
    ld [hl-], a
    add d
    add e
    dec l
    inc a
    ld [c], a
    adc e
    ldh [$0b], a
    ld a, [bc]
    or [hl]
    ret nz

    ld a, [$f8c3]
    ld b, d
    and $00
    db $db
    ld c, e
    add c
    ld l, l
    dec c
    dec bc
    ld l, h
    inc c
    jr z, @+$03

    ldh [$b7], a
    ret nz

    ld a, [hl]
    ret nz

    dec hl
    cp d
    pop bc
    dec bc
    ret nz

    db $e4
    or c
    add d
    ld c, h
    nop
    sbc d
    ret nc

    and c
    ld c, l
    dec l
    ret nz

    pop hl
    cp a
    pop hl
    ld l, e
    cp a
    ld [c], a
    ld b, b
    ld [hl-], a
    pop hl
    cp l
    jp $9f00


    sub b
    and d
    ld a, $e1
    add h
    pop bc
    dec bc
    ld a, c
    pop bc
    jr nz, @-$0b

    and d
    cp l
    call nz, $de00
    add d
    ld h, c
    add h
    ld h, c
    dec bc
    ld a, a
    pop hl
    add a
    pop hl
    nop
    ld b, d
    ld [c], a
    cp l
    jp $8478


    nop
    ld a, l
    ld e, b
    ld [c], a
    ret nz

    ld [c], a
    ld a, [hl]
    and b
    cp $c1
    ret nz

    cp h
    db $e3
    db $eb
    ld h, c
    ld h, a
    ld [hl], e
    inc d
    ld h, a
    ld a, l
    ld h, d
    ld a, [hl-]
    and d
    inc l
    ld c, h
    add b
    adc c
    db $e3
    inc [hl]
    and b
    dec a
    pop hl
    ret nz

    db $e4
    nop
    rst $38
    add c
    ld h, b
    add hl, sp
    ld h, b
    dec c
    add l
    ld l, l
    ret nz

    db $e4
    dec c
    cp h
    and c
    ld hl, sp-$1f
    add b
    db $e4
    nop
    rst $38
    ld c, l
    add $07
    ret nz

    dec l
    ld l, l
    pop bc
    ret nz

    add e
    pop hl
    cp h
    add e
    dec hl
    dec bc
    ld b, c
    ld l, e
    jp hl


    ld h, c
    di
    ld b, l
    nop
    sbc b
    cp l
    ld b, c
    ld b, c
    and b
    inc c
    pop bc
    pop hl
    ld [bc], a
    add e
    pop hl
    dec bc
    dec a
    and b
    ld a, c
    db $e3
    pop bc
    ldh [rNR52], a
    ld b, d
    nop
    db $fc
    ld b, b
    and d
    ld b, a
    ld l, l
    ld l, l
    dec l
    add l
    ld [c], a
    pop bc
    pop hl
    jp nz, Jump_06c_4ba3

    add d
    pop hl
    ld [$61e3], sp
    nop
    ld a, a
    jp nz, Jump_06c_4d22

    cp a

jr_06c_7446:
    pop hl
    ret


    and c
    add e
    and b
    add b
    and c
    pop bc
    ld c, e
    ld l, [hl]
    ld b, c
    add c
    push bc
    nop
    cp h
    cp e
    db $e3
    ld a, h
    db $e3
    dec l
    dec l
    nop
    cp [hl]
    add b
    ld bc, $c0e0
    ld [c], a
    or $31
    nop
    ld l, a
    adc $43
    ld a, h
    db $e3
    inc b
    and h
    inc bc
    ld l, e
    ld c, e
    inc bc
    jp nz, Jump_06c_7f00

    ld a, e
    add [hl]
    db $76
    ld h, e
    call nz, $c184
    ldh [rP1], a
    add e
    push bc
    nop
    rst $18
    rst $38
    and d
    or a
    ld h, e
    ld [bc], a
    ldh [$84], a
    add c
    pop bc
    db $e4
    add l
    rst $38
    nop
    ld a, e
    and a
    or [hl]
    ld b, h
    push bc
    jp $803c


    add e
    add h
    nop
    sbc $52
    rlca
    push af
    ld h, d
    ret nz

    dec b
    add d
    ld bc, $4381
    add e
    jr z, jr_06c_74a8

    ld a, e
    rst $38

jr_06c_74a8:
    ld b, $44
    dec c
    ld c, l
    ld bc, $456d
    jp $a245


    nop
    ld a, a
    ld a, e
    dec hl
    ld a, [hl-]
    jr nz, jr_06c_74ff

    jp nz, $67c3

    inc b
    add l
    rst $38
    ld a, e
    ld c, c
    dec c
    ld b, d
    jr nz, jr_06c_7446

    db $e4
    dec b
    and h
    nop
    ccf
    ld a, e
    ld c, c
    nop
    add d
    ld [bc], a
    ret nz

    push hl
    add d
    jp Jump_000_3f00


    ld a, e
    xor c
    jp $c621


    ld b, b
    add d
    ret nz

    nop
    ld [hl], l
    pop hl
    jp nz, Jump_000_0026

    rst $38
    ld a, e
    and e
    ld c, c
    add d
    ret nz

    pop hl
    adc b
    ld h, c
    dec l
    and h
    nop
    add l
    rst $38
    ld a, e
    inc h
    ld a, d
    ld [hl+], a
    ld b, a
    ld b, d
    ld b, [hl]
    and b
    ret nz

    db $e3
    call nz, Call_000_0047
    rst $38

jr_06c_74ff:
    nop
    ld d, [hl]
    add e
    ret


    ld h, d
    nop
    ld b, c
    cp a
    nop
    ld b, $86
    nop
    rst $38
    ld b, c
    jp nz, $a303

    ld bc, $c16b
    ld [c], a
    ld a, [hl]
    inc bc
    add l
    ld [hl], b
    nop
    or h
    ld l, $a1
    rst $38
    call nz, Call_06c_4545
    nop
    add $43
    nop
    rst $38
    rst $00
    ld b, c
    sub $c3
    cp e
    nop
    pop bc
    push hl
    ldh [$80], a
    add $43
    nop
    nop
    rst $38
    ld b, h
    ld b, c
    ld e, e
    and d
    jp $c0e5


    db $e4
    dec b
    ld h, e
    nop
    rst $38
    ret z

    and l
    nop
    ld b, a
    add h
    adc b
    ld bc, $4144
    dec b
    inc hl
    ld d, e
    sub h
    add l
    adc l
    ld b, e
    inc hl
    pop bc
    rst $20
    nop
    cp d
    nop
    add [hl]
    ld b, c
    add l
    rst $38
    nop
    rst $20
    ret nz

    db $eb
    add [hl]

jr_06c_755f:
    ld b, e
    add l
    di
    nop
    push af
    nop
    ret z

    ld [c], a
    ld c, $20
    add hl, bc
    dec h
    ld h, e
    ret


    nop
    rst $38
    ld b, b
    add sp, $09
    ld h, $00
    rst $38
    ld [de], a
    add l
    and [hl]
    ld l, l
    dec b
    add b
    ld c, b
    dec b
    ld l, e
    ld [bc], a
    db $e3
    add l
    rst $38
    add e
    ld b, $24
    ret nz

    pop hl
    ld c, e
    pop bc
    ld l, e
    add c
    and b
    add hl, bc
    jr nz, jr_06c_75bc

    ld a, [bc]
    ld [hl-], a
    nop
    ld e, b
    nop
    ret nz

    ld [c], a
    cp a
    ld [c], a
    rst $38
    ldh [rOBP1], a
    ld b, a
    nop
    rst $38
    nop
    xor b
    adc e
    jr nz, jr_06c_755f

    pop hl
    nop
    ld a, c
    nop
    or d
    ld b, [hl]
    nop
    rst $38
    sbc l
    rst $00
    cp [hl]
    ld [bc], a
    cp e
    nop
    or a
    add h
    ld a, [c]
    inc hl
    nop
    add l
    rst $38
    nop
    db $e3
    ld b, e
    dec h

jr_06c_75bc:
    add hl, sp
    inc hl
    ld [hl], $65
    add l
    inc [hl]
    nop
    ld sp, $0778
    nop
    ld a, [bc]
    add e
    ld [hl], b
    ld b, e
    nop
    rst $38
    ld [hl], c
    add hl, hl
    ld a, b
    ld [bc], a
    jp z, $8563

    rst $10
    nop
    dec [hl]
    nop
    ret nz

    and $72
    inc bc
    add l
    rst $38
    or $0b
    inc d
    ld h, a
    adc a
    dec d
    nop
    ccf
    inc d
    ld e, b
    nop
    ld a, e
    rst $38
    or $ff
    nop
    ei
    or $ff
    nop
    ld c, b
    nop
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
    ld c, $99
    rst $28
    sub $d7
    and b
    rst $38
    pop hl
    add l
    rst $38
    ld [c], a
    ld [c], a
    sbc c
    rst $28
    add e
    ret c

    reti


    ret nz

    ld [c], a
    add l
    rst $38
    ld [c], a
    ld [c], a
    sbc c
    db $ec
    add l
    ldh [$da], a
    rst $38
    db $db
    sbc a
    ld de, $a09f
    and b
    push af
    or $c7
    and b
    ret nc

    pop de
    db $76
    ld [c], a
    nop
    rst $38
    sbc c
    and $f5
    or $ee
    call z, $9ee1
    ld de, $3a9e
    ld [c], a
    jp nc, $a0d3

    ldh [$32], a
    ldh [rP1], a
    rst $38
    sbc c
    rst $00
    call z, $c0e3
    pop hl
    ret c

    reti


    db $ed
    rrca
    xor $d4
    push de
    rst $28
    ld hl, sp-$20
    ld a, [c]
    pop bc
    nop
    rst $38
    inc d
    db $e3
    db $fc
    call z, $80e3
    pop hl
    jp c, $f0db

    pop af
    ld a, [c]
    di
    dec a
    db $f4
    ld [hl-], a
    ldh [$a0], a
    and b
    db $e3
    db $e4
    nop
    rst $38
    inc d
    jp nz, $a0cd

    call z, $9fe2
    sbc h
    ld b, b
    ldh [$7c], a
    ret nz

    sbc a
    sbc l
    add c
    sbc l
    ld hl, sp-$40
    dec a
    pop hl
    cp [hl]
    ldh [rP1], a
    rst $38
    adc a
    pop bc
    ret


    ld [c], a
    sbc h
    rst $38
    ld [de], a
    ld [de], a
    sbc h
    and d
    sbc l
    sbc l
    sbc l
    sbc h
    ld h, a
    or d
    or d
    sbc h
    cp a
    pop hl
    ld l, a
    ret nz

    push af
    or $00
    rst $38
    db $fc
    inc d
    jp nz, $c003

    sbc [hl]
    ld [de], a
    ld [de], a
    ld a, c
    ld a, d
    ld a, e
    ld [hl], a
    ld a, h
    ld a, l
    or d
    rst $38
    pop hl
    sbc h
    and d
    sbc a
    dec a
    pop hl
    ld hl, sp-$14
    or a
    ld e, $cc
    inc bc
    ret nz

    sbc [hl]
    ld de, $7e79
    cp [hl]
    ld [hl], a
    cpl
    ld a, [hl+]
    adc [hl]
    cp l
    pop hl
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld a, l
    db $e4

Jump_06c_76e0:
    ld hl, sp+$66
    jp nz, $df00

    pop de
    ret nz

    sbc [hl]
    ld de, $8382
    dec hl
    ld a, a
    inc l
    ld hl, $383b
    scf
    ld a, a
    ld a, l
    ret nz

    ldh [$e0], a
    cp a
    ld [c], a
    cp d
    pop bc
    ld [hl-], a
    ret nz

    nop
    rst $38
    ld b, l
    and b
    and c
    ld [de], a
    ld [de], a
    rst $38
    add [hl]
    adc b
    adc c
    add e
    ld a, [hl-]
    swap l
    ld b, b
    dec c
    add c
    ret nz

    pop hl
    or d
    sbc h
    cp c
    pop bc
    ld [hl-], a
    jp nz, $ff00

    ld [bc], a
    and b
    cp $c0
    ret nz

    inc de
    rlca
    ld [bc], a
    adc e
    add hl, sp
    dec [hl]
    ld [hl], $5f
    add e
    add h
    ld b, l
    scf
    scf
    ld sp, hl
    ret nz

    ld b, [hl]
    cp [hl]
    ldh [$f8], a
    ld [hl-], a
    jp nz, $ff00

    ret nc

    and c
    sbc a
    sbc l
    sbc h
    ld [bc], a
    ld [$82ff], sp
    add e
    ccf
    add e
    add [hl]
    add l
    or d
    inc a
    inc sp
    dec [hl]
    ld [hl], $bf
    pop hl
    ld a, [$d6c2]
    rst $10
    nop
    rst $38
    ret nc

    and d
    cp $3d
    jp nz, $8887

    add a
    add l
    or d
    or d
    inc a
    sbc c
    res 7, a
    ldh [$fa], a
    call nz, $d9d8
    rst $28
    add b
    nop
    cp $f5
    db $dd
    or $3c
    pop bc
    ld b, [hl]
    ld b, $05
    ld b, $e0
    or d
    or d
    cp a
    ld [hl], $35
    dec [hl]
    dec [hl]
    ld [hl], $45
    cp c
    pop bc
    and c
    ld [hl], b
    and a
    add b
    rst $28
    add c
    nop
    sbc [hl]
    dec a
    ld [c], a
    sbc h
    dec b
    ld b, $c5
    pop bc
    daa
    or d
    or d
    ld a, [hl-]
    cp a
    ld [c], a
    db $fc
    ret nz

    sbc [hl]
    cp l
    jp $9f00


    ld hl, sp+$0d
    and d
    ld a, e
    and c
    add h
    pop bc
    ld b, [hl]
    add hl, sp
    bit 4, d
    ld h, l
    add l
    ld h, [hl]
    db $fc
    pop bc
    sbc h
    cp l
    jp $9c00


    adc a
    ld h, b
    ld c, $a3
    sbc [hl]
    ei
    ld b, [hl]
    ld de, $c103
    ld a, c
    ld a, d
    ld h, h
    ld h, a
    dec [hl]
    scf
    ld l, b
    ld h, [hl]
    add hl, sp
    cp l
    call nz, $f6f5
    nop
    ld a, a
    ld a, e
    jp $a1dd


    ret nz

    ld [c], a
    ld a, c
    ld a, [hl]
    ld b, [hl]
    cp $c1
    ld l, d
    ld a, [hl-]
    ld b, b
    db $fd
    pop bc
    db $eb
    ld h, e
    nop
    call c, Call_06c_6204
    ld a, d
    and c
    rst $38
    jp nz, $c180

    and b
    ccf
    ld a, [hl-]
    dec [hl]
    bit 5, d
    dec [hl]
    add hl, sp
    ret nz

    ld [c], a
    dec h
    ld h, b
    add b
    nop
    db $fc
    dec sp
    add c
    ld b, [hl]
    ld h, b
    ld a, e
    add b
    ld a, a
    pop bc
    ret nz

    ldh [$be], a
    pop bc
    ld l, h
    daa
    ld l, l
    cp e
    ld a, [hl-]
    push af
    add b
    db $eb
    ld h, c
    and b
    nop
    ld a, h
    jp z, $b441

    ld [$be80], sp
    and b
    ld [bc], a
    jp Jump_06c_46c0


    add b
    ld a, e
    add b
    inc a
    sbc a
    dec [hl]
    ld [hl], e
    ld l, [hl]
    dec [hl]
    inc a
    inc [hl]
    add h
    nop
    rst $18
    and b
    db $d3
    and b
    inc de
    rst $38
    pop hl
    pop bc
    ldh [$b2], a
    ld bc, $b2e1
    add hl, sp
    ld c, $01
    ldh [$bb], a
    dec [hl]
    cp e
    push af
    ld h, c
    ld h, $43
    nop
    cp l
    add b
    db $e3
    ld [$a1c3], a
    or d
    ld b, c
    ldh [rLYC], a
    rst $38
    and b
    ld l, d
    dec [hl]
    dec [hl]
    pop bc
    ld a, [hl-]
    or [hl]
    ld h, c
    ld h, $41
    nop
    cp a
    ld a, e
    ld h, h
    add b
    pop hl
    add d
    add e
    ld [hl], a
    ld b, [hl]
    ld b, b
    dec [hl]
    ld bc, $35e0
    dec [hl]
    add hl, sp
    ld l, [hl]
    ld b, c
    ldh a, [rNR50]
    and d
    nop
    cp a
    ld a, $a2
    inc bc
    ld h, b
    sbc h
    ld b, [hl]
    add l
    add a
    ccf
    adc b
    adc b
    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    dec a
    and b
    add e
    jp nz, RST_30

    sbc a
    ld b, b
    jp Jump_000_237d


    ld a, h
    ldh [rDMA], a
    ld b, l
    rst $38
    add c
    cp $81
    db $10
    ld bc, $00a1
    ld a, a
    ld a, e
    add [hl]
    cp d
    add h

jr_06c_7893:
    ld b, [hl]
    jp nz, $bfc0

    add d
    add e
    jp $0000


    sbc a
    ld a, e
    ld b, h

jr_06c_789f:
    ld b, [hl]
    jr nz, jr_06c_791e

    and d
    jp nz, $c1c1

    push hl
    nop
    ld a, a
    ld a, e
    and a
    inc c
    ld b, [hl]
    jr nz, @-$08

    ld b, c
    ld b, [hl]
    ld b, d
    ld b, c
    add b
    ld b, h
    and c
    ldh a, [rNR42]
    ld [hl-], a
    jr nz, jr_06c_789f

    db $ec
    nop
    nop
    cp a
    db $ec
    inc d
    ld h, e
    dec sp
    nop
    sbc [hl]
    ld b, [hl]
    ld b, h
    rrca
    inc a
    dec [hl]
    dec [hl]
    ld a, $05
    and d
    ld [hl-], a
    ld hl, $a323
    nop
    rst $38
    db $10
    ld b, [hl]
    inc hl
    add hl, sp
    ld h, b
    ld bc, $84e2
    add c
    sbc [hl]
    ld h, [hl]
    inc hl
    nop
    rst $38
    ld a, e
    dec h
    inc sp
    push af
    or $82
    jp nz, $60c2

    inc a
    ld b, h
    jp $eb62


    add c
    add b
    nop
    rst $38
    ld a, e
    xor b
    ld b, d
    jr nz, jr_06c_78fa

    db $e3

jr_06c_78fa:
    call nz, Call_06c_7b62
    ld d, $00
    sub l
    sbc [hl]
    add h
    ld b, c
    ld hl, $e101
    add hl, sp
    ld a, [$8203]
    ret nz

    nop
    ccf
    ld a, e
    ld c, b
    sbc [hl]
    jr jr_06c_7893

    add c
    call nz, $c680
    ld h, b
    sbc h
    sbc a
    ld b, e
    ldh [$c5], a
    ld b, b
    ld a, e

jr_06c_791e:
    ld [de], a
    stop
    db $f4
    call nz, $02a1
    jp nz, Jump_06c_60c7

    and c
    add d
    inc hl
    nop
    rst $38
    ld a, e
    ld h, a
    ld [bc], a
    ld a, d
    ld hl, $0246
    pop bc
    ld b, h
    ld b, c
    inc bc
    ret nz

    ld l, [hl]
    jp nz, $ff00

    ld a, e
    dec h
    ld [bc], a
    ld a, c
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ret nz

    dec b
    ld b, d
    rst $00
    ld h, b
    daa
    ld h, e
    nop
    rst $38
    nop
    ld b, d
    ld a, [bc]
    rst $38
    ld b, e
    and c
    jp Jump_06c_4180


    add $22
    inc bc
    and h
    nop
    rst $38
    and e
    db $e3
    jp $d1d0


    inc d
    jp nz, $c1ff

    jp nz, Jump_000_06e2

    ld h, d
    sub $d7
    nop
    rst $38
    and c
    nop
    rst $38
    jr @-$5b

    ld [bc], a
    add e
    pop bc
    db $e4
    call nz, $0320
    add d
    nop
    rst $18
    nop
    nop
    add c
    inc b
    and d
    ld b, $81
    add c
    and $c6
    ld b, d
    add l
    ld [hl], c
    nop
    ld d, d
    inc b
    and d
    ld e, $07
    add b
    ld b, l
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [$c5], a
    nop
    ld b, d
    and e
    ret nc

    ret c

    ld [hl], c
    nop
    jr nc, jr_06c_79b9

    and b
    jr @-$7e

    sbc [hl]
    adc b
    ld h, b
    dec sp
    dec [hl]
    add c
    dec sp
    db $fd
    ldh [$84], a
    ld bc, $4286
    add l
    ldh a, [rP1]
    rst $30
    ld b, a
    add c
    and h
    db $dd
    ld h, h

jr_06c_79b9:
    rst $38
    ldh [$a5], a
    inc a
    ld b, h
    add l
    ld h, d
    ret c

    reti


    ld hl, sp-$28
    ld [hl], c
    nop
    or $c7
    ld h, c
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    scf
    ld l, d
    dec [hl]
    ld b, d
    add hl, bc
    ld [hl+], a
    jp c, $d8db

    ld de, $f800
    ld [$e0c0], sp
    rst $00
    ld b, c
    ret nz

    pop hl
    and c
    add [hl]
    ld b, b
    add l
    ld a, [c]
    nop
    ld d, d
    ld b, h
    add e
    rst $18
    ld b, [hl]
    or d
    cp e
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld [hl], $e1
    ld b, h
    add e
    jp $f185


    nop
    db $d3
    ld b, l
    and d
    or d
    or d
    cp e
    ld c, $c0
    jp nz, $9c36

    sbc l
    ld a, [bc]
    ld [hl-], a
    nop
    ld e, b
    ld b, h
    add d
    ld b, d
    ld hl, $4080
    pop bc
    call z, Call_000_0403
    add c
    nop
    rst $38
    nop
    and a
    rst $00
    ld hl, $8002
    sbc h
    rlca
    sbc l
    sbc l
    sbc a
    ld c, b
    and d
    ld l, [hl]
    and c
    nop
    rst $38
    and e
    push hl
    cp [hl]
    inc b
    nop
    jp Jump_06c_76e0


    inc hl
    add [hl]
    ld b, d
    nop
    rst $38
    nop
    and [hl]
    cp [hl]
    inc b
    or l
    jp Jump_000_00cd


    jr jr_06c_7ab2

    ld b, e
    nop
    rst $38
    nop
    dec h
    jp c, Jump_06c_7edb

    add c
    jr c, jr_06c_7a4b

jr_06c_7a4b:
    ld [hl], h
    inc bc
    nop
    add a
    ld b, d
    nop
    rst $38
    nop
    adc c
    ld a, [hl]
    add c
    jr c, jr_06c_7a59

    ld d, b

jr_06c_7a59:
    ld [bc], a
    add l
    rst $10
    nop
    inc [hl]
    nop
    add d
    inc hl
    adc a
    add d
    adc a
    ld sp, $7e00
    inc d
    ld h, a
    adc a
    ld [de], a
    nop
    ld a, a
    call nz, Call_000_00c2
    adc a
    or $00
    ld e, a
    or $ff
    nop
    ld e, e
    or $ff
    nop
    ld c, b
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
    ld bc, $1c00
    add hl, bc
    ld bc, $1d01
    add hl, bc
    ld bc, $1a02
    ld a, [bc]
    ld bc, $1b03
    ld a, [bc]
    ld bc, $1c04
    ld a, [bc]

jr_06c_7ab2:
    ld bc, $1d05
    ld a, [bc]
    ld bc, $1e06
    ld a, [bc]
    ld bc, $1d07
    dec bc
    ld bc, $2208
    dec c
    ld bc, $2109
    ld c, $01
    ld a, [bc]
    ld [hl+], a
    ld c, $01
    dec bc
    inc hl
    ld c, $01
    inc c
    ld e, $0f
    ld bc, $220d
    rrca
    ld bc, $230e
    rrca
    ld bc, $240f
    rrca
    ld bc, $1d10
    db $10
    ld bc, $1e11
    db $10
    ld bc, $2312
    db $10
    ld bc, $1c13
    ld de, $1401
    dec e
    ld de, $1501
    ld e, $11
    ld bc, $1d16
    ld [de], a
    ld bc, $1e17
    ld [de], a
    ld bc, $1f18
    ld [de], a
    ld bc, $2619
    ld [de], a
    ld bc, $271a
    ld [de], a
    ld bc, $1e1b
    inc de
    ld bc, $261c
    inc de
    ld bc, $271d
    inc de
    ld bc, $281e
    inc de
    ld bc, $271f
    inc d
    ld bc, $2120
    ld d, $01
    ld hl, $1720
    ld bc, $2122
    rla
    ld bc, $2623
    rla
    ld bc, $2824
    rla
    ld bc, $1b25
    jr @+$03

    ld h, $1f
    jr jr_06c_7b3c

    daa

jr_06c_7b3c:
    jr nz, jr_06c_7b56

    ld bc, $2128
    jr jr_06c_7b44

    add hl, hl

jr_06c_7b44:
    jr z, jr_06c_7b5e

    ld bc, $292a
    jr jr_06c_7b4c

    dec hl

jr_06c_7b4c:
    ld a, [de]
    add hl, de
    ld bc, $1b2c
    add hl, de
    ld bc, $202d
    add hl, de

jr_06c_7b56:
    ld bc, $252e
    add hl, de
    ld bc, $272f
    add hl, de

jr_06c_7b5e:
    ld bc, $2830
    add hl, de

Call_06c_7b62:
    ld bc, $1931
    ld a, [de]
    ld bc, $1a32
    ld a, [de]
    ld bc, $1b33
    ld a, [de]
    ld bc, $1c34
    ld a, [de]
    ld bc, $1f35
    ld a, [de]
    ld bc, $1a36
    dec de
    ld bc, $1b37
    dec de
    ld bc, $2338
    ld [hl+], a
    ld bc, $2339
    inc hl
    ld bc, $243a
    inc hl
    ld bc, $1a3b
    inc h
    ld bc, $1b3c
    inc h
    ld bc, $223d
    inc h
    ld bc, $233e
    inc h
    ld bc, $243f
    inc h
    ld bc, $1940
    dec h
    ld bc, $1a41
    dec h
    ld bc, $1b42
    dec h
    ld bc, $1c43
    dec h
    ld bc, $2244
    dec h
    ld bc, $2345
    dec h
    ld bc, $1a46
    ld h, $01
    ld b, a
    ld [hl+], a
    dec hl
    ld bc, $2148
    inc l
    ld bc, $2249
    inc l
    ld bc, $234a
    inc l
    ld bc, $244b
    inc l
    ld bc, $214c
    dec l
    ld bc, $224d
    dec l
    ld bc, $234e
    dec l
    ld bc, $224f
    ld l, $01
    ld d, b
    rla
    inc sp
    ld bc, $1851
    inc sp
    ld bc, $1652
    inc [hl]
    ld bc, $1753
    inc [hl]
    ld bc, $1854
    inc [hl]
    ld bc, $1755
    dec [hl]
    ld bc, $1856
    dec [hl]
    ld bc, $1957
    dec [hl]
    ld bc, $1858
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06c_7ec1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06c_7edb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06c_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06c_7f3e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06c_7fa1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_06c_7fc0:
Jump_06c_7fc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
