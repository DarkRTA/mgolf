INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $046", ROMX[$4000], BANK[$46]

    xor $6b
    rst $38
    ld l, a
    adc $39
    nop
    nop
    rst $18
    ld h, e
    ld a, $26
    rra
    inc bc
    ld b, [hl]
    nop
    rst $18
    ld h, e
    ld c, c
    rrca
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    nop
    rst $18
    ld h, e
    ld [hl], a
    ld bc, $7da0
    ld b, [hl]
    nop
    rst $18
    ld h, e
    rra
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    nop
    rst $18
    ld h, e
    ld [de], a
    ld bc, $7da0
    ld b, [hl]
    nop
    sbc a
    ld bc, $0202
    ld a, [c]
    ld [$0046], sp
    rst $18
    ld h, e
    rra
    inc bc
    sbc a
    ld bc, $0046
    and e
    nop
    rst $38
    cp $ec
    rst $38
    db $ed
    ldh [$ea], a
    rlca
    jp nc, Jump_000_01ec

    cp $ec
    ld [c], a
    dec e
    ld hl, sp+$32
    ldh [$65], a
    ret nz

    set 7, a
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $037f
    rst $38
    inc b
    rst $38
    ld [$f3eb], sp
    nop
    rst $08
    or c
    pop hl
    and b
    ldh [$e0], a
    rst $38
    ldh [$3f], a
    rst $38
    ret nz

    ld a, a
    ldh [rIE], a
    ld hl, sp+$1f
    db $fc
    rlca
    cp $90
    db $ec
    ld d, a
    rra
    ld sp, hl
    add hl, de
    ldh a, [rNR24]
    pop af
    rst $38
    rra
    or $0c
    ld hl, sp+$0c
    ld hl, sp+$07
    db $fd
    rst $20
    rra
    cp $00
    cp e
    ldh [$b7], a
    pop hl
    rst $00
    ld a, a
    rst $38
    rst $28
    ld a, b
    ld hl, sp-$40
    pop bc
    add b
    and $f8
    rst $38
    db $fc
    rst $28

jr_046_40a6:
    rrca
    inc e
    rlca
    db $fc
    adc [hl]
    ldh [$03], a
    cp $06
    rst $38
    db $fc
    rrca
    ei
    add hl, de
    ldh a, [$30]
    ldh [$e0], a
    rst $38
    ldh [$98], a
    jr @+$01

    jr nc, jr_046_40de

    rrca
    inc bc
    xor $4b
    ldh [$80], a
    nop
    ld bc, $e751
    ldh [$3f], a
    inc e
    rst $38
    rlca
    ld [bc], a
    pop bc
    add c
    pop hl
    ld b, b
    jr nz, jr_046_40f5

    rrca
    cp $03
    cp $03
    ld e, c
    ldh [$57], a
    pop hl

jr_046_40de:
    and l
    ld [c], a
    db $10
    push hl
    cp $53
    ldh [$fe], a
    add b
    push de
    ret nz

    ld l, d
    nop
    xor d
    db $eb
    nop
    ld d, l
    db $fc
    ldh [rLCDC], a
    db $10
    add sp, $7f

jr_046_40f5:
    ld bc, $ffbf
    inc bc
    ld e, [hl]
    ld b, $2c
    inc c
    jr @+$11

Jump_046_40ff:
    dec bc
    rst $38
    rlca
    inc b
    pop af
    cp $cf
    ldh a, [$9c]
    jp Jump_000_33ff


    inc c
    rst $08
    jr nc, jr_046_40a6

    add sp, $2c
    db $d3
    rst $38
    inc de
    db $ec
    db $e3
    rra
    sbc b
    ld h, c
    ld a, [hl]
    add c
    rst $38
    ld hl, sp+$07
    and $18
    sbc [hl]
    ld h, b
    ld a, a
    add b
    rst $38
    rst $38
    nop
    db $fc
    rlca
    db $fc
    rlca
    cp $3f
    di
    add a
    ld bc, $e0ff
    ret nc

    call nz, $ff0e
    rra
    pop af
    rst $38
    ld sp, $e0e0
    ret nz

    ret nz

    add b
    ret nz

    add b
    ei
    ld hl, sp+$50
    add l
    pop hl
    ld bc, $81ff
    rst $38
    add e
    rst $38
    cp $c2
    ld a, [hl]
    add $6c
    ld b, [hl]
    ld d, h
    inc e
    rst $38
    inc e
    cpl
    ld l, $5f
    ld e, a
    cp a
    cp a
    rst $38
    rst $38
    ld sp, hl
    ld a, c
    ld sp, $497d
    ld c, l
    ld b, h
    nop
    rst $38
    nop
    jr c, jr_046_416a

jr_046_416a:
    rst $38
    db $fc
    rst $00
    add a
    add l
    ld a, a
    add l
    adc e
    adc e
    sub a
    sub a
    xor a
    xor a
    add b
    pop bc
    rst $38
    ld bc, $8100
    add b
    pop bc
    pop bc
    db $e3
    pop hl
    jp $f9fb


    or d
    ret nz

    pop af
    jp $e096


    adc a
    jp Jump_046_50c0


    set 0, b
    ld b, b
    cp $e2
    add b
    rst $38
    db $e3
    ld d, b
    ret


    ld bc, $bf00
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld a, [$03e0]
    rst $38
    rlca
    inc b
    ld a, [hl]
    ld a, h
    cp $84
    adc [hl]
    inc b
    rst $38
    cpl
    ldh a, [$d7]
    add sp, $45
    cp d
    ld c, e
    inc [hl]
    rst $38
    ld h, d
    dec e
    and l
    ld a, [de]
    or c
    ld c, $d2
    dec c
    cp $4c
    pop hl
    cp a
    ld b, b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    ld d, a
    nop
    ld l, a
    sub b
    ld de, $80c1
    call nz, $c0c0
    cp $e0
    db $fd
    ldh [$fe], a
    ldh [$f0], a
    nop
    ld l, b
    db $ec
    xor e

jr_046_41df:
    ld l, h
    rst $38
    daa
    ld h, h
    ld h, a
    inc h
    dec d
    ld [hl], $15
    ld [hl], $ff
    inc sp
    ld [de], a
    dec bc
    ld a, [de]
    ld b, h
    ld h, h
    inc h
    ld h, h
    ld [hl], a
    inc h
    inc h
    and h
    cp $e0
    db $e4
    inc h
    and $fe
    ldh [$f7], a
    ld b, h
    nop
    jr nz, jr_046_41df

    and b
    ret nz

    nop
    rst $38
    ld [hl], b
    rst $38
    ld a, a
    ccf
    ccf
    add hl, sp
    ccf
    ld [de], a
    rst $38
    rst $38
    rst $00
    ld a, a
    ld a, $1c
    xor $e2
    ld l, [hl]
    ldh [$d1], a
    and c
    sbc a
    rlca
    rst $38
    rlca
    rrca
    dec b
    rrca
    ld [$081f], sp
    ccf
    rst $18
    ld de, $123e
    ld e, $0c
    dec b
    ldh [$e6], a
    cp $ff
    db $fc
    rst $20
    jp nz, $8183

    dec e
    add hl, de
    ld sp, $21c7
    ld h, e
    ld hl, $c1d7
    db $fc
    db $e3
    sub [hl]
    and e
    ld [hl+], a
    rra
    rst $38
    ld [hl], d
    rrca
    ld [hl], a
    rrca
    ld l, c
    add hl, de
    ld l, c
    sbc c
    rst $38
    or h
    adc h
    or h
    call z, Call_046_467a
    ld e, b
    rlca
    rst $38
    ld l, c
    ld b, $ac
    inc bc
    inc [hl]
    add e
    ld d, [hl]
    add c
    rst $38
    sbc d
    pop bc
    xor e
    ret nz

    ld c, l
    ld h, b
    or a
    ld c, b
    rst $38
    ld a, a
    add b
    ld e, e
    and h
    cp a
    ld b, b
    dec l
    jp nc, Jump_046_5fff

    and b
    ld d, $e9
    cpl
    ret nc

    ldh a, [rP1]
    push de
    ld hl, sp-$02
    ldh [$fc], a
    cp $e0
    cp $fe
    ldh [rIE], a
    nop
    rst $38
    dec bc
    ld a, [de]
    dec de
    ld a, [bc]
    rlca
    ld c, $05
    ld c, $ff
    dec c
    ld b, $03
    ld b, $36
    inc bc
    cp [hl]
    ld a, a
    rst $38
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    and e
    ld h, d
    and c
    ld h, c
    bit 0, c
    pop bc
    db $dd
    jp Jump_046_631e


    pop hl
    dec hl
    and c
    ret nz

    add b
    rst $18
    add sp, $50
    ld h, l
    ld a, [hl+]
    dec [hl]
    rst $10
    jp Jump_000_0201


    rst $18
    ld [bc], a
    dec d
    cpl
    add b
    ld e, a
    db $fc
    ret nz

    jr z, jr_046_4317

    rst $38
    ld e, d
    and h
    cp h
    ld b, e
    ld a, c
    add a
    cp $02
    rst $38
    cp $1e
    or a
    db $76
    db $e3
    ld h, e
    ld h, d
    ld b, d
    rst $38
    ld b, [hl]
    ld [bc], a
    inc e
    inc b
    cp $de
    ld a, a
    or e
    rra
    ccf
    ld h, b
    ccf
    ldh [rIE], a
    ld a, a
    and b
    xor $83
    sub c
    call nz, $90f8
    add $cc
    pop bc
    ret nc

    pop bc
    ld e, d
    ld h, [hl]
    dec l
    inc sp
    ld d, $7f
    add hl, de
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc
    db $fd
    and c
    rst $38

Jump_046_42ff:
    ld d, l
    ld h, b
    ld h, $30
    xor d
    or b
    ld d, e
    ret c

    rst $38
    or l
    ld a, b
    reti


    inc a
    ld a, [bc]
    db $fd
    rst $00
    rst $38
    rst $38
    adc e

jr_046_4312:
    ld [hl], h
    sub a
    ld l, b
    add $39

jr_046_4317:
    ld c, b
    scf
    rst $18
    ld l, h
    rra
    or c
    ld a, [hl]
    ret nz

    sub h
    add b
    ld a, b
    add a
    rst $38
    jp Jump_000_1f3c


    ldh [$ef], a
    db $10
    cp a
    ld b, b
    rst $38
    ld [hl], a
    adc b
    ld e, a
    and b
    cp e
    ld b, h
    inc bc
    rst $38
    rst $38
    ld a, [$fe06]
    inc b
    db $f4
    inc c
    db $fc
    ld [$e8bf], sp
    jr jr_046_4312

    jr nc, @-$4e

    ld [hl], b
    add b
    adc c
    inc bc
    rst $38
    nop
    dec c
    rlca
    rra
    db $10
    rrca
    ld [$ff0b], sp
    inc c
    dec de
    inc a
    dec a
    ld l, [hl]
    ld a, a
    add $fe
    rst $30
    add e
    rst $38
    inc bc
    ld d, c
    add c

jr_046_4360:
    cp $01
    db $fd
    inc bc
    rst $28
    rst $28
    ld e, $bf
    ld [hl], b
    sub d
    add b
    nop
    ld b, e
    jp $c1fb


    pop bc
    rst $30
    add b
    or b
    ldh a, [rNR23]
    ld hl, sp+$08
    rst $38
    ld hl, sp+$1c
    db $fc
    ld h, h
    rst $38
    rrca
    ld hl, sp-$78
    ei
    ld hl, sp-$08
    ld b, c
    adc e
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    rst $08
    ccf
    add b
    ld a, a
    nop
    ld l, c
    add b
    jp nz, Jump_046_7ce1

    add e
    ld a, a
    jr c, jr_046_4360

    db $10
    rst $28
    nop
    rst $38
    db $10
    cp $e0
    rst $28
    db $f4
    ccf
    cp $0f
    ld [c], a

jr_046_43a6:
    add h
    nop
    rst $38
    ld b, b
    ei
    rst $38
    ld b, d
    cp c
    add b
    ret nz

    add b
    ldh a, [$f0]
    ld a, l
    ei
    ld sp, hl
    rrca
    inc de
    add b
    inc bc
    rst $38
    dec b
    cpl
    db $d3
    rst $38
    ld e, l
    xor [hl]
    inc [hl]
    ld hl, sp-$2f
    ldh [$a7], a
    jp $c63f


    adc h
    nop
    add b
    add c

jr_046_43cd:
    inc bc
    adc e
    add b
    xor d
    add b
    rst $38
    ldh [$e0], a
    or c
    ld de, $1b1b
    cp $6f
    rst $38
    push bc
    add [hl]
    rra
    add hl, de
    ld l, $31
    ld e, a
    ld h, b
    rst $38
    or a
    ret z

    ld l, a
    sbc b
    rst $38
    db $10
    rst $18
    jr nc, jr_046_43cd

    rst $38
    jr nz, @+$05

    rst $38

jr_046_43f2:
    add l
    cp $e0
    ld c, d
    db $fd
    rst $08
    or e
    ld a, d
    rst $00
    ld a, $88
    add c
    call c, Call_000_0261
    rst $38
    rst $38
    add l
    cp $cb
    db $fc
    ld [hl], a
    ld hl, sp-$71
    ld [hl], b
    ld a, a
    rst $38
    nop
    cp d
    add $7d
    add e
    cp $90

jr_046_4414:
    push hl
    cp $91
    ld h, h
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ldh [$df], a
    jr nc, jr_046_43f2

    jr nc, jr_046_4414

    jr jr_046_43a6

    ld h, c
    rlca
    nop
    ld a, a
    rrca
    nop
    inc e
    inc bc
    jr c, jr_046_4437

    ld [hl], b
    ld c, b
    ldh [rIE], a
    inc b
    rst $38
    adc [hl]

jr_046_4437:
    ei
    adc [hl]

jr_046_4439:
    ei
    db $db
    ld a, l
    rst $38
    db $db
    ld a, l
    ld [hl], l
    cp [hl]
    ld [hl], l
    cp [hl]
    ld l, d
    db $fd
    rst $38
    jr c, jr_046_4437

    jr c, jr_046_4439

    ld l, l
    rst $30
    ld l, l
    rst $30
    rst $38
    rst $10
    ei
    rst $10
    ei
    and [hl]
    rst $38
    and $7f
    rst $38
    ld [c], a
    cp a
    rst $20
    cp l
    or a
    db $dd
    cp a
    sbc $ff
    ld e, a
    xor $5c
    rst $28
    xor h
    rst $10
    xor l
    sub $ff
    dec b
    rst $38
    dec bc
    db $fd
    dec bc
    db $fd
    sub l
    rst $38
    rst $38
    sub l
    rst $38
    ld [$aa7d], a
    ld a, l
    ld d, c
    cp $f6
    ld [hl+], a
    and c
    add c
    ld bc, $a022
    add b
    ret nc

    add b
    db $eb
    rst $38
    add e
    db $fc
    adc l
    rlca
    inc b
    ld a, a
    inc a
    rst $00
    rst $38
    call nz, Call_000_0e0f
    ld sp, $c631
    pop bc
    dec sp
    rst $38
    nop
    db $fd
    nop
    cp a
    ld h, b
    rst $38
    ld b, b
    ld a, a
    ld sp, hl
    ret nz

    ld c, b
    ld h, b
    adc c
    ld h, d
    ld a, a
    ret nz

    xor $0b
    rst $38
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    db $fd
    ld h, $df
    inc a
    db $e3
    db $fd
    inc e
    ld b, l
    ld [c], a
    nop
    db $ed
    ld e, $ff
    inc sp
    pop af
    rst $38
    ld b, b
    ldh [rLCDC], a
    ret z

    add b

jr_046_44c5:
    sbc b
    nop
    jr nc, jr_046_44c5

    pop de
    ld b, d
    ld [$8080], sp
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_046_4512

    rst $38
    jr nz, jr_046_4515

    db $10
    rst $38
    ld [$0aff], sp
    rst $38
    push af
    ld b, $fe
    ldh [rTIMA], a
    cp $e0
    ld [bc], a
    rst $38
    ld [bc], a
    pop bc
    rst $38
    ccf
    and c
    ld a, a
    inc hl
    rst $38
    ld [hl], e
    rst $18
    db $76
    rst $38
    rst $18
    sbc [hl]
    rst $28
    sbc l
    rst $28
    xor l
    rst $18
    ld l, d
    rst $38
    db $fd
    pop de
    cp $d1
    cp $a0
    rst $38
    and b
    ld a, [$40e7]
    ld c, $e4
    ld h, b
    call $6d7f
    cp a
    ld a, d
    rst $38
    cp a
    cp d
    ld e, a
    cp a

