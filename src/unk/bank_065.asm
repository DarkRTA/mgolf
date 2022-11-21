INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $065", ROMX[$4000], BANK[$65]

Call_065_4000:
    inc c
    ld b, b
    db $dd
    ld c, d
    ret


Jump_065_4005:
    ld d, h
    or e
    ld e, a
    ld a, [hl+]
    ld h, a
    ld [hl], b
    ld [hl], b
    inc d
    ld b, b
    add hl, bc
    ld b, h
    ld [hl], a
    ld c, c
    sub d
    ld c, c
    inc sp
    ld c, l
    dec c
    cp $e3
    ld sp, hl
    rst $20
    ld c, $0e
    db $fc
    db $eb
    db $e4
    ldh [$a7], a
    ld c, $0e
    ld c, $fc
    push af
    jp nc, Jump_065_4de0

    db $fc
    db $e3
    dec c
    nop
    ld hl, sp-$1c
    cp $ed
    db $ec
    pop af
    ldh [$ea], a
    adc [hl]
    xor $f0
    rst $28
    rst $38
    rst $38
    adc h
    rst $28
    inc c
    adc b
    db $fd
    add d
    ld sp, hl
    ld c, l
    ld c, l
    db $fc
    db $e3
    db $f4
    push bc
    cp $db
    ld c, $ef
    add $be
    ld [c], a
    ld c, l
    dec l
    ld a, [hl]
    rst $38
    nop
    ld a, [c]
    ld [hl], d
    ret nz

    ld l, l
    dec c
    rlca
    dec bc
    dec bc
    dec c
    cp a
    ldh [rP1], a
    rst $38
    add b
    add $84
    push bc
    ld b, l
    ldh [$3d], a
    ld l, l
    jp Jump_000_0de0


    dec bc
    dec c
    dec bc
    ld a, [hl]
    rst $38
    ld d, h
    pop hl
    inc e
    ld d, e
    push hl
    db $10
    db $e4
    ld c, l

Jump_065_407a:
    ld c, l
    ld l, l
    push bc
    ldh [$fd], a
    db $e3
    db $eb
    ldh [rBCPS], a
    db $fc
    and l
    db $dd
    and h
    db $f4
    xor l
    inc c
    rst $38
    db $e3
    inc l
    inc l
    cp a
    ld [c], a
    ld [hl], b
    ret c

    and b
    ld b, [hl]
    ld [c], a
    ld b, d
    ldh [$fe], a
    ldh [$0d], a
    dec bc
    ld l, l
    db $ec
    ld [c], a
    inc a
    ld e, h
    rst $28
    call nc, $0dcb
    dec l
    ld c, h
    ld c, h
    cp a
    db $e4
    rlca
    ldh [rP1], a
    add h
    ld [c], a
    xor h
    db $e3
    ccf
    pop hl
    ld a, d
    rst $00
    sbc b
    and c
    db $f4
    xor [hl]
    add d
    and e
    cp [hl]
    ldh [$d2], a
    ld a, [hl]
    ldh [$0d], a
    inc a
    ldh [rLYC], a

Jump_065_40c3:
    pop hl
    dec bc
    pop bc
    ldh [$6c], a
    ld l, h
    sub b
    xor h
    pop hl
    cp $df
    db $10
    push bc
    cp a
    pop hl
    inc l
    dec b
    pop hl
    cpl
    ld [c], a
    ld c, h
    inc bc
    ld l, h
    dec c
    cp a
    ret nz

    cp a
    db $e3
    ldh a, [$8f]
    xor $8b
    ld c, $c4
    inc a
    ldh [$e1], a
    ld c, h
    push bc
    db $e3
    call nz, $81e1
    pop bc
    cp a
    pop hl
    inc c
    dec bc
    ld l, l
    ld c, b
    ldh a, [$9d]
    adc [hl]
    and l
    jp z, $2de2

    ret


    pop bc
    jp nz, Jump_000_2bc1

    dec a
    jp nz, Jump_065_6cc3

    inc c
    ld a, $e0
    ldh a, [$9f]
    ld a, d
    add [hl]
    nop
    ld [c], a
    dec c
    dec hl
    ld e, e
    ld c, e
    ld c, e
    ret nz

    ldh [$2b], a
    dec hl
    ret nz

    ldh [$2c], a
    cp d
    and c
    ld hl, sp-$10
    sbc c
    ld [$44ad], sp
    pop hl
    ld c, d
    ld a, [bc]
    ld l, d
    ld c, e
    ld l, e
    inc hl
    dec hl
    dec hl
    cp l
    ldh [$78], a
    ret nz

    and $60
    dec l
    call c, $df61
    and c
    ld hl, sp-$1c
    ld h, h
    ld [bc], a
    or a
    ld a, [hl-]
    db $e4
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld l, e
    nop
    dec a

Call_065_4144:
    pop hl
    ccf
    pop hl
    ld a, c
    and d
    add hl, hl
    ret nz

    sbc [hl]
    and c
    ld a, [hl]
    cp $12
    ldh [rLYC], a
    and b
    ld a, [bc]
    cp a
    ldh [$2a], a
    ld a, a
    ld [c], a
    ld c, e
    ccf
    ldh [$b7], a
    and d
    xor l
    pop bc
    ld a, [hl]
    add sp, -$4e
    inc d
    sub a
    ld c, l
    cp [hl]
    ret nz

    ld b, h
    pop bc
    dec l
    dec c
    pop bc
    pop hl
    ld a, [bc]
    inc bc
    ld c, d
    inc c
    ld [hl], a
    and d
    ld [hl], b
    jp nz, $a2b2

    ld h, b
    ld l, a
    ld [hl], $68
    sbc d
    and d
    ld l, h
    ld [hl], c
    and b
    ld [hl], a
    pop bc

jr_065_4183:
    dec l
    ld c, e
    inc a
    and b
    ld c, d
    ld a, [bc]
    ret nz

    pop hl
    ret nz

    or l
    add c
    ld l, c
    and d
    db $fc
    add $00
    sbc c
    rlca
    add c
    ld bc, $6ba1
    ld l, e
    add b
    ld a, [hl-]
    ret nz

    inc a
    and b
    ld [hl], a
    add c
    ld l, h
    db $e3
    ldh a, [$81]
    ld hl, sp+$7f
    db $f4
    and l
    dec l
    ld c, $c0
    ldh [rOCPD], a
    inc l
    ld c, h
    cpl
    and e
    xor l
    and h
    db $f4
    and l
    inc c
    ld [hl], l
    ld c, $f4
    xor d
    dec c
    ld c, e
    ld l, e
    ld [hl], $a0
    ld a, b

Jump_065_41c1:
    add d
    add c
    db $e3
    xor c
    ld h, b
    db $10
    ld h, b
    ld c, [hl]
    inc h
    ld c, c
    ld [$c14d], sp
    ldh [$6c], a
    ld a, [$04a0]
    db $e3
    ld a, e

Call_065_41d5:
    jp nz, Jump_000_30a8

    add b
    nop
    jp c, Jump_065_492a

    ld l, l
    push hl
    ld h, b
    ld l, h
    jr c, jr_065_4183

    ld a, [bc]
    ld bc, $b16a
    ld h, e
    ld l, a
    ld h, b
    pop af
    ld h, b
    ld [hl], d
    sbc a
    adc [hl]
    ld b, h
    pop bc
    ldh [$b6], a
    add b
    ld c, $f7
    add b
    ld c, d
    ld a, [bc]
    ld a, [bc]
    inc a
    db $e3
    or d
    ld h, c
    ldh a, [$5f]
    add d
    rst $20
    ld bc, $fb6c
    ld b, b
    dec sp
    ret nz

    or [hl]
    add b
    db $76
    and c
    or b
    ld b, b
    add d
    db $d3
    ld [hl-], a
    inc l
    ld [$e782], sp
    dec sp
    add d
    dec sp
    pop bc
    dec hl
    cp b
    and b
    xor [hl]
    ld b, c
    ld b, d
    pop bc
    nop
    rst $18
    ld [de], a
    inc b
    ld [c], a
    inc l
    pop bc
    pop hl
    ld a, d
    ld b, c
    ld l, e
    ld [hl], a

Call_065_422c:
    add c
    cp b
    and b
    ld a, [c]
    ld b, e
    inc e
    ld c, b
    rst $38
    add d
    inc hl
    dec bc
    inc l
    ld c, h
    ccf
    ld b, d
    ld a, d
    ld h, c
    scf
    add b
    ld [hl], b
    ld a, [hl]
    ldh [rLCDC], a
    db $e3
    nop
    db $fd
    sub d
    ld b, l
    dec bc
    inc c
    ld c, h
    jp Jump_000_10e3


    ret nz

    push hl
    add d
    sub $24
    dec c
    ldh a, [$03]
    dec bc
    ld c, c
    add b
    rst $38
    db $e3
    jp nz, Jump_000_02c1

    rst $38
    ret nz

    ld c, e
    ld h, h
    ld h, c
    nop
    sbc a
    ld a, [hl]
    dec h
    ret z

    ld h, d
    ret nz

    db $e3
    ld [hl], a
    ld h, c
    nop
    ld b, c
    ldh [$83], a
    and c
    ld c, b
    rst $18
    db $fc
    and e
    ld a, [hl-]
    ld b, b
    ret z

    ld h, c
    ld a, l
    ld b, c
    inc b
    pop hl
    sub a
    dec hl
    ld l, e
    ld l, e

Jump_065_4282:
    ret nz

    pop hl
    ld l, l
    nop
    ld a, d
    ld a, d
    ld l, e
    dec l
    ld bc, $876c
    add c
    add b
    db $e4
    jp nz, $03e0

    pop bc
    add b
    ld d, l
    cp $8b
    ldh a, [rNR50]
    ld [bc], a
    or b
    jr nz, jr_065_42aa

    add e
    and c
    jr c, @+$24

    inc b
    jp nz, $a766

    call z, Call_000_24ae
    ld c, a

jr_065_42aa:
    ret nz

    ld a, [hl]
    pop hl
    ret nz

    add sp, -$7a
    or h
    db $fc
    ld a, d
    ld b, $61
    add e
    add c
    dec bc
    dec bc
    add a
    ld c, e
    ld c, e
    ld l, l
    inc b
    ld e, e
    ld a, [hl+]
    ld [de], a
    dec a
    pop bc
    ld [$4ba3], sp
    nop
    ld a, c
    ld bc, $3384
    nop
    sub l
    jp nz, Jump_065_4660

    ld h, c
    ld a, $41
    add e
    pop bc
    ld a, d
    inc b
    ld [$add4], sp
    ld [hl], e
    rst $30
    cp $81
    ld c, h
    ld b, c
    ld [c], a
    add [hl]
    and d
    ld a, d
    ld e, $00
    adc [hl]
    nop
    ld a, $a1
    cp a
    ld [hl+], a
    add [hl]
    and b
    add [hl]
    adc b
    rst $38
    rst $38
    inc l
    ld b, h
    jr c, jr_065_42f6

jr_065_42f6:
    add l
    jp Jump_000_3a80


    ld b, b
    add a
    ld h, d
    call nc, Call_000_04f8
    call z, Call_065_6244
    cp $80
    add [hl]
    ld hl, $e06b
    ld a, h
    add h
    add [hl]
    add l
    cp $d9
    ld [hl+], a
    daa
    add d
    ldh [$0d], a
    dec bc
    ld c, h
    inc bc
    inc l
    inc l
    ld c, b
    and e
    ret nz

    db $e3
    ld c, h
    rst $38

jr_065_431f:
    add d
    add sp, -$36
    and d
    cp a
    ldh [rP1], a
    inc bc
    ld hl, $62fd
    inc b
    and l
    ld a, [bc]
    cp e
    cp h
    ld b, l
    sub b
    ld [hl+], a
    cp a

Call_065_4333:
    ldh [$be], a
    db $e3
    nop
    add $43
    ld [bc], a
    db $fd
    nop
    ld b, a
    cp $01
    sub b
    ld b, e
    cp [hl]
    ld [c], a
    add c
    ld [bc], a
    ld b, h
    nop
    ld [$24ec], sp
    nop
    db $dd
    adc b
    jr nz, jr_065_439c

    add a
    and l
    add a
    ld b, b
    cp a
    ld [c], a
    rst $30
    ld b, b
    ld [$a4fe], sp
    nop
    ld e, a
    ld c, c
    jr nz, @+$6f

    adc c

Call_065_4360:
    add [hl]
    add h
    jr nz, jr_065_43dc

    add b
    ld a, [hl]
    ld [bc], a
    db $10
    add [hl]
    dec b
    cp d
    rst $18
    ld b, h
    ret nz

    ret nz

    rst $20
    dec c
    or [hl]
    ld h, c
    ld b, $27
    cp $59
    ret c

    inc b
    add h
    add h
    ld bc, $210c
    dec bc
    dec bc
    ld a, [hl-]
    ld bc, $0d0d
    nop
    ld a, b
    add c
    rlca
    ld [hl+], a
    nop
    rst $18
    ld a, [hl]
    ld b, e
    bit 0, e
    cp $e5
    or l
    ld b, c
    nop
    sbc a
    ld [bc], a
    inc b
    ld c, c
    dec l
    ld b, b
    jp hl


    ret nz

jr_065_439c:
    ld h, b
    jr c, jr_065_431f

    nop
    add [hl]
    nop
    rst $18
    ld d, [hl]
    add b
    ld b, l
    dec l
    ld c, $60
    ld l, e
    ld c, b
    add b
    ld b, l
    add c
    ld c, d
    ld b, b
    inc c
    ld [bc], a
    cp a
    ld e, d
    nop
    call z, $8e2d
    ld b, b
    dec c
    ld l, e
    rst $38
    ldh [rWX], a
    ld c, [hl]
    ld bc, $0cc1
    ld [$0252], sp
    jr c, jr_065_4445

    pop hl
    jp nz, $8d24

    jr nz, @+$4f

    inc c
    nop
    ld [$fc5f], sp
    ret nc

    inc c
    pop hl
    adc d
    ld h, c
    ret nz

    db $e3
    nop
    rst $38
    ld a, h

jr_065_43dc:
    xor h
    ld d, h
    inc bc
    ld b, b
    db $fc
    ld [c], a
    add b
    push hl
    add h
    or l
    inc [hl]
    rlc b
    ld h, [hl]
    db $76
    ld h, [hl]
    inc c
    add d
    ld b, h
    ld [$f102], sp
    cp $17
    db $f4
    rlca
    inc c
    inc b
    rst $18
    nop
    ld d, b
    ld [hl], d
    add a
    ret nz

    pop hl
    nop
    inc b

Call_065_4401:
    rst $38
    or $37
    add b
    ei
    nop
    nop
    nop
    call $ffa0
    xor $d8
    reti


    db $fc
    db $eb
    sbc $e0
    call c, $bddd
    sbc $fc
    push af
    sub $d7
    and b
    and b
    db $fc
    db $eb
    jp c, $dbe7

    ret nc

    pop de
    db $fc
    rst $20
    ldh [$e1], a
    rst $18
    ldh [$e1], a
    ld sp, $fce2
    push af
    sub d
    db $ed
    add d
    pop hl
    jp nc, $fcd3

    rst $20
    ld [hl], d
    pop hl
    adc a
    db $e3
    db $e4

Jump_065_443c:
    push hl
    and $fc
    push af
    sbc [hl]
    pop hl
    db $fc
    db $eb
    ret nc

jr_065_4445:
    sbc a
    pop de
    call nc, $a0d5
    and b
    db $fc
    db $e3
    ld a, [hl]
    db $e3
    rst $20
    rlca
    add sp, -$17
    ld [$f5fc], a
    add d
    di
    ld [$7ec5], a
    push hl
    cp $d7
    ld l, $82
    di
    and b
    sbc a
    sbc l
    rst $38
    ldh [$9f], a
    ld a, [hl]
    and $fe
    rst $10
    cp $82
    ld a, [c]
    sbc a
    and d
    sbc h
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    xor [hl]
    di
    sbc h
    sbc a
    db $fc
    push bc
    cp $d7
    jp c, $a0db

    and b
    db $fc
    db $fc
    rst $20
    inc b
    db $e3
    sbc a
    sbc h
    ld b, [hl]
    ld b, [hl]
    xor a
    xor [hl]
    rlca
    ld b, [hl]
    xor a
    ld b, [hl]
    cp a
    ldh [$fc], a
    jp $d7fe


    nop
    pop bc
    ld d, e
    db $e4
    xor h
    db $10
    db $e3
    ld b, [hl]
    ldh [$9c], a
    ld b, [hl]
    add d
    ldh [$af], a
    ld a, a
    ldh [rDMA], a
    pop de
    and c
    db $fc
    call nz, $a8da
    db $f4
    xor h
    inc de
    rst $38
    ld [c], a
    rlca
    inc b
    adc c
    inc bc
    ld d, e
    pop hl
    adc d
    ret nz

    sbc a
    ld b, [hl]
    ld [c], a
    jp $fee0


    ldh [$af], a
    jp $9e46


    db $ec
    ld [c], a
    call c, $f4a9
    xor l
    push de
    jp nz, Jump_000_039c

    rst $00
    inc b
    rrca
    ld [bc], a
    cp a
    ld [c], a
    pop bc
    ldh [$87], a
    ldh [$af], a
    ld b, [hl]
    rlca
    inc bc
    inc b
    rlca
    xor h
    ldh [$3f], a
    pop hl
    ld l, [hl]
    xor h
    db $f4
    xor l
    add d
    and d
    rst $28
    sbc a
    sbc l
    sbc h
    ld [bc], a
    cp a
    ldh [$a2], a
    sbc a
    and b
    db $fd
    sbc [hl]
    ld c, b
    pop hl
    ld b, [hl]
    ld b, [hl]
    ld [bc], a
    rrca
    inc b
    inc bc
    add b
    xor h
    pop hl
    cp $c1
    ld a, d

Jump_065_4502:
    and e
    ret c

Call_065_4504:
    and l
    nop
    db $d3
    call $cdc0
    pop hl
    sbc h
    ld a, b
    dec b
    ldh [$86], a
    ldh [$30], a
    ldh [rSC], a
    ld a, c
    ld a, d
    ld a, l
    cp d
    ldh [rP1], a
    cp a
    pop hl
    ld a, d
    and l
    ldh a, [$88]
    xor $88
    add d
    and e
    adc h
    pop bc
    rst $00
    ld [c], a
    push af
    jp nz, Jump_065_797f

    ld a, d
    ld a, e
    ld a, e
    adc a
    ld b, [hl]
    ld a, a
    cp a

jr_065_4533:
    pop hl
    rlca
    dec b
    ld b, [hl]
    sbc [hl]
    ld a, d
    and e
    ldh a, [$89]
    ldh a, [$a9]
    sbc d
    add [hl]
    adc $a2
    cp $85
    ret nz

    ld b, [hl]
    ld b, [hl]
    ld a, c
    ld a, [hl]
    cp l
    inc l
    jr nz, jr_065_4584

    ld a, [hl+]
    ld b, e
    ld b, l
    cp a
    ldh [rTMA], a
    ld b, $3c
    pop bc
    ldh a, [$8d]
    ldh a, [$f0]
    xor c
    nop
    and l
    ld a, d
    add e
    nop
    ldh [$ae], a
    ld b, [hl]
    add b
    ld b, l
    cp $c0
    ldh [$27], a
    dec sp
    jr c, jr_065_45a3

    add c
    ld b, l
    dec b
    pop hl
    ld [$a1ba], sp
    ldh a, [$8d]
    ldh a, [$a9]
    inc d
    adc h
    sbc [hl]
    xor [hl]
    xor a
    rst $38
    xor [hl]
    add b
    ld d, c
    ld e, a
    ld d, d
    ld a, [hl+]
    ld a, [hl+]

jr_065_4584:
    dec [hl]
    rst $38
    dec [hl]
    dec [hl]
    ld l, d
    ld [hl], $45
    ld [$af05], sp
    ret nz

    ld a, c
    and d
    jr nc, jr_065_4533

    rst $18
    and c
    ld l, [hl]
    add h
    nop
    adc d
    add [hl]
    adc c
    and b
    sbc [hl]
    rst $38
    xor a
    xor [hl]

Call_065_45a0:
    xor a
    add d
    add e

jr_065_45a3:
    ld d, d
    ld h, c
    ld e, l
    ld a, a
    ld d, [hl]
    ld a, [hl-]
    dec [hl]
    ld l, h
    ld l, l
    dec [hl]
    add hl, sp
    ccf
    ldh [rNR34], a
    ld a, c
    and b
    and d
    sbc l
    sbc h
    xor [hl]
    ld [hl-], a
    and d
    ld l, [hl]
    add e
    nop
    sub l
    cp $82
    and c
    sbc h
    xor a
    ld b, [hl]
    add l

Call_065_45c4:
    add [hl]
    add e
    ld e, e
    rst $38
    ld d, e
    ld d, e
    add hl, sp
    ld l, h
    ld l, a
    ld l, [hl]
    dec [hl]
    add hl, sp
    inc b
    ccf
    ldh [$b5], a
    and b
    xor [hl]
    xor [hl]
    and b
    ld a, b
    db $e3
    db $e4
    ld h, d
    nop
    adc e
    nop
    and l
    db $e3

Jump_065_45e1:
    sub $d7
    db $10
    add c
    inc b
    and c
    cp a
    ldh [rDMA], a
    add e
    adc b
    ld a, a
    ld [hl], b
    ld l, [hl]
    dec [hl]
    ld a, [hl-]
    ld c, e
    ld d, l
    ld de, $a277
    add b
    ld a, [hl+]
    ldh [$f1], a
    add e
    ld [hl], d
    and d
    ldh a, [rBCPD]
    ld h, $67
    ld a, [hl]
    push hl
    nop
    and b
    add l
    ccf
    add a
    adc b
    add a
    add l
    ld [hl], $35
    ret nz

    push hl
    or l
    add c
    ret nz

    or b
    add b
    ld l, a
    add e
    ldh a, [$6c]
    ld h, $67
    ld a, [hl]
    push hl
    add b
    add e
    ld b, [hl]
    ld b, [hl]
    rra
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    jr c, jr_065_46a6

    pop bc
    ld l, l
    and d
    ld a, [hl]
    db $e3
    pop bc
    sbc [hl]
    ld [hl], d
    and h

jr_065_4630:
    xor $47
    ld [hl], $a9
    nop
    add a
    push af
    and d
    add hl, sp
    dec [hl]
    ld h, e
    dec [hl]
    ld [hl], $c0
    jp nz, $e3c1

    ld l, $80
    xor [hl]
    and c
    ldh a, [$6e]
    ld a, b
    ld [hl], $69
    ld a, [hl]
    rst $20
    ld a, d
    pop hl
    sbc [hl]
    xor [hl]
    ld [hl], $36
    ld a, a
    and b
    ld de, $3845
    add c
    cp $c1
    ld a, [$9ec1]
    ld [hl], d
    add d
    nop

Jump_065_4660:
    jp z, $4924

    xor $82
    ld c, d
    sbc [hl]
    xor a
    ld b, l
    xor e
    add b
    ld a, [hl-]
    ld [hl], $43
    dec b
    ld b, l
    inc b
    pop hl
    xor a
    ld a, [$00c1]
    push hl
    ldh a, [$28]
    inc h
    ld c, c
    db $76
    ld b, e
    ret c

    adc d
    ld b, c
    ld a, [hl]
    ld b, b
    rst $28
    add c
    rrca
    ld [bc], a
    cp e
    ret nz

    ld c, a
    ld d, d
    add c
    ld b, l
    or h
    ld h, d
    add b
    jp $cd00


    inc h
    ld c, c
    nop
    ld c, c
    ld l, a
    add e
    ld a, c
    ccf
    ld h, e
    ld h, [hl]
    inc a
    ld c, d
    ld h, c
    ld e, h
    inc a
    ldh [$ae], a
    ld h, c
    and b
    or d

jr_065_46a6:
    ld h, c
    nop
    call $4924
    nop
    ld c, b
    jr nc, jr_065_4630

    ld [bc], a
    or [hl]
    add b
    ld [hl], $1f
    ld l, b
    ld h, [hl]
    jr c, jr_065_46f5

    jr c, @+$3e

    ldh [$ba], a
    and c
    add d
    pop bc
    ld hl, sp+$00

Call_065_46c1:
    rst $10
    db $fc
    xor b
    pop bc
    db $e3
    ld a, c
    ld a, d
    adc a
    ld b, [hl]
    xor [hl]
    daa
    ld a, [hl-]
    ld l, b
    ld h, [hl]
    ld hl, sp-$5e
    dec hl
    ld h, c

Jump_065_46d3:
    sbc [hl]
    ldh a, [$30]
    ld h, $2b
    call nc, $a37a
    ld a, a
    ld b, b
    dec b
    pop bc
    ldh [$7e], a
    rst $30

Jump_065_46e2:
    ld b, c

Jump_065_46e3:
    add hl, sp
    dec [hl]
    dec b
    ld l, d
    cp b
    and c
    ld e, d
    ld a, [c]
    ld b, e
    add d
    jp $d300


    db $fc
    and a
    ld a, [hl-]
    ld h, b
    ld [hl], e

jr_065_46f5:
    ld b, $06
    pop bc
    ldh [$3d], a
    ld b, b
    xor [hl]
    xor [hl]
    inc a
    ret nz

Jump_065_46ff:
    ldh [rTAC], a
    dec [hl]
    jr c, jr_065_4748

    xor a
    ld b, b
    add d
    and [hl]
    nop
    db $d3
    db $fc
    and l
    ld a, d
    add c
    xor a
    ld b, [hl]
    ld [$8005], sp
    adc l
    and e
    xor a
    add b
    pop hl
    dec [hl]
    add e
    inc a
    ld b, h
    cp l
    add b
    ld [hl], e
    ld b, b

Call_065_4720:
    nop
    sub b
    inc h
    dec c
    add d
    ld bc, $5fa1
    ld b, [hl]
    ld de, $8246
    add e
    jp z, $ae81

    ld b, b
    ld [c], a
    dec bc
    dec [hl]
    ld a, [hl-]
    db $fc
    and b
    xor a
    di
    jr nz, jr_065_473b

jr_065_473b:
    adc a

