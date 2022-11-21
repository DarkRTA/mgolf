INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $079", ROMX[$4000], BANK[$79]

    inc c
    ld b, b
    ld e, b
    ld c, c
    or $51
    ld [hl], l
    ld e, e
    adc h
    ld l, b
    or c
    ld l, b
    inc d
    ld b, b
    ld d, h
    ld b, b
    sbc a
    ld b, a
    ld b, d
    ld c, b
    nop
    nop
    rst $38
    ld bc, $7fff
    rst $28
    ld b, l
    nop
    nop
    adc $00
    ccf
    ld b, a
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $473f
    rst $38
    ld a, a
    nop
    nop
    adc $00
    rst $38
    ld bc, $13ff
    nop
    nop
    ccf
    ld b, a
    rst $38
    ld bc, $00b9
    nop
    nop
    ccf
    ld b, a
    rst $38
    ld bc, $13ff
    nop
    nop
    rst $38
    inc de
    rst $38
    ld bc, $00b9
    nop
    nop
    adc $00
    rst $38
    ld bc, $00b9
    db $fd
    nop
    rst $38
    ei
    ld bc, $0300
    inc bc
    rlca
    inc b
    rst $38
    rrca
    ld [$111e], sp
    ccf
    nop
    ld a, e
    ld b, h
    rst $38
    db $fd
    ld [bc], a
    xor $00
    ret nz

    ret nz

    ldh [$60], a
    rst $38
    ldh a, [$30]
    ld hl, sp+$18
    ld a, h
    adc h
    cp [hl]
    ld b, h
    rst $20
    sbc $20
    xor $d1
    db $ed
    or b
    push hl
    ld e, $00
    ld a, a
    rst $38
    nop
    rst $38
    nop
    db $e3
    inc e
    nop
    inc bc
    nop
    rst $20
    rlca
    nop

jr_079_4090:
    rrca
    pop af
    ldh [$c0], a
    ldh [$80], a
    dec a
    ret nz

    rst $38
    ld e, $11
    rst $30
    ld [$04bb], sp

Call_079_409f:
    db $dd
    ld [hl+], a
    rst $30
    xor $11
    ld [hl], a
    ld hl, sp-$1d
    db $10
    db $76
    adc b
    cp b
    rst $38
    ld b, b
    ret c

    jr nz, jr_079_4090

    nop
    ld h, b
    add b
    add b
    ld d, a
    nop
    add b
    rla
    ld [hl], c
    db $ec
    rst $38
    ld h, c
    db $ec
    pop bc
    ld d, c
    ld [$7cd7], a
    nop
    cp $41
    db $ec
    ld a, $91
    db $e4
    rrca
    db $10
    rst $38
    rra
    jr nz, jr_079_40fe

    db $10
    rra
    ld h, b
    cpl
    ld d, b
    ld a, a
    add b
    ld a, a
    nop
    ret nz

    rra
    jr nz, @+$01

    ld [hl], h
    ldh [$fe], a
    db $fc
    db $e3
    ldh [rTAC], a
    nop
    dec bc
    ret nz

    dec l
    ldh [rIE], a
    ld d, $f0
    rlca
    ldh a, [$0b]
    jr jr_079_40f1

    ret nz

jr_079_40f1:
    rst $38
    ld [hl+], a
    db $10
    db $76
    ld bc, $42b8
    ret c

    dec b
    rst $38
    ldh [$0a], a
    ld h, b

jr_079_40fe:
    ld de, $2680
    adc [hl]
    ld c, l
    rst $38
    dec e
    xor e
    nop
    ld d, l
    nop
    rst $28
    nop
    ld [hl], a
    rst $38
    nop
    cp e
    nop
    dec e
    nop
    rst $28
    ldh [$61], a
    ld sp, hl
    ldh [$c6], a
    rst $20
    or $eb
    rst $28
    db $10
    rst $30
    ld [$f7eb], sp
    inc d
    push af
    ld a, [bc]
    and [hl]
    db $e3
    ei
    inc b
    db $fd
    ld [bc], a
    cp $fc
    pop hl
    ld a, [$8005]
    nop
    ret nz

    nop
    ldh [$af], a
    nop
    ldh a, [rP1]
    ld hl, sp-$02
    ldh [$fc], a
    cp $e0
    rla
    ld a, a
    ld l, b
    rrca
    ld [hl], b
    rla
    ld l, b
    dec bc
    ld [hl], h
    db $fc
    pop hl
    rst $28
    dec b
    ld a, d
    dec bc
    ld [hl], h
    or b
    db $eb
    db $fd
    nop
    ld a, [bc]
    rst $38
    ld a, [$f8c1]
    ld [hl+], a
    jr c, jr_079_416b

    reti


    inc bc
    rst $38
    db $e3
    rlca
    rst $20
    rrca
    rst $08
    rra
    rst $18
    ld a, [bc]
    rst $38
    dec sp
    dec d
    ld [hl], a
    dec bc
    rst $28

jr_079_416b:
    ld d, $df
    inc l
    rst $38
    cp [hl]
    ld e, c
    ld a, l
    or e
    ei
    ld h, a
    rst $38
    xor $ff
    xor $9e
    sbc $3e
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    db $fd
    ld a, a
    db $fc
    db $fd
    db $fc
    ei
    ld hl, sp-$05
    ld hl, sp+$70
    jp hl


    rst $28
    db $fc
    nop
    di
    inc bc
    ld h, $e5
    jp Jump_000_3b00


    rst $38
    jr c, @-$29

    db $fc
    xor c
    db $fc
    ld a, [$f105]
    rst $30
    ld c, $fa
    dec b
    db $76
    pop hl
    db $fd
    ld [bc], a
    cp $01
    db $fc
    sbc [hl]
    ldh [$f6], a
    ld [c], a
    ld a, d
    add l
    db $fc
    inc bc
    ld a, d
    add l
    cp $f8
    pop hl
    ld a, h
    add b
    cp $00
    ld a, [hl]
    add b
    cp [hl]
    ccf
    ld b, b
    ld a, [hl]
    add b
    ccf
    ret nz

    ld a, a
    db $fc
    ldh [rNR23], a
    push bc
    rst $08
    dec b
    ld [bc], a
    ld a, [bc]
    dec d
    ld c, [hl]
    pop bc
    ld e, h
    pop hl
    dec b
    ld a, d
    cp a
    inc bc
    sbc h
    ld b, a
    xor b
    xor a
    ld d, b
    jp z, $fec1

    cp $fe
    and $fc
    ld bc, $01fc
    ld hl, sp+$03
    nop
    rst $38
    ccf
    ld bc, $027f
    ld a, a
    dec b
    rst $38
    dec bc
    rst $28
    rst $38
    rla
    rst $38
    dec hl
    db $fc
    ldh [$cf], a
    rst $38
    ld e, a
    rst $10
    rst $38
    rst $18

Jump_079_41fc:
    rst $38
    rst $38
    db $e3
    cp $f8
    ldh [$f7], a
    ldh a, [rIE]
    db $ec
    ldh [$eb], a
    db $e3
    rst $10
    rst $00
    adc a
    rst $08
    rst $38
    sbc a
    rst $18
    ccf
    cp a
    cp $fe
    rst $28
    rrca
    rst $38
    sbc $1f
    dec a
    ccf
    ld a, d
    ld a, a
    ld [hl], l
    ld a, a
    rst $38
    ld l, d
    ld a, a
    ld [hl], h
    ld a, a
    add sp, -$01
    ld d, b
    cp $5f
    and b
    rst $38
    ld b, b
    rst $38
    add b
    ld l, a
    add $ff
    ret c

    and b
    rst $38
    ld a, a
    nop
    ccf
    add b
    rra
    ret nz

    rra
    ret nz

    adc a
    rrca
    ldh [rTAC], a
    ldh a, [rWY]
    pop hl
    db $fc
    push hl
    add d
    ldh [rSB], a
    rst $38
    ld e, a
    and b
    ccf
    ret nz

    ld e, a
    and b
    cp a
    ld b, b
    or e
    ld a, a
    add b
    db $fc
    pop hl
    ldh a, [$ad]
    ld bc, $4002
    and e
    inc bc
    db $76
    sbc l
    and b
    ccf
    nop
    ldh [$e1], a
    rlca
    ld [$4e3f], sp
    jp z, Jump_079_41fc

    ret z

    and a
    pop hl
    ei
    inc bc
    ei
    rlca
    rst $30
    rlca
    rst $38
    rst $30
    rrca
    rst $28
    rrca
    rst $08
    cpl
    cpl
    rst $28
    sub d
    rst $38
    ldh [$2f], a
    ld b, b
    ldh [$fc], a
    pop hl
    cp a
    db $fc
    db $e4
    rst $38
    db $ed
    cp $e5
    cp $87
    ret nz

    db $fd
    add a
    ret nz

    add e
    ret nz

    ldh a, [$f7]
    pop hl
    rst $18
    or $d0
    rst $38
    and b
    rst $38
    db $fc
    pop hl
    ld b, b
    rst $38
    ei
    and b
    cp $38
    jp hl


    ldh a, [rIF]
    inc c
    inc bc
    nop
    adc a
    pop af
    nop
    cp $03
    add hl, bc
    pop bc
    res 5, b
    inc a
    pop hl
    ccf
    sbc a
    nop
    rrca
    ret nz

    ld bc, $53f0
    and b
    ld a, c
    and b
    ld a, [hl]
    adc d
    add b
    ret nz

    db $fc
    ld [c], a
    and b
    ldh a, [$87]
    add c
    db $db
    and c

jr_079_42cd:
    sub d
    adc e
    ld bc, $03ff
    inc b
    rlca
    ld [$140b], sp
    rla
    jr z, @+$01

    cpl
    ld d, b
    ld e, a
    and b
    cpl
    ret nc

    ld e, a
    and b
    sbc $43
    and $00

jr_079_42e6:
    ld hl, sp+$04
    ldh a, [$a6]
    and b
    nop
    rst $30
    rst $38
    ld hl, $02ef
    adc a
    ld bc, $0a0f
    ld c, $fd
    ld [$e0fe], sp
    inc b
    rlca
    jr nz, jr_079_42cd

    ld b, b
    sbc a
    ld a, a
    ld [bc], a
    cp a
    dec b
    ld a, a
    dec bc
    rst $38
    dec b
    inc hl
    and b
    rst $38
    nop
    ld e, a
    cpl
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    db $fd
    push af
    ld l, [hl]
    jp nz, Jump_000_0f0f

    ld bc, $fef1
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$f4ff]
    rst $38
    ld hl, sp-$02
    rst $38
    ldh a, [$f8]
    ld hl, sp-$04
    db $f4
    db $fc
    jp nz, Jump_000_3fed

    dec b
    ld [$c182], a
    nop
    add b
    sbc l
    adc b
    db $e3
    add e
    ld b, b
    ld e, e
    ldh [rHDMA4], a
    add b
    ret nc

    ret


    res 0, d
    jr c, jr_079_42e6

    db $fc
    db $e3
    ldh a, [$fe]
    ld [c], a
    ret c

    jr nc, jr_079_42cd

    cp $e5
    ld d, d
    ldh [rP1], a
    nop
    ld e, h
    pop hl
    cpl
    ret nc

    rst $38
    ld d, a
    xor b

Call_079_435a:
    dec hl
    call nc, $ea15
    ld a, [bc]
    push af
    ld b, e
    dec b
    ld a, [$8bd0]
    ld c, [hl]
    pop bc
    cp h
    and c
    ld c, $e1
    db $f4
    or h
    and d
    di
    add b
    ld b, b
    adc [hl]
    ld h, d
    reti


    add h
    inc b
    db $f4
    inc b
    rlca
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0a01
    nop
    rst $38
    rla
    nop
    cpl
    nop
    ld e, a
    nop
    sbc a
    sbc a
    rst $38
    ld e, d
    rst $18
    dec d
    rst $18
    xor d
    cp a
    sub b
    cp a
    rst $30
    jr nz, jr_079_43d6

    ld b, b
    push hl
    and b
    ld a, [bc]
    db $f4
    ld d, l
    xor d
    ei
    cp a
    ld b, b
    ld b, b
    add a
    inc a
    inc a
    ld e, h
    sbc h
    ret z

    rst $38
    ld a, [hl+]
    ret nz

    ld [hl+], a
    ret nz

    rlca
    pop bc
    ld e, $c2
    rst $30
    dec e
    push bc
    ld a, [de]
    ld d, e
    ld l, d
    add c

jr_079_43b8:
    add e
    inc bc
    ld b, $ff
    ld b, $0f
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld sp, hl
    ld a, a
    ld l, e
    and e
    and e
    and d
    sbc a
    ret nz

    rst $08
    ldh [$e7], a
    rst $38
    ret nz

    jp $8180


    nop
    nop

jr_079_43d6:
    ld [hl], b
    add b
    cpl
    jr jr_079_43db

jr_079_43db:
    ld [$5de0], sp
    add b

jr_079_43df:
    ldh [$57], a
    add b
    cp $e0
    rst $28
    ld [bc], a
    db $fd
    ld bc, $647e
    ld h, b
    ccf
    nop
    rra
    cp $c9
    ld h, c
    nop
    rlca
    cp a
    ld b, b
    ld e, a
    and b
    xor a
    ret


    ld d, b
    jr nc, jr_079_43df

    db $e4
    ldh [$fe], a
    ld a, [bc]
    and c
    ld [$f8a1], sp
    inc bc
    rst $38
    ld [hl], b
    add a
    or b
    ld b, a
    ld b, b
    xor a
    ld b, $f6
    call c, $a0c4
    cp $e0
    rra
    rst $18
    rra
    jr nz, jr_079_43b8

    ccf
    cp a
    db $fd
    xor a
    ld c, h
    ldh [$8c], a
    add b
    ld [bc], a
    ldh [$88], a
    db $fc
    ccf
    ld d, $fe
    xor [hl]
    cp $5e
    cp $32
    and c
    ld a, [bc]
    db $e3
    cp $8c
    ld h, e
    add d
    ld e, l
    add l
    ld a, [hl-]
    adc d
    dec [hl]
    add l
    rst $18
    ld a, [hl-]
    dec bc
    or h
    dec d
    ld l, d
    ld a, [$0761]
    rst $00
    ld c, a
    rlca
    rst $20
    inc bc
    di
    pop hl
    ld h, b
    ld a, [c]
    and d
    nop
    and b
    and c
    ld a, a
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    jr nz, jr_079_4477

    ld l, h
    ret nz

    ld de, $cde0
    ld h, b
    ld l, a
    ld c, b
    ld d, l
    ld h, b
    inc d
    db $e3
    add c
    ret nz

    ld b, b
    ld e, c
    ld b, h
    ld hl, sp+$49
    ret nz

    and a
    call nz, Call_079_409f
    inc b
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    db $fc
    bit 0, b

jr_079_4477:
    dec a
    ld c, d
    jr jr_079_448e

    inc e
    add hl, de
    ld a, $34
    rst $38
    ccf
    ld a, [hl-]
    ccf
    inc a
    ld a, a
    ld a, d
    ld a, a
    ld a, l
    ei
    ld a, a

jr_079_448a:
    ld a, [hl]
    rlca
    ld h, h
    ld a, [hl]

jr_079_448e:
    add b
    dec a
    jp nz, $ff03

    call nc, Call_000_2a1f
    ccf
    add b
    ld e, a
    nop
    cp a
    ld c, a
    nop
    ld a, [hl]
    ld bc, $f8fd
    add c
    ld a, [hl-]
    pop hl
    ld a, a
    rst $38
    ldh [$7e], a
    dec bc
    xor c
    cp h
    cp $7d
    db $fc
    db $fc
    db $fd
    db $fc
    pop hl
    ld sp, $fcfd
    ld [c], a
    inc a
    jp $e7fc


    cp $01
    xor $67
    db $e4
    ld h, b
    ld a, a
    ld bc, $542b

jr_079_44c4:
    rla
    add sp, $2b
    call nc, $e6fc
    db $fd
    ld l, b
    sub [hl]
    ld b, a
    rst $18
    nop
    xor a
    jr nz, jr_079_448a

    jr nc, jr_079_44c4

    ld hl, sp+$07
    db $fc
    inc bc
    rst $28
    add l
    di
    inc c
    ldh [rIE], a
    rra
    pop bc
    ld bc, $03c3
    rlca
    rlca
    rrca
    rst $18
    rst $08
    rrca
    rst $28
    ld b, $e6
    push de
    ld b, b
    sbc b
    ldh a, [$9f]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    inc b
    ld b, b
    inc l
    ld b, l
    ld a, h
    rst $38
    inc bc
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    ld a, a
    rrca
    rrca
    rlca
    rlca

jr_079_450a:
    nop
    ld [$42f5], sp
    and c
    rst $38
    cp $f9
    ld hl, sp-$0e
    push af
    push bc
    jp z, Jump_000_0f02

    dec a
    dec b
    ld a, [$2fbf]
    ld b, b
    or $63
    and h
    and e
    ld e, b
    db $e3
    rst $38

jr_079_4526:
    ld sp, hl
    db $fc

jr_079_4528:
    ld hl, sp-$07
    pop af
    ld hl, sp-$0c
    push af
    db $e3
    db $e4
    push af
    adc h
    and c
    jp nc, $ca63

    ld h, c
    ld e, a
    and b
    dec hl
    rst $38
    ld d, h
    sub a
    jr z, jr_079_450a

    inc d
    rst $20
    ld [$fcf3], sp
    sub h
    ld b, b

jr_079_4546:
    ld a, a
    add c
    or a
    jr nc, jr_079_4526

    jr jr_079_4528

    jr jr_079_4546

    db $ed
    inc c
    pop af
    cp e
    jp nz, Jump_000_00a7

    ldh a, [$08]
    db $10
    ld c, [hl]
    xor h
    ld d, d
    and h
    sub h
    add c
    db $e3
    ld b, d
    rlca
    ld b, b
    jr nz, jr_079_4579

    and h
    sub [hl]
    ld h, d
    ld a, [$8098]
    ld [bc], a
    db $fc
    ld [c], a
    ld bc, $02ff
    ld a, a
    ld bc, $3f7d
    dec b
    ld h, c
    ei
    rst $38

jr_079_4579:
    rst $30
    rst $38
    db $eb
    adc b
    add d
    ld sp, hl
    dec b
    ret nz

    ld h, [hl]
    ld c, d
    pop hl
    jp hl


    db $fd
    db $d3
    ei
    db $ec
    ld a, a
    db $ed
    sbc $de
    sbc [hl]
    sbc $3f
    cp a
    ld [hl], b
    and l
    cp $d4

jr_079_4595:
    add h
    ld l, d
    adc d
    or l
    pop bc
    sbc $e0
    rst $28
    di
    ldh a, [$f7]
    ret c

    add l
    adc b
    and l
    jp $e018


    inc c
    adc a
    ldh [$0e], a
    ldh a, [rTMA]
    ld h, b

jr_079_45ae:
    jr nz, jr_079_45ae

    ld [c], a
    inc de
    jp $ff9f


    add b
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld a, [hl]
    add c
    ld a, [hl]
    ld hl, sp+$60
    ld a, [$4961]
    rlca
    ld c, b
    and c
    ld e, [hl]
    pop hl
    ld [hl], b
    add h
    ld a, [bc]
    and $68
    pop hl
    rst $38
    inc b
    and e
    inc hl
    ld e, h
    ldh [$a7], a
    rst $30
    ld c, a
    rst $18
    rst $28
    sbc a
    rst $18
    rra
    cp a
    rst $28
    add c
    cp a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld hl, sp-$05
    db $fc
    db $fd
    cp $57
    ld b, c
    db $fc
    ld c, h
    ld b, h
    jr jr_079_4595

    ld a, [hl]
    add b
    cp a
    ret nz

    rst $08
    ldh a, [$f7]
    rst $30
    ld hl, sp-$07
    ret nz

    jp $a857


    xor d
    ld d, l
    ld hl, sp+$00
    and c
    jr z, @+$62

    ld a, b
    db $e4
    ldh [rIF], a
    ld b, b
    xor a
    and b
    rst $00
    ld c, [hl]
    ld b, b
    sbc [hl]
    ret nc

    and c
    db $fc
    push hl
    and b
    add d
    nop
    add b
    ld e, a
    add b
    ret nz

    ret nz

    ret nz

    ldh [rIE], a
    ldh [$f0], a
    rst $38
    pop hl
    inc l
    db $e4
    ret nz

    ldh [rNR42], a
    ld a, a
    inc bc
    db $fc
    ldh [$0b], a
    ld hl, sp-$20
    xor a
    ld b, a
    rst $30
    rst $18
    rst $38
    rst $28
    sub $20
    ld hl, sp+$04
    push af
    add hl, bc
    rst $38
    ld sp, hl
    dec b
    push af
    add hl, bc
    jp hl


    dec d
    pop af
    dec c
    db $fc
    db $fc
    pop hl
    ld c, e
    ld b, b
    sbc a
    ldh [$c7], a
    ld hl, sp-$5f
    cp $ff
    ret nc

    cp $e8
    cp $f4
    db $fd
    ld sp, hl
    nop
    rst $38
    sbc $15
    call c, $bc29
    inc de
    cp b
    ld l, e
    ld a, a
    ld a, b
    rst $30
    ldh a, [$f7]
    ldh a, [$e7]
    add sp, -$40
    db $eb
    rst $38
    rst $30
    rst $38
    ldh a, [$f8]
    cp b

jr_079_4672:
    ld hl, sp-$28
    db $fc
    rst $38
    db $ec
    db $fc
    call c, $eefe
    cp $f4
    cp $a3
    add sp, -$04
    sbc h
    pop hl
    db $fc
    push hl
    adc h
    pop hl
    rst $28
    ld l, [hl]
    jr nz, jr_079_4672

    cp a
    rst $38
    rst $10
    rst $38