jr_046_4512:
    ld e, a
    ld hl, sp-$01

jr_046_4515:
    jr c, jr_046_4515

    add h
    ld b, b
    rla
    ld [$eb16], a
    dec bc
    push af
    dec bc
    rst $28
    push af
    rst $38
    rst $38
    db $e3
    cp $e0
    nop
    rst $38
    ld d, c
    rst $38
    rst $38
    and c
    rst $38
    and e
    rst $38
    ld b, e
    cp $46
    rst $38
    cp $fe
    db $fc
    inc c
    db $fc
    inc c
    ld hl, sp-$0b
    rst $38
    or d
    pop hl
    ld a, $ea
    dec [hl]
    ld e, b
    scf
    dec a
    rst $38
    ld [de], a
    inc d
    dec de
    ld c, $19
    ld e, $09
    cp $fb
    nop
    ld a, [hl]
    ld a, $82
    ld a, [hl]
    add b
    ld e, b
    and c
    and c
    rst $38
    ld b, [hl]
    rlca
    ret c

    rst $38
    ld b, b
    cp a
    ld h, b
    ld e, a
    rst $38
    inc a
    inc bc
    ld e, $13
    ld l, [hl]
    ld [hl], a
    adc [hl]
    db $db
    rst $20
    inc a
    ld l, a
    ldh a, [rNR10]
    ld h, c
    ld c, $68
    nop
    ld l, $51
    ei
    ld e, a
    and b
    add e
    ld b, b
    add b
    ld a, a
    add b
    cp a
    ret nz

    rst $38
    rst $18
    ld h, b
    scf
    ld hl, sp+$10
    rra
    ld [$ff9f], sp
    adc b
    rra
    sub b
    ld e, a
    reti


    cpl
    xor [hl]
    ld d, a
    rst $38
    rst $10
    dec hl
    ld_long $ff15, a
    ld bc, $1ffd
    rst $38
    rst $38
    ld a, a
    jp $81ff


    jp $8101


    rst $38
    nop
    ld bc, $8080
    ld a, d
    rst $18
    ld e, d
    rst $38
    ld a, l
    inc [hl]
    cp $e0
    add sp, -$01
    ccf
    rst $38
    add e
    cpl
    ld b, b
    and h
    rst $38
    db $ed
    ret nc

    ld a, [hl+]
    rrca
    adc e
    ld b, b
    ret nz

    dec h
    cp $6b
    add d
    ld sp, hl
    xor [hl]
    or b
    inc h
    add c
    nop
    ld a, [hl+]
    xor b
    ld b, d
    ld d, l
    or b
    jr nz, jr_046_4621

    ret c

    sbc h
    ld b, h
    ldh a, [$e3]
    and b
    ld b, b
    nop
    ccf
    cp $e0
    sbc a
    nop
    pop hl
    ld b, c
    ldh a, [$e4]
    ld a, [hl]
    daa
    and $e1
    ld [hl], b
    daa
    db $fc
    nop
    ld a, [$00ff]
    push de
    nop

jr_046_45ef:
    ld a, [c]
    nop
    push af
    nop
    ld [$f8be], a
    ldh [$2a], a
    nop
    ld d, h
    nop
    xor b
    or h
    add sp, -$7e
    ld [c], a
    rrca
    ld b, h
    xor d
    rlca
    ld b, h
    ld b, a
    dec h
    jr nc, jr_046_464a

    ld a, [hl+]
    nop
    dec d
    cp e
    nop
    ld a, [bc]
    rst $28
    inc h
    adc a
    nop
    ld d, a
    add b
    and $02
    adc $30
    ld h, $7f
    nop
    xor a
    add sp, -$1c
    jp hl


    inc hl

jr_046_4621:
    db $fd
    add b
    ld a, a
    ld a, [$55c0]
    ret nz

    ld l, d
    ret nz

    ld d, b
    xor c
    ld h, b
    ld b, l
    push de
    db $ec
    jr nz, jr_046_4682

    xor a
    jr nz, @-$4e

    rst $20
    call c, $0821
    and $04
    ld d, c
    and b
    call nc, $8a20
    ld c, d
    adc $09
    ld [bc], a
    or a
    jr nz, jr_046_45ef

    inc de
    add sp, $71

jr_046_464a:
    xor d
    jp nc, $cb66

    pop hl
    rst $00
    ld [c], a
    ld a, [hl+]
    nop
    dec b
    ld a, b
    ld [c], a
    and h
    ld l, c
    ld h, l
    ld [hl-], a
    ld b, e
    ld b, b
    pop de
    jr nz, jr_046_4690

    ld c, h
    jr z, jr_046_4671

    ldh [$2a], a
    ld a, [hl+]
    ld [hl], c
    ld a, [bc]
    dec b
    ldh a, [$e8]
    ld bc, $2447
    dec d
    sub a
    add $37

jr_046_4671:
    ld hl, $a8f1
    dec a
    inc bc
    inc l
    ld [$4124], sp

Call_046_467a:
    ld h, b
    add b
    jr nc, @-$3e

    rst $38
    jr @-$1e

    inc c

jr_046_4682:
    ldh a, [rTMA]
    ld hl, sp+$03
    db $fc
    jr nz, jr_046_46d6

    rst $20
    ld l, c
    jp $e93d


    adc [hl]
    pop hl

jr_046_4690:
    jp Jump_000_02c3


    xor e
    add $a8
    push hl
    adc c
    ld d, b
    rlca
    ldh [$f0], a
    push hl
    dec b
    ld [$d7e8], sp
    rst $00
    di
    jp $bf3f


    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    sub [hl]
    ldh [rSB], a
    ld l, h
    ld h, c
    ld b, c
    rst $08
    and h
    add e
    ld a, h
    cp $e3
    inc bc
    db $fc
    push af
    and l
    db $fd
    ld a, [bc]
    call nz, $80c8
    add b
    ret nz

    ret nz

    ret nz

    ld b, b
    cp a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$30]
    nop
    add e
    rra
    db $dd
    nop
    ld [bc], a
    add e
    ldh [$1f], a

jr_046_46d6:
    ld bc, $40fa
    cp $01
    rst $38
    db $fc
    inc bc
    ld bc, $03fe
    db $fc

jr_046_46e2:
    rlca
    ld hl, sp+$7b
    rlca
    ld hl, sp+$22
    pop hl
    ld a, h
    add e
    ld hl, sp+$07
    inc l
    ld h, a
    ld a, [$a1be]

jr_046_46f2:
    jr nc, jr_046_46f2

    ldh [$78], a
    rst $28
    ld a, b
    rst $28
    call z, $f737
    inc bc
    db $fc
    cp $e3
    ld [bc], a
    db $fd
    pop de
    ld [bc], a
    ld c, a
    and d
    jr c, jr_046_46e2

    push hl
    ld d, $c1
    ret nz

    ld hl, $e01c
    ld c, $5e
    ldh [$fe], a
    db $e3
    set 6, b
    db $10
    cp $e2
    ldh a, [$35]
    call $e188
    rlca
    nop
    inc bc
    ld c, $01
    ld a, h
    pop hl
    ld a, b
    pop hl
    ret nz

    ld b, c
    xor e
    add c
    ld a, h
    pop hl
    inc h
    push hl
    reti


    add b
    ret


    ld h, c
    and l
    add c
    ld a, a
    adc h
    cp $e0
    ld e, $fb
    rst $38
    ld e, $fb
    scf
    db $fd
    call z, $b6f7
    db $eb
    rst $38
    or [hl]
    db $eb
    ld c, e
    push af
    ld c, e
    push af
    and l
    ld a, [$a55f]
    ld a, [$fd42]
    ld bc, $40bb
    inc bc
    rst $18
    ld h, d
    db $dd
    adc l
    cp $e0
    jp c, $c07f

    cp $e0
    ld h, c
    cp a
    rst $38
    ld h, c
    cp a
    or c
    ld e, a
    or e
    ld e, a
    ld e, e
    xor a
    db $db
    ld e, [hl]
    xor a
    inc l
    pop hl
    add a
    ld hl, sp-$16
    pop hl
    ld h, b
    cp a
    jp hl


    ld h, b
    ld [$08e0], a
    ld h, c
    ld a, b
    rla
    pop hl
    rra
    ld hl, sp+$1f
    xor a
    ld a, h
    or a
    inc a
    rst $30
    jp nz, Jump_000_0de5

    cp $e0
    ld a, [de]
    db $fc
    ld h, l
    ld h, b
    ret nz

    pop hl
    ldh [$bf], a
    ldh [$bf], a
    or b
    ld e, a
    rst $38
    or c
    ld e, a
    ld e, c
    xor a
    ld e, a
    xor a
    scf
    db $fd
    rst $38
    ld l, l
    ld a, [$fa6d]
    jp nc, $d2fd

    db $fd
    rst $28
    and c
    cp $a1
    cp $3f
    ld b, b
    db $fd
    add c
    cp $f9
    add c
    add [hl]
    jp nz, $83a6

    jp c, Jump_046_757f

    cp a
    ld [hl], l
    cp $90
    ld h, b
    cp d
    ld e, a
    ld e, h
    xor a
    ld e, h
    xor a
    inc l
    rst $38
    rst $10
    ld l, $d7
    cpl
    rst $10
    rla
    db $eb
    rla
    cp [hl]
    adc h
    ld h, d
    dec b
    ld a, [$fa05]
    or c
    ld a, d
    ldh [$5b], a
    ei
    xor a
    ld l, $e8
    ldh [$97], a
    db $eb
    sub a
    db $eb
    set 7, a
    push af
    ld h, [hl]
    ei
    ld h, [hl]
    ei
    db $db
    push af
    db $db
    ld e, [hl]
    ld b, d
    ld [c], a
    ld b, e
    db $fd
    ld b, e
    db $fd
    db $f4
    ld h, c
    ld l, b
    cp $e0
    ld sp, hl
    ret nc

    cp $e0
    ld a, [hl-]
    ld h, c
    cpl
    rst $10
    ld l, $df
    ld e, $af
    rst $28
    dec e
    rst $28
    dec e
    reti


    ld b, b
    ld a, [hl-]
    sub $60
    ld b, b
    db $fc
    rst $00
    ld b, d
    ld a, [hl-]
    adc c
    rst $38
    rst $38
    rst $18
    rst $38
    ld l, c
    rst $38
    db $fd
    ld e, c
    jp z, Jump_046_48e0

    rst $38
    ld a, b
    rst $38
    ld l, $d7
    sbc c
    cp $ca
    ld h, b
    ld a, b
    ret nz

    rst $38
    add hl, de
    cp $e0

jr_046_4832:
    db $f4
    jr nz, jr_046_4832

    ld a, a
    ld [bc], a
    db $fd
    rst $38
    rst $38
    cp h
    rst $38
    ld a, a
    jr jr_046_489f

    rst $38
    ld hl, $e0ff
    rst $38
    bit 6, l
    push hl
    ld a, d
    db $eb
    push hl
    ld a, [$e1ec]
    jp $e0fe


    nop
    rst $38
    add c
    sbc h
    cp $e0
    ld [hl], c
    ld hl, $ffff

jr_046_485a:
    jr jr_046_485a

    ldh [$6d], a
    ld hl, $ae40
    adc d
    ld h, b
    db $fd
    rst $38
    cp $9f
    ld b, b
    inc b
    ld l, l
    jr nz, jr_046_48e0

    ld l, d
    add $e0
    rst $38
    ld l, b
    ld h, d
    sbc b
    cp $e0
    add b
    rst $38
    nop
    nop
    nop
    ld b, l
    ld h, d
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $20
    and $c0
    pop af
    ld bc, $ffc9
    or b
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ld h, e
    db $dd
    xor $64
    ld [hl], c
    ld h, l
    jp z, $bde0

    rst $38
    push hl
    db $e4
    ld h, [hl]

jr_046_489f:
    ld h, a
    ld l, b
    db $db
    ldh [$fd], a
    ld [bc], a
    rst $10
    pop hl
    inc bc
    inc b
    dec b
    ld b, $00
    nop
    rst $20
    ld l, c
    ld l, d
    ld l, e
    ret nz

    rst $38
    add sp, -$19
    ld l, h
    ld l, l
    ld l, [hl]
    rst $38
    ld l, a
    rlca
    nop
    ld [$0a09], sp
    nop
    inc bc
    rst $38
    dec bc
    inc c
    dec c
    ld c, $0f
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld sp, hl
    ld [hl], h
    jp z, $e8ff

    rst $20
    ld [hl], l
    db $76
    ld bc, $1077
    rst $38
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_046_495e

    add hl, de

Jump_046_48e0:
jr_046_48e0:
    ld a, [de]
    dec de
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    jp z, $feff

    add sp, -$19
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    inc e
    dec e
    ld e, $ff
    rra
    jr nz, jr_046_4917

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $9f
    ld bc, $8281
    add e
    add h
    jp z, $e8ff

    rst $20
    add l
    rst $38
    add [hl]
    add a
    add a
    daa
    jr z, jr_046_4936

    ld a, [hl+]
    dec hl
    rst $38
    inc l
    dec l
    ld l, $2f
    jr nc, jr_046_4947

    ld [hl-], a

jr_046_4917:
    ld bc, $89e7
    adc d
    adc e
    jp z, $e8ff

    rst $20
    adc h
    adc l
    adc [hl]
    rst $38
    adc a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_046_4965

    rst $38
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld bc, $9291
    sub e
    ld sp, hl

jr_046_4936:
    sub h
    jp z, $e8ff

    rst $20
    sub l
    sub [hl]
    sub a
    sbc b
    ld a, $ff
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_046_4947:
    ld b, l
    ld b, [hl]
    ld a, a
    ld b, a
    ld c, b
    ld c, c
    sbc c
    sbc d
    sbc e
    sbc h
    jp z, $feff

    add sp, -$19
    sbc l
    sbc [hl]
    sbc a
    and b
    ld c, d
    ld c, e
    ld c, h
    rst $38

jr_046_495e:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_046_4965:
    ld d, h
    sbc a
    ld d, l
    and c
    and d
    and e
    and h
    jp z, $e8ff

    rst $20
    and l
    rst $38
    and [hl]
    and a
    xor b
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rst $38
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    xor c
    rlca
    xor d
    xor e
    and l
    jp z, Jump_046_40ff

    cp e
    jp z, $c0ff

    rst $38
    rst $38
    rst $38
    jr nc, @-$3e

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ld bc, $e8ff
    jp nc, Jump_000_00ff

    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    cp [hl]
    di
    jp c, $ffff

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
    xor $00
    nop
    nop
    dec b
    ld [$f0ff], sp
    dec bc
    rst $38
    rst $38
    rst $20

jr_046_4a62:
    and $c0
    pop af
    cp a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    xor c
    rst $30
    db $dd
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $28
    xor $25
    dec c
    db $dd
    ldh [rIF], a
    reti


    rst $38
    add sp, -$19
    rrca
    jp nc, $fae2

    ld [c], a
    ccf
    add hl, bc
    add hl, bc
    dec c
    dec bc
    dec c
    rrca
    rst $38
    ldh [$ca], a
    rst $38
    and [hl]
    add sp, -$19
    ld a, [bc]
    ld a, [bc]
    cp [hl]
    pop hl
    jp z, $0fe1

    ret nz

    ldh [$0d], a
    jr z, jr_046_4a62

    rst $38
    ret nz

    ldh a, [$fe]
    db $e4
    add hl, bc
    cp a
    pop hl
    ld a, [bc]
    rst $38
    ldh [$ca], a
    rst $38
    ld [hl], b
    add b
    jp hl


    adc $e0
    ret nz

    rst $38
    ret nz

    ei
    ld a, [bc]
    ld c, $0e
    ld a, d
    db $e4
    cp b
    or c
    ld [c], a
    jp z, $c0ff

    db $ed
    ld a, [bc]
    ld a, [bc]
    inc c
    db $fd
    jp nz, $900c

    ret nz

    rst $38
    ret nz

    db $f4
    cp a
    jp $e280


    ld a, [hl+]
    jp z, Jump_046_40ff

    or a
    ld c, b
    nop
    rst $38
    ldh [$ca], a
    rst $38
    nop
    cp e
    jp z, $c0ff

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    dec a
    adc [hl]
    jp nc, $c0ff

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    dec sp
    or e
    jp c, $ffff

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
    rst $38
    rst $38
    xor $00
    nop
    nop
    xor $6b
    rst $38
    ld l, a
    adc $39
    nop
    nop
    rst $18
    ld h, e
    ld a, $26
    rra
    inc bc
    ld b, [hl]
    nop
    rst $18
    ld h, e
    ld c, c
    rrca
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    nop
    rst $18
    ld h, e
    ld [hl], a
    ld bc, $7da0
    ld b, [hl]
    nop
    rst $18
    ld h, e
    rra
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    nop
    rst $18
    ld h, e
    ld [de], a
    ld bc, $7da0