Jump_065_473c:
    inc h
    dec c
    nop
    ld [c], a
    ret c

    add b
    pop hl
    ld a, [hl-]
    add b
    db $f4
    ld h, b
    xor a

jr_065_4748:
    ld a, [hl-]
    ld a, [$3560]
    dec [hl]
    dec c
    add hl, sp
    db $ed
    jr nz, @-$62

    sbc a
    add d
    jp $d700


    db $fc
    and l
    nop
    ld [c], a
    xor $f9
    ld h, c
    xor a
    ld b, [hl]
    ld b, b
    ld a, [$3861]
    scf
    ld b, l
    ld b, b
    add h
    and d
    nop
    ld h, l
    nop
    push de
    db $fc
    and e
    ld a, d
    ld h, b
    add b
    jp nz, Jump_000_3a46

    add b
    ld h, l
    adc b
    ld a, [$3661]
    inc bc
    pop bc
    add d
    rst $20
    and b
    and b
    nop
    rst $10
    sub h
    db $fc
    inc b
    pop af
    ld [hl+], a
    dec b
    ld a, l
    nop
    ld b, l
    ei
    ld h, b
    ld b, e
    ldh [rDMA], a
    pop bc
    sbc h
    inc [hl]
    nop
    inc b
    rst $08
    nop
    rst $08
    ld a, d
    ld b, c
    db $fc
    ld h, d
    sbc a
    sbc h
    inc bc

Call_065_47a0:
    ld b, $06
    cp [hl]
    nop
    dec a
    add b
    jp Jump_065_7ac1


    ld [hl+], a
    inc b
    rst $08
    nop
    push de
    nop
    add d
    add d
    ld b, $61
    cp l
    ld h, c
    add e
    pop bc
    cp c
    nop
    inc b
    ld d, c
    nop
    rst $08
    ld a, [hl]
    add l
    cp [hl]
    rst $30
    ld hl, $4611
    xor [hl]
    ld b, h
    inc a
    add b
    pop hl
    add hl, sp
    nop
    ld a, c
    ld bc, $e504
    inc b
    ld c, c
    nop
    sub e
    inc e
    inc hl
    add b
    pop hl
    ld b, e
    and b
    dec a
    ld h, b
    nop
    add e
    ret nz

    ld b, $c0
    ld [$004d], sp
    sub a
    ld a, [hl]
    call nz, $2045
    cp $41
    add [hl]
    and d
    nop
    ld a, d
    inc b
    call nc, Call_000_00ad
    sbc b
    ld a, $a1
    jp nz, $86c2

    and b
    add h
    ld b, b
    add [hl]
    add e
    db $10
    call nc, Call_000_00ad
    sub a
    ld a, [$0720]
    ld b, b
    ld a, $43
    jp Jump_065_4005


    ld [$f063], sp
    call nc, Call_000_00ad
    adc h
    inc h
    ld b, h
    ld a, d
    ld [hl+], a
    xor [hl]
    ld b, [hl]
    ld [$1602], sp
    ret nz

    ldh [$36], a
    ccf
    add l
    ld hl, $86ae
    ld h, d
    inc b
    rst $08
    nop
    adc e
    inc l
    ld a, [hl]
    ld bc, $e682
    xor a
    ld b, [hl]
    cp a
    ld h, b
    add hl, sp
    add [hl]
    and b
    add l
    ld hl, $0830
    ld d, c
    nop
    ld e, b
    pop bc
    inc hl
    cp a
    ldh [rDIV], a
    inc bc
    ld b, h
    inc hl
    ld b, $61
    ld [$4d08], sp
    nop
    ld d, e
    add [hl]
    ld b, d
    and c
    ld d, l
    jr nz, jr_065_485c

    ld b, c
    add b
    ld b, b
    cp [hl]
    pop hl
    nop
    add $43
    add [hl]
    inc bc
    cp $cf

jr_065_485c:
    inc b
    adc [hl]
    rlca
    ld b, c
    db $10
    ld b, d
    inc a
    jr nz, jr_065_48a3

    ld b, c
    ret nz

    add c
    ld [bc], a
    ld b, [hl]
    ld b, c
    ld h, [hl]
    ld [hl+], a
    cp $ce
    inc b
    adc [hl]
    add l
    and c
    xor a
    ld b, l
    rla
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [rLYC], a
    ld a, [$44c1]
    ld b, d
    dec b
    ld b, b
    and $86
    ld bc, $a0a0
    nop
    db $dd
    jp nz, Jump_065_4502

    ld [hl], $3b
    inc bc
    dec [hl]
    dec sp
    db $fd
    ldh [rDMA], a
    add b
    ld a, $20
    ld a, [hl]
    ld [c], a
    ld a, l
    and c
    inc b
    adc l
    db $fc
    nop
    ld c, a
    inc b
    add d
    xor [hl]

jr_065_48a3:
    ld b, [hl]
    ld b, h
    inc a
    and h
    ld h, h
    ld [bc], a
    rst $38
    ldh [$a5], a
    add hl, bc
    ld h, c
    or [hl]
    ld h, b

jr_065_48b0:
    add e
    ld h, d
    add [hl]
    ld [bc], a
    inc b
    adc e
    nop
    rst $08
    db $fc
    add [hl]
    and c
    ret


    ld b, b
    ld b, d

jr_065_48be:
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    ccf
    and e
    ld l, d
    dec [hl]
    ld b, d
    xor a
    xor [hl]
    ld a, b
    add c
    rlca
    ld [hl+], a
    nop
    ld h, [hl]
    ld [bc], a
    nop
    call c, Call_065_6104
    sub l
    nop
    ret nz

    ldh [rTAC], a
    add c
    ret nz

    ldh [$0a], a
    jr nz, jr_065_48b0

    ld [hl], a
    and b
    nop
    add [hl]
    nop
    rst $18
    ld b, b
    ldh [$af], a
    ld b, b
    ldh [rOCPD], a
    ld [hl], c
    ld d, $ff
    ldh [$6d], a
    inc a
    add hl, bc
    ld b, c
    ld de, $c682
    nop
    rst $18
    inc b
    ld b, b
    ld e, $c0
    res 3, h
    sbc l
    sbc h
    ld de, $6882
    nop
    rst $18
    ld a, a
    call nz, Call_065_4333
    xor [hl]
    ld b, b
    jp nz, Jump_000_004e

    sbc [hl]
    ld de, $5208
    nop
    push de
    db $e4
    ld a, [hl]
    db $e4
    ld de, $9d40
    rst $38
    ldh [$4e], a
    jr nz, jr_065_48be

    ld de, $009e
    ld [$0051], sp
    sub l
    ld a, [hl]
    db $e4
    adc [hl]

Jump_065_492a:
    jp nz, $a290

    ret nz

    ldh [$08], a
    ld d, c
    nop
    sub l
    jr nc, jr_065_49b3

    db $e4
    ld d, b
    ld b, b
    db $f4
    pop bc
    db $f4
    ld bc, $9e11
    ld [$0051], sp
    ld d, e
    ld [$e67e], sp
    ld hl, sp+$24
    db $f4
    ld h, c
    ld de, $0089
    inc b
    sub e
    nop
    ld c, a
    ld a, [hl]
    rst $20
    inc b
    db $10
    jp $4176


    ld de, $62e8
    inc b
    pop de
    nop
    ld e, c
    sub d
    ld h, $c0
    ldh [$80], a
    ld [$0051], sp
    ld e, e
    db $fc
    db $e3
    ldh a, [rSTAT]
    add b
    pop hl
    add sp, $43
    ld [bc], a
    ld [hl], c
    rst $20
    ld bc, $00e8
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
    jr jr_065_499d

    ld [bc], a
    ld bc, $071b
    ld [bc], a
    ld [bc], a
    add hl, de

jr_065_499d:
    ld [$0302], sp
    ld d, $09
    ld [bc], a
    inc b
    inc e
    add hl, bc
    ld [bc], a
    dec b
    ld [de], a
    ld a, [bc]
    ld [bc], a
    ld b, $15
    ld a, [bc]
    ld [bc], a
    rlca
    ld de, $020b

jr_065_49b3:
    ld [$1011], sp
    ld [bc], a
    add hl, bc
    ld hl, $0210
    ld a, [bc]
    db $10
    ld de, $0b02
    ld [de], a
    ld de, $0c02
    ld [hl+], a
    ld de, $0d02
    ld de, $0212
    ld c, $28
    ld [de], a
    ld [bc], a
    rrca
    add hl, hl
    ld [de], a
    ld [bc], a
    db $10
    dec h
    inc de
    ld [bc], a
    ld de, $1327
    ld [bc], a
    ld [de], a
    ld a, [hl+]
    inc de
    ld [bc], a
    inc de
    ld h, $14
    ld [bc], a
    inc d
    jr z, jr_065_49fa

    ld [bc], a
    dec d
    inc h
    dec d
    ld [bc], a
    ld d, $29
    dec d
    ld [bc], a
    rla
    inc l
    dec d
    ld [bc], a
    jr jr_065_4a17

    ld d, $02
    add hl, de
    jr z, jr_065_4a10

jr_065_49fa:
    ld [bc], a
    ld a, [de]
    ld a, [hl+]
    ld d, $02
    dec de
    daa
    rla
    ld [bc], a
    inc e
    add hl, hl
    rla
    ld [bc], a
    dec e
    dec hl
    rla
    ld [bc], a
    ld e, $2d
    rla
    ld [bc], a
    rra

jr_065_4a10:
    dec de
    jr jr_065_4a15

    jr nz, @+$26

jr_065_4a15:
    jr @+$04

jr_065_4a17:
    ld hl, $1828
    ld [bc], a
    ld [hl+], a
    inc l
    jr jr_065_4a21

    inc hl
    dec h

jr_065_4a21:
    add hl, de
    ld [bc], a
    inc h
    ld a, [hl+]
    add hl, de
    ld [bc], a
    dec h
    jr z, jr_065_4a44

    ld [bc], a
    ld h, $2b
    inc e
    ld [bc], a
    daa
    rra
    dec e
    ld [bc], a
    jr z, jr_065_4a5f

    dec e
    ld [bc], a
    add hl, hl
    ld e, $1e
    ld [bc], a
    ld a, [hl+]
    inc e
    rra
    ld [bc], a
    dec hl
    rra
    rra
    ld [bc], a
    inc l

jr_065_4a44:
    jr nz, jr_065_4a65

    ld [bc], a
    dec l
    dec de
    jr nz, jr_065_4a4d

    ld l, $1d

jr_065_4a4d:
    jr nz, @+$04

    cpl
    jr z, jr_065_4a72

    ld [bc], a
    jr nc, jr_065_4a7f

    jr nz, @+$04

    ld sp, $211c
    ld [bc], a
    ld [hl-], a
    ld e, $21
    ld [bc], a

jr_065_4a5f:
    inc sp
    rra
    ld hl, $3402
    add hl, hl

jr_065_4a65:
    ld hl, $3502
    dec e
    ld [hl+], a
    ld [bc], a
    ld [hl], $28
    ld [hl+], a
    ld [bc], a
    scf
    dec de
    dec h

jr_065_4a72:
    ld [bc], a
    jr c, jr_065_4a91

    jr z, jr_065_4a79

    add hl, sp
    ld [hl+], a

jr_065_4a79:
    ld a, [hl+]
    ld [bc], a
    ld a, [hl-]
    inc h
    ld a, [hl+]
    ld [bc], a

jr_065_4a7f:
    dec sp
    dec h
    dec hl
    ld [bc], a
    inc a
    inc hl
    inc l
    ld [bc], a
    dec a
    rla
    dec l
    ld [bc], a
    ld a, $20
    dec l
    ld [bc], a
    ccf
    ld [hl+], a

jr_065_4a91:
    dec l
    ld [bc], a
    ld b, b
    inc h
    dec l
    ld [bc], a
    ld b, c
    ld hl, $022e
    ld b, d
    inc hl
    ld l, $02
    ld b, e
    ld [hl+], a
    cpl
    ld [bc], a
    ld b, h
    inc d
    jr nc, @+$04

    ld b, l
    jr jr_065_4ada

    ld [bc], a
    ld b, [hl]
    dec d
    ld sp, $4702
    inc h
    ld sp, $4802
    ld h, $33
    ld [bc], a
    ld c, c
    inc de
    inc [hl]
    ld [bc], a
    ld c, d
    rra
    inc [hl]
    ld [bc], a
    ld c, e
    dec h
    inc [hl]
    ld [bc], a
    ld c, h
    ld [de], a
    dec [hl]
    ld [bc], a
    ld c, l
    inc d
    dec [hl]
    ld [bc], a
    ld c, [hl]
    jr nz, jr_065_4b03

    ld [bc], a
    ld c, a
    inc de
    ld [hl], $02
    ld d, b
    jr jr_065_4b0f

    ld [bc], a
    ld d, c
    rla
    ld a, [hl-]

jr_065_4ada:
    rst $38
    rst $38
    rst $38
    push hl
    ld c, d
    sbc d
    ld c, [hl]
    rla
    ld d, h
    ld [hl-], a
    ld d, h
    rrca
    ld c, l
    dec c
    ld c, $0e
    db $fc
    rst $38
    add sp, -$19
    db $dd
    ldh [$fc], a
    ld [$fdc6], a
    ld sp, hl
    dec l
    dec l
    db $fc
    rst $20
    push de
    rst $30
    adc d
    rst $30
    dec l
    dec c
    dec bc
    dec c
    ld c, l
    rst $38

jr_065_4b03:
    ldh [$2d], a
    rst $38
    ldh [$82], a
    push hl
    adc l
    db $fd
    add d
    ld [$0d07], a

jr_065_4b0f:
    ld l, l
    dec bc
    rst $38
    ld [c], a
    cp [hl]
    pop hl
    ld d, l
    db $e3
    ret nz

    rst $28
    inc c
    rst $30
    ccf
    ld c, l
    ld c, l
    ld l, l
    dec c
    dec bc
    dec bc
    db $fd
    ld [c], a
    ld a, l
    ldh [rDIV], a
    db $e4
    jp $ed02


    dec c
    inc e
    ld [$e910], a

Jump_065_4b30:
    add h
    ld [c], a
    ret nz

    push hl
    ld a, [hl]
    add sp, -$3a
    call c, Call_000_2dcf
    dec c
    and d
    pop hl
    db $fc
    db $ed
    add l
    db $e3
    dec bc
    dec hl
    sub a
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, e
    pop hl
    ld l, l
    ld a, [hl]

Jump_065_4b4b:
    db $e3
    ret nz

    ld a, [c]
    dec l
    ldh a, [$da]
    jp nz, $e8fc

    jp z, Jump_000_05c1

    ldh [$0d], a
    dec bc
    dec hl
    dec hl
    and l
    ld a, [bc]
    ret nz

    ldh [rOCPS], a
    ld a, $e3
    ld d, e

Call_065_4b64:
    db $d3
    inc c
    rst $38
    di
    inc l
    add b
    add h
    ld [c], a
    add e
    ldh [rIE], a
    ld [c], a
    cp c
    ret nz

    ld a, [hl]
    jp $e0ff


    nop
    call z, Call_065_422c
    rst $38
    ldh [$0c], a
    ei
    pop hl
    ld hl, sp-$19
    cp [hl]
    db $e4
    ld b, l
    ldh [$2a], a
    add b
    jp nz, Jump_000_0a3f

    ld c, e
    dec c
    dec bc
    dec c
    ld l, l
    db $fc
    and d
    ld b, b
    rst $08
    rlca
    ld c, h
    ld c, h
    ld c, h
    cp l
    ldh [$fa], a
    ldh [$f8], a
    db $e4
    add l
    ldh [$ae], a
    db $e4
    scf
    ld l, e
    ld a, [bc]
    ld c, e
    ld b, c
    jp nz, Jump_065_4b4b

    nop
    rst $20
    nop
    rst $08
    add e
    inc c
    inc c
    call nz, Call_000_39e2
    ldh [$f8], a
    push hl
    ld b, d
    pop hl
    ld a, h
    ldh [$2c], a
    dec a
    ld l, e
    pop bc
    ldh [rWX], a
    ld c, e
    ld c, e
    ld l, e
    add d
    ldh [$81], a
    pop hl
    ldh [$80], a
    db $f4
    nop
    pop hl
    jp z, $f8e4

    and $3d
    ld [c], a
    inc l
    dec bc
    dec hl
    ret nz

    add e
    ld [c], a
    inc c
    ldh [rSCY], a
    pop hl
    nop
    push de
    call nz, $fdd1
    pop bc
    ld l, h
    ld l, h
    ld a, [bc]
    pop bc
    pop hl
    dec bc
    pop bc
    ld [c], a
    dec bc
    ld [bc], a
    sub $80
    jp nc, $c1ad

    pop bc
    push hl

jr_065_4bf3:
    add b
    ld b, e
    pop hl
    jp Jump_065_66c0


    add l
    ret nz

    rst $38
    ld [bc], a
    db $e3
    add d
    db $e4
    add c
    ldh [$0b], a
    ld b, b
    and d
    and b
    add h
    jp $ff80


    ccf
    add sp, -$80
    and c
    jp $0d81


    ld b, h
    pop hl
    jr c, jr_065_4c19

    sub l
    db $f4
    ld h, c
    nop

jr_065_4c19:
    ld a, [c]
    ld l, h
    ld l, h
    dec c
    ld [bc], a
    ld [c], a
    cp [hl]
    pop bc
    ld [$c486], sp
    add b
    rst $38
    ld b, c
    add sp, $2c
    ld b, l
    and b
    ld b, l
    add e
    ret nz

    ldh [rOCPS], a
    ld l, c
    jr c, jr_065_4bf3

    rst $38
    ld b, l
    and b
    ld b, d
    and b
    dec c
    dec hl
    dec hl
    ld b, c
    ret nz

    ld a, e
    ldh [$e0], a
    add $82
    add b
    rst $38
    add h
    jp hl


    jp nz, Jump_065_41c1

    ldh [$2b], a
    dec hl
    dec hl
    nop
    inc b
    adc e
    nop
    and h
    db $fc
    ld l, h
    add h
    rst $28
    add c
    ld [c], a
    ld b, l
    add c
    dec sp
    db $e4
    inc b
    adc c
    db $10
    add b
    or e
    dec b
    ld [$c282], a
    call nz, $0da2
    dec b
    and c
    ld b, b
    ld h, e
    db $fc
    rst $10
    nop
    dec b
    xor $01
    push hl
    ld b, [hl]
    ld h, c
    ld a, $a1
    cp d
    ld h, c
    ld [bc], a
    sub [hl]
    add b
    rst $28
    add c
    jp $c700


    push hl
    ld sp, hl
    push hl
    nop
    and l
    nop
    db $dd
    pop bc
    jp nz, $e480

    rst $38
    and l
    db $fc
    call $801c
    db $fc
    add e
    ld h, c
    dec c
    ld l, e
    ld l, e

jr_065_4c98:
    ld b, [hl]
    db $e4
    or a
    ld [c], a
    cp a
    ld b, e
    ld [$ff00], sp
    dec b
    pop bc
    ret nz

    db $e3
    dec bc
    ret nz

    push hl
    ld a, h
    and d
    inc [hl]
    and d
    cp $54
    nop
    ret nz

    di
    ld b, c
    and e
    db $fd
    jp $e73c


    db $fc
    ld sp, $93c0
    rst $38
    call nz, $84bb
    ld h, $38
    ld h, e
    dec bc
    ld l, l
    add b
    cp a
    add d
    ld b, l
    dec c
    ld b, e
    ld h, e
    db $fc
    add l
    db $10
    db $f4
    inc hl
    ret nz

    ldh [rP1], a
    db $fc
    ret nz

    rst $20
    dec bc
    ld [bc], a
    ld h, b
    rst $00
    ld b, d
    db $fd
    ret z

    jr nz, jr_065_4cdf

jr_065_4cdf:
    rst $38
    add b
    rst $20
    ld a, a
    add h
    ld a, [$b364]
    ld h, e
    ld c, l
    db $fc
    ld sp, $7440
    nop
    add h
    ld hl, $4046
    ld a, [hl-]
    add [hl]
    dec [hl]
    ld b, d
    db $fc
    ld sp, $7241
    ld a, [hl]
    call z, $a578
    nop
    ld a, d

Jump_065_4d00:
    ld b, e
    ret nz

    rst $38
    ld a, [hl]
    rst $08
    pop af
    add e
    add b
    rst $38
    cp d
    and [hl]
    ld a, [hl]
    jp $ecfe


    ld bc, $006d
    rst $18
    ccf
    add sp, -$80
    jr nz, jr_065_4c98

    ld h, c
    ld hl, sp-$78
    db $76
    ld [hl], c
    ret nz

    rst $30
    nop
    ld a, h
    pop bc
    ld a, l
    ld h, c
    db $fc
    inc b
    ld a, d
    add [hl]
    ld b, b
    ret nc

    add b
    inc b
    add l
    inc bc
    ld b, d
    inc h
    nop
    add e
    add a
    ld a, [hl]
    and e
    nop
    and $00
    rst $08
    ld c, l
    dec b
    add h
    inc h
    ccf
    ld b, d

jr_065_4d3f:
    ld b, d
    ld b, d
    sub b
    add c
    push hl
    or l
    ld bc, $c180
    nop
    ret nc

    ld l, h
    rst $38
    pop hl
    ld a, [hl]
    db $eb
    ld l, h
    dec sp
    ld c, h
    ld c, h
    pop bc
    pop hl
    dec bc
    ld l, e
    ld l, e
    cp d
    inc h
    or l
    call nz, Call_065_7b80
    nop
    add b
    push de
    rrca
    jr nz, jr_065_4d9d

    ld [bc], a
    inc [hl]
    ld [bc], a
    jp $0ce2


    and c
    ld l, e
    nop
    cp d
    inc hl
    db $76
    push bc
    db $76
    inc h
    inc a
    dec bc
    rlca
    db $e4
    adc [hl]
    jr nz, @-$63

    nop
    db $fd
    db $e4
    ld b, b
    ld b, [hl]
    inc h
    cp d
    ld h, b
    dec a
    inc bc
    pop bc
    and [hl]
    add b
    ld a, [c]
    add [hl]
    ld [c], a
    ld l, h
    ld h, e
    ldh [rNR10], a
    jr nz, @-$7e

    db $fc
    ld [c], a
    ld d, e
    ld h, b
    adc [hl]
    add e
    dec hl
    ret nz

    ld [c], a
    push af
    ld h, l
    ld a, d
    dec b

jr_065_4d9d:
    ld b, b
    ld a, [$e10b]
    ld bc, $e186
    sbc c

jr_065_4da5:
    jr nz, jr_065_4d3f

    jr nz, jr_065_4da5

    db $e3
    dec l
    ld c, d
    and l
    nop
    inc a
    inc bc
    or [hl]
    inc b
    ld a, d
    inc de
    ld c, d
    db $e3
    add [hl]
    db $e3
    jr jr_065_4ddf

    ret nz

    ldh [$86], a
    ld h, e
    jr nz, @-$05

    ld b, d
    ld hl, sp+$0d
    ret nz

    db $ed
    db $fc
    rst $20
    sbc d
    ld h, $6d
    ret z

    adc b
    cp d
    ld h, l
    nop
    db $fc
    inc [hl]
    and d
    add hl, bc
    sub [hl]
    ld b, $88
    ld h, [hl]
    ld a, c
    ld b, b
    ld b, h
    call nz, $8682
    nop
    ld c, h

jr_065_4ddf:
    inc c