jr_079_468f:
    db $e3
    rst $38
    db $d3
    ld l, h
    ret nz

    pop af
    rst $38
    rst $38
    jp hl


    dec d
    ret nc

    ld l, $e8
    ld d, $f4
    rst $38
    dec bc
    add sp, $17
    db $f4
    dec bc
    ld [$f515], a
    rst $38
    ld a, [bc]
    ei
    ei
    rst $30
    rst $30
    adc a
    adc a
    ld a, a
    rst $38
    ld a, a
    ld a, $be
    jr jr_079_468f

    nop
    rst $20
    nop
    rst $38
    ld sp, hl
    adc $d1
    rst $10
    ret z

    adc d
    or l
    rlca
    pop af
    ld a, b
    ld b, h
    ld h, c
    db $10
    add c
    sbc h
    pop hl
    db $eb
    rst $38
    ld [hl], a
    rst $38
    rst $38
    di
    rst $38
    ld a, c
    rst $38
    ld a, [hl-]
    rst $38
    ld e, c
    rst $38
    set 6, h
    db $fc
    jp z, $f841

    ld e, h
    add b
    cp $e1
    ld a, b
    ld hl, sp+$2f
    ld [bc], a
    ccf
    dec b
    ccf
    db $fc
    db $e3
    ld bc, $e2fc
    dec b
    inc hl
    and h
    sub e
    ld h, c
    and b
    jp $94e9


    ld b, c
    sub b
    ld b, b
    ld a, [$4288]
    db $fd
    xor $e6
    inc b
    ld a, a
    rst $38
    ccf
    cp $e0
    rra
    rst $38
    rrca
    cp b
    ld [hl], h
    ld b, b
    ld l, $a1
    add sp, -$1b
    rst $38
    rst $38
    add b
    cp d
    jr nz, @-$5e

    ccf
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    call nc, $e2cc
    inc h
    add d
    rst $38
    cp a
    nop
    rst $08
    nop
    di
    nop
    db $fc
    add b
    cp a
    rst $38
    ld d, h
    rst $38
    inc l
    rst $38
    dec d
    db $fc
    ldh [rNR14], a
    ei
    rst $38
    ld a, [bc]
    inc l
    ret nz

    ld [bc], a
    rra
    dec b
    rst $20
    ldh a, [rIE]
    ldh a, [rSVBK]
    ldh a, [$b0]
    ldh a, [rLCDC]
    ldh [rNR41], a
    ld h, d
    ld b, b
    ld h, e
    add b
    ld a, b
    pop hl
    ld l, h
    nop
    ld b, b
    ld h, b
    ld bc, $3c1f
    ld h, b
    ld [hl], l
    rra
    jr c, @+$25

    ld d, a
    jr nc, @+$22

    ld d, l
    rst $38
    xor a
    db $fc
    ldh [$f8], a
    nop
    ld b, c
    db $fc
    db $e3
    db $ec
    ld hl, $ff55
    add a
    rst $38
    ld b, e
    sub e
    rst $38
    and c
    ld b, d
    ld hl, $e28c
    ld d, h
    db $10
    ld h, $5e
    pop hl
    rrca
    jp z, $a02c

    db $eb
    inc [hl]
    and b
    ei
    ld e, h
    db $e4
    inc a
    pop hl
    ld a, [bc]
    rst $38
    push hl
    push bc
    or h
    ret nz

    ld sp, hl
    inc h
    nop
    inc a
    pop hl
    rra
    rst $38
    ld b, b
    ld sp, $1240
    pop bc
    db $10
    jp nz, $c00e

    ldh [$f0], a
    nop
    nop
    nop
    sbc l
    ld [$fdff], sp

jr_079_47a3:
    jr z, jr_079_47cd

    jr z, jr_079_47a3

    and $d3
    db $e4
    dec c
    ld [hl], e
    dec c
    dec c
    ldh [$f8], a
    ld [c], a
    ldh [$0d], a
    dec bc
    add hl, bc
    rst $38
    ldh [rSCY], a
    ldh [$f7], a
    dec bc
    ldh [$e2], a
    rst $18
    db $e3
    and b
    db $ed
    and e
    ldh [$09], a
    ret nz

    db $e3
    ld h, b
    ldh [$f2], a
    and d
    pop hl
    and b
    db $e4

jr_079_47cd:
    ret nz

    ldh a, [$84]
    pop hl
    add hl, bc
    add hl, bc
    ei
    ld [c], a
    inc l
    and b
    pop af
    jp Jump_000_09e2


    dec bc
    ld b, b
    ldh [$0a], a
    db $db
    pop hl
    ldh [$f4], a
    ld c, $c0
    ldh [$0a], a
    ld a, [bc]
    ld a, [bc]
    cp b
    ldh [$c0], a
    di
    pop bc
    ld [c], a
    rst $38
    pop hl
    ld l, $c0
    rst $28
    ld [$0f0f], sp
    ld h, b
    db $e3
    inc c
    cp l
    pop hl
    ret nz

    ret nc

    rlca
    rrca
    ld c, $0e
    ldh [$e5], a
    cp l
    push bc
    ld b, b
    xor $fc
    db $e4
    add b
    db $d3
    inc c
    ldh [rIE], a
    ld h, e
    ret nz

    ld c, $0f
    sbc d
    ldh [$e0], a
    rst $38
    and b
    rst $38
    add b
    sub $1c
    cp $aa
    rst $38
    rst $38
    ld [$4808], sp
    rst $38
    ldh [$da], a
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
    rra
    sbc h
    nop
    nop
    nop
    cp c
    nop
    rst $38
    rst $38
    rst $28
    xor $01
    ld [bc], a
    inc bc
    db $db
    ld hl, sp+$04
    rst $38
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    cp $b7
    db $f4
    dec c
    ld c, $0f
    db $10
    ld de, $1212
    rst $30
    inc de
    inc d
    dec d
    sub [hl]
    di
    ld d, $17
    jr jr_079_4884

    cp a
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    and d
    ld a, [c]
    jr nz, @+$01

    ld hl, $2322
    inc h

jr_079_487a:
    dec h
    ld h, $27
    jr z, jr_079_487a

    add hl, hl
    ld a, [hl+]
    ld d, [hl]
    rst $28
    dec hl

jr_079_4884:
    inc l
    dec l
    ld [de], a
    ld l, $ff
    cpl
    jr nc, jr_079_48bd

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $fd
    scf
    ld [hl], $ee
    jr c, jr_079_48d0

    ld [de], a
    ld [de], a
    ld a, [hl-]
    dec sp
    rst $38
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld [de], a
    ld [de], a
    db $fd
    ld b, d
    ld d, $ee
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    rst $38
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld [de], a
    ld b, c
    db $fd
    ld c, a
    or $cf
    ld d, b
    ld d, c

jr_079_48bd:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    rst $38
    ld [de], a
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    cp $d6
    rst $08
    ld e, l
    ld e, [hl]
    ld e, a

jr_079_48d0:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    cp a
    ld h, h
    ld h, l
    ld [de], a
    ld h, [hl]
    ld h, a
    ld l, b
    or a
    ret nc

    ld l, c
    rst $38
    ld l, d
    ld l, e
    ld sp, $6d6c
    ld [de], a
    ld l, [hl]
    ld l, a
    rst $30
    ld [de], a
    ld [hl], b
    ld [hl], c
    sbc b
    pop de
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld a, a
    db $76
    ld [hl], a
    ld a, b
    ld [de], a
    ld a, c
    ld a, d
    ld a, e
    ld a, c
    db $d3
    rst $38
    ld a, h
    ld a, l
    ld a, [hl]
    ld sp, $807f
    add c
    add d
    ei
    add e
    add h
    ld e, c
    call nc, Call_000_3185
    add [hl]
    ld sp, $ef87
    adc b
    adc c
    adc d
    adc e
    add hl, sp
    call nc, Call_000_318c
    adc l
    cp a
    ld sp, $8f8e
    sub b
    sub c
    sub d
    add hl, de
    call nc, $ff93
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    cp $f9
    or h
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    ld sp, $03a1
    and d
    and e
    reti


    cp a
    rst $38
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
    ld [$0000], a
    nop
    ld h, b
    ld c, c
    and b
    ld c, c
    jr c, @+$52

    call z, TimerOverflowInterrupt
    nop
    rst $28
    ld b, l
    rst $38
    ld a, a
    rst $38
    ld bc, $0000
    ccf
    ld b, a
    nop
    ld c, e
    rst $38
    ld a, a
    nop
    nop
    rst $38
    inc de
    nop
    ld c, e
    rst $38
    ld bc, $0000
    adc $00
    ccf
    ld b, a
    nop
    ld c, e
    nop
    nop
    rst $38
    ld a, a
    adc $00
    rst $38
    inc de
    nop
    nop
    ccf
    ld b, a
    rst $38
    ld bc, $13ff
    nop
    nop
    ccf
    ld b, a
    rst $38
    ld bc, $4b00
    nop
    nop
    rst $38
    ld bc, $00ce
    nop
    ld c, e
    ei
    nop
    rst $38
    cp $f4
    ldh a, [rIF]
    rst $28
    dec e
    db $dd
    ei
    dec sp
    cp e
    ldh [$e6], a
    ld a, a
    add b
    cp a

jr_079_49b2:
    ret nz

    rst $18
    rst $30
    ldh [$ef], a
    rst $38
    rst $38
    ld [c], a
    cp $fe
    db $fd
    db $fc
    rst $38
    ei
    ld hl, sp-$09
    ldh a, [$f6]
    pop af
    rst $38
    rst $38
    or a
    pop bc
    pop bc
    ld a, $bb
    ld [c], a
    cp a
    ld b, b
    db $dd
    ldh [rLCDC], a
    cp [hl]
    ldh [$e1], a
    ld a, a
    ld a, a
    and c
    ld hl, $a7de
    ldh [$ef], a
    rst $20
    db $10
    rst $18
    jr nz, jr_079_49b2

    db $e3
    ld [$bfe3], a
    ccf
    rst $18
    pop af
    rra
    ldh a, [$e7]
    or [hl]
    db $e3
    add b
    ldh [$fe], a
    ld bc, $01fd
    rst $30
    db $fd
    inc bc
    ei
    cp $e3
    ld b, $71
    dec c
    ld [c], a
    rst $38
    ld e, $c1
    dec a
    add d
    ld a, [hl-]
    add l
    ld [hl], l
    ld a, [bc]
    rst $38
    ld l, d
    dec d
    ld d, h
    dec hl
    ldh [$ef], a
    ldh a, [$f7]
    cp $fe
    push hl
    ldh [$ef], a
    ldh [$ef], a
    db $ec
    db $e3
    db $ec
    rst $38
    db $e3
    jp hl


    and $d8
    rst $00
    reti


    add $db
    ld a, a
    call nz, $c0de
    ldh [$e1], a
    ld a, a
    add b
    ld h, l
    pop hl
    cp $51
    ldh [rP1], a
    ret nz

    rrca
    nop
    ccf
    nop
    rst $38
    rst $38
    xor l
    ld d, d
    dec de
    db $e4
    ccf
    ret nz

    nop
    nop
    xor $28
    push hl
    pop hl
    ld bc, $1dfe
    ld [c], a
    ccf
    nop
    rra
    rst $38
    ret nz

    rrca
    ldh [rTAC], a
    ldh a, [rIE]
    rst $38
    ccf
    ccf
    ccf
    rst $08
    rrca
    rst $30
    rlca
    ld sp, hl
    add sp, -$1c
    ld [hl], b
    jp hl


    ld a, b
    ld e, [hl]
    pop hl
    ld a, b
    pop hl
    ld [hl], b
    pop hl
    ld bc, $00fd

jr_079_4a69:
    cp $fe
    pop hl
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$08
    ldh [$e7], a
    dec sp
    ret nz

jr_079_4a77:
    rst $18
    and d
    ldh [$3f], a
    ret nz

    rst $18
    ld hl, sp-$1e
    call z, Call_079_7ac8
    jr nz, jr_079_4a69

    cp $ff
    ldh [$fc], a
    db $fd
    db $fc
    db $fd
    or b
    ret nz

    rla
    ld hl, sp+$00
    or $aa
    call nz, $69fe
    ldh [$c4], a
    jp nz, $c29a

    cp $6a
    pop hl
    nop
    inc bc
    ld hl, sp+$01
    db $fc
    ld bc, $fbfc
    inc bc
    ld hl, sp-$02
    ldh [$78], a
    inc bc
    jr c, jr_079_4aae

    inc c

jr_079_4aae:
    ld l, [hl]
    add c
    call Call_000_1fdf
    rst $28
    ld h, d
    ldh [$fb], a
    inc bc
    ld a, l
    pop hl
    cp $7f
    pop hl
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld h, b
    ld l, a
    jr nz, @+$01

    xor a
    jr nz, jr_079_4a77

    jr nc, @-$47

    db $10
    rst $10
    db $10
    db $db
    rst $10
    nop
    add $e1
    ldh a, [rTAC]
    cp $e2
    ld bc, $8bf0
    nop
    ldh [rSTAT], a
    pop bc
    db $fc
    adc l
    ldh [$f5], a
    ldh [$9f], a
    ld [c], a
    ret nz

    adc a

jr_079_4ae6:
    nop
    jr nc, jr_079_4b19

    ldh a, [rIE]
    add sp, -$74
    pop hl

jr_079_4aee:
    db $fc
    rst $20
    ld bc, $fe9c

jr_079_4af3:
    ldh [$ee], a
    db $e4
    jr c, jr_079_4af8

jr_079_4af8:
    ld a, [hl]
    ld bc, $e4e2
    jp $dd00


    rlca
    and $e1
    add b
    nop

jr_079_4b04:
    ret nz

    pop af
    xor e
    ccf
    nop
    db $ed
    ld a, a
    rst $38
    ld [c], a
    cp a
    ccf
    cp $e5
    jr jr_079_4aee

    jr @+$01

    db $db
    ld [$0ceb], sp

jr_079_4b19:
    db $ed
    inc c
    db $ed
    inc b
    cpl
    push af

jr_079_4b1f:
    ld b, $f6
    ld b, $16
    rst $20
    cp $79
    ldh [$fe], a
    ldh [$df], a
    jr jr_079_4b04

    jr c, jr_079_4ae6

    jr c, @+$01

    ldh [$39], a
    jr c, jr_079_4af3

    inc sp
    ld sp, $3033
    inc sp
    jr nc, jr_079_4b47

    pop hl
    ldh [$3f], a
    nop
    inc a
    nop
    rst $18
    nop
    rst $38
    ld d, [hl]
    ret nz

    xor c

jr_079_4b47:
    and b
    xor [hl]
    ld h, e
    ld [c], a
    ld [hl], b
    ld [hl], b
    add c
    add a
    and h
    inc bc
    add [hl]
    ldh [rIF], a
    ldh a, [$df]
    call nz, $a975
    add e
    jp nz, $a063

    jr jr_079_4b1f

    ld e, $c0
    ei
    ccf
    add b
    cp a
    pop bc
    cp $00
    ld sp, hl
    nop
    ld [bc], a
    rst $28
    dec b
    nop
    ld de, $520e
    ldh [$3c], a
    add b
    ld a, e
    dec de
    nop
    rst $30
    cp $e0
    add sp, $00
    ld h, a
    ldh [$64], a
    ldh [$ca], a
    pop bc
    ld e, $c8
    pop bc
    rst $30
    rlca
    ld [bc], a
    ld a, [$cc3e]
    add d
    pop bc
    cp $e0
    sub e
    add b
    cp a
    cp $e1
    ld a, [hl-]
    ret nz

    db $fc
    xor c
    ld [c], a
    ld a, [bc]
    and [hl]
    ld sp, $307f
    ld hl, $0220
    nop
    rlca
    ret nz

    xor [hl]
    jp $e0bc


    and b
    dec de
    ret nz

    rra
    ldh [$1f], a
    ld h, b
    jp hl


    add e
    ld hl, sp+$3e
    add hl, sp
    call nz, Call_000_00fd
    ei
    nop
    rst $20

jr_079_4bba:
    jp c, $b6c0

    and e
    ld a, [hl]
    call $fa89
    dec b
    push af
    ld a, [bc]
    ld [$fc15], a
    pop hl
    rst $38
    push de
    ld a, [hl+]
    ld [$d415], a
    dec hl
    rst $20
    rst $20
    rst $38
    rst $28
    rst $28
    xor $ee
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    rst $38
    ldh a, [$f6]
    ret nz

    rst $08
    jp hl


    rst $28
    ld [hl], a
    rlca
    ld sp, hl
    ld [hl], a
    ld l, d
    ldh [$62], a
    pop hl
    rst $18
    rra
    ccf
    ccf
    ld a, a
    dec a
    ld a, a
    add d
    db $eb
    nop
    rst $38
    ret nz

    rst $18
    jr nz, jr_079_4bba

    ld e, $c1
    add e
    jr nc, @-$47

    ld e, $c1
    and $a1
    sbc $a1
    ld e, d
    push hl
    ld h, c

jr_079_4c07:
    add a
    ld a, a
    ld l, a
    nop
    ccf
    add b
    rra
    ld h, b
    jp nz, Jump_000_01fe

    res 0, d
    db $fd
    ld [bc], a
    add h
    pop hl
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    ei
    ld d, b
    xor a
    db $fc
    pop hl

jr_079_4c23:
    and b
    ld e, a
    ld b, b
    cp a
    or $ff
    nop
    ldh [$09], a
    ret nz

    rra
    ret nz

    rra
    add b
    ei
    ccf
    add b
    ld b, e
    ret nz

    nop
    ld a, a
    ccf
    ccf
    rst $00
    ret c

    inc d
    and a
    db $10
    xor b
    ld [hl], d
    add e
    rst $28
    rrca
    jr nc, jr_079_4c07

    jr jr_079_4c23

    add $30
    pop bc
    ld c, $ee
    jr nc, @-$3d

    jp c, $d881

    add c
    rlca
    ldh a, [$f6]
    ld d, [hl]
    and c
    nop
    cp $80
    add sp, -$80
    adc d
    ld [hl], l
    pop bc
    push bc
    ld a, $60
    add $01
    add h
    db $e3
    ld [$7ce1], sp
    db $e3
    ld b, b
    cp a
    xor $59
    ret nz

    cp $80
    ld a, [hl]
    ld [hl-], a
    add e
    ld bc, $00f9
    rst $18
    and $00
    sbc a
    nop
    ld a, b
    ret z

jr_079_4c7f:
    ld h, l
    ldh a, [$f7]
    db $e3
    ld hl, sp-$05
    ld l, e
    add e
    or d
    ret nz

    ld [hl], b
    and $07
    nop
    sbc a
    ld a, c
    rra
    sbc [hl]
    add c
    ld [c], a
    ld h, l
    rrca
    rrca
    rlca
    rst $30
    or $63
    ld a, [hl]
    ld a, h
    add l
    jr c, jr_079_4ca6

    ret nz

    ret nz

    cp $fe
    cp d
    ld h, a
    rst $38

jr_079_4ca6:
    jr z, jr_079_4c7f

    inc d
    ld l, e
    ld a, [hl+]
    push de
    inc d
    ld l, e
    cp a
    jr z, jr_079_4d05

    sub b
    xor e
    add b
    and a
    ld b, a
    and b

jr_079_4cb7:
    db $fd
    rst $08
    nop
    di
    nop
    rst $08
    ld b, $80
    xor c

jr_079_4cc0:
    pop hl
    ei
    ld [bc], a
    rst $38
    rst $30
    rst $20
    rst $20
    rst $18
    db $dd
    cp a
    cp d
    ld a, a
    rst $18
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, b
    adc [hl]
    and d
    and c
    rst $38
    ld sp, hl
    ld b, b
    add [hl]
    and e
    ld l, $c4
    ld a, b
    cp $ae
    rst $38
    rla
    rst $00
    rst $38
    dec bc
    rst $38
    cp h
    ret nz

    dec b
    ld h, c
    inc h
    ld l, b
    xor a
    ldh a, [$e7]
    ld d, a
    ld hl, sp+$2b
    adc c
    and h
    ld h, b
    ret z

    ldh [$ef], a
    ld h, b
    rst $38
    ld l, a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    jr nc, jr_079_4cb7

    jr c, @+$69

    cp e
    jr c, jr_079_4cc0

jr_079_4d05:
    ld d, d
    ld h, e
    ld c, [hl]
    ld h, c
    ld [bc], a
    ld a, [$e1fe]
    db $fd
    cp a
    rst $38
    ld [c], a
    ld e, a
    rra
    ld e, a
    rra
    sbc $1e
    rst $38
    ld l, l
    inc c
    xor e
    adc b
    rst $28
    ld [$e4ef], a
    di
    rst $18
    ret nz

    push af

jr_079_4d24:
    pop bc
    and a
    ld c, h
    db $10
    rst $38
    ld [$ffef], sp
    inc b
    rst $28
    ld a, [bc]
    db $fc
    dec b
    cp $02
    rst $38
    db $fd
    inc bc
    inc [hl]
    and b
    ld bc, $07e7
    rst $18
    rra
    cp a
    ld hl, sp-$4c
    ld h, e
    dec h
    ret nz

    call c, $80c3
    add a
    jr jr_079_4d24

    inc e
    rst $20
    db $dd
    inc e
    db $dd
    ld [hl], d
    pop bc
    ld [hl], b
    pop bc
    rlca
    rst $30
    ld [bc], a
    ei
    ld a, [$d401]
    ld h, b
    rlca
    ldh a, [rTIMA]
    ldh a, [$0a]
    rst $38
    ld [c], a
    ld a, [bc]
    ld [c], a
    dec e
    ret nz

    and a
    add b
    ld e, a
    xor $b4
    add b
    rst $18
    nop
    cp a
    cp $e4
    rst $30
    dec b
    rst $30
    ld e, a
    ld [bc], a
    rst $30
    dec b
    ei
    ld [bc], a
    adc $60
    dec b
    adc $60
    push af
    ld [bc], a
    ld sp, $8040
    ld b, $e0
    xor b
    rst $38
    ld d, h
    rst $38
    rra
    cp d
    rst $38
    db $dd
    rst $38
    ld a, [$c58e]
    db $e3
    ret nz

    sbc l
    ld b, b
    cp a
    rst $30
    add a
    nop
    ld a, [hl]
    ld bc, $b07c
    pop hl
    rrca
    ld sp, hl
    ldh [$db], a
    and b
    and [hl]
    add b

jr_079_4da5:
    rlca
    ld [hl], a
    di
    dec bc
    ld sp, hl
    rst $20
    dec b
    db $fc
    ld [bc], a
    xor h
    and e
    ldh [$a9], a
    ccf
    cp a
    sbc a
    rst $00
    ld e, a
    rra
    rst $18
    call nz, Call_000_0289
    ld h, c
    call z, Call_000_3ce1
    add b
    ld bc, $6e33
    add b
    xor c
    add c
    and e
    add h
    cp e
    add hl, hl
    xor b
    pop bc
    and h
    call nz, $e10c
    rst $38
    ld a, a
    ld a, l
    cp a
    cp [hl]
    rst $18
    ld e, a
    rst $28
    xor a
    rst $38
    rst $30
    ld [hl], a
    ei
    cp e
    db $fc
    ld e, h
    rst $38
    ccf
    rst $38
    and b
    rst $30
    ld b, b
    rst $28
    and b
    xor $40
    xor $ff
    add b
    db $dd
    nop
    db $dd
    nop