jr_046_4bd6:
    ld b, [hl]
    nop
    sbc a
    ld bc, $0202
    ld a, [c]
    ld [$0046], sp
    rst $18
    ld h, e
    rra
    inc bc
    sbc a
    ld bc, $0046
    ei
    nop
    rst $38
    cp $f3
    ld bc, $03ff
    rst $38
    ld b, $ff
    db $fc
    dec c
    ld hl, sp+$19
    ldh a, [rIF]
    ei
    ccf
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
    add b
    add a
    nop
    jr @+$01

    nop
    ld h, b
    nop
    ldh a, [rIE]
    adc [hl]
    ldh a, [$7d]

jr_046_4c0d:
    rst $38
    add e
    add $3f
    jr c, jr_046_4bd6

    ld hl, sp+$03
    ldh a, [rIE]
    rrca
    call z, $f830
    rra
    jr c, jr_046_4c2d

    ld hl, sp-$01
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    ld a, a
    ld c, $f7
    inc bc
    inc bc
    inc bc
    or b

jr_046_4c2d:
    push hl
    inc e
    rst $38
    ld a, $e3
    rst $18
    ld h, e
    pop bc
    pop bc
    add c
    nop
    rst $38
    db $ec
    add hl, de
    pop af
    rst $38
    rra
    or $0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fd
    rst $38
    inc bc
    cp $06
    cp $0e
    ld hl, sp+$03
    ret nc

    rst $38
    nop
    and a
    daa
    ret c

    ld e, [hl]
    pop hl
    xor a
    ret nc

    rst $38
    adc e
    ld [hl], h
    sub a
    ld l, b
    push bc
    ld a, [hl-]
    inc a
    ret nz

    ei
    cp $00
    cp $e1
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $18
    nop
    cp a
    ld b, b
    inc bc
    ld bc, $e0ff
    nop
    nop
    sub $fc
    pop hl
    nop
    add b
    cp $e0
    add c
    ld a, [$f0e0]
    and b
    rst $38
    ret c

    ldh a, [$d8]
    ld [hl], b
    ret z

    ld a, b
    ld c, b
    ld a, b
    rst $28
    ld l, h
    jr c, jr_046_4c0d

    rst $38
    cp $e3
    ret nz

    ld a, a
    ret nz

    db $eb
    ld a, a
    ld b, b
    cp $e0
    nop
    ld c, b
    ldh [$0e], a
    db $fc
    add hl, de
    rst $28
    ldh a, [$32]
    ldh [$65], a
    db $ed
    ldh [rIE], a
    ldh [$7f], a
    rst $38
    rst $38
    rst $38
    add b
    cp a
    ld bc, $027f
    rst $38
    rst $08
    inc b
    push af
    nop
    rst $20
    inc de
    ldh [$d0], a
    pop hl
    ldh a, [rIE]
    rst $38
    ldh a, [$1f]
    ldh [$3f], a
    ldh a, [$7f]
    db $fc
    rrca
    push de
    cp $50
    ldh [$03], a
    db $76
    ldh [rSC], a
    cp $e4
    inc bc
    ld e, [hl]
    rst $38
    ld sp, hl
    db $fc
    add hl, bc
    db $fc
    add hl, bc
    inc e
    ld b, h
    ld a, $ff
    db $e4
    ld e, $ef
    ld e, $d2
    inc sp
    jp nc, $ff33

    ld c, e
    inc [hl]
    ld h, d
    dec e
    and l
    ld a, [de]
    or c
    ld c, $ff
    jp nc, Jump_046_580d

    rlca
    ld l, c
    ld b, $ac
    inc bc
    rst $38
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    ld l, a
    sub b
    rst $38
    rst $38
    nop
    or a
    ld c, b
    ld a, a
    add b
    ld e, e
    and h
    ld e, a
    ret nz

    nop
    ret nz

    nop
    ldh [$fe], a
    ldh [$f0], a
    cp $e0
    db $fd
    ld hl, sp-$02
    ldh [$6c], a
    jr c, jr_046_4d3d

    inc a
    inc [hl]
    inc e
    rst $38
    inc [hl]
    inc e
    inc d
    inc e
    inc e
    inc c
    inc e
    ld [$0d83], sp
    ld [$e16c], sp
    db $fc
    db $e3
    ld e, [hl]
    pop hl
    dec l
    ldh [$a6], a
    pop bc
    cp $ff
    rlca
    db $fd
    inc c
    ld hl, sp+$18
    ldh a, [rSVBK]
    ldh a, [rIE]

jr_046_4d3d:
    call z, $ff8c
    sbc b
    adc a
    rlca
    ld bc, $e700
    add b
    add b
    ret nz

    rst $10
    call nz, $c071
    add b
    rst $38
    ld [hl], b
    rst $38
    rra
    ld c, $03
    ld bc, $40e0
    ld [hl], b
    jr nz, jr_046_4dc5

    db $10
    db $10
    ld [hl], a
    ret nz

    ld bc, $c45d
    add b
    rst $38
    rra
    ldh [$fc], a
    rst $18
    db $e3
    db $10
    ld [c], a
    ld a, [hl]
    ret nz

    ld [hl], l
    ldh [$2a], a
    ld bc, $a97f
    ld bc, $0055
    and b
    nop
    ld b, b
    sbc b
    push bc
    rst $38
    ld l, c
    add hl, de
    ld l, c
    sbc c
    db $f4
    adc h
    or h
    call z, Call_046_5aff
    ld h, [hl]
    dec l
    inc sp
    ld d, $19
    dec bc
    inc c
    rst $38
    inc [hl]
    add e
    ld d, [hl]
    add c
    sbc d
    pop bc
    xor e
    ret nz

    rst $38
    ld c, l
    ld h, b
    ld d, l
    ld h, b
    and [hl]
    or b
    ld l, d
    ldh a, [rIE]
    cp a
    ld b, b
    dec l
    jp nc, $a05f

    ld d, $e9
    rst $38
    cpl
    ret nc

    adc h
    ld [hl], e
    sub c
    ld l, [hl]
    reti


    ld a, $f7
    db $fc
    nop
    db $fc
    db $fd
    and b
    ldh a, [rIF]
    add a
    ld a, b
    rst $38
    ccf
    ret nz

    rst $18
    jr nz, jr_046_4e3f

    add b
    ld d, $0d
    rst $38
    dec [hl]

jr_046_4dc5:
    rrca
    ld a, l
    rst $38
    ld b, $fe
    db $f4
    inc c
    ccf
    db $fc
    ld [$18e8], sp
    ld hl, sp+$10
    ld c, [hl]
    pop hl
    ldh a, [$a2]
    rst $38
    ld a, a
    ld bc, $035f
    xor [hl]
    inc bc
    ld d, d
    adc [hl]
    rst $38
    adc [hl]

Call_046_4de2:
    sub a
    sub a
    xor a
    xor a
    rst $18
    rst $18
    rst $38
    rst $38
    ld a, h
    inc a
    jr jr_046_4e2c

    inc h
    ld h, $22
    nop
    rst $38
    nop
    sbc h
    nop
    rst $38
    cp $e3
    jp Jump_046_7fc2


    jp nz, $c5c5

    set 1, e

jr_046_4e01:
    rst $10
    ld d, a
    db $10
    pop bc
    rst $38
    add b
    nop
    ret nz

    ret nz

    ldh [$e0], a
    pop af
    ldh a, [$2f]
    db $fd
    db $fc
    rst $38
    rst $38
    ld l, e
    pop bc
    rst $38
    cp $e1
    ld d, a
    call nz, $e06f
    jr nc, @-$1e

jr_046_4e1e:
    jr nz, jr_046_4e1e

    ld [c], a
    ld b, b
    ret nz

    cp $e1
    rst $08
    ret nz

    dec b
    ld b, $02
    dec e
    ret nz

jr_046_4e2c:
    jp c, $b3a7

    ld a, b
    rst $38
    dec d
    ei
    adc [hl]
    rst $38
    ld l, b
    ld a, a
    inc e
    rra
    ld a, h
    or h
    and b
    jp Jump_046_62a0


jr_046_4e3f:
    db $fd
    add b
    rst $38
    ld bc, $a1f1
    cp $58
    and b
    pop hl
    rst $38
    dec de
    rra
    rst $28
    db $10
    cp a
    rst $38
    ld b, b
    ld [hl], a
    adc b
    ld e, a
    and a
    cp e
    ld e, h
    ld l, b
    rst $38
    ldh a, [$a3]
    pop bc
    ld c, a
    add [hl]
    ret nc

    jr nc, jr_046_4e01

    rst $38
    ld h, b
    ld h, b
    ldh [$c0], a
    ret nz

    ret nz

    add b
    ld b, b
    ld e, [hl]
    or d
    ldh [$60], a
    jr nz, jr_046_4e73

    ld [bc], a
    rst $38
    rst $20

jr_046_4e73:
    inc bc
    cp $e0
    rst $30
    ld [hl+], a
    nop
    db $10
    ld a, l
    and b

jr_046_4e7c:
    ld h, b
    nop
    ld h, b
    jr nz, jr_046_4e7c

    ccf
    rra
    ld [hl], h
    and c
    ld a, a
    ld a, a
    ccf
    rra
    ld c, $fa
    jr c, @-$5e

    ldh [$8f], a
    call nz, $cfff
    add e
    inc bc
    rlca
    rst $38
    ld [bc], a
    rlca
    inc b
    rrca
    inc b
    rra
    ld [$ff1f], sp
    add hl, bc
    rrca
    ld b, $ff
    ret nz

    rst $38
    di
    rst $38
    rst $38
    cp $f3
    ld h, c
    pop bc
    ld b, b
    adc [hl]
    adc h
    jr @+$41

    db $10
    ld sp, $8010
    add b
    add b
    add [hl]
    and e
    rst $38
    db $e4
    adc a
    rlca
    rlca
    ld [bc], a
    inc bc
    xor b
    pop hl
    and h

jr_046_4ec3:
    pop hl
    or $e0
    inc bc
    cp a
    adc h
    jr jr_046_4ecc

    nop

jr_046_4ecc:
    inc bc
    rlca
    ld h, h
    and c
    jp Jump_000_03fd


    or $a1
    jr nc, @+$32

    ld hl, sp-$28
    adc b
    ld [$08ff], sp
    ld [$78f8], sp
    adc b
    adc b
    inc e
    inc e
    jp Jump_046_6363


    ld b, c
    and c
    jr nz, @-$15

    ldh a, [$82]
    or e
    pop hl
    ldh [rLCDC], a
    rst $18
    ld [hl], h
    jr z, @+$34

    dec d
    ld a, [de]
    ldh [$84], a
    ld bc, $ff01
    ld a, [bc]
    rla
    ld b, b
    cpl
    sub b
    ld a, a
    add b
    inc d
    rst $38
    ld a, [hl+]
    jr z, @+$57

    ld e, h
    and d
    cp [hl]
    ld b, c
    ld a, l
    rst $38
    add e
    rst $38
    rrca
    db $db
    dec sp
    pop af
    ld sp, $ff31
    ld hl, $0123
    ld c, $82
    rst $38
    rst $28
    ccf
    ld a, a
    ld e, c
    rra
    jr nc, jr_046_4ec3

    ld [hl], b
    rst $38
    ldh [$b0], a
    add l
    ld hl, sp+$0e
    ldh [$c0], a
    jp nz, $86a0

    rrca
    nop
    rra
    nop
    ccf
    di
    nop
    ld a, a
    sub b
    db $e3
    res 0, b
    pop hl
    ld bc, $02f1
    rst $38
    ld a, [$fe02]
    db $fd
    inc bc
    or $0e
    reti


    rst $38
    ld a, [hl-]
    ld l, e
    ld h, h
    ld b, d
    ld a, l
    ld d, l
    ld l, d
    ld sp, $6eff
    ld a, [hl-]
    dec h
    adc l
    add e
    ld [hl], a
    ld bc, $effa
    ld bc, $00fd
    db $fd
    sbc d
    add b
    ld a, [hl]
    add b
    db $fc
    cp $71
    db $e4
    ret nz

    ret nz

    ld l, a
    jp Jump_046_7cb7


    rra
    rst $38
    jr z, jr_046_4faf

    rst $00
    rrca
    ld [$0407], sp
    dec b
    rst $38
    ld b, $1b
    inc a
    cp l
    xor $7f
    add $fe
    ld sp, hl
    add e
    ei
    ld h, b
    rst $18
    ld h, d
    db $fd
    inc bc
    rst $28
    ld e, $bf
    db $dd
    ld [hl], b
    db $e4
    ret nz

    nop
    and c
    ld h, c
    sub b
    ret nz

    ldh a, [$f0]
    rst $38
    or b
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    ld a, a
    ld h, h
    rst $38
    add a
    db $fc
    call nz, Call_046_7c7c
    dec h
    jp hl


    db $fc
    ld c, $8b
    and c
    ld h, c

jr_046_4faf:
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    db $fd
    add b
    ld h, h
    add b
    inc b
    rst $38
    rst $38
    nop
    cp $01
    rst $38
    ld a, h
    add e
    jr c, @-$37

    db $10
    rst $28
    nop
    rst $38
    ld a, c
    db $10
    cp $e0
    add b
    ld l, c
    ld b, b
    rst $38
    ld b, d
    rst $38
    db $76
    add c
    rst $30
    ld b, $fc
    inc b
    cp $e4
    ld b, $fc
    jr z, jr_046_5015

    rst $38
    dec e
    ld [hl-], a
    inc e
    inc de
    jr c, jr_046_4ff6

    jr nc, jr_046_5006

    rst $38
    ld h, e
    inc a
    ld h, c
    ccf
    sbc [hl]
    ld a, a
    or b
    ld b, e
    rst $38
    ld b, e
    adc h
    ld c, $b1
    dec sp

jr_046_4ff6:
    rst $00
    db $ed
    ld e, $ff
    or a
    ld a, b
    rst $38
    ldh [$5e], a
    pop hl

Jump_046_5000:
    rst $28
    dec e
    rst $28
    or [hl]
    ld a, c
    rst $18

jr_046_5006:
    ldh [$d4], a
    ld h, c
    rst $18
    jr nz, @-$3f

    cp a
    ld h, b
    ld e, a
    ldh [$03], a
    rst $38

jr_046_5012:
    add l
    cp $e0

jr_046_5015:
    ld c, d
    sbc a
    db $fd
    or e
    ld a, d
    rst $00
    ld a, $c4
    add c
    ld [hl], $61
    ld [bc], a
    rst $38
    rst $38
    add l
    cp $cb
    db $fc
    ld [hl], a
    ld hl, sp-$71
    rst $38
    ld [hl], b
    rst $38
    nop
    cp d
    add $7d
    add e
    cp $f8

jr_046_5034:
    xor [hl]
    add l
    inc bc
    ld h, b
    ld [hl], c
    jp $c040


    and b
    ld h, b
    ldh [$5f], a
    jr nc, jr_046_5012

    jr nc, jr_046_5034

    jr @+$52

    ld h, c
    rlca
    or e
    ret nz

    rst $18
    inc e
    inc bc
    jr c, jr_046_5056

    ld [hl], b
    ld c, b
    ldh [rDIV], a
    rst $38
    rst $38

jr_046_5055:
    adc [hl]

jr_046_5056:
    ei
    adc [hl]

jr_046_5058:
    ei
    db $db
    ld a, l
    db $db
    ld a, l
    rst $38
    ld [hl], l
    cp [hl]
    ld [hl], l
    cp [hl]
    ld l, d
    db $fd
    jr c, jr_046_5055

    rst $38
    jr c, jr_046_5058

    ld l, l
    rst $30
    ld l, l
    rst $30
    rst $10
    ei
    rst $38
    rst $10
    ei
    and [hl]
    rst $38
    and $7f
    ld [c], a
    cp a
    rst $38
    rst $20
    cp l
    or a
    db $dd
    cp a
    sbc $5f
    xor $ff
    ld e, h
    rst $28
    xor h
    rst $10
    xor l
    sub $06
    rst $38
    rst $38
    dec bc
    rst $38
    dec bc
    db $fd
    sub l
    rst $38
    sub l
    rst $38
    cp a
    ld [$aa7d], a
    ld a, l
    ld d, c
    cp $a1
    jp $ffe0


    ld hl, sp-$01
    ld e, a
    rst $38
    or c
    rst $38
    or b
    rst $38
    rst $38
    ld l, b
    ld b, b
    ld b, b
    jr nz, jr_046_510d

    inc hl
    daa
    cpl
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    dec d
    rst $38
    xor e
    cp $7d
    xor d
    sub b
    and b
    ret nz