Jump_065_4de0:
    xor h
    ld a, [c]
    ld c, c
    add [hl]
    ld l, e
    ld c, e
    inc b
    push bc
    add d
    or e
    ld a, [hl]
    di
    ret nz

    rst $20
    ld [bc], a
    ld a, l
    adc b
    dec c
    add d
    add e
    inc [hl]
    add hl, de
    sbc d
    ld b, $c2
    rst $28
    ld [bc], a
    ld [hl], h
    nop
    db $eb
    nop
    ld h, d
    ld bc, $0296
    cp [hl]
    and b
    ld bc, $42c1
    ld h, l
    or e
    ld [bc], a
    add d
    ld b, h
    ld [bc], a
    ld l, e
    nop
    cp $d3
    xor $a0
    add d
    dec b
    ld a, [$c0a5]
    ld [c], a
    ld a, [hl]
    rst $30
    ld l, h
    and c
    db $fc
    push hl
    nop
    ld a, d
    and d
    dec c
    ld b, c
    add c
    rst $20
    ld [bc], a
    ld b, d
    inc b
    ld l, a
    ld c, $c8
    cp h
    add sp, $7a
    and c
    ld [$e23e], sp
    add hl, bc
    ld b, e
    inc [hl]
    and h
    dec c
    add b
    db $f4
    ld l, b
    ld bc, $092c
    ld a, [hl]
    and h
    inc c
    db $fc
    add c
    ret nz

    ld l, b
    dec c
    dec l
    add d
    push bc
    ld [bc], a
    rst $38
    ld a, [hl+]
    and h
    cp [hl]
    inc h
    nop
    ld a, [$8483]
    inc de
    ld a, $a7
    ld l, [hl]
    xor [hl]
    xor d
    add c
    jp $bca0


    ld h, b
    cp c
    ld h, b
    add hl, bc
    ld c, e
    inc b
    add $00
    pop af
    ld c, l
    xor b
    sub h
    cp a
    ldh [rIE], a
    db $e3
    pop bc
    ldh [rP1], a
    ret c

    ret


    jp nc, Jump_000_2eae

    xor $fc
    add $86
    xor h
    inc b
    rst $08
    ld [hl], c
    cp c
    rst $20
    ld h, h
    nop
    push hl
    ld h, b
    ld c, [hl]
    cp a
    inc [hl]
    call Call_065_64f8
    add sp, $6a
    inc b
    push de
    db $f4
    or c
    and h
    ld h, h
    nop
    and d
    ret nc

    add b
    dec l
    nop
    nop
    nop
    ld l, a
    and b
    and b
    ret c

    reti


    db $fc
    di
    jp nc, $fcd3

    db $eb
    xor $d8
    db $e4
    call c, $dedd
    db $fc
    jp hl


    sub $d7
    jp c, $dbfd

    db $fc
    pop af
    ret nc

    pop de
    call nc, $a0d5
    and b
    or $fc
    rst $20
    ret nc

    pop de
    ret c

    db $e3
    rst $18
    ldh [$e1], a
    ld [c], a
    cp h
    db $fc
    jp hl


    add d
    ld sp, hl
    and b
    sbc a
    and d
    sbc l
    rst $38
    ldh [$a2], a
    ld a, c
    sbc a
    push af
    ldh [$7e], a
    push hl
    db $e3
    db $e4
    push hl
    and $fc
    jp hl


    ld l, $82
    ld sp, hl
    sbc a
    sbc h
    ld b, [hl]
    rst $38
    ld [c], a
    sbc h
    cp a
    ldh [$7e], a
    db $e3
    ccf
    and b
    and b
    rst $20
    add sp, -$17
    ld [$e9fc], a
    inc b
    or $7f
    sbc a
    sbc l
    sbc l
    sbc h
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    db $fd
    ld [c], a
    ld a, b
    cp a
    pop hl
    ld l, [hl]
    db $e3
    ld [bc], a
    db $ec
    and b
    call c, $a0a0
    xor d
    pop hl
    sub [hl]
    db $fc
    db $ed
    call nc, $84d5
    ld [c], a
    xor a
    db $fd
    push hl
    ld a, [hl]
    db $e3
    sub $4d
    rst $10
    ld [bc], a
    db $ed
    rst $18
    ldh [rNR30], a
    ldh [$fd], a
    ld a, [c]
    and c
    add l
    ld [c], a
    cp a
    ld b, [hl]
    ld b, l
    ld c, b
    ld c, b
    ld d, b
    ld b, l
    ld a, e
    ldh [$9e], a
    ld [hl], $d8
    pop hl
    ret c

    reti


    ld [bc], a
    db $ed
    db $e3
    db $e4
    ret nz

    pop hl
    ld d, l
    ldh [$f8], a
    cp $ea
    jp z, Jump_000_05c1

    ldh [$af], a
    ld b, [hl]
    ld b, l
    ld b, e
    ld b, a
    ccf
    ld h, b
    ld h, b
    ld e, l
    ld d, d
    ld b, l
    xor a
    db $fd
    pop bc
    ld a, [hl]
    pop bc
    xor [hl]
    ld [bc], a
    db $ed
    rst $20
    add sp, $07
    rst $38
    di
    ld [bc], a
    add h
    pop hl
    ld d, b
    rst $38
    ld b, a
    ld c, c
    ld d, e
    ld e, c
    ld e, c
    ld d, h
    ld h, c
    ld e, h
    ld d, d
    cp c
    ret nz

    and c
    ld l, [hl]
    jp $cefe


    sbc b
    rst $38
    ldh [$99], a
    ei
    pop hl
    cp $f8
    rst $20
    sbc c
    sbc c
    sbc c
    nop
    ld bc, $0207
    rst $38
    ld b, l
    ld b, a
    ld d, h
    ld d, e
    dec hl
    inc l
    jr nz, jr_065_4faa

    ld h, a
    dec l
    ld d, [hl]
    ld b, l
    cp [hl]
    jp nz, $e100

    and b
    and b
    nop
    call $9787
    sub a
    sub a
    cp l
    ldh [$fa], a
    ldh [$f8], a
    and $ae
    ld [c], a
    ld bc, $00ff
    ld [$5644], sp
    ld b, e
    scf

jr_065_4faa:
    jr nc, jr_065_4fcc

    ld h, d
    ret nz

    ldh [rSCX], a
    cp b
    ret nz

    nop
    db $e4
    nop
    rst $08
    sub [hl]
    sub [hl]
    call nz, $f9e2
    sub [hl]
    ld hl, sp-$1a
    or [hl]
    db $e3
    sbc c
    sbc c
    ld [$4345], sp
    ccf
    ld [hl], $35
    ld [hl+], a
    jr z, jr_065_4ffc

    dec hl

jr_065_4fcc:
    add d
    ldh [$fe], a
    and d
    add d
    nop
    db $d3
    sub l
    add $e1
    jp nz, $f8e0

    push hl
    or b
    pop hl
    dec a
    ld [c], a
    ld [$46ff], sp
    ld b, h
    inc a
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, l
    xor [hl]
    add hl, de
    xor [hl]
    jp nz, Jump_000_00c2

    push de
    sub l
    sub l
    cp [hl]
    pop hl
    ld a, [$f8e0]
    db $e4
    db $fc
    ld [hl], b
    ldh [$ef], a
    ret nz

    nop

jr_065_4ffc:
    ld bc, $020f
    ld b, l
    ld [hl], $bf
    dec [hl]
    dec [hl]
    dec [hl]
    add hl, sp
    xor [hl]
    xor a
    ei
    and b
    and c
    add b
    add d
    pop hl
    nop
    db $d3
    add $e2
    ei
    rst $20
    add c
    ld [c], a
    ld [bc], a
    ldh [$c1], a
    db $e4
    ld a, [hl-]
    nop
    ld b, l
    ret nz

    ld b, b
    and e
    ld a, [hl]
    add e
    nop
    rst $08
    add h
    jp hl


    cp a
    db $e4
    ld l, a
    ret nz

    add d
    db $e4
    ld e, $81
    ldh [rDMA], a
    sbc h
    sbc l
    sbc l
    inc b
    pop bc
    add d
    and c
    nop
    pop de
    db $fc
    inc b
    db $eb
    ld a, a
    db $e4
    sbc b
    ld [$7a79], sp
    ld h, l
    ld h, [hl]
    add $41
    ldh [rSCY], a
    xor a
    ld b, h
    pop hl
    nop
    add [hl]
    ld [bc], a
    xor [hl]
    db $dd
    sbc $f2
    add h
    ret z

    sub a
    ld sp, hl
    pop bc
    pop bc
    jp nz, Jump_000_020f

    ld a, [hl]
    ld b, d
    ld a, a

jr_065_505e:
    dec [hl]
    ld l, b
    ld h, [hl]
    dec [hl]
    inc a
    ld b, h
    ld b, [hl]
    ld b, [hl]
    and c
    call z, $e582
    ld [bc], a
    xor a
    pop hl
    ld [c], a
    inc b
    ret z

    pop bc
    rst $00
    ld [$1f80], sp
    ld b, [hl]
    add hl, sp
    dec [hl]
    dec [hl]
    ld l, d
    add b
    ldh [$c0], a
    ld [c], a
    inc b
    sub l
    ldh a, [$f4]
    ld h, c
    jp nz, Jump_065_7ba2

    and c
    add c
    rst $20
    nop
    ld bc, $8008
    rst $38
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld l, h
    ld l, l
    xor h
    inc a
    ld b, h
    jr jr_065_505e

    add d
    add d
    ld h, l
    ld [bc], a
    xor a
    jp hl


    ld [$a480], a
    pop bc
    pop hl
    ld b, d
    add $ff
    rrca
    ld [bc], a
    adc l
    ld b, h
    inc a
    ld l, h
    ld l, a
    ld l, [hl]
    ld bc, $00ad
    pop hl
    inc b
    add [hl]
    ret c

    ld b, c
    cp $8f
    adc a
    and l
    ld [bc], a
    rst $20
    add l
    and b
    db $dd
    add b
    inc b
    ret nz

    ld l, d
    ld l, [hl]
    xor h
    nop
    ld [c], a
    ld b, [hl]
    sbc h
    inc c
    ld b, b
    ld h, b
    nop
    ld h, l
    and b
    and b
    db $fc
    ld l, l
    add b
    and c
    call $81a0
    rst $20
    ld a, [hl-]
    dec b
    and c
    add b
    add l
    and b
    ld [hl], e
    dec [hl]
    xor l
    add d
    and b
    ld b, b
    ld h, [hl]
    ld b, b
    ld a, [hl]
    ld b, a
    cp $4b
    add a
    and d
    add b
    pop hl
    add e
    add $80
    pop hl
    ld b, d
    jp nz, $0fc0

    xor h
    dec [hl]
    dec [hl]
    ld a, $00
    ld h, b
    cp d
    ld h, c
    add d
    add d
    ld a, [hl]
    ld b, l
    ret nz

    cp $4b
    ret nz

    db $e3
    nop
    ldh [$03], a
    rst $00
    add c
    ret nz

    dec b
    and b
    ld l, d
    xor l
    add b
    ld [bc], a
    and c
    inc a
    ld h, d
    dec sp
    jp nz, $b4fc

    ret nz

    and $02
    call nz, $e680
    ld [hl], l
    ld [bc], a
    ret nz

    and c
    ld [hl], $3f
    db $e3
    ld a, [hl]
    ld c, b
    nop
    ld c, l
    ld c, l
    and l
    nop
    rst $20
    ld b, c
    call nz, Call_000_3f0e
    ld [c], a
    dec [hl]
    jr c, jr_065_516e

    db $fd
    ret nz

    ccf
    add c
    ei
    ld hl, $216e
    nop
    nop
    ld c, l
    add c
    db $ec
    nop
    db $e4
    pop bc
    and d
    ccf
    ldh [$7d], a
    db $e3
    dec a
    ld [c], a
    ld a, [hl]
    ld h, h
    jr c, jr_065_5152

jr_065_5152:
    adc [hl]
    add b
    db $ec
    ld [hl], d
    ld h, c
    ld [$8382], sp
    inc b
    add b
    ccf
    ldh [$80], a
    ld a, [hl]
    pop hl
    inc a
    ld [$a2fc], a
    nop
    adc l
    nop
    jp hl


    ld [hl], d
    ld h, c
    ld bc, $8ba0

jr_065_516e:
    ld l, b
    ld a, a
    ret nz

    rst $38
    add b
    ld a, [hl]
    db $e3
    add hl, sp
    ld a, d
    inc hl
    ld b, [hl]
    sbc [hl]
    db $fc
    inc bc
    nop
    nop
    adc a
    rst $38
    rst $00
    add c
    add l
    cp a
    and c
    rst $38
    add d
    dec sp
    add c
    ld a, [$f4a1]
    ld hl, $9e41
    db $fc
    ld [hl], c
    add c
    ld h, d
    cp $cd
    ret nz

    add b
    add d
    ld h, c
    ld l, d
    ccf
    db $e3
    ld b, d
    db $fd
    push bc
    and c
    ld a, d
    inc bc
    cp $0b
    rst $00
    ld b, l
    add c
    adc c
    sbc c
    rst $38
    ret nz

    ld [bc], a
    ld [bc], a
    ld h, c
    ld [hl], l
    ccf
    db $e4
    add hl, sp
    call nz, Call_000_00b9
    db $fc
    cpl
    ld c, [hl]
    ld b, l
    ld a, a
    and a
    ld b, [hl]
    ld b, d
    ld h, d
    adc e
    ld b, [hl]
    cp $c1
    ccf
    db $e4
    db $fd
    push bc
    sbc [hl]
    db $fc
    jr nc, jr_065_51ca

jr_065_51ca:
    ld b, h
    add h
    dec a
    ld b, d
    jp nz, Jump_065_7e47

    jp $a0bc


    ccf
    db $e3
    rst $30
    add c
    ld [hl], h
    nop
    nop
    ei
    ld bc, $2dfc
    call nz, $0123
    ld b, d
    cp $88
    ld a, [hl]
    call nz, $a5fc
    ld [hl], a
    ld h, c
    ld [bc], a
    ld [hl], h
    nop
    sbc [hl]
    db $fc
    jr nc, jr_065_51f9

    add d
    ld bc, $8043
    add $7d
    and e

jr_065_51f9:
    ld a, [hl]
    ret z

    nop
    ld [hl], a
    ld h, d
    dec [hl]
    ld h, c
    db $fc
    cpl
    ret z

    ld h, e
    ccf
    ld c, d
    cp [hl]
    call nz, Call_065_4000
    ld a, l
    ld h, b
    ret nz

    add b
    and $bc
    ld [bc], a
    db $fc
    cpl
    ld b, a
    ld b, [hl]
    cp [hl]
    inc h
    dec a
    add l
    add l
    add a
    rrca
    adc b
    adc b
    ld [hl], c
    ld [hl], b
    ld a, l
    ld h, b
    db $fd
    and [hl]
    nop
    push hl
    nop
    adc a
    nop
    cp h
    ld h, d
    ld b, h
    inc h
    inc bc
    ld [hl+], a
    cp $40
    adc h
    and b
    cp $c2
    add b

jr_065_5236:
    add $c0
    jp nz, RST_30

    rst $08
    adc e
    dec h
    cp $e4
    add e
    inc b
    rrca
    ld [bc], a
    ld c, h
    and b
    nop
    jr nz, @-$7e

    add c
    call nz, $8139
    ret nz

    jp nz, $cf00

    call $fe06
    db $e4
    add $00
    rrca

jr_065_5258:
    ld a, e
    rlca
    rlca
    pop bc
    pop hl
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    xor h
    ld a, l
    add [hl]
    add b
    ld a, [hl]
    adc b
    nop
    call z, Call_065_4401
    set 4, b
    cp $e5
    jp Jump_065_46e2


    ld h, c
    add hl, sp
    jr nc, jr_065_5236

    ld [$2376], a
    nop
    rst $08
    add d
    and d
    rrca
    ld [bc], a

jr_065_527e:
    jr @+$22

    cp $e4
    dec c
    sbc h
    jp nz, Jump_065_46e3

    xor a
    cp d
    ld h, c
    call nz, $c1c5
    and e
    nop
    rst $08
    db $10
    ld d, c
    ld [c], a
    ld c, a
    ldh [rNR24], a
    ld b, d
    rra
    ld b, e
    sbc a
    cp [hl]
    ld [c], a
    adc $81
    ld a, e
    jr nz, jr_065_52a1

jr_065_52a1:
    cp e
    ld b, e
    ld sp, hl
    ld b, c
    ld a, d
    dec b
    ld a, [$d00b]
    ld [c], a
    add l
    ldh [$da], a
    ld hl, $a124
    dec bc
    ret nc

    pop de
    pop de
    jr nz, jr_065_5258

    ld c, $84
    inc a
    and c
    ld bc, $3b85
    nop
    jr nz, jr_065_533b

    inc bc
    cp $0b
    adc d
    and $24
    and h
    sbc [hl]
    and d
    sbc [hl]
    ld c, d
    ld b, d
    cp [hl]
    pop bc
    add b
    add l
    and l
    ld hl, sp+$08
    cp $0b
    adc d
    db $e3
    and [hl]
    inc hl
    sbc [hl]
    ld hl, $2196
    sbc a
    dec e
    sbc h
    ld c, d
    ld b, e
    ld b, [hl]
    ld b, [hl]
    ld a, $c5
    and l
    nop
    ld h, [hl]
    nop
    adc l
    inc e
    xor d
    dec h
    ld hl, sp-$19
    jp nc, $9ed3

    ld c, a
    ld h, h
    rst $38
    jp nz, Jump_065_6342

    jr nc, jr_065_527e

    add a
    nop
    ld c, h
    adc d
    db $e3
    db $fc
    jp hl


    call nc, Call_065_41d5
    push hl
    db $fd
    and b
    add c
    scf
    ld b, b
    ld b, c
    or d
    jp $8382


    nop
    ld c, l
    add d
    db $ed
    sbc [hl]
    ld b, c
    sbc [hl]
    ldh [rSTAT], a
    push hl
    ld a, [$82e9]
    ld h, h
    nop
    ld c, l
    add d
    db $ed
    jp c, $d0db

    add hl, bc
    pop de
    add c
    push bc
    cp e
    ld [$82a1], a
    jp Jump_065_4d00


    nop
    pop af
    ret nz

    ret nz

    sbc [hl]
    ret


    ld [bc], a
    ld b, l
    ld b, e
    ld b, c

jr_065_533b:
    ld b, e
    db $fd
    ldh [$7b], a
    ld bc, $e8ae
    add d
    ld b, l
    nop
    adc l
    nop
    pop af
    and b
    ld a, a
    jp Jump_000_3645


    dec sp
    inc de
    dec [hl]
    dec sp
    db $fd
    ldh [$c2], a
    add e
    sbc [hl]
    add d
    jp $8d00


    nop
    pop af
    cp h
    rst $38
    and c
    ld a, [bc]
    jr nz, @+$46

    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    jp Jump_065_443c


    ld [bc], a
    ld b, d
    ld d, [hl]
    push bc
    nop
    ld c, e
    inc l
    inc bc
    and b
    and b
    ld hl, sp-$04
    rst $20
    ld a, [hl]
    and c
    ld a, $e1
    xor a
    ld b, d
    dec [hl]
    ld l, c
    and e
    cp a
    dec [hl]
    dec [hl]
    and e
    ld l, d
    dec [hl]
    ld b, d
    ld b, h
    add b
    sbc h
    ld bc, $829f
    inc hl
    nop
    jp nc, Jump_000_292e

    inc e
    ld h, e
    db $fc
    add c
    ret nz

    ldh [$bc], a
    ld b, d
    ld [bc], a
    inc bc
    ld h, b
    sbc h
    jr nz, @-$5e

    nop
    db $e4
    nop
    ret nc

    jr nc, jr_065_53f0

    ld a, [hl]
    and e
    db $fc
    add d
    xor a
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc bc
    ld h, b
    and c
    jr nc, @+$06

    and h
    nop
    db $d3
    jr nc, @+$0b

    db $fc
    add [hl]
    sbc a
    sbc h
    ret nz

    rst $00
    inc b
    call nz, Call_000_0400
    ld c, l
    nop
    jp Jump_065_4b30


    db $fc
    add l
    cp a
    ld [c], a
    ld b, b
    call nz, $e104
    inc b
    and e
    nop
    inc b
    ld c, e
    ld a, [$32c1]
    xor e
    inc h
    pop bc
    ld a, [hl]
    add sp, -$7a
    xor d
    inc b
    rst $08
    jp z, Jump_000_00c1

    ld [hl-], a
    xor e
    ld h, $21
    ld a, [hl]
    add sp, $6d
    ld h, e

jr_065_53f0:
    add d
    and $04
    ld c, l
    ld a, [$3201]
    xor e
    nop
    jr z, @-$3d

    ld hl, sp+$68
    add sp, $64
    add [hl]
    and l
    inc b
    ld c, l
    db $fc
    and c
    ld [hl-], a
    xor e
    ld l, $a3
    nop
    db $fc
    add $76
    jp nz, $e782

    inc b
    ld c, l
    db $fc
    and c
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
    dec e
    dec b
    ld [bc], a
    ld bc, $0520
    ld [bc], a
    ld [bc], a
    inc hl
    dec b
    ld [bc], a
    inc bc
    dec de
    rlca
    ld [bc], a
    inc b
    dec h
    rlca
    ld [bc], a
    dec b
    dec h
    ld a, [bc]
    ld [bc], a
    ld b, $23
    inc c
    ld [bc], a
    rlca
    ld hl, $020d
    ld [$0d22], sp
    ld [bc], a
    add hl, bc
    jr nz, jr_065_5468

    ld [bc], a
    ld a, [bc]
    rra
    db $10
    ld [bc], a
    dec bc
    inc e
    inc d
    ld [bc], a
    inc c
    rra
    inc d
    ld [bc], a
    dec c

jr_065_5468:
    dec de
    ld d, $02
    ld c, $1a
    jr @+$04

    rrca
    ld hl, $0218
    db $10
    dec de
    dec de
    ld [bc], a
    ld de, $1b24
    ld [bc], a
    ld [de], a
    dec e
    dec e
    ld [bc], a
    inc de
    daa
    rra
    ld [bc], a
    inc d
    ld e, $20
    ld [bc], a
    dec d
    rra
    inc hl
    ld [bc], a
    ld d, $29
    inc hl
    ld [bc], a
    rla
    rra
    ld h, $02
    jr jr_065_54be

    jr z, @+$04

    add hl, de
    ld e, $29
    ld [bc], a
    ld a, [de]
    dec e
    ld a, [hl+]
    ld [bc], a
    dec de
    dec de
    dec hl
    ld [bc], a
    inc e
    add hl, de
    inc l
    ld [bc], a
    dec e
    jr z, @+$2e

    ld [bc], a
    ld e, $17
    cpl
    ld [bc], a
    rra
    daa
    ld sp, $2002
    ld d, $32
    ld [bc], a
    ld hl, $3518
    ld [bc], a
    ld [hl+], a
    daa
    dec [hl]

jr_065_54be:
    ld [bc], a
    inc hl
    ld a, [de]
    scf
    ld [bc], a
    inc h
    dec h
    scf
    rst $38
    rst $38
    rst $38
    pop de
    ld d, h
    and h
    ld e, b
    call $e85d
    ld e, l
    cpl
    dec c
    ld c, $0e
    ld c, $fc
    jp hl


    ld c, l
    rst $28
    ldh [$fc], a
    xor $c7
    ld c, l
    inc c
    ld c, l
    add sp, -$17
    call z, $fde9
    ld sp, hl
    dec l
    dec l
    ld c, $fc
    db $e4
    dec c
    inc c
    dec l
    db $f4
    pop hl
    rst $38
    rst $38
    xor a
    pop hl
    ld a, [hl]
    rst $20
    cp e
    dec c
    ld c, l
    rst $38
    ld [c], a
    dec l
    ld c, l
    ld l, l
    add b
    ldh [$2d], a
    ld a, b
    ld h, [hl]
    jp hl


    cp $fd
    add [hl]
    pop hl
    dec c
    ld l, l
    dec c
    ld l, e
    cp $e0
    ld a, $fb
    pop hl
    ld l, e
    inc c
    ld l, e
    ld l, e
    ld c, l
    ld a, [hl]
    push hl
    ret nz

    db $ed
    db $fc
    ld [bc], a
    db $eb
    nop
    db $e3
    dec l
    dec l
    dec c
    ld c, l
    ld l, l
    dec c
    add h
    rst $38
    and $c0
    pop hl
    dec c
    ld a, [hl]
    push hl
    adc $cd
    ld b, h
    db $ed
    ld [$2de1], sp
    inc bc
    dec c
    ld l, l
    adc $e0
    add c
    push hl
    ret nz

    pop hl
    or e
    ldh [$7e], a
    and $04
    db $fd
    inc a
    pop bc
    ld [c], a
    ld c, d
    ldh [$2b], a
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld b, c
    ld [c], a
    ret nz

    db $e3
    ldh a, [rOCPS]
    ldh [rDIV], a
    db $fd
    add b
    db $e4
    dec b
    db $e3
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    or a
    ld a, [bc]
    dec bc
    dec bc
    ld bc, $4ce0
    inc l
    ld b, b
    ldh [$0d], a
    add e
    dec c
    ld l, l
    ld a, h
    ret nc

    nop
    jp nc, $c085

    adc d
    pop hl
    jp nz, Jump_000_0be1

    add hl, bc
    dec bc
    pop bc
    db $e3
    ld sp, $6de1
    db $e4
    and d
    cp $cb
    ld [$ccd2], sp
    jp nz, $830a

    ret nz

    dec hl
    jp nz, Jump_000_0be1

    ld [bc], a
    pop hl
    ld a, [c]
    jp nz, $e380

    inc a
    rst $38
    ld d, e
    dec l
    ld c, l
    dec bc
    ld [c], a
    ld c, b
    ret nz

    ld c, e
    db $fc
    ret nz

    ld a, [hl+]
    ret nz

    ld [c], a
    sbc b
    ld b, c
    ld [c], a
    db $fc
    and [hl]
    ld [bc], a
    call c, $2d4d
    jp nz, $80e2

    pop hl
    dec bc
    add e
    ld a, [hl+]
    ld a, [bc]
    ld [bc], a
    pop bc
    ld hl, sp-$60
    pop bc
    ldh [$80], a
    ld a, [c]
    nop
    pop de
    ld c, l
    nop
    adc c
    jp $e101


    ret nz

    ret nz

    ld [bc], a
    pop bc
    ld b, d
    pop hl
    nop
    rst $18
    ld h, h
    push hl
    ld b, h
    and b
    inc b
    adc $c1
    pop bc
    pop bc
    dec hl
    ret nz

    rst $20
    ld c, b
    cp a
    inc b
    xor b
    cp a
    pop bc
    ret nz

    ld [c], a
    add d
    ld b, d
    and d
    ld l, e
    db $eb
    ret nz

    inc b
    rst $38
    cp h
    adc b
    ccf
    jp nz, $e240

    dec bc
    or b
    ld b, c
    jp nz, $c1c2

    res 2, c
    inc b
    sub e
    ld c, l
    dec l
    call nz, Call_000_2b81
    ld d, $c0
    pop bc
    dec hl
    dec bc
    ld b, c
    jp nz, $826b

    call nz, $f902
    ld a, [hl]
    ret


    nop
    ld bc, $bfc4
    and c
    ld b, c
    jp nz, $8780

    nop
    rst $38
    ld a, d
    ld h, c
    adc [hl]
    and c
    add b
    pop hl
    ret nz

    cp h
    ret nz

    ld b, c
    jp nz, $8180

    nop
    rst $38
    add b
    jp hl


    ld bc, $0dc1
    dec bc
    add hl, de
    dec c
    ld b, b
    pop hl
    nop
    jp nz, Jump_065_6d0d

    bit 6, e
    ld [hl-], a
    db $eb
    add [hl]
    ld h, h
    inc c
    ld b, c
    add b
    ret nz

    db $e3
    dec bc
    ld c, e
    jp $4082


    add c
    nop
    rst $18
    nop
    and [hl]
    inc b
    ld b, c
    add d
    pop bc
    and e
    ld c, e
    ld b, c
    db $e3
    ld a, a
    and c
    ld c, b
    rst $38
    add d
    push hl
    ld a, [bc]
    add e
    ld [bc], a
    nop
    and b
    ld c, e
    add e
    add h
    add d
    add [hl]
    cp h
    rst $38
    jp c, Jump_000_0a60

    ld h, c
    pop bc
    ld [c], a
    rrca
    ld c, h
    inc c
    inc c
    inc l
    rst $38
    ld h, c
    nop
    and e
    nop
    rst $18
    inc b
    ld h, d
    ld c, $c2
    ld h, h
    dec c
    ld l, e
    ld c, h
    jp $ffe0


    add d
    cp c
    ld b, c
    nop
    rst $18
    ld [$8b02], sp
    ld a, [bc]
    ld h, c
    rst $38
    and d
    ld c, e
    ld b, h
    ld h, d
    add d
    add l
    nop
    rst $38
    add d
    ld h, l
    nop
    ld c, d
    ld b, b
    add b
    and e
    ld a, [hl-]
    ld b, d
    inc b
    sbc a
    ld [bc], a
    adc b
    ret nz

    push hl
    nop
    and e
    ld [bc], a
    ld hl, sp+$00
    nop
    pop de
    sbc d
    ld b, b
    ld [bc], a
    and d
    jp z, Jump_065_7f21

    add h
    cp d
    jr nz, @-$7c

    and l
    nop
    rst $18
    jr jr_065_56cd

    ldh [$80], a
    ld h, b
    ld c, d
    ld b, d
    ld l, h
    ld c, e
    rst $38
    pop hl
    inc [hl]
    ld h, d
    ld [bc], a
    rst $18
    inc l
    nop
    ld c, c
    nop
    and e
    ld l, e
    inc c
    rst $38
    ldh [$6c], a