jr_079_4df2:
    ret c

    nop
    jr jr_079_4df2

    cp d
    db $e4
    add $20
    ld e, a
    and b
    cpl
    ret nc

    rrca
    ld b, b
    db $fc
    db $fc
    ld l, d
    jr jr_079_4da5

    adc a
    ld l, a
    ld c, a
    xor a
    adc a
    ld l, a
    adc a
    ld b, a
    or a
    add a
    ld [hl], a
    db $fc
    db $e3
    db $fc
    ld hl, $c770
    jr nc, @-$1d

    or e
    jp nz, $b020

    ld b, b
    xor [hl]
    ld b, h
    ret c

    ret nz

    rst $38
    inc d
    rst $38
    ld [hl], a
    ld a, [bc]
    rst $38
    rlca
    jr nz, @-$3e

    dec b
    rst $38
    inc bc
    db $fc
    ldh [rIE], a
    ld [bc], a
    cp $5e
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    rst $38
    xor a
    rst $38
    rst $18
    rst $38

jr_079_4e3d:
    rst $38
    db $fc

jr_079_4e3f:
    db $fc
    di
    rst $38
    ldh a, [rP1]
    adc h
    nop
    ld b, b
    nop
    and b
    ld bc, $c083
    inc bc
    ld a, [de]
    and b
    nop
    ldh [rNR34], a
    ld h, c
    adc b
    ld l, e
    xor b
    add d
    db $f4
    ret


    dec bc
    inc [hl]
    add c
    xor b
    add c
    add a
    ld b, c
    add b
    and l
    ld h, b
    rst $28
    rra

jr_079_4e65:
    rst $38
    rst $18
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    set 7, a
    jp $c1dd


    db $dd
    pop bc
    sbc $c0
    sbc $03
    ret nz

    xor $71
    ld hl, $82d6
    adc $81
    jp z, $ae81

    pop bc
    ld hl, sp-$38
    ld a, l
    ld [bc], a
    ld a, h
    ldh [$0b], a
    rst $38
    inc b
    rst $38
    ld [$c004], sp
    cp [hl]
    ld [hl], d
    and c
    and b
    rst $38
    ret nc

    db $fc
    ldh [$e0], a
    add $01
    cp $fa
    and b
    ld [bc], a
    nop
    nop
    rst $28
    ld h, b
    sbc $c0
    sbc a
    cp [hl]
    nop
    cp [hl]
    add b
    ld a, [hl]
    db $db
    inc h
    or $47
    ld a, a
    and $55
    ret nz

    or l
    adc d
    jr jr_079_4e3f

    jr nz, jr_079_4e3d

    and b
    ld e, [hl]
    ld b, c
    rst $00
    cp l
    add e
    ld a, e
    ld l, h
    pop hl
    ld [hl], b
    db $e3
    db $e3
    inc bc
    ei
    ld hl, sp-$1c
    cp $e1
    add c
    jr nz, @-$02

    ld d, h
    ld b, l
    ld d, c
    ldh [$1f], a
    ret z

    ld [$c0eb], sp
    rlca
    ld [hl+], a
    inc c
    rra
    ld a, [bc]
    jp $803f


    ld a, $e7
    add b
    jr nc, jr_079_4e65

    db $10
    ld b, b
    nop
    ld [hl+], a
    cp $fe
    ldh a, [$f5]
    pop af
    ld a, e
    ld b, b
    rra
    ld sp, hl
    jr nz, jr_079_4f10

    ld hl, sp-$08
    ret nz

    or a
    add $00
    ld a, $04
    ld [hl+], a
    ldh a, [rIF]
    adc b
    ld b, b
    nop
    ldh a, [$d7]
    pop bc
    db $ed
    ld h, c
    ld e, [hl]
    ld b, h
    ld b, d
    inc h
    ld sp, hl
    rlca
    ld bc, $5ff7

jr_079_4f10:
    ld bc, $03f7
    rst $30
    inc bc
    ld c, b
    ld b, b
    ld [bc], a
    or h
    add b
    cp $0e
    push bc
    nop
    adc d
    push de
    call nz, $c0eb
    rst $30
    ld e, a

jr_079_4f25:
    ld h, b
    ei
    jr nc, jr_079_4f25

    jr jr_079_4fa0

    and c
    rst $08
    ldh a, [$61]
    rst $38
    inc bc
    ei
    rlca
    rst $20
    rrca
    rst $08
    rrca
    rrca
    rst $38
    rrca
    rst $08
    rra
    sbc a
    ld hl, sp-$08
    rst $30
    ldh a, [$fe]
    ret z

    pop bc
    rst $28
    ldh [$f3], a
    db $f4
    ld hl, sp-$07
    ld a, [$f8f3]
    rra
    ld c, e
    nop
    inc [hl]
    and c
    cp h
    ld [bc], a
    cp h
    ld [bc], a
    rst $28
    jr c, @-$79

    jr c, jr_079_4f60

    ld [bc], a
    inc hl
    db $fc
    nop
    ld a, l

jr_079_4f60:
    rst $38
    nop
    dec l
    ret nc

    ld d, a
    xor b
    dec hl
    call nc, $c7f9
    ld hl, sp-$19
    ldh [$88], a
    ld b, e
    adc [hl]
    ld h, e
    jr nc, jr_079_4f99

    ld b, e
    nop
    db $fd
    ld a, e
    cp $e2
    inc bc
    db $10
    rrca
    db $10
    cpl
    db $10
    or c
    rst $28
    cp $e5
    ld l, h
    pop hl
    db $fc

Call_079_4f86:
    ld [c], a
    ld bc, $fefb
    ldh [$fd], a
    db $f4
    ld l, b
    and $a0
    jr nz, jr_079_4f97

    and $a0

jr_079_4f94:
    rla
    ldh a, [$30]

jr_079_4f97:
    cp $ff

jr_079_4f99:
    ld e, [hl]
    cp $3e
    db $fc
    ld e, h
    db $fc
    cp h

jr_079_4fa0:
    ld a, [$7a5f]
    or $f6
    ret nz

    pop bc
    ld sp, $ff4c
    cp b
    jp $fcfb


    db $fd
    adc h
    ld h, l
    ret nz

    jr jr_079_4f94

    ld b, $f0
    rst $38
    ld c, $01
    ld hl, sp+$07
    nop
    ld a, h
    inc bc
    ld a, b
    rst $38
    rlca
    and b
    sbc h
    dec d
    ld [$750a], a
    dec b
    rst $30
    ld a, [bc]
    ld [bc], a
    cp l
    add l
    add b
    cp [hl]
    nop
    inc e
    inc bc
    add a
    db $db
    ld d, l
    xor d
    ld b, $61
    ld b, c
    inc h
    or c
    ld bc, $e06a
    inc bc
    ld a, a
    ld a, b
    inc e
    ld h, c
    ld sp, $004c
    ld a, l
    sub [hl]
    add b
    rst $38
    ld a, b
    db $10
    rst $28
    add hl, bc
    or $0b
    db $f4
    ld c, $ff
    pop af
    ld c, h
    or e
    sbc h
    ld h, e
    ld e, l
    and d
    dec sp
    db $fd
    call nz, Call_079_435a
    add b
    ld a, a
    dec c
    ld a, [c]
    ld a, d
    add l
    rrca
    db $f4
    dec bc
    add sp, $17
    rlca
    inc hl
    ld b, [hl]
    ld b, c
    db $fd
    inc bc
    db $e4
    ld b, a
    cp $50
    ld b, l
    cp $fe
    ld a, a
    ld a, a
    sbc a
    rra
    ld b, a
    rst $38
    and a
    xor b
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    sbc h
    ld e, a
    sbc h
    ld a, [hl]
    ld a, [hl]
    cp $fe
    ld [hl], $a1
    rrca
    ld b, b
    ld h, a
    nop
    pop de
    and e
    jr @+$24

    nop
    nop
    nop
    ld c, c
    add hl, bc
    rst $38
    rst $38
    push hl
    db $e4
    dec bc
    rst $38
    ld [c], a
    ret c

    ldh a, [$08]
    ldh [$fc], a
    ld [c], a
    pop bc
    db $e4
    ld c, e
    rst $18
    db $fc
    sbc l
    db $e4
    ld [hl], a
    ld sp, hl
    ld c, $0b
    rrca
    db $fd
    rrca
    ld d, a
    or $0d
    add hl, bc
    ld c, $0e
    ld c, $08
    inc e
    ldh [$f7], a
    pop bc
    ldh [$0e], a
    ld c, $0f
    ld e, l
    ld hl, sp-$3f
    ldh [$e0], a
    pop hl
    ld a, [de]
    or $d0
    ld l, c
    pop bc
    db $e4
    dec c
    ld a, [bc]
    rst $38
    ldh [$d6], a
    sub $e3
    pop hl
    and b
    rst $18
    db $f4
    cp a
    ld [c], a
    ldh [$e3], a

Jump_079_5080:
    ld e, e
    ldh [$94], a
    db $d3
    ld c, c
    ret nz

    ld [c], a
    dec c
    ld c, b
    ldh [$f6], a
    and c
    db $e3
    ldh [$f3], a
    dec bc
    ld e, [hl]
    ldh [$e0], a
    ld a, [$a10b]
    ldh [rHDMA1], a
    inc c
    rst $38
    ldh [$a0], a
    pop hl
    dec b
    db $f4
    ld [$e0ff], sp
    inc c
    ld hl, $02f4
    ldh [$e6], a
    ld [$c413], sp
    rst $38
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
    db $ed
    db $ec
    nop
    nop
    nop
    db $ed
    nop
    rst $38
    rst $38
    ld bc, $dc02
    ld [c], a
    inc bc
    inc b
    dec b
    ld [hl], a
    ld b, $07
    rlca
    pop de
    rst $28
    ld [$0a09], sp
    cp h
    ld [c], a
    cp a
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    or c
    rst $28
    ld de, $12fb
    inc de
    sbc h
    pop hl
    inc d
    ld [bc], a
    dec d
    ld d, $17
    db $eb
    jr @+$1b

    cp a
    ldh a, [rNR30]
    ld a, l
    ld [c], a
    dec de
    inc e
    dec e
    ld e, a
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    ld [hl], b
    rst $28
    inc hl
    ld e, l
    pop hl
    rst $38
    inc h
    dec h
    ld h, $27
    jr z, jr_079_513c

    ld a, [hl+]
    dec hl
    db $ed
    inc l
    ld d, b
    rst $28
    dec l
    ld l, $3c
    ldh [$2f], a
    jr nc, jr_079_5151

    cp a
    ld [hl-], a
    inc sp
    jr jr_079_5159

    dec [hl]
    ld [hl], $30
    rst $28
    scf
    db $fd
    jr c, jr_079_5149

    pop hl
    add hl, sp
    ld a, [hl-]
    jr jr_079_514a

    dec sp
    inc a
    rst $10
    dec a
    ld a, $3f
    dec a
    rst $28
    ld b, b
    db $fc

jr_079_513c:
    jp nz, $4241

    cp a
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    rst $28
    rst $08
    ld c, c

jr_079_5149:
    db $fd

jr_079_514a:
    ld de, $c2db
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_079_5151:
    ld c, [hl]
    ld c, a
    db $ed
    ld d, b
    rst $08
    rst $08
    ld d, c
    ld d, d

jr_079_5159:
    cp e
    jp nz, Jump_079_5453

    ld d, l
    rst $18
    ld d, [hl]
    jr jr_079_517a

    ld d, a
    ld e, b
    xor [hl]
    rst $08
    ld e, c
    scf
    cp $9a
    pop bc
    ld e, d
    ld e, e
    jr jr_079_51cb

    ld e, l
    ld e, [hl]
    ld e, a
    db $eb
    ld h, b
    ld h, c
    sbc a
    rst $28
    ld h, d
    ld e, c
    pop hl

jr_079_517a:
    ld h, e
    ld h, h
    jr @-$3f

    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    sbc a
    rst $28
    ld l, e
    cp $5a
    ret nz

    ld l, h
    jr jr_079_51a5

    jr jr_079_51fc

    ld l, [hl]
    ld l, a
    rst $30
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld c, l
    rst $08
    ld [hl], e
    ld d, c
    nop
    nop
    rst $38
    ld [hl], h
    jr jr_079_5214

    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    db $fd

jr_079_51a5:
    ld a, e
    ld e, h
    ret nc

    ld a, h
    ld a, l
    ld a, [hl]
    scf
    ld a, a
    add b
    cp a
    add c
    add d
    add e
    add h
    add l
    add [hl]
    dec a
    ret nc

    nop
    rst $38
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    nop
    nop
    rst $28
    adc l
    adc [hl]
    adc a
    sub b
    rst $28
    or c
    sub c
    sub d
    sub e

jr_079_51cb:
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld bc, $cf9c
    cp a
    rst $38
    rst $38
    rst $38
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
    pop af
    nop
    nop
    nop
    cp $51
    ld a, $52
    pop de
    ld e, c

jr_079_51fc:
    ld l, e
    ld e, d
    nop
    nop
    rst $38
    ld a, $9c
    ld bc, $7dc0
    ret nz

    ld a, l
    rst $38
    ld a, a
    rra
    nop
    nop
    nop
    ret nz

    ld a, l
    xor [hl]
    nop
    rra
    nop

jr_079_5214:
    nop
    nop
    rst $38
    ld a, $ae
    nop
    sbc h
    ld bc, $0000
    rst $38
    ld a, $9c
    ld bc, $001f
    nop
    nop
    rst $38
    ld a, $c0
    ld a, l
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, $9c
    ld bc, $7fff
    nop
    nop
    rst $38
    ld a, $ae
    nop
    ret nz

    ld a, l
    nop
    nop
    db $fd
    nop
    rst $38
    db $f4
    rlca
    rlca
    jr @+$21

    ld [hl+], a
    dec a
    ei
    ld b, c
    ld a, [hl]
    ldh [$e1], a
    inc bc
    inc bc
    ld a, l
    ld a, [hl]
    adc a
    ld a, a
    rst $30
    ld e, a
    cp b
    cp a
    ld h, b
    ld a, c
    add $e6
    pop hl
    rst $38
    ld hl, sp-$01
    ld d, h
    xor e
    ld a, [$fdf5]
    ld c, $ff
    rst $38
    inc bc
    rst $00
    jr c, jr_079_526b

jr_079_526b:
    nop
    rst $38
    rst $38
    db $fd
    nop
    cp $e0
    and b
    ld e, a
    nop
    rst $38
    xor b
    ld d, a
    rst $38
    ret nc

    xor a
    nop
    nop
    add b
    add b
    ld a, b
    ld hl, sp-$0f
    rlca
    db $ec
    ld [c], a
    db $fc
    ld [c], a
    sbc a
    db $e4
    ldh [$e0], a
    inc e
    db $fc
    reti


    inc bc
    ldh a, [$e8]
    adc b
    db $e3
    ret nz

    ret nz

    add b
    rst $20
    rra
    rra
    rst $38
    ldh [rIE], a
    dec bc
    db $f4
    ld c, d
    ld [hl], l
    add c
    cp $bf
    adc e
    push af
    add c
    rst $38
    ld b, e

jr_079_52a8:
    ld a, l
    xor b
    pop hl
    db $fd
    rst $38
    ld [bc], a
    ldh a, [$8f]
    db $e4
    sbc e
    db $e4
    dec de
    adc $f7
    ld sp, $708f
    sbc b
    pop hl
    ld b, b
    cp a
    add a
    ld a, b
    rst $38
    daa
    ret c

    ld h, e
    sbc h
    di
    inc c
    pop af
    ld c, $ff
    pop af
    ld c, $f9
    or $0f
    db $fc
    ld [$bf55], a
    ret nc

    ld l, a
    ld [$f435], a
    dec hl

jr_079_52d8:
    db $fc
    db $e3
    call nc, $6b8d
    ld [hl], h
    pop hl
    add b
    ld a, a
    db $fc
    db $e3
    ld l, h
    pop hl
    cp $ed
    jr nz, jr_079_52a8

    ldh [rNR23], a
    ld hl, sp+$06
    cp $01
    ld h, b
    xor $80
    rst $38
    add b
    ld b, b
    ret nz

    jr nz, jr_079_52d8

    db $10
    ldh a, [rDIV]
    rst $38
    rlca
    ld [$100f], sp
    rra
    inc de
    rra
    rla
    ld a, a
    jr jr_079_5312

    inc c
    rrca
    ld [$0407], sp
    inc h
    pop hl
    add sp, -$01
    ldh [$31], a

jr_079_5312:
    rst $20
    ldh a, [$eb]
    dec e
    sub b
    ld [c], a
    rst $38
    db $fc
    ld a, a
    push hl
    rst $38
    inc hl
    ld [c], a
    rst $38
    ld sp, hl
    db $e4
    db $ec
    pop hl
    ldh a, [$7f]
    db $fc
    rst $38
    rrca
    rst $38
    jp $f58a


    ld [hl], b
    rst $38
    ld c, $e5
    db $fd
    ld [$f0e5], a
    ret c

    jp nz, $e260

    rst $38
    ld h, b
    rst $38
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    ld hl, sp+$08
    ld hl, sp-$01
    inc d
    db $ec
    inc b
    db $fc
    ld [de], a
    xor $0a
    or $ff
    dec d
    db $eb
    dec bc
    push af
    inc bc
    ld [bc], a
    ld bc, $fc01
    ld l, h
    ret


    ld sp, $40e2
    ccf
    jr nz, jr_079_537f

    jr jr_079_5369

    rst $38
    inc b
    inc bc
    inc bc
    ld bc, $fe01

jr_079_5369:
    ccf
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $00
    rst $38
    add e
    ld e, a
    di
    inc bc
    jp $9d1d


    sub a
    jp $d080


    rst $20

jr_079_537f:
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rrca
    rra
    rra
    ccf
    rst $38
    ccf
    ld a, h
    ld a, h
    ld [hl], b
    ld [hl], b
    rst $20
    rst $20
    db $fc
    di
    rst $38
    cp $40
    pop hl
    inc a
    ldh [rIF], a
    rrca
    rlca
    rlca
    cp a
    jp Jump_000_04c3


    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    pop hl
    add b
    xor [hl]
    ld c, d
    ldh [$c0], a
    rst $38
    ldh [rHDMA2], a
    and $40
    cp $e0

jr_079_53b1:
    jr nz, jr_079_53b1

    cp $e0
    dec d
    ld [$f40b], a
    ld d, l
    xor d
    rrca
    push af
    ldh a, [$fc]
    push hl
    add b
    rst $38
    ldh [$c0], a
    ld b, b
    ret nz

    ld b, b
    ld e, e
    ldh [rNR41], a
    cp $e1
    ldh a, [rNR10]
    xor a
    call z, $fe01
    pop hl
    ei
    cp $02
    cp $e1
    db $fc
    inc b
    db $fc
    ld a, h
    add e
    rst $38
    add e
    ld [hl+], a
    ld a, $41
    ld a, a
    ld c, l
    ld a, a
    sbc a
    rst $38
    di
    sbc a
    pop af
    cp a
    rst $20
    cp a
    rst $28
    cp a
    push af
    rst $28
    and b
    and a
    ld bc, $e2ff
    ret c

    rst $18
    and b
    cp a
    rst $38
    ld b, b
    ld a, a
    add c
    rst $38
    add a
    cp $0f
    ld hl, sp-$01
    rra
    pop af
    rra
    di
    ld hl, $11e1
    pop af

jr_079_540c:
    ld a, a
    db $10
    ldh a, [$e8]
    ld hl, sp-$08
    jr jr_079_540c

    ei
    ldh [rIE], a
    ld hl, sp-$08
    ldh a, [$df]
    db $fc
    rst $08
    rst $18
    jp $87f5


    cpl
    and $20
    ld h, [hl]
    ldh [$e0], a
    cp a
    sub b
    rra
    cp a
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    cp $c0
    cp $fc
    adc e
    ldh [$fc], a
    ldh [rTIMA], a
    ld_long a, $ff00
    ld d, l
    xor d
    rst $38
    ld [bc], a
    db $fd
    ld d, l
    xor d
    cpl
    ret nc

    ld d, l
    xor d
    rst $38
    ccf
    ret nz

    ld d, a
    xor b
    cp a
    ld b, b
    ld d, a
    xor b
    ccf
    rst $38

Jump_079_5453:
    nop
    ldh a, [rNR10]
    ldh a, [rNR10]
    xor l
    ret nz

    xor c
    ret nz

    db $fc
    ld [hl], b
    ldh [$fe], a
    ldh [$fe], a
    ld b, $f8
    add hl, bc
    ldh a, [rNR13]
    ccf
    ldh a, [rNR13]
    ldh [rNR43], a
    ldh [rNR42], a
    inc a
    pop hl
    db $10
    and b
    ld a, a
    ld d, b
    nop
    add sp, $00
    ret nc

    nop
    xor b
    ld hl, sp-$20
    cp $03
    and b
    add l
    nop
    pop hl
    nop
    pop af
    nop
    ld sp, hl
    ld h, a
    nop
    db $fd
    nop
    and a
    ldh [$37], a
    and b
    ld [bc], a
    inc bc
    cp $e9
    cp a
    ld bc, $3f01
    db $e3
    ccf
    rst $20
    cp $e6
    db $e3
    rst $18
    rra
    di
    ld hl, sp-$08
    cp b
    ld e, c
    pop hl
    ld hl, sp-$10
    ld a, [c]
    rst $38
    ldh [$e0], a
    rst $38
    ldh [$c0], a
    adc c
    ld bc, $0601
    rlca
    rst $38
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$17ff], sp
    jr jr_079_552e

    ld [hl], b
    sbc a
    ldh [$3f], a
    ret nz

    rst $38
    push de
    xor d
    db $eb
    ld d, h

jr_079_54c9:
    push af
    ld c, d
    rst $38
    jr nz, jr_079_54c9

    push af
    ld a, [de]
    ld de, $5fc3
    and b
    rst $38
    nop
    ld a, a
    pop hl
    add b
    pop hl
    add a
    ld e, d
    db $e3
    ld d, h
    pop hl
    ld c, d
    pop hl
    ldh a, [rNR10]
    rst $18
    db $fd
    ret nz

    cp $e1
    rst $28
    ldh [$eb], a
    db $e4
    push af
    ld a, [c]
    rst $28
    ld a, [$f8f9]
    ld hl, sp+$60
    add a
    add d
    nop
    ld d, l
    rst $38
    nop
    xor a
    nop
    ld bc, $0200
    nop
    dec b
    rst $38
    nop
    dec hl
    nop
    ld d, a
    nop
    cp a
    nop
    ld a, a