jr_046_50bd:
    cp a
    ret nz

    rst $38

Jump_046_50c0:
    add b
    push hl
    ld h, d
    cp $73

jr_046_50c5:
    ld b, b
    xor $0b
    rst $38
    ld a, [de]

jr_046_50ca:
    rst $38
    ld [bc], a
    db $fd
    rst $18
    ld h, $df
    inc a
    db $e3
    inc e
    ld h, l
    ld b, [hl]
    rlca
    cp $3f
    jr jr_046_50ca

    jr nz, jr_046_50bd

    jr nz, jr_046_50c5

    or [hl]
    add c
    ld c, a
    ld b, b
    rst $38
    rst $28
    ldh a, [$37]
    jr @+$0d

    inc c
    rlc h
    rst $38
    rst $20
    inc b
    jp $ff02


    ld [$0aff], sp
    cp e
    rst $38
    ld b, $fe
    ldh [rTIMA], a
    ei
    rlca
    rla
    ldh [rSC], a
    rst $38
    pop bc
    ccf
    and c
    ld a, a
    inc hl
    rst $38
    ld [hl], e
    rst $18
    rst $38
    db $76
    rst $18
    sbc [hl]
    rst $28

jr_046_510d:
    sbc l
    rst $28
    xor l
    rst $18
    rst $38
    ld l, d
    db $fd
    pop de
    cp $d1
    cp $a0
    rst $38
    rst $18
    and b
    rst $38
    rst $38
    rst $38
    ld c, $fe
    ldh [$cd], a
    ld a, a
    rst $38
    ld l, l
    cp a
    ld a, d
    cp a
    cp d
    ld e, a
    cp a
    ld e, a
    rst $30
    ld hl, sp-$01
    jr c, @+$06

    ld b, b
    rla
    ld [$eb16], a
    ld a, a
    dec bc
    push af
    dec bc
    push af
    rst $38
    rst $38
    db $e3
    cp $e0
    rst $00
    nop
    rst $38
    ld d, c
    call nc, Call_046_4de2
    add c
    ret nc

    db $e3
    rst $38
    ld l, b
    ei
    rst $38

jr_046_514f:
    jr nc, jr_046_514f

    ldh [rNR23], a
    rst $38
    rra
    rst $38
    xor $ee
    cp a
    ldh [rP1], a
    cp $52
    cp $e0
    ld [hl+], a
    db $fc
    inc h
    cpl
    db $fc
    db $fc
    db $fc
    inc e
    cp $e0
    inc b
    pop bc
    ld l, $12

jr_046_516d:
    add c
    ld sp, hl

jr_046_516f:
    jr nz, jr_046_516f

    ldh [rNR44], a
    pop bc
    ld [$08ff], sp
    db $e3
    ld [bc], a
    rst $18
    db $e3
    ld [bc], a
    rst $30
    ld [bc], a
    rst $20
    ld h, [hl]
    ldh [$ef], a
    dec b
    rst $38
    cp $07
    cp $06
    rst $38
    ld [bc], a
    ei
    dec e
    rst $38
    db $fd
    ld a, a
    rst $00
    rst $38
    add c
    jp $8301


    cp [hl]
    ld e, a
    add c
    ld a, d
    rst $18
    ld e, d
    rst $38
    inc [hl]
    cp $e0
    add sp, $63
    rst $38
    ccf
    sub e
    and d
    rst $38
    db $ed
    ld h, b
    ld a, [hl+]
    rrca
    nop
    jr nc, jr_046_516d

    cp d
    ld c, [hl]
    inc h
    cp $47

jr_046_51b2:
    ld h, b
    db $fc
    nop

jr_046_51b5:
    ld sp, hl
    ld b, b
    inc h
    add c
    cp a
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d
    db $fc
    ldh [rP1], a
    jp Jump_046_5000


    ld hl, sp-$1e
    db $fc
    push hl
    or a
    jr nz, jr_046_51b5

    add b
    ccf
    nop
    add a
    sbc a
    nop
    ld b, c
    ldh a, [$e4]
    ld c, $27
    and $e1
    nop
    daa
    db $fc
    rst $38
    nop
    ld a, [$d500]
    nop
    ld a, [c]
    nop
    push af
    ei
    nop

jr_046_51e8:
    ld [$e0f8], a
    ld a, [hl+]
    nop
    ld d, h
    nop
    xor b
    ld [de], a
    or h
    add sp, -$7e
    add h
    ldh [$33], a
    ld hl, $f8aa
    db $e4
    daa
    dec h

jr_046_51fd:
    adc h
    pop hl
    rst $18
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    ldh [$e4], a
    adc a
    nop
    dec h

jr_046_520a:
    ld d, a
    add b
    and $02
    rst $38
    add h
    ld a, h
    pop hl
    xor a

jr_046_5213:
    add sp, -$1c
    sub b
    dec bc
    db $fd
    ld d, a
    jr nc, jr_046_525f

    db $fd
    add b
    ld a, [$55c0]
    ret nz

    ld d, a
    ld l, d
    ret nz

    ld d, b
    inc bc
    jr nz, jr_046_51fd

    jr c, jr_046_520a

    ld d, b
    inc de
    jr nz, jr_046_51b2

    and b
    rst $20
    jr z, jr_046_5213

    ld [$04b6], sp
    inc d
    ld b, c
    sbc h
    adc h
    sbc h
    rlca
    ld [bc], a

jr_046_523c:
    adc d
    rst $30
    jr nz, jr_046_51e8

    inc bc
    add sp, -$56
    adc a
    ld h, l
    set 4, d
    rst $00
    ld [c], a
    ld a, [hl+]
    inc de
    nop
    dec b
    ld l, b
    ld [c], a
    ld b, b
    jp hl


    xor d
    ret nz

    daa
    ld l, d
    ld b, d
    ld h, [hl]
    ld b, d
    ld d, h
    ld c, $62
    ld b, c
    ld [$ef28], sp

jr_046_525f:
    ret nz

    ld a, [hl+]
    ld sp, $050a
    ldh a, [$e8]
    dec h
    ld bc, $c48b
    dec d
    ld [hl], a
    add $73
    pop bc
    xor b
    sbc h
    add e
    inc c
    add sp, -$02
    db $e4
    jr nz, jr_046_5278

jr_046_5278:
    ld h, b
    add b
    jr nc, jr_046_523c

jr_046_527c:
    jr @-$1e

    rra
    inc c
    ldh a, [rTMA]
    ld hl, sp+$03
    ld a, a
    ld h, e
    add hl, sp
    ld [c], a
    ld c, c
    jp Jump_000_2e48


    jp hl


    adc [hl]
    pop hl
    and e
    jp $8b02


    add $a8
    push hl
    ld d, b
    dec bc
    jr nz, jr_046_527c

    ldh a, [$e5]
    dec b
    ld sp, hl
    ret z

    rst $00
    rst $00
    db $e4
    jp $c03f


    rra
    adc a
    ldh [rIF], a
    ldh a, [rTAC]
    sub [hl]
    ldh [$ba], a
    inc hl
    add c
    jp Jump_000_2d83


    ld a, h
    cp $e3
    inc bc
    db $fc
    push de
    and l
    ld a, [bc]
    ld h, c
    ld c, d
    and d
    ld b, c
    or [hl]
    ld e, b
    ld hl, $30f0
    ldh a, [$63]
    rra
    nop
    ld a, [c]
    ld h, e
    ldh [$f9], a
    rra
    ld [de], a
    ld b, b
    ld a, $60
    db $fc
    inc bc
    ld bc, $03fe
    rst $18
    db $fc
    rlca
    ld hl, sp+$07

jr_046_52db:
    ld hl, sp+$22
    pop hl
    ld a, h
    add e
    db $e3
    ld hl, sp+$07
    inc e
    ld h, a
    ld e, $c1
    call Call_046_7881
    rst $28
    ld a, b
    rst $18
    rst $28
    call z, Call_000_03f7
    db $fc
    cp $e3
    ld [bc], a
    db $fd
    ldh a, [$ba]
    ld [bc], a
    cpl
    and d
    jp c, $2de5

    ld bc, $00f0
    ld hl, sp+$00
    add a
    inc e
    ldh [$0e], a
    ld e, [hl]
    ldh [$fe], a
    db $e3
    db $dd
    ld h, $d8
    ret nz

    ldh [$5f], a
    nop
    ldh a, [rP1]
    ldh a, [rNR10]
    cp $e2
    ldh a, [rNR21]
    call Call_046_781e
    pop hl
    rlca
    nop
    ld c, $01
    ld l, h
    pop hl
    ld l, b
    pop hl
    and b
    ld b, c
    ld [de], a
    ld de, $ff60
    ld l, h
    pop hl
    inc d
    push hl
    add b
    inc sp
    jr nz, jr_046_52db

    ld h, b
    cp $e0
    db $fd
    adc h
    cp $e0
    ld e, $fb
    ld e, $fb
    scf
    db $fd
    rst $38
    call z, $b6f7
    db $eb
    or [hl]
    db $eb
    ld c, e
    push af
    rst $38
    ld c, e
    push af
    and l
    ld a, [$faa5]
    ld b, d
    db $fd
    push de
    ld bc, $808a
    inc bc
    cp a
    ld h, d
    adc l
    cp $e0
    jp c, $fd7f

    ret nz

    cp $e0
    ld h, c
    cp a
    ld h, c
    cp a
    or c
    ld e, a
    cp a
    or e
    ld e, a
    ld e, e
    xor a
    ld e, [hl]
    xor a
    inc e
    pop hl
    add a
    sbc l
    ld hl, sp-$16
    pop hl
    ld h, b
    cp a
    ld h, b
    ld [$e8e0], a
    ld b, c
    ld a, b
    cp $07
    pop hl
    rra
    ld hl, sp+$1f
    ld a, h
    or a
    inc a
    rst $30
    jp z, $e5c2

    dec c
    cp $e0
    ld a, [de]
    ld b, l
    ld h, b
    ret nz

    pop hl
    ldh [$bf], a
    rst $38
    ldh [$bf], a
    or b
    ld e, a
    or c
    ld e, a
    ld e, c
    xor a
    rst $38
    ld e, a
    xor a
    scf
    db $fd
    ld l, l
    ld a, [$fa6d]
    rst $38
    jp nc, $d2fd

    db $fd
    and c
    cp $a1
    cp $9e
    ld e, $40
    db $fd
    add c
    cp $81
    jr nc, @+$06

    db $f4
    add c
    jp c, Jump_046_7fef

    ld [hl], l
    cp a
    ld [hl], l
    ld [hl], b
    ld h, b
    cp d
    ld e, a
    ld e, h
    rst $38
    xor a
    ld e, h
    xor a
    inc l
    rst $10
    ld l, $d7
    cpl
    rst $28
    rst $10
    rla
    db $eb
    rla
    ld l, h
    ld h, d
    dec b
    ld a, [$bb05]
    ld a, [$7ab1]
    ldh [$5b], a
    xor a
    ld l, $e8
    ldh [$97], a
    rst $38
    db $eb
    sub a
    db $eb
    set 6, l
    ld h, [hl]
    ei
    ld h, [hl]
    rst $28
    ei
    db $db
    push af
    db $db
    ld b, d
    ld [c], a
    ld b, e
    db $fd
    ld b, e
    sub l
    db $fd
    call nz, Call_046_6861
    ld e, e
    ld h, b
    ret nc

    cp $e0
    ld a, [de]
    ld h, c
    cpl
    rst $38
    rst $10
    ld l, $df
    ld e, $ef
    dec e
    rst $28
    dec e
    jp z, $e074

    ld a, [hl-]
    and [hl]
    ld h, b
    ld b, b
    and d
    add c
    adc h
    adc d
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
    ld l, c
    rst $38
    ld e, c
    daa
    ld h, b
    ld c, b
    rst $38
    sbc a
    ld a, b
    rst $38
    ld l, $d7
    cp $e6
    ld b, b
    ld l, b
    ret nz

    rst $38
    ld sp, hl
    add hl, de
    cp $e0
    call nc, $fd20
    ld [bc], a
    db $fd
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    ld a, a
    rst $38
    and c
    rst $38
    ld hl, $ffff
    ldh [rIE], a
    bit 6, l
    push hl
    ld a, d
    push hl
    ld a, [$ec5a]
    pop hl
    jp $e0fe


    nop
    rst $38
    ld d, b
    ld l, c
    add e
    ld b, [hl]
    add b
    xor c
    add c
    cp $e0
    or c
    ld hl, $ddff
    ld b, b
    jr jr_046_5466

    ld h, h

jr_046_5466:
    rst $38
    xor $23
    ld b, b
    cp $ff
    dec b
    ld [de], a
    jr nz, @+$09

    rst $38
    ld [hl], h
    cp d
    or [hl]
    ldh [rIE], a
    ld e, $80
    rst $38
    rst $38
    sbc b
    cp $e0
    add b
    ld bc, $00ff
    nop
    nop
    ld b, l
    ld l, c
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $20
    and $c0
    pop af
    ld b, $c9
    rst $38
    or b
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ld l, d
    db $dd
    pop hl
    ld bc, $026f
    inc bc
    inc b
    dec b
    call nc, Call_046_6be5
    ld l, h
    jp z, $fce0

    cp l
    rst $38
    push hl
    db $e4
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    nop
    rlca
    rst $38
    ld [$0a09], sp
    dec bc
    inc c
    nop
    dec c
    ld c, $3f
    rrca
    nop
    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ret nz

    rst $38
    add sp, -$19
    rst $38
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    db $10
    ld de, $1312
    rst $38
    inc d
    dec d
    ld d, $17
    jr jr_046_54f2

    ld a, [de]
    dec de
    rst $08
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    jp z, $e8ff

    rst $20
    ld a, l
    ld a, [hl]
    rst $38
    ld b, $7f
    inc e
    dec e
    ld e, $1f
    jr nz, jr_046_5510

    rst $38
    ld [hl+], a
    inc hl

jr_046_54f2:
    inc h
    dec h
    ld h, $27
    add d
    add e
    di
    add h
    add l
    jp z, $e8ff

    rst $20
    add [hl]
    add a
    adc b
    adc c
    rst $38
    ld b, $28
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $ff
    cpl
    jr nc, jr_046_5541

jr_046_5510:
    ld [hl-], a
    adc d
    adc e
    adc h
    adc l
    db $fc
    jp z, $e8ff

    rst $20
    adc [hl]
    adc a
    sub b
    sub b
    ld b, $06
    rst $38
    ld b, $33
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_046_5562

    ccf
    ld a, [hl-]
    dec sp
    ld b, $92
    sub e
    sub h
    jp z, $e8ff

    rst $20
    rst $38
    sub l
    sub [hl]
    sub a
    sbc b
    ld b, $06
    inc a
    dec a
    rst $38
    ld a, $3f
    ld b, b

Call_046_5541:
jr_046_5541:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    rst $08
    sbc e
    sbc h
    sbc l
    sbc [hl]
    jp z, $e8ff

    rst $20
    sbc a
    and b
    rst $38
    and c
    and d
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    rst $38
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    and e

jr_046_5562:
    and h
    di
    and l
    and [hl]
    jp z, $e8ff

    rst $20
    and a
    xor b
    xor c
    xor d
    rst $38
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    rst $38
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    xor e
    xor h
    xor l
    xor [hl]
    db $fc
    jp z, $e8ff

    rst $20
    xor a
    or b
    or c
    or d
    ld e, [hl]
    ld e, a
    rst $38
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, h
    ld h, l
    ld h, [hl]
    ccf
    ld h, a
    ld l, b
    or h
    or l
    or [hl]
    xor a
    jp z, Jump_046_40ff

    cp e
    add b
    jp z, $c0ff

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    nop
    pop bc
    and b
    db $fd
    and $d2
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    cp [hl]
    di
    jp c, $ffff