jr_065_56cd:
    ret nz

    ld [c], a
    jp Jump_065_7040


    nop
    rst $38
    cp $a8
    add b
    ld h, e
    add b
    ld b, b
    dec hl
    inc c
    ld l, h
    or [hl]
    and d
    nop
    ld b, e
    ld b, b
    ld d, c
    ld [de], a
    nop
    sub a
    ret nz

    db $e3
    cp a
    db $e3
    cp l
    nop
    pop af
    nop
    nop
    rst $18
    ld [$27fe], sp
    ld b, c
    ld b, d
    nop
    add h
    ld l, h
    ld b, c
    add e
    ld b, h
    rst $38
    nop
    ld h, a
    ret nz

    ld h, d
    ld [bc], a
    add b
    ld b, e
    dec hl
    add d
    ld [bc], a
    ld [bc], a
    jr nz, jr_065_5709

jr_065_5709:
    rst $38
    inc l
    rlca
    ld b, b
    add d
    ret nz

    db $eb
    nop
    add b
    ld d, l
    nop
    sub c
    ret nz

    nop
    add b
    ld h, h
    add b
    db $e4
    ret nz

    ld [hl+], a
    nop
    rst $18
    add b
    dec h
    nop
    ret nz

    inc bc
    nop
    ld h, h
    ccf
    ld h, c
    jp $0000


    cp a
    ld a, [hl]
    add [hl]
    ret nz

    db $ed
    cp a
    pop bc
    nop
    nop
    rst $18
    inc h
    ld h, $3f
    and [hl]
    ld b, b
    and e
    ld a, a
    ld bc, $4240
    nop
    db $dd
    db $fc
    ld h, a
    inc b
    add c
    jp $2240


    dec bc
    ld a, h
    ld h, b
    cp h
    and c
    ld b, b
    add b
    ld a, [hl]
    jp Jump_000_0bfe


    nop
    xor h
    call nc, Call_065_638c
    ld b, b
    call nz, Call_000_223e
    nop
    ld b, b
    add b
    inc de
    db $fc
    ld d, h
    ccf
    add $01
    dec hl
    or [hl]
    ld h, c
    rst $38
    nop
    cp a
    pop hl
    db $fc
    rst $18
    cp b
    inc b
    ld a, $83
    add b
    ld h, l
    nop
    ld a, $00
    ld b, b
    ld b, b
    ld a, [hl]
    inc [hl]
    jr nc, @+$11

    ld a, [hl]
    jp nz, $c5bf

    add b
    ld h, b
    or $61
    nop
    db $fd
    ld b, e
    ldh [rTMA], a
    ld a, [$fec8]
    or l
    ld a, a
    and h
    dec a
    ld b, b
    or $61
    dec a
    ld [bc], a
    db $10
    cp $a0
    db $fc
    rst $18
    db $fc
    ld b, l
    ccf
    and h
    dec hl
    push af
    ld [bc], a
    ld hl, sp+$60
    cp l
    ret nz

    nop
    rst $38
    ldh [$fc], a
    rst $18
    ld a, [hl]
    and h
    rst $38
    add l
    ret nz

    db $e3
    or h
    ld h, e
    or d
    ld h, b
    cp d
    ld bc, $00c0
    rst $18
    ld a, $61
    ld a, a
    add h
    ld bc, $7261
    inc h
    ld a, h
    add b
    inc c
    ld l, h
    add b
    jr c, jr_065_5829

    ld hl, sp+$69
    ld a, h
    dec [hl]
    rst $38
    ld h, [hl]
    ld bc, $3ee1
    ld b, c
    cp [hl]
    add e
    dec l
    pop bc
    inc c
    ld hl, sp+$5e
    ld a, [hl]
    and [hl]
    add c
    rst $00
    ld b, c
    ld [bc], a
    db $fd
    jr nz, jr_065_5810

    ld c, l
    inc bc
    ld c, l
    inc c
    cp b
    ld h, d
    nop
    cp $fc
    nop
    cp $63
    cp [hl]
    nop
    add b
    ld b, e
    ld [bc], a
    ld a, l
    inc hl
    ld c, l
    ccf
    ldh [$fe], a
    call c, Call_000_06fc
    ld a, a
    inc b
    db $f4
    inc bc
    nop
    add e
    add b
    ccf
    ld [c], a
    ld hl, sp+$6c
    add b
    ld [hl], h
    adc c
    call nz, $e201
    add c
    ld h, e

jr_065_5810:
    ld [bc], a
    jp nz, Jump_000_004d

    ret nz

    ldh [rP1], a
    rst $38
    ld a, $00
    add d
    add b
    nop
    add l
    cp $00
    pop bc
    ld bc, $8366
    inc de
    inc c
    ld l, l
    nop
    rst $38

jr_065_5829:
    ret nz

    add c
    dec c
    ld b, d
    ld b, d
    rst $38
    ld h, h
    add h
    add l
    nop
    add b
    rst $28
    nop
    sub e
    dec a
    ld [bc], a
    ret nz

    add sp, $04
    ld h, l
    add sp, -$40
    nop
    db $e4
    nop
    ld e, e
    ret z

    ret nz

    ld [hl+], a
    add d
    jr nz, @-$40

    ld h, b
    dec l
    ld a, [hl]
    ld bc, $a58a
    dec l
    ld c, l
    ld b, e
    ld c, h
    inc l
    nop
    rst $38
    nop
    ld b, c
    cp [hl]
    nop
    ld bc, $0be6
    ld [bc], a
    ld h, b
    ld [bc], a
    add sp, $25
    inc c
    ld a, d
    add [hl]
    cp $7e
    nop
    rst $20
    add d
    ld b, $81
    pop bc
    nop
    sbc a
    ld h, $7e
    push hl
    ld c, e
    ld l, e
    inc b
    add b
    ld bc, $4b80
    inc b
    ld b, [hl]
    ret nz

    db $e3
    stop
    rst $18
    ld a, h
    add $fc
    db $e3
    add h
    ld b, [hl]
    dec l
    nop
    cp a
    ld a, d
    ld [$0138], sp
    inc c
    db $fc
    push hl
    add sp, $44
    dec l
    inc c
    nop
    sbc [hl]
    db $e4
    rst $00
    sub b
    ld h, l
    add [hl]
    daa
    nop
    add b
    ldh [rP1], a
    adc h
    nop
    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc
    ld [$d8a0], a
    reti


    ld l, a
    and b
    and b
    jp nc, $fcd3

    db $eb
    ld de, $eca0
    db $e3
    ld a, b
    db $e4
    pop hl
    ldh [$e0], a
    call z, $dfe8
    ldh [$e1], a
    ld [c], a
    db $fc
    jp hl


    rst $38
    sub $d7
    jp c, $d0db

    pop de
    call nc, Call_065_76d5
    db $fc
    pop hl
    and b
    and b
    db $fc
    db $e4
    sbc a
    ld de, $f49f
    pop hl
    rst $08
    ret nc

    pop de
    jp c, $e0db

    pop hl
    call z, $e3e9
    db $e4
    ld [hl], e
    push hl
    and $fc
    jp hl


    add d
    add sp, -$61
    and d
    sbc l
    rst $38
    ld [c], a
    ccf
    and d
    sbc l
    sbc h
    ld de, $9d9c
    cp [hl]
    ldh [$7e], a
    push hl
    ld e, $cc
    jp hl


    rst $20
    add sp, -$17
    ld [$e9fc], a
    add d
    db $e3
    add [hl]
    pop hl
    rst $08
    sbc a
    sbc h
    xor [hl]
    ld b, [hl]
    cp $e0
    ei
    pop hl
    ld b, [hl]
    ld de, $466f
    ld b, [hl]
    sbc h
    sbc a
    ld a, [hl]
    db $e4
    and b
    and b
    call z, $fce9
    ld [bc], a
    db $ed
    inc b
    db $e3
    and b
    and b
    sbc a
    sbc l
    sbc h
    xor [hl]
    ld de, $feaf
    pop hl
    ei
    pop hl
    ret nz

    pop hl
    xor [hl]
    cp a
    ldh [$e4], a
    db $e3
    adc $ca
    sbc $02
    db $eb
    and b
    and b
    sub $d7
    ld [$a0e1], sp
    sbc a
    xor a
    sbc h
    ld b, [hl]
    ld b, [hl]
    xor a
    cp $e1
    xor [hl]
    ld sp, hl
    ld [c], a
    ld de, $4619
    or e
    ldh [$7e], a
    ld [c], a
    sub $d7
    adc $cb
    ld [bc], a
    db $eb
    add d
    jp $c17c


    ld [c], a
    ld c, d
    ldh [rLYC], a
    ld d, b
    ld c, b
    ld c, b
    xor a
    ld b, c
    pop hl
    inc [hl]
    ld b, b
    ldh [$74], a
    pop hl
    and c
    ld a, d
    ret nz

    ret c

    reti


    adc $cb
    ld [bc], a
    db $eb
    db $e3
    and b
    and b
    add d
    pop bc
    add d
    ldh [$89], a
    pop hl
    ld b, [hl]
    ld c, d
    ld e, l
    ld l, a
    ld d, h
    ld e, c
    ld b, c
    ld b, l
    rst $30
    ldh [rNR12], a
    ld [de], a
    ld [hl], d
    ldh [rIF], a
    xor [hl]
    xor a
    sbc [hl]
    and b
    ld a, [hl]
    pop bc
    adc $cb
    nop
    rst $08
    inc b
    ret nz

    db $fd
    sbc [hl]
    inc c
    pop hl
    ld b, [hl]
    ld b, [hl]
    ld d, l
    ld d, [hl]
    dec hl
    inc l
    inc de
    jr nz, jr_065_59d6

    pop bc
    db $e3
    ld sp, $9ee1
    db $e4
    call nz, $db00
    ld [$f9c0], sp
    and c
    add $c0
    adc $c0
    ld b, l
    dec l
    jr nz, jr_065_59de

    inc l
    db $e3
    cp l
    ld b, l
    ld [bc], a
    pop hl
    ret nz

    ret nz

    ld a, [hl]
    jp $d7d6


    and b
    call Call_000_00a0
    db $dd
    and b
    sbc [hl]
    ld b, d
    pop hl
    ret nz

    ret nz

    dec l

jr_065_59d6:
    ld h, $0f
    ld hl, $5f3e
    ld c, d
    ld [bc], a
    pop hl

jr_065_59de:
    ret nz

    ret nz

    add b
    pop bc

Call_065_59e2:
    nop
    rst $18
    db $fc
    nop
    db $e4
    sub b
    pop hl
    ld b, [hl]
    ld b, [hl]
    add hl, sp
    dec [hl]
    dec [hl]
    ld a, [hl-]
    inc de
    ld d, [hl]
    ld d, l
    ld [bc], a
    pop bc
    ld [hl], a
    ret nz

    sbc [hl]
    inc a
    and b
    nop
    rst $18
    inc b
    and e
    db $fd
    sbc [hl]
    ret nz

    jp nz, Jump_000_3e46

    dec [hl]
    dec [hl]
    dec [hl]
    add hl, sp
    ld [c], a
    ld [bc], a
    jp $c246


    ret nz

    nop
    rst $18
    nop
    jp $d1d0


    sbc [hl]
    ld a, [bc]
    ret nz

    jp nz, $c0ae

    pop hl
    ld a, $02
    pop bc
    db $f4
    and b
    add b
    and b
    add sp, -$7f
    ld c, b
    nop
    rst $18
    add d
    add c
    ld a, a
    jp $c0af


    ld [c], a
    ld b, d
    and d
    ld b, [hl]
    inc bc
    pop bc
    ret nz

    ld a, [hl]
    add e
    nop
    reti


    add d
    add c
    ld a, [hl]
    and c
    add b
    ldh [rLCDC], a
    push hl
    ld a, [hl-]
    ld b, l
    add b
    ld b, c
    jp nz, $e141

    add d
    pop hl
    nop
    jp c, $8520

    ld b, c
    and b
    adc b
    and c
    ld b, l
    dec c
    ld a, [hl-]
    nop
    ldh [$3c], a
    ld b, h
    ld b, c
    jp nz, $c003

    add d
    jp $6cd0


    or b
    inc b
    adc l
    nop
    add e
    ld a, $c0
    ld bc, $44a0
    inc a
    ret nz

    ret nz

    dec [hl]
    add c
    ld b, d
    ld b, c
    jp nz, $e300

    inc b
    adc e
    nop
    adc l
    add d
    push hl
    add d
    ld h, b
    and c
    ld a, [hl-]
    adc [hl]
    and c
    ld b, b
    add c
    ret nz

    xor h
    dec [hl]
    ld b, b
    ld b, c
    jp nz, $8180

    ldh [rOCPS], a
    ld h, c
    ret nc

    ld l, l
    inc b
    adc e
    add d
    ld h, l
    add b
    pop hl
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld [bc], a
    jp nz, $ade0

    ld b, b
    pop hl
    ld [hl], h
    pop bc
    rst $38
    and b
    add d
    pop bc
    ret nc

    ld l, l
    ld [bc], a
    ld l, e
    adc b
    inc b
    ld h, l
    ld b, c
    add c
    pop bc
    and c
    xor l
    cp a
    and b
    jp Jump_000_3a81


    add b
    xor [hl]
    add c
    xor a
    add c
    add b
    ld h, d
    add d
    nop
    sbc b
    add d
    ld h, h
    ld b, c
    add e
    pop bc
    and d
    dec [hl]
    dec b
    add hl, sp
    ld b, c
    db $e3
    ld b, [hl]
    ld b, b
    and b
    nop
    ld h, e
    nop
    db $db
    add d
    db $e3
    add c
    and e
    rra
    add hl, sp
    jr c, jr_065_5b15

    dec a
    scf
    add e
    add e
    ld [hl], $60
    add d
    add e
    ldh a, [rP1]
    db $dd
    adc d
    ld b, c
    pop bc
    add b
    bit 4, c
    ld b, [hl]
    ld b, l
    ld b, l
    ld [de], a
    rrca
    inc de
    inc de
    ld [de], a
    ld b, l
    db $f4
    ld [c], a
    pop bc
    add c
    nop

jr_065_5af7:
    rst $18
    add d
    ld h, d
    cp $c2
    ld h, h
    xor [hl]
    ld b, [hl]
    ld [de], a
    inc de
    ld [de], a
    scf
    dec a
    ld b, e
    jr c, jr_065_5b40

    ld a, l
    ld h, c
    ld [bc], a
    ld h, d
    nop
    rst $18
    add d
    ld h, d
    and c
    jp nz, $0663

    ld a, [bc]
    ld h, b

jr_065_5b15:
    ld b, l
    jr c, @-$3f

    add c
    inc b
    ld h, c
    jp nz, Jump_000_0082

    rst $18
    add d
    ld h, e
    nop
    ld b, e
    and e
    ld c, d
    ld b, b
    ld b, b
    add b
    add b
    and b
    cp c
    ld b, d
    inc b
    ld h, c
    nop
    rst $18
    add d
    ld b, d
    inc c
    ld b, e
    and b
    ld bc, $46e2
    ld de, $c37f
    ld [bc], a
    jp nz, Jump_065_6104

    nop

jr_065_5b40:
    rst $18
    nop
    add d
    ld b, l
    adc d
    ld b, h
    add b
    pop hl
    ld a, a
    add c
    add hl, sp
    ld b, b
    add d
    and e
    nop
    rst $18
    add d
    ld b, b
    inc b
    ld [bc], a
    ld b, d
    ccf
    ld h, c
    ld [de], a
    pop bc
    ret nz

    ret nz

    ret nz

    di
    jp nz, $a182

    nop
    rst $18
    nop
    add d
    dec h
    add b
    ld h, b
    adc l
    ld b, c
    ld b, c
    ret nz

    ld b, b
    ret nz

    di
    jp nz, Jump_065_6181

    nop
    rst $18
    jr jr_065_5af7

    ld h, e
    cp a
    ld b, b
    add b
    ld h, e
    ld b, l
    scf
    ret nz

    and [hl]
    ld b, b
    add c
    nop
    rst $18
    ld [$a700], sp
    ld a, a
    ld b, d
    add b
    pop bc
    ld [hl], $00
    and e
    nop
    sbc a
    nop
    add l
    ld a, [hl]
    ld [c], a
    nop
    ld b, b
    add b
    adc c
    nop
    rst $38
    add e
    add d
    jr nz, jr_065_5bdd

    add d
    nop
    rst $18
    nop
    add a
    ret nz

    ld h, d
    ld [bc], a
    cp a
    add e
    ld a, $82
    ld [bc], a
    ld [bc], a
    ld hl, $df00
    nop
    add l
    ld b, b
    add e
    ret nz

    add sp, $00
    ld [bc], a
    ld [hl+], a
    nop
    rst $18
    nop
    db $e4
    ret nz

    ld bc, $81c0
    nop
    ld h, c
    add b
    db $e3
    ret nz

    add d
    ld [$df00], sp
    ld a, [hl]
    and h
    ret nz

    inc b
    ld b, d
    ld bc, $7f61
    ld b, b
    ret nz

    ld [hl+], a
    add c
    jr nz, jr_065_5bf5

    nop
    rst $18
    ld a, [hl]
    add h
    ld b, c
    ld b, h
    nop
    ld h, c

jr_065_5bdd:
    ld a, [hl]
    jr nz, @+$42

    cp a
    jp nz, $df00

    add $f6
    nop
    and b
    and b
    nop
    inc h
    ccf
    and d
    ld b, b
    db $e3
    dec [hl]
    ld b, d
    nop
    rst $38
    ld [bc], a
    nop

jr_065_5bf5:
    jp nz, Jump_000_2100

    nop
    ld e, b
    db $fc
    ld h, d
    nop
    ld [hl+], a
    ld c, l
    ld h, d
    ld b, b
    ld [hl+], a

jr_065_5c02:
    inc c
    cp a
    jr nz, jr_065_5c3d

    and b
    ld b, [hl]
    ld b, [hl]
    ld a, a
    add c
    ld h, d
    and h
    nop
    ld d, l
    db $fc
    ld h, e
    add d
    ld a, [hl]
    and c
    and c
    adc h
    ld h, e
    ld b, b
    call nz, Call_000_223e
    cp a
    ld h, d
    nop
    ld hl, $01a0
    and b
    nop
    push de
    db $fc
    ld h, a
    ret nz

    inc bc
    ld b, b
    ld bc, $01ff
    ld a, [hl]
    inc bc

jr_065_5c2e:
    ld a, [hl]
    ld h, [hl]
    jr nz, jr_065_5c2e

    xor d
    jr nc, jr_065_5c02

    nop
    inc hl
    ld a, $84
    ld a, a
    jp nz, $7639

jr_065_5c3d:
    ld h, c
    nop
    ld b, c
    add b
    ld a, [hl]
    and h
    db $fc
    xor e
    ld [bc], a
    db $ec
    db $fc
    ld h, l
    ld a, a
    add b
    cp $80
    rst $38
    ld [bc], a
    ld b, d
    nop
    ld b, b
    ld [c], a
    ld a, h
    ld h, c
    ld a, [hl]
    ld b, l
    db $fc
    jp nz, $a4f8

    ld [hl-], a
    xor e
    db $fc
    ld h, [hl]
    ccf
    db $e4
    db $10
    rst $38
    ret nz

    pop bc
    ret nz

    or $61
    db $fc
    ld h, c
    and c

jr_065_5c6b:
    ld a, [hl]
    and b
    ld e, [hl]
    pop bc
    db $fc
    pop bc
    jr nz, jr_065_5c6b

    and l
    nop
    set 7, h
    ld h, [hl]
    cp [hl]
    and b
    ccf
    and h
    ld a, $41
    ld b, d
    ld [hl], l
    ld b, b
    ld c, $bd
    ret nz

    sbc l
    sbc l
    sbc l
    ld a, d
    and l
    ld hl, sp+$65
    nop
    adc e
    db $fc
    ld h, $c1
    sbc [hl]
    cp [hl]
    ld b, e
    ret nz

    pop hl
    or h
    ld b, e
    or h
    ld h, d
    ld a, [c]
    jr nz, @-$62

    sbc a
    add b
    ld e, d
    dec b
    nop
    push de
    db $fc
    inc h
    ccf
    add l
    ld bc, $f261
    ld b, d
    add b
    pop hl
    sbc h
    rlca
    ld [de], a
    ld [de], a
    sbc [hl]
    ld e, d
    inc b
    nop
    sub $fc
    ld b, e
    ccf
    nop
    ccf
    add e
    ld a, b
    add c
    ld b, c
    ld b, c
    ld bc, $22bd
    sbc a
    sbc h
    ld de, $5a9e
    inc bc
    ret nz

    nop
    db $db
    ld a, [hl]
    and d
    ccf
    add e
    add c
    pop bc
    ld b, c
    ld [bc], a
    add b
    ld bc, $9ea0
    ld hl, $b811
    ld h, b
    db $fc
    xor c
    nop
    db $d3
    ret nz

    push hl
    add hl, sp
    ld b, d
    and c
    add b
    ld b, e
    ld b, d
    ccf
    add e
    sbc [hl]
    ccf
    ldh [$7e], a
    jp nz, $dc00

    cp $65
    ld [hl], $c2
    jr nz, jr_065_5cf6

jr_065_5cf6:
    db $f4
    ld [bc], a
    nop
    add e
    ccf
    ld [c], a
    ld hl, sp+$6a
    nop
    db $d3
    rst $38
    inc h
    ld a, l
    ld bc, $0242
    add e
    xor a
    sbc h
    ld b, a
    pop bc
    ld h, [hl]
    ld b, d
    ret nz

    ldh [$d8], a
    ld b, e
    nop
    reti


    sbc [hl]
    ld a, $8d
    ld bc, $4546
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [$bf], a
    and b
    ldh [$82], a
    inc bc
    ld h, [hl]
    add d
    add b
    ldh [rP1], a
    rst $18
    ld a, a
    ld h, c
    xor a
    ld b, l
    ld [hl], $37
    dec sp
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    ld b, l
    ld b, e
    add d
    add sp, $41
    db $f4
    add b
    db $e3
    nop
    rst $18
    and c
    ld a, l
    ld bc, $3c44
    and h
    ld h, h
    ld [bc], a
    rst $38
    ldh [$a5], a
    ld a, [hl]
    nop
    inc bc
    ld b, c
    inc b
    add d
    nop
    rst $20
    nop
    jp c, Jump_000_22c0

    rst $38
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    add [hl]
    cp [hl]
    add b
    sbc h
    sbc a
    add d
    inc bc
    add b
    jp $df00


    add b
    and c
    xor [hl]
    nop
    ret nz

    ldh [rSB], a
    ld h, c
    ret nz

    ldh [$c2], a
    ld b, b
    add d
    inc b
    nop
    rst $18
    ld a, [hl]
    inc h
    inc a
    nop
    rst $28
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    ld b, h
    nop
    ld b, e
    ld b, b
    inc b
    inc hl
    add c
    pop bc
    ld e, d
    inc hl
    nop
    sbc e
    db $fc
    ld [hl+], a
    ret nz

    rst $00
    inc b
    ld b, a
    inc bc
    sbc a
    ld de, $a500
    nop
    sbc b
    ld a, [hl]
    db $e4
    ld d, d
    add b
    db $fd
    db $e4
    inc b
    jp nz, Jump_000_0806

    add e
    ld de, $5a9f
    inc hl
    nop
    sbc c
    ld a, d
    dec b
    cp $e9
    add [hl]
    ld h, l
    ld bc, $0011
    sbc [hl]
    sbc [hl]
    ld h, e
    ld a, d
    ld [bc], a
    adc [hl]
    and d
    ld hl, sp-$1d
    nop
    db $e4
    ret nz

    ldh [rP1], a
    nop
    adc e
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
    inc e
    inc b
    ld [bc], a
    ld bc, $041e
    ld [bc], a
    ld [bc], a
    jr nz, @+$06

    ld [bc], a
    inc bc
    ld hl, $0204
    inc b
    inc hl
    inc b
    ld [bc], a
    dec b
    dec de
    dec b
    ld [bc], a
    ld b, $1d
    dec b
    ld [bc], a
    rlca
    rra
    dec b
    ld [bc], a
    ld [$0522], sp
    ld [bc], a
    add hl, bc
    inc h
    dec b
    ld [bc], a
    ld a, [bc]
    add hl, hl
    dec b
    ld [bc], a
    dec bc
    jr nz, jr_065_5e1e

    ld [bc], a
    inc c
    jr z, @+$08

    ld [bc], a
    dec c

jr_065_5e1e:
    ld a, [hl+]
    ld b, $02
    ld c, $19
    rlca
    ld [bc], a
    rrca
    ld [hl+], a
    rlca
    ld [bc], a
    db $10
    add hl, hl
    rlca
    ld [bc], a
    ld de, $072b
    ld [bc], a
    ld [de], a
    rla
    ld [$1302], sp
    ld a, [hl+]
    ld [$1402], sp
    ld d, $09
    ld [bc], a
    dec d
    jr jr_065_5e49

    ld [bc], a
    ld d, $17
    ld a, [bc]
    ld [bc], a
    rla
    dec de
    ld a, [bc]
    ld [bc], a