jr_079_550a:
    rst $38
    ld bc, $03ff
    add c
    ld bc, $0183
    rst $00
    rst $38
    nop
    ret nz

    ld bc, $42e0
    ldh [$80], a
    ldh a, [$df]
    ldh [rIE], a
    rst $38
    rra
    rst $30
    call z, $28e0
    nop
    ld a, l
    ld [hl], h
    jr nz, jr_079_550a

    nop
    rrca
    rrca
    rst $38

jr_079_552e:
    rst $38
    sbc [hl]
    add e
    rst $28
    db $10
    db $10
    jr nc, @+$32

    ld c, c
    ld [c], a
    ld hl, sp+$1c
    dec de
    rst $38
    ld [hl-], a
    dec l
    dec h
    ld a, [hl-]
    dec hl
    inc [hl]
    rra
    db $10
    ld a, a
    rrca
    ld c, $06
    dec b
    inc c
    dec bc
    ld e, a
    ld [hl], c
    pop bc
    cp $70
    pop hl
    ld bc, $827e
    ld a, h
    add h
    ld hl, sp+$08
    ld a, a
    rst $38
    rrca
    ld hl, sp+$18
    ldh [$60], a
    add b
    xor a
    and e
    ld a, a
    inc bc
    ld bc, $ff0f
    ret nz

    ccf
    jr c, @-$78

    and b
    db $fc
    ld l, d
    and b
    ld l, b
    and b
    ldh [$e0], a
    ldh a, [$f0]
    rra
    ldh [$b1], a
    ccf
    add hl, hl
    ldh [$3d], a
    ldh [$fe], a
    db $e3
    rst $38
    rrca
    cp $e4
    rlca
    ld [c], a
    adc b
    and b
    inc bc
    and l
    and b
    ld a, h
    ldh [$fe], a
    add sp, -$21
    rst $38
    rra
    ld a, h
    ldh a, [$ea]
    ld a, [$fef9]
    rst $38
    cp $fe
    db $fc
    cp $a0
    cp $fe
    ldh [$e0], a
    ldh a, [$c0]
    ldh a, [rP1]
    ldh [rP1], a
    cp $e2
    ld h, b
    add hl, bc
    ld c, $12
    dec e
    dec d
    ld a, [de]
    dec de
    push bc
    inc d
    ld [hl], h
    add b
    rlca
    ld d, h
    ld h, c
    jr nz, @-$3d

    ld [hl], h
    and c
    ret nz

    ld b, b
    cp $5c
    db $e3
    ld b, $1f
    ld [$103f], sp
    ld a, a
    inc a
    ei
    ld a, a
    ld [hl+], a
    ld a, $a3
    cp $0f
    ldh [rTAC], a
    ldh a, [rIE]
    xor a
    ld d, b
    ld d, [hl]
    xor c
    xor [hl]
    ld d, c
    ld e, [hl]

jr_079_55da:
    and b
    adc a
    cp h
    ld b, d
    ld a, l
    add c
    ld e, c
    db $e4
    ld de, $6da1
    ld h, d
    ld [hl], b
    rst $38
    nop
    ld a, b
    nop
    inc a
    ld b, e
    cp [hl]
    add b
    cp a
    ld a, a
    add b
    sbc a
    and b
    rst $18
    ret nz

    rst $08
    ret nc

    ld e, [hl]
    ldh [$a7], a
    adc a
    sbc a
    inc bc
    ret c

    ret nz

    db $f4
    add b
    ld a, a
    rst $38
    ldh [rIE], a
    rst $28
    di
    rst $38
    call c, Call_000_35e7
    and b
    inc c
    db $f4
    ld hl, sp+$7d
    ld a, b
    ld [hl], b
    and b
    ld [$fcf8], sp
    ldh [$f8], a
    db $76
    ldh [$fa], a
    reti


    ld d, e
    ld [bc], a
    jp nz, Jump_000_0a48

    inc bc
    rla
    nop
    xor e
    cp a
    ld bc, $105f
    ld [hl], h
    nop
    jr jr_079_55da

    ld b, h

jr_079_562f:
    jp $c7fe


    ld h, b
    add e
    ld sp, hl
    dec b
    di
    dec bc
    rst $20
    rla
    ccf
    rst $08
    cpl
    rra
    rst $18
    ccf
    ccf
    and d
    ldh [$b6], a
    ld l, b
    jr @-$1d

    ld c, d
    call c, Call_079_4f86
    ld l, b
    rrca
    ldh a, [$d7]
    and b
    ld [hl-], a
    and c
    ld a, [hl-]
    and b
    ld a, [$809e]
    rst $38
    cp d
    ld h, b
    cp b
    rst $38
    ld a, b
    ld a, a
    jr nc, jr_079_562f

    ccf
    jr nc, jr_079_56a2

    db $10
    ldh a, [$80]
    sub [hl]
    ld b, b
    nop
    ret nz

    push af
    add b
    ld de, $f0a0
    ld h, l
    add c
    ld b, b
    ret nz

    inc bc
    ld bc, $07ef
    ld [bc], a
    ld e, $0c
    ld b, [hl]
    ld b, c
    inc e
    jr jr_079_56af

    ld a, a
    ld hl, $4060
    db $fc
    db $fc
    add e
    inc bc
    push de
    and b
    cp $9c
    ld b, b
    ld [hl-], a
    jr nc, jr_079_569b

    ld l, h
    ld [bc], a
    cp d
    ld bc, $55d7
    nop
    ld a, [bc]
    sub b
    ld b, b
    ld a, [bc]
    cp l

jr_079_569b:
    and b
    xor d
    nop
    rst $38
    dec d
    nop
    xor a

jr_079_56a2:
    ld bc, $875f
    cp $7f
    rst $38
    ld a, b
    inc bc
    xor [hl]
    rlca
    ld a, h
    rrca
    cp b

jr_079_56af:
    rra

jr_079_56b0:
    rst $30
    ldh a, [$7f]
    ldh [$39], a
    ld h, b
    rlca
    rst $38
    ld b, e
    db $fc
    or a
    inc c
    ld hl, sp+$18
    ld [hl], d
    and e
    ldh a, [$30]
    ld h, d
    ld b, c
    cp $c7
    rlca
    ld hl, sp+$0f
    inc c
    pop bc
    ld c, $c3
    inc bc
    adc l
    ld b, $fe
    cp $16
    ld b, a
    ld a, b
    rst $38
    add a
    add a
    nop
    inc d
    ld h, b
    rst $38
    ret nz

    ldh a, [$e0]
    ld a, a
    ldh a, [$3f]
    rst $38
    ld e, $6f
    db $fc
    inc e
    ld hl, sp+$18
    dec [hl]
    ret nz

    ld [hl], e
    inc sp
    ld h, l
    ldh [rIE], a
    add c
    ldh [$c2], a
    jr nc, jr_079_5726

    ld [$0408], sp
    rst $38
    ld b, h
    ld [bc], a
    or d
    add b

jr_079_56fd:
    add e
    ld h, b
    ld h, l
    db $10

jr_079_5701:
    rst $38
    ld d, d
    ld [$0ce9], sp
    ld h, h
    inc b
    or h
    ld b, $ff
    ld d, d
    inc bc
    ld [hl+], a
    jr nc, jr_079_56b0

    add hl, de
    ret nc

    rra
    rst $38
    add sp, $0f
    ld h, a
    rrca
    and [hl]
    rrca
    ld b, [hl]
    rrca

jr_079_571c:
    xor [hl]
    ret z

    add b
    rst $00
    ld a, a
    pop bc
    pop hl
    add l
    rst $18
    xor b

jr_079_5726:
    jr nz, jr_079_56fd

    rst $38
    db $fc
    inc a
    ret nz

    ret nz

    ld h, b
    and b
    jr nc, jr_079_5701

    rst $38
    jr jr_079_571c

    inc c
    db $f4
    inc b
    db $fc
    ld b, $fa
    ld a, [$6092]
    inc bc
    cp $e4
    rlca
    cp $07
    ld a, [$750b]

jr_079_5746:
    ld [$40ba], sp
    db $10
    ld b, [hl]
    ld h, d
    ld b, b
    rst $38
    ld b, c
    cp $e0
    ld e, e
    ld [$f0f8], sp
    pop bc
    ld b, b
    pop bc
    ld c, b
    ld h, b
    add l
    inc h
    jr nz, jr_079_5746

    nop
    ldh [$c9], a
    add b
    db $fc
    pop hl
    ld a, [hl+]
    pop bc
    add b
    cp d
    nop
    ld e, l
    rst $38
    inc e
    jr jr_079_577a

    inc b
    ld b, $04
    rlca
    ld b, d
    ld a, [$40b5]
    ld d, b
    ret


    ld b, b
    ld d, b

jr_079_577a:
    ld bc, $0159
    add hl, hl
    rst $38
    nop
    db $10
    ld bc, $8300
    nop
    rst $38
    pop bc
    rst $30
    ld a, a
    ccf
    ccf
    ld d, $a0
    add e
    inc bc
    jp $ff83


    xor $83
    db $fc
    rst $00
    cp b
    rst $38
    nop
    cp e
    ld d, a
    nop
    push de
    sbc b
    ld [bc], a
    pop hl
    cp $e1
    ld h, b
    ld [$82ac], a
    and a
    push de

jr_079_57a8:
    nop
    and e
    ld a, c
    add d
    ld [hl], l
    add c
    dec d
    ld a, l
    add b
    ld d, a
    rst $38
    ld [bc], a
    cp $06
    ld a, [$fd03]
    inc bc
    db $fd
    db $e3
    rlca
    ld sp, hl
    db $fc
    db $e3
    ld sp, $ffa8
    ldh [$fc], a
    db $fd
    pop af
    ld d, a
    ld de, $21e1
    ld d, h
    and b
    adc b
    xor [hl]
    add b
    ld a, [hl+]
    adc d
    ret nz

    db $fd
    ld a, [hl+]
    ld e, h
    pop hl
    pop bc
    rst $38
    ld b, c
    ld a, a
    ld hl, $b53f
    ld hl, $c03a
    inc c
    ld a, [hl-]
    ret nz

    nop
    dec b
    jr c, jr_079_57a8

    ld bc, $80bd
    ld l, l
    ld h, b
    ldh [$80], a
    call nc, Call_000_2980
    add b
    ld e, a
    ld a, [c]
    add hl, de
    add b
    ld d, a
    ld e, b
    ret nz

    ld c, b
    pop hl
    dec d
    nop
    and b
    nop
    push de
    call nc, Call_079_6050
    push de
    ld hl, sp-$20
    ld d, h
    ld b, h
    ld h, c
    ld b, $03
    pop de
    ld b, $f9
    ld hl, $43b3
    ld b, e
    ld bc, $e8ba
    ldh [$aa], a
    nop
    db $fd
    sbc l
    push hl
    ld h, b
    rst $18
    add b
    rst $08
    add b
    rst $18
    nop
    ld e, a
    db $eb
    nop
    ld a, l
    nop
    ccf
    pop hl
    ld h, b
    db $eb
    dec l
    ld h, b
    cp h
    ld a, d
    inc bc
    ld a, [$070a]
    ld sp, hl
    dec bc
    push af
    db $fc
    push hl
    rla
    rst $38
    jp hl


    cpl
    pop de
    db $fc
    db $fd
    db $fd
    db $fc
    db $fd
    rst $30
    db $fc
    ld sp, hl
    ld a, [$e1fe]
    ld hl, sp-$05
    ld sp, hl
    ld a, [$16ea]
    and b
    ld a, [hl+]
    ld [de], a
    and b
    ld [$a30e], sp
    xor d
    nop
    inc bc
    jp hl


jr_079_585a:
    inc bc
    inc hl
    and d
    res 4, d
    dec b
    rst $00
    and b
    add sp, -$80
    push af
    rst $38
    ld b, b
    ld a, d
    ld b, b
    db $fd
    jr nz, jr_079_58e6

    jr nz, @-$01

    ld d, e
    db $10
    ld a, [hl]
    ccf
    jr nz, jr_079_585a

    add e
    ld b, b

jr_079_5876:
    ld a, [hl]
    jr nz, jr_079_58ce

    xor l
    ld b, b
    or b
    sub l
    pop bc
    call nc, $8985
    jp Jump_000_0797


    xor d
    ld d, l
    db $fc
    pop hl
    add b
    add a
    rst $28
    add b

jr_079_588c:
    rst $18

jr_079_588d:
    add h
    jr nz, jr_079_588c

    pop hl
    ld l, e
    add a
    ld h, $02
    jr nz, jr_079_5876

    rst $18
    inc d
    db $eb
    dec bc
    db $f4
    ld l, b
    dec b
    ld d, b
    xor a
    rst $38
    ld a, [hl+]
    push de
    dec d
    ld [$f10e], a
    ld d, $ea
    rst $38
    ld l, $d2
    ld e, [hl]
    and d

jr_079_58ae:
    ld a, [hl]
    add d
    ld e, [hl]
    and d
    rst $38
    cp [hl]
    ld b, d
    ld a, [hl]
    add d
    cp [hl]
    ld b, d
    ld hl, sp-$05
    or $51
    ldh [$fd], a
    cp $2b
    dec h
    rst $38
    cp a
    ld b, b
    ld d, l
    rst $30
    xor d
    ld a, [hl+]
    push de
    ld a, d
    nop
    ld a, a
    add b

jr_079_58ce:
    sbc a
    ldh [$78], a
    nop
    ld h, b
    db $db
    ld b, d
    and b
    nop
    inc bc
    rst $38
    rra
    cp $21
    jr nz, jr_079_595d

    add b
    inc e
    rst $38
    ld a, $e3
    ld a, a
    pop hl
    rla

jr_079_58e6:
    jr nz, jr_079_588d

jr_079_58e8:
    and b
    dec e
    ld [hl+], a
    ld b, b
    jr c, jr_079_58ae

    add sp, -$40
    ret nz

    ld h, d
    nop
    rst $38
    sub l
    ld c, a
    ldh a, [$e2]
    xor d
    ld e, e
    push hl
    ldh a, [$34]
    ld h, c
    adc a
    ld bc, $785f
    dec hl
    ld [hl+], a
    cp c
    nop
    ld l, h
    ld h, b
    add hl, bc
    ret nc

    xor a
    and b
    ld l, b
    ldh [$db], a
    jr z, jr_079_58e8

    sbc d
    pop hl
    ld a, a
    add b
    sub d
    pop hl
    ld a, [bc]
    push af
    rst $08
    dec b
    ld a, [$d42b]
    jr c, @+$43

    sub [hl]
    nop
    ld hl, sp-$55
    rst $38
    ld d, h
    push de
    ld a, [hl+]
    ld a, d
    add l
    cp l
    ld b, d
    cp $c1
    ld bc, $002f
    jr z, @+$42

    ld hl, sp+$02
    cp $e8
    ld [$0125], sp
    ld bc, $a7fc
    inc hl
    ld a, b
    ld h, e
    db $fd
    ld [bc], a
    ld [$d415], a
    dec hl
    rst $18
    and b
    ld e, a
    ld b, b
    cp a
    ret nz

    ld [hl-], a
    nop
    xor d
    ld d, l
    ld [hl], e
    ld d, b
    xor a
    rst $28
    ld h, l
    ld [hl], a
    nop

jr_079_5957:
    ret nz

    xor a
    ld d, b
    ld h, $21
    inc e

jr_079_595d:
    ldh a, [$e4]

jr_079_595f:
    dec a
    jp $aaa0


jr_079_5963:
    ld d, l
    ld c, $21
    ldh [$e0], a
    sbc d
    ld b, c
    inc a
    ld c, l
    nop
    ld [de], a
    ld hl, $f50a
    ld bc, $a0fe
    ld b, b
    dec sp
    dec b
    or [hl]
    db $ec
    ldh [$15], a
    ld [$67a6], a
    push de
    ld a, [hl+]
    di
    ret nz

    xor d
    rst $28
    rst $38
    nop
    push af
    ld a, [bc]
    ld hl, sp-$1f
    ld a, [$5405]
    di
    xor e
    and b
    or $a0
    ld [$7c03], a
    add h
    cp h
    ld b, h
    adc [hl]
    db $fc
    db $e3
    inc bc
    ld [bc], a
    ld [bc], a
    dec c
    jr nz, jr_079_5957

    and d
    dec de
    ld h, d
    add b
    rst $30
    dec sp
    nop
    xor $08
    and b
    ld d, l
    add b
    ld a, [hl+]
    nop
    rla
    ld de, $4400
    ld [$bb60], sp
    ldh a, [$e3]
    call z, $f060
    ld [c], a
    rst $38
    jr jr_079_595f

    inc c
    db $e4
    jr jr_079_5963

    inc d
    ld b, h
    rst $38
    ld [$10a0], sp
    nop
    ld [$0040], sp
    nop
    nop
    nop
    nop
    ld e, c
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    add hl, hl
    db $dd
    db $fc
    ld a, [bc]
    rst $38
    pop hl
    adc h
    rst $30
    db $e3
    ldh [$f4], a
    dec bc
    inc c
    rst $38
    ldh [$d8], a
    pop hl
    sub e
    ld a, [c]
    dec c
    or $ff
    ld [c], a
    inc c
    inc c
    ldh [$f7], a
    ld [$0d0e], sp
    dec c
    ld a, e
    dec bc
    dec bc
    ret nz

    push af
    ld [$0e0e], sp
    ld c, $e1
    ldh [$d2], a
    cp $e0
    rrca
    and b
    di
    ldh [$e0], a
    ld c, $e0
    pop hl
    ld [$000d], sp
    inc de
    di
    cp a
    ldh [$c1], a
    ld [c], a
    ldh [$f4], a
    ld h, h
    pop hl
    cp a
    pop hl
    ld [hl+], a
    di
    and c
    db $e3
    ld b, e
    ld c, $0e
    ld b, c
    ldh [$e1], a
    ld hl, sp-$01
    ret nz

    ld [c], a
    db $d3
    ld [$e262], sp
    ld c, b
    ldh [$c1], a
    ldh [$f4], a
    and d
    ld [c], a
    ld [$c1e3], sp
    ret nz

    di
    ld [$e206], sp
    nop
    ld a, h
    add $e3
    adc $62
    jp nz, $e3fb

    ld b, d
    rst $10
    ldh [$f8], a
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
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    db $e3
    ld [c], a
    ld bc, $0302
    inc b
    dec b
    ei
    ld b, $07
    rst $10
    db $f4
    rlca
    ld [$0a09], sp
    dec bc
    rst $18
    inc c
    dec c
    ld c, $0f
    db $10
    or [hl]
    di
    ld de, $ff12
    inc de
    inc d
    dec d
    ld d, $17
    ld c, $0e

jr_079_5a92:
    jr jr_079_5a92

    sub [hl]
    di
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    rst $28
    jr nz, jr_079_5aae

    ld hl, $7522
    ld a, [c]
    inc hl
    inc h
    dec h
    rst $38
    ld h, $27
    jr z, jr_079_5ad5

    ld a, [hl+]
    dec hl

jr_079_5aae:
    inc l
    dec l
    cp $55
    ld a, [c]
    ld l, $2f
    jr nc, jr_079_5ae8

    ld [hl-], a
    inc sp
    inc [hl]
    rst $28
    dec [hl]
    ld [hl], $37
    jr c, jr_079_5af5

    ld a, [c]
    add hl, sp
    ld a, [hl-]
    dec sp
    rst $38
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    cp $15
    ld a, [c]
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_079_5ad5:
    ld c, c
    ld c, d
    rst $28
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    push af
    db $d3
    ld c, a
    ld d, b
    ld d, c
    ld a, a
    ld d, d
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_079_5ae8:
    ld d, a
    push de
    pop de
    rst $38
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ei