Jump_046_55df:
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    xor $00
    nop
    nop
    dec b
    ld [$f0ff], sp
    dec bc
    rst $38
    rst $38
    rst $20
    and $c0
    pop af
    cp a
    rst $38
    ret nz

    rst $38
    db $10
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $20
    and $0f
    xor c
    db $ed
    call $c1ff
    ld [$0f21], a
    cp a
    db $ec
    ret nz

    rst $38
    pop bc
    db $ec
    ld a, a
    db $e4
    dec c
    ld [hl], h
    ldh a, [$86]
    db $fc
    inc a
    ret nz

    db $e4
    ld a, $e0
    add hl, bc
    dec c
    dec c
    dec c
    or l
    rst $20
    rst $38
    rst $38
    ld h, $e2
    pop hl
    ld a, [bc]
    ld a, [bc]
    jp Jump_046_7ee2


    pop hl
    add hl, bc
    ret nz

    rst $38
    ret nz

    db $fc
    ld [bc], a
    cp a
    ldh [$0a], a
    rst $38
    ldh [$ca], a
    rst $38
    add b
    jp hl


    ld a, [hl]
    pop hl
    ld a, d
    ld [c], a
    ret nz

    rst $38
    ret nz

    ret nz

    db $f4
    cp h
    db $e3
    ei
    jp nz, $e2f1

    jp z, $c0ff

    rst $28
    ld c, $0e
    ld d, d
    ld a, e
    pop bc
    inc c
    ret nz

    rst $38
    ret nz

    ld sp, hl
    add hl, bc
    add b
    ld [c], a
    ld a, [hl+]
    jp z, Jump_000_02ff

    ld b, b
    or a
    ld c, b
    rst $38
    ldh [$ca], a
    rst $38
    nop
    cp e
    jp z, $c0ff

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    dec a
    adc [hl]
    jp nc, $c0ff

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    dec sp
    or e
    jp c, $ffff

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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    xor $00
    nop
    nop
    xor $6b
    rst $38
    ld l, a
    adc $39
    nop
    nop
    rst $18
    ld e, a
    cp a
    nop
    ld [hl], c
    nop
    inc bc
    nop
    rst $18
    ld e, a
    ld c, c
    rrca
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    rst $18
    ld e, a
    cp a
    nop
    add b
    ld a, l
    inc bc
    nop
    rst $18
    ld e, a
    rst $18
    ld c, $bf
    ld bc, $0003
    rst $18
    ld c, $02
    ld [bc], a
    cp a
    nop
    inc bc
    nop
    rst $18
    ld e, a
    rst $18
    ld c, $bf

jr_046_57ee:
    nop
    inc bc
    nop
    rst $18
    ld e, a
    ld a, $2a
    cp a
    nop
    inc bc
    nop
    db $eb
    nop
    rst $38
    cp $f9
    ld a, a
    ld [c], a
    db $ec
    ld hl, sp-$01
    nop
    db $fc
    rst $38
    db $ed
    ret nz

    and $01
    rst $38
    inc bc
    rst $38

Jump_046_580d:
    inc b
    db $fc
    rst $38
    inc bc
    rst $38
    rrca
    db $fc
    ccf
    ldh a, [$7f]
    ret nz

    rst $00
    rst $38
    add b
    rst $38
    call nc, $f8e2
    ldh [$9d], a
    rst $20
    ldh [$1f], a
    rst $38
    jr jr_046_57ee

    ccf
    and b
    ld e, a
    ret nc

    cpl
    xor b
    ld a, a
    ld d, a
    push af
    ld a, [bc]
    cp $01
    db $fd
    ld [bc], a
    or c
    ldh [$fe], a
    rst $10
    ldh [$c0], a
    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$df]
    rra
    ldh a, [$1f]
    ld hl, sp+$0f
    ld [hl], b
    add sp, $7f
    nop
    rst $38
    xor a
    nop
    ld d, l
    ld [$10f8], sp
    ldh a, [rNR41]
    rst $38
    ldh [rNR41], a
    ldh [$4c], a
    ret nz

    ld c, a
    ret nz

    ld b, a
    ld d, a
    ret nz

jr_046_585f:
    ld b, [hl]
    ret nz

    add b
    pop hl
    ret nz

    cp $e0
    ld h, b
    cp $e0
    db $fd
    ldh a, [$fe]
    ldh [$0c], a
    rlca
    ld d, $03
    dec hl
    ld bc, $176f
    nop
    cpl
    nop
    db $fc
    pop hl
    ld e, a
    rlca
    jr nc, jr_046_585f

    rst $38
    inc bc
    rst $38
    cp [hl]
    db $fc
    db $fc
    ret nz

    ld hl, sp+$40
    rst $38
    rst $38
    daa
    db $fc
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$3f
    rst $38
    db $ec
    rst $00
    inc b
    rlca
    ld b, $03
    cp $7f
    ld c, a
    cp $83
    rst $38
    ld bc, $e910
    ld c, [hl]
    ldh [$fe], a
    nop
    push hl
    rst $38
    ld b, b
    cp $e0
    cp l
    ldh [$2a], a
    ldh [$35], a
    rst $28
    nop
    xor d
    nop
    ld d, l
    db $fc
    ld [c], a
    ld a, [hl+]
    nop
    dec d
    ei
    nop
    ld a, [bc]
    ld [de], a
    ldh [$bf], a
    nop
    ld e, a
    nop
    xor e
    sub [hl]
    db $ec
    db $e4
    ld a, [bc]
    nop
    ret nz

    jp hl


    ld a, a
    call nc, $c0e2
    pop bc
    cp $fb
    nop
    push af
    ret z

    ldh [rHDMA4], a
    nop
    and b
    nop
    ld b, b
    cp d
    or b
    ret nz

    push de
    cp h

jr_046_58de:
    ldh [$50], a
    nop
    add b
    sub $c3
    ld h, $ff
    ldh [rNR44], a
    ld h, b
    inc hl
    and b
    db $10
    db $10
    inc de
    rst $38
    inc de
    ld c, $0c
    jr c, jr_046_5924

    ld h, b
    ld b, b
    nop
    rst $38
    jr nc, jr_046_5909

    rlca
    ld a, h
    jr c, jr_046_58de

    ret nz

    add c
    rst $38
    nop
    rlca
    nop
    rra
    inc bc
    ld a, a
    ld c, $fc

jr_046_5909:
    rst $30
    ld a, b
    rst $00
    add b
    ld hl, sp-$20
    rrca
    rst $38
    ld sp, $1fff
    db $fc
    rst $38
    ld h, b
    rst $38
    add b
    push bc
    jp $c16a


    add sp, -$3d
    rst $38
    ld [$d515], a
    ld a, [hl+]

jr_046_5924:
    and d
    ld e, l
    call nc, $bf2b
    xor b
    ld d, a
    call nc, $ea2b
    dec d
    adc $c0
    db $fc
    rst $38
    ld a, a
    ldh a, [$ba]
    ld b, l
    ld d, h
    xor e
    jr z, @-$27

    cp a
    nop
    rst $38
    adc e
    ld [hl], h
    ld e, a
    and b
    ld c, h
    ldh [rNR41], a
    rst $38
    jp $c743


    ld b, [hl]
    rst $18
    call c, $f0ff
    db $e4
    dec [hl]
    pop bc
    ld a, b
    ld [c], a
    xor b
    add b
    ldh [$57], a
    call nz, Call_000_0101
    ld [bc], a
    ld a, a
    ld [bc], a
    inc b
    inc b
    ld [$0708], sp
    rlca
    ld b, [hl]
    jp $81fb


    add b
    adc b
    ldh [rTAC], a
    ld a, e
    ld a, a
    add l
    add a
    rst $38
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $ff01
    jr c, @+$01

    rst $38
    ldh [$fd], a
    sub b
    ld a, [$fd00]
    or b
    rst $38
    cp $f8
    db $fd
    call c, $d4fe
    rst $38
    ld c, $ff
    rst $38
    rla
    ld a, a
    cpl
    xor a
    ld l, $6f
    rrca
    cp a
    adc a
    dec b
    rlca
    inc b
    rrca
    rlca
    ld l, d
    ret nz

    sbc a
    rst $38
    ld hl, sp-$11
    call z, $c5c7
    rst $00
    rst $00
    jp nz, $c3ff

    add b
    add l
    nop
    inc e
    rst $38
    ld a, [hl]
    db $e3
    rst $38

jr_046_59b0:
    jp $9981


    sbc c
    cp l
    ld hl, $3139
    rst $08
    ld [hl], e
    ld d, c
    ld h, d
    ld b, e
    pop bc
    and e
    inc [hl]
    pop bc
    ld_long a, $ff05
    push af
    ld a, [bc]
    ld a, [$fd05]
    ld [bc], a
    ld [$3f15], a
    ld d, l
    xor d
    xor b
    ld d, a
    ld b, b
    cp a
    and [hl]
    and h
    ld [hl], a
    and $bf
    rlca
    rlca
    ld [$0b0f], sp
    inc c
    ret nz

    and l
    ldh a, [rIE]
    ldh a, [rNR10]
    ld hl, sp+$08
    jr c, jr_046_59b0

    jr c, @+$03

    cp $ff
    ld [c], a
    rrca
    rrca
    ld [$040f], sp
    rlca
    ld [bc], a
    rst $38
    inc bc
    rrca
    rrca
    ld a, a
    sbc $7f
    ld_long $ff3f, a
    db $ed
    ccf
    pop hl
    ld a, $e2
    rra
    pop af
    ld e, $f7
    ldh a, [$0c]
    ld hl, sp-$70
    and a
    ld e, $1c
    ld a, [hl]
    ld h, h
    rst $18
    inc a
    inc h
    ld [bc], a
    nop
    dec b
    ld l, c
    ret nz

    dec b
    nop
    db $fd
    dec bc
    db $10
    pop bc
    ld [bc], a
    rra
    inc b
    add [hl]
    inc bc
    ld e, h
    rst $18
    rlca
    ld hl, sp+$3f
    ret nz

    ld a, a
    cp $e5
    db $f4
    dec bc
    rst $28
    add sp, $17
    ret nc

    cpl
    sbc h
    and c
    and b
    ld e, a
    ld b, b
    rst $30
    cp a
    ld sp, $66ee
    and d
    cp $03
    db $fd
    ld b, $7f
    ld a, [$d42c]
    ld e, b
    cp b
    ld h, b
    ldh [rLCDC], a
    and l
    rst $20
    ld hl, sp+$00
    db $fc
    ld c, c
    ret nz

    ld sp, $e1ad
    pop hl
    rlca
    rst $38
    inc c
    dec b
    rlca
    ld b, $07
    ld [bc], a
    rlca
    inc bc
    rst $38
    rlca
    rrca
    rra
    di
    db $fc
    sbc a
    ldh [$38], a
    rst $38
    db $fc
    call nz, $e4fc
    dec e
    rrca
    rst $38
    di
    rst $38
    db $fc
    ccf
    ret nz

    ldh a, [rIF]
    inc bc
    ldh a, [rP1]
    ld a, a
    nop
    inc c
    inc e
    ld a, [c]
    cp $3f
    jp $e1f4


    rst $38
    rlca
    nop
    call nz, Call_000_3103
    ccf
    ld c, [hl]
    ld [hl], c
    rst $38
    ld c, a
    ld [hl], b
    add a
    ld hl, sp+$47
    ld hl, sp+$4b
    db $fc
    rst $38
    ld e, e
    db $fc
    rst $20
    db $e4
    add [hl]
    db $fc
    db $e3
    rst $38
    rst $38
    ld e, b
    rst $18
    rst $00
    ld b, a
    ret nz

    ld b, b
    and b
    ld h, b
    cp $49
    and b
    jr nz, jr_046_5ac6

    ld [$0080], sp
    pop hl
    ret nz

    rst $38
    ccf
    jr nc, jr_046_5ac6

    rrca
    rlca
    dec b
    rrca
    ld [$0cff], sp
    ld [$083f], sp
    ld a, a
    db $10
    rst $38
    jr nz, @+$01

jr_046_5ac6:
    rst $38
    jp Jump_000_0cfe


    ld hl, sp+$30
    ldh [$c0], a
    rst $38
    ret nz

    add b
    ld a, l
    ld b, d
    ld a, d
    ld h, l
    sub h
    sbc e
    ei
    db $10
    rra
    cp $c0
    ld [$1818], sp
    ld a, h

jr_046_5ae0:
    ld h, h
    ld a, a
    rra
    rst $38
    ld b, $fe
    jr jr_046_5ae0

    ldh [$58], a
    and $f9
    ret nz

    ld c, $a2
    sub c
    adc b
    inc bc
    db $fc
    rlca
    db $fc
    ld b, $fe
    cp $e2
    ld h, $fe
    inc hl
    cp $73
    rra

Call_046_5aff:
    pop af
    rst $38
    rrca
    add hl, de
    rlca
    rrca
    ld [bc], a
    rlca
    ld [hl-], a
    dec sp
    rst $38
    add hl, sp
    cpl
    ccf
    daa
    ccf
    jr nz, jr_046_5b81

    adc a
    rst $38
    ld bc, $19fe
    add [hl]
    ld a, b
    add a
    ld b, b
    cp a
    rst $38
    inc c
    jp $eb94


    adc h
    di
    rra
    nop
    cp a
    db $fc
    inc bc
    ret nz

    inc a
    rrca
    ret nz

    xor l
    add h
    add b
    ld a, a
    pop bc
    inc a
    ld bc, $c1c0
    nop
    pop hl
    cp $e0
    db $fd
    ldh [$c0], a
    add d
    push bc
    add $83
    add d
    ld b, d

jr_046_5b41:
    jp Jump_046_42ff


    jp $41c1


    pop bc
    ld b, c
    and c
    ld h, c
    cp a
    and b
    ld h, b
    ret nc

    jr nc, jr_046_5b41

    db $10
    cp $e1
    ld l, b
    rst $38
    sbc b
    ld l, b
    sbc b
    ld a, c
    adc c
    ld sp, hl
    adc c
    add hl, de
    rst $38
    ld de, $1213
    ld a, $24
    ld e, h
    ld a, b
    ld e, b
    cp a
    ld [hl], b
    or b
    ldh [$33], a
    ldh [$3f], a
    inc b
    ret nz

    add $ff
    add e
    call z, $f847
    ld c, a
    ld [hl], b
    ccf
    ldh [rIE], a
    ld a, a
    add c
    rst $38
    rlca
    cp $84

jr_046_5b81:
    db $fc
    ld [bc], a
    rst $28
    cp $02
    cp $01
    ld [bc], a
    add b
    ld a, h
    rst $38
    adc $bf
    add e
    rlca
    ld bc, $000f
    rra
    dec e
    and b
    ld a, h
    rst $38
    rra
    call c, $bb3f
    rst $38
    cp e
    rst $38
    push af
    db $fd
    rst $38
    sbc b
    ret nz

    ld h, b
    ld l, [hl]
    ldh a, [$f7]
    reti


    di
    rst $38
    db $dd
    db $db
    rst $28
    db $db
    rst $28
    xor [hl]
    rst $30
    cp $57
    ld [hl], e
    rst $38
    ret


    cp $e0
    and l
    cp $e0
    ld d, e
    cp $e0
    rst $38
    and [hl]
    rra
    ld sp, $911f
    rra
    sub e
    rrca
    rst $38
    sbc e
    adc a
    jp z, $ce87

    rst $00
    ld b, l
    rst $00
    rst $38
    push hl
    sub $e9
    jp z, $d6f5

    add sp, -$15
    rst $38
    db $f4
    rst $20
    ei
    db $ec
    db $f4
    db $fc
    db $fc
    and $ff
    and $7f
    add b
    ccf

jr_046_5be8:
    add b
    ccf
    ret nz

    ccf
    rst $38
    ret nz

    rra
    ret nz

    sbc [hl]
    ldh [$50], a
    ld h, a
    daa
    di
    jr c, jr_046_5be8

    ld b, [hl]
    ret nz

    cp $e0
    ld bc, $0ee0
    inc c
    rst $18
    ldh a, [$fc]
    ld [hl], b
    sbc [hl]
    sub b
    sbc h
    pop bc
    ld e, c
    add hl, sp
    rst $38
    dec b
    db $fd
    ld [hl], $0f
    scf
    ld c, $3b
    ld b, $ff
    dec sp
    ld b, $fa
    adc e
    ld a, [$7c8b]
    adc a
    rst $38
    db $ec
    rra
    ld hl, sp+$1f
    ret c

    ccf
    ldh a, [$3f]
    rst $38
    or b
    ld a, a
    db $dd
    ld a, $f3
    inc c
    cp $01
    rst $38
    push af
    ld a, [bc]
    ld [$f515], a
    dec bc
    jp hl


    rla
    rst $38
    jp nc, $e82e

    jr jr_046_5c8d

    or b
    and b
    ld h, b
    ld d, a
    ld b, b
    ret nz

    add b
    ld h, b
    add h
    rrca
    call nz, Call_000_0f60
    call nz, $f562
    rra
    ret nz

    ld h, c
    nop
    ld c, l
    pop hl
    cp a
    ld hl, sp-$41
    db $f4
    rst $28
    cp a
    db $f4
    rst $18
    ld a, [$e0fe]
    db $f4
    xor [hl]
    rst $30
    rst $38
    db $dd
    rst $28
    db $dd
    rst $28
    ld a, [$fa7f]
    ld a, a
    rst $38
    ld [hl], l
    cp a
    ld [hl], l
    cp a
    cp d
    ld e, a
    rst $38
    and [hl]
    cp e
    rst $38
    call $e0fe
    sbc d
    rst $38
    ld a, [$40e3]
    ld h, b
    rst $38
    rst $38
    nop
    db $e3
    and d
    pop hl
    ld sp, $18f0
    rst $38
    ld hl, sp+$0c
    db $fc
    ld b, $fe