jr_065_5e49:
    jr jr_065_5e71

    ld a, [bc]
    ld [bc], a
    add hl, de
    add hl, hl
    ld a, [bc]
    ld [bc], a
    ld a, [de]
    jr z, jr_065_5e5f

    ld [bc], a
    dec de
    add hl, de
    inc c
    ld [bc], a
    inc e
    add hl, hl
    inc c
    ld [bc], a
    dec e
    rla

jr_065_5e5f:
    dec c
    ld [bc], a
    ld e, $22
    dec c
    ld [bc], a
    rra
    daa
    dec c
    ld [bc], a
    jr nz, jr_065_5e83

    ld c, $02
    ld hl, $0e1c
    ld [bc], a

jr_065_5e71:
    ld [hl+], a
    rla
    rrca
    ld [bc], a
    inc hl
    add hl, de
    rrca
    ld [bc], a
    inc h
    jr z, jr_065_5e8b

    ld [bc], a
    dec h
    jr jr_065_5e90

    ld [bc], a
    ld h, $1a

jr_065_5e83:
    ld de, $2702
    dec h
    ld de, $2802
    daa

jr_065_5e8b:
    ld [de], a
    ld [bc], a
    add hl, hl
    jr nz, jr_065_5ea3

jr_065_5e90:
    ld [bc], a
    ld a, [hl+]
    add hl, hl
    inc de
    ld [bc], a
    dec hl
    ld e, $14
    ld [bc], a
    inc l
    jr z, jr_065_5eb0

    ld [bc], a
    dec l
    ld a, [hl+]
    inc d
    ld [bc], a
    ld l, $26

jr_065_5ea3:
    dec d
    ld [bc], a
    cpl
    add hl, hl
    dec d
    ld [bc], a
    jr nc, jr_065_5ec3

    ld d, $02
    ld sp, $1716

jr_065_5eb0:
    ld [bc], a
    ld [hl-], a
    jr z, jr_065_5ecb

    ld [bc], a
    inc sp
    rla
    jr jr_065_5ebb

    inc [hl]
    inc hl

jr_065_5ebb:
    jr jr_065_5ebf

    dec [hl]
    dec d

jr_065_5ebf:
    add hl, de
    ld [bc], a
    ld [hl], $1a

jr_065_5ec3:
    add hl, de
    ld [bc], a
    scf
    dec h
    add hl, de
    ld [bc], a
    jr c, jr_065_5ef2

jr_065_5ecb:
    add hl, de
    ld [bc], a
    add hl, sp
    inc d
    ld a, [de]
    ld [bc], a
    ld a, [hl-]
    ld d, $1a
    ld [bc], a
    dec sp
    inc h
    ld a, [de]
    ld [bc], a
    inc a
    ld h, $1a
    ld [bc], a
    dec a
    dec d
    dec de
    ld [bc], a
    ld a, $27
    dec de
    ld [bc], a
    ccf
    ld d, $1c
    ld [bc], a
    ld b, b
    ld h, $1c
    ld [bc], a
    ld b, c
    jr jr_065_5f0d

    ld [bc], a
    ld b, d

jr_065_5ef2:
    daa
    dec e
    ld [bc], a
    ld b, e
    inc hl
    ld e, $02
    ld b, h
    jr z, jr_065_5f1a

    ld [bc], a
    ld b, l
    rla
    rra
    ld [bc], a
    ld b, [hl]
    jr jr_065_5f24

    ld [bc], a
    ld b, a
    inc e
    jr nz, @+$04

    ld c, b
    ld h, $21
    ld [bc], a

jr_065_5f0d:
    ld c, c
    ld a, [de]
    ld [hl+], a
    ld [bc], a
    ld c, d
    jr z, jr_065_5f36

    ld [bc], a
    ld c, e
    daa
    inc hl
    ld [bc], a
    ld c, h

jr_065_5f1a:
    add hl, hl
    inc hl
    ld [bc], a
    ld c, l
    jr z, jr_065_5f44

    ld [bc], a
    ld c, [hl]
    rla
    dec h

jr_065_5f24:
    ld [bc], a
    ld c, a
    ld d, $26
    ld [bc], a
    ld d, b
    jr jr_065_5f52

    ld [bc], a
    ld d, c
    daa
    ld h, $02
    ld d, d
    rla
    daa
    ld [bc], a
    ld d, e

jr_065_5f36:
    add hl, de
    jr z, jr_065_5f3b

    ld d, h
    inc e

jr_065_5f3b:
    add hl, hl
    ld [bc], a
    ld d, l
    rla
    ld a, [hl+]
    ld [bc], a
    ld d, [hl]
    jr jr_065_5f6f

jr_065_5f44:
    ld [bc], a
    ld d, a
    inc h
    dec hl
    ld [bc], a
    ld e, b
    add hl, hl
    dec hl
    ld [bc], a
    ld e, c
    ld a, [de]
    inc l
    ld [bc], a
    ld e, d

jr_065_5f52:
    jr z, jr_065_5f80

    ld [bc], a
    ld e, e
    ld a, [hl+]
    inc l
    ld [bc], a
    ld e, h
    jr jr_065_5f89

    ld [bc], a
    ld e, l
    dec hl
    dec l
    ld [bc], a
    ld e, [hl]
    add hl, de
    ld l, $02
    ld e, a
    jr @+$31

    ld [bc], a
    ld h, b
    ld [hl+], a
    cpl
    ld [bc], a
    ld h, c
    dec de

jr_065_5f6f:
    ld sp, $6202
    ld h, $31
    ld [bc], a
    ld h, e
    jr z, jr_065_5faa

    ld [bc], a
    ld h, h
    ld a, [hl+]
    ld [hl-], a
    ld [bc], a
    ld h, l
    daa
    inc sp

jr_065_5f80:
    ld [bc], a
    ld h, [hl]
    add hl, hl
    inc sp
    ld [bc], a
    ld h, a
    inc hl
    inc [hl]
    ld [bc], a

jr_065_5f89:
    ld l, b
    jr z, @+$36

    ld [bc], a
    ld l, c
    add hl, de
    dec [hl]
    ld [bc], a
    ld l, d
    ld h, $35
    ld [bc], a
    ld l, e
    jr jr_065_5fcf

    ld [bc], a
    ld l, h
    ld a, [de]
    scf
    ld [bc], a
    ld l, l
    rla
    jr c, jr_065_5fa3

    ld l, [hl]
    add hl, de

jr_065_5fa3:
    jr c, @+$04

    ld l, a
    jr jr_065_5fe1

    ld [bc], a
    ld [hl], b

jr_065_5faa:
    ld a, [de]
    dec sp
    ld [bc], a
    ld [hl], c
    dec h
    dec sp
    rst $38
    rst $38
    rst $38
    cp e
    ld e, a
    db $eb
    ld h, d
    xor h
    ld h, [hl]
    rst $00
    ld h, [hl]
    rrca
    dec c
    ld c, $0e
    ld c, $fc
    rst $38
    ld hl, sp-$09
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

jr_065_5fcf:
    or $f5
    ld a, [de]
    rst $38
    cp $df
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
    ld [bc], a

jr_065_5fe1:
    rst $38
    db $fc
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $f8
    dec l
    dec c
    dec c
    db $fc
    ldh [$d9], a
    ld l, l
    cp $df
    xor b
    db $f4
    ld l, l
    dec c
    cp a
    ret nz

    dec c
    ld l, l
    inc a
    ld a, [hl]
    rst $38
    ld h, [hl]
    or $2d
    ld c, $0e
    dec l
    sbc e
    rst $18
    ei
    ld a, [$4100]
    ld [c], a
    ld [bc], a
    rst $38
    ld b, $ee
    ld [c], a
    and h
    ld a, $e2
    ld [bc], a
    rst $38
    xor h
    xor $06
    pop hl
    ret nc

    db $fc
    push hl
    ld a, [hl-]
    ldh [rIE], a
    rst $38
    ret nz

    rst $28
    ld c, l
    add c
    ret nz

    ld c, l
    ld c, l
    db $ec
    jp nc, $80ff

    di
    dec c
    ld c, l
    jp Jump_065_4de0


    dec l
    dec l
    or b
    add d
    rst $38
    ld a, [de]
    xor [hl]
    add hl, bc
    ret nz

    add d
    pop hl
    ld l, l
    ld l, e
    rst $38
    ldh [rKEY1], a
    ld h, c
    dec l
    ld b, b
    jp nz, $dffe

    xor [hl]
    xor d
    ld [$0bc2], sp
    ld c, e
    cp $e1
    pop af
    ld c, l
    or h
    add $ff
    rst $38
    ld l, d
    xor d
    ld c, e
    ld c, e
    ld c, e
    dec c
    rrca
    dec bc
    dec c
    dec bc
    ld c, e
    cp d
    and d
    rst $38
    rst $38
    db $ec
    db $eb
    ld b, d
    ldh [$e1], a
    dec bc
    ret nz

    and $b5
    ret nz

    ld [bc], a
    rst $38
    inc d
    add l
    ld c, l
    ld c, l
    ld l, l
    and $4e
    and b
    dec c
    ld l, l
    add c
    pop hl
    ld a, l
    ldh [rWX], a
    ld c, e
    ld l, l
    and b
    ld a, e
    and b
    db $ed
    jp $ff02


    ret nc

    ld h, b
    ld d, b
    and c
    ld l, l
    pop bc
    pop hl
    dec c
    inc b
    ld b, c
    ldh [$fe], a
    pop bc
    dec l
    ret nz

    pop hl
    ld c, [hl]
    rst $38
    ret nz

    and $91
    pop hl
    ld b, e
    ld [c], a
    rrca
    ld c, e
    dec bc
    dec bc
    dec hl
    cp h
    ret nz

    cp a
    pop bc
    ret nz

    rst $38
    call nz, $1bcf
    dec hl
    ld a, [bc]
    rst $38
    ldh [rOCPS], a
    dec bc
    ld a, [hl]
    pop bc
    nop
    rst $18
    ld d, $66
    ld c, $52
    add b
    dec l
    ld c, l
    ld c, l
    ld b, e
    pop hl
    pop bc
    pop hl
    cp a
    db $e3
    ldh a, [$c1]
    ld a, b
    nop
    rst $18
    inc c
    add h
    add $a2
    ld c, e
    dec c
    dec c
    ld l, e
    ret nz

    db $e3
    ld b, a
    ld a, [bc]
    dec bc
    dec c
    or b
    pop bc
    rst $38
    rst $38
    ret nz

    and $0d
    add $a0
    db $76
    call nz, $2bc0
    dec bc
    ld bc, $2be0
    ld a, [bc]
    ld a, [hl+]
    cp e
    ld h, b
    and e
    ld l, l
    dec c
    ld a, [$129f]
    adc b
    ld b, c
    pop hl
    ld l, l
    ret nz

    ld [c], a
    ld c, e

Call_065_6104:
Jump_065_6104:
    add c
    ld l, e
    ld a, l
    ld h, b
    or b
    ldh [$bc], a
    ld a, c
    inc b
    jp z, $e254

    adc b
    add c
    dec c
    ld e, $87
    and b
    ld c, e
    ld l, e
    ld c, e
    ld c, e
    pop bc
    add b
    add b
    pop hl
    rst $30
    ld h, e
    ld [hl], b
    ld [bc], a
    rst $38
    ld e, b
    jp nz, $8148

    ld b, d
    ld [c], a
    dec bc
    inc c
    inc l
    inc a
    ret nz

    ld [hl], b
    rst $38
    and b
    ld a, [hl]
    cp e
    ret z

    adc h
    add hl, bc
    add c
    ld c, e

Call_065_6138:
    ld l, e
    ld l, e
    ld bc, $07e0
    dec bc
    ld c, h
    ld l, h
    cp l
    pop hl
    ld a, $a2
    cp $bf
    ret nz

    and $42
    pop bc
    ld de, $c36b
    and d
    cp l
    db $e3
    ld a, [hl]
    ld b, c
    ld l, l
    cp $9f
    ld [de], a
    ld [hl+], a
    dec b
    and c
    nop
    ld [bc], a
    pop bc
    add l
    add b
    ret nz

    pop bc
    ld a, h
    add b
    ld b, b
    jp $df00


    ld [bc], a
    and h
    add c
    jp nz, Jump_000_0b11

    nop
    ret nz

    ld b, d
    and b
    ld a, $81
    dec c
    ret nz

    add b
    nop
    rst $18
    ld d, d
    ld b, a
    ld a, [bc]
    add l
    add [hl]
    ld l, e
    add d
    ret nz

    dec bc
    ld a, b

Jump_065_6181:
    pop bc
    ret nz

    ldh [$be], a
    cp a
    add [hl]
    ld h, a
    nop
    ld b, [hl]
    add d
    call nz, Call_065_4360
    ret nz

    ld a, $83
    ld l, [hl]
    and c
    ld a, [hl]
    ld e, b
    inc b
    adc d
    jp Jump_000_00a2


    ld [$8a80], sp
    pop bc
    ld [bc], a
    ret nz

    dec a
    add b
    db $fd
    and b
    ld [$02c3], a
    rst $38
    dec bc
    ld b, h
    ld b, $49
    ld h, c
    ld c, h
    ld l, h
    push bc
    ld h, d
    ret nz

    ld [c], a
    add d
    pop bc
    ld b, b
    rst $18
    db $76
    ld b, l
    nop
    add h

Jump_065_61bb:
    add d
    rst $00
    ld b, b
    ld a, l
    ld [c], a
    inc bc
    pop bc
    ret nz

    pop bc
    ld l, e
    add c
    jp nz, Jump_065_46ff

    ld b, e
    nop
    inc bc
    and d
    dec sp
    ldh [$7d], a
    pop hl
    ld a, c
    pop hl
    jp Jump_065_6ec0


    ld h, d
    cp $df
    ld hl, sp+$22

Call_065_61db:
    ld [hl], b
    call RST_20
    ld b, c
    cp h
    jp $a185


    dec c
    ld c, l
    dec l
    ld b, h
    and b
    nop
    jp hl


    ld h, c
    cp $df
    ld a, $e3
    ld d, b
    ld h, b
    ld b, d
    db $e4
    db $fd
    ld b, b
    inc a
    ld hl, $c3be
    adc h
    ld a, $ff
    add $04
    ld c, l
    dec l
    ld b, d
    push hl
    add [hl]
    add b
    ld b, b
    add d
    dec c
    ld b, b
    cp h
    ld b, c
    db $fc
    cp a
    add b
    and h
    ld [bc], a
    pop hl
    ld b, e
    ld b, h
    ld [hl], l
    pop hl
    dec l
    ld b, b
    add h
    ldh a, [$80]
    db $f4
    ld [bc], a
    ld a, [hl+]
    sub l
    and b
    rlc b
    dec c
    ld c, e
    dec hl
    dec hl
    inc b
    add [hl]
    jr nz, jr_065_62a7

    add c
    dec hl
    ei
    jr nz, jr_065_626e

    add d
    ld [bc], a
    rst $38
    ld [bc], a
    and e
    sub h
    ld h, b
    nop
    cp a
    add b
    add l
    add d
    db $fd
    ld h, d
    ld sp, hl
    ld hl, $9f40
    ret nz

    add sp, $40
    ld h, d

Call_065_6244:
    ret nz

    add sp, -$80
    inc [hl]
    ld h, b
    call nz, Call_000_3e60
    ld a, c
    add d
    adc d
    ld d, e
    ld hl, $e280
    ccf
    add b
    dec l
    nop
    db $fd
    ld b, c
    pop bc
    ldh [rSTAT], a
    push hl
    nop
    rst $18
    add hl, de
    ld [c], a
    add b
    add sp, -$47
    ldh [$03], a
    add e
    nop
    ld b, e
    pop bc
    cp $df
    sbc b
    and c

jr_065_626e:
    nop
    ld [c], a
    jp Jump_065_40c3


    ld hl, $04c2
    ld b, h
    rst $38
    jr jr_065_627a

jr_065_627a:
    call nz, $817d
    adc c
    add c
    ld l, e
    dec bc
    db $fd
    ld b, b
    db $fc
    ld h, b
    ld [hl], e
    ld [bc], a
    ld [hl], h
    ld b, h
    push de
    ldh a, [$ef]
    ld c, l
    dec a
    add d
    dec l
    dec hl
    ld l, e
    rst $38
    ldh [rTIMA], a
    dec c
    cp l
    ld h, b
    dec hl
    add e
    ld b, b
    ld b, b
    ld b, b
    call nz, Call_000_32b8
    ld sp, $a17e
    ld [bc], a
    cp [hl]
    and e
    ld l, e

jr_065_62a7:
    jp nz, $0282

    ld a, a
    inc a
    ld c, [hl]
    cp [hl]
    ld [c], a
    ld b, e
    pop bc
    add [hl]
    sbc c
    nop
    cp $d5
    res 0, d
    pop bc
    db $e3
    ld [$fcbf], sp
    ld l, $3f
    and b
    ld hl, sp+$61
    ld b, $22
    db $10
    ld b, l
    add c
    jp nz, Jump_000_2c5d

    inc de
    cp d
    ld [c], a
    ld c, l
    push bc
    ld hl, $e17f
    cp $df
    nop
    db $76
    adc $73
    ld [hl+], a
    add [hl]
    ld a, e
    ld [hl], $da
    ei
    db $e4
    ret nz

    rst $38
    ld hl, sp+$34
    or c
    ld h, h
    nop
    ret nz

    db $fd
    nop
    nop
    nop
    rst $08
    and b
    call c, $dedd
    db $fc
    rst $38
    ld hl, sp-$09
    rst $18
    ldh [$f3], a
    pop hl
    ld [c], a
    db $fc
    rst $38
    ld hl, sp-$09
    db $e3
    db $e4
    push hl
    and $3c
    db $fc
    rst $38
    ld hl, sp-$09
    rst $20
    add sp, -$17
    ld_long $fffc, a
    ld hl, sp-$09
    nop
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    nop
    ld e, $ff
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    ldh [$0e], a
    add sp, -$01
    push hl
    nop
    rst $18
    ld d, $f2
    ret nz

    pop hl
    sub $d7
    and b
    pop af
    and b

jr_065_6340:
    nop
    rst $18

Jump_065_6342:
    ld a, [de]
    di
    call nz, $d8e1
    reti


    and b
    and b
    db $fc
    nop
    rst $18
    ld a, [de]
    di

jr_065_634f:
    ret c

    reti


    ret nc

    pop de
    jp c, $63db

    and b
    and b
    nop
    rst $18
    ld b, $f1
    call nz, $d2e1
    db $d3
    ld hl, sp-$1f
    ld [hl], b
    cp $db
    ld b, $f2
    add hl, bc
    ldh [$c4], a
    pop hl
    call nc, $a0d5
    ld hl, sp-$1e
    ldh [rP1], a
    rst $18
    jr jr_065_6340

    add hl, bc
    pop hl
    call nz, Call_065_7ee1
    pop bc
    call nc, $d0d5
    jp hl


    pop de
    nop
    rst $18
    jr jr_065_634f

    and b
    add hl, bc
    pop hl
    and b
    sbc a
    sbc l
    adc a
    sbc l

Call_065_638c:
    sbc l
    and d
    sbc a
    ld a, [hl]
    pop hl
    nop
    rst $18
    ld [bc], a
    rst $28
    and b
    scf
    sbc a
    sbc h
    ld b, [hl]
    rst $38
    ldh [$9c], a
    sbc a
    ld a, [hl-]
    ldh [$3a], a
    ret nz

    jr jr_065_63a4

jr_065_63a4:
    rst $18
    ld [de], a
    and [hl]
    inc c
    pop bc
    jp nc, $c1d3

    db $e3
    cp a
    ld [c], a
    ld a, [hl-]
    ret nz

    cp b
    nop
    rst $18
    ld d, $a7
    ld c, b
    pop bc
    call nc, $a1d5
    add d
    ldh [$ae], a
    ld c, $fe
    ldh [rDMA], a
    sbc [hl]
    and b
    ld sp, $00e0
    rst $18
    ld d, $a7
    ld c, b
    jp nz, Jump_065_4282

    ld [c], a
    xor a
    cp $e0
    ret nz

    ldh [$3d], a
    ret nz

    nop
    rst $18
    ld a, [bc]
    xor c
    call nc, $d511
    inc bc
    ld [c], a
    add e
    ldh [$fd], a
    ret nz

    sbc [hl]
    dec [hl]
    jp nz, $96fa

    ld a, [bc]
    xor a
    jp nc, $c4c4

    xor [hl]
    add e
    pop hl
    cp l
    ret nz

    and c
    ld sp, hl
    and c
    sub $d7
    jr nc, jr_065_63f9

jr_065_63f9:
    rst $18
    inc b
    call nz, $c5c4
    jp nz, Jump_065_45e1

    ld b, l
    cp a
    jp $80f8


    db $ec
    nop
    rst $18
    inc d
    add e
    sub $d7
    call nz, Call_065_45c4
    ld c, b
    ld c, [hl]
    rlca
    ld c, [hl]
    ld c, c
    ld d, d
    cp a
    ld [c], a
    ld hl, sp-$7f
    nop
    rst $18
    inc c
    add e
    adc [hl]
    add c
    sbc l
    sbc [hl]
    ld b, e
    pop hl
    ld c, b
    ld h, b
    ld h, c
    rst $38
    ldh [$bf], a
    pop hl
    sbc [hl]
    ldh [$f8], a
    add b
    nop
    rst $18
    inc c
    add h
    adc [hl]
    add b
    add $a0
    xor a
    xor [hl]
    ld b, l
    rst $38
    ld d, e
    ld e, c
    ld e, c
    ld e, c
    ld d, h
    ld h, c
    ld e, b
    ld b, h
    rra
    xor [hl]
    sub c
    sbc [hl]
    call nc, Call_000_00d5
    rst $18
    ld [bc], a
    push hl
    pop bc
    ld [c], a
    cp $c4
    ret nz

    ld b, l
    ld a, [hl+]
    ld h, $26
    inc l
    dec hl
    ld d, d
    rrca
    ld d, d
    sub c
    xor a
    sub b
    cp $a0
    nop
    rst $18
    ld b, $a4
    ld c, b
    add b
    rst $38
    sbc [hl]
    sub c
    ld b, [hl]
    xor a
    sub c
    sub b
    ld b, d
    daa
    ccf
    jr nz, jr_065_6492

    ld h, $2a
    sub c
    sub b
    rst $38
    ldh [$be], a
    and b
    call c, $df00
    ld c, $65
    jp nc, $9ed3

    call z, $91e1
    ld [hl], $7f
    ld hl, $2a26
    ld b, c
    ld b, l
    sub c
    sub c
    cp [hl]
    ldh [$c1], a
    sbc [hl]

jr_065_6492:
    add hl, sp
    ld h, d
    nop
    rst $18
    ld c, $60
    add d
    pop bc
    ret nz

    ldh [$91], a
    ld b, l
    ld a, a
    ld [hl], $35
    dec [hl]
    inc a
    ld b, h
    ld [bc], a
    ld [bc], a
    cp l
    add c
    jp $a191


    add hl, sp
    ld h, c
    nop
    rst $18
    inc b
    pop bc
    db $10
    ld h, c
    and c
    sub b
    cpl
    sub c
    ld b, [hl]
    ld b, b
    dec [hl]
    rst $38
    ldh [rSCY], a
    ret nz

    ldh [$bd], a
    pop hl
    ld bc, $309e
    add c
    nop
    rst $18
    ld [bc], a
    pop hl
    db $10
    ld h, c
    ld b, d
    pop bc
    add b
    db $e3
    ccf
    add b
    and b
    ld a, l
    ldh [rP1], a
    pop bc
    ld a, [$1e57]
    inc l
    ld de, $9e60
    jp z, $ae81

    rrca
    inc a
    dec [hl]
    dec [hl]
    add hl, sp
    ccf
    add l
    nop
    rst $18
    inc c
    ld b, [hl]
    call Call_065_6540
    sbc [hl]
    ld b, [hl]
    add c
    xor a
    rst $38
    ret nz

    ret nz

    ldh [$ae], a
    xor [hl]

Call_065_64f8:
    ld b, b
    add c
    ld l, b
    nop
    rst $18
    ld b, $66
    add l
    add h
    xor a
    cp $c0
    ld a, [hl-]
    ld b, l
    cp c
    ldh [$61], a
    xor a
    nop
    add c
    nop
    rst $18
    nop
    rst $00
    adc b
    ld h, l
    ld b, l
    ld [hl], $41
    ldh [rSC], a

jr_065_6517:
    ld a, [hl]
    add c
    sbc [hl]
    ld [bc], a
    ld sp, hl
    nop
    ld c, h
    ld [bc], a
    ld [c], a
    adc c
    ld h, b
    ld b, a
    pop bc
    add h
    add b
    ld b, d
    add b
    ld h, d
    and c
    ld a, [$0020]
    rst $18
    ld [bc], a
    and $48
    ld h, b
    xor a
    ld c, d
    jp nz, $8000

    ld h, [hl]
    ld a, [$0020]
    rst $18
    ld [bc], a
    push hl
    add h
    add d

Call_065_6540:
    add a
    ld b, c
    call nz, $c0a1
    and d
    and b
    nop
    pop hl
    nop
    rst $18
    ld [bc], a
    and h
    ld b, h
    add c
    inc bc
    and b
    sub c
    ret nz

    rst $20
    sub c
    jr jr_065_6517

    ld b, b
    nop
    rst $18
    ld b, $27
    sbc a
    sbc h
    ld [bc], a
    and c
    ld b, h
    ld b, e
    ld b, h
    and b
    ld h, e
    sub b
    sub b
    nop
    jp $d6fe


    ld b, $2c
    ret nc

    pop de
    cp a
    ldh [$6d], a
    sub c
    ld b, d
    db $e4
    xor [hl]
    ld b, [hl]
    add c
    add c
    sbc h
    sbc a
    cp $d9
    nop
    ld b, $2c
    ld b, l
    ld b, h