jr_079_5af5:
    ld h, b
    ld h, c
    or a
    jp nc, Jump_079_6258

    ld h, e
    ld h, h
    ld h, l
    rst $18
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    sbc b
    db $d3
    ld l, e
    ld l, h
    rst $38
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_079_5b11:
    cp $78
    jp nc, Jump_079_7675

    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    rst $28
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld e, b
    jp nc, $8180

    add d
    rst $38
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    cp $38
    jp nc, $8c8b

    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $28
    sub d
    sub e
    sub h
    sub l
    jr jr_079_5b11

    ld b, a
    sub [hl]
    sub a
    rst $38
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld l, $f8
    or e
    and b
    and c
    and d
    rst $38
    db $e3
    and e
    ret c

    cp a
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
    push af
    nop
    nop
    nop
    ld a, l
    ld e, e
    cp l
    ld e, e
    and e
    ld h, l
    and d
    ld h, [hl]
    nop
    nop
    ccf
    ccf
    rst $38
    ld a, a
    rra
    nop
    nop
    nop
    db $ec
    nop
    daa
    ld [bc], a
    rst $38
    ld a, a
    daa
    ld [bc], a
    add b
    ld a, [hl]
    cpl
    ld a, a
    ld h, b
    ld bc, $0000
    cpl
    ld a, a
    db $ec
    nop
    rra
    nop
    nop
    nop
    cpl
    ld a, a
    ccf
    ccf
    rra
    nop
    nop
    nop
    rra
    nop
    ccf
    ccf
    db $ec
    nop
    nop
    nop
    daa
    ld [bc], a
    ccf
    ccf
    rst $38
    ld a, a
    rst $30
    dec sp
    sub c
    dec bc
    ld h, b
    ld bc, $0227
    push de
    nop
    rst $38
    db $ec
    rst $38
    rst $38
    db $ec
    ldh [$fe], a
    and $f0
    rst $38
    rst $18
    db $fc
    rst $38
    cp $ff
    nop
    cp $ec
    rrca
    rst $38
    push de
    rra
    cp $e0
    ccf
    cp $e0
    ld a, a
    cp $e2
    nop
    rst $38
    add l
    add b
    cp $e0
    ret nz

    cp $e2
    call nz, $cfe1
    db $ed
    ret nz

    db $eb
    ld bc, $b0ce
    ld_long $ffa3, a
    ld d, a
    cp d
    ldh [$7e], a
    db $eb
    rrca
    rrca
    rst $38
    and e
    and e
    ld d, c
    ld d, c
    xor b
    xor b
    call nc, $afd4
    ld a, [$fdfa]
    db $fd
    ld h, d
    rst $20
    ld a, a
    rst $38
    ldh [$3f], a
    ld a, l
    ccf
    ld h, b
    pop hl
    ldh a, [rIE]
    ld hl, sp-$01
    db $f4
    db $fc
    db $e4
    ld a, l
    db $fd
    ld h, b
    add sp, $0a
    rst $38
    dec d
    rst $38
    ld a, [$e250]
    db $dd
    ld c, $5e
    add sp, $02
    rst $38
    dec b
    db $fc
    ld [c], a
    adc d
    rst $38
    ld a, a
    push bc
    rst $38
    jp z, $f5ff

    rst $38
    xor a
    adc h
    ldh [$27], a
    xor a
    rst $38
    ld e, a
    db $fc
    and $00
    push hl
    cp $ff
    ldh [$90], a
    pop hl
    rst $38
    ldh a, [$f0]
    pop bc
    pop bc
    adc d
    adc d
    dec d
    dec d
    cp a
    dec hl
    dec hl
    ld e, a
    ld e, a
    cp a
    cp a
    add sp, -$1f
    ld hl, sp-$09
    ld hl, sp-$0b
    push af
    jp c, $c7c3

    rst $00
    and e
    and e
    rst $38
    rra
    rra
    rlca
    rlca
    ld b, e
    ld b, e
    xor c
    xor c
    rst $38
    push de
    push de
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [$7dfa]
    ei
    cp a
    ret z

    jp $a1c3


    and c
    db $fd
    call z, Call_079_74c0
    or d
    ldh [$a9], a
    add $40
    ldh [$c0], a
    ld b, b
    rst $38
    and b
    ld c, d
    ld [c], a
    cp c
    db $fc
    xor [hl]
    ret nz

    or b
    jp $ff03


    rlca
    cp $e4
    rst $28
    xor $7f
    call z, $ffaf
    rst $18
    db $ec
    add sp, $37
    scf
    rst $38
    rst $18
    rst $38
    ld e, a
    ld e, a
    xor a
    xor a
    ld e, d
    jp $e3e3


    rst $38
    push bc
    push bc
    push de
    push de
    ld [$fdea], a
    db $fd
    or c
    cp $9b
    ldh [rLCDC], a
    rst $00
    ldh a, [$e3]
    dec d
    dec d
    inc h
    pop bc
    call nc, $d4ff
    ld [$3dea], a
    dec a
    sbc a
    sbc a
    ld e, a
    ld hl, sp+$25
    ldh [$ee], a
    pop hl
    jr nz, @-$3b

    adc a
    adc a
    ld d, [hl]
    ld d, [hl]
    db $eb
    cp a
    db $eb
    rst $38
    rst $38
    dec b
    dec b
    cp $64
    db $e4
    cp a
    rst $28
    cp a
    ld d, a
    ld d, a
    ei
    ld b, e
    ldh [rNR41], a
    rst $38
    ld d, b
    cp [hl]
    ld h, d
    ldh [$d4], a
    rst $38
    ld [$f7ff], a
    ld [hl], h
    ldh [$f7], a
    adc $10
    ret z

    ld d, b
    rst $38
    xor b
    add sp, -$20
    db $10
    jp $ff5f


    ld sp, hl
    cp a
    db $fc
    db $e4
    ret nc

    and l
    rst $30
    rst $30
    db $eb
    db $eb
    or a
    ld h, a
    or a
    rst $38
    rst $38
    db $fc
    pop bc
    ld b, $e1
    add l
    add l
    adc $c1
    rst $28
    rst $38
    rst $38
    ld e, [hl]
    ld e, [hl]
    jp z, $f1c1

    pop af
    ld l, e
    rst $38
    ld l, e
    rst $10
    rst $10
    rst $38
    rst $38
    and b
    and b
    cp a
    ld a, a
    cp a
    ldh a, [$f0]
    pop hl
    pop hl
    jp z, $f2ca

    pop hl
    rst $38
    db $f4
    db $f4
    nop
    nop
    xor a
    xor a
    rst $18
    rst $18
    cp l
    ld a, a
    dec bc
    ret nz

    db $f4
    db $f4
    xor b
    xor b
    add b
    and d
    ld d, a
    adc d
    ld c, e
    ret nz

    rst $18
    ld a, d
    xor d
    xor [hl]
    ld e, c
    ret nz

    ld e, a
    ldh [$66], a
    xor b
    ld [hl], l
    dec e
    rst $38
    sbc c
    jp $fffd


    xor d
    di
    and e
    sbc $e2
    ld hl, sp-$1f
    ld b, c
    xor l
    ld b, b
    xor b
    inc sp
    rst $00
    cp h
    pop hl
    daa
    xor e
    sbc c
    ret


    db $eb
    add hl, bc
    jp nz, $f755

    ld b, $a8
    ld e, [hl]
    ld a, [$bf88]
    xor e
    and b
    xor e
    ld [$ba84], a
    sub b
    pop hl
    or a
    db $db
    and [hl]
    cp $ff
    ld d, l
    inc de
    and b
    ld d, a
    adc d
    ld a, h
    ldh [rP1], a
    cpl
    ret nz

    push de
    sub e
    and b
    cp c
    and c
    ld d, [hl]
    pop hl
    ld d, l
    and d
    add e
    and b

jr_079_5d9f:
    ld d, l
    call $f4c2
    ret nz

    ld h, b
    ld [c], a
    xor d
    sbc l
    and b
    ld a, [bc]
    ld c, b
    jp Jump_079_5080


    db $e3
    dec h
    push bc
    dec d
    and [hl]
    and $89
    add e
    ld d, a
    add d
    adc b
    ld c, c
    ld d, l
    jr nz, jr_079_5d9f

    sbc b
    push hl
    db $eb
    ldh a, [$e2]
    db $ec
    pop hl
    rst $38
    inc c
    ldh [rHDMA1], a
    ld d, l
    cp a
    and b
    db $f4
    db $e3
    ret c

    pop hl
    xor b
    add b
    ld [c], a
    ld d, l
    ld [hl], b
    ld [c], a
    rla
    ld a, [$54ff]
    ld e, l
    add h
    dec b
    db $e4
    ret nz

    ld h, h
    db $e3
    sbc c
    add c
    add c
    ld a, [hl+]
    ld d, h
    ldh [$64], a
    db $e3
    ret nc

    jp $c004


    call nz, $b8c4
    push hl
    rst $38
    ld b, d
    ld a, [de]
    ld [c], a
    ld [$e2bc], a
    ei
    ld h, l
    ld c, [hl]
    ret nz

    inc e
    ldh [$bf], a
    ld l, b
    xor $10
    db $db
    ld l, c
    sbc d
    ret


    jp Jump_079_6c63


    pop bc
    ld [$eeea], a
    and a
    ld h, c
    ldh [$a0], a
    ld a, [$6bbf]
    db $fc
    or c
    ld h, [hl]
    ld hl, sp+$00
    jp nz, Jump_000_3507

    add hl, de
    ccf
    ret


    ldh [$da], a
    ld h, e
    nop
    ld d, a
    adc e
    ret nz

    ld [hl], d
    add d
    adc a
    ld h, d
    rst $38
    rra
    nop
    rst $20
    ldh [$fb], a
    ld hl, sp-$03
    db $fc
    rst $38
    cp $fe
    ei
    inc bc
    rst $30
    rlca
    rst $28
    rrca
    rst $38
    db $e3
    inc bc
    pop bc
    dec e
    ret z

    ld e, $ec
    ld c, $ff
    pop af
    ld bc, $28d7
    cp a
    ld b, b
    ld a, a
    add b
    ld a, e
    rst $38
    inc b
    ld e, $e0
    ld d, h
    nop
    nop
    ld hl, sp-$51
    ld h, a
    rst $38
    ld bc, $00c0
    ccf
    ccf
    ld e, $de
    cp $ed
    inc b
    ld [hl], h
    jp nz, $feaa

    ld [c], a
    ldh [rIF], a
    ld l, a
    rlca
    ld [c], a
    cpl
    and b
    ld a, a
    cp $e2
    scf
    ld h, c
    or $e1
    rst $30
    rlca
    xor $bf
    rrca
    add sp, $0e
    ldh a, [rSB]
    cp $70
    db $e4
    and a
    rst $38
    and b
    rrca
    nop
    ccf
    nop
    ld b, a
    nop
    add e
    rst $38
    jr c, jr_079_5e92

    inc c
    ld b, e
    inc b

jr_079_5e92:
    ld h, d
    ld [$ff0c], sp
    db $ed
    inc c
    db $ed
    inc e
    db $dd
    inc a
    cp l
    inc l
    rst $18
    xor l
    inc c
    call $f300
    ld d, [hl]
    add b
    sbc e
    ld h, e
    rst $38
    dec de
    ld h, e
    dec de
    inc bc
    dec sp
    rlca
    ld [hl], a
    dec c
    sbc a
    db $ed
    ld e, $9e
    ld l, $ce
    or d
    db $e3
    xor h
    pop hl
    ccf
    rst $38
    add b
    ccf
    add b
    ld a, a
    nop
    ld hl, sp+$03
    ldh a, [$6d]
    rlca
    cp $e1
    ld a, [$2403]
    db $e3
    nop
    or $1b
    ldh [rIE], a
    add sp, $20
    ldh [rSTAT], a
    pop bc
    nop
    ld bc, $f782
    inc bc
    pop bc
    inc bc
    pop de
    and $ff
    ld [bc], a
    cp $05
    rst $38
    db $fd
    dec e
    db $fd
    db $10
    ldh [$2f], a
    jp z, Jump_000_3d1f

    pop bc
    add $e1
    cp a
    ld b, b
    ld e, a
    and b
    inc [hl]
    ldh [$82], a
    ldh [rIE], a
    adc a
    ret nz

    rst $10
    ldh a, [$eb]
    ld hl, sp-$0b
    db $fc
    or e
    ld a, [$0ffe]
    ld h, b
    adc a
    ld c, d
    ld a, a
    nop
    ret nz

    db $eb
    dec de
    ld a, a
    ei
    inc d
    db $e4
    inc sp
    jp nz, $c50f

    add [hl]
    pop hl
    db $fd
    rst $38
    cp [hl]
    ldh [$7f], a
    add b
    ccf
    nop
    ld c, a
    ret nz

    cp a
    and a
    ldh a, [$d3]
    ld hl, sp-$17
    db $fc
    ret nz

    pop hl
    push af
    cp $50
    ld c, d
    ld b, d
    rst $38
    xor c
    rst $38
    inc bc
    inc bc
    or $ff
    rlca

jr_079_5f38:
    db $ed
    rrca
    ld [c], a
    rlca
    pop hl
    dec bc
    pop bc
    rra
    dec e
    add b
    ld e, $00
    ld e, a
    sub b
    ld b, c
    adc h
    ld b, c
    ld [de], a

jr_079_5f4a:
    ld h, c
    ld e, a
    ld a, e
    ld a, e
    rlca
    add a
    ld a, [$40bc]
    cp $a2
    ld b, b
    cp $01
    and [hl]
    add b
    cp a
    add b
    rst $18
    ret nz

    rst $28
    ldh [rIE], a
    rst $28
    ldh [$f7], a
    ldh a, [$db]
    ld hl, sp-$59
    ldh a, [$fd]
    ld b, $c2
    ldh [$da], a
    rra
    push de
    rra
    rrc a
    cp a
    rst $00
    rla
    pop bc
    add hl, de
    ldh [$0e], a
    ret nc

    ld b, a
    db $fd
    rra
    db $fd
    di
    di
    rrca
    rrca
    ret nz

    db $e3
    pop bc
    adc b
    ret nz

    ld [c], a
    sbc $be
    db $e3
    rst $10
    ldh a, [$b7]
    ldh a, [$c0]
    ld h, $e1
    nop
    rst $38
    ret nz

    jr nz, jr_079_5f38

    jr nc, jr_079_5f4a

    rst $38
    nop
    cp $fa
    cp $e6
    ld a, b
    ld [hl], e
    jr nz, jr_079_5fc3

    ld b, b

jr_079_5fa5:
    rra
    ld b, b
    rrca
    rst $38
    and b
    nop
    sub b
    nop
    xor a
    nop
    ret nc

    nop
    rst $38
    ld h, [hl]
    nop
    jr c, jr_079_5fa5

    xor a
    rst $18
    ld e, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    nop
    inc bc
    add h

jr_079_5fc3:
    ld hl, $1d3e
    ld b, b
    ld [$54fc], a
    ldh [$e3], a
    db $ed
    and b
    add b
    inc hl
    or a
    ret nz

    cpl
    jr nz, jr_079_6037

    pop hl
    rst $28
    ldh [$9a], a
    pop hl
    rst $18
    rst $38
    ret nz

    ldh a, [rTAC]
    ld hl, sp+$00

jr_079_5fe1:
    ld hl, sp+$02
    ld hl, sp+$4f
    ld bc, $02f8
    db $fc
    and [hl]
    ldh [$ec], a
    ret nz

    cp a
    inc [hl]
    db $e3
    rst $28
    ld hl, sp-$08
    nop
    rlca
    dec c
    pop bc
    rst $38
    db $fd
    cp $1f
    ld [$51f8], a
    ret nz

    rst $00
    dec de
    ret nz

    ret nz

    db $ec
    cp [hl]
    db $e3
    ccf
    jr jr_079_5fe1

    inc c
    db $ec
    nop
    pop af
    jr nz, jr_079_6037

    call nc, $faa4
    ld b, b
    ld h, $c7
    cp $0b
    ccf
    ccf
    rlca
    rst $00
    add hl, bc
    rst $00
    jp hl


    dec c
    db $ed
    cp $e5
    ret nc

jr_079_6023:
    pop bc
    db $fc
    jp hl


    ccf
    cp a
    ld l, a
    rrca
    rst $08
    inc bc
    db $e3
    ldh [$e9], a
    ccf
    nop
    call c, $eee9
    or b
    ld b, $fe

jr_079_6037:
    ld bc, $fefc
    pop hl
    dec c
    db $ed
    dec e
    rst $38
    db $dd
    dec de
    db $db
    rlca
    rlca
    reti


    add c
    cp [hl]
    rra
    jr jr_079_60c9

    inc [hl]
    ld a, a
    ld [$290e], sp
    db $d3

Call_079_6050:
    pop hl
    and c
    pop hl
    db $fc
    rla
    ld [c], a
    xor e
    ret nz

    nop
    ccf
    jp z, Jump_000_0015

    pop af
    rst $38
    ld c, $ee
    rra

jr_079_6062:
    rst $18
    rra
    rst $18
    ld c, $ee
    ld a, c
    ld bc, $c7a4
    dec e

jr_079_606c:
    and b
    and b
    ld e, a
    ld b, b
    cp a
    ld d, h
    ld bc, $14ff
    ld [$d42a], a
    dec d
    ld [$fd02], a
    ld a, b
    ld c, b
    dec b

jr_079_607f:
    sbc b
    and b
    rst $10
    jr nz, jr_079_6023

    ld b, b
    nop
    ldh [$36], a
    inc bc
    sbc $92
    add e
    rst $28
    nop
    nop
    db $10
    ld h, $03
    push de
    ld a, [bc]
    cp a
    jp z, $1515

    ld a, [hl+]
    xor b
    rla
    add hl, bc
    push hl
    pop af
    ld e, a
    nop
    ldh [$08], a
    ret nz

    db $10
    cp $e0
    nop
    db $fc
    pop hl
    xor c
    pop bc
    ld d, e
    push hl
    ld b, [hl]
    add b
    ld sp, hl
    pop af
    add b
    rst $20
    pop af
    ret nz

    sbc a
    ld hl, sp-$30
    add b
    call c, $e0c7
    add a
    rrca
    rst $28
    dec e
    sbc l
    ld e, $fd
    sbc $92
    add e
    ld h, [hl]

jr_079_60c7:
    nop
    ld b, b

jr_079_60c9:
    jr @+$2a

    jr c, jr_079_606c

    ld b, c
    ld [hl], b
    ld b, l
    ld a, h
    rst $08
    ret nc

    db $ec
    ldh a, [$8b]
    ld a, [de]
    sub a
    ei
    inc c
    db $ec
    jr nc, jr_079_607f

    adc d
    ld e, [hl]
    add c
    jr z, jr_079_6062

    nop
    rst $38
    dec e
    inc e
    ld h, e
    ldh [$ab], a
    ld hl, sp+$55
    db $fc
    sbc a
    xor c
    ld hl, sp-$2c
    db $fc
    ld [$a130], a
    adc a
    add h
    ld bc, $ccde
    nop
    ld b, $fe
    ld e, $fe
    ret nz

    add c
    ld e, l
    add d
    rst $38
    jp z, $9515

jr_079_6106:
    ld a, [hl+]
    ld l, d
    dec d
    rst $18
    jr nz, jr_079_60c7

    cp a
    ld b, b
    nop
    and b
    ld b, b
    rst $30
    ldh a, [$d4]
    ld h, c
    or $fd
    cp $c0
    add c
    dec b
    rlca
    rrc a
    push de
    rra
    ld a, a
    db $db
    rra
    rst $28
    rrca
    rst $28
    rrca
    rst $30
    db $e4
    and b
    ldh a, [$6d]
    ld l, c
    db $e4
    and c
    adc b
    add b
    ld h, b
    and [hl]
    rst $30
    ldh a, [$d7]
    ldh a, [rIE]
    ld bc, $dd01
    dec e
    db $db
    dec de
    db $db
    dec de
    rst $38
    ret nc

    db $10
    ret nc

    rla
    ret nz

    rla
    add b
    cpl
    ld d, [hl]
    dec a
    ld h, a
    ccf
    ccf
    sbc d
    pop bc
    cp $e0
    add d
    rst $18
    rst $38
    ldh [$0c], a
    and [hl]
    and e
    jr nz, jr_079_6106

    and a
    ldh a, [$82]
    and b
    add h
    and b
    add b
    and a
    ld e, b
    inc h
    rst $18
    rst $38
    ldh a, [$f0]
    nop
    rrca
    add b
    and e
    rst $38
    ld [$f80f], a
    ld d, b
    add b
    add a
    xor c
    and l
    or d
    jp $c0b0


    jp z, $fae1

    cp $e0
    ld l, a

jr_079_6180:
    reti


    ldh [$83], a
    jr nc, @-$7e

    inc e
    nop
    db $fd
    ld l, a
    db $e3
    ld b, b
    rst $08
    nop
    or c
    pop af
    and c
    db $eb
    rst $38
    ld c, e
    rst $10
    sub a
    ccf
    ccf
    ld a, $be
    jr nz, jr_079_6180

    ld hl, $40f9
    ld a, a
    ld d, b
    xor c
    inc c
    and c
    ccf
    cp a
    rra
    rra
    rst $18
    rlca
    rst $20
    dec bc
    db $eb
    cp $e3
    add b
    and e
    ld l, h
    ld h, l
    ret nc

    ld b, h
    add c
    ld hl, sp-$80

jr_079_61b7:
    inc h

jr_079_61b8:
    ld h, b
    ld d, b
    pop bc
    ld hl, sp+$29
    and b
    db $e3
    nop
    rst $38
    db $dd
    db $dd
    ld h, d
    ld h, d
    inc a

jr_079_61c6:
    dec a
    ret nz

    inc bc
    ld sp, hl
    ld b, b
    or h
    ldh [rLCDC], a
    and e
    ccf
    cp a
    inc a
    cp h
    inc sp
    scf
    or e
    dec sp
    cp e
    cp $e1
    dec de
    db $db
    and l
    and h
    or h
    add d
    ldh a, [rDIV]
    add c
    ld sp, $90a3
    xor b
    ccf
    ld b, a
    ret nz

    nop
    add b
    ccf
    db $fc
    cp d
    add h
    rst $28
    and d
    jr jr_079_61f4

jr_079_61f4:
    ld bc, $c3c0
    rst $00
    db $e3
    nop
    adc a
    ld d, d
    ld b, b
    xor $a7
    or l
    ret nz

    db $db
    scf
    or a
    rst $18
    rlca
    rlca
    ret c

    add b
    cp a
    jr nc, jr_079_61b8

    ccf
    ccf
    pop af
    ret nz

    jr nc, @-$5a

    sbc h
    push hl
    jr nc, jr_079_61b7

    ld [hl], c
    ld [hl], c
    ld l, [hl]
    ld l, [hl]
    rst $28
    ld e, a
    ld e, a
    rra
    sbc a
    jr nc, jr_079_61c6

    ldh [$e7], a
    ldh [rIE], a
    rst $20
    ld b, b
    ld c, a
    inc d
    dec hl
    xor b
    ld d, a
    ld d, b
    db $fd
    xor a
    ld d, b
    and l
    db $fc
    nop
    ld a, [c]
    inc bc
    call $bf0f
    and d
    ld [hl+], a
    ld b, c
    ld e, c

jr_079_623c:
    add [hl]
    and a
    or b
    ld hl, $ff07
    nop
    cp b
    ld hl, sp+$5f
    rst $38
    rra
    rra
    ld b, e
    scf
    db $e3
    xor h
    db $fc
    ret c

    ld b, l
    sbc a
    add b
    adc $23
    sub b
    add hl, hl
    db $fc
    sbc d

Jump_079_6258:
    pop bc
    add b
    inc hl
    ldh a, [rP1]
    push bc
    rrca
    dec hl
    ccf
    rst $28
    jr jr_079_623c

    add $e7
    ld [hl], b
    inc hl
    ld bc, $fe00
    sbc $4b
    ld h, b
    ccf
    ccf
    adc a
    rst $08
    ld h, b
    dec h
    ccf
    nop
    xor a
    rst $08
    ret nz

    di
    ldh a, [$c0]
    db $eb
    add a
    ld a, l
    ld h, b
    db $fd
    ld l, a
    ld bc, $01fd
    db $fc
    ld a, [$fbe0]
    inc bc
    cp $e1
    rst $38
    ld a, [$9f02]
    sbc c
    ld a, [hl]
    db $76
    ld sp, hl
    ld sp, hl
    rst $18
    and $e4
    sbc $d0
    cp a
    add $20
    daa
    nop
    db $eb
    sbc a
    sbc a
    inc a
    ld h, b
    db $10
    ret nz

    jr nz, @+$2a

    add c
    inc h
    rst $38
    add c
    ld b, $c1
    inc c
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    cp a
    ld c, a
    rst $08
    rlca
    rst $20
    inc bc
    di
    adc [hl]
    add b
    pop hl
    ei
    nop
    and c
    adc b
    dec h
    rra
    nop
    rrca
    ldh [rIF], a
    sub a
    and b
    ld b, d
    ld [hl], b
    ldh a, [$0b]
    rra
    and b
    ldh [rLY], a
    ld h, b
    nop
    db $ed
    ld sp, hl
    and b
    ldh [$f7], a
    rlca
    ld h, h
    jr nz, jr_079_62ea

    rst $18
    ld d, l
    rst $38
    ccf
    dec hl
    rst $38
    rst $10
    ld hl, sp-$08
    pop hl
    ldh [rIE], a
    sub d
    sub b