jr_046_5c8d:
    rst $38
    rst $38
    ld [hl], c
    rst $38
    rst $38
    ld [hl], b

jr_046_5c93:
    db $e3
    db $e3
    pop af
    ldh a, [$c8]
    ret z

    rst $38
    ld b, h
    call nz, $e262
    ld d, b
    ret nc

    ret z

    ret z

    rst $38
    db $e4
    db $e4
    ccf
    ld de, $899f
    rrca
    ld b, $fe
    jp z, $9e47

    db $10
    ld a, $20
    ld a, $20
    ccf
    cp $fe
    ldh [$7f], a
    jr nz, jr_046_5d39

    ld b, b
    ld h, c
    ld b, b
    dec de
    rst $38
    ld b, $1a
    rlca
    dec e
    inc bc
    dec e
    inc bc
    dec de
    cp $8e
    and b
    dec bc
    rlca
    add a
    ld l, a
    ldh [$7f], a
    ld h, b
    ld e, a
    rst $38
    and b
    cp a
    db $10
    rra
    cp $e1
    ld [$80ea], sp
    rst $38
    db $e4
    inc e
    ret z

    jr c, jr_046_5c93

    ld d, b
    ld h, b
    and b
    rst $38
    ldh a, [$30]
    add sp, $28
    call nz, $8244
    add d
    db $e4
    ld l, $80
    ld a, [hl+]
    add c
    nop
    ld hl, sp-$7f
    db $fc
    add c
    cp a
    nop
    ld e, [hl]
    rst $38
    nop
    cp h
    ld bc, $017b
    db $fd
    inc bc
    ei
    cp a
    inc bc
    ld a, [c]
    rlca
    db $e4
    rrca
    rst $18
    ld c, b
    ldh [$9f], a
    rst $38
    ld_long a, $ffbf
    ccf
    rst $38
    ccf
    and $7f
    rst $38
    and $7f
    ret nz

    cp d
    ld e, a
    ld e, h
    xor a
    ld e, h
    cpl
    xor a
    rst $38
    rst $38
    ei
    ld h, d
    ld b, b
    inc bc
    inc d
    ld b, b
    rst $38
    db $ed
    ld [$4a00], a
    rrca
    jr nz, jr_046_5d9b

    cp $df
    add b
    db $fc
    nop
    ld sp, hl

jr_046_5d39:
    sub d
    ldh [rNR50], a
    add c
    ldh a, [rLCDC]
    add sp, $43
    nop
    inc h
    ld h, b
    call c, $aa45
    inc d
    ld [hl], e
    add b
    ld e, b
    ld b, c
    ccf
    cp $e0
    sbc d
    ret z

    ld b, h
    or b
    dec h
    ret z

    ld b, l
    ld e, h
    or b
    rst $20
    call c, Call_046_5541
    nop
    ld a, [$40d4]
    ld [$42dc], a
    and h
    sbc b
    ld b, c
    or h
    rst $20
    and b
    and [hl]
    inc h
    add h
    ld b, l
    ld [$e8f0], sp
    xor d
    ld d, h
    dec bc
    ld [c], a
    sub b
    dec h
    ld a, a
    ld l, h
    ld b, d
    cpl
    ld h, b
    ld b, d
    dec b
    add h
    ld b, d
    db $fd
    ld [$610c], a
    inc bc
    ld b, e
    rlca
    add l
    rra
    add hl, de
    and d
    ld b, b
    ld b, b
    ld b, b
    ld e, h
    ld a, [hl+]
    ld a, b
    ld b, h
    ld a, [$02f3]
    ld c, a
    ld b, b
    xor b
    ld c, b
    inc sp
    and $07

jr_046_5d9b:
    ld b, c
    set 4, l
    ld b, b
    db $fc
    db $e4
    sub a
    jp nz, $8002

    rst $20
    rst $38
    ld a, a
    ld [hl], c
    rst $38
    pop bc
    rst $38
    add c
    ei
    dec b
    rst $38
    db $fd
    inc bc
    db $eb
    rla
    sub $2a

jr_046_5db6:
    xor d
    ld d, [hl]
    ld [hl+], a
    ldh a, [$09]
    dec b
    sla b
    adc b
    ld b, [hl]
    or a
    inc h
    dec d
    rst $00
    add $a7
    ld hl, $a8e9
    db $ed
    ld b, e
    adc h
    ld [$3480], sp
    ld hl, $3080
    ret nz

    rst $38
    jr jr_046_5db6

    inc c
    ldh a, [rTMA]
    ld hl, sp+$03
    db $fc
    add sp, -$60
    rlca
    sbc c
    jp $0990


    jr z, @-$61

    jr nz, jr_046_5e3d

    xor [hl]
    add h
    rst $38
    ld a, h
    inc c
    db $f4

jr_046_5ded:
    ld [$18f8], sp
    add sp, $10
    rra
    ldh a, [$30]
    ret nc

    jr nz, @-$1e

    xor b
    push hl
    rrca
    ld b, l
    ld l, e
    jp $ba78


    jp hl


    rst $38
    res 6, [hl]
    add b
    ldh [rIF], a
    ldh a, [rTAC]
    sub [hl]
    ldh [$d9], a
    ld bc, $2204
    rst $38
    and e
    add e
    ld a, h
    cp $e3
    inc bc
    db $fc
    ld a, b
    ld bc, $0525
    ld hl, $c1d1
    ld h, b
    and b
    ret nz

    ld b, b
    call nc, $fc85
    pop bc
    push bc
    ld b, [hl]
    jr nz, jr_046_5e2a

jr_046_5e2a:
    jr c, jr_046_5e33

    ld [hl], b
    rrca
    ldh [$bf], a
    rra
    ldh [$1f], a

jr_046_5e33:
    ld bc, $0300
    ld [bc], a
    ld b, b
    db $fc
    ld a, l
    inc bc
    sbc h
    ld b, b

jr_046_5e3d:
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$2e
    ld bc, $7cdf
    add e
    ld hl, sp+$07
    ldh a, [$e2]
    ldh [$c0], a
    ccf
    db $eb
    add b
    ld a, a
    and b
    and e

jr_046_5e53:
    jr nc, jr_046_5e53

    ldh [$78], a
    rst $28
    ld a, b
    rst $18
    rst $28
    call z, Call_000_03f7
    db $fc
    cp $e3
    ld [bc], a
    db $fd
    db $ec
    ld a, [hl]
    inc bc
    ldh a, [$cb]
    add b
    rst $38
    jr nz, jr_046_5ded

    inc e
    ldh [$0e], a
    ld l, b
    ld e, [hl]
    ldh [$fe], a
    db $e3
    or b
    rst $00
    inc bc
    adc $00
    ld c, $01
    adc h
    pop hl
    ret nz

    adc b
    pop hl
    and h
    pop hl
    adc d
    ld h, c
    adc h
    pop hl
    inc [hl]
    push hl
    adc $00
    rst $38
    add b
    push af
    ld a, a
    cp $e1
    adc h
    cp $e0
    ld e, $fb
    ld e, $fb
    rst $38
    scf
    db $fd
    call z, $b6f7
    db $eb
    or [hl]
    db $eb
    rst $38
    ld c, e
    push af
    ld c, e
    push af
    and l
    ld a, [$faa5]
    ld d, a
    ld b, d
    db $fd
    ld bc, $82f8
    ld b, $fe
    ldh [$8d], a
    cp $e0
    db $fd
    jp c, Jump_000_22c8

    ld h, c
    cp a
    ld h, c
    cp a
    or c
    ld e, a
    rst $38
    or e
    ld e, a
    ld e, e
    xor a
    ld e, [hl]
    xor a
    rlca
    ld hl, sp-$11
    ld b, $f9
    add h
    ei
    or [hl]
    ld hl, $bf60
    ld h, b
    cp [hl]
    ld [$1ce0], a
    inc bc
    jr c, jr_046_5ee0

    ld a, b
    daa
    pop hl
    rra
    cp a
    ld hl, sp-$61

jr_046_5ee0:
    db $fc
    or a
    ld a, h
    rst $30
    jp nz, Jump_000_0de5

    ld a, [c]
    cp $e0
    ld a, [de]
    cp $e0
    adc h
    ld hl, $bfe0
    ldh [$bf], a
    rst $38
    or b
    ld e, a
    or c
    ld e, a
    ld e, c
    xor a
    ld e, a
    xor a
    rst $38
    scf
    db $fd
    ld l, l
    ld a, [$fa6d]
    jp nc, $fffd

    jp nc, $a1fd

    cp $a1
    cp $40
    rst $38
    sbc a
    ld b, d
    db $fd
    add c
    cp $81
    sub [hl]
    jp nz, $8396

    jp c, $b8fc

    ld h, h
    ld l, b
    add e
    inc l
    rst $10
    ld l, $d7
    cpl
    rst $10
    rst $38
    rla
    db $eb
    rla
    db $eb
    dec bc
    push af
    dec bc
    push af
    rst $18
    dec b
    ld a, [$fa05]
    or c
    ld a, d
    ldh [$5b], a
    xor a
    db $fd
    ld l, $e8
    ldh [$97], a
    db $eb
    sub a
    db $eb
    set 6, l
    ld a, a
    ld h, [hl]
    ei
    ld h, [hl]
    ei
    db $db
    push af
    db $db
    ld b, d
    ld [c], a
    rst $38
    ld b, e
    db $fd
    ld b, e
    db $fd
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    push de
    ld l, b
    cp $e0
    ret nc

    cp $e0
    and b
    cp $e0
    cpl
    rst $10
    ld a, a
    ld l, $df
    ld e, $ef
    dec e
    rst $28
    dec e
    ld [hl], d
    ldh [$d5], a
    ld a, [hl-]
    db $e4
    ldh [rLCDC], a
    cp h
    ret nz

    add b
    ld a, [hl+]
    adc d
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
    ld l, c
    rst $38
    ld e, c
    jp z, Jump_046_48e0

    rst $38
    rst $08
    ld a, b
    rst $38
    ld l, $d7
    ld e, b
    ld h, b
    adc b
    pop bc
    rst $38
    add hl, de
    cp $fe
    ldh [rSB], a
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    rst $38
    ei
    rst $38
    cp h
    inc sp
    ld h, b
    and c
    rst $38
    ld hl, $e0ff
    ld a, a
    rst $38
    bit 6, l
    push hl
    ld a, d
    push hl
    ld a, [$e1ec]
    ld e, l
    jp $e0fe


    nop
    rst $38
    add c
    cp $e0
    ld bc, $62c8
    push de

jr_046_5fb6:
    jr jr_046_5fb6

    ldh [rP1], a
    and b
    ldh [rLCDC], a
    cp h
    ld h, b
    db $fd
    rst $38
    rst $38
    cp $ff
    dec b
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    ld [hl], l
    ld [hl], h
    ld sp, hl
    ld b, b
    rst $38
    ld c, b
    ret nz

    rst $38
    rst $38
    sbc b
    cp $e0
    inc bc
    add b
    rst $38
    nop
    nop
    nop
    dec b
    ld e, a
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $20
    and $c0
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld l, b
    ret nz

    rst $38
    ret nz

    rst $38
    db $f4
    di
    ld h, b
    db $dd
    rst $20
    ld bc, $d102
    ld [c], a
    rra
    ld h, c
    ld h, d
    inc bc
    nop
    nop

Jump_046_5fff:
    db $fd
    ldh [rIE], a
    rst $38
    ld [c], a
    pop hl
    rst $30
    ld h, e
    ld h, h
    ld h, l
    db $db
    db $e3
    inc b
    dec b
    ld b, $07
    sbc l
    ld [$e0d0], sp
    ld h, [hl]
    ld h, a
    ld l, b
    ret nz

    rst $38
    add sp, -$19
    inc bc
    rst $28
    ld l, c
    ld l, d
    ld l, e
    add hl, bc
    reti


    pop hl
    ld a, [bc]
    dec bc
    inc c
    rst $38
    dec c
    ld c, $0f
    db $10
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    db $fc
    jp z, $e8ff

    rst $20
    ld [hl], b
    ld [hl], c
    inc bc
    ld [hl], d
    ld de, $ff12
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    ccf
    dec de
    inc e
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    jp z, $e8ff

    rst $20
    rst $38
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    inc bc
    inc bc
    dec e
    inc bc
    rst $38
    ld e, $1f
    jr nz, jr_046_607c

    ld [hl+], a
    inc hl
    inc h
    dec h
    rst $08
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    jp z, $e8ff

    rst $20
    ld a, a
    add b
    rst $38
    add c
    add c
    inc bc
    inc bc
    ld h, $27
    inc bc
    jr z, @+$01

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $82
    add e

jr_046_607c:
    di
    add h
    add l
    jp z, $e8ff

    rst $20
    add [hl]
    add a
    adc b
    adc c
    rst $38
    cpl
    jr nc, jr_046_60bc

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $ff
    scf
    jr c, jr_046_60cd

    ld a, [hl-]
    adc d
    adc e
    adc h
    adc l
    db $fc
    jp z, $e8ff

    rst $20
    adc [hl]
    adc a
    sub b
    sub c
    dec sp
    inc a
    rst $38
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ccf
    ld b, l
    ld b, [hl]
    sub d
    sub e
    sub h
    sub l
    jp z, $e8ff

    rst $20
    rst $38
    sub [hl]
    sub a
    sbc b

jr_046_60bc:
    sbc c
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    rst $38
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    rst $08
    sbc d
    sbc e

jr_046_60cd:
    sbc h
    sbc l
    jp z, $e8ff

    rst $20
    sbc [hl]
    sbc a
    rst $38
    and b
    and c
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    rst $38
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    and d
    and e
    inc bc
    and h
    sbc [hl]
    jp z, Jump_046_40ff

    cp a
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    db $fc
    sbc [hl]
    rst $38
    add sp, -$2e
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    pop hl
    nop
    nop
    nop
    dec b
    ld [$f0ff], sp
    dec bc
    rst $38
    rst $38
    rst $20
    and $c0
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    xor h
    and $fd
    ld [c], a
    rst $38
    rst $38
    xor $ed
    add hl, bc
    inc c
    ret nz

    rst $38
    ld a, [$0ff9]
    rrca
    ld hl, sp-$1c
    push de
    rst $38
    set 5, a
    pop bc
    pop hl
    rra
    rrca
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    ld sp, hl
    ldh [$ca], a
    rst $38
    add sp, -$19
    add e
    ld a, [bc]
    ld a, [bc]
    adc c
    db $e4
    pop bc
    ldh [$bf], a
    pop hl
    ret nz

    rst $38
    ret nz

    rst $28
    inc c
    inc e
    rst $38
    pop hl
    ret nz

    push hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jp z, $80ff

    jp hl


    rst $08
    ldh [$c2], a
    cp a
    ld [c], a
    ld c, $40
    pop hl
    pop af
    ld [c], a
    jp z, $c0ff

    db $eb
    dec c
    dec c
    jr nc, jr_046_629f

    push hl
    or d
    ld [c], a
    ret nz

    rst $38
    ret nz

    xor $0e
    ld c, $80
    ldh [rDIV], a
    ldh [$a9], a
    dec c
    ret nz

    rst $38
    ret nz

    db $f4
    ld c, $c0
    ldh [rIF], a
    ret nz

    db $e3
    ld a, [hl+]
    nop
    jp z, Jump_046_40ff

    cp a
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    cp h
    rst $38
    call nz, $c0ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
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

jr_046_629f:
    rst $38

Jump_046_62a0:
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
    db $eb
    nop
    nop
    nop
    xor $6b
    rst $38
    ld l, a
    adc $39
    nop
    nop
    rst $18
    ld e, a
    cp a
    nop
    ld [hl], c
    nop
    inc bc
    nop
    rst $18
    ld e, a
    ld c, c
    rrca

Jump_046_631e:
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    rst $18
    ld e, a
    cp a
    nop
    add b
    ld a, l
    inc bc
    nop
    rst $18
    ld e, a
    rst $18
    ld c, $bf
    ld bc, $0003
    rst $18
    ld c, $02
    ld [bc], a
    cp a
    nop
    inc bc
    nop
    rst $18
    ld e, a
    rst $18
    ld c, $bf
    nop
    inc bc
    nop
    rst $18
    ld e, a
    ld a, $2a
    cp a
    nop
    inc bc
    nop
    di
    nop
    rst $38
    cp $ec
    rst $38
    db $ed
    rst $38
    ld bc, $06ff
    rst $38
    cp $08
    ld hl, sp+$11
    ldh a, [rNR42]
    ldh [rSCX], a
    rst $38
    ret nz

    ld b, e
    ret nz

    ccf