jr_065_6582:
    ld [bc], a
    db $e3
    add hl, sp
    add b
    ld b, b
    add h
    cp $d7
    ld b, $2c
    adc l
    ld bc, $7f08
    and c
    ld b, e
    ld b, e
    or $c1
    sub c
    ret nz

    ld h, b
    dec sp
    ld [bc], a
    nop
    rst $18
    adc [hl]
    inc bc
    cp $3d
    pop bc
    ld b, l
    ld b, e
    xor a
    ld b, e
    ld b, e
    ld b, c
    ld b, e
    ld [hl+], a
    add c
    ld b, b
    xor [hl]
    ld b, b
    add c
    cp $21
    nop
    rst $18
    ld [c], a
    jp c, $c1c2

    ld b, c
    rst $18
    ld b, l
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    ld b, l
    ret nz

    ld a, h
    jr nz, jr_065_6582

    ld [bc], a
    nop
    rst $18
    nop
    pop bc
    ld bc, $7f80
    add d
    ld b, h
    inc a
    dec bc
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    dec a
    add c
    ld a, [hl]
    nop
    add e
    pop bc
    nop
    rst $18
    ld hl, sp+$02
    ld h, b
    ld bc, $7f80
    add d
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    rra
    dec [hl]
    and e
    ld l, d
    dec [hl]
    ld b, d
    add b
    inc b
    nop
    rst $18
    cp $c5
    nop
    ld a, l
    and d
    ret nz

    ldh [$7f], a
    ld h, c
    ret nz

    ldh [$c3], a
    ld h, d
    xor d
    ld h, b
    nop
    sbc a
    ld [bc], a
    inc h
    sbc $7d
    and d
    xor [hl]
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    pop hl
    ld b, h
    jp nz, Jump_000_0004

    sbc a
    ld [bc], a
    dec h
    sub a
    and b
    and c
    ld b, [hl]
    xor a
    add d
    ret nz

    add $9e
    ld l, $c2
    nop
    sbc a
    nop
    ld b, [hl]
    cp [hl]
    ld b, b
    db $fd
    ld h, b
    ld b, l
    adc d
    ld b, e
    ret nz

    xor [hl]
    ld b, b
    pop bc
    and c
    dec l
    jp $9f00


    ld a, [$da45]
    ld bc, $3ddb
    and c
    ld b, d
    add e
    add d
    add e
    dec b
    and b
    ld [bc], a
    or $00
    ld c, e
    cp $c3
    ld [bc], a
    dec a
    and c
    sbc l
    ld a, d
    ld h, h
    add d
    jp $f702


    nop
    ld c, e
    cp $03
    rrca
    ld [c], a
    ret nz

    add hl, sp
    ld h, e
    add d
    call nz, $f702
    nop
    ld c, e
    db $fc
    ld h, l
    ld hl, sp+$61
    sbc a
    sbc l
    nop
    rst $38
    ldh [rLYC], a
    ld b, d
    ld [bc], a
    ld sp, hl
    nop
    ld c, [hl]
    db $f4
    inc h
    rst $08
    add d
    or c
    ld h, c
    or b
    add c
    nop
    ld [bc], a
    ld hl, sp+$00
    ld c, l
    ld a, [c]
    add l
    dec bc
    jp nz, $a0c6

    ret


    ld h, c
    ld [bc], a
    ld sp, hl
    nop
    call $f20c
    add l
    add hl, sp
    add b
    sub $d7
    db $f4
    ld h, b
    ldh a, [rSB]
    ld [bc], a
    ld sp, hl
    nop
    ld c, l
    add $fa
    ret z

    ret c

    reti


    db $f4
    ld h, b
    ldh a, [rSB]
    ld [bc], a
    ld sp, hl
    rst $20
    add sp, $00
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

Jump_065_66c0:
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    inc e
    rla
    ld [bc], a
    ld bc, $171e
    ld [bc], a
    ld [bc], a
    dec de
    add hl, de
    ld [bc], a
    inc bc
    add hl, de
    ld a, [de]
    ld [bc], a
    inc b
    jr jr_065_66f7

    ld [bc], a
    dec b
    ld d, $1d
    ld [bc], a
    ld b, $17
    ld e, $02
    rlca
    ld hl, $021e
    ld [$1f15], sp
    ld [bc], a
    add hl, bc
    inc d
    inc h
    ld [bc], a
    ld a, [bc]
    rla
    dec h
    ld [bc], a
    dec bc
    ld d, $26

jr_065_66f7:
    ld [bc], a
    inc c
    ld e, $26
    ld [bc], a
    dec c
    rra
    ld h, $02
    ld c, $1d
    daa
    ld [bc], a
    rrca
    inc de
    add hl, hl
    ld [bc], a
    db $10
    inc e
    add hl, hl
    ld [bc], a
    ld de, $291e
    ld [bc], a
    ld [de], a
    ld [de], a
    dec hl
    ld [bc], a
    inc de
    inc e
    ld l, $02
    inc d
    jr jr_065_674b

    ld [bc], a
    dec d
    jr nz, jr_065_6750

    ld [bc], a
    ld d, $15
    ld [hl], $02
    rla
    ld a, [de]
    jr c, @+$01

    rst $38
    rst $38
    ld [hl-], a
    ld h, a
    db $d3
    ld l, d
    add $6f
    pop hl
    ld l, a
    ld c, a
    dec c
    ld c, $0e
    ld c, $fc
    ld a, [c]
    rst $20
    ldh [rKEY1], a
    db $fc
    ld hl, sp+$00
    ret z

    push hl
    rst $38
    rst $38
    db $e4
    db $e3
    or b
    pop hl
    db $fc
    push hl
    rst $38
    rst $38

jr_065_674b:
    ld [c], a
    pop hl
    add d
    db $eb
    scf

jr_065_6750:
    dec c
    dec c
    ld c, l
    rst $38
    ldh [$2d], a
    dec l
    ld hl, sp-$20
    ld h, [hl]
    db $e4
    inc l
    rst $38
    rst $38
    add [hl]
    jp hl


    ld l, l
    ld l, e
    rst $38
    ld [c], a
    ld c, l
    cp a
    ldh [$c4], a
    db $ec
    ld [$f302], sp
    add [hl]
    ld [$e4c1], a
    dec c
    cp $e0
    cp a
    pop hl
    nop
    ld [c], a
    scf
    ld [c], a
    db $10
    ld a, c
    push af
    ld a, [de]
    rst $20
    ld b, a
    db $e3
    add d
    ldh [$0d], a
    ret nz

    db $e3
    ld a, [hl]
    pop hl
    ld c, h
    rst $38
    db $fc
    ld [$47e8], sp
    db $e4
    ld l, e
    dec c
    dec hl
    dec bc
    dec bc
    dec hl
    adc a
    ld a, [bc]
    ld a, [hl+]
    dec bc
    ld l, e
    ret nz

    pop hl
    nop
    rst $38
    adc d
    push bc
    ld c, l
    db $db
    ld l, e
    dec c
    add [hl]
    ldh [rOCPD], a
    ld l, e
    jp nz, Jump_000_0be0

    dec hl
    ccf
    dec bc
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld l, e
    ld l, l
    call nz, Call_000_04ea
    db $db
    add sp, -$38
    pop bc
    ret nz

    ldh [$c3], a
    pop hl
    ld c, e
    cp a
    ldh [$0b], a
    dec hl
    ld c, d
    rlca
    ld l, d
    dec bc
    ld l, l
    nop
    db $e3
    nop
    rst $18
    call c, $89c1
    jp $e183


    ld a, [hl]
    cp a
    ld [c], a
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld c, l
    dec l
    ld c, b
    rst $38
    ld hl, sp-$7e
    rst $20
    ld c, b
    ld [c], a
    ld b, e
    pop hl
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    dec bc
    ccf
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ld l, e
    ld l, e
    ld l, l
    nop
    rst $38
    adc [hl]
    and e
    jr nz, jr_065_6801

    ret nz

    add hl, bc
    db $e3
    jp nz, Jump_000_04e2

    ldh [rIE], a
    pop hl
    dec c
    ret nz

    pop hl

jr_065_6801:
    cp $dd
    ld [hl], h
    add [hl]
    call nz, $c18c
    dec c
    ld b, h
    ld [c], a
    ld c, e
    dec c
    dec c
    jp nz, Jump_065_7fe0

    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    dec c
    ld l, e
    dec l
    nop
    rst $18
    ld [hl], b
    ld b, b
    and d
    ld c, h
    jp $e3c0


    ld b, b
    and b
    dec c
    ld c, e
    ld a, [bc]
    jp Jump_000_00e0


    cp d
    and b
    add b
    db $ec
    inc b
    or [hl]
    sub b
    and b
    adc h
    pop bc
    ld a, l
    ld [c], a
    ret nz

    pop hl
    cp [hl]
    and d
    ld [$e0c1], sp
    nop
    rst $18
    add b
    db $e4
    dec c
    rst $00
    jp nz, $e23d

    ld a, [$83a1]
    ld [c], a
    jr nz, @-$7c

    db $ed
    inc b
    sub a
    ld b, b
    ldh [rOBP0], a
    jp nz, $c0ff

    dec hl
    add d
    ret nz

    rst $38
    add d
    inc de
    dec c
    ld l, l
    nop
    sbc a
    ld c, $86
    ld l, e
    ld b, c
    db $e3
    add d
    pop hl
    nop
    ld [c], a
    db $10
    ld a, e
    add b
    ld [bc], a
    sbc a
    nop
    jp hl


    ld bc, $4be3
    ld b, $c0
    dec bc
    and b
    ld a, d
    add c
    nop
    inc b
    add [hl]
    cp b
    rst $38
    ret nz

    and $c9
    and b
    set 0, d
    jp z, $c0ea

    jp hl


    inc b
    sub l
    nop
    ld b, b
    ret nz

    add b
    ret nz

    jp nz, $8ce2

    ret nz

    inc b
    ld l, d
    inc b
    add [hl]
    ld a, c
    pop af
    ld h, h
    push hl
    add e
    ld c, l
    dec l
    ld c, l
    and b
    ld b, a
    and d
    add hl, bc
    ldh [$50], a
    rst $38
    ld [$4d6f], sp
    add hl, bc
    dec c
    cp [hl]
    ldh [$84], a
    pop bc
    dec l
    add d
    db $ec
    cp h
    rst $38
    add [hl]
    ld h, l
    cp a
    and b
    nop
    ld b, h
    ret nz

    rst $00
    ld b, c
    ld h, h
    ld [hl], c
    ld [bc], a
    di
    ld [$8669], sp
    add b
    add e
    ret nz

    ret z

    ld b, e
    ld a, b
    ld [$00cb], sp
    db $dd
    rrca
    and c
    ld c, l
    ld l, l
    dec hl
    ld c, e
    pop bc
    pop hl
    ld h, c
    inc c
    rst $38
    ldh [$8a], a
    ld l, e
    nop
    rst $38
    call nz, Call_065_4b64
    ld c, e
    jp Jump_000_07e1


    ld l, h
    ld c, h
    ld c, h
    ld a, [hl]
    rst $00
    rst $38
    rst $38
    adc d
    ld b, e
    ld c, $40
    add a
    pop hl
    ld b, $c3
    pop hl
    ld l, h
    ld l, e
    cp a
    and c
    call nz, $08f4
    ld d, c
    ret nc

    inc hl
    add l
    db $e3
    rrca
    ld l, h
    dec hl
    ld c, e
    dec bc
    ld [$fe51], sp
    sub c
    ld h, h
    push bc
    adc h
    ld b, c
    ld [bc], a
    add e
    db $e3
    ld l, h
    cp h
    add e
    rst $00
    ld [hl+], a
    ld c, b
    rst $38
    adc d
    ld b, $c3
    ld h, b
    ld b, e
    ld [c], a
    ld b, c
    inc l
    ld a, $83
    ld a, a
    ldh [rOBP0], a
    ld b, d
    nop
    db $fd
    add b
    and $6d
    inc b
    db $e3
    ld [bc], a
    ret nz

    push hl
    dec hl
    ld a, $e0
    ld a, [hl]
    db $d3
    ld [bc], a
    dec l
    inc b
    and [hl]
    ret nz

    db $e4
    adc d
    ld b, c
    jp nz, $e37f

    ld c, l
    ld [$0063], sp
    rst $18
    sub d
    ld [bc], a
    add c
    db $e3
    inc c
    inc l
    ld bc, $032c
    ld b, e
    ld a, $e1
    ld [$867f], sp
    ld b, l
    add c
    rst $20
    ret nz

    db $ec
    nop
    rst $18
    ret nz

    adc b
    ld [hl+], a
    ld b, c
    and $80
    push bc
    ld a, $62
    adc b
    inc [hl]
    nop
    pop de
    ld l, e
    ld l, e
    inc bc
    ld c, h
    ld c, h
    add b
    jp z, Jump_065_61bb

    inc b
    ld h, d
    nop
    rst $18
    add b
    pop hl
    dec b
    add b
    ret nc

    add c
    ld [$603b], a
    nop
    rst $38
    ld [$4d28], sp
    call z, Call_000_2c80
    inc l
    nop
    add h
    and c
    cp $23
    ld a, e
    add b
    nop
    rst $38
    adc b
    ld [$e1c0], sp
    ld b, [hl]
    and b
    add h
    push bc
    jr z, jr_065_69d4

    add e
    add b
    ld a, [c]
    inc b
    sub e
    ld c, l
    ld b, [hl]
    and c
    ld l, e
    rlca
    and b
    jp Jump_000_18c6


    ld c, b
    ld hl, $df00
    add b
    and $0c
    ld c, h
    rlca
    add $7b
    ld b, d
    add c
    pop hl
    nop
    ld b, h
    rst $38
    add [hl]
    ld h, [hl]
    ld b, c
    and b
    ret nz

    ld [$c002], a
    ld [$823f], sp
    xor b
    adc h
    ld h, b
    ld bc, $032c
    inc h
    ld bc, $02a5
    call nc, $ed32
    add d
    and e
    add c
    pop bc
    ld b, c

jr_065_69d4:
    add sp, $00
    ld [bc], a
    jp nz, $5104

    nop
    ld d, d
    jp Jump_000_06c0


    ret z

    dec a
    inc h
    ld [bc], a
    rst $18
    nop
    add $03
    ld c, l
    ld c, h
    ld c, l
    ld h, e
    pop bc
    inc bc
    add e
    and h
    add d
    and e
    nop
    rst $38
    ld [bc], a
    and c
    inc bc
    ld c, h
    ld c, h
    ld d, h
    ld bc, $e6c1
    add e
    and d
    add b
    ld [hl], l
    inc b
    ld c, a
    ld b, d
    and d
    nop
    sub b
    ret nz

jr_065_6a07:
    add c
    push hl
    add c
    ld bc, $6031
    ld a, [hl-]
    jr nz, jr_065_6a10

jr_065_6a10:
    rst $18
    add h
    ld b, h
    call Call_000_0001
    ld b, c
    push hl
    ret nz

    inc hl
    ld b, b
    ld h, h
    nop
    rst $38
    add [hl]
    dec b
    ret nz

    push hl
    add c
    inc hl
    ccf
    pop hl
    inc b
    ld a, [hl]
    dec h
    nop
    rst $18
    ld l, l
    ld c, l
    and c
    ld a, [bc]
    and b
    ld b, $a5
    ld [hl], d
    ld b, c
    ret nz

    and e
    nop
    nop
    rst $18
    add d
    ld h, c
    pop bc
    ld [c], a
    ld b, $21
    ld b, d
    jr nz, jr_065_6a07

    ld [c], a
    cpl
    pop hl
    dec sp
    nop
    nop
    nop
    rst $18
    add h
    ld b, e
    add d
    ld [c], a
    ei
    db $e3
    add h
    db $e3
    pop bc
    db $e3
    ld b, h
    rst $38
    nop
    and e
    ld [bc], a
    ld b, e
    ld [c], a
    dec c
    inc a
    db $e3
    ld a, b
    pop bc
    ccf
    pop hl
    add d
    db $e4
    nop
    rst $38
    ret nz

    push hl
    db $10
    ld a, [hl]
    db $e4
    jp nz, $e6e4

    daa
    nop
    rst $18
    dec c
    ld c, l
    ret nz

    ld c, h
    ld [hl+], a
    rlca
    add l
    ldh [$08], a
    ld b, d
    add d
    push hl
    nop
    rst $18
    pop bc
    ret nz

    cp a
    ld [c], a
    dec hl
    dec hl
    dec hl
    ld [$c382], sp
    ld b, $bf
    nop
    ld l, e
    dec l
    cp a
    db $e3
    pop bc
    pop hl
    rst $00
    nop
    ld [$2086], sp
    add d
    jp $ffbc


    add d
    ld b, b
    ld a, [hl]
    ld [c], a
    pop bc
    pop hl
    dec bc
    ld c, d
    nop
    ldh [rNR11], a
    inc b
    nop
    sbc d
    db $fc
    jr nz, jr_065_6ad9

    ld c, c
    and c
    rlca
    jr nz, jr_065_6abd

    ld h, e
    add d
    rst $20
    ld [bc], a
    db $ed
    nop
    nop
    sub d
    inc a
    ld h, h
    db $fd
    pop hl

jr_065_6abd:
    inc c
    cp a
    nop
    ld d, c
    ld a, d
    push hl
    inc c
    rst $00
    ld h, [hl]
    add c
    jr @+$06

    rst $38
    db $76
    dec l
    adc $ff
    ld c, $0e
    nop
    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc

jr_065_6ad9:
    ld a, [c]
    and b
    ret c

    reti


    add $fc
    rst $20
    jp nc, $fcd3

    db $eb

Jump_065_6ae4:
    db $e4
    ldh [$c8], a
    db $e4
    rst $18
    ldh [$7b], a
    pop hl
    ld [c], a
    db $fc
    pop af
    sub $d7
    jp c, $fcdb

    pop hl
    ld a, e
    ret nc

    pop de
    db $fc
    pop hl
    call nc, $a0d5
    and b
    db $fc
    rst $20
    inc a
    db $ec
    pop hl
    ret z

    push hl
    db $e3
    db $e4
    push hl
    and $fc
    pop af
    add [hl]
    db $ed
    ld [hl], a
    sbc a
    and d
    sbc l
    rst $38
    ldh [$a2], a
    sbc a
    and b
    rst $38
    ldh [$3c], a
    ld [hl], d
    pop hl
    ret z

    push hl
    rst $20
    add sp, -$17
    ld [$f1fc], a
    add d
    push hl
    xor [hl]
    add [hl]
    db $e4
    sbc a
    sbc h
    ld b, [hl]
    rst $38
    ld [c], a
    sbc h
    cp a
    pop hl
    call nc, $d507
    sub $d7
    ret z

    push hl
    ld [bc], a
    push af
    ld [$8ee7], sp
    pop hl
    pop bc
    db $e3
    pop bc
    xor [hl]
    cp $e0
    cp a
    ld [c], a
    db $e4
    jp nz, $c3c6

    ld [bc], a
    di
    and b
    and b
    ld a, b
    add d
    and $47
    ld [c], a
    add d
    ldh [$ae], a
    ld b, [hl]
    ld b, [hl]
    xor a
    cp $e0
    inc c
    ld a, [hl]
    pop hl
    db $ec
    pop bc
    sub $d7
    add $c3
    ld [bc], a
    di
    adc d
    rst $00
    ld b, a
    push hl
    rst $38
    ld b, [hl]
    xor a
    ld b, l
    ld b, c
    ld b, l
    ld b, l
    ld c, b
    ld c, b
    add a
    ld b, l
    ld b, [hl]
    and c
    ld a, [hl]
    call nz, $c3c6
    ld [bc], a
    di
    inc b
    rst $20
    sbc [hl]
    ei
    ld b, [hl]
    xor [hl]
    add [hl]
    ldh [rDMA], a
    ld b, [hl]
    ld b, l
    ld b, c
    ld a, [hl+]
    rst $38
    ld h, $2a
    ld b, c
    ld d, h
    ld h, b
    ld e, h
    ld b, [hl]
    sbc [hl]
    add [hl]
    nop
    ld [c], a
    jp c, $c6db

    jp $d704


    inc b
    ld [c], a
    ret z

    ret nz

    xor a
    rst $38
    xor a
    ld b, [hl]
    ld b, l
    scf
    dec a
    jr c, jr_065_6bdd

    daa
    rst $38
    jr nz, jr_065_6bcc

    ld h, $2a
    ld c, e
    ld d, d
    ld b, l
    sbc [hl]
    or b
    db $e4
    jp $d800


    add [hl]
    rst $00
    adc c
    call nz, Call_000_3539
    rst $38
    ldh [rNR42], a
    rst $38
    jr nz, jr_065_6be3

    jr nz, jr_065_6bec

    ld c, a
    ld d, [hl]
    ld b, l
    sbc h
    ld sp, hl
    sbc a
    nop

jr_065_6bcc:
    db $dd
    inc b
    and $a2
    sbc h
    ld b, [hl]
    ld b, l
    ld b, e
    ld a, [$e009]
    ld a, [hl-]
    ret nz

    ldh [$38], a
    scf
    ld a, [hl+]

jr_065_6bdd:
    ld h, $20
    ccf
    ld a, [hl+]
    ld c, e
    ld d, l

jr_065_6be3:
    ld b, [hl]
    ld b, [hl]
    sbc [hl]
    nop
    db $dd
    add [hl]
    and c
    ld a, [hl]
    inc c

jr_065_6bec:
    call nz, Call_000_3645
    dec sp
    dec [hl]
    jr c, jr_065_6c2b

    jp nz, $ffe1

    ld b, e
    ld c, c
    ld c, c
    ld c, [hl]
    ld c, [hl]
    ld c, c
    ld h, b
    ld e, h
    rst $00
    xor [hl]
    ld b, [hl]
    sbc [hl]
    nop
    rst $18
    inc b
    and c
    call $aea0
    ld b, l
    rst $30
    ld [hl], $35
    xor h
    ld b, h
    pop hl
    ld a, [hl-]
    ld b, l
    xor [hl]
    xor [hl]
    rst $38
    ld d, d
    ld d, a
    ld h, c
    ld d, h
    ld e, c
    ld d, e
    ld b, l
    xor a
    ld c, b
    ld a, a
    ret nz

    nop
    sbc $08
    and c
    sbc [hl]
    rrca
    ret nz

    rlca
    ldh [$ad], a
    inc b

jr_065_6c2b:
    pop hl
    rst $38
    add hl, sp
    xor [hl]
    xor a
    xor a
    xor [hl]
    ld b, e
    ld e, e
    ld b, l
    ret c

    ld [hl], l
    pop bc
    nop
    db $e3
    nop
    db $dd
    jp nc, Jump_065_46d3

    ret nz

    ld b, [hl]
    ld a, $7c
    rst $00
    pop bc
    ld a, l
    ldh [rLCDC], a
    xor a
    xor [hl]
    xor [hl]
    xor a
    cp [hl]
    and d
    adc b
    ld a, $a1
    nop
    rst $18
    nop
    pop hl
    sbc [hl]
    call $c7a0
    pop bc
    ld a, l
    pop hl
    ld b, d
    inc e
    ld a, [hl-]
    pop bc
    add e
    and b
    ld b, [hl]
    sbc h
    sbc l
    add d
    ret nz

    nop
    rst $18
    inc b
    add c
    ld e, b
    ld b, b
    ldh [rOBP0], a
    jp nz, $c0ff

    inc a
    ld b, h
    jp nz, $9d84

    add b
    add b
    call z, $9f00
    ld [$a183], sp
    ld b, [hl]
    ld b, c
    db $e3
    rst $38
    ret nz

    ld [hl], $45
    add c
    sbc h
    ld b, d
    add c
    jp nz, $82e1

    push hl
    nop
    rst $18
    ret nz

    ret nz

    ld bc, $3be2
    inc bc
    jr c, @+$39

    dec bc
    and c
    rst $38
    db $e4
    add d
    db $e4
    nop
    rst $18
    nop
    ldh [$c1], a
    jp nz, Jump_000_36b7

    ld b, e
    ld b, l
    add hl, bc
    add e
    ret nc

    pop de
    add d
    rst $20
    and b
    ld de, $00a0
    sbc b
    inc b
    add h
    nop
    db $e3
    ld a, [hl-]
    jp nz, Jump_000_09e1

    pop hl
    inc b
    ld l, c
    nop
    inc b
    add h
    nop
    sub e

Jump_065_6cc3:
    inc b
    add l
    adc l
    ld h, b
    pop bc
    and b
    ret nz

    pop hl
    adc $81
    adc d
    jp $8670


    jp $8504


    nop
    sub e
    adc [hl]
    ld b, [hl]
    sbc a
    sbc l
    sbc h
    ld b, $a0
    add c
    ld [hl], $03
    db $e3
    ld [$6ae5], sp
    ld b, e
    jp z, Jump_000_0447

    sbc c
    inc bc
    add b
    ld a, $04
    ld b, h
    pop bc
    add e
    ret nz

    sbc a
    adc d
    ld b, e
    inc b
    db $e3
    inc b
    push bc
    nop
    sub d
    ld [$8169], sp
    and c
    add b
    db $e3
    ret z

    ld b, e
    ld [$00cb], sp
    ld d, l
    add d
    add sp, $40
    ldh [rLCDC], a
    dec a
    dec sp

Jump_065_6d0d:
    pop bc
    pop hl
    ld [bc], a
    rlca
    rlca
    rlca
    adc d
    ld h, c
    ld [$d849], sp
    nop
    ld d, l

jr_065_6d1a:
    adc d
    ld b, a
    ld b, c
    add d
    ld b, e
    ld b, l
    jp $0fe0


    rrca
    add b
    ret nz

    pop hl
    ld [$004b], sp
    ld d, l
    inc b
    add h
    jp $87c1


    db $e3
    jp $02e1


    pop bc
    ld b, [hl]
    cp a
    and d
    ld [$0089], sp
    ld d, h
    inc h
    ld b, l
    ret nc

    ld [hl+], a
    ld [bc], a
    rrca
    ld a, a
    nop
    ld bc, $070f
    ld [bc], a
    ld b, l
    ccf
    ld c, b
    add b
    add sp, $08
    ld c, l
    nop
    db $d3
    ld [$a045], sp
    inc bc
    and b