jr_079_62ea:
    ld [hl], h
    ld b, b
    db $fc
    add c
    di
    di
    ei
    ret nz

    ret nz

    ld b, l
    jp Jump_000_003f


    rra
    ret nz

    rrca
    rst $38
    ld h, b
    cp $fe
    ld a, h
    ld a, h
    ld e, $1e
    dec b
    ld [hl], a
    add l
    ld [bc], a
    jp nz, $8063

    inc bc
    nop
    ld [bc], a
    jr z, jr_079_6333

    cp [hl]
    ld [c], a
    pop hl
    rra
    ld b, b
    adc a
    ldh [rSB], a
    inc h
    ldh [$81], a
    call nz, $c008
    adc b
    add e
    ccf
    ld b, b
    ld [c], a
    adc [hl]
    ld b, c
    ld a, b
    dec b

jr_079_6325:
    ld b, d
    ld a, [bc]
    rst $38
    ld bc, $4208
    ld bc, $1344
    ld h, [hl]
    ld b, c
    rst $38
    scf
    inc b

jr_079_6333:
    dec sp
    inc hl
    inc e
    inc b
    ld h, e
    ld b, b
    cp $24
    add b
    ld [$8070], sp
    ldh a, [rNR10]
    ldh [rNR41], a
    rst $38
    pop bc
    pop bc
    ld bc, $0400
    dec [hl]
    nop
    dec de
    rst $38
    nop
    rra
    jr nz, jr_079_6370

    ld bc, $413e
    ld a, $fe
    ld d, l
    ld b, c
    ld [hl], h
    ld h, l
    ld [hl], $22
    or $44
    rst $28
    rst $38

jr_079_6360:
    ld [$10df], sp
    ccf
    jr nz, jr_079_6360

    ret nz

    ld sp, hl
    rst $38
    nop
    ld c, a
    and b
    and a
    ld d, b
    ld d, e
    xor b

jr_079_6370:
    dec hl
    rst $38
    ld d, b
    ld b, e
    jr z, @+$0d

    ld d, b
    rla
    jr nz, jr_079_6325

    ccf
    ld d, b
    db $ec
    inc c
    add sp, $08
    ldh a, [$35]
    ld h, b
    sbc h
    push hl
    rst $28
    ld a, h
    nop
    sbc [hl]
    nop
    sub e
    and c
    or e
    inc c
    and e
    db $fd
    inc e
    add b
    ldh [rNR42], a
    rrca
    jr nz, jr_079_63b4

    jr nz, @+$1e

    xor $74
    and b
    or b
    db $10
    add b
    ld l, b
    ldh [$83], a
    add b
    nop
    rst $30
    jp nz, $c600

    ld d, c
    ld [bc], a
    cp $01
    cp $02
    rst $38
    db $fc
    ld [bc], a
    db $fc
    ldh [$ce], a

jr_079_63b4:
    ldh [$cc], a
    add b
    rst $38
    nop
    cp b
    ld bc, $017c
    inc a
    ld bc, $ef0e
    ld b, b
    ld b, $f0
    ld b, b
    rst $38
    ldh [rNR10], a
    ld d, b
    adc c
    di
    add hl, hl
    call nz, Call_000_04ae
    ld a, [$1f20]
    jr nz, jr_079_6413

    ld bc, $ffff
    inc b
    db $fc
    ld [bc], a
    di
    ld l, l
    ld l, a
    sbc b
    cp $cf
    ret nz

    ld [$20fb], sp
    rst $20
    db $10
    rla
    db $f4
    rst $38
    rst $30
    cp b
    ei
    ld a, c
    ei
    cp d
    ei
    ld a, [$01ff]
    ld hl, sp+$03
    ld hl, sp+$00
    ei
    ld [bc], a
    ei
    rst $38
    add hl, bc
    rst $30
    ld h, $e7
    ld b, l
    db $db
    sbc d
    ld d, e
    rst $38
    xor b
    add a
    ld b, b
    scf
    jr nc, jr_079_6421

    ldh a, [rNR22]
    rst $38
    ldh a, [$2f]
    ldh [rVBK], a
    ldh [$9f], a

jr_079_6413:
    ret nz

    ld e, [hl]
    db $fd
    ld e, [hl]
    ld de, $0060
    add b
    nop
    ret z

    add hl, bc
    db $f4
    ld l, [hl]
    ld a, [c]

jr_079_6421:
    ld h, c
    nop
    ld [$680f], sp
    add b
    rra
    add c
    xor e
    and b
    rst $38
    ld [bc], a
    di
    ld c, b
    ld c, a
    or c
    ccf
    inc b
    db $fc
    rst $38
    ld [$20fa], sp
    and $00
    ld c, $c0
    rst $18
    ei
    add b
    cp a
    cp c
    add d
    ld hl, sp+$00
    db $f4
    nop
    ld [$00ff], a
    db $e4
    nop
    ld a, d
    add c
    inc c
    add e
    jr c, @-$7a

    inc bc
    ld b, l
    ld e, d
    nop
    add b
    cp $e1
    db $e4
    dec h
    and d
    add e
    inc b
    and c
    push de
    rst $08
    rra
    cp d
    ccf
    dec [hl]
    xor e
    add c
    cp $e4
    ld a, l
    db $fd
    ei
    db $fc
    db $fd
    and h
    and c
    db $fc
    db $fc
    di
    di
    adc a
    rst $38
    adc a
    rst $38
    rst $38
    inc e
    sbc h
    ld l, d
    ld l, d
    ld [hl], a
    ld h, c
    ld [hl], a
    and b
    rlca
    ld a, c
    ld hl, $8356
    ld b, b
    inc hl
    ld l, e
    ld a, a
    db $e3
    ldh [$f8], a
    cp $e4
    cp h
    pop hl
    ld d, $60
    ld a, a
    ld [bc], a
    ld a, a
    sub h
    cp [hl]
    rst $38
    xor c
    cp c
    rst $00
    rst $00
    rra
    rra
    rst $38
    rst $38
    rst $38
    sub l
    rst $18
    ld a, [bc]
    adc [hl]
    ld d, c
    ld d, c
    sbc a
    sbc a
    ret c

    ld e, [hl]
    inc bc
    ld d, [hl]
    nop
    jp nz, $cfea

    ret nz

    ld h, l
    ld b, d
    pop af
    nop
    ld e, a
    jp $9310


    jr nz, jr_079_64dd

    adc $60
    ld bc, $4a63
    xor $00
    ld b, c
    jr nz, jr_079_6545

    ld b, b
    db $fc
    ldh [rSTAT], a
    ld a, a
    ld [hl+], a
    cp a
    ld a, a
    ld d, h
    ld a, a
    ld a, [hl+]
    ld a, h
    ld d, h
    ld b, c
    dec b
    rst $38
    ld a, a
    db $fd
    ldh a, [$f0]
    adc b
    add a
    ld b, b

jr_079_64dd:
    ccf
    ldh [$03], a
    rst $28
    ldh [$a7], a
    nop
    rra
    inc hl
    ld [c], a
    cp $20
    cpl
    db $db
    ld h, b
    ld l, a
    pop hl
    inc bc
    and b
    xor a
    or $e1
    ccf
    ld a, a
    rst $38
    rra
    ld a, a
    cpl
    ld a, a
    rla
    ld a, a
    rrca
    ld a, a
    cp a
    dec d
    ld a, a
    ld a, [bc]
    ccf
    nop
    inc a
    or c
    ld b, a
    ldh a, [$57]
    ldh a, [$80]
    adc a
    ret nz

    ldh [$f5], a
    and b
    nop
    pop de
    ret nz

    pop hl
    ld [hl], b
    daa
    and e
    ret nz

    rst $20
    sbc e
    inc bc
    ld [hl], c
    and d
    add c
    nop
    jp $a509


    db $d3
    inc bc
    add e
    or a
    add c
    xor e
    add b
    db $fd
    ld sp, hl
    ld b, d
    cp $f9
    rra
    ld sp, hl
    rst $20
    rst $20
    adc a
    adc a
    and b
    ld b, e
    ld b, h
    ld bc, $e9c4
    ccf
    ldh [$ef], a
    ret nz

    rst $18
    ld bc, $d4c1
    pop hl
    ret nc

    rst $20

jr_079_6545:
    or $31
    ld b, e
    db $fc
    db $fc
    add hl, sp
    db $e4
    cp $fb
    ei
    rst $20
    scf
    rst $20
    rra
    rra
    cp l
    push bc
    rst $38
    rst $38
    add $e7
    call z, $fc04
    sbc d
    ld [c], a
    ld_long a, $ffe7
    ld a, [$547e]
    ld a, b
    jr z, @+$01

    add l
    ld bc, $00c0
    cp a
    inc c
    ld a, a
    ld a, [de]
    dec sp
    ld a, a
    inc b
    ld h, [hl]
    push bc
    ccf
    ccf
    rst $00
    ldh [$a2], a
    pop af
    ld b, a
    rrca
    ldh [$ef], a
    db $10
    rrca
    sub b
    nop
    jp $ba83


    and $ff
    pop hl
    rra
    ld a, l
    ld e, l
    ld a, l
    add hl, hl
    add b
    ret nz

    db $e4
    ld [hl+], a
    ld h, a
    ret nz

    db $e3
    ld a, [bc]
    add b
    nop
    push de
    add b
    dec bc
    ccf
    add c
    and b
    add b
    rlca
    nop
    nop
    nop
    dec h
    ld [bc], a
    rst $38
    db $e4
    inc b
    rst $38
    ldh [$f4], a
    push hl
    nop
    rst $38
    add sp, -$20
    and $57
    dec b
    dec b
    dec b
    rst $18
    ldh [$03], a
    ldh [$f1], a
    ld [hl+], a
    ret nz

    pop hl
    rst $20
    nop
    dec b
    dec b
    db $e3
    ld [c], a
    ret nz

    push af
    inc b
    inc b
    dec b
    push af
    inc bc
    jp nz, Jump_000_22e2

    and b
    ld a, [c]
    ld [bc], a
    ld b, h
    inc b
    inc b
    xor c
    inc bc
    ld a, [hl]
    db $e4
    add b
    jp hl


    rlca
    rst $38
    pop hl
    ld bc, $e0ff
    ld b, $6a
    ld l, d
    ldh [rTMA], a
    ld a, [c]
    ld [c], a
    rlca
    ldh [$f3], a
    ld bc, $e001
    or $88
    cp a
    pop hl
    ldh [$e0], a
    cp $e3
    ld h, a
    ret nz

    db $eb
    jp hl


    push hl
    ld hl, sp-$19
    daa
    sub b
    ld b, b
    db $f4
    ldh [$c0], a
    db $dd
    jp $d6e0


    inc bc
    ld e, $e3
    ldh [$d5], a
    inc b
    ld [$c4df], sp
    ldh [$df], a
    ldh [$d3], a
    inc hl
    ldh [$da], a
    rst $18
    ret nz

    ldh [$df], a
    ldh [$df], a
    nop
    ldh [$df], a
    ldh [$d8], a
    ret nz

    cp a
    ret nz

    cp a
    ldh [$df], a
    ret nz

    cp a
    ldh [$df], a
    ldh [$df], a
    nop
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a

jr_079_6637:
    ldh [$df], a
    ldh [$df], a
    and b
    sbc a
    ld l, b
    ldh [$df], a
    ldh [$df], a
    and b

jr_079_6643:
    sub a
    inc h
    ldh [$dd], a
    nop
    nop
    ccf
    ldh [$0e], a
    ldh [$d9], a
    nop
    dec b
    nop
    jr nz, jr_079_6643

    add b
    ret


    ldh [$e3], a
    ldh [$d3], a
    ld hl, sp-$1d
    ret nz

    and b
    pop hl
    ldh [$d7], a
    ld bc, $0005
    nop
    ld bc, $e000
    ret c

    ld bc, $e0e2
    ret c

    ld hl, sp-$3a
    ldh [$df], a
    add b
    ld [hl], l
    jr nz, jr_079_6637

    ldh [$df], a
    ld [hl+], a
    ldh [$d6], a
    ld b, h
    ldh [$df], a
    ldh [$df], a
    ldh [$d5], a
    inc bc
    ldh [$df], a
    ldh [$df], a
    nop
    ldh [$df], a
    ld h, b
    ld c, h
    rst $38
    rst $38
    rst $38
    rst $38

jr_079_668e:
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
    db $ec
    db $eb
    nop
    nop
    nop
    rst $30
    ld bc, $0302
    rst $38
    ld [c], a
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    xor $f6
    db $e3
    inc b
    ld bc, $ff00
    add sp, $01
    ld bc, $fe05
    rst $18
    ld [c], a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    inc bc
    inc bc
    rst $28
    ld b, $07
    ld [$e009], sp
    ld [$0b0a], a
    inc c
    ei
    dec c
    rlca
    cp l
    ldh [$50], a
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld a, a
    inc bc
    inc bc
    ld c, $0f
    db $10
    ld de, $c012
    jp hl


    rst $18
    inc de
    inc d
    dec d
    ld d, $17
    sbc l
    ldh [rHDMA5], a
    ld d, [hl]
    rst $38
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    jr jr_079_66f1

    add hl, de

jr_079_66f1:
    ld a, [de]
    ei
    inc d
    dec de
    and b
    jp hl


    inc e
    dec e
    ld e, $1f
    jr nz, @+$01

    ld hl, $5e22
    inc bc
    ld b, a
    ld e, a
    ld h, b
    ld h, c
    ld a, a
    ld h, d
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_079_668e

    jp hl


    rst $18
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld e, l
    ldh [$67], a
    ld l, b
    rst $38
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, $2f
    jr nc, jr_079_6753

    ei
    ld [hl-], a
    inc sp
    ld h, b
    jp hl


    inc [hl]
    dec [hl]
    ld [hl], $37

jr_079_672b:
    jr c, jr_079_672b

    dec a
    ldh [$71], a
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc bc
    ld [hl], l
    add hl, sp
    rst $18
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $40
    jp hl


    ccf
    ld b, b
    rst $28
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc e
    ldh [rTMA], a
    ld a, b
    ld a, c
    ld e, e
    ld a, d
    ld a, e
    inc d
    pop hl
    jr c, jr_079_6796

    jr nz, @-$15

jr_079_6753:
    ld b, [hl]
    ld bc, $7fe3
    ld a, h
    ld a, l
    inc bc
    ld a, [hl]
    ld a, a
    add b
    add c
    db $f4
    jp nz, Jump_000_3869

    nop
    ld [$cae0], a
    add d
    ldh [$db], a
    add e
    add h
    ldh [$d9], a
    ld [hl], a
    add l
    add [hl]
    add a
    ldh [$d9], a
    adc b
    adc c
    adc d
    ldh [$da], a
    rst $28
    adc [hl]
    adc a
    add hl, bc
    sub b
    ldh [$d7], a
    inc bc
    ld b, $95
    ei
    sub [hl]
    sub a
    ldh [$d8], a
    inc bc
    ld b, $03
    sbc h
    inc bc
    dec b
    sbc l
    ldh [$dc], a
    and d
    ldh [$df], a
    ldh [$db], a
    ret nz

jr_079_6796:
    cp a
    ret nz

    cp a
    ret nz

    or l
    rst $30
    ld e, e
    ld e, h
    ld e, l
    ret nz

    cp d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    sbc $e0
    reti


    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ldh [$da], a
    db $76
    inc bc
    add c
    ld [hl], a
    ret nz

    cp a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    and b
    adc a
    adc e
    ld a, e
    adc h
    adc l
    and b
    sbc d
    sub c
    sub d
    sub e
    sub h
    ret nz

    cp b
    rst $18
    sbc b
    sbc c
    sbc d
    ld l, a
    sbc e
    ret nz

    cp b
    sbc [hl]
    sbc a
    rst $30
    and b
    inc bc
    and c
    ldh [$d6], a
    and e
    and h
    and l
    ld a, b
    or a
    and [hl]
    and a
    xor b
    ldh [$d6], a
    xor c
    xor d
    ldh [$dc], a
    ld e, d
    rst $30
    xor e
    xor h
    xor l
    ldh [$d9], a
    or e
    or h
    or l
    or [hl]
    ei
    or a
    cp b
    ldh [$d7], a
    cp a
    ret nz

    pop bc
    jp nz, $fdc3

    call nz, Call_079_7780
    ld b, $ca
    set 1, h
    call Call_079_7ece
    add b
    ld [hl], a
    ld b, $d4
    push de
    sub $d7
    ret c

    add b
    ld [hl], a
    cp a
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    add b
    ld [hl], a
    rst $20
    rst $18
    inc bc
    add sp, $01
    jp hl


    ld [$b8c0], a
    inc bc
    rst $28
    ld h, a
    ldh a, [$f1]
    ld a, [c]
    ret nz

    or [hl]
    db $db
    and b
    or $f7
    ret nz

    cp c
    cp a
    xor [hl]
    xor a
    or b
    or c
    ld b, $b2
    ret nz

    or a
    cp c
    rst $18
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    ret nz

    or a
    push bc
    add $ef
    rst $00
    ret z

    ret


    ld e, d
    ldh [$d8], a
    rst $08
    ret nc

    pop de
    ei
    jp nc, $e0d3

    ret c

    ld b, $d9
    jp c, $dcdb

    cp [hl]
    add b
    ld a, b
    inc bc
    db $e3
    db $e4
    push hl
    and $80
    ld a, b
    inc bc
    rst $28
    db $eb
    db $ec
    db $ed
    xor $e0
    reti


    di
    db $f4
    push af
    nop
    ldh [$df], a
    ld h, b
    ld c, [hl]
    rst $38
    rst $38
    rst $38
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
    db $ec
    db $eb
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d400], a
    ld hl, $7329
    ld de, $0a01
    call Call_000_0595
    ld hl, $7331
    ld de, $0b01
    call Call_000_0595
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d400]
    ld de, $030f
    call Call_000_22d2
    call Call_079_68f6
    call Call_079_6aa5
    call Call_079_6c59
    call Call_079_6e0d
    call Call_079_6fc1
    call Call_079_7175
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c4b2]
    and $03
    jr nz, jr_079_68f0

    ld a, [$d400]
    ld b, a
    sub $36
    jp nc, Jump_079_68f0

    ld a, b
    inc a
    ld [$d400], a

Jump_079_68f0:
jr_079_68f0:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_079_68f6:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d400]
    cp $00
    jp z, Jump_079_692f

    cp $01
    jp z, Jump_079_6957

    cp $02
    jp z, Jump_079_697f

    cp $03
    jp z, Jump_079_69a7

    cp $04
    jp z, Jump_079_69cf

    cp $05
    jp z, Jump_079_69f7

    cp $06
    jp z, Jump_079_6a1f

    cp $07
    jp z, Jump_079_6a47

    cp $08
    jp z, Jump_079_6a6f

    jp Jump_079_6a97


Jump_079_692f:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7340
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $04
    call Call_000_0468
    ld hl, $7be5
    ld d, $fe
    ld e, $80
    ld bc, $0300
    call Call_000_26ea
    ret


Jump_079_6957:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $736a
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $04
    call Call_000_0468
    ld hl, $7bee
    ld d, $fe
    ld e, $80
    ld bc, $0300
    call Call_000_26ea
    ret


Jump_079_697f:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7398
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $04
    call Call_000_0468
    ld hl, $7bf7
    ld d, $fe
    ld e, $80
    ld bc, $0300
    call Call_000_26ea
    ret


Jump_079_69a7:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $73c8
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $04
    call Call_000_0468
    ld hl, $7c00
    ld d, $fe
    ld e, $80
    ld bc, $0300
    call Call_000_26ea
    ret


Jump_079_69cf:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7409
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $04
    call Call_000_0468
    ld hl, $7c09
    ld d, $fe
    ld e, $80
    ld bc, $0300
    call Call_000_26ea
    ret


Jump_079_69f7:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $744b
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $04
    call Call_000_0468
    ld hl, $7c12
    ld d, $fe
    ld e, $80
    ld bc, $0300
    call Call_000_26ea
    ret


Jump_079_6a1f:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7493
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $04
    call Call_000_0468
    ld hl, $7c1b
    ld d, $fe
    ld e, $80
    ld bc, $0300
    call Call_000_26ea
    ret


Jump_079_6a47:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $74dc
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $04
    call Call_000_0468
    ld hl, $7c24
    ld d, $fe
    ld e, $80
    ld bc, $0300
    call Call_000_26ea
    ret


Jump_079_6a6f:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7525
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $04
    call Call_000_0468
    ld hl, $7c2d
    ld d, $fe
    ld e, $80
    ld bc, $0300
    call Call_000_26ea
    ret


Jump_079_6a97:
    ld hl, $7c2d
    ld d, $fe
    ld e, $80
    ld bc, $0300
    call Call_000_26ea
    ret


Call_079_6aa5:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d400]
    ld b, a
    sub $09
    ret c

    ld a, b
    cp $09
    jp z, Jump_079_6ae3

    cp $0a
    jp z, Jump_079_6b0b

    cp $0b
    jp z, Jump_079_6b33

    cp $0c
    jp z, Jump_079_6b5b

    cp $0d
    jp z, Jump_079_6b83

    cp $0e
    jp z, Jump_079_6bab

    cp $0f
    jp z, Jump_079_6bd3

    cp $10
    jp z, Jump_079_6bfb

    cp $11
    jp z, Jump_079_6c23

    jp Jump_079_6c4b


Jump_079_6ae3:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $756c
    ld de, $d040
    call Call_000_1f2f
    ld hl, $d040
    ld de, $8040
    ld c, $04
    call Call_000_0468
    ld hl, $7c36
    ld d, $0e
    ld e, $80
    ld bc, $0204
    call Call_000_26ea
    ret