Jump_046_6363:
    rst $38
    rst $38
    ld hl, sp+$07
    rst $38
    ld b, $01
    ld bc, $0080
    sbc b
    nop
    cp b
    rst $38
    nop
    or b
    nop
    ldh a, [rIE]
    db $fc
    rrca
    rst $38
    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_046_63a1

    rst $30
    db $10
    rra
    db $10
    or b
    pop hl
    add b
    rst $38
    ldh [$7f], a
    rst $38
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    cp [hl]
    and b
    add sp, $7f
    nop
    xor a
    nop
    ld d, l
    sub b
    pop hl
    ccf
    ld a, a

jr_046_63a1:
    rst $38
    ld h, b
    ret nz

    ld [hl], b
    ldh [$3e], a
    ld hl, sp-$39
    ld [c], a
    rst $38
    add [hl]
    add b
    add [hl]
    ldh a, [$f0]
    ld a, $0e
    inc bc
    rst $38
    ld bc, $0000
    ret nz

    nop
    ld hl, sp-$10
    nop
    rst $30
    ldh a, [rP1]
    ldh [$fe], a
    ldh [rP1], a
    pop hl
    ldh [$7a], a
    ei
    jr jr_046_63d8

    sbc b
    ldh [rNR23], a
    rrca
    jr z, jr_046_63de

    ld d, h
    rst $38
    rlca
    xor h
    rlca
    ld e, [hl]
    inc bc
    cp [hl]
    inc bc

jr_046_63d8:
    ld a, [hl]
    rst $30
    inc bc
    rst $38
    add e
    ld [hl], c

jr_046_63de:
    ldh [rSB], a
    rst $30
    ld [$d7eb], sp
    inc d
    push af
    ld a, [bc]
    db $fc
    ld [c], a
    call nc, $e390
    add b
    rst $38
    rst $38
    ret nz

    ld a, [hl]
    ret nz

    ld e, l
    ret nz

    ld l, d
    ret nz

    ld d, l
    di
    nop
    xor d
    sbc h
    ldh [$fc], a
    pop hl
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, l
    ld a, [bc]
    ld [hl-], a
    ldh [$bf], a
    nop
    ld e, a
    nop
    xor e
    db $ec
    db $e4
    rst $30
    ld a, [bc]
    nop
    ld bc, $e110
    ld bc, $0fff
    cp $ff
    ld e, $f0
    jr jr_046_648c

    add hl, de
    xor b
    rra
    ld c, e
    cp $00
    pop hl
    ldh [$fe], a
    ldh a, [rNR51]
    jr nc, jr_046_6443

    jr nc, @+$61

    inc d
    ld hl, sp+$70
    ld hl, sp-$78
    ldh a, [$c0]
    push de
    cp h
    ldh [$f7], a
    ld d, b
    nop
    add b
    or $c1
    jr c, jr_046_6455

    nop
    ld [$b0fe], a
    ld [c], a
    dec b

jr_046_6443:
    nop
    nop
    inc e
    inc e
    ld a, [hl]
    ld h, d
    rst $38
    db $e3
    add c
    inc bc
    cp a
    inc bc
    ld d, [hl]
    inc bc
    xor e
    rst $38
    inc bc
    ld d, [hl]

jr_046_6455:
    rlca
    ld c, $0f
    rrca
    rrca
    dec bc
    rst $38
    adc a
    adc d
    rst $38
    rra
    rst $38
    pop bc
    rst $38
    jr nz, @+$01

    rst $38
    nop
    rst $30
    ret nz

    db $eb
    ldh [$f5], a
    and c
    rst $38
    ld [$83e0], a
    nop
    rst $38
    ldh a, [rIE]
    ld e, $ef
    rst $38
    dec a
    rst $38
    ld [bc], a
    ld hl, sp-$20
    cp b
    rst $38
    ld a, h
    rst $38
    rst $38
    ld h, [hl]
    rst $38
    inc d
    rst $38
    inc c
    rst $38
    call nz, $ffff
    ccf

jr_046_648c:
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ei
    ldh a, [$3f]
    ret nc

    pop bc
    rst $00
    nop
    pop bc
    nop
    pop af
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    ret nz

    ld c, d
    ret nz

    di
    ret nz

    add b
    rst $38
    and $82
    ret


    inc bc
    inc bc
    inc b
    rlca
    ei
    add hl, bc
    ld c, $70
    push bc
    ld bc, $c301

Jump_046_64b8:
    jp $ff22


    db $e3
    ld [de], a
    inc sp
    dec c
    ld c, $04
    rrca
    rlca
    rst $38
    rrca
    ld e, $7f
    rst $20
    ld hl, sp+$3e
    pop bc
    ldh [rIE], a
    ld e, $03
    db $fc
    ret


    ccf
    ld e, $ff
    rst $20
    rst $38
    ld hl, sp+$7e
    add c
    ldh [rNR34], a
    rlca
    ldh [$3f], a
    rst $38
    nop
    ld hl, sp+$07
    db $e4
    db $fc
    ld a, a
    add a
    ldh [rIE], a
    rra
    ld b, $e1
    ld c, $01
    adc c
    rlca
    add e
    rst $38
    ld a, c
    inc bc
    add c
    sbc b
    ldh [$0c], a
    ldh a, [$8e]
    rst $38
    ldh a, [$97]
    ld hl, sp-$49
    ld hl, sp-$31
    ret z

    adc e
    rst $38
    adc h

jr_046_6504:
    rlca
    inc b
    adc d
    adc a
    jp c, Jump_046_55df

    rst $38
    rst $18
    rst $30
    ld a, l
    jp hl


    ld a, l
    xor h
    ld a, b
    add sp, -$01
    jr c, jr_046_6504

    add hl, sp
    db $f4
    and b
    ldh [$e0], a
    ldh [$fd], a
    ret nz

    add a
    push hl
    add b
    nop
    rst $38
    db $ec
    rst $38
    db $fc
    cp a
    rst $38
    cp a
    rst $38
    sbc h
    db $fc
    ld a, b
    or $a3
    ldh [$df], a
    ccf
    ldh [$3f], a
    ret nz

    ld a, a
    cp $e1
    add [hl]
    rst $38
    rst $28
    sbc a
    ld sp, hl
    cp b
    ldh [$82], a
    ret nz

    add hl, bc
    db $eb
    dec d
    rst $38
    push de
    dec hl
    ld [$d115], a
    ld l, $e8
    rla
    ei
    ldh a, [$8f]
    ret nc

    and e
    adc a
    adc a
    rst $38
    ldh a, [$fd]
    ld a, a
    ld [bc], a
    xor e
    ld d, l
    ld d, $ea
    ld a, [bc]
    inc c
    cp $e3
    rst $38
    ld b, $04
    dec b
    ld b, $05
    ld b, $03
    ld [bc], a
    rst $38
    ld l, [hl]
    rra
    db $f4
    rrca
    db $ec
    ld [hl], a
    jp nc, $ff5f

    rst $08
    ld c, a
    pop bc
    ld b, c
    and b
    ld h, b
    ldh [rNR41], a
    rst $38
    inc sp
    inc c
    ldh a, [rIF]
    add c
    ld a, [hl]
    add hl, de
    add [hl]
    rst $38
    add hl, hl
    sub $18
    rst $20
    xor h
    db $d3
    sub h
    db $eb
    rst $28
    add c
    ld a, b
    rra
    add b
    db $dd
    xor c
    add d
    ld bc, $ebc2
    ld bc, $e2c3
    ret nz

    pop hl
    cp $e2
    pop af
    nop
    add l
    rst $38
    add [hl]
    add l
    add [hl]
    add d
    add e
    add d
    add e
    ld b, d
    rst $38
    jp $c141


    pop bc
    ld b, c
    pop bc
    ld b, c
    add sp, -$01
    dec a
    call nc, $d43c
    ld a, $fa
    ld e, $f6
    rst $38
    rla
    pop af
    ld de, $10f0
    ret nc

    jr nc, @-$02

    ld a, a
    ld hl, sp-$08
    ld c, b
    ld a, b
    jr jr_046_65ff

    jr nz, jr_046_6615

    pop hl
    ld e, a
    pop bc
    add b
    ld a, a
    ld b, c
    nop
    ld d, l
    ret nz

    dec bc
    dec b
    ret nz

    rst $38
    dec hl
    ld [bc], a
    ld e, a
    inc c
    rst $38
    jr c, @+$01

    ldh a, [rIE]
    and $c6
    sbc $18
    sbc c
    db $10
    ld sp, $ff21
    inc de
    ld bc, $87ce
    ld hl, sp-$01
    ret nz

Jump_046_65f7:
    ld a, a
    rst $28
    ld [$fd95], a

jr_046_65fc:
    add d
    rst $08
    and c

jr_046_65ff:
    cp $01
    push af
    rst $38
    ld a, [bc]
    ld [$d515], a
    ld a, [hl+]
    inc c
    db $f4
    ld e, a
    rst $38
    and a
    rst $38
    nop
    db $fd
    ld [bc], a
    xor d
    ld d, l
    ld d, l
    cp a

jr_046_6615:
    xor d
    xor b
    ld d, a
    nop
    rst $38
    inc bc
    rst $38
    ldh [rSB], a
    cp [hl]
    rst $38
    ldh [$f8], a
    nop

jr_046_6623:
    db $fc
    nop
    cp $e3
    add b
    ldh [rIE], a
    jr nz, jr_046_65fc

    jr nc, jr_046_669e

    sub b
    ld l, b
    sbc b
    ld hl, sp-$01
    adc b
    cp b
    ret z

    ld [hl], h
    ld c, h
    ld e, e
    ld h, a
    xor h
    rst $38
    db $d3
    sub [hl]
    jp hl


    ld c, [hl]
    ld [hl], c
    ld d, [hl]
    ld l, c
    ld c, e
    rst $38
    ld [hl], h

jr_046_6646:
    ld d, a
    ld l, b
    ld c, a
    ld [hl], a
    ld d, h
    ld l, h
    ld a, a
    rst $38
    add b
    ld a, a
    add b
    ccf
    add b
    ld a, $c0
    ld [hl], b
    ld a, a
    rst $20
    sub a
    sbc b
    adc a

jr_046_665b:
    adc b
    rst $00
    call nz, $a03f
    rst $18

jr_046_6661:
    inc bc
    ret nz

    inc e
    jr jr_046_6646

    ret nz

    ld [c], a
    ld c, $f2

jr_046_666a:
    rst $38
    ld [de], a
    or d
    ld [hl], e
    inc de
    ld a, [c]
    ld l, l
    ld e, $6b
    rst $38
    inc e
    ld a, e
    inc c
    ld [hl], a
    inc c
    inc [hl]
    rrca
    ccf
    rst $38
    rlca
    ret nc

    jr nc, jr_046_6661

    jr nz, jr_046_6623

    ld h, b
    ret nz

    ld a, e
    ld b, b
    ld b, b
    ld a, [bc]
    jp nz, $0000

    ccf
    ccf
    sub d
    pop hl
    rst $38
    ld bc, $0701
    rlca
    rrca
    dec bc
    rra
    ld de, $39ef
    ld hl, $c0ff

jr_046_669e:
    ld l, a
    add d
    inc bc
    cp $1c
    db $eb
    ldh a, [$60]
    rst $20
    and b
    nop
    add h
    jp $ffe0


    ld [hl], b
    rst $38
    ccf
    ld a, $1f
    ld sp, $f811
    ld a, b
    ld [$15ff], a
    ret nc

    cpl
    xor b
    ld d, a
    ld d, b
    xor a
    and b
    rst $08
    ld e, a
    ld d, b
    xor a
    rst $38
    ld d, d
    add c
    jr nc, jr_046_666a

    cp $07
    sbc a
    ei
    inc e
    db $ec
    ldh a, [rSVBK]
    ret nz

    and d
    jr nc, jr_046_665b

jr_046_66d5:
    jr nz, jr_046_66d5

    ld l, c
    and b
    ld [hl], b
    rst $18
    pop hl
    inc sp
    ldh a, [rNR24]
    ld hl, sp-$19
    inc c
    cp $07
    ret z

    add c
    dec [hl]
    add b
    ld b, e
    db $e4
    call nz, $eeff
    ld c, [hl]
    ld a, c
    add hl, hl
    ld hl, sp+$28
    db $fc
    db $ec
    rst $38
    ld a, [$f9aa]
    sbc c
    db $fc
    ld c, h
    ld h, a
    ld h, d
    rst $38
    inc sp
    ld de, $0001
    add b
    add b
    ld b, b
    ld b, b
    cp $00
    jp nz, $f280

    ld [hl+], a
    and $24
    rst $20
    call nz, Call_000_07ff
    inc b
    rlca
    inc b
    inc c
    rlca
    ld [$ff0f], sp
    ld [$3a0f], sp
    ld b, $1a
    ld b, $16
    ld c, $ff
    inc b
    inc c
    inc b
    inc e
    ld [$1098], sp
    ldh a, [$fd]
    jr nz, jr_046_6794

    add b
    ld bc, $0301
    ld [bc], a
    ld b, $04
    rst $38
    dec c
    add hl, bc
    dec de
    ld de, $2332
    ld h, [hl]
    ld b, e
    rst $38
    di
    jp Jump_046_65f7


    db $fd
    ret c

    ldh [$c0], a
    rst $38
    ld b, b
    ret nz

    ld b, c
    ret nz

    ld h, e
    pop bc
    ld [hl], $e3
    rst $38
    add a

jr_046_6752:
    ld bc, $078e
    sbc b
    adc a
    ldh a, [$9f]
    rst $38
    ldh [$7f], a
    add e
    rst $38
    ld c, $fc
    jr c, jr_046_6752

    rst $38
    add h
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $01
    rst $38
    rst $38
    ld a, l
    rst $38
    adc $83
    rlca
    ld bc, $0107
    rst $38
    rrca
    nop
    rra
    nop
    jr nc, jr_046_678a

    ld a, h
    rra
    rst $38
    call c, $bb3f
    rst $38
    cp e
    rst $38
    push af
    rst $38
    cp $98
    ret nz

    ld h, b

jr_046_678a:
    ld l, [hl]
    ldh a, [$f7]
    reti


    di
    db $dd
    rst $38
    db $db
    rst $28
    db $db

jr_046_6794:
    rst $28
    xor [hl]
    rst $30
    ld [hl], d
    rst $18
    rst $38
    jp c, $ddef

    rst $28
    xor l
    rst $30
    xor a
    rst $30
    rst $38
    ld d, a
    ei
    ld d, a
    ei
    and [hl]
    rst $38
    ld b, e
    rst $38
    rst $38
    and $bf
    and $bf
    cp l
    rst $18
    cp l
    rst $18
    rst $38
    ld e, d
    rst $28
    ld e, d
    rst $28
    xor h
    rst $10
    jp nz, $ff7e

    db $e3
    cp a
    db $e3
    cp a
    or [hl]
    ld e, a
    or [hl]
    ld e, a
    cp a
    ld e, l
    xor a
    ld e, l
    xor a

jr_046_67cb:
    ld l, $d7
    ld c, h
    pop hl
    ld b, b
    rst $38
    ret nz

    and b
    ldh [$b8], a
    ret c

    ld l, $d6
    rla
    rst $18
    db $eb
    ld d, $eb
    add hl, bc
    rrca
    ld h, a
    add b
    inc b
    rlca
    ld sp, hl
    ld [bc], a
    dec sp
    ret nz

    jr nc, jr_046_67cb

    ldh [$e0], a
    sub c
    pop af
    adc [hl]
    rst $38
    rst $38
    ld b, b
    ld hl, sp-$04
    ld a, h
    cp $e2
    ld a, a
    rst $38
    ld sp, $0e1f
    call nz, $8c87
    add a
    ret z

    rst $38
    ld c, a
    ld a, b
    cpl
    add hl, sp
    rra
    ld sp, $711f
    rst $08
    rra
    rst $20
    cp a
    inc e
    ld b, e
    ld h, b
    ld e, b
    pop hl
    ldh [$c0], a
    db $76
    ld [bc], a
    and c
    ret nz

    add b
    db $f4
    add a
    ld bc, $0200
    or h
    and c
    cp a
    ld bc, $0017
    dec hl
    nop
    ld d, a
    ld b, l
    ld h, b
    ld e, a
    or $b5
    ld h, b
    ld a, a
    ld bc, $e14d
    cp a
    ld hl, sp-$41
    db $f4
    ld a, d
    cp $e0
    ld a, [$e0fe]
    db $f4
    xor [hl]
    rst $30
    db $dd
    ld d, b
    ldh [rIE], a
    ld a, [$fa7f]
    ld a, a
    ld [hl], l
    cp a
    ld [hl], l
    cp a
    rst $18
    cp d
    ld e, a
    and [hl]
    rst $38
    call $e0fe
    sbc d
    rst $38
    rst $18
    ld a, [$7fff]
    rst $38
    ld h, b
    and h
    ld b, b
    xor h
    rst $10
    db $fd
    ld d, $6a