jr_065_6d56:
    ld [bc], a
    rlca
    rrca
    rst $38
    sbc b
    sbc b
    rrca
    ld [bc], a
    ld b, l
    ld b, e
    ld [hl], $35
    pop bc
    add hl, sp
    ld b, h
    add b
    ld [$004c], sp
    db $d3
    sub d
    ld b, $c3
    ld h, b
    ld [$8f98], sp
    sbc b
    sub a
    sbc b
    ld [$613f], sp
    add c
    ld h, b
    rst $00
    jr nz, jr_065_6d1a

    ld h, b
    ld [$008a], sp
    db $d3
    inc h
    pop bc
    sub d
    ld bc, $2011
    ld [bc], a
    rrca
    pop bc
    ldh [rNR22], a
    sbc c
    ld [$be40], sp
    ld h, d
    ld [hl], $86
    ld h, b
    ld [$004b], sp
    rst $10
    inc l
    adc [hl]
    ld bc, $e181
    nop
    ld bc, $e280
    scf
    jp nz, Jump_000_3f40

    ld h, b
    pop hl
    xor a
    push bc
    ld [bc], a
    nop
    rst $18
    add [hl]
    ld b, l
    add c
    ldh [$98], a
    sub a
    sub a
    ld l, [hl]
    nop
    ldh [rDMA], a
    ld b, h
    inc a
    cp a
    ld b, e
    ld b, [hl]
    sbc [hl]
    nop
    rst $18
    db $f4
    nop
    jp $e302


    sub a
    pop bc
    ldh [rSB], a
    nop
    ld [$8646], sp
    ld a, $e3
    ld b, d
    xor a
    ld [$004b], sp
    rst $10
    jr jr_065_6d56

    ret nz

    db $e3
    sub [hl]
    ld hl, $8096
    pop hl
    dec a
    ld b, b
    add d
    jr nz, jr_065_6e20

    ld h, c
    and c
    nop
    rst $18
    sbc [hl]
    ld h, h
    inc c
    ld b, d
    pop bc
    pop bc
    ret nz

    sub a
    sbc b
    add b
    pop bc
    ld a, l
    ld b, d
    add hl, sp
    add h
    nop
    rst $18
    inc a
    add [hl]
    ld h, $41
    ret nz

    sbc b
    sbc c
    rrca
    ld [bc], a
    ld [bc], a
    ld [c], a
    rst $38
    jr nz, @-$2e

    inc sp
    ld b, b
    nop
    ld [c], a
    nop
    rst $18
    ld a, [de]
    ld h, c
    sbc [hl]
    add h
    and b
    ld bc, $8000
    add h
    and c
    add c
    db $e3
    ei
    ld h, b
    nop
    db $e4
    nop
    db $db
    add d
    and h
    ld b, h

jr_065_6e20:
    ld h, b
    ld [$9801], sp
    ld b, [hl]
    and b
    ld a, a
    ld h, c
    pop bc
    db $e4
    ccf
    ld b, b
    ld [$0022], sp
    jp c, $8604

    scf
    sbc [hl]
    inc c
    ld c, $46
    ret nz

    ld b, l
    ccf
    inc bc
    db $e3
    ld bc, $0843
    nop
    rst $18
    inc b
    add a
    ret nz

    ldh [$08], a
    add e
    push hl
    ld [bc], a
    ld [c], a
    add c
    pop hl
    nop
    and d
    db $fc
    nop
    reti


    add [hl]
    ld h, l
    sbc a
    and d
    sbc h
    ld b, [hl]
    ld [$c008], sp
    add d
    inc hl
    add d
    call nz, $827f

Jump_065_6e60:
    nop
    db $dd
    inc b
    add h
    ld b, h
    add d
    ld [$8008], sp
    inc bc
    inc h
    ld [bc], a
    jp $004a


    ld [$0023], sp
    db $db
    add d
    and l
    dec b
    add b
    ld [$46c0], sp
    call nz, $c602
    inc b
    ld c, a
    nop
    ld c, a
    add d
    and e
    adc d
    ld h, d
    ld [bc], a
    ld b, d
    ld h, b
    ld b, c
    and $00
    ld [c], a
    add d
    ret nz

    nop
    rst $18
    inc b
    add e
    dec c
    dec c
    ld c, l
    ld h, c
    ldh [rLCDC], a
    rst $20
    ld a, h
    ld hl, $21bb
    nop
    rst $18
    add d
    and d
    sbc [hl]
    dec bc
    dec bc
    add d
    ld d, c
    nop
    xor [hl]
    add d
    inc bc
    add e
    and l
    ccf
    ld h, c
    nop
    rst $18
    inc b
    ld h, [hl]
    xor [hl]
    nop
    sub b
    and b
    ret nz

    db $e4
    add c
    ld bc, $6081
    ld a, [hl-]
    ld [hl+], a
    nop
    rst $18

Jump_065_6ec0:
    sbc d
    ld bc, $80c1
    nop
    rrca
    ld h, b
    add b
    db $e4
    ret nz

    inc hl
    ld a, a
    ldh [rP1], a
    rst $18
    add d
    and [hl]
    ld b, b
    ret nz

    rrca
    ld h, b
    ret z

    ret nz

    ld [c], a
    add c
    inc hl
    ld a, a
    pop hl
    and c
    nop
    rst $18
    nop
    rst $00
    ld b, l
    ld b, c
    add hl, bc
    ld b, l
    ret nz

    and d
    ld b, d
    ld [hl+], a
    xor [hl]
    ld bc, $00e0
    push hl
    nop
    rst $18
    add h
    ld b, c
    rst $38
    ld b, l
    ld [hl], $a6
    ld [hl], $45
    ld b, l
    scf
    dec a
    add c
    scf
    ld c, c
    ld h, b
    inc sp
    ldh [$82], a
    ld b, b
    nop
    ld e, a
    nop
    push bc
    push bc
    jr nz, @+$47

    rrca
    ld [hl], $62
    and a
    ld h, [hl]
    rst $00
    inc bc
    rst $30
    pop bc
    jp Jump_000_0084


    ld e, a
    ld a, [hl-]
    nop
    jp nz, $c19e

    pop hl
    ld h, a
    and e
    ld l, b
    cp a
    ld [c], a
    ld a, b
    pop bc
    ld [c], a
    add d
    nop
    sbc l
    add d
    ld [c], a
    nop
    rst $18
    add d
    ld h, c
    sbc [hl]
    ld b, [hl]
    ld b, d
    rra
    xor b
    xor c
    ld l, h
    dec [hl]
    dec [hl]
    cp a
    ld [c], a
    jp nz, Jump_065_6ae4

    pop bc
    db $f4
    nop
    and e
    nop
    rst $18
    and c
    jp z, Jump_065_6e60

    ld l, a
    ld l, h
    dec [hl]
    rlca
    and e
    xor d
    xor e
    add e
    jp Jump_000_00c5


    ld l, [hl]
    ld bc, $a400
    nop
    sbc [hl]
    ld e, h
    pop bc
    jp nz, $e0bf

    ld l, h

jr_065_6f5d:
    ld l, a
    ld l, [hl]
    ld b, e
    jp nz, $829c

    ldh [$c0], a
    inc b
    and c
    add d
    inc hl
    nop
    rst $18
    ld b, c
    jp nz, $e07e

    pop bc
    ld [c], a
    sbc h
    sbc l
    jr nc, jr_065_6f7a

    ldh [$82], a
    add sp, $00
    rst $18

jr_065_6f7a:
    nop
    call nz, $6e36
    add d
    ld [c], a
    ld b, h
    ldh [$4c], a
    ld [$0483], sp
    inc hl
    and b
    and b
    nop
    rst $18
    rst $38
    add b
    sbc l
    dec a
    pop bc
    ret nz

    add [hl]
    and c
    ld a, [bc]
    pop bc
    ld [$0485], sp
    rst $08
    nop
    sub h
    jr jr_065_6f5d

    sbc a
    sbc l
    ld [bc], a
    rst $38
    db $e3
    sbc a
    adc d
    add $fc
    db $e3
    jp nc, Jump_000_000d

    sub d
    db $fc
    ld b, d
    cp $e5
    nop
    add d
    jp hl


    inc b
    ld c, l
    nop
    sub e
    ld a, [hl]
    ld hl, $c310
    inc c
    rst $00
    ld a, [hl]
    push hl
    jp nc, Jump_000_030d

    rst $20
    add sp, $00
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
    inc l
    dec b
    ld [bc], a
    ld bc, $052e
    ld [bc], a
    ld [bc], a
    add hl, hl
    ld b, $02
    inc bc
    ld [hl+], a
    ld [$0402], sp
    inc hl
    ld [$0502], sp
    ld sp, $020c
    ld b, $1d
    dec c
    ld [bc], a
    rlca
    ld hl, $020d
    ld [$0d28], sp
    ld [bc], a
    add hl, bc
    add hl, hl
    dec c
    ld [bc], a
    ld a, [bc]
    daa
    ld c, $02
    dec bc
    ld a, [hl+]
    ld c, $02
    inc c
    ld l, $0e
    ld [bc], a
    dec c
    inc e
    rrca
    ld [bc], a
    ld c, $24
    rrca
    ld [bc], a
    rrca
    jr z, @+$11

    ld [bc], a
    db $10
    add hl, hl
    rrca
    ld [bc], a
    ld de, $0f2b
    ld [bc], a
    ld [de], a
    ld [hl+], a
    ld de, $1302
    ld h, $1d
    ld [bc], a
    inc d
    daa
    ld e, $02
    dec d
    jr z, jr_065_7059

    ld [bc], a
    ld d, $29
    ld [hl+], a
    ld [bc], a
    rla
    add hl, hl

Jump_065_7040:
    ld h, $02
    jr jr_065_706b

    dec hl
    ld [bc], a
    add hl, de
    add hl, de
    jr nc, @+$04

    ld a, [de]
    ld h, $30
    ld [bc], a
    dec de
    rla
    ld sp, $1c02
    jr @+$34

    ld [bc], a
    dec e
    daa
    ld [hl-], a

jr_065_7059:
    ld [bc], a
    ld e, $24
    inc [hl]
    ld [bc], a
    rra
    dec h
    inc [hl]
    ld [bc], a
    jr nz, @+$22

    dec [hl]
    ld [bc], a
    ld hl, $3621
    ld [bc], a
    ld [hl+], a

jr_065_706b:
    rra
    scf
    rst $38
    rst $38
    rst $38
    ld a, b
    ld [hl], b
    and l
    ld [hl], l
    ld [hl+], a
    ld a, h
    ld b, h
    ld a, h
    rra
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    add sp, -$10
    jp hl


    db $e4
    ldh [$e6], a
    push hl
    ldh [$0d], a
    dec c
    ldh [$f5], a
    ret z

    pop hl
    ld l, [hl]
    ld l, $6e
    ret c

    cp [hl]
    ldh [$bd], a
    ldh [$d9], a
    ld [c], a
    ld l, $0e
    ldh a, [$e9]
    ld l, $2e
    ld h, b
    and l
    db $e4
    cp l
    pop hl
    ldh [$f0], a
    sub d
    pop hl
    pop bc
    ldh [$4e], a
    ld c, [hl]
    ret nz

    rst $20
    pop bc
    ld l, $f0
    jp hl


    ret nz

    ldh a, [$e0]
    ld [$e2d0], a
    sbc e
    ldh [$0e], a
    ld c, $03
    ld c, [hl]
    ld c, $f0
    di
    ld h, $e4
    ret nz

    jp hl


    ret nc

    ld a, [c]
    ccf
    ld [c], a
    ld hl, sp-$40
    cp $f0
    db $ed
    dec c
    ld l, l
    dec c
    ld c, l
    ld l, l
    ld l, l
    dec l
    nop
    dec sp
    db $e3
    ldh [$f0], a
    ret nz

    jp hl


    cp b
    pop bc
    ldh a, [$ec]
    pop bc
    ldh [rIE], a
    pop hl
    cp l
    db $e3
    ldh [$e0], a
    ldh a, [$80]
    ld [$c096], a
    ldh a, [$ed]
    jp nz, Jump_000_0be0

    dec bc
    dec hl
    ret nz

    cp l
    ld [c], a
    ld a, h
    pop hl
    ldh [$ee], a
    ret nz

    xor $ef
    jp nz, $e7b0

    ld l, l
    dec c
    rst $38
    ld l, e
    ld l, e
    dec bc
    ld c, e
    ld a, [bc]
    ld c, d
    dec bc
    dec c
    pop bc
    dec c
    ret nz

    db $e3
    ldh [$ec], a
    ret nc

    db $ec
    xor a
    call nz, $e980
    dec hl
    dec hl
    ccf
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec c
    dec bc
    ret nz

    ld [c], a
    ldh [$ed], a
    add h
    pop de
    and c
    adc $a3
    ld l, l
    db $d3
    and l
    cp [hl]
    and h
    ldh a, [$e0]
    jp Jump_000_0ac2


    rrca
    ld c, d
    ld c, e
    ld l, e
    ld l, e
    ret nz

    ld [c], a
    ccf
    db $e3
    call c, $d0a3
    jp hl


    add h
    pop hl
    pop bc
    cp $e0
    dec c
    ld hl, sp-$5f
    cp c
    and e
    ldh a, [$e3]
    add h
    jp nz, Jump_065_7b0d

    ld c, d
    ld a, [bc]
    add b
    ldh [rOCPD], a
    dec c
    dec bc
    dec l
    db $fd
    ldh [rP1], a
    ld [hl], l
    and e
    ret nc

    db $ed
    sbc e
    and e
    ret nz

    ldh [$f9], a
    and h
    ldh a, [$e5]
    add h
    jp nz, $e008

    inc b
    nop
    ldh [$f8], a
    pop hl
    dec l
    dec sp
    jp nz, $a135

    ret nc

    db $ed
    ld b, c
    and b
    sub a
    pop bc
    add b
    ld d, h
    and b
    push af
    add e
    ldh a, [$e4]
    pop bc
    db $e4
    ret nz

    ld [c], a
    add c
    pop hl
    ld a, [hl]
    call nz, Call_000_300e
    ret nc

    db $ed
    add a
    pop hl
    dec e
    pop bc
    ldh a, [$ec]
    dec c
    ld l, l
    adc h
    ret nz

    jp z, $cec0

    nop
    jp nz, $2d0d

    dec l
    rst $30
    and b
    dec a
    pop bc
    ld c, $0e
    nop
    ret nc

    db $ed
    adc a
    add c
    add [hl]
    and c
    push af
    add c
    ld [hl], l
    add b
    res 0, b
    ldh a, [$e2]
    ld [$02c0], sp
    rst $00
    ld [c], a
    dec bc
    cp [hl]
    and e
    cp d
    db $e3
    db $dd
    and e
    ret nc

    ldh a, [$5d]
    add e
    ld d, c
    add c
    adc h
    ldh a, [$e5]
    add c
    ldh [$0b], a
    dec bc
    jp $bce9


    and l
    ret nc

    db $ed
    ld l, l
    nop
    rst $38
    add sp, -$4c
    add c
    ldh a, [$e3]
    push bc
    pop bc
    pop bc
    db $ed
    cp h
    and c
    db $f4
    ld h, c
    ret nc

    db $eb
    ld a, b
    adc $e2
    jp nc, $c3c0

    pop hl
    ld l, $4e
    ld c, $4e
    cp [hl]
    pop hl
    ret nz

    call z, $c262
    xor $c0
    add sp, -$30
    add sp, -$3c
    and b
    ret nz

    push hl
    ld l, [hl]
    ld l, [hl]
    jr nz, @-$3f

    ldh [$f0], a
    pop hl
    ld b, $a3
    rlca
    add sp, -$04
    call nz, $c06d
    db $eb
    ret nc

    and $26
    add b
    pop hl
    ld l, $6e
    ld [hl], $85
    add b
    pop hl

jr_065_721a:
    ld c, l
    add a
    call nz, $c17b
    db $10
    inc bc
    and c
    pop bc
    db $e4
    jr nz, jr_065_7289

    ret nc

    db $ed
    dec c
    dec bc
    pop hl
    or $67
    ldh a, [$e2]
    ld c, b
    cp a
    push hl
    ret nz

    db $e3
    jr c, @-$3d

    dec l
    inc l
    and d
    inc l
    ld h, b
    ld c, [hl]
    call z, $d8c2
    ret nc

    add sp, $3d
    ld [c], a
    ldh a, [$ed]
    ld c, l
    dec l
    inc b
    jp nz, Jump_000_2b0b

    add c
    ld c, e
    db $76
    ret nz

    ret nz

    add c
    nop
    and h
    add b
    pop hl
    adc a
    pop hl
    sub b
    add sp, $2d
    ld l, b
    or b
    db $ec
    ldh a, [$e0]
    rst $08
    ld b, e
    dec bc
    add c
    add c
    ld l, e
    dec hl
    ld a, a
    ld [c], a
    ld [$61ff], sp
    cp e
    and c
    xor h
    ld b, b
    dec l
    call z, Call_065_46c1
    ld h, [hl]
    ld h, c
    ld h, b
    ld [hl], b
    ld [$f024], a
    ld [c], a
    ret nz

    and $6b
    rst $38
    jp nz, $8200

jr_065_7282:
    dec l
    ret nz

    and $d0
    db $ec
    ld l, b
    inc b

jr_065_7289:
    push bc
    ldh a, [$e8]
    add b
    push hl
    dec c
    add e
    ld h, b
    dec bc
    dec hl
    cp a
    ld h, c
    add b
    cp $63
    jr jr_065_721a

    ret nc

    db $ec
    ret z

    and e
    cp [hl]
    call nz, $e5b3
    cp l
    and d
    ld l, l
    inc e
    ret nz

    add d
    ld a, d
    and b
    dec bc
    ld c, d
    ld c, d
    cp [hl]
    ld h, l
    ret nz

    db $e3
    ret nc

    db $eb
    nop
    dec c
    ld b, b
    rst $00
    and b
    adc a
    add b
    ld e, h
    add b
    rst $10
    add b
    ld [hl], d
    jr nz, jr_065_7282

    db $e4
    ld b, b
    add c
    call $c06b
    pop hl
    dec bc
    ld a, [bc]
    inc a
    add b
    ld b, c
    ldh [$2d], a
    dec l
    ld bc, $720e
    ld b, b
    ret nc

    db $ec
    rlca
    call nz, $a27d
    inc bc
    call nz, $c12e
    inc bc
    jp nz, $bf00

    ret nz

    ld a, [$3b80]
    ldh [$fc], a
    jp $c1fd


    ret nc

    xor $3b
    and e
    inc a
    add b
    add $b5
    ldh [$2e], a
    ld c, [hl]
    pop af
    add d
    ld b, l
    ld b, d
    ld bc, $0bc6
    dec c
    nop
    cp $60
    cp h
    jp nz, Jump_065_407a

    ret nc

    rst $28
    ret nz

    db $e4
    ld b, h
    pop hl
    or h
    nop
    rla
    add c
    db $ec
    inc bc
    ld h, c
    ld b, $42
    dec hl
    dec bc
    ld b, d
    ld h, c
    ld c, e
    ld l, e
    dec hl
    and e
    ld a, [bc]
    ld a, [bc]
    ret nz

    db $e3
    rst $30
    ld h, c
    ret nc

    db $ec
    dec l
    cp e
    add [hl]
    ld c, $c0
    push af
    ldh [$64], a
    and e
    adc b
    ld [hl+], a
    ld b, h
    db $e3
    jp nz, $c240

    ldh [$2a], a
    ld c, e
    inc b
    ld a, [hl]
    ld h, c
    or a
    ld h, c
    ld l, l
    ret nc

    db $ed
    ld c, d
    pop hl
    ld c, e
    add d
    add b
    pop hl

jr_065_7345:
    ret nz

    rst $20
    inc e
    adc b
    ld hl, $e283
    ld a, [bc]
    ld a, [bc]
    ld c, e
    pop bc
    ldh [$f2], a
    ld h, b
    ld [hl], l
    ld [hl+], a
    add b
    ld sp, hl
    ld b, b
    ret nc

    db $ec
    jr nc, jr_065_7365

    inc b
    ld [c], a
    rst $00
    inc h
    add [hl]
    jr nz, @+$48

    and d
    ld c, d

jr_065_7365:
    inc bc
    ld a, [bc]
    ld c, e
    ld a, a
    and b
    ld b, c
    db $e4
    ld a, [hl]
    add b
    ret nc

    jp hl


    sbc a
    ld bc, $0930
    ld c, b
    ld [c], a
    and c
    adc c
    ld [hl+], a
    dec b
    pop bc
    dec bc
    push bc
    jr nz, jr_065_7345

    ret nz

    ld l, e
    jp Jump_000_04c2


    ld b, c
    db $e3
    ld d, e
    ret nz

    ld c, $d0
    jp hl


    dec bc
    ld h, d
    jr nc, @+$0a

    inc b
    ret nz

    inc b
    db $e3
    nop
    ld b, d
    db $e4
    call nz, $bba1
    ld b, e
    cp a
    ld b, d
    sbc e
    ld hl, $60da
    ret nc

    rst $20
    jr nc, jr_065_73b1

    nop
    add b
    ld [c], a
    pop bc
    ld [$e145], a
    xor e
    and b
    or $41
    ld b, b
    add d

jr_065_73b1:
    ret nc

    db $eb
    jr nc, jr_065_73c2

    inc b
    inc b

jr_065_73b7:
    jp nz, $63c9

    dec bc
    add a
    and c
    inc b
    jr nz, @+$45

    ld b, l
    add h

jr_065_73c2:
    ld h, c
    ld d, b
    inc c
    jr nz, jr_065_73b7

    db $ed
    or [hl]
    ld h, c
    ld e, l
    ld h, d
    jp $c842


    nop
    dec hl
    rst $38
    ldh [rSB], a
    and c
    ret nz

    ld l, a
    pop hl
    inc b
    ld b, d
    ret nc

    db $ed
    ret nz

    db $eb
    jr nz, @-$7c

    add b
    push hl
    dec c
    ld c, e
    nop
    pop bc
    pop hl
    ld b, b
    ldh [rP1], a
    ld b, h
    add d
    inc hl
    ret nc

    db $ec
    ldh a, [$ed]
    add h
    and e
    adc h
    jr nz, jr_065_73f6

jr_065_73f6:
    inc b
    add c
    add b
    pop bc
    nop
    pop hl
    inc bc
    ld c, b
    ld [bc], a
    ld [hl+], a
    ret nz

    ld [$0e30], a
    add hl, hl
    ld bc, $bf40
    pop hl
    adc c
    ld h, b
    push bc
    add c
    ld b, e
    ld h, b
    add d
    add hl, hl
    ret nc

    rst $28
    ld l, $30
    dec c
    inc b
    inc l
    ld [bc], a
    ld d, c
    nop
    ld l, e
    ret


    and b
    inc b
    and b
    ret nz

    db $ed
    ld a, a
    inc hl
    ret nc

    add sp, -$18
    jr nc, @+$0f

    inc h
    ld bc, $418a
    ld l, e
    ld [$0b60], sp
    ld c, e
    ld c, e
    nop
    ld bc, $4127
    pop bc
    ld h, $02
    ret nc

    db $eb
    jr nc, @+$10

    and a
    and c
    add c
    ld hl, $c27e
    nop
    add c
    pop af
    ret nc

    db $ec
    jr nc, jr_065_7457

    call nz, Call_000_0082
    ld hl, $e280
    ld bc, $02e7
    ld b, e
    ret nz

    rrca

jr_065_7457:
    and c
    ret nc

    db $eb
    jr nc, @+$0f

    and [hl]
    ld bc, $2150
    ld [$4b80], sp
    ld l, e
    nop
    ld b, c
    and $c3
    jr nz, jr_065_73f6

    inc bc
    ret nc

jr_065_746c:
    xor $30
    ld c, $6c
    ld bc, $6343
    ld b, l
    ld h, c
    nop
    inc b
    rst $20
    ld c, h
    inc bc
    cp a
    ld [hl+], a
    ret nc

    ld [$0c30], a
    ld b, e
    add l
    add [hl]
    ld b, e
    ld b, c
    and d
    nop
    ld b, b
    and c
    ret nz

    db $eb
    ret nc

    add sp, $4e
    ld c, b
    ccf
    ld b, h
    rst $00
    inc b
    add d
    add e
    ld b, a
    and c
    add b
    rst $18
    db $ed
    rst $08
    ld [$e4cd], a
    ld sp, $fd05
    jr nz, jr_065_746c

    ld b, l
    ld b, $41
    dec l
    nop
    ret nz

    db $e3
    ld d, b
    inc bc
    rst $18
    push hl
    ldh a, [$ea]
    ld b, b
    ld b, $31
    ld b, $c1
    jp $e5ff


    add b
    adc l
    ld b, c
    ret nz

    db $e4
    rst $18
    push hl
    ldh a, [$f1]
    ld sp, $4408
    ld [bc], a
    ret nz

    and $0b
    db $10
    ret nz

    db $e4
    rst $18
    jp hl


    ldh a, [$ec]
    ld [hl], c
    inc c
    ld l, l
    ld [hl], c
    and b
    adc $60
    dec a
    push hl
    nop
    ld [hl-], a
    ret nz

    ld [hl+], a
    inc h
    ret nc

    jp hl


    ld b, b
    add hl, bc
    ld [hl], c
    ld a, [bc]
    ld a, [hl]
    ld [hl+], a
    inc a
    ldh [$85], a
    inc hl
    ld b, $7e
    ld h, c
    ld c, l
    dec l
    ret nc

    ldh a, [$c0]
    jp hl


    ld e, $e1
    and c
    jp hl


    db $fc
    and b
    nop
    cp a
    pop hl
    rst $38
    ld b, h
    ld a, $e3
    ret nc

    db $ed
    ld b, b
    add hl, bc
    ret nz

    ld [$c393], a
    ld a, [hl]
    ld b, c
    nop
    dec a
    ld [c], a
    cp c
    pop hl
    ret nc

    pop af
    ret nz

    jp hl


    or c
    db $ec
    ret nz

    rst $20
    cp l
    ld b, h
    ret nc

    pop af
    nop
    ret nz

    and $e8
    and e
    cp b
    inc b
    ret c

    and [hl]
    push af
    ld b, b
    cp [hl]
    ld b, d
    cp l
    ld h, d
    db $ec
    ld [bc], a
    add b
    jp nz, $4ea9

    inc hl

jr_065_7530:
    or d
    and l
    jr nc, @+$05

    ld a, $21
    jr nc, jr_065_753a

    ldh a, [$e4]