Jump_079_6b0b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7592
    ld de, $d040
    call Call_000_1f2f
    ld hl, $d040
    ld de, $8040
    ld c, $04
    call Call_000_0468
    ld hl, $7c3f
    ld d, $0e
    ld e, $80
    ld bc, $0204
    call Call_000_26ea
    ret


Jump_079_6b33:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $75c0
    ld de, $d040
    call Call_000_1f2f
    ld hl, $d040
    ld de, $8040
    ld c, $04
    call Call_000_0468
    ld hl, $7c48
    ld d, $0e
    ld e, $80
    ld bc, $0204
    call Call_000_26ea
    ret


Jump_079_6b5b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $75ee
    ld de, $d040
    call Call_000_1f2f
    ld hl, $d040
    ld de, $8040
    ld c, $04
    call Call_000_0468
    ld hl, $7c51
    ld d, $0e
    ld e, $80
    ld bc, $0204
    call Call_000_26ea
    ret


Jump_079_6b83:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7631
    ld de, $d040
    call Call_000_1f2f
    ld hl, $d040
    ld de, $8040
    ld c, $04
    call Call_000_0468
    ld hl, $7c5a
    ld d, $0e
    ld e, $80
    ld bc, $0204
    call Call_000_26ea
    ret


Jump_079_6bab:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $767c
    ld de, $d040
    call Call_000_1f2f
    ld hl, $d040
    ld de, $8040
    ld c, $04
    call Call_000_0468
    ld hl, $7c63
    ld d, $0e
    ld e, $80
    ld bc, $0204
    call Call_000_26ea
    ret


Jump_079_6bd3:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $76c7
    ld de, $d040
    call Call_000_1f2f
    ld hl, $d040
    ld de, $8040
    ld c, $04
    call Call_000_0468
    ld hl, $7c6c
    ld d, $0e
    ld e, $80
    ld bc, $0204
    call Call_000_26ea
    ret


Jump_079_6bfb:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7712
    ld de, $d040
    call Call_000_1f2f
    ld hl, $d040
    ld de, $8040
    ld c, $04
    call Call_000_0468
    ld hl, $7c75
    ld d, $0e
    ld e, $80
    ld bc, $0204
    call Call_000_26ea
    ret


Jump_079_6c23:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $775c
    ld de, $d040
    call Call_000_1f2f
    ld hl, $d040
    ld de, $8040
    ld c, $04
    call Call_000_0468
    ld hl, $7c7e
    ld d, $0e
    ld e, $80
    ld bc, $0204
    call Call_000_26ea
    ret


Jump_079_6c4b:
    ld hl, $7c7e
    ld d, $0e
    ld e, $80
    ld bc, $0204
    call Call_000_26ea
    ret


Call_079_6c59:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d400]
    ld b, a

Jump_079_6c63:
    sub $12
    ret c

    ld a, b
    cp $12
    jp z, Jump_079_6c97

    cp $13
    jp z, Jump_079_6cbf

    cp $14
    jp z, Jump_079_6ce7

    cp $15
    jp z, Jump_079_6d0f

    cp $16
    jp z, Jump_079_6d37

    cp $17
    jp z, Jump_079_6d5f

    cp $18
    jp z, Jump_079_6d87

    cp $19
    jp z, Jump_079_6daf

    cp $1a
    jp z, Jump_079_6dd7

    jp Jump_079_6dff


Jump_079_6c97:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $77a5
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d080
    ld de, $8080
    ld c, $04
    call Call_000_0468
    ld hl, $7c87
    ld d, $1e
    ld e, $80
    ld bc, $0308
    call Call_000_26ea
    ret


Jump_079_6cbf:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $77cc
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d080
    ld de, $8080
    ld c, $04
    call Call_000_0468
    ld hl, $7c90
    ld d, $1e
    ld e, $80
    ld bc, $0308
    call Call_000_26ea
    ret


Jump_079_6ce7:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $77fd
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d080
    ld de, $8080
    ld c, $04
    call Call_000_0468
    ld hl, $7c99
    ld d, $1e
    ld e, $80
    ld bc, $0308
    call Call_000_26ea
    ret


Jump_079_6d0f:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7832
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d080
    ld de, $8080
    ld c, $04
    call Call_000_0468
    ld hl, $7ca2
    ld d, $1e
    ld e, $80
    ld bc, $0308
    call Call_000_26ea
    ret


Jump_079_6d37:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7874
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d080
    ld de, $8080
    ld c, $04
    call Call_000_0468
    ld hl, $7cab
    ld d, $1e
    ld e, $80
    ld bc, $0308
    call Call_000_26ea
    ret


Jump_079_6d5f:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $78b9
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d080
    ld de, $8080
    ld c, $04
    call Call_000_0468
    ld hl, $7cb4
    ld d, $1e
    ld e, $80
    ld bc, $0308
    call Call_000_26ea
    ret


Jump_079_6d87:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7902
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d080
    ld de, $8080
    ld c, $04
    call Call_000_0468
    ld hl, $7cbd
    ld d, $1e
    ld e, $80
    ld bc, $0308
    call Call_000_26ea
    ret


Jump_079_6daf:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $794c
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d080
    ld de, $8080
    ld c, $04
    call Call_000_0468
    ld hl, $7cc6
    ld d, $1e
    ld e, $80
    ld bc, $0308
    call Call_000_26ea
    ret


Jump_079_6dd7:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7996
    ld de, $d080
    call Call_000_1f2f
    ld hl, $d080
    ld de, $8080
    ld c, $04
    call Call_000_0468
    ld hl, $7ccf
    ld d, $1e
    ld e, $80
    ld bc, $0308
    call Call_000_26ea
    ret


Jump_079_6dff:
    ld hl, $7ccf
    ld d, $1e
    ld e, $80
    ld bc, $0308
    call Call_000_26ea
    ret


Call_079_6e0d:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d400]
    ld b, a
    sub $1b
    ret c

    ld a, b
    cp $1b
    jp z, Jump_079_6e4b

    cp $1c
    jp z, Jump_079_6e73

    cp $1d
    jp z, Jump_079_6e9b

    cp $1e
    jp z, Jump_079_6ec3

    cp $1f
    jp z, Jump_079_6eeb

    cp $20
    jp z, Jump_079_6f13

    cp $21
    jp z, Jump_079_6f3b

    cp $22
    jp z, Jump_079_6f63

    cp $23
    jp z, Jump_079_6f8b

    jp Jump_079_6fb3


Jump_079_6e4b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $79db
    ld de, $d0c0
    call Call_000_1f2f
    ld hl, $d0c0
    ld de, $80c0
    ld c, $02
    call Call_000_0468
    ld hl, $7cd8
    ld d, $2e
    ld e, $80
    ld bc, $030c
    call Call_000_26ea
    ret


Jump_079_6e73:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $79ea
    ld de, $d0c0
    call Call_000_1f2f
    ld hl, $d0c0
    ld de, $80c0
    ld c, $02
    call Call_000_0468
    ld hl, $7cdd
    ld d, $2e
    ld e, $80
    ld bc, $030c
    call Call_000_26ea
    ret


Jump_079_6e9b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $79f9
    ld de, $d0c0
    call Call_000_1f2f
    ld hl, $d0c0
    ld de, $80c0
    ld c, $02
    call Call_000_0468
    ld hl, $7ce2
    ld d, $2e
    ld e, $80
    ld bc, $030c
    call Call_000_26ea
    ret


Jump_079_6ec3:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7a08
    ld de, $d0c0
    call Call_000_1f2f
    ld hl, $d0c0
    ld de, $80c0
    ld c, $02
    call Call_000_0468
    ld hl, $7ce7
    ld d, $2e
    ld e, $80
    ld bc, $030c
    call Call_000_26ea
    ret


Jump_079_6eeb:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7a1b
    ld de, $d0c0
    call Call_000_1f2f
    ld hl, $d0c0
    ld de, $80c0
    ld c, $02
    call Call_000_0468
    ld hl, $7cec
    ld d, $2e
    ld e, $80
    ld bc, $030c
    call Call_000_26ea
    ret


Jump_079_6f13:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7a31
    ld de, $d0c0
    call Call_000_1f2f
    ld hl, $d0c0
    ld de, $80c0
    ld c, $02
    call Call_000_0468
    ld hl, $7cf1
    ld d, $2e
    ld e, $80
    ld bc, $030c
    call Call_000_26ea
    ret


Jump_079_6f3b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7a47
    ld de, $d0c0
    call Call_000_1f2f
    ld hl, $d0c0
    ld de, $80c0
    ld c, $02
    call Call_000_0468
    ld hl, $7cf6
    ld d, $2e
    ld e, $80
    ld bc, $030c
    call Call_000_26ea
    ret


Jump_079_6f63:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7a5d
    ld de, $d0c0
    call Call_000_1f2f
    ld hl, $d0c0
    ld de, $80c0
    ld c, $02
    call Call_000_0468
    ld hl, $7cfb
    ld d, $2e
    ld e, $80
    ld bc, $030c
    call Call_000_26ea
    ret


Jump_079_6f8b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7a73
    ld de, $d0c0
    call Call_000_1f2f
    ld hl, $d0c0
    ld de, $80c0
    ld c, $02
    call Call_000_0468
    ld hl, $7d00
    ld d, $2e
    ld e, $80
    ld bc, $030c
    call Call_000_26ea
    ret


Jump_079_6fb3:
    ld hl, $7d00
    ld d, $2e
    ld e, $80
    ld bc, $030c
    call Call_000_26ea
    ret


Call_079_6fc1:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d400]
    ld b, a
    sub $24
    ret c

    ld a, b
    cp $24
    jp z, Jump_079_6fff

    cp $25
    jp z, Jump_079_7027

    cp $26
    jp z, Jump_079_704f

    cp $27
    jp z, Jump_079_7077

    cp $28
    jp z, Jump_079_709f

    cp $29
    jp z, Jump_079_70c7

    cp $2a
    jp z, Jump_079_70ef

    cp $2b
    jp z, Jump_079_7117

    cp $2c
    jp z, Jump_079_713f

    jp Jump_079_7167


Jump_079_6fff:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7a89
    ld de, $d0e0
    call Call_000_1f2f
    ld hl, $d0e0
    ld de, $80e0
    ld c, $02
    call Call_000_0468
    ld hl, $7d05
    ld d, $36
    ld e, $80
    ld bc, $020e
    call Call_000_26ea
    ret


Jump_079_7027:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7a98
    ld de, $d0e0
    call Call_000_1f2f
    ld hl, $d0e0
    ld de, $80e0
    ld c, $02
    call Call_000_0468
    ld hl, $7d0a
    ld d, $36
    ld e, $80
    ld bc, $020e
    call Call_000_26ea
    ret


Jump_079_704f:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7aa7
    ld de, $d0e0
    call Call_000_1f2f
    ld hl, $d0e0
    ld de, $80e0
    ld c, $02
    call Call_000_0468
    ld hl, $7d0f
    ld d, $36
    ld e, $80
    ld bc, $020e
    call Call_000_26ea
    ret


Jump_079_7077:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7ab6
    ld de, $d0e0
    call Call_000_1f2f
    ld hl, $d0e0
    ld de, $80e0
    ld c, $02
    call Call_000_0468
    ld hl, $7d14
    ld d, $36
    ld e, $80
    ld bc, $020e
    call Call_000_26ea
    ret


Jump_079_709f:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7aca
    ld de, $d0e0
    call Call_000_1f2f
    ld hl, $d0e0
    ld de, $80e0
    ld c, $02
    call Call_000_0468
    ld hl, $7d19
    ld d, $36
    ld e, $80
    ld bc, $020e
    call Call_000_26ea
    ret


Jump_079_70c7:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7adf
    ld de, $d0e0
    call Call_000_1f2f
    ld hl, $d0e0
    ld de, $80e0
    ld c, $02
    call Call_000_0468
    ld hl, $7d1e
    ld d, $36
    ld e, $80
    ld bc, $020e
    call Call_000_26ea
    ret


Jump_079_70ef:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7af5
    ld de, $d0e0
    call Call_000_1f2f
    ld hl, $d0e0
    ld de, $80e0
    ld c, $02
    call Call_000_0468
    ld hl, $7d23
    ld d, $36
    ld e, $80
    ld bc, $020e
    call Call_000_26ea
    ret


Jump_079_7117:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7b0b
    ld de, $d0e0
    call Call_000_1f2f
    ld hl, $d0e0
    ld de, $80e0
    ld c, $02
    call Call_000_0468
    ld hl, $7d28
    ld d, $36
    ld e, $80
    ld bc, $020e
    call Call_000_26ea
    ret


Jump_079_713f:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7b21
    ld de, $d0e0
    call Call_000_1f2f
    ld hl, $d0e0
    ld de, $80e0
    ld c, $02
    call Call_000_0468
    ld hl, $7d2d
    ld d, $36
    ld e, $80
    ld bc, $020e
    call Call_000_26ea
    ret


Jump_079_7167:
    ld hl, $7d2d
    ld d, $36
    ld e, $80
    ld bc, $020e
    call Call_000_26ea
    ret


Call_079_7175:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d400]
    ld b, a
    sub $2d
    ret c

    ld a, b
    cp $2d
    jp z, Jump_079_71b3

    cp $2e
    jp z, Jump_079_71db

    cp $2f
    jp z, Jump_079_7203

    cp $30
    jp z, Jump_079_722b

    cp $31
    jp z, Jump_079_7253

    cp $32
    jp z, Jump_079_727b

    cp $33
    jp z, Jump_079_72a3

    cp $34
    jp z, Jump_079_72cb

    cp $35
    jp z, Jump_079_72f3

    jp Jump_079_731b


Jump_079_71b3:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7b37
    ld de, $d100
    call Call_000_1f2f
    ld hl, $d100
    ld de, $8100
    ld c, $02
    call Call_000_0468
    ld hl, $7d32
    ld d, $3e
    ld e, $80
    ld bc, $0310
    call Call_000_26ea
    ret


Jump_079_71db:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7b46
    ld de, $d100
    call Call_000_1f2f
    ld hl, $d100
    ld de, $8100
    ld c, $02
    call Call_000_0468
    ld hl, $7d37
    ld d, $3e
    ld e, $80
    ld bc, $0310
    call Call_000_26ea
    ret


Jump_079_7203:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7b55
    ld de, $d100
    call Call_000_1f2f
    ld hl, $d100
    ld de, $8100
    ld c, $02
    call Call_000_0468
    ld hl, $7d3c
    ld d, $3e
    ld e, $80
    ld bc, $0310
    call Call_000_26ea
    ret


Jump_079_722b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7b64
    ld de, $d100
    call Call_000_1f2f
    ld hl, $d100
    ld de, $8100
    ld c, $02
    call Call_000_0468
    ld hl, $7d41
    ld d, $3e
    ld e, $80
    ld bc, $0310
    call Call_000_26ea
    ret


Jump_079_7253:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7b77
    ld de, $d100
    call Call_000_1f2f
    ld hl, $d100
    ld de, $8100
    ld c, $02
    call Call_000_0468
    ld hl, $7d46
    ld d, $3e
    ld e, $80
    ld bc, $0310
    call Call_000_26ea
    ret


Jump_079_727b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7b8d
    ld de, $d100
    call Call_000_1f2f
    ld hl, $d100
    ld de, $8100
    ld c, $02
    call Call_000_0468
    ld hl, $7d4b
    ld d, $3e
    ld e, $80
    ld bc, $0310
    call Call_000_26ea
    ret


Jump_079_72a3:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7ba3
    ld de, $d100
    call Call_000_1f2f
    ld hl, $d100
    ld de, $8100
    ld c, $02
    call Call_000_0468
    ld hl, $7d50
    ld d, $3e
    ld e, $80
    ld bc, $0310
    call Call_000_26ea
    ret


Jump_079_72cb:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7bb9
    ld de, $d100
    call Call_000_1f2f
    ld hl, $d100
    ld de, $8100
    ld c, $02
    call Call_000_0468
    ld hl, $7d55
    ld d, $3e
    ld e, $80
    ld bc, $0310
    call Call_000_26ea
    ret


Jump_079_72f3:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7bcf
    ld de, $d100
    call Call_000_1f2f
    ld hl, $d100
    ld de, $8100
    ld c, $02
    call Call_000_0468
    ld hl, $7d5a
    ld d, $3e
    ld e, $80
    ld bc, $0310
    call Call_000_26ea
    ret


Jump_079_731b:
    ld hl, $7d5a
    ld d, $3e
    ld e, $80
    ld bc, $0310
    call Call_000_26ea
    ret


    rst $38
    ld a, a
    cp $03
    db $dd
    ld bc, $0046
    rst $38
    ld a, a
    nop
    ld [bc], a
    and $03
    ld b, [hl]

jr_079_7338:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    inc b
    inc b
    nop
    rst $38
    pop hl
    ld a, [$20e8]
    inc h
    xor $e1
    dec sp
    inc h
    jr nz, jr_079_7338

    ld [c], a
    nop
    sub d
    sub d
    ld a, [$dbe2]
    ld [c], a
    ld e, e
    db $10
    add b
    call nc, $90e1
    sub b
    adc $e1
    ld [bc], a
    add sp, -$1e
    inc bc
    sub b
    sub b
    nop
    nop
    nop
    rst $10
    dec b
    dec b
    nop
    rst $38
    pop hl
    dec c
    ld a, [$21e7]
    inc l
    or $ee
    pop hl
    inc l
    ld hl, $e1e8
    ld bc, $b601
    or [hl]
    call c, $e1e0
    ei
    ld [c], a
    nop
    db $10
    and b
    call nc, $b4e1
    or h
    ld [hl], $ce
    pop hl
    ld b, $b2
    ret z

    pop hl
    or b
    or b
    nop
    nop
    nop
    or a
    rlca
    rlca
    nop
    rst $38
    ldh [rNR10], a
    rra

jr_079_73a0:
    ld a, [$31e7]
    db $ed
    ld l, $ee
    pop hl
    inc a
    inc sp
    add sp, -$1f
    inc bc
    inc bc
    cp $6d
    cp $e0
    pop hl
    rst $38
    ld bc, $e1da
    jr jr_079_73a0

    call nc, $dbe1
    db $fc
    db $fc
    adc $e1
    ld c, $f2
    ret z

    pop hl
    ld hl, sp-$08
    nop
    nop
    nop
    rst $38
    rlca
    rlca
    nop
    ld [bc], a
    nop
    nop
    db $10
    rra
    cp e
    db $10
    ld [de], a
    ld a, [$31e5]
    ld l, $00
    db $f4
    ldh [$3c], a
    rst $38
    inc sp
    ld [de], a
    stop
    nop
    inc bc
    inc bc
    cp $ff
    cp $01
    ld c, c
    nop
    nop
    rst $38
    ld bc, $fe49
    ld a, [$18e0]
    add sp, $48
    ld [$0000], sp
    db $fc
    ld a, a
    db $fc
    nop
    ld c, b
    nop
    nop
    ld c, $f2
    ei
    ldh [rTAC], a
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    rst $38
    rlca
    rlca
    nop
    ld [bc], a
    db $10
    ld [de], a
    db $10
    rra
    db $fc
    db $fc
    ldh [$fa], a
    db $e4
    ld sp, $002e
    ld [de], a
    db $10
    ld [bc], a
    ei
    inc a
    inc sp
    ei
    ldh [rSC], a
    inc bc
    inc bc
    cp $fe
    rst $38
    ld bc, HeaderRAMSize
    ld c, c
    rst $38
    ld bc, $4949
    rst $38
    ld [$1848], sp
    add sp, $48
    ld [$4848], sp
    rst $38
    db $fc
    db $fc
    nop
    ld c, b
    nop
    ld c, b
    ld c, $f2
    ld c, $fb
    ldh [rOBP0], a
    ld hl, sp-$08
    nop
    nop
    nop
    rst $38
    rlca
    rlca
    nop
    ld [bc], a
    jr jr_079_7465

    db $10
    rra
    rst $28
    db $10
    ld [de], a
    db $10
    dec de
    ld a, [$11e1]
    ld a, [de]
    ld sp, $2e7f
    nop
    ld [de], a
    db $10
    dec bc
    inc a

jr_079_7465:
    inc sp
    ei
    ldh [rIE], a
    dec bc
    inc bc
    inc bc
    cp $fe
    ld bc, HeaderRAMSize
    rst $38
    ld l, l
    rst $38
    ld bc, $4949
    inc l
    ld c, h
    jr @+$01

    add sp, $48
    ld [$6868], sp
    db $fc
    db $fc
    nop
    rst $38
    ld c, b
    inc b
    ld l, b
    ld c, $f2
    ld c, b
    nop
    ld l, h
    rlca
    ld l, h
    ld hl, sp-$08
    nop
    nop
    nop
    rst $38
    rlca
    rlca
    nop
    ld [bc], a
    jr jr_079_74b1

    db $10
    rra
    di
    db $10
    ld [de], a
    db $fc
    ldh [$fa], a
    ldh [rNR11], a
    ld e, $31
    ld l, $ff
    nop
    ld [de], a
    jr nc, jr_079_74db

    inc a

jr_079_74ad:
    inc sp
    ld [de], a
    db $10
    rst $38

jr_079_74b1:
    rrca
    rrca
    inc bc
    inc bc
    cp $fe
    ld bc, $ff49
    inc bc
    db $fd
    rst $38
    ld bc, $4949

Call_079_74c0:
    ld a, $de
    rst $38
    jr jr_079_74ad

    ld c, b
    ld [$f8f8], sp
    db $fc
    db $fc
    rst $38
    nop
    ld c, b
    ld b, $fa
    ld c, $f2
    ld c, b
    nop
    rrca
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop

jr_079_74db:
    nop
    rst $38
    rlca
    rlca
    inc b
    ld [bc], a
    jr jr_079_74fa

    db $10
    rra
    di
    db $10
    ld d, $fc
    ldh [$fa], a
    ldh [rNR11], a
    ld e, $31
    ld l, $ff
    jr nz, jr_079_7529

    jr nc, jr_079_7524

    inc a

jr_079_74f6:
    inc sp
    ld d, $14
    rst $38

jr_079_74fa:
    rrca
    rrca
    inc bc
    inc bc
    cp $fe
    inc bc
    reti


    rst $38
    inc bc
    db $fd
    rst $38
    ld bc, $5bdb
    ld a, $de
    rst $38
    jr jr_079_74f6

    ret c

    ld [$f8f8], sp
    db $fc
    db $fc
    rst $38
    ld [bc], a
    jp c, $fa06

    ld c, $f2
    jp c, Jump_000_0f02

    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop

jr_079_7524:
    nop
    rst $38
    rlca
    rlca
    inc c

jr_079_7529:
    dec bc
    jr jr_079_7543

    db $10
    rra
    cp $fe
    db $e3
    ld de, $111e
    ld e, $31
    ld l, $20
    rst $38
    ccf
    jr nc, jr_079_756b

    inc a
    inc sp
    rra
    inc e
    rrca
    rst $38
    rrca

jr_079_7543:
    inc bc
    inc bc
    cp $fe
    inc bc
    db $fd
    inc bc
    rst $38
    db $fd
    rst $38
    ld bc, $7fff
    ld a, $de
    jr @+$01

    add sp, -$08
    ld [$f8f8], sp
    db $fc
    db $fc
    ld b, $ff
    ld a, [$fa06]
    ld c, $f2
    cp $06
    db $fc
    rlca
    db $fc
    ld hl, sp-$08
    nop
    nop

jr_079_756b:
    nop
    call $ff00
    ld [c], a
    inc h
    jr nz, @-$04

    ld [c], a
    di
    ld [c], a
    jr nz, @+$06

    cp h
    xor $e2
    ld a, [$20e2]
    jr nz, jr_079_7592

    ld [de], a
    sbc $e1
    db $10
    ld d, l
    ld [bc], a
    ret c

    pop hl
    sub b
    ld a, [$82e9]
    add sp, -$1e
    stop
    nop
    nop

jr_079_7592:
    ld l, l
    nop
    rst $38
    ld [c], a
    dec l
    ld hl, $e1f8
    ld l, l
    ld b, b
    ld a, [c]
    pop hl
    db $db
    jr z, jr_079_75e6

    db $ec
    pop hl
    ld h, h
    inc c
    and $e1
    ld l, b
    ld l, b
    db $db
    ld d, $16
    sbc $e1
    inc [hl]
    ld [hl+], a
    ret c

    pop hl
    or h
    ld [bc], a
    ld [hl], $fa
    rst $20
    sub b
    and [hl]
    add $e1
    inc d
    inc d
    nop
    nop
    nop
    ld l, l
    nop
    rst $38
    ld [c], a
    dec a
    inc hl
    ld hl, sp-$1f
    ld a, a
    ld b, b
    ld a, [c]
    pop hl
    db $db
    cp d
    rst $00
    db $ec
    pop hl
    or $8e
    and $e1
    ld a, b
    ld a, b
    db $db
    ld e, $1e
    ldh [$e7], a
    cp l
    ld b, e
    jp nc, $fde1

    inc bc
    ld [hl], $cc
    pop hl
    reti


jr_079_75e6:
    rst $20
    add $e1
    inc e
    inc e
    nop
    nop
    nop
    rst $38
    nop
    nop
    db $10
    stop
    nop
    dec a
    inc hl
    cp a
    ld [de], a
    nop
    nop
    nop
    ld a, a
    ld b, b
    ld a, [$bae1]
    rst $38
    rst $00
    sub d
    add d
    nop
    nop
    or $8e
    add b
    rst $38
    sub b
    nop
    nop
    ld a, b
    ld a, b
    ld e, $1e
    add hl, bc
    db $fd
    ld bc, $e1e0
    ld c, c
    ld b, c
    nop
    nop
    cp l
    ld b, e
    db $ed
    ld c, c
    db $f4
    ldh [$fd], a
    inc bc
    ld a, [$d9e1]
    rst $20
    ld b, c
    rra
    ld c, c
    nop
    nop
    inc e
    inc e
    nop
    nop
    nop
    rst $38
    nop
    nop
    db $10
    db $10
    ld [bc], a
    ld [de], a
    dec a
    inc hl
    rst $38
    ld [de], a
    nop
    ld [de], a
    nop
    ld a, a
    ld b, b
    ld [de], a
    nop
    rst $38
    db $10
    ld [bc], a
    cp d
    rst $00
    sub d
    add d
    sub d
    add d
    rst $38
    or $8e
    add b
    sub b
    sub b
    sub b
    ld a, b
    ld a, b
    rst $38
    ld e, $1e
    add hl, bc
    ld bc, $0109
    dec a
    inc hl
    rst $38
    ld c, c
    ld b, c
    ld c, c
    ld b, c
    cp l
    ld b, e
    ld c, c
    ld bc, $49ff
    ld bc, $03fd
    ld c, c
    ld bc, $4109
    rst $38
    reti


    rst $20
    ld b, c
    ld c, c

Jump_079_7675:
    ld [$1c08], sp
    inc e
    nop
    nop
    nop
    rst $38
    nop
    nop
    db $10
    db $10
    ld a, [bc]
    ld [de], a
    dec a
    inc hl
    rst $38
    ld [de], a
    nop
    ld e, e
    ld b, b
    ld a, a
    ld b, b
    ld [de], a
    nop
    rst $38
    ld e, c
    ld b, d
    cp d
    rst $00
    sub d
    add d
    db $d3
    adc e
    rst $38
    or $8e
    add b
    sub b
    ret c

    ret c

    ld a, b
    ld a, b
    rst $38
    ld e, $1e
    add hl, bc
    ld bc, $212d
    dec a
    inc hl
    rst $38
    ld c, c
    ld b, c
    ld l, l
    ld b, c
    cp l
    ld b, e
    ld c, c
    ld bc, $6dff
    ld bc, $03fd
    ld c, c
    ld bc, $412d
    rst $38
    reti


    rst $20
    ld b, c
    ld c, c
    inc l
    inc l
    inc e
    inc e
    nop
    nop
    nop
    rst $38
    nop
    nop
    db $10
    db $10
    ld a, [hl+]
    ld [hl], $3d
    inc hl
    rst $38
    ld [de], a
    nop
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld [de], a
    nop
    rst $38
    ld a, c
    ld b, [hl]
    cp d
    rst $00
    sub d
    add d
    di
    adc a
    rst $38
    or $8e
    add b
    sub b
    db $fc
    db $fc
    ld a, b
    ld a, b
    rst $38
    ld e, $1e
    add hl, bc
    ld bc, $233d
    dec a
    inc hl
    rst $38
    ld c, c
    ld b, c
    ld a, l
    jp $43bd


    ld c, c
    ld bc, $fdff
    inc bc
    db $fd
    inc bc
    ld c, c
    ld bc, $c3bd
    rst $38
    reti


    rst $20
    ld b, c
    ld c, c
    ld a, $3e
    inc e
    inc e
    nop
    nop
    nop
    rst $38
    nop
    nop
    inc d
    inc d
    ld a, [hl+]
    ld [hl], $3d
    inc hl
    rst $38
    ld [hl], $20
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld [hl], $00
    rst $38
    ld a, c
    ld b, [hl]
    cp d
    rst $00
    or d
    add [hl]
    di
    adc a
    rst $38
    or $8e
    add h
    or h
    db $fc
    db $fc
    ld a, b
    ld a, b
    rst $38
    ld e, $1e
    add hl, bc
    inc de
    dec a
    inc hl
    dec a
    inc hl
    rst $38
    reti


    jp $c37d


    cp l
    ld b, e
    reti


    inc bc
    db $fd
    db $fd
    cp $e0
    ld e, c
    add e
    cp l
    jp $e7d9


    ccf
    ld b, e
    ld e, e
    ld a, $3e
    inc e
    inc e
    nop
    nop
    nop
    rst $38
    nop
    nop
    inc e
    inc e
    ld a, [hl+]
    ld [hl], $3d
    inc hl
    rst $38
    ld a, $21
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld a, c
    ld b, [hl]
    cp d
    rst $00
    ei
    add a
    di
    adc a
    rst $38
    or $8e
    add h
    db $fc
    db $fc
    db $fc
    ld a, b
    ld a, b

Call_079_7780:
    rst $38
    ld e, $1e
    dec l
    inc sp
    dec a
    inc hl
    dec a
    inc hl
    rst $38
    db $dd
    db $e3
    ld a, l
    jp $43bd


    db $fd
    inc bc
    cp $fe
    pop hl
    ld a, l
    add e
    cp l
    jp $e7d9


    ld h, e
    rra
    ld a, a
    ld a, $3e
    inc e
    inc e
    nop
    nop
    nop
    ld h, a
    inc b
    inc b
    nop
    rst $38
    pop hl
    ld a, [$20e2]
    inc h
    ld a, [$bce2]
    xor $e3
    db $f4
    ld [c], a
    inc h
    inc h
    add b
    add b
    ldh [$e1], a
    db $10
    or [hl]
    ld a, [$80e2]
    sub b
    db $f4
    rst $20
    sub b
    db $10
    xor $e2
    add b
    nop
    nop
    nop
    ld h, a
    dec c
    dec c
    nop
    rst $38
    pop hl
    ld a, [$21e2]
    dec l
    db $f4
    pop hl
    db $db
    ld h, b
    ld c, l
    xor $e1
    ld b, b
    ld l, l
    add sp, -$1f
    dec l
    dec l
    ld l, e
    and b
    and b
    ldh [$e1], a
    db $10
    ld a, [$84e2]
    or h
    call nc, $dbe1
    inc d
    and h
    adc $e1
    or b
    db $10
    ret z

    pop hl
    add b
    add b
    nop
    nop
    nop
    or a
    rrca
    rrca
    nop
    rst $38
    ldh [rNR10], a
    rra

jr_079_7805:
    ld a, [$23e1]
    ld l, l
    dec a
    db $f4
    pop hl
    ld h, b
    ld e, a
    xor $e1
    ld b, b
    ld a, a
    add sp, -$1f
    ld l, a
    ccf
    ccf
    ldh [$e0], a
    ldh [$e1], a
    jr jr_079_7805

    jp c, $dbe1

    adc h
    db $f4
    call nc, $1ce1
    db $e4
    adc $e1
    ld hl, sp+$18
    ld b, $c8
    pop hl
    add b
    add b
    nop
    nop
    nop
    rst $38
    rrca
    rrca

jr_079_7835:
    db $10
    ld [de], a
    nop
    nop
    db $10
    rra
    cp $fa
    pop hl
    inc hl
    dec a
    ld [bc], a
    stop
    nop
    ld h, b
    db $db
    ld e, a
    nop
    xor $e0
    ld b, b
    ld a, a
    jp hl


    ldh [rP1], a
    ccf
    rst $38
    ccf
    ldh [$e0], a
    nop
    ld b, b
    nop
    nop
    jr jr_079_7835

    add sp, $08
    ld a, [$8ce0]
    db $f4
    ld a, [$1ce1]
    db $e4
    ld a, a
    ld [$0048], sp
    nop
    ld hl, sp+$18
    ld b, b
    add sp, -$20
    inc bc
    add b
    add b
    nop
    nop
    nop
    rst $28
    rrca
    rrca
    db $10

Call_079_7878:
    ld [de], a
    cp $e0
    rra
    db $10
    ld [de], a
    rst $38
    ld [de], a
    nop
    inc hl
    dec a
    ld [bc], a
    stop
    ld [de], a
    rst $38
    ld h, b
    ld e, a
    nop
    ld [de], a
    nop
    ld [de], a
    ld b, b
    ld a, a
    cp $fb
    ldh [rNR12], a
    ccf
    ccf
    ldh [$e0], a
    nop
    ld b, b
    rst $38
    ld [$1848], sp
    add sp, $08
    ld b, b
    ld [$fb40], sp
    adc h
    db $f4
    ld a, [$1ce1]
    db $e4
    ld [$0848], sp
    ld l, a
    ld c, b
    ld hl, sp+$18
    ld b, b
    rst $38
    ldh [$80], a
    add b
    nop
    nop
    nop
    rst $38
    rrca
    rrca
    db $10
    ld [de], a
    db $10
    dec de
    db $10
    rra
    rst $38
    db $10
    ld [de], a
    inc de
    add hl, bc
    inc hl
    dec a
    ld [bc], a
    db $10
    rst $38
    nop
    dec de
    ld h, b
    ld e, a
    nop
    ld [de], a
    ld b, b
    ld e, e
    rst $38
    ld b, b
    ld a, a
    ld [de], a
    nop
    ld e, e
    ld e, e
    ccf
    ccf
    rst $38
    ldh [$e0], a
    nop
    ld b, b
    ld [$1868], sp
    add sp, -$41
    ld [$0c40], sp
    ld h, h
    adc h
    db $f4
    ld a, [$1ce1]
    rst $38
    db $e4
    ld [$2c48], sp
    ld c, h
    ld hl, sp+$18
    ld b, b
    rra
    ld b, b
    ld h, b
    ld h, b
    add b
    add b
    nop
    nop
    nop
    cp a
    rrca
    rrca
    db $10
    ld [de], a
    db $10
    rra
    cp $e0
    ld [de], a
    rst $38
    inc sp
    dec l
    inc hl
    dec a
    ld [bc], a
    db $10
    jr nz, @+$41

    rst $38

jr_079_7916:
    ld h, b
    ld e, a
    nop
    ld [de], a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ld [de], a
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    ldh [$e0], a
    rst $38
    nop
    ld b, b
    jr @-$16

    jr jr_079_7916

    ld [$ff40], sp
    adc h
    db $f4
    adc h
    db $f4
    ld [$0c40], sp
    db $f4
    rst $38
    inc e
    db $e4
    ld [$3c48], sp
    call z, Call_000_18f8
    ccf
    ld b, b
    ld b, b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    cp a
    rrca
    rrca
    db $10

jr_079_7950:
    ld d, $10
    rra
    cp $e0
    ld d, $ff
    inc sp
    dec l
    inc hl
    dec a
    ld [hl+], a
    inc [hl]
    jr nz, jr_079_799e

    rst $38

jr_079_7960:
    ld h, b
    ld e, a
    nop
    ld [hl], $40
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ld [hl], $00
    ld a, a
    ld a, a
    ccf
    ccf
    ldh [$e0], a
    rst $38
    db $10
    ret nc

    jr @-$16

    jr jr_079_7960

    adc b
    ld d, b
    rst $38
    adc h
    db $f4
    adc h
    db $f4
    ld [$0cd0], sp
    db $f4
    rst $38
    inc e
    db $e4
    jr jr_079_7950

    inc a
    call z, Call_000_18f8
    ccf
    ret nc

    ld d, b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    rst $38
    rrca
    rrca
    jr jr_079_79b2

    db $10
    rra
    db $10

jr_079_799e:
    rra
    rst $38
    ld de, $331e
    dec l

jr_079_79a4:
    inc hl
    dec a
    inc hl

jr_079_79a7:
    dec a
    ccf
    jr nz, jr_079_79ea

    ld h, b
    ld e, a
    ld b, b
    ld a, a
    cp $e1
    db $fd

jr_079_79b2:
    pop hl
    rst $38
    ccf
    ccf
    ldh [$e0], a
    jr nc, @-$2e

    jr jr_079_79a4

    rst $38
    jr jr_079_79a7

    adc h
    ld [hl], h
    adc h
    db $f4

jr_079_79c3:
    adc h
    db $f4
    db $fd
    inc c
    cp $e0
    inc e
    db $e4
    inc e
    db $ec
    inc a

jr_079_79ce:
    call z, $f8ff
    jr jr_079_79c3

    ld [hl], b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    ld l, l
    nop

jr_079_79dd:
    rst $38
    xor $20
    jr nz, jr_079_79ce

    pop hl
    inc b
    inc h
    db $f4
    db $e3
    nop
    nop
    nop

jr_079_79ea:
    ld l, l
    nop

jr_079_79ec:
    rst $38
    xor $20
    jr nz, jr_079_79dd

    pop hl

jr_079_79f2:
    ld c, h
    inc h
    db $f4
    db $e3
    nop
    nop
    nop
    ld l, l
    nop
    rst $38
    xor $30
    jr nc, jr_079_79ec

    pop hl
    call c, $f4a4
    db $e3
    nop
    nop
    nop
    db $dd
    nop
    rst $38
    xor $30
    jr nc, @+$12

    db $eb
    ldh [$dc], a
    and h
    inc bc
    sub b
    add b
    db $f4
    pop hl
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    xor $30
    jr nc, jr_079_7a32

    nop
    add b
    sub b
    rst $38
    call c, $90a4
    add b
    db $10
    db $10
    jr nc, jr_079_7a5e

    nop
    nop
    nop
    db $fd

jr_079_7a32:
    nop
    rst $38
    xor $30
    jr nc, jr_079_7a48

    nop
    adc b
    ret nc

    rst $38
    call c, $90a4
    add b
    ld e, b
    ld e, b
    jr nc, jr_079_7a74

    nop
    nop
    nop
    db $fd

jr_079_7a48:
    nop
    rst $38
    xor $30
    jr nc, jr_079_7a5e

    nop
    adc h
    db $f4
    rst $38
    call c, $90a4
    add b
    ld a, b
    ld a, b
    jr nc, jr_079_7a8a

    nop
    nop
    nop
    db $fd

jr_079_7a5e:
    nop
    rst $38
    xor $30
    jr nc, jr_079_7a74

    jr nz, jr_079_79f2

    db $f4
    rst $38
    call c, $b4a4
    add h
    ld a, b
    ld a, b
    jr nc, jr_079_7aa0

    nop
    nop
    nop
    db $fd

jr_079_7a74:
    nop
    rst $38
    xor $30
    jr nc, jr_079_7ad2

    ld l, b
    adc h
    db $f4
    rst $38
    call c, $fca4
    call z, Call_079_7878
    jr nc, jr_079_7ab6

    nop
    nop
    nop
    ld l, l

jr_079_7a8a:
    nop

jr_079_7a8b:
    rst $38
    xor $10
    db $10
    db $ec
    pop hl
    add b
    sub b
    db $f4
    db $e3
    nop
    nop
    nop
    ld l, l
    nop

jr_079_7a9a:
    rst $38
    xor $30
    jr nc, jr_079_7a8b

    pop hl

jr_079_7aa0:
    and h
    sub h
    db $f4
    db $e3
    nop
    nop
    nop
    ld l, l
    nop
    rst $38
    xor $30
    jr nc, jr_079_7a9a

    pop hl
    and h
    call c, $e3f4
    nop
    nop
    nop

jr_079_7ab6:
    db $fd
    nop
    rst $38
    xor $30
    jr nc, jr_079_7b05

    ld c, b
    nop
    nop
    dec de
    and h
    call c, $e1fa
    jr nc, jr_079_7af7

    nop

Call_079_7ac8:
    nop
    nop
    db $fd
    nop
    rst $38
    xor $30
    jr nc, @+$4a

    ld c, b

jr_079_7ad2:
    ld b, b
    ld [$a437], sp
    call c, $ff48
    ldh [$30], a
    jr nc, jr_079_7add

jr_079_7add:
    nop
    nop
    db $fd
    nop
    rst $38
    xor $30
    jr nc, @+$4a

    ld c, b
    ld h, h
    inc c
    rst $38
    and h
    call c, $4848
    ld l, b
    ld l, b
    jr nc, jr_079_7b22

    nop
    nop
    nop
    db $fd
    nop

jr_079_7af7:
    rst $38
    xor $30
    jr nc, jr_079_7b44

    ld c, b
    db $f4
    adc h
    rst $38
    and h
    call c, $4848
    ld a, b

jr_079_7b05:
    ld a, b
    jr nc, jr_079_7b38

    nop
    nop
    nop
    db $fd
    nop
    rst $38
    xor $30
    jr nc, jr_079_7b5a

    ld e, b
    db $f4
    adc h
    rst $38
    and h
    call c, $d8c8
    ld a, b
    ld a, b
    jr nc, jr_079_7b4e

    nop
    nop
    nop
    db $fd

jr_079_7b22:
    nop
    rst $38
    xor $30
    jr nc, jr_079_7b90

    ld e, b
    db $f4

jr_079_7b2a:
    adc h
    rst $38
    and h
    call c, $fccc
    ld a, b
    ld a, b
    jr nc, jr_079_7b64

    nop
    nop
    nop
    ld l, l

jr_079_7b38:
    nop

jr_079_7b39:
    rst $38
    xor $20
    jr nz, jr_079_7b2a

    pop hl
    inc b
    inc h
    db $f4
    db $e3
    nop

jr_079_7b44:
    nop
    nop
    ld l, l
    nop

jr_079_7b48:
    rst $38
    xor $20
    jr nz, jr_079_7b39

    pop hl

jr_079_7b4e:
    ld c, h
    inc h
    db $f4
    db $e3
    nop
    nop
    nop
    ld l, l
    nop
    rst $38
    xor $30

jr_079_7b5a:
    jr nc, jr_079_7b48

    pop hl
    call c, $f4a4
    db $e3
    nop
    nop
    nop

jr_079_7b64:
    db $dd
    nop
    rst $38
    xor $30
    jr nc, @+$12

    db $eb
    ldh [$dc], a
    and h
    inc bc
    sub b
    add b
    db $f4
    pop hl
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    xor $30
    jr nc, jr_079_7b8e

    nop
    add b
    sub b
    rst $38
    call c, $90a4
    add b
    db $10
    db $10
    jr nc, jr_079_7bba

    nop
    nop
    nop
    db $fd

jr_079_7b8e:
    nop
    rst $38

jr_079_7b90:
    xor $30
    jr nc, jr_079_7ba4

    nop
    adc b
    ret nc

    rst $38
    call c, $90a4
    add b
    ld e, b
    ld e, b
    jr nc, jr_079_7bd0

    nop
    nop
    nop
    db $fd

jr_079_7ba4:
    nop
    rst $38
    xor $30
    jr nc, jr_079_7bba

    nop
    adc h
    db $f4
    rst $38
    call c, $90a4
    add b
    ld a, b
    ld a, b
    jr nc, jr_079_7be6

    nop
    nop
    nop
    db $fd

jr_079_7bba:
    nop
    rst $38
    xor $30
    jr nc, jr_079_7bd0

    jr nz, jr_079_7b4e

    db $f4
    rst $38
    call c, $b4a4
    add h
    ld a, b
    ld a, b
    jr nc, jr_079_7bfc

    nop
    nop
    nop
    db $fd

jr_079_7bd0:
    nop
    rst $38
    xor $30
    jr nc, jr_079_7c2e

    ld l, b
    adc h
    db $f4
    rst $38
    call c, $fca4
    call z, Call_079_7878
    jr nc, jr_079_7c12

    nop
    nop
    nop
    db $10

jr_079_7be6:
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10

jr_079_7bfc:
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b

jr_079_7c12:
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10

jr_079_7c2e:
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    db $10
    ld [$0000], sp
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_079_7ece:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