Call_046_6861:
    ldh [$0b], a
    push af
    dec bc
    push af
    rst $38
    rst $38
    ld e, a
    ld [hl], c
    rst $38
    ld [hl], b
    rst $38
    ld l, $f0
    ldh [rNR22], a
    ldh a, [$e2]
    db $fd
    cp $15
    jp nz, Jump_000_03ff

    db $fc
    rrca
    ldh a, [$f8]
    rst $38
    ldh a, [$f8]
    ld hl, sp+$6c
    db $fc
    ld l, a
    ldh a, [rNR32]
    rst $38
    ldh a, [rNR23]
    ld b, b
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    rst $08
    db $fc
    inc c
    ld c, $f2
    add a
    ld b, b
    ld h, e
    ld b, b
    inc bc
    inc bc
    ld a, [hl]
    ld l, [hl]
    ld b, a
    add b
    add b
    ret nz

    ld h, b
    cp $dc
    call c, $fc40
    ld e, e
    ld b, h
    ld d, $a1
    ld b, b
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    jr nz, @+$01

    dec [hl]
    jr nz, jr_046_692e

    db $10
    cp l
    ld [$085f], sp
    rla
    rst $38
    inc b
    ld a, [hl+]
    sbc l
    ld b, b
    xor e
    ld d, b
    ldh [rHDMA4], a
    ldh [rLYC], a
    ld b, c
    db $fd
    inc bc
    db $fc
    pop hl
    cp $07
    cp $1f
    db $fc
    ccf
    db $fd
    ld hl, sp+$67
    ld h, b
    ldh [rIE], a
    ccf
    db $f4
    ccf
    ld a, [$feec]
    ldh [$62], a
    ldh [$7f], a
    add $fe
    ldh [$c0], a
    cp d
    ld e, a
    ld d, a
    ld e, h
    xor a
    ld e, h
    or [hl]
    and b
    ei
    dec sp
    ld b, b
    inc bc
    ld [hl], b
    pop hl
    and h
    cp $ec
    ldh [$2a], a
    rrca
    ret nz

    ld b, e
    call z, $fe22
    rst $18
    add b
    db $fc
    ld c, e
    nop
    ld sp, hl
    ret nz

    inc h
    add c
    sub b
    ld b, b
    add h
    ld b, e
    nop
    call nz, $2840
    ld a, h
    ld b, l
    ret z

    ld b, c
    ld [$3f41], sp
    cp $e0
    sbc d
    ld l, b
    ld b, h
    sub b
    dec h
    ld d, h
    ld l, b
    ld b, l
    or b
    rst $20
    push af
    ld b, h
    ld b, d
    ld a, [$e0f8]
    ld [$427c], a
    and h
    inc [hl]
    ld b, c
    or h

jr_046_692e:
    rst $20
    and b
    ld h, [hl]
    inc h
    inc h
    ld b, l
    ld [$e8f0], sp
    xor d
    ld d, b
    jr z, jr_046_697b

    ld d, b
    ld h, $98
    jr nz, jr_046_694c

    ld b, c
    cpl
    nop
    ld b, d
    dec b
    xor b
    ld [c], a
    ld a, a
    ld [$5400], a
    nop

jr_046_694c:
    xor b
    nop
    ld b, b
    inc l
    ld b, d
    and c
    xor d
    ld hl, sp-$20
    dec de
    add hl, hl
    adc h
    ld c, d
    ld [bc], a
    dec l
    ld [bc], a
    set 4, b
    xor b
    ld b, b
    inc sp
    and $a3
    ld hl, $45d8
    or e
    pop hl
    xor a
    ld [c], a
    db $db
    and c
    ld [bc], a
    add b
    add sp, $22
    cp a
    ld [$7b05], sp
    jr nz, jr_046_69b6

    ld b, [hl]
    ld h, a
    inc h
    dec d
    rst $10

jr_046_697b:
    add $57
    ld hl, $a8f1
    adc l
    inc bc
    ld a, h
    ld [$800e], sp
    nop
    ld h, b
    add b
    jr nc, jr_046_6a06

    ret nz

    jr @+$4a

    ld b, b
    ld b, $f8
    inc bc
    db $fc
    ld [hl], b
    rlca
    db $e4
    xor c
    jp Jump_000_0960


    jr z, jr_046_69c5

    ldh [$50], a
    inc bc
    ret nz

    ret nz

    ret nz

    dec l
    ld b, b
    jp nz, Jump_000_3e21

    ld a, $a8
    push hl
    ld d, b
    scf
    inc b
    ld b, e
    inc h
    db $fc
    cp d
    add sp, $0f
    db $eb
    ccf
    ret nz

jr_046_69b6:
    rra
    ldh [rIF], a
    ldh a, [$65]
    rlca
    sub [hl]
    ldh [rSB], a
    ld de, $0f61
    call nz, Call_046_7c83

jr_046_69c5:
    cp $e3
    jp $fc03


    or c
    dec b
    or l
    ld bc, $e11f
    ret nc

    ld b, e
    rst $38
    nop
    ld a, [$41d0]
    xor d
    ld [hl-], a
    nop
    ld a, [$b2e6]
    adc $ec
    rst $38
    inc d
    ld d, h
    xor h
    xor b
    ld e, b
    ld [$10f8], sp
    db $eb
    ldh a, [$30]
    ld h, h
    and d
    rlca
    inc e
    add b
    jr c, jr_046_69f9

    ld [hl], b
    rst $38
    rrca
    ldh [$1f], a
    ldh [$1f], a

jr_046_69f9:
    ld bc, $0300
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld bc, $03fe
    rst $18

jr_046_6a06:
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$12
    pop hl
    ld a, h
    add e
    ld [hl], a
    ld hl, sp+$07
    ldh a, [$e2]
    ldh [$c0], a
    ccf
    add b
    ld e, e
    and b
    ld a, [$a19e]

jr_046_6a1d:
    jr nc, jr_046_6a1d

    ldh [$78], a
    rst $28
    ld a, b
    rst $28
    call z, $f737
    inc bc
    db $fc
    cp $e3
    ld [bc], a
    db $fd
    ld d, [hl]
    inc bc
    ldh [$cb], a
    rst $38
    add b
    rst $38
    ldh a, [rP1]
    ld hl, sp+$00
    inc e
    ldh [rSTAT], a
    ld c, $4e
    ldh [$fe], a
    db $e3
    ld b, e
    jr nz, @-$25

    ld b, c
    daa
    nop
    inc bc
    adc b
    ldh [$03], a
    ld c, $01
    adc h
    pop hl
    adc b
    pop hl
    and h
    pop hl
    dec c
    ld h, c
    adc h
    pop hl
    inc h
    push hl
    pop de
    add b
    and e
    ld b, b
    ld d, c
    ld b, b
    ld c, l
    ld b, b
    adc h
    cp $e0
    ld e, $fb
    rst $38
    ld e, $fb
    scf
    db $fd
    call z, $b6f7
    db $eb
    rst $38
    or [hl]
    db $eb
    ld c, e
    push af
    ld c, e
    push af
    and l
    ld a, [$a5ef]
    ld a, [$fd42]
    call Call_000_0381
    rst $38
    ld b, $ea
    cp $e0
    adc l
    cp $e0
    jp c, Jump_000_2206

    ld h, c
    cp a
    ld h, c
    rst $38
    cp a
    or c
    ld e, a
    or e
    ld e, a
    ld e, e
    xor a
    ld e, [hl]
    ld a, a
    xor a
    rlca
    ld hl, sp+$06
    ld sp, hl
    add h
    ei
    xor $01
    rst $30
    ld h, b
    cp a
    ld h, b
    ld [$1ce0], a
    inc bc
    jr c, jr_046_6ab1

    db $fd
    ld a, b
    daa
    pop hl
    rra
    ld hl, sp-$61

jr_046_6ab1:
    db $fc
    or a
    ld a, h
    sub l
    rst $30
    jp nz, Jump_000_0de5

    cp $e0
    ld a, [de]
    cp $e0
    ld b, d
    ld b, d
    cp a
    rst $38
    ldh [$bf], a
    or b
    ld e, a
    or c
    ld e, a
    ld e, c
    xor a
    rst $38
    ld e, a
    xor a
    scf
    db $fd
    ld l, l
    ld a, [$fa6d]
    rst $38
    jp nc, $d2fd

    db $fd
    and c
    cp $a1
    cp $7f
    ld b, b
    rst $38
    ld b, d
    db $fd
    add c
    cp $81
    add [hl]
    jp nz, $96f2

    add e
    jp c, Jump_046_64b8

    ld l, b
    add e
    inc l
    rst $10
    ld l, $d7
    rst $30
    cpl
    rst $10
    rla
    adc $64
    dec b
    ld a, [$fa05]
    push af
    or c
    ld a, d
    ldh [$5b], a
    ld [$2e60], sp
    rst $10
    sub a
    db $eb
    rst $38
    sub a
    db $eb
    set 6, l
    ld h, [hl]
    ei
    ld h, [hl]
    ei
    rst $30
    db $db
    push af
    db $db
    ld b, d
    ld [c], a
    ld b, e
    db $fd
    ld b, e
    db $fd
    ld e, a
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    ld l, b
    cp $e0
    ret nc

    cp $e0
    db $fd
    and b
    cp $e0
    cpl
    rst $10
    ld l, $df
    ld e, $ef
    ld d, a
    dec e
    rst $28
    dec e
    ld [hl], d
    ldh [$3a], a
    db $e4
    ldh [rLCDC], a
    inc bc
    ld hl, $2afe
    adc d
    rst $38
    rst $38
    rst $18
    rst $38
    ld l, c
    rst $38
    ld e, c
    ld l, $ca
    ldh [rOBP0], a
    rst $38
    ld a, b
    ld h, b
    ld h, b
    cp $fc
    ld h, b
    adc b
    ret nz

    ei
    rst $38
    add hl, de
    cp $e0
    ld bc, $02ff
    db $fd
    ld [bc], a
    rst $28
    db $fd
    rst $38
    rst $38
    cp h
    ld [hl-], a
    ld h, b
    and c
    rst $38
    ld hl, $c07e
    ld h, b
    bit 6, l
    push hl
    ld a, d
    push hl
    ld a, [$e1ec]
    sbc l
    jp $e0fe


    nop
    rst $38
    add c
    cp $e0
    ld d, a
    ld h, c
    rst $38
    xor e
    rst $38

jr_046_6b7f:
    jr jr_046_6b7f

    ldh [rP1], a
    and b
    ldh [rLCDC], a
    cp h
    ld h, b
    db $fd
    rst $38
    rst $38
    cp $ff
    dec b
    rst $38
    inc b
    rst $38
    rlca
    db $eb
    rst $38
    ld [hl], h
    ld hl, sp+$40
    rst $38
    adc a
    nop
    rst $38
    rst $38
    sbc b
    ld b, $fe
    ldh [$80], a
    rst $38
    nop
    nop
    nop
    dec b
    ld h, c
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $20
    and $c0
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add sp, -$40
    rst $38
    ret nz

    rst $38
    db $f4
    di
    ld h, d
    db $dd
    xor $63
    ld h, h
    ld bc, $00e3
    nop
    db $fd
    ldh [rIE], a
    rst $38
    ld [c], a
    pop hl
    ld h, l
    ld h, [hl]
    ld h, a
    cp $db
    push hl
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    ld l, b
    di
    ld l, c
    ld l, d
    ret nz

    rst $38
    add sp, -$19
    ld bc, $6c6b
    ld l, l
    db $fd
    ld b, $d9

Call_046_6be5:
    ld [c], a
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    rst $08
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    jp z, $e8ff

    rst $20
    ld [hl], d
    ld [hl], e
    rst $38
    ld bc, $0d74
    ld c, $0f
    db $10
    ld de, $ff12
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_046_6c09

    ld [hl], l

jr_046_6c09:
    di
    db $76
    ld [hl], a
    jp z, $e8ff

    rst $20
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    rst $38
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$01

    ld hl, $2322
    inc h
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    db $fc
    jp z, $e8ff

    rst $20
    add b
    add c
    add d
    add d
    dec h
    ld h, $ff
    daa
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $3f
    cpl
    jr nc, @-$7a

    add l
    add [hl]
    add a
    jp z, $e8ff

    rst $20
    rst $38
    adc b
    adc c
    adc d
    adc e
    ld sp, $3332
    inc [hl]
    rst $38
    dec [hl]
    ld [hl], $37
    jr c, jr_046_6c8d

    ld a, [hl-]
    dec sp
    inc a
    rst $08
    adc h
    adc l
    adc [hl]
    adc a
    jp z, $e8ff

    rst $20
    sub b
    sub c
    rst $38
    sub d
    sub e
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    rst $38
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    sub h
    sub l
    di
    sub [hl]
    sub a
    jp z, $e8ff

    rst $20
    sbc b
    sbc c
    sbc d
    sbc e
    rst $38
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    rst $38
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_046_6c8d:
    sbc h
    sbc l
    sbc [hl]
    sbc a
    db $fc
    jp z, $e8ff

    rst $20
    and b
    and c
    and d
    and e
    ld d, l
    ld d, [hl]
    rst $38
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ccf
    ld e, a
    ld h, b
    and h
    and l
    and [hl]
    and b
    jp z, Jump_046_40ff

    cp a
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $fc
    sbc [hl]
    rst $38
    add sp, $00
    jp nc, $c0ff

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop hl
    nop
    nop
    nop
    dec b
    ld [$f0ff], sp
    dec bc
    rst $38
    rst $38
    rst $20
    and $c0
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    xor h
    and $fd
    ld [c], a
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld e, $e9
    add sp, $0f
    rrca
    rrca
    add hl, bc
    ld hl, sp-$1e
    push de
    rst $38
    set 5, c
    ld [c], a
    ret nz

    jp hl


    rrca
    ei
    db $e3
    rst $38
    rst $38
    rst $20
    and $0a
    ld a, [bc]
    rrca
    inc de
    rrca
    inc c
    rst $38
    db $e3
    add b
    pop hl
    add hl, bc
    ld a, d
    pop hl
    jp z, $c0ff

    rst $30
    adc a
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jp z, $80ff

    jp hl


    rst $08
    ldh [$0c], a
    rra
    ld c, $0e
    inc c
    inc c
    ld c, $80
    ld [c], a
    ldh a, [$e1]
    jp z, Jump_000_06ff

    ret nz

    db $ec
    dec c
    ld a, [bc]
    ret nz

    ldh [rSB], a
    pop hl
    or d
    ld [c], a
    ret nz

    rst $38
    add b
    db $ed
    ld h, h
    ld a, l
    pop hl
    ret nz

    ld [c], a
    dec c
    ret nz

    rst $38
    ret nz

    di
    dec c
    ld c, $41
    pop hl
    ld [bc], a
    ret nz

    db $e3
    ld a, [hl+]
    jp z, Jump_046_40ff

    cp a
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    cp h
    rst $38
    call nz, $c0ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    db $eb
    nop
    nop
    nop
    rst $38
    ld e, a
    rst $38
    ld a, a
    adc $39
    nop
    nop
    adc e
    ld hl, $218b
    adc e
    ld hl, $218b
    ldh [$03], a
    ld d, $33
    ld c, h
    ld e, $a0
    ld bc, $3296
    jp nc, $ec21

    db $10
    ld b, h
    ld [$67df], sp
    or h
    ld hl, $7dc0
    ldh [$03], a
    db $f4
    rra
    or h
    ld hl, $02c3
    add b
    ld bc, $1ff4
    jr nz, jr_046_6f58

    jp $8002


    ld bc, $1ff4
    jp $c002


    ld a, l
    and b
    ld bc, $0001
    rst $38
    db $ec
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop

jr_046_6f58:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $ec
    nop
    nop
    nop
    ld bc, $ff0a
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $ec
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_046_757f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_046_781e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_046_7881:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_046_7c7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_046_7c83:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_046_7cb7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_046_7ce1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_046_7ee2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_046_7fc2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_046_7fef:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