jr_065_753a:
    ld c, l
    ld bc, $bf2d
    add b
    cp $e0
    ret nz

    jr nz, jr_065_7530

    ld [bc], a
    cp l
    and b
    ldh [$ea], a
    ldh a, [$e6]
    sub b
    daa
    call nz, $a260
    db $76
    jp nz, $c317

    dec l
    ld a, l
    ret nz

    cp a
    inc hl
    ld l, l
    add b
    xor b
    ld b, d
    ld a, l
    and d
    ldh [$e8], a
    ldh a, [$e7]
    ld b, b
    inc b
    rst $38
    add d
    jr nc, jr_065_7570

    dec l
    nop
    cp a
    ldh [rIE], a
    ld [c], a
    rlca

jr_065_7570:
    add h
    ld b, d
    ld [hl+], a
    ldh [$e8], a
    ldh a, [$ed]
    jr nc, jr_065_757e

    ldh a, [$e9]
    nop
    xor h
    ld [bc], a

jr_065_757e:
    ret c

    ld [hl+], a
    and h
    nop
    ldh [$f0], a
    sbc c
    ld [c], a
    jr nc, jr_065_7595

    ldh a, [$e8]
    ld [hl], e
    ld b, d
    nop
    ret z

    ld [hl+], a
    ld h, h
    ld bc, $efe0
    ret nc

    ld [c], a

jr_065_7595:
    jr nc, jr_065_75a3

    ldh a, [$e9]
    ret nz

    db $e3
    ld h, $04
    nop
    ldh [$f0], a
    ld sp, $0081

jr_065_75a3:
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
    jp hl


    rst $10
    sbc e
    call nc, $e5d7
    ldh [$e8], a
    jp hl


    ldh [$f5], a
    ret z

    pop hl
    jp nc, $d637

    call nc, $bdd6
    ld [c], a
    sbc $df
    jp nz, $f0e2

    jp hl


    add a
    jp c, $dad9

    and l
    db $e3
    db $e4
    pop hl
    ldh [$f0], a
    sub d
    pop hl
    sub $ff
    jp nc, $d2d0

    call nc, $d3d6
    and b
    and b
    db $db
    ldh [$e1], a
    ld a, c
    ldh [$d3], a
    ret nc

    ldh a, [$e9]
    call c, Call_065_61db
    call c, $e365
    db $e4
    pop hl
    ldh [$f0], a
    ret nc

    pop hl
    rst $10
    call nc, $e0bf
    ccf
    rst $10
    jp nc, $a0d8

    ld [c], a
    db $e3
    ldh a, [$f0]
    ld h, $e4
    cp h
    db $e4
    pop hl
    ldh [$f2], a
    db $d3
    ret nc

    db $dd
    reti


    ld a, [de]
    ldh [$dd], a
    xor l
    ret nc

    ld a, a
    ldh [$a0], a
    db $eb
    ld c, $e0
    jp nc, $ebf0

    sbc a
    ccf
    sbc l
    and d
    sbc l
    sbc l
    sbc l
    sbc a
    rst $18
    jp $f0e0


    or a
    rst $10
    jp nc, $bed0

    ldh [$dd], a
    pop de
    ret nz

    pop hl
    db $ec
    rst $18
    db $ed
    and b
    and b
    jp c, $f0d3

    ld [$9c9f], a
    ccf
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    sbc h
    cp l
    ld [c], a
    ldh [$f0], a
    jp nz, $e0d0

    call nc, $e040
    cp $c0
    sub a
    pop bc
    ld a, c
    ret nz

    call c, $fed7
    ldh a, [$ea]
    sbc [hl]
    ld a, c
    ld a, [hl]
    ld a, [hl+]
    jr nz, jr_065_7686

    adc [hl]
    ret nc

    cp l
    pop hl
    ld a, h
    db $e3
    ldh [$ec], a
    ret nc

    ldh [$d9], a
    ld b, b
    ldh [$d4], a
    rst $10
    ld hl, sp-$69
    push bc
    adc l
    ret nz

    ldh a, [$e8]
    sbc a
    sbc h
    add b
    ld b, l
    ld l, $ff
    jr nz, jr_065_76a8

    ld c, d
    ld d, [hl]
    ld b, l
    ld a, a
    ld a, l
    sbc [hl]
    inc l
    ldh [$f0], a
    ret nc

    pop hl
    db $db

jr_065_7686:
    db $db
    call $dae0
    sub a
    push bc
    adc l
    ret nz

    sbc $f0
    add sp, -$62
    ld a, c
    adc l
    ld b, e
    ret nz

    ldh [rVBK], a
    ld e, b
    rlca
    xor [hl]
    ld b, [hl]
    add c
    ret nz

    db $e4
    ldh [$ea], a
    ld c, a
    pop hl
    call Call_065_59e2
    pop bc
    pop af

jr_065_76a8:
    ret c

    cp b
    and l
    ldh a, [$e4]
    add c
    ld [c], a
    ld c, d
    ld d, [hl]
    ld a, [hl+]
    ld h, $3f
    ld a, [hl+]
    ld c, a
    ld d, [hl]
    xor a
    ld b, [hl]
    add c
    ccf
    ld [c], a
    call c, $9ca2
    ret nc

    db $ed
    add d
    and c
    db $e4
    push hl
    ret c

    ld hl, sp-$60
    db $76
    and a
    db $e4
    db $fd
    push hl
    ld b, d
    pop hl
    ld a, c
    adc l
    ld c, d
    ld d, [hl]
    add hl, sp
    dec [hl]

Call_065_76d5:
    ld a, a
    add hl, sp
    ld b, l
    xor [hl]
    ld b, [hl]
    add e
    add h
    ld b, [hl]
    ccf
    pop hl
    ret c

    call c, $d0a2
    db $ec
    adc b
    ld [c], a
    and $e7
    db $76
    ret nz

    pop de
    ret nc

    ld a, b
    ld sp, hl
    and b
    ldh a, [$e5]
    add h
    pop bc
    ld a, [hl]
    ld b, [hl]
    xor [hl]
    xor [hl]
    ret nz

    ldh [$7f], a
    xor [hl]
    xor a
    ld b, [hl]
    adc d
    add l
    sub c
    and c
    ld hl, sp-$5c
    ld a, [hl-]
    ret nc

    db $ed
    db $d3
    inc b
    pop bc
    add sp, -$17
    jp c, $a3b7

    ldh a, [$e6]
    ld a, [hl]
    pop bc
    db $e3
    xor a
    xor a
    ld b, l
    ccf
    ld b, l
    xor a
    add c
    pop hl
    res 2, b
    or [hl]
    ld a, [$eba2]
    ret nc

    xor $db
    add e
    and b
    call c, $daf1
    or a
    and c
    db $10
    and b
    res 0, e
    sbc a
    sbc h
    ld b, [hl]
    add d
    rst $18
    add e
    ld b, [hl]
    xor a
    add e
    adc c
    rst $38
    pop hl
    adc b
    add a
    add a
    add l
    sub c
    sub b
    cp a
    ld [c], a
    call c, $d0a0
    db $ed
    db $db
    add c
    ld [$86f0], a
    jp nz, $80d1

    db $10
    and b
    ldh a, [$e3]
    and c
    ld b, [hl]
    ld b, [hl]
    add l
    sbc a
    add a
    adc b
    adc b
    add a
    ld b, [hl]
    rst $00
    ldh [$fe], a
    ld [c], a
    jp $9083


    sub b
    dec a
    jp $edd0


    db $db
    add [hl]
    pop de
    add h
    res 0, d
    sbc a
    sbc a
    or [hl]
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    jp $c8e1


    ldh [$c3], a
    adc [hl]
    call nz, $90e0
    call nz, Call_000_3ec3
    db $e4
    ret nc

    db $ed
    inc b
    sub d
    sbc [hl]
    ld [hl], a
    sub b
    ld b, [hl]
    xor a
    pop bc
    pop hl
    jp $c490


    push bc
    ldh [rP1], a
    db $fc

jr_065_7795:
    ldh [$bf], a
    ldh [$7f], a
    pop hl
    ld l, b
    pop bc
    call nc, $c26b
    ld h, d
    inc b
    add c
    or a
    ld h, b
    inc e
    push af
    ld h, b
    inc a
    call nz, $909e
    sub c
    ld b, [hl]
    ld [c], a
    add $e2
    ld b, d
    db $e3
    add d
    jr c, jr_065_7795

    sbc [hl]
    ld l, b
    pop bc
    ldh a, [$65]
    ret nc

    db $e4
    add [hl]
    add d
    inc b
    add c
    db $d3
    ld b, l
    sub $36
    add c
    sub $76
    add d
    add b
    ldh [$0c], a
    db $e3
    sub c
    ret nz

    add d
    ld b, c
    sub c
    cp b
    db $e3
    ld a, [hl]
    ret nz

    ld [hl], h
    ld h, h
    ret nc

    db $ed
    inc b
    add b
    ret c

    ei
    ld h, b
    ld l, h
    cp b
    add c
    ret nz

    db $e3
    sbc a
    or [hl]
    ld c, l
    db $e3
    ld b, [hl]
    add b
    ld sp, hl
    ret nz

    ld bc, $bf7f
    ldh [$c1], a
    db $e3
    ld e, c
    and l
    ret nc

    add sp, $0d
    pop bc
    rlca
    add b
    or $61
    and $11
    ld h, b
    reti


    db $dd
    ldh a, [$e4]
    cp a
    db $e3
    sub c
    ld a, c
    ld a, [hl]
    adc d
    ld sp, hl
    ret nz

    xor [hl]
    cp a
    pop hl
    or [hl]
    ld a, [$d164]
    and d
    ret nc

    add sp, -$2d
    ld l, c
    jp c, $8207

    ld b, [hl]
    ld h, b
    pop de
    rst $30
    ld h, b
    ret nc

    ret nc

    ldh a, [$e5]
    rst $10
    sbc a
    sbc l
    or [hl]
    pop bc
    pop hl
    ld b, [hl]
    ret nz

    and d
    add c
    ld b, [hl]
    ld b, c
    sub b
    add c
    and c
    call c, $ac41
    ld b, d
    sub [hl]
    ld h, b
    ret nc

    push hl
    rst $10
    dec e
    ld h, h
    call nz, Call_065_6138
    or $40
    call nc, $e3f0
    or e
    ld b, c
    ld a, h
    ret nz

    add b
    ld b, [hl]
    rra
    ld b, l
    ld [hl], $35
    ld [hl], $45
    ld a, a
    pop hl
    add c
    and d
    call c, VBlankInterrupt
    xor h
    ld b, c
    sub [hl]
    ld h, c
    ret nc

    push hl
    rlca
    add a
    ld hl, sp+$62
    adc [hl]
    ld b, h
    or e
    ld b, c
    ret nz

    ld [c], a
    ccf
    ld b, h
    xor h
    xor h
    dec [hl]
    add hl, sp
    xor a
    nop
    add b
    cp a
    ld [c], a
    add b
    call c, $ac40
    ld b, l
    ret nc

    push hl
    rlca
    add a
    ld hl, sp+$62
    adc [hl]
    ld b, h
    or e
    ld b, c
    and c
    db $fd
    sub b
    dec a
    and b
    ld b, d
    xor l
    xor l
    dec [hl]
    ld a, $4f
    inc bc
    ld d, [hl]
    ld b, l
    ld a, $e0
    cp [hl]
    ld h, h
    ret nc

    db $ec
    xor h
    add $08
    add a
    or c
    inc hl
    db $fc
    ld a, l
    ret nz

    dec a
    and c
    ld l, a
    ld l, h
    dec [hl]
    ld a, [hl-]
    ld c, d
    ld h, b
    ld bc, $c05c
    ld [$ebd0], a
    call z, Call_065_4720
    add b
    and [hl]
    and [hl]
    db $f4
    add c
    ld a, $c3
    rst $38
    sub c
    xor [hl]
    ld b, [hl]
    xor [hl]
    ld b, h
    ld l, [hl]
    ld [hl], h
    dec [hl]
    rlca
    dec [hl]
    add hl, sp
    ld e, e
    ccf
    ld [c], a
    ld a, b
    ld b, b
    rst $10
    add c
    ret nc

    db $ec
    rst $00
    ld h, b
    sub d
    rlca
    add b
    rst $10
    and [hl]
    and c
    xor l
    ld h, a
    db $eb
    cp [hl]
    and c
    dec a
    and b
    xor a
    ccf
    ld b, b
    ld h, d
    ld h, a
    dec [hl]
    xor h
    ld a, $f4
    add b
    ld a, l
    ret nz

    ld [$833d], sp
    ret nc

    db $ed
    ret


    and e
    jp c, Jump_000_211a

    inc h
    push bc
    dec [hl]
    ld b, c
    ld a, $a0
    ld a, [hl]
    ld b, h
    ld b, b
    ld a, e
    ld a, e
    ld a, b
    dec [hl]
    dec [hl]
    xor l
    cp a
    ret nz

    nop
    dec a
    pop bc
    cp [hl]
    add e
    ret nc

    db $ed
    rst $00
    ld h, b
    add c
    ld b, b
    ld d, a
    ld [hl+], a
    ret nc

    ld [bc], a
    ld hl, sp+$02
    db $fc
    ld a, a
    add b
    call nz, Call_065_45a0
    scf
    dec a
    jr c, @+$37

    jr c, jr_065_793d

    dec a
    scf
    ld b, e
    ld c, e
    ld e, h
    db $fd
    and c
    cp [hl]
    add d
    ret nc

    xor $44
    rst $00
    ld h, b
    add c
    ld b, e
    ld [$03d0], a
    ld hl, sp+$02
    jp $80c1


    inc b
    ret nz

    rst $38
    dec [hl]
    jr c, jr_065_7973

    ld d, b

jr_065_793d:
    ld b, h
    ld c, c
    ld c, h
    ld d, d
    add c
    ld b, l
    ld a, [hl]
    ld h, c
    or $60
    dec sp
    ld h, b
    ret nc

    db $ed
    rst $38
    ld l, l
    ld hl, sp+$02
    and c
    xor $c6
    add b
    adc l
    add hl, sp
    dec [hl]
    call nz, Call_065_47a0
    ld e, l
    ld b, h
    ld a, a
    ld d, e
    ld d, e
    ld b, l
    ld b, [hl]
    adc d
    ld b, [hl]
    sub c
    ld a, [$e061]
    ld a, [$cf21]
    ld l, e
    jr nc, jr_065_7979

    ld b, h
    call nz, $a145
    ld a, $35
    xor h

jr_065_7973:
    rra
    ld b, b
    xor [hl]
    ld c, e
    ld d, [hl]
    ld b, l

jr_065_7979:
    cp $80
    ld b, c
    db $e4
    db $fc
    ld b, b

Jump_065_797f:
    ldh [$d0], a
    db $ed
    jr nc, jr_065_798f

    ld [$0543], sp
    and b
    ld b, l
    and c
    ld a, [hl-]
    dec [hl]
    xor l
    cpl
    ld b, d

jr_065_798f:
    xor a
    ld b, l
    ld b, e
    ld [hl], a
    ld h, b
    xor a
    ld b, c
    ld [c], a
    cp l
    add b
    inc c
    inc d
    ret nz

    ret nc

    ld [$d5d8], a
    jr nc, jr_065_79ac

    inc b
    jp nz, $8144

    ld b, d
    ldh [$86], a
    ld [bc], a
    pop hl
    dec [hl]

jr_065_79ac:
    add hl, sp
    add hl, sp
    ld h, b
    cp e
    ld b, b
    cp a
    ld b, d
    ld a, a
    ld b, c
    db $d3
    sub c
    ret nc

    ret nc

    ld [$0e30], a
    dec b
    add e
    jp $c184


    pop bc
    pop hl
    dec [hl]
    dec e
    ld a, $39
    ld h, b
    add e
    add [hl]
    add l
    or $40
    ld b, b
    add e
    ret nc

    db $ed
    add sp, $3a
    add b
    jr nc, jr_065_79e0

    add l
    ld h, e
    call nz, $81c7
    inc a
    dec [hl]
    dec [hl]
    cpl
    ld l, h

jr_065_79e0:
    ld [hl], d
    ld [hl], c
    adc b
    ld a, h
    ld b, b
    add l
    push bc
    ret nz

    ld [bc], a
    ld b, c
    add [hl]
    ld c, d
    add b
    rst $10
    jp nc, $ebd0

    adc d
    jr nz, jr_065_7a24

    add hl, bc
    ld c, c
    add e
    jp Jump_065_473c


    add c
    add e
    ret nz

    ld l, h
    ld l, a
    ld l, [hl]
    ld a, $7b
    ld b, b
    dec a
    ld b, b
    add hl, de
    call nz, Call_065_4144
    ld c, d
    add c
    jp c, $d0d3

    ld [$e0f0], a
    jr nc, jr_065_7a1d

    inc e
    ld c, c
    add e
    ld c, c
    ld h, b
    add d
    add e
    ld a, $c1
    pop hl

jr_065_7a1d:
    ld b, b
    ldh [rP1], a
    ld b, h
    ld b, $82
    inc hl

jr_065_7a24:
    and b
    call c, Call_000_0023
    ret nc

    add sp, -$10
    ldh [$30], a
    ld a, [bc]
    inc b
    pop bc
    ld a, [hl]
    pop bc
    jp nz, $8785

    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    nop
    pop hl
    nop
    pop bc
    inc h
    cp a
    push hl
    ld b, e
    nop
    ret nc

    add sp, -$07
    ld h, b
    jr nc, jr_065_7a54

    add b
    push bc
    ld b, b
    pop hl
    add b
    add b
    jp nz, Jump_000_2682

    ccf
    ld h, d
    ld b, e

jr_065_7a54:
    ld bc, $ead0
    ld a, a
    ld [hl+], a
    jr nc, jr_065_7a67

    sbc a
    add hl, sp
    and d
    dec b
    add b
    ret nz

    pop bc
    dec [hl]
    inc a
    ld b, h
    add b
    db $e4

jr_065_7a67:
    dec b
    and e
    ret nz

    adc d
    and l
    ret nc

    db $ec
    jr nc, jr_065_7a7b

    sbc h
    ld hl, $2081
    jp nz, Jump_000_35a0

    dec [hl]
    inc bc
    ld a, [hl-]
    ld b, l

jr_065_7a7b:
    ld bc, $8125
    inc bc
    db $e4
    ld h, h
    ret nc

    ld [$0d30], a
    sbc h
    ld hl, $8102
    ld hl, $013e
    jp nz, $e501

    ld b, d
    ld h, a
    ret nc

    db $ed
    jr nc, jr_065_7aa2

    sbc h
    jr nz, jr_065_7a98

jr_065_7a98:
    jp nz, $ff21

    jp nz, $e501

    add b
    add $ff
    dec h

jr_065_7aa2:
    ret nc

    add sp, $30
    dec c
    ld b, d
    inc h
    dec b
    ld b, [hl]
    inc bc
    add b
    scf
    ld b, c
    push hl
    jp $e021


    add l
    ret nc

    db $ed
    jr nc, jr_065_7ac4

    ld bc, $7fea
    call nz, $0140
    ld b, d
    call nz, Call_065_4504

Jump_065_7ac1:
    ld b, a
    ld b, h
    ret nc

jr_065_7ac4:
    db $eb
    jr nc, jr_065_7ad5

    and $04
    ld [hl+], a
    ld b, [hl]
    xor [hl]
    ld b, b
    nop
    ret nz

    pop hl
    or [hl]
    sbc l
    sbc l
    nop
    ld b, [hl]

jr_065_7ad5:
    inc hl
    ldh [$85], a
    ret nc

    xor $31
    ld a, [bc]
    ld b, h
    ld [bc], a
    sub $60
    call nz, $8040
    db $e3
    nop
    add hl, bc
    jp $eadf


    rst $08
    ld [$62c2], a
    inc c
    ld h, b
    ld sp, $b304
    ld h, b
    ccf
    and c
    ld bc, $c290
    ld [c], a
    dec b
    and c
    ld a, [bc]
    ld b, d
    db $ec
    ld b, c
    rst $18
    rst $20
    ldh a, [$ea]
    add [hl]
    add d
    db $10
    inc c
    ld h, b
    ld sp, $4007
    db $e3
    rst $38

Jump_065_7b0d:
    push hl
    sbc h
    inc b
    push hl
    rst $18
    rst $20
    ldh a, [$ef]
    ld b, e
    ld [c], a
    db $e3
    ld sp, $3705
    add c
    push bc
    ld hl, $e6c0
    ld b, [hl]
    adc c
    ld hl, $ec80
    ld b, b
    rst $18
    jp hl


    ldh a, [$e9]
    dec c
    pop bc
    ld [hl], c
    ld [bc], a
    ld sp, $fe03
    and d
    sbc a
    add e
    and d
    sbc h
    inc c
    ld h, c
    ld a, a
    and $e7
    ld h, c
    rst $18
    jp hl


    ldh a, [$e9]
    db $d3
    ld [hl], b
    ld [hl], c
    inc bc
    ld sp, $f105
    ldh [$bf], a
    ld b, d
    sbc h
    ld b, [hl]
    xor a
    ld [bc], a
    ld b, b
    ld e, $ff
    ldh [$37], a
    ld b, l
    sbc h
    sbc a
    ld d, c
    nop
    rst $18
    jp hl


    ld b, c
    ld bc, $cf82
    and $d7
    ld [hl], e
    ld b, e
    ld sp, $f105
    ldh [$f6], a
    nop
    db $fc
    and b
    sbc h
    ld l, a
    ld b, [hl]
    add hl, sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    add hl, sp
    ld a, $e2
    add b
    rst $18
    jp hl


    rst $08
    ld [$8437], a
    ld sp, $8105

Call_065_7b80:
    ldh [$f6], a
    ld bc, $60b9
    ld b, [hl]
    rst $38
    ld a, $69
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld a, $00
    ret nz

    db $e3
    rst $18
    add sp, -$31
    ld [$24f4], a
    ld sp, $e505
    jr nz, jr_065_7bc3

    ld hl, $e3c0
    add b
    cp [hl]

Jump_065_7ba2:
    ld b, c
    ret nz

    push hl
    rst $18
    add sp, -$31
    ld [$0630], a
    ld sp, $f505
    ld h, h
    sbc [hl]
    cpl
    ld b, [hl]
    add hl, sp
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    pop hl
    db $ec
    ld [bc], a
    ret nz

    rst $18
    rst $20
    ld e, b
    inc bc
    rst $08
    push hl

jr_065_7bc3:
    jr nc, @+$05

    xor d
    xor c
    ldh a, [$e1]
    sbc a
    sbc h
    nop
    ret nz

    rst $00
    db $ec
    ld bc, $60ea
    ldh [$ea], a
    ldh a, [$e6]
    jr nc, jr_065_7bdc

    dec h
    add [hl]
    ldh a, [$e5]

jr_065_7bdc:
    nop
    ld a, l
    ret nz

    cp a
    and [hl]
    db $ec
    nop
    ld [$e0c1], a
    jp hl


    ldh a, [$e6]
    jr nc, @+$06

    dec h
    add [hl]
    ld [bc], a
    ldh a, [$e6]
    sbc a
    add $80
    jp $ea85


    jp $e9e0


    ldh a, [$e6]
    jr nc, jr_065_7c0a

    nop
    ldh a, [$e8]
    ret c

    inc b
    xor b
    inc hl
    ldh [$f0], a
    push bc
    ld h, d
    jr nc, jr_065_7c17

jr_065_7c0a:
    ldh a, [$e8]
    sbc b
    inc bc
    nop
    pop de
    and d
    ldh [$f2], a
    ret nc

    ld [c], a
    rst $38
    ld l, [hl]

jr_065_7c17:
    add hl, hl
    adc l
    ld d, d
    rlca
    ldh [$ed], a
    add $e1
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
    dec h
    add hl, bc
    ld [bc], a
    ld bc, $0b24
    ld [bc], a
    ld [bc], a
    ld e, $0c
    ld [bc], a
    inc bc
    rra
    inc c
    ld [bc], a
    inc b
    inc hl
    inc c
    ld [bc], a
    dec b
    dec e
    dec c
    ld [bc], a
    ld b, $28
    rrca
    ld [bc], a
    rlca
    add hl, de
    db $10
    ld [bc], a
    ld [$1020], sp
    ld [bc], a
    add hl, bc
    inc hl
    db $10
    ld [bc], a
    ld a, [bc]
    inc h
    db $10
    ld [bc], a
    dec bc
    add hl, hl
    db $10
    ld [bc], a
    inc c
    ld e, $11
    ld [bc], a
    dec c
    ld h, $12
    ld [bc], a
    ld c, $1c
    inc de
    ld [bc], a
    rrca
    jr nz, jr_065_7c98

    ld [bc], a
    db $10
    inc hl
    dec d
    ld [bc], a
    ld de, $1724
    ld [bc], a
    ld [de], a
    jr nz, jr_065_7ca8

    ld [bc], a
    inc de
    ld hl, $0218
    inc d
    inc e
    dec de

jr_065_7c98:
    ld [bc], a
    dec d
    ld e, $1b
    ld [bc], a
    ld d, $23
    inc e
    ld [bc], a
    rla
    dec h
    inc e
    ld [bc], a
    jr jr_065_7cd2

    dec e

jr_065_7ca8:
    ld [bc], a
    add hl, de
    ld a, [hl+]
    jr nz, jr_065_7caf

    ld a, [de]
    dec e

jr_065_7caf:
    ld hl, $1b02
    rra
    ld hl, $1c02
    dec h
    ld hl, $1d02
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld e, $20
    inc hl
    ld [bc], a
    rra
    inc d
    inc h
    ld [bc], a
    jr nz, jr_065_7cec

    dec h
    ld [bc], a
    ld hl, $2613
    ld [bc], a
    ld [hl+], a
    ld h, $29
    ld [bc], a
    inc hl

jr_065_7cd2:
    add hl, de
    cpl
    ld [bc], a
    inc h
    jr jr_065_7d08

    ld [bc], a
    dec h
    inc d
    ld sp, $2602
    add hl, de
    dec [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_065_7cec:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_065_7d08:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_065_7e47:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_065_7ee1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_065_7f21:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_065_7fe0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
